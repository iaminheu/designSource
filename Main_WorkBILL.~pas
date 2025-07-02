unit Main_WorkBILL;

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
  TFrm_WorkBILL = class(TFrm_GridBass)
    ImageList: TImageList;
    Panel_EditButton: TPanel;
    ToolBar1: TToolBar;
    ToolButton5: TToolButton;
    ToolButton1: TToolButton;
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
    Panel_Edit_1: TPanel;
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
    Act_Update: TAction;
    FlatPanel1: TFlatPanel;
    E_FWorkItemDate: TcxDBDateEdit;
    FlatPanel3: TFlatPanel;
    E_FWorkItemAmount: TcxDBCurrencyEdit;
    cxGrid_Item: TcxGrid;
    cxGV_Item: TcxGridDBBandedTableView;
    XH: TcxGridDBBandedColumn;
    FClientShortName_Item: TcxGridDBBandedColumn;
    FDeliveryPlace_Item: TcxGridDBBandedColumn;
    FWorkWrite: TcxGridDBBandedColumn;
    FWorkWriteDate: TcxGridDBBandedColumn;
    FWorkCheck: TcxGridDBBandedColumn;
    FWorkCheckDate: TcxGridDBBandedColumn;
    cxGL_Item: TcxGridLevel;
    FAgentNameQry: TcxGridDBBandedColumn;
    FlatPanel6: TFlatPanel;
    FlatPanel2: TFlatPanel;
    E_FWorkItemNum: TcxDBButtonEdit;
    FlatPanel4: TFlatPanel;
    TS_Num: TTabSheet;
    Act_MaxID_List: TAction;
    Act_ItemNum: TAction;
    E_FWorkItemNo: TcxDBCurrencyEdit;
    Act_MaxNum: TAction;
    Act_Menu_Band: TAction;
    Act_Menu_Set_Band: TAction;
    PM_Band: TPopupMenu;
    N_Edit_Band: TMenuItem;
    N_Filter_Band: TMenuItem;
    N_Sort_band: TMenuItem;
    N_Group_band: TMenuItem;
    N_Set_band: TMenuItem;
    N_Out_band: TMenuItem;
    FStatusNotes_Item: TcxGridDBBandedColumn;
    FWorkItemNum_Item: TcxGridDBBandedColumn;
    FWorkItemDate_Item: TcxGridDBBandedColumn;
    FSystem_Item: TcxGridDBBandedColumn;
    FJobMode_Item: TcxGridDBBandedColumn;
    FBidDate_Item: TcxGridDBBandedColumn;
    FAdvancePercent_Item: TcxGridDBBandedColumn;
    FE05_Item: TcxGridDBBandedColumn;
    FJobPlace_Item: TcxGridDBBandedColumn;
    FWorkAudit: TcxGridDBBandedColumn;
    FWorkAuditDate: TcxGridDBBandedColumn;
    FBranchFileNo_Item: TcxGridDBBandedColumn;
    FItemNumber_Item: TcxGridDBBandedColumn;
    FItemQry_Item: TcxGridDBBandedColumn;
    FItemModel_Item: TcxGridDBBandedColumn;
    cxGrid_List: TcxGrid;
    cxGV_List: TcxGridDBTableView;
    FIsDelList_List: TcxGridDBColumn;
    FWorkListNum_List: TcxGridDBColumn;
    FNumber1_List: TcxGridDBColumn;
    FBalanceName_List: TcxGridDBColumn;
    FBalanceModel_List: TcxGridDBColumn;
    FUnitName_List: TcxGridDBColumn;
    FWorkResizePrice_List: TcxGridDBColumn;
    FEstimateQry_List: TcxGridDBColumn;
    FBalanceBasePrice_List: TcxGridDBColumn;
    FWorkOutPrice_List: TcxGridDBColumn;
    FOutPrice_List: TcxGridDBColumn;
    FWorkItemPrice_List: TcxGridDBColumn;
    FEstimateAmount_List: TcxGridDBColumn;
    FWorkListRemark_List: TcxGridDBColumn;
    FDeliveryDate_List: TcxGridDBColumn;
    FBalanceWorkAdjust_List: TcxGridDBColumn;
    FBalanceAdjust_List: TcxGridDBColumn;
    FBalancePrice_List: TcxGridDBColumn;
    SumFBalanceQry_List: TcxGridDBColumn;
    SumFBalanceAmount_List: TcxGridDBColumn;
    FRemark_List: TcxGridDBColumn;
    FWorkItemNum_List: TcxGridDBColumn;
    FMaterialDate_List: TcxGridDBColumn;
    FWorkDate_List: TcxGridDBColumn;
    FBalanceID_List: TcxGridDBColumn;
    FBalancePriceID_List: TcxGridDBColumn;
    FItemID_List: TcxGridDBColumn;
    FWorkListID_List: TcxGridDBColumn;
    FBalanceProductName_List: TcxGridDBColumn;
    FProductClass_List: TcxGridDBColumn;
    cxGL_List: TcxGridLevel;
    FWorkItemAmount_Item: TcxGridDBBandedColumn;
    FWorkItemInvoiceAmount_Item: TcxGridDBBandedColumn;
    FWorkItemBalanceAmount_Item: TcxGridDBBandedColumn;
    cxGV_ItemDBBandedColumn4: TcxGridDBBandedColumn;
    Act_Ref: TAction;
    TS_WorkItem: TTabSheet;
    TS_Agent: TTabSheet;
    TabSheet2: TTabSheet;
    cxGrid_Balance: TcxGrid;
    cxGV_Balance: TcxGridDBTableView;
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
    FBalanceRemark_Balance: TcxGridDBColumn;
    FBalanceNum_Balance: TcxGridDBColumn;
    FWorkItemNum_Balance: TcxGridDBColumn;
    FAgentName_Balance: TcxGridDBColumn;
    FProductClass_Balance: TcxGridDBColumn;
    FPartsCode_Balance: TcxGridDBColumn;
    FBalanceBasePrice_Balance: TcxGridDBColumn;
    FWorkOutPrice_Balance: TcxGridDBColumn;
    FOutPrice_Balance: TcxGridDBColumn;
    cxGL_Balance: TcxGridLevel;
    MData_Balance: TdxMemData;
    DS_Mdata_Balance: TDataSource;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    cxGrid_Invoice: TcxGrid;
    cxGV_Invoice: TcxGridDBTableView;
    FWorkInvoiceItemDate_Invoice: TcxGridDBColumn;
    FWorkInvoiceNum_Invoice: TcxGridDBColumn;
    FWorkInvoiceAmount_Invoice: TcxGridDBColumn;
    cxGL_Invoice: TcxGridLevel;
    FWorkInvoiceItemNum_Invoice: TcxGridDBColumn;
    MData_Invoice: TdxMemData;
    DS_Mdata_Invoice: TDataSource;
    FMaterialDate_Item: TcxGridDBBandedColumn;
    FlatPanel5: TFlatPanel;
    FlatPanel7: TFlatPanel;
    FlatPanel8: TFlatPanel;
    FlatPanel9: TFlatPanel;
    FlatPanel11: TFlatPanel;
    FlatPanel12: TFlatPanel;
    FlatPanel13: TFlatPanel;
    E_FClientFullName: TcxDBButtonEdit;
    E_FAgentName: TcxDBButtonEdit;
    FlatPanel14: TFlatPanel;
    E_FBranchItemNumber: TcxDBButtonEdit;
    E_FBranchFileNo: TcxDBButtonEdit;
    FlatPanel15: TFlatPanel;
    FlatPanel16: TFlatPanel;
    FlatPanel17: TFlatPanel;
    E_FDeliveryPlace: TcxDBButtonEdit;
    E_FJobPlace: TcxDBButtonEdit;
    E_FJobMode: TcxDBButtonEdit;
    E_FWorkData: TcxDBButtonEdit;
    E_FMaterialDate: TcxDBButtonEdit;
    RzSize_Price: TRzSizePanel;
    cxGrid_Price: TcxGrid;
    cxGV_Price: TcxGridDBTableView;
    FProductName_Price: TcxGridDBColumn;
    FNumber_Price: TcxGridDBColumn;
    FBalanceName_Price: TcxGridDBColumn;
    FBalanceModel_Price: TcxGridDBColumn;
    FUnitName_Price: TcxGridDBColumn;
    FBalanceBasePrice_Price: TcxGridDBColumn;
    FMaterialPrice_Price: TcxGridDBColumn;
    FWorkResizePrice_Price: TcxGridDBColumn;
    FWorkPrice_Price: TcxGridDBColumn;
    FRemark_Price: TcxGridDBColumn;
    FMaterialDate_Price: TcxGridDBColumn;
    FBalancePriceID_Price: TcxGridDBColumn;
    cxGL_Price: TcxGridLevel;
    MData_Price: TdxMemData;
    DS_Mdata_Price: TDataSource;
    Act_AgentNUm: TAction;
    E_FE05: TcxDBButtonEdit;
    FlatPanel18: TFlatPanel;
    E_FIsdel: TcxDBCheckBox;
    Act_MaxItemNum: TAction;
    Act_Sel: TAction;
    TabSheet6: TRzTabSheet;
    cxGrid_F: TcxGrid;
    cxGV_F: TcxGridDBTableView;
    FIsDelList_F: TcxGridDBColumn;
    FWorkListNum_F: TcxGridDBColumn;
    FNumber_F: TcxGridDBColumn;
    FBalanceName_F: TcxGridDBColumn;
    FBalanceModel_F: TcxGridDBColumn;
    FUnitName_F: TcxGridDBColumn;
    FWorkResizePrice_F: TcxGridDBColumn;
    FEstimateQry_F: TcxGridDBColumn;
    FBalanceBasePrice_F: TcxGridDBColumn;
    FWorkOutPrice_F: TcxGridDBColumn;
    FOutPrice_F: TcxGridDBColumn;
    FWorkItemPrice_F: TcxGridDBColumn;
    FEstimateAmount_F: TcxGridDBColumn;
    FWorkListRemark_F: TcxGridDBColumn;
    FDeliveryDateTxt_F: TcxGridDBColumn;
    FBalanceWorkAdjust_F: TcxGridDBColumn;
    FBalanceAdjust_F: TcxGridDBColumn;
    FBalancePrice_F: TcxGridDBColumn;
    SumFBalanceQry_F: TcxGridDBColumn;
    SumFBalanceAmount_F: TcxGridDBColumn;
    FRemark_F: TcxGridDBColumn;
    FWorkItemNum_F: TcxGridDBColumn;
    FMaterialDate_F: TcxGridDBColumn;
    FWorkDate_F: TcxGridDBColumn;
    FBalanceID_F: TcxGridDBColumn;
    FBalancePriceID_F: TcxGridDBColumn;
    FItemID_F: TcxGridDBColumn;
    FWorkListID_F: TcxGridDBColumn;
    FBalanceProductName_F: TcxGridDBColumn;
    FProductClass_F: TcxGridDBColumn;
    cxGL_F: TcxGridLevel;
    E_FWorkPaymentWay: TcxDBButtonEdit;
    FBalanceFullName_Price: TcxGridDBColumn;
    TB_Submit: TToolButton;
    TB_Check: TToolButton;
    TB_Audit: TToolButton;
    TB_PushDown: TToolButton;
    Act_Status: TAction;
    frReport: TfrReport;
    frDBDataSet: TfrDBDataSet;
    TB_Prin_xls: TToolButton;
    Act_Print_Work: TAction;
    Act_Print_Work_YS: TAction;
    E_FBidNum: TcxDBButtonEdit;
    FWorkPaymentWay_Item: TcxGridDBBandedColumn;
    FBidNum_Item: TcxGridDBBandedColumn;
    XH_Price: TcxGridDBColumn;
    Panel1: TPanel;
    ToolBar2: TToolBar;
    ToolButton2: TToolButton;
    ToolButton7: TToolButton;
    Panel_OK: TPanel;
    Panel_Button: TPanel;
    OKBtn: TcxButton;
    CancelBtn: TcxButton;
    cxGrid: TcxGrid;
    cxGV: TcxGridDBBandedTableView;
    FIsDelList: TcxGridDBBandedColumn;
    FWorkListNum: TcxGridDBBandedColumn;
    FBalanceFullName: TcxGridDBBandedColumn;
    FNumber: TcxGridDBBandedColumn;
    FBalanceName: TcxGridDBBandedColumn;
    FBalanceModel: TcxGridDBBandedColumn;
    FUnitName: TcxGridDBBandedColumn;
    FWorkResizePrice: TcxGridDBBandedColumn;
    FEstimateQry: TcxGridDBBandedColumn;
    FBalanceBasePrice: TcxGridDBBandedColumn;
    FWorkOutPrice: TcxGridDBBandedColumn;
    FOutPrice: TcxGridDBBandedColumn;
    FWorkItemPrice: TcxGridDBBandedColumn;
    FEstimateAmount: TcxGridDBBandedColumn;
    FWorkListRemark: TcxGridDBBandedColumn;
    FDeliveryDate: TcxGridDBBandedColumn;
    FBalanceWorkAdjust: TcxGridDBBandedColumn;
    FBalanceAdjust: TcxGridDBBandedColumn;
    FBalancePrice: TcxGridDBBandedColumn;
    SumFBalanceQry: TcxGridDBBandedColumn;
    SumFBalanceAmount: TcxGridDBBandedColumn;
    FWorkItemNum: TcxGridDBBandedColumn;
    FMaterialDate: TcxGridDBBandedColumn;
    FWorkDate: TcxGridDBBandedColumn;
    FBalanceID: TcxGridDBBandedColumn;
    FBalancePriceID: TcxGridDBBandedColumn;
    FWorkListID: TcxGridDBBandedColumn;
    FBalanceProductName: TcxGridDBBandedColumn;
    FProductClass: TcxGridDBBandedColumn;
    cxGL: TcxGridLevel;
    FWorkItemID_Item: TcxGridDBBandedColumn;
    FPriceDateID_Price: TcxGridDBColumn;
    TB_ZF: TToolButton;
    FIsdel_Item: TcxGridDBBandedColumn;
    TS_Write: TTabSheet;
    Act_MaterialDate: TAction;
    TB_Print: TToolButton;
    Act_Submit: TAction;
    TB_Copy: TToolButton;
    TB_FIsDelList: TToolButton;
    Act_TreeSel: TAction;
    cxGV_ItemDBBandedColumn1: TcxGridDBBandedColumn;
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
    procedure Panel_Edit_1ConstrainedResize(Sender: TObject; var MinWidth,
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
    procedure cxGV_ItemCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure cxGV_ListCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure Act_MaxID_ListExecute(Sender: TObject);
    procedure Act_ItemNumExecute(Sender: TObject);
    procedure cxGrid_ListContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure cxGridContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure Act_MaxNumExecute(Sender: TObject);
    procedure MData_ListAfterEdit(DataSet: TDataSet);
    procedure MData_ListAfterInsert(DataSet: TDataSet);
    procedure MData_ListBeforeDelete(DataSet: TDataSet);
    procedure Act_Menu_BandExecute(Sender: TObject);
    procedure Act_Menu_Set_BandExecute(Sender: TObject);
    procedure N_Edit_BandClick(Sender: TObject);
    procedure Act_RefExecute(Sender: TObject);
    procedure E_FJobModePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure E_FDeliveryPlacePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure E_FAgentNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure MDataBeforePost(DataSet: TDataSet);
    procedure E_FClientShortNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure E_FClientFullNameKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Act_AgentNUmExecute(Sender: TObject);
    procedure E_FAgentNameKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure E_FE05PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure E_FMaterialDatePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure Act_MaxItemNumExecute(Sender: TObject);
    procedure E_FWorkItemDateExit(Sender: TObject);
    procedure Act_SelExecute(Sender: TObject);
    procedure cxGV_PriceDblClick(Sender: TObject);
    procedure FDeliveryDateHeaderClick(Sender: TObject);
    procedure Act_StatusExecute(Sender: TObject);
    procedure TB_SubmitClick(Sender: TObject);
    procedure TB_CheckClick(Sender: TObject);
    procedure TB_AuditClick(Sender: TObject);
    procedure TB_PushDownClick(Sender: TObject);
    procedure TB_Prin_xlsClick(Sender: TObject);
    procedure Act_Print_WorkExecute(Sender: TObject);
    procedure Act_Print_Work_YSExecute(Sender: TObject);
    procedure E_FWorkPaymenWayPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure E_FBidNumPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure XH_PriceGetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: String);
    procedure FWorkListNumGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: String);
    procedure cxGrid_PriceContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure FWorkListRemarkPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure ToolButton2Click(Sender: TObject);
    procedure XHGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: String);
    procedure cxGrid_BalanceContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure cxGrid_InvoiceContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure TB_ZFClick(Sender: TObject);
    procedure Act_MaterialDateExecute(Sender: TObject);
    procedure TB_PrintClick(Sender: TObject);
    procedure Act_SubmitExecute(Sender: TObject);
    procedure cxGV_ItemDblClick(Sender: TObject);
    procedure TB_CopyClick(Sender: TObject);
    procedure FWorkListNum_ListGetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: String);
    procedure TB_FIsDelListClick(Sender: TObject);
    procedure cxGV_ListFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure Act_TreeSelExecute(Sender: TObject);
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
    P_Print:String;

    { Public declarations }
  end;

