unit Main_WorkBalance;

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
  TFrm_WorkBalance = class(TFrm_GridBass)
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
    Act_Update: TAction;
    FlatPanel1: TFlatPanel;
    E_FBalanceDate: TcxDBDateEdit;
    FlatPanel3: TFlatPanel;
    E_FWorkBudgetItemAmount: TcxDBCurrencyEdit;
    cxGrid_Item: TcxGrid;
    cxGV_Item: TcxGridDBBandedTableView;
    XH: TcxGridDBBandedColumn;
    FBalanceNum_Item: TcxGridDBBandedColumn;
    FBalanceDate_Item: TcxGridDBBandedColumn;
    FBalanceWrite: TcxGridDBBandedColumn;
    FBalanceWriteDate: TcxGridDBBandedColumn;
    FNewestAlter: TcxGridDBBandedColumn;
    FNewestAlterDate: TcxGridDBBandedColumn;
    cxGL_Item: TcxGridLevel;
    FWorkBudgetItemAmount_Item: TcxGridDBBandedColumn;
    FlatPanel2: TFlatPanel;
    E_FBalanceNum: TcxDBButtonEdit;
    FlatPanel4: TFlatPanel;
    TS_Num: TTabSheet;
    Act_MaxID_List: TAction;
    Act_WorkItemNum: TAction;
    E_FBalanceNo: TcxDBCurrencyEdit;
    Act_MaxNum: TAction;
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
    FAgentName_Item: TcxGridDBBandedColumn;
    Act_AgentName: TAction;
    FlatPanel6: TFlatPanel;
    E_FAgentName: TcxDBButtonEdit;
    FlatPanel7: TFlatPanel;
    RzSP_PTitem: TRzSizePanel;
    Page_List: TPageControl;
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
    FBalanceCheck: TcxGridDBBandedColumn;
    FBalanceCheckDate: TcxGridDBBandedColumn;
    FBalanceAudit: TcxGridDBBandedColumn;
    FBalanceAuditDate: TcxGridDBBandedColumn;
    FStatusNotes: TcxGridDBBandedColumn;
    TB_Check: TToolButton;
    TB_Audit: TToolButton;
    Act_Status: TAction;
    TB_Submit: TToolButton;
    FBalanceSubmitDate_Item: TcxGridDBBandedColumn;
    FBranchFileNo_Item: TcxGridDBBandedColumn;
    FBranchItemNumber_Item: TcxGridDBBandedColumn;
    FClientShortName_Item: TcxGridDBBandedColumn;
    FWorkBudgetItemTaxAmount_Item: TcxGridDBBandedColumn;
    FlatPanel10: TFlatPanel;
    FlatPanel11: TFlatPanel;
    FlatPanel12: TFlatPanel;
    E_FInvoiceDate: TcxDBDateEdit;
    E_FInvoice: TcxDBButtonEdit;
    E_FTaxRate: TcxDBCurrencyEdit;
    FlatPanel13: TFlatPanel;
    E_FInvoiceAmount: TcxDBCurrencyEdit;
    FInvoiceDate_Item: TcxGridDBBandedColumn;
    FInvoice_Item: TcxGridDBBandedColumn;
    FWorkInvoiceAmount_Item: TcxGridDBBandedColumn;
    Act_WorkItemList: TAction;
    cxGrid_List: TcxGrid;
    cxGV_List: TcxGridDBTableView;
    FBalanceListNum_List: TcxGridDBColumn;
    FBalanceName_List: TcxGridDBColumn;
    FBalanceModel_List: TcxGridDBColumn;
    FUnitName_List: TcxGridDBColumn;
    FMaterialDate_List: TcxGridDBColumn;
    FEstimateQry_List: TcxGridDBColumn;
    FEstimateAmount_List: TcxGridDBColumn;
    FWorkItemPrice_List: TcxGridDBColumn;
    FBalanceWorkAdjust_List: TcxGridDBColumn;
    FBalanceAdjust_List: TcxGridDBColumn;
    FBalancePrice_List: TcxGridDBColumn;
    FBalanceQry_List: TcxGridDBColumn;
    FBalanceAmount_List: TcxGridDBColumn;
    FQualityAmount_List: TcxGridDBColumn;
    FRealAmount_List: TcxGridDBColumn;
    FBalanceTaxAmount_List: TcxGridDBColumn;
    FBalanceRemark_List: TcxGridDBColumn;
    FBranchItemNumber_List: TcxGridDBColumn;
    FBalanceYear_List: TcxGridDBColumn;
    FBalanceMonth_List: TcxGridDBColumn;
    FBalanceDay_List: TcxGridDBColumn;
    FBalanceNum_List: TcxGridDBColumn;
    FWorkItemNum_List: TcxGridDBColumn;
    FWorkListID_List: TcxGridDBColumn;
    FWorkData_List: TcxGridDBColumn;
    FAgentName_List: TcxGridDBColumn;
    FClientshortName_List: TcxGridDBColumn;
    FBranchFileNo_List: TcxGridDBColumn;
    FBalancePriceID_List: TcxGridDBColumn;
    FProductClass_List: TcxGridDBColumn;
    FNumber_List: TcxGridDBColumn;
    FPartsCode_List: TcxGridDBColumn;
    FBalanceBasePrice_List: TcxGridDBColumn;
    FWorkOutPrice_List: TcxGridDBColumn;
    FOutPrice_List: TcxGridDBColumn;
    cxGL_List: TcxGridLevel;
    Act_SelMaxNum: TAction;
    FTaxRate_Item: TcxGridDBBandedColumn;
    Act_Sel: TAction;
    TB_FInvoice: TToolButton;
    TB_FInvoice_Save: TToolButton;
    TS_WorkBalance: TTabSheet;
    Act_Invoice: TAction;
    RzSize_Price: TRzSizePanel;
    TS_WorkList: TTabSheet;
    Panel1: TPanel;
    ToolBar3: TToolBar;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    cxGrid_WorkList: TcxGrid;
    cxGV_WorkList: TcxGridDBTableView;
    FIsDelList_WorkList: TcxGridDBColumn;
    FWorkListNum_WorkList: TcxGridDBColumn;
    FBalanceFullName_WorkList: TcxGridDBColumn;
    FUnitName_WorkList: TcxGridDBColumn;
    FMaterialDate_WorkList: TcxGridDBColumn;
    FWorkResizePrice_WorkList: TcxGridDBColumn;
    FEstimateQry_WorkList: TcxGridDBColumn;
    FBalanceBasePrice_WorkList: TcxGridDBColumn;
    FWorkOutPrice_WorkList: TcxGridDBColumn;
    FOutPrice_WorkList: TcxGridDBColumn;
    FWorkItemPrice_WorkList: TcxGridDBColumn;
    FEstimateAmount_WorkList: TcxGridDBColumn;
    FWorkListRemark_WorkList: TcxGridDBColumn;
    FDeliveryDate_WorkList: TcxGridDBColumn;
    FBalanceWorkAdjust_WorkList: TcxGridDBColumn;
    FBalanceAdjust_WorkList: TcxGridDBColumn;
    FBalancePrice_WorkList: TcxGridDBColumn;
    SumFBalanceQry_WorkList: TcxGridDBColumn;
    SumFBalanceAmount_WorkList: TcxGridDBColumn;
    FNumber1_WorkList: TcxGridDBColumn;
    FBalanceName_WorkList: TcxGridDBColumn;
    FBalanceModel_WorkList: TcxGridDBColumn;
    FRemark_WorkList: TcxGridDBColumn;
    FWorkItemNum_WorkList: TcxGridDBColumn;
    FWorkListID_WorkList: TcxGridDBColumn;
    FWorkDate_WorkList: TcxGridDBColumn;
    FBalanceID_WorkList: TcxGridDBColumn;
    FBalancePriceID_WorkList: TcxGridDBColumn;
    FItemID_WorkList: TcxGridDBColumn;
    FBalanceProductName_WorkList: TcxGridDBColumn;
    FProductClass_WorkList: TcxGridDBColumn;
    cxGL_WorkList: TcxGridLevel;
    cxGrid: TcxGrid;
    cxGV: TcxGridDBBandedTableView;
    FBalanceListNum: TcxGridDBBandedColumn;
    FWorkItemNum_Item: TcxGridDBBandedColumn;
    FUnitName: TcxGridDBBandedColumn;
    FMaterialDate: TcxGridDBBandedColumn;
    FWorkItemPrice: TcxGridDBBandedColumn;
    FBalanceAdjust: TcxGridDBBandedColumn;
    FEstimateAmount: TcxGridDBBandedColumn;
    FEstimateQry: TcxGridDBBandedColumn;
    FBalanceFullName: TcxGridDBBandedColumn;
    FBalancePrice: TcxGridDBBandedColumn;
    FBalanceWorkAdjust: TcxGridDBBandedColumn;
    FRealAmount: TcxGridDBBandedColumn;
    FBalanceTaxAmount: TcxGridDBBandedColumn;
    FWorkListID_11: TcxGridDBBandedColumn;
    FBalancePriceID_11: TcxGridDBBandedColumn;
    FQualityAmount: TcxGridDBBandedColumn;
    FNumber: TcxGridDBBandedColumn;
    FBalanceQry: TcxGridDBBandedColumn;
    FBalanceAmount: TcxGridDBBandedColumn;
    FBalanceRemark: TcxGridDBBandedColumn;
    cxGL: TcxGridLevel;
    FProductClass: TcxGridDBBandedColumn;
    FWorkItemNum: TcxGridDBBandedColumn;
    Act_TreeSel: TAction;
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
    procedure Act_WorkItemListExecute(Sender: TObject);
    procedure cxGV_WorkListDblClick(Sender: TObject);
    procedure cxGV_WorkListCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure Act_SelMaxNumExecute(Sender: TObject);
    procedure E_FBalanceDateExit(Sender: TObject);
    procedure cxGV_ListFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure E_FClientShortNameExit(Sender: TObject);
    procedure E_FClientShortNameKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Act_SelExecute(Sender: TObject);
    procedure XHGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: String);
    procedure Num_1GetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: String);
    procedure TB_FInvoiceClick(Sender: TObject);
    procedure TB_FInvoice_SaveClick(Sender: TObject);
    procedure E_FInvoicePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure ToolButton2Click(Sender: TObject);
    procedure FInvoice_ItemPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure Act_InvoiceExecute(Sender: TObject);
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
    P_List:string;

    { Public declarations }
  end;

var
  Frm_WorkBalance: TFrm_WorkBalance;


implementation

uses FRMDATA,  COMMON, FrmSelect, ProgBar, PROGRASS,
   FrmWorkMain;

{$R *.dfm}

function TFrm_WorkBalance.DelRd: bool;
var
 qry: TADOQuery;
begin
 // result:=False;
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.EnableBCD:=False;//小数位数>4
  try
    qry.SQL.Text:='Delete from T_BalanceItem where FBalanceID=:FBalanceID';
    with qry.Parameters do
    begin
      FindParam('FBalanceID').value:=mdata['FBalanceID'];
    end;
    result:=qry.ExecSQL>=1;
  finally
    qry.Free;
  end;
end;



function TFrm_WorkBalance.AddRd: bool;
var
 qry:TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.EnableBCD:=False;//小数位数>4
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

