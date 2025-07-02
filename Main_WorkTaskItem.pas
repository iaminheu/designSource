unit Main_WorkTaskItem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FrmGridBass, ExtCtrls, StdCtrls, DsFancyButton, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  dxmdaset, cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid,
  cxTextEdit, cxDropDownEdit, cxCalendar, cxMaskEdit, cxContainer, cxLabel,
  cxDBLookupComboBox, ADODB, cxButtonEdit, Grids, DBGrids, ComCtrls,Comobj, RzShellDialogs,
  ToolWin, ImgList, FR_DSet, FR_DBSet, FR_Class, cxRadioGroup, Buttons,
  cxGroupBox, cxCheckBox, cxCurrencyEdit, RzPanel, RzSplit, RzTabs,IniFiles,
  TFlatPanelUnit, cxLookAndFeelPainters, cxButtons, cxTimeEdit, jpeg,
  cxGridBandedTableView, ActnList, cxDBEdit,Excel97,StrUtils, cxBlobEdit,
  Menus;

type
  TFrm_WorkTaskItem = class(TFrm_GridBass)
    MData_WTList: TdxMemData;
    DS_Mdata_WTList: TDataSource;
    ImageList: TImageList;
    frReport: TfrReport;
    frDBDataSet: TfrDBDataSet;
    PC_WorkTask: TRzPageControl;
    TS_WorkTask: TRzTabSheet;
    PanelBkGnd: TPanel;
    RzSizePanel1: TRzSizePanel;
    MyTreeView: TTreeView;
    Panel3: TPanel;
    mData_WTItem: TdxMemData;
    DS_Mdata_WTItem: TDataSource;
    TS_Price: TRzTabSheet;
    ToolBar3: TToolBar;
    DS_Mdata_WTP: TDataSource;
    mData_WTP: TdxMemData;
    ToolButton7: TToolButton;
    TB_Ref3: TToolButton;
    actionList: TActionList;
    Act_App: TAction;
    Act_Parts: TAction;
    Act_Edit: TAction;
    Act_Del: TAction;
    Act_Out: TAction;
    Act_cldy: TAction;
    Act_Save: TAction;
    Act_Submit: TAction;
    Act_Check: TAction;
    Act_Audit: TAction;
    Act_PushDown: TAction;
    Act_Accept: TAction;
    Act_FeedBack: TAction;
    Act_FIsDelList: TAction;
    cxGrid_WTP: TcxGrid;
    cxGV_WTP: TcxGridDBTableView;
    FParentNumbe_WTP: TcxGridDBColumn;
    FNumber_WTP: TcxGridDBColumn;
    FWorkTaskPartsName_WTP: TcxGridDBColumn;
    FWorkTaskPartsModel_WTP: TcxGridDBColumn;
    FWorkTaskPartsUnit_WTP: TcxGridDBColumn;
    FBalanceBasePrice_WTP: TcxGridDBColumn;
    FMaterialBasePrice_WTP: TcxGridDBColumn;
    FMaterialResizePrice_WTP: TcxGridDBColumn;
    FMaterialPrice_WTP: TcxGridDBColumn;
    FWorkBasePrice_WTP: TcxGridDBColumn;
    FWorkResizePrice_WTP: TcxGridDBColumn;
    FWorkPrice_WTP: TcxGridDBColumn;
    FProductName_WTP: TcxGridDBColumn;
    FWorkTaskPartsRemark_WTP: TcxGridDBColumn;
    FWorkTaskPartsID_WTP: TcxGridDBColumn;
    FWorkCarryID_WTP: TcxGridDBColumn;
    FWorkCarry_WTP: TcxGridDBColumn;
    FWorkCarryJobID_WTP: TcxGridDBColumn;
    FWorkCarryJob_WTP: TcxGridDBColumn;
    cxGL_WTP: TcxGridLevel;
    RzSizePanel4: TRzSizePanel;
    cxGrid_WTItem: TcxGrid;
    cxGV_WTItem: TcxGridDBTableView;
    FWorkStatus_WTItem: TcxGridDBColumn;
    FStatusNotes_WTItem: TcxGridDBColumn;
    FDepartmentNum_WTItem: TcxGridDBColumn;
    FWorkTaskItemNum_WTItem: TcxGridDBColumn;
    FWorkTaskItemDate_WTItem: TcxGridDBColumn;
    FWorkCarry_WTItem: TcxGridDBColumn;
    FBidDate_WTItem: TcxGridDBColumn;
    FWorkTaskItemRemark_WTItem: TcxGridDBColumn;
    FClientFullName_WTItem: TcxGridDBColumn;
    FItemModel_WTItem: TcxGridDBColumn;
    FItemQry_WTItem: TcxGridDBColumn;
    FBranchItemNumber_WTItem: TcxGridDBColumn;
    FBranchFileNo_WTItem: TcxGridDBColumn;
    FDeliveryPlace_WTItem: TcxGridDBColumn;
    FJobSort_WTItem: TcxGridDBColumn;
    FJobPlace_WTItem: TcxGridDBColumn;
    FPayMentPercent_WTItem: TcxGridDBColumn;
    FE05_WTItem: TcxGridDBColumn;
    FAgentName_WTItem: TcxGridDBColumn;
    FWorkTaskItemID_WTItem: TcxGridDBColumn;
    cxGL_WTItem: TcxGridLevel;
    Act_Set_Open: TAction;
    Act_Set_Close: TAction;
    PM: TPopupMenu;
    N_Edit: TMenuItem;
    N_Filter: TMenuItem;
    N_Sort: TMenuItem;
    N_Group: TMenuItem;
    N_Set: TMenuItem;
    N_Out: TMenuItem;
    Act_Menu_Set: TAction;
    Act_Menu: TAction;
    Act_Set_MaxID: TAction;
    ToolBar_Save: TPanel;
    OKBtn: TcxButton;
    CancelBtn: TcxButton;
    ToolBar_Edit: TToolBar;
    TB_Ref: TToolButton;
    TB_App: TToolButton;
    TB_Edit: TToolButton;
    TB_Del: TToolButton;
    TB_Submit: TToolButton;
    TB_Check: TToolButton;
    TB_Audit: TToolButton;
    TB_PushDown: TToolButton;
    ToolButton5: TToolButton;
    TB_Prin: TToolButton;
    TB_EXIT: TToolButton;
    Act_Sel: TAction;
    FWorkCarryID_WTItem: TcxGridDBColumn;
    FDepartmentID_WTItem: TcxGridDBColumn;
    Act_Sel_Price: TAction;
    FWorkTaskItemNo_WTItem: TcxGridDBColumn;
    Act_Set_MaxNum: TAction;
    FFileItemId_WTItem: TcxGridDBColumn;
    Act_TS_WorkTaskItem: TAction;
    Act_FPaint: TAction;
    FWorkCarryJobID_WTItem: TcxGridDBColumn;
    Act_FFlaw: TAction;
    Act_FShot: TAction;
    Act_FGalvanize: TAction;
    Act_Drill: TAction;
    Act_Sel_Price_ALL: TAction;
    ToolButton1: TToolButton;
    ToolBar_List: TToolBar;
    TB_Sel: TToolButton;
    FWorkTaskPriceID_WTP: TcxGridDBColumn;
    IsEdit: TcxGridDBColumn;
    PC_WorktaskList: TPageControl;
    TS_WorktaskList: TTabSheet;
    cxGrid_WTList: TcxGrid;
    cxGV_WTList: TcxGridDBTableView;
    FWorkTaskPriceID_WTList: TcxGridDBColumn;
    FWorkTaskListNum_WTList: TcxGridDBColumn;
    FNumber_WTLis: TcxGridDBColumn;
    FBudgetPartsName_WTList: TcxGridDBColumn;
    FBudgetPartsModel_WTList: TcxGridDBColumn;
    FBudgetPartsUnit_WTList: TcxGridDBColumn;
    FEstimateQry_WTList: TcxGridDBColumn;
    FEstimateAmount_WTList: TcxGridDBColumn;
    FWorkItemPrice_WTList: TcxGridDBColumn;
    FMaterialPrice_WTList: TcxGridDBColumn;
    FWorkPrice_WTList: TcxGridDBColumn;
    FAdjustPrice_WTList: TcxGridDBColumn;
    FBalanceBasePrice_WTList: TcxGridDBColumn;
    FTaskPrice_WTList: TcxGridDBColumn;
    FDeliveryDateTxt_WTList: TcxGridDBColumn;
    FIsDelList_WTItem: TcxGridDBColumn;
    FBalanceWorkAdjust_WTList: TcxGridDBColumn;
    FBalanceAdjust_WTList: TcxGridDBColumn;
    FWorkListRemark_WTList: TcxGridDBColumn;
    FRemark_WTList: TcxGridDBColumn;
    FWorkTaskItemNum_WTList: TcxGridDBColumn;
    FMaterialDate_WTList: TcxGridDBColumn;
    FWorkDate_WTList: TcxGridDBColumn;
    FBalanceID_WTList: TcxGridDBColumn;
    FFileItemID_WTList: TcxGridDBColumn;
    FWorkListID_WTList: TcxGridDBColumn;
    FBalanceProductName_WTList: TcxGridDBColumn;
    FProductClass_WTList: TcxGridDBColumn;
    cxGL_WTList: TcxGridLevel;
    TS_PriceList: TTabSheet;
    cxGrid_PriceList: TcxGrid;
    cxGV_PriceList: TcxGridDBTableView;
    FWorkTaskListNum_PriceList: TcxGridDBColumn;
    FNumber_PriceList: TcxGridDBColumn;
    FBudgetPartsName_PriceList: TcxGridDBColumn;
    FBudgetPartsModel_PriceList: TcxGridDBColumn;
    FBudgetPartsUnit_PriceList: TcxGridDBColumn;
    FTaskPrice_PriceList: TcxGridDBColumn;
    FBalanceBasePrice_PriceList: TcxGridDBColumn;
    FAdjustPrice_PriceList: TcxGridDBColumn;
    FWorkRatio_PriceList: TcxGridDBColumn;
    FWorkAdjust_PriceList: TcxGridDBColumn;
    FProcessPrice_PriceList: TcxGridDBColumn;
    FPaintModel_PriceList: TcxGridDBColumn;
    FPaint_PriceList: TcxGridDBColumn;
    FFlaw_PriceList: TcxGridDBColumn;
    FShotModel_PriceList: TcxGridDBColumn;
    FShot_PriceList: TcxGridDBColumn;
    FGalvanizeModel_PriceList: TcxGridDBColumn;
    FGalvanize_PriceList: TcxGridDBColumn;
    FDrill_PriceList: TcxGridDBColumn;
    FWorkSubsidy_PriceList: TcxGridDBColumn;
    FOtherSubsidy_PriceList: TcxGridDBColumn;
    FBalancePrice_PriceList: TcxGridDBColumn;
    FWorkTaskItemNum_PriceList: TcxGridDBColumn;
    FBudgetPriceID_PriceList: TcxGridDBColumn;
    FWorkTaskListID_PriceList: TcxGridDBColumn;
    FPaintID_PriceList: TcxGridDBColumn;
    FShotID_PriceList: TcxGridDBColumn;
    FGalvanizeID_PriceList: TcxGridDBColumn;
    FDrillID_PriceList: TcxGridDBColumn;
    FFlawID_PriceList: TcxGridDBColumn;
    cxGL_PriceList: TcxGridLevel;
    FMaterialPrice_PriceList: TcxGridDBColumn;
    FWorkPrice_PriceList: TcxGridDBColumn;
    Act_Status: TAction;
    Act_Ref: TAction;
    FManageParts_WTList: TcxGridDBColumn;
    FEstimateQry_PriceList: TcxGridDBColumn;
    procedure FormResize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TB_EXITClick(Sender: TObject);
    procedure MyTreeViewExpanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure TB_RefClick(Sender: TObject);
    procedure OKBtnClick(Sender: TObject);
    procedure TB_EditClick(Sender: TObject);
    procedure TB_DelClick(Sender: TObject);
    procedure CancelBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxGV_WTListCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure Act_Set_OpenExecute(Sender: TObject);
    procedure Act_Set_CloseExecute(Sender: TObject);
    procedure FE05_WTItemPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FWorkTaskItemRemark_WTItemPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure FJobPlace_WTItemPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FDeliveryPlace_WTItemPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure N_EditClick(Sender: TObject);
    procedure N_FilterClick(Sender: TObject);
    procedure N_SortClick(Sender: TObject);
    procedure N_GroupClick(Sender: TObject);
    procedure N_SetClick(Sender: TObject);
    procedure N_OutClick(Sender: TObject);
    procedure cxGrid_WTItemContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure cxGrid_WTListContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure cxGrid_WTPContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure Act_MenuExecute(Sender: TObject);
    procedure Act_Menu_SetExecute(Sender: TObject);
    procedure FBranchFileNo_WTItemPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FJobSort_WTItemPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure Act_Set_MaxIDExecute(Sender: TObject);
    procedure ToolButton7Click(Sender: TObject);
    procedure Act_SelExecute(Sender: TObject);
    procedure FWorkCarry_WTItemPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure Act_Sel_PriceExecute(Sender: TObject);
    procedure Act_AppExecute(Sender: TObject);
    procedure Act_Set_MaxNumExecute(Sender: TObject);
    procedure Act_TS_WorkTaskItemExecute(Sender: TObject);
    procedure MyTreeViewChange(Sender: TObject; Node: TTreeNode);
    procedure Act_FPaintExecute(Sender: TObject);
    procedure cxGrid_PriceListContextPopup(Sender: TObject;
      MousePos: TPoint; var Handled: Boolean);
    procedure FPaintModel_PriceListPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure Act_FFlawExecute(Sender: TObject);
    procedure Act_FShotExecute(Sender: TObject);
    procedure FShotModel_PriceListPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FFlaw_PriceListPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure Act_FGalvanizeExecute(Sender: TObject);
    procedure Act_Sel_Price_ALLExecute(Sender: TObject);
    procedure TB_SelClick(Sender: TObject);
    procedure FGalvanizeModel_PriceListPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure FDrill_PriceListPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure Act_DrillExecute(Sender: TObject);
    procedure MData_WTListBeforePost(DataSet: TDataSet);
    procedure Act_StatusExecute(Sender: TObject);
    procedure Act_SubmitExecute(Sender: TObject);
    procedure Act_CheckExecute(Sender: TObject);
    procedure Act_AuditExecute(Sender: TObject);
    procedure TB_PushDownClick(Sender: TObject);
    procedure cxGrid_WTItemFocusedViewChanged(Sender: TcxCustomGrid;
      APrevFocusedView, AFocusedView: TcxCustomGridView);
  private
    ListItemFNumber_Date:String;
    P_th_Date,P_List:String;
    P_Isleaf_Date:Integer;

    P_MaxID,P_MaxNum :Integer;

    { Private declarations }
    function AddMain:bool;
    function AddList:bool;
    function AddRd:bool;

    function EditRd:bool;
    function DelRd:bool;


  public
    P_state,P_Isleaf:integer;
    { Public declarations }
  end;