var
  Frm_WorkBILL: TFrm_WorkBILL;


implementation

uses FRMDATA,  COMMON, FrmSelect, ProgBar, PROGRASS,
   FrmWorkMain;

{$R *.dfm}

function TFrm_WorkBILL.DelRd: bool;
var
 qry: TADOQuery;
begin
 // result:=False;
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Delete from T_WorkItem where FWorkItemID=:FWorkItemID';
    with qry.Parameters do
    begin
      FindParam('FWorkItemID').value:=mdata['FWorkItemID'];
    end;
    result:=qry.ExecSQL>=1;
  finally
    qry.Free;
  end;
end;



function TFrm_WorkBILL.AddRd: bool;
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
        Act_Update.Execute;
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

function TFrm_WorkBILL.EditRd:bool;   // 修改
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
            Act_Update.Execute;
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

function TFrm_WorkBILL.AddMain: bool;
var
  qry,qryDate: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qryDate:=TAdoQuery.Create(self);
  qryDate.ConnectionString:=mdlData.ReadConnStr;
  result:=False;

  If mdata.RecordCount<=0 then
  begin
    result:=True;
    Exit;
  end;
  If (mdata['FWorkItemNum']<>Null) and (mdata['FWorkItemNum']<>'') then
  begin
    try
      qry.SQL.Text:='Insert into T_WorkItem(FWorkItemID,FWorkItemDate,FWorkItemNum,FWorkItemNo,FItemId,'
                   +'FWorkPaymentWay,FBidNum,FBidDate,FDeliveryPlace,FJobPlace,FJobMode,FAgentID,FAdvancePercent,FE05,FPriceDateID,'
                   +'FIsdel,FWorkItemRemark,FWorkStatus,'
                   +'FWorkWriteID,FWorkWriteDate,FDepartMentID) '
                   +'values(:FWorkItemID,:FWorkItemDate,:FWorkItemNum,:FWorkItemNo,:FItemId,'
                   +':FWorkPaymentWay,:FBidNum,:FBidDate,:FDeliveryPlace,:FJobPlace,:FJobMode,:FAgentID,:FAdvancePercent,:FE05,:FPriceDateID,'
                   +':FIsdel,:FWorkItemRemark,:FWorkStatus,'
                   +':FWorkWriteID,:FWorkWriteDate,:FDepartMentID)';

       with qry.Parameters do
       begin
         Act_MaxID.Execute;//取ID
         mdata.Edit;
         mdata['FWorkItemID']:=P_MaxID;
         mdata.Post;
         FindParam('FWorkItemID').value:=P_MaxID;
         FindParam('FWorkItemDate').value:=mdata['FWorkItemDate'];
         FindParam('FWorkItemNum').value:=mdata['FWorkItemNum'];
         FindParam('FWorkItemNo').value:=mdata['FWorkItemNo'];
         FindParam('FItemId').value:=mdata['FItemId'];
         FindParam('FWorkPaymentWay').value:=mdata['FWorkPaymentWay'];
         FindParam('FBidNum').value:=mdata['FBidNum'];
         FindParam('FBidDate').value:=mdata['FBidDate'];
         FindParam('FDeliveryPlace').value:=mdata['FDeliveryPlace'];
         FindParam('FJobPlace').value:=mdata['FJobPlace'];
         FindParam('FJobMode').value:=mdata['FJobMode'];
         FindParam('FAgentID').value:=mdata['FAgentID'];
         FindParam('FAdvancePercent').value:=mdata['FAdvancePercent'];
         FindParam('FE05').value:=mdata['FE05'];
         FindParam('FPriceDateID').value:=mdata['FPriceDateID'];
         FindParam('FIsdel').value:=mdata['FIsdel'];
         FindParam('FWorkItemRemark').value:=mdata['FWorkItemRemark'];
         FindParam('FWorkStatus').value:=0;
         FindParam('FWorkWriteID').value:=UserNumID;
         FindParam('FWorkWriteDate').value:=S_SyStemDate(qryDate);
         FindParam('FDepartMentID').value:=UserFDepartMentID;
       end;
       result:=qry.ExecSQL>=1;
    finally
      qry.Free;
    end;

  end;
end;

function TFrm_WorkBILL.EditMain:bool;

var
  qry,qryDate: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qryDate:=TADOQuery.Create(Self);
  qryDate.ConnectionString:=mdlData.ReadConnStr;
  result:=False;
  If mData.RecordCount<=0 then
  begin
    result:=True;
    Exit;
  end;
  mdata.Edit;
  mdata.Post;
  If (mdata['FWorkItemNum']<>Null) and (mdata['FWorkItemNum']<>'') then
  begin
    try
      qry.SQL.Text:='Update T_WorkItem set FWorkItemDate=:FWorkItemDate,FWorkItemNum=:FWorkItemNum,FWorkItemNo=:FWorkItemNo,'
                   +'FItemId=:FItemId,FWorkPaymentWay=:FWorkPaymentWay,FBidNum=:FBidNum,FBidDate=:FBidDate,FDeliveryPlace=:FDeliveryPlace,FJobPlace=:FJobPlace,'
                   +'FJobMode=:FJobMode,FAgentID=:FAgentID,FAdvancePercent=:FAdvancePercent,'
                   +'FE05=:FE05,FPriceDateID=:FPriceDateID,FIsdel=:FIsdel,FWorkItemRemark=:FWorkItemRemark,FWorkStatus=:FWorkStatus,'
                   +'FNewestAlterID=:FNewestAlterID,FNewestAlterDate=:FNewestAlterDate '
                   +'where FWorkItemID=:FWorkItemID';
      with qry.Parameters do
      begin
        FindParam('FWorkItemDate').value:=mdata['FWorkItemDate'];
        FindParam('FWorkItemNum').value:=mdata['FWorkItemNum'];
        FindParam('FWorkItemNo').value:=mdata['FWorkItemNo'];
        FindParam('FItemId').value:=mdata['FItemId'];
        FindParam('FWorkPaymentWay').value:=mdata['FWorkPaymentWay'];
        FindParam('FBidNum').value:=mdata['FBidNum'];
        FindParam('FBidDate').value:=mdata['FBidDate'];
        FindParam('FDeliveryPlace').value:=mdata['FDeliveryPlace'];
        FindParam('FJobPlace').value:=mdata['FJobPlace'];
        FindParam('FJobMode').value:=mdata['FJobMode'];
        FindParam('FAgentID').value:=mdata['FAgentID'];
        FindParam('FAdvancePercent').value:=mdata['FAdvancePercent'];
        FindParam('FE05').value:=mdata['FE05'];
        FindParam('FPriceDateID').value:=mdata['FPriceDateID'];
        FindParam('FIsdel').value:=mdata['FIsdel'];
        FindParam('FWorkItemRemark').value:=mdata['FWorkItemRemark'];
        FindParam('FWorkStatus').value:=mdata['FWorkStatus'];
        FindParam('FNewestAlterID').value:=UserNumID;
        FindParam('FNewestAlterDate').value:=S_SyStemDate(qryDate);
        FindParam('FWorkItemID').value:=mdata['FWorkItemID'];
      end;
      result:=qry.ExecSQL>=1;
    finally
       qry.Free;
    end;
   end;
end;

function TFrm_WorkBILL.DelList: bool;
var i:Integer;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  result:=True;

  qry.SQL.Text:='Delete from T_WorkList where FWorkListID=:FWorkListID';
  for i:=Low(DelArray) to High(DelArray) do
  begin
    if DelArray[i]<>'' then
    begin
      if qry.Active then qry.Close;
      try
        qry.Parameters.FindParam('FWorkListID').Value:=StrToInt(DelArray[i]);
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

function TFrm_WorkBILL.AddList: bool;
var qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  result:=True;
  mData_List.Edit;
  try

    qry.SQL.Text:='Insert into T_WorkList(FWorkListID,FWorkItemID,FWorkListNum,'
                 +'FBalancePriceID,FEstimateQry,FOutPrice,FWorkOutPrice,FIsDelList,'
                 +'FWorkListRemark,FDeliveryDate) '
                 +'values(:FWorkListID,:FWorkItemID,:FWorkListNum, '
                 +':FBalancePriceID,:FEstimateQry,:FOutPrice,:FWorkOutPrice,:FIsDelList,'
                 +':FWorkListRemark,:FDeliveryDate)';
    mData_List.First;
    while not mData_List.eof do
    begin
      If (mData_List['IsApp']=True) and (mData_List['FBalancePriceID']<>0) and (mData_List['FBalancePriceID']<>Null)
         and (mData_List['FEstimateQry']<>0) and (mData_List['FEstimateQry']<>Null)
         and (MData_List['FPriceDateID']=MData['FPriceDateID'])
       then
      begin
        qry.Parameters.ParamByName('FWorkOutPrice').DataType:=ftfloat;
        qry.Parameters.ParamByName('FOutPrice').DataType:=ftfloat;
        If qry.Active then qry.Close;
        Act_MaxID_List.Execute;//取ID
        qry.Parameters.FindParam('FWorkListID').value:=P_MaxID_List;

        If P_state=0 then  //新增
          qry.Parameters.FindParam('FWorkItemID').value:=P_MaxID;
        If P_state=1 then  //修改
          qry.Parameters.FindParam('FWorkItemID').value:=mdata['FWorkItemID'];

        qry.Parameters.FindParam('FWorkListNum').value:=mData_List['FWorkListNum'];
        qry.Parameters.FindParam('FBalancePriceID').value:=mData_List['FBalancePriceID'];
        qry.Parameters.FindParam('FEstimateQry').value:=mData_List['FEstimateQry'];
        qry.Parameters.FindParam('FOutPrice').value:=mData_List['FOutPrice'];
        qry.Parameters.FindParam('FWorkOutPrice').value:=mData_List['FWorkOutPrice'];
        qry.Parameters.FindParam('FIsDelList').value:=mData_List['FIsDelList'];
        qry.Parameters.FindParam('FWorkListRemark').value:=mData_List['FWorkListRemark'];
        qry.Parameters.FindParam('FDeliveryDate').value:=mData_List['FDeliveryDate'];

        result:=qry.ExecSQL>=1;
        if not result then break;
      end;
      mData_List.Next;
    end;
  finally
     qry.Free;
  end;

end;

function TFrm_WorkBILL.EditList:bool;
var qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  result:=True;
  try
    qry.SQL.Text:='Update T_WorkList set FWorkItemID=:FWorkItemID,FWorkListNum=:FWorkListNum,'
                 +'FBalancePriceID=:FBalancePriceID,FEstimateQry=:FEstimateQry, '
                 +'FOutPrice=:FOutPrice,FWorkOutPrice=:FWorkOutPrice,FIsDelList=:FIsDelList,FWorkListRemark=:FWorkListRemark, '
                 +'FDeliveryDate=:FDeliveryDate where FWorkListID=:FWorkListID';
    mData_List.First;
    while not mData_List.eof do
    begin
      If (mData_List['IsEdit']=True) and (mData_List['IsApp']=False)
         and (mData_List['FBalancePriceID']<>0) and (mData_List['FBalancePriceID']<>Null)
         and (mData_List['FEstimateQry']<>0) and (mData_List['FEstimateQry']<>Null)
         and (MData_List['FPriceDateID']=MData['FPriceDateID'])
         then
      begin
        qry.Parameters.ParamByName('FWorkOutPrice').DataType:=ftfloat;
        qry.Parameters.ParamByName('FOutPrice').DataType:=ftfloat;
        If qry.Active then qry.Close;
        qry.Parameters.FindParam('FWorkItemID').value:=mData_List['FWorkItemID'];
        qry.Parameters.FindParam('FWorkListNum').value:=mData_List['FWorkListNum'];
        qry.Parameters.FindParam('FBalancePriceID').value:=mData_List['FBalancePriceID'];
        qry.Parameters.FindParam('FEstimateQry').value:=mData_List['FEstimateQry'];
        qry.Parameters.FindParam('FOutPrice').value:=mData_List['FOutPrice'];
        qry.Parameters.FindParam('FWorkOutPrice').value:=mData_List['FWorkOutPrice'];
        qry.Parameters.FindParam('FIsDelList').value:=mData_List['FIsDelList'];
        qry.Parameters.FindParam('FWorkListRemark').value:=mData_List['FWorkListRemark'];
        qry.Parameters.FindParam('FDeliveryDate').value:=mData_List['FDeliveryDate'];

        If mData_List['IsApp']=True  then
           qry.Parameters.FindParam('FWorkListID').value:=P_MaxID_List
        else
           qry.Parameters.FindParam('FWorkListID').value:=mData_List['FWorkListID'];
        result:=qry.ExecSQL>=1;
        if not result then break;
      end;
      mData_List.Next;
    end;
  finally
     qry.Free;
  end;

end;



procedure TFrm_WorkBILL.FormResize(Sender: TObject);
begin
  inherited;
  L_title.Caption:=UserFDepartmentName+'生产任务单';
  Self.Caption:=UserFDepartmentName+'生产任务单信息';
end;

procedure TFrm_WorkBILL.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=cafree;
  Frm_WorkBILL:=nil;
end;

procedure TFrm_WorkBILL.TB_EXITClick(Sender: TObject);
begin
  self.Close;
end;

procedure TFrm_WorkBILL.MyTreeViewChange(Sender: TObject; Node: TTreeNode);
var
  qry:TADOquery;
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

    Act_TreeSel.Execute;

    P_state:=2;
    Act_Status.Execute;;
    Act_ItemChange.Execute;
  end;
end;

