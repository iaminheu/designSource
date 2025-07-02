unit Main_WorkBudget;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FrmGridBass, ExtCtrls, StdCtrls, DsFancyButton, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  dxmdaset, cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid,
  cxTextEdit, cxDropDownEdit, cxCalendar, cxMaskEdit, cxContainer, cxLabel,
  cxDBLookupComboBox, ADODB, cxButtonEdit, Grids, DBGrids, ComCtrls, RzShellDialogs,
  ToolWin, ImgList, FR_DSet, FR_DBSet, FR_Class, cxRadioGroup, Buttons, StrUtils,
  cxGroupBox, cxCheckBox, cxCurrencyEdit, RzPanel, RzSplit, RzTabs,IniFiles,Comobj,
  TFlatPanelUnit, cxLookAndFeelPainters, cxButtons, cxTimeEdit, jpeg,Excel97,
  cxEditRepositoryItems, Menus, ActnList, cxMemo, RzStatus, cxBlobEdit,
  cxGridCardView, cxGridDBCardView, cxDBEdit, cxCalc, cxSpinEdit,
  cxNavigator, cxDBNavigator, cxImageComboBox, cxGridBandedTableView,
  cxGridDBBandedTableView;

type
  TFrm_WorkBudget = class(TFrm_GridBass)
    ImageList: TImageList;
    Panel_EditButton: TPanel;
    ToolBar1: TToolBar;
    ToolButton5: TToolButton;
    ToolButton1: TToolButton;
    TB_Prin: TToolButton;
    TB_EXIT: TToolButton;
    RSP_Tree: TRzSizePanel;
    TB_Ref: TToolButton;
    TB_App: TToolButton;
    TB_Edit: TToolButton;
    TB_Del: TToolButton;
    PM: TPopupMenu;
    N_Edit: TMenuItem;
    N_Filter: TMenuItem;
    N_Sort: TMenuItem;
    N_Group: TMenuItem;
    N_Set: TMenuItem;
    N_Out: TMenuItem;
    actionList: TActionList;
    Act_Menu: TAction;
    Act_Menu_Set: TAction;
    Act_Set_Open: TAction;
    Act_Set_Close: TAction;
    Panel2: TPanel;
    SaveDialog1: TSaveDialog;
    Panel4: TPanel;
    TS_Tree: TPageControl;
    Label11: TLabel;
    E_Locate: TcxButtonEdit;
    MyTreeView: TTreeView;
    TS_Item: TRzPageControl;
    TS_Brow: TRzTabSheet;
    PanelBkGnd: TPanel;
    TS_Edit: TRzTabSheet;
    Panel_Edit1: TPanel;
    Panel_Edit: TFlatPanel;
    Panel_List: TFlatPanel;
    RzSizePanel1: TRzSizePanel;
    Act_MaxID: TAction;
    DS_Mdata: TDataSource;
    MData: TdxMemData;
    MData_List: TdxMemData;
    DS_Mdata_List: TDataSource;
    Act_Locate: TAction;
    PageControl2: TPageControl;
    Act_ItemChange: TAction;
    TabSheet1: TTabSheet;
    cxGrid_List: TcxGrid;
    cxGV_List: TcxGridDBTableView;
    cxGL_List: TcxGridLevel;
    FWorkBudgetAmount_List: TcxGridDBColumn;
    Act_Update: TAction;
    FlatPanel1: TFlatPanel;
    E_FWorkBudgetDate: TcxDBDateEdit;
    FlatPanel3: TFlatPanel;
    E_FWorkBudgetItemAmount: TcxDBCurrencyEdit;
    cxGrid_Item: TcxGrid;
    cxGV_Item: TcxGridDBBandedTableView;
    XH: TcxGridDBBandedColumn;
    FWorkBudgetNum_Item: TcxGridDBBandedColumn;
    FWorkBudgetDate_Item: TcxGridDBBandedColumn;
    FFirstLogging: TcxGridDBBandedColumn;
    FFirstLoggingDate: TcxGridDBBandedColumn;
    FNewestAlter: TcxGridDBBandedColumn;
    FNewestAlterDate: TcxGridDBBandedColumn;
    cxGL_Item: TcxGridLevel;
    FBranchFileNo_List: TcxGridDBColumn;
    FClientShortName_List: TcxGridDBColumn;
    FWorkItemDate_List: TcxGridDBColumn;
    FWorkItemNum_List: TcxGridDBColumn;
    FAgentName_List: TcxGridDBColumn;
    FWorkBudgetItemAmount_Item: TcxGridDBBandedColumn;
    FlatPanel2: TFlatPanel;
    E_FWorkBudgetNum: TcxDBButtonEdit;
    FlatPanel4: TFlatPanel;
    TS_Num: TTabSheet;
    Act_MaxID_List: TAction;
    Act_WorkItemNum: TAction;
    E_FWorkBudgetNo: TcxDBCurrencyEdit;
    Act_MaxNum: TAction;
    FWorkItemAmount_List: TcxGridDBColumn;
    Panel_OK: TPanel;
    Panel_Button: TPanel;
    OKBtn: TcxButton;
    CancelBtn: TcxButton;
    Act_Menu_Band: TAction;
    Act_Menu_Set_Band: TAction;
    PM_Band: TPopupMenu;
    N_Edit_Band: TMenuItem;
    N_Filter_Band: TMenuItem;
    N_Sort_band: TMenuItem;
    N_Group_band: TMenuItem;
    N_Set_band: TMenuItem;
    N_Out_band: TMenuItem;
    FWorkItemBalanceAmount_List: TcxGridDBColumn;
    FWorkBudgetInvoiceAmount_List: TcxGridDBColumn;
    FAgentName_Item: TcxGridDBBandedColumn;
    FWorkBudgetName_List: TcxGridDBColumn;
    Act_AgentName: TAction;
    FlatPanel6: TFlatPanel;
    E_FAgentName: TcxDBButtonEdit;
    FBranchItemNumber_List: TcxGridDBColumn;
    FlatPanel7: TFlatPanel;
    RzSP_PTitem: TRzSizePanel;
    cxGrid: TcxGrid;
    cxGV: TcxGridDBTableView;
    FWorkBudgetName: TcxGridDBColumn;
    FWorkBudgetAmount: TcxGridDBColumn;
    FWorkItemNum: TcxGridDBColumn;
    FWorkItemDate: TcxGridDBColumn;
    FWorkItemAmount: TcxGridDBColumn;
    FWorkItemBalanceAmount: TcxGridDBColumn;
    FWorkItemInvoiceAmount: TcxGridDBColumn;
    FWorkItemPayMentAmount: TcxGridDBColumn;
    FWorkItemBudgetAmount: TcxGridDBColumn;
    cxGL: TcxGridLevel;
    PageControl1: TPageControl;
    TabSheet3: TTabSheet;
    cxGrid_WorkList: TcxGrid;
    cxGV_WorkList: TcxGridDBTableView;
    FIsDelList_List: TcxGridDBColumn;
    FWorkListNum_List: TcxGridDBColumn;
    FNumber1_List: TcxGridDBColumn;
    FBalanceName_List: TcxGridDBColumn;
    FBalanceModel_List: TcxGridDBColumn;
    FUnitName_List: TcxGridDBColumn;
    FMaterialDate_List: TcxGridDBColumn;
    FWorkResizePrice_List: TcxGridDBColumn;
    FQry_List: TcxGridDBColumn;
    FEstimateQry_List: TcxGridDBColumn;
    FBalanceBasePrice_List: TcxGridDBColumn;
    FWorkOutPrice_List: TcxGridDBColumn;
    FOutPrice_List: TcxGridDBColumn;
    FWorkItemPrice_List: TcxGridDBColumn;
    FEstimateAmount_List: TcxGridDBColumn;
    FWorkListRemark_List: TcxGridDBColumn;
    FDeliveryDateTxt_List: TcxGridDBColumn;
    FBalanceWorkAdjust_List: TcxGridDBColumn;
    FBalanceAdjust_List: TcxGridDBColumn;
    FBalancePrice_List: TcxGridDBColumn;
    SumFBalanceQry_List: TcxGridDBColumn;
    SumFBalanceAmount_List: TcxGridDBColumn;
    FRemark_List: TcxGridDBColumn;
    cxGridDBColumn1: TcxGridDBColumn;
    FWorkDate_List: TcxGridDBColumn;
    FBalanceID_List: TcxGridDBColumn;
    FBalancePriceID_List: TcxGridDBColumn;
    FItemID_List: TcxGridDBColumn;
    FWorkListID_List: TcxGridDBColumn;
    FBalanceProductName_List: TcxGridDBColumn;
    FProductClass_List: TcxGridDBColumn;
    cxGL_WorkList: TcxGridLevel;
    TabSheet4: TTabSheet;
    cxGrid_Balance: TcxGrid;
    cxGV_Balance: TcxGridDBTableView;
    FBalanceNum_Balance: TcxGridDBColumn;
    FBalanceListNum_Balance: TcxGridDBColumn;
    FBalanceName_Balance: TcxGridDBColumn;
    FBalanceModel_Balance: TcxGridDBColumn;
    FUnitName_Balance: TcxGridDBColumn;
    FMaterialDate_Balance: TcxGridDBColumn;
    FEstimateQry_Balance: TcxGridDBColumn;
    FEstimateAmount_Balance: TcxGridDBColumn;
    FWorkItemPrice_Balance: TcxGridDBColumn;
    FBalanceWorkAdjust_Balance: TcxGridDBColumn;
    FBalanceAdjust_Balance: TcxGridDBColumn;
    FBalancePrice_Balance: TcxGridDBColumn;
    FBalanceQry_Balance: TcxGridDBColumn;
    FBalanceAmount_Balance: TcxGridDBColumn;
    FQualityAmount_Balance: TcxGridDBColumn;
    FRealAmount_Balance: TcxGridDBColumn;
    FBalanceTaxAmount_Balance: TcxGridDBColumn;
    FWorkItemNum_Balance: TcxGridDBColumn;
    FBalanceRemark_Balance: TcxGridDBColumn;
    FAgentName_Balance: TcxGridDBColumn;
    FProductClass_Balance: TcxGridDBColumn;
    FPartsCode_Balance: TcxGridDBColumn;
    FBalanceBasePrice_Balance: TcxGridDBColumn;
    FWorkOutPrice_Balance: TcxGridDBColumn;
    FOutPrice_Balance: TcxGridDBColumn;
    cxGL_Balance: TcxGridLevel;
    TabSheet5: TTabSheet;
    cxGrid_Invoice: TcxGrid;
    cxGV_Invoice: TcxGridDBTableView;
    FWorkInvoiceItemNum_Invoice: TcxGridDBColumn;
    FWorkInvoiceItemDate_Invoice: TcxGridDBColumn;
    FWorkInvoiceNum_Invoice: TcxGridDBColumn;
    FWorkInvoiceAmount_Invoice: TcxGridDBColumn;
    cxGL_Invoice: TcxGridLevel;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    MData_Balance: TdxMemData;
    MData_Invoice: TdxMemData;
    DS_Mdata_Balance: TDataSource;
    DS_Mdata_Invoice: TDataSource;
    DS_Mdata_WorkList: TDataSource;
    MData_WorkList: TdxMemData;
    Act_Change: TAction;
    FlatPanel8: TFlatPanel;
    E_FClientShortName: TcxDBButtonEdit;
    E_FBranchFileNo: TcxDBButtonEdit;
    E_FBranchItemNumber: TcxDBButtonEdit;
    Act_ItemNum: TAction;
    FlatPanel9: TFlatPanel;
    FlatPanel5: TFlatPanel;
    TB_WorkBudget: TToolButton;
    FAudit_1: TcxGridDBBandedColumn;
    FAuditDate_1: TcxGridDBBandedColumn;
    FAudit_2: TcxGridDBBandedColumn;
    FAuditDate_2: TcxGridDBBandedColumn;
    FStatus: TcxGridDBBandedColumn;
    TB_Check: TToolButton;
    TB_Audit: TToolButton;
    Act_Status: TAction;
    TB_Submit: TToolButton;
    FSubmitDate_Item: TcxGridDBBandedColumn;
    FBranchFileNo_Item: TcxGridDBBandedColumn;
    FBranchItemNumber_Item: TcxGridDBBandedColumn;
    FClientShortName_Item: TcxGridDBBandedColumn;
    FWorkBudgetItemTaxAmount_Item: TcxGridDBBandedColumn;
    FWorkBudgetItemTaxAmount: TcxGridDBColumn;
    FWorkBudgetTaxAmount: TcxGridDBColumn;
    FlatPanel10: TFlatPanel;
    FlatPanel11: TFlatPanel;
    FlatPanel12: TFlatPanel;
    E_FWorkInvoiceDate: TcxDBDateEdit;
    E_FWorkInvoiceNum: TcxDBButtonEdit;
    E_FTaxRate: TcxDBCurrencyEdit;
    FlatPanel13: TFlatPanel;
    E_FWorkInvoiceAmount: TcxDBCurrencyEdit;
    FWorkInvoiceDate_Item: TcxGridDBBandedColumn;
    FWorkInvoiceNum_Item: TcxGridDBBandedColumn;
    FWorkInvoiceAmount_Item: TcxGridDBBandedColumn;
    FWorkBudgetItemAmount_List: TcxGridDBColumn;
    FWorkBudgetTaxAmount_List: TcxGridDBColumn;
    Act_WorkBudgetList: TAction;
    FTaxRate: TcxGridDBColumn;
    TabSheet2: TTabSheet;
    cxGrid_FB: TcxGrid;
    cxGV_FB: TcxGridDBTableView;
    FWorkItemNum_BF: TcxGridDBColumn;
    FWorkBudgetDate_BF: TcxGridDBColumn;
    FBranchFileNo_BF: TcxGridDBColumn;
    FBranchItemNumber_BF: TcxGridDBColumn;
    FClientShortName_BF: TcxGridDBColumn;
    FWorkBudgetName_BF: TcxGridDBColumn;
    FWorkItemAmount_BF: TcxGridDBColumn;
    FWorkItemBalanceAmount_BF: TcxGridDBColumn;
    FWorkBudgetInvoiceAmount_BF: TcxGridDBColumn;
    FWorkBudgetAmount_BF: TcxGridDBColumn;
    FWorkBudgetTaxAmount_BF: TcxGridDBColumn;
    FAgentName_BF: TcxGridDBColumn;
    cxGL_FB: TcxGridLevel;
    MData_FB: TdxMemData;
    DS_Mdata_FB: TDataSource;
    FWorkInvoiceDate_FB: TcxGridDBColumn;
    FWorkBudgetNum_FB: TcxGridDBColumn;
    FWorkBudgetInvoiceAmount: TcxGridDBColumn;
    FWorkBudgetNum_List: TcxGridDBColumn;
    ToolButton2: TToolButton;
    procedure FormResize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TB_EXITClick(Sender: TObject);
    procedure MyTreeViewChange(Sender: TObject; Node: TTreeNode);
    procedure MyTreeViewExpanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure TB_RefClick(Sender: TObject);
    procedure OKBtnClick(Sender: TObject);
    procedure TB_AppClick(Sender: TObject);
    procedure TB_EditClick(Sender: TObject);
    procedure TB_DelClick(Sender: TObject);
    procedure CancelBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Act_Menu_SetExecute(Sender: TObject);
    procedure Act_MenuExecute(Sender: TObject);
    procedure N_EditClick(Sender: TObject);
    procedure N_FilterClick(Sender: TObject);
    procedure N_SortClick(Sender: TObject);
    procedure N_GroupClick(Sender: TObject);
    procedure N_SetClick(Sender: TObject);
    procedure N_OutClick(Sender: TObject);
    procedure Act_Set_OpenExecute(Sender: TObject);
    procedure Act_Set_CloseExecute(Sender: TObject);
    procedure TS_TreeChange(Sender: TObject);
    procedure cxGVDblClick(Sender: TObject);
    procedure cxGrid_ItemContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure Panel_Edit1ConstrainedResize(Sender: TObject; var MinWidth,
      MinHeight, MaxWidth, MaxHeight: Integer);
    procedure TS_ItemChange(Sender: TObject);
    procedure RSP_TreeConstrainedResize(Sender: TObject; var MinWidth,
      MinHeight, MaxWidth, MaxHeight: Integer);
    procedure FlatPanel5DblClick(Sender: TObject);
    procedure Act_MaxIDExecute(Sender: TObject);
    procedure cxGV_ItemFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure E_LocatePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure E_LocateKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Act_LocateExecute(Sender: TObject);
    procedure Act_ItemChangeExecute(Sender: TObject);
    procedure MData_ListBeforePost(DataSet: TDataSet);
    procedure Act_UpdateExecute(Sender: TObject);
    procedure cxGV_ItemCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure cxGV_ListCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure Act_MaxID_ListExecute(Sender: TObject);
    procedure Act_WorkItemNumExecute(Sender: TObject);
    procedure FWorkItemNumPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxGrid_ListContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure cxGridContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure Act_MaxNumExecute(Sender: TObject);
    procedure MData_ListAfterEdit(DataSet: TDataSet);
    procedure MData_ListAfterInsert(DataSet: TDataSet);
    procedure MData_ListBeforeDelete(DataSet: TDataSet);
    procedure cxGVCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure Act_Menu_BandExecute(Sender: TObject);
    procedure Act_Menu_Set_BandExecute(Sender: TObject);
    procedure N_Edit_BandClick(Sender: TObject);
    procedure Act_AgentNameExecute(Sender: TObject);
    procedure E_FAgentNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure MDataBeforePost(DataSet: TDataSet);
    procedure FWorkBudgetNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure Act_ChangeExecute(Sender: TObject);
    procedure Act_ItemNumExecute(Sender: TObject);
    procedure E_FClientShortNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure TB_WorkBudgetClick(Sender: TObject);
    procedure Act_StatusExecute(Sender: TObject);
    procedure TB_SubmitClick(Sender: TObject);
    procedure TB_CheckClick(Sender: TObject);
    procedure TB_AuditClick(Sender: TObject);
    procedure Act_WorkBudgetListExecute(Sender: TObject);
    procedure cxGV_WorkListDblClick(Sender: TObject);
    procedure cxGVFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure ToolButton2Click(Sender: TObject);
  private
    ListItemFNumber,P_th:String;
    P_MaxID,P_MaxID_List,I_index:Integer; 


    { Private declarations }
    function AddRd:bool;
    function EditRd:bool;
    function DelRd:bool;

    function AddMain:bool;    //新增主表
    function EditMain:bool;   //修改主表

    function AddList:bool;    //新增副表
    function EditList:bool;   //修改副表
    function DelList:bool;    //删除副表

  public
    P_state,P_MaxID_Dy,P_Isleaf,P_MaxID_Item,P_state_Dy:integer;
    DelArray:array of string; //删除记录数组
    

    { Public declarations }
  end;

