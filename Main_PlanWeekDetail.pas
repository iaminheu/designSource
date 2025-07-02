unit Main_PlanWeekDetail;

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
  cxGroupBox, cxCheckBox, cxCurrencyEdit, RzPanel, RzSplit, RzTabs,IniFiles,
  TFlatPanelUnit,Comobj, cxLookAndFeelPainters, cxSpinEdit, RzStatus,
  ActnList, RzLabel, cxButtons,// cxLookAndFeelPainters,   cxButtons,  cxSpinEdit,  RzLabel, ActnList, RzStatus
  cxTimeEdit, jpeg, cxCheckComboBox, cxGridBandedTableView, cxGridDBBandedTableView, DBTables,
  Menus;

type
  TFrm_PlanWeekDetail = class(TFrm_GridBass)
    ImageList: TImageList;
    frReport: TfrReport;
    frDBDataSet: TfrDBDataSet;
    PC_Ship: TRzPageControl;
    TS_Ship: TRzTabSheet;
    PanelBkGnd: TPanel;
    Panel7: TPanel;
    RSP_CList: TRzSizePanel;
    ToolBar_HItem: TToolBar;
    TB_App: TToolButton;
    TB_Del: TToolButton;
    TB_Ref: TToolButton;
    Label9: TLabel;
    E_FClientFullName: TcxTextEdit;
    TB_Edit_M: TToolButton;
    TB_Exit: TToolButton;
    TB_Prin: TToolButton;
    RzSizePanel2: TRzSizePanel;
    TB_Submit: TToolButton;
    TB_Check: TToolButton;
    actionList: TActionList;
    ActApp: TAction;
    ActSave: TAction;
    ActOut: TAction;
    ActEdit: TAction;
    ActDel: TAction;
    Act_Submit: TAction;
    Act_Audit: TAction;
    stbBar: TRzStatusBar;
    RzClockStatus1: TRzClockStatus;
    RzKeyStatus1: TRzKeyStatus;
    RzKeyStatus2: TRzKeyStatus;
    RzKeyStatus3: TRzKeyStatus;
    stbMsg: TRzFieldStatus;
    SaveDialog1: TSaveDialog;
    Act_Status_M: TAction;
    RzSizePanel4: TRzSizePanel;
    Act_Set_Open_M: TAction;
    Act_Set_Close_M: TAction;
    Act_Set_Close: TAction;
    Act_Set_Open: TAction;
    Act_PC_ShipList: TAction;
    PM: TPopupMenu;
    N_Edit: TMenuItem;
    N_Filter: TMenuItem;
    N_Sort: TMenuItem;
    N_Group: TMenuItem;
    N_Set: TMenuItem;
    N_Out: TMenuItem;
    Act_Menu: TAction;
    Act_Menu_Set: TAction;
    MData_PTItem: TdxMemData;
    DS_Mdata_PTItem: TDataSource;
    DS_Mdata_PTList: TDataSource;
    MData_PTList: TdxMemData;
    cxGrid_PTItem: TcxGrid;
    cxGV_PTItem: TcxGridDBTableView;
    FFactoryNum_PTItem: TcxGridDBColumn;
    FPlanTaskItemDate_PTItem: TcxGridDBColumn;
    FBranchFileNo_PTItem: TcxGridDBColumn;
    FBranchItemNumber_PTItem: TcxGridDBColumn;
    FClientFullName_PTItem: TcxGridDBColumn;
    FClientShortName_PTItem: TcxGridDBColumn;
    FProductName_PTItem: TcxGridDBColumn;
    FItemModel_PTItem: TcxGridDBColumn;
    cxGL_PTItem: TcxGridLevel;
    MyTreeView_PTItem: TTreeView;
    PopupMenu1: TPopupMenu;
    Act_MaxID: TAction;
    Act_Sel: TAction;
    FFileItemID_PTItem: TcxGridDBColumn;
    cxGrid_PTList: TcxGrid;
    cxGV_PTList: TcxGridDBTableView;
    FPlanWeekPartsName_PTList: TcxGridDBColumn;
    FMakeBOMWet_PTList: TcxGridDBColumn;
    FPartsCode_PTList: TcxGridDBColumn;
    FPlanPartsName_PTList: TcxGridDBColumn;
    FPlanTaskListRemark_PTList: TcxGridDBColumn;
    FPlanPlanDate_PTList: TcxGridDBColumn;
    FAgentID_PTList: TcxGridDBColumn;
    FPlanFinishDate_PTList: TcxGridDBColumn;
    FPlanDrawDate_PTList: TcxGridDBColumn;
    FRealDrawDate_PTList: TcxGridDBColumn;
    FAgentShortName_PTList: TcxGridDBColumn;
    FPlanTaskListID_PTList: TcxGridDBColumn;
    cxGL_PTList: TcxGridLevel;
    FProductID_PTItem: TcxGridDBColumn;
    FPlanWeekPartsID_PTList: TcxGridDBColumn;
    FDeliveryDate_PTItem: TcxGridDBColumn;
    FFinishDate_PTItem: TcxGridDBColumn;
    FMakePartsDate_PTList: TcxGridDBColumn;
    FShipPartsDate_PTList: TcxGridDBColumn;
    FPlanPartsNumber_PTList: TcxGridDBColumn;
    FTeamName_PTList: TcxGridDBColumn;
    FTeamID_PTList: TcxGridDBColumn;
    ActionList1: TActionList;
    FPlanWeekDetailStatus_PTItem: TcxGridDBColumn;
    FPlanWeekDetailStatusNotes_PTItem: TcxGridDBColumn;
    FPlanWeekDetailWriteDate_PTItem: TcxGridDBColumn;
    FPlanWeekDetailWriteID_PTItem: TcxGridDBColumn;
    FPlanWeekDetailWrite_PTItem: TcxGridDBColumn;
    FWorkShop_PTList: TcxGridDBColumn;
    Act_Edit: TAction;
    FPlanWet_PTList: TcxGridDBColumn;
    FMakePartsWet_PTList: TcxGridDBColumn;
    FMakePartsPercent_PTList: TcxGridDBColumn;
    Image2: TImage;
    FShipPartsPercent_PTList: TcxGridDBColumn;
    FShipPartsWet_PTList: TcxGridDBColumn;
    P_Btn: TPanel;
    CancelBtn_M: TcxButton;
    OKBtn_M: TcxButton;
    TS_PlanTask: TRzTabSheet;
    RzSizePanel1: TRzSizePanel;
    MyTreeView_PlanTask: TTreeView;
    Panel1: TPanel;
    Panel2: TPanel;
    Label2: TLabel;
    ToolBar1: TToolBar;
    TB_PlanTask: TToolButton;
    ToolButton8: TToolButton;
    cxTextEdit1: TcxTextEdit;
    RzSizePanel3: TRzSizePanel;
    PC_2: TRzPageControl;
    RzTabSheet1: TRzTabSheet;
    Panel3: TPanel;
    cxGrid_PlanTask: TcxGrid;
    cxGV_PlanTask: TcxGridDBTableView;
    FBranchItemNumber_PTList: TcxGridDBColumn;
    FPartsNumber_PTList: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridDBColumn15: TcxGridDBColumn;
    sel_Agent: TcxGridDBColumn;
    FFinishDateShow_PTList: TcxGridDBColumn;
    FPlanDateShow_PTList: TcxGridDBColumn;
    cxGridDBColumn16: TcxGridDBColumn;
    cxGridDBColumn17: TcxGridDBColumn;
    cxGridDBColumn18: TcxGridDBColumn;
    FPlanaPartsPrice_PTList: TcxGridDBColumn;
    cxGridDBColumn19: TcxGridDBColumn;
    FPlanPartsNum_PTList: TcxGridDBColumn;
    FPlanPartsID_PTList: TcxGridDBColumn;
    cxGridDBColumn20: TcxGridDBColumn;
    cxGL_PlanTask: TcxGridLevel;
    TS_Track: TRzTabSheet;
    cxGrid_Track: TcxGrid;
    cxGV_Track: TcxGridDBTableView;
    FBranchItemNumber_Track: TcxGridDBColumn;
    FPartsCode_Track: TcxGridDBColumn;
    FPlanPartsName_Track: TcxGridDBColumn;
    FAgentShortName_Track: TcxGridDBColumn;
    FMakeWet_Track: TcxGridDBColumn;
    FMakeFinshWet_Track: TcxGridDBColumn;
    FMakeFinshPercent_Track: TcxGridDBColumn;
    FShipFinshWet_Track: TcxGridDBColumn;
    FShipFinshPercent_Track: TcxGridDBColumn;
    FFinishDateShow_Track: TcxGridDBColumn;
    FPlanDateShow_Track: TcxGridDBColumn;
    FMakeFinshDate_Track: TcxGridDBColumn;
    FShipFinshDate_Track: TcxGridDBColumn;
    cxGL_Track: TcxGridLevel;
    TS_View: TRzTabSheet;
    cxGrid_View: TcxGrid;
    cxGV_View: TcxGridDBTableView;
    FBranchItemNumber_View: TcxGridDBColumn;
    FPartsNumber_View: TcxGridDBColumn;
    FPartsCode_View: TcxGridDBColumn;
    FPlanPartsName_View: TcxGridDBColumn;
    FPlanWet_View: TcxGridDBColumn;
    FAgentShortName_View: TcxGridDBColumn;
    FPlanPartsWet_View: TcxGridDBColumn;
    FMakeFinshWet_View: TcxGridDBColumn;
    FMakeFinshPercent_View: TcxGridDBColumn;
    FShipFinshWet_View: TcxGridDBColumn;
    FShipFinshPercent_View: TcxGridDBColumn;
    FFinishDateShow_View: TcxGridDBColumn;
    FPlanDateShow_View: TcxGridDBColumn;
    FMakeFinshDate_View: TcxGridDBColumn;
    FShipFinshDate_View: TcxGridDBColumn;
    FPlanTaskListRemark_View: TcxGridDBColumn;
    FPlanDrawDate_View: TcxGridDBColumn;
    FRealDrawDate_View: TcxGridDBColumn;
    FPlanaPartsPrice_View: TcxGridDBColumn;
    FPlanTaskItemNum_View: TcxGridDBColumn;
    cxGL_View: TcxGridLevel;
    TS_PlanWeekDetail_Add: TRzTabSheet;
    mdata_PlanTask: TdxMemData;
    DS_mdata_PlanTask: TDataSource;
    FPlanWeekPartsNumber_PTList: TcxGridDBColumn;
    FPlanWeekDetailID_PTItem: TcxGridDBColumn;
    Act_UpdateQry: TAction;
    FPlanWet_Track: TcxGridDBColumn;
    FMakeBOMPackQry_PTList: TcxGridDBColumn;
    FMakePackQry_PTList: TcxGridDBColumn;
    FMakeShipQry_PTList: TcxGridDBColumn;
    Act_Update_PlanTaskItem: TAction;
    FPlanPackQry_Track: TcxGridDBColumn;
    FPackFinshQry_Track: TcxGridDBColumn;
    FShipFinshQry_Track: TcxGridDBColumn;
    TS_Qry: TRzTabSheet;
    Panel4: TPanel;
    Label1: TLabel;
    ToolBar2: TToolBar;
    TB_Team: TToolButton;
    cxTextEdit2: TcxTextEdit;
    TB_WorkShop: TToolButton;
    Act_Qry: TAction;
    MData_Qry: TdxMemData;
    DS_Mdata_Qry: TDataSource;
    ADOProc: TADOStoredProc;
    DS_ADOProc: TDataSource;
    Act_WorkShop: TAction;
    Act_TeamName: TAction;
    ToolButton1: TToolButton;
    Act_PlanWeekParts: TAction;
    Edit1: TEdit;
    Act_Item: TAction;
    ToolButton2: TToolButton;
    Sel_PTList: TcxGridDBColumn;
    CB_ISEdit: TCheckBox;
    Act_Edit_Edit: TAction;
    FPlanWeekPartsAdd_PTList: TcxGridDBColumn;
    Act_AddRecordCount: TAction;
    Act_Check: TAction;
    TB_Edit_PackQry: TToolButton;
    Act_Edit_PackQry: TAction;
    TB_Update_PackQry: TToolButton;
    Act_Plan_UpdateQry: TAction;
    DS_MData_PlanWeekDetail_Add: TDataSource;
    MData_PlanWeekDetail_Add: TdxMemData;
    cxGrid_PlanWeekDetail_Add: TcxGrid;
    cxGV_PlanWeekDetail_Add: TcxGridDBTableView;
    FBranchItemNumber_PlanWeekDetail_Add: TcxGridDBColumn;
    FPartsCode_PlanWeekDetail_Add: TcxGridDBColumn;
    FPlanPartsName_PlanWeekDetail_Add: TcxGridDBColumn;
    FAgentShortName_PlanWeekDetail_Add: TcxGridDBColumn;
    FPlanWet_PlanWeekDetail_Add: TcxGridDBColumn;
    FMakeWet_PlanWeekDetail_Add: TcxGridDBColumn;
    FMakeFinshWet_PlanWeekDetail_Add: TcxGridDBColumn;
    FMakeFinshPercent_PlanWeekDetail_Add: TcxGridDBColumn;
    FShipFinshWet_PlanWeekDetail_Add: TcxGridDBColumn;
    FShipFinshPercent_PlanWeekDetail_Add: TcxGridDBColumn;
    FPlanPackQry_PlanWeekDetail_Add: TcxGridDBColumn;
    FPackFinshQry_PlanWeekDetail_Add: TcxGridDBColumn;
    FShipFinshQry_PlanWeekDetail_Add: TcxGridDBColumn;
    FFinishDateShow_PlanWeekDetail_Add: TcxGridDBColumn;
    FPlanDateShow_PlanWeekDetail_Add: TcxGridDBColumn;
    FMakeFinshDate_PlanWeekDetail_Add: TcxGridDBColumn;
    FShipFinshDate_PlanWeekDetail_Add: TcxGridDBColumn;
    cxGL_PlanWeekDetail_Add: TcxGridLevel;
    FStockPartsWet_Track: TcxGridDBColumn;
    FCarryOut_PlanWeekDetail_Add: TcxGridDBColumn;
    FClientShortName_PlanWeekDetail_Add: TcxGridDBColumn;
    cxGrid_Qry: TcxGrid;
    cxGV_Qry: TcxGridDBTableView;
    cxGL_Qry: TcxGridLevel;
    FPlanDateYearMonth_PTList: TcxGridDBColumn;
    Act_PlanWeekList_Qry: TAction;
    Act_Update_Qry: TAction;
    TS_PlanWeekList: TRzTabSheet;
    cxGrid_PlanWeek: TcxGrid;
    cxGV_PlanWeek: TcxGridDBTableView;
    FPlanYearWeek_PlanWeek: TcxGridDBColumn;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    FLastMakePercent_PTList: TcxGridDBColumn;
    FLastMakePercentWet_PTList: TcxGridDBColumn;
    FMakePercent_PTList: TcxGridDBColumn;
    FMakePercentWet_PTList: TcxGridDBColumn;
    FTotalMakePercent_PTList: TcxGridDBColumn;
    FTotalMakePercentWet_PTList: TcxGridDBColumn;
    FMax_TotalMakePercentWet_PTList: TcxGridDBColumn;
    FMax_not_TotalMakePercentWet_PTList: TcxGridDBColumn;
    FLastShipPercent_PTList: TcxGridDBColumn;
    FLastShipPercentWet_PTList: TcxGridDBColumn;
    FShipPercent_PTList: TcxGridDBColumn;
    FShipPercentWet_PTList: TcxGridDBColumn;
    FTotalShipPercent_PTList: TcxGridDBColumn;
    FTotalShipPercentWet_PTList: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    FLastPackQry_PTList: TcxGridDBColumn;
    FPackQry_PTList: TcxGridDBColumn;
    FTotalPackQry_PTList: TcxGridDBColumn;
    FLastShipQry_PTList: TcxGridDBColumn;
    FShipQry_PTList: TcxGridDBColumn;
    FTotalShipQry_PTList: TcxGridDBColumn;
    FPlanWeekPack_PTList: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn21: TcxGridDBColumn;
    FPlanWeekListID_PTList: TcxGridDBColumn;
    cxGL_PlanWeek: TcxGridLevel;
    Act_PlanWeek: TAction;
    MData_PlanWeek: TdxMemData;
    DS_Mdata_PlanWeek: TDataSource;
    Act_PlanWeekList: TAction;
    TB_Check_Auto: TToolButton;
    TB_Qry_Count: TToolButton;
    Act_PlanWeek_Update: TAction;
    FPlanWeekDetailListID_PTList: TcxGridDBColumn;
    procedure FormResize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TB_EXITClick(Sender: TObject);
    procedure TB_AppClick(Sender: TObject);
    procedure TB_DelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure MyTreeView_PTItemExpanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure MyTreeView_PTItemChange(Sender: TObject; Node: TTreeNode);
    procedure TB_RefClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure OKBtn_MClick(Sender: TObject);
    procedure TB_Edit_MClick(Sender: TObject);
    procedure CancelBtn_MClick(Sender: TObject);
    procedure cxGV_CItemFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure SelCancelBtnClick(Sender: TObject);
    procedure TB_EditLListClick(Sender: TObject);
    procedure Act_Set_Open_MExecute(Sender: TObject);
    procedure Act_Set_Close_MExecute(Sender: TObject);
    procedure Act_Set_OpenExecute(Sender: TObject);
    procedure Act_Set_CloseExecute(Sender: TObject);
    procedure Act_MenuExecute(Sender: TObject);
    procedure Act_Menu_SetExecute(Sender: TObject);
    procedure N_EditClick(Sender: TObject);
    procedure N_FilterClick(Sender: TObject);
    procedure N_SortClick(Sender: TObject);
    procedure N_GroupClick(Sender: TObject);
    procedure N_SetClick(Sender: TObject);
    procedure N_OutClick(Sender: TObject);
    procedure FBranchItemNumberPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure Act_MaxIDExecute(Sender: TObject);
    procedure Act_SelExecute(Sender: TObject);
    procedure FAgentName_PTListPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FAgentName_PTListPropertiesEditValueChanged(Sender: TObject);
    procedure FAgentShortName_PTListHeaderClick(Sender: TObject);
    procedure FPlanaPartsPrice_PTListHeaderClick(Sender: TObject);
    procedure FPlanDrawDate_PTListHeaderClick(Sender: TObject);
    procedure FRealDrawDate_PTListHeaderClick(Sender: TObject);
    procedure FPlanFinishDate_PTListHeaderClick(Sender: TObject);
    procedure Act_Status_MExecute(Sender: TObject);
    procedure FTeamName_PTListPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FTeamName_PTListPropertiesEditValueChanged(Sender: TObject);
    procedure Act_EditExecute(Sender: TObject);
    procedure FTeamName_PTListHeaderClick(Sender: TObject);
    procedure cxGrid_PTListContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure cxGrid_PTItemContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure cxGV_PTListCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure MData_PTListBeforePost(DataSet: TDataSet);
    procedure cxGV_PTItemFocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure FPlanPartsName_PTListPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure TB_PlanTaskClick(Sender: TObject);
    procedure MyTreeView_PlanTaskChange(Sender: TObject; Node: TTreeNode);
    procedure MyTreeView_PlanTaskExpanding(Sender: TObject;
      Node: TTreeNode; var AllowExpansion: Boolean);
    procedure Act_UpdateQryExecute(Sender: TObject);
    procedure FPlanWeekPartsName_PTListPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure cxGV_TrackCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure Act_Update_PlanTaskItemExecute(Sender: TObject);
    procedure Act_QryExecute(Sender: TObject);
    procedure TB_TeamClick(Sender: TObject);
    procedure TB_WorkShopClick(Sender: TObject);
    procedure Act_WorkShopExecute(Sender: TObject);
    procedure Act_TeamNameExecute(Sender: TObject);
    procedure Act_PlanWeekPartsExecute(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure Act_ItemExecute(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure Sel_PTListPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure CB_ISEditClick(Sender: TObject);
    procedure Act_Edit_EditExecute(Sender: TObject);
    procedure FPlanWeekPartsAdd_PTListPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure Act_AddRecordCountExecute(Sender: TObject);
    procedure Act_CheckExecute(Sender: TObject);
    procedure Act_SubmitExecute(Sender: TObject);
    procedure TB_Edit_PackQryClick(Sender: TObject);
    procedure TB_Update_PackQryClick(Sender: TObject);
    procedure MData_PTListAfterEdit(DataSet: TDataSet);
    procedure Act_Plan_UpdateQryExecute(Sender: TObject);
    procedure PC_2Change(Sender: TObject);
    procedure cxGrid_PlanWeekDetail_AddContextPopup(Sender: TObject;
      MousePos: TPoint; var Handled: Boolean);
    procedure Act_PlanWeekList_QryExecute(Sender: TObject);
    procedure Act_Update_QryExecute(Sender: TObject);
    procedure Act_PlanWeekExecute(Sender: TObject);
    procedure Act_PlanWeekListExecute(Sender: TObject);
    procedure cxGrid_TrackContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure cxGrid_PlanWeekContextPopup(Sender: TObject;
      MousePos: TPoint; var Handled: Boolean);
    procedure cxGrid_PlanTaskContextPopup(Sender: TObject;
      MousePos: TPoint; var Handled: Boolean);
    procedure cxGrid_ViewContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure cxGrid_QryContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure TB_Check_AutoClick(Sender: TObject);
    procedure TB_Qry_CountClick(Sender: TObject);
    procedure Act_PlanWeek_UpdateExecute(Sender: TObject);
  private
    P_List,P_Wet,P_Sort:String;
    P_i:boolean;


    { Private declarations }
    function AddMain:bool;
    function AddList:bool;
    function AddRd:bool;
    function EditRd:bool;
    function DelRd:bool;



  public
    P_state,P_PackNo,P_MaxID,P_Status:Integer;
    ListFNumber_PTItem,ListFNumber_PTList:string;
    P_Isleaf_PTList :Integer;
    P_List_PTList:string;
    GV,Gr,Gm,Mn:string;
    AFirstColumnStyle: TcxStyle;
    { Public declarations }
  end;

var
  Frm_PlanWeekDetail: TFrm_PlanWeekDetail;


implementation

uses FRMDATA, COMMON, FrmSelect, ProgBar, PROGRASS, Main_Ship;

{$R *.dfm}


function TFrm_PlanWeekDetail.DelRd: bool;
var
 qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Delete from T_PlanWeekDetail where FPlanWeekDetailID=:FPlanWeekDetailID';
    qry.Parameters.FindParam('FPlanWeekDetailID').value:=MData_PTItem['FPlanWeekDetailID'];
    result:=qry.ExecSQL>=0;
  finally
    ;
  end;
  qry.Free;
end;


function TFrm_PlanWeekDetail.AddMain: bool;
var
 qry,qryDate: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qryDate:=TADOQuery.Create(Self);
  qryDate.ConnectionString:=mdlData.ReadConnStr;
  Act_MaxID.Execute;//取最大ID
  try
    qry.SQL.Text:='Insert into T_PlanWeekDetail(FPlanWeekDetailID,FAgentID,FFileItemID,FPlanWeekDetailStatus,FPlanWeekDetailWriteID,FPlanWeekDetailWriteDate) '
                 +'values(:FPlanWeekDetailID,:FAgentID,:FFileItemID,:FPlanWeekDetailStatus,:FPlanWeekDetailWriteID,:FPlanWeekDetailWriteDate)';
    with qry.Parameters do
    begin
       FindParam('FPlanWeekDetailID').value:=P_MaxID;
       FindParam('FAgentID').value:=UserFDepartmentID;
       FindParam('FFileItemID').value:=mData_PTItem['FFileItemID'];
       FindParam('FPlanWeekDetailStatus').value:=0;
       FindParam('FPlanWeekDetailWriteID').value:=UserNumID;
       FindParam('FPlanWeekDetailWriteDate').value:=S_SyStemDate(qryDate);
     end;
     result:=qry.ExecSQL>=1;
  finally
     ;
  end;
  mdata_PTItem.Edit;
  mdata_PTItem['FPlanWeekDetailID']:=P_MaxID;
  mdata_PTItem.Post;

  qry.Free;
end;

function TFrm_PlanWeekDetail.AddList: bool;
var
  qry: TADOQuery;
  i:Integer;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  result:=False;
     
  If mData_PTList.RecordCount<=0 then
  begin
    result:=True;
    Exit;
  end;
  try
     qry.SQL.Text:='Insert into T_PlanWeekDetailList(FPlanWeekDetailID,FPlanWeekPartsID,FPlanWeekPartsAdd,FMakeBOMWet,FMakeBOMPackQry,FMakePartsDate,FShipPartsPercent,FShipPartsDate,FTeamID) '
                  +'values(:FPlanWeekDetailID,:FPlanWeekPartsID,:FPlanWeekPartsAdd,:FMakeBOMWet,:FMakeBOMPackQry,:FMakePartsDate,:FShipPartsPercent,:FShipPartsDate,:FTeamID)';
     mData_PTList.First;
     while not mData_PTList.eof do
     begin             
       If ((mData_PTList['FMakeBOMWet']<>0) and (mData_PTList['FMakeBOMWet']<>Null)) or
          ((mData_PTList['FMakeBOMPackQry']<>0) and (mData_PTList['FMakeBOMPackQry']<>Null)) or
          ((mData_PTList['FTeamID']<>0) and (mData_PTList['FTeamID']<>Null)) or
          ((mData_PTList['FPlanWeekPartsID']<>0) and (mData_PTList['FPlanWeekPartsID']<>Null))  then

       begin
         If qry.Active then qry.Close;
         with qry.Parameters do
         begin
           qry.Parameters.FindParam('FPlanWeekDetailID').value:= P_MaxID;
           qry.Parameters.FindParam('FPlanWeekPartsID').value:= mData_PTList['FPlanWeekPartsID'];
           qry.Parameters.FindParam('FPlanWeekPartsAdd').value:= mData_PTList['FPlanWeekPartsAdd'];
           qry.Parameters.FindParam('FMakeBOMWet').value:= mData_PTList['FMakeBOMWet'];
           qry.Parameters.FindParam('FMakeBOMPackQry').value:= mData_PTList['FMakeBOMPackQry'];
           qry.Parameters.FindParam('FMakePartsDate').value:= mData_PTList['FMakePartsDate'];
           qry.Parameters.FindParam('FShipPartsPercent').value:= mData_PTList['FShipPartsPercent'];
           qry.Parameters.FindParam('FShipPartsDate').value:= mData_PTList['FShipPartsDate'];
           qry.Parameters.FindParam('FTeamID').value:= mData_PTList['FTeamID'];
         end;
         result:=qry.ExecSQL>=1;
         if not result then break;
       end;
       mData_PTList.Next;
     end;
   finally
     qry.Free;
   end;

end;


function TFrm_PlanWeekDetail.AddRd: bool;
var
 qry:TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  result:=False;

  MData_PTItem.Edit;
  MData_PTItem.Post;

  mdata_PTList.Edit;
  mdata_PTList.Post;
  If mdata_PTList.RecordCount<=0 then
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
    Application.MessageBox('新增数据失败，请重试。', '保存错误', 0 or MB_ICONINFORMATION);
    mdlData.Conn.RollBackTrans;
  end;

end;


function TFrm_PlanWeekDetail.EditRd:bool;
var
 qry:TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  mdlData.conn.BeginTrans;
  try
    if DelRd then  //1  主表删除
    begin
      result:=True;
      if AddMain then //2  主表新增
      begin
        result:=True;
        if AddList then //3  附表新增
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
    Application.MessageBox('保存数据失败，请重试。', '保存错误', 0 or MB_ICONINFORMATION);
    mdlData.Conn.RollBackTrans;
  end;

end;



procedure TFrm_PlanWeekDetail.FormResize(Sender: TObject);
begin
  inherited;
  Self.Caption:=UserFDepartmentName+'生产周报明细表';
end;

procedure TFrm_PlanWeekDetail.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=cafree;
  Frm_PlanWeekDetail:=nil;
end;

procedure TFrm_PlanWeekDetail.TB_EXITClick(Sender: TObject);
begin
  inherited;
  Self.Close;
end;

procedure TFrm_PlanWeekDetail.TB_AppClick(Sender: TObject);
Var qry: TADOQuery;
    i,j:Integer;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  P_state :=0; //新增
  mdata_PTItem.Close;
  mdata_PTList.Close;

  If (mdata_PTItem.RecordCount>1) or (mdata_PTItem.RecordCount=0) then
  begin
    try
      qry.SQL.Text:='select * from V_PlanWeekDetail with(nolock) where FPlanWeekDetailID=0';
      qry.Open;
    finally
       ;
    end;
    mdata_PTItem.CopyFromDataSet(qry);
    mdata_PTItem.Active:=True;
    mdata_PTItem.Append;
    mdata_PTItem.Edit;
  end;
  Act_Set_Open_M.Execute;

end;

procedure TFrm_PlanWeekDetail.TB_DelClick(Sender: TObject);
var
  qry:TADOQuery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  try
    qry.SQL.Text:='select * from T_PlanWeek with(nolock) where FFileItemID=:FFileItemID and FAgentID=:FAgentID';
    qry.Parameters.FindParam('FFileItemID').value:=MData_PTItem['FFileItemID'];
    qry.Parameters.FindParam('FAgentID').value:=UserFDepartmentID;
    qry.Open;
  finally
     ;
  end;
  If qry.RecordCount>0 then
  begin
    application.MessageBox('此项目已生成生产周报不允许删除！','系统提示',MB_ICONINFORMATION);
    Exit;
  end;

  If application.MessageBox(Pchar('警告：是否删除'+P_List_PTList+'的生产周报明细信息？'+chr(13)+chr(13)
                                 +'删除数据操作将不可恢复，确定要删除吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
  If application.MessageBox(Pchar('再次警告：是否删除：'+P_List_PTList+'的生产周报明细信息？'+chr(13)+chr(13)
                                 +'删除数据操作将不可恢复，确定要删除吗？'),'再次警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then

  mdlData.conn.BeginTrans;
  begin
    //单据删除
    If not DelRd then
    begin
      application.MessageBox('删除单据失败！','系统提示',MB_ICONINFORMATION);
      mdlData.conn.RollbackTrans;
      Exit;
    end;
    mdlData.conn.CommitTrans;
  end;
  mdata_PTItem.Close;
  mdata_PTList.Close;
  qry.Free;

end;

procedure TFrm_PlanWeekDetail.FormCreate(Sender: TObject);
begin
  inherited;
  TB_App.Visible:= mdlData.PermissionCheckRights(TFrm_PlanWeekDetail.ClassName,'新增');
  P_state:=2;
   
end;

procedure TFrm_PlanWeekDetail.MyTreeView_PTItemExpanding(Sender: TObject;
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
  qry.SQL.Text:='Select * from VT_PlanWeekDetail_Agent with(nolock) where FParentNumber= '''
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
    with MyTreeView_PTItem.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('Isleaf').value;
    end;
    qry.Next;
  end;
end;

procedure TFrm_PlanWeekDetail.MyTreeView_PTItemChange(Sender: TObject; Node: TTreeNode);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If Node = nil then Exit;
  with PTree(Node.Data)^ do
  begin
    ListFNumber_PTList:=trim(PTree(Node.Data).FNumber);
    P_List_PTList:=PTree(Node.Data).Caption;
    P_Isleaf_PTList:=PTree(Node.Data).Isleaf;
    mdata_PTList.DisableControls;
    cxGV_PTList.DataController.DataModeController.GridMode:=True;
    cxGV_PTList.DataController.DataModeController.SmartRefresh:=True;
    If P_Isleaf_PTList>0 then
    begin
      If UserFDepartmentsort=1 then //事业部
      begin
        If MyItemListFieldWhere(qry,Mdata_PTItem,' *  ','V_PlanWeekDetail','FFullNumber',ListFNumber_PTList,' ','FFullNumber') then
           cxGvColumn(cxGv_PTItem,Mdata_PTItem);
      end;
      If UserFDepartmentsort=2 then //子公司
      begin
        If MyItemListFieldWhere(qry,Mdata_PTItem,' *  ','V_PlanWeekDetail','FFullNumber',ListFNumber_PTList,' ','FFullNumber') then
           cxGvColumn(cxGv_PTItem,Mdata_PTItem);
      end;
      If UserFDepartmentsort=4 then //外协
      begin
        If MyItemListFieldWhere(qry,Mdata_PTItem,' *  ','V_PlanWeekDetail','FFullNumber',ListFNumber_PTList,' ','FFullNumber') then
           cxGvColumn(cxGv_PTItem,Mdata_PTItem);
      end;

    end
    else
    begin
      Mdata_PTItem.Close;
      Mdata_PTList.Close;
    end;
    Act_Status_M.Execute;  //权限设置
    If Mdata_PTItem.RecordCount=1 then
       TB_Edit_PackQry.Visible:= mdlData.PermissionCheckRights(TFrm_PlanWeekDetail.ClassName,'审核')
    else
       TB_Edit_PackQry.Visible:=False;

    mdata_PTList.EnableControls;
    cxGV_PTList.DataController.DataModeController.GridMode:=False;
    cxGV_PTList.DataController.DataModeController.SmartRefresh:=False;

 end;

end;

procedure TFrm_PlanWeekDetail.TB_RefClick(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If UserFDepartmentsort=1 then //事业部
  begin
    //If not TreeVeiwListWhere(qry,MyTreeView_PTItem,'VT_PlanWeekDetail_Item',' ') then
    If not TreeVeiwListWhere(qry,MyTreeView_PTItem,'VT_PlanWeekDetail_Agent',' and FDepartmentID='+IntToStr(UserFDepartmentID)) then
      Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;
  If UserFDepartmentsort=2 then //子公司
  begin
    If not TreeVeiwListWhere(qry,MyTreeView_PTItem,'VT_PlanWeekDetail_Agent',' and FAgentID='+IntToStr(UserFDepartmentID)) then
      Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;
  If UserFDepartmentsort=4 then //外协点
  begin
    If not TreeVeiwListWhere(qry,MyTreeView_PTItem,'VT_PlanWeekDetail_Agent',' and FAgentID='+IntToStr(UserFDepartmentID)) then
      Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;
end;

procedure TFrm_PlanWeekDetail.FormShow(Sender: TObject);
begin
  inherited;
  TB_Ref.Click;
  TB_PlanTask.Click;
end;

procedure TFrm_PlanWeekDetail.OKBtn_MClick(Sender: TObject);
var qry: TADOQuery;
    P_FBalanceNum:String;
    i:Integer;
    I_index,P_FPlanWeekPartsID:Integer;
    P_FPlanWeekPartsAdd:string;
    P_I:Integer;

begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  MData_PTItem.open;
  MData_PTItem.Edit;
  MData_PTItem.Post;

  if (MData_PTItem['FBranchItemNumber']='') or (MData_PTItem['FBranchItemNumber']=null)  then
  begin
    application.MessageBox('图号不能为空！','系统提示',MB_ICONWARNING);
    Exit;
  end;

  mdata_PTList.open;
  mdata_PTList.Edit;
  if mData_PTList['FPlanWeekPartsAdd']=Null then
     mData_PTList['FPlanWeekPartsAdd']:='';
  mdata_PTList.Post;

  mData_PTList.First;
  while not mData_PTList.eof do
  begin
    if (mData_PTList['FPlanWeekPartsName']='') or (mData_PTList['FPlanWeekPartsName']=null)  then
    begin
      application.MessageBox('周报部件不能为空！请在周报部件中添加！','系统提示',MB_ICONWARNING);
      Exit;
    end;
    mData_PTList.Next;
  end;

  P_I:=0;
  mData_PTList.First;
  P_FPlanWeekPartsID:=mData_PTList['FPlanWeekPartsID'];
  P_FPlanWeekPartsAdd:=mData_PTList['FPlanWeekPartsAdd'];
  while not mData_PTList.Eof do
  begin
    I_index:=mData_PTList.RecNo ;
    mData_PTList.First;
    while not mData_PTList.Eof do
    begin
      If (mData_PTList['FPlanWeekPartsID']=P_FPlanWeekPartsID)
         and (mData_PTList['FPlanWeekPartsAdd']=P_FPlanWeekPartsAdd) then
         P_I:=P_I+1;
      mData_PTList.Next;
    end;
    If P_I=1 then
       P_I:=0;
    If P_I>1 then
    begin
      application.MessageBox('存在重复的部件，可以用增补项区分。请重新检查','系统提示',MB_ICONERROR);
      mData_PTList.RecNo :=I_index;
      Exit;
    end
    else
    begin
      mData_PTList.RecNo :=I_index;
      mData_PTList.Next;
      P_FPlanWeekPartsID:=mData_PTList['FPlanWeekPartsID'];
      P_FPlanWeekPartsAdd:=mData_PTList['FPlanWeekPartsAdd'];
    end;
  end;

  If P_state=0 then
  begin
    If application.MessageBox('是否要保存添加的数据？','提示',MB_ICONINFORMATION+MB_YESNO)<>6 then
    begin
      CancelBtn_M.Click;
      Exit;
    end;
    If AddRd then //增加数据
    begin
      If application.MessageBox('录入数据已保存,还要继续录入吗？','提示',MB_ICONINFORMATION+MB_YESNO)=6 then
      begin
        TB_App.Click;
        //mdata_PTList.Close;
      end
      else
      begin
        Act_PlanWeek_Update.Execute;//更新三个表数据 20161124
        //Act_PlanWeekList_Qry.Execute;  //计算生产周报的累计百分比  更新最大周累计未完成重量   20161124
        //Act_Plan_UpdateQry.Execute;//更新完工日期   20161124

        CancelBtn_M.Click;
        Exit;
      end;
    end;
    //CancelBtn_M.Click;
  end;
  If P_state=1 then //修改数据
  begin
    If application.MessageBox('是否要保存所作修改？','提示',MB_ICONINFORMATION+MB_YESNO)<>6 then
    begin
      CancelBtn_M.Click;
      Exit;
    end;
    If EditRd then   //修改数据
    begin
      Act_PlanWeek_Update.Execute;//更新三个表数据 20161124
      //Act_PlanWeekList_Qry.Execute;  //计算生产周报的累计百分比  更新最大周累计未完成重量20161124
      //Act_Plan_UpdateQry.Execute;//更新完工日期  20161124
      application.MessageBox('修改记录已保存','系统提示',MB_ICONINFORMATION);
      //inherited;
      CancelBtn_M.Click;
    end
    else
      application.MessageBox('修改记录保存失败！','系统提示',MB_ICONWARNING);
  end;

  MyTreeView_PTItem.Enabled:=True;
  cxGrid_PTItem.Enabled:=True;
  qry.Free;

end;

procedure TFrm_PlanWeekDetail.TB_Edit_MClick(Sender: TObject);
begin
  inherited;
  P_state:=1; //修改
  If CB_ISEdit.Checked=True then
     CB_ISEdit.Checked:=False;

  Act_Edit_Edit.Execute;
  CB_ISEdit.Visible:=True;
  Act_Set_Open_M.Execute;
end;

procedure TFrm_PlanWeekDetail.CancelBtn_MClick(Sender: TObject);
begin
  inherited;
 // If (P_state=0) and (mData_PTItem['FPlanWeekDetailID']=0 or mData_PTItem['FPlanWeekDetailID']=null ) then
  begin
    MData_PTItem.Close;
    MData_PTList.Close;
  end;  
  Act_Set_Close_M.Execute;
end;

procedure TFrm_PlanWeekDetail.cxGV_CItemFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
var qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If P_state =2 then  //不在新增、修改状态
  begin
    If (MData_PTItem['FShipItemID']<>0) and (MData_PTItem['FShipItemID']<>null) then
    begin
    If MyItemListID(qry,mdata_PTList,'V_ShipList',' FShipItemID='+IntToStr(MData_PTItem['FShipItemID']),'FFullNumber',) then
      Act_Status_M.Execute  //权限设置
    end;
  end;


end;

procedure TFrm_PlanWeekDetail.SelCancelBtnClick(Sender: TObject);
begin
  inherited;
  PC_Ship.ActivePage:=TS_Ship;
  TS_Ship.TabEnabled:=True;

end;

procedure TFrm_PlanWeekDetail.TB_EditLListClick(Sender: TObject);
var
   AFirstColumnStyle: TcxStyle;
begin
  inherited;
  P_state:=1;

end;

procedure TFrm_PlanWeekDetail.Act_Set_Open_MExecute(Sender: TObject);
var AFirstColumnStyle: TcxStyle;
begin
  inherited;
  MyTreeView_PTItem.Enabled:=False;
  RSP_CList.Enabled:=False;
  P_Btn.Visible:=True;
  OkBtn_M.Visible:=True;
  CancelBtn_M.Visible:=True;
  ToolBar_HItem.Visible:=False;

  FDeliveryDate_PTItem.Options.Editing:=True;
  FFinishDate_PTItem.Options.Editing:=True;
  FPlanWeekPartsName_PTList.Options.Editing:=True;
  FAgentShortName_PTList.Options.Editing:=True;
  FMakeBOMWet_PTList.Options.Editing:=True;
  FTeamName_PTList.Options.Editing:=True;
  FPlanPartsName_PTList.Options.Editing:=True;
  FMakeBOMPackQry_PTList.Options.Editing:=True;    
  Sel_PTList.Options.Editing:=True;
  FPlanWeekPartsAdd_PTList.Options.Editing:=True;
  If P_state<>1 then  //修改
  begin
    cxGV_PTItem.OptionsData.Editing:=True;
    FBranchItemNumber_PTItem.Options.Editing:=True;
  end;

  cxGV_PTList.OptionsData.Editing:=True;

    //列颜色
  AFirstColumnStyle := TcxStyle.Create(Self);
  AFirstColumnStyle.Color := clMenu; //底色
  AFirstColumnStyle.TextColor := clBlue;        //字体颜色

  cxGV_PTList.Columns[FMakeBOMWet_PTList.Index].Styles.Content := AFirstColumnStyle;
  cxGV_PTList.Columns[FMakeBOMPackQry_PTList.Index].Styles.Content := AFirstColumnStyle;
  cxGV_PTList.Columns[FTeamName_PTList.Index].Styles.Content := AFirstColumnStyle;
  cxGV_PTList.Columns[Sel_PTList.Index].Styles.Content := AFirstColumnStyle;
  cxGV_PTList.Columns[FPlanWeekPartsAdd_PTList.Index].Styles.Content := AFirstColumnStyle;

end;

procedure TFrm_PlanWeekDetail.Act_Set_Close_MExecute(Sender: TObject);
var
   AFirstColumnStyle: TcxStyle;
begin
  inherited;
     //列颜色
  AFirstColumnStyle := TcxStyle.Create(Self);
  AFirstColumnStyle.Color := clWindow; //底色
  AFirstColumnStyle.TextColor := clWindowText;        //字体颜色

  cxGV_PTList.Columns[FMakeBOMWet_PTList.Index].Styles.Content := AFirstColumnStyle;
  cxGV_PTList.Columns[FMakeBOMPackQry_PTList.Index].Styles.Content := AFirstColumnStyle;
  cxGV_PTList.Columns[FTeamName_PTList.Index].Styles.Content := AFirstColumnStyle;
  cxGV_PTList.Columns[Sel_PTList.Index].Styles.Content := AFirstColumnStyle;
  cxGV_PTList.Columns[FPlanWeekPartsAdd_PTList.Index].Styles.Content := AFirstColumnStyle;

  PC_Ship.Enabled:=True;

  RSP_CList.Enabled:=True;

  MyTreeView_PTItem.Enabled:=True;
  P_Btn.Visible:=False;

  cxGV_PTItem.OptionsData.Editing:=False;
  cxGV_PTList.OptionsData.Editing:=False;


  ToolBar_HItem.Visible:=True;


  P_state:=2;


end;

procedure TFrm_PlanWeekDetail.Act_Set_OpenExecute(Sender: TObject);
begin
  inherited;
 { TB_Ref_Stock.Enabled:=False;
  MyTreeView_SList.Enabled:=True;
  PC_Check.Enabled:=False;

  OKBtn_M.Visible:=True;
  CancelBtn_M.Visible:=True;
  cxGV_SList.OptionsData.Editing:=True;

  Self.TB_Ref_Stock.Click;
    }
end;

procedure TFrm_PlanWeekDetail.Act_Set_CloseExecute(Sender: TObject);
begin
  inherited;
{  TB_Ref_Stock.Enabled:=True;
  MyTreeView_CheckList.Enabled:=True;
  MyTreeView_SList.Enabled:=True;
  PC_Check.Enabled:=True;
  OKBtn_M.Visible:=False;
  CancelBtn_M.Visible:=False;   }

end;

procedure TFrm_PlanWeekDetail.Act_MenuExecute(Sender: TObject);
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

procedure TFrm_PlanWeekDetail.Act_Menu_SetExecute(Sender: TObject);
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

procedure TFrm_PlanWeekDetail.N_EditClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_PlanWeekDetail.N_FilterClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_PlanWeekDetail.N_SortClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_PlanWeekDetail.N_GroupClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_PlanWeekDetail.N_SetClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_PlanWeekDetail.N_OutClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_PlanWeekDetail.FBranchItemNumberPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var selValue : string;
    qry,qry1: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry1:=TADOQuery.Create(self);
  qry1.ConnectionString:=mdlData.ReadConnStr;
  mData_PTItem.Edit;
  mData_PTItem.Post;
  If mData_PTItem['FBranchItemNumber']=Null then
  begin
    mData_PTItem.Edit;
    mData_PTItem['FBranchItemNumber']:='';
    mData_PTItem.Post;
  end;
  try
    qry.SQL.Text:='select * from VT_PlanTask_Item with(nolock) where FAgentID=:FAgentID and  '
                 +'FBranchItemNumber like :FBranchItemNumber '
                 +'and FFileItemID not in (select FFileItemID from T_PlanWeekDetail where FAgentID=:FAgentID2)'
                 +' order by FBranchItemNumber ';
    qry.Parameters.FindParam('FAgentID').value:=UserFDepartmentID;
    qry.Parameters.FindParam('FBranchItemNumber').value:='%'+mData_PTItem['FBranchItemNumber']+'%';
    qry.Parameters.FindParam('FAgentID2').value:=UserFDepartmentID;
    qry.Open;
  finally
   ;
  end;
  If qry.RecordCount=1 then
  begin
    mData_PTItem.Edit;
    mData_PTItem['FFileItemID']:=qry.FieldByName('FFileItemID').Value;
    mData_PTItem.Post;
  end;
  If qry.RecordCount>1 then
  begin
    selValue:=select('选择项目图号','FNumber','FParentNumber','FNumber','FName',qry);
    If (Length(selValue)>0) and (qry.FieldByName('Isleaf').Value<>0) then
    begin
      mData_PTItem.Edit;
      mData_PTItem['FFileItemID']:=qry.FieldByName('FFileItemID').Value;
      mData_PTItem.Post;
    end
  end;
  If qry.RecordCount<1 then
  begin
    mData_PTList.Close;
    Exit;
  end;  

  try
    qry.SQL.Text:='select * from V_FileItem with(nolock) where FFileItemID=:FFileItemID ';
    qry.Parameters.FindParam('FFileItemID').value:=mData_PTItem['FFileItemID'];
    qry.Open;
  finally
   ;
  end;

  mData_PTItem.Edit;
  mData_PTItem['FBranchItemNumber']:=qry.FieldByName('FBranchItemNumber').Value;
  mData_PTItem['FItemNumber']:=qry.FieldByName('FItemNumber').Value;
  mData_PTItem['FClientShortName']:=qry.FieldByName('FClientShortName').Value;
  mData_PTItem['FBranchFileNo']:=qry.FieldByName('FBranchFileNo').Value;
  mData_PTItem['FProductName']:=qry.FieldByName('FProductName').Value;
  mData_PTItem['FProductID']:=qry.FieldByName('FProductID').Value;
  mData_PTItem.Post;

  try
    qry.SQL.Text:='Select * from V_PlanWeekDetail with(nolock) where FAgentID=:FAgentID and FFileItemID=:FFileItemID ';
    qry.Parameters.FindParam('FAgentID').Value:=UserFDepartmentID;
    qry.Parameters.FindParam('FFileItemID').Value:=mdata_PTItem['FFileItemID'];
    qry.Open;
    If qry.RecordCount>0 then
    begin
       application.MessageBox('此项目生产周报明细已存在！请不要重复输入','系统提示',MB_ICONERROR);
       Exit;
    end;
  finally
     ;
  end;
  Act_Sel.Execute;


end;

procedure TFrm_PlanWeekDetail.Act_MaxIDExecute(Sender: TObject);
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
      value:='T_PlanWeekDetail';
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

procedure TFrm_PlanWeekDetail.Act_SelExecute(Sender: TObject);
var
  qry,qry1:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If (mData_PTItem['FFileItemID']=0) or (mData_PTItem['FFileItemID']=Null) then
  begin
    Application.MessageBox(PChar('请选择项目名称，请重新选择'), '系统提示', MB_OK + MB_ICONSTOP);
    Exit;
  End;

  try
    {qry.SQL.Text:='select a.*,b.*,c.* from V_PlanTaskList as a left outer join V_PlanWeekParts as b '
                  +' on a.FPlanPartsID=b.FPlanPartsID  '
                  +' left outer  join (select FPlanPartsID,FMakeBOMWet,FMakePartsDate,FMakePartsPercent,FShipPartsPercent,FShipPartsDate,FTeamname,FTeamID,FWorkShop '
                  +' from V_PlanWeekDetailList where FPlanWeekDetailID=0) as c on b.FPlanPartsID=c.FPlanPartsID  '
                  +' where  FPlanWeekSel=1 and  a.FAgentId=:FAgentId and a.FFileItemID=:FFileItemID '
                  +' and b.FAgentID=:FAgentID2 '
                  +' order by a.FPartsCode,b.FPlanPartsNumber';
    qry.Parameters.FindParam('FAgentId').value:=UserFDepartmentID;
    qry.Parameters.FindParam('FAgentId2').value:=UserFDepartmentID;
    qry.Parameters.FindParam('FFileItemID').value:=mData_PTItem['FFileItemID'];}

     qry.SQL.Text:='select IsEdit=cast(0 as bit),b.FPlanWeekDetailID,isnull(c.FProductID,a.FProductID) as FProductID,'
                  +'isnull(a.FPlanWeekPartsID,b.FPlanWeekPartsID) as FPlanWeekPartsID,isnull(FPlanWeekPartsAdd,'''') as FPlanWeekPartsAdd,'
                  +'isnull(c.FPartsCode,isnull(a.FPartsCode,b.FPartsCode)) as FPartsCode,'
                  +'isnull(c.FPlanPartsNumber,isnull(a.FPlanPartsNumber,b.FPlanPartsNumber)) as FPlanPartsNumber,'
                  +'isnull(c.FPlanPartsName,isnull(a.FPlanPartsName,b.FPlanPartsName)) as FPlanPartsName,'
                  +'isnull(a.FPlanWeekPartsName,b.FPlanWeekPartsName) as FPlanWeekPartsName, '
                  +'isnull(a.FNumber,b.FPlanWeekPartsNumber) as FPlanWeekPartsNumber, '
                  +'isnull(b.FAgentID,a.FAgentID) as FAgentID,c.FAgentShortName, '
                  +'b.FMakeBOMWet,b.FMakeBOMPackQry,b.FMakeShipQry,b.FMakePartsWet,b.FMakePartsDate,FMakePartsPercent,b.FShipPartsWet,b.FShipPartsPercent,b.FShipPartsDate,b.FTeamID,b.FTeamName,b.FWorkShop  '
                  +'from (select * from  V_PlanTaskList with(nolock) where FAgentId=:FAgentId1 and FFileItemID=:FFileItemID) as c '
                  +'left outer join (select * from V_PlanWeekParts with(nolock) where FPlanWeekIsSel=1 and FAgentID=:FAgentID2 and FProductID=:FProductID) as a '
                  +'on c.FPlanPartsID=a.FPlanPartsID '
                  +'left outer join  '
                  +'(select FPlanWeekDetailID,FPlanWeekPartsID,FPlanWeekPartsAdd,FPlanPartsID,FPartsCode,FPlanPartsNumber,FPlanPartsName,FPlanWeekPartsNumber,FPlanWeekPartsName,'
                  +'FMakeBOMWet,FMakeBOMPackQry,FMakeShipQry,FMakePartsWet,FMakePartsDate,FMakePartsPercent,FShipPartsWet,FShipPartsPercent,FShipPartsDate,FTeamID,FTeamName,FWorkShop,FAgentID,FAgentShortName '
                  +'from V_PlanWeekDetailList with(nolock) where FPlanWeekDetailID=0 ) as b '
                  +'on b.FPlanWeekPartsID=a.FPlanWeekPartsID '
                  +'order by isnull(c.FPartsCode,isnull(a.FPartsCode,b.FPartsCode)),isnull(c.FPlanPartsNumber,isnull(a.FPlanPartsNumber,b.FPlanPartsNumber)),isnull(a.FNumber,b.FPlanWeekPartsNumber)';
    qry.Parameters.FindParam('FAgentId1').value:=UserFDepartmentID;
    qry.Parameters.FindParam('FFileItemID').value:=mData_PTItem['FFileItemID'];
    qry.Parameters.FindParam('FAgentId2').value:=UserFDepartmentID;
    qry.Parameters.FindParam('FProductID').value:=mData_PTItem['FProductID'];
    qry.Open;
  finally
     ;
  end;
  If qry.RecordCount>0 then
  begin
    mdata_PTList.CopyFromDataSet(qry);
    mdata_PTList.Active:=True;
    mdata_PTList.First;
  end
  else
  begin
    mdata_PTList.Close;
    Exit;
  end;

end;

procedure TFrm_PlanWeekDetail.FAgentName_PTListPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
   qry:=TADOQuery.Create(Self);
   qry.ConnectionString:=mdlData.ReadConnStr;
   MData_PTList.Edit;
   MData_PTList.Post;
  If MData_PTList['FAgentShortName']=Null  then
  begin
    MData_PTList.Edit;
    MData_PTList['FAgentShortName']:='';
    MData_PTList.Post;
  end;
  try
    qry.SQL.Text:='Select b.FDepartmentID,a.* from VT_AgentItem as a with(nolock) left outer join T_Department as b '
                 +' on a.FAgentName=b.FDepartmentName '
                 +' where a.FDepartmentID=:FDepartmentID and FAgentShortName like :FAgentShortName and  FSysTem=''体系内'' order by FAgentShortName  ';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Parameters.FindParam('FAgentShortName').value:='%'+MData_PTList['FAgentShortName']+'%';
    qry.Open;
  finally
     ;
  end;
  If qry.RecordCount=1 then
  begin
    MData_PTList.Edit;
    MData_PTList['FAgentShortName']:=qry.FieldByName('FAgentShortName').AsString;
    MData_PTList['FAgentID']:=qry.FieldByName('FDepartmentID').AsInteger;
    MData_PTList.Post;
  end
  else
  begin
    selValue:=select('选择生产单位','FNumber','FParentNumber','FNumber','FName',qry);
  If (Length(selValue)>0) and (qry.FieldByName('Isleaf').Value<>0) then
    begin
      MData_PTList.Edit;
      MData_PTList['FAgentShortName']:=qry.FieldByName('FAgentShortName').AsString;
      MData_PTList['FAgentID']:=qry.FieldByName('FDepartmentID').AsString;
      MData_PTList.Post;
    end
    else
      application.MessageBox('请选择明细！','系统提示',MB_ICONINFORMATION);
  end;
  qry.Free;


end;

procedure TFrm_PlanWeekDetail.FAgentName_PTListPropertiesEditValueChanged(
  Sender: TObject);
var  qry: TADOQuery;
begin
   qry:=TADOQuery.Create(self);
   qry.ConnectionString:=mdlData.ReadConnStr;
   mdata_PTList.Edit;
   mdata_PTList.Post;
   If mdata_PTList['FAgentShortName']=Null then

   begin
     mdata_PTList.Edit;
     mdata_PTList['FAgentShortName']:='';
     mdata_PTList.Post;
   end;
   try
     qry.SQL.Text:='select * from T_Department with(nolock) where  FDepartmentShortName like ''%'+mdata_PTList['FAgentShortName']+'%''';
    // qry.SQL.Text:='select * from T_Department with(nolock) where  FDepartmentShortName like :FDepartmentShortName';
     //qry.Parameters.FindParam('FDepartmentShortName').Value:='%'+mdata_PTList['FAgentShortName']+'%';
     qry.Open;
   finally
     ;
   end;
   If qry.RecordCount=1 then
   begin
     mdata_PTList.Edit;
     mdata_PTList['FAgentID']:=qry.FieldByName('FDepartmentID').Value;
     mdata_PTList['FAgentShortName']:=qry.FieldByName('FDepartmentShortName').Value;
     mdata_PTList.Post;
     Exit;
   end
   else
   begin
     mdata_PTList.Edit;
     mdata_PTList['FAgentID']:=0;
     mdata_PTList['FAgentShortName']:='';
     mdata_PTList.Post;
   end ;


end;

procedure TFrm_PlanWeekDetail.FAgentShortName_PTListHeaderClick(Sender: TObject);
Var
  qry: TADOQuery;
  I_index:Integer;
  P_Str:String;
  P_Int:Integer;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  If mData_PTList.RecordCount<=0 then
    Exit;
  I_index:=mData_PTList.RecNo ;

  mData_PTList.Edit;
  mData_PTList.Post;

  P_Str:=mData_PTList['FAgentShortName'];
  P_Int:=mData_PTList['FAgentID'];
  If P_Int=0 then
     Exit;
  mData_PTList.First;
  while not mData_PTList.eof do
  begin
    If (mData_PTList['FAgentID']<>0) then
    begin
      mData_PTList.Edit;
      mData_PTList['FAgentShortName']:=P_Str;
      mData_PTList['FAgentID']:=P_Int;
      mData_PTList.Post;
    end;
    mData_PTList.Next;
  end;
  If (I_index<mData_PTList.RecordCount) and (I_index<>-1) then
     mData_PTList.RecNo :=I_index
  else
     mData_PTList.Last;


end;

procedure TFrm_PlanWeekDetail.FPlanaPartsPrice_PTListHeaderClick(
  Sender: TObject);
Var
  qry: TADOQuery;
  I_index:Integer;
  P_Str:String;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  If mData_PTList.RecordCount<=0 then
    Exit;
  I_index:=mData_PTList.RecNo ;

  mData_PTList.Edit;
  mData_PTList.Post;

  P_Str:=mData_PTList['FPlanaPartsPrice'];
  mData_PTList.First;
  while not mData_PTList.eof do
  begin
    If (mData_PTList['FPlanaPartsPrice']<>'') then
    begin
      mData_PTList.Edit;
      mData_PTList['FPlanaPartsPrice']:=P_Str;
      mData_PTList.Post;
    end;
    mData_PTList.Next;
  end;
  If (I_index<mData_PTList.RecordCount) and (I_index<>-1) then
     mData_PTList.RecNo :=I_index
  else
     mData_PTList.Last;

end;

procedure TFrm_PlanWeekDetail.FPlanDrawDate_PTListHeaderClick(
  Sender: TObject);
Var
  qry: TADOQuery;
  I_index:Integer;
  P_Date:TDateTime;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  If mData_PTList.RecordCount<=0 then
    Exit;
  I_index:=mData_PTList.RecNo ;

  mData_PTList.Edit;
  mData_PTList.Post;

  P_Date:=mData_PTList['FPlanDrawDate'];
  mData_PTList.First;
  while not mData_PTList.eof do
  begin
    If (mData_PTList['FPlanDrawDate']=Null) then
    begin
      mData_PTList.Edit;
      mData_PTList['FPlanDrawDate']:=P_Date;
      mData_PTList.Post;
    end;
    mData_PTList.Next;
  end;
  If (I_index<mData_PTList.RecordCount) and (I_index<>-1) then
     mData_PTList.RecNo :=I_index
  else
     mData_PTList.Last;


end;

procedure TFrm_PlanWeekDetail.FRealDrawDate_PTListHeaderClick(
  Sender: TObject);
Var
  qry: TADOQuery;
  I_index:Integer;
  P_Date:TDateTime;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  If mData_PTList.RecordCount<=0 then
    Exit;
  I_index:=mData_PTList.RecNo ;

  mData_PTList.Edit;
  mData_PTList.Post;

  P_Date:=mData_PTList['FRealDrawDate'];
  mData_PTList.First;
  while not mData_PTList.eof do
  begin
    If (mData_PTList['FRealDrawDate']=Null) then
    begin
      mData_PTList.Edit;
      mData_PTList['FRealDrawDate']:=P_Date;
      mData_PTList.Post;
    end;
    mData_PTList.Next;
  end;
  If (I_index<mData_PTList.RecordCount) and (I_index<>-1) then
     mData_PTList.RecNo :=I_index
  else
     mData_PTList.Last;



end;

procedure TFrm_PlanWeekDetail.FPlanFinishDate_PTListHeaderClick(
  Sender: TObject);
Var
  qry: TADOQuery;
  I_index:Integer;
  P_Date:TDateTime;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  If mData_PTList.RecordCount<=0 then
    Exit;
  I_index:=mData_PTList.RecNo ;

  mData_PTList.Edit;
  mData_PTList.Post;

  P_Date:=mData_PTList['FPlanFinishDate'];
  mData_PTList.First;
  while not mData_PTList.eof do
  begin
    If (mData_PTList['FPlanFinishDate']=Null) then
    begin
      mData_PTList.Edit;
      mData_PTList['FPlanFinishDate']:=P_Date;
      mData_PTList.Post;
    end;
    mData_PTList.Next;
  end;
  If (I_index<mData_PTList.RecordCount) and (I_index<>-1) then
     mData_PTList.RecNo :=I_index
  else
     mData_PTList.Last;


end;

procedure TFrm_PlanWeekDetail.Act_Status_MExecute(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  TB_Submit.Visible:=False;
  TB_Check.Visible:=False;
  TB_Edit_M.Visible:=False;
  TB_Del.Visible:=False;

  //制单者是本人
  try
    qry.SQL.Text:='Select distinct FPlanWeekDetailStatus,FPlanWeekDetailWriteID from V_PlanWeekDetailList with(nolock) '
                 +'where FAgentID=:FAgentID and FFullNumber like :FFullNumber';
    qry.Parameters.FindParam('FAgentID').value:= UserFDepartmentID;
    qry.Parameters.FindParam('FFullNumber').value:=ListFNumber_PTList+'%';
    qry.Open;
  finally
    ;
  end;
   //制单者是本人

  If (qry.RecordCount=1) and (qry.FieldByName('FPlanWeekDetailStatus').AsInteger=0)
      and (qry.FieldByName('FPlanWeekDetailWriteID').AsInteger=UserNumID) then
  begin
    If mdata_PTItem.RecordCount=0 then
    begin
      TB_Del.Visible:=False;
      TB_Submit.Visible:=False;
    end;
    If mdata_PTItem.RecordCount>0 then
    begin
      TB_Submit.Visible:=mdlData.PermissionCheckRights(TFrm_PlanWeekDetail.ClassName,'提交');
      TB_Submit.Caption:='批量提交';
      TB_Del.Visible:=False;
    end;
    If mdata_PTItem.RecordCount=1 then
    begin
      TB_Edit_M.Visible:=mdlData.PermissionCheckRights(TFrm_PlanWeekDetail.ClassName,'修改');
      TB_Del.Visible:=mdlData.PermissionCheckRights(TFrm_PlanWeekDetail.ClassName,'删除');
      TB_Submit.Visible:=mdlData.PermissionCheckRights(TFrm_PlanWeekDetail.ClassName,'提交');
      TB_Submit.Caption:='提交';
    end;
    Exit;
  end;

   //提交者是本人
  If (qry.RecordCount=1) and (qry.FieldByName('FPlanWeekDetailStatus').AsInteger=1)
     and (qry.FieldByName('FPlanWeekDetailWriteID').AsInteger=UserNumID) then
  begin
    TB_Submit.Visible:=mdlData.PermissionCheckRights(TFrm_PlanWeekDetail.ClassName,'提交');
    If mdata_PTItem.RecordCount=0 then
       TB_Submit.Visible:=False;
    If mdata_PTItem.RecordCount>0 then
    begin
      TB_Submit.Caption:='批量提交撤回';
      TB_Check.Visible:=mdlData.PermissionCheckRights(TFrm_PlanWeekDetail.ClassName,'校对');
      TB_Check.Caption:='批量校对';
      TB_Check_Auto.Visible:=mdlData.PermissionCheckRights(TFrm_PlanWeekDetail.ClassName,'校对');
    end;
    If mdata_PTItem.RecordCount=1 then
    begin
      TB_Submit.Caption:='提交撤回';
      TB_Check.Visible:=mdlData.PermissionCheckRights(TFrm_PlanWeekDetail.ClassName,'校对');
      TB_Check.Caption:='校对';
      TB_Check_Auto.Visible:=mdlData.PermissionCheckRights(TFrm_PlanWeekDetail.ClassName,'校对');
    end;
    TB_Edit_M.Visible:=False;
    TB_Del.Visible:=False;
    Exit;
  end;
  TB_Check_Auto.Visible:=mdlData.PermissionCheckRights(TFrm_PlanWeekDetail.ClassName,'校对');

   //校对
  try
    qry.SQL.Text:='Select distinct FPlanWeekDetailStatus from V_PlanWeekDetailList with(nolock) where FAgentID=:FAgentID and FFullNumber like :FFullNumber';
    qry.Parameters.FindParam('FAgentID').value:= UserFDepartmentID;
    qry.Parameters.FindParam('FFullNumber').value:=ListFNumber_PTList+'%';
    qry.Open;
  finally
    ;
  end;
  If (qry.RecordCount>1)  then
     Exit;
  If (qry.RecordCount=1) and (qry.FieldByName('FPlanWeekDetailStatus').AsInteger=1) then
  begin
    If mdata_PTItem.RecordCount=0 then
    begin
      TB_Check.Visible:=False;
    end;
    If mdata_PTItem.RecordCount>0 then
    begin
      TB_Check.Visible:=mdlData.PermissionCheckRights(TFrm_PlanWeekDetail.ClassName,'校对');
      TB_Check.Caption:='批量校对';
      TB_Check_Auto.Visible:=mdlData.PermissionCheckRights(TFrm_PlanWeekDetail.ClassName,'校对');
    end;
    If mdata_PTItem.RecordCount=1 then
    begin
      TB_Check.Visible:=mdlData.PermissionCheckRights(TFrm_PlanWeekDetail.ClassName,'校对');
      TB_Check.Caption:='校对';
      TB_Check_Auto.Visible:=mdlData.PermissionCheckRights(TFrm_PlanWeekDetail.ClassName,'校对');
    end;
    Exit;
  end;


  If (qry.RecordCount=1) and (qry.FieldByName('FPlanWeekDetailStatus').AsInteger=2) then
  begin
    TB_Check.Visible:=mdlData.PermissionCheckRights(TFrm_PlanWeekDetail.ClassName,'校对');
    TB_Check_Auto.Visible:=mdlData.PermissionCheckRights(TFrm_PlanWeekDetail.ClassName,'校对');
    If mdata_PTItem.RecordCount=0 then
       TB_Check.Visible:=False;
    If mdata_PTItem.RecordCount>0 then
       TB_Check.Caption:='批量校对撤回';
    If mdata_PTItem.RecordCount=1 then
       TB_Check.Caption:='校对撤回';
    Exit;
  end;
 

end;

procedure TFrm_PlanWeekDetail.FTeamName_PTListPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry,qry1: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry1:=TADOQuery.Create(self);
  qry1.ConnectionString:=mdlData.ReadConnStr;
  Mdata_PTList.Edit;
  Mdata_PTList.Post;
  If Mdata_PTList['FTeamName']=Null then
  begin
    Mdata_PTList.Edit;
    Mdata_PTList['FTeamName']:='';
    Mdata_PTList.Post;
  end;

  try
    qry.SQL.Text:='select distinct FTeamID,FTeamNumber,FWorkShop,FTeamName from V_PlanWeekDetailList with(nolock) where FAgentID=:FAgentID '
                 +' and FPlanWeekPartsID=:FPlanWeekPartsID and FTeamID<>0 order by FTeamNumber,FWorkShop,FTeamName ';
    qry.Parameters.FindParam('FAgentID').value:=UserFDepartmentID;
    qry.Parameters.FindParam('FPlanWeekPartsID').value:=Mdata_PTList['FPlanWeekPartsID'];
    qry.Open;
  finally
   ;
  end;
  If qry.RecordCount=1 then
  begin
    Mdata_PTList.Edit;
    Mdata_PTList['FTeamID']:=qry.FieldByName('FTeamID').Value;
    Mdata_PTList['FTeamName']:=qry.FieldByName('FTeamName').Value;
    Mdata_PTList['FWorkShop']:=qry.FieldByName('FWorkShop').Value;
    Mdata_PTList.Post;
  end;
  If qry.RecordCount>1 then
  begin
    selValue:=select('选择生产班组','FTeamName','FWorkShop','FTeamName','FWorkShop;FTeamName',qry);
    If (Length(selValue)>0)  then
    begin
      Mdata_PTList.Edit;
      Mdata_PTList['FTeamID']:=qry.FieldByName('FTeamID').Value;
      Mdata_PTList['FTeamName']:=qry.FieldByName('FTeamName').Value;
      Mdata_PTList['FWorkShop']:=qry.FieldByName('FWorkShop').Value;
      Mdata_PTList.Post;
    end;
  end;
  If qry.RecordCount=0 then
  begin
    try
      qry1.SQL.Text:='select * from T_Team with(nolock) where FDepartmentID=:FDepartmentID and FTeamName like :FTeamName order by FTeamNumber,FWorkShop,FTeamName ';
      qry1.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
      qry1.Parameters.FindParam('FTeamName').value:='%'+Mdata_PTList['FTeamName']+'%';
      qry1.Open;
    finally
      ;
    end;
    selValue:=select('选择生产班组','FTeamName','FWorkShop','FTeamName','FWorkShop;FTeamName',qry1);
    If (Length(selValue)>0)  then
    begin
      Mdata_PTList.Edit;
      Mdata_PTList['FTeamID']:=qry1.FieldByName('FTeamID').Value;
      Mdata_PTList['FTeamName']:=qry1.FieldByName('FTeamName').Value;
      Mdata_PTList['FWorkShop']:=qry1.FieldByName('FWorkShop').Value;
      Mdata_PTList.Post;
    end;
  end;

end;

procedure TFrm_PlanWeekDetail.FTeamName_PTListPropertiesEditValueChanged(
  Sender: TObject);
var  qry: TADOQuery;
begin
   qry:=TADOQuery.Create(self);
   qry.ConnectionString:=mdlData.ReadConnStr;
   Mdata_PTList.Edit;
   Mdata_PTList.Post;
   Mdata_PTList.Edit;
   if Mdata_PTList['FTeamName']=Null then
      Mdata_PTList['FTeamName']:='';
   Mdata_PTList.Post;
   try
     qry.SQL.Text:='select * from T_Team with(nolock) where FDepartmentID=:FDepartmentID and FTeamName=:FTeamName ';
     qry.Parameters.FindParam('FDepartmentID').Value:=UserFDepartmentID;
     qry.Parameters.FindParam('FTeamName').Value:=Trim(Mdata_PTList['FTeamName']);
     qry.Open;
   finally
     ;
   end;

   If qry.RecordCount=1 then
   begin
     Mdata_PTList.Edit;
     Mdata_PTList['FTeamID']:=qry.FieldByName('FTeamID').Value;
     Mdata_PTList['FWorkShop']:=qry.FieldByName('FWorkShop').Value;
     Mdata_PTList.Post;
     Exit;
   end
   else
   begin
     Mdata_PTList.Edit;
     Mdata_PTList['FTeamID']:=0;
     Mdata_PTList['FTeamName']:='';
     Mdata_PTList['FWorkShop']:='';
     Mdata_PTList.Post;
  end;

end;

procedure TFrm_PlanWeekDetail.Act_EditExecute(Sender: TObject);
var
 qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
   { qry.SQL.Text:='Select b.FPlanWeekPartsID,c.*,'
                 +'a.*,b.* from V_PlanTaskList as a '
                 +'left outer join V_PlanWeekParts as b  on a.FAgentId=b.FAgentId and a.FPlanPartsID=b.FPlanPartsID '
                 +'left outer join (select FPlanWeekPartsID,isnull(FMakeBOMWet,0) as FMakeBOMWet,FMakePartsDate,'
                 +'isnull(FMakePartsPercent,0) as FMakePartsPercent,isnull(FShipPartsPercent,0) as FShipPartsPercent,'
                 +'FShipPartsDate,FTeamname,FTeamID,FWorkShop from V_PlanWeekDetailList where FPlanWeekDetailID=:FPlanWeekDetailID) as c '
                 +'on b.FPlanWeekPartsID=c.FPlanWeekPartsID '
                 +'where a.FAgentID=:FAgentID and a.FFileItemID=:FFileItemID order by a.FPartsCode '; }

     qry.SQL.Text:='select IsEdit=cast(0 as bit),b.FPlanWeekDetailID,isnull(c.FProductID,a.FProductID) as FProductID,'
                  +'isnull(a.FPlanWeekPartsID,b.FPlanWeekPartsID) as FPlanWeekPartsID,isnull(FPlanWeekPartsAdd,'''') as FPlanWeekPartsAdd,'
                  +'isnull(c.FPartsCode,isnull(a.FPartsCode,b.FPartsCode)) as FPartsCode,'
                  +'isnull(c.FPlanPartsNumber,isnull(a.FPlanPartsNumber,b.FPlanPartsNumber)) as FPlanPartsNumber,'
                  +'isnull(c.FPlanPartsName,isnull(a.FPlanPartsName,b.FPlanPartsName)) as FPlanPartsName,'
                  +'isnull(a.FPlanWeekPartsName,b.FPlanWeekPartsName) as FPlanWeekPartsName, '
                  +'isnull(a.FNumber,b.FPlanWeekPartsNumber) as FPlanWeekPartsNumber, '
                  +'isnull(b.FAgentID,a.FAgentID) as FAgentID,c.FAgentShortName, '
                  +'b.FMakeBOMWet,b.FMakeBOMPackQry,b.FMakeShipQry,b.FMakePartsWet,b.FMakePartsDate,FMakePartsPercent,b.FShipPartsWet,b.FShipPartsPercent,b.FShipPartsDate,b.FTeamID,b.FTeamName,b.FWorkShop  '
                  +'from (select * from  V_PlanTaskList with(nolock) where FAgentId=:FAgentId1 and FFileItemID=:FFileItemID) as c '
                  +'left outer join (select * from V_PlanWeekParts with(nolock) where FPlanWeekIsSel=1 and FAgentID=:FAgentID2 and FProductID=:FProductID) as a '
                  +'on c.FPlanPartsID=a.FPlanPartsID '
                  +'left outer join  '
                  +'(select FPlanWeekDetailID,FPlanWeekPartsID,FPlanWeekPartsAdd,FPlanPartsID,FPartsCode,FPlanPartsNumber,FPlanPartsName,FPlanWeekPartsNumber,FPlanWeekPartsName,'
                  +'FMakeBOMWet,FMakeBOMPackQry,FMakeShipQry,FMakePartsWet,FMakePartsDate,FMakePartsPercent,FShipPartsWet,FShipPartsPercent,FShipPartsDate,FTeamID,FTeamName,FWorkShop,FAgentID,FAgentShortName '
                  +'from V_PlanWeekDetailList with(nolock) where FPlanWeekDetailID=:FPlanWeekDetailID ) as b '
                  +'on b.FPlanWeekPartsID=a.FPlanWeekPartsID '
                  +'order by isnull(c.FPartsCode,isnull(a.FPartsCode,b.FPartsCode)),isnull(c.FPlanPartsNumber,isnull(a.FPlanPartsNumber,b.FPlanPartsNumber)),isnull(a.FNumber,b.FPlanWeekPartsNumber)';
    qry.Parameters.FindParam('FAgentId1').value:=UserFDepartmentID;
    qry.Parameters.FindParam('FFileItemID').value:=mData_PTItem['FFileItemID'];
    qry.Parameters.FindParam('FAgentId2').value:=UserFDepartmentID;
    qry.Parameters.FindParam('FProductID').value:=mData_PTItem['FProductID'];
    qry.Parameters.FindParam('FPlanWeekDetailID').value:=mData_PTItem['FPlanWeekDetailID'];
    qry.Open;
  finally
     ;
  end;
  If qry.RecordCount>0 then
  begin
    MData_PTList.CopyFromDataSet(qry);
    MData_PTList.Active:=True;
    MData_PTList.First;
  end;
  //cxGvColumn(cxGv_PTList,MData_PTList);
  qry.Free;
end;

procedure TFrm_PlanWeekDetail.FTeamName_PTListHeaderClick(Sender: TObject);
Var
  qry: TADOQuery;
  I_index:Integer;
  P_Str,P_StrShop:String;
  P_Int:Integer;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  If mData_PTList.RecordCount<=0 then
    Exit;
  I_index:=mData_PTList.RecNo ;

  mData_PTList.Edit;
  mData_PTList.Post;

  If mData_PTList['FTeamID']=0 then
     Exit;
  P_StrShop:=mData_PTList['FWorkShop'];
  P_Str:=mData_PTList['FTeamName'];
  P_Int:=mData_PTList['FTeamID'];
  mData_PTList.First;
  while not mData_PTList.eof do
  begin
    If (mData_PTList['FTeamID']=0) or (mData_PTList['FTeamID']=Null) then
    begin
      mData_PTList.Edit;
      mData_PTList['FWorkShop']:=P_StrShop;
      mData_PTList['FTeamName']:=P_Str;
      mData_PTList['FTeamID']:=P_Int;
      mData_PTList.Post;
    end;
    mData_PTList.Next;
  end;
  If (I_index<mData_PTList.RecordCount) and (I_index<>-1) then
     mData_PTList.RecNo :=I_index
  else
     mData_PTList.Last;

end;

procedure TFrm_PlanWeekDetail.cxGrid_PTListContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV_PTList';
  Gm:='mdata_PTList';
  Gr:='cxGrid_PTList';
  Act_Menu_Set.Execute;
end;

procedure TFrm_PlanWeekDetail.cxGrid_PTItemContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV_PTItem';
  Gm:='mdata_PTItem';
  Gr:='cxGrid_PTItem';
  Act_Menu_Set.Execute;
end;

procedure TFrm_PlanWeekDetail.cxGV_PTListCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  If P_state<>2   then
     Exit;
  If (StrToFloat(AViewInfo.GridRecord.DisplayTexts[FMakePartsPercent_PTList.Index])=Null)
     or (StrToFloat(AViewInfo.GridRecord.DisplayTexts[FShipPartsPercent_PTList.Index])=Null) then
     Exit;

  If (StrToFloat(AViewInfo.GridRecord.DisplayTexts[FMakePartsPercent_PTList.Index])=100) then
  begin
    //ACanvas.Canvas.brush.Color := clInactiveCaptionText;     //设置行颜色
    ACanvas.Canvas.Font.Color:=clBlue; //字体颜色
    ACanvas.FillRect(AViewInfo.Bounds);
  end;
  If (StrToFloat(AViewInfo.GridRecord.DisplayTexts[FMakePartsPercent_PTList.Index])=100)
     and (StrToFloat(AViewInfo.GridRecord.DisplayTexts[FShipPartsPercent_PTList.Index])=100) then
  begin
    //ACanvas.Canvas.brush.Color := clInactiveCaptionText;     //设置行颜色
    ACanvas.Canvas.Font.Color:=clGreen; //字体颜色
    ACanvas.FillRect(AViewInfo.Bounds);
  end;

  If StrToFloat(AViewInfo.GridRecord.DisplayTexts[FMakePartsPercent_PTList.Index])<StrToFloat(AViewInfo.GridRecord.DisplayTexts[FShipPartsPercent_PTList.Index]) then
  begin
    //ACanvas.Canvas.brush.Color := clInactiveCaptionText;     //设置行颜色
    ACanvas.Canvas.Font.Color:=clRed; //字体颜色
    ACanvas.FillRect(AViewInfo.Bounds);
  end;

  If (StrToFloat(AViewInfo.GridRecord.DisplayTexts[FMakePartsPercent_PTList.Index])>100)
     or (StrToFloat(AViewInfo.GridRecord.DisplayTexts[FShipPartsPercent_PTList.Index])>100) then
  begin
    //ACanvas.Canvas.brush.Color := clInactiveCaptionText;     //设置行颜色
    ACanvas.Canvas.Font.Color:=clRed; //字体颜色
    ACanvas.FillRect(AViewInfo.Bounds);
  end;

  If StrToFloat(AViewInfo.GridRecord.DisplayTexts[FMakeBOMPackQry_PTList.Index])
     <StrToFloat(AViewInfo.GridRecord.DisplayTexts[FMakeShipQry_PTList.Index]) then
  begin
    //ACanvas.Canvas.brush.Color := clInactiveCaptionText;     //设置行颜色
    ACanvas.Canvas.Font.Color:=clRed; //字体颜色
    ACanvas.FillRect(AViewInfo.Bounds);
  end;
end;

procedure TFrm_PlanWeekDetail.MData_PTListBeforePost(DataSet: TDataSet);
begin
  inherited;

  If DataSet['FMakePartsPercent']=Null then
     DataSet['FMakePartsPercent']:=0;
  If DataSet['FShipPartsPercent']=Null then
     DataSet['FShipPartsPercent']:=0;

  If DataSet['FMakeBOMPackQry']=Null then
     DataSet['FMakeBOMPackQry']:=0;
  If DataSet['FMakeShipQry']=Null then
     DataSet['FMakeShipQry']:=0;    

end;

procedure TFrm_PlanWeekDetail.cxGV_PTItemFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
var qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If  P_state=2 then   //不在新增修改状态
  begin
   // If UserFDepartmentsort=2 then //子公司
    begin
      If (mData_PTItem['FPlanWeekDetailID']<>0) and (mData_PTItem['FPlanWeekDetailID']<>Null) then
      begin
        If MyItemListID(qry,Mdata_PTList,'V_PlanWeekDetailList',' FPlanWeekDetailID='+IntToStr(mData_PTItem['FPlanWeekDetailID']),'FFullNumber',) then
           Act_Status_M.Execute  //权限设置
      end;
    end;
  end;
end;

procedure TFrm_PlanWeekDetail.FPlanPartsName_PTListPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
   qry:=TADOQuery.Create(Self);
   qry.ConnectionString:=mdlData.ReadConnStr;
   MData_PTList.Edit;
   MData_PTList.Post;
  If MData_PTList['FPlanWeekPartsName']=Null  then
  begin
    MData_PTList.Edit;
    MData_PTList['FPlanWeekPartsName']:='';
    MData_PTList.Post;
  end;
  try
    qry.SQL.Text:='Select * from VT_PlanWeekParts with(nolock) where FAgentID=:FAgentID and FProductID=:FProductID and FPlanWeekPartsName like :FPlanWeekPartsName order by FNumber';
    qry.Parameters.FindParam('FAgentID').value:=UserFDepartmentID;
    qry.Parameters.FindParam('FProductID').value:=MData_PTItem['FProductID'];
    qry.Parameters.FindParam('FPlanWeekPartsName').value:='%'+MData_PTList['FPlanWeekPartsName']+'%';
    qry.Open;
  finally
     ;
  end;
  If qry.RecordCount=1 then
  begin
    MData_PTList.Edit;
    MData_PTList['FPlanWeekPartsName']:=qry.FieldByName('FPlanWeekPartsName').AsString;
    MData_PTList['FPlanWeekPartsID']:=qry.FieldByName('FPlanWeekPartsID').AsInteger;
    MData_PTList.Post;
  end
  else
  begin
    selValue:=select('选择子公司生产计划部件','FNumber','FParentNumber','FNumber','FName',qry);
  If (Length(selValue)>0) and (qry.FieldByName('Isleaf').Value<>0) then
    begin
      MData_PTList.Edit;
      MData_PTList['FPlanWeekPartsName']:=qry.FieldByName('FPlanWeekPartsName').AsString;
      MData_PTList['FPlanWeekPartsID']:=qry.FieldByName('FPlanWeekPartsID').AsString;
      MData_PTList.Post;
    end
    else
      application.MessageBox('请选择明细！','系统提示',MB_ICONINFORMATION);
  end;
  qry.Free;

end;

procedure TFrm_PlanWeekDetail.TB_PlanTaskClick(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If UserFDepartmentsort=1 then //事业部
  begin
    If not TreeVeiwListWhere(qry,MyTreeView_PlanTask,'VT_Plan_Agent',' and FDepartmentID='+IntToStr(UserFDepartmentID)) then
      Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;
  If UserFDepartmentsort=2 then //子公司
  begin
    If not TreeVeiwListWhere(qry,MyTreeView_PlanTask,'VT_Plan_Agent',' and FAgentID='+IntToStr(UserFDepartmentID)) then
      Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;
  If UserFDepartmentsort=4 then //外协点
  begin
    If not TreeVeiwListWhere(qry,MyTreeView_PlanTask,'VT_Plan_Agent',' and FAgentID='+IntToStr(UserFDepartmentID)) then
      Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;


end;

procedure TFrm_PlanWeekDetail.MyTreeView_PlanTaskChange(Sender: TObject;
  Node: TTreeNode);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If Node = nil then Exit;
  with PTree(Node.Data)^ do
  begin
    ListFNumber_PTList:=trim(PTree(Node.Data).FNumber);
    P_List_PTList:=PTree(Node.Data).Caption;
    P_Isleaf_PTList:=PTree(Node.Data).Isleaf;
    mdata_PlanTask.DisableControls;
    cxGV_PlanTask.DataController.DataModeController.GridMode:=True;
    cxGV_PlanTask.DataController.DataModeController.SmartRefresh:=True;
    If P_Isleaf_PTList>=0 then
    begin
      If MyItemListFieldWhere(qry,mdata_PlanTask,' *  ','V_PlanTaskList','FFullNumber_Agent',ListFNumber_PTList,' ','FFullNumber_Agent') then
         cxGvColumn(cxGV_PlanTask,mdata_PlanTask);
    end
    else
    begin
      mdata_PlanTask.Close;
    end;


    mdata_PlanTask.EnableControls;
    cxGV_PlanTask.DataController.DataModeController.GridMode:=False;
    cxGV_PlanTask.DataController.DataModeController.SmartRefresh:=False;

 end;

end;

procedure TFrm_PlanWeekDetail.MyTreeView_PlanTaskExpanding(Sender: TObject;
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

   qry.SQL.Text:='Select * from VT_Plan_Agent with(nolock) where FParentNumber= '''
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
    with MyTreeView_PlanTask.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('Isleaf').value;
    end;
    qry.Next;
  end;

end;

procedure TFrm_PlanWeekDetail.Act_UpdateQryExecute(Sender: TObject);
var qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  //mData_PTItem.First;
  //while not mData_PTItem.eof do
  begin
    try
      qry.SQL.Text:='update a set FMakeWet=b.FMakeBOMWet,FPlanPackQry=b.FPlanPackQry '
                   +'from T_PlanTaskList as a  '
                   +'left outer join T_PlanTaskItem as c on a.FPlanTaskItemID=c.FPlanTaskItemID '
                   +'left outer join (select FFileItemID,FPlanPartsID,sum(isnull(FMakeBOMWet,0)) as FMakeBOMWet, '
                                            +'sum(isnull(FMakeBOMPackQry,0)) as FPlanPackQry '
                                            +'from V_PlanWeekDetailList with(nolock) where FFileItemID=:FFileItemID1 group by FFileItemID, FPlanPartsID) as b  '
                   +'on c.FFileItemID=b.FFileItemID and a.FPlanPartsID=b.FPlanPartsID '
                   +'where c.FFileItemID=:FFileItemID2';
      qry.Parameters.FindParam('FFileItemID1').value:=MData_PTItem['FFileItemID'];
      qry.Parameters.FindParam('FFileItemID2').value:=MData_PTItem['FFileItemID'];
      qry.ExecSQL;
    finally
       ;
    end;
    //mData_PTItem.Next;
  end;



end;

procedure TFrm_PlanWeekDetail.FPlanWeekPartsName_PTListPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
   qry:=TADOQuery.Create(Self);
   qry.ConnectionString:=mdlData.ReadConnStr;
   MData_PTList.Edit;
   MData_PTList.Post;
  If MData_PTList['FPlanWeekPartsName']=Null  then
  begin
    MData_PTList.Edit;
    MData_PTList['FPlanWeekPartsName']:='';
    MData_PTList.Post;
  end;
  try
    qry.SQL.Text:='Select * from VT_PlanWeekParts with(nolock) where FAgentID=:FAgentID and FProductID=:FProductID and FPlanWeekPartsName like :FPlanWeekPartsName order by FNumber';
    qry.Parameters.FindParam('FAgentID').value:=UserFDepartmentID;
    qry.Parameters.FindParam('FProductID').value:=MData_PTItem['FProductID'];
    qry.Parameters.FindParam('FPlanWeekPartsName').value:='%'+MData_PTList['FPlanWeekPartsName']+'%';
    qry.Open;
  finally
     ;
  end;
  If qry.RecordCount=1 then
  begin
    MData_PTList.Edit;
    MData_PTList['FPlanWeekPartsName']:=qry.FieldByName('FPlanWeekPartsName').AsString;
    MData_PTList['FPlanWeekPartsID']:=qry.FieldByName('FPlanWeekPartsID').AsInteger;
    MData_PTList.Post;
  end
  else
  begin
    selValue:=select('选择周报部件','FNumber','FParentNumber','FNumber','FName',qry);
  If (Length(selValue)>0) and (qry.FieldByName('Isleaf').Value<>0) then
    begin
      MData_PTList.Edit;
      MData_PTList['FPlanWeekPartsName']:=qry.FieldByName('FPlanWeekPartsName').AsString;
      MData_PTList['FPlanWeekPartsID']:=qry.FieldByName('FPlanWeekPartsID').AsString;
      MData_PTList['FPlanWeekPartsAdd']:='';
      MData_PTList['FProductID']:=qry.FieldByName('FProductID').AsString;
      MData_PTList.Post;
    end
    else
      application.MessageBox('请选择明细！','系统提示',MB_ICONINFORMATION);
  end;
  qry.Free;

end;

procedure TFrm_PlanWeekDetail.cxGV_TrackCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  If (StrToFloat(AViewInfo.GridRecord.DisplayTexts[FMakeFinshPercent_Track.Index])=Null)
     or (StrToFloat(AViewInfo.GridRecord.DisplayTexts[FShipFinshPercent_Track.Index])=Null) then
     Exit;

  If (StrToFloat(AViewInfo.GridRecord.DisplayTexts[FMakeFinshPercent_Track.Index])=100) then
  begin
    ACanvas.Canvas.Font.Color:=clBlue; //字体颜色
    ACanvas.FillRect(AViewInfo.Bounds);
  end;
  If (StrToFloat(AViewInfo.GridRecord.DisplayTexts[FMakeFinshPercent_Track.Index])=100)
     and (StrToFloat(AViewInfo.GridRecord.DisplayTexts[FShipFinshPercent_Track.Index])=100) then
  begin
    ACanvas.Canvas.Font.Color:=clGreen; //字体颜色
    ACanvas.FillRect(AViewInfo.Bounds);
  end;

  If StrToFloat(AViewInfo.GridRecord.DisplayTexts[FMakeFinshPercent_Track.Index])
    <StrToFloat(AViewInfo.GridRecord.DisplayTexts[FShipFinshPercent_Track.Index]) then
  begin
    ACanvas.Canvas.Font.Color:=clRed; //字体颜色
    ACanvas.FillRect(AViewInfo.Bounds);
  end;

  If (StrToFloat(AViewInfo.GridRecord.DisplayTexts[FMakeFinshPercent_Track.Index])>100)
     or (StrToFloat(AViewInfo.GridRecord.DisplayTexts[FShipFinshPercent_Track.Index])>100) then
  begin
    ACanvas.Canvas.Font.Color:=clRed; //字体颜色
    ACanvas.FillRect(AViewInfo.Bounds);
  end;

end;

procedure TFrm_PlanWeekDetail.Act_Update_PlanTaskItemExecute(
  Sender: TObject);
var qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
 // mData_PTItem.First;
 // while not mData_PTItem.eof do
  //begin
    try
      qry.SQL.Text:='Update a Set FESPWet=b.FESPWet,FEspPackQry=b.FEspPackQry '
                   +'from T_PlanTaskItem  as a '
                   +'Left outer join (select FFileItemID,sum(FMakeWet) as FESPWet,'
                                            +'sum(FPlanPackQry) as FESPPackQry  '
                                            +'from V_PlanTaskList with(nolock)  '
                                           +'where FFileItemID=:FFileItemID1 group by FFileItemID) as b '
                  +'on a.FFileItemID=b.FFileItemID where a.FFileItemID=:FFileItemID2';
      qry.Parameters.FindParam('FFileItemID1').value:=MData_PTItem['FFileItemID'];
      qry.Parameters.FindParam('FFileItemID2').value:=MData_PTItem['FFileItemID'];
      qry.ExecSQL;
    finally
       ;
    end;
   // mData_PTItem.Next;
  //end;

end;

procedure TFrm_PlanWeekDetail.Act_QryExecute(Sender: TObject);
Var
   proc:TADOStoredProc;
   LoopInt:Integer;
   Column: TcxGridDBColumn;
begin
   inherited;
   proc:=TADOStoredProc.Create(self);
   proc.ConnectionString:=mdlData.ReadConnStr;
   proc.CommandTimeout:=500;
   P_Wet:='FMakeBOMWet';
   P_Sort:='按车间';

    ADOProc.Close;
   //ADOProc.CommandTimeout:=500;
   //ADOProc.ConnectionString:=mdlData.ReadConnStr;

  // ShowPrograss('正在更新统计数据，请稍候……',self);
   // ADOProc.ProcedureName:='P_PlanTask_Qry';

   ADOProc.Parameters.ParamByName('@FAgentID').Value:=UserFDepartmentID;
   ADOProc.Parameters.ParamByName('@Sort').Value:=P_Sort;
   ADOProc.Parameters.ParamByName('@Wet').Value:=P_Wet;
   ADOProc.Open;

   cxGV_Qry.ClearItems;
   for  LoopInt:=0 to  ADOProc.FieldCount-1 do
   begin
     Column:=cxGV_Qry.CreateColumn;
     Column.DataBinding.FieldName:=ADOProc.Fields[LoopInt].FieldName;
     Column.Caption:=ADOProc.Fields[LoopInt].FieldName;
     Column.FooterAlignmentHorz:=taCenter;
     Column.HeaderAlignmentHorz:=taCenter;
     Column.HeaderGlyphAlignmentHorz:=taCenter;
     If LoopInt=1 then
        Column.Width:=300
     else
        Column.Width:=length(Column.Caption)*8;

     column.Visible:=True;
     Column.Options.Filtering:=False;
     Column.Options.Editing:=False;
   end;




end;

procedure TFrm_PlanWeekDetail.TB_TeamClick(Sender: TObject);
begin
   inherited;
  Act_TeamName.Execute;
end;

procedure TFrm_PlanWeekDetail.TB_WorkShopClick(Sender: TObject);
begin
  Act_WorkShop.Execute;
end;

procedure TFrm_PlanWeekDetail.Act_WorkShopExecute(Sender: TObject);
var qry,qry_Loop: TADOQuery;
    DS_qry:TDataSource;
    colHeadStr1,colHeadStr2,colHeadStr3,colHeadStr:string;
    LoopInt:Integer;
    Column: TcxGridDBColumn;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry_Loop:=TADOQuery.Create(Self);
  qry_Loop.ConnectionString:=mdlData.ReadConnStr;
  DS_qry:=TDataSource.Create(Self);

  DS_qry.DataSet:=qry;
  cxGV_Qry.DataController.DataSource:=DS_Qry;
  cxGV_Qry.DataController.DataSource.DataSet:=qry;


  try
    qry_Loop.SQL.Text:='select distinct FWorkShop from V_PlanWeekDetailList where FAgentID=:FAgentID order by FWorkShop ';
    qry_Loop.Parameters.FindParam('FAgentID').value:=UserFDepartmentID;
    qry_Loop.Open;
  finally
    ;
  end;
  If qry_Loop.RecordCount<=0 then
     Exit
  else
  begin
    mdata_Qry.CopyFromDataSet(qry_Loop);
    mdata_Qry.Open;
  end;
  P_Wet:='FMakeBOMWet';
  colHeadStr1:='';
  colHeadStr2:='';
  colHeadStr3:=' from (select FWorkShop,FProductNum,FBranchItemNumber,FClientFullName,'
               +'(sum(isnull('+P_Wet+',0))) as Wet  from V_PlanWeekDetailList where FAgentID=:FAgentID'
               +' and FWorkShop<>'''' '
               +'group by FWorkShop,FProductNum,FBranchItemNumber,FClientFullName) as a ';

  mdata_Qry.First;
  while not mdata_Qry.eof do
  begin
    If mdata_Qry['FWorkShop']='' then
    begin
      mdata_Qry.Edit;
      mdata_Qry['FWorkShop']:='空白';
      mdata_Qry.Post
    end;
    colHeadStr1:=colHeadStr1+',sum('+mdata_Qry['FWorkShop']+') as '+mdata_Qry['FWorkShop'];
    colHeadStr2:=colHeadStr2+',isnull(case FWorkShop when '''+mdata_Qry['FWorkShop']+''' '
               +'then isnull(Wet,0) end,0) as '+mdata_Qry['FWorkShop']+' ';

    mdata_Qry.Next;
  end;

  colHeadStr:='select FBranchItemNumber as 图号,FClientFullName as 用户名称'
             +colHeadStr1+',FProductNum from (select FProductNum,FBranchItemNumber,FClientFullName '
             +colHeadStr2+colHeadStr3
             +' ) as b group by FProductNum,FBranchItemNumber,FClientFullName '
             +'order by FProductNum,FBranchItemNumber,FClientFullName ';
  try
    qry.SQL.Text:=colHeadStr;
    qry.Parameters.FindParam('FAgentID').value:=UserFDepartmentID;
    qry.Open;
  finally
    ;
  end;

  If qry.RecordCount<=0 then
     Exit
  else
  begin
    cxGV_Qry.ClearItems;
    cxGV_Qry.DataController.Summary.FooterSummaryItems.Add;
    for  LoopInt:=0 to  qry.FieldCount-1 do
    begin
      Column:=cxGV_Qry.CreateColumn;
      Column.DataBinding.FieldName:=qry.Fields[LoopInt].FieldName;
      Column.Caption:=qry.Fields[LoopInt].FieldName;
      Column.FooterAlignmentHorz:=taCenter;
      Column.HeaderAlignmentHorz:=taCenter;
      Column.HeaderGlyphAlignmentHorz:=taCenter;

      If length(qry.Fields[LoopInt].AsString)*15>length(Column.Caption)*15 then
         Column.Width:=length(qry.Fields[LoopInt].AsString)*15;
      If length(qry.Fields[LoopInt].AsString)*15<=length(Column.Caption)*15 then
         Column.Width:=length(Column.Caption)*15;

      column.Visible:=True;
      Column.Options.Filtering:=False;
      Column.Options.Editing:=False;
     { If  LoopInt>2 then
      begin
       // cxGV_Qry.DataController.Summary.FooterSummaryItems.Add.Field.Index:=LoopInt;
        cxGV_Qry.DataController.Summary.FooterSummaryItems[LoopInt].Kind:=skSum;
     //cxGV_Qry.DataController.Summary.FooterSummaryItems[LoopInt].Field:=qry.Fields[LoopInt].FieldName;
     // cxGV_Qry.DataController.Summary.FooterSummaryItems[LoopInt].Field:=UpperCase(qry.Fields[LoopInt].FieldName);
     end; }
    end;
  end;


end;

procedure TFrm_PlanWeekDetail.Act_TeamNameExecute(Sender: TObject);
var qry,qry_Loop: TADOQuery;
    DS_qry:TDataSource;
    colHeadStr1,colHeadStr2,colHeadStr3,colHeadStr:string;
    LoopInt:Integer;
    Column: TcxGridDBColumn;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry_Loop:=TADOQuery.Create(Self);
  qry_Loop.ConnectionString:=mdlData.ReadConnStr;
  DS_qry:=TDataSource.Create(Self);

  DS_qry.DataSet:=qry;
  cxGV_Qry.DataController.DataSource:=DS_Qry;
  cxGV_Qry.DataController.DataSource.DataSet:=qry;

  try
    qry_Loop.SQL.Text:='select distinct FTeamName from V_PlanWeekDetailList where FAgentID=:FAgentID order by FTeamName ';
    qry_Loop.Parameters.FindParam('FAgentID').value:=UserFDepartmentID;
    qry_Loop.Open;
  finally
    ;
  end;
  If qry_Loop.RecordCount<=0 then
     Exit
  else
  begin
    mdata_Qry.CopyFromDataSet(qry_Loop);
    mdata_Qry.Open;
  end;
  P_Wet:='FMakeBOMWet';
  colHeadStr1:='';
  colHeadStr2:='';
  colHeadStr3:=' from (select FTeamName,FProductNum,FBranchItemNumber,FClientFullName,'
               +'(sum(isnull('+P_Wet+',0))) as Wet  from V_PlanWeekDetailList where FAgentID=:FAgentID'
               +' and FTeamName<>'''' '
               +'group by FTeamName,FProductNum,FBranchItemNumber,FClientFullName) as a ';

  mdata_Qry.First;
  while not mdata_Qry.eof do
  begin
    If mdata_Qry['FTeamName']='' then
    begin
      mdata_Qry.Edit;
      mdata_Qry['FTeamName']:='空白';
      mdata_Qry.Post
    end;
    colHeadStr1:=colHeadStr1+',sum('+mdata_Qry['FTeamName']+') as '+mdata_Qry['FTeamName'];
    colHeadStr2:=colHeadStr2+',isnull(case FTeamName when '''+mdata_Qry['FTeamName']+''' '
               +'then isnull(Wet,0) end,'''') as '+mdata_Qry['FTeamName']+' ';

    mdata_Qry.Next;
  end;

  colHeadStr:='select FBranchItemNumber as 图号,FClientFullName as 用户名称'
             +colHeadStr1+',FProductNum from (select FProductNum,FBranchItemNumber,FClientFullName '
             +colHeadStr2+colHeadStr3
             +' ) as b group by FProductNum,FBranchItemNumber,FClientFullName '
             +'order by FProductNum,FBranchItemNumber,FClientFullName ';

  try
    qry.SQL.Text:=colHeadStr;
    qry.Parameters.FindParam('FAgentID').value:=UserFDepartmentID;
    qry.Open;
  finally
    ;
  end;

  If qry.RecordCount<=0 then
     Exit
  else
  begin
    cxGV_Qry.ClearItems;
    for  LoopInt:=0 to  qry.FieldCount-1 do
    begin
      Column:=cxGV_Qry.CreateColumn;
      Column.DataBinding.FieldName:=qry.Fields[LoopInt].FieldName;
      Column.Caption:=qry.Fields[LoopInt].FieldName;
      Column.FooterAlignmentHorz:=taCenter;
      Column.HeaderAlignmentHorz:=taCenter;
      Column.HeaderGlyphAlignmentHorz:=taCenter;
      If length(qry.Fields[LoopInt].AsString)*15>length(Column.Caption)*15 then
         Column.Width:=length(qry.Fields[LoopInt].AsString)*15;
      If length(qry.Fields[LoopInt].AsString)*15<=length(Column.Caption)*15 then
         Column.Width:=length(Column.Caption)*15;

      column.Visible:=True;
      Column.Options.Filtering:=False;
      Column.Options.Editing:=False;
    end;
  end;


end;

procedure TFrm_PlanWeekDetail.Act_PlanWeekPartsExecute(Sender: TObject);
var qry,qry_Loop: TADOQuery;
    DS_qry:TDataSource;
    colHeadStr1,colHeadStr2,colHeadStr3,colHeadStr:string;
    LoopInt:Integer;
    Column: TcxGridDBColumn;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry_Loop:=TADOQuery.Create(Self);
  qry_Loop.ConnectionString:=mdlData.ReadConnStr;
  DS_qry:=TDataSource.Create(Self);

  DS_qry.DataSet:=qry;
  cxGV_Qry.DataController.DataSource:=DS_Qry;
  cxGV_Qry.DataController.DataSource.DataSet:=qry;

  try
    qry_Loop.SQL.Text:='select distinct FPlanWeekPartsNumber,FPlanWeekPartsName from V_PlanWeekDetailList '
                      +' where FAgentID=:FAgentID order by FPlanWeekPartsNumber,FPlanWeekPartsName ';
    qry_Loop.Parameters.FindParam('FAgentID').value:=UserFDepartmentID;
    qry_Loop.Open;
  finally
    ;
  end;
  If qry_Loop.RecordCount<=0 then
     Exit
  else
  begin
    mdata_Qry.CopyFromDataSet(qry_Loop);
    mdata_Qry.Open;
  end;
  P_Wet:='FMakeBOMWet';
  colHeadStr1:='';
  colHeadStr2:='';
  colHeadStr3:=' from (select FPlanWeekPartsNumber,FPlanWeekPartsName,FProductNum,FBranchItemNumber,FClientFullName,'
               +'(sum(isnull('+P_Wet+',0))) as Wet  from V_PlanWeekDetailList where FAgentID=:FAgentID'
               +' and FPlanWeekPartsName<>'''' '
               +' group by FPlanWeekPartsNumber,FPlanWeekPartsName,FProductNum,FBranchItemNumber,FClientFullName) as a ';

  mdata_Qry.First;
  while not mdata_Qry.eof do
  begin
    If mdata_Qry['FPlanWeekPartsName']='' then
    begin
      mdata_Qry.Edit;
      mdata_Qry['FPlanWeekPartsName']:='空白';
      mdata_Qry.Post
    end;
    colHeadStr1:=colHeadStr1+',sum('+mdata_Qry['FPlanWeekPartsName']+') as '+mdata_Qry['FPlanWeekPartsName'];
    colHeadStr2:=colHeadStr2+',isnull(case FPlanWeekPartsName when '''+mdata_Qry['FPlanWeekPartsName']+''' '
               +'then isnull(Wet,0) end,'''') as '+mdata_Qry['FPlanWeekPartsName']+' ';

    mdata_Qry.Next;
  end;

  colHeadStr:='select FBranchItemNumber as 图号,FClientFullName as 用户名称'
             +colHeadStr1+',FProductNum from (select FProductNum,FBranchItemNumber,FClientFullName '
             +colHeadStr2+colHeadStr3
             +' ) as b group by FProductNum,FBranchItemNumber,FClientFullName '
             +'order by FProductNum,FBranchItemNumber,FClientFullName ';

  Edit1.Text:=colHeadStr;
  try
    qry.SQL.Text:=colHeadStr;
    qry.Parameters.FindParam('FAgentID').value:=UserFDepartmentID;
    qry.Open;
  finally
    ;
  end;

  If qry.RecordCount<=0 then
     Exit
  else
  begin
    cxGV_Qry.ClearItems;
    for  LoopInt:=0 to  qry.FieldCount-1 do
    begin
      Column:=cxGV_Qry.CreateColumn;
      Column.DataBinding.FieldName:=qry.Fields[LoopInt].FieldName;
      Column.Caption:=qry.Fields[LoopInt].FieldName;
      Column.FooterAlignmentHorz:=taCenter;
      Column.HeaderAlignmentHorz:=taCenter;
      Column.HeaderGlyphAlignmentHorz:=taCenter;

      If length(qry.Fields[LoopInt].AsString)*15>length(Column.Caption)*15 then
         Column.Width:=length(qry.Fields[LoopInt].AsString)*15;
      If length(qry.Fields[LoopInt].AsString)*15<=length(Column.Caption)*15 then
         Column.Width:=length(Column.Caption)*15;
         
      column.Visible:=True;
      Column.Options.Filtering:=False;
      Column.Options.Editing:=False;
    end;
  end;


end;

procedure TFrm_PlanWeekDetail.ToolButton1Click(Sender: TObject);
begin
  inherited;
  Act_PlanWeekParts.Execute;
end;

procedure TFrm_PlanWeekDetail.Act_ItemExecute(Sender: TObject);
var qry,qry_Loop: TADOQuery;
    DS_qry:TDataSource;
    colHeadStr1,colHeadStr2,colHeadStr3,colHeadStr:string;
    LoopInt:Integer;
    Column: TcxGridDBColumn;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry_Loop:=TADOQuery.Create(Self);
  qry_Loop.ConnectionString:=mdlData.ReadConnStr;
  DS_qry:=TDataSource.Create(Self);

  DS_qry.DataSet:=qry;
  cxGV_Qry.DataController.DataSource:=DS_Qry;
  cxGV_Qry.DataController.DataSource.DataSet:=qry;

  try
    qry_Loop.SQL.Text:='select distinct FSubItemNumber from V_PlanWeekDetailList where FAgentID=:FAgentID '
                      +' order by FSubItemNumber ';
    qry_Loop.Parameters.FindParam('FAgentID').value:=UserFDepartmentID;
    qry_Loop.Open;
  finally
    ;
  end;
  If qry_Loop.RecordCount<=0 then
     Exit
  else
  begin
    mdata_Qry.CopyFromDataSet(qry_Loop);
    mdata_Qry.Open;
  end;
  P_Wet:='FMakeBOMWet';
  colHeadStr1:='';
  colHeadStr2:='';
  colHeadStr3:=' from (select FProductName,FSubItemNumber,FPlanWeekPartsNumber,FPlanWeekPartsName,'
               +'(sum(isnull('+P_Wet+',0))) as Wet  from V_PlanWeekDetailList where FAgentID=:FAgentID'
               +' and FPlanWeekPartsName<>'''' '
               +'group by FProductName,FSubItemNumber,FPlanWeekPartsNumber,FPlanWeekPartsName ) as a ';

  mdata_Qry.First;
  while not mdata_Qry.eof do
  begin
    If mdata_Qry['FSubItemNumber']='' then
    begin
      mdata_Qry.Edit;
      mdata_Qry['FSubItemNumber']:='空白';
      mdata_Qry.Post
    end;
    colHeadStr1:=colHeadStr1+',sum('+mdata_Qry['FSubItemNumber']+') as '+mdata_Qry['FSubItemNumber'];
    colHeadStr2:=colHeadStr2+',isnull(case FSubItemNumber when '''+mdata_Qry['FSubItemNumber']+''' '
               +'then isnull(Wet,0) end,'''') as '+mdata_Qry['FSubItemNumber']+' ';

    mdata_Qry.Next;
  end;

  colHeadStr:='select  FProductName as 产品类型,FPlanWeekPartsNumber as 编号,FPlanWeekPartsName as 部件名称'
             +colHeadStr1+',FPlanWeekPartsNumber from (select FProductName,FSubItemNumber,FPlanWeekPartsNumber,FPlanWeekPartsName '
             +colHeadStr2+colHeadStr3
             +' ) as b group by FProductName,FPlanWeekPartsNumber,FPlanWeekPartsName  '
             +'order by FProductName, FPlanWeekPartsNumber,FPlanWeekPartsName ';
  edit1.Text:=colHeadStr;
  try
    qry.SQL.Text:=colHeadStr;
    qry.Parameters.FindParam('FAgentID').value:=UserFDepartmentID;
    qry.Open;
  finally
    ;
  end;

  If qry.RecordCount<=0 then
     Exit
  else
  begin
    cxGV_Qry.ClearItems;
    for  LoopInt:=0 to  qry.FieldCount-1 do
    begin
      Column:=cxGV_Qry.CreateColumn;
      Column.DataBinding.FieldName:=qry.Fields[LoopInt].FieldName;
      Column.Caption:=qry.Fields[LoopInt].FieldName;
      Column.FooterAlignmentHorz:=taCenter;
      Column.HeaderAlignmentHorz:=taCenter;
      Column.HeaderGlyphAlignmentHorz:=taCenter;
      If length(qry.Fields[LoopInt].AsString)*15>length(Column.Caption)*15 then
         Column.Width:=length(qry.Fields[LoopInt].AsString)*15;
      If length(qry.Fields[LoopInt].AsString)*15<=length(Column.Caption)*15 then
         Column.Width:=length(Column.Caption)*15;

      column.Visible:=True;
      Column.Options.Filtering:=False;
      Column.Options.Editing:=False;
    end;
  end;




end;

procedure TFrm_PlanWeekDetail.ToolButton2Click(Sender: TObject);
begin
  inherited;
  Act_Item.Execute;

end;

procedure TFrm_PlanWeekDetail.Sel_PTListPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  Mdata_PTList.Edit;
  Mdata_PTList.Post;
  If Mdata_PTList['FTeamName']=Null then
  begin
    Mdata_PTList.Edit;
    Mdata_PTList['FTeamName']:='';
    Mdata_PTList.Post;
  end;
  try
    qry.SQL.Text:='select * from T_Team with(nolock) where FDepartmentID=:FDepartmentID order by FTeamNumber,FWorkShop,FTeamName ';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Open;
  finally
   ;
  end;

  selValue:=select('选择生产班组','FTeamName','FWorkShop','FTeamName','FWorkShop;FTeamName',qry);
  If (Length(selValue)>0)  then
  begin
    Mdata_PTList.Edit;
    Mdata_PTList['FTeamID']:=qry.FieldByName('FTeamID').Value;
    Mdata_PTList['FTeamName']:=qry.FieldByName('FTeamName').Value;
    Mdata_PTList['FWorkShop']:=qry.FieldByName('FWorkShop').Value;
    Mdata_PTList.Post;
  end;


end;

procedure TFrm_PlanWeekDetail.CB_ISEditClick(Sender: TObject);
begin
  inherited;
  If P_state=1 then
  begin
    If CB_ISEdit.Checked=True then
       Act_Edit.Execute;
    If CB_ISEdit.Checked=False then
       Act_Edit_Edit.Execute;
    Act_Set_Open_M.Execute;
  end;
  CB_ISEdit.Visible:=False;

end;

procedure TFrm_PlanWeekDetail.Act_Edit_EditExecute(Sender: TObject);
var
 qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Select IsEdit=cast(0 as bit),* from  V_PlanWeekDetailList with(nolock) where FPlanWeekDetailID=:FPlanWeekDetailID '
                 +'order by FPlanWeekPartsNumber ';
    qry.Parameters.FindParam('FPlanWeekDetailID').Value:=Trim(Mdata_PTItem['FPlanWeekDetailID']);
    qry.Open;
  finally
     ;
  end;
  If qry.RecordCount>0 then
  begin
    MData_PTList.CopyFromDataSet(qry);
    MData_PTList.Active:=True;
    MData_PTList.First;
  end;
  qry.Free;
end;

procedure TFrm_PlanWeekDetail.FPlanWeekPartsAdd_PTListPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  MData_PTList.Edit;
  MData_PTList.Post;
  If MData_PTList['FPlanWeekPartsAdd']=Null then
  begin
    MData_PTList.Edit;
    MData_PTList['FPlanWeekPartsAdd']:='';
    MData_PTList.Post;
  end;
  try
    qry.SQL.Text:='select distinct FPlanWeekPartsAdd from  V_PlanWeekDetailList with(nolock) where FAgentID=:FAgentID and FPlanWeekPartsAdd like :FPlanWeekPartsAdd order by FPlanWeekPartsAdd ';
    qry.Parameters.FindParam('FAgentID').value:=UserFDepartmentID;
    qry.Parameters.FindParam('FPlanWeekPartsAdd').value:='%'+MData_PTList['FPlanWeekPartsAdd']+'%';
    qry.Open;
  finally
   ;
  end;

  selValue:=select('选择增补项','FPlanWeekPartsAdd','FPlanWeekPartsAdd','FPlanWeekPartsAdd','FPlanWeekPartsAdd',qry);
  If (Length(selValue)>0) then
  begin
    MData_PTList.Edit;
    MData_PTList['FPlanWeekPartsAdd']:=qry.FieldByName('FPlanWeekPartsAdd').Value;
    MData_PTList.Post;
  end;

end;

procedure TFrm_PlanWeekDetail.Act_AddRecordCountExecute(Sender: TObject);
Var
   I_index,P_FPlanWeekPartsID:Integer;
   P_FPlanWeekPartsAdd:string;
begin
  inherited;
  mData_PTList.First;
  P_FPlanWeekPartsID:=mData_PTList['FPlanWeekPartsID'];
  P_FPlanWeekPartsAdd:=mData_PTList['FPlanWeekPartsAdd'];
  while not mData_PTList.eof do
  begin
    I_index:=mData_PTList.RecNo ;
    If (mData_PTList['FPlanWeekPartsID']=P_FPlanWeekPartsID) and (mData_PTList['FPlanWeekPartsAdd']<>P_FPlanWeekPartsAdd) then
    begin
      If (I_index<mData_PTList.RecordCount) and (I_index<>-1) then
         mData_PTList.RecNo :=I_index
      else
        mData_PTList.Last;

      Messagedlg('存在重复的部件，可以用增补项区分。',mtInformation,[mbok],0);
      Exit;
    end;
    mData_PTList.Next;
  end;


end;

procedure TFrm_PlanWeekDetail.Act_CheckExecute(Sender: TObject);
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
    If application.MessageBox(Pchar('系统提示：是否对周报明细：'+P_List_PTList+'的单据进行校对？'+chr(13)+chr(13)
                                   +'确定要校对对本单据吗？'),'系统提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      MData_PTItem.First;
      while not MData_PTItem.eof do
      begin
        try
          qry.SQL.Text:='Update T_PlanWeekDetail Set FPlanWeekDetailStatus=2,FPlanWeekDetailSubmitDate=:FPlanWeekDetailSubmitDate '
                       +' where FPlanWeekDetailID=:FPlanWeekDetailID';
          qry.Parameters.FindParam('FPlanWeekDetailSubmitDate').value:= S_SyStemDate(qryDate);
          qry.Parameters.FindParam('FPlanWeekDetailID').value:=MData_PTItem['FPlanWeekDetailID'];
          qry.ExecSQL;
        finally
          ;
        end;
        MData_PTItem.Edit;
        MData_PTItem['FPlanWeekDetailStatus']:=2;
        MData_PTItem['FPlanWeekDetailStatusNotes']:='校对';
        MData_PTItem['FPlanWeekDetailSubmitDate']:=S_SyStemDate(qryDate);
        MData_PTItem.Post;
        MData_PTItem.Next;
      end;
      If MData_PTItem.RecordCount=1 then
      begin
        application.MessageBox('校对完毕！','系统提示',MB_ICONINFORMATION);
        TB_Check.Caption:='校对撤回';
      end;
      If MData_PTItem.RecordCount>1 then
      begin
        application.MessageBox('批量校对完毕！','系统提示',MB_ICONINFORMATION);
        TB_Check.Caption:='批量校对撤回';
      end;
      Act_Status_M.Execute;  //权限设置
    end;
    P_state:=2;
    Exit;
  end;
  If (TB_Check.Caption='校对撤回') or (TB_Check.Caption='批量校对撤回')  then
  begin
    If application.MessageBox(Pchar('系统提示：是否对周报明细：'+P_List_PTList+'的单据进行校对撤回？'+chr(13)+chr(13)
                                     +'确定要对本单据校对撤回吗？'),'系统提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      MData_PTItem.First;
      while not MData_PTItem.eof do
      begin
        try
          qry.SQL.Text:='Update T_PlanWeekDetail Set FPlanWeekDetailStatus=1,FPlanWeekDetailSubmitDate=:FPlanWeekDetailSubmitDate '
                       +'where FPlanWeekDetailID=:FPlanWeekDetailID';
          qry.Parameters.FindParam('FPlanWeekDetailSubmitDate').value:= Null;
          qry.Parameters.FindParam('FPlanWeekDetailID').value:= MData_PTItem['FPlanWeekDetailID'];
          qry.ExecSQL;
        finally
          ;
        end;
        MData_PTItem.Edit;
        MData_PTItem['FPlanWeekDetailStatus']:=1;
        MData_PTItem['FPlanWeekDetailStatusNotes']:='提交';
        MData_PTItem['FPlanWeekDetailSubmitDate']:=Null;
        MData_PTItem.Post;
        MData_PTItem.Next;
      end;
      If MData_PTItem.RecordCount=1 then
      begin
        application.MessageBox('校对撤回完毕！','系统提示',MB_ICONINFORMATION);
        TB_Check.Caption:='校对';
      end;
      If MData_PTItem.RecordCount>1 then
      begin
        application.MessageBox('批量校对撤回完毕！','系统提示',MB_ICONINFORMATION);
        TB_Check.Caption:='批量校对';
      end;
      Act_Status_M.Execute;  //权限设置
    end;
    P_state:=2;
    Exit;
  end;

end;

procedure TFrm_PlanWeekDetail.Act_SubmitExecute(Sender: TObject);
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
    If application.MessageBox(Pchar('系统提示：是否对周报明细：'+P_List_PTList+'的单据进行提交？'+chr(13)+chr(13)
                                   +'确定要提交对本单据吗？'),'系统提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      ShowPrograss('正在提交数据，请稍候……',self);
      MData_PTItem.First;
      while not MData_PTItem.eof do
      begin
        try
          qry.SQL.Text:='Update T_PlanWeekDetail Set FPlanWeekDetailStatus=1,FPlanWeekDetailSubmitDate=:FPlanWeekDetailSubmitDate  where FPlanWeekDetailID=:FPlanWeekDetailID';
          qry.Parameters.FindParam('FPlanWeekDetailSubmitDate').value:= S_SyStemDate(qryDate);
          qry.Parameters.FindParam('FPlanWeekDetailID').value:=MData_PTItem['FPlanWeekDetailID'];
          qry.ExecSQL;
        finally
          ;
        end;
        MData_PTItem.Edit;
        MData_PTItem['FPlanWeekDetailStatus']:=1;
        MData_PTItem['FPlanWeekDetailStatusNotes']:='提交';
        MData_PTItem['FPlanWeekDetailSubmitDate']:=S_SyStemDate(qryDate);
        MData_PTItem.Post;
        Act_PlanWeek_Update.Execute;//更新三个表数据 20161124

        //Act_PlanWeekList_Qry.Execute;  //重新计算生产周报的累计百分比  更新最大周累计未完成重量 20161124
        //Act_Plan_UpdateQry.Execute;//更新完工日期  20161124

        MData_PTItem.Next;
      end;
      If MData_PTItem.RecordCount=1 then
      begin
        application.MessageBox('提交完毕！','系统提示',MB_ICONINFORMATION);
        TB_Submit.Caption:='提交撤回';
      end;
      If MData_PTItem.RecordCount>1 then
      begin
        application.MessageBox('批量提交完毕！','系统提示',MB_ICONINFORMATION);
        TB_Submit.Caption:='批量提交撤回';
      end;
      Act_Status_M.Execute;  //权限设置

    end;
    P_state:=2;
    Exit;
  end;
  If (TB_Submit.Caption='提交撤回') or (TB_Submit.Caption='批量提交撤回')  then
  begin
    If application.MessageBox(Pchar('系统提示：是否对周报明细：'+P_List_PTList+'的单据进行提交撤回？'+chr(13)+chr(13)
                                     +'确定要对本单据提交撤回吗？'),'系统提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      ShowPrograss('正在提交撤回数据，请稍候……',self);
      MData_PTItem.First;
      while not MData_PTItem.eof do
      begin
        try
          qry.SQL.Text:='Update T_PlanWeekDetail Set FPlanWeekDetailStatus=0,FPlanWeekDetailSubmitDate=:FPlanWeekDetailSubmitDate where FPlanWeekDetailID=:FPlanWeekDetailID';
          qry.Parameters.FindParam('FPlanWeekDetailSubmitDate').value:= Null;
          qry.Parameters.FindParam('FPlanWeekDetailID').value:= MData_PTItem['FPlanWeekDetailID'];
          qry.ExecSQL;
        finally
          ;
        end;
        MData_PTItem.Edit;
        MData_PTItem['FPlanWeekDetailStatus']:=0;
        MData_PTItem['FPlanWeekDetailStatusNotes']:='填单';
        MData_PTItem['FPlanWeekDetailSubmitDate']:=Null;
        MData_PTItem.Post;
        Act_PlanWeek_Update.Execute;//更新三个表数据 20161124

        //Act_PlanWeekList_Qry.Execute;  //重新计算生产周报的累计百分比  更新最大周累计未完成重量20.161124
        //Act_Plan_UpdateQry.Execute;//更新完工日期    20161124
        MData_PTItem.Next;
      end;
      If MData_PTItem.RecordCount=1 then
      begin
        application.MessageBox('提交撤回完毕！','系统提示',MB_ICONINFORMATION);
        TB_Submit.Caption:='提交';
      end;
      If MData_PTItem.RecordCount>1 then
      begin
        application.MessageBox('批量提交撤回完毕！','系统提示',MB_ICONINFORMATION);
        TB_Submit.Caption:='批量提交';
      end;
      Act_Status_M.Execute;  //权限设置

  end;
    P_state:=2;
    Exit;
  end;


end;

procedure TFrm_PlanWeekDetail.TB_Edit_PackQryClick(Sender: TObject);
begin
  inherited;
  cxGV_PTList.OptionsData.Editing:=True;
  FMakeBOMPackQry_PTList.Options.Editing:=True;
  TB_Edit_PackQry.Visible:=False;

    //列颜色
  AFirstColumnStyle := TcxStyle.Create(Self);
  AFirstColumnStyle.Color := clMenu; //底色
  AFirstColumnStyle.TextColor := clBlue;        //字体颜色
  cxGV_PTList.Columns[FMakeBOMPackQry_PTList.Index].Styles.Content := AFirstColumnStyle;
  
end;

procedure TFrm_PlanWeekDetail.TB_Update_PackQryClick(Sender: TObject);
var
  IsEdit:bool;
  qry: TADOQuery;
  I_index:integer;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  I_index:=MData_PTList.RecNo ;
  MData_PTList.Edit;
  MData_PTList.Post;
  If ShowMsg('是否保存修改的箱件数？更新后不可恢复！','提示') then
  begin
    with MData_PTList do
    begin
      MData_PTList.DisableControls;
      First;
      try
        qry.SQL.Text:='Update T_PlanWeekDetailList set FMakeBOMPackQry=:FMakeBOMPackQry where FPlanWeekDetailListID=:FPlanWeekDetailListID';
        while not MData_PTList.EoF do
        begin
          IsEdit:=MData_PTList.FieldByName('IsEdit').AsBoolean;
          If IsEdit then
          begin
            qry.Parameters[0].Value:=MData_PTList['FMakeBOMPackQry'];
            qry.Parameters[1].Value:=MData_PTList['FPlanWeekDetailListID'];
            qry.ExecSQL;
          end;
          next;
        end;
      finally
        ;
      end;
    end;
    MData_PTList.EnableControls;
  end;

  If not MyItemList(qry,MData_PTList,'V_PlanWeekDetailList','FFullNumber',ListFNumber_PTList,'FFullNumber') then
  begin
    MData_PTList.Open;
   end;

  TB_update_PackQry.Visible:=False;
  If (I_index<MData_PTList.RecordCount) and (I_index<>-1) then
     MData_PTList.RecNo :=I_index
  else
     MData_PTList.Last;

   //列颜色
  AFirstColumnStyle := TcxStyle.Create(Self);
  AFirstColumnStyle.Color := clWindow; //底色
  AFirstColumnStyle.TextColor := clWindowText;        //字体颜色

  cxGV_PTList.Columns[FMakeBOMPackQry_PTList.Index].Styles.Content := AFirstColumnStyle;

  cxGV_PTList.OptionsData.Editing:=False;
end;

procedure TFrm_PlanWeekDetail.MData_PTListAfterEdit(DataSet: TDataSet);
begin
  inherited;
  DataSet['IsEdit']:=True;
  TB_update_PackQry.Visible:=mdlData.PermissionCheckRights(TFrm_PlanWeekDetail.ClassName,'审核');

end;

procedure TFrm_PlanWeekDetail.Act_Plan_UpdateQryExecute(Sender: TObject);
Var
   proc:TADOStoredProc;
begin
  inherited;
  proc:=TADOStoredProc.Create(self);
  proc.ConnectionString:=mdlData.ReadConnStr;
  proc.CommandTimeout:=500;
  try
    proc.ProcedureName:='P_Plan_UpdateQry;1';
    with proc.Parameters.AddParameter do
    begin
      DataType := ftInteger;
      Direction := pdinput;
      size:=20;
      name := '@FFileItemID';
      value:=MData_PTItem['FFileItemID'];
    end;
    proc.ExecProc;
  finally
   ;
  end;
  proc.Free;

end;

procedure TFrm_PlanWeekDetail.PC_2Change(Sender: TObject);
var
  qry: TADOQuery;
   AFirstColumnStyle: TcxStyle;
begin
  inherited;
  //列颜色
  AFirstColumnStyle := TcxStyle.Create(Self);
  AFirstColumnStyle.Color := clAqua;
  AFirstColumnStyle.TextColor := clBlue;
  cxGV_PlanWeekDetail_Add.Columns[7].Styles.Content := AFirstColumnStyle;

  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If PC_2.ActivePage=TS_PlanWeekDetail_Add then
  begin
    try
      If UserFDepartmentsort=1 then //事业部
      begin
        qry.SQL.Text:='select * from  V_PlanTaskList where isnull(FMakeWet,0)=0 and FDepartmentID=:FDepartmentID and FpartsSort=''本体'' order by FAgentID,FCarryOut,FFullNumber';
        qry.Parameters.FindParam('FDepartmentID').value:= UserFDepartmentID;
      end;
      If (UserFDepartmentsort=2) or (UserFDepartmentsort=4) then //子公司  外协点
      begin
        qry.SQL.Text:='select * from  V_PlanTaskList where isnull(FMakeWet,0)=0 and FAgentID=:FAgentID order by FCarryOut,FFullNumber';
        qry.Parameters.FindParam('FAgentID').value:= UserFDepartmentID;
      end;
      qry.Open;
    finally
      ;
    end;
    MData_PlanWeekDetail_Add.CopyFromDataSet(qry);
    MData_PlanWeekDetail_Add.Active:=True;
  end;
end;

procedure TFrm_PlanWeekDetail.cxGrid_PlanWeekDetail_AddContextPopup(
  Sender: TObject; MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV_PlanWeekDetail_Add';
  Gm:='mdata_PlanWeekDetail_Add';
  Gr:='cxGrid_PlanWeekDetail_Add';
  Act_Menu_Set.Execute;
end;

procedure TFrm_PlanWeekDetail.Act_PlanWeekList_QryExecute(Sender: TObject);
var
  proc:TADOStoredProc;
begin
  proc:=TADOStoredProc.Create(self);
  proc.ConnectionString:=mdlData.ReadConnStr;
  proc.CommandTimeout:=500;
  try
    proc.ProcedureName:='[P_PlanWeekList_Qry];1';
    with proc.Parameters.AddParameter do
    begin
      DataType := ftInteger;
      Direction := pdinput;
      name := '@FAgentID1';
      value:=UserFDepartmentID;
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftInteger;
      Direction := pdinput;
      name := '@FFileItemID';
      value:=MData_PTItem['FFileItemID'];
    end;
    proc.ExecProc;
  finally
     ;
  end;

  Proc.Free;

end;

procedure TFrm_PlanWeekDetail.Act_Update_QryExecute(Sender: TObject);
Var
   proc:TADOStoredProc;
begin
  inherited;
  proc:=TADOStoredProc.Create(self);
  proc.ConnectionString:=mdlData.ReadConnStr;
  proc.CommandTimeout:=500;
  try
    proc.ProcedureName:='P_PlanWeek_UpdateQry;1';
    with proc.Parameters.AddParameter do
    begin
      DataType := ftInteger;
      Direction := pdinput;
      size:=20;
      name := '@FFileItemID';
      value:=MData_PTItem['FFileItemID'];
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftInteger;
      Direction := pdinput;
      size:=20;
      name := '@FAgentID';
      value:=UserFDepartmentID;
    end;
    proc.ExecProc;
  finally
    ;
  end;
  proc.Free;

end;

procedure TFrm_PlanWeekDetail.Act_PlanWeekExecute(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  PC_Ship.ActivePage:=TS_PlanTask;
  PC_2.ActivePage:=Ts_PlanWeekList;
  try
     qry.SQL.Text:='Select * from V_PlanWeekList where FFileItemID=:FFileItemID and FPlanPartsID=:FPlanPartsID order by FPlanYearWeek';
     qry.Parameters.FindParam('FFileItemID').value:= mdata_PlanTask['FFileItemID'];
     qry.Parameters.FindParam('FPlanPartsID').value:= mdata_PlanTask['FPlanPartsID'];
     qry.Open;
  finally
     ;
  end;
  MData_PlanWeek.CopyFromDataSet(qry);
  MData_PlanWeek.Active:=True;

end;

procedure TFrm_PlanWeekDetail.Act_PlanWeekListExecute(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  PC_Ship.ActivePage:=TS_PlanTask;
  PC_2.ActivePage:=Ts_PlanWeekList;
  try
     qry.SQL.Text:='Select * from V_PlanWeekList where FFileItemID=:FFileItemID and FPlanPartsID=:FPlanPartsID order by FPlanYearWeek';
     qry.Parameters.FindParam('FFileItemID').value:= MData_PTList['FFileItemID'];
     qry.Parameters.FindParam('FPlanPartsID').value:= MData_PTList['FPlanPartsID'];
     qry.Open;
  finally
     ;
  end;
  MData_PlanWeek.CopyFromDataSet(qry);
  MData_PlanWeek.Active:=True;


end;

procedure TFrm_PlanWeekDetail.cxGrid_TrackContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV_Track';
  Gm:='mdata_Track';
  Gr:='cxGrid_Track';
  Act_Menu_Set.Execute;

end;

procedure TFrm_PlanWeekDetail.cxGrid_PlanWeekContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV_PlanWeek';
  Gm:='mdata_PlanWeek';
  Gr:='cxGrid_PlanWeek';
  Act_Menu_Set.Execute;

end;

procedure TFrm_PlanWeekDetail.cxGrid_PlanTaskContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV_PlanTask';
  Gm:='mdata_PlanTask';
  Gr:='cxGrid_PlanTask';
  Act_Menu_Set.Execute;

end;

procedure TFrm_PlanWeekDetail.cxGrid_ViewContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV_View';
  Gm:='mdata_View';
  Gr:='cxGrid_View';
  Act_Menu_Set.Execute;
end;

procedure TFrm_PlanWeekDetail.cxGrid_QryContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV_Qry';
  Gm:='mdata_Qry';
  Gr:='cxGrid_Qry';
  Act_Menu_Set.Execute;
end;

procedure TFrm_PlanWeekDetail.TB_Check_AutoClick(Sender: TObject);
var  qry,qry1:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry1:=TAdoQuery.Create(self);
  qry1.ConnectionString:=mdlData.ReadConnStr;
  If application.MessageBox(Pchar('系统提示：是否自动校对周报明细？'),'系统提示',MB_ICONINFORMATION+MB_YESNO)<>6 then
     Exit;

  try
    qry.SQL.Text:='Select distinct FBranchItemNumber,FFileItemID,FPlanWeekDetailID from V_PlanWeekDetailList where FAgentID=:FAgentID1 and FPlanWeekDetailstatus=1 '
                 +' and FMakePartsPercent=100 and FShipPartsPercent=100 and FFileItemID not in '
                 +' (select distinct FFileItemID  from V_PlanWeekDetailList where FAgentID=:FAgentID2 and FPlanWeekDetailstatus=1 and (FMakePartsPercent<>100 or FShipPartsPercent<>100) )';
    qry.Parameters.FindParam('FAgentID1').value:=UserFDepartmentID;
    qry.Parameters.FindParam('FAgentID2').value:=UserFDepartmentID;
    qry.Open;
  finally
    ;
  end;
  If qry.RecordCount>0 then
  begin
    qry.First;
    while not qry.Eof do
    begin
      try
        qry1.SQL.Text:='Update T_PlanWeekDetail Set FPlanWeekDetailstatus=2,FPlanWeekDetailCheckDate=getdate()  where FPlanWeekDetailID=:FPlanWeekDetailID ';
        qry1.Parameters.FindParam('FPlanWeekDetailID').value:=qry.FieldByName('FPlanWeekDetailID').Value;
        qry1.ExecSQL;
      finally
        ;
      end;
      qry.Next;
    end;
   // application.MessageBox('自动校对周报明细完毕！','系统提示',MB_ICONINFORMATION);
  end;
  try
    qry.SQL.Text:='Select distinct FBranchItemNumber,FFileItemID,FPlanWeekDetailID from V_PlanWeekDetailList where FAgentID=:FAgentID1 and FPlanWeekDetailstatus=2 '
                 +' and (FMakePartsPercent<>100 or FShipPartsPercent<>100)';
    qry.Parameters.FindParam('FAgentID1').value:=UserFDepartmentID;
    qry.Open;
  finally
    ;
  end;
  If qry.RecordCount>0 then
  begin
    qry.First;
    while not qry.Eof do
    begin
      try
        qry1.SQL.Text:='Update T_PlanWeekDetail Set FPlanWeekDetailstatus=1,FPlanWeekDetailSubmitDate=getdate() where FPlanWeekDetailID=:FPlanWeekDetailID ';
        qry1.Parameters.FindParam('FPlanWeekDetailID').value:=qry.FieldByName('FPlanWeekDetailID').Value;
        qry1.ExecSQL;
      finally
        ;
      end;
      qry.Next;
    end;
    //application.MessageBox('自动校对周报明细完毕！','系统提示',MB_ICONINFORMATION);
  end;
  application.MessageBox('自动校对周报明细完毕！','系统提示',MB_ICONINFORMATION);

end;

procedure TFrm_PlanWeekDetail.TB_Qry_CountClick(Sender: TObject);
var  s1,s2:Ttime;
    a:string;
begin
  inherited;
  s1:=now();

  P_state:=3;
  MData_PTList.Close;
  MData_PTItem.First;
  while not MData_PTItem.eof do
  begin
    Act_PlanWeek_Update.Execute;//更新三个表数据 20161124
    //Act_PlanWeekList_Qry.Execute;  //计算生产周报的累计百分比  更新最大周累计未完成重量  20161124
    //Act_Plan_UpdateQry.Execute;//更新完工日期  20161124
    MData_PTItem.Next;
  end;
  s2:=now();
  a:=FormatDateTime('hh:mm:ss',s2-s1);
  Messagedlg('提示信息：计算完毕！所用时间：【'+a+'】',mtInformation,[mbok],0);
  P_state:=2;
end;

procedure TFrm_PlanWeekDetail.Act_PlanWeek_UpdateExecute(Sender: TObject);
Var
   proc:TADOStoredProc;
begin
  inherited;
  proc:=TADOStoredProc.Create(self);
  proc.ConnectionString:=mdlData.ReadConnStr;
  proc.CommandTimeout:=500;
  ShowPrograss('正在更新汇总数据，请稍候……',self);
  try
    proc.ProcedureName:='P_PlanWeek_Update;1';
     with proc.Parameters.AddParameter do
     begin
       DataType := ftInteger;
       Direction := pdinput;
       size:=20;
       name := '@FFileItemID';
       value:=MData_PTItem['FFileItemID'];
     end;
     proc.ExecProc;
   finally
     ;
   end;
   proc.Free;


end;

end.