function TFrm_WorkBalance.EditRd:bool;   // 修改
var
  qry:TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.EnableBCD:=False;//小数位数>4
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

function TFrm_WorkBalance.AddMain: bool;
var
 qry,qryDate:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.EnableBCD:=False;//小数位数>4
  qryDate:=TAdoQuery.Create(self);
  qryDate.ConnectionString:=mdlData.ReadConnStr;

  result:=False;

  If mdata.RecordCount<=0 then
  begin
    result:=True;
    Exit;
  end;
  If (E_FBalanceNo.Value<>Null) and (E_FBalanceNo.Value<>0) then
  begin
    try
      qry.SQL.Text:='Insert into T_BalanceItem(FBalanceID, FBalanceDate,FBalanceNum,FBalanceNo,FInvoice,FInvoiceDate,'
                   +'FTaxRate,FAgentID,FItemID,FBalanceStatus,FBalanceWriteID,FBalanceWriteDate,FDepartmentID) '
                   +'values(:FBalanceID,:FBalanceDate,:FBalanceNum,:FBalanceNo, :FInvoice,:FInvoiceDate,'
                   +':FTaxRate,:FAgentID,:FItemID,:FBalanceStatus,:FBalanceWriteID,:FBalanceWriteDate,:FDepartmentID)';
       with qry.Parameters do
       begin
         Act_MaxID.Execute;//取ID

         FindParam('FBalanceID').value:=P_MaxID;
         FindParam('FBalanceDate').value:=mdata['FBalanceDate'];
         FindParam('FBalanceNum').value:=mdata['FBalanceNum'];
         FindParam('FBalanceNo').value:=mdata['FBalanceNo'];
         FindParam('FInvoice').value:=mdata['FInvoice'];
         FindParam('FInvoiceDate').value:=mdata['FInvoiceDate'];
         FindParam('FTaxRate').value:=mdata['FTaxRate'];
         FindParam('FAgentID').value:=mdata['FAgentID'];
         FindParam('FItemID').value:=mdata['FItemID'];
         FindParam('FBalanceStatus').value:=0;
         FindParam('FBalanceWriteID').value:=UserNumID;
         FindParam('FBalanceWriteDate').value:=S_SyStemDate(qryDate);
         FindParam('FDepartMentID').value:=UserFDepartMentID;
       end;
       result:=qry.ExecSQL>=1;
    finally
      qry.Free;
    end;

  end;
end;

function TFrm_WorkBalance.EditMain:bool;
var
 qry,qryDate:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.EnableBCD:=False;//小数位数>4
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
  If (mdata['FBalanceNo']<>Null) and (mdata['FBalanceNo']<>0) then
  begin
    try
      qry.SQL.Text:='Update T_BalanceItem Set FBalanceDate=:FBalanceDate,FBalanceNo=:FBalanceNo, FBalanceNum=:FBalanceNum,'
                   +'FInvoice=:FInvoice,FInvoiceDate=:FInvoiceDate,FTaxRate=:FTaxRate,FAgentID=:FAgentID,FItemID=:FItemID,'
                   +'FBalanceStatus=:FBalanceStatus,FNewestAlterID=:FNewestAlterID,FNewestAlterDate=:FNewestAlterDate,'
                   +'FDepartmentID=:FDepartmentID where  FBalanceID=:FBalanceID';
      with qry.Parameters do
      begin
        FindParam('FBalanceDate').value:=mdata['FBalanceDate'];
        FindParam('FBalanceNo').value:=mdata['FBalanceNo'];
        FindParam('FBalanceNum').value:=mdata['FBalanceNum'];
        FindParam('FInvoice').value:=mdata['FInvoice'];
        FindParam('FInvoiceDate').value:=mdata['FInvoiceDate'];
        FindParam('FTaxRate').value:=mdata['FTaxRate'];
        FindParam('FAgentID').value:=mdata['FAgentID'];
        FindParam('FItemID').value:=mdata['FItemID'];
        FindParam('FBalanceStatus').value:=mdata['FBalanceStatus'];
        FindParam('FNewestAlterID').value:=UserNumID;
        FindParam('FNewestAlterDate').value:=S_SyStemDate(qryDate);
        FindParam('FDepartMentID').value:=UserFDepartMentID;
        FindParam('FBalanceID').value:=mdata['FBalanceID'];
      end;
      result:=qry.ExecSQL>=1;
    finally
       qry.Free;
    end;
   end;
end;

function TFrm_WorkBalance.DelList: bool;
var i:Integer;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.EnableBCD:=False;//小数位数>4
  result:=True;

  qry.SQL.Text:='Delete from T_BalanceList where FBalanceListID=:FBalanceListID';
  for i:=Low(DelArray) to High(DelArray) do
  begin
    if DelArray[i]<>'' then
    begin
      if qry.Active then qry.Close;
      try
        qry.Parameters.FindParam('FBalanceListID').Value:=StrToInt(DelArray[i]);
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

function TFrm_WorkBalance.AddList: bool;
var qry: TADOQuery;
    i:Integer;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.EnableBCD:=False;//小数位数>4
  result:=True;
  mData_List.Edit;
  try
    qry.SQL.Text:='Insert into T_BalanceList(FBalanceListID,FBalanceID,FBalanceListNum, FWorkListID,'
                 +'FBalanceQry,FBalanceWorkAdjust,FBalanceAdjust,FQualityAmount,FBalanceRemark) '
                 +'values(:FBalanceListID,:FBalanceID, :FBalanceListNum,:FWorkListID,'
                 +':FBalanceQry,:FBalanceWorkAdjust,:FBalanceAdjust,:FQualityAmount,:FBalanceRemark)';
    mData_List.First;
    i:=1;
    while not mData_List.eof do
    begin
      If (mData_List['IsApp']=True)
         and (mData_List['FBalanceQry']<>0) and (mData_List['FBalanceQry']<>Null)
       then
      begin
        qry.Parameters.ParamByName('FBalanceWorkAdjust').DataType:=ftfloat;
        qry.Parameters.ParamByName('FBalanceAdjust').DataType:=ftfloat;
        If qry.Active then qry.Close;
        Act_MaxID_List.Execute;//取ID
        qry.Parameters.FindParam('FBalanceListID').value:=P_MaxID_List;
        If P_state=0 then  //新增
          qry.Parameters.FindParam('FBalanceID').value:=P_MaxID;
        If P_state=1 then  //修改
          qry.Parameters.FindParam('FBalanceID').value:=mdata['FBalanceID'];
        qry.Parameters.FindParam('FBalanceListNum').value:=i;
        //qry.Parameters.FindParam('FBalanceListNum').value:=cxGV.GetColumnByFieldName('num').EditValue;
        qry.Parameters.FindParam('FWorkListID').value:=mData_List['FWorkListID'];
        qry.Parameters.FindParam('FBalanceQry').value:=mData_List['FBalanceQry'];
        qry.Parameters.FindParam('FBalanceWorkAdjust').value:=mData_List['FBalanceWorkAdjust'];
        qry.Parameters.FindParam('FBalanceAdjust').value:=mData_List['FBalanceAdjust'];
        qry.Parameters.FindParam('FQualityAmount').value:=mData_List['FQualityAmount'];
        qry.Parameters.FindParam('FBalanceRemark').value:=mData_List['FBalanceRemark'];
        result:=qry.ExecSQL>=1;
        if not result then break;
      end;
      mData_List.Next;
      i:=i+1;
    end;
  finally
     qry.Free;
  end;

end;

function TFrm_WorkBalance.EditList:bool;
var qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.EnableBCD:=False;//小数位数>4
  result:=True;
  try
    qry.SQL.Text:='Update T_BalanceList set FBalanceID=:FBalanceID,FBalanceListNum=:FBalanceListNum,'
                 +'FWorkListID=:FWorkListID,FBalanceQry=:FBalanceQry,FBalanceWorkAdjust=:FBalanceWorkAdjust,'
                 +'FBalanceAdjust=:FBalanceAdjust,FQualityAmount=:FQualityAmount,FBalanceRemark=:FBalanceRemark '
                 +'where FBalanceListID=:FBalanceListID';
    mData_List.First;
    while not mData_List.eof do
    begin
      If (mData_List['IsEdit']=True) and (mData_List['IsApp']=False)
         and (mData_List['FBalanceQry']<>0) and (mData_List['FBalanceQry']<>Null)  then
      begin
        qry.Parameters.ParamByName('FBalanceWorkAdjust').DataType:=ftfloat;
        qry.Parameters.ParamByName('FBalanceAdjust').DataType:=ftfloat;
        If qry.Active then qry.Close;
        qry.Parameters.FindParam('FBalanceID').value:=mData['FBalanceID'];
        qry.Parameters.FindParam('FBalanceListNum').value:=mData_List['FBalanceListNum'];
        qry.Parameters.FindParam('FWorkListID').value:=mData_List['FWorkListID'];
        qry.Parameters.FindParam('FBalanceQry').value:=mData_List['FBalanceQry'];
        qry.Parameters.FindParam('FBalanceWorkAdjust').value:=mData_List['FBalanceWorkAdjust'];
        qry.Parameters.FindParam('FBalanceAdjust').value:=mData_List['FBalanceAdjust'];
        qry.Parameters.FindParam('FQualityAmount').value:=mData_List['FQualityAmount'];
        qry.Parameters.FindParam('FBalanceRemark').value:=mData_List['FBalanceRemark'];
        If mData_List['IsApp']=True  then
           qry.Parameters.FindParam('FBalanceListID').value:=P_MaxID_List
        else
           qry.Parameters.FindParam('FBalanceListID').value:=mData_List['FBalanceListID'];
        result:=qry.ExecSQL>=1;
        if not result then break;
      end;
      mData_List.Next;
    end;
  finally
     qry.Free;
  end;

end;



procedure TFrm_WorkBalance.FormResize(Sender: TObject);
begin
  inherited;
  L_title.Caption:=UserFDepartmentName+'生产结算';
  Self.Caption:=UserFDepartmentName+'生产结算信息操作';
end;

procedure TFrm_WorkBalance.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=cafree;
  Frm_WorkBalance:=nil;
end;

procedure TFrm_WorkBalance.TB_EXITClick(Sender: TObject);
begin
  self.Close;
end;

procedure TFrm_WorkBalance.MyTreeViewChange(Sender: TObject; Node: TTreeNode);
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

    Act_TreeSel.Execute;

    P_state:=2;
    Act_Status.Execute;;
    Act_ItemChange.Execute;
  end;
end;