var
  Frm_WorkBudget: TFrm_WorkBudget;


implementation

uses FRMDATA,  COMMON, FrmSelect, ProgBar, PROGRASS,
   FrmWorkMain;

{$R *.dfm}

function TFrm_WorkBudget.DelRd: bool;
var
 qry: TADOQuery;
begin
 // result:=False;
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Delete from T_WorkBudget where FWorkBudgetID=:FWorkBudgetID';
    with qry.Parameters do
    begin
      FindParam('FWorkBudgetID').value:=mdata['FWorkBudgetID'];
    end;
    result:=qry.ExecSQL>=1;
  finally
    qry.Free;
  end;
end;



function TFrm_WorkBudget.AddRd: bool;
var
 qry:TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  result:=False;

  MData.Edit;
  MData.Post;

  mdlData.conn.BeginTrans;
  try
    if AddMain then  //1   新增
    begin
      result:=True;
      if AddList then //2   附新增
      begin
        result:=True;
        //Act_Update.Execute;
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
    Application.MessageBox('新增数据失败，请重试。', '保存错误', 0 or MB_ICONINFORMATION);
    mdlData.Conn.RollBackTrans;
  end;

end;

function TFrm_WorkBudget.EditRd:bool;   // 修改
var
  qry:TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  result:=False;

  If MData.RecordCount<=0 then
  begin
    result:=True;
    Exit;
  end;

  MData.Edit;
  MData.Post;

  mdlData.conn.BeginTrans;
  try
    if EditMain then //2   主表修改
    begin
      result:=True;
      if DelList then  //1  附表删除
      begin
        result:=True;
        if AddList then //1   附新增
        begin
          result:=True;
          if EditList then //1   附修改
          begin
            result:=True;
           // Act_Update.Execute;
            mdlData.conn.CommitTrans;
          end
          else
          begin
            result:=False;
            mdlData.conn.RollbackTrans;  //1   附修改
          end
        end
        else
        begin
          result:=False;
          mdlData.conn.RollbackTrans;     //1  附新增
        end
      end
      else
      begin
        result:=False;
        mdlData.conn.RollbackTrans;  //1  附表删除
      end
    end
    else
    begin
      result:=False;
      mdlData.conn.RollbackTrans;     //2   主表修改
    end
    except
    Application.MessageBox('数据保存失败，请重试。', '保存错误', 0 or MB_ICONINFORMATION);
    mdlData.Conn.RollBackTrans;
  end;
end;

function TFrm_WorkBudget.AddMain: bool;
var
 qry,qryDate:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qryDate:=TAdoQuery.Create(self);
  qryDate.ConnectionString:=mdlData.ReadConnStr;

  result:=False;

  If mdata.RecordCount<=0 then
  begin
    result:=True;
    Exit;
  end;
  If (E_FWorkBudgetNo.Value<>Null) and (E_FWorkBudgetNo.Value<>0) then
  begin
    try
      qry.SQL.Text:='Insert into T_WorkBudget(FWorkBudgetID,FWorkBudgetDate,FWorkBudgetNo,FItemID,'
                   +'FAgentID,FWorkInvoiceDate,FWorkInvoiceNum,FWorkInvoiceAmount,'
                   +'FStatusID,FFirstLoggingID,FFirstLoggingDate,FDepartMentID) '
                   +'values(:FWorkBudgetID,:FWorkBudgetDate,:FWorkBudgetNo,:FItemID,'
                   +':FAgentID,:FWorkInvoiceDate,:FWorkInvoiceNum,:FWorkInvoiceAmount,'
                   +':FStatusID,:FFirstLoggingID,:FFirstLoggingDate,:FDepartMentID)';
       with qry.Parameters do
       begin
         Act_MaxID.Execute;//取ID

         FindParam('FWorkBudgetID').value:=P_MaxID;
         FindParam('FWorkBudgetDate').value:=mdata['FWorkBudgetDate'];
         FindParam('FWorkBudgetNo').value:=mdata['FWorkBudgetNo'];
         FindParam('FItemID').value:=mdata['FItemID'];
         FindParam('FAgentID').value:=mdata['FAgentID'];
         FindParam('FWorkInvoiceDate').value:=mdata['FWorkInvoiceDate'];
         FindParam('FWorkInvoiceNum').value:=mdata['FWorkInvoiceNum'];
         FindParam('FWorkInvoiceAmount').value:=mdata['FWorkInvoiceAmount'];
         FindParam('FStatusID').value:=0;
         FindParam('FFirstLoggingID').value:=UserNumID;
         FindParam('FFirstLoggingDate').value:=S_SyStemDate(qryDate);
         FindParam('FDepartMentID').value:=UserFDepartMentID;
       end;
       result:=qry.ExecSQL>=1;
    finally
      qry.Free;
    end;

  end;
end;

function TFrm_WorkBudget.EditMain:bool;
var
 qry,qryDate:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qryDate:=TAdoQuery.Create(self);
  qryDate.ConnectionString:=mdlData.ReadConnStr;

  result:=False;
  If mData.RecordCount<=0 then
  begin
    result:=True;
    Exit;
  end;
  mdata.Edit;
  mdata.Post;
  If (mdata['FWorkBudgetNo']<>Null) and (mdata['FWorkBudgetNo']<>0) then
  begin
    try
      qry.SQL.Text:='Update T_WorkBudget set FWorkBudgetDate=:FWorkBudgetDate,'
                   +'FWorkBudgetNo=:FWorkBudgetNo,FItemID=:FItemID,FAgentID=:FAgentID,'
                   +'FWorkInvoiceDate=:FWorkInvoiceDate,FWorkInvoiceNum=:FWorkInvoiceNum,FWorkInvoiceAmount=:FWorkInvoiceAmount,'
                   +'FStatusID=:FStatusID,FNewestAlterID=:FNewestAlterID,FNewestAlterDate=:FNewestAlterDate '
                   +'where FWorkBudgetID=:FWorkBudgetID';
      with qry.Parameters do
      begin
        FindParam('FWorkBudgetDate').value:=mdata['FWorkBudgetDate'];
        FindParam('FWorkBudgetNo').value:=mdata['FWorkBudgetNo'];
        FindParam('FItemID').value:=mdata['FItemID'];
        FindParam('FAgentID').value:=mdata['FAgentID'];
        FindParam('FWorkInvoiceDate').value:=mdata['FWorkInvoiceDate'];
        FindParam('FWorkInvoiceNum').value:=mdata['FWorkInvoiceNum'];
        FindParam('FWorkInvoiceAmount').value:=mdata['FWorkInvoiceAmount'];
        FindParam('FStatusID').value:=mdata['FStatusID'];
        FindParam('FNewestAlterID').value:=mdata['FNewestAlterID'];
        FindParam('FNewestAlterDate').value:=S_SyStemDate(qryDate);
        FindParam('FNewestAlterID').value:=UserNumID;
        FindParam('FWorkBudgetID').value:=mdata['FWorkBudgetID'];
      end;
      result:=qry.ExecSQL>=1;
    finally
       qry.Free;
    end;
   end;
end;

function TFrm_WorkBudget.DelList: bool;
var i:Integer;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  result:=True;

  qry.SQL.Text:='Delete from T_WorkBudgetList where FWorkBudgetListID=:FWorkBudgetListID';
  for i:=Low(DelArray) to High(DelArray) do
  begin
    if DelArray[i]<>'' then
    begin
      if qry.Active then qry.Close;
      try
        qry.Parameters.FindParam('FWorkBudgetListID').Value:=StrToInt(DelArray[i]);
        qry.ExecSQL;
        result:=True;
        //result:=qry.ExecSQL=1;
        If not result then break;
      finally
        ;
      end;
    end;
  end;
  qry.Free;
end;

function TFrm_WorkBudget.AddList: bool;
var qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  result:=True;
  mData_List.Edit;
  try
    qry.SQL.Text:='Insert into T_WorkBudgetList(FWorkBudgetListID,FWorkBudgetID,FWorkItemID,'
                 +'FWorkBudgetNameID,FWorkBudgetAmount,FWorkBudgetlistReMark) '
                 +'values(:FWorkBudgetListID,:FWorkBudgetID,:FWorkItemID, '
                 +':FWorkBudgetNameID,:FWorkBudgetAmount,:FWorkBudgetListReMark)';
    mData_List.First;
    while not mData_List.eof do
    begin
      If (mData_List['IsApp']=True)
         and (mData_List['FWorkBudgetAmount']<>0) and (mData_List['FWorkBudgetAmount']<>Null)

       then
      begin
        If qry.Active then qry.Close;
        Act_MaxID_List.Execute;//取ID
        qry.Parameters.FindParam('FWorkBudgetListID').value:=P_MaxID_List;
        If P_state=0 then  //新增
          qry.Parameters.FindParam('FWorkBudgetID').value:=P_MaxID;
        If P_state=1 then  //修改
          qry.Parameters.FindParam('FWorkBudgetID').value:=mdata['FWorkBudgetID'];
        qry.Parameters.FindParam('FWorkItemID').value:=mData_List['FWorkItemID'];
        qry.Parameters.FindParam('FWorkBudgetNameID').value:=mData_List['FWorkBudgetNameID'];
        qry.Parameters.FindParam('FWorkBudgetAmount').value:=mData_List['FWorkBudgetAmount'];
        qry.Parameters.FindParam('FWorkBudgetlistReMark').value:=mData_List['FWorkBudgetListReMark'];
        result:=qry.ExecSQL>=1;
        if not result then break;
      end;
      mData_List.Next;
    end;
  finally
     qry.Free;
  end;

end;

function TFrm_WorkBudget.EditList:bool;
var qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  result:=True;
  try
    qry.SQL.Text:='Update T_WorkBudgetList set FWorkBudgetID=:FWorkBudgetID,FWorkItemID=:FWorkItemID,'
                 +'FWorkBudgetNameID=:FWorkBudgetNameID,FWorkBudgetAmount=:FWorkBudgetAmount,'
                 +'FWorkBudgetlistReMark=:FWorkBudgetListReMark '
                 +'where FWorkBudgetListID=:FWorkBudgetListID';
    mData_List.First;
    while not mData_List.eof do
    begin
      If (mData_List['IsEdit']=True) and (mData_List['IsApp']=False)
         and (mData_List['FWorkBudgetAmount']<>0) and (mData_List['FWorkBudgetAmount']<>Null)  then
      begin
        If qry.Active then qry.Close;
        qry.Parameters.FindParam('FWorkBudgetID').value:=mData['FWorkBudgetID'];
        qry.Parameters.FindParam('FWorkItemID').value:=mData_List['FWorkItemID'];
        qry.Parameters.FindParam('FWorkBudgetNameID').value:=mData_List['FWorkBudgetNameID'];
        qry.Parameters.FindParam('FWorkBudgetAmount').value:=mData_List['FWorkBudgetAmount'];
        qry.Parameters.FindParam('FWorkBudgetListReMark').value:=mData_List['FWorkBudgetListReMark'];
        If mData_List['IsApp']=True  then
           qry.Parameters.FindParam('FWorkBudgetListID').value:=P_MaxID_List
        else
           qry.Parameters.FindParam('FWorkBudgetListID').value:=mData_List['FWorkBudgetListID'];
        result:=qry.ExecSQL>=1;
        if not result then break;
      end;
      mData_List.Next;
    end;
  finally
     qry.Free;
  end;

end;



procedure TFrm_WorkBudget.FormResize(Sender: TObject);
begin
  inherited;
  L_title.Caption:=UserFDepartmentName+'预结算';
  Self.Caption:=UserFDepartmentName+'预结算信息操作';
end;

procedure TFrm_WorkBudget.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=cafree;
  Frm_WorkBudget:=nil;
end;

procedure TFrm_WorkBudget.TB_EXITClick(Sender: TObject);
begin
  self.Close;
end;