var
  Frm_WorkTaskItem: TFrm_WorkTaskItem;


implementation

uses FRMDATA, FrmWorkMain, COMMON, FrmSelect, ProgBar, PROGRASS;

{$R *.dfm}
function TFrm_WorkTaskItem.DelRd: bool;
var
 qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Delete from T_WorkTaskItem where FWorkTaskItemID=:FWorkTaskItemID';
    qry.Parameters.FindParam('FWorkTaskItemID').value:=mdata_WTItem['FWorkTaskItemID'];
    result:=qry.ExecSQL>=1;
  finally
    qry.Free;
  end;
end;


function TFrm_WorkTaskItem.AddMain: bool;
var
 qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Insert into T_WorkTaskItem(FWorkTaskItemID,FWorkTaskItemNo,FWorkTaskItemDate,FFileItemId,FDeliveryPlace, '
                 +'FJobPlace,FJobMode,FJobSort,FPaymentPercent,FE05,FWorkTaskItemRemark,FWorkCarryID,FAgentID,'
                 +'FWorkStatus,FWorkWriteID,FWorkWriteDate) '
                 +'values(:FWorkTaskItemID,:FWorkTaskItemNo,:FWorkTaskItemDate,:FFileItemId,:FDeliveryPlace,'
                 +':FJobPlace,:FJobMode,:FJobSort,:FPaymentPercent,:FE05,:FWorkTaskItemRemark,:FWorkCarryID,:FAgentID,'
                 +':FWorkStatus,:FWorkWriteID,:FWorkWriteDate)';
   with qry.Parameters do
   begin
     If P_state=0 then  //新增
     begin
       FindParam('FWorkTaskItemID').value:=P_MaxID;
       FindParam('FWorkTaskItemNo').value:=P_MaxNum;
     end;
     If P_state=1 then  //修改
     begin
       FindParam('FWorkTaskItemID').value:=mdata_WTItem['FWorkTaskItemID'];
       FindParam('FWorkTaskItemNo').value:=mdata_WTItem['FWorkTaskItemNo'];
     end;
     FindParam('FWorkTaskItemDate').value:=date();
     FindParam('FFileItemId').value:=mdata_WTItem['FFileItemId'];
     FindParam('FDeliveryPlace').value:=mdata_WTItem['FDeliveryPlace'];
     FindParam('FJobPlace').value:=mdata_WTItem['FJobPlace'];
     FindParam('FJobMode').value:=mdata_WTItem['FJobMode'];
     FindParam('FJobSort').value:=mdata_WTItem['FJobSort'];
     FindParam('FPaymentPercent').value:=mdata_WTItem['FPaymentPercent'];
     FindParam('FE05').value:=mdata_WTItem['FE05'];
     FindParam('FWorkTaskItemRemark').value:=mdata_WTItem['FWorkTaskItemRemark'];
     FindParam('FWorkCarryID').value:=mdata_WTItem['FWorkCarryID'];

     FindParam('FAgentID').value:=UserFDepartmentID;
     FindParam('FWorkStatus').value:=0;
     FindParam('FWorkWriteID').value:=UserNumID;
     FindParam('FWorkWriteDate').value:=date();
   end;
     result:=qry.ExecSQL>=1;
   finally
     qry.Free;
   end;

end;

function TFrm_WorkTaskItem.AddList: bool;
var
  qry,qry1: TADOQuery;
  i:Integer;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.EnableBCD:=False;//小数位数>4
  result:=False;
  try
    qry.SQL.Text:='Insert into T_WorkTaskList(FWorkTaskItemID, FWorkTaskListNum,FBudgetPriceID,FEstimateQry,'
                 +'FWorkSubsidy,FOtherSubsidy,FWorkRatio,FPaintID,FFlawID,FShotID,FGalvanizeID,FDrillID,'
                 +'FWorkTaskListRemark)' //FDeliveryDate,FDeliveryDateTxt) '
                 +'values(:FWorkTaskItemID,:FWorkTaskListNum,:FBudgetPriceID,:FEstimateQry,'
                 +':FWorkSubsidy,:FOtherSubsidy,:FWorkRatio,:FPaintID,:FFlawID,:FShotID,:FGalvanizeID,:FDrillID,'
                 +':FWorkTaskListRemark)';
    i:=1;
    mdata_WTList.Edit;
    mdata_WTList.Post;
    mdata_WTList.First;
    while not mData_WTList.eof do
    begin
      If (mData_WTList['FBudgetPriceID']<>0) and (mData_WTList['FBudgetPriceID']<>Null) and (mData_WTList['FEstimateQry']<>0) then
      begin
        If qry.Active then qry.Close;
        with qry.Parameters do
        begin
          If P_state=0 then  //新增
             FindParam('FWorkTaskItemID').value:=P_MaxID;
          If P_state=1 then  //修改
             FindParam('FWorkTaskItemID').value:=mdata_WTItem['FWorkTaskItemID'];
          FindParam('FWorkTaskListNum').value:=i;
          FindParam('FBudgetPriceID').value:=mdata_WTList['FBudgetPriceID'];
          FindParam('FEstimateQry').value:=mdata_WTList['FEstimateQry'];
          FindParam('FWorkSubsidy').value:=mdata_WTList['FWorkSubsidy'];
          FindParam('FOtherSubsidy').value:=mdata_WTList['FOtherSubsidy'];
          FindParam('FWorkRatio').value:=mdata_WTList['FWorkRatio'];
          FindParam('FPaintID').value:=mdata_WTList['FPaintID'];
          FindParam('FFlawID').value:=mdata_WTList['FFlawID'];
          FindParam('FShotID').value:=mdata_WTList['FShotID'];
          FindParam('FGalvanizeID').value:=mdata_WTList['FGalvanizeID'];
          FindParam('FDrillID').value:=mdata_WTList['FDrillID'];
          If mdata_WTList['FWorkTaskListRemark']=Null then
             FindParam('FWorkTaskListRemark').value:=''
          else
            FindParam('FWorkTaskListRemark').value:=mdata_WTList['FWorkTaskListRemark'];
         { FindParam('FDeliveryDateTxt').value:=mdata_WTList['FDeliveryDate'];

          If (mdata_WTList['FDeliveryDateTxt']=null) then
             FindParam('FDeliveryDateTxt').value:=''
          else
            FindParam('FDeliveryDateTxt').value:=mdata_WTList['FDeliveryDateTxt'];}
        end;
        result:=qry.ExecSQL>=1;
        if not result then break;
      end;
      mData_WTList.Next;
      i:=i+1;
    end;
  finally
    qry.Free;
  end;
end;


function TFrm_WorkTaskItem.AddRd: bool;
var
 qry:TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  result:=False;

  If mData_WTList.RecordCount<=0 then
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


function TFrm_WorkTaskItem.EditRd:bool;
var
 qry:TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  result:=False;

  If mData_WTList.RecordCount<=0 then
  begin
    result:=True;
    Exit;
  end;

  mData_WTList.Edit;
  mData_WTList.Post;

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


procedure TFrm_WorkTaskItem.FormResize(Sender: TObject);
begin
  inherited;
  L_title.Caption:=UserFDepartmentName+'生产任务单';
  Self.Caption:=UserFDepartmentName+'生产任务单';
end;

procedure TFrm_WorkTaskItem.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=cafree;
  Frm_WorkTaskItem:=nil;
end;

procedure TFrm_WorkTaskItem.TB_EXITClick(Sender: TObject);
begin
  inherited;
  self.Close;
end;

procedure TFrm_WorkTaskItem.MyTreeViewExpanding(Sender: TObject;
  Node: TTreeNode; var AllowExpansion: Boolean);
var
  P :PTree;
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If (Node = nil) or
     (PTree(Node.Data).Flag <> cNoLoadFlag) or   // 1.加载标志
     (not Node.HasChildren) or                   // 2.未有子
     (Node.Count>0) then                         // 3.已有子节点
     Exit;
  qry.SQL.Text:='Select FNumber, FParentNumber,FName,'
               +'Isleaf from VT_WorkTaskList where FParentNumber= '''
               +PTree(Node.Data).ID+''' order by FNumber';
  qry.open;
  PTree(Node.Data).Flag := cLoadFlag;                  // 设置已加载标志
  while not qry.Eof do
  begin
    New(P);
    P.ID := qry.FieldByName('FNumber').AsString;
    P.ParentID := qry.FieldByName('FParentNumber').AsString;
    P.FNumber:=qry.FieldByName('FNumber').AsString;
    P.Caption := qry.FieldByName('FName').AsString;
    P.Isleaf := qry.FieldByName('Isleaf').Value;
    P.Flag := cNoLoadFlag;                            // 新节点，未加载标志
    with MyTreeView.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('Isleaf').value;
    end;
    qry.Next;
  end;
end;

procedure TFrm_WorkTaskItem.TB_RefClick(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If  UserFDepBalanceTypeID=3 then     //电除尘结算类别 ，1、本地 2、异地  3、事业部
  begin
    If not TreeVeiwListWhere(qry,MyTreeView,'VT_WorkTaskList',' and (FDepartmentID=0 or  FDepartmentID='+IntToStr(UserFDepartmentID)+')' ) then
      Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;
  If  (UserFDepBalanceTypeID=1) or (UserFDepBalanceTypeID=2) then     //电除尘结算类别 ，1、本地 2、异地  3、事业部
  begin
    If not TreeVeiwListWhere(qry,MyTreeView,'VT_WorkTaskList',' and FAgentID='+IntToStr(UserFDepartmentID) ) then
      Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;

end;

procedure TFrm_WorkTaskItem.OKBtnClick(Sender: TObject);
var qry,qry1: TADOQuery;
    P_FWorkItemNum:string;
begin
  cxGV_WTList.OptionsData.Editing:=True;
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  mData_WTList.Edit;
  mData_WTList.Post;

 { If (StrToInt(Trim(E_FAgentID.Text))=0) or (Trim(E_FWorkItemNum.Text)='')
     or (StrToInt(Trim(E_FPriceDateID.Text))=0) or (StrToInt(Trim(E_FItemID.Text))=0)
     or (Trim(E_FDeliveryPlace.Text)='') then
  begin
    application.MessageBox('关键字不能为空！请重新输入','系统提示',MB_ICONERROR);
    Exit;
  end;}

  If P_state=0 then  //新增
  begin
    Act_Set_MaxID.Execute;//取ID
    Act_Set_MaxNum.Execute;//取单号
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



procedure TFrm_WorkTaskItem.TB_EditClick(Sender: TObject);
var
  qry,qry1:TADOQuery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry1:=TAdoQuery.Create(self);
  qry1.ConnectionString:=mdlData.ReadConnStr;
  P_state :=1;
  Act_Set_Open.Execute;
  
{  try
    qry.SQL.Text:='Select * from V_BalanceList where FWorkItemID=:FWorkItemID';
    qry.Parameters.FindParam('FWorkItemID').Value:=StrToInt(Trim(E_FWorkItemID.Text));
    qry.Open;
  finally
    ;
  end;
  If (qry.RecordCount>0)  then
  begin
    application.MessageBox('此任务单部件已结算！只允许修改未结算记录,不允许增加、删除记录。','系统提示',MB_ICONERROR);
    qry1.SQL.Text:='Select * from V_WorkList where FWorkItemID=:FWorkItemID and SumFBalanceQry=0';
    qry1.Parameters.FindParam('FWorkItemID').Value:=StrToInt(Trim(E_FWorkItemID.Text));
    qry1.Open;
    mdata_WTList.CopyFromDataSet(qry1);
    mdata_WTList.Open;

    cxGV_WTList.OptionsData.Appending:=False;
    cxGV_WTList.OptionsData.Inserting:=False;
 end;
                }

end;

procedure TFrm_WorkTaskItem.TB_DelClick(Sender: TObject);
var
  qry,qry1:TADOQuery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  If (mdata_WTItem.RecordCount>1) then
  begin
    application.MessageBox('只允许删除单个任务！请重新选择!','系统提示',MB_ICONINFORMATION);
    Exit;
  end;

  If application.MessageBox(Pchar('警告：是否删除任务单号为：【'+Trim(mdata_WTItem['FWorkTaskItemNum'])+'】的信息？'+chr(13)+chr(13)
                           +'删除数据操作将不可恢复，确定要删除本数据吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
  If application.MessageBox(Pchar('警告：是否删除任务单号为：【'+Trim(mdata_WTItem['FWorkTaskItemNum'])+'】的信息？'+chr(13)+chr(13)
                           +'删除数据操作将不可恢复，确定要删除本数据吗？'),'再次警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then


  begin
    //单据删除
    If not DelRd then
    begin
      application.MessageBox('删除单据失败！','系统提示',MB_ICONINFORMATION);
      mdlData.conn.RollbackTrans;
      Exit;
    end;
  end;
  mdata_WTItem.Close;
  qry.Free;
  //TB_ref.Click;
end;

procedure TFrm_WorkTaskItem.CancelBtnClick(Sender: TObject);
begin
  inherited;
  Act_Set_Close.Execute;
end;

procedure TFrm_WorkTaskItem.FormCreate(Sender: TObject);
begin
  inherited;
  P_state:=2;

  TB_App.Visible:= mdlData.CheckFrmRights(TFrm_WorkTaskItem.ClassName,'新增');
  TB_Prin.Visible:= mdlData.CheckFrmRights(TFrm_WorkTaskItem.ClassName,'打印');

end;

procedure TFrm_WorkTaskItem.FormShow(Sender: TObject);
begin
  inherited;
  TB_Ref.Click;
end;

procedure TFrm_WorkTaskItem.cxGV_WTListCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  inherited;
{  if cxGV_WTList.Controller.FocusedRowIndex=AViewInfo.RecordViewInfo.Index  then  //是否是选中行
     else
  if StrToFloat(AViewInfo.GridRecord.DisplayTexts[SumFBalanceQry_WTList.Index])>0 then    //设置行颜色
  begin
    ACanvas.Canvas.brush.Color := clInactiveCaptionText;
    ACanvas.FillRect(AViewInfo.Bounds);
  end;  }
end;

procedure TFrm_WorkTaskItem.Act_Set_OpenExecute(Sender: TObject);
var AFirstColumnStyle: TcxStyle;
begin
  inherited;
  ToolBar_Edit.Visible:=False;
  ToolBar_Save.Visible:=True;
  ToolBar_List.Visible:=True;
  TB_Sel.Visible:=True;

  TB_Audit.Visible:=False;
  MyTreeView.Enabled:=False;

  cxGV_WTList.OptionsData.Editing:=True;
  cxGV_WTItem.OptionsData.Editing:=True;
  cxGV_PriceList.OptionsData.Editing:=True;

  FDeliveryDateTxt_WTList.Options.Editing:=True;


  FBranchItemNumber_WTItem.Options.Editing:=True;
  FBranchFileNo_WTItem.Options.Editing:=True;
  FDeliveryPlace_WTItem.Options.Editing:=True;
  FJobSort_WTItem.Options.Editing:=True;
  FE05_WTItem.Options.Editing:=True;
  FWorkCarry_WTItem.Options.Editing:=True;
  FWorkTaskItemDate_WTItem.Options.Editing:=True;

  FEstimateQry_PriceList.Options.Editing:=True;
  FWorkRatio_PriceList.Options.Editing:=True;
  FPaintModel_PriceList.Options.Editing:=True;
  FFlaw_PriceList.Options.Editing:=True;
  FShotModel_PriceList.Options.Editing:=True;
  FGalvanizeModel_PriceList.Options.Editing:=True;
  FDrill_PriceList.Options.Editing:=True;

    //列颜色
  AFirstColumnStyle := TcxStyle.Create(Self);
  //AFirstColumnStyle.Color := clAqua;
  AFirstColumnStyle.Color := clInactiveCaptionText;

  AFirstColumnStyle.TextColor := clBlue;

  cxGV_WTList.Columns[5].Styles.Content := AFirstColumnStyle;
  cxGV_WTList.Columns[13].Styles.Content := AFirstColumnStyle;
  cxGV_WTList.Columns[18].Styles.Content := AFirstColumnStyle;

  cxGV_PriceList.Columns[5].Styles.Content := AFirstColumnStyle;
  cxGV_PriceList.Columns[11].Styles.Content := AFirstColumnStyle;
  cxGV_PriceList.Columns[14].Styles.Content := AFirstColumnStyle;
  cxGV_PriceList.Columns[16].Styles.Content := AFirstColumnStyle;
  cxGV_PriceList.Columns[17].Styles.Content := AFirstColumnStyle;
  cxGV_PriceList.Columns[19].Styles.Content := AFirstColumnStyle;
  cxGV_PriceList.Columns[21].Styles.Content := AFirstColumnStyle;
  cxGV_PriceList.Columns[22].Styles.Content := AFirstColumnStyle;
  cxGV_PriceList.Columns[23].Styles.Content := AFirstColumnStyle;


end;

procedure TFrm_WorkTaskItem.Act_Set_CloseExecute(Sender: TObject);
var AFirstColumnStyle: TcxStyle;
begin
  inherited;
  ToolBar_Edit.Visible:=True;
  ToolBar_Save.Visible:=False;
  ToolBar_List.Visible:=False;
  TB_Sel.Visible:=False;

  TB_Audit.Visible:=True;
  MyTreeView.Enabled:=True;

  cxGV_WTList.OptionsData.Editing:=False;
  cxGV_WTItem.OptionsData.Editing:=False;
  cxGV_PriceList.OptionsData.Editing:=False;

  cxGV_WTList.OptionsData.Deleting:=False;
  cxGV_WTList.OptionsData.Appending:=False;
  cxGV_WTList.OptionsData.Inserting:=False;
  cxGV_WTList.NavigatorButtons.Delete.Enabled:=False;
  cxGV_WTList.NavigatorButtons.Insert.Enabled:=False;
   
    //列颜色
  AFirstColumnStyle := TcxStyle.Create(Self);
  //AFirstColumnStyle.Color := clAqua;
  AFirstColumnStyle.Color := clBtnHighlight;

  AFirstColumnStyle.TextColor := clblack;

  cxGV_WTList.Columns[5].Styles.Content := AFirstColumnStyle;
  cxGV_WTList.Columns[13].Styles.Content := AFirstColumnStyle;
  cxGV_WTList.Columns[18].Styles.Content := AFirstColumnStyle;

  cxGV_PriceList.Columns[5].Styles.Content := AFirstColumnStyle;
  cxGV_PriceList.Columns[11].Styles.Content := AFirstColumnStyle;
  cxGV_PriceList.Columns[14].Styles.Content := AFirstColumnStyle;
  cxGV_PriceList.Columns[16].Styles.Content := AFirstColumnStyle;
  cxGV_PriceList.Columns[17].Styles.Content := AFirstColumnStyle;
  cxGV_PriceList.Columns[19].Styles.Content := AFirstColumnStyle;
  cxGV_PriceList.Columns[21].Styles.Content := AFirstColumnStyle;
  cxGV_PriceList.Columns[22].Styles.Content := AFirstColumnStyle;
  cxGV_PriceList.Columns[23].Styles.Content := AFirstColumnStyle;
  
end;

procedure TFrm_WorkTaskItem.FE05_WTItemPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  mdata_WTItem.Edit;
  mdata_WTItem.Post;
  try
    qry.SQL.Text:='select FE05 from V_WorkTaskList where FAgentID=:FAgentID and FE05 like :FE05 order by FE05 ';
    qry.Parameters.FindParam('FAgentID').value:=UserFDepartmentID;
    qry.Parameters.FindParam('FE05').value:='%'+mdata_WTItem['FE05']+'%';
    qry.Open;
  finally
     ;
  end;

  selValue:=select('选择第五项补充说明','FE05','FE05','FE05','FE05',qry);
  If (Length(selValue)>0) then
  begin
    mdata_WTItem.Edit;
    mdata_WTItem['FE05']:=qry.FieldByName('FE05').Value;
    mdata_WTItem.Post;
  end;

end;

procedure TFrm_WorkTaskItem.FWorkTaskItemRemark_WTItemPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  mdata_WTItem.Edit;
  mdata_WTItem.Post;
  try
    qry.SQL.Text:='select FWorkTaskItemRemark from V_WorkTaskList where FAgentID=:FAgentID and FWorkTaskItemRemark like :FWorkTaskItemRemark order by FWorkTaskItemRemark ';
    qry.Parameters.FindParam('FAgentID').value:=UserFDepartmentID;
    qry.Parameters.FindParam('FWorkTaskItemRemark').value:='%'+mdata_WTItem['FWorkTaskItemRemark']+'%';
    qry.Open;
  finally
     ;
  end;

  selValue:=select('选择任务信息','FWorkItemRemark','FWorkItemRemark','FWorkItemRemark','FWorkItemRemark',qry);
  If (Length(selValue)>0) then
  begin
    mdata_WTItem.Edit;
    mdata_WTItem['FWorkTaskItemRemark']:=qry.FieldByName('FWorkItemRemark').Value;
    mdata_WTItem.Post;
  end;

end;

procedure TFrm_WorkTaskItem.FJobPlace_WTItemPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  mdata_WTItem.Edit;
  mdata_WTItem.Post;
  try
    qry.SQL.Text:='select FJobPlace from V_WorkTaskList where FAgentID=:FAgentID and FJobPlace like :FJobPlace order by FJobPlace ';
    qry.Parameters.FindParam('FAgentID').value:=UserFDepartmentID;
    qry.Parameters.FindParam('FJobPlace').value:='%'+mdata_WTItem['FJobPlace']+'%';
    qry.Open;
  finally
    ;
  end;

  selValue:=select('选择加工地点','FJobPlace','FJobPlace','FJobPlace','FJobPlace',qry);
  If (Length(selValue)>0) then
  begin
    mdata_WTItem.Edit;
    mdata_WTItem['FJobPlace']:=qry.FieldByName('FJobPlace').Value;
    mdata_WTItem.Post;
  end;

end;

procedure TFrm_WorkTaskItem.FDeliveryPlace_WTItemPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  mdata_WTItem.Edit;
  mdata_WTItem.Post;
  try
    qry.SQL.Text:='select FDeliveryPlace from V_WorkTaskList where FAgentID=:FAgentID and FDeliveryPlace like :FDeliveryPlace order by FDeliveryPlace ';
    qry.Parameters.FindParam('FAgentID').value:=UserFDepartmentID;
    qry.Parameters.FindParam('FDeliveryPlace').value:='%'+mdata_WTItem['FDeliveryPlace']+'%';
    qry.Open;
  finally
    ;
  end;

  selValue:=select('选择交货地点','FDeliveryPlace','FDeliveryPlace','FDeliveryPlace','FDeliveryPlace',qry);
  If (Length(selValue)>0) then
  begin
    mdata_WTItem.Edit;
    mdata_WTItem['FDeliveryPlace']:=qry.FieldByName('FDeliveryPlace').Value;
    mdata_WTItem.Post;
  end;

end;

procedure TFrm_WorkTaskItem.N_EditClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_WorkTaskItem.N_FilterClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_WorkTaskItem.N_SortClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_WorkTaskItem.N_GroupClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_WorkTaskItem.N_SetClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_WorkTaskItem.N_OutClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_WorkTaskItem.cxGrid_WTItemContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV_WTItem';
  Gm:='mdata_WTItem';
  Gr:='cxGrid_WTItem';
  Act_Menu_Set.Execute;

end;

procedure TFrm_WorkTaskItem.cxGrid_WTListContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV_WTList';
  Gm:='mdata_WTList';
  Gr:='cxGrid_WTList';
  Act_Menu_Set.Execute;

end;

procedure TFrm_WorkTaskItem.cxGrid_WTPContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV_WTP';
  Gm:='mdata_WTP';
  Gr:='cxGrid_WTP';
  Act_Menu_Set.Execute;

end;

procedure TFrm_WorkTaskItem.Act_MenuExecute(Sender: TObject);
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

procedure TFrm_WorkTaskItem.Act_Menu_SetExecute(Sender: TObject);
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

procedure TFrm_WorkTaskItem.FBranchFileNo_WTItemPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  mdata_WTItem.Edit;
  If mdata_WTItem['FBranchFileNo']=Null then
     mdata_WTItem['FBranchFileNo']:='';
  mdata_WTItem.Post;
  try
    qry.SQL.Text:='select * from VT_FileItem  where FBranchFileNo like :FBranchFileNo';
    qry.Parameters.FindParam('FBranchFileNo').value:='%'+mdata_WTItem['FBranchFileNo']+'%';
    qry.Open;
  finally
    ;
  end;

  selValue:=select('选择项目档案号','FNumber','FParentNumber','FNumber','FName',qry);
  If (Length(selValue)>0) and (qry.FieldByName('Isleaf').Value<>0) then
  begin
    mdata_WTItem.Edit;
    mdata_WTItem['FBranchFileNo']:=qry.FieldByName('FBranchFileNo').AsString;
    mdata_WTItem['FBranchItemNumber']:=qry.FieldByName('FBranchItemNumber').AsString;
    mdata_WTItem['FClientFullName']:=qry.FieldByName('FClientFullName').AsString;
    mdata_WTItem['FDepartmentID']:=qry.FieldByName('FDepartmentID').AsString;
    mdata_WTItem['FFileItemId']:=qry.FieldByName('FFileItemId').AsString;

    mdata_WTItem.Post;
  end
  else
    application.MessageBox('请选择明细！','系统提示',MB_ICONINFORMATION);

  qry.Free;

end;

procedure TFrm_WorkTaskItem.FJobSort_WTItemPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  mdata_WTItem.Edit;
  mdata_WTItem.Post;
  try
    qry.SQL.Text:='select FJobSort from V_WorkTaskList where FAgentID=:FAgentID and FJobSort like :FJobSort order by FJobSort ';
    qry.Parameters.FindParam('FAgentID').value:=UserFDepartmentID;
    qry.Parameters.FindParam('FJobSort').value:='%'+mdata_WTItem['FJobSort']+'%';
    qry.Open;
  finally
    ;
  end;

  selValue:=select('选择加工类型','FJobSort','FJobSort','FJobSort','FJobSort',qry);
  If (Length(selValue)>0) then
  begin
    mdata_WTItem.Edit;
    mdata_WTItem['FJobSort']:=qry.FieldByName('FJobSort').Value;
    mdata_WTItem.Post;
  end;

end;

procedure TFrm_WorkTaskItem.Act_Set_MaxIDExecute(Sender: TObject);
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
      value:='T_WorkTaskItem';
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

procedure TFrm_WorkTaskItem.ToolButton7Click(Sender: TObject);
var  i,j,n: integer;
     Insertbz:boolean;
     P_ID:real;
begin
  inherited;
  mData_WTList.Open;
  mData_WTList.First;

  mData_WTList.Last;
  for i:=0 to cxGV_WTP.DataController.Controller.SelectedRecordCount-1 do
  begin
    Insertbz:=True;
    j:=cxGV_WTP.DataController.GetSelectedRowIndex(i);
    If (cxGV_WTP.DataController.GetValue(J,15)<>0) then    //FTakeListID
    begin
      mData_WTList.Append;
      mData_WTList.Edit;
      P_ID:=cxGV_WTP.DataController.GetValue(J,15);  //结算单价ID
      mData_WTList.Post;
      mData_WTList.Edit;
      mData_WTList['FWorkStatus']:=0;
      mData_WTList['FNumber']:=cxGV_WTP.DataController.GetValue(J,2);
      mData_WTList['FBudgetPartsName']:=cxGV_WTP.DataController.GetValue(J,3);
      mData_WTList['FBudgetPartsModel']:=cxGV_WTP.DataController.GetValue(J,4);
      mData_WTList['FBudgetPartsUnit']:=cxGV_WTP.DataController.GetValue(J,5);
      mData_WTList['FBalanceBasePrice']:=cxGV_WTP.DataController.GetValue(J,6);  //结算基价
      mData_WTList['FMaterialPrice']:=cxGV_WTP.DataController.GetValue(J,7);   //材料 基价
      mData_WTList['FWorkPrice']:=cxGV_WTP.DataController.GetValue(J,10);   //工管 基价
      mData_WTList['FWorkCarry']:=cxGV_WTP.DataController.GetValue(J,17);  //单价执行日期
      mData_WTList['FBudgetPriceID']:=P_ID;  //结算单价ID
      mData_WTList['FEstimateQry']:=0;         //预估数量
      mData_WTList['FWorkSubsidy']:=0;        //工管 贴补
      mData_WTList['FOtherSubsidy']:=0;            //其他贴补
      mData_WTList['FTaskPrice']:=0;      //任务单单价
      mData_WTList['FAdjustPrice']:=0;      //调整单价
      mData_WTList['FWorkRatio']:=1;       //系数
      mData_WTList['FWorkAdjust']:=0;      //工管单价
      mData_WTList['FTaskPrice']:=0;      //单价
      mData_WTList['FWorkAdjust']:=0;      //单价
      mData_WTList['FPaint']:=0;      //刷漆
      mData_WTList['FPaintModel']:='';      //刷漆
      mData_WTList['FPaintID']:=0;      //刷漆
      mData_WTList['FFlawID']:=0;      //探伤
      mData_WTList['FFlaw']:=0;      //探伤
      mData_WTList['FShotID']:=0;      //抛丸
      mData_WTList['FShot']:=0;      //抛丸
      mData_WTList['FShotModel']:='';      //抛丸
      mData_WTList['FGalvanizeID']:=0;      //镀锌
      mData_WTList['FGalvanize']:=0;      //镀锌
      mData_WTList['FGalvanizeModel']:='';      //镀锌
      mData_WTList['FDrillID']:=0;      //钻孔
      mData_WTList['FDrill']:=0;      //钻孔单价

      mData_WTList.Post;
      Insertbz:=False;
    end;
    if Insertbz then break;
  end;
  PC_WorkTask.ActivePage:=TS_WorkTask;

{  PC_1.ActivePage:=TS_PlanTender;
  TS_Take.TabEnabled:=False;
  TS_PlanTender.TabEnabled:=True;
  }
end;

procedure TFrm_WorkTaskItem.Act_SelExecute(Sender: TObject);
begin
  inherited;
  If mdata_WTItem['FWorkCarryID']<>0 then
    Act_Sel_Price.Execute;
  PC_WorkTask.ActivePage:=TS_Price;
end;

procedure TFrm_WorkTaskItem.FWorkCarry_WTItemPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='select * from VT_WorkCarry with(nolock) where  FDepartmentID=:FDepartmentID '
                +'and (FDepBalanceTypeID=0 or FDepBalanceTypeID=:FDepBalanceTypeID )';
    qry.Parameters.FindParam('FDepartmentID').value:=mdata_WTItem['FDepartmentID'];
    qry.Parameters.FindParam('FDepBalanceTypeID').value:=UserFDepBalanceTypeID;
    qry.Open;
  finally
     ;
  end;
  If qry.RecordCount<1 then
     Exit;

  selValue:=select('请选择材料价执行日期','FNumber','FParentNumber','FNumber','FName',qry);
  If (Length(selValue)>0) and (qry.FieldByName('Isleaf').Value>0) then
  begin
    mdata_WTItem.Edit;
    mdata_WTItem['FWorkCarry']:=qry.FieldByName('FWorkCarry').AsString;
    mdata_WTItem['FWorkCarryID']:=qry.FieldByName('FWorkCarryID').AsString;
    mdata_WTItem['FWorkCarryJobID']:=qry.FieldByName('FWorkCarryJobID').AsString;
    mdata_WTItem.Post;
    Act_Sel_Price.Execute;
  end
  else
  begin
    messagedlg('请选择明细！',mtInformation,[mbok],0);
    Exit;
  end;


end;

procedure TFrm_WorkTaskItem.Act_Sel_PriceExecute(Sender: TObject);
var  qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If (mdata_WTItem['FWorkCarryID']<>0) and (mdata_WTItem['FWorkCarryID']<>Null) then
  begin
    try
      qry.SQL.Text:='select IsEdit=cast(0 as bit),* from V_BudgetPrice with(nolock) where  FWorkCarryID=:FWorkCarryID order by FNumber';
      qry.Parameters.FindParam('FWorkCarryID').value:=mdata_WTItem['FWorkCarryID'];
      qry.Open;
    finally
       ;
    end;
    Mdata_WTP.CopyFromDataSet(qry);
    Mdata_WTP.Active:=True;
  end;
end;

procedure TFrm_WorkTaskItem.Act_AppExecute(Sender: TObject);
var
 i:Integer;
 qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  P_state :=0;  //新增
  If mdata_WTItem.RecordCount<>1 then
  begin
    try
      qry.SQL.Text:='select * from V_WorkTaskItem where FWorkTaskItemID=0 ';
      qry.Open;
    finally
       ;
    end;
    mdata_WTItem.CopyFromDataSet(qry);
    mdata_WTItem.Active:=True;
    mdata_WTItem.Edit;
    mdata_WTItem.Append;
    mdata_WTItem.Edit;
    mdata_WTItem['FWorkTaskItemDate']:=now();
    mdata_WTItem.Post;
  end;
  try
    qry.SQL.Text:='select * from V_WorkTaskList where FWorkTaskListID=0 ';
    qry.Open;
  finally
     ;
  end;
  mdata_WTList.CopyFromDataSet(qry);
  mdata_WTList.Active:=True;
  mdata_WTList.Close;
  Act_Set_Open.Execute;
end;

procedure TFrm_WorkTaskItem.Act_Set_MaxNumExecute(Sender: TObject);
var
  proc:TADOStoredProc;
begin
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
      value:=ForMatDateTime('yyyy-mm-dd',(Mdata_WTItem['FWorkTaskItemDate']));
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=30;
      name := '@TableName';
      value:='T_WorkTaskItem';
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=20;
      name := '@DateFiled';
      value:='FWorkTaskItemDate';
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=20;
      name := '@NumFiled';
      value:='FWorkTaskItemNo';
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=20;
      name := '@FDepartmentFiled';
      value:='FAgentID';
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

procedure TFrm_WorkTaskItem.Act_TS_WorkTaskItemExecute(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If P_Isleaf_Date>0 then
  begin
    If MyItemList(qry,Mdata_WTItem,'V_WorkTaskItem','FFullNumber',
                 ListItemFNumber_Date,'FFullNumber') then
    If MyItemListwhere(qry,Mdata_WTList,'V_WorkTaskList','FFullNumber',
                  ListItemFNumber_Date,'','FFullNumber,FWorkTaskListNum') then

  end
  else
  begin
    Mdata_WTItem.Close;
    Mdata_WTList.Close;
  end;

end;

procedure TFrm_WorkTaskItem.MyTreeViewChange(Sender: TObject;
  Node: TTreeNode);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If Node = nil then Exit;
  with PTree(Node.Data)^ do
  begin
    ListItemFNumber_Date:=trim(PTree(Node.Data).FNumber);
    P_th_Date:=PTree(Node.Data).Caption;
    P_Isleaf_Date:=PTree(Node.Data).Isleaf;
    Act_TS_WorkTaskItem.Execute;//页选项设置
    Act_Status.Execute; //权限设置
  end;

end;

procedure TFrm_WorkTaskItem.Act_FPaintExecute(Sender: TObject);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  mdata_WTItem.Edit;
  mdata_WTItem.Post;
  try
    qry.SQL.Text:='select * from V_BudgetJobPrice '
                 +'where FDepartmentID=:FDepartmentID and FWorkCarryJobID=:FWorkCarryJobID and FWorkTaskPartsName=''刷漆费'' '
                 +'order by FNumber ';
    qry.Parameters.FindParam('FDepartmentID').value:=+mdata_WTItem['FDepartmentID'];
    qry.Parameters.FindParam('FWorkCarryJobID').value:=+mdata_WTItem['FWorkCarryJobID'];
    qry.Open;
  finally
    ;
  end;

  selValue:=select('选择刷漆单价','FNumber','FWorkCarryjob','FNumber','FWorkCarryjob;FNumber;FBudgetPartsName;FBudgetPartsModel',qry);
  If (qry.RecordCount>0) and  (Length(selValue)>0) then
  begin
    mdata_WTList.Edit;
    mdata_WTList['FPaintID']:=qry.FieldByName('FWorkPriceID').Value;
    mdata_WTList['FPaint']:=qry.FieldByName('FWorkPrice').Value;
    mdata_WTList['FPaintModel']:=qry.FieldByName('FBudgetPartsModel').Value;
    mdata_WTList.Post;
  end;


end;

procedure TFrm_WorkTaskItem.cxGrid_PriceListContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV_PriceList';
  Gm:='mdata_PriceList';
  Gr:='cxGrid_PriceList';
  Act_Menu_Set.Execute;

end;

procedure TFrm_WorkTaskItem.FPaintModel_PriceListPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  ACT_FPaint.Execute;
end;

procedure TFrm_WorkTaskItem.Act_FFlawExecute(Sender: TObject);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  mdata_WTItem.Edit;
  mdata_WTItem.Post;
  try
    qry.SQL.Text:='select * from V_BudgetJobPrice '
                 +'where FDepartmentID=:FDepartmentID and FWorkCarryJobID=:FWorkCarryJobID and FBudgetPartsName like  ''%探伤'' '
                 +'order by FNumber ';
    qry.Parameters.FindParam('FDepartmentID').value:=+mdata_WTItem['FDepartmentID'];
    qry.Parameters.FindParam('FWorkCarryJobID').value:=+mdata_WTItem['FWorkCarryJobID'];
    qry.Open;
  finally
    ;
  end;
  If (qry.RecordCount=1)  then
  begin
    mdata_WTList.Edit;
    mdata_WTList['FFlawID']:=qry.FieldByName('FWorkPriceID').Value;
    mdata_WTList['FFlaw']:=qry.FieldByName('FWorkPrice').Value;
    mdata_WTList.Post;
    Exit;
  end;
  selValue:=select('选择探伤单价','FNumber','FWorkCarryjob','FNumber','FWorkCarryjob;FNumber;FBudgetPartsName;FBudgetPartsModel',qry);
  If (qry.RecordCount>0) and  (Length(selValue)>0) then
  begin
    mdata_WTList.Edit;
    mdata_WTList['FFlawID']:=qry.FieldByName('FWorkPriceID').Value;
    mdata_WTList['FFlaw']:=qry.FieldByName('FWorkPrice').Value;
    mdata_WTList.Post;
  end;

end;

procedure TFrm_WorkTaskItem.Act_FShotExecute(Sender: TObject);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  mdata_WTItem.Edit;
  mdata_WTItem.Post;
  try
    qry.SQL.Text:='select * from V_BudgetJobPrice '
                 +'where FDepartmentID=:FDepartmentID and FWorkCarryJobID=:FWorkCarryJobID and FBudgetPartsName=''抛丸费'' '
                 +'order by FNumber ';
    qry.Parameters.FindParam('FDepartmentID').value:=+mdata_WTItem['FDepartmentID'];
    qry.Parameters.FindParam('FWorkCarryJobID').value:=+mdata_WTItem['FWorkCarryJobID'];
    qry.Open;
  finally
    ;
  end;

  selValue:=select('选择抛丸费单价','FNumber','FWorkCarryjob','FNumber','FWorkCarryjob;FNumber;FBudgetPartsName;FBudgetPartsModel',qry);
  If (qry.RecordCount>0) and  (Length(selValue)>0) then
  begin
    mdata_WTList.Edit;
    mdata_WTList['FShotID']:=qry.FieldByName('FWorkPriceID').Value;
    mdata_WTList['FShot']:=qry.FieldByName('FWorkPrice').Value;
    mdata_WTList['FShotModel']:=qry.FieldByName('FBudgetPartsModel').Value;
    mdata_WTList.Post;
  end;


end;

procedure TFrm_WorkTaskItem.FShotModel_PriceListPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  Act_FShot.Execute;
end;

procedure TFrm_WorkTaskItem.FFlaw_PriceListPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  Act_FFlaw.Execute;

end;

procedure TFrm_WorkTaskItem.Act_FGalvanizeExecute(Sender: TObject);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  mdata_WTItem.Edit;
  mdata_WTItem.Post;
  try
    qry.SQL.Text:='select * from V_BudgetPrice '
                 +'where FDepartmentID=:FDepartmentID and FWorkCarryID=:FWorkCarryID and FBudgetPartsName=''镀锌费'' '
                 +'order by FNumber ';
    qry.Parameters.FindParam('FDepartmentID').value:=+mdata_WTItem['FDepartmentID'];
    qry.Parameters.FindParam('FWorkCarryID').value:=+mdata_WTItem['FWorkCarryID'];
    qry.Open;
  finally
    ;
  end;

  selValue:=select('选镀锌费单价','FNumber','FWorkCarry','FNumber','FNumber;FBudgetPartsName;FBudgetPartsModel',qry);
  If (qry.RecordCount>0) and  (Length(selValue)>0) then
  begin
    mdata_WTList.Edit;
    mdata_WTList['FGalvanizeID']:=qry.FieldByName('FWorkTaskPriceID').Value;
    mdata_WTList['FGalvanize']:=qry.FieldByName('FBalanceBasePrice').Value;
    mdata_WTList['FGalvanizeModel']:=qry.FieldByName('FBudgetPartsModel').Value;
    mdata_WTList.Post;
  end;

end;

procedure TFrm_WorkTaskItem.Act_Sel_Price_ALLExecute(Sender: TObject);
var  qry: TADOQuery;
     P_ID:real;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If (mdata_WTItem['FWorkCarryID']<>0) and (mdata_WTItem['FWorkCarryID']<>Null) then
  try
    qry.SQL.Text:='select * from V_BudgetPrice with(nolock) where  FWorkCarryID=:FWorkCarryID order by FNumber';
    qry.Parameters.FindParam('FWorkCarryID').value:=mdata_WTItem['FWorkCarryID'];
    qry.Open;
  finally
     ;
  end;
  Mdata_WTP.CopyFromDataSet(qry);
  Mdata_WTP.Active:=True;
  mData_WTList.Open;
  mData_WTList.Edit;
  mdata_WTList.Last;
//  If (P_state=0) and (mdata_WTList.RecordCount<=1) then
  If (P_state=0) and (mdata_WTList.RecordCount<=1) then
  begin
    Mdata_WTP.First;
    while not Mdata_WTP.eof do
    begin
      mData_WTList.Append;
      mData_WTList.Edit;
      P_ID:=Mdata_WTP['FWorkTaskPriceID'];  //结算单价ID
      mData_WTList.Post;
      mData_WTList.Edit;

      mData_WTList['FWorkStatus']:=0;
      mData_WTList['FNumber']:=Mdata_WTP['FNumber'];
      mData_WTList['FBudgetPartsName']:=Mdata_WTP['FBudgetPartsName'];
      mData_WTList['FBudgetPartsModel']:=Mdata_WTP['FBudgetPartsModel'];
      mData_WTList['FBudgetPartsUnit']:=Mdata_WTP['FBudgetPartsUnit'];
      mData_WTList['FBalanceBasePrice']:=Mdata_WTP['FBalanceBasePrice'];  //结算基价
      mData_WTList['FMaterialPrice']:=Mdata_WTP['FMaterialPrice'];   //材料 基价
      mData_WTList['FWorkPrice']:=Mdata_WTP['FWorkPrice'];   //工管 基价

      mData_WTList['FWorkCarry']:=Mdata_WTP['FWorkCarry'];  //单价执行日期
      mData_WTList['FWorkTaskPriceID']:=P_ID;  //结算单价ID
      mData_WTList['FEstimateQry']:=0;         //预估数量
      mData_WTList['FWorkSubsidy']:=0;        //工管 贴补
      mData_WTList['FOtherSubsidy']:=0;            //其他贴补
      mData_WTList['FTaskPrice']:=0;      //任务单单价
      mData_WTList['FWorkItemPrice']:=0;      //任务单结算单价
      mData_WTList['FAdjustPrice']:=0;      //调整单价

      mData_WTList['FWorkRatio']:=1;       //系数
      mData_WTList['FWorkAdjust']:=0;      //工管调整单价

      mData_WTList['FTaskPrice']:=0;      //单价
      mData_WTList['FWorkAdjust']:=0;      //单价
      mData_WTList['FPaint']:=0;      //刷漆
      mData_WTList['FPaintModel']:='';      //刷漆
      mData_WTList['FPaintID']:=0;      //刷漆
      mData_WTList['FFlawID']:=0;      //探伤
      mData_WTList['FFlaw']:=0;      //探伤
      mData_WTList['FShotID']:=0;      //抛丸
      mData_WTList['FShot']:=0;      //抛丸
      mData_WTList['FShotModel']:='';      //抛丸
      mData_WTList['FGalvanizeID']:=0;      //镀锌
      mData_WTList['FGalvanize']:=0;      //镀锌
      mData_WTList['FGalvanizeModel']:='';      //镀锌
      mData_WTList['FDrillID']:=0;      //钻孔
      mData_WTList['FDrill']:=0;      //钻孔单价

      mData_WTList.Post;
      Mdata_WTP.Next;
    end;

  end;
  PC_WorkTask.ActivePage:=TS_WorkTask;

end;

procedure TFrm_WorkTaskItem.TB_SelClick(Sender: TObject);
begin
  inherited;
  Act_Sel.Execute;

end;

procedure TFrm_WorkTaskItem.FGalvanizeModel_PriceListPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  Act_FGalvanize.Execute;
end;

procedure TFrm_WorkTaskItem.FDrill_PriceListPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  Act_Drill.Execute;
end;

procedure TFrm_WorkTaskItem.Act_DrillExecute(Sender: TObject);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  mdata_WTItem.Edit;
  mdata_WTItem.Post;
  try
    qry.SQL.Text:='select * from V_BudgetJobPrice '
                 +'where FDepartmentID=:FDepartmentID and FWorkCarryJobID=:FWorkCarryJobID and FBudgetPartsName like  ''%钻孔%'' '
                 +'order by FNumber ';
    qry.Parameters.FindParam('FDepartmentID').value:=+mdata_WTItem['FDepartmentID'];
    qry.Parameters.FindParam('FWorkCarryJobID').value:=+mdata_WTItem['FWorkCarryJobID'];
    qry.Open;
  finally
    ;
  end;
  If (qry.RecordCount=1)  then
  begin
    mdata_WTList.Edit;
    mdata_WTList['FDrillID']:=qry.FieldByName('FWorkPriceID').Value;
    mdata_WTList['FDrill']:=qry.FieldByName('FWorkPrice').Value;
    mdata_WTList.Post;
    Exit;
  end;
  selValue:=select('选择钻孔单价','FNumber','FWorkCarryjob','FNumber','FNumber;FBudgetPartsName;FBudgetPartsModel',qry);
  If (qry.RecordCount>0) and  (Length(selValue)>0) then
  begin
    mdata_WTList.Edit;
    mdata_WTList['FDrillID']:=qry.FieldByName('FWorkPriceID').Value;
    mdata_WTList['FDrill']:=qry.FieldByName('FWorkPrice').Value;
    mdata_WTList.Post;
  end;


end;

procedure TFrm_WorkTaskItem.MData_WTListBeforePost(DataSet: TDataSet);
begin
  inherited;
   IF DataSet['FWorkPrice']=Null then DataSet['FWorkPrice']:=0;
   //--工管调整
   DataSet['FWorkAdjust']:=(DataSet['FWorkRatio']-1)*DataSet['FWorkPrice'];

    //工序调整=刷漆+探伤+抛丸+镀锌+钻孔
   DataSet['FProcessPrice']:=DataSet['FPaint']+DataSet['FFlaw']+DataSet['FShot']+DataSet['FGalvanize']+DataSet['FDrill'];
   //调整单价=工管调整+工序调整  FAdjustPrice
   DataSet['FAdjustPrice']:=DataSet['FWorkAdjust']+DataSet['FProcessPrice'];
   //任务单单价
   DataSet['FTaskPrice']:=DataSet['FMaterialPrice']+DataSet['FWorkPrice']+DataSet['FWorkSubsidy']+DataSet['FOtherSubsidy'];
   //结算单价WorkItemPrice
   DataSet['FWorkItemPrice']:=DataSet['FTaskPrice']+DataSet['FAdjustPrice'];

   //任务单金额
   DataSet['FEstimateAmount']:=DataSet['FEstimateQry']+DataSet['FWorkItemPrice'];
     
end;

procedure TFrm_WorkTaskItem.Act_StatusExecute(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If mData_WTItem.RecordCount<=0 then
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
  try
    qry.SQL.Text:='Select distinct FWorkStatus from V_WorkTaskItem with(nolock) where FFullNumber like :FFullNumber and FAgentID=:FAgentID  ';
    qry.Parameters.FindParam('FFullNumber').value:=ListItemFNumber_Date+'%';
    qry.Parameters.FindParam('FAgentID').value:= UserFDepartmentID;
    qry.Open;
  finally
    ;
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
  try
    qry.SQL.Text:='Select FWorkStatus,FWorkWriteID from V_WorkTaskItem with(nolock) '
                 +' where FWorkStatus=0 and FFullNumber like :FFullNumber and FWorkWriteID=:FWorkWriteID and FAgentID=:FAgentID ';
    qry.Parameters.FindParam('FFullNumber').value:=ListItemFNumber_Date+'%';
    qry.Parameters.FindParam('FWorkWriteID').value:= UserNumID;
    qry.Parameters.FindParam('FAgentID').value:= UserFDepartmentID;
    qry.Open;
  finally
    ;
  end;

  If qry.RecordCount=1 then
  begin
    TB_Submit.Caption:='提交';
    TB_Submit.Visible:=mdlData.CheckFrmRights(TFrm_WorkTaskItem.ClassName,'提交');
    TB_Edit.Visible:=mdlData.CheckFrmRights(TFrm_WorkTaskItem.ClassName,'修改');
    TB_Del.Visible:=mdlData.CheckFrmRights(TFrm_WorkTaskItem.ClassName,'删除');
  end;
  If qry.RecordCount>1 then
  begin
    TB_Submit.Caption:='批量提交';
    TB_Submit.Visible:=mdlData.CheckFrmRights(TFrm_WorkTaskItem.ClassName,'提交');
    TB_Edit.Visible:=False;
    TB_Del.Visible:=False;
  end;

   //提交撤回
  try
    qry.SQL.Text:='Select FWorkStatus,FWorkWriteID from V_WorkTaskItem with(nolock) '
                 +' where FWorkStatus=1 and FFullNumber like :FFullNumber and FWorkWriteID=:FWorkWriteID and FAgentID=:FAgentID ';
    qry.Parameters.FindParam('FFullNumber').value:=ListItemFNumber_Date+'%';
    qry.Parameters.FindParam('FWorkWriteID').value:= UserNumID;
    qry.Parameters.FindParam('FAgentID').value:= UserFDepartmentID;
    qry.Open;
  finally
    ;
  end;
  If qry.RecordCount=1 then
  begin
    TB_Submit.Caption:='提交撤回';
    TB_Submit.Visible:=mdlData.CheckFrmRights(TFrm_WorkTaskItem.ClassName,'提交');
    TB_Check.Caption:='校对';
    TB_Check.Visible:=mdlData.CheckFrmRights(TFrm_WorkTaskItem.ClassName,'校对');
    TB_Edit.Visible:=mdlData.CheckFrmRights(TFrm_WorkTaskItem.ClassName,'修改');
    TB_Del.Visible:=mdlData.CheckFrmRights(TFrm_WorkTaskItem.ClassName,'删除');
    TB_Check.Visible:=False;
  end;
  If qry.RecordCount>1 then
  begin
    TB_Submit.Caption:='批量提交撤回';
    TB_Submit.Visible:=mdlData.CheckFrmRights(TFrm_WorkTaskItem.ClassName,'提交');
    TB_Check.Caption:='批量校对';
    TB_Check.Visible:=mdlData.CheckFrmRights(TFrm_WorkTaskItem.ClassName,'校对');
    TB_Edit.Visible:=False;
    TB_Del.Visible:=False;
    TB_Check.Visible:=False;
  end;

  //校对 1
  try
    qry.SQL.Text:='Select FWorkStatus from V_WorkTaskItem with(nolock) '
                 +' where FWorkStatus=1 and FFullNumber like :FFullNumber and FAgentID=:FAgentID';
    qry.Parameters.FindParam('FFullNumber').value:=ListItemFNumber_Date+'%';
    qry.Parameters.FindParam('FAgentID').value:= UserFDepartmentID;
    qry.Open;
  finally
    ;
  end;
  If qry.RecordCount=1 then
  begin
    TB_Check.Caption:='校对';
    TB_Check.Visible:=mdlData.CheckFrmRights(TFrm_WorkTaskItem.ClassName,'校对');
    TB_Edit.Visible:=False;
    TB_Del.Visible:=False;
  end;
  If qry.RecordCount>1 then
  begin
    TB_Check.Caption:='批量校对';
    TB_Check.Visible:=mdlData.CheckFrmRights(TFrm_WorkTaskItem.ClassName,'校对');
    TB_Edit.Visible:=False;
    TB_Del.Visible:=False;
  end;
     //校对  2
  try
    qry.SQL.Text:='Select FWorkStatus from V_WorkTaskItem with(nolock) '
                 +' where FWorkStatus=2 and FFullNumber like :FFullNumber and FAgentID=:FAgentID';
    qry.Parameters.FindParam('FFullNumber').value:=ListItemFNumber_Date+'%';
    qry.Parameters.FindParam('FAgentID').value:= UserFDepartmentID;
    qry.Open;
  finally
    ;
  end;
  If qry.RecordCount=1 then
  begin
    TB_Check.Caption:='校对';
    TB_Check.Visible:=mdlData.CheckFrmRights(TFrm_WorkTaskItem.ClassName,'校对');
    TB_Audit.Caption:='审核';
    TB_Audit.Visible:=mdlData.CheckFrmRights(TFrm_WorkTaskItem.ClassName,'审核');
    TB_Edit.Visible:=False;
    TB_Del.Visible:=False;
  end;
  If qry.RecordCount>1 then
  begin
    TB_Check.Caption:='批量校对';
    TB_Check.Visible:=mdlData.CheckFrmRights(TFrm_WorkTaskItem.ClassName,'校对');
    TB_Audit.Caption:='批量审核';
    TB_Audit.Visible:=mdlData.CheckFrmRights(TFrm_WorkTaskItem.ClassName,'审核');
    TB_Edit.Visible:=False;
    TB_Del.Visible:=False;
  end;
  //审核  3
  try
    qry.SQL.Text:='Select FWorkStatus from V_WorkTaskItem with(nolock) '
                 +' where FWorkStatus=3 and FFullNumber like :FFullNumber and FAgentID=:FAgentID';
    qry.Parameters.FindParam('FFullNumber').value:=ListItemFNumber_Date+'%';
    qry.Parameters.FindParam('FAgentID').value:= UserFDepartmentID;
    qry.Open;
  finally
    ;
  end;
  If qry.RecordCount=1 then
  begin
    TB_PushDown.Caption:='下推';
    TB_PushDown.Visible:=mdlData.CheckFrmRights(TFrm_WorkTaskItem.ClassName,'下推');

    TB_Check.Visible:=False;
    TB_Audit.Visible:=False;
    TB_Edit.Visible:=False;
    TB_Del.Visible:=False;
  end;
  If qry.RecordCount>1 then
  begin
    TB_PushDown.Caption:='批量下推';
    TB_PushDown.Visible:=mdlData.CheckFrmRights(TFrm_WorkTaskItem.ClassName,'下推');

    TB_Check.Visible:=False;
    TB_Audit.Visible:=False;
    TB_Edit.Visible:=False;
    TB_Del.Visible:=False;
  end;

   //校对撤回
  try
    qry.SQL.Text:='Select FWorkStatus,FWorkCheckID from V_WorkTaskItem with(nolock) '
                 +' where FWorkStatus=2 and FFullNumber like :FFullNumber and FWorkCheckID=:FWorkCheckID and FAgentID=:FAgentID';
    qry.Parameters.FindParam('FFullNumber').value:=ListItemFNumber_Date+'%';
    qry.Parameters.FindParam('FWorkCheckID').value:= UserNumID;
    qry.Parameters.FindParam('FAgentID').value:= UserFDepartmentID;
    qry.Open;
  finally
    ;
  end;
  If qry.RecordCount=1 then
  begin
    TB_Check.Caption:='校对撤回';
    TB_Check.Visible:=mdlData.CheckFrmRights(TFrm_WorkTaskItem.ClassName,'校对');
    TB_Submit.Visible:=False;
    TB_Edit.Visible:=False;
    TB_Del.Visible:=False;
  end;
  If qry.RecordCount>1 then
  begin
    TB_Check.Caption:='批量校对撤回';
    TB_Check.Visible:=mdlData.CheckFrmRights(TFrm_WorkTaskItem.ClassName,'校对');
    TB_Submit.Visible:=False;
    TB_Edit.Visible:=False;
    TB_Del.Visible:=False;
  end;

   //审核撤回
  try
    qry.SQL.Text:='Select FWorkStatus,FWorkAuditID from V_WorkTaskItem with(nolock) '
                 +' where FWorkStatus=3 and FFullNumber like :FFullNumber and FWorkAuditID=:FWorkAuditID and FAgentID=:FAgentID';
    qry.Parameters.FindParam('FFullNumber').value:=ListItemFNumber_Date+'%';
    qry.Parameters.FindParam('FWorkAuditID').value:= UserNumID;
    qry.Parameters.FindParam('FAgentID').value:= UserFDepartmentID;
    qry.Open;
  finally
    ;
  end;
  If qry.RecordCount=1 then
  begin
    TB_Audit.Caption:='审核撤回';
    TB_Audit.Visible:=mdlData.CheckFrmRights(TFrm_WorkTaskItem.ClassName,'审核');
    TB_Check.Visible:=False;
    TB_Submit.Visible:=False;
    TB_Edit.Visible:=False;
    TB_Del.Visible:=False;
  end;
  If qry.RecordCount>1 then
  begin
    TB_Audit.Caption:='批量审核撤回';
    TB_Audit.Visible:=mdlData.CheckFrmRights(TFrm_WorkTaskItem.ClassName,'审核');
    TB_Submit.Visible:=False;
    TB_Check.Visible:=False;
    TB_Edit.Visible:=False;
    TB_Del.Visible:=False;
  end;


   //下推撤回
  try
    qry.SQL.Text:='Select FWorkStatus,FWorkPushDownID from V_WorkTaskItem with(nolock) '
                 +' where FWorkStatus=4 and FFullNumber like :FFullNumber and FWorkPushDownID=:FWorkPushDownID and FAgentID=:FAgentID';
    qry.Parameters.FindParam('FFullNumber').value:=ListItemFNumber_Date+'%';
    qry.Parameters.FindParam('FWorkPushDownID').value:= UserNumID;
    qry.Parameters.FindParam('FAgentID').value:= UserFDepartmentID;
    qry.Open;
  finally
    ;
  end;
  If qry.RecordCount=1 then
  begin
    TB_PushDown.Caption:='下推撤回';
    TB_PushDown.Visible:=mdlData.CheckFrmRights(TFrm_WorkTaskItem.ClassName,'下推');
    TB_Audit.Visible:=False;
    TB_Check.Visible:=False;
    TB_Submit.Visible:=False;
    TB_Edit.Visible:=False;
    TB_Del.Visible:=False;
  end;
  If qry.RecordCount>1 then
  begin
    TB_PushDown.Caption:='批量下推撤回';
    TB_PushDown.Visible:=mdlData.CheckFrmRights(TFrm_WorkTaskItem.ClassName,'下推');
    TB_Audit.Visible:=False;
    TB_Submit.Visible:=False;
    TB_Check.Visible:=False;
    TB_Edit.Visible:=False;
    TB_Del.Visible:=False;
  end;
end;

procedure TFrm_WorkTaskItem.Act_SubmitExecute(Sender: TObject);
var
 qry:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  P_state:=3;
  P_List:=P_th_Date;
  If (TB_Submit.Caption='提交') or (TB_Submit.Caption='批量提交') then
  begin
    If application.MessageBox(Pchar('系统提示：是否对：【'+P_List+'】的单据进行提交？'+chr(13)+chr(13)
                                   +'确定要对本单据提交吗？'),'系统提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      mData_WTItem.First;
      while not mData_WTItem.eof do
      begin
        try
          qry.SQL.Text:='Update T_WorkTaskItem Set FWorkStatus=1,FWorkSubmitDate=:FWorkSubmitDate  where FWorkTaskItemID=:FWorkTaskItemID';
          qry.Parameters.FindParam('FWorkSubmitDate').value:= now();
          qry.Parameters.FindParam('FWorkTaskItemID').value:=mData_WTItem['FWorkTaskItemID'];
          qry.ExecSQL;
        finally
          ;
        end;
        mData_WTItem.Edit;
        mData_WTItem['FWorkStatus']:=1;
        mData_WTItem['FWorkStatusNotes']:='提交';
        mData_WTItem['FWorkSubmitDate']:=now();
        mData_WTItem.Post;
        mData_WTItem.Next;
      end;
      If mData_WTItem.RecordCount=1 then
      begin
        application.MessageBox('提交完毕！','系统提示',MB_ICONINFORMATION);
        TB_Submit.Caption:='提交撤回';
        TB_Edit.Visible:=False;
        TB_Del.Visible:=False;
      end;
      If mData_WTItem.RecordCount>1 then
      begin
        application.MessageBox('批量提交完毕！','系统提示',MB_ICONINFORMATION);
        TB_Submit.Caption:='批量提交撤回';
        TB_Edit.Visible:=mdlData.CheckFrmRights(TFrm_WorkTaskItem.ClassName,'修改');
        TB_Del.Visible:=mdlData.CheckFrmRights(TFrm_WorkTaskItem.ClassName,'删除');
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
      mData_WTItem.First;
      while not mData_WTItem.eof do
      begin
        try
          qry.SQL.Text:='Update T_WorkTaskItem Set FWorkStatus=0,FWorkSubmitDate=:FWorkSubmitDate where FWorkTaskItemID=:FWorkTaskItemID';
          qry.Parameters.FindParam('FWorkSubmitDate').value:= Null;
          qry.Parameters.FindParam('FWorkTaskItemID').value:= mData_WTItem['FWorkTaskItemID'];
          qry.ExecSQL;
        finally
          ;
        end;
        mData_WTItem.Edit;
        mData_WTItem['FWorkStatus']:=0;
        mData_WTItem['FWorkStatusNotes']:='填单';
        mData_WTItem['FWorkSubmitDate']:=Null;
        mData_WTItem.Post;
        mData_WTItem.Next;
      end;
      If mData_WTItem.RecordCount=1 then
      begin
        application.MessageBox('提交撤回完毕！','系统提示',MB_ICONINFORMATION);
        TB_Submit.Caption:='提交';
      end;
      If mData_WTItem.RecordCount>1 then
      begin
        application.MessageBox('批量提交撤回完毕！','系统提示',MB_ICONINFORMATION);
        TB_Submit.Caption:='批量提交';
      end;
      Act_Status.Execute;  //权限设置
    end;
    P_state:=2;
    Exit;
  end;
  Act_Ref.Execute;

end;

procedure TFrm_WorkTaskItem.Act_CheckExecute(Sender: TObject);
var
 qry:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  P_state:=3;
  P_List:=P_th_Date;

  If (TB_Check.Caption='校对') or (TB_Check.Caption='批量校对') then
  begin
    If application.MessageBox(Pchar('系统提示：是否对：【'+P_List+'】的单据进行校对？'+chr(13)+chr(13)
                                   +'确定要对本单据校对吗？'),'系统提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      mData_WTItem.First;
      while not mData_WTItem.eof do
      begin
        try
          qry.SQL.Text:='Update T_WorkTaskItem Set FWorkStatus=2,FWorkCheckID=:FWorkCheckID,FWorkCheckDate=:FWorkCheckDate  where FWorkTaskItemID=:FWorkTaskItemID';
          qry.Parameters.FindParam('FWorkCheckID').value:= UserNumID;
          qry.Parameters.FindParam('FWorkCheckDate').value:= now();
          qry.Parameters.FindParam('FWorkTaskItemID').value:=mData_WTItem['FWorkTaskItemID'];
          qry.ExecSQL;
        finally
          ;
        end;
        mData_WTItem.Edit;
        mData_WTItem['FWorkStatus']:=2;
        mData_WTItem['FWorkStatusNotes']:='校对';
        mData_WTItem['FWorkCheckID']:=UserNumID;
        mData_WTItem['FWorkCheck']:=UserNum;
        mData_WTItem['FWorkCheckDate']:=now();
        mData_WTItem.Post;
        mData_WTItem.Next;
      end;
      If mData_WTItem.RecordCount=1 then
      begin
        application.MessageBox('校对完毕！','系统提示',MB_ICONINFORMATION);
        TB_Check.Caption:='校对撤回';
      end;
      If mData_WTItem.RecordCount>1 then
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
      mData_WTItem.First;
      while not mData_WTItem.eof do
      begin
        try
          qry.SQL.Text:='Update T_WorkTaskItem Set FWorkStatus=1,FWorkCheckID=:FWorkCheckID,FWorkCheckDate=:FWorkCheckDate where FWorkTaskItemID=:FWorkTaskItemID';
          qry.Parameters.FindParam('FWorkCheckID').value:= UserNumID;
          qry.Parameters.FindParam('FWorkCheckDate').value:= Null;
          qry.Parameters.FindParam('FWorkTaskItemID').value:= mData_WTItem['FWorkTaskItemID'];
          qry.ExecSQL;
        finally
          ;
        end;
        mData_WTItem.Edit;
        mData_WTItem['FWorkStatus']:=1;
        mData_WTItem['FWorkStatusNotes']:='提交';
        mData_WTItem['FWorkCheckID']:=0;
        mData_WTItem['FWorkCheck']:='';
        mData_WTItem['FWorkCheckDate']:=Null;
        mData_WTItem.Post;
        mData_WTItem.Next;
      end;
      If mData_WTItem.RecordCount=1 then
      begin
        application.MessageBox('校对撤回完毕！','系统提示',MB_ICONINFORMATION);
        TB_Check.Caption:='校对';
      end;
      If mData_WTItem.RecordCount>1 then
      begin
        application.MessageBox('批量校对撤回完毕！','系统提示',MB_ICONINFORMATION);
        TB_Check.Caption:='批量校对';
      end;
      Act_Status.Execute;  //权限设置
    end;
    P_state:=2;
    Exit;
  end;
  Act_Ref.Execute;

end;

procedure TFrm_WorkTaskItem.Act_AuditExecute(Sender: TObject);
var
 qry:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  P_state:=3;
  P_List:=P_th_Date;
  If (TB_Audit.Caption='审核') or (TB_Audit.Caption='批量审核') then
  begin
    If application.MessageBox(Pchar('系统提示：是否对：【'+P_List+'】的单据进行审核？'+chr(13)+chr(13)
                                   +'确定要对本单据审核吗？'),'系统提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      mData_WTItem.First;
      while not mData_WTItem.eof do
      begin
        try
          qry.SQL.Text:='Update T_WorkTaskItem Set FWorkStatus=3,FWorkAuditID=:FWorkAuditID,FWorkAuditDate=:FWorkAuditDate  where FWorkTaskItemID=:FWorkTaskItemID';
          qry.Parameters.FindParam('FWorkAuditID').value:= UserNumID;
          qry.Parameters.FindParam('FWorkAuditDate').value:= now();
          qry.Parameters.FindParam('FWorkTaskItemID').value:=mData_WTItem['FWorkTaskItemID'];
          qry.ExecSQL;
        finally
          ;
        end;
        mData_WTItem.Edit;
        mData_WTItem['FWorkStatus']:=3;
        mData_WTItem['FWorkStatusNotes']:='审核';
        mData_WTItem['FWorkAuditID']:=UserNumID;
        mData_WTItem['FWorkAudit']:=UserNum;
        mData_WTItem['FWorkAuditDate']:=now();
        mData_WTItem.Post;
        mData_WTItem.Next;
      end;
      If mData_WTItem.RecordCount=1 then
      begin
        application.MessageBox('审核完毕！','系统提示',MB_ICONINFORMATION);
        TB_Audit.Caption:='审核撤回';
      end;
      If mData_WTItem.RecordCount>1 then
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
      mData_WTItem.First;
      while not mData_WTItem.eof do
      begin
        try
          qry.SQL.Text:='Update T_WorkTaskItem Set FWorkStatus=2,FWorkAuditID=:FWorkAuditID,FWorkAuditDate=:FWorkAuditDate where FWorkTaskItemID=:FWorkTaskItemID';
          qry.Parameters.FindParam('FWorkAuditID').value:= UserNumID;
          qry.Parameters.FindParam('FWorkAuditDate').value:= Null;
          qry.Parameters.FindParam('FWorkTaskItemID').value:= mData_WTItem['FWorkTaskItemID'];
          qry.ExecSQL;
        finally
          ;
        end;
        mData_WTItem.Edit;
        mData_WTItem['FWorkStatus']:=2;
        mData_WTItem['FWorkStatusNotes']:='校对';
        mData_WTItem['FWorkAuditID']:=0;
        mData_WTItem['FWorkAudit']:='';
        mData_WTItem['FWorkAuditDate']:=Null;
        mData_WTItem.Post;
        mData_WTItem.Next;
      end;
      If mData_WTItem.RecordCount=1 then
      begin
        application.MessageBox('审核撤回完毕！','系统提示',MB_ICONINFORMATION);
        TB_Audit.Caption:='审核';
      end;
      If mData_WTItem.RecordCount>1 then
      begin
        application.MessageBox('批量审核撤回完毕！','系统提示',MB_ICONINFORMATION);
        TB_Audit.Caption:='批量审核';
      end;
      Act_Status.Execute;  //权限设置
    end;
    P_state:=2;
    Exit;
  end;

  Act_Ref.Execute;


end;

procedure TFrm_WorkTaskItem.TB_PushDownClick(Sender: TObject);
var
 qry:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  P_state:=3;
  P_List:=P_th_Date;
  If (TB_PushDown.Caption='下推') or (TB_PushDown.Caption='批量下推') then
  begin
    If application.MessageBox(Pchar('系统提示：是否对：【'+P_List+'】的单据进行下推？'+chr(13)+chr(13)
                                   +'确定要对本单据下推准吗？'),'系统提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      mData_WTItem.First;
      while not mData_WTItem.eof do
      begin
        try
          qry.SQL.Text:='Update T_WorkTaskItem Set FWorkStatus=4,FWorkPushDownID=:FWorkPushDownID,FWorkPushDownDate=:FWorkPushDownDate  where FWorkTaskItemID=:FWorkTaskItemID';
          qry.Parameters.FindParam('FWorkPushDownID').value:= UserNumID;
          qry.Parameters.FindParam('FWorkPushDownDate').value:= now();
          qry.Parameters.FindParam('FWorkTaskItemID').value:=mData_WTItem['FWorkTaskItemID'];
          qry.ExecSQL;
        finally
          ;
        end;
        mData_WTItem.Edit;
        mData_WTItem['FWorkStatus']:=4;
        mData_WTItem['FWorkStatusNotes']:='下推';
        mData_WTItem['FWorkPushDownID']:=UserNumID;
        mData_WTItem['FWorkPushDown']:=UserNum;
        mData_WTItem['FWorkPushDownDate']:=now();
        mData_WTItem.Post;
        mData_WTItem.Next;
      end;
      If mData_WTItem.RecordCount=1 then
      begin
        application.MessageBox('下推完毕！','系统提示',MB_ICONINFORMATION);
        TB_PushDown.Caption:='下推撤回';
      end;
      If mData_WTItem.RecordCount>1 then
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
      mData_WTItem.First;
      while not mData_WTItem.eof do
      begin
        try
          qry.SQL.Text:='Update T_WorkTaskItem Set FWorkStatus=3,FWorkPushDownID=:FWorkPushDownID,FWorkPushDownDate=:FWorkPushDownDate where FWorkTaskItemID=:FWorkTaskItemID';
          qry.Parameters.FindParam('FWorkPushDownID').value:= UserNumID;
          qry.Parameters.FindParam('FWorkPushDownDate').value:= Null;
          qry.Parameters.FindParam('FWorkTaskItemID').value:= mData_WTItem['FWorkTaskItemID'];
          qry.ExecSQL;
        finally
          ;
        end;
        mData_WTItem.Edit;
        mData_WTItem['FWorkStatus']:=3;
        mData_WTItem['FWorkStatusNotes']:='审核';
        mData_WTItem['FWorkPushDownID']:=0;
        mData_WTItem['FWorkPushDown']:='';
        mData_WTItem['FWorkPushDownDate']:=Null;
        mData_WTItem.Post;
        mData_WTItem.Next;
      end;
      If mData_WTItem.RecordCount=1 then
      begin
        application.MessageBox('下推完毕！','系统提示',MB_ICONINFORMATION);
        TB_PushDown.Caption:='下推撤回';
      end;
      If mData_WTItem.RecordCount>1 then
      begin
        application.MessageBox('批量下推撤回完毕！','系统提示',MB_ICONINFORMATION);
        TB_PushDown.Caption:='批量下推';
      end;
      Act_Status.Execute;  //权限设置
    end;
    P_state:=2;
    Exit;
  end;

  Act_Ref.Execute;

end;

procedure TFrm_WorkTaskItem.cxGrid_WTItemFocusedViewChanged(
  Sender: TcxCustomGrid; APrevFocusedView,
  AFocusedView: TcxCustomGridView);
  var qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If Mdata_WTItem.RecordCount<0 then
     Exit;
  If P_state =2 then //不在新增、修改状态
  begin
    If Mdata_WTItem['FWorkTaskItemID']<>0 then
    begin
      If MyItemList(qry,Mdata_WTList,'V_WorkTaskList','cast(FWorkTaskItemID as varchar(20))',
                    Mdata_WTItem['FWorkTaskItemID'],' ') then
     // Act_Status.Execute  //权限设置
    end;
  end;


end;

end.