procedure TFrm_WorkBalance.MyTreeViewExpanding(Sender: TObject;
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
     qry.SQL.Text:='Select * from VT_BalanceItem with(nolock) where FParentNumber= '''
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

procedure TFrm_WorkBalance.TB_RefClick(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.EnableBCD:=False;//小数位数>4
  If TS_Tree.ActivePage=TS_Num then
  begin
    If not TreeVeiwListWhere(qry,MyTreeView,'VT_BalanceItem',' and FDepartmentID='+IntToStr(UserFDepartmentID) ) then
       Application.MessageBox(PChar('树型结构显示错误，请联系开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;

end;

procedure TFrm_WorkBalance.OKBtnClick(Sender: TObject);
var qry: TADOQuery;
    i:integer;
begin
  cxGV.OptionsData.Editing:=True;
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.EnableBCD:=False;//小数位数>4

  mdata.Edit;
  mdata.Post;
  If (mdata['FBalanceDate']=Null) then
  begin
    application.MessageBox('生产结算日期不允许空！请重新输入','系统提示',MB_ICONERROR);
    Exit;
  end;
  If (mdata['FBalanceNo']=Null) or (mdata['FBalanceNo']=0) then
  begin
    application.MessageBox('生产结算单号不允许空！请重新输入','系统提示',MB_ICONERROR);
    Exit;
  end;
  //取序号

  i:=1;
  mData_List.First;
  while not mData_List.eof do
  begin
    mData_List.Edit;
    mData_List['FBalanceListNum']:=i;
    mData_List.Post;
    mData_List.Next;
    i:=i+1;
  end;

  If P_state =0 then
  begin
   try
      qry.SQL.Text:='Select * from V_BalanceList with(nolock) where FBalanceNum=:FBalanceNum and FDepartmentID=:FDepartmentID';
      qry.Parameters.FindParam('FBalanceNum').Value:=Trim(Mdata['FBalanceNum']);
      qry.Parameters.FindParam('FDepartmentID').Value:=UserFDepartmentID;
      qry.Open;
      If qry.RecordCount>0 then
      begin
         If application.MessageBox('此结算单号已存在,是否系统自动取号吗？','提示',MB_ICONINFORMATION+MB_YESNO)=6 then
         begin
           Act_SelMaxNum.Execute;//取最大单号
           //Mdata['FBalanceNum']:=P_FBalanceNum;
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

procedure TFrm_WorkBalance.TB_AppClick(Sender: TObject);
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
    qry1.SQL.Text:='Select (isnull(max(FBalanceNo),0)+1) as FBalanceNo from V_BalanceItem with(nolock) '
                  +'where year(FBalanceDate)=year(GETDATE()) and MONTH(FBalanceDate)=MONTH(GETDATE())';
    qry1.Open;
  finally
     ;
  end;

  try
    qry.SQL.Text:='Select IsEdit=cast(0 as bit),IsApp=cast(1 as bit),* from V_BalanceItem with(nolock) where FBalanceID=0';
    qry.Open;
  finally
     ;
  end;
  mData.CopyFromDataSet(qry);
  mData.Active:=True;
  mData.Edit;
  Mdata['FBalanceDate']:=formatdatetime('yyyy-mm-dd',now());
  mData.Post;
  Act_MaxNum.Execute;//取最大单号
  Act_SelMaxNum.Execute;//取最大结算单号
  try
    qry.SQL.Text:='Select IsEdit=cast(0 as bit),IsApp=cast(1 as bit),* from V_BalanceList with(nolock) where FBalanceID=0';
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

procedure TFrm_WorkBalance.TB_EditClick(Sender: TObject);
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
  L_title.Caption:='生产结算信息修改';
  try
    qry.SQL.Text:='Select IsEdit=cast(0 as bit),IsApp=cast(0 as bit),* from V_BalanceList with(nolock) where FBalanceID=:FBalanceID';
    qry.Parameters.FindParam('FBalanceID').Value:=mData['FBalanceID'];
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

procedure TFrm_WorkBalance.TB_DelClick(Sender: TObject);
var
  qry:TADOQuery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.EnableBCD:=False;//小数位数>4
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
  If application.MessageBox(Pchar('警告：是否删除此项生产结算信息：【'+Trim(mData['FBalanceNum'])+'】的数据？'+chr(13)+chr(13)
                           +'删除数据操作将不可恢复，确定要删除此项生产结算吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
  If application.MessageBox(Pchar('警告：是否删除此项生产结算信息：【'+Trim(mData['FBalanceNum'])+'】的数据？'+chr(13)+chr(13)
                           +'删除数据操作将不可恢复，确定要删除此项生产结算信息吗？'),'再次警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then

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

procedure TFrm_WorkBalance.CancelBtnClick(Sender: TObject);
var
  qry:TADOQuery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.EnableBCD:=False;//小数位数>4

  P_state:=2;
  L_title.Caption:=UserFDepartmentName+'生产结算信息';
  Act_TreeSel.Execute;
  Act_Set_Close.Execute;
end;

procedure TFrm_WorkBalance.FormCreate(Sender: TObject);
var AFirstColumnStyle: TcxStyle;
begin
  inherited;
  //列颜色
  AFirstColumnStyle := TcxStyle.Create(Self);
  AFirstColumnStyle.Color := clMenu;
  AFirstColumnStyle.TextColor := clBlue;

 // cxGV.Columns[10].Styles.Content := AFirstColumnStyle;
  cxGV.DataController.GetItemByFieldName('FBalanceWorkAdjust').Styles.Content:= AFirstColumnStyle;
  cxGV.DataController.GetItemByFieldName('FBalanceAdjust').Styles.Content:= AFirstColumnStyle;
  cxGV.DataController.GetItemByFieldName('FBalanceQry').Styles.Content:= AFirstColumnStyle;
  cxGV.DataController.GetItemByFieldName('FQualityAmount').Styles.Content:= AFirstColumnStyle;
  cxGV.DataController.GetItemByFieldName('FBalanceRemark').Styles.Content:= AFirstColumnStyle;

  P_state:=2;
  TS_Item.ActivePage:=TS_Brow;
  TB_App.Visible:= mdlData.PermissionCheckRights(TFrm_WorkBalance.ClassName,'新增');
  TB_FInvoice.Enabled:= mdlData.PermissionCheckRights(TFrm_WorkBalance.ClassName,'校对');
  TB_FInvoice_Save.Enabled:= mdlData.PermissionCheckRights(TFrm_WorkBalance.ClassName,'校对');

end;

procedure TFrm_WorkBalance.FormShow(Sender: TObject);
begin
  inherited;
  P_back.Width:=Self.Width;
  P_back.Height:=Self.Height;
  P_back.Top:=21;
  P_back.Left:=1;
  TB_Ref.Click;
end;

procedure TFrm_WorkBalance.Act_Menu_SetExecute(Sender: TObject);
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

procedure TFrm_WorkBalance.Act_MenuExecute(Sender: TObject);
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

procedure TFrm_WorkBalance.N_EditClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_WorkBalance.N_FilterClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_WorkBalance.N_SortClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_WorkBalance.N_GroupClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_WorkBalance.N_SetClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_WorkBalance.N_OutClick(Sender: TObject);
begin
  inherited;
  Mn:=TMenuItem(Sender).Name;
  Act_Menu.Execute;
end;

procedure TFrm_WorkBalance.Act_Set_OpenExecute(Sender: TObject);
var AFirstColumnStyle: TcxStyle;
begin
  inherited;
  MyTreeView.Enabled:=False;
  Panel_EditButton.Enabled:=False;
  Panel_OK.Visible:=True;

  TS_Item.ActivePage:=TS_Edit;
  TS_Brow.TabVisible:=False;

  E_FClientShortName.Enabled:=True;
  E_FBalanceDate.Enabled:=True;
  E_FBalanceNum.Enabled:=True;
  E_FBalanceNo.Enabled:=True;
  E_FInvoiceDate.Enabled:=True;
  E_FInvoice.Enabled:=True;
  E_FInvoiceAmount.Enabled:=True;
  E_FTaxRate.Enabled:=True;
  E_FAgentName.Enabled:=True;

  cxGV.OptionsData.Editing:=True;
  cxGV_List.OptionsData.Editing:=True;

  FBalanceWorkAdjust.Editing:=True;
  FBalanceAdjust.Editing:=True;
  FBalanceQry.Editing:=True;
  FQualityAmount.Editing:=True;
  FQualityAmount.Editing:=True;
  FBalanceRemark.Editing:=True;
end;

procedure TFrm_WorkBalance.Act_Set_CloseExecute(Sender: TObject);
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
  E_FBalanceDate.Enabled:=False;
  E_FBalanceNum.Enabled:=False;
  E_FBalanceNo.Enabled:=False;
  E_FBalanceDate.Enabled:=False;
  E_FInvoiceDate.Enabled:=False;
  E_FInvoice.Enabled:=False;
  E_FInvoiceAmount.Enabled:=False;
  E_FTaxRate.Enabled:=False;
  E_FAgentName.Enabled:=False;

  FBalanceWorkAdjust.Editing:=False;
  FBalanceAdjust.Editing:=False;
  FBalanceQry.Editing:=False;
  FQualityAmount.Editing:=False;
  FQualityAmount.Editing:=False;
  FBalanceRemark.Editing:=False;

end;

procedure TFrm_WorkBalance.TS_TreeChange(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If TS_Tree.ActivePage=TS_Num then
  begin
    If not TreeVeiwListWhere(qry,MyTreeView,'VT_BalanceItem',' and FDepartmentID='+IntToStr(UserFDepartmentID) ) then
       Application.MessageBox(PChar('树型结构显示错误，请联系开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;

end;

procedure TFrm_WorkBalance.cxGrid_ItemContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
  inherited;
  GV:='cxGV_Item';
  Gm:='mdata';
  Gr:='cxGrid_Item';
  Act_Menu_Set_Band.Execute;
end;

procedure TFrm_WorkBalance.Panel_Edit1ConstrainedResize(Sender: TObject;
  var MinWidth, MinHeight, MaxWidth, MaxHeight: Integer);
begin
  inherited;
 // Panel_List.Left:=(Panel_Edit.Width-Panel_List.Width) div 2;
end;

procedure TFrm_WorkBalance.TS_ItemChange(Sender: TObject);
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

procedure TFrm_WorkBalance.RSP_TreeConstrainedResize(Sender: TObject;
  var MinWidth, MinHeight, MaxWidth, MaxHeight: Integer);
begin
  inherited;
  Panel_List.Left:=(Panel_Edit.Width-Panel_List.Width) div 2;
  Panel_Button.Left:=(Panel_OK.Width-Panel_Button.Width) div 2;

  Panel_List.Left:=(Panel_Edit.Width-Panel_List.Width) div 2;
  Panel_Button.Left:=(Panel_OK.Width-Panel_Button.Width) div 2;

end;

procedure TFrm_WorkBalance.FlatPanel5DblClick(Sender: TObject);
begin
  inherited;
  If P_state=2 then
     TS_Item.ActivePage:=TS_Brow;
end;

procedure TFrm_WorkBalance.Act_MaxIDExecute(Sender: TObject);
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
      value:='T_BalanceItem';
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

procedure TFrm_WorkBalance.cxGV_ItemFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  Act_ItemChange.Execute;
end;

procedure TFrm_WorkBalance.E_LocatePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  Act_Locate.Execute;
end;

procedure TFrm_WorkBalance.E_LocateKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  If Key=13 then
    Act_Locate.Execute;
end;

procedure TFrm_WorkBalance.Act_LocateExecute(Sender: TObject);
var
 qry: TADOQuery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.EnableBCD:=False;//小数位数>4
  mdata.DisableControls;
  try
    qry.SQL.Text:='Select IsEdit=cast(0 as bit),IsApp=cast(0 as bit),* from V_BalanceItem with(nolock) '
                 +'where FAgentName like :Locate1 or FBalanceNum like :Locate2 or FBranchItemNumber like :Locate3 '
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

procedure TFrm_WorkBalance.Act_ItemChangeExecute(Sender: TObject);
var qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.EnableBCD:=False;//小数位数>4

  If  (P_state=2) and (mData['FBalanceID']<>0) and (mData['FBalanceID']<>Null) then   //不在新增修改状态
  begin
    If (MData['FBalanceWriteID']=UserNumID) and (MData['FBalanceStatus']=0) then
    begin
      TB_Edit.Visible:= mdlData.PermissionCheckRights(TFrm_WorkBalance.ClassName,'修改');
      TB_Del.Visible:= mdlData.PermissionCheckRights(TFrm_WorkBalance.ClassName,'删除');
    end
    else
    begin
      TB_Edit.Visible:= False;
      TB_Del.Visible:= False;
    end;

    If (mdata['FBalanceID']<>0) and (mdata['FBalanceID']<>Null) then
    begin
      If MyItemListID(qry,Mdata_List,'V_BalanceList',' FBalanceID='+IntToStr(mdata['FBalanceID']),'FProductClass,FWorkItemNum,FNumber',) then
     // If MyItemListID(qry,MData_FB,'V_BalanceList',' FBalanceNum<='''+mdata['FWorkBudgetNum']+''' and FWorkItemID in (select distinct FWorkItemID from V_WorkBudgetList where FWorkBudgetID='+IntToStr(mdata['FWorkBudgetID'])+')','FWorkItemNum,FWorkBudgetNum',) then
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

procedure TFrm_WorkBalance.MData_ListBeforePost(DataSet: TDataSet);
begin
  inherited;
  If DataSet['FBalanceQry']=Null then DataSet['FBalanceQry']:=0;
  If DataSet['FBalancePrice']=Null then DataSet['FBalancePrice']:=0;
  If DataSet['FWorkItemPrice']=Null then DataSet['FWorkItemPrice']:=0;
  If DataSet['FBalanceWorkAdjust']=Null then DataSet['FBalanceWorkAdjust']:=0;
  If DataSet['FBalanceAdjust']=Null then DataSet['FBalanceAdjust']:=0;
  If DataSet['FBalanceBasePrice']=Null then DataSet['FBalanceBasePrice']:=0;
  If DataSet['FBalanceAmount']=Null then DataSet['FBalanceAmount']:=0;
  If DataSet['FRealAmount']=Null then DataSet['FRealAmount']:=0;
  If DataSet['FQualityAmount']=Null then DataSet['FQualityAmount']:=0;

  DataSet['FBalancePrice']:=DataSet['FWorkItemPrice']+ DataSet['FBalanceWorkAdjust']+DataSet['FBalanceAdjust'];

  If DataSet['FBalanceBasePrice']=Null then   DataSet['FBalanceBasePrice']:=0;
  DataSet['FBalanceAmount']:=round(DataSet['FBalanceQry']*DataSet['FBalancePrice']*100)/100;
  DataSet['FRealAmount'] :=DataSet['FBalanceAmount']-DataSet['FQualityAmount'];

end;

procedure TFrm_WorkBalance.cxGV_ItemCustomDrawCell(
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

procedure TFrm_WorkBalance.cxGV_ListCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  GV:='cxGV_List';
  Gm:='mdata_List';
  Gr:='cxGrid_List';
  Act_Menu_Set.Execute;
end;

procedure TFrm_WorkBalance.Act_MaxID_ListExecute(Sender: TObject);
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
      value:='T_BalanceList';
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

procedure TFrm_WorkBalance.Act_WorkItemNumExecute(Sender: TObject);
var selValue : string;
    qry: TADOQuery;
begin
{  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  mdata.Edit;
  mdata.Post;
  try
    qry.SQL.Text:='Select distinct FWorkItemNum,FBranchItemNumber,FAgentName from V_WorkList with(nolock) '
                 +' where FIsDelList=0 and FDepartmentID=:FDepartmentID and FAgentID=:FAgentID '
                 +' and FWorkItemNum like :FWorkItemNum and '
                 +'FWorkListID not in (select distinct FWorkListID from V_BalanceList with(nolock) '
                 +'where FDepartmentID=:FDepartmentID1 and FAgentID=:FAgentID1) '
                 +' order by FWorkItemNum';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Parameters.FindParam('FAgentID').value:=StrToInt(Trim(mdata['FAgentID']));
    qry.Parameters.FindParam('FWorkItemNum').value:='%'+Trim(mdata['FWorkItemNum'])+'%';
    qry.Parameters.FindParam('FDepartmentID1').value:=UserFDepartmentID;
    qry.Parameters.FindParam('FAgentID1').value:=StrToInt(Trim(mdata['FAgentID']));

    qry.Open;
  finally
     ;
  end;
  If qry.RecordCount=1 then
  begin
    mdata.Edit;
    mdata['FWorkItemNum']:=qry.FieldByName('FWorkItemNum').AsString;
    E_FWorkItemNum.Text:=qry.FieldByName('FWorkItemNum').AsString;
    mdata.Post;
    PC_2.ActivePage:=TS_WorkList;
    TB_FWorkItemNum.Click;
  end
  else
  begin
    If qry.RecordCount<1 then
    begin
      application.MessageBox('此任务单无应结算数据！请重新输入','系统提示',MB_ICONERROR);
      Exit;
    end;

    selValue:=select('选择任务单号','FWorkItemNum','FWorkItemNum','FWorkItemNum','FWorkItemNum;FBranchItemNumber;FAgentName',qry);
    If (Length(selValue)>0) then
    begin
      mdata.Edit;
      mdata['FWorkItemNum']:=qry.FieldByName('FWorkItemNum').AsString;
      E_FWorkItemNum.Text:=qry.FieldByName('FWorkItemNum').AsString;
      mdata.Post;
    end
    else
      application.MessageBox('请选择明细！','系统提示',MB_ICONINFORMATION);
    PC_2.ActivePage:=TS_WorkList;
    TB_FWorkItemNum.Click;
  end;

  }
end;

procedure TFrm_WorkBalance.FWorkItemNumPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  Act_WorkItemNum.Execute;
end;

procedure TFrm_WorkBalance.cxGrid_ListContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV';
  Gm:='mdata_List';
  Gr:='cxGrid';
  Act_Menu_Set.Execute;
end;

procedure TFrm_WorkBalance.cxGridContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV';
  Gm:='mdata_List';
  Gr:='cxGrid';
  Act_Menu_Set_Band.Execute;
end;

procedure TFrm_WorkBalance.Act_MaxNumExecute(Sender: TObject);
var  qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.EnableBCD:=False;//小数位数>4
  If (P_state<>0) and (P_state<>1) then Exit;
  mData.Edit;
  mData.Post;
  If mData['FBalanceDate']<>null then
  begin
    try
      qry.SQL.Text:='Select isnull(Max(FBalanceNo),0)+1 as FBalanceNo from  V_BalanceItem with(nolock) '
                   +'where  FBalanceYYMM=:FBalanceYYMM  and FDepartmentID=:FDepartmentID ';
      qry.Parameters.FindParam('FBalanceYYMM').value:=Copy(ForMatDateTime('yyyy-mm-dd',mData['FBalanceDate']),1,7);
      qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;

      qry.Open;
    finally
      ;
    end;
    mData.Edit;
    mData['FBalanceNo']:=qry['FBalanceNo'];
    mData.Post;
  end;


end;

procedure TFrm_WorkBalance.MData_ListAfterEdit(DataSet: TDataSet);
begin
  inherited;
  DataSet['IsEdit']:=True;
end;

procedure TFrm_WorkBalance.MData_ListAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet['IsApp']:=True;
end;

procedure TFrm_WorkBalance.MData_ListBeforeDelete(DataSet: TDataSet);
var
 arrLen:Integer;
begin
  If not varisnull(MData_List['FBalanceListID']) then
  begin
    arrLen:=Length(DelArray)+1;
    setLength(DelArray,arrLen);
    DelArray[High(DelArray)]:=MData_List['FBalanceListID'];
  end;

end;

procedure TFrm_WorkBalance.cxGVCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  GV:='cxGV';
  Gm:='mdata_List';
  Gr:='cxGrid';
  Act_Menu_Set.Execute;

end;

procedure TFrm_WorkBalance.Act_Menu_BandExecute(Sender: TObject);
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

procedure TFrm_WorkBalance.Act_Menu_Set_BandExecute(Sender: TObject);
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

procedure TFrm_WorkBalance.N_Edit_BandClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu_Band.Execute;
end;

procedure TFrm_WorkBalance.Act_AgentNameExecute(Sender: TObject);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.EnableBCD:=False;//小数位数>4
  mdata.Edit;
  mdata.Post;
  try
    qry.SQL.Text:='Select * from VT_WorkItem_Item_Agent with(nolock) '
                 +'where FAgentID=:FAgentID and FItemID=:FItemID '
                 +' and FDepartmentID=:FDepartmentID '
                 +'order by FNumber ';
    qry.Parameters.FindParam('FAgentID').value:=mData['FAgentID'];
    qry.Parameters.FindParam('FItemID').value:=mData['FItemID'];
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Open;
  finally
    ;
  end;
  If qry.RecordCount=0 then
  begin
    mData.Edit;
    mData['FWorkItemID']:=0;
    mData.Post;
    application.MessageBox('该生产单位无生产任务单，请重新选择！','系统提示',MB_ICONINFORMATION);
    Exit;
  end;
  If qry.RecordCount=1 then
  begin
    mData.Edit;
    mData['FWorkItemID']:=qry.FieldByName('FWorkItemID').Value;
    mData.Post;
  end;
  If (qry.RecordCount>0) and (qry.RecordCount<>1) then
  begin
    selValue:=select('选择生产单位信息','FNumber','FParentNumber','FNumber','FName',qry);
    If (Length(selValue)>0)  then
    begin
      mData.Edit;
      mData['FWorkItemID']:=qry.FieldByName('FWorkItemID').Value;
      mData.Post;
    end
    else
      application.MessageBox('请选择明细！','系统提示',MB_ICONINFORMATION);
  end;

   //生产任务单
  If  mData['FWorkItemID']<>0 and mData['FWorkItemID']<>Null then
  begin
    try
      qry.SQL.Text:='Select * from  V_WorkList with(nolock) '
                   +'where  FWorkListID not in (select distinct FWorkListID from T_BalanceList with(nolock) ) '
                   +' and FWorkItemID=:FWorkItemID  ';
      qry.Parameters.FindParam('FWorkItemID').value:=mData['FWorkItemID'];
      qry.Open;
    finally
      ;
    end;
    MData_WorkList.CopyFromDataSet(qry);
    MData_WorkList.Active:=True;
    Page_List.ActivePage:=Ts_WorkList;
  end;
  qry.Free;

end;

procedure TFrm_WorkBalance.E_FAgentNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  Act_AgentName.Execute;
end;

procedure TFrm_WorkBalance.MDataBeforePost(DataSet: TDataSet);
begin
  inherited;
  If DataSet['FAgentID']=Null then DataSet['FAgentID']:=0;
  If DataSet['FAgentName']=Null then DataSet['FAgentName']:='';
  If DataSet['FItemID']=Null then DataSet['FItemID']:=0;
  If DataSet['FClientShortName']=Null then DataSet['FClientShortName']:='';
  If DataSet['FInvoice']=Null then DataSet['FInvoice']:='发票未收';

end;

procedure TFrm_WorkBalance.FWorkBudgetNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.EnableBCD:=False;//小数位数>4
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

procedure TFrm_WorkBalance.Act_ChangeExecute(Sender: TObject);
var qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.EnableBCD:=False;//小数位数>4
  If TS_Item.ActivePage=TS_Edit then
  begin
   // If  (RzSP_PTitem.Visible=True) and (Mdata_List['FWorkItemID']<>0) and (Mdata_List['FWorkItemID']<>Null) then
    If (P_state=2) and (Mdata_List['FWorkItemID']<>0) and (Mdata_List['FWorkItemID']<>Null) then
    begin
      If MyItemListID(qry,Mdata_WorkList,'V_WorkList',' FWorkItemID='+IntToStr(Mdata_List['FWorkItemID']),'',) then
    end;
  end;
end;

procedure TFrm_WorkBalance.Act_ItemNumExecute(Sender: TObject);
var selValue : string;
    qry: TADOQuery;
    i:Integer;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.EnableBCD:=False;//小数位数>4
  mdata.Edit;
  mdata.Post;
  try
    qry.SQL.Text:='Select * from VT_WorkItem_Item_Agent with(nolock) '
                 +'where (FNumber like :FNumber or FName like :FName) '
                 +' and FDepartmentID=:FDepartmentID '
                 +'order by FNumber ';
    qry.Parameters.FindParam('FNumber').value:='%'+mData['FClientShortName']+'%';
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
    mData['FWorkItemID']:=0;
    mData.Post;
    application.MessageBox('该项目不存在，请重新选择！','系统提示',MB_ICONINFORMATION);
    Exit;
  end;
  If qry.RecordCount=1 then
  begin
    mData.Edit;
    mData['FItemID']:=qry.FieldByName('FItemID').Value;
    mData['FAgentID']:=qry.FieldByName('FAgentID').Value;
    mData['FWorkItemID']:=qry.FieldByName('FWorkItemID').Value;
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
      mData['FWorkItemID']:=qry.FieldByName('FWorkItemID').Value;
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
   //生产任务单
  If  mData['FWorkItemID']<>0 and mData['FWorkItemID']<>Null then
  begin
    try
      qry.SQL.Text:='Select * from  V_WorkList with(nolock) '
                   +'where  FIsDelList=0 and FWorkListID not in (select distinct FWorkListID from T_BalanceList with(nolock) ) '
                   +' and FWorkItemID=:FWorkItemID  ';
      qry.Parameters.FindParam('FWorkItemID').value:=mData['FWorkItemID'];
      qry.Open;
    finally
      ;
    end;
    MData_WorkList.CopyFromDataSet(qry);
    MData_WorkList.Active:=True;
    Page_List.ActivePage:=Ts_WorkList;

  end;
  qry.Free;


end;

procedure TFrm_WorkBalance.E_FClientShortNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  Act_ItemNum.Execute;
end;

procedure TFrm_WorkBalance.TB_WorkBudgetClick(Sender: TObject);
var
  Query_Sp:TADOStoredProc;
  i,h,k,ReNum,R_Count,L:Integer;
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

  If  mdata.RecordCount>1 then
  begin
    application.MessageBox('请选择单条记录！','系统提示',MB_ICONINFORMATION);
    Exit;
  end;

 // P_List:=mdata['FBalanceNum'];

  filepath:=Extractfilepath(application.ExeName)+'电袋外协结算明细表2018模版.xls';
  if (mdata.Active) and (mdata.recordcount>0) then
  Begin
    SaveDialog1.FileName:='电袋外协结算('+mdata['FBalanceNum']+')';
    SaveDialog1.Filter:='.xls';
    SaveDialog1.Execute;

    if (mdata.FieldByName('FBalanceNum').AsString<>'') Or (mdata.FieldByName('FBalanceNum').AsString<>Null) then
        savefilepath:=SaveDialog1.FileName+'.xls';

    if FileExists(savefilepath) then
    begin
      DeleteFile(savefilepath) ;
    end;
  //  stbMsg.Caption:='提示信息：正在导出电袋外协结算明细表:'+'【'+mdata.FieldByName('FBalanceNum').AsString+'】';
  //  stbBar.Refresh;

    ExcelApp:= CreateOleObject('Excel.Application' );
    ExcelApp.Visible:=False;  //工作表显示

    ExcelApp.DisplayAlerts:=False;                  //不显示提示框
    MyWorkBook:=ExcelApp.WorkBooks.Open( filepath );   //打开模版

    try
      qry.SQL.Text:='select distinct FBalanceNum from  V_BalanceItem with(nolock) '
                  +' where FDepartmentNum+'';''+cast(FBalanceStatus as varchar(2))+'';''+FBalanceYear+'';''+FBalanceYYMM +'';''+FBalanceNum +'';'' like :ListItemFNumber ';
      qry.Parameters.FindParam('ListItemFNumber').value:= ListItemFNumber+'%';

    {  qry.SQL.Text:='select distinct FBalanceNum from  V_BalanceList with(nolock) '
                  +' where FBalanceID=:FBalanceID ';
      qry.Parameters.FindParam('FBalanceID').value:= mdata['FBalanceID'];
     }
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

       qry1.SQL.Text:='Select IsEdit=ConVert(bit,0),IsApp=ConVert(bit,0),0 as FWorkItemID,* from ('
                     +'Select FAgentName,FBranchFileNo,FDepartmentNum,FBalanceNum,FClientFullName,FBranchItemNumber,FTaxRate,FBalanceWrite,FWorkData,FSysTem,'
                     +'FBalanceListNum,FBalanceListNum as dyxh,FNumber,FBalanceName,FBalanceModel,FMaterialDate,FUnitName,FBalanceQry,FBalanceBasePrice,FWorkItemPrice,FBalanceWorkAdjust,FBalanceAdjust,'
                     +'FBalancePrice,FBalanceAmount,FQualityAmount,FRealAmount, FBalanceTaxAmount,'
                     +'FWorkItemNum,FBalanceRemark,(case FProductClass when ''运输费'' then ''运输费'' else ''产品'' end ) as FProductClass from V_BalanceList '
                     +'where FDepartmentNum+'';''+cast(FBalanceStatus as varchar(2))+'';''+FBalanceYear+'';''+FBalanceYYMM+'';''+FBalanceNum +'';'' like '''+ListItemFNumber+'%'' '
                     +'union '
                     +'select '''' as FAgentName,'''' as FBranchFileNo,'''' as FDepartmentNum,FBalanceNum,'''' as FClientFullName,'''' as FBranchItemNumber,0 as FTaxRate,'''' as FBalanceWrite,'''' as FWorkData,'''' as FSysTem, '
                     +''''' as FBalanceListNum,999 as dyxh,''999.999'' as FNumber,(case FProductClass when ''运输费'' then ''运输费'' else ''产品'' end )+''小计'' as FBalanceName,'''' as FBalanceModel,'''' as FMaterialDate,'''' as FUnitName, '
                     +' 0 as FBalanceQry,0 as FBalanceBasePrice,0 as FWorkItemPrice,0 as FBalanceWorkAdjust,0 as FBalanceAdjust,0 as FBalancePrice,'
                     +'sum(FBalanceAmount) as FBalanceAmount,sum(FQualityAmount) as FQualityAmount,sum(FRealAmount) as FRealAmount, '
                     +'round(sum(FRealAmount)/(1+FTaxRate),2) as FBalanceTaxAmount,''999999999'' as FWorkItemNum,'''' as FBalanceRemark,  '
                     +'(case FProductClass when ''运输费'' then ''运输费'' else ''产品'' end ) as FProductClass from  V_BalanceList '
                     +'where FDepartmentNum+'';''+cast(FBalanceStatus as varchar(2))+'';''+FBalanceYear+'';''+FBalanceYYMM+'';''+FBalanceNum +'';'' like '''+ListItemFNumber+'%'' '
                     +'group by FBalanceNum,(case FProductClass when ''运输费'' then ''运输费'' else ''产品'' end ),FTaxRate ) as t '
                     +'order by FProductClass,FWorkItemNum,FNumber,dyxh ' ;

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
     MyWorkBook.WorkSheets[k].Name:=IntToStr(k)+qry.FieldByName('FBalanceNum').AsString ;
     MyWorkBook.WorkSheets[k].Activate;

      //标题
       if (qry1['FWorkData']='电袋事业部') or (qry1['FWorkData']='电袋与管带事业部') then
         MyWorkBook.WorkSheets[k].Cells[1,1].Value:=AnsiReplaceStr(MyWorkBook.WorkSheets[k].Cells[1,1].Value,'B','福建龙净环保股份有限公司'); //公司名称
      if (qry1['FWorkData']='电袋事业部(厦门)') or (qry1['FWorkData']='电袋与管带事业部(厦门)') then
         MyWorkBook.WorkSheets[k].Cells[1,1].Value:=AnsiReplaceStr(MyWorkBook.WorkSheets[k].Cells[1,1].Value,'B','厦门龙净环保技术有限公司'); //公司名称
      if (qry1['FWorkData']='电袋与管带事业部(智能)') then
         MyWorkBook.WorkSheets[k].Cells[1,1].Value:=AnsiReplaceStr(MyWorkBook.WorkSheets[k].Cells[1,1].Value,'B','福建龙净环保智能输送工程有限公司'); //公司名称

      if FloatToStr(qry1['FTaxRate']*100)+'%'='11%' then
         MyWorkBook.WorkSheets[k].Cells[2,1].Value := qry1['FWorkData']+'设备运输结算明细表'
      else
         MyWorkBook.WorkSheets[k].Cells[2,1].Value := qry1['FWorkData']+'外购本体部件结算明细表';


      if FloatToStr(qry1['FTaxRate']*100)+'%'='11%' then
         MyWorkBook.WorkSheets[k].Cells[4,1].Value := '承运单位：'
      else
         MyWorkBook.WorkSheets[k].Cells[4,1].Value := '生产单位：';

      MyWorkBook.WorkSheets[k].Cells[4,3].Value := Trim(qry1.FieldByName('FAgentName').AsString);
      MyWorkBook.WorkSheets[k].Cells[4,11].Value := Trim(qry1.FieldByName('FBranchFileNo').AsString);
      MyWorkBook.WorkSheets[k].Cells[4,15].Value := Trim(qry1.FieldByName('FDepartmentNum').AsString)+' '+Trim(qry1.FieldByName('FBalanceNum').AsString);

      MyWorkBook.WorkSheets[k].Cells[5,3].Value := Trim(qry1.FieldByName('FClientFullName').AsString);
      MyWorkBook.WorkSheets[k].Cells[5,11].Value := Trim(qry1.FieldByName('FBranchItemNumber').AsString);
      MyWorkBook.WorkSheets[k].Cells[5,15].Value :=FloatToStr(qry1['FTaxRate']*100)+'%';


      //循环行开始
      i:=7;

       //工作薄名称
      MyWorkBook.WorkSheets[k].Name:=qry.FieldByName('FBalanceNum').AsString;
      copystart:='A'+IntToStr(i);
      if qry1.recordcount>0 then
      Begin
        copystart:='A'+IntToStr(i);
        copystart1:='A'+IntToStr(i+1);
        copyend:='Q'+IntToStr(i);  //区域
        If ((qry1.RecordCount+3) mod 16)>0 then
        begin
          ReNum:=qry1.RecordCount+(16-((qry1.RecordCount+2) mod 16))-1;
          L:=qry1.RecordCount+(16-((qry1.RecordCount+2) mod 16))-1;
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
       { MyWorkBook.WorkSheets[k].Cells[i+L+1,8].Value := '=SUM(H7:H'+IntToStr(i+L)+')'; //
        MyWorkBook.WorkSheets[k].Cells[i+L+1,10].Value := '=SUM(J7:J'+IntToStr(i+L)+')'; //
        MyWorkBook.WorkSheets[k].Cells[i+L+1,11].Value := '=SUM(K7:K'+IntToStr(i+L)+')'; //
        MyWorkBook.WorkSheets[k].Cells[i+L+1,12].Value := '=SUM(L7:L'+IntToStr(i+L)+')'; //
        MyWorkBook.WorkSheets[k].Cells[i+L+1,13].Value := '=round(SUM(L7:L'+IntToStr(i+L)+')/(1+O5),2)';     //20150806修改
        }
        MyWorkBook.WorkSheets[k].Cells[i+L+1,8].Value := '=SUMIF(G7:G'+IntToStr(i+L)+',"kg",H7:H'+IntToStr(i+L)+')'; //总计


        MyWorkBook.WorkSheets[k].Cells[i+L+1,10].Value := '=IFERROR(VLOOKUP("产品小计",B:M,9,FALSE),0)+IFERROR(VLOOKUP("运输费小计",B:M,9,FALSE),0)'; //
        MyWorkBook.WorkSheets[k].Cells[i+L+1,11].Value := '=IFERROR(VLOOKUP("产品小计",B:M,10,FALSE),0)+IFERROR(VLOOKUP("运输费小计",B:M,10,FALSE),0)'; //
        MyWorkBook.WorkSheets[k].Cells[i+L+1,12].Value := '=IFERROR(VLOOKUP("产品小计",B:M,11,FALSE),0)+IFERROR(VLOOKUP("运输费小计",B:M,11,FALSE),0)'; //

        MyWorkBook.WorkSheets[k].Cells[i+L+1,13].Value := '=round(L'+IntToStr(i+L+1)+'/(1+O5),2)';   //20150806修改

        //  MyWorkBook.WorkSheets[k].Cells[i+L+1,13].Value := '=round(VLOOKUP("产品小计",B:M,11,FALSE)+VLOOKUP("运输费小计",B:M,11,FALSE))/(1+O5),2)';     //20150806修改

                                                               // =SUMIF(G7:G28,"kg",H7:H29)


          //制单、审核栏
        MyWorkBook.WorkSheets[k].Cells[i+L+2,3].Value:=qry1.FieldByName('FBalanceWrite').AsString; //制单
        if qry1['FAgentName']='厦门龙净环保物料输送科技有限公司' then
           MyWorkBook.WorkSheets[k].Cells[i+L+2,5].Value:='市场部：'
        else
           MyWorkBook.WorkSheets[k].Cells[i+L+2,5].Value:='质量：';
        if qry1['FAgentName']='厦门龙净环保物料输送科技有限公司' then
           MyWorkBook.WorkSheets[k].Cells[i+L+2,7].Value:='工程部：'
        else
           //MyWorkBook.WorkSheets[k].Cells[i+L+2,7].Value:='核对：';
           MyWorkBook.WorkSheets[k].Cells[i+L+2,7].Value:='审核：';

        if qry1['FSysTem']='体系内' then
        begin
           MyWorkBook.WorkSheets[k].Cells[i+L+2,13].Value:='财务审核：';
           MyWorkBook.WorkSheets[k].Cells[i+L+2,15].Value:='分管领导审核：';
        end
        else
        begin
           MyWorkBook.WorkSheets[k].Cells[i+L+2,13].Value:='';
           MyWorkBook.WorkSheets[k].Cells[i+L+2,15].Value:='';
           //MyWorkBook.WorkSheets[k].Cells[i+L+2,13].Value:='审核：';
           //MyWorkBook.WorkSheets[k].Cells[i+L+2,15].Value:='批准：';      2025-01-15
        end;
        h:=1;
        qry1.first;
        while not qry1.eof do
        Begin
          If qry1.FieldByName('dyxh').Value<>999 then
          begin
            MyWorkBook.WorkSheets[k].Cells[i,1].Value :=h;
            MyWorkBook.WorkSheets[k].Cells[i,14].Value := qry1.FieldByName('FWorkItemNum').AsString;
          end
          else
          begin
             MyWorkBook.WorkSheets[k].Cells[i,1].Value :='';
             MyWorkBook.WorkSheets[k].Cells[i,14].Value := '';
          end;
          if qry1.FieldByName('FBalanceModel').AsString='' then
             MyWorkBook.WorkSheets[k].Cells[i,2].Value := qry1.FieldByName('FBalanceName').AsString
          else
             MyWorkBook.WorkSheets[k].Cells[i,2].Value := qry1.FieldByName('FBalanceName').AsString+'['+qry1.FieldByName('FBalanceModel').AsString+']';

          MyWorkBook.WorkSheets[k].Cells[i,6].Value := qry1.FieldByName('FMaterialDate').AsString;
          MyWorkBook.WorkSheets[k].Cells[i,7].Value := qry1.FieldByName('FUnitName').AsString;
          MyWorkBook.WorkSheets[k].Cells[i,8].Value := qry1.FieldByName('FBalanceQry').AsString;
          MyWorkBook.WorkSheets[k].Cells[i,9].Value := qry1.FieldByName('FBalancePrice').AsString;
          MyWorkBook.WorkSheets[k].Cells[i,10].Value := qry1.FieldByName('FBalanceAmount').AsString;
          If qry1['FQualityAmount']=0 then
             MyWorkBook.WorkSheets[k].Cells[i,11].Value := ''
          else
            MyWorkBook.WorkSheets[k].Cells[i,11].Value := qry1.FieldByName('FQualityAmount').AsString;
          MyWorkBook.WorkSheets[k].Cells[i,12].Value :=qry1.FieldByName('FRealAmount').AsString;
          MyWorkBook.WorkSheets[k].Cells[i,13].Value := qry1.FieldByName('FBalanceTaxAmount').AsString;


          MyWorkBook.WorkSheets[k].Cells[i,15].Value := qry1.FieldByName('FBalanceRemark').AsString;
          qry1.next;
          i:=i+1;
          If qry1.FieldByName('dyxh').Value<>999 then
             h:=h+1;
        End;
      end;
      qry.Next ;
      ExcelApp.Visible:=True;
      MyWorkBook.WorkSheets[k].PrintPreview;  //打印
      ExcelApp.Visible:=False;
      k:=k+1;
    end;
    MyWorkBook.WorkSheets[1].delete; //删除模版
  //  stbMsg.Caption:='提示信息：电袋外协结算明细表:'+'【'+qry1.FieldByName('FBalanceNum').AsString+'】的信息导出完成!';
   // stbBar.Refresh;
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

procedure TFrm_WorkBalance.Act_StatusExecute(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.EnableBCD:=False;//小数位数>4
  TB_Edit.Visible:=False;
  TB_Del.Visible:=False;
  TB_Submit.Visible:=False;
  TB_Check.Visible:=False;
  TB_Audit.Visible:=False;

  //制单者是本人
  try
    If TS_Tree.ActivePage=TS_Num then
    begin
      qry.SQL.Text:='Select distinct FBalanceStatus,FBalanceWriteID from V_BalanceItem with(nolock) '
                   +'where FNumber like :FNumber  and FDepartmentID=:FDepartmentID ';
      qry.Parameters.FindParam('FNumber').value:=ListItemFNumber+'%';
    end;
    qry.Parameters.FindParam('FDepartmentID').value:= UserFDepartmentID;
    qry.Open;
  finally
    ;
  end;
   //制单者是本人

  If (qry.RecordCount=1) and (qry.FieldByName('FBalanceStatus').AsInteger=0)
      and (qry.FieldByName('FBalanceWriteID').AsInteger=UserNumID) then
  begin
    If mdata.RecordCount=0 then
    begin
      TB_Del.Visible:=False;
      TB_Edit.Visible:=False;
      TB_Submit.Visible:=False;
    end;
    If mdata.RecordCount>0 then
    begin
      TB_Submit.Visible:=mdlData.PermissionCheckRights(TFrm_WorkBalance.ClassName,'提交');
      TB_Submit.Caption:='批量提交';
      TB_Edit.Visible:=False;
      TB_Del.Visible:=False;
    end;
    If mdata.RecordCount=1 then
    begin
      TB_Edit.Visible:=mdlData.PermissionCheckRights(TFrm_WorkBalance.ClassName,'修改');
      TB_Del.Visible:=mdlData.PermissionCheckRights(TFrm_WorkBalance.ClassName,'删除');
      TB_Submit.Visible:=mdlData.PermissionCheckRights(TFrm_WorkBalance.ClassName,'提交');
      TB_Submit.Caption:='提交';
    end;
    Exit;
  end;

   //提交者是本人
  If (qry.RecordCount=1) and (qry.FieldByName('FBalanceStatus').AsInteger=1)
     and (qry.FieldByName('FBalanceWriteID').AsInteger=UserNumID) then
  begin
    TB_Submit.Visible:=mdlData.PermissionCheckRights(TFrm_WorkBalance.ClassName,'提交');
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
      qry.SQL.Text:='Select distinct FBalanceStatus from V_BalanceItem with(nolock) '
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
  If (qry.RecordCount=1) and (qry.FieldByName('FBalanceStatus').AsInteger=1) then
  begin
    If MData.RecordCount=0 then
    begin
      TB_Check.Visible:=False;
    end;
    If MData.RecordCount>0 then
    begin
      TB_Check.Visible:=mdlData.PermissionCheckRights(TFrm_WorkBalance.ClassName,'校对');
      TB_Check.Caption:='批量校对';
    end;
    If MData.RecordCount=1 then
    begin
      TB_Check.Visible:=mdlData.PermissionCheckRights(TFrm_WorkBalance.ClassName,'校对');
      TB_Check.Caption:='校对';
    end;
   //Exit;
  end;


  If (qry.RecordCount=1) and (qry.FieldByName('FBalanceStatus').AsInteger=2) then
  begin
    TB_Check.Visible:=mdlData.PermissionCheckRights(TFrm_WorkBalance.ClassName,'校对');
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
      qry.SQL.Text:='Select distinct FBalanceStatus from V_BalanceItem with(nolock) '
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
  If (qry.RecordCount=1) and (qry.FieldByName('FBalanceStatus').AsInteger=2) then
  begin
    If MData.RecordCount=0 then
    begin
      TB_Audit.Visible:=False;
    end;
    If MData.RecordCount>0 then
    begin
      TB_Audit.Visible:=mdlData.PermissionCheckRights(TFrm_WorkBalance.ClassName,'审核');
      TB_Audit.Caption:='批量审核';
    end;
    If MData.RecordCount=1 then
    begin
      TB_Audit.Visible:=mdlData.PermissionCheckRights(TFrm_WorkBalance.ClassName,'审核');
      TB_Audit.Caption:='审核';
    end;
  end;


  If (qry.RecordCount=1) and (qry.FieldByName('FBalanceStatus').AsInteger=3) then
  begin
    TB_Audit.Visible:=mdlData.PermissionCheckRights(TFrm_WorkBalance.ClassName,'审核');
    If MData.RecordCount=0 then
       TB_Audit.Visible:=False;
    If MData.RecordCount>0 then
       TB_Audit.Caption:='批量审核撤回';
    If MData.RecordCount=1 then
       TB_Audit.Caption:='审核撤回';
  end;



end;

procedure TFrm_WorkBalance.TB_SubmitClick(Sender: TObject);
var
 qry,qryDate:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.EnableBCD:=False;//小数位数>4
  qryDate:=TAdoQuery.Create(self);
  qryDate.ConnectionString:=mdlData.ReadConnStr;
  P_state:=3;
  If (TB_Submit.Caption='提交') or (TB_Submit.Caption='批量提交') then
  begin
    If application.MessageBox(Pchar('系统提示：是否对生产结算单号为：'+ListItemFNumber+'的单据进行提交？'+chr(13)+chr(13)
                                   +'确定要提交对本单据吗？'),'系统提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      MData.First;
      while not MData.eof do
      begin
        try
          qry.SQL.Text:='Update T_BalanceItem Set FBalanceStatus=1,FBalanceSubmitDate=:FBalanceSubmitDate  where FBalanceID=:FBalanceID';
          qry.Parameters.FindParam('FBalanceSubmitDate').value:= S_SyStemDate(qryDate);
          qry.Parameters.FindParam('FBalanceID').value:=MData['FBalanceID'];
          qry.ExecSQL;
        finally
          ;
        end;
        MData.Edit;
        MData['FBalanceStatus']:=1;
        MData['FBalanceStatusNotes']:='提交';
        MData['FBalanceSubmitDate']:=S_SyStemDate(qryDate);
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
    If application.MessageBox(Pchar('系统提示：是否对生产结算单号为：'+ListItemFNumber+'的单据进行提交撤回？'+chr(13)+chr(13)
                                     +'确定要对本单据提交撤回吗？'),'系统提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      MData.First;
      while not MData.eof do
      begin
        try
          qry.SQL.Text:='Update T_BalanceItem Set FBalanceStatus=0,FBalanceSubmitDate=:FBalanceSubmitDate where FBalanceID=:FBalanceID';
          qry.Parameters.FindParam('FBalanceSubmitDate').value:= Null;
          qry.Parameters.FindParam('FBalanceID').value:= MData['FBalanceID'];
          qry.ExecSQL;
        finally
          ;
        end;
        MData.Edit;
        MData['FBalanceStatus']:=0;
        MData['FBalanceStatusNotes']:='填单';
        MData['FBalanceSubmitDate']:=Null;
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

procedure TFrm_WorkBalance.TB_CheckClick(Sender: TObject);
var
 qry,qryDate:TADOquery;
begin
   //2024-01-05
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.EnableBCD:=False;//小数位数>4
  qryDate:=TAdoQuery.Create(self);
  qryDate.ConnectionString:=mdlData.ReadConnStr;
  P_state:=3;
  If (TB_Check.Caption='校对') or (TB_Check.Caption='批量校对') then
  begin
    If application.MessageBox(Pchar('系统提示：是否对生产结算单号为：'+ListItemFNumber+'的单据进行校对？'+chr(13)+chr(13)
                                   +'确定要校对本单据吗？'),'系统提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      MData.First;
      while not MData.eof do
      begin
        try
          qry.SQL.Text:='Update T_BalanceItem Set FBalanceStatus=2,FBalanceCheckDate=:FBalanceCheckDate,FBalanceCheckID=:FBalanceCheckID  where FBalanceID=:FBalanceID';
          qry.Parameters.FindParam('FBalanceCheckDate').value:= S_SyStemDate(qryDate);
          qry.Parameters.FindParam('FBalanceCheckID').value:= UserNumID;
          qry.Parameters.FindParam('FBalanceID').value:=MData['FBalanceID'];
          qry.ExecSQL;
        finally
          ;
        end;
        MData.Edit;
        MData['FBalanceStatus']:=1;
        MData['FBalanceStatusNotes']:='校对';
        MData['FBalanceCheckDate']:=S_SyStemDate(qryDate);
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
        application.MessageBox('校对提交完毕！','系统提示',MB_ICONINFORMATION);
        TB_Check.Caption:='校对撤回';
      end;
      Act_Status.Execute;  //权限设置
    end;
    P_state:=2;
    Exit;
  end;
  If (TB_Check.Caption='校对撤回') or (TB_Check.Caption='校对提交撤回')  then
  begin
    If application.MessageBox(Pchar('系统提示：是否对生产结算单号为：'+ListItemFNumber+'的单据进行校对撤回？'+chr(13)+chr(13)
                                     +'确定要对本单据校对撤回吗？'),'系统提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      MData.First;
      while not MData.eof do
      begin
        try
          qry.SQL.Text:='Update T_BalanceItem Set FBalanceStatus=1,FBalanceCheckDate=:FBalanceCheckDate,FBalanceCheckID=:FBalanceCheckID where FBalanceID=:FBalanceID';
          qry.Parameters.FindParam('FBalanceCheckDate').value:= Null;
          qry.Parameters.FindParam('FBalanceCheckID').value:= UserNumID;
          qry.Parameters.FindParam('FBalanceID').value:= MData['FBalanceID'];
          qry.ExecSQL;
        finally
          ;
        end;
        MData.Edit;
        MData['FBalanceStatus']:=0;
        MData['FBalanceStatusNotes']:='提交';
        MData['FBalanceCheckDate']:=Null;
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

procedure TFrm_WorkBalance.TB_AuditClick(Sender: TObject);
var
 qry,qryDate:TADOquery;
begin
 //2024-01-05
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.EnableBCD:=False;//小数位数>4
  qryDate:=TAdoQuery.Create(self);
  qryDate.ConnectionString:=mdlData.ReadConnStr;
  P_state:=3;
  If (TB_Audit.Caption='审核') or (TB_Audit.Caption='批量审核') then
  begin
    If application.MessageBox(Pchar('系统提示：是否对生产结算单号为：'+ListItemFNumber+'的单据进行审核？'+chr(13)+chr(13)
                                   +'确定要审核本单据吗？'),'系统提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      MData.First;
      while not MData.eof do
      begin
        try
          qry.SQL.Text:='Update T_BalanceItem Set FBalanceStatus=3,FBalanceAuditDate=:FBalanceAuditDate,FBalanceAuditID=:FBalanceAuditID  where FBalanceID=:FBalanceID';
          qry.Parameters.FindParam('FBalanceAuditDate').value:= S_SyStemDate(qryDate);
          qry.Parameters.FindParam('FBalanceAuditID').value:= UserNumID;
          qry.Parameters.FindParam('FBalanceID').value:=MData['FBalanceID'];
          qry.ExecSQL;
        finally
          ;
        end;
        MData.Edit;
        MData['FBalanceStatus']:=2;
        MData['FBalanceStatusNotes']:='审核';
        MData['FBalanceAuditDate']:=S_SyStemDate(qryDate);
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
        application.MessageBox('审核提交完毕！','系统提示',MB_ICONINFORMATION);
        TB_Audit.Caption:='审核撤回';
      end;
      Act_Status.Execute;  //权限设置
    end;
    P_state:=2;
    Exit;
  end;
  If (TB_Audit.Caption='审核撤回') or (TB_Audit.Caption='审核撤回')  then
  begin
    If application.MessageBox(Pchar('系统提示：是否对生产结算单号为：'+ListItemFNumber+'的单据进行审核撤回？'+chr(13)+chr(13)
                                     +'确定要对本单据审核撤回吗？'),'系统提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      MData.First;
      while not MData.eof do
      begin
        try
          qry.SQL.Text:='Update T_BalanceItem Set FBalanceStatus=2,FBalanceAuditDate=:FBalanceAuditDate,FBalanceAuditID=:FBalanceAuditID where FBalanceID=:FBalanceID';
          qry.Parameters.FindParam('FBalanceAuditDate').value:= Null;
          qry.Parameters.FindParam('FBalanceAuditID').value:= UserNumID;
          qry.Parameters.FindParam('FBalanceID').value:= MData['FBalanceID'];
          qry.ExecSQL;
        finally
          ;
        end;
        MData.Edit;
        MData['FBalanceStatus']:=1;
        MData['FBalanceStatusNotes']:='校对';
        MData['FBalanceAuditDate']:=Null;
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

procedure TFrm_WorkBalance.Act_WorkItemListExecute(Sender: TObject);
var
 qry:TADOquery;
 i:Integer;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.EnableBCD:=False;//小数位数>4
{
  //项目变更附表更新
  try
    qry.SQL.Text:='Select IsEdit=cast(0 as bit),IsApp=cast(1 as bit),* from V_BalanceList with(nolock) where FBalanceID=0';
    qry.Open;
  finally
     ;
  end;
  Mdata_List.DisableControls;
  Mdata_List.CopyFromDataSet(qry);
  Mdata_List.Active;
  Mdata_List.EnableControls;

  try
    qry.SQL.Text:='Select * from  V_WorkList with(nolock) '
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

      mData_List['FBalanceName']:=qry.FieldByName('FBalanceName').Value;
      mData_List['FBalanceModel']:=qry.FieldByName('FBalanceModel').Value;
      mData_List['FUnitName']:=qry.FieldByName('FUnitName').Value;
      mData_List['FMaterialDate']:=qry.FieldByName('FMaterialDate').Value;
      mData_List['FEstimateQry']:=qry.FieldByName('FEstimateQry').Value;
      mData_List['FBalanceBasePrice']:=qry.FBalanceBasePrice('FTaxRate').Value;  //结算基价
      mData_List['FWorkOutPrice']:=qry.FieldByName('FWorkOutPrice').Value;      //工管贴补单价
      mData_List['FOutPrice']:=qry.FieldByName('FOutPrice').Value;      //贴补单价
      mData_List['FBalancePrice']:=qry.FieldByName('FBalancePrice').Value;      //结算单价
      mData_List['FWorkItemPrice']:=qry.FieldByName('FWorkItemPrice').Value;  //任务单价
      mData_List['FEstimateAmount']:=qry.FieldByName('FEstimateAmount').Value;
      mData_List['FBalanceQry']:=qry.FieldByName('FBalanceQry').Value;
      mData_List['FBalanceAmount']:=qry.FieldByName('FBalanceAmount').Value;
      mData_List['FBranchItemNumber']:=qry.FieldByName('FBranchItemNumber').Value;
      mData_List['FWorkListID']:=qry.FieldByName('FWorkListID').Value;
      mData_List['FQualityAmount']:=0.00;
      mData_List['FRealAmount']:=0.00;
      mData_List['FBalanceWorkAdjust']:=0.00000;
      mData_List['FBalanceAdjust']:=0.00000;
      mData_List['FPrice']:=0.00000;
      mData_List['FBalanceQry']:=0.00000;


      mData_List.Post;
      mData_List.Next;
      qry.Next;
    end;
  end
 }
end;

procedure TFrm_WorkBalance.cxGV_WorkListDblClick(Sender: TObject);
begin
  inherited;
  Act_Sel.Execute;

//  RzSP_PTitem.Visible:=False;
end;

procedure TFrm_WorkBalance.cxGV_WorkListCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;

  If (StrToFloat(AViewInfo.GridRecord.DisplayTexts[SumFBalanceQry_WorkList.Index])=Null) or
     (StrToFloat(AViewInfo.GridRecord.DisplayTexts[SumFBalanceQry_WorkList.Index])=Null) then
     Exit;

  If (StrToFloat(AViewInfo.GridRecord.DisplayTexts[SumFBalanceQry_WorkList.Index])=0) then
  begin
    ACanvas.Canvas.Font.Color:=clBlue; //字体颜色
    ACanvas.FillRect(AViewInfo.Bounds);
  end;


end;

procedure TFrm_WorkBalance.Act_SelMaxNumExecute(Sender: TObject);
var qry,qry1: TADOQuery;
    P_yymm:String;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.EnableBCD:=False;//小数位数>4
  qry1:=TAdoQuery.Create(self);
  qry1.ConnectionString:=mdlData.ReadConnStr;
  qry1.EnableBCD:=False;//小数位数>4

  try
    qry1.SQL.Text:='select * from T_Period with(nolock) where FTableName=''T_BalanceItem'' and FDepartmentID=:FDepartmentID and FStarDate<=:FStarDate and FEndDate>=:FEndDate';
    qry1.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry1.Parameters.FindParam('FStarDate').value:=Mdata['FBalanceDate'];
    qry1.Parameters.FindParam('FEndDate').value:=Mdata['FBalanceDate'];
    qry1.Open;
  finally
     ;
  end;

  If qry1.RecordCount=1 then
     P_yymm:=qry1.FieldByName('FPeriodYear').Value+qry1.FieldByName('FPeriodMonth').Value;

  try
    qry.SQL.Text:='select max(FBalanceNum) as FMaxBalanceNum,FBalanceYYMM  from V_BalanceList with(nolock) '
                 +'where FDepartmentID=:FDepartmentID and FBalanceNum like :FBalanceNum '
                 +'group by FBalanceYYMM';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Parameters.FindParam('FBalanceNum').value:=P_yymm+'%';
    qry.Open;
  finally
     ;
  end;
  Mdata.Edit;
  If qry.RecordCount=1 then
     Mdata['FBalanceNum']:=Format('%.3d',[(StrToInt(qry.FieldByName('FMaxBalanceNum').Value)+1)])
  else
     Mdata['FBalanceNum']:=P_yymm+'001';
  Mdata.Post;

  Mdata.Edit;
  Mdata['FBalanceNo']:=StrToInt(Copy(Mdata['FBalanceNum'],7,3));
  Mdata.Post;

end;

procedure TFrm_WorkBalance.E_FBalanceDateExit(Sender: TObject);
begin
  inherited;
  Act_SelMaxNum.Execute;
end;

procedure TFrm_WorkBalance.cxGV_ListFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
var qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.EnableBCD:=False;//小数位数>4

  If (Mdata_List['FWorkItemID']<>0) and (Mdata_List['FWorkItemID']<>Null) then
  begin
    If MyItemListID(qry,Mdata_WorkList,'V_WorkList',' FWorkItemID='+IntToStr(Mdata_List['FWorkItemID']),'',) then
  end;

end;

procedure TFrm_WorkBalance.E_FClientShortNameExit(Sender: TObject);
begin
  inherited;
//  Act_ItemNum.Execute;
end;

procedure TFrm_WorkBalance.E_FClientShortNameKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  If Key=13 then
  begin
    Act_ItemNum.Execute;
  end;

end;

procedure TFrm_WorkBalance.Act_SelExecute(Sender: TObject);
var  i,j: integer;
begin
  inherited;
  MData_WorkList.Edit;
  MData_WorkList.Post;
  MData_List.Open;
  begin
    for i:=0 to cxGV_WorkList.DataController.Controller.SelectedRecordCount-1 do
    begin
      j:=cxGV_WorkList.DataController.GetSelectedRowIndex(i);
      MData_List.Append;
      MData_List.Edit;

      MData_List['FBalanceFullName']:=cxGV_WorkList.DataController.GetValue(J,cxGV_WorkList.DataController.GetItemByFieldName('FBalanceFullName').Index);
      MData_List['FBalanceName']:=cxGV_WorkList.DataController.GetValue(J,cxGV_WorkList.DataController.GetItemByFieldName('FBalanceName').Index);
      MData_List['FBalanceModel']:=cxGV_WorkList.DataController.GetValue(J,cxGV_WorkList.DataController.GetItemByFieldName('FBalanceModel').Index);
      MData_List['FUnitName']:=cxGV_WorkList.DataController.GetValue(J,cxGV_WorkList.DataController.GetItemByFieldName('FUnitName').Index);
      MData_List['FMaterialDate']:=cxGV_WorkList.DataController.GetValue(J,cxGV_WorkList.DataController.GetItemByFieldName('FMaterialDate').Index);
      MData_List['FEstimateQry']:=cxGV_WorkList.DataController.GetValue(J,cxGV_WorkList.DataController.GetItemByFieldName('FEstimateQry').Index);
      MData_List['FEstimateAmount']:=cxGV_WorkList.DataController.GetValue(J,cxGV_WorkList.DataController.GetItemByFieldName('FEstimateAmount').Index);
      MData_List['FWorkItemNum']:=cxGV_WorkList.DataController.GetValue(J,cxGV_WorkList.DataController.GetItemByFieldName('FWorkItemNum').Index);

      MData_List['FBalanceBasePrice']:=cxGV_WorkList.DataController.GetValue(J,cxGV_WorkList.DataController.GetItemByFieldName('FBalanceBasePrice').Index);  //结算基价
      MData_List['FWorkOutPrice']:=cxGV_WorkList.DataController.GetValue(J,cxGV_WorkList.DataController.GetItemByFieldName('FWorkOutPrice').Index);  //工管贴补单价
      MData_List['FOutPrice']:=cxGV_WorkList.DataController.GetValue(J,cxGV_WorkList.DataController.GetItemByFieldName('FOutPrice').Index);  //贴补单价

      MData_List['FBalancePrice']:=cxGV_WorkList.DataController.GetValue(J,cxGV_WorkList.DataController.GetItemByFieldName('FBalancePrice').Index);       //结算单价
      MData_List['FWorkItemPrice']:=cxGV_WorkList.DataController.GetValue(J,cxGV_WorkList.DataController.GetItemByFieldName('FWorkItemPrice').Index);       //任务单价

      MData_List['FWorkListID']:=cxGV_WorkList.DataController.GetValue(J,cxGV_WorkList.DataController.GetItemByFieldName('FWorkListID').Index);

      MData_List['FBalanceRemark']:=cxGV_WorkList.DataController.GetValue(J,cxGV_WorkList.DataController.GetItemByFieldName('FWorkListRemark').Index);
      MData_List['FNumber']:=cxGV_WorkList.DataController.GetValue(J,cxGV_WorkList.DataController.GetItemByFieldName('FNumber').Index);

      MData_List['FQualityAmount']:=0.00;
      MData_List['FRealAmount']:=0.00;
      MData_List['FBalanceWorkAdjust']:=0.00000;
      MData_List['FBalanceAdjust']:=0.00000;
      MData_List['FPrice']:=0.00000;
      MData_List['FBalanceQry']:=0.00000;


      MData_List.Post;
    end;
  end;
  Page_List.ActivePage:=Ts_WorkBalance;

end;

procedure TFrm_WorkBalance.XHGetDisplayText(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; var AText: String);
begin
  inherited;
  atext:=inttostr(arecord.Index+1);
end;

procedure TFrm_WorkBalance.Num_1GetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: String);
begin
  inherited;
  atext:=inttostr(arecord.Index+1);
end;

procedure TFrm_WorkBalance.TB_FInvoiceClick(Sender: TObject);
begin
  inherited;
  If (mdata.RecordCount<1) then
    Exit;
  P_List :=mdata['FBalanceNum'];
  If application.MessageBox(Pchar('是否对结算单号为：【'+P_List+'】的单据进行核销？'+chr(13)+chr(13)
                                   +'确定要核销本单据吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then

  cxGV_Item.OptionsData.Editing:=True;
  FInvoice_Item.Options.Editing:=True;
  FInvoiceDate_Item.Options.Editing:=True;

end;

procedure TFrm_WorkBalance.TB_FInvoice_SaveClick(Sender: TObject);
var
  qry:TADOQuery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.EnableBCD:=False;//小数位数>4
  Mdata.Edit;
  Mdata.Post;
  P_List :=mdata['FBalanceNum'];
  If application.MessageBox(Pchar('是否对结算单号为：【'+P_List+'】的单据进行核销？'+chr(13)+chr(13)
                                   +'确定要核销本单据吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then

  try
    qry.SQL.Text:='Update T_BalanceItem Set FInvoice=:FInvoice,FInvoiceDate=:FInvoiceDate  where FBalanceID=:FBalanceID';
    qry.Parameters.FindParam('FInvoice').value:= mdata['FInvoice'];
    qry.Parameters.FindParam('FInvoiceDate').value:= mdata['FInvoiceDate'];
    qry.Parameters.FindParam('FBalanceID').value:=mdata['FBalanceID'];
    qry.ExecSQL;
  finally
     ;
  end;
  cxGV_Item.OptionsData.Editing:=False;


end;

procedure TFrm_WorkBalance.E_FInvoicePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  Act_Invoice.Execute;
end;

procedure TFrm_WorkBalance.ToolButton2Click(Sender: TObject);
begin
  inherited;
  Act_Sel.Execute;
end;

procedure TFrm_WorkBalance.FInvoice_ItemPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  Act_Invoice.Execute;
end;

procedure TFrm_WorkBalance.Act_InvoiceExecute(Sender: TObject);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.EnableBCD:=False;//小数位数>4
  mData.Edit;
  mData.Post;
  try
    qry.SQL.Text:='Select distinct FInvoice as FNumber from  V_BalanceItem with(nolock) '
                 +'where  FDepartmentID=:FDepartmentID  '
                 +'order by FInvoice ';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Open;
  finally
    ;
  end;
  If qry.RecordCount>0 then
  selValue:=select('选择是否核销','FNumber','FNumber','FNumber','FNumber',qry);
  If (Length(selValue)>0)  then
  begin
     mData.Edit;
     mData['FInvoice']:=qry.FieldByName('FNumber').Value;
     mData.Post;
  end
  else
     application.MessageBox('请选择明细！','系统提示',MB_ICONINFORMATION);


end;

procedure TFrm_WorkBalance.Act_TreeSelExecute(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.EnableBCD:=False;//小数位数>4


  mdata.DisableControls;
  If TS_Tree.ActivePage=TS_Num then
  begin
    If not MyItemList(qry,MData,'V_BalanceItem','FNumber',ListItemFNumber,'FNumber') then
    begin
      MData.Open;
    end;
  end;
  mdata.EnableControls;

end;

end.