procedure TFrm_WorkBudget.MyTreeViewChange(Sender: TObject; Node: TTreeNode);
var
  qry:TADOquery;
  s1,s2:Ttime;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.EnableBCD:=False;//小数位数>4

  If Node = nil then Exit;
  with PTree(Node.Data)^ do
  begin
    ListItemFNumber:=PTree(Node.Data).FNumber;
    P_th:=PTree(Node.Data).Caption;
    P_Isleaf:=PTree(Node.Data).Isleaf;
    P_state:=3;
    If P_Isleaf<=0 then
       Exit;

    If TS_Tree.ActivePage=TS_Num then
    begin
      mdata.DisableControls;
      If not MyItemList(qry,MData,'V_WorkBudget','FNumber',ListItemFNumber,'FNumber') then
      begin
        MData.Open;
      end;
      mdata.EnableControls;
    end;
    P_state:=2;
    Act_Status.Execute;;
    Act_ItemChange.Execute;
  end;
end;

procedure TFrm_WorkBudget.MyTreeViewExpanding(Sender: TObject;
  Node: TTreeNode; var AllowExpansion: Boolean);
var
  P :PTree;
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.EnableBCD:=False;//小数位数>4

  If (Node = nil) or
     (PTree(Node.Data).Flag <> cNoLoadFlag) or   // 1.加载标志
     (not Node.HasChildren) or                   // 2.未有子
     (Node.Count>0) then                         // 3.已有子节点
     Exit;

  If TS_Tree.ActivePage=TS_Num then
     qry.SQL.Text:='Select * from VT_WorkBudget with(nolock) where FParentNumber= '''
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
    P.Isleaf := qry.FieldByName('isLeaf').Value;
    P.FDetail := qry.FieldByName('FDetail').Value;
    P.Flag := cNoLoadFlag;                            // 新节点，未加载标志
    with MyTreeView.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('FDetail').value;
    end;
    qry.Next;
  end;
end;