procedure TFrm_WorkBILL.MyTreeViewExpanding(Sender: TObject;
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

  If TS_Tree.ActivePage=TS_Write then
     qry.SQL.Text:='Select * from VT_WorkItem_Write with(nolock) where FParentNumber= '''
                  +PTree(Node.Data).ID+''' order by FNumber';
  If TS_Tree.ActivePage=TS_Num then
     qry.SQL.Text:='Select * from VT_WorkItem with(nolock) where FParentNumber= '''
                  +PTree(Node.Data).ID+''' order by FNumber';
  If TS_Tree.ActivePage=TS_WorkItem then
     qry.SQL.Text:='Select * from VT_WorkItem_Item with(nolock) where FParentNumber= '''
                  +PTree(Node.Data).ID+''' order by FNumber';
  If TS_Tree.ActivePage=TS_Agent then
     qry.SQL.Text:='Select * from VT_WorkItem_Agent with(nolock) where FParentNumber= '''
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

procedure TFrm_WorkBILL.TB_RefClick(Sender: TObject);
begin
  Act_Ref.Execute;
end;

procedure TFrm_WorkBILL.OKBtnClick(Sender: TObject);
var qry: TADOQuery;
    y:boolean;
begin
  cxGV.OptionsData.Editing:=True;
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  mdata.Edit;
  mdata.Post;
  If (mdata['FWorkItemDate']=Null) then
  begin
    application.MessageBox('任务单日期不允许空！请重新输入','系统提示',MB_ICONERROR);
    Exit;
  end;
  If (mdata['FWorkItemNum']=Null) or (mdata['FWorkItemNum']=0) then
  begin
    application.MessageBox('任务单单号不允许空！请重新输入','系统提示',MB_ICONERROR);
    Exit;
  end;
  If (mdata['FAgentID']=Null) or (mdata['FAgentID']=0) then
  begin
    application.MessageBox('生产单位不允许空！请重新输入','系统提示',MB_ICONERROR);
    Exit;
  end;
  If (mdata['FItemID']=Null) or (mdata['FItemID']=0) then
  begin
    application.MessageBox('项目信息不允许空！请重新输入','系统提示',MB_ICONERROR);
    Exit;
  end;
  If (mdata['FPriceDateID']=Null) or (mdata['FPriceDateID']=0) then
  begin
    application.MessageBox('执行日期信息不允许空！请重新输入','系统提示',MB_ICONERROR);
    Exit;
  end;
   //附表是否为空

  y:=False;
  mData_List.First;
  while not mData_List.eof do
  begin
     If (mData_List['FBalancePriceID']<>0) and (mData_List['FEstimateQry']<>0) then
         y:=True;
     mData_List.Next;
  end;
  if y=False then
  begin
    application.MessageBox('生产任务单不能为空，请修改记录!','系统提示',MB_ICONINFORMATION);
    Exit;
  end;

  If P_state =0 then
  begin
     try
      qry.SQL.Text:='Select * from V_WorkList with(nolock) where FWorkItemNum=:FWorkItemNum and FDepartmentID=:FDepartmentID';
      qry.Parameters.FindParam('FWorkItemNum').Value:=Trim(Mdata['FWorkItemNum']);
      qry.Parameters.FindParam('FDepartmentID').Value:=UserFDepartmentID;
      qry.Open;
      If qry.RecordCount>0 then
      begin
         If application.MessageBox('此生产单号已存在,是否系统自动取号吗？','提示',MB_ICONINFORMATION+MB_YESNO)=6 then
         begin
           Act_MaxItemNum.Execute ; //取任务单号
         end
         else
           Exit;
      end;
    finally
       ;
    end;
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
      If ShowMsg('是否预览《生产任务单》?','提示') then
      begin
        TB_Print.Click;//预览
      end;
      If ShowMsg('是否提交《生产任务单》?','提示') then
      begin
        Act_Submit.Execute;
      end;
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
      If ShowMsg('是否预览《生产任务单》?','提示') then
        TB_Print.Click;//预览
      If ShowMsg('是否提交《生产任务单》?','提示') then
        Act_Submit.Execute;
     // inherited;
    end
    else
      application.MessageBox('修改记录保存失败！','系统提示',MB_ICONWARNING);
    CancelBtn.Click;
  end;
  qry.Free;

end;

procedure TFrm_WorkBILL.TB_AppClick(Sender: TObject);
var
 qry,qry1: TADOQuery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.EnableBCD:=False;//小数位数>4
  qry1:=TAdoQuery.Create(self);
  qry1.ConnectionString:=mdlData.ReadConnStr;
  qry1.EnableBCD:=False;//小数位数>4

  I_index:=MData.RecNo ;
  P_state :=0;
  L_title.Caption:='任务书信息新增';

 { try
    qry1.SQL.Text:='Select (isnull(max(FWorkInvoiceItemNo),0)+1) as FWorkInvoiceItemNo from V_WorkInvoice with(nolock) '
                  +'where year(FWorkInvoiceItemDate)=year(GETDATE()) and MONTH(FWorkInvoiceItemDate)=MONTH(GETDATE())';
    qry1.Open;
  finally
     ;
  end;
  }
  try
    qry.SQL.Text:='Select IsEdit=cast(0 as bit),IsApp=cast(1 as bit),* from V_WorkItem with(nolock) where FWorkItemID=0';
    qry.Open;
  finally
     ;
  end;
  mData.CopyFromDataSet(qry);
  mData.Active:=True;
  mData.Edit;
  Mdata['FWorkItemDate']:=formatdatetime('yyyy-mm-dd',now());
  mData.Post;
  Act_MaxNum.Execute;//取最大单号
  Act_MaxItemNum.Execute ; //取任务单号
  Act_MaterialDate.Execute ; //取最大执行单价
  try
    qry.SQL.Text:='Select IsEdit=cast(0 as bit),IsApp=cast(1 as bit),* from V_WorkList with(nolock) where FWorkItemID=0';
    qry.Open;
  finally
     ;
  end;
  Mdata_List.DisableControls;
  Mdata_List.CopyFromDataSet(qry);
  Mdata_List.Active;
  Mdata_List.EnableControls;

{  for i:=1 to 10 do
  begin
    mdata_List.Append;
    mdata_List['IsEdit']:=0;
    mdata_List['IsApp']:=1;
    mdata_List.Post;
  end;

  Mdata_List.First;
 }
  Act_Set_Open.Execute;
  TS_Item.ActivePage:=TS_Edit;
  qry.Free;
end;

procedure TFrm_WorkBILL.TB_EditClick(Sender: TObject);
var
 qry,qry1: TADOQuery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.EnableBCD:=False;//小数位数>4
  qry1:=TAdoQuery.Create(self);
  qry1.ConnectionString:=mdlData.ReadConnStr;
  qry1.EnableBCD:=False;//小数位数>4
//  LogIn(qry,Self.ClassName,TToolButton(Sender).Caption);
  I_index:=MData.RecNo ;
  P_state :=1;
  L_title.Caption:='生产任务信息修改';

  //已经结算数据不允许修改
  try
    qry.SQL.Text:='Select * from V_BalanceList with(nolock) where FWorkItemID=:FWorkItemID';
    qry.Parameters.FindParam('FWorkItemID').Value:=mData['FWorkItemID'];
    qry.Open;
  finally
    ;
  end;
  If (qry.RecordCount>0)  then
  begin
    application.MessageBox('此任务单部件已结算！只允许修改未结算记录,不允许增加、删除记录。','系统提示',MB_ICONERROR);
    qry1.SQL.Text:='Select  IsEdit=cast(0 as bit),IsApp=cast(0 as bit),* from V_WorkList where FWorkItemID=:FWorkItemID and SumFBalanceQry=0';
    qry1.Parameters.FindParam('FWorkItemID').Value:=mData['FWorkItemID'];
    qry1.Open;
    mData_List.CopyFromDataSet(qry1);
    mData_List.Active:=True;
    mData_List.First;
  end
  else
  begin
   try
     qry.SQL.Text:='Select IsEdit=cast(0 as bit),IsApp=cast(0 as bit),* from V_WorkList with(nolock) where FWorkItemID=:FWorkItemID';
     qry.Parameters.FindParam('FWorkItemID').Value:=mData['FWorkItemID'];
     qry.Open;
   finally
     ;
    end;
    mData_List.CopyFromDataSet(qry);
    mData_List.Active:=True;
    mData_List.First;
  end;

  Act_Set_Open.Execute;
  TS_Item.ActivePage:=TS_Edit;
  qry.Free;
end;

procedure TFrm_WorkBILL.TB_DelClick(Sender: TObject);
var
  qry:TADOQuery;
begin

  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
 // LogIn(qry,Self.ClassName,TToolButton(Sender).Caption);
  If (mData.RecordCount<1) then
     Exit;
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
  If application.MessageBox(Pchar('警告：是否删除此项生产任务信息：【'+Trim(mData['FWorkItemNum'])+'】的数据？'+chr(13)+chr(13)
                           +'删除数据操作将不可恢复，确定要删除此项生产任务吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
  If application.MessageBox(Pchar('警告：是否删除此项生产任务信息：【'+Trim(mData['FWorkItemNum'])+'】的数据？'+chr(13)+chr(13)
                           +'删除数据操作将不可恢复，确定要删除此项生产任务信息吗？'),'再次警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then

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

procedure TFrm_WorkBILL.CancelBtnClick(Sender: TObject);
var
  qry:TADOQuery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  P_state:=2;
  L_title.Caption:=UserFDepartmentName+'生产任务信息';
  If P_state=1 then
     Act_TreeSel.Execute;
  Act_Set_Close.Execute;
end;

procedure TFrm_WorkBILL.FormCreate(Sender: TObject);
var AFirstColumnStyle: TcxStyle;
begin
  inherited;
  //列颜色
  AFirstColumnStyle := TcxStyle.Create(Self);
  AFirstColumnStyle.Color := clMenu;
  AFirstColumnStyle.TextColor := clBlue;

  cxGV.DataController.GetItemByFieldName('FWorkOutPrice').Styles.Content:= AFirstColumnStyle;
  cxGV.DataController.GetItemByFieldName('FOutPrice').Styles.Content:= AFirstColumnStyle;
  cxGV.DataController.GetItemByFieldName('FEstimateQry').Styles.Content:= AFirstColumnStyle;
  cxGV.DataController.GetItemByFieldName('FDeliveryDate').Styles.Content:= AFirstColumnStyle;
  cxGV.DataController.GetItemByFieldName('FWorkListRemark').Styles.Content:= AFirstColumnStyle;

  P_state:=2;
  TS_Item.ActivePage:=TS_Brow;
  TB_App.Visible:= mdlData.PermissionCheckRights(TFrm_WorkBILL.ClassName,'新增');
  TB_Prin_xls.Visible:= mdlData.PermissionCheckRights(TFrm_WorkBILL.ClassName,'打印');
  TB_FIsDelList.Visible:= mdlData.PermissionCheckRights(TFrm_WorkBILL.ClassName,'校对');

  If mdlData.PermissionCheckRights(TFrm_WorkBILL.ClassName,'新增')=True then
     TS_Tree.ActivePage:=Ts_Write;
  If mdlData.PermissionCheckRights(TFrm_WorkBILL.ClassName,'校对')=True then
     TS_Tree.ActivePage:=Ts_Num;
  If mdlData.PermissionCheckRights(TFrm_WorkBILL.ClassName,'审核')=True then
     TS_Tree.ActivePage:=Ts_Num;
end;

procedure TFrm_WorkBILL.FormShow(Sender: TObject);
begin
  inherited;
  P_back.Width:=Self.Width;
  P_back.Height:=Self.Height;
  P_back.Top:=21;
  P_back.Left:=1;
  TB_Ref.Click;
end;

procedure TFrm_WorkBILL.Act_Menu_SetExecute(Sender: TObject);
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

procedure TFrm_WorkBILL.Act_MenuExecute(Sender: TObject);
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

procedure TFrm_WorkBILL.N_EditClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_WorkBILL.N_FilterClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_WorkBILL.N_SortClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_WorkBILL.N_GroupClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_WorkBILL.N_SetClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_WorkBILL.N_OutClick(Sender: TObject);
begin
  inherited;
  Mn:=TMenuItem(Sender).Name;
  Act_Menu.Execute;
end;

procedure TFrm_WorkBILL.Act_Set_OpenExecute(Sender: TObject);
begin
  inherited;
  MyTreeView.Enabled:=False;
  Panel_EditButton.Enabled:=False;
  Panel_OK.Visible:=True;

  TS_Item.ActivePage:=TS_Edit;
  TS_Brow.TabVisible:=False;

  E_FWorkItemNum.Enabled:=True;
  E_FWorkItemDate.Enabled:=True;
  E_FClientFullName.Enabled:=True;
  E_FAgentName.Enabled:=True;
  E_FJobMode.Enabled:=True;
  E_FMaterialDate.Enabled:=True;
  E_FDeliveryPlace.Enabled:=True;
  E_FE05.Enabled:=True;
  E_FIsdel.Enabled:=True;
  E_FWorkPaymentWay.Enabled:=True;
  E_FBidNum.Enabled:=True;


  cxGV.OptionsData.Editing:=True;
 { FWorkInvoiceDate.Editing:=True;
  FWorkInvoiceNum.Editing:=True;
  FWorkInvoiceAmount.Editing:=True;
  FWorkItemNum.Editing:=True;
 }
end;

procedure TFrm_WorkBILL.Act_Set_CloseExecute(Sender: TObject);
begin
  inherited;
  P_state :=2;

  MyTreeView.Enabled:=True;
  Panel_EditButton.Enabled:=True;
  Panel_OK.Visible:=False;

  cxGV.OptionsData.Editing:=False;

  TS_Item.ActivePage:=TS_Brow;
  TS_Brow.TabVisible:=True;

  E_FWorkItemNum.Enabled:=False;
  E_FWorkItemDate.Enabled:=False;
  E_FClientFullName.Enabled:=False;
  E_FAgentName.Enabled:=False;
  E_FJobMode.Enabled:=False;
  E_FMaterialDate.Enabled:=False;
  E_FDeliveryPlace.Enabled:=False;
  E_FE05.Enabled:=False;
  E_FIsdel.Enabled:=False;
  E_FWorkPaymentWay.Enabled:=False;
  E_FBidNum.Enabled:=False;

end;

procedure TFrm_WorkBILL.TS_TreeChange(Sender: TObject);
begin
  Act_Ref.Execute;
end;

procedure TFrm_WorkBILL.cxGVDblClick(Sender: TObject);
begin
  I_index:=MData.RecNo ;
  If P_state=2 then
     TS_Item.ActivePage:=TS_Edit;

end;

procedure TFrm_WorkBILL.cxGrid_ItemContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
  inherited;
  GV:='cxGV_Item';
  Gm:='mdata';
  Gr:='cxGrid_Item';
  Act_Menu_Set_Band.Execute;
end;

procedure TFrm_WorkBILL.Panel_Edit_1ConstrainedResize(Sender: TObject;
  var MinWidth, MinHeight, MaxWidth, MaxHeight: Integer);
begin
  inherited;
 // Panel_List.Left:=(Panel_Edit.Width-Panel_List.Width) div 2;
end;

procedure TFrm_WorkBILL.TS_ItemChange(Sender: TObject);
var qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.EnableBCD:=False;//小数位数>4

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

end;

procedure TFrm_WorkBILL.RSP_TreeConstrainedResize(Sender: TObject;
  var MinWidth, MinHeight, MaxWidth, MaxHeight: Integer);
begin
  inherited;
  Panel_List.Left:=(Panel_Edit.Width-Panel_List.Width) div 2;
  Panel_Button.Left:=(Panel_OK.Width-Panel_Button.Width) div 2;

  Panel_List.Left:=(Panel_Edit.Width-Panel_List.Width) div 2;
  Panel_Button.Left:=(Panel_OK.Width-Panel_Button.Width) div 2;
  //RzPanel_Edit.Height:=TS_Edit.Height-Panel_Edit.Height;

end;

procedure TFrm_WorkBILL.FlatPanel5DblClick(Sender: TObject);
begin
  inherited;
  If P_state=2 then
     TS_Item.ActivePage:=TS_Brow;
end;

procedure TFrm_WorkBILL.Act_MaxIDExecute(Sender: TObject);
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
      value:='T_WorkItem';
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

procedure TFrm_WorkBILL.cxGV_ItemFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  Act_ItemChange.Execute;
end;

procedure TFrm_WorkBILL.E_LocatePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
    Act_Locate.Execute;
end;

procedure TFrm_WorkBILL.E_LocateKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  If Key=13 then
    Act_Locate.Execute;
end;

procedure TFrm_WorkBILL.Act_LocateExecute(Sender: TObject);
var
 qry: TADOQuery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.EnableBCD:=False;//小数位数>4
  mdata.DisableControls;
  try
    qry.SQL.Text:='Select IsEdit=cast(0 as bit),IsApp=cast(0 as bit),* from V_WorkItem with(nolock) '
                 +'where FWorkItemNum like :Locate1 or FClientFullName like :Locate2 or '
                 +'FAgentName like :Locate3 or FDeliveryPlace like :Locate4 or FWorkPaymentWay like :Locate5 '
                 +'or FBranchFileNo like :Locate6 or FBranchItemNumber like :Locate7 or FWorkData like :Locate8 '
                 +'or FMaterialDate like :Locate9 or FBidNum like :Locate10 or FClientShortName like :Locate11 ';
    qry.Parameters.FindParam('Locate1').Value:='%'+Trim(E_Locate.Text)+'%';
    qry.Parameters.FindParam('Locate2').Value:='%'+Trim(E_Locate.Text)+'%';
    qry.Parameters.FindParam('Locate3').Value:='%'+Trim(E_Locate.Text)+'%';
    qry.Parameters.FindParam('Locate4').Value:='%'+Trim(E_Locate.Text)+'%';
    qry.Parameters.FindParam('Locate5').Value:='%'+Trim(E_Locate.Text)+'%';
    qry.Parameters.FindParam('Locate6').Value:='%'+Trim(E_Locate.Text)+'%';
    qry.Parameters.FindParam('Locate7').Value:='%'+Trim(E_Locate.Text)+'%';
    qry.Parameters.FindParam('Locate8').Value:='%'+Trim(E_Locate.Text)+'%';
    qry.Parameters.FindParam('Locate9').Value:='%'+Trim(E_Locate.Text)+'%';
    qry.Parameters.FindParam('Locate10').Value:='%'+Trim(E_Locate.Text)+'%';
    qry.Parameters.FindParam('Locate11').Value:='%'+Trim(E_Locate.Text)+'%';
    qry.Open;
  finally
     ;
  end;
  mdata.CopyFromDataSet(qry);
  mdata.Active:=True;
  mdata.EnableControls;


end;

procedure TFrm_WorkBILL.Act_ItemChangeExecute(Sender: TObject);
var qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  If  (P_state=2) and (mData['FWorkItemID']<>0) and (mData['FWorkItemID']<>Null) then   //不在新增修改状态
  begin
    If (MData['FWorkWriteID']=UserNumID) and (MData['FWorkStatus']=0) then
    begin
      TB_Edit.Visible:= mdlData.PermissionCheckRights(TFrm_WorkBILL.ClassName,'修改');
      TB_Del.Visible:= mdlData.PermissionCheckRights(TFrm_WorkBILL.ClassName,'删除');
    end
    else
    begin
      TB_Edit.Visible:= False;
      TB_Del.Visible:= False;
    end;

    If (mdata['FWorkItemID']<>0) and (mdata['FWorkItemID']<>Null) then
    begin
      If MyItemListID(qry,Mdata_List,'V_WorkList',' FWorkItemID='+IntToStr(mdata['FWorkItemID']),'',) then
      If MyItemListID(qry,MData_Balance,'V_BalanceList',' FWorkItemID='+IntToStr(mdata['FWorkItemID']),'FFullNumber',) then
      If MyItemListID(qry,MData_Invoice,'V_WorkInvoiceList',' FWorkItemID='+IntToStr(mdata['FWorkItemID']),'FWorkInvoiceItemNum',) then
    end;
  end;

//  If  ((P_state=0) or (P_state=1)) and (mData['FPriceDateID']<>0) and (mData['FPriceDateID']<>Null) then
  If  (mData['FPriceDateID']<>0) and (mData['FPriceDateID']<>Null) then
  begin
    If MyItemListID(qry,Mdata_Price,'V_BalancePrice',' FPriceDateID='+IntToStr(mdata['FPriceDateID']),'FProductName,FPartsCode,FNumber',) then
    RzSize_Price.Visible:=True;
  end
  else
  begin
    Mdata_Price.Close;
    RzSize_Price.Visible:=False;
  end;

  If MData['FIsDel']=False then
     TB_ZF.Caption:='单据作废';
  If MData['FIsDel']=True then
     TB_ZF.Caption:='单据反作废';


end;

procedure TFrm_WorkBILL.MData_ListBeforePost(DataSet: TDataSet);
begin
  inherited;
  If DataSet['FBalancePrice']=Null then DataSet['FBalancePrice']:=0;
  If DataSet['FBalanceBasePrice']=Null then DataSet['FBalanceBasePrice']:=0;
  If DataSet['FWorkOutPrice']=Null then DataSet['FWorkOutPrice']:=0;
  If DataSet['FOutPrice']=Null then DataSet['FOutPrice']:=0;

  If DataSet['FWorkItemPrice']=Null then DataSet['FWorkItemPrice']:=0;
  If DataSet['FMaterialPrice']=Null then DataSet['FMaterialPrice']:=0;
  If DataSet['FWorkBasePrice']=Null then DataSet['FWorkBasePrice']:=0;
  If DataSet['FWorkResizePrice']=Null then DataSet['FWorkResizePrice']:=0;

  If DataSet['FEstimateAmount']=Null then DataSet['FEstimateAmount']:=0;
  If DataSet['FEstimateQry']=Null then DataSet['FEstimateQry']:=0;

  If DataSet['FIsDelList']=Null then DataSet['FIsDelList']:=False;

  If (P_state=0) or (P_state=1) then
  begin
    DataSet['FBalancePrice']:=DataSet['FBalanceBasePrice']+DataSet['FWorkOutPrice']+DataSet['FOutPrice'];
    DataSet['FEstimateAmount']:=round(DataSet['FEstimateQry']*DataSet['FBalancePrice']*100)/100;
    //任务单价
    DataSet['FWorkItemPrice']:=DataSet['FMaterialPrice']+DataSet['FWorkBasePrice']+DataSet['FWorkResizePrice']+DataSet['FWorkOutPrice']+DataSet['FOutPrice'];
  end;
end;

procedure TFrm_WorkBILL.cxGV_ItemCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
{  If  (P_state=2) and (mData['FWorkItemID']<>0) and (mData['FWorkItemID']<>Null) then   //不在新增修改状态
  begin
  //  If (StrToFloat(AViewInfo.GridRecord.DisplayTexts[FWorkItemAmount_Item.Index])=StrToFloat(AViewInfo.GridRecord.DisplayTexts[FWorkItemBalanceAmount_Item.Index])) then
    If AViewInfo.GridRecord.DisplayTexts[FIsdel_Item.Index]='1' then
    begin
      ACanvas.Canvas.Font.Color:=clRed; //字体颜色
      ACanvas.FillRect(AViewInfo.Bounds);
    end;
   If AViewInfo.GridRecord.DisplayTexts[FStatusNotes_Item.Index]='校对' then
    begin
      ACanvas.Canvas.Font.Color:=clPurple; //字体颜色
      ACanvas.FillRect(AViewInfo.Bounds);
    end;
    If AViewInfo.GridRecord.DisplayTexts[FStatusNotes_Item.Index]='审核' then
    begin
      ACanvas.Canvas.Font.Color:=clBlue; //字体颜色
      ACanvas.FillRect(AViewInfo.Bounds);
    end;

  end;
  }
end;

procedure TFrm_WorkBILL.cxGV_ListCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  GV:='cxGV_List';
  Gm:='mdata_List';
  Gr:='cxGrid_List';
  Act_Menu_Set.Execute;
end;

procedure TFrm_WorkBILL.Act_MaxID_ListExecute(Sender: TObject);
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
      value:='T_WorkList';
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

procedure TFrm_WorkBILL.Act_ItemNumExecute(Sender: TObject);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  mData.Edit;
  mData.Post;
  try
    qry.SQL.Text:='Select * from  VT_FileItem with(nolock) '
                 +'where  (FDetail=0 or (FDetail=1 and FIsWorkItem=1)) and '
                 +'(FItemNumber like :Locate1  or FClientshortName like :Locate2 or FClientFullName like :Locate3 '
                 +'or FBranchItemNumber like :Locate4 or FBranchFileNo like :Locate5 or FProductName like :Locate6 or FName like :Locate7 '
                 +') and FDepartmentID=:FDepartmentID  '
                 +'order by FNumber ';
    qry.Parameters.FindParam('Locate1').value:='%'+mData['FClientFullName']+'%';
    qry.Parameters.FindParam('Locate2').value:='%'+mData['FClientFullName']+'%';
    qry.Parameters.FindParam('Locate3').value:='%'+mData['FClientFullName']+'%';
    qry.Parameters.FindParam('Locate4').value:='%'+mData['FClientFullName']+'%';
    qry.Parameters.FindParam('Locate5').value:='%'+mData['FClientFullName']+'%';
    qry.Parameters.FindParam('Locate6').value:='%'+mData['FClientFullName']+'%';
    qry.Parameters.FindParam('Locate7').value:='%'+mData['FClientFullName']+'%';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Open;
  finally
    ;
  end;
  If qry.RecordCount=0 then
  begin
    mData.Edit;
    mData['FItemId']:=0;
    mData.Post;
    application.MessageBox('该项目不存在，请重新选择！','系统提示',MB_ICONINFORMATION);
    Exit;
  end;
  If qry.RecordCount=1 then
  begin
    mData.Edit;
    mData['FItemId']:=qry.FieldByName('FItemId').Value;
    mData.Post;
  end;
  If (qry.RecordCount>0) and (qry.RecordCount<>1) then
  begin
    selValue:=select('选择项目信息','FNumber','FParentNumber','FNumber','FName',qry);
    If (Length(selValue)>0)  then
    begin
      mData.Edit;
      mData['FItemId']:=qry.FieldByName('FItemId').Value;
      mData.Post;
    end
    else
      application.MessageBox('请选择明细！','系统提示',MB_ICONINFORMATION);
  end;


  If  mData['FItemId']<>0 and mData['FItemId']<>Null then
  begin
    try
      qry.SQL.Text:='Select * from  V_FileItem with(nolock) '
                   +'where FItemId=:FItemId ';
      qry.Parameters.FindParam('FItemId').value:=mData['FItemId'];
      qry.Open;
    finally
      ;
    end;
    If qry.RecordCount=1 then
    begin
      mData.Edit;
      mData['FBranchItemNumber']:=qry.FieldByName('FBranchItemNumber').Value;
      mData['FBranchFileNo']:=qry.FieldByName('FBranchFileNo').Value;
      mData['FClientFullName']:=qry.FieldByName('FClientFullName').Value;
      mData['FWorkData']:=qry.FieldByName('FWorkData').Value;
      mData['FProductID']:=qry.FieldByName('FProductID').Value;


      mData.Post;
    end
    else
    begin
      mData.Edit;
      mData['FBranchItemNumber']:='';
      mData['FBranchFileNo']:='';
      mData['FClientFullName']:='';
      mData['FWorkData']:='';
      mData['FProductID']:=0;
      mData.Post;
    end

  end;



end;

procedure TFrm_WorkBILL.cxGrid_ListContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV_List';
  Gm:='mdata_List';
  Gr:='cxGrid_List';
  Act_Menu_Set.Execute;
end;

procedure TFrm_WorkBILL.cxGridContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV';
  Gm:='mdata_List';
  Gr:='cxGrid';
  Act_Menu_Set_Band.Execute;
end;

procedure TFrm_WorkBILL.Act_MaxNumExecute(Sender: TObject);
var  qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If (P_state<>0) and (P_state<>1) then Exit;
  mData.Edit;
  mData.Post;
  If mData['FWorkItemDate']<>null then
  begin
    try
      qry.SQL.Text:='Select isnull(Max(FWorkItemNo),0)+1 as FWorkItemNo from  V_WorkItem with(nolock) '
                   +'where  FWorkItemYYMM=:FWorkItemYYMM  and FDepartmentID=:FDepartmentID ';
      qry.Parameters.FindParam('FWorkItemYYMM').value:=Copy(ForMatDateTime('yyyy-mm-dd',mData['FWorkItemDate']),1,7);
      qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;

      qry.Open;
    finally
      ;
    end;
    mData.Edit;
    mData['FWorkItemNo']:=qry['FWorkItemNo'];
    mData.Post;
  end;


end;

procedure TFrm_WorkBILL.MData_ListAfterEdit(DataSet: TDataSet);
begin
  inherited;
  DataSet['IsEdit']:=True;
end;

procedure TFrm_WorkBILL.MData_ListAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet['IsApp']:=True;
end;

procedure TFrm_WorkBILL.MData_ListBeforeDelete(DataSet: TDataSet);
var
 arrLen:Integer;
begin
  If not varisnull(MData_List['FWorkListID']) then
  begin
    arrLen:=Length(DelArray)+1;
    setLength(DelArray,arrLen);
    DelArray[High(DelArray)]:=MData_List['FWorkListID'];
  end;

end;

procedure TFrm_WorkBILL.Act_Menu_BandExecute(Sender: TObject);
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

procedure TFrm_WorkBILL.Act_Menu_Set_BandExecute(Sender: TObject);
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

procedure TFrm_WorkBILL.N_Edit_BandClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu_Band.Execute;
end;

procedure TFrm_WorkBILL.Act_RefExecute(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If TS_Tree.ActivePage=TS_Write then
  begin
    If not TreeVeiwListWhere(qry,MyTreeView,'VT_WorkItem_Write',' and FDepartmentID='+IntToStr(UserFDepartmentID) ) then
       Application.MessageBox(PChar('树型结构显示错误，请联系开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;
  If TS_Tree.ActivePage=TS_Num then
  begin
    If not TreeVeiwListWhere(qry,MyTreeView,'VT_WorkItem',' and FDepartmentID='+IntToStr(UserFDepartmentID) ) then
       Application.MessageBox(PChar('树型结构显示错误，请联系开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;
  If TS_Tree.ActivePage=TS_WorkItem then
  begin
    If not TreeVeiwListWhere(qry,MyTreeView,'VT_WorkItem_Item',' and FDepartmentID='+IntToStr(UserFDepartmentID) ) then
       Application.MessageBox(PChar('树型结构显示错误，请联系开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;
  If TS_Tree.ActivePage=TS_Agent then
  begin
    If not TreeVeiwListWhere(qry,MyTreeView,'VT_WorkItem_Agent',' and FDepartmentID='+IntToStr(UserFDepartmentID) ) then
       Application.MessageBox(PChar('树型结构显示错误，请联系开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;

end;

procedure TFrm_WorkBILL.E_FJobModePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  mData.Edit;
  mData.Post;
  try
    qry.SQL.Text:='Select distinct FJobMode as FNumber from  V_WorkItem with(nolock) '
                 +'where  FJobMode like :FJobMode  and FDepartmentID=:FDepartmentID  '
                 +'order by FJobMode ';
    qry.Parameters.FindParam('FJobMode').value:='%'+mdata['FJobMode']+'%';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Open;
  finally
    ;
  end;
  If qry.RecordCount>0 then
  selValue:=select('选择加工形式','FNumber','FNumber','FNumber','FNumber',qry);
  If (Length(selValue)>0)  then
  begin
     mData.Edit;
     mData['FJobMode']:=qry.FieldByName('FNumber').Value;
     mData.Post;
  end
  else
     application.MessageBox('请选择明细！','系统提示',MB_ICONINFORMATION);

end;

procedure TFrm_WorkBILL.E_FDeliveryPlacePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  mData.Edit;
  mData.Post;
  try
    qry.SQL.Text:='Select distinct FDeliveryPlace as FNumber from  V_WorkItem with(nolock) '
                 +'where  FDeliveryPlace like :FDeliveryPlace  and FDepartmentID=:FDepartmentID  '
                 +'order by FDeliveryPlace ';
    qry.Parameters.FindParam('FDeliveryPlace').value:='%'+mdata['FDeliveryPlace']+'%';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Open;
  finally
    ;
  end;
  If qry.RecordCount>0 then
  selValue:=select('选择交货地点','FNumber','FNumber','FNumber','FNumber',qry);
  If (Length(selValue)>0)  then
  begin
     mData.Edit;
     mData['FDeliveryPlace']:=qry.FieldByName('FNumber').Value;
     mData.Post;
  end
  else
     application.MessageBox('请选择明细！','系统提示',MB_ICONINFORMATION);

end;

procedure TFrm_WorkBILL.E_FAgentNamePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  Act_AgentNum.Execute;
end;

procedure TFrm_WorkBILL.MDataBeforePost(DataSet: TDataSet);
begin
  inherited;

  If DataSet['FPriceDateID']=Null then DataSet['FPriceDateID']:=0;
  If DataSet['FItemID']=Null then DataSet['FItemID']:=0;
  If DataSet['FAgentID']=Null then DataSet['FAgentID']:=0;

  If DataSet['FClientFullName']=Null then DataSet['FClientFullName']:='';
  If DataSet['FClientShortName']=Null then DataSet['FClientShortName']:='';
  If DataSet['FAgentName']=Null then DataSet['FAgentName']:='';
  If DataSet['FAdvancePercent']=Null then DataSet['FAdvancePercent']:=0;
  If DataSet['FJobMode']=Null then DataSet['FJobMode']:='包工包料包运输';
  If DataSet['FDeliveryPlace']=Null then DataSet['FDeliveryPlace']:='安装现场';

  If DataSet['FDeliveryPlace']=Null then DataSet['FDeliveryPlace']:='';
  If DataSet['FE05']=Null then DataSet['FE05']:='';
  If DataSet['FMaterialDate']=Null then DataSet['FMaterialDate']:='';
  If DataSet['FWorkItemRemark']=Null then DataSet['FWorkItemRemark']:='';
  If DataSet['FWorkPaymentWay']=Null then DataSet['FWorkPaymentWay']:='';
  If DataSet['FBidNum']=Null then DataSet['FBidNum']:='';

  If DataSet['FIsdel']=Null then DataSet['FIsdel']:=False;



end;

procedure TFrm_WorkBILL.E_FClientShortNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  Act_ItemNum.Execute;
end;

procedure TFrm_WorkBILL.E_FClientFullNameKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  If Key=13 then
  begin
    Act_ItemNum.Execute;
  end;

end;

procedure TFrm_WorkBILL.Act_AgentNUmExecute(Sender: TObject);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  mData.Edit;
  mData.Post;
  try
    qry.SQL.Text:='Select * from  VT_AgentItem with(nolock) '
                 +'where  (FAgentName like :Locate1  or FAgentName like :Locate2) and FDepartmentID=:FDepartmentID  '
                 +'order by FNumber ';
    qry.Parameters.FindParam('Locate1').value:='%'+mData['FAgentName']+'%';
    qry.Parameters.FindParam('Locate2').value:='%'+mData['FAgentName']+'%';
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
      mData['FAgentName']:=qry.FieldByName('FAgentName').Value;
      mData['FJobPlace']:=qry.FieldByName('FJobPlace').Value;
      mData['FWorkPaymentWay']:=qry.FieldByName('FPaymentWay').Value;
      mData.Post;
    end
    else
    begin
      mData.Edit;
      mData['FAgentName']:='';
      mData['FJobPlace']:='';
      mData['FWorkPaymentWay']:='';
      mData.Post;
    end
  end;


end;

procedure TFrm_WorkBILL.E_FAgentNameKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  If Key=13 then
  begin
    Act_AgentNum.Execute;
  end;

end;

procedure TFrm_WorkBILL.E_FE05PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  mData.Edit;
  mData.Post;
  try
    qry.SQL.Text:='Select distinct FE05 as FNumber from  V_WorkItem with(nolock) '
                 +'where  FE05 like :FE05  and FDepartmentID=:FDepartmentID  '
                 +'order by FE05 ';
    qry.Parameters.FindParam('FE05').value:='%'+mdata['FE05']+'%';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Open;
  finally
    ;
  end;
  If qry.RecordCount>0 then
  selValue:=select('选择补充说明','FNumber','FNumber','FNumber','FNumber',qry);
  If (Length(selValue)>0)  then
  begin
     mData.Edit;
     mData['FE05']:=qry.FieldByName('FNumber').Value;
     mData.Post;
  end
  else
     application.MessageBox('请选择明细！','系统提示',MB_ICONINFORMATION);


end;

procedure TFrm_WorkBILL.E_FMaterialDatePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry,qry1: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry1:=TADOQuery.Create(self);
  qry1.ConnectionString:=mdlData.ReadConnStr;

  try
    qry.SQL.Text:='select * from VT_SelBalancePrice with(nolock) where  FDepartmentID=:FDepartmentID ';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Open;
  finally
     ;
  end;

  selValue:=select('选择执行单价','FNumber','FParentNumber','FNumber','FName',qry);
  If (Length(selValue)>0) and (qry.FieldByName('Isleaf').Value=1) then
  begin
    mdata.Edit;
    mdata['FMaterialDate']:=qry.FieldByName('FMaterialDate').Value;
    mdata['FPriceDateID']:=qry.FieldByName('FPriceDateID').Value;
    mdata.Post;
  end
  else
  begin
    messagedlg('请选择明细！',mtInformation,[mbok],0);
    Exit;
  end;

  //取单价库
  try
    qry.SQL.Text:='select * from V_BalancePrice with(nolock) where FPriceDateID=:FPriceDateID '
                 +'and FDepartmentID=:FDepartmentID order by FProductName,FPartsCode,Fnumber ';
    qry.Parameters.FindParam('FPriceDateID').value:=mdata['FPriceDateID'];
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Open;
  finally
     ;
  end;
  MData_Price.CopyFromDataSet(qry);
  MData_Price.Active:=True;
  MData_Price.Edit;
  MData_Price.First;


  qry.Free;

end;

procedure TFrm_WorkBILL.Act_MaxItemNumExecute(Sender: TObject);
var   qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  inherited;
  //取任务单号
   try
    qry.SQL.Text:='select max(FWorkItemNum) as FMaxWorkItemNum,cast(FWorkYear as varchar(4))+substring(FWorkItemNum,5,2) as yymm  from V_WorkList with(nolock) '
                 +'where FDepartmentID=:FDepartmentID and cast(FWorkYear as varchar(4))+substring(FWorkItemNum,5,2)=:yymm '
                 +'group by cast(FWorkYear as varchar(4))+substring(FWorkItemNum,5,2)';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Parameters.FindParam('yymm').value:=Copy(ForMatDateTime('yyyymmdd',mdata['FWorkItemDate']),1,6);
    qry.Open;
  finally
     ;
  end;
//  E_FDepartmentNum.Text:=UserFDepartmentNum;
  mdata.Edit;
  If qry.RecordCount=1 then
  begin
     mdata['FWorkItemNum']:=Format('%.3d',[(StrToInt(qry.FieldByName('FMaxWorkItemNum').Value)+1)]);
     mdata['FWorkItemNo']:=copy(IntToStr(qry.FieldByName('FMaxWorkItemNum').Value+1),7,3);
  end
  else
  begin
     mdata['FWorkItemNum']:=ForMatDateTime('yyyymm',mdata['FWorkItemDate'])+'001';
     mdata['FWorkItemNo']:=1;
  end;
  mdata.Post;
  Mdata.Edit;
  Mdata['FWorkItemNo']:=StrToInt(Copy(Mdata['FWorkItemNum'],7,3));
  Mdata.Post;


end;

procedure TFrm_WorkBILL.E_FWorkItemDateExit(Sender: TObject);
begin
  inherited;
  Act_MaxItemNum.Execute ; //取任务单号

end;

procedure TFrm_WorkBILL.Act_SelExecute(Sender: TObject);
var  i,j: integer;
begin
  inherited;
  If (MData_Price['FPriceDateID']<>MData['FPriceDateID']) or (MData['FPriceDateID']=0) then
     messagedlg('请选择执行单价！',mtInformation,[mbok],0);

  MData_Price.Edit;
  MData_Price.Post;
  MData_List.Open;
  begin
    for i:=0 to cxGV_Price.DataController.Controller.SelectedRecordCount-1 do
    begin
      j:=cxGV_Price.DataController.GetSelectedRowIndex(i);
      MData_List.Append;

      MData_List['FNumber']:=cxGV_Price.DataController.GetValue(J,cxGV_Price.DataController.GetItemByFieldName('FNumber').Index);
      MData_List['FBalanceFullName']:=cxGV_Price.DataController.GetValue(J,cxGV_Price.DataController.GetItemByFieldName('FBalanceFullName').Index);
      MData_List['FBalanceName']:=cxGV_Price.DataController.GetValue(J,cxGV_Price.DataController.GetItemByFieldName('FBalanceName').Index);
      MData_List['FBalanceModel']:=cxGV_Price.DataController.GetValue(J,cxGV_Price.DataController.GetItemByFieldName('FBalanceModel').Index);
      MData_List['FUnitName']:=cxGV_Price.DataController.GetValue(J,cxGV_Price.DataController.GetItemByFieldName('FUnitName').Index);
      MData_List['FBalanceBasePrice']:=cxGV_Price.DataController.GetValue(J,cxGV_Price.DataController.GetItemByFieldName('FBalanceBasePrice').Index);
      MData_List['FWorkResizePrice']:=cxGV_Price.DataController.GetValue(J,cxGV_Price.DataController.GetItemByFieldName('FWorkResizePrice').Index);
      MData_List['FMaterialDate']:=cxGV_Price.DataController.GetValue(J,cxGV_Price.DataController.GetItemByFieldName('FMaterialDate').Index);
      MData_List['FBalancePriceID']:=cxGV_Price.DataController.GetValue(J,cxGV_Price.DataController.GetItemByFieldName('FBalancePriceID').Index);
      MData_List['FPriceDateID']:=cxGV_Price.DataController.GetValue(J,cxGV_Price.DataController.GetItemByFieldName('FPriceDateID').Index);

      MData_List['FEstimateQry']:=0;
      MData_List['FWorkOutPrice']:=0.00;
      MData_List['FOutPrice']:=0.00000;
      MData_List['FPrice']:=0.00000;
      MData_List['FEstimateAmount']:=0.00000;

      MData_List.Post;
    end;
  end;


end;

procedure TFrm_WorkBILL.cxGV_PriceDblClick(Sender: TObject);
begin
  inherited;
  Act_Sel.Execute;
end;

procedure TFrm_WorkBILL.FDeliveryDateHeaderClick(Sender: TObject);
Var
  qry: TADOQuery;
  I_index:Integer;
  P_Str:Ttime;

begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If P_state=2 then
     Exit;

  If mData_List.RecordCount<=0 then
    Exit;
  I_index:=mData_List.RecNo ;

  mData_List.Edit;
  mData_List.Post;

  If mData_List['FDeliveryDate']=Null then
     Exit;
  P_Str:=mData_List['FDeliveryDate'];

  mData_List.First;
  while not mData_List.eof do
  begin
    If (mData_List['FDeliveryDate']=Null) then
    begin
      mData_List.Edit;
      mData_List['FDeliveryDate']:=P_Str;
      mData_List.Post;
    end;
    mData_List.Next;
  end;
  If (I_index<mData_List.RecordCount) and (I_index<>-1) then
     mData_List.RecNo :=I_index
  else
     mData_List.Last;



end;

procedure TFrm_WorkBILL.Act_StatusExecute(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  TB_ZF.Visible:=False;
  TB_Edit.Visible:=False;
  TB_Del.Visible:=False;
  TB_Submit.Visible:=False;
  TB_Check.Visible:=False;
  TB_Audit.Visible:=False;

  //制单者是本人
  try
    If TS_Tree.ActivePage=TS_Write then
    begin
      qry.SQL.Text:='Select distinct FWorkStatus,FWorkWriteID from V_WorkItem with(nolock) '
                   +'where FNumber_Write like :FNumber  and FDepartmentID=:FDepartmentID ';
    end;
    If TS_Tree.ActivePage=TS_Num then
    begin
      qry.SQL.Text:='Select distinct FWorkStatus,FWorkWriteID from V_WorkItem with(nolock) '
                   +'where FNumber like :FNumber  and FDepartmentID=:FDepartmentID ';
    end;
    If TS_Tree.ActivePage=TS_WorkItem then
    begin
      qry.SQL.Text:='Select distinct FWorkStatus,FWorkWriteID from V_WorkItem with(nolock) '
                   +'where FNumber_Item like :FNumber  and FDepartmentID=:FDepartmentID ';
    end;
    If TS_Tree.ActivePage=TS_Agent then
    begin
      qry.SQL.Text:='Select distinct FWorkStatus,FWorkWriteID from V_WorkItem with(nolock) '
                   +'where FNumber_Agent like :FNumber  and FDepartmentID=:FDepartmentID ';
    end;

    qry.Parameters.FindParam('FNumber').value:=ListItemFNumber+'%';
    qry.Parameters.FindParam('FDepartmentID').value:= UserFDepartmentID;
    qry.Open;
  finally
    ;
  end;
  If (qry.RecordCount>1)  then
     Exit;
   //制单者是本人

  If (qry.RecordCount=1) and (qry.FieldByName('FWorkStatus').AsInteger=0)
      and (qry.FieldByName('FWorkWriteID').AsInteger=UserNumID) then
  begin
    If mdata.RecordCount=0 then
    begin
      TB_ZF.Visible:=False;
      TB_Del.Visible:=False;
      TB_Edit.Visible:=False;
      TB_Submit.Visible:=False;
    end;
    If mdata.RecordCount>0 then
    begin
      TB_Submit.Visible:=mdlData.PermissionCheckRights(TFrm_WorkBILL.ClassName,'提交');
      TB_Submit.Caption:='批量提交';
      TB_ZF.Visible:=False;
      TB_Edit.Visible:=False;
      TB_Del.Visible:=False;
    end;
    If mdata.RecordCount=1 then
    begin
      TB_Edit.Visible:=mdlData.PermissionCheckRights(TFrm_WorkBILL.ClassName,'修改');
      TB_Del.Visible:=mdlData.PermissionCheckRights(TFrm_WorkBILL.ClassName,'删除');
      TB_Submit.Visible:=mdlData.PermissionCheckRights(TFrm_WorkBILL.ClassName,'提交');
      TB_ZF.Visible:=mdlData.PermissionCheckRights(TFrm_WorkBILL.ClassName,'提交');
      TB_Submit.Caption:='提交';
    end;
    Exit;
  end;


   //提交者是本人
  If (qry.RecordCount=1) and (qry.FieldByName('FWorkStatus').AsInteger=1)
     and (qry.FieldByName('FWorkWriteID').AsInteger=UserNumID) then
  begin
    TB_Edit.Visible:=False;
    TB_Del.Visible:=False;
    TB_ZF.Visible:=False;
    TB_Submit.Visible:=mdlData.PermissionCheckRights(TFrm_WorkBILL.ClassName,'提交');
    If MData.RecordCount=0 then
      TB_Submit.Visible:=False;
    If MData.RecordCount>0 then
       TB_Submit.Caption:='批量提交撤回';
    If MData.RecordCount=1 then
       TB_Submit.Caption:='提交撤回';
    Exit;
  end;


   //校对

  If (qry.RecordCount=1) and (qry.FieldByName('FWorkStatus').AsInteger=1) then
  begin
    If MData.RecordCount=0 then
    begin
      TB_Check.Visible:=False;
      TB_Edit.Visible:=False;
      TB_Del.Visible:=False;
    end;
    If MData.RecordCount>0 then
    begin
      TB_Check.Visible:=mdlData.PermissionCheckRights(TFrm_WorkBILL.ClassName,'校对');
      TB_Check.Caption:='批量校对';
      TB_Edit.Visible:=False;
      TB_Del.Visible:=False;
    end;
    If MData.RecordCount=1 then
    begin
      TB_Check.Visible:=mdlData.PermissionCheckRights(TFrm_WorkBILL.ClassName,'校对');
      TB_Check.Caption:='校对';
      TB_Edit.Visible:=False;
      TB_Del.Visible:=False;
    end;
   //Exit;
  end;


  If (qry.RecordCount=1) and (qry.FieldByName('FWorkStatus').AsInteger=2) then
  begin
    TB_Check.Visible:=mdlData.PermissionCheckRights(TFrm_WorkBILL.ClassName,'校对');
    If MData.RecordCount=0 then
       TB_Check.Visible:=False;
    If MData.RecordCount>0 then
       TB_Check.Caption:='批量校对撤回';
    If MData.RecordCount=1 then
       TB_Check.Caption:='校对撤回';
    TB_Edit.Visible:=False;
    TB_Del.Visible:=False;
   // Exit;
  end;


    //审核

  If (qry.RecordCount=1) and (qry.FieldByName('FWorkStatus').AsInteger=2) then
  begin
    If MData.RecordCount=0 then
    begin
      TB_Audit.Visible:=False;
      TB_Edit.Visible:=False;
      TB_Del.Visible:=False;
    end;
    If MData.RecordCount>0 then
    begin
      TB_Audit.Visible:=mdlData.PermissionCheckRights(TFrm_WorkBILL.ClassName,'审核');
      TB_Audit.Caption:='批量审核';
      TB_Edit.Visible:=False;
      TB_Del.Visible:=False;
    end;
    If MData.RecordCount=1 then
    begin
      TB_Audit.Visible:=mdlData.PermissionCheckRights(TFrm_WorkBILL.ClassName,'审核');
      TB_Audit.Caption:='审核';
      TB_Edit.Visible:=False;
      TB_Del.Visible:=False;
    end;
  end;


  If (qry.RecordCount=1) and (qry.FieldByName('FWorkStatus').AsInteger=3) then
  begin
    TB_Audit.Visible:=mdlData.PermissionCheckRights(TFrm_WorkBILL.ClassName,'审核');
    If MData.RecordCount=0 then
       TB_Audit.Visible:=False;
    If MData.RecordCount>0 then
       TB_Audit.Caption:='批量审核撤回';
    If MData.RecordCount=1 then
       TB_Audit.Caption:='审核撤回';
    TB_Edit.Visible:=False;
    TB_Del.Visible:=False;
  end;

end;

procedure TFrm_WorkBILL.TB_SubmitClick(Sender: TObject);
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
    If application.MessageBox(Pchar('系统提示：是否对生产任务单号为：'+ListItemFNumber+'的单据进行提交？'+chr(13)+chr(13)
                                   +'确定要提交对本单据吗？'),'系统提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      MData.First;
      while not MData.eof do
      begin
        try
          qry.SQL.Text:='Update T_WorkItem Set FWorkStatus=1,FWorkSubmitDate=:FWorkSubmitDate  where FWorkItemID=:FWorkItemID';
          qry.Parameters.FindParam('FWorkSubmitDate').value:= S_SyStemDate(qryDate);
          qry.Parameters.FindParam('FWorkItemID').value:=MData['FWorkItemID'];
          qry.ExecSQL;
        finally
          ;
        end;
        MData.Edit;
        MData['FWorkStatus']:=1;
        MData['FStatusNotes']:='提交';
        MData['FWorkSubmitDate']:=S_SyStemDate(qryDate);
        MData.Post;
        //Act_Update.Execute;     //更新主表合计
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
    If application.MessageBox(Pchar('系统提示：是否对生产任务单号为：'+ListItemFNumber+'的单据进行提交撤回？'+chr(13)+chr(13)
                                     +'确定要对本单据提交撤回吗？'),'系统提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      MData.First;
      while not MData.eof do
      begin
        try
          qry.SQL.Text:='Update T_WorkItem Set FWorkStatus=0,FWorkSubmitDate=:FWorkSubmitDate where FWorkItemID=:FWorkItemID';
          qry.Parameters.FindParam('FWorkSubmitDate').value:= Null;
          qry.Parameters.FindParam('FWorkItemID').value:= MData['FWorkItemID'];
          qry.ExecSQL;
        finally
          ;
        end;
        MData.Edit;
        MData['FWorkStatus']:=0;
        MData['FStatusNotes']:='填单';
        MData['FWorkSubmitDate']:=Null;
        MData.Post;
       // Act_Update.Execute;  //更新主表合计
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

  Act_TreeSel.Execute;

end;

procedure TFrm_WorkBILL.TB_CheckClick(Sender: TObject);
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
    If application.MessageBox(Pchar('系统提示：是否对生产任务单号为：'+ListItemFNumber+'的单据进行校对？'+chr(13)+chr(13)
                                   +'确定要校对对本单据吗？'),'系统提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      MData.First;
      while not MData.eof do
      begin
        try
          qry.SQL.Text:='Update T_WorkItem Set FWorkStatus=2,FWorkCheckDate=:FWorkCheckDate,FWorkCheckID=:FWorkCheckID  where FWorkItemID=:FWorkItemID';
          qry.Parameters.FindParam('FWorkCheckDate').value:= S_SyStemDate(qryDate);
          qry.Parameters.FindParam('FWorkCheckID').value:= UserNumID;
          qry.Parameters.FindParam('FWorkItemID').value:=MData['FWorkItemID'];
          qry.ExecSQL;
        finally
          ;
        end;
        MData.Edit;
        MData['FWorkStatus']:=1;
        MData['FStatusNotes']:='校对';
        MData['FWorkCheckDate']:=S_SyStemDate(qryDate);
        MData.Post;
        //Act_Update.Execute;     //更新主表合计
        MData.Next;
      end;
      If MData.RecordCount=1 then
      begin
        application.MessageBox('校对完毕！','系统提示',MB_ICONINFORMATION);
        TB_Check.Caption:='校对撤回';
      end;
      If MData.RecordCount>1 then
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
    If application.MessageBox(Pchar('系统提示：是否对生产任务单号为：'+ListItemFNumber+'的单据进行校对撤回？'+chr(13)+chr(13)
                                     +'确定要对本单据校对撤回吗？'),'系统提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      MData.First;
      while not MData.eof do
      begin
        try
          qry.SQL.Text:='Update T_WorkItem Set FWorkStatus=1,FWorkCheckDate=:FWorkCheckDate,FWorkCheckID=:FWorkCheckID where FWorkItemID=:FWorkItemID';
          qry.Parameters.FindParam('FWorkCheckDate').value:= Null;
          qry.Parameters.FindParam('FWorkCheckID').value:= 0;
          qry.Parameters.FindParam('FWorkItemID').value:= MData['FWorkItemID'];
          qry.ExecSQL;
        finally
          ;
        end;
        MData.Edit;
        MData['FWorkStatus']:=0;
        MData['FStatusNotes']:='提交';
        MData['FWorkCheckDate']:=Null;
        MData.Post;
       // Act_Update.Execute;  //更新主表合计
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
  Act_TreeSel.Execute;


end;

procedure TFrm_WorkBILL.TB_AuditClick(Sender: TObject);
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
    If application.MessageBox(Pchar('系统提示：是否对生产任务单号为：'+ListItemFNumber+'的单据进行审核？'+chr(13)+chr(13)
                                   +'确定要审核对本单据吗？'),'系统提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      MData.First;
      while not MData.eof do
      begin
        try
          qry.SQL.Text:='Update T_WorkItem Set FWorkStatus=3,FWorkAuditDate=:FWorkAuditDate,FWorkAuditID=:FWorkAuditID  where FWorkItemID=:FWorkItemID';
          qry.Parameters.FindParam('FWorkAuditDate').value:= S_SyStemDate(qryDate);
          qry.Parameters.FindParam('FWorkAuditID').value:= UserNumID;
          qry.Parameters.FindParam('FWorkItemID').value:=MData['FWorkItemID'];
          qry.ExecSQL;
        finally
          ;
        end;
        MData.Edit;
        MData['FWorkStatus']:=1;
        MData['FStatusNotes']:='审核';
        MData['FWorkAuditDate']:=S_SyStemDate(qryDate);
        MData.Post;
        //Act_Update.Execute;     //更新主表合计
        MData.Next;
      end;
      If MData.RecordCount=1 then
      begin
        application.MessageBox('审核完毕！','系统提示',MB_ICONINFORMATION);
        TB_Audit.Caption:='审核撤回';
      end;
      If MData.RecordCount>1 then
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
    If application.MessageBox(Pchar('系统提示：是否对生产任务单号为：'+ListItemFNumber+'的单据进行审核撤回？'+chr(13)+chr(13)
                                     +'确定要对本单据审核撤回吗？'),'系统提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      MData.First;
      while not MData.eof do
      begin
        try
          qry.SQL.Text:='Update T_WorkItem Set FWorkStatus=2,FWorkAuditDate=:FWorkAuditDate,FWorkAuditID=:FWorkAuditID where FWorkItemID=:FWorkItemID';
          qry.Parameters.FindParam('FWorkAuditDate').value:= Null;
          qry.Parameters.FindParam('FWorkAuditID').value:= 0;
          qry.Parameters.FindParam('FWorkItemID').value:= MData['FWorkItemID'];
          qry.ExecSQL;
        finally
          ;
        end;
        MData.Edit;
        MData['FWorkStatus']:=0;
        MData['FStatusNotes']:='校对';
        MData['FWorkAuditDate']:=Null;
        MData.Post;
       // Act_Update.Execute;  //更新主表合计
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
  Act_TreeSel.Execute;


end;

procedure TFrm_WorkBILL.TB_PushDownClick(Sender: TObject);
var
 qry,qryDate:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qryDate:=TAdoQuery.Create(self);
  qryDate.ConnectionString:=mdlData.ReadConnStr;
  P_state:=3;
  If (TB_PushDown.Caption='下推') or (TB_PushDown.Caption='批量下推') then
  begin
    If application.MessageBox(Pchar('系统提示：是否对生产任务单号为：'+ListItemFNumber+'的单据进行下推？'+chr(13)+chr(13)
                                   +'确定要下推对本单据吗？'),'系统提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      MData.First;
      while not MData.eof do
      begin
        try
          qry.SQL.Text:='Update T_WorkItem Set FWorkStatus=4,FWorkPushDownDate=:FWorkPushDownDate,FWorkPushDownID=:FWorkPushDownID  where FWorkItemID=:FWorkItemID';
          qry.Parameters.FindParam('FWorkPushDownDate').value:= S_SyStemDate(qryDate);
          qry.Parameters.FindParam('FWorkPushDownID').value:= UserNumID;
          qry.Parameters.FindParam('FWorkItemID').value:=MData['FWorkItemID'];
          qry.ExecSQL;
        finally
          ;
        end;
        MData.Edit;
        MData['FWorkStatus']:=1;
        MData['FStatusNotes']:='下推';
        MData['FWorkPushDownDate']:=S_SyStemDate(qryDate);
        MData.Post;
        //Act_Update.Execute;     //更新主表合计
        MData.Next;
      end;
      If MData.RecordCount=1 then
      begin
        application.MessageBox('下推完毕！','系统提示',MB_ICONINFORMATION);
        TB_PushDown.Caption:='下推撤回';
      end;
      If MData.RecordCount>1 then
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
    If application.MessageBox(Pchar('系统提示：是否对生产任务单号为：'+ListItemFNumber+'的单据进行下推撤回？'+chr(13)+chr(13)
                                     +'确定要对本单据下推撤回吗？'),'系统提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      MData.First;
      while not MData.eof do
      begin
        try
          qry.SQL.Text:='Update T_WorkItem Set FWorkStatus=3,FWorkPushDownDate=:FWorkPushDownDate,FWorkPushDownID=:FWorkPushDownID where FWorkItemID=:FWorkItemID';
          qry.Parameters.FindParam('FWorkPushDownDate').value:= Null;
          qry.Parameters.FindParam('FWorkPushDownID').value:= 0;
          qry.Parameters.FindParam('FWorkItemID').value:= MData['FWorkItemID'];
          qry.ExecSQL;
        finally
          ;
        end;
        MData.Edit;
        MData['FWorkStatus']:=0;
        MData['FStatusNotes']:='审核';
        MData['FWorkPushDownDate']:=Null;
        MData.Post;
       // Act_Update.Execute;  //更新主表合计
        MData.Next;
      end;
      If MData.RecordCount=1 then
      begin
        application.MessageBox('下推撤回完毕！','系统提示',MB_ICONINFORMATION);
        TB_PushDown.Caption:='审核';
      end;
      If MData.RecordCount>1 then
      begin
        application.MessageBox('批量下推撤回完毕！','系统提示',MB_ICONINFORMATION);
        TB_PushDown.Caption:='批量下推';
      end;
      Act_Status.Execute;  //权限设置
    end;
    P_state:=2;
    Exit;
  end;

  Act_TreeSel.Execute;


end;

procedure TFrm_WorkBILL.TB_Prin_xlsClick(Sender: TObject);
begin
  P_Print:='导出';
  If (mdata_List['FTaxRate']=0.11) or (mdata_List['FTaxRate']=0.10)  or (mdata_List['FTaxRate']=0.09) then
     Act_Print_Work_YS.Execute;
  If (mdata_List['FTaxRate']=0.17) or (mdata_List['FTaxRate']=0.16)  or (mdata_List['FTaxRate']=0.13)   or (mdata_List['FTaxRate']=0.03)  or (mdata_List['FTaxRate']=0.06)  or (mdata_List['FTaxRate']=0.01) then
     Act_Print_Work.Execute;

  application.MessageBox('生产任务单导出完毕！','系统提示',MB_ICONINFORMATION);

end;

procedure TFrm_WorkBILL.Act_Print_WorkExecute(Sender: TObject);
var
  i,k,h,ReNum,R_Count:Integer;
  ExcelApp,MyWorkBook: Variant;
  filepath,savefilepath,copystart,copyend,copystart1,P_FEstimateQry:string;
  qry:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.EnableBCD:=False;//小数位数>4

   P_state :=3;
   //算主产品kg合计
   try
     qry.SQL.Text:='select sum(FEstimateQry) as FEstimateQry from  V_WorkList with(nolock) '
                 +' where FWorkItemID=:FWorkItemID and FProductClass=''主产品'' and FUnitName=''kg'' group by FWorkItemID ';
     qry.Parameters.FindParam('FWorkItemID').value:= mdata['FWorkItemID'];
     qry.Open;
   finally
     ;
   end;
   If qry.RecordCount>0 then
      P_FEstimateQry:=qry.FieldByName('FEstimateQry').AsString;

   try
     qry.SQL.Text:='select * from  V_WorkList with(nolock) '
                 +' where FWorkItemID=:FWorkItemID order by  FNumber ';
     qry.Parameters.FindParam('FWorkItemID').value:= mdata['FWorkItemID'];
     qry.Open;
   finally
     ;
   end;
    If qry.RecordCount>0 then
       k:=1
    else
       Exit;

   If ((qry.Active) and (qry.recordcount=0))
      and
      ((qry.FieldByName('FWorkItemNum').AsString='') or (qry.FieldByName('FWorkItemNum').AsString=Null)) then
   begin
     Application.MessageBox(PChar('没有可导出的数据，请重新选择'), '数据引出错误', MB_OK + MB_ICONSTOP);
     Exit;
   end;

   filepath:=Extractfilepath(application.ExeName)+'生产任务模版.xls';
   ExcelApp:= CreateOleObject('Excel.Application' );
  // MyWorkBook.Sheets[1].Copy(EmptyParam,vLastSheet);
   ExcelApp.DisplayAlerts:=False;                  //不显示提示框
   MyWorkBook:=ExcelApp.WorkBooks.Open(filepath);   //打开模版

  // ExcelApp.Visible:=False;  //导入经过不可见

   MyWorkBook.WorkSheets[k].Cells[1,1].Value := AnsiReplaceStr(MyWorkBook.WorkSheets[k].Cells[1,1].Value,'A',qry.FieldByName('FWorkData').AsString);

   MyWorkBook.WorkSheets[k].Cells[3,3].Value := qry.FieldByName('FClientFullName').AsString; //项目名称
   MyWorkBook.WorkSheets[k].Cells[4,3].Value := qry.FieldByName('FDepartmentNum').AsString+qry.FieldByName('FWorkItemNum').AsString; //任务单号
   MyWorkBook.WorkSheets[k].Cells[5,3].Value := qry.FieldByName('FDeliveryPlace').AsString; //交货地点
   MyWorkBook.WorkSheets[k].Cells[6,3].Value := qry.FieldByName('FJobPlace').AsString; //加工地点
   MyWorkBook.WorkSheets[k].Cells[4,8].Value := qry.FieldByName('FBranchFileNo').AsString; //档 案 号
   MyWorkBook.WorkSheets[k].Cells[5,8].Value := qry.FieldByName('FItemModel').AsString; //规格型号
   MyWorkBook.WorkSheets[k].Cells[6,8].Value := qry.FieldByName('FItemNumber').AsString; //图号
   MyWorkBook.WorkSheets[k].Cells[4,10].Value:=AnsiReplaceStr(MyWorkBook.WorkSheets[1].Cells[4,10].Value,'A',qry.FieldByName('FItemQry').AsString); //台套数
   MyWorkBook.WorkSheets[k].Cells[12,3].Value := qry.FieldByName('FWorkAudit').AsString; //审核
   MyWorkBook.WorkSheets[k].Cells[12,7].Value := qry.FieldByName('FWorkCheck').AsString; //校对
   MyWorkBook.WorkSheets[k].Cells[12,10].Value := qry.FieldByName('FWorkWrite').AsString; //制单

   MyWorkBook.WorkSheets[k].Cells[10,6].Value := P_FEstimateQry; //主产品重量合计

   MyWorkBook.WorkSheets[k].Cells[18,2].Value:=AnsiReplaceStr(MyWorkBook.WorkSheets[k].Cells[18,2].Value,'A',qry.FieldByName('FBidNum').AsString); //招标编号
   MyWorkBook.WorkSheets[k].Cells[19,2].Value:=AnsiReplaceStr(MyWorkBook.WorkSheets[k].Cells[19,2].Value,'B',qry.FieldByName('FWorkPaymentWay').AsString); //付款方式
   MyWorkBook.WorkSheets[k].Cells[20,4].Value := qry.FieldByName('FE05').AsString; //补充说明
   MyWorkBook.WorkSheets[k].Cells[28,3].Value := qry.FieldByName('FWorkItemDate').AsString; //单据日期

   if (qry.FieldByName('FWorkData').AsString='电袋事业部(厦门)') or (qry.FieldByName('FWorkData').AsString='电袋与管带事业部(厦门)')  then
      MyWorkBook.WorkSheets[k].Cells[26,3].Value:= '厦门龙净环保技术有限公司';
   if (qry.FieldByName('FWorkData').AsString='电袋与管带事业部(智能)')  then
      MyWorkBook.WorkSheets[k].Cells[26,3].Value:= '福建龙净环保智能输送工程有限公司';
   if (qry.FieldByName('FWorkData').AsString='电袋事业部') or (qry.FieldByName('FWorkData').AsString='电袋与管带事业部')  then
      MyWorkBook.WorkSheets[k].Cells[26,3].Value:= '福建龙净环保股份有限公司';

   MyWorkBook.WorkSheets[k].Cells[26,8].Value:= qry.FieldByName('FAgentName').AsString; //乙方

   MyWorkBook.WorkSheets[k].Cells[28,4].Value:= qry.FieldByName('FWorkItemDate').AsString; //日期


   i:=9;
   MyWorkBook.WorkSheets[k].Name:=qry.FieldByName('FWorkItemNum').AsString;

   copystart:='A'+IntToStr(i);
   if qry.recordcount>0 then
   Begin
     if qry.recordcount>1 then
     Begin
       copystart:='A'+IntToStr(i);
       copystart1:='A'+IntToStr(i+1);
       copyend:='J'+IntToStr(i);
       ReNum:=qry.recordcount-1;
       while ReNum>0 do
       Begin
         ExcelApp.ActiveSheet.Range[copystart+':'+copyend].Copy;
         ExcelApp.ActiveSheet.Rows[i+1].Insert;
         ExcelApp.ActiveSheet.Range[copystart1].PasteSpecial;
         Renum:=Renum-1;
       end;
     End
     else
     Begin
       R_Count:=qry.recordcount;
     end;
     qry.first;
     h:=0 ;
     while not qry.eof do
     Begin
       MyWorkBook.WorkSheets[k].Cells[i,1].Value := inttostr(h+1); //序号
       if qry.FieldByName('FBalanceModel').AsString='' then
          MyWorkBook.WorkSheets[k].Cells[i,2].Value := ' '+qry.FieldByName('FBalanceName').AsString
       else
          MyWorkBook.WorkSheets[k].Cells[i,2].Value := ' '+qry.FieldByName('FBalanceName').AsString
                                                      +'['+qry.FieldByName('FBalanceModel').AsString+']'; //部件名称 +规格
       MyWorkBook.WorkSheets[k].Cells[i,5].Value := qry.FieldByName('FUnitName').AsString; //单位
       MyWorkBook.WorkSheets[k].Cells[i,6].Value := qry.FieldByName('FEstimateQry').AsString; //单台估重
       MyWorkBook.WorkSheets[k].Cells[i,7].Value := qry.FieldByName('FWorkItemPrice').AsString; //单价
       MyWorkBook.WorkSheets[k].Cells[i,8].Value := qry.FieldByName('FEstimateAmount').AsString; //金  额
       MyWorkBook.WorkSheets[k].Cells[i,9].Value := qry.FieldByName('FDeliveryDate').AsString; //交货期
       MyWorkBook.WorkSheets[k].Cells[i,10].Value := qry.FieldByName('FWorkListRemark').AsString; //备注
       ExcelApp.ActiveSheet.Rows[i].RowHeight:=28;//?1厘米    产品名称
       qry.next;
       i:=i+1;
       h:=h+1;
     End;
     MyWorkBook.WorkSheets[k].Cells[i,8].Value := '=SUM(h9:h'+IntToStr(i-1)+')'; //合计重量
    // MyWorkBook.WorkSheets[k].Cells[i,6].Value := '=SUMIF(E9:E'+IntToStr(i-1)+',"kg",F9:F'+IntToStr(i-1)+')'; //预估重量总计

  // MyWorkBook.WorkSheets[1].delete; //删除模版
   end;
   If  P_Print='导出' then
   begin
     If application.MessageBox('是否导出《生产任务单》？若导出请选择导出文件的路径！','提示',MB_ICONINFORMATION+MB_YESNO)=6 then
     begin
       SaveDialog1.FileName:=UserFDepartmentShortName+'生产任务单'+qry.FieldByName('FWorkItemNum').AsString;
       SaveDialog1.Filter:='.xls';
       SaveDialog1.Execute;
       savefilepath:=SaveDialog1.FileName+'.xls';

       If FileExists(savefilepath) then    //文件存在就覆盖
       begin
         If application.MessageBox('文件已经存在是否覆盖？','提示',MB_ICONINFORMATION+MB_YESNO)=6 then
            DeleteFile(savefilepath)
         else
         begin
           SaveDialog1.FileName:=UserFDepartmentShortName+'生产任务单'+qry.FieldByName('FWorkItemNum').AsString;
           SaveDialog1.Filter:='.xls';
           SaveDialog1.Execute;
           savefilepath:=SaveDialog1.FileName+'.xls';
         end;
       end;
     end;
     MyWorkBook.saveas(savefilepath);  //保存文件
   end;
   If  P_Print='预览' then
   //If application.MessageBox('是否预览文件？','提示',MB_ICONINFORMATION+MB_YESNO)=6 then
   begin
     ExcelApp.Visible:=True;
     MyWorkBook.WorkSheets[k].PrintPreview; //预览
   end;

   MyWorkBook.Close;
   ExcelApp.Quit;
   ExcelApp:=Unassigned;

   P_state :=2;
end;

procedure TFrm_WorkBILL.Act_Print_Work_YSExecute(Sender: TObject);
var
  i,k,h,ReNum,R_Count:Integer;
  ExcelApp,MyWorkBook: Variant;
  filepath,savefilepath,copystart,copyend,copystart1,P_FEstimateQry:string;
  qry:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.EnableBCD:=False;//小数位数>4

   P_state :=3;
   //算主产品kg合计
   try
     qry.SQL.Text:='select sum(FEstimateQry) as FEstimateQry from  V_WorkList with(nolock) '
                 +' where FWorkItemID=:FWorkItemID  and FProductClass=''主产品'' and FUnitName=''kg'' group by FWorkItemID ';
     qry.Parameters.FindParam('FWorkItemID').value:= mdata['FWorkItemID'];
     qry.Open;
   finally
     ;
   end;
   If qry.RecordCount>0 then
      P_FEstimateQry:=qry.FieldByName('FEstimateQry').AsString;

   try
     qry.SQL.Text:='select * from  V_WorkList with(nolock) '
                 +' where FWorkItemID=:FWorkItemID order by  FNumber ';
     qry.Parameters.FindParam('FWorkItemID').value:= mdata['FWorkItemID'];
     qry.Open;
   finally
     ;
   end;
    If qry.RecordCount>0 then
       k:=1
    else
       Exit;
   If ((qry.Active) and (qry.recordcount=0))
      and
      ((qry.FieldByName('FWorkItemNum').AsString='') or (qry.FieldByName('FWorkItemNum').AsString=Null)) then
   begin
     Application.MessageBox(PChar('没有可导出的数据，请重新选择'), '数据引出错误', MB_OK + MB_ICONSTOP);
     Exit;
   end;

   filepath:=Extractfilepath(application.ExeName)+'运输分包任务单模版.xls';
   ExcelApp:= CreateOleObject('Excel.Application' );
   //MyWorkBook.Sheets[1].Copy(EmptyParam,vLastSheet);
   ExcelApp.DisplayAlerts:=False;                  //不显示提示框
   MyWorkBook:=ExcelApp.WorkBooks.Open(filepath);   //打开模版

  // ExcelApp.Visible:=False;  //导入经过不可见
   k:=1;

   MyWorkBook.WorkSheets[k].Cells[1,1].Value := AnsiReplaceStr(MyWorkBook.WorkSheets[k].Cells[1,1].Value,'A',qry.FieldByName('FWorkData').AsString);
   MyWorkBook.WorkSheets[k].Cells[3,3].Value := qry.FieldByName('FClientFullName').AsString; //项目名称
   MyWorkBook.WorkSheets[k].Cells[4,3].Value := qry.FieldByName('FDepartmentNum').AsString+qry.FieldByName('FWorkItemNum').AsString; //任务单号
   MyWorkBook.WorkSheets[k].Cells[5,3].Value := qry.FieldByName('FDeliveryPlace').AsString; //交货地点
   MyWorkBook.WorkSheets[k].Cells[6,3].Value := qry.FieldByName('FJobPlace').AsString; //加工地点
   MyWorkBook.WorkSheets[k].Cells[4,8].Value := qry.FieldByName('FItemNumber').AsString; //图号
   MyWorkBook.WorkSheets[k].Cells[6,8].Value := qry.FieldByName('FFileNo').AsString; //档 案 号

   MyWorkBook.WorkSheets[k].Cells[16,2].Value:=AnsiReplaceStr(MyWorkBook.WorkSheets[k].Cells[16,2].Value,'B',qry.FieldByName('FBidNum').AsString); //招议标编号
   MyWorkBook.WorkSheets[k].Cells[17,4].Value := qry.FieldByName('FE05').AsString; //档 案 号

   MyWorkBook.WorkSheets[k].Cells[11,3].Value := qry.FieldByName('FWorkAudit').AsString;
   MyWorkBook.WorkSheets[k].Cells[11,7].Value := qry.FieldByName('FWorkCheck').AsString;
   MyWorkBook.WorkSheets[k].Cells[11,10].Value := qry.FieldByName('FWorkWrite').AsString;


   if (qry.FieldByName('FWorkData').AsString='电袋事业部(厦门)') or (qry.FieldByName('FWorkData').AsString='电袋与管带事业部(厦门)')  then
      MyWorkBook.WorkSheets[k].Cells[24,3].Value:= '厦门龙净环保技术有限公司';
   if (qry.FieldByName('FWorkData').AsString='电袋事业部') or (qry.FieldByName('FWorkData').AsString='电袋与管带事业部')  then
      MyWorkBook.WorkSheets[k].Cells[24,3].Value:= '福建龙净环保股份有限公司';
   if (qry.FieldByName('FWorkData').AsString='电袋与管带事业部(智能)')   then
      MyWorkBook.WorkSheets[k].Cells[24,3].Value:= '福建龙净环保智能输送工程有限公司';

   MyWorkBook.WorkSheets[k].Cells[24,8].Value:= qry.FieldByName('FAgentName').AsString; //乙方
   MyWorkBook.WorkSheets[k].Cells[26,4].Value:= qry.FieldByName('FWorkItemDate').AsString; //日期

   i:=9;
   MyWorkBook.WorkSheets[k].Name:=qry.FieldByName('FDepartmentNum').AsString+qry.FieldByName('FWorkItemNum').AsString;

   copystart:='A'+IntToStr(i);
   if qry.recordcount>0 then
   Begin
     if qry.recordcount>1 then
     Begin
       copystart:='A'+IntToStr(i);
       copystart1:='A'+IntToStr(i+1);
       copyend:='J'+IntToStr(i);
       ReNum:=qry.recordcount-1;
       while ReNum>0 do
       Begin
         ExcelApp.ActiveSheet.Range[copystart+':'+copyend].Copy;
         ExcelApp.ActiveSheet.Rows[i+1].Insert;
         ExcelApp.ActiveSheet.Range[copystart1].PasteSpecial;
         Renum:=Renum-1;
       end;
     End
     else
     Begin
       R_Count:=qry.recordcount;
     end;
     qry.first;
     h:=0 ;
     while not qry.eof do
     Begin
       MyWorkBook.WorkSheets[k].Cells[i,1].Value := inttostr(h+1); //序号
       if qry.FieldByName('FBalanceModel').AsString='' then
          MyWorkBook.WorkSheets[k].Cells[i,2].Value := ' '+qry.FieldByName('FBalanceName').AsString
       else
       MyWorkBook.WorkSheets[k].Cells[i,2].Value := ' '+qry.FieldByName('FBalanceName').AsString+'['+qry.FieldByName('FBalanceModel').AsString+']'; //部件名称 +规格

       MyWorkBook.WorkSheets[k].Cells[i,5].Value := qry.FieldByName('FUnitName').AsString; //单位
       MyWorkBook.WorkSheets[k].Cells[i,6].Value := qry.FieldByName('FEstimateQry').AsString; //单台估重
       MyWorkBook.WorkSheets[k].Cells[i,7].Value := qry.FieldByName('FWorkItemPrice').AsString; //单价
       MyWorkBook.WorkSheets[k].Cells[i,8].Value := qry.FieldByName('FEstimateAmount').AsString; //金  额
       MyWorkBook.WorkSheets[k].Cells[i,9].Value := qry.FieldByName('FDeliveryDate').AsString; //交货期
       MyWorkBook.WorkSheets[k].Cells[i,10].Value := qry.FieldByName('FWorkListRemark').AsString; //备注
       ExcelApp.ActiveSheet.Rows[i].RowHeight:=36;//?1厘米           //行高 产品名称
       qry.next;
       i:=i+1;
       h:=h+1;
     End;
     MyWorkBook.WorkSheets[k].Cells[i,8].Value := '=SUM(h9:h'+IntToStr(i-1)+')'; //合计重量

   end;

  // MyWorkBook.WorkSheets[1].delete; //删除模版
   If  P_Print='导出' then
   begin
     If application.MessageBox('是否导出《运输分包任务单》？若导出请选择导出文件的路径！','提示',MB_ICONINFORMATION+MB_YESNO)=6 then
     begin
       SaveDialog1.FileName:=UserFDepartmentShortName+'运输分包任务单'+qry.FieldByName('FWorkItemNum').AsString;
       SaveDialog1.Filter:='.xls';
       SaveDialog1.Execute;
       savefilepath:=SaveDialog1.FileName+'.xls';

       If FileExists(savefilepath) then    //文件存在就覆盖
       begin
         If application.MessageBox('文件已经存在是否覆盖？','提示',MB_ICONINFORMATION+MB_YESNO)=6 then
            DeleteFile(savefilepath)
         else
         begin
           SaveDialog1.FileName:=UserFDepartmentShortName+'运输分包生产任务单'+qry.FieldByName('FWorkItemNum').AsString;
           SaveDialog1.Filter:='.xls';
           SaveDialog1.Execute;
           savefilepath:=SaveDialog1.FileName+'.xls';
         end;
       end;
     end;
     MyWorkBook.saveas(savefilepath);  //保存文件
   end;
  // If application.MessageBox('是否预览文件？','提示',MB_ICONINFORMATION+MB_YESNO)=6 then
   If  P_Print='预览' then
   begin
     ExcelApp.Visible:=True;
     MyWorkBook.WorkSheets[k].PrintPreview; //预览
   end;

   MyWorkBook.Close;
   ExcelApp.Quit;
   ExcelApp:=Unassigned;

   P_state :=2;

end;

procedure TFrm_WorkBILL.E_FWorkPaymenWayPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  mData.Edit;
  mData.Post;
  try
    qry.SQL.Text:='Select distinct FWorkPaymentWay as FNumber from  V_WorkItem with(nolock) '
                 +'where  FWorkPaymentWay like :FWorkPaymentWay  and FDepartmentID=:FDepartmentID  '
                 +'order by FWorkPaymentWay ';
    qry.Parameters.FindParam('FWorkPaymentWay').value:='%'+mdata['FWorkPaymentWay']+'%';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Open;
  finally
    ;
  end;
  If qry.RecordCount>0 then
  selValue:=select('选择付款方式','FNumber','FNumber','FNumber','FNumber',qry);
  If (Length(selValue)>0)  then
  begin
     mData.Edit;
     mData['FWorkPaymentWay']:=qry.FieldByName('FNumber').Value;
     mData.Post;
  end
  else
     application.MessageBox('请选择明细！','系统提示',MB_ICONINFORMATION);


end;

procedure TFrm_WorkBILL.E_FBidNumPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  mData.Edit;
  mData.Post;
  try
    qry.SQL.Text:='Select distinct FBidNum as FNumber from  V_WorkItem with(nolock) '
                 +'where  FBidNum like :FBidNum  and FDepartmentID=:FDepartmentID  '
                 +'order by FBidNum ';
    qry.Parameters.FindParam('FBidNum').value:='%'+mdata['FBidNum']+'%';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Open;
  finally
    ;
  end;
  If qry.RecordCount>0 then
  selValue:=select('选择招标编号','FNumber','FNumber','FNumber','FNumber',qry);
  If (Length(selValue)>0)  then
  begin
     mData.Edit;
     mData['FBidNum']:=qry.FieldByName('FNumber').Value;
     mData.Post;
  end
  else
     application.MessageBox('请选择明细！','系统提示',MB_ICONINFORMATION);



end;

procedure TFrm_WorkBILL.XH_PriceGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: String);
begin
  inherited;
  atext:=inttostr(arecord.Index+1);
end;

procedure TFrm_WorkBILL.FWorkListNumGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: String);
begin
  inherited;
  atext:=inttostr(arecord.Index+1);
end;

procedure TFrm_WorkBILL.cxGrid_PriceContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV_Price';
  Gm:='mdata_Price';
  Gr:='cxGrid_Price';
  Act_Menu_Set.Execute;

end;

procedure TFrm_WorkBILL.FWorkListRemarkPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  mData_List.Edit;
  mData_List.Post;
  try
    qry.SQL.Text:='Select distinct FWorkListRemark as FNumber from  V_WorkItem with(nolock) '
                 +'where  FWorkListRemark like :FWorkListRemark  and FDepartmentID=:FDepartmentID  '
                 +'order by FWorkListRemark ';
    qry.Parameters.FindParam('FWorkListRemark').value:='%'+mData_List['FWorkListRemark']+'%';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Open;
  finally
    ;
  end;
  If qry.RecordCount>0 then
  selValue:=select('选择明细单备注','FNumber','FNumber','FNumber','FNumber',qry);
  If (Length(selValue)>0)  then
  begin
     mData_List.Edit;
     mData_List['FWorkListRemark']:=qry.FieldByName('FNumber').Value;
     mData_List.Post;
  end
  else
     application.MessageBox('请选择明细！','系统提示',MB_ICONINFORMATION);


end;

procedure TFrm_WorkBILL.ToolButton2Click(Sender: TObject);
begin
  inherited;
  Act_Sel.Execute;
end;

procedure TFrm_WorkBILL.XHGetDisplayText(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; var AText: String);
begin
  inherited;
  atext:=inttostr(arecord.Index+1);
end;

procedure TFrm_WorkBILL.cxGrid_BalanceContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV_Balance';
  Gm:='mdata_Balance';
  Gr:='cxGrid_Balance';
  Act_Menu_Set.Execute;

end;

procedure TFrm_WorkBILL.cxGrid_InvoiceContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV_Invoice';
  Gm:='mdata_Invoice';
  Gr:='cxGrid_Invoice';
  Act_Menu_Set.Execute;

end;

procedure TFrm_WorkBILL.TB_ZFClick(Sender: TObject);
var
  qry:TADOQuery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If  MData['FIsDel']=False then
  begin
    If application.MessageBox(Pchar('警告：是否作废此项生产任务信息：【'+Trim(mData['FWorkItemNum'])+'】的数据？'+chr(13)+chr(13)
                                   +'作废数据操作将不可恢复，确定要作废此项生产任务吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    If application.MessageBox(Pchar('警告：是否作废此项生产任务信息：【'+Trim(mData['FWorkItemNum'])+'】的数据？'+chr(13)+chr(13)
                                  +'作废数据操作将不可恢复，确定要作废此项生产任务信息吗？'),'再次警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then

    begin
      try
        qry.SQL.Text:='Update T_WorkItem set FIsDel=1 where FWorkItemID=:FWorkItemID';
        qry.Parameters.FindParam('FWorkItemID').value:=mdata['FWorkItemID'];
        qry.ExecSQL;
      finally
        ;
      end;
      mdata.Edit;
      mdata['FIsDel']:=True;
      mdata.Post;

    end;
  end;
  If  MData['FIsDel']=True then
  begin
    If application.MessageBox(Pchar('警告：是否反作废此项生产任务信息：【'+Trim(mData['FWorkItemNum'])+'】的数据？'+chr(13)+chr(13)
                                   +'确定要反作废此项生产任务吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    If application.MessageBox(Pchar('警告：是否反作废此项生产任务信息：【'+Trim(mData['FWorkItemNum'])+'】的数据？'+chr(13)+chr(13)
                                   +'确定要反作废此项生产任务信息吗？'),'再次警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then

    begin
      try
        qry.SQL.Text:='Update T_WorkItem set FIsDel=0 where FWorkItemID=:FWorkItemID';
        qry.Parameters.FindParam('FWorkItemID').value:=mdata['FWorkItemID'];
        qry.ExecSQL;
      finally
        ;
      end;
      mdata.Edit;
      mdata['FIsDel']:=False;
      mdata.Post;
    end;
  end;

  qry.Free;

end;

procedure TFrm_WorkBILL.Act_MaterialDateExecute(Sender: TObject);
var  qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  //取最大单价库
  try
    qry.SQL.Text:='select distinct FMaterialDate,FPriceDateID from V_BalancePrice  with(nolock) '
                 +'where FPriceDateID=(select MAX(FPriceDateID) from V_BalancePrice  with(nolock)where FDepartmentID=:FDepartmentID) ';

    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Open;
  finally
     ;
  end;
  mdata.Edit;
  mdata['FMaterialDate']:=qry.FieldByName('FMaterialDate').Value;
  mdata['FPriceDateID']:=qry.FieldByName('FPriceDateID').Value;
  mdata.Post;

  qry.Free;


end;

procedure TFrm_WorkBILL.TB_PrintClick(Sender: TObject);
var  qry,qryDate: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Select * from T_AgentItem  where FAgentID=:FAgentID';
    qry.Parameters.FindParam('FAgentID').value:=mdata['FAgentID'];
    qry.Open;
  finally
    ;
  end;
  If qry.RecordCount>0 then
  begin
    P_Print:='预览';
    If (qry['FTaxRate']=0.11) or (qry['FTaxRate']=0.10)  or (qry['FTaxRate']=0.09)  then
       Act_Print_Work_YS.Execute;
    If (qry['FTaxRate']=0.17) or (qry['FTaxRate']=0.16) or (qry['FTaxRate']=0.13) or (qry['FTaxRate']=0.03)  or (qry['FTaxRate']=0.06)  or (qry['FTaxRate']=0.01)  then
       Act_Print_Work.Execute;
  end
end;

procedure TFrm_WorkBILL.Act_SubmitExecute(Sender: TObject);
var  qry,qryDate: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qryDate:=TADOQuery.Create(self);
  qryDate.ConnectionString:=mdlData.ReadConnStr;

  try
    qry.SQL.Text:='Update T_WorkItem Set FWorkStatus=1,FWorkSubmitDate=:FWorkSubmitDate  where FWorkItemID=:FWorkItemID';
    qry.Parameters.FindParam('FWorkSubmitDate').value:= S_SyStemDate(qryDate);
    If P_state=0 then  //新增
       qry.Parameters.FindParam('FWorkItemID').value:=P_MaxID;
    If P_state=1 then  //修改
       qry.Parameters.FindParam('FWorkItemID').value:=mdata['FWorkItemID'];
    qry.ExecSQL;
  finally
    ;
  end;
  MData.Edit;
  MData['FWorkStatus']:=1;
  MData['FStatusNotes']:='提交';
  MData['FWorkSubmitDate']:=S_SyStemDate(qryDate);
  MData.Post;

  qry.Free;


end;

procedure TFrm_WorkBILL.cxGV_ItemDblClick(Sender: TObject);
begin
  inherited;
  TS_Item.ActivePage:=TS_Edit;
end;

procedure TFrm_WorkBILL.TB_CopyClick(Sender: TObject);
var
 qry: TADOQuery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.EnableBCD:=False;//小数位数>4

  If Mdata.RecordCount<1 then
     Exit;
  If application.MessageBox(Pchar('系统提示：是否复制生产任务单号为：'+  Mdata.FieldByName('FWorkItemNum').AsString +'的单据？'+chr(13)+chr(13)
                                  +'确定要复制对本单据吗？'),'系统提示',MB_ICONINFORMATION+MB_YESNO)<>6 then
     Exit;

  I_index:=MData.RecNo ;
  P_state :=0;
  L_title.Caption:='任务书信息复制';
  Act_Set_Open.Execute;
  TS_Item.ActivePage:=TS_Edit;

  mData.Edit;
  Mdata['FWorkItemDate']:=formatdatetime('yyyy-mm-dd',now());
  Mdata['FItemID']:=0;

  Mdata['FClientFullName']:='';
  Mdata['FClientShortName']:='';
  Mdata['FWorkData']:='';
  Mdata['FBranchFileNo']:='';


{  Mdata['FAgentID']:=0;
  Mdata['FAgentName']:='';
  Mdata['FJobPlace']:='';
  Mdata['FWorkPaymentWay']:='';
  Mdata['FBidNum']:='';
  Mdata['FE05']:='';
   }
  mData.Post;
  Act_MaxNum.Execute;//取最大单号
  Act_MaxItemNum.Execute ; //取任务单号
  E_FMaterialDate.Enabled:=False;

  try
    qry.SQL.Text:='Select IsEdit=cast(0 as bit),IsApp=cast(1 as bit),* from V_WorkList with(nolock) where FWorkItemID=:FWorkItemID';
    qry.Parameters.FindParam('FWorkItemID').Value:=mData['FWorkItemID'];
    qry.Open;
  finally
     ;
  end;
  mData_List.CopyFromDataSet(qry);
  mData_List.Active:=True;
  mData_List.First;

 // Act_TreeSel.Execute;
end;

procedure TFrm_WorkBILL.FWorkListNum_ListGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: String);
begin
  inherited;
  atext:=inttostr(arecord.Index+1);
end;

procedure TFrm_WorkBILL.TB_FIsDelListClick(Sender: TObject);
var
  qry:TADOQuery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  If  MData_List['FIsDelList']=False then
  begin
    If application.MessageBox(Pchar('警告：是否作废此行生产任务信息：【'+Trim(MData_List['FBalanceFullName'])+'】的数据？'+chr(13)+chr(13)
                                   +'确定要作废此行生产任务信息吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    If application.MessageBox(Pchar('警告：是否作废此行生产任务信息：【'+Trim(MData_List['FBalanceFullName'])+'】的数据？'+chr(13)+chr(13)
                                   +'确定要作废此行生产任务信息吗？'),'再次警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then

    begin
      try
        qry.SQL.Text:='Update T_WorkList set FIsDelList=1 where FWorkListID=:FWorkListID';
        qry.Parameters.FindParam('FWorkListID').value:=MData_List['FWorkListID'];
        qry.ExecSQL;
      finally
        ;
      end;
      MData_List.Edit;
      MData_List['FIsDelList']:=True;
      MData_List.Post;

    end;
  end;

  If  MData_List['FIsDelList']=True then
  begin
    If application.MessageBox(Pchar('警告：是否反作废此行生产任务信息：【'+Trim(MData_List['FBalanceFullName'])+'】的数据？'+chr(13)+chr(13)
                                   +'确定要反作废此行生产任务信息吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    If application.MessageBox(Pchar('警告：是否反作废此行生产任务信息：【'+Trim(MData_List['FBalanceFullName'])+'】的数据？'+chr(13)+chr(13)
                                   +'确定要反作废此行生产任务信息吗？'),'再次警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then

    begin
      try
        qry.SQL.Text:='Update T_WorkList set FIsDelList=0 where FWorkListID=:FWorkListID';
        qry.Parameters.FindParam('FWorkListID').value:=MData_List['FWorkListID'];
        qry.ExecSQL;
      finally
        ;
      end;
      MData_List.Edit;
      MData_List['FIsDelList']:=False;
      MData_List.Post;
    end;
  end;

  qry.Free;

end;

procedure TFrm_WorkBILL.cxGV_ListFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  If MData_List['FIsDelList']=False then
     TB_FIsDelList.Caption:='行作废';
  If MData_List['FIsDelList']=True then
     TB_FIsDelList.Caption:='行反作废';

end;

procedure TFrm_WorkBILL.Act_TreeSelExecute(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.EnableBCD:=False;//小数位数>4

  mdata.DisableControls;
  If TS_Tree.ActivePage=TS_Write then
  begin
    If not MyItemList(qry,MData,'V_WorkItem','FNumber_Write',ListItemFNumber,'FNumber_Write') then
    begin
      MData.Open;
    end;
  end;
  If TS_Tree.ActivePage=TS_Num then
  begin
    If not MyItemList(qry,MData,'V_WorkItem','FNumber',ListItemFNumber,'FNumber') then
    begin
      MData.Open;
    end;
  end;
  If TS_Tree.ActivePage=TS_WorkItem then
  begin
    If not MyItemList(qry,MData,'V_WorkItem','FNumber_Item',ListItemFNumber,'FNumber_Item') then
    begin
      MData.Open;
    end;
  end;
  If TS_Tree.ActivePage=TS_Agent then
  begin
    If not MyItemList(qry,MData,'V_WorkItem','FNumber_Agent',ListItemFNumber,'FNumber_Agent') then
    begin
      MData.Open;
    end;
  end;
  mdata.EnableControls;


end;

end.