procedure TFrm_WorkBudget.TB_RefClick(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If TS_Tree.ActivePage=TS_Num then
  begin
    If not TreeVeiwListWhere(qry,MyTreeView,'VT_WorkBudget',' and FDepartmentID='+IntToStr(UserFDepartmentID) ) then
       Application.MessageBox(PChar('树型结构显示错误，请联系开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;

end;

procedure TFrm_WorkBudget.OKBtnClick(Sender: TObject);
var qry: TADOQuery;
begin
  cxGV.OptionsData.Editing:=True;
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  mdata.Edit;
  mdata.Post;
  If (mdata['FWorkBudgetDate']=Null) then
  begin
    application.MessageBox('预结算日期不允许空！请重新输入','系统提示',MB_ICONERROR);
    Exit;
  end;
  If (mdata['FWorkBudgetNo']=Null) or (mdata['FWorkBudgetNo']=0) then
  begin
    application.MessageBox('预见结算单号不允许空！请重新输入','系统提示',MB_ICONERROR);
    Exit;
  end;

  If P_state=0 then
  begin
    If application.MessageBox('是否要保存添加的数据？','提示',MB_ICONINFORMATION+MB_YESNO)<>6 then
    begin
      Exit;
      CancelBtn.Click;
    end;

    If AddRd then //增加数据
    begin
      If application.MessageBox('录入数据已保存,还要继续录入吗？','提示',MB_ICONINFORMATION+MB_YESNO)=6 then
      begin
        TB_App.Click;
      end
      else
      begin
        inherited;
        CancelBtn.Click;
      end;
    end
    else
      application.MessageBox('新增记录保存失败！','系统提示',MB_ICONWARNING);

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

procedure TFrm_WorkBudget.TB_AppClick(Sender: TObject);
var
 qry,qry1: TADOQuery;
 P_FProductName:string;
 i:Integer;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.EnableBCD:=False;//小数位数>4
  qry1:=TAdoQuery.Create(self);
  qry1.ConnectionString:=mdlData.ReadConnStr;
  qry1.EnableBCD:=False;//小数位数>4

  I_index:=MData.RecNo ;
  P_state :=0;
  L_title.Caption:='预结算信息新增';

  try
    qry1.SQL.Text:='Select (isnull(max(FWorkBudgetNo),0)+1) as FWorkBudgetNo from V_WorkBudget with(nolock) '
                  +'where year(FWorkBudgetDate)=year(GETDATE()) and MONTH(FWorkBudgetDate)=MONTH(GETDATE())';
    qry1.Open;
  finally
     ;
  end;

  try
    qry.SQL.Text:='Select IsEdit=cast(0 as bit),IsApp=cast(1 as bit),* from V_WorkBudget with(nolock) where FWorkBudgetID=0';
    qry.Open;
  finally
     ;
  end;
  mData.CopyFromDataSet(qry);
  mData.Active:=True;
  mData.Edit;
  Mdata['FWorkBudgetDate']:=formatdatetime('yyyy-mm-dd',now());
  mData.Post;
  Act_MaxNum.Execute;//取最大单号

  try
    qry.SQL.Text:='Select IsEdit=cast(0 as bit),IsApp=cast(1 as bit),* from V_WorkBudgetList with(nolock) where FWorkBudgetID=0';
    qry.Open;
  finally
     ;
  end;
  Mdata_List.DisableControls;
  Mdata_List.CopyFromDataSet(qry);
  Mdata_List.Active;
  Mdata_List.EnableControls;

  for i:=1 to 10 do
  begin
    mdata_List.Append;
    mdata_List['IsEdit']:=0;
    mdata_List['IsApp']:=1;
    mdata_List.Post;
  end;
  Mdata_List.First;


  Act_Set_Open.Execute;
  TS_Item.ActivePage:=TS_Edit;
  qry.Free;
end;

procedure TFrm_WorkBudget.TB_EditClick(Sender: TObject);
var
 qry: TADOQuery;
 P_FProductName:string;
 i:Integer;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.EnableBCD:=False;//小数位数>4
//  LogIn(qry,Self.ClassName,TToolButton(Sender).Caption);
  I_index:=MData.RecNo ;
  P_state :=1;
  L_title.Caption:='预结算信息修改';
  try
    qry.SQL.Text:='Select IsEdit=cast(0 as bit),IsApp=cast(0 as bit),* from V_WorkBudgetList with(nolock) where FWorkBudgetID=:FWorkBudgetID';
    qry.Parameters.FindParam('FWorkBudgetID').Value:=mData['FWorkBudgetID'];
    qry.Open;
  finally
     ;
  end;
  mData_List.CopyFromDataSet(qry);
  mData_List.Active:=True;
  mData_List.First;

  Act_Set_Open.Execute;
  TS_Item.ActivePage:=TS_Edit;
  qry.Free;
end;

procedure TFrm_WorkBudget.TB_DelClick(Sender: TObject);
var
  qry:TADOQuery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
 // LogIn(qry,Self.ClassName,TToolButton(Sender).Caption);
  If (mData.RecordCount<>1) then
  begin
    application.MessageBox('只能删除单个记录！','系统提示',MB_ICONINFORMATION);
    Exit;
  end;
 { try
    qry.SQL.Text:='select * from '
                 +'(Select distinct FItemStoveID from T_DesignData with(nolock)'
                 +'union '
                 +'Select distinct FItemStoveID from T_DesignData with(nolock) '
                 +'union '
                 +'Select distinct FItemStoveID from T_DesignData with(nolock) '
                 +'union '
                 +'Select distinct FItemStoveID from T_DesignData with(nolock) '
                 +'union '
                 +'Select distinct FItemStoveID from T_DesignData with(nolock) ) as a where FItemStoveID=:FItemStoveID';
    qry.Parameters.FindParam('FItemStoveID').Value:=mData['FItemStoveID'];
    qry.Open;
  finally
     ;
  end;
  If qry.RecordCount>0 then
  begin
    application.MessageBox('项目已启用，不可删除！','系统提示',MB_ICONINFORMATION);
    Exit;
  end;
    }
  If application.MessageBox(Pchar('警告：是否删除此项预结算信息：【'+Trim(mData['FWorkBudgetNum'])+'】的数据？'+chr(13)+chr(13)
                           +'删除数据操作将不可恢复，确定要删除此项预结算吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
  If application.MessageBox(Pchar('警告：是否删除此项预结算信息：【'+Trim(mData['FWorkBudgetNum'])+'】的数据？'+chr(13)+chr(13)
                           +'删除数据操作将不可恢复，确定要删除此项预结算信息吗？'),'再次警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then

  begin
    //单据删除
    If not DelRd then
    begin
      application.MessageBox('删除单据失败！','系统提示',MB_ICONINFORMATION);
      mdlData.conn.RollbackTrans;
      Exit;
    end
    else
    begin
      Act_Update.Execute;
      MData.Delete;
    end;
  end;
  qry.Free;

end;

procedure TFrm_WorkBudget.CancelBtnClick(Sender: TObject);
var
  qry:TADOQuery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  P_state:=2;
  L_title.Caption:=UserFDepartmentName+'预结算信息';
 { try
    qry.SQL.Text:='Select IsEdit=cast(0 as bit),IsApp=cast(0 as bit),* from V_WorkInvoice with(nolock) where FWorkInvoiceID=:FWorkInvoiceID';
    qry.Parameters.FindParam('FWorkInvoiceID').Value:=mData['FWorkInvoiceID'];
    qry.Open;
  finally
     ;
  end;
  mData_List.CopyFromDataSet(qry);
  mData_List.Active:=True;}
  Act_Set_Close.Execute;
end;

procedure TFrm_WorkBudget.FormCreate(Sender: TObject);
begin
  inherited;
  P_state:=2;
  TS_Item.ActivePage:=TS_Brow;
  TB_App.Visible:= mdlData.PermissionCheckRights(TFrm_WorkBudget.ClassName,'新增');

end;

procedure TFrm_WorkBudget.FormShow(Sender: TObject);
begin
  inherited;
  P_back.Width:=Self.Width;
  P_back.Height:=Self.Height;
  P_back.Top:=21;
  P_back.Left:=1;
  TB_Ref.Click;
end;

procedure TFrm_WorkBudget.Act_Menu_SetExecute(Sender: TObject);
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

procedure TFrm_WorkBudget.Act_MenuExecute(Sender: TObject);
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

procedure TFrm_WorkBudget.N_EditClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_WorkBudget.N_FilterClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_WorkBudget.N_SortClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_WorkBudget.N_GroupClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_WorkBudget.N_SetClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_WorkBudget.N_OutClick(Sender: TObject);
begin
  inherited;
  Mn:=TMenuItem(Sender).Name;
  Act_Menu.Execute;
end;

procedure TFrm_WorkBudget.Act_Set_OpenExecute(Sender: TObject);
var AFirstColumnStyle: TcxStyle;
begin
  inherited;
  MyTreeView.Enabled:=False;
  Panel_EditButton.Enabled:=False;
  Panel_OK.Visible:=True;

  TS_Item.ActivePage:=TS_Edit;
  TS_Brow.TabVisible:=False;

  E_FClientShortName.Enabled:=True;
  E_FWorkBudgetNo.Enabled:=True;
  E_FWorkBudgetDate.Enabled:=True;
  E_FWorkInvoiceDate.Enabled:=True;
  E_FWorkInvoiceNum.Enabled:=True;
  E_FWorkInvoiceAmount.Enabled:=True;

  cxGV.OptionsData.Editing:=True;
  cxGV_List.OptionsData.Editing:=True;

  FWorkBudgetAmount.Editing:=True;
  FWorkItemNum.Editing:=True;
  FWorkBudgetName.Editing:=True;
  FWorkBudgetName.Editing:=True;
end;

procedure TFrm_WorkBudget.Act_Set_CloseExecute(Sender: TObject);
begin
  inherited;
  P_state :=2;

  MyTreeView.Enabled:=True;
  Panel_EditButton.Enabled:=True;
  Panel_OK.Visible:=False;

  cxGV.OptionsData.Editing:=False;
  cxGV_List.OptionsData.Editing:=False;

  TS_Item.ActivePage:=TS_Brow;
  TS_Brow.TabVisible:=True;

  E_FClientShortName.Enabled:=False;
  E_FWorkBudgetNo.Enabled:=False;
  E_FWorkBudgetDate.Enabled:=False;
  E_FWorkInvoiceDate.Enabled:=False;
  E_FWorkInvoiceNum.Enabled:=False;
  E_FWorkInvoiceAmount.Enabled:=False;

end;

procedure TFrm_WorkBudget.TS_TreeChange(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If TS_Tree.ActivePage=TS_Num then
  begin
    If not TreeVeiwListWhere(qry,MyTreeView,'VT_WorkBudget',' and FDepartmentID='+IntToStr(UserFDepartmentID) ) then
       Application.MessageBox(PChar('树型结构显示错误，请联系开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;

end;

procedure TFrm_WorkBudget.cxGVDblClick(Sender: TObject);
begin
  RzSP_PTitem.Visible:=True;
  Act_Change.Execute;


end;

procedure TFrm_WorkBudget.cxGrid_ItemContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
  inherited;
  GV:='cxGV_Item';
  Gm:='mdata';
  Gr:='cxGrid_Item';
  Act_Menu_Set_Band.Execute;
end;

procedure TFrm_WorkBudget.Panel_Edit1ConstrainedResize(Sender: TObject;
  var MinWidth, MinHeight, MaxWidth, MaxHeight: Integer);
begin
  inherited;
 // Panel_List.Left:=(Panel_Edit.Width-Panel_List.Width) div 2;
end;

procedure TFrm_WorkBudget.TS_ItemChange(Sender: TObject);
var qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.EnableBCD:=False;//小数位数>4
{
  If TS_Item.ActivePage=TS_Edit then
  begin
    P_back.Align:=alNone;
    Self.AutoScroll:=True;
  end
  else
  Begin
   // P_back.Align:=alClient;
   // Self.AutoScroll:=False;
  end;
  If TS_Item.ActivePage=TS_Brow then
  begin
    P_back.Align:=alClient;
    Self.AutoScroll:=False;
  end;
 }
end;

procedure TFrm_WorkBudget.RSP_TreeConstrainedResize(Sender: TObject;
  var MinWidth, MinHeight, MaxWidth, MaxHeight: Integer);
begin
  inherited;
  Panel_List.Left:=(Panel_Edit.Width-Panel_List.Width) div 2;
  Panel_Button.Left:=(Panel_OK.Width-Panel_Button.Width) div 2;

  Panel_List.Left:=(Panel_Edit.Width-Panel_List.Width) div 2;
  Panel_Button.Left:=(Panel_OK.Width-Panel_Button.Width) div 2;

end;

procedure TFrm_WorkBudget.FlatPanel5DblClick(Sender: TObject);
begin
  inherited;
  If P_state=2 then
     TS_Item.ActivePage:=TS_Brow;
end;

procedure TFrm_WorkBudget.Act_MaxIDExecute(Sender: TObject);
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
      value:='T_WorkBudget';
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

procedure TFrm_WorkBudget.cxGV_ItemFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  Act_ItemChange.Execute;
end;

procedure TFrm_WorkBudget.E_LocatePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  Act_Locate.Execute;
end;

procedure TFrm_WorkBudget.E_LocateKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  If Key=13 then
    Act_Locate.Execute;
end;

procedure TFrm_WorkBudget.Act_LocateExecute(Sender: TObject);
var
 qry: TADOQuery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.EnableBCD:=False;//小数位数>4
  mdata.DisableControls;
  try
    qry.SQL.Text:='Select IsEdit=cast(0 as bit),IsApp=cast(0 as bit),* from V_WorkBudget with(nolock) '
                 +'where FAgentName like :Locate1 or FWorkBudgetNum like :Locate2 or FBranchItemNumber like :Locate3 '
                 +'or FBranchFileNo like :Locate4 or FClientShortName like :Locate5 ';
    qry.Parameters.FindParam('Locate1').Value:='%'+Trim(E_Locate.Text)+'%';
    qry.Parameters.FindParam('Locate2').Value:='%'+Trim(E_Locate.Text)+'%';
    qry.Parameters.FindParam('Locate3').Value:='%'+Trim(E_Locate.Text)+'%';
    qry.Parameters.FindParam('Locate4').Value:='%'+Trim(E_Locate.Text)+'%';
    qry.Parameters.FindParam('Locate5').Value:='%'+Trim(E_Locate.Text)+'%';
    qry.Open;
  finally
     ;
  end;
  mdata.CopyFromDataSet(qry);
  mdata.Active:=True;
  mdata.EnableControls;

end;

procedure TFrm_WorkBudget.Act_ItemChangeExecute(Sender: TObject);
var qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  If  (P_state=2) and (mData['FWorkBudgetID']<>0) and (mData['FWorkBudgetID']<>Null) then   //不在新增修改状态
  begin
    If MData['FFirstLoggingID']=UserNumID then
    begin
      TB_Edit.Visible:= mdlData.PermissionCheckRights(TFrm_WorkBudget.ClassName,'修改');
      TB_Del.Visible:= mdlData.PermissionCheckRights(TFrm_WorkBudget.ClassName,'删除');
    end
    else
    begin
      TB_Edit.Visible:= False;
      TB_Del.Visible:= False;
    end;

    If (mdata['FWorkBudgetID']<>0) and (mdata['FWorkBudgetID']<>Null) then
    begin
      If MyItemListID(qry,Mdata_List,'V_WorkBudgetList',' FWorkBudgetID='+IntToStr(mdata['FWorkBudgetID']),'',) then
    //  If MyItemListID(qry,MData_FB,'V_WorkBudgetList',' FWorkItemID in (select distinct FWorkItemID from V_WorkBudgetList where FWorkBudgetID='+IntToStr(mdata['FWorkBudgetID'])+')','FWorkItemNum,FWorkBudgetNum',) then
      If MyItemListID(qry,MData_FB,'V_WorkBudgetList',' FWorkBudgetNum<='''+mdata['FWorkBudgetNum']+''' and FWorkItemID in (select distinct FWorkItemID from V_WorkBudgetList where FWorkBudgetID='+IntToStr(mdata['FWorkBudgetID'])+')','FWorkItemNum,FWorkBudgetNum',) then
    end;

  {  If (mdata['FItemStoveID']<>0) and (mdata['FItemStoveID']<>Null) then
    begin
      If MyItemListID(qry,Mdata_DP,'V_ItemStovePlanList',' FItemStoveID='+IntToStr(mdata['FItemStoveID']),'',) then
      If MyItemListID(qry,Mdata_Plan,'V_ItemStovePlan',' FItemStoveID='+IntToStr(mdata['FItemStoveID']),'',) then
      If MyItemListID(qry,Mdata_Make,'V_ItemStovePlanList',' FFinshPackDate is not null and FItemStoveID='+IntToStr(mdata['FItemStoveID']),'',) then
    end;
     }
  end;

end;

procedure TFrm_WorkBudget.MData_ListBeforePost(DataSet: TDataSet);
begin
  inherited;
  If DataSet['FTaxRate']=Null then DataSet['FTaxRate']:=0;
  If DataSet['FWorkBudgetAmount']=Null then DataSet['FWorkBudgetAmount']:=0;
  DataSet['FWorkBudgetTaxAmount']:=(DataSet['FWorkBudgetAmount']*100/(1+DataSet['FTaxRate']))/100;
  If DataSet['FWorkBudgetListReMark']=Null then DataSet['FWorkBudgetListReMark']:='';
  If DataSet['FWorkItemNum']=Null then DataSet['FWorkItemNum']:='';
  If DataSet['FWorkBudgetName']=Null then DataSet['FWorkBudgetName']:='';

end;

procedure TFrm_WorkBudget.Act_UpdateExecute(Sender: TObject);
var qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  //本次预结金额合计
  try
    qry.SQL.Text:='update T_WorkBudget set FWorkBudgetItemAmount=b.FWorkBudgetAmount from T_WorkBudget as a '
                 +' inner join (select FWorkBudgetID,SUM(FWorkBudgetAmount) as FWorkBudgetAmount from  T_WorkBudgetList '
                 +'where FWorkBudgetID=:FWorkBudgetID group by FWorkBudgetID) as b on a.FWorkBudgetID=b.FWorkBudgetID';
    If P_state=0 then
       qry.Parameters.FindParam('FWorkBudgetID').value:=P_MaxID;
    If P_state<>0 then
       qry.Parameters.FindParam('FWorkBudgetID').value:=Mdata['FWorkBudgetID'];

    qry.ExecSQL;
  finally
    ;
  end;
  //本次核销金额合计
   try
    qry.SQL.Text:='update T_WorkBudget set FWorkInvoiceAmount=FWorkBudgetItemAmount from T_WorkBudget '
                 +'where FWorkInvoiceDate is not null and FWorkBudgetID=:FWorkBudgetID ';
    If P_state=0 then
       qry.Parameters.FindParam('FWorkBudgetID').value:=P_MaxID;
    If P_state<>0 then
       qry.Parameters.FindParam('FWorkBudgetID').value:=Mdata['FWorkBudgetID'];

    qry.ExecSQL;
  finally
    ;
  end;
  //已经核销金额合计  核销日期为空的已预结金额     FWorkItemInvoiceAmount
   try
    qry.SQL.Text:='Update T_WorkItem set FWorkItemInvoiceAmount=b.FWorkItemInvoiceAmount from T_WorkItem as a left outer join '
                 +'(select distinct FWorkItemID,FStatusID,SUM(FWorkBudgetAmount) as FWorkItemInvoiceAmount from V_WorkBudgetList  '
                 +'where FWorkInvoiceDate is not null and FWorkItemID in (select distinct FWorkItemID from V_WorkBudgetList where FWorkBudgetID=:FWorkBudgetID1) group by FWorkItemID,FStatusID ) as b '
                 +' on a.FWorkItemID=b.FWorkItemID and b.FStatusID>0 '
                 +'where a.FWorkItemID in (select distinct FWorkItemID from V_WorkBudgetList where FWorkBudgetID=:FWorkBudgetID2)';
{
    qry.SQL.Text:='Update T_WorkItem set FWorkItemInvoiceAmount=b.FWorkItemInvoiceAmount from T_WorkItem as a left outer join '
                 +'(select distinct FWorkItemID,FStatusID,SUM(FWorkBudgetAmount) as FWorkItemInvoiceAmount from V_WorkBudgetList  '
                 +'where FWorkInvoiceDate is not null and  FWorkBudgetID=:FWorkBudgetID1 group by FWorkItemID,FStatusID ) as b '
                 +' on a.FWorkItemID=b.FWorkItemID and b.FStatusID>0 '
                 +'where a.FWorkItemID in (select distinct FWorkItemID from V_WorkBudgetList where FWorkBudgetID=:FWorkBudgetID2)';
}
    If P_state=0 then
    begin
      qry.Parameters.FindParam('FWorkBudgetID1').value:=P_MaxID;
      qry.Parameters.FindParam('FWorkBudgetID2').value:=P_MaxID;
    end;
    If P_state<>0 then
    begin
      qry.Parameters.FindParam('FWorkBudgetID1').value:=Mdata['FWorkBudgetID'];
      qry.Parameters.FindParam('FWorkBudgetID2').value:=Mdata['FWorkBudgetID'];
    end;
    qry.ExecSQL;
  finally
    ;
  end;
  //已经预结算金额合计
   try
    qry.SQL.Text:='Update T_WorkItem set FWorkItemBudgetAmount=b.FWorkItemBudgetAmount from T_WorkItem as a left outer join '
                 +'(select distinct FWorkItemID,FStatusID,SUM(FWorkBudgetAmount) as FWorkItemBudgetAmount from V_WorkBudgetList  '
                 +'where FWorkItemID in (select distinct FWorkItemID from V_WorkBudgetList where FWorkBudgetID=:FWorkBudgetID1) group by FWorkItemID,FStatusID ) as b '
                 +' on a.FWorkItemID=b.FWorkItemID and b.FStatusID>0 where '
                 +'a.FWorkItemID in (select distinct FWorkItemID from V_WorkBudgetList where FWorkBudgetID=:FWorkBudgetID2)';
{
    qry.SQL.Text:='Update T_WorkItem set FWorkItemBudgetAmount=b.FWorkItemBudgetAmount from T_WorkItem as a left outer join '
                 +'(select distinct FWorkItemID,FStatusID,SUM(FWorkBudgetAmount) as FWorkItemBudgetAmount from V_WorkBudgetList  '
                 +'where  FWorkBudgetID=:FWorkBudgetID1 group by FWorkItemID,FStatusID ) as b '
                 +' on a.FWorkItemID=b.FWorkItemID and b.FStatusID>0 where '
                 +'a.FWorkItemID in (select distinct FWorkItemID from V_WorkBudgetList where FWorkBudgetID=:FWorkBudgetID2)';
}
    If P_state=0 then
    begin
      qry.Parameters.FindParam('FWorkBudgetID1').value:=P_MaxID;
      qry.Parameters.FindParam('FWorkBudgetID2').value:=P_MaxID;
    end;
    If P_state<>0 then
    begin
      qry.Parameters.FindParam('FWorkBudgetID1').value:=Mdata['FWorkBudgetID'];
      qry.Parameters.FindParam('FWorkBudgetID2').value:=Mdata['FWorkBudgetID'];
    end;

    qry.ExecSQL;
  finally
    ;
  end;
end;

procedure TFrm_WorkBudget.cxGV_ItemCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
 { If  (P_state=2) and (mData['FItemMakeStatus']<>'') and (mData['FItemMakeStatus']<>Null) then   //不在新增修改状态
  begin
    If AViewInfo.GridRecord.DisplayTexts[FItemMakeStatus.Index]='待生产' then
    begin
      ACanvas.Canvas.Font.Color:=clPurple; //字体颜色
      ACanvas.FillRect(AViewInfo.Bounds);
    end;
    If AViewInfo.GridRecord.DisplayTexts[FItemMakeStatus.Index]='生产' then
    begin
      ACanvas.Canvas.Font.Color:=clBlue; //字体颜色
      ACanvas.FillRect(AViewInfo.Bounds);
    end;

  end;
 }
end;

procedure TFrm_WorkBudget.cxGV_ListCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  GV:='cxGV_List';
  Gm:='mdata_List';
  Gr:='cxGrid_List';
  Act_Menu_Set.Execute;
end;

procedure TFrm_WorkBudget.Act_MaxID_ListExecute(Sender: TObject);
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
      value:='T_WorkBudgetList';
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
    P_MaxID_List:=proc.Parameters.FindParam('@FInterID').Value;
    proc.Free;
  finally
     ;
  end;


end;

procedure TFrm_WorkBudget.Act_WorkItemNumExecute(Sender: TObject);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  mData_List.Edit;
  mData_List.Post;
  try
    qry.SQL.Text:='Select * from  VT_WorkItem_Agent_Sel with(nolock) '
                 +'where  (FWorkItemNum like :FWorkItemNum  '
                 +'or FName like :FName '
                 +') and FAgentID=:FAgentID and FItemID=:FItemID and FDepartmentID=:FDepartmentID '
                 +'order by FWorkItemNum ';
    qry.Parameters.FindParam('FWorkItemNum').value:='%'+mData_List['FWorkItemNum']+'%';
    qry.Parameters.FindParam('FName').value:='%'+mData_List['FWorkItemNum']+'%';
    qry.Parameters.FindParam('FAgentID').value:=mData['FAgentID'];
    qry.Parameters.FindParam('FItemID').value:=mData['FItemID'];
    qry.Parameters.FindParam('FDepartmentID').value:=userFDepartmentID;
    qry.Open;
  finally
    ;
  end;
  If qry.RecordCount=0 then
  begin
    mData_List.Edit;
    mData_List['FWorkItemID']:=0;
    mData_List.Post;
    application.MessageBox('该任务单号不存在，请重新选择！','系统提示',MB_ICONINFORMATION);
    Exit;
  end;
  If qry.RecordCount=1 then
  begin
    mData_List.Edit;
    mData_List['FWorkItemID']:=qry.FieldByName('FWorkItemID').Value;
    mData_List.Post;
  end;
  If (qry.RecordCount>0) and (qry.RecordCount<>1) then
  begin
    selValue:=select('选择生产任务信息','FNumber','FParentNumber','FNumber','FName',qry);
    If (Length(selValue)>0)  then
    begin
      mData_List.Edit;
      mData_List['FWorkItemID']:=qry.FieldByName('FWorkItemID').Value;
      mData_List.Post;
    end
    else
      application.MessageBox('请选择明细！','系统提示',MB_ICONINFORMATION);
  end;


  If  mData_List['FWorkItemID']<>0 and mData_List['FWorkItemID']<>Null then
  begin
    try
      qry.SQL.Text:='Select * from  V_WorkItem with(nolock) '
                   +'where FWorkItemID=:FWorkItemID ';
      qry.Parameters.FindParam('FWorkItemID').value:=mData_List['FWorkItemID'];
      qry.Open;
    finally
      ;
    end;
    If qry.RecordCount=1 then
    begin
      mData_List.Edit;
      mData_List['FWorkItemNum']:=qry.FieldByName('FWorkItemNum').Value;
      mData_List['FWorkItemDate']:=qry.FieldByName('FWorkItemDate').Value;
      mData_List['FBranchFileNo']:=qry.FieldByName('FBranchFileNo').Value;
      mData_List['FClientShortName']:=qry.FieldByName('FClientShortName').Value;
      mData_List['FBranchItemNumber']:=qry.FieldByName('FBranchItemNumber').Value;
      mData_List['FAgentName']:=qry.FieldByName('FAgentName').Value;
      mData_List['FWorkItemAmount']:=qry.FieldByName('FWorkItemAmount').Value;
      mData_List['FWorkItemInvoiceAmount']:=qry.FieldByName('FWorkItemInvoiceAmount').Value;
      mData_List['FWorkItemBalanceAmount']:=qry.FieldByName('FWorkItemBalanceAmount').Value;
      mData_List['FWorkItemBudgetAmount']:=qry.FieldByName('FWorkItemBudgetAmount').Value;
      mData_List['FWorkItemPayMentAmount']:=qry.FieldByName('FWorkItemPayMentAmount').Value;
      mData_List['FTaxRate']:=qry.FieldByName('FTaxRate').Value;
      mData_List.Post;
    end
    else
    begin
      mData_List.Edit;
      mData_List['FWorkItemNum']:='';
      mData_List['FWorkItemDate']:=Null;
      mData_List['FBranchFileNo']:='';
      mData_List['FClientShortName']:='';
      mData_List['FAgentName']:='';
      mData_List['FBranchItemNumber']:='';
      mData_List['FWorkItemAmount']:=0.00;
      mData_List['FWorkItemInvoiceAmount']:=0.00;
      mData_List['FWorkItemBalanceAmount']:=0.00;
      mData_List['FWorkItemBudgetAmount']:=0.00;
      mData_List['FWorkItemPayMentAmount']:=0.00;
      mData_List['FTaxRate']:=0;
      mData_List.Post;
    end
  end;

end;

procedure TFrm_WorkBudget.FWorkItemNumPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  Act_WorkItemNum.Execute;
end;

procedure TFrm_WorkBudget.cxGrid_ListContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV';
  Gm:='mdata_List';
  Gr:='cxGrid';
  Act_Menu_Set.Execute;
end;

procedure TFrm_WorkBudget.cxGridContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV';
  Gm:='mdata_List';
  Gr:='cxGrid';
  Act_Menu_Set.Execute;
end;

procedure TFrm_WorkBudget.Act_MaxNumExecute(Sender: TObject);
var  qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If (P_state<>0) and (P_state<>1) then Exit;
  mData.Edit;
  mData.Post;
  If mData['FWorkBudgetDate']<>null then
  begin
    try
      qry.SQL.Text:='Select isnull(Max(FWorkBudgetNo),0)+1 as FWorkBudgetNo from  V_WorkBudget with(nolock) '
                   +'where  FWorkBudgetYYMM=:FWorkBudgetYYMM  and FDepartmentID=:FDepartmentID ';
      qry.Parameters.FindParam('FWorkBudgetYYMM').value:=Copy(ForMatDateTime('yyyy-mm-dd',mData['FWorkBudgetDate']),1,7);
      qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;

      qry.Open;
    finally
      ;
    end;
    mData.Edit;
    mData['FWorkBudgetNo']:=qry['FWorkBudgetNo'];
    mData.Post;
  end;


end;

procedure TFrm_WorkBudget.MData_ListAfterEdit(DataSet: TDataSet);
begin
  inherited;
  DataSet['IsEdit']:=True;
end;

procedure TFrm_WorkBudget.MData_ListAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet['IsApp']:=True;
end;

procedure TFrm_WorkBudget.MData_ListBeforeDelete(DataSet: TDataSet);
var
 arrLen:Integer;
begin
  If not varisnull(MData_List['FWorkBudgetListID']) then
  begin
    arrLen:=Length(DelArray)+1;
    setLength(DelArray,arrLen);
    DelArray[High(DelArray)]:=MData_List['FWorkBudgetListID'];
  end;

end;

procedure TFrm_WorkBudget.cxGVCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  GV:='cxGV';
  Gm:='mdata_List';
  Gr:='cxGrid';
  Act_Menu_Set.Execute;

end;

procedure TFrm_WorkBudget.Act_Menu_BandExecute(Sender: TObject);
Var i:Integer;
begin
  //1、设置
  If copy((FindComponent(Mn) as TMenuItem).Caption,1,pos('(',(FindComponent(Mn) as TMenuItem).Caption)-1)='取消设置' then
  begin
    (FindComponent(GV) as TcxGridDBBandedTableView).OptionsData.Editing:=False;
    (FindComponent(GV) as TcxGridDBBandedTableView).OptionsView.GroupByBox:=False;
    for i:=0 to (FindComponent(GV) as TcxGridDBBandedTableView).ColumnCount-1 do
    begin
      (FindComponent(GV) as TcxGridDBBandedTableView).Columns[i].Options.Filtering:=False;
      (FindComponent(GV) as TcxGridDBBandedTableView).Columns[i].Options.Editing:=False;
      (FindComponent(GV) as TcxGridDBBandedTableView).Columns[i].Options.Sorting:=False;
    end;
    Exit;
  end;

  //编辑
  If (copy((FindComponent(Mn) as TMenuItem).Caption,1,pos('(',(FindComponent(Mn) as TMenuItem).Caption)-1)='编辑')
     and ((FindComponent(Mn) as TMenuItem).Checked=False) then
  begin
    (FindComponent(GV) as TcxGridDBBandedTableView).OptionsData.Editing:=True;
    (FindComponent(Mn) as TMenuItem).Checked:=True;
    for i:=0 to (FindComponent(GV) as TcxGridDBBandedTableView).ColumnCount-1 do
    begin
      (FindComponent(GV) as TcxGridDBBandedTableView).Columns[i].Options.Editing:=True;
    end;
    Exit;
  end;
  If (copy((FindComponent(Mn) as TMenuItem).Caption,1,pos('(',(FindComponent(Mn) as TMenuItem).Caption)-1)='编辑')
     and ((FindComponent(Mn) as TMenuItem).Checked=True) then
  begin
    (FindComponent(GV) as TcxGridDBBandedTableView).OptionsData.Editing:=False;
    (FindComponent(Mn) as TMenuItem).Checked:=False;
    for i:=0 to (FindComponent(GV) as TcxGridDBBandedTableView).ColumnCount-1 do
    begin
      (FindComponent(GV) as TcxGridDBBandedTableView).Columns[i].Options.Editing:=False;
    end;
    Exit;
  end;
  //过滤
  If (copy((FindComponent(Mn) as TMenuItem).Caption,1,pos('(',(FindComponent(Mn) as TMenuItem).Caption)-1)='过滤')
     and ((FindComponent(Mn) as TMenuItem).Checked=False) then
  begin
    (FindComponent(GV) as TcxGridDBBandedTableView).OptionsData.Editing:=True;
    (FindComponent(Mn) as TMenuItem).Checked:=True;
    for i:=0 to (FindComponent(GV) as TcxGridDBBandedTableView).ColumnCount-1 do
    begin
      (FindComponent(GV) as TcxGridDBBandedTableView).Columns[i].Options.Filtering:=True;
    end;
    Exit;
  end;
  If (copy((FindComponent(Mn) as TMenuItem).Caption,1,pos('(',(FindComponent(Mn) as TMenuItem).Caption)-1)='过滤')
     and ((FindComponent(Mn) as TMenuItem).Checked=True) then
  begin
    (FindComponent(Mn) as TMenuItem).Checked:=False;
    for i:=0 to (FindComponent(GV) as TcxGridDBBandedTableView).ColumnCount-1 do
    begin
      (FindComponent(GV) as TcxGridDBBandedTableView).Columns[i].Options.Filtering:=False;
    end;
    Exit;
  end;
  //排序
  If (copy((FindComponent(Mn) as TMenuItem).Caption,1,pos('(',(FindComponent(Mn) as TMenuItem).Caption)-1)='排序')
     and ((FindComponent(Mn) as TMenuItem).Checked=False) then
  begin
    (FindComponent(Mn) as TMenuItem).Checked:=True;
    for i:=0 to (FindComponent(GV) as TcxGridDBBandedTableView).ColumnCount-1 do
    begin
      (FindComponent(GV) as TcxGridDBBandedTableView).Columns[i].Options.Sorting:=True;
    end;
    Exit;
  end;
  If (copy((FindComponent(Mn) as TMenuItem).Caption,1,pos('(',(FindComponent(Mn) as TMenuItem).Caption)-1)='排序')
     and ((FindComponent(Mn) as TMenuItem).Checked=True) then
  begin
    (FindComponent(Mn) as TMenuItem).Checked:=False;
    for i:=0 to (FindComponent(GV) as TcxGridDBBandedTableView).ColumnCount-1 do
    begin
      (FindComponent(GV) as TcxGridDBBandedTableView).Columns[i].Options.Sorting:=False;
    end;
    Exit;
  end;
 // 分组
  If (copy((FindComponent(Mn) as TMenuItem).Caption,1,pos('(',(FindComponent(Mn) as TMenuItem).Caption)-1)='分组')
     and ((FindComponent(Mn) as TMenuItem).Checked=False) then
  begin
    (FindComponent(GV) as TcxGridDBBandedTableView).OptionsView.GroupByBox:=True;
    (FindComponent(Mn) as TMenuItem).Checked:=True;
    Exit;
  end;
  If (copy((FindComponent(Mn) as TMenuItem).Caption,1,pos('(',(FindComponent(Mn) as TMenuItem).Caption)-1)='分组')
     and ((FindComponent(Mn) as TMenuItem).Checked=True) then
  begin
    (FindComponent(GV) as TcxGridDBBandedTableView).OptionsView.GroupByBox:=False;
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

procedure TFrm_WorkBudget.Act_Menu_Set_BandExecute(Sender: TObject);
begin
  inherited;
  If (FindComponent(GV) as TcxGridDBBandedTableView).Columns[1].Options.Filtering=True then
     N_Filter.Checked:=True
  else
     N_Filter.Checked:=False;

  If (FindComponent(GV) as TcxGridDBBandedTableView).Columns[1].Options.Sorting=True then
    N_Sort.Checked:=True
  else
    N_Sort.Checked:=False;

  If (FindComponent(GV) as TcxGridDBBandedTableView).OptionsView.GroupByBox=True then
    N_Group.Checked:=True
  else

end;

procedure TFrm_WorkBudget.N_Edit_BandClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu_Band.Execute;
end;

procedure TFrm_WorkBudget.Act_AgentNameExecute(Sender: TObject);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  mdata.Edit;
  mdata.Post;
  try
    qry.SQL.Text:='Select * from VT_AgentItem with(nolock) '
                 +'where FAgentName like :FAgentName '
                 +' and FDepartmentID=:FDepartmentID '
                 +'order by FNumber ';
    qry.Parameters.FindParam('FAgentName').value:='%'+mData['FAgentName']+'%';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Open;
  finally
    ;
  end;
  If qry.RecordCount=0 then
  begin
    mData.Edit;
    mData['FAgentID']:=0;
    mData.Post;
    application.MessageBox('该生产单位不存在，请重新选择！','系统提示',MB_ICONINFORMATION);
    Exit;
  end;
  If qry.RecordCount=1 then
  begin
    mData.Edit;
    mData['FAgentID']:=qry.FieldByName('FAgentID').Value;
    mData.Post;
  end;
  If (qry.RecordCount>0) and (qry.RecordCount<>1) then
  begin
    selValue:=select('选择生产单位信息','FNumber','FParentNumber','FNumber','FName',qry);
    If (Length(selValue)>0)  then
    begin
      mData.Edit;
      mData['FAgentID']:=qry.FieldByName('FAgentID').Value;
      mData.Post;
    end
    else
      application.MessageBox('请选择明细！','系统提示',MB_ICONINFORMATION);
  end;

  If  mData['FAgentID']<>0 and mData['FAgentID']<>Null then
  begin
    try
      qry.SQL.Text:='Select * from  V_AgentItem with(nolock) '
                   +'where FAgentID=:FAgentID ';
      qry.Parameters.FindParam('FAgentID').value:=mData['FAgentID'];
      qry.Open;
    finally
      ;
    end;
    If qry.RecordCount=1 then
    begin
      mData.Edit;
      mData['FAgentID']:=qry.FieldByName('FAgentID').Value;
      mData['FAgentName']:=qry.FieldByName('FAgentName').Value;
      mData.Post;
    end
    else
    begin
      mData.Edit;
      mData['FAgentID']:=0;
      mData['FAgentName']:='';
      mData.Post;
    end
  end;
  qry.Free;

end;

procedure TFrm_WorkBudget.E_FAgentNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
//  Act_AgentName.Execute;
end;

procedure TFrm_WorkBudget.MDataBeforePost(DataSet: TDataSet);
begin
  inherited;
  If DataSet['FAgentID']=Null then DataSet['FAgentID']:=0;
  If DataSet['FAgentName']=Null then DataSet['FAgentName']:='';
  If DataSet['FItemID']=Null then DataSet['FItemID']:=0;
  If DataSet['FClientShortName']=Null then DataSet['FClientShortName']:='';

end;

procedure TFrm_WorkBudget.FWorkBudgetNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  MData_List.Edit;
  try
    qry.SQL.Text:='Select * from  V_BaseData with(nolock) '
                 +'where FDepartmentID=:FDepartmentID1 and FNumber like (select FNumber from  V_BaseData with(nolock) '
                 +'where FDepartmentID=:FDepartmentID2 and Fname=''预结算类别'')+''%''  '
                 +'order by FNumber ';
    qry.Parameters.FindParam('FDepartmentID1').value:=UserFDepartmentID;
    qry.Parameters.FindParam('FDepartmentID2').value:=UserFDepartmentID;
    qry.Open;
  finally
    ;
  end;
  If qry.RecordCount>0 then
  selValue:=select('选择预结算类别','FNumber','FParentNumber','FNumber','FName',qry);
  If (Length(selValue)>0) and (qry.FieldByName('FDetail').Value=True)  then
  begin
     MData_List['FWorkBudgetNameID']:=qry.FieldByName('FID').Value;
     MData_List['FWorkBudgetName']:=qry.FieldByName('FName').Value;
     MData_List.Post;
  end
  else
    application.MessageBox('请选择明细！','系统提示',MB_ICONINFORMATION);


end;

procedure TFrm_WorkBudget.Act_ChangeExecute(Sender: TObject);
var qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If TS_Item.ActivePage=TS_Edit then
  begin
    If  (RzSP_PTitem.Visible=True) and (Mdata_List['FWorkItemID']<>0) and (Mdata_List['FWorkItemID']<>Null) then
    begin
      If MyItemListID(qry,Mdata_WorkList,'V_WorkList',' FWorkItemID='+IntToStr(Mdata_List['FWorkItemID']),'',) then
      If MyItemListID(qry,MData_Balance,'V_BalanceList',' FWorkItemID='+IntToStr(Mdata_List['FWorkItemID']),'FFullNumber',) then
      If MyItemListID(qry,MData_Invoice,'V_WorkInvoiceList',' FWorkItemID='+IntToStr(Mdata_List['FWorkItemID']),'FWorkInvoiceItemNum',) then
    end;
  end;
end;

procedure TFrm_WorkBudget.Act_ItemNumExecute(Sender: TObject);
var selValue : string;
    qry: TADOQuery;
    i:Integer;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  mdata.Edit;
  mdata.Post;
  try
    qry.SQL.Text:='Select * from VT_WorkItem_Item_Agent with(nolock) '
                 +'where FName like :FName '
                 +' and FDepartmentID=:FDepartmentID '
                 +'order by FNumber ';
    qry.Parameters.FindParam('FName').value:='%'+mData['FClientShortName']+'%';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Open;
  finally
    ;
  end;
  If qry.RecordCount=0 then
  begin
    mData.Edit;
    mData['FItemID']:=0;
    mData['FAgentID']:=0;
    mData.Post;
    application.MessageBox('该项目不存在，请重新选择！','系统提示',MB_ICONINFORMATION);
    Exit;
  end;
  If qry.RecordCount=1 then
  begin
    mData.Edit;
    mData['FItemID']:=qry.FieldByName('FItemID').Value;
    mData['FAgentID']:=qry.FieldByName('FAgentID').Value;
    mData.Post;
  end;
  If (qry.RecordCount>0) and (qry.RecordCount<>1) then
  begin
    selValue:=select('选择项目信息','FNumber','FParentNumber','FNumber','FName',qry);
    If (Length(selValue)>0)  then
    begin
      mData.Edit;
      mData['FItemID']:=qry.FieldByName('FItemID').Value;
      mData['FAgentID']:=qry.FieldByName('FAgentID').Value;
      mData.Post;
    end
    else
      application.MessageBox('请选择明细！','系统提示',MB_ICONINFORMATION);
  end;
  //项目名称
  If  mData['FItemID']<>0 and mData['FItemID']<>Null then
  begin
    try
      qry.SQL.Text:='Select * from  V_FileItem with(nolock) '
                   +'where FItemID=:FItemID ';
      qry.Parameters.FindParam('FItemID').value:=mData['FItemID'];
      qry.Open;
    finally
      ;
    end;
    If qry.RecordCount=1 then
    begin
      mData.Edit;
      mData['FItemID']:=qry.FieldByName('FItemID').Value;
      mData['FClientShortname']:=qry.FieldByName('FClientShortname').Value;
      mData['FBranchFileNo']:=qry.FieldByName('FBranchFileNo').Value;
      mData['FBranchItemNumber']:=qry.FieldByName('FBranchItemNumber').Value;
      mData.Post;
    end
    else
    begin
      mData.Edit;
      mData['FItemID']:=0;
      mData['FClientShortname']:='';
      mData['FBranchFileNo']:='';
      mData['FBranchItemNumber']:='';
      mData.Post;
    end
  end;
  //生产用户
  If  mData['FAgentID']<>0 and mData['FAgentID']<>Null then
  begin
    try
      qry.SQL.Text:='Select * from  V_AgentItem with(nolock) '
                   +'where FAgentID=:FAgentID ';
      qry.Parameters.FindParam('FAgentID').value:=mData['FAgentID'];
      qry.Open;
    finally
      ;
    end;
    If qry.RecordCount=1 then
    begin
      mData.Edit;
      mData['FAgentID']:=qry.FieldByName('FAgentID').Value;
      mData['FAgentName']:=qry.FieldByName('FAgentName').Value;
      mData['FTaxRate']:=qry.FieldByName('FTaxRate').Value;
      mData.Post;
    end
    else
    begin
      mData.Edit;
      mData['FAgentID']:=0;
      mData['FAgentName']:='';
      mData['FTaxRate']:=1;
      mData.Post;
    end
  end;

  //明细表数据更新
  Act_WorkBudgetList.Execute;
  qry.Free;


end;

procedure TFrm_WorkBudget.E_FClientShortNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  Act_ItemNum.Execute;
end;

procedure TFrm_WorkBudget.TB_WorkBudgetClick(Sender: TObject);
var
  Query_Sp:TADOStoredProc;
  i,k,ReNum,R_Count,L,xh_FWorkItemNum,xh_FWorkItemNum2,xh,xh2:Integer;
  ExcelApp,MyWorkBook,vLastSheet: Variant;
  filepath,savefilepath,copystart,copyend,copystart1,P_FWorkItemNum,P_FWorkItemNum2,mc,mc2:string;
begin
  filepath:=Extractfilepath(application.ExeName)+'电袋外协预结算表模版.xls';
  if (mdata.Active) and (mdata.recordcount>0) then
  Begin
    SaveDialog1.FileName:='电袋外协预结算表('+mdata['FWorkBudgetNum']+')';
    SaveDialog1.Filter:='.xls';
    SaveDialog1.Execute;

    if (mdata.FieldByName('FWorkBudgetNum').AsString<>'') Or (mdata.FieldByName('FWorkBudgetNum').AsString<>Null) then
        savefilepath:=SaveDialog1.FileName+'.xls';

    if FileExists(savefilepath) then
    begin
      DeleteFile(savefilepath) ;
    end;
    // stbMsg.Caption:='提示信息：正在导出电袋外协预结算表:'+'【'+mdata.FieldByName('FWorkBudgetNum').AsString+'】';
    // stbBar.Refresh;

    ExcelApp:= CreateOleObject('Excel.Application' );
    ExcelApp.Visible:=False;  //工作表显示

    ExcelApp.DisplayAlerts:=False;                  //不显示提示框
    MyWorkBook:=ExcelApp.WorkBooks.Open( filepath );   //打开模版

    If mdata.RecordCount>0 then
       k:=2
    else
       Exit;

    mdata.First;
    while not mdata.eof do
    begin
      mdata_List.First;
      vLastSheet:=MyWorkBook.Sheets[MyWorkBook.Sheets.Count];
      MyWorkBook.Sheets[1].Copy(EmptyParam,vLastSheet);
      MyWorkBook.WorkSheets[k].Name:=IntToStr(k)+mdata.FieldByName('FWorkBudgetNum').AsString ;
      MyWorkBook.WorkSheets[k].Activate;

      //标题
      if (mdata_List['FWorkData']='电袋事业部') or (mdata_List['FWorkData']='电袋与管带事业部') then
         MyWorkBook.WorkSheets[k].Cells[1,1].Value:=AnsiReplaceStr(MyWorkBook.WorkSheets[k].Cells[1,1].Value,'B','福建龙净环保股份有限公司'); //公司名称
      if (mdata_List['FWorkData']='电袋事业部(厦门)') or (mdata_List['FWorkData']='电袋与管带事业部(厦门)') then
         MyWorkBook.WorkSheets[k].Cells[1,1].Value:=AnsiReplaceStr(MyWorkBook.WorkSheets[k].Cells[1,1].Value,'B','厦门龙净环保技术有限公司'); //公司名称

      if FloatToStr(mdata_List['FTaxRate']*100)+'%'='11%' then
         MyWorkBook.WorkSheets[k].Cells[2,1].Value := mdata_List['FWorkData']+'设备运输预结算表'
      else
         MyWorkBook.WorkSheets[k].Cells[2,1].Value := mdata_List['FWorkData']+'外协加工预结算表';

      if FloatToStr(mdata_List['FTaxRate']*100)+'%'='11%' then
         MyWorkBook.WorkSheets[k].Cells[4,1].Value := '承运单位：'
      else
         MyWorkBook.WorkSheets[k].Cells[4,1].Value := '生产单位：';

      MyWorkBook.WorkSheets[k].Cells[4,3].Value := Trim(mdata.FieldByName('FAgentName').AsString);
      MyWorkBook.WorkSheets[k].Cells[4,8].Value := Trim(mdata.FieldByName('FBranchFileNo').AsString);
      MyWorkBook.WorkSheets[k].Cells[4,11].Value := Trim(mdata.FieldByName('FDepartmentNum').AsString)+'-YJ-'+Trim(mdata.FieldByName('FWorkBudgetNum').AsString);

      MyWorkBook.WorkSheets[k].Cells[5,3].Value := Trim(mdata.FieldByName('FClientShortName').AsString);
      MyWorkBook.WorkSheets[k].Cells[5,8].Value := Trim(mdata.FieldByName('FBranchItemNumber').AsString);
      //MyWorkBook.WorkSheets[k].Cells[5,11].Value :=FloatToStr(mdata['FTaxRate']*100)+'%';
      MyWorkBook.WorkSheets[k].Cells[5,11].Value :=mdata.FieldByName('FTaxRate').AsString;

      //制单、审核栏
      MyWorkBook.WorkSheets[k].Cells[13,10].Value:=mdata_List.FieldByName('FFirstLogging').AsString; //制单
      MyWorkBook.WorkSheets[k].Cells[13,11].Value:=datetostr(date());


       //工作薄名称
      MyWorkBook.WorkSheets[k].Name:=mdata.FieldByName('FWorkBudgetNum').AsString;
      //附表
      //循环行开始
      i:=11;

      copystart:='A'+IntToStr(i);
      if mdata_List.recordcount>0 then
      Begin
        copystart:='A'+IntToStr(i);
        copystart1:='A'+IntToStr(i+1);
        copyend:='L'+IntToStr(i);  //区域
        ReNum:=mdata_FB.RecordCount-1;
        L:=mdata_FB.RecordCount-1;
        while ReNum>0 do
        Begin
          ExcelApp.ActiveSheet.Range[copystart+':'+copyend].Copy;
          ExcelApp.ActiveSheet.Rows[i+1].Insert;
          ExcelApp.ActiveSheet.Range[copystart1].PasteSpecial;
          Renum:=Renum-1;
        end;
        //合计制单、审核栏
        MyWorkBook.WorkSheets[k].Cells[i+L+1,6].Value := '=SUM(F'+IntToStr(i)+':F'+IntToStr(i+L)+')'; //
        MyWorkBook.WorkSheets[k].Cells[i+L+1,7].Value := '=SUM(G'+IntToStr(i)+':G'+IntToStr(i+L)+')'; //
        MyWorkBook.WorkSheets[k].Cells[i+L+1,9].Value := '=SUM(I'+IntToStr(i)+':I'+IntToStr(i+L)+')'; //
        MyWorkBook.WorkSheets[k].Cells[i+L+1,11].Value := '=SUM(K'+IntToStr(i)+':K'+IntToStr(i+L)+')'; //
        MyWorkBook.WorkSheets[k].Cells[i+L+1,12].Value := '=SUM(L'+IntToStr(i)+':L'+IntToStr(i+L)+')'; //

      end;
      mdata_FB.First;
      //合并单元格用
      xh:=0;
      P_FWorkItemNum:=mdata_FB.FieldByName('FWorkItemNum').Value;
      xh_FWorkItemNum:=0;
      while not mdata_FB.eof do
      Begin
        MyWorkBook.WorkSheets[k].Cells[i,1].Value := i-7-4+1;
        MyWorkBook.WorkSheets[k].Cells[i,2].Value := mdata_FB.FieldByName('FWorkBudgetName').AsString;
        MyWorkBook.WorkSheets[k].Cells[i,4].Value := mdata_FB.FieldByName('FWorkBudgetNum').AsString;
        MyWorkBook.WorkSheets[k].Cells[i,5].Value := mdata_FB.FieldByName('FWorkBudgetDate').AsString;
        MyWorkBook.WorkSheets[k].Cells[i,6].Value := mdata_FB.FieldByName('FWorkBudgetAmount').AsString;
        MyWorkBook.WorkSheets[k].Cells[i,7].Value := mdata_FB.FieldByName('FWorkBudgetTaxAmount').AsString;
        MyWorkBook.WorkSheets[k].Cells[i,8].Value := mdata_FB.FieldByName('FWorkInvoiceDate').AsString;
        MyWorkBook.WorkSheets[k].Cells[i,9].Value := mdata_FB.FieldByName('FWorkBudgetInvoiceAmount').AsString;
        MyWorkBook.WorkSheets[k].Cells[i,10].Value := mdata_FB.FieldByName('FWorkItemNum').AsString;
        MyWorkBook.WorkSheets[k].Cells[i,11].Value := mdata_FB.FieldByName('FWorkItemAmount').AsString;
        MyWorkBook.WorkSheets[k].Cells[i,12].Value := mdata_FB.FieldByName('FWorkItemBalanceAmount').AsString;
        mdata_FB.next;
        //合并单元格
        IF mdata_FB.Eof=True then
        begin
          mc:='';
          P_FWorkItemNum:='';
        end;
        //合并单元格      FWorkItemNum
        If mdata_FB.FieldByName('FWorkItemNum').Value<>P_FWorkItemNum then
        begin
          xh_FWorkItemNum:=xh_FWorkItemNum+1;
        end
        else
        begin
          RepSpace:=GetRepRange(i,10)+':'+GetRepRange(i-xh_FWorkItemNum,10);
          ExcelApp.Range[RepSpace].Select;
          ExcelApp.Selection.Merge;
          xh_FWorkItemNum:=0;
          P_FWorkItemNum:=mdata_FB.FieldByName('FWorkItemNum').Value;
        end;
        //合并单元格     FWorkItemNum
        If mdata_FB.FieldByName('FWorkItemNum').Value=mc then
        begin
          xh:=xh+1;
        end
        else
        begin
          RepSpace:=GetRepRange(i,10)+':'+GetRepRange(i-xh,10);
          ExcelApp.Range[RepSpace].Select;
          ExcelApp.Selection.Merge;

          RepSpace:=GetRepRange(i,11)+':'+GetRepRange(i-xh,11);
          ExcelApp.Range[RepSpace].Select;
          ExcelApp.Selection.Merge;

          RepSpace:=GetRepRange(i,12)+':'+GetRepRange(i-xh,12);
          ExcelApp.Range[RepSpace].Select;
          ExcelApp.Selection.Merge;

          xh:=0;
          mc:=mdata_FB.FieldByName('FWorkItemNum').Value;

        end;
        i:=i+1;
      End;


      //预结算表
      //循环行开始
      i:=7;
      copystart:='A'+IntToStr(i);
      if mdata_FB.recordcount>0 then
      Begin
        copystart:='A'+IntToStr(i);
        copystart1:='A'+IntToStr(i+1);
        copyend:='L'+IntToStr(i);  //区域
        ReNum:=mdata_List.RecordCount-1;
        L:=mdata_List.RecordCount-1;
        while ReNum>0 do
        Begin
          ExcelApp.ActiveSheet.Range[copystart+':'+copyend].Copy;
          ExcelApp.ActiveSheet.Rows[i+1].Insert;
          ExcelApp.ActiveSheet.Range[copystart1].PasteSpecial;
          Renum:=Renum-1;
        end;
       //合计制单、审核栏
        MyWorkBook.WorkSheets[k].Cells[i+L+1,5].Value := '=SUM(E'+IntToStr(i)+':E'+IntToStr(i+L)+')'; //
        MyWorkBook.WorkSheets[k].Cells[i+L+1,6].Value := '=round(SUM(E'+IntToStr(i)+':E'+IntToStr(i+L)+')/(1+K5),2)';

        MyWorkBook.WorkSheets[k].Cells[i+L+1,7].Value := '=SUM(G'+IntToStr(i)+':G'+IntToStr(i+L)+')'; //
        MyWorkBook.WorkSheets[k].Cells[i+L+1,8].Value := '=SUM(H'+IntToStr(i)+':H'+IntToStr(i+L)+')'; //
        MyWorkBook.WorkSheets[k].Cells[i+L+1,9].Value := '=SUM(I'+IntToStr(i)+':I'+IntToStr(i+L)+')'; //


        //预结算表
        //合并单元格用
        xh2:=0;
        mdata_List.first;
        P_FWorkItemNum2:=mdata_List.FieldByName('FWorkItemNum').Value;
        xh_FWorkItemNum2:=0;
        while not mdata_List.eof do
        Begin
          MyWorkBook.WorkSheets[k].Cells[i,1].Value := i-7+1;
          MyWorkBook.WorkSheets[k].Cells[i,2].Value := mdata_List.FieldByName('FWorkBudgetName').AsString;
          MyWorkBook.WorkSheets[k].Cells[i,4].Value := mdata_List.FieldByName('FWorkItemNum').AsString;
          MyWorkBook.WorkSheets[k].Cells[i,5].Value := mdata_List.FieldByName('FWorkBudgetAmount').AsString;
          MyWorkBook.WorkSheets[k].Cells[i,6].Value := mdata_List.FieldByName('FWorkBudgetTaxAmount').AsString;
          MyWorkBook.WorkSheets[k].Cells[i,7].Value := mdata_List.FieldByName('FWorkItemBudgetAmount').AsString;
         // MyWorkBook.WorkSheets[k].Cells[i,8].Value := mdata_List.FieldByName('FWorkBudgetItemTaxAmount').AsString;
          MyWorkBook.WorkSheets[k].Cells[i,9].Value := mdata_List.FieldByName('FWorkItemAmount').AsString;
          MyWorkBook.WorkSheets[k].Cells[i,10].Value := mdata_List.FieldByName('FWorkBudgetListRemark').AsString;

          mdata_List.next;
          IF mdata_List.Eof=True then
          begin
            mc2:='';
            P_FWorkItemNum2:='';
          end;
          //合并单元格      FWorkItemNum
          If mdata_List.FieldByName('FWorkItemNum').Value<>P_FWorkItemNum2 then
          begin
            xh_FWorkItemNum2:=xh_FWorkItemNum2+1;
          end
          else
          begin
            RepSpace:=GetRepRange(i,4)+':'+GetRepRange(i-xh_FWorkItemNum2,4);
            ExcelApp.Range[RepSpace].Select;
            ExcelApp.Selection.Merge;
            xh_FWorkItemNum2:=0;
            P_FWorkItemNum2:=mdata_List.FieldByName('FWorkItemNum').Value;
          end;
          //合并单元格     FWorkItemNum
          If mdata_List.FieldByName('FWorkItemNum').Value=mc2 then
          begin
            xh2:=xh2+1;
          end
          else
          begin
            RepSpace:=GetRepRange(i,4)+':'+GetRepRange(i-xh2,4);
            ExcelApp.Range[RepSpace].Select;
            ExcelApp.Selection.Merge;

            RepSpace:=GetRepRange(i,7)+':'+GetRepRange(i-xh2,7);
            ExcelApp.Range[RepSpace].Select;
            ExcelApp.Selection.Merge;

            RepSpace:=GetRepRange(i,8)+':'+GetRepRange(i-xh2,8);
            ExcelApp.Range[RepSpace].Select;
            ExcelApp.Selection.Merge;


            RepSpace:=GetRepRange(i,9)+':'+GetRepRange(i-xh2,9);
            ExcelApp.Range[RepSpace].Select;
            ExcelApp.Selection.Merge;

            xh2:=0;
            mc2:=mdata_List.FieldByName('FWorkItemNum').Value;

          end;

          i:=i+1;
        End;
      end;
      mdata.Next ;
      ExcelApp.Visible:=True;
      MyWorkBook.WorkSheets[k].PrintPreview;  //打印
      ExcelApp.Visible:=False;
      k:=k+1;
    end;
    MyWorkBook.WorkSheets[1].delete; //删除模版
    //stbMsg.Caption:='提示信息：电袋外协预结算表:'+'【'+qry1.FieldByName('FWorkBudgetNum').AsString+'】的信息导出完成!';
    //stbBar.Refresh;
    MyWorkBook.saveas(savefilepath);
    MyWorkBook.Close;
    ExcelApp.Quit;
    ExcelApp:=Unassigned;
  end
  else
  Begin
    Application.MessageBox(PChar('没有可导出的数据，请重新选择'), '数据引出错误', MB_OK + MB_ICONSTOP);
    Exit;
  End;


end;

procedure TFrm_WorkBudget.Act_StatusExecute(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  TB_Edit.Visible:=False;
  TB_Del.Visible:=False;
  TB_Submit.Visible:=False;
  TB_Check.Visible:=False;
  TB_Audit.Visible:=False;

  //制单者是本人
  try
    If TS_Tree.ActivePage=TS_Num then
    begin
      qry.SQL.Text:='Select distinct FStatusID,FFirstLoggingID from V_WorkBudget with(nolock) '
                   +'where FNumber like :FNumber  and FDepartmentID=:FDepartmentID ';
      qry.Parameters.FindParam('FNumber').value:=ListItemFNumber+'%';
    end;
    qry.Parameters.FindParam('FDepartmentID').value:= UserFDepartmentID;
    qry.Open;
  finally
    ;
  end;
   //制单者是本人

  If (qry.RecordCount=1) and (qry.FieldByName('FStatusID').AsInteger=0)
      and (qry.FieldByName('FFirstLoggingID').AsInteger=UserNumID) then
  begin
    If mdata.RecordCount=0 then
    begin
      TB_Del.Visible:=False;
      TB_Edit.Visible:=False;
      TB_Submit.Visible:=False;
    end;
    If mdata.RecordCount>0 then
    begin
      TB_Submit.Visible:=mdlData.PermissionCheckRights(TFrm_WorkBudget.ClassName,'提交');
      TB_Submit.Caption:='批量提交';
      TB_Edit.Visible:=False;
      TB_Del.Visible:=False;
    end;
    If mdata.RecordCount=1 then
    begin
      TB_Edit.Visible:=mdlData.PermissionCheckRights(TFrm_WorkBudget.ClassName,'修改');
      TB_Del.Visible:=mdlData.PermissionCheckRights(TFrm_WorkBudget.ClassName,'删除');
      TB_Submit.Visible:=mdlData.PermissionCheckRights(TFrm_WorkBudget.ClassName,'提交');
      TB_Submit.Caption:='提交';
    end;
    Exit;
  end;

   //提交者是本人
  If (qry.RecordCount=1) and (qry.FieldByName('FStatusID').AsInteger=1)
     and (qry.FieldByName('FFirstLoggingID').AsInteger=UserNumID) then
  begin
    TB_Submit.Visible:=mdlData.PermissionCheckRights(TFrm_WorkBudget.ClassName,'提交');
    If MData.RecordCount=0 then
       TB_Submit.Visible:=False;
    If MData.RecordCount>0 then
       TB_Submit.Caption:='批量提交撤回';
    If MData.RecordCount=1 then
       TB_Submit.Caption:='提交撤回';
    TB_Edit.Visible:=False;
    TB_Del.Visible:=False;
    Exit;
  end;


   //校对
  try
    If TS_Tree.ActivePage=TS_Num then
    begin
      qry.SQL.Text:='Select distinct FStatusID from V_WorkBudget with(nolock) '
                   +'where  FNumber like :FNumber and FDepartmentID=:FDepartmentID ';
      qry.Parameters.FindParam('FNumber').value:=ListItemFNumber+'%';
    end;
    qry.Parameters.FindParam('FDepartmentID').value:= UserFDepartmentID;
    qry.Open;
  finally
    ;
  end;
  If (qry.RecordCount>1)  then
     Exit;
  If (qry.RecordCount=1) and (qry.FieldByName('FStatusID').AsInteger=1) then
  begin
    If MData.RecordCount=0 then
    begin
      TB_Check.Visible:=False;
    end;
    If MData.RecordCount>0 then
    begin
      TB_Check.Visible:=mdlData.PermissionCheckRights(TFrm_WorkBudget.ClassName,'校对');
      TB_Check.Caption:='批量校对';
    end;
    If MData.RecordCount=1 then
    begin
      TB_Check.Visible:=mdlData.PermissionCheckRights(TFrm_WorkBudget.ClassName,'校对');
      TB_Check.Caption:='校对';
    end;
   //Exit;
  end;


  If (qry.RecordCount=1) and (qry.FieldByName('FStatusID').AsInteger=2) then
  begin
    TB_Check.Visible:=mdlData.PermissionCheckRights(TFrm_WorkBudget.ClassName,'校对');
    If MData.RecordCount=0 then
       TB_Check.Visible:=False;
    If MData.RecordCount>0 then
       TB_Check.Caption:='批量校对撤回';
    If MData.RecordCount=1 then
       TB_Check.Caption:='校对撤回';
   // Exit;
  end;


    //审核
  try
    If TS_Tree.ActivePage=TS_Num then
    begin
      qry.SQL.Text:='Select distinct FStatusID from V_WorkBudget with(nolock) '
                   +'where  FNumber like :FNumber and FDepartmentID=:FDepartmentID ';
      qry.Parameters.FindParam('FNumber').value:=ListItemFNumber+'%';
    end;
    qry.Parameters.FindParam('FDepartmentID').value:= UserFDepartmentID;
    qry.Open;
  finally
    ;
  end;
  If (qry.RecordCount>1)  then
     Exit;
  If (qry.RecordCount=1) and (qry.FieldByName('FStatusID').AsInteger=2) then
  begin
    If MData.RecordCount=0 then
    begin
      TB_Audit.Visible:=False;
    end;
    If MData.RecordCount>0 then
    begin
      TB_Audit.Visible:=mdlData.PermissionCheckRights(TFrm_WorkBudget.ClassName,'审核');
      TB_Audit.Caption:='批量审核';
    end;
    If MData.RecordCount=1 then
    begin
      TB_Audit.Visible:=mdlData.PermissionCheckRights(TFrm_WorkBudget.ClassName,'审核');
      TB_Audit.Caption:='审核';
    end;
  end;


  If (qry.RecordCount=1) and (qry.FieldByName('FStatusID').AsInteger=3) then
  begin
    TB_Audit.Visible:=mdlData.PermissionCheckRights(TFrm_WorkBudget.ClassName,'审核');
    If MData.RecordCount=0 then
       TB_Audit.Visible:=False;
    If MData.RecordCount>0 then
       TB_Audit.Caption:='批量审核撤回';
    If MData.RecordCount=1 then
       TB_Audit.Caption:='审核撤回';
  end;



end;

procedure TFrm_WorkBudget.TB_SubmitClick(Sender: TObject);
var
 qry,qryDate:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qryDate:=TAdoQuery.Create(self);
  qryDate.ConnectionString:=mdlData.ReadConnStr;
  P_state:=3;
  If (TB_Submit.Caption='提交') or (TB_Submit.Caption='批量提交') then
  begin
    If application.MessageBox(Pchar('系统提示：是否对预结算单号为：'+ListItemFNumber+'的单据进行提交？'+chr(13)+chr(13)
                                   +'确定要提交对本单据吗？'),'系统提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      MData.First;
      while not MData.eof do
      begin
        try
          qry.SQL.Text:='Update T_WorkBudget Set FStatusID=1,FSubmitDate=:FSubmitDate  where FWorkBudgetID=:FWorkBudgetID';
          qry.Parameters.FindParam('FSubmitDate').value:= S_SyStemDate(qryDate);
          qry.Parameters.FindParam('FWorkBudgetID').value:=MData['FWorkBudgetID'];
          qry.ExecSQL;
        finally
          ;
        end;
        MData.Edit;
        MData['FStatusID']:=1;
        MData['FStatus']:='提交';
        MData['FSubmitDate']:=S_SyStemDate(qryDate);
        MData.Post;
        //Act_PlanWeek_Update.Execute;//更新三个表数据 20161124
        Act_Update.Execute;     //更新主表合计
        MData.Next;
      end;
      If MData.RecordCount=1 then
      begin
        application.MessageBox('提交完毕！','系统提示',MB_ICONINFORMATION);
        TB_Submit.Caption:='提交撤回';
      end;
      If MData.RecordCount>1 then
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
    If application.MessageBox(Pchar('系统提示：是否对预结算单号为：'+ListItemFNumber+'的单据进行提交撤回？'+chr(13)+chr(13)
                                     +'确定要对本单据提交撤回吗？'),'系统提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      MData.First;
      while not MData.eof do
      begin
        try
          qry.SQL.Text:='Update T_WorkBudget Set FStatusID=0,FSubmitDate=:FSubmitDate where FWorkBudgetID=:FWorkBudgetID';
          qry.Parameters.FindParam('FSubmitDate').value:= Null;
          qry.Parameters.FindParam('FWorkBudgetID').value:= MData['FWorkBudgetID'];
          qry.ExecSQL;
        finally
          ;
        end;
        MData.Edit;
        MData['FStatusID']:=0;
        MData['FStatus']:='填单';
        MData['FSubmitDate']:=Null;
        MData.Post;
        //Act_PlanWeek_Update.Execute;//更新三个表数据 20161124
        Act_Update.Execute;  //更新主表合计
        MData.Next;
      end;
      If MData.RecordCount=1 then
      begin
        application.MessageBox('提交撤回完毕！','系统提示',MB_ICONINFORMATION);
        TB_Submit.Caption:='提交';
      end;
      If MData.RecordCount>1 then
      begin
        application.MessageBox('批量提交撤回完毕！','系统提示',MB_ICONINFORMATION);
        TB_Submit.Caption:='批量提交';
      end;
      Act_Status.Execute;  //权限设置
    end;
    P_state:=2;
    Exit;
  end;

end;

procedure TFrm_WorkBudget.TB_CheckClick(Sender: TObject);
var
 qry,qryDate:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qryDate:=TAdoQuery.Create(self);
  qryDate.ConnectionString:=mdlData.ReadConnStr;
  P_state:=3;
  If (TB_Check.Caption='校对') or (TB_Check.Caption='批量校对') then
  begin
    If application.MessageBox(Pchar('系统提示：是否对预结算单号为：'+ListItemFNumber+'的单据进行校对？'+chr(13)+chr(13)
                                   +'确定要校对对本单据吗？'),'系统提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      MData.First;
      while not MData.eof do
      begin
        try
          qry.SQL.Text:='Update T_WorkBudget Set FStatusID=2,FAuditID_1=:FAuditID_1,FAuditDate_1=:FAuditDate_1 '
                       +' where FWorkBudgetID=:FWorkBudgetID';
          qry.Parameters.FindParam('FAuditID_1').value:= UserNumID;
          qry.Parameters.FindParam('FAuditDate_1').value:= S_SyStemDate(qryDate);
          qry.Parameters.FindParam('FWorkBudgetID').value:=MData['FWorkBudgetID'];
          qry.ExecSQL;
        finally
          ;
        end;
        MData.Edit;
        MData['FStatusID']:=2;
        MData['FStatus']:='校对';
        MData['FAuditDate_1']:=S_SyStemDate(qryDate);
        MData.Post;
        //Act_PlanWeek_Update.Execute;//更新三个表数据 20161124

        MData.Next;
      end;
      If MData.RecordCount=1 then
      begin
        application.MessageBox('校对完毕！','系统提示',MB_ICONINFORMATION);
        TB_Check.Caption:='校对撤回';
      end;
      If MData.RecordCount>1 then
      begin
        application.MessageBox('校对提交完毕！','系统提示',MB_ICONINFORMATION);
        TB_Check.Caption:='校对提交撤回';
      end;
      Act_Status.Execute;  //权限设置
    end;
    P_state:=2;
    Exit;
  end;
  If (TB_Check.Caption='校对撤回') or (TB_Check.Caption='批量校对撤回')  then
  begin
    If application.MessageBox(Pchar('系统提示：是否对预结算单号为：'+ListItemFNumber+'的单据进行校对撤回？'+chr(13)+chr(13)
                                     +'确定要对本单据校对撤回吗？'),'系统提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      MData.First;
      while not MData.eof do
      begin
        try
          qry.SQL.Text:='Update T_WorkBudget Set FStatusID=1,FAuditID_1=:FAuditID_1,FAuditDate_1=:FAuditDate_1 '
                       +' where FWorkBudgetID=:FWorkBudgetID';
          qry.Parameters.FindParam('FAuditID_1').value:= 0;
          qry.Parameters.FindParam('FAuditDate_1').value:= Null;
          qry.Parameters.FindParam('FWorkBudgetID').value:= MData['FWorkBudgetID'];
          qry.ExecSQL;
        finally
          ;
        end;
        MData.Edit;
        MData['FStatusID']:=1;
        MData['FStatus']:='提交';
        MData['FAuditDate_1']:=Null;
        MData.Post;
        //Act_PlanWeek_Update.Execute;//更新三个表数据 20161124
        MData.Next;
      end;
      If MData.RecordCount=1 then
      begin
        application.MessageBox('校对撤回完毕！','系统提示',MB_ICONINFORMATION);
        TB_Check.Caption:='校对';
      end;
      If MData.RecordCount>1 then
      begin
        application.MessageBox('批量校对撤回完毕！','系统提示',MB_ICONINFORMATION);
        TB_Check.Caption:='批量校对';
      end;
      Act_Status.Execute;  //权限设置
    end;
    P_state:=2;
    Exit;
  end;


end;

procedure TFrm_WorkBudget.TB_AuditClick(Sender: TObject);
var
 qry,qryDate:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qryDate:=TAdoQuery.Create(self);
  qryDate.ConnectionString:=mdlData.ReadConnStr;
  P_state:=3;
  If (TB_Audit.Caption='审核') or (TB_Audit.Caption='批量审核') then
  begin
    If application.MessageBox(Pchar('系统提示：是否对预结算单号为：'+ListItemFNumber+'的单据进行审核？'+chr(13)+chr(13)
                                   +'确定要审核对本单据吗？'),'系统提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      MData.First;
      while not MData.eof do
      begin
        try
          qry.SQL.Text:='Update T_WorkBudget Set FStatusID=3,FAuditID_2=:FAuditID_2,FAuditDate_2=:FAuditDate_2 '
                       +' where FWorkBudgetID=:FWorkBudgetID';
          qry.Parameters.FindParam('FAuditID_2').value:= UserNumID;
          qry.Parameters.FindParam('FAuditDate_2').value:= S_SyStemDate(qryDate);
          qry.Parameters.FindParam('FWorkBudgetID').value:=MData['FWorkBudgetID'];
          qry.ExecSQL;
        finally
          ;
        end;
        MData.Edit;
        MData['FStatusID']:=3;
        MData['FStatus']:='审核';
        MData['FAuditDate_2']:=S_SyStemDate(qryDate);
        MData.Post;
        //Act_PlanWeek_Update.Execute;//更新三个表数据 20161124

        MData.Next;
      end;
      If MData.RecordCount=1 then
      begin
        application.MessageBox('审核完毕！','系统提示',MB_ICONINFORMATION);
        TB_Audit.Caption:='审核撤回';
      end;
      If MData.RecordCount>1 then
      begin
        application.MessageBox('审核提交完毕！','系统提示',MB_ICONINFORMATION);
        TB_Audit.Caption:='审核提交撤回';
      end;
      Act_Status.Execute;  //权限设置
    end;
    P_state:=2;
    Exit;
  end;
  If (TB_Audit.Caption='审核撤回') or (TB_Audit.Caption='批量审核撤回')  then
  begin
    If application.MessageBox(Pchar('系统提示：是否对预结算单号为：'+ListItemFNumber+'的单据进行审核撤回？'+chr(13)+chr(13)
                                     +'确定要对本单据审核撤回吗？'),'系统提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      MData.First;
      while not MData.eof do
      begin
        try
          qry.SQL.Text:='Update T_WorkBudget Set FStatusID=2,FAuditID_2=:FAuditID_2,FAuditDate_2=:FAuditDate_2 '
                       +' where FWorkBudgetID=:FWorkBudgetID';
          qry.Parameters.FindParam('FAuditID_2').value:= 0;
          qry.Parameters.FindParam('FAuditDate_2').value:= Null;
          qry.Parameters.FindParam('FWorkBudgetID').value:= MData['FWorkBudgetID'];
          qry.ExecSQL;
        finally
          ;
        end;
        MData.Edit;
        MData['FStatusID']:=2;
        MData['FStatus']:='校对';
        MData['FAuditDate_2']:=Null;
        MData.Post;
        //Act_PlanWeek_Update.Execute;//更新三个表数据 20161124
        MData.Next;
      end;
      If MData.RecordCount=1 then
      begin
        application.MessageBox('审核撤回完毕！','系统提示',MB_ICONINFORMATION);
        TB_Audit.Caption:='审核';
      end;
      If MData.RecordCount>1 then
      begin
        application.MessageBox('批量审核撤回完毕！','系统提示',MB_ICONINFORMATION);
        TB_Audit.Caption:='批量审核';
      end;
      Act_Status.Execute;  //权限设置
    end;
    P_state:=2;
    Exit;
  end;


end;

procedure TFrm_WorkBudget.Act_WorkBudgetListExecute(Sender: TObject);
var
 qry:TADOquery;
 i:Integer;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  //项目变更附表更新
  try
    qry.SQL.Text:='Select IsEdit=cast(0 as bit),IsApp=cast(1 as bit),* from V_WorkBudgetList with(nolock) where FWorkBudgetID=0';
    qry.Open;
  finally
     ;
  end;
  Mdata_List.DisableControls;
  Mdata_List.CopyFromDataSet(qry);
  Mdata_List.Active;
  Mdata_List.EnableControls;

  try
    qry.SQL.Text:='Select * from  V_WorkItem with(nolock) '
                 +'where FItemID=:FItemID and FAgentID=:FAgentID ';
    qry.Parameters.FindParam('FItemID').value:=mData['FItemID'];
    qry.Parameters.FindParam('FAgentID').value:=mData['FAgentID'];
    qry.Open;
  finally
    ;
  end;

  for i:=1 to qry.RecordCount+5 do
  begin
    mdata_List.Append;
    mdata_List['IsEdit']:=0;
    mdata_List['IsApp']:=1;
    mdata_List.Post;
  end;
  Mdata_List.First;


  If qry.RecordCount>0 then
  begin
    qry.First;
    mData_List.First;
    while not qry.Eof  do
    begin
      mData_List.Edit;
      mData_List['FWorkItemID']:=qry.FieldByName('FWorkItemID').Value;
      mData_List['FWorkItemNum']:=qry.FieldByName('FWorkItemNum').Value;
      mData_List['FWorkItemDate']:=qry.FieldByName('FWorkItemDate').Value;
      mData_List['FBranchFileNo']:=qry.FieldByName('FBranchFileNo').Value;
      mData_List['FClientShortName']:=qry.FieldByName('FClientShortName').Value;
      mData_List['FBranchItemNumber']:=qry.FieldByName('FBranchItemNumber').Value;
      mData_List['FAgentName']:=qry.FieldByName('FAgentName').Value;
      mData_List['FWorkItemAmount']:=qry.FieldByName('FWorkItemAmount').Value;
      mData_List['FWorkItemInvoiceAmount']:=qry.FieldByName('FWorkItemInvoiceAmount').Value;
      mData_List['FWorkItemBalanceAmount']:=qry.FieldByName('FWorkItemBalanceAmount').Value;
      mData_List['FWorkItemBudgetAmount']:=qry.FieldByName('FWorkItemBudgetAmount').Value;
      mData_List['FWorkItemPayMentAmount']:=qry.FieldByName('FWorkItemPayMentAmount').Value;
      mData_List['FTaxRate']:=qry.FieldByName('FTaxRate').Value;
      mData_List.Post;
      mData_List.Next;
      qry.Next;
    end;
  end

end;

procedure TFrm_WorkBudget.cxGV_WorkListDblClick(Sender: TObject);
begin
  inherited;
  RzSP_PTitem.Visible:=False;
end;

procedure TFrm_WorkBudget.cxGVFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;
  Act_Change.Execute;
end;

procedure TFrm_WorkBudget.ToolButton2Click(Sender: TObject);
var
  Query_Sp:TADOStoredProc;
  i,k,ReNum,R_Count,L:Integer;
  ExcelApp,MyWorkBook,vLastSheet: Variant;
  filepath,savefilepath,copystart,copyend,copystart1:string;
  qry,qry1:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry1:=TAdoQuery.Create(self);
  qry1.ConnectionString:=mdlData.ReadConnStr;
  qry.EnableBCD:=False;//小数位数>4
  qry1.EnableBCD:=False;//小数位数>4

 { If  mdata.RecordCount>1 then
  begin
    application.MessageBox('请选择单条记录！','系统提示',MB_ICONINFORMATION);
    Exit;
  end;}

 // P_List:=mdata['FWorkBudgetNum'];

  filepath:=Extractfilepath(application.ExeName)+'电袋外协预结算表模版.xls';
  if (mdata.Active) and (mdata.recordcount>0) then
  Begin
    SaveDialog1.FileName:='电袋外协预结算表('+mdata['FWorkBudgetNum']+')';
    SaveDialog1.Filter:='.xls';
    SaveDialog1.Execute;

    if (mdata.FieldByName('FWorkBudgetNum').AsString<>'') Or (mdata.FieldByName('FWorkBudgetNum').AsString<>Null) then
        savefilepath:=SaveDialog1.FileName+'.xls';

    if FileExists(savefilepath) then
    begin
      DeleteFile(savefilepath) ;
    end;
   // stbMsg.Caption:='提示信息：正在导出电袋外协预结算表:'+'【'+mdata.FieldByName('FWorkBudgetNum').AsString+'】';
   // stbBar.Refresh;

    ExcelApp:= CreateOleObject('Excel.Application' );
    ExcelApp.Visible:=False;  //工作表显示

    ExcelApp.DisplayAlerts:=False;                  //不显示提示框
    MyWorkBook:=ExcelApp.WorkBooks.Open( filepath );   //打开模版

    try
      qry.SQL.Text:='select distinct FWorkBudgetID,FWorkBudgetNum from V_WorkBudget with(nolock) '
                  +' where FNumber like :FNumber ';
      qry.Parameters.FindParam('FNumber').value:= ListItemFNumber+'%';
      qry.Open;
    finally
      ;
    end;

    If qry.RecordCount>0 then
       k:=2
    else
       Exit;

   qry.First;
   while not qry.eof do
   begin
     try
       qry1.SQL.Text:='Select IsEdit=cast(0 as bit),IsApp=cast(0 as bit),* from V_WorkBudgetList where FWorkBudgetID=:FWorkBudgetID ';
       qry1.Parameters.FindParam('FWorkBudgetID').value:= qry.FieldByName('FWorkBudgetID').Value;
       qry1.Open;
     finally
       ;
     end;
     if qry1.RecordCount>0 then
     begin
       mdata_List.Close;
       mdata_List.CopyFromDataSet(qry1);
     end;
     mdata_List.First;
     qry1.First;
     vLastSheet:=MyWorkBook.Sheets[MyWorkBook.Sheets.Count];
     MyWorkBook.Sheets[1].Copy(EmptyParam,vLastSheet);
     MyWorkBook.WorkSheets[k].Name:=IntToStr(k)+qry.FieldByName('FWorkBudgetNum').AsString ;
     MyWorkBook.WorkSheets[k].Activate;

      //标题
       if (qry1['FWorkData']='电袋事业部') or (qry1['FWorkData']='电袋与管带事业部') then
         MyWorkBook.WorkSheets[k].Cells[1,1].Value:=AnsiReplaceStr(MyWorkBook.WorkSheets[k].Cells[1,1].Value,'B','福建龙净环保股份有限公司'); //公司名称
      if (qry1['FWorkData']='电袋事业部(厦门)') or (qry1['FWorkData']='电袋与管带事业部(厦门)') then
         MyWorkBook.WorkSheets[k].Cells[1,1].Value:=AnsiReplaceStr(MyWorkBook.WorkSheets[k].Cells[1,1].Value,'B','厦门龙净环保技术有限公司'); //公司名称

      if FloatToStr(qry1['FTaxRate']*100)+'%'='11%' then
         MyWorkBook.WorkSheets[k].Cells[2,1].Value := qry1['FWorkData']+'设备运输预结算表'
      else
         MyWorkBook.WorkSheets[k].Cells[2,1].Value := qry1['FWorkData']+'外协加工预结算表';

      if FloatToStr(qry1['FTaxRate']*100)+'%'='11%' then
         MyWorkBook.WorkSheets[k].Cells[4,1].Value := '承运单位：'
      else
         MyWorkBook.WorkSheets[k].Cells[4,1].Value := '生产单位：';

      MyWorkBook.WorkSheets[k].Cells[4,3].Value := Trim(qry1.FieldByName('FAgentName').AsString);
      MyWorkBook.WorkSheets[k].Cells[4,7].Value := Trim(qry1.FieldByName('FBranchFileNo').AsString);
      MyWorkBook.WorkSheets[k].Cells[4,10].Value := Trim(qry1.FieldByName('FDepartmentNum').AsString)+'-YJ-'+Trim(qry1.FieldByName('FWorkBudgetNum').AsString);

      MyWorkBook.WorkSheets[k].Cells[5,3].Value := Trim(qry1.FieldByName('FClientShortName').AsString);
      MyWorkBook.WorkSheets[k].Cells[5,7].Value := Trim(qry1.FieldByName('FBranchItemNumber').AsString);
      MyWorkBook.WorkSheets[k].Cells[5,10].Value :=FloatToStr(qry1['FTaxRate']*100)+'%';


      //循环行开始
      i:=7;

       //工作薄名称
      MyWorkBook.WorkSheets[k].Name:=qry.FieldByName('FWorkBudgetNum').AsString;
      copystart:='A'+IntToStr(i);
      if qry1.recordcount>0 then
      Begin
        copystart:='A'+IntToStr(i);
        copystart1:='A'+IntToStr(i+1);
        copyend:='K'+IntToStr(i);  //区域
        If ((qry1.RecordCount+1) mod 10)>0 then
        begin
          ReNum:=qry1.RecordCount+(10-((qry1.RecordCount+1) mod 10))-1;
          L:=qry1.RecordCount+(10-((qry1.RecordCount+1) mod 10))-1;
        end
        else
        begin
          ReNum:=qry1.RecordCount-1;
          L:=mdata_List.RecordCount-1;
        end;
        while ReNum>0 do
        Begin
          ExcelApp.ActiveSheet.Range[copystart+':'+copyend].Copy;
          ExcelApp.ActiveSheet.Rows[i+1].Insert;
          ExcelApp.ActiveSheet.Range[copystart1].PasteSpecial;
          Renum:=Renum-1;
        end;
       //合计制单、审核栏
        MyWorkBook.WorkSheets[k].Cells[i+L+1,6].Value := '=SUM(F7:F'+IntToStr(i+L)+')'; //
        MyWorkBook.WorkSheets[k].Cells[i+L+1,7].Value := '=round(SUM(F7:F'+IntToStr(i+L)+')/(1+J5),2)';

          //制单、审核栏
        MyWorkBook.WorkSheets[k].Cells[i+L+2,9].Value:=qry1.FieldByName('FFirstLogging').AsString; //制单
        MyWorkBook.WorkSheets[k].Cells[i+L+2,10].Value:=datetostr(date());

        qry1.first;
        while not qry1.eof do
        Begin
          MyWorkBook.WorkSheets[k].Cells[i,1].Value := i-7+1;
          MyWorkBook.WorkSheets[k].Cells[i,2].Value := qry1.FieldByName('FWorkBudgetName').AsString;
          MyWorkBook.WorkSheets[k].Cells[i,6].Value := qry1.FieldByName('FWorkbudgetAmount').AsString;
          MyWorkBook.WorkSheets[k].Cells[i,7].Value := qry1.FieldByName('FWorkBudgetTaxAmount').AsString;
          MyWorkBook.WorkSheets[k].Cells[i,8].Value := qry1.FieldByName('FWorkItemNum').AsString;
          MyWorkBook.WorkSheets[k].Cells[i,9].Value := qry1.FieldByName('FWorkBudgetListRemark').AsString;
          qry1.next;
          i:=i+1;
        End;
      end;
      qry.Next ;
      ExcelApp.Visible:=True;
      MyWorkBook.WorkSheets[k].PrintPreview;  //打印
      ExcelApp.Visible:=False;
      k:=k+1;
    end;
    MyWorkBook.WorkSheets[1].delete; //删除模版
    //stbMsg.Caption:='提示信息：电袋外协预结算表:'+'【'+qry1.FieldByName('FWorkBudgetNum').AsString+'】的信息导出完成!';
    //stbBar.Refresh;
    MyWorkBook.saveas(savefilepath);
    MyWorkBook.Close;
    ExcelApp.Quit;
    ExcelApp:=Unassigned;
  end
  else
  Begin
    Application.MessageBox(PChar('没有可导出的数据，请重新选择'), '数据引出错误', MB_OK + MB_ICONSTOP);
    Exit;
  End;


end;

end.
