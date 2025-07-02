unit Main_PlanTaskItem;

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
  TFlatPanelUnit,Comobj,Excel97, cxLookAndFeelPainters, cxSpinEdit, RzStatus,
  ActnList, RzLabel, cxButtons,// cxLookAndFeelPainters,   cxButtons,  cxSpinEdit,  RzLabel, ActnList, RzStatus
  cxTimeEdit, jpeg,
  cxCheckComboBox, cxGridBandedTableView, cxGridDBBandedTableView, DBTables,
  Menus;

type
  TFrm_PlanTaskItem = class(TFrm_GridBass)
    ImageList: TImageList;
    frReport: TfrReport;
    frDBDataSet: TfrDBDataSet;
    PC_Main: TRzPageControl;
    TS_Task: TRzTabSheet;
    PanelBkGnd: TPanel;
    Panel7: TPanel;
    RSP_CList: TRzSizePanel;
    Image2: TImage;
    Label1: TLabel;
    ToolBar_HItem: TToolBar;
    TB_App: TToolButton;
    TB_Del: TToolButton;
    TB_Ref_Ship: TToolButton;
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
    TB_PlanTaskList: TToolButton;
    Act_Status_M: TAction;
    RzSP_PTitem: TRzSizePanel;
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
    FPlanTaskItemNum_PTItem: TcxGridDBColumn;
    FFactoryNum_PTItem: TcxGridDBColumn;
    FPlanTaskRemark_PTItem: TcxGridDBColumn;
    FPlanTaskItemDate_PTItem: TcxGridDBColumn;
    FBranchFileNo_PTItem: TcxGridDBColumn;
    FBranchItemNumber_PTItem: TcxGridDBColumn;
    FClientFullName_PTItem: TcxGridDBColumn;
    FClientShortName_PTItem: TcxGridDBColumn;
    FProductName_PTItem: TcxGridDBColumn;
    FItemModel_PTItem: TcxGridDBColumn;
    FPlanTaskStatus_PTItem: TcxGridDBColumn;
    FPlanTaskStatusNotes: TcxGridDBColumn;
    FPlanTaskWrite_PTItem: TcxGridDBColumn;
    FPlanTaskWriteDate_PTItem: TcxGridDBColumn;
    FPlanTaskSubmitDate_PTItem: TcxGridDBColumn;
    cxGL_PTItem: TcxGridLevel;
    MyTreeView_PTItem: TTreeView;
    PopupMenu1: TPopupMenu;
    Act_MaxID: TAction;
    FPlanTask_PTItem: TcxGridDBColumn;
    FPlanTaskCheck_PTItem: TcxGridDBColumn;
    Act_Sel: TAction;
    FFileItemID_PTItem: TcxGridDBColumn;
    FProductID_PTItem: TcxGridDBColumn;
    FDeliveryDate_PTItem: TcxGridDBColumn;
    FPactFinishDate_PTItem: TcxGridDBColumn;
    TB_View: TToolButton;
    Act_Edit: TAction;
    TB_Track: TToolButton;
    FPlanner_PTItem: TcxGridDBColumn;
    FArea_PTItem: TcxGridDBColumn;
    FESPWet_PTItem: TcxGridDBColumn;
    FFinshESPWet_PTItem: TcxGridDBColumn;
    FFinshESPPercent_PTItem: TcxGridDBColumn;
    FItemNumber_PTItem: TcxGridDBColumn;
    PC_Tack: TRzPageControl;
    TS_PlanTask: TRzTabSheet;
    Panel1: TPanel;
    TS_Track: TRzTabSheet;
    TS_PlanWeekDetail_Add: TRzTabSheet;
    cxGrid_PTList: TcxGrid;
    cxGV_PTList: TcxGridDBTableView;
    FBranchItemNumber_PTList: TcxGridDBColumn;
    FPartsNumber_PTList: TcxGridDBColumn;
    FPartsCode_PTList: TcxGridDBColumn;
    FPlanPartsName_PTList: TcxGridDBColumn;
    FPlanWet_PTList: TcxGridDBColumn;
    FAgentShortName_PTList: TcxGridDBColumn;
    sel_Agent: TcxGridDBColumn;
    FFinishDate_PTList: TcxGridDBColumn;
    FFinishDateTxt_PTList: TcxGridDBColumn;
    FFinishDateShow_PTList: TcxGridDBColumn;
    FPlanDate_PTList: TcxGridDBColumn;
    FPlanDateTxt_PTList: TcxGridDBColumn;
    FPlanDateShow_PTList: TcxGridDBColumn;
    FPlanTaskListRemark_PTList: TcxGridDBColumn;
    FPlanDrawDate_PTList: TcxGridDBColumn;
    FRealDrawDate_PTList: TcxGridDBColumn;
    FPlanaPartsPrice_PTList: TcxGridDBColumn;
    FAgentID_PTList: TcxGridDBColumn;
    FPlanPartsNum_PTList: TcxGridDBColumn;
    FPlanPartsID_PTList: TcxGridDBColumn;
    FPlanTaskListID_PTList: TcxGridDBColumn;
    cxGL_PTList: TcxGridLevel;
    P_Btn: TPanel;
    CancelBtn_M: TcxButton;
    OKBtn_M: TcxButton;
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
    TB_Plan: TToolButton;
    FPlanTaskItemID_PTItem: TcxGridDBColumn;
    FPlanWet_Track: TcxGridDBColumn;
    CB_ISEdit: TCheckBox;
    Act_Edit_Edit: TAction;
    Act_FPlanPartsPrice: TAction;
    Button1: TButton;
    Button2: TButton;
    Act_FPlanPartsPrice_3: TAction;
    FPackFinshQry_Track: TcxGridDBColumn;
    FShipFinshQry_Track: TcxGridDBColumn;
    FESPPackQry_PTItem: TcxGridDBColumn;
    FFinshESPPackQry_PTItem: TcxGridDBColumn;
    FFinshESPShipQry_PTItem: TcxGridDBColumn;
    FPlanPackQry_Track: TcxGridDBColumn;
    FPlanPartsSort_PTList: TcxGridDBColumn;
    FPartsSort_PTList: TcxGridDBColumn;
    TS_PlanWeek: TRzTabSheet;
    cxGrid_Qry: TcxGrid;
    cxGV_Qry: TcxGridDBTableView;
    cxGL_Qry: TcxGridLevel;
    Panel2: TPanel;
    Label7: TLabel;
    CB_Wet: TcxComboBox;
    MData_Qry: TdxMemData;
    DS_Mdata_Qry: TDataSource;
    Act_Item_PlanWeekDate: TAction;
    Edit1: TEdit;
    CB_Date: TcxComboBox;
    Act_Item_PlanWeekDateMonth: TAction;
    Act_Plan_UpdateQry: TAction;
    FFinshESPShipWet_PTItem: TcxGridDBColumn;
    FFinshESPShipPercent_PTItem: TcxGridDBColumn;
    FPartsSort_Track: TcxGridDBColumn;
    FPlanPartsSort_Track: TcxGridDBColumn;
    FStockPartsWet_Track: TcxGridDBColumn;
    Act_Update_StockPartsWet: TAction;
    TB_StockPartsWet: TToolButton;
    cxGrid_PlanWeekDetail_Add: TcxGrid;
    cxGV_PlanWeekDetail_Add: TcxGridDBTableView;
    FCarryOut_PlanWeekDetail_Add: TcxGridDBColumn;
    FBranchItemNumber_PlanWeekDetail_Add: TcxGridDBColumn;
    FClientShortName_PlanWeekDetail_Add: TcxGridDBColumn;
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
    MData_PlanWeekDetail_Add: TdxMemData;
    DS_MData_PlanWeekDetail_Add: TDataSource;
    FFrameWet_PTItem: TcxGridDBColumn;
    FPlanDate_Track: TcxGridDBColumn;
    TS_Error: TRzTabSheet;
    cxGrid_Error: TcxGrid;
    cxGV_Error: TcxGridDBTableView;
    FBranchItemNumber_Error: TcxGridDBColumn;
    FClientShortName_Error: TcxGridDBColumn;
    FPlanYearWeek: TcxGridDBColumn;
    FPlanWeekPartsName_Error: TcxGridDBColumn;
    FPlanWeekPartsAdd_Error: TcxGridDBColumn;
    FMakeBOMWet_Error: TcxGridDBColumn;
    FLastMakePercent_Error: TcxGridDBColumn;
    FTotalMakePercent_Error: TcxGridDBColumn;
    FMakePercent_Error: TcxGridDBColumn;
    FLastShipPercent_Error: TcxGridDBColumn;
    FShipPercent_Error: TcxGridDBColumn;
    FProportion_Error: TcxGridDBColumn;
    FTotalShipPercent_Error: TcxGridDBColumn;
    FMakeBOMPackQry_Error: TcxGridDBColumn;
    FLastPackQry_Error: TcxGridDBColumn;
    FPackQry_Error: TcxGridDBColumn;
    FTotalPackQry_Error: TcxGridDBColumn;
    FLastShipQry_Error: TcxGridDBColumn;
    FShipQry_Error: TcxGridDBColumn;
    FTotalShipQry_Error: TcxGridDBColumn;
    FPlanWeekPack_Error: TcxGridDBColumn;
    FWorkShop_Error: TcxGridDBColumn;
    FTeamName_Error: TcxGridDBColumn;
    FAgentShortName_Error: TcxGridDBColumn;
    FPlanPartsName_Error: TcxGridDBColumn;
    FPartsCode_Error: TcxGridDBColumn;
    FTeamID_Error: TcxGridDBColumn;
    FAgentID_Error: TcxGridDBColumn;
    FPlanWeekPartsID_Error: TcxGridDBColumn;
    FPlanWeekListID_Error: TcxGridDBColumn;
    cxGL_Error: TcxGridLevel;
    MData_Error: TdxMemData;
    StringField52: TStringField;
    StringField53: TStringField;
    StringField54: TStringField;
    StringField55: TStringField;
    StringField56: TStringField;
    StringField57: TStringField;
    StringField58: TStringField;
    StringField59: TStringField;
    StringField60: TStringField;
    StringField61: TStringField;
    StringField62: TStringField;
    FloatField19: TFloatField;
    FloatField20: TFloatField;
    FloatField21: TFloatField;
    StringField63: TStringField;
    StringField64: TStringField;
    StringField65: TStringField;
    StringField66: TStringField;
    StringField67: TStringField;
    StringField68: TStringField;
    IntegerField4: TIntegerField;
    FloatField22: TFloatField;
    FloatField23: TFloatField;
    FloatField24: TFloatField;
    DS_Mdata_Error: TDataSource;
    FNot_MakeFinshWet_Track: TcxGridDBColumn;
    FNot_MakeFinshPercent_Track: TcxGridDBColumn;
    TS_PlanWeek_Week: TRzTabSheet;
    cxGrid_PlanWeek_Week: TcxGrid;
    cxGV_PlanWeek_Week: TcxGridDBTableView;
    FName_PlanWeek_Week: TcxGridDBColumn;
    FBranchItemNumber_PlanWeek_Week: TcxGridDBColumn;
    FAgentShortName_PlanWeek_Week: TcxGridDBColumn;
    cxGL_PlanWeek_Week: TcxGridLevel;
    DS_Mdata_PlanWeek_Week: TDataSource;
    Mdata_PlanWeek_Week: TdxMemData;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    StringField12: TStringField;
    StringField13: TStringField;
    StringField14: TStringField;
    StringField15: TStringField;
    StringField16: TStringField;
    StringField17: TStringField;
    IntegerField1: TIntegerField;
    FloatField4: TFloatField;
    FloatField5: TFloatField;
    FloatField6: TFloatField;
    Panel3: TPanel;
    Label2: TLabel;
    E_FPlanYearWeek: TcxButtonEdit;
    TS_PlanWeekList: TRzTabSheet;
    cxGrid_PlanWeek: TcxGrid;
    cxGV_PlanWeek: TcxGridDBTableView;
    FAgentShortName_PlanWeek: TcxGridDBColumn;
    FPlanYearWeek_PlanWeek: TcxGridDBColumn;
    FPlanWeekPartsName_PlanWeek: TcxGridDBColumn;
    FPlanWeekPartsAdd_PlanWeek: TcxGridDBColumn;
    FMakeBOMWet_PlanWeek: TcxGridDBColumn;
    FLastMakePercent_PlanWeek: TcxGridDBColumn;
    FLastMakePercentWet_PlanWeek: TcxGridDBColumn;
    FMakePercent_PlanWeek: TcxGridDBColumn;
    FMakePercentWet_PlanWeek: TcxGridDBColumn;
    FTotalMakePercent_PlanWeek: TcxGridDBColumn;
    FTotalMakePercentWet_PlanWeek: TcxGridDBColumn;
    FMax_TotalMakePercentWet_PlanWeek: TcxGridDBColumn;
    FMax_not_TotalMakePercentWet_PlanWeek: TcxGridDBColumn;
    FLastShipPercent_PlanWeek: TcxGridDBColumn;
    FLastShipPercentWet_PlanWeek: TcxGridDBColumn;
    FShipPercent_PlanWeek: TcxGridDBColumn;
    FShipPercentWet_PlanWeek: TcxGridDBColumn;
    FTotalShipPercent_PlanWeek: TcxGridDBColumn;
    FTotalShipPercentWet_PlanWeek: TcxGridDBColumn;
    FMakeBOMPackQry_PlanWeek: TcxGridDBColumn;
    FLastPackQry_PlanWeek: TcxGridDBColumn;
    FPackQry_PlanWeek: TcxGridDBColumn;
    FTotalPackQry_PlanWeek: TcxGridDBColumn;
    FLastShipQry_PlanWeek: TcxGridDBColumn;
    FShipQry_PlanWeek: TcxGridDBColumn;
    FTotalShipQry_PlanWeek: TcxGridDBColumn;
    FPlanWeekPack_PlanWeek: TcxGridDBColumn;
    FWorkShop_PlanWeek: TcxGridDBColumn;
    FTeamName_PlanWeek: TcxGridDBColumn;
    FPlanPartsName_PlanWeek: TcxGridDBColumn;
    FPartsCode_PlanWeek: TcxGridDBColumn;
    FTeamID_PlanWeek: TcxGridDBColumn;
    FAgentID_PlanWeek: TcxGridDBColumn;
    FPlanWeekPartsID_PlanWeek: TcxGridDBColumn;
    FPlanWeekListID_PlanWeek: TcxGridDBColumn;
    cxGL_PlanWeek: TcxGridLevel;
    DS_Mdata_PlanWeek: TDataSource;
    MData_PlanWeek: TdxMemData;
    Act_PlanWeek: TAction;
    FTJWet_Track: TcxGridDBColumn;
    E_FPlanYearMonth: TcxButtonEdit;
    FItemPlanDate_PlanWeek_Week: TcxGridDBColumn;
    FNot_TJWet_Track: TcxGridDBColumn;
    PC_Task: TPageControl;
    TS_Write: TTabSheet;
    TS_Item: TTabSheet;
    Act_PlanWeek_Update: TAction;
    TB_Qry_Count: TToolButton;
    Ac_PlanWeekDetail: TAction;
    TS_PlanDate: TRzTabSheet;
    cxGrid_PlanDate: TcxGrid;
    cxGV_PlanDate: TcxGridDBTableView;
    FBranchItemNumber_PlanDate: TcxGridDBColumn;
    FPartsCode_PlanDate: TcxGridDBColumn;
    FPlanPartsName_PlanDate: TcxGridDBColumn;
    FAgentShortName_PlanDate: TcxGridDBColumn;
    FStockPartsWet_PlanDate: TcxGridDBColumn;
    FPlanWet_PlanDate: TcxGridDBColumn;
    FMakeWet_PlanDate: TcxGridDBColumn;
    FTJWet_PlanDate: TcxGridDBColumn;
    FMakeFinshWet_PlanDate: TcxGridDBColumn;
    FMakeFinshPercent_PlanDate: TcxGridDBColumn;
    FNot_MakeFinshWet_PlanDate: TcxGridDBColumn;
    FNot_MakeFinshPercent_PlanDate: TcxGridDBColumn;
    FNot_TJWet_PlanDate: TcxGridDBColumn;
    FShipFinshWet_PlanDate: TcxGridDBColumn;
    FShipFinshPercent_PlanDate: TcxGridDBColumn;
    FPlanPackQry_PlanDate: TcxGridDBColumn;
    FPackFinshQry_PlanDate: TcxGridDBColumn;
    FShipFinshQry_PlanDate: TcxGridDBColumn;
    FFinishDateShow_PlanDate: TcxGridDBColumn;
    FPlanDate_PlanDate: TcxGridDBColumn;
    FPlanDateShow_PlanDate: TcxGridDBColumn;
    FMakeFinshDate_PlanDate: TcxGridDBColumn;
    FShipFinshDate_PlanDate: TcxGridDBColumn;
    FPartsSort_PlanDate: TcxGridDBColumn;
    FPlanPartsSort_PlanDate: TcxGridDBColumn;
    cxGL_PlanDate: TcxGridLevel;
    MData_PlanDate: TdxMemData;
    DS_Mdata_PlanDate: TDataSource;
    FPlanTaskWrite_PlanDate: TcxGridDBColumn;
    FPlanaPartsPrice_Track: TcxGridDBColumn;
    FPlanDateYearMonth_Track: TcxGridDBColumn;
    FDesignWet_Track: TcxGridDBColumn;
    Act_Update_DesignWet: TAction;
    FDesignWet_PTList: TcxGridDBColumn;
    Act_Pick_DesignWet: TAction;
    Button3: TButton;
    Panel5: TPanel;
    Label11: TLabel;
    E_Locate: TcxButtonEdit;
    procedure FormResize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TB_EXITClick(Sender: TObject);
    procedure TB_AppClick(Sender: TObject);
    procedure TB_DelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure MyTreeView_PTItemExpanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure MyTreeView_PTItemChange(Sender: TObject; Node: TTreeNode);
    procedure TB_Ref_ShipClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure OKBtn_MClick(Sender: TObject);
    procedure TB_Edit_MClick(Sender: TObject);
    procedure CancelBtn_MClick(Sender: TObject);
    procedure TB_SubmitClick(Sender: TObject);
    procedure TB_CheckClick(Sender: TObject);
    procedure Act_Status_MExecute(Sender: TObject);
    procedure SelCancelBtnClick(Sender: TObject);
    procedure PC_CheckChange(Sender: TObject);
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
    procedure TB_PlanTaskListClick(Sender: TObject);
    procedure Act_SelExecute(Sender: TObject);
    procedure cxGV_HItemFocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure FAgentName_PTListPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FAgentName_PTListPropertiesEditValueChanged(Sender: TObject);
    procedure FAgentShortName_PTListHeaderClick(Sender: TObject);
    procedure FPlanaPartsPrice_PTListHeaderClick(Sender: TObject);
    procedure FPlanDrawDate_PTListHeaderClick(Sender: TObject);
    procedure FRealDrawDate_PTListHeaderClick(Sender: TObject);
    procedure FFinishDate_PTListHeaderClick(Sender: TObject);
    procedure TB_ViewClick(Sender: TObject);
    procedure sel_AgentPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure Act_EditExecute(Sender: TObject);
    procedure FPlanDate_PTListHeaderClick(Sender: TObject);
    procedure FPlanPartsName_PTListPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxGrid_PTListContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure cxGrid_PTItemContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure TB_TrackClick(Sender: TObject);
    procedure FPlanFinishDateTxt_PTListPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure FPlanPlanDateTxt_PTListPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FPlanTaskListRemark_PTListPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure cxGV_TrackCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure TB_PlanClick(Sender: TObject);
    procedure FPlanaPartsPrice_PTListPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure CB_ISEditClick(Sender: TObject);
    procedure Act_Edit_EditExecute(Sender: TObject);
    procedure Act_FPlanPartsPriceExecute(Sender: TObject);
    procedure Act_FPlanPartsPrice_3Execute(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Act_Item_PlanWeekDateExecute(Sender: TObject);
    procedure CB_WetPropertiesChange(Sender: TObject);
    procedure Act_Item_PlanWeekDateMonthExecute(Sender: TObject);
    procedure CB_DatePropertiesChange(Sender: TObject);
    procedure Act_Plan_UpdateQryExecute(Sender: TObject);
    procedure cxGrid_QryContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure Act_Update_StockPartsWetExecute(Sender: TObject);
    procedure TB_StockPartsWetClick(Sender: TObject);
    procedure cxGrid_TrackContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure PC_TackChange(Sender: TObject);
    procedure cxGrid_PlanWeekDetail_AddContextPopup(Sender: TObject;
      MousePos: TPoint; var Handled: Boolean);
    procedure E_FPlanYearWeekPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxGrid_PlanWeek_WeekContextPopup(Sender: TObject;
      MousePos: TPoint; var Handled: Boolean);
    procedure Act_PlanWeekExecute(Sender: TObject);
    procedure PC_TaskChange(Sender: TObject);
    procedure cxGV_PTItemCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure Act_PlanWeek_UpdateExecute(Sender: TObject);
    procedure TB_Qry_CountClick(Sender: TObject);
    procedure Ac_PlanWeekDetailExecute(Sender: TObject);
    procedure cxGrid_PlanDateContextPopup(Sender: TObject;
      MousePos: TPoint; var Handled: Boolean);
    procedure cxGV_PlanDateCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure PC_TackContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure Act_Update_DesignWetExecute(Sender: TObject);
    procedure Act_Pick_DesignWetExecute(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure E_LocatePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    P_List,P_Wet:String;
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

    { Public declarations }
  end;

var
  Frm_PlanTaskItem: TFrm_PlanTaskItem;


implementation

uses FRMDATA,  COMMON, FrmSelect, ProgBar, PROGRASS, Main_Ship;

{$R *.dfm}



function TFrm_PlanTaskItem.DelRd: bool;
var
 qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Delete from T_PlanTaskItem where FPlanTaskItemID=:FPlanTaskItemID';
    qry.Parameters.FindParam('FPlanTaskItemID').value:=MData_PTItem['FPlanTaskItemID'];
    result:=qry.ExecSQL>=0;
  finally
    ;
  end;
  qry.Free;
end;


function TFrm_PlanTaskItem.AddMain: bool;
var
 qry,qryDate: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qryDate:=TADOQuery.Create(Self);
  qryDate.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Insert into T_PlanTaskItem(FPlanTaskItemID,FFileItemID,FPlanTaskItemNum,FPlanTaskItemDate,'
                 +'FArrivaPlace,FPlanTaskRemark,FPlanTaskStatus,FPlanTaskWriteID,FPlanTaskWriteDate ) '
                 +'values(:FPlanTaskItemID,:FFileItemID,:FPlanTaskItemNum,:FPlanTaskItemDate,'
                 +':FArrivaPlace,:FPlanTaskRemark,:FPlanTaskStatus,:FPlanTaskWriteID,:FPlanTaskWriteDate )';
    with qry.Parameters do
    begin
       FindParam('FPlanTaskItemID').value:=P_MaxID;
       FindParam('FFileItemID').value:=mData_PTItem['FFileItemID'];
       FindParam('FPlanTaskItemNum').value:=mData_PTItem['FPlanTaskItemNum'];
       FindParam('FPlanTaskItemDate').value:=mData_PTItem['FPlanTaskItemDate'];
       FindParam('FArrivaPlace').value:=mData_PTItem['FArrivaPlace'];
       FindParam('FPlanTaskRemark').value:=mData_PTItem['FPlanTaskRemark'];
       FindParam('FPlanTaskStatus').value:=0;
       FindParam('FPlanTaskWriteID').value:=UserNumID;
       FindParam('FPlanTaskWriteDate').value:=S_SyStemDate(qryDate);
     end;
     result:=qry.ExecSQL>=1;
  finally
     ;
  end;
  mData_PTItem.Edit;
  mData_PTItem['FPlanTaskStatus']:=0;
  MData_PTItem['FPlanTaskStatusNotes']:='�';
  mData_PTItem['FPlanTaskItemID']:=P_MaxID;
  mData_PTItem.Post;
  TB_Submit.Visible:=True;
  qry.Free;
end;

function TFrm_PlanTaskItem.AddList: bool;
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
     qry.SQL.Text:='Insert into T_PlanTaskList(FPlanTaskItemID,FPlanPartsID,FDesignWet,FPlanWet,FPlanaPartsPrice,FAgentID,'
                  +'FPlanDate,FPlanDateTxt,FFinishDate,FFinishDateTxt,FPlanDrawDate,FRealDrawDate,FPlanTaskListRemark) '
                  +'values(:FPlanTaskItemID,:FPlanPartsID,:FDesignWet,:FPlanWet,:FPlanaPartsPrice,:FAgentID,'
                  +':FPlanDate,:FPlanDateTxt,:FFinishDate,:FFinishDateTxt,:FPlanDrawDate,:FRealDrawDate,:FPlanTaskListRemark)';
     mData_PTList.First;
     while not mData_PTList.eof do
     begin
       If ((mData_PTList['FAgentID']<>0) and (mData_PTList['FAgentID']<>Null))
           or ((mData_PTList['FPlanWet']<>0) and (mData_PTList['FPlanWet']<>Null))
           or ((mData_PTList['FPlanDate']<>Null) and (mData_PTList['FPlanDate']<>Null))

           or ((mData_PTList['FPlanTaskListRemark']<>'') and (mData_PTList['FPlanTaskListRemark']<>Null)) then
       begin
         If qry.Active then qry.Close;
         with qry.Parameters do
         begin
           qry.Parameters.FindParam('FPlanTaskItemID').value:= P_MaxID;
           qry.Parameters.FindParam('FPlanPartsID').value:= mData_PTList['FPlanPartsID'];
           qry.Parameters.FindParam('FDesignWet').value:= mData_PTList['FDesignWet'];
           qry.Parameters.FindParam('FPlanWet').value:= mData_PTList['FPlanWet'];
           qry.Parameters.FindParam('FPlanaPartsPrice').value:= mData_PTList['FPlanaPartsPrice'];
           qry.Parameters.FindParam('FAgentID').value:= mData_PTList['FAgentID'];
           qry.Parameters.FindParam('FPlanDate').value:= mData_PTList['FPlanDate'];
           qry.Parameters.FindParam('FPlanDateTxt').value:= mData_PTList['FPlanDateTxt'];
           qry.Parameters.FindParam('FFinishDate').value:= mData_PTList['FFinishDate'];
           qry.Parameters.FindParam('FFinishDateTxt').value:= mData_PTList['FFinishDateTxt'];
           qry.Parameters.FindParam('FPlanDrawDate').value:= mData_PTList['FPlanDrawDate'];
           qry.Parameters.FindParam('FRealDrawDate').value:= mData_PTList['FRealDrawDate'];
           qry.Parameters.FindParam('FPlanTaskListRemark').value:= mData_PTList['FPlanTaskListRemark'];
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


function TFrm_PlanTaskItem.AddRd: bool;
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
    if AddMain then  //1   ��������
    begin
      result:=True;
      if AddList then //2    ��ϸ������
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
    Application.MessageBox('��������ʧ�ܣ������ԡ�', '�������', 0 or MB_ICONINFORMATION);
    mdlData.Conn.RollBackTrans;
  end;

end;


function TFrm_PlanTaskItem.EditRd:bool;
var
 qry:TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  mdlData.conn.BeginTrans;
  try
    if DelRd then  //1  ����ɾ��
    begin
      result:=True;
      if AddMain then //2  ��������
      begin
        result:=True;
        if AddList then //3  ��������
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
    Application.MessageBox('��������ʧ�ܣ������ԡ�', '�������', 0 or MB_ICONINFORMATION);
    mdlData.Conn.RollBackTrans;
  end;

end;



procedure TFrm_PlanTaskItem.FormResize(Sender: TObject);
begin
  inherited;
  Self.Caption:=UserFDepartmentName+'�����Ų���';
end;

procedure TFrm_PlanTaskItem.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=cafree;
  Frm_PlanTaskItem:=nil;
end;

procedure TFrm_PlanTaskItem.TB_EXITClick(Sender: TObject);
begin
  inherited;
  Self.Close;
end;

procedure TFrm_PlanTaskItem.TB_AppClick(Sender: TObject);
Var qry: TADOQuery;
    i,j:Integer;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  P_state :=0; //����
  mdata_PTItem.Close;

  If (mdata_PTItem.RecordCount>1) or (mdata_PTItem.RecordCount=0) then
  begin
    try
      qry.SQL.Text:='select * from V_PlanTaskItem with(nolock) where FPlanTaskItemID=0';
      qry.Open;
    finally
       ;
    end;
    mdata_PTItem.CopyFromDataSet(qry);
    mdata_PTItem.Active:=True;
    mdata_PTItem.Append;
    mdata_PTItem.Edit;
    mdata_PTItem['FFinshESPPercent']:=0;
    mdata_PTItem['FFinshESPShipPercent']:=0;
    mdata_PTItem.Post;

  end;
  mdata_PTList.Close;
  Act_Set_Open_M.Execute;
  PC_Tack.ActivePage:=TS_PlanTask;

end;

procedure TFrm_PlanTaskItem.TB_DelClick(Sender: TObject);
var
  qry:TADOQuery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  try
    qry.SQL.Text:='select * from T_PlanWeekDetail with(nolock) where FFileItemID=:FFileItemID ';
    qry.Parameters.FindParam('FFileItemID').value:=MData_PTItem['FFileItemID'];
    qry.Open;
  finally
     ;
  end;
  If qry.RecordCount>0 then
  begin
    application.MessageBox('����Ŀ���������������ܱ�������ɾ����','ϵͳ��ʾ',MB_ICONINFORMATION);
    Exit;
  end;

  If application.MessageBox(Pchar('���棺�Ƿ�ɾ��'+P_List_PTList+'����������ƻ�����Ϣ��'+chr(13)+chr(13)
                                 +'ɾ�����ݲ��������ɻָ���ȷ��Ҫɾ����'),'������ʾ',MB_ICONINFORMATION+MB_YESNO)=6 then
  If application.MessageBox(Pchar('�ٴξ��棺�Ƿ�ɾ����'+P_List_PTList+'����������ƻ�����Ϣ��'+chr(13)+chr(13)
                                 +'ɾ�����ݲ��������ɻָ���ȷ��Ҫɾ����'),'�ٴξ�����ʾ',MB_ICONINFORMATION+MB_YESNO)=6 then

  mdlData.conn.BeginTrans;
  begin
    //����ɾ��
    If not DelRd then
    begin
      application.MessageBox('ɾ������ʧ�ܣ�','ϵͳ��ʾ',MB_ICONINFORMATION);
      mdlData.conn.RollbackTrans;
      Exit;
    end;
    mdlData.conn.CommitTrans;
  end;
  mdata_PTItem.Close;
  mdata_PTList.Close;
  qry.Free;

end;

procedure TFrm_PlanTaskItem.FormCreate(Sender: TObject);
begin
  inherited;
  TB_App.Visible:= mdlData.PermissionCheckRights(TFrm_PlanTaskItem.ClassName,'����');
  P_state:=2;
  P_Wet:='FMakePercent';

  FFinishDate_PTList.Visible:=False;
  FPlanDate_PTList.Visible:=False;
  FFinishDateTxt_PTList.Visible:=False;
  FPlanDateTxt_PTList.Visible:=False;
  PC_Task.ActivePage:=TS_Write;

end;

procedure TFrm_PlanTaskItem.MyTreeView_PTItemExpanding(Sender: TObject;
  Node: TTreeNode; var AllowExpansion: Boolean);
var
  P :PTree;
  qry:TADOquery;

begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  If (Node = nil) or
     (PTree(Node.Data).Flag <> cNoLoadFlag) or   // 1.���ر�־
     (not Node.HasChildren) or                   // 2.δ����
     (Node.Count>0) then                         // 3.�����ӽڵ�
     Exit;

   If PC_Task.ActivePage=TS_Write then
      qry.SQL.Text:='Select * from VT_PlanTask_Write with(nolock) where FParentNumber= '''
                   +PTree(Node.Data).ID+''' order by FNumber';
   If PC_Task.ActivePage=TS_Item then
      qry.SQL.Text:='Select * from VT_PlanTaskItem with(nolock) where FParentNumber= '''
                   +PTree(Node.Data).ID+''' order by FNumber';

   qry.open;

  PTree(Node.Data).Flag := cLoadFlag;                  // �����Ѽ��ر�־
  while not qry.Eof do
  begin
    New(P);
    P.ID := qry.FieldByName('FNumber').AsString;
    P.ParentID := qry.FieldByName('FParentNumber').AsString;
    P.FNumber:=qry.FieldByName('FNumber').AsString;
    P.Caption := qry.FieldByName('FName').AsString;
    P.Isleaf := qry.FieldByName('Isleaf').Value;
    P.Flag := cNoLoadFlag;                            // �½ڵ㣬δ���ر�־
    with MyTreeView_PTItem.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('Isleaf').value;
    end;
    qry.Next;
  end;
end;

procedure TFrm_PlanTaskItem.MyTreeView_PTItemChange(Sender: TObject; Node: TTreeNode);
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
      If PC_Task.ActivePage=TS_Write then
      begin
        If MyItemListFieldWhere(qry,Mdata_PTItem,' *  ','V_PlanTaskItem','FFullNumber_Write',ListFNumber_PTList,' ','FFullNumber_Write') then
      end;
      If PC_Task.ActivePage=TS_Item then
      begin
        If MyItemListFieldWhere(qry,Mdata_PTItem,' *  ','V_PlanTaskItem','FFullNumber',ListFNumber_PTList,' ','FFullNumber') then
      end;
    end
    else
    begin
      Mdata_PTItem.Close;
      Mdata_PTList.Close;
    end;

    Act_Status_M.Execute;  //Ȩ������

    If (P_Isleaf_PTList=4) and (PC_Tack.ActivePage=TS_PlanWeek)  then
    begin
      If CB_Date.Text='����' then
         Act_Item_PlanWeekDate.Execute;
      If CB_Date.Text='����' then
         Act_Item_PlanWeekDateMonth.Execute;
    end;
    mdata_PTList.EnableControls;
    cxGV_PTList.DataController.DataModeController.GridMode:=False;
    cxGV_PTList.DataController.DataModeController.SmartRefresh:=False;

 end;

end;

procedure TFrm_PlanTaskItem.TB_Ref_ShipClick(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If PC_Task.ActivePage=TS_Write then
  begin
    If UserFDepartmentsort=1 then //��ҵ��
    begin
      If not TreeVeiwListWhere(qry,MyTreeView_PTItem,'VT_PlanTask_Write',' and FDepartmentID='+IntToStr(UserFDepartmentID)) then
        Application.MessageBox(PChar('���ͽṹ��ʾ��������ϵϵͳ������Ա'), '����', MB_OK +MB_ICONSTOP);
    end;
    If UserFDepartmentsort=2 then //�ӹ�˾
    begin
      If not TreeVeiwListWhere(qry,MyTreeView_PTItem,'VT_PlanTask_Write',' ') then
        Application.MessageBox(PChar('���ͽṹ��ʾ��������ϵϵͳ������Ա'), '����', MB_OK +MB_ICONSTOP);
    end;
  end;
  If PC_Task.ActivePage=TS_Item then
  begin
    If UserFDepartmentsort=1 then //��ҵ��
    begin
      If not TreeVeiwListWhere(qry,MyTreeView_PTItem,'VT_PlanTaskItem',' and FDepartmentID='+IntToStr(UserFDepartmentID)) then
        Application.MessageBox(PChar('���ͽṹ��ʾ��������ϵϵͳ������Ա'), '����', MB_OK +MB_ICONSTOP);
    end;
  end;
end;

procedure TFrm_PlanTaskItem.FormShow(Sender: TObject);
begin
  inherited;
  TB_Ref_Ship.Click;
end;

procedure TFrm_PlanTaskItem.OKBtn_MClick(Sender: TObject);
var qry: TADOQuery;
    P_FBalanceNum:String;
    i,n:Integer;
    y:boolean;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  MData_PTItem.open;
  MData_PTItem.Edit;
  MData_PTItem.Post;

  mdata_PTList.open;
  mdata_PTList.Edit;
  mdata_PTList.Post;

  if (MData_PTItem['FBranchItemNumber']='') or (MData_PTItem['FBranchItemNumber']=null)  then
  begin
    application.MessageBox('ͼ�Ų���Ϊ�գ�','ϵͳ��ʾ',MB_ICONWARNING);
    Exit;
  end;
    //�����Ƿ�Ϊ��

  y:=False;
  mdata_PTList.First;
  while not mdata_PTList.eof do
  begin
     If ((mdata_PTList['FAgentID']<>0) and (mdata_PTList['FAgentID']<>Null))
         or ((mdata_PTList['FPlanWet']<>0) and (mdata_PTList['FPlanWet']<>Null))
         or ((mdata_PTList['FPlanTaskListRemark']<>'') and (mdata_PTList['FPlanTaskListRemark']<>Null))   then
         y:=True;
     mdata_PTList.Next;
  end;
  if y=False then
  begin
    application.MessageBox('�����Ų�����Ϊ�գ����޸ļ�¼!','ϵͳ��ʾ',MB_ICONINFORMATION);
    Exit;
  end;

  Act_MaxID.Execute;//ȡID
  If P_state=0 then
  begin
    If application.MessageBox('�Ƿ�Ҫ������ӵ����ݣ�','��ʾ',MB_ICONINFORMATION+MB_YESNO)<>6 then
       Exit;
    If AddRd then //��������
    begin
      If application.MessageBox('¼�������ѱ���,��Ҫ����¼����','��ʾ',MB_ICONINFORMATION+MB_YESNO)=6 then
      begin
        TB_App.Click;

        mdata_PTList.Close;
      end
      else
        CancelBtn_M.Click;
    end;
  end;
  If P_state=1 then //�޸�����
  begin
    If application.MessageBox('�Ƿ�Ҫ���������޸ģ�','��ʾ',MB_ICONINFORMATION+MB_YESNO)<>6 then
    begin
      Exit;
    end;  
    If EditRd then   //�޸�����
    begin
      application.MessageBox('�޸ļ�¼�ѱ���','ϵͳ��ʾ',MB_ICONINFORMATION);
      //inherited;
      CancelBtn_M.Click;
    end
    else
      application.MessageBox('�޸ļ�¼����ʧ�ܣ�','ϵͳ��ʾ',MB_ICONWARNING);
  end;
  MyTreeView_PTItem.Enabled:=True;
  cxGrid_PTItem.Enabled:=True;
  qry.Free;

end;

procedure TFrm_PlanTaskItem.TB_Edit_MClick(Sender: TObject);
begin
  inherited;
  P_state:=1; //�޸�
  If CB_ISEdit.Checked=True then
     CB_ISEdit.Checked:=False;

  Act_Edit_Edit.Execute;

  CB_ISEdit.Visible:=True;
  Act_Set_Open_M.Execute;
  PC_Tack.ActivePage:=TS_PlanTask;

end;

procedure TFrm_PlanTaskItem.CancelBtn_MClick(Sender: TObject);
var qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  P_state:=2;
  If  P_state=2 then   //���������޸�״̬
  begin
    If (mData_PTItem['FPlanTaskItemID']<>0) and (mData_PTItem['FPlanTaskItemID']<>Null) then
    begin
      If MyItemListID(qry,Mdata_PTList,'V_PlanTaskList',' FPlanTaskItemID='+IntToStr(mData_PTItem['FPlanTaskItemID']),'FFullNumber',) then
         Act_Status_M.Execute  //Ȩ������
    end;
  end;
  Act_Set_Close_M.Execute;


end;

procedure TFrm_PlanTaskItem.TB_SubmitClick(Sender: TObject);
var
 qry,qryDate:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qryDate:=TAdoQuery.Create(self);
  qryDate.ConnectionString:=mdlData.ReadConnStr;
  P_state:=3;
  If (TB_Submit.Caption='�ύ') or (TB_Submit.Caption='�����ύ') then
  begin
    If application.MessageBox(Pchar('ϵͳ��ʾ���Ƿ���Ų��ƻ�����Ϊ��'+P_List_PTList+'�ĵ��ݽ����ύ��'+chr(13)+chr(13)
                                   +'ȷ��Ҫ�ύ�Ա�������'),'ϵͳ��ʾ',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      MData_PTItem.First;
      while not MData_PTItem.eof do
      begin
        try
          qry.SQL.Text:='Update T_PlanTaskItem Set FPlanTaskStatus=1,FPlanTaskSubmitDate=:FPlanTaskSubmitDate  where FPlanTaskItemID=:FPlanTaskItemID';
          qry.Parameters.FindParam('FPlanTaskSubmitDate').value:= S_SyStemDate(qryDate);
          qry.Parameters.FindParam('FPlanTaskItemID').value:=MData_PTItem['FPlanTaskItemID'];
          qry.ExecSQL;
        finally
          ;
        end;
        MData_PTItem.Edit;
        MData_PTItem['FPlanTaskStatus']:=1;
        MData_PTItem['FPlanTaskStatusNotes']:='�ύ';
        MData_PTItem['FPlanTaskSubmitDate']:=S_SyStemDate(qryDate);
        MData_PTItem.Post;
        Act_PlanWeek_Update.Execute;//�������������� 20161124

        //Act_Plan_UpdateQry.Execute;//�����깤����20161124
        MData_PTItem.Next;
      end;
      If MData_PTItem.RecordCount=1 then
      begin
        application.MessageBox('�ύ��ϣ�','ϵͳ��ʾ',MB_ICONINFORMATION);
        TB_Submit.Caption:='�ύ����';
      end;
      If MData_PTItem.RecordCount>1 then
      begin
        application.MessageBox('�����ύ��ϣ�','ϵͳ��ʾ',MB_ICONINFORMATION);
        TB_Submit.Caption:='�����ύ����';
      end;
      Act_Status_M.Execute;  //Ȩ������
    end;
    P_state:=2;
    Exit;
  end;
  If (TB_Submit.Caption='�ύ����') or (TB_Submit.Caption='�����ύ����')  then
  begin
    If application.MessageBox(Pchar('ϵͳ��ʾ���Ƿ���Ų��ƻ�����Ϊ��'+P_List_PTList+'�ĵ��ݽ����ύ���أ�'+chr(13)+chr(13)
                                     +'ȷ��Ҫ�Ա������ύ������'),'ϵͳ��ʾ',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      MData_PTItem.First;
      while not MData_PTItem.eof do
      begin
        try
          qry.SQL.Text:='Update T_PlanTaskItem Set FPlanTaskStatus=0,FPlanTaskSubmitDate=:FPlanTaskSubmitDate where FPlanTaskItemID=:FPlanTaskItemID';
          qry.Parameters.FindParam('FPlanTaskSubmitDate').value:= Null;
          qry.Parameters.FindParam('FPlanTaskItemID').value:= MData_PTItem['FPlanTaskItemID'];
          qry.ExecSQL;
        finally
          ;
        end;
        MData_PTItem.Edit;
        MData_PTItem['FPlanTaskStatus']:=0;
        MData_PTItem['FPlanTaskStatusNotes']:='�';
        MData_PTItem['FPlanTaskSubmitDate']:=Null;
        MData_PTItem.Post;
        Act_PlanWeek_Update.Execute;//�������������� 20161124
         //Act_Plan_UpdateQry.Execute;//�����깤����20161124
        MData_PTItem.Next;
      end;
      If MData_PTItem.RecordCount=1 then
      begin
        application.MessageBox('�ύ������ϣ�','ϵͳ��ʾ',MB_ICONINFORMATION);
        TB_Submit.Caption:='�ύ';
      end;
      If MData_PTItem.RecordCount>1 then
      begin
        application.MessageBox('�����ύ������ϣ�','ϵͳ��ʾ',MB_ICONINFORMATION);
        TB_Submit.Caption:='�����ύ';
      end;
      Act_Status_M.Execute;  //Ȩ������
    end;
    P_state:=2;
    Exit;
  end;

end;

procedure TFrm_PlanTaskItem.TB_CheckClick(Sender: TObject);
var
 qry,qryDate:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qryDate:=TAdoQuery.Create(self);
  qryDate.ConnectionString:=mdlData.ReadConnStr;
  P_state:=3;
  If (TB_Check.Caption='У��') or (TB_Check.Caption='����У��') then
  begin
    If application.MessageBox(Pchar('ϵͳ��ʾ���Ƿ���Ų��ƻ�����Ϊ��'+P_List_PTList+'�ĵ��ݽ���У�ԣ�'+chr(13)+chr(13)
                                     +'ȷ��ҪУ�Ա�������'),'ϵͳ��ʾ',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      MData_PTItem.First;
      while not MData_PTItem.eof do
      begin
        try
          qry.SQL.Text:='Update T_PlanTaskItem Set FPlanTaskStatus=2,FPlanTaskCheckID=:FPlanTaskCheckID,FPlanTaskCheckDate=:FPlanTaskCheckDate  where FPlanTaskItemID=:FPlanTaskItemID';
          qry.Parameters.FindParam('FPlanTaskCheckDate').value:=S_SyStemDate(qryDate);
          qry.Parameters.FindParam('FPlanTaskCheckID').value:=UserNumID;
          qry.Parameters.FindParam('FPlanTaskItemID').value:=MData_PTItem['FPlanTaskItemID'];
          qry.ExecSQL;
        finally
          ;
        end;
        MData_PTItem.Edit;
        MData_PTItem['FPlanTaskStatus']:=1;
        MData_PTItem['FPlanTaskCheckDate']:=S_SyStemDate(qryDate);
        MData_PTItem.Post;
        MData_PTItem.Next;
      end;
      If MData_PTItem.RecordCount=1 then
      begin
        application.MessageBox('У����ϣ�','ϵͳ��ʾ',MB_ICONINFORMATION);
        TB_Check.Caption:='У�Գ���';
      end;
      If MData_PTItem.RecordCount>1 then
      begin
        application.MessageBox('����У����ϣ�','ϵͳ��ʾ',MB_ICONINFORMATION);
        TB_Check.Caption:='����У�Գ���';
      end;
      Act_Status_M.Execute;  //Ȩ������
    end;
    P_state:=2;
    Exit;
  end;
  If (TB_Check.Caption='У�Գ���') or (TB_Check.Caption='����У�Գ���')  then
  begin
    If application.MessageBox(Pchar('ϵͳ��ʾ���Ƿ���Ų��ƻ�����Ϊ��'+P_List_PTList+'�ĵ��ݽ���У�Գ��أ�'+chr(13)+chr(13)
                                     +'ȷ��Ҫ�Ա�����У�Գ�����'),'ϵͳ��ʾ',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      MData_PTItem.First;
      while not MData_PTItem.eof do
      begin
        try
          qry.SQL.Text:='Update T_PlanTaskItem Set FPlanTaskStatus=1,FPlanTaskCheckID=:FPlanTaskCheckID,FPlanTaskCheckDate=:FPlanTaskCheckDate where FPlanTaskItemID=:FPlanTaskItemID';
          qry.Parameters.FindParam('FPlanTaskCheckDate').value:= Null;
          qry.Parameters.FindParam('FPlanTaskCheckID').value:= 0;
          qry.Parameters.FindParam('FPlanTaskItemID').value:= MData_PTItem['FPlanTaskItemID'];
          qry.ExecSQL;
        finally
          ;
        end;
        MData_PTItem.Edit;
        MData_PTItem['FPlanTaskStatus']:=1;
        MData_PTItem['FPlanTaskStatusNotes']:='�ύ';
        MData_PTItem['FPlanTaskCheckDate']:=Null;
        MData_PTItem.Post;
        MData_PTItem.Next;
      end;
      If MData_PTItem.RecordCount=1 then
      begin
        application.MessageBox('У�Գ�����ϣ�','ϵͳ��ʾ',MB_ICONINFORMATION);
        TB_Check.Caption:='У��';
      end;
      If MData_PTItem.RecordCount>1 then
      begin
        application.MessageBox('����У�Գ�����ϣ�','ϵͳ��ʾ',MB_ICONINFORMATION);
        TB_Check.Caption:='����У��';
    end;
    Act_Status_M.Execute;  //Ȩ������
    end;
    P_state:=2;
    Exit;
  end;

end;

procedure TFrm_PlanTaskItem.Act_Status_MExecute(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  TB_Submit.Visible:=False;
  TB_Check.Visible:=False;
  TB_Edit_M.Visible:=False;
  TB_Del.Visible:=False;

  //�Ƶ����Ǳ���
  try
    If PC_Task.ActivePage=TS_Write then
    begin
      qry.SQL.Text:='Select distinct FPlanTaskStatus,FPlannerId from V_PlanTaskList with(nolock) '
                   +'where FFullNumber_Write like :FFullNumber_Write  and FDepartmentID=:FDepartmentID ';
      qry.Parameters.FindParam('FFullNumber_Write').value:=ListFNumber_PTList+'%';
    end;
    If PC_Task.ActivePage=TS_Item then
    begin
      qry.SQL.Text:='Select distinct FPlanTaskStatus,FPlannerId from V_PlanTaskList with(nolock) '
                   +'where FFullNumber like :FFullNumber  and FDepartmentID=:FDepartmentID ';
      qry.Parameters.FindParam('FFullNumber').value:=ListFNumber_PTList+'%';
    end;
    qry.Parameters.FindParam('FDepartmentID').value:= UserFDepartmentID;
    qry.Open;
  finally
    ;
  end;
   //�Ƶ����Ǳ���

  If (qry.RecordCount=1) and (qry.FieldByName('FPlanTaskStatus').AsInteger=0)
      and (qry.FieldByName('FPlannerId').AsInteger=UserNumID) then
  begin
    If mdata_PTItem.RecordCount=0 then
    begin
      TB_Del.Visible:=False;
      TB_Submit.Visible:=False;
    end;
    If mdata_PTItem.RecordCount>0 then
    begin
      TB_Submit.Visible:=mdlData.PermissionCheckRights(TFrm_PlanTaskItem.ClassName,'�ύ');
      TB_Submit.Caption:='�����ύ';
      TB_Del.Visible:=False;
    end;
    If mdata_PTItem.RecordCount=1 then
    begin
      TB_Edit_M.Visible:=mdlData.PermissionCheckRights(TFrm_PlanTaskItem.ClassName,'�޸�');
      TB_Del.Visible:=mdlData.PermissionCheckRights(TFrm_PlanTaskItem.ClassName,'ɾ��');
      TB_Submit.Visible:=mdlData.PermissionCheckRights(TFrm_PlanTaskItem.ClassName,'�ύ');
      TB_Submit.Caption:='�ύ';
    end;
    Exit;
  end;

   //�ύ���Ǳ���
  If (qry.RecordCount=1) and (qry.FieldByName('FPlanTaskStatus').AsInteger=1)
     and (qry.FieldByName('FPlannerId').AsInteger=UserNumID) then
  begin
    TB_Submit.Visible:=mdlData.PermissionCheckRights(TFrm_PlanTaskItem.ClassName,'�ύ');
    If mdata_PTItem.RecordCount=0 then
       TB_Submit.Visible:=False;
    If mdata_PTItem.RecordCount>0 then
       TB_Submit.Caption:='�����ύ����';
    If mdata_PTItem.RecordCount=1 then
       TB_Submit.Caption:='�ύ����';
    TB_Edit_M.Visible:=False;
    TB_Del.Visible:=False;
    Exit;
  end;


   //У��
  try
    If PC_Task.ActivePage=TS_Write then
    begin
      qry.SQL.Text:='Select distinct FPlanTaskStatus from V_PlanTaskItem with(nolock) '
                   +'where  FFullNumber_Write like :FFullNumber_Write and FDepartmentID=:FDepartmentID ';
      qry.Parameters.FindParam('FFullNumber_Write').value:=ListFNumber_PTList+'%';
    end;
    If PC_Task.ActivePage=TS_Item then
    begin
      qry.SQL.Text:='Select distinct FPlanTaskStatus from V_PlanTaskItem with(nolock) '
                   +'where  FFullNumber like :FFullNumber and FDepartmentID=:FDepartmentID ';
      qry.Parameters.FindParam('FFullNumber').value:=ListFNumber_PTList+'%';
    end;
    qry.Parameters.FindParam('FDepartmentID').value:= UserFDepartmentID;
    qry.Open;
  finally
    ;
  end;
  If (qry.RecordCount>1)  then
     Exit;
  If (qry.RecordCount=1) and (qry.FieldByName('FPlanTaskStatus').AsInteger=1) then
  begin
    If MData_PTItem.RecordCount=0 then
    begin
      TB_Check.Visible:=False;
    end;
    If MData_PTItem.RecordCount>0 then
    begin
      TB_Check.Visible:=mdlData.PermissionCheckRights(TFrm_PlanTaskItem.ClassName,'У��');
      TB_Check.Caption:='����У��';
    end;
    If MData_PTItem.RecordCount=1 then
    begin
      TB_Check.Visible:=mdlData.PermissionCheckRights(TFrm_PlanTaskItem.ClassName,'У��');
      TB_Check.Caption:='У��';
    end;
    Exit;
  end;


  If (qry.RecordCount=1) and (qry.FieldByName('FPlanTaskStatus').AsInteger=2) then
  begin
    TB_Check.Visible:=mdlData.PermissionCheckRights(TFrm_PlanTaskItem.ClassName,'У��');
    If MData_PTItem.RecordCount=0 then
       TB_Check.Visible:=False;
    If MData_PTItem.RecordCount>0 then
       TB_Check.Caption:='����У�Գ���';
    If MData_PTItem.RecordCount=1 then
       TB_Check.Caption:='У�Գ���';
    Exit;
  end;
end;

procedure TFrm_PlanTaskItem.SelCancelBtnClick(Sender: TObject);
begin
  inherited;
  PC_Main.ActivePage:=TS_Task;
  TS_Task.TabEnabled:=True;

end;

procedure TFrm_PlanTaskItem.PC_CheckChange(Sender: TObject);
begin
  inherited;
  TB_Ref_Ship.Click;
end;

procedure TFrm_PlanTaskItem.TB_EditLListClick(Sender: TObject);
var
   AFirstColumnStyle: TcxStyle;
begin
  inherited;
  P_state:=1;

end;

procedure TFrm_PlanTaskItem.Act_Set_Open_MExecute(Sender: TObject);
var AFirstColumnStyle: TcxStyle;
begin
  inherited;
  MyTreeView_PTItem.Enabled:=False;
  RSP_CList.Enabled:=False;
  P_Btn.Visible:=True;
  OkBtn_M.Visible:=True;
  CancelBtn_M.Visible:=True;
  ToolBar_HItem.Visible:=False;
  cxGV_PTItem.OptionsData.Editing:=True;
  FBranchItemNumber_PTItem.Options.Editing:=True;

 // FPlanTaskItemNum_PTItem.Options.Editing:=True;
  FPlanTaskItemDate_PTItem.Options.Editing:=True;

  FPlanTaskRemark_PTItem.Options.Editing:=True;

  FPlanPartsName_PTList.Options.Editing:=True;
  FAgentShortName_PTList.Options.Editing:=True;
  FPlanWet_PTList.Options.Editing:=True;
  FPlanaPartsPrice_PTList.Options.Editing:=True;


  FPlanDrawDate_PTList.Options.Editing:=True;
  FRealDrawDate_PTList.Options.Editing:=True;
  FPlanTaskListRemark_PTList.Options.Editing:=True;


  sel_Agent.Visible:=True;
  sel_Agent.Options.Editing:=True;
  FBranchItemNumber_PTList.Options.Editing:=True;
  FFinishDate_PTList.Options.Editing:=True;
  FPlanDate_PTList.Options.Editing:=True;
  FFinishDateTxt_PTList.Options.Editing:=True;
  FPlanDateTxt_PTList.Options.Editing:=True;
  FPlanaPartsPrice_PTList.Options.Editing:=True;

  FFinishDate_PTList.Visible:=True;
  FPlanDate_PTList.Visible:=True;
  FFinishDateTxt_PTList.Visible:=True;
  FPlanDateTxt_PTList.Visible:=True;

  FPlanDateShow_PTList.Options.Editing:=False;
  FFinishDateShow_PTList.Options.Editing:=False;
  FPlanDateShow_PTList.Visible:=False;
  FFinishDateShow_PTList.Visible:=False;

{  FMakeFinshWet_Track.Visible:=False;
  FMakeFinshPercent_PTList.Visible:=False;
  FShipFinshWet_PTList.Visible:=False;
  FShipFinshPercent_PTList.Visible:=False;
  FMakeFinshDate_PTList.Visible:=False;
  FShipFinshDate_PTList.Visible:=False;
 }


  cxGV_PTList.OptionsData.Editing:=True;

     //����ɫ
  AFirstColumnStyle:= TcxStyle.Create(Self);
  AFirstColumnStyle.Color := clMenu; //��ɫ
  AFirstColumnStyle.TextColor := clBlue;        //������ɫ


  cxGV_PTItem.Columns[FBranchItemNumber_PTItem.Index].Styles.Content := AFirstColumnStyle;

  cxGV_PTList.Columns[FPlanWet_PTList.Index].Styles.Content := AFirstColumnStyle;
  cxGV_PTList.Columns[FAgentShortName_PTList.Index].Styles.Content := AFirstColumnStyle;
  cxGV_PTList.Columns[sel_Agent.Index].Styles.Content := AFirstColumnStyle;
  cxGV_PTList.Columns[FFinishDate_PTList.Index].Styles.Content := AFirstColumnStyle;
  cxGV_PTList.Columns[FFinishDateTxt_PTList.Index].Styles.Content := AFirstColumnStyle;
  cxGV_PTList.Columns[FPlanDate_PTList.Index].Styles.Content := AFirstColumnStyle;
  cxGV_PTList.Columns[FPlanDateTxt_PTList.Index].Styles.Content := AFirstColumnStyle;
  cxGV_PTList.Columns[FRealDrawDate_PTList.Index].Styles.Content := AFirstColumnStyle;
  cxGV_PTList.Columns[FPlanDrawDate_PTList.Index].Styles.Content := AFirstColumnStyle;
  cxGV_PTList.Columns[FPlanTaskListRemark_PTList.Index].Styles.Content := AFirstColumnStyle;
  cxGV_PTList.Columns[FPlanaPartsPrice_PTList.Index].Styles.Content := AFirstColumnStyle;


{  cxGV_PTList.Columns[3].Styles.Content := AFirstColumnStyle;
 }



end;

procedure TFrm_PlanTaskItem.Act_Set_Close_MExecute(Sender: TObject);
var
   AFirstColumnStyle: TcxStyle;
begin
  inherited;
     //����ɫ
  AFirstColumnStyle:= TcxStyle.Create(Self);
  AFirstColumnStyle.Color := clWindow; //��ɫ
  AFirstColumnStyle.TextColor := clWindowText;        //������ɫ


  cxGV_PTItem.Columns[FBranchItemNumber_PTItem.Index].Styles.Content := AFirstColumnStyle;
  cxGV_PTList.Columns[FPlanWet_PTList.Index].Styles.Content := AFirstColumnStyle;
  cxGV_PTList.Columns[FAgentShortName_PTList.Index].Styles.Content := AFirstColumnStyle;
  cxGV_PTList.Columns[sel_Agent.Index].Styles.Content := AFirstColumnStyle;
  cxGV_PTList.Columns[FFinishDate_PTList.Index].Styles.Content := AFirstColumnStyle;
  cxGV_PTList.Columns[FFinishDateTxt_PTList.Index].Styles.Content := AFirstColumnStyle;
  cxGV_PTList.Columns[FPlanDate_PTList.Index].Styles.Content := AFirstColumnStyle;
  cxGV_PTList.Columns[FPlanDateTxt_PTList.Index].Styles.Content := AFirstColumnStyle;
  cxGV_PTList.Columns[FRealDrawDate_PTList.Index].Styles.Content := AFirstColumnStyle;
  cxGV_PTList.Columns[FPlanDrawDate_PTList.Index].Styles.Content := AFirstColumnStyle;
  cxGV_PTList.Columns[FPlanTaskListRemark_PTList.Index].Styles.Content := AFirstColumnStyle;
  cxGV_PTList.Columns[FPlanaPartsPrice_PTList.Index].Styles.Content := AFirstColumnStyle;




 { AFirstColumnStyle := TcxStyle.Create(Self);
  AFirstColumnStyle.Color := clCaptionText;
  AFirstColumnStyle.TextColor := clWindowText;
  cxGV_Clist.Columns[cxGV_Hlist.FindItemByName('FCheckQry').Index].Styles.Content := AFirstColumnStyle;        //FCheckNosQry
  cxGV_Clist.Columns[cxGV_Hlist.FindItemByName('Sel').Index].Styles.Content := AFirstColumnStyle;        //FCheckListRemark

  cxGV_CItem.Columns[cxGV_HItem.FindItemByName('FCheckICQC').Index].Styles.Content := AFirstColumnStyle;        //FCheckNosQry
  cxGV_CItem.Columns[cxGV_HItem.FindItemByName('FTeamName_M').Index].Styles.Content := AFirstColumnStyle;        //FCheckNosQry
  }
  PC_Main.Enabled:=True;

  RSP_CList.Enabled:=True;

  MyTreeView_PTItem.Enabled:=True;
  P_Btn.Visible:=False;

  cxGV_PTItem.OptionsData.Editing:=False;
  cxGV_PTList.OptionsData.Editing:=False;

  sel_Agent.Visible:=False;
  sel_Agent.Options.Editing:=False;

  FFinishDate_PTList.Visible:=False;
  FPlanDate_PTList.Visible:=False;
  FFinishDateTxt_PTList.Visible:=False;
  FPlanDateTxt_PTList.Visible:=False;

  FPlanDateShow_PTList.Options.Editing:=True;
  FFinishDateShow_PTList.Options.Editing:=True;
  FPlanDateShow_PTList.Visible:=True;
  FFinishDateShow_PTList.Visible:=True;

 { FMakeFinshWet_PTList.Visible:=True;
  FMakeFinshPercent_PTList.Visible:=True;
  FShipFinshWet_PTList.Visible:=True;
  FShipFinshPercent_PTList.Visible:=True;
  FMakeFinshDate_PTList.Visible:=True;
  FShipFinshDate_PTList.Visible:=True;
  }

  ToolBar_HItem.Visible:=True;

   MData_PTItem.Close;
   MData_PTList.Close;
  P_state:=2;


end;

procedure TFrm_PlanTaskItem.Act_Set_OpenExecute(Sender: TObject);
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

procedure TFrm_PlanTaskItem.Act_Set_CloseExecute(Sender: TObject);
begin
  inherited;
{  TB_Ref_Stock.Enabled:=True;
  MyTreeView_CheckList.Enabled:=True;
  MyTreeView_SList.Enabled:=True;
  PC_Check.Enabled:=True;
  OKBtn_M.Visible:=False;
  CancelBtn_M.Visible:=False;   }

end;

procedure TFrm_PlanTaskItem.Act_MenuExecute(Sender: TObject);
Var i:Integer;
begin
  //1������
  If copy((FindComponent(Mn) as TMenuItem).Caption,1,pos('(',(FindComponent(Mn) as TMenuItem).Caption)-1)='ȡ������' then
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

  //�༭
  If (copy((FindComponent(Mn) as TMenuItem).Caption,1,pos('(',(FindComponent(Mn) as TMenuItem).Caption)-1)='�༭')
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
  If (copy((FindComponent(Mn) as TMenuItem).Caption,1,pos('(',(FindComponent(Mn) as TMenuItem).Caption)-1)='�༭')
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
  //����
  If (copy((FindComponent(Mn) as TMenuItem).Caption,1,pos('(',(FindComponent(Mn) as TMenuItem).Caption)-1)='����')
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
  If (copy((FindComponent(Mn) as TMenuItem).Caption,1,pos('(',(FindComponent(Mn) as TMenuItem).Caption)-1)='����')
     and ((FindComponent(Mn) as TMenuItem).Checked=True) then
  begin
    (FindComponent(Mn) as TMenuItem).Checked:=False;
    for i:=0 to (FindComponent(GV) as TcxGridDBTableView).ColumnCount-1 do
    begin
      (FindComponent(GV) as TcxGridDBTableView).Columns[i].Options.Filtering:=False;
    end;
    Exit;
  end;
  //����
  If (copy((FindComponent(Mn) as TMenuItem).Caption,1,pos('(',(FindComponent(Mn) as TMenuItem).Caption)-1)='����')
     and ((FindComponent(Mn) as TMenuItem).Checked=False) then
  begin
    (FindComponent(Mn) as TMenuItem).Checked:=True;
    for i:=0 to (FindComponent(GV) as TcxGridDBTableView).ColumnCount-1 do
    begin
      (FindComponent(GV) as TcxGridDBTableView).Columns[i].Options.Sorting:=True;
    end;
    Exit;
  end;
  If (copy((FindComponent(Mn) as TMenuItem).Caption,1,pos('(',(FindComponent(Mn) as TMenuItem).Caption)-1)='����')
     and ((FindComponent(Mn) as TMenuItem).Checked=True) then
  begin
    (FindComponent(Mn) as TMenuItem).Checked:=False;
    for i:=0 to (FindComponent(GV) as TcxGridDBTableView).ColumnCount-1 do
    begin
      (FindComponent(GV) as TcxGridDBTableView).Columns[i].Options.Sorting:=False;
    end;
    Exit;
  end;
 // ����
  If (copy((FindComponent(Mn) as TMenuItem).Caption,1,pos('(',(FindComponent(Mn) as TMenuItem).Caption)-1)='����')
     and ((FindComponent(Mn) as TMenuItem).Checked=False) then
  begin
    (FindComponent(GV) as TcxGridDBTableView).OptionsView.GroupByBox:=True;
    (FindComponent(Mn) as TMenuItem).Checked:=True;
    Exit;
  end;
  If (copy((FindComponent(Mn) as TMenuItem).Caption,1,pos('(',(FindComponent(Mn) as TMenuItem).Caption)-1)='����')
     and ((FindComponent(Mn) as TMenuItem).Checked=True) then
  begin
    (FindComponent(GV) as TcxGridDBTableView).OptionsView.GroupByBox:=False;
    (FindComponent(Mn) as TMenuItem).Checked:=False;
    Exit;
  end;
  //����
  If copy((FindComponent(Mn) as TMenuItem).Caption,1,pos('(',(FindComponent(Mn) as TMenuItem).Caption)-1)='����' then
  begin
    If (FindComponent(Gm) as TdxMemData).RecordCount>0 then
       ExportToExcel((FindComponent(Gr) as TcxGrid),True,TRue)
    else
       Application.MessageBox(PChar('û����Ҫ���������ݣ�'), '����', MB_OK +MB_ICONSTOP);
    Exit;
  end;


end;

procedure TFrm_PlanTaskItem.Act_Menu_SetExecute(Sender: TObject);
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

procedure TFrm_PlanTaskItem.N_EditClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_PlanTaskItem.N_FilterClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_PlanTaskItem.N_SortClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_PlanTaskItem.N_GroupClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_PlanTaskItem.N_SetClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_PlanTaskItem.N_OutClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_PlanTaskItem.FBranchItemNumberPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var selValue : string;
    qry,qry1,qry2: TADOQuery;
    P_FPlanTaskItemID:Integer;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry1:=TADOQuery.Create(self);
  qry1.ConnectionString:=mdlData.ReadConnStr;
  qry2:=TADOQuery.Create(self);
  qry2.ConnectionString:=mdlData.ReadConnStr;

  mData_PTItem.Edit;
  mData_PTItem.Post;
  If mData_PTItem['FBranchItemNumber']=Null then
  begin
    mData_PTItem.Edit;
    mData_PTItem['FBranchItemNumber']:='';
    mData_PTItem.Post;
  end;
  try
  { qry.SQL.Text:='select FNumber,FPlanner as FParentNumber,''��''+FBranchItemNumber+''��''+FClientShortName+''��'' as Fname,'
                +'FFileItemID,1 as Isleaf  from V_FileItem '
                +'where FDepartmentID='+intTostr(UserFDepartmentID)+' and FBranchItemNumber like ''%'+mData_PTItem['FBranchItemNumber']+'%'' '
                +'and FCarryOut=''ִ��'' and  FFileItemID not in '
                +'(select FFileItemID from V_PlanTaskItem where FDepartmentID='+intTostr(UserFDepartmentID)+' ) order by FNumber';
           }
      qry.SQL.Text:='select * from VT_FileItem with(nolock) where FDepartmentID=:FDepartmentID1 '
                  +' and FBranchItemNumber like :FBranchItemNumber  and FFileItemID not in  '
                  +'(select FFileItemID from V_PlanTaskItem where FDepartmentID=:FDepartmentID2) '
                  +'order by FBranchItemNumber  ';

    qry.Parameters.FindParam('FDepartmentID1').value:=UserFDepartmentID;
    qry.Parameters.FindParam('FBranchItemNumber').value:='%'+mData_PTItem['FBranchItemNumber']+'%';
    qry.Parameters.FindParam('FDepartmentID2').value:=UserFDepartmentID;  
    qry.Open;
  finally
   ;
  end;
  If qry.RecordCount=1 then
  begin
    mData_PTItem.Edit;
    mData_PTItem['FFileItemID']:=qry.FieldByName('FFileItemID').Value;
    mData_PTItem.Post;
  end
  else
  begin
    selValue:=select('ѡ����Ŀͼ��','FNumber','FParentNumber','FNumber','FName',qry);
    If (Length(selValue)>0) and (qry.FieldByName('Isleaf').Value<>0) then
    begin
      mData_PTItem.Edit;
      mData_PTItem['FFileItemID']:=qry.FieldByName('FFileItemID').Value;
     mData_PTItem.Post;
    end;
  end;

  try
    qry.SQL.Text:='select * from V_FileItem with(nolock) where FFileItemID=:FFileItemID ';
    qry.Parameters.FindParam('FFileItemID').value:=mData_PTItem['FFileItemID'];
    qry.Open;
  finally
   ;
  end;
  If qry.RecordCount=1 then
  begin
    mData_PTItem.Edit;
    mData_PTItem['FBranchItemNumber']:=qry.FieldByName('FBranchItemNumber').Value;
    mData_PTItem['FFileItemID']:=qry.FieldByName('FFileItemID').Value;
    mData_PTItem['FItemNumber']:=qry.FieldByName('FItemNumber').Value;
    mData_PTItem['FClientFullName']:=qry.FieldByName('FClientFullName').Value;
    mData_PTItem['FClientShortName']:=qry.FieldByName('FClientShortName').Value;
    mData_PTItem['FPactNo']:=qry.FieldByName('FPactNo').Value;
    mData_PTItem['FBranchFileNo']:=qry.FieldByName('FBranchFileNo').Value;
    mData_PTItem['FPlanner']:=qry.FieldByName('FPlanner').Value;
    mData_PTItem['FArea']:=qry.FieldByName('FArea').Value;
    mData_PTItem['FProductID']:=qry.FieldByName('FProductID').Value;
    mData_PTItem['FDeliveryDate']:=qry.FieldByName('FDeliveryDate').Value;
    mData_PTItem['FPactFinishDate']:=qry.FieldByName('FPactFinishDate').Value;
    mData_PTItem.Post;
  end;

  try
    qry.SQL.Text:='Select * from T_PlanTaskItem with(nolock) where FFileItemID=:FFileItemID';
    qry.Parameters.FindParam('FFileItemID').Value:=mData_PTItem['FFileItemID'];
    qry.Open;
    If qry.RecordCount>0 then
    begin
       application.MessageBox('����Ŀ�Ų��ƻ��Ѵ��ڣ�������ѡ��','ϵͳ��ʾ',MB_ICONERROR);
      Exit;
    end;
  finally
     ;
  end;
  //�����ظ���Ŀ
  try
    qry.SQL.Text:='Select * from V_PlanTaskItem with(nolock) where  FPlanTaskWriteID=:FPlanTaskWriteID and FProductID=:FProductID ';
    qry.Parameters.FindParam('FPlanTaskWriteID').value:=UserNumID;
    qry.Parameters.FindParam('FProductID').Value:=mData_PTItem['FProductID'];
    qry.Open;
  finally
    ;
  end;
  If qry.RecordCount<=0 then
  begin
    Act_Sel.Execute;
    Exit;
  end
  else
  begin
    If application.MessageBox('�����Ͳ�Ʒ���Ų���,�Ƿ���ȡ���Ų���Ϣ��','��ʾ',MB_ICONINFORMATION+MB_YESNO)<>6 then
    begin
      Act_Sel.Execute;
      Exit;
    end
    else
    begin
      try
        qry1.SQL.Text:='select FNumber,'''' as FParentNumber,''��''+FBranchItemNumber+''����''+FClientShortName+''��'' as Fname,'
                      +'FFileItemID,FPlanTaskItemID,1 as Isleaf  from V_PlanTaskItem with(nolock) '
                      +'where FDepartmentID=:FDepartmentID1 and FPlanTaskWriteID=:FPlanTaskWriteID and  FProductID in '
                      +'(select FProductID from  V_FileItem where FDepartmentID=:FDepartmentID2 AND FProductID=:FProductID) order by FNumber';
        qry1.Parameters.FindParam('FDepartmentID1').value:=UserFDepartmentID;
        qry1.Parameters.FindParam('FPlanTaskWriteID').value:=UserNumID;
        qry1.Parameters.FindParam('FDepartmentID2').value:=UserFDepartmentID;
        qry1.Parameters.FindParam('FProductID').value:=mData_PTItem['FProductID'];
        qry1.Open;
      finally
       ;
      end;
      If qry1.RecordCount>0 then
      begin
        selValue:=select('ѡ����Ŀͼ��','FNumber','FParentNumber','FNumber','FName',qry1);
        If (Length(selValue)>0) and (qry1.FieldByName('Isleaf').Value<>0) then
        begin
          P_FPlanTaskItemID:=qry1.FieldByName('FPlanTaskItemID').Value;
          try
            qry2.SQL.Text:='select '''' as FBranchItemNumber,'''' as FPartsNumber,0 as FDesignWet,* from V_PlanTaskList with(nolock) where FPlanTaskItemID=:FPlanTaskItemID ';
            qry2.Parameters.FindParam('FPlanTaskItemID').value:=P_FPlanTaskItemID;
            qry2.Open;
          finally
           ;
          end;
          If qry2.RecordCount>0 then
          begin
            mData_PTList.CopyFromDataSet(qry2);
            mData_PTList.Open;
          end
          else
            mData_PTList.Close;
        end;
      end
      else
      begin
        Act_Sel.Execute;
      end;
    end;
  end;
end;

procedure TFrm_PlanTaskItem.Act_MaxIDExecute(Sender: TObject);
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
      value:='T_PlanTaskItem';
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

procedure TFrm_PlanTaskItem.TB_PlanTaskListClick(Sender: TObject);
var
  Query_Sp:TADOStoredProc;
  i,k,s,ReNum,ReNumLoop,R_Count,ReNumH:Integer;
  ExcelApp,MyWorkBook,mysheet,vLastSheet: Variant;
  filepath,savefilepath,Sqlstr,copystart,copyend,copystart1,aa,copystart_H,copyend_H,copystart1_H:string;
  ListQry:Tadoquery;
  qry,qry1:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  qry1:=TAdoQuery.Create(self);
  qry1.ConnectionString:=mdlData.ReadConnStr;

  P_List_Pack:=mdata_PTItem['FBranchItemNumber'];
  filepath:=Extractfilepath(application.ExeName)+'��������ƻ���ģ��.xls';
  if (mdata_PTItem.Active) and (mdata_PTItem.recordcount>0) then
  Begin
    SaveDialog1.FileName:='��������ƻ���('+P_List_Pack+')';
    SaveDialog1.Filter:='.xls';
    SaveDialog1.Execute;

    if (mdata_PTItem.FieldByName('FBranchItemNumber').AsString<>'') Or (mdata_PTItem.FieldByName('FBranchItemNumber').AsString<>Null) then
        savefilepath:=SaveDialog1.FileName+'.xls';

    if FileExists(savefilepath) then
    begin
      DeleteFile(savefilepath) ;
    end;
    stbMsg.Caption:='��ʾ��Ϣ�����ڵ�����������ƻ�:'+'��'+mdata_PTItem.FieldByName('FBranchItemNumber').AsString+'��';
    stbBar.Refresh;

    ExcelApp:= CreateOleObject('Excel.Application' );
    ExcelApp.DisplayAlerts:=False;                  //����ʾ��ʾ��
    MyWorkBook:=ExcelApp.WorkBooks.Open( filepath );   //��ģ��
    //ExcelApp.Visible:=True;

    try
      qry.SQL.Text:='select distinct FBranchItemNumber from V_PlanTaskItem with(nolock) where FFullNumber_Write like :FFullNumber_Write';
      qry.Parameters.FindParam('FFullNumber_Write').value:=ListFNumber_PTList;
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
       qry1.SQL.Text:='select * from V_PlanTaskList with(nolock) where FPlanTaskItemID=:FPlanTaskItemID and FPlanPartsType=1 order by FBranchItemNumber,FPartsCode ';
       qry1.Parameters.FindParam('FPlanTaskItemID').value:=mdata_PTItem['FPlanTaskItemID'];
       qry1.Open;
     finally
       ;
     end;
     ReNum:=qry1.RecordCount-1;
     try
       qry1.SQL.Text:='select * from V_PlanTaskList with(nolock) where FPlanTaskItemID=:FPlanTaskItemID and FPlanPartsType=2 order by FBranchItemNumber,FPartsCode ';
       qry1.Parameters.FindParam('FPlanTaskItemID').value:=mdata_PTItem['FPlanTaskItemID'];
       qry1.Open;
     finally
       ;
     end;
     ReNumH:=qry1.RecordCount-1;

     try
       qry1.SQL.Text:='select * from V_PlanTaskList with(nolock) where FPlanTaskItemID=:FPlanTaskItemID order by FBranchItemNumber,FPartsCode ';
       qry1.Parameters.FindParam('FPlanTaskItemID').value:=mdata_PTItem['FPlanTaskItemID'];
       qry1.Open;
     finally
       ;
     end;
     if qry1.RecordCount>0 then
     begin
       mdata_PTList.Close;
       mdata_PTList.CopyFromDataSet(qry1);
     end;
     vLastSheet:=MyWorkBook.Sheets[MyWorkBook.Sheets.Count];
     MyWorkBook.Sheets[1].Copy(EmptyParam,vLastSheet);
     MyWorkBook.WorkSheets[k].Name:=IntToStr(k)+mdata_PTItem['FBranchItemNumber'];
     MyWorkBook.WorkSheets[k].Activate;


      //����
      MyWorkBook.WorkSheets[k].Cells[1,1].Value:=AnsiReplaceStr(MyWorkBook.WorkSheets[k].Cells[1,1].Value,'A',UserFDepartmentName); //��˾����
      MyWorkBook.WorkSheets[k].Cells[2,1].Value:=AnsiReplaceStr(MyWorkBook.WorkSheets[k].Cells[2,1].Value,'B',mdata_PTItem['FClientFullName']);

      MyWorkBook.WorkSheets[k].Cells[4,2].Value := Trim(mdata_PTItem.FieldByName('FFileNo').AsString);
      MyWorkBook.WorkSheets[k].Cells[4,5].Value := Trim(mdata_PTItem.FieldByName('FClientFullName').AsString);

      MyWorkBook.WorkSheets[k].Cells[5,2].Value := Trim(mdata_PTItem.FieldByName('FPactNo').AsString);
      MyWorkBook.WorkSheets[k].Cells[5,5].Value := Trim(mdata_PTItem.FieldByName('FESPWet').AsString);
      MyWorkBook.WorkSheets[k].Cells[5,8].Value := mdata_PTItem.FieldByName('FDeliveryDate').AsString;
      MyWorkBook.WorkSheets[k].Cells[5,10].Value := Trim(mdata_PTItem.FieldByName('FItemNumber').AsString);


      MyWorkBook.WorkSheets[k].Cells[6,2].Value := Trim(mdata_PTItem.FieldByName('FItemModel').AsString);
      MyWorkBook.WorkSheets[k].Cells[6,5].Value := Trim(mdata_PTItem.FieldByName('FItemQry').AsString);
      MyWorkBook.WorkSheets[k].Cells[6,8].Value := mdata_PTItem.FieldByName('FPactFinishDate').AsString;
      MyWorkBook.WorkSheets[k].Cells[6,10].Value := Trim(mdata_PTItem.FieldByName('FFactoryNum').AsString);

      MyWorkBook.WorkSheets[k].Cells[10,3].Value:=mdata_PTItem.FieldByName('FPlanTaskCheck').AsString; //���
      MyWorkBook.WorkSheets[k].Cells[10,9].Value:=mdata_PTItem.FieldByName('FPlanTaskWrite').AsString; //�Ƶ�
      MyWorkBook.WorkSheets[k].Cells[5,5].Value := '=SUM(C8:C'+IntToStr(8+ReNum)+')'; //�ϼ�����


      //ѭ���п�ʼ
      i:=8;

       //����������
      MyWorkBook.WorkSheets[k].Name:=mdata_PTItem.FieldByName('FBranchItemNumber').AsString;
      copystart:='A'+IntToStr(i);
      if mdata_PTList.recordcount>0 then
      Begin
        if mdata_PTList.recordcount>1 then
        Begin
          copystart_H:='A'+IntToStr(i+1);
          copystart1_H:='A'+IntToStr(i+1+1);
          copyend_H:='N'+IntToStr(i+1);  //����
          while ReNumH>0 do
          Begin
            ExcelApp.ActiveSheet.Range[copystart_H+':'+copyend_H].Copy;
            ExcelApp.ActiveSheet.Rows[i+1+1].Insert;
            ExcelApp.ActiveSheet.Range[copystart1_H].PasteSpecial;
            ReNumH:=ReNumH-1;
          end;

          copystart:='A'+IntToStr(i);
          copystart1:='A'+IntToStr(i+1);
          copyend:='N'+IntToStr(i);  //����
          while ReNum>0 do
          Begin
            ExcelApp.ActiveSheet.Range[copystart+':'+copyend].Copy;
            ExcelApp.ActiveSheet.Rows[i+1].Insert;
            ExcelApp.ActiveSheet.Range[copystart1].PasteSpecial;
            Renum:=Renum-1;
          end;
        end
        else
        Begin
          R_Count:=mdata_PTList.recordcount;
        end;
        mdata_PTList.first;
        while not mdata_PTList.eof do
        Begin
          MyWorkBook.WorkSheets[k].Cells[i,1].Value := mdata_PTList.FieldByName('FPlanPartsName').AsString;
          If mdata_PTList['FPlanPartsType']=1 then
          begin
            MyWorkBook.WorkSheets[k].Cells[i,3].Value :=  mdata_PTList.FieldByName('FPlanWet').AsString;
            MyWorkBook.WorkSheets[k].Cells[i,4].Value := mdata_PTList.FieldByName('FMakeFinshWet').AsString;
            MyWorkBook.WorkSheets[k].Cells[i,5].Value := mdata_PTList.FieldByName('FFinishDate').AsString;
            MyWorkBook.WorkSheets[k].Cells[i,7].Value := mdata_PTList.FieldByName('FAgentShortName').AsString;
            MyWorkBook.WorkSheets[k].Cells[i,8].Value := mdata_PTList.FieldByName('FPlanTaskListRemark').AsString;
          end;
          If mdata_PTList['FPlanPartsType']=2 then
          begin
            MyWorkBook.WorkSheets[k].Cells[i,3].Value := mdata_PTList.FieldByName('FPlanTaskListRemark').AsString;
          end;
          mdata_PTList.next;
          i:=i+1;
        End;
      end;
      qry.Next ;
      ExcelApp.Visible:=True;
      If qry.RecordCount=1 then
         MyWorkBook.WorkSheets[k].PrintPreview;  //��ӡ
      k:=k+1;
    end;
    MyWorkBook.WorkSheets[1].delete; //ɾ��ģ��
    stbMsg.Caption:='��ʾ��Ϣ����������ƻ�:'+'��'+mdata_PTItem.FieldByName('FBranchItemNumber').AsString+'������Ϣ�������!';
    stbBar.Refresh;
    MyWorkBook.saveas(savefilepath);
    MyWorkBook.Close;
    ExcelApp.Quit;
    ExcelApp:=Unassigned;
  end
  else
  Begin
    Application.MessageBox(PChar('û�пɵ��������ݣ�������ѡ��'), '������������', MB_OK + MB_ICONSTOP);
    Exit;
  End;


end;

procedure TFrm_PlanTaskItem.Act_SelExecute(Sender: TObject);
var
  qry,qry1:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If (mData_PTItem['FProductID']=0) or (mData_PTItem['FProductID']=Null) then
  begin
    Application.MessageBox(PChar('��ѡ���Ʒ���������ѡ��'), 'ϵͳ��ʾ', MB_OK + MB_ICONSTOP);
    Exit;
  End;

  try
    qry.SQL.Text:='select * from V_PlanTaskItem with(nolock) where  FFileItemID=:FFileItemID ';
    qry.Parameters.FindParam('FFileItemID').value:=mData_PTItem['FFileItemID'];
    qry.Open;
  finally
     ;
  end;
  If qry.RecordCount>0 then
  begin
    application.MessageBox('����Ŀ�����ƻ��Ѿ����ڣ��벻Ҫ�ظ�����','ϵͳ��ʾ',MB_ICONINFORMATION);
    Exit;
  end;

  try
    qry.SQL.Text:='select c.FPartsNumber ,a.*,b.* from V_PlanParts as a with(nolock)  '
                 +'left outer join (select * from V_PlanTaskList with(nolock) where FPlanTaskListID=0 ) as b '
                 +'on a.FProductID=b.FProductID '
                 +'left outer  join ( SELECT * from V_ItemList with(nolock) where FItemNumber=:FItemNumber) as c '
                 +'on a.FProductID=c.FProductID and a.FPartsCode=c.FPartsCode  '
                 +'where a.FProductID=:FProductID and a.FPlanWeekSel=1 order by a.FPartsCode,c.FPartsNumber';
    qry.Parameters.FindParam('FItemNumber').value:=mData_PTItem['FItemNumber'];
    qry.Parameters.FindParam('FProductID').value:=mData_PTItem['FProductID'];
    qry.Open;
  finally
     ;
  end;
  If qry.RecordCount<=0 then
     Exit;
  mdata_PTList.CopyFromDataSet(qry);
  mdata_PTList.Active:=True;
  mdata_PTList.First;

end;

procedure TFrm_PlanTaskItem.cxGV_HItemFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
var qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If  P_state=2 then   //���������޸�״̬
  begin
    If (mData_PTItem['FPlanTaskItemID']<>0) and (mData_PTItem['FPlanTaskItemID']<>Null) then
    begin
      If MyItemListID(qry,Mdata_PTList,'V_PlanTaskList',' FPlanTaskItemID='+IntToStr(mData_PTItem['FPlanTaskItemID']),'FFullNumber_Write',) then
         Act_Status_M.Execute  //Ȩ������
    end;
  end;
   
end;

procedure TFrm_PlanTaskItem.FAgentName_PTListPropertiesButtonClick(
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
                 +' where a.FDepartmentID=:FDepartmentID and FAgentShortName like :FAgentShortName and  FSysTem=''��ϵ��'' order by FAgentShortName  ';
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
    selValue:=select('ѡ��������λ','FNumber','FParentNumber','FNumber','FName',qry);
    If (Length(selValue)>0) then
    begin
      MData_PTList.Edit;
      MData_PTList['FAgentShortName']:=qry.FieldByName('FAgentShortName').AsString;
      MData_PTList['FAgentID']:=qry.FieldByName('FDepartmentID').AsString;
      MData_PTList.Post;
    end
    else
      application.MessageBox('��ѡ����ϸ��','ϵͳ��ʾ',MB_ICONINFORMATION);
  end;
  qry.Free;


end;

procedure TFrm_PlanTaskItem.FAgentName_PTListPropertiesEditValueChanged(
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

procedure TFrm_PlanTaskItem.FAgentShortName_PTListHeaderClick(Sender: TObject);
Var
  qry: TADOQuery;
  I_index:Integer;
  P_Str:String;
  P_Int:Integer;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If P_state=2 then
     Exit;

  If mData_PTList.RecordCount<=0 then
    Exit;
  I_index:=mData_PTList.RecNo ;

  mData_PTList.Edit;
  mData_PTList.Post;

  If mData_PTList['FAgentID']=Null then
     Exit;
  P_Str:=mData_PTList['FAgentShortName'];
  P_Int:=mData_PTList['FAgentID'];
  mData_PTList.First;
  while not mData_PTList.eof do
  begin
    If (mData_PTList['FAgentID']=0) or (mData_PTList['FAgentID']=Null) then
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

procedure TFrm_PlanTaskItem.FPlanaPartsPrice_PTListHeaderClick(
  Sender: TObject);
begin
   Act_FPlanPartsPrice.Execute;

end;

procedure TFrm_PlanTaskItem.FPlanDrawDate_PTListHeaderClick(
  Sender: TObject);
Var
  qry: TADOQuery;
  I_index:Integer;
  P_Date:TDateTime;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If P_state=2 then
     Exit;
  If mData_PTList.RecordCount<=0 then
    Exit;
  I_index:=mData_PTList.RecNo ;

  mData_PTList.Edit;
  mData_PTList.Post;

  If mData_PTList['FPlanDrawDate']=Null then
     Exit;
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

procedure TFrm_PlanTaskItem.FRealDrawDate_PTListHeaderClick(
  Sender: TObject);
Var
  qry: TADOQuery;
  I_index:Integer;
  P_Date:TDateTime;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If P_state=2 then
     Exit;
  If mData_PTList.RecordCount<=0 then
    Exit;
  I_index:=mData_PTList.RecNo ;

  mData_PTList.Edit;
  mData_PTList.Post;

  If mData_PTList['FRealDrawDate']=Null then
     Exit;
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

procedure TFrm_PlanTaskItem.FFinishDate_PTListHeaderClick(
  Sender: TObject);
Var
  qry: TADOQuery;
  I_index:Integer;
  P_Date:TDateTime;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If P_state=2 then
     Exit;
  If mData_PTList.RecordCount<=0 then
    Exit;
  I_index:=mData_PTList.RecNo ;

  mData_PTList.Edit;
  mData_PTList.Post;

  If mData_PTList['FFinishDate']=Null then
     Exit;
  P_Date:=mData_PTList['FFinishDate'];

  mData_PTList.First;
  while not mData_PTList.eof do
  begin
    If (mData_PTList['FFinishDate']=Null) then
    begin
      mData_PTList.Edit;
      mData_PTList['FFinishDate']:=P_Date;
      mData_PTList.Post;
    end;
    mData_PTList.Next;
  end;
  If (I_index<mData_PTList.RecordCount) and (I_index<>-1) then
     mData_PTList.RecNo :=I_index
  else
     mData_PTList.Last;


end;

procedure TFrm_PlanTaskItem.TB_ViewClick(Sender: TObject);
var
  Query_Sp:TADOStoredProc;
  i,k,s,ReNum,ReNumLoop,R_Count,ReNumH:Integer;
  ExcelApp,MyWorkBook,mysheet,vLastSheet: Variant;
  filepath,savefilepath,Sqlstr,copystart,copyend,copystart1,aa,copystart_H,copyend_H,copystart1_H:string;
  ListQry:Tadoquery;
  qry,qry1:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  qry1:=TAdoQuery.Create(self);
  qry1.ConnectionString:=mdlData.ReadConnStr;

 // P_List_Pack:=mdata_PTItem['FBranchItemNumber'];
  filepath:=Extractfilepath(application.ExeName)+'��������ƻ�һ����ģ��.xls';
  if (mdata_PTList.Active) and (mdata_PTList.recordcount>0) then
  Begin
    SaveDialog1.FileName:='��������ƻ�һ����('+P_List_Pack+')';
    SaveDialog1.Filter:='.xls';
    SaveDialog1.Execute;

    if (mdata_PTList.FieldByName('FBranchItemNumber').AsString<>'') Or (mdata_PTList.FieldByName('FBranchItemNumber').AsString<>Null) then
        savefilepath:=SaveDialog1.FileName+'.xls';

    if FileExists(savefilepath) then
    begin
      DeleteFile(savefilepath) ;
    end;
    stbMsg.Caption:='��ʾ��Ϣ�����ڵ�����������ƻ�һ����:'+'��'+P_List_Pack+'��';
    stbBar.Refresh;

    ExcelApp:= CreateOleObject('Excel.Application' );
    ExcelApp.DisplayAlerts:=False;                  //����ʾ��ʾ��
    MyWorkBook:=ExcelApp.WorkBooks.Open( filepath );   //��ģ��
    //ExcelApp.Visible:=True;

    try
      qry.SQL.Text:='select distinct FPlanTaskItemID,FBranchItemNumber from V_PlanTaskItem where FFullNumber_Write like :FFullNumber_Write';
      qry.Parameters.FindParam('FFullNumber_Write').value:=ListFNumber_PTList+'%';
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
       qry1.SQL.Text:='select * from V_PlanTaskList with(nolock) where FPlanTaskItemID=:FPlanTaskItemID and FPlanPartsType=1 order by FBranchItemNumber,FPlanPartsNum ';
       qry1.Parameters.FindParam('FPlanTaskItemID').value:=qry.FieldByName('FPlanTaskItemID').Value;
       qry1.Open;
     finally
       ;
     end;
     ReNum:=qry1.RecordCount-1;
     try
       qry1.SQL.Text:='select * from V_PlanTaskList with(nolock) where FPlanTaskItemID=:FPlanTaskItemID and FPlanPartsType=2 order by FBranchItemNumber,FPlanPartsNum ';
       qry1.Parameters.FindParam('FPlanTaskItemID').value:=qry.FieldByName('FPlanTaskItemID').Value;
       qry1.Open;
     finally
       ;
     end;
     ReNumH:=qry1.RecordCount-1;


     try
       qry1.SQL.Text:='select * from V_PlanTaskList with(nolock) where FPlanTaskItemID=:FPlanTaskItemID order by FBranchItemNumber,FPlanPartsNum ';
       qry1.Parameters.FindParam('FPlanTaskItemID').value:=qry.FieldByName('FPlanTaskItemID').Value;
       qry1.Open;
     finally
       ;
     end;
     if qry1.RecordCount>0 then
     begin
       mdata_PTList.Close;
       mdata_PTList.CopyFromDataSet(qry1);
     end;
     vLastSheet:=MyWorkBook.Sheets[MyWorkBook.Sheets.Count];
     MyWorkBook.Sheets[1].Copy(EmptyParam,vLastSheet);
     MyWorkBook.WorkSheets[k].Name:=IntToStr(k)+mdata_PTList['FBranchItemNumber'];
     MyWorkBook.WorkSheets[k].Activate;


      //����
      MyWorkBook.WorkSheets[k].Cells[1,1].Value:=AnsiReplaceStr(MyWorkBook.WorkSheets[k].Cells[1,1].Value,'A',UserFDepartmentName); //��˾����
      MyWorkBook.WorkSheets[k].Cells[2,1].Value:=AnsiReplaceStr(MyWorkBook.WorkSheets[k].Cells[2,1].Value,'B',mdata_PTList['FClientFullName']);

      MyWorkBook.WorkSheets[k].Cells[4,2].Value := Trim(mdata_PTList.FieldByName('FFileNo').AsString);
      MyWorkBook.WorkSheets[k].Cells[4,5].Value := Trim(mdata_PTList.FieldByName('FClientFullName').AsString);

      MyWorkBook.WorkSheets[k].Cells[5,2].Value := Trim(mdata_PTList.FieldByName('FPactNo').AsString);
      MyWorkBook.WorkSheets[k].Cells[5,5].Value := Trim(mdata_PTList.FieldByName('FESPWet').AsString);
      MyWorkBook.WorkSheets[k].Cells[5,9].Value := mdata_PTList.FieldByName('FDeliveryDate').AsString;
      MyWorkBook.WorkSheets[k].Cells[5,12].Value := Trim(mdata_PTList.FieldByName('FItemNumber').AsString);


      MyWorkBook.WorkSheets[k].Cells[6,2].Value := Trim(mdata_PTList.FieldByName('FItemModel').AsString);
      MyWorkBook.WorkSheets[k].Cells[6,5].Value := Trim(mdata_PTList.FieldByName('FItemQry').AsString);
      MyWorkBook.WorkSheets[k].Cells[6,9].Value := mdata_PTList.FieldByName('FPactFinishDate').AsString;
      MyWorkBook.WorkSheets[k].Cells[6,12].Value := Trim(mdata_PTList.FieldByName('FFactoryNum').AsString);

      MyWorkBook.WorkSheets[k].Cells[10,3].Value:=mdata_PTList.FieldByName('FPlanTaskCheck').AsString; //���
      MyWorkBook.WorkSheets[k].Cells[10,14].Value:=mdata_PTList.FieldByName('FPlanTaskWrite').AsString; //�Ƶ�
      MyWorkBook.WorkSheets[k].Cells[5,5].Value := '=SUM(C8:C'+IntToStr(8+ReNum)+')'; //�ϼ�����

      //ѭ���п�ʼ
      i:=8;

       //����������
      MyWorkBook.WorkSheets[k].Name:=mdata_PTList.FieldByName('FBranchItemNumber').AsString;
      copystart:='A'+IntToStr(i);
      if mdata_PTList.recordcount>0 then
      Begin
        if mdata_PTList.recordcount>1 then
        Begin
          copystart_H:='A'+IntToStr(i+1);
          copystart1_H:='A'+IntToStr(i+1+1);
          copyend_H:='N'+IntToStr(i+1);  //����
          while ReNumH>0 do
          Begin
            ExcelApp.ActiveSheet.Range[copystart_H+':'+copyend_H].Copy;
            ExcelApp.ActiveSheet.Rows[i+1+1].Insert;
            ExcelApp.ActiveSheet.Range[copystart1_H].PasteSpecial;
            ReNumH:=ReNumH-1;
          end;


          copystart:='A'+IntToStr(i);
          copystart1:='A'+IntToStr(i+1);
          copyend:='N'+IntToStr(i);  //����

          while ReNum>0 do
          Begin
            ExcelApp.ActiveSheet.Range[copystart+':'+copyend].Copy;
            ExcelApp.ActiveSheet.Rows[i+1].Insert;
            ExcelApp.ActiveSheet.Range[copystart1].PasteSpecial;
            Renum:=Renum-1;
          end;

        end
        else
        Begin
          R_Count:=mdata_PTList.recordcount;
        end;
        mdata_PTList.first;
        while not mdata_PTList.eof do
        Begin
          If mdata_PTList['FPlanPartsType']=1 then
          begin
            MyWorkBook.WorkSheets[k].Cells[i,1].Value := mdata_PTList.FieldByName('FPlanPartsName').AsString;
            MyWorkBook.WorkSheets[k].Cells[i,3].Value := mdata_PTList.FieldByName('FPlanWet').AsString;
            MyWorkBook.WorkSheets[k].Cells[i,4].Value := mdata_PTList.FieldByName('FMakeFinshWet').AsString;

            MyWorkBook.WorkSheets[k].Cells[i,5].Value := mdata_PTList.FieldByName('FPlanaPartsPrice').AsString;
            MyWorkBook.WorkSheets[k].Cells[i,6].Value := mdata_PTList.FieldByName('FPlanDrawDate').AsString;
            MyWorkBook.WorkSheets[k].Cells[i,8].Value := mdata_PTList.FieldByName('FRealDrawDate').AsString;
            MyWorkBook.WorkSheets[k].Cells[i,9].Value := mdata_PTList.FieldByName('FFinishDate').AsString;
            MyWorkBook.WorkSheets[k].Cells[i,10].Value := mdata_PTList.FieldByName('FFinishDate').AsString;
            MyWorkBook.WorkSheets[k].Cells[i,11].Value := mdata_PTList.FieldByName('FMakeFinshDate').AsString;
            MyWorkBook.WorkSheets[k].Cells[i,12].Value := mdata_PTList.FieldByName('FShipFinshDate').AsString;
            MyWorkBook.WorkSheets[k].Cells[i,13].Value := mdata_PTList.FieldByName('FAgentShortName').AsString;
            MyWorkBook.WorkSheets[k].Cells[i,14].Value := mdata_PTList.FieldByName('FPlanTaskListRemark').AsString;

          end;  
          If mdata_PTList['FPlanPartsType']=2 then
          begin
            MyWorkBook.WorkSheets[k].Cells[i,3].Value := mdata_PTList.FieldByName('FPlanTaskListRemark').AsString;
          end;


          mdata_PTList.next;
          i:=i+1;
        End;
      end;
      qry.Next ;
      ExcelApp.Visible:=True;
      If qry.RecordCount=1 then
         MyWorkBook.WorkSheets[k].PrintPreview;  //��ӡ
      k:=k+1;
    end;
    MyWorkBook.WorkSheets[1].delete; //ɾ��ģ��
    stbMsg.Caption:='��ʾ��Ϣ����������ƻ�һ����:'+'��'+P_List_Pack+'������Ϣ�������!';
    stbBar.Refresh;
    MyWorkBook.saveas(savefilepath);
    MyWorkBook.Close;
    ExcelApp.Quit;
    ExcelApp:=Unassigned;
  end
  else
  Begin
    Application.MessageBox(PChar('û�пɵ��������ݣ�������ѡ��'), '������������', MB_OK + MB_ICONSTOP);
    Exit;
  End;


end;

procedure TFrm_PlanTaskItem.sel_AgentPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
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
                 +' where a.FDepartmentID=:FDepartmentID and FAgentShortName like :FAgentShortName  order by a.FDepartmentNumber  ';
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
    selValue:=select('ѡ��������λ','FNumber','FParentNumber','FNumber','FName',qry);
  If (Length(selValue)>0) and (qry.FieldByName('Isleaf').Value<>0) then
    begin
      MData_PTList.Edit;
      MData_PTList['FAgentShortName']:=qry.FieldByName('FAgentShortName').AsString;
      MData_PTList['FAgentID']:=qry.FieldByName('FDepartmentID').AsString;
      MData_PTList.Post;
    end
    else
      application.MessageBox('��ѡ����ϸ��','ϵͳ��ʾ',MB_ICONINFORMATION);
  end;
  qry.Free;

end;

procedure TFrm_PlanTaskItem.Act_EditExecute(Sender: TObject);
var
 qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
   { qry.SQL.Text:='Select a.*,b.* from V_PlanParts as a  '
                 +'left outer join (select * from V_PlanTaskList where FDepartmentID=:FDepartmentID and FFileItemID=:FFileItemID) as b '
                 +' on a.FPlanPartsID=b.FPlanPartsID where a.FProductID=:FProductID '
                 +'order by a.FPartsCode,a.FPlanPartsNum '; }
    {qry.SQL.Text:='Select c.FPartsNumber,a.*,b.* from (select * from V_PlanParts where FProductID=:FProductID and FPlanWeekSel=1) as a '
                 +'full OUTER join (select * from V_PlanTaskList where FDepartmentID=:FDepartmentID and FFileItemID=:FFileItemID) as b '
                 +'on a.FPlanPartsID=b.FPlanPartsID  '
                 +'left outer  join ( SELECT * from V_ItemList where FItemNumber=:FItemNumber) as c  '
                 +'on a.FProductID=c.FProductID and a.FPartsCode=c.FPartsCode '
                 +'order by a.FPartsCode,a.FPlanPartsNum ';                    FPartsNumber    FPartsSort
     }
    qry.SQL.Text:='Select b.FBranchItemNumber,isnull(b.FPartsNumber,c.FPartsNumber) as FPartsNumber,'
                 +' isnull(a.FPlanPartsNumber,b.FPlanPartsNumber) as FPlanPartsNumber,'
                 +'isnull(b.FPlanPartsName,a.FPlanPartsName) as FPlanPartsName,'
                 +'isnull(b.FPartsSort,a.FPartsSort) as FPartsSort,'
                 +'isnull(b.FPlanPartsID,a.FPlanPartsID) as FPlanPartsID,isnull(a.FProductID,b.FProductID) as FProductID,'
                 +'b.FDesignWet,b.FPlanWet,b.FPlanaPartsPrice,b.FAgentID,b.FAgentShortName,'
                 +'b.FPlanDate,b.FPlanDateTxt,b.FPlanDateShow,b.FFinishDate,b.FFinishDateTxt,b.FFinishDateShow,'
                 +'b.FPlanDrawDate,b.FRealDrawDate,b.FPlanTaskListRemark '
                 +'from (select * from V_PlanParts with(nolock) where FProductID=:FProductID and FPlanWeekSel=1) as a '
                 +'full OUTER join (select * from V_PlanTaskList with(nolock) where FDepartmentID=:FDepartmentID and FFileItemID=:FFileItemID) as b '
                 +'on a.FPlanPartsID=b.FPlanPartsID  '
                 +'left outer  join ( SELECT * from V_ItemList with(nolock) where FItemNumber=:FItemNumber) as c  '
                 +'on a.FProductID=c.FProductID and a.FPartsCode=c.FPartsCode '
                 +'order by a.FPlanPartsNumber ';

    qry.Parameters.FindParam('FProductID').Value:=Trim(Mdata_PTItem['FProductID']);
    qry.Parameters.FindParam('FDepartmentID').Value:=UserFDepartmentID;
    qry.Parameters.FindParam('FFileItemID').Value:=Trim(Mdata_PTItem['FFileItemID']);
    qry.Parameters.FindParam('FItemNumber').Value:=Trim(Mdata_PTItem['FItemNumber']);
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
  cxGvColumn(cxGv_PTList,MData_PTList);
  qry.Free;

end;

procedure TFrm_PlanTaskItem.FPlanDate_PTListHeaderClick(Sender: TObject);
Var
  qry: TADOQuery;
  I_index:Integer;
  P_Date:TDateTime;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If P_state=2 then
     Exit;
  If mData_PTList.RecordCount<=0 then
    Exit;
  I_index:=mData_PTList.RecNo ;

  mData_PTList.Edit;
  mData_PTList.Post;

  If mData_PTList['FPlanDate']=Null then
     Exit;
  P_Date:=mData_PTList['FPlanDate'];
  mData_PTList.First;
  while not mData_PTList.eof do
  begin
    If (mData_PTList['FPlanDate']=Null) then
    begin
      mData_PTList.Edit;
      mData_PTList['FPlanDate']:=P_Date;
      mData_PTList.Post;
    end;
    mData_PTList.Next;
  end;
  If (I_index<mData_PTList.RecordCount) and (I_index<>-1) then
     mData_PTList.RecNo :=I_index
  else
     mData_PTList.Last;


end;

procedure TFrm_PlanTaskItem.FPlanPartsName_PTListPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
   qry:=TADOQuery.Create(Self);
   qry.ConnectionString:=mdlData.ReadConnStr;
   MData_PTList.Edit;
   MData_PTList.Post;
  If MData_PTList['FPlanPartsName']=Null  then
  begin
    MData_PTList.Edit;
    MData_PTList['FPlanPartsName']:='';
    MData_PTList.Post;
  end;
  try
    qry.SQL.Text:='Select * from VT_PlanParts with(nolock) where FDepartmentID=:FDepartmentID and FProductID=:FProductID and FPlanPartsName like :FPlanPartsName order by FNumber';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Parameters.FindParam('FProductID').value:=MData_PTItem['FProductID'];
    qry.Parameters.FindParam('FPlanPartsName').value:='%'+MData_PTList['FPlanPartsName']+'%';
    qry.Open;
  finally
     ;
  end;
  If qry.RecordCount=1 then
  begin
    MData_PTList.Edit;
    MData_PTList['FPlanPartsName']:=qry.FieldByName('FPlanPartsName').AsString;
    MData_PTList['FPlanPartsID']:=qry.FieldByName('FPlanPartsID').AsInteger;
    MData_PTList.Post;
  end
  else
  begin
    selValue:=select('ѡ�������ƻ�����','FNumber','FParentNumber','FNumber','FName',qry);
  If (Length(selValue)>0) and (qry.FieldByName('Isleaf').Value<>0) then
    begin
      MData_PTList.Edit;
      MData_PTList['FPlanPartsName']:=qry.FieldByName('FPlanPartsName').AsString;
      MData_PTList['FPlanPartsID']:=qry.FieldByName('FPlanPartsID').AsString;
      MData_PTList['FProductID']:=qry.FieldByName('FProductID').AsString;
      MData_PTList.Post;
    end
    else
      application.MessageBox('��ѡ����ϸ��','ϵͳ��ʾ',MB_ICONINFORMATION);
  end;
  qry.Free;

end;

procedure TFrm_PlanTaskItem.cxGrid_PTListContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV_PTList';
  Gm:='mdata_PTList';
  Gr:='cxGrid_PTList';
  Act_Menu_Set.Execute;
end;

procedure TFrm_PlanTaskItem.cxGrid_PTItemContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV_PTItem';
  Gm:='mdata_PTItem';
  Gr:='cxGrid_PTItem';
  Act_Menu_Set.Execute;
end;

procedure TFrm_PlanTaskItem.TB_TrackClick(Sender: TObject);
var
  Query_Sp:TADOStoredProc;
  i,k,s,ReNum,ReNumLoop,R_Count,ReNumH,h,n:Integer;
  ExcelApp,MyWorkBook,mysheet,vLastSheet: Variant;
  filepath,savefilepath,Sqlstr,copystart,copyend,copystart1,aa,copystart_H,copyend_H,copystart1_H:string;
  ListQry:Tadoquery;
  qry,qry1:TADOquery;
  RepSpace:String;//�ϲ���Ԫ��
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  qry1:=TAdoQuery.Create(self);
  qry1.ConnectionString:=mdlData.ReadConnStr;

 // P_List_Pack:=mdata_PTItem['FBranchItemNumber'];
  filepath:=Extractfilepath(application.ExeName)+'�������ȸ��ٱ�ģ��.xls';
  if (mdata_PTList.Active) and (mdata_PTList.recordcount>0) then
  Begin
    SaveDialog1.FileName:='�������ȸ��ٱ�('+P_List_PTList+')';
    SaveDialog1.Filter:='.xls';
    SaveDialog1.Execute;

    if (mdata_PTList.FieldByName('FBranchItemNumber').AsString<>'') Or (mdata_PTList.FieldByName('FBranchItemNumber').AsString<>Null) then
        savefilepath:=SaveDialog1.FileName+'.xls';

    if FileExists(savefilepath) then
    begin
      DeleteFile(savefilepath) ;
    end;
    stbMsg.Caption:='��ʾ��Ϣ�����ڵ����������ȸ��ٱ�:'+'��'+P_List_PTList+'��';
    stbBar.Refresh;

    ExcelApp:= CreateOleObject('Excel.Application' );
    ExcelApp.DisplayAlerts:=False;                  //����ʾ��ʾ��
    MyWorkBook:=ExcelApp.WorkBooks.Open( filepath );   //��ģ��
    //ExcelApp.Visible:=True;

    try
      qry.SQL.Text:='select distinct FPlanTaskItemID,FBranchItemNumber from V_PlanTaskItem with(nolock) where FFullNumber_Write like :FFullNumber_Write';
      qry.Parameters.FindParam('FFullNumber_Write').value:=ListFNumber_PTList+'%';
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
      // qry1.SQL.Text:='select * from V_PlanTaskList where FPlanTaskItemID=:FPlanTaskItemID and FPlanPartsType=1 order by FBranchItemNumber,FPartsCode ';

       qry1.SQL.Text:='select b.n,a.* from V_PlanTaskList as a with(nolock) left outer join '
                     +'      (Select FPlanTaskItemID,FPartsCode,count(*) as n from V_PlanTaskList with(nolock) '
                     +'              where FPlanPartsType=1 and FPlanTaskItemID=:FPlanTaskItemID1 group by FPlanTaskItemID,FPartsCode) as b  '
                     +'      on a.FPlanTaskItemID=b.FPlanTaskItemID and a.FPartsCode=b.FPartsCode '
                     +'      where a.FPlanPartsType=1 and a.FPlanTaskItemID=:FPlanTaskItemID2 order by a.FBranchItemNumber,a.FPartsCode ';
       qry1.Parameters.FindParam('FPlanTaskItemID1').value:=qry.FieldByName('FPlanTaskItemID').Value;
       qry1.Parameters.FindParam('FPlanTaskItemID2').value:=qry.FieldByName('FPlanTaskItemID').Value;
       qry1.Open;
     finally
       ;
     end;
     ReNum:=qry1.RecordCount-1;
     if qry1.RecordCount>0 then
     begin
       mdata_PTList.Close;
       mdata_PTList.CopyFromDataSet(qry1);
     end;
     vLastSheet:=MyWorkBook.Sheets[MyWorkBook.Sheets.Count];
     MyWorkBook.Sheets[1].Copy(EmptyParam,vLastSheet);
     MyWorkBook.WorkSheets[k].Name:=IntToStr(k)+mdata_PTList['FBranchItemNumber'];
     MyWorkBook.WorkSheets[k].Activate;


      //����
      MyWorkBook.WorkSheets[k].Cells[1,1].Value:=AnsiReplaceStr(MyWorkBook.WorkSheets[k].Cells[1,1].Value,'A',UserFDepartmentName); //��˾����
      MyWorkBook.WorkSheets[k].Cells[2,1].Value:=AnsiReplaceStr(MyWorkBook.WorkSheets[k].Cells[2,1].Value,'B',mdata_PTList['FClientFullName']);

      MyWorkBook.WorkSheets[k].Cells[4,3].Value := Trim(mdata_PTList.FieldByName('FPactNo').AsString);
      MyWorkBook.WorkSheets[k].Cells[4,6].Value := Trim(mdata_PTList.FieldByName('FClientFullName').AsString);
      MyWorkBook.WorkSheets[k].Cells[4,12].Value := Trim(mdata_PTList.FieldByName('FDeliveryDate').AsString);

      MyWorkBook.WorkSheets[k].Cells[5,3].Value := Trim(mdata_PTList.FieldByName('FFileNo').AsString);
      MyWorkBook.WorkSheets[k].Cells[5,6].Value := Trim(mdata_PTList.FieldByName('FItemModel').AsString);
      MyWorkBook.WorkSheets[k].Cells[5,12].Value := mdata_PTList.FieldByName('FPactFinishDate').AsString;

      MyWorkBook.WorkSheets[k].Cells[6,3].Value := Trim(mdata_PTList.FieldByName('FItemNumber').AsString);
      MyWorkBook.WorkSheets[k].Cells[6,6].Value := Trim(mdata_PTList.FieldByName('FItemQry').AsString);
      MyWorkBook.WorkSheets[k].Cells[6,10].Value := Trim(mdata_PTList.FieldByName('FESPWet').AsString);
      MyWorkBook.WorkSheets[k].Cells[6,12].Value := Trim(mdata_PTList.FieldByName('FFinshESPWet').AsString);
      MyWorkBook.WorkSheets[k].Cells[6,14].Value := Trim(mdata_PTList.FieldByName('FFinshESPPercent').AsString)+'%';


      MyWorkBook.WorkSheets[k].Cells[9,3].Value:=mdata_PTList.FieldByName('FPlanTaskCheck').AsString; //���
      MyWorkBook.WorkSheets[k].Cells[9,13].Value:=mdata_PTList.FieldByName('FPlanTaskWrite').AsString; //�Ƶ�


      //ѭ���п�ʼ
      i:=8;

       //����������
      MyWorkBook.WorkSheets[k].Name:=mdata_PTList.FieldByName('FBranchItemNumber').AsString;
      copystart:='A'+IntToStr(i);
      if mdata_PTList.recordcount>0 then
      Begin
        if mdata_PTList.recordcount>1 then
        Begin
          copystart_H:='A'+IntToStr(i+1);
          copystart1_H:='A'+IntToStr(i+1+1);
          copyend_H:='O'+IntToStr(i+1);  //����
          while ReNumH>0 do
          Begin
            ExcelApp.ActiveSheet.Range[copystart_H+':'+copyend_H].Copy;
            ExcelApp.ActiveSheet.Rows[i+1+1].Insert;
            ExcelApp.ActiveSheet.Range[copystart1_H].PasteSpecial;
            ReNumH:=ReNumH-1;
          end;

          copystart:='A'+IntToStr(i);
          copystart1:='A'+IntToStr(i+1);
          copyend:='O'+IntToStr(i);  //����
          while ReNum>0 do
          Begin
            ExcelApp.ActiveSheet.Range[copystart+':'+copyend].Copy;
            ExcelApp.ActiveSheet.Rows[i+1].Insert;
            ExcelApp.ActiveSheet.Range[copystart1].PasteSpecial;
            Renum:=Renum-1;
          end;
        end
        else
        Begin
          R_Count:=mdata_PTList.recordcount;
        end;
        mdata_PTList.first;
        while not mdata_PTList.eof do
        Begin
           If mdata_PTList['n']=1 then
           begin
             MyWorkBook.WorkSheets[k].Cells[i,1].Value := mdata_PTList.FieldByName('FPlanPartsName').AsString;
            //�ϲ���Ԫ��
             RepSpace:=GetRepRange(i,1)+':'+GetRepRange(i,3);
             ExcelApp.Range[RepSpace].Select;
             ExcelApp.Selection.Merge;
           //�и�
           If length(mdata_PTList.FieldByName('FPlanTaskListRemark').AsString)>32 then
              ExcelApp.ActiveSheet.Rows[i].RowHeight:=25.50;//?1����
           If length(mdata_PTList.FieldByName('FPlanTaskListRemark').AsString)>64 then
              ExcelApp.ActiveSheet.Rows[i].RowHeight:=45.50;//?1����
           end
           else
              MyWorkBook.WorkSheets[k].Cells[i,1].Value := mdata_PTList.FieldByName('FPartsName').AsString;

           MyWorkBook.WorkSheets[k].Cells[i,2].Value := mdata_PTList.FieldByName('FPlanPartsName').AsString;

          MyWorkBook.WorkSheets[k].Cells[i,4].Value := mdata_PTList.FieldByName('FAgentShortName').AsString;
          If mdata_PTList.FieldByName('FMakeWet').AsString='0' then
             MyWorkBook.WorkSheets[k].Cells[i,5].Value := ''
          else
            MyWorkBook.WorkSheets[k].Cells[i,5].Value := mdata_PTList.FieldByName('FMakeWet').AsString;
          If mdata_PTList.FieldByName('FMakeFinshWet').AsString='0' then
             MyWorkBook.WorkSheets[k].Cells[i,6].Value := ''
          else
            MyWorkBook.WorkSheets[k].Cells[i,6].Value := mdata_PTList.FieldByName('FMakeFinshWet').AsString;

          If mdata_PTList.FieldByName('FMakeFinshPercent').AsString='0' then
             MyWorkBook.WorkSheets[k].Cells[i,7].Value := ''
          else
            MyWorkBook.WorkSheets[k].Cells[i,7].Value := mdata_PTList.FieldByName('FMakeFinshPercent').AsString+'%';
          If mdata_PTList.FieldByName('FShipFinshPercent').AsString='0' then
             MyWorkBook.WorkSheets[k].Cells[i,8].Value :=''
          else
            MyWorkBook.WorkSheets[k].Cells[i,8].Value := mdata_PTList.FieldByName('FShipFinshPercent').AsString+'%';

          MyWorkBook.WorkSheets[k].Cells[i,9].Value :=  mdata_PTList.FieldByName('FFinishDateShow').AsString;
          MyWorkBook.WorkSheets[k].Cells[i,10].Value := mdata_PTList.FieldByName('FPlanDateShow').AsString;
          MyWorkBook.WorkSheets[k].Cells[i,11].Value := mdata_PTList.FieldByName('FMakeFinshDate').AsString;
          MyWorkBook.WorkSheets[k].Cells[i,12].Value := mdata_PTList.FieldByName('FShipFinshDate').AsString;
          MyWorkBook.WorkSheets[k].Cells[i,13].Value := mdata_PTList.FieldByName('FPlanTaskListRemark').AsString;

           //�ϲ���Ԫ��
           RepSpace:=GetRepRange(i,13)+':'+GetRepRange(i,15);
           ExcelApp.Range[RepSpace].Select;
           ExcelApp.Selection.Merge;
           //�и�
           If length(mdata_PTList.FieldByName('FPlanTaskListRemark').AsString)>45 then
              ExcelApp.ActiveSheet.Rows[i].RowHeight:=25.50;//?1����
           If length(mdata_PTList.FieldByName('FPlanTaskListRemark').AsString)>90 then
              ExcelApp.ActiveSheet.Rows[i].RowHeight:=40.5;//?1����

           //�ӱ߿���
           RepSpace:=GetRepRange(i,1)+':'+GetRepRange(i,15);
           ExcelApp.ActiveSheet.Range[RepSpace].Borders.LineStyle:=1;


          mdata_PTList.next;
          i:=i+1;
        End;
        {  RepSpace:=GetRepRange(8,10)+':'+GetRepRange(8,11);
          RepSpace:=GetRepRange(9,11)+':'+GetRepRange(10,11);
          ExcelApp.Range[RepSpace].Select;
          ExcelApp.Selection.Merge;
         }
      end;
       //�ϲ�ѭ���п�ʼ

      try
        qry1.SQL.Text:='Select FPlanTaskItemID,FPartsCode,count(*) as n from V_PlanTaskList with(nolock) '
                      +'where FPlanPartsType=1 and FPlanTaskItemID=:FPlanTaskItemID group by FPlanTaskItemID,FPartsCode ';
        qry1.Parameters.FindParam('FPlanTaskItemID').value:=qry.FieldByName('FPlanTaskItemID').Value;
        qry1.Open;
      finally
        ;
      end;
      If qry1.RecordCount>0 then
      begin
        qry1.First;
        i:=8;
        h:=1;
        while not qry1.eof do
        begin
          //�ϲ���Ԫ��
          n:=qry1.FieldByName('n').Value;
          RepSpace:=GetRepRange(i,1)+':'+GetRepRange(i+n-1,1);
          ExcelApp.Range[RepSpace].Select;
          ExcelApp.Selection.Merge;
           //�ϲ���ע
          RepSpace:=GetRepRange(i,13)+':'+GetRepRange(i+n-1,15);
          ExcelApp.Range[RepSpace].Select;
          ExcelApp.Selection.Merge;
           //�ӱ߿���
          RepSpace:=GetRepRange(i,13)+':'+GetRepRange(i+n-1,15);
          ExcelApp.ActiveSheet.Range[RepSpace].Borders.LineStyle:=1;
          qry1.Next;
          i:=i+n;
          h:=h+1;
        end;
      end;

      //�ӱ߿���
     //   RepSpace:=GetRepRange(i,1)+':'+GetRepRange(i,13);
     //   ExcelApp.ActiveSheet.Range[RepSpace].Borders.LineStyle:=1;



      qry.Next ;
      ExcelApp.Visible:=True;
      If qry.RecordCount=1 then
         MyWorkBook.WorkSheets[k].PrintPreview;  //��ӡ
      k:=k+1;
    end;
    MyWorkBook.WorkSheets[1].delete; //ɾ��ģ��
    stbMsg.Caption:='��ʾ��Ϣ���������ȸ��ٱ�:'+'��'+P_List_PTList+'������Ϣ�������!';
    stbBar.Refresh;
    MyWorkBook.saveas(savefilepath);
    MyWorkBook.Close;
    ExcelApp.Quit;
    ExcelApp:=Unassigned;
  end
  else
  Begin
    Application.MessageBox(PChar('û�пɵ��������ݣ�������ѡ��'), '������������', MB_OK + MB_ICONSTOP);
    Exit;
  End;

end;

procedure TFrm_PlanTaskItem.FPlanFinishDateTxt_PTListPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  MData_PTList.Edit;
  MData_PTList.Post;
  If MData_PTList['FFinishDateTxt']=Null  then
  begin
    MData_PTList.Edit;
    MData_PTList['FFinishDateTxt']:='';
    MData_PTList.Post;
  end;
  try
    qry.SQL.Text:='select distinct FFinishDateTxt from V_PlanTaskList with(nolock) where FDepartmentID=:FDepartmentID order by FFinishDateTxt ';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Open;
  finally
    ;
  end;

  selValue:=select('ѡ��ƻ��깤����˵�����񵥱�ע','FFinishDateTxt','FFinishDateTxt','FFinishDateTxt','FFinishDateTxt',qry);
  If (Length(selValue)>0) then
  begin
    MData_PTList.Edit;
    MData_PTList['FFinishDateTxt']:=qry.FieldByName('FFinishDateTxt').Value;
    MData_PTList.Post;
  end;

end;

procedure TFrm_PlanTaskItem.FPlanPlanDateTxt_PTListPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  MData_PTList.Edit;
  MData_PTList.Post;
  If MData_PTList['FPlanDateTxt']=Null  then
  begin
    MData_PTList.Edit;
    MData_PTList['FPlanDateTxt']:='';
    MData_PTList.Post;
  end;
  try
    qry.SQL.Text:='select distinct FPlanDateTxt from V_PlanTaskList with(nolock) where FDepartmentID=:FDepartmentID order by FPlanDateTxt ';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Open;
  finally
    ;
  end;

  selValue:=select('ѡ���Ų�����˵�����񵥱�ע','FPlanDateTxt','FPlanDateTxt','FPlanDateTxt','FPlanDateTxt',qry);
  If (Length(selValue)>0) then
  begin
    MData_PTList.Edit;
    MData_PTList['FPlanDateTxt']:=qry.FieldByName('FPlanDateTxt').Value;
    MData_PTList.Post;
  end;


end;

procedure TFrm_PlanTaskItem.FPlanTaskListRemark_PTListPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  MData_PTList.Edit;
  MData_PTList.Post;
  If MData_PTList['FPlanTaskListRemark']=Null  then
  begin
    MData_PTList.Edit;
    MData_PTList['FPlanTaskListRemark']:='';
    MData_PTList.Post;
  end;
  try
    qry.SQL.Text:='select distinct FProductID,FPlanPartsName,FPlanTaskListRemark from V_PlanTaskList with(nolock) '
                 +'where FDepartmentID=:FDepartmentID and FProductID=:FProductID and FPlanPartsName=:FPlanPartsName '
                 +'and FPlanTaskListRemark like :FPlanTaskListRemark order by FPlanTaskListRemark ';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Parameters.FindParam('FProductID').value:=MData_PTList['FProductID'];
    qry.Parameters.FindParam('FPlanPartsName').value:=MData_PTList['FPlanPartsName'];
    qry.Parameters.FindParam('FPlanTaskListRemark').value:='%'+MData_PTList['FPlanTaskListRemark']+'%';
    qry.Open;
  finally
    ;
  end;

  selValue:=select('ѡ����ϸ��ע˵��','FPlanTaskListRemark','FPlanTaskListRemark','FPlanTaskListRemark','FPlanTaskListRemark',qry);
  If (Length(selValue)>0) then
  begin
    MData_PTList.Edit;
    MData_PTList['FPlanTaskListRemark']:=qry.FieldByName('FPlanTaskListRemark').Value;
    MData_PTList.Post;
  end;

end;

procedure TFrm_PlanTaskItem.cxGV_TrackCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  If P_state<>2   then
     Exit;
  If (StrToFloat(AViewInfo.GridRecord.DisplayTexts[FMakeFinshPercent_Track.Index])=Null) or
     (StrToFloat(AViewInfo.GridRecord.DisplayTexts[FShipFinshPercent_Track.Index])=Null) then
     Exit;

  If (StrToFloat(AViewInfo.GridRecord.DisplayTexts[FMakeFinshPercent_Track.Index])=100) then
  begin
    ACanvas.Canvas.Font.Color:=clBlue; //������ɫ
    ACanvas.FillRect(AViewInfo.Bounds);
  end;

  If (StrToFloat(AViewInfo.GridRecord.DisplayTexts[FMakeFinshPercent_Track.Index])=100)
     and (StrToFloat(AViewInfo.GridRecord.DisplayTexts[FShipFinshPercent_Track.Index])=100) then
  begin
    ACanvas.Canvas.Font.Color:=clGreen; //������ɫ
    ACanvas.FillRect(AViewInfo.Bounds);
  end;

  If StrToFloat(AViewInfo.GridRecord.DisplayTexts[FMakeFinshPercent_Track.Index])<StrToFloat(AViewInfo.GridRecord.DisplayTexts[FShipFinshPercent_Track.Index]) then
  begin
    ACanvas.Canvas.Font.Color:=clRed; //������ɫ
    ACanvas.FillRect(AViewInfo.Bounds);
  end;

  If (StrToFloat(AViewInfo.GridRecord.DisplayTexts[FMakeFinshPercent_Track.Index])>100)
     or (StrToFloat(AViewInfo.GridRecord.DisplayTexts[FShipFinshPercent_Track.Index])>100) then
  begin
    ACanvas.Canvas.Font.Color:=clRed; //������ɫ
    ACanvas.FillRect(AViewInfo.Bounds);
  end;

end;

procedure TFrm_PlanTaskItem.TB_PlanClick(Sender: TObject);
var
  Query_Sp:TADOStoredProc;
  i,k,s,ReNum,ReNumLoop,R_Count,ReNumH,h,n,g:Integer;
  ExcelApp,MyWorkBook,mysheet,vLastSheet: Variant;
  filepath,savefilepath,Sqlstr,copystart,copyend,copystart_H,aa,copySpecia,copyend_H,copySpecia_H:string;
  RepSpace:String;//�ϲ���Ԫ��
  ListQry:Tadoquery;
  qry,qry1:TADOquery;

begin


  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  qry1:=TAdoQuery.Create(self);
  qry1.ConnectionString:=mdlData.ReadConnStr;


  filepath:=Extractfilepath(application.ExeName)+'���������Ų���ģ��.xls';
  if (mdata_PTList.Active) and (mdata_PTList.recordcount>0) then
  Begin
    SaveDialog1.FileName:='���������Ų���('+P_List_PTList+')';
    SaveDialog1.Filter:='.xls';
    SaveDialog1.Execute;

    if (mdata_PTList.FieldByName('FBranchItemNumber').AsString<>'') Or (mdata_PTList.FieldByName('FBranchItemNumber').AsString<>Null) then
        savefilepath:=SaveDialog1.FileName+'.xls';

    if FileExists(savefilepath) then
    begin
      DeleteFile(savefilepath) ;
    end;
    stbMsg.Caption:='��ʾ��Ϣ�����ڵ������������Ų���:'+'��'+P_List_PTList+'��';
    stbBar.Refresh;

    ExcelApp:= CreateOleObject('Excel.Application' );
    ExcelApp.DisplayAlerts:=False;                  //����ʾ��ʾ��
    MyWorkBook:=ExcelApp.WorkBooks.Open( filepath );   //��ģ��
  //  ExcelApp.Visible:=True;

    try
      qry.SQL.Text:='select distinct FPlanTaskItemID,FBranchItemNumber from V_PlanTaskItem with(nolock) where FFullNumber_Write like :FFullNumber_Write';
      qry.Parameters.FindParam('FFullNumber_Write').value:=ListFNumber_PTList+'%';
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
       qry1.SQL.Text:='select * from V_PlanTaskList with(nolock) where FPlanTaskItemID=:FPlanTaskItemID and FPlanPartsType=1 order by FBranchItemNumber,FPartsCode ';
       qry1.Parameters.FindParam('FPlanTaskItemID').value:= qry.FieldByName('FPlanTaskItemID').Value;
       qry1.Open;
     finally
       ;
     end;
     ReNum:=qry1.RecordCount-1;
     try
       qry1.SQL.Text:='select * from V_PlanTaskList with(nolock) where FPlanTaskItemID=:FPlanTaskItemID and FPlanPartsType=2 order by FBranchItemNumber,FPartsCode ';
       qry1.Parameters.FindParam('FPlanTaskItemID').value:=qry.FieldByName('FPlanTaskItemID').Value;
        qry1.Open;
     finally
       ;
     end;
     ReNumH:=qry1.RecordCount-1;

     try
      // qry1.SQL.Text:='select * from V_PlanTaskList where FPlanTaskItemID=:FPlanTaskItemID order by FBranchItemNumber,FPartsCode ';
       qry1.SQL.Text:='select b.n,a.* from V_PlanTaskList as a with(nolock) left outer join '
                     +'      (Select FPlanTaskItemID,FPartsCode,count(*) as n from V_PlanTaskList with(nolock) '
                     +'              where FPlanPartsType=1 and FPlanTaskItemID=:FPlanTaskItemID1 group by FPlanTaskItemID,FPartsCode) as b  '
                     +'      on a.FPlanTaskItemID=b.FPlanTaskItemID and a.FPartsCode=b.FPartsCode '
                     +'      where a.FPlanPartsType>=1 and a.FPlanTaskItemID=:FPlanTaskItemID2 order by a.FBranchItemNumber,a.FPartsCode ';
       qry1.Parameters.FindParam('FPlanTaskItemID1').value:=qry.FieldByName('FPlanTaskItemID').Value;
       qry1.Parameters.FindParam('FPlanTaskItemID2').value:=qry.FieldByName('FPlanTaskItemID').Value;
       qry1.Open;
     finally
       ;
     end;

     if qry1.RecordCount>0 then
     begin
       mdata_PTList.Close;
       mdata_PTList.CopyFromDataSet(qry1);
     end;
     vLastSheet:=MyWorkBook.Sheets[MyWorkBook.Sheets.Count];
     MyWorkBook.Sheets[1].Copy(EmptyParam,vLastSheet);
     MyWorkBook.WorkSheets[k].Name:=IntToStr(k)+mdata_PTList['FBranchItemNumber'];
     MyWorkBook.WorkSheets[k].Activate;


      //����
     MyWorkBook.WorkSheets[k].Cells[1,1].Value:=AnsiReplaceStr(MyWorkBook.WorkSheets[k].Cells[1,1].Value,'A',UserFDepartmentName); //��˾����
     MyWorkBook.WorkSheets[k].Cells[2,1].Value:=AnsiReplaceStr(MyWorkBook.WorkSheets[k].Cells[2,1].Value,'B',mdata_PTList['FClientFullName']);

     MyWorkBook.WorkSheets[k].Cells[4,3].Value := Trim(mdata_PTList.FieldByName('FFileNo').AsString);
     MyWorkBook.WorkSheets[k].Cells[4,6].Value := Trim(mdata_PTList.FieldByName('FClientFullName').AsString);

     MyWorkBook.WorkSheets[k].Cells[5,3].Value := Trim(mdata_PTList.FieldByName('FPactNo').AsString);
     MyWorkBook.WorkSheets[k].Cells[5,6].Value := Trim(mdata_PTList.FieldByName('FESPWet').AsString);
     MyWorkBook.WorkSheets[k].Cells[5,10].Value := mdata_PTList.FieldByName('FDeliveryDate').AsString;
     MyWorkBook.WorkSheets[k].Cells[5,13].Value := Trim(mdata_PTList.FieldByName('FItemNumber').AsString);


     MyWorkBook.WorkSheets[k].Cells[6,3].Value := Trim(mdata_PTList.FieldByName('FItemModel').AsString);
     MyWorkBook.WorkSheets[k].Cells[6,6].Value := Trim(mdata_PTList.FieldByName('FItemQry').AsString);
     MyWorkBook.WorkSheets[k].Cells[6,10].Value := mdata_PTList.FieldByName('FPactFinishDate').AsString;
     MyWorkBook.WorkSheets[k].Cells[6,13].Value := Trim(mdata_PTList.FieldByName('FFactoryNum').AsString);

     MyWorkBook.WorkSheets[k].Cells[10,4].Value:=mdata_PTList.FieldByName('FPlanTaskCheck').AsString; //���
     MyWorkBook.WorkSheets[k].Cells[10,12].Value:=mdata_PTList.FieldByName('FPlanTaskWrite').AsString; //�Ƶ�


     //ѭ���п�ʼ
     i:=8;

       //����������
     MyWorkBook.WorkSheets[k].Name:=mdata_PTList.FieldByName('FBranchItemNumber').AsString;
     if mdata_PTList.recordcount>0 then
     Begin
       if mdata_PTList.recordcount>1 then
       Begin
       { while ReNumH>0 do
          Begin
            ExcelApp.ActiveSheet.Rows[i+Renum+ReNumH].RowHeight:=30.75;//?1����
            ReNumH:=ReNumH-1;
          end; }
          //2

         copystart_H:='A'+IntToStr(i+1);  //  A9 ���� ��ʼ
         copyend_H:='L'+IntToStr(i+1);  //    L8  ����  ��ʼ
         copySpecia_H:='A'+IntToStr(i+1);   //���Ƹ�ʽ
         while ReNumH>0 do
         Begin
           ExcelApp.ActiveSheet.Range[copystart_H+':'+copyend_H].Copy; //A8:L8
           ExcelApp.ActiveSheet.Rows[i+1].Insert;
           ExcelApp.ActiveSheet.Range[copySpecia_H].PasteSpecial;
           ReNumH:=ReNumH-1;
         end;

          //1
         copystart:='A'+IntToStr(i);
         copyend:='L'+IntToStr(i);  //����
         copySpecia:='A'+IntToStr(i);
         while ReNum>0 do
         Begin
           ExcelApp.ActiveSheet.Range[copystart+':'+copyend].Copy;
           ExcelApp.ActiveSheet.Rows[i].Insert;
           ExcelApp.ActiveSheet.Range[copySpecia].PasteSpecial;
           Renum:=Renum-1;
         end;
       end
       else
       Begin
         R_Count:=mdata_PTList.recordcount;
       end;
       mdata_PTList.first;
       while not mdata_PTList.eof do
       Begin
         If mdata_PTList['FPlanPartsType']=1 then
         begin
           If mdata_PTList['n']=1 then
           begin
             MyWorkBook.WorkSheets[k].Cells[i,1].Value := mdata_PTList.FieldByName('FPlanPartsName').AsString;
             //�ϲ���Ԫ��
             RepSpace:=GetRepRange(i,1)+':'+GetRepRange(i,3);
             ExcelApp.Range[RepSpace].Select;
             ExcelApp.Selection.Merge;
           //�и�
           If length(mdata_PTList.FieldByName('FPlanTaskListRemark').AsString)>32 then
              ExcelApp.ActiveSheet.Rows[i].RowHeight:=25.50;//?1����
           If length(mdata_PTList.FieldByName('FPlanTaskListRemark').AsString)>64 then
              ExcelApp.ActiveSheet.Rows[i].RowHeight:=45.50;//?1����
           end
           else
              MyWorkBook.WorkSheets[k].Cells[i,1].Value := mdata_PTList.FieldByName('FPartsName').AsString;

           MyWorkBook.WorkSheets[k].Cells[i,2].Value := mdata_PTList.FieldByName('FPlanPartsName').AsString;
           MyWorkBook.WorkSheets[k].Cells[i,4].Value :=  mdata_PTList.FieldByName('FPlanWet').AsString;
           MyWorkBook.WorkSheets[k].Cells[i,5].Value := mdata_PTList.FieldByName('FPlanDate').AsString;
           MyWorkBook.WorkSheets[k].Cells[i,7].Value := mdata_PTList.FieldByName('FFinishDate').AsString;
           MyWorkBook.WorkSheets[k].Cells[i,9].Value := mdata_PTList.FieldByName('FAgentShortName').AsString;
           MyWorkBook.WorkSheets[k].Cells[i,11].Value := mdata_PTList.FieldByName('FPlanTaskListRemark').AsString;
           IF (mdata_PTList.FieldByName('FPartsSort').AsString='����') or (mdata_PTList.FieldByName('FPartsSort').AsString='�⹺��') then
              MyWorkBook.WorkSheets[k].Cells[5,6].Value := '=SUM(D8:D'+IntToStr(i)+')'; //�ϼ�����

         end;

         If mdata_PTList['FPlanPartsType']=2 then
         begin
           MyWorkBook.WorkSheets[k].Cells[i,1].Value := mdata_PTList.FieldByName('FPlanPartsName').AsString;
           MyWorkBook.WorkSheets[k].Cells[i,4].Value := mdata_PTList.FieldByName('FPlanTaskListRemark').AsString;
           //�ϲ���Ԫ��
           RepSpace:=GetRepRange(i,4)+':'+GetRepRange(i,13);
           ExcelApp.Range[RepSpace].Select;
           ExcelApp.Selection.Merge;
           //�и�
           If length(mdata_PTList.FieldByName('FPlanTaskListRemark').AsString)>45 then
              ExcelApp.ActiveSheet.Rows[i].RowHeight:=25.50;//?1����
           If length(mdata_PTList.FieldByName('FPlanTaskListRemark').AsString)>90 then
              ExcelApp.ActiveSheet.Rows[i].RowHeight:=40.5;//?1����

           //�ӱ߿���
           RepSpace:=GetRepRange(i,1)+':'+GetRepRange(i,13);
           ExcelApp.ActiveSheet.Range[RepSpace].Borders.LineStyle:=1;
         end;
         mdata_PTList.next;
         i:=i+1;
       End;
     end;

       //�ϲ�ѭ���п�ʼ

      try
        qry1.SQL.Text:='Select FPlanTaskItemID,FPartsCode,count(*) as n from V_PlanTaskList with(nolock) '
                      +'where FPlanPartsType=1 and FPlanTaskItemID=:FPlanTaskItemID group by FPlanTaskItemID,FPartsCode ';
        qry1.Parameters.FindParam('FPlanTaskItemID').value:=qry.FieldByName('FPlanTaskItemID').Value;
        qry1.Open;
      finally
        ;
      end;
      If qry1.RecordCount>0 then
      begin
        qry1.First;
        i:=8;
        h:=1;
        while not qry1.eof do
        begin
          //�ϲ���Ԫ��
          n:=qry1.FieldByName('n').Value;
          RepSpace:=GetRepRange(i,1)+':'+GetRepRange(i+n-1,1);
          ExcelApp.Range[RepSpace].Select;
          ExcelApp.Selection.Merge;
           //�ϲ���ע
          RepSpace:=GetRepRange(i,11)+':'+GetRepRange(i+n-1,13);
          ExcelApp.Range[RepSpace].Select;
          ExcelApp.Selection.Merge;
           //�ӱ߿���
          RepSpace:=GetRepRange(i,11)+':'+GetRepRange(i+n-1,13);
          ExcelApp.ActiveSheet.Range[RepSpace].Borders.LineStyle:=1;
          qry1.Next;
          i:=i+n;
          h:=h+1;
        end;
      end;

      //�ӱ߿���
        RepSpace:=GetRepRange(i,1)+':'+GetRepRange(i,13);
        ExcelApp.ActiveSheet.Range[RepSpace].Borders.LineStyle:=1;


     qry.Next ;
     ExcelApp.Visible:=True; //����������ʾ
     If MData_PTItem.RecordCount=1 then
       MyWorkBook.WorkSheets[k].PrintPreview;  //��ӡ
     k:=k+1;
   end;
   MyWorkBook.WorkSheets[1].delete; //ɾ��ģ��
   stbMsg.Caption:='��ʾ��Ϣ�����������Ų���:'+'��'+P_List_PTList+'������Ϣ�������!';
   stbBar.Refresh;
   MyWorkBook.saveas(savefilepath);
   MyWorkBook.Close;
   ExcelApp.Quit;
   ExcelApp:=Unassigned;
 end
 else
 Begin
   Application.MessageBox(PChar('û�пɵ��������ݣ�������ѡ��'), '������������', MB_OK + MB_ICONSTOP);
   Exit;
 End;



end;

procedure TFrm_PlanTaskItem.FPlanaPartsPrice_PTListPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  MData_PTList.Edit;
  MData_PTList.Post;
  If MData_PTList['FPlanaPartsPrice']=Null  then
  begin
    MData_PTList.Edit;
    MData_PTList['FPlanaPartsPrice']:='';
    MData_PTList.Post;
  end;

  try
    qry.SQL.Text:='select distinct FPlanaPartsPrice from V_PlanTaskList with(nolock) '
                 +'where FDepartmentID=:FDepartmentID and FPlanaPartsPrice like :FPlanaPartsPrice '
                 +'order by FPlanaPartsPrice ';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Parameters.FindParam('FPlanaPartsPrice').value:='%'+MData_PTList['FPlanaPartsPrice']+'%';
    qry.Open;
  finally
    ;
  end;

  selValue:=select('ѡ��ִ�е�������','FPlanaPartsPrice','FPlanaPartsPrice','FPlanaPartsPrice','FPlanaPartsPrice',qry);
  If (Length(selValue)>0) then
  begin
    MData_PTList.Edit;
    MData_PTList['FPlanaPartsPrice']:=qry.FieldByName('FPlanaPartsPrice').Value;
    MData_PTList.Post;
  end;

end;

procedure TFrm_PlanTaskItem.CB_ISEditClick(Sender: TObject);
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

procedure TFrm_PlanTaskItem.Act_Edit_EditExecute(Sender: TObject);
var
 qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Select * from  V_PlanTaskList with(nolock) where FPlanTaskItemID=:FPlanTaskItemID '
                 +'order by FPlanPartsNumber ';
    qry.Parameters.FindParam('FPlanTaskItemID').Value:=Trim(Mdata_PTItem['FPlanTaskItemID']);
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

procedure TFrm_PlanTaskItem.Act_FPlanPartsPriceExecute(Sender: TObject);
var
 qry:TADOquery;
 t:TDateTime;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  mData_PTList.First;
  while not mData_PTList.eof do
  begin
    if Mdata_PTList['FPlanDate']<>null then
    begin
      t:=Mdata_PTList['FPlanDate'];
      try
        qry.SQL.Text:='Select '''+dateTostr(t)+''',(convert(varchar(4),datepart(year,'''+dateTostr(t)+'''))) + ''��'''
                     +'+replicate(''0'',(2 - len(datepart(month,'''+dateTostr(t)+''')))) + convert(varchar(2),datepart(month,'''+dateTostr(t)+''')) + ''��'''
                     +'+''��Ѯ'' as a where datepart(day,'''+dateTostr(t)+''')>=10 and datepart(day,'''+dateTostr(t)+''')<=24 ';
        qry.Open;
      finally
         ;
      end;
      If qry.RecordCount=1 then
      begin
        If (mData_PTList['FPlanaPartsPrice']=Null) or (mData_PTList['FPlanaPartsPrice']='') then
        begin
          mData_PTList.Edit;
          mData_PTList['FPlanaPartsPrice']:=qry.FieldByName('a').AsString;
          mData_PTList.Post;
        end;
      end;
      try
        qry.SQL.Text:='Select '''+dateTostr(t)+''',(convert(varchar(4),datepart(year,'''+dateTostr(t)+'''))) + ''��'''
                     +'+replicate(''0'',(2 - len(datepart(month,'''+dateTostr(t)+''')))) + convert(varchar(2),datepart(month,'''+dateTostr(t)+''')) + ''��'''
                     +'+''��Ѯ'' as a where datepart(day,'''+dateTostr(t)+''')>=1 and datepart(day,'''+dateTostr(t)+''')<=9';
        qry.Open;
      finally
         ;
      end;
      If qry.RecordCount=1 then
      begin
        If (mData_PTList['FPlanaPartsPrice']=Null) or (mData_PTList['FPlanaPartsPrice']='') then
        begin
          mData_PTList.Edit;
          mData_PTList['FPlanaPartsPrice']:=qry.FieldByName('a').AsString;
          mData_PTList.Post;
        end;
      end;
      try
        qry.SQL.Text:='Select (convert(varchar(4),datepart(year,dateadd(month,1,'''+dateTostr(t)+''')))) + ''��'''
                     +'+replicate(''0'',(2 - len(datepart(month,dateadd(month,1,'''+dateTostr(t)+'''))))) + convert(varchar(2),datepart(month,dateadd(month,1,'''+dateTostr(t)+'''))) + ''��'''
                     +'+''��Ѯ'' as a where datepart(day,'''+dateTostr(t)+''')>=25 and datepart(day,'''+dateTostr(t)+''')<=31';
        qry.Open;
      finally
         ;
      end;
      If qry.RecordCount=1 then
      begin
        If (mData_PTList['FPlanaPartsPrice']=Null) or (mData_PTList['FPlanaPartsPrice']='') then
        begin
          mData_PTList.Edit;
          mData_PTList['FPlanaPartsPrice']:=qry.FieldByName('a').AsString;
          mData_PTList.Post;
        end;
      end;
    end;
    mData_PTList.Next;
  end;


end;

procedure TFrm_PlanTaskItem.Act_FPlanPartsPrice_3Execute(Sender: TObject);
var
 qry:TADOquery;
 t:TDateTime;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  mData_PTList.First;
  while not mData_PTList.eof do
  begin
    if Mdata_PTList['FPlanDate']<>null then
    begin
      t:=Mdata_PTList['FPlanDate'];
      try
        qry.SQL.Text:='Select '''+dateTostr(t)+''',(convert(varchar(4),datepart(year,'''+dateTostr(t)+'''))) + ''��'''
                     +'+replicate(''0'',(2 - len(datepart(month,'''+dateTostr(t)+''')))) + convert(varchar(2),datepart(month,'''+dateTostr(t)+''')) + ''��'''
                     +'+''��Ѯ'' as a where datepart(day,'''+dateTostr(t)+''')>=1 and datepart(day,'''+dateTostr(t)+''')<=10 ';
        qry.Open;
      finally
         ;
      end;
      If qry.RecordCount=1 then
      begin
        If (mData_PTList['FPlanaPartsPrice']=Null) or (mData_PTList['FPlanaPartsPrice']='') then
        begin
          mData_PTList.Edit;
          mData_PTList['FPlanaPartsPrice']:=qry.FieldByName('a').AsString;
          mData_PTList.Post;
        end;
      end;
      try
        qry.SQL.Text:='Select '''+dateTostr(t)+''',(convert(varchar(4),datepart(year,'''+dateTostr(t)+'''))) + ''��'''
                     +'+replicate(''0'',(2 - len(datepart(month,'''+dateTostr(t)+''')))) + convert(varchar(2),datepart(month,'''+dateTostr(t)+''')) + ''��'''
                     +'+''��Ѯ'' as a where datepart(day,'''+dateTostr(t)+''')>=11 and datepart(day,'''+dateTostr(t)+''')<=20';
        qry.Open;
      finally
         ;
      end;
      If qry.RecordCount=1 then
      begin
        If (mData_PTList['FPlanaPartsPrice']=Null) or (mData_PTList['FPlanaPartsPrice']='') then
        begin
          mData_PTList.Edit;
          mData_PTList['FPlanaPartsPrice']:=qry.FieldByName('a').AsString;
          mData_PTList.Post;
        end;
      end;
      try
        qry.SQL.Text:='Select '''+dateTostr(t)+''',(convert(varchar(4),datepart(year,'''+dateTostr(t)+'''))) + ''��'''
                     +'+replicate(''0'',(2 - len(datepart(month,'''+dateTostr(t)+''')))) + convert(varchar(2),datepart(month,'''+dateTostr(t)+''')) + ''��'''
                     +'+''��Ѯ'' as a where datepart(day,'''+dateTostr(t)+''')>=21 and datepart(day,'''+dateTostr(t)+''')<=31';
        qry.Open;
      finally
         ;
      end;



      If qry.RecordCount=1 then
      begin
        If (mData_PTList['FPlanaPartsPrice']=Null) or (mData_PTList['FPlanaPartsPrice']='') then
        begin
          mData_PTList.Edit;
          mData_PTList['FPlanaPartsPrice']:=qry.FieldByName('a').AsString;
          mData_PTList.Post;
        end;
      end;
    end;
    mData_PTList.Next;
  end;


end;

procedure TFrm_PlanTaskItem.Button1Click(Sender: TObject);
begin
  inherited;
   Act_FPlanPartsPrice.Execute;

end;

procedure TFrm_PlanTaskItem.Button2Click(Sender: TObject);
begin
  inherited;
   Act_FPlanPartsPrice_3.Execute;
end;

procedure TFrm_PlanTaskItem.Act_Item_PlanWeekDateExecute(Sender: TObject);
var qry,qry_Loop: TADOQuery;
    DS_qry:TDataSource;
    colHeadStr1,colHeadStr2,colHeadStr3,colHeadStr4,colHeadStr:string;
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
    qry_Loop.SQL.Text:='select distinct FPlanYearWeek,FFileItemID from V_PlanWeekList where FFileItemID=:FFileItemID '
                      +' order by FFileItemID,FPlanYearWeek ';
    qry_Loop.Parameters.FindParam('FFileItemID').value:=MData_PTItem['FFileItemID'];
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

  colHeadStr1:='';
  colHeadStr2:='';
  colHeadStr3:=' from (select FPlanYearWeek,FProductNum,FBranchItemNumber,FClientFullName,FPlanWeekPartsNumber,FPlanWeekPartsName,FAgentShortName,'
               +'(sum(isnull('+P_Wet+',0))) as Wet from V_PlanWeekList where FFileItemID=:FFileItemID '
               +'group by FPlanYearWeek,FProductNum,FBranchItemNumber,FClientFullName,FPlanWeekPartsNumber,FPlanWeekPartsName,FAgentShortName) as a ';
  colHeadStr4:='0';
  mdata_Qry.First;
  while not mdata_Qry.eof do
  begin
    If mdata_Qry['FPlanYearWeek']='' then
    begin
      mdata_Qry.Edit;
      mdata_Qry['FPlanYearWeek']:='�հ�';
      mdata_Qry.Post
    end;
    colHeadStr1:=colHeadStr1+',sum('+'��'+mdata_Qry['FPlanYearWeek']+'��) as '+Trim(CB_Wet.Text)+mdata_Qry['FPlanYearWeek'];
    colHeadStr2:=colHeadStr2+',isnull(case FPlanYearWeek when '+mdata_Qry['FPlanYearWeek']+' '
               +'then isnull(Wet,0) end,0) as '+'��'+mdata_Qry['FPlanYearWeek']+'��';

    colHeadStr4:=colHeadStr4+'+sum('+'��'+mdata_Qry['FPlanYearWeek']+'��)';

    mdata_Qry.Next;
  end;

  colHeadStr:='select FBranchItemNumber as ͼ��,FClientFullName as �û�����,FAgentShortName as ������λ,FPlanWeekPartsName as �������� '
             +colHeadStr1+','+colHeadStr4+' as �ϼ�,FProductNum as ��Ʒ���,FPlanWeekPartsNumber as �������� '
             +'from (select FProductNum,FBranchItemNumber,FClientFullName,FPlanWeekPartsNumber,FPlanWeekPartsName,FAgentShortName '
             +colHeadStr2+colHeadStr3
             +' ) as b group by FProductNum,FBranchItemNumber,FClientFullName,FPlanWeekPartsNumber,FPlanWeekPartsName,FAgentShortName '
             +'order by FProductNum,FBranchItemNumber,FClientFullName,FPlanWeekPartsNumber,FPlanWeekPartsName,FAgentShortName ';
  try
    Edit1.Text:=colHeadStr;
    qry.SQL.Text:=colHeadStr;
    qry.Parameters.FindParam('FFileItemID').value:=MData_PTItem['FFileItemID'];
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
      {
      If length(qry.Fields[LoopInt].AsString)*15>length(Column.Caption)*15 then
         Column.Width:=length(qry.Fields[LoopInt].AsString)*15;
      If length(qry.Fields[LoopInt].AsString)*15<=length(Column.Caption)*15 then
         Column.Width:=length(Column.Caption)*15;
       }
      If LoopInt=1 then
         Column.Width:=100
      else
         Column.Width:=30;
      column.Visible:=True;
      Column.Options.Filtering:=False;
      Column.Options.Editing:=False;
    end;
  end;



end;

procedure TFrm_PlanTaskItem.CB_WetPropertiesChange(Sender: TObject);
begin
  inherited;
  If CB_Wet.Text='�����깤' then
     P_Wet:='FMakePercent';
  If CB_Wet.Text='���ܷ���' then
     P_Wet:='FShipPercent';
  If CB_Wet.Text='���ܰ�װ����' then
     P_Wet:='FPackQry';
  If CB_Wet.Text='���ܷ�������' then
     P_Wet:='FShipQry';

  If (P_Isleaf_PTList=4) and (PC_Tack.ActivePage=TS_PlanWeek)  then
  begin
    If CB_Date.Text='����' then
       Act_Item_PlanWeekDate.Execute;
    If CB_Date.Text='����' then
       Act_Item_PlanWeekDateMonth.Execute;
  end;
end;

procedure TFrm_PlanTaskItem.Act_Item_PlanWeekDateMonthExecute(
  Sender: TObject);
var qry,qry_Loop: TADOQuery;
    DS_qry:TDataSource;
    colHeadStr1,colHeadStr2,colHeadStr3,colHeadStr4,colHeadStr:string;
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
    qry_Loop.SQL.Text:='select distinct FPlanMonthWeek,FFileItemID from V_PlanWeekList where FFileItemID=:FFileItemID '
                      +' order by FFileItemID,FPlanMonthWeek ';
    qry_Loop.Parameters.FindParam('FFileItemID').value:=MData_PTItem['FFileItemID'];
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

  colHeadStr1:='';
  colHeadStr2:='';
  colHeadStr3:=' from (select FPlanMonthWeek,FProductNum,FBranchItemNumber,FClientFullName,FPlanWeekPartsNumber,FPlanWeekPartsName,FAgentShortName,'
               +'(sum(isnull('+P_Wet+',0))) as Wet from V_PlanWeekList where FFileItemID=:FFileItemID '
               +'group by FPlanMonthWeek,FProductNum,FBranchItemNumber,FClientFullName,FPlanWeekPartsNumber,FPlanWeekPartsName,FAgentShortName) as a ';
  colHeadStr4:='0';
  mdata_Qry.First;
  while not mdata_Qry.eof do
  begin
    If mdata_Qry['FPlanMonthWeek']='' then
    begin
      mdata_Qry.Edit;
      mdata_Qry['FPlanMonthWeek']:='�հ�';
      mdata_Qry.Post
    end;
    colHeadStr1:=colHeadStr1+',sum('+'��'+mdata_Qry['FPlanMonthWeek']+'��) as '+Trim(CB_Wet.Text)+mdata_Qry['FPlanMonthWeek']+'�� ';
    colHeadStr2:=colHeadStr2+',isnull(case FPlanMonthWeek when '+mdata_Qry['FPlanMonthWeek']+' '
               +'then isnull(Wet,0) end,0) as '+'��'+mdata_Qry['FPlanMonthWeek']+'�� ';

    colHeadStr4:=colHeadStr4+'+sum('+'��'+mdata_Qry['FPlanMonthWeek']+'��)';

    mdata_Qry.Next;
  end;

  colHeadStr:='select FBranchItemNumber as ͼ��,FClientFullName as �û�����,FAgentShortName as ������λ,FPlanWeekPartsName as �������� '
             +colHeadStr1+','+colHeadStr4+' as �ϼ�,FProductNum as ��Ʒ���,FPlanWeekPartsNumber as �������� '
             +'from (select FProductNum,FBranchItemNumber,FClientFullName,FPlanWeekPartsNumber,FPlanWeekPartsName,FAgentShortName '
             +colHeadStr2+colHeadStr3
             +' ) as b group by FProductNum,FBranchItemNumber,FClientFullName,FPlanWeekPartsNumber,FPlanWeekPartsName,FAgentShortName '
             +'order by FProductNum,FBranchItemNumber,FClientFullName,FPlanWeekPartsNumber,FPlanWeekPartsName,FAgentShortName ';
  try
    Edit1.Text:=colHeadStr;
    qry.SQL.Text:=colHeadStr;
    qry.Parameters.FindParam('FFileItemID').value:=MData_PTItem['FFileItemID'];
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
      {
      If length(qry.Fields[LoopInt].AsString)*15>length(Column.Caption)*15 then
         Column.Width:=length(qry.Fields[LoopInt].AsString)*15;
      If length(qry.Fields[LoopInt].AsString)*15<=length(Column.Caption)*15 then
         Column.Width:=length(Column.Caption)*15;
       }
      If LoopInt=1 then
         Column.Width:=100
      else
         Column.Width:=30;
      column.Visible:=True;
      Column.Options.Filtering:=False;
      Column.Options.Editing:=False;
    end;
  end;


end;

procedure TFrm_PlanTaskItem.CB_DatePropertiesChange(Sender: TObject);
begin
  inherited;
  If (P_Isleaf_PTList=4) and (PC_Tack.ActivePage=TS_PlanWeek)  then
  begin
    If CB_Date.Text='����' then
       Act_Item_PlanWeekDate.Execute;
    If CB_Date.Text='����' then
       Act_Item_PlanWeekDateMonth.Execute;
  end;
end;

procedure TFrm_PlanTaskItem.Act_Plan_UpdateQryExecute(Sender: TObject);
Var
   proc:TADOStoredProc;
begin
  inherited;
  proc:=TADOStoredProc.Create(self);
  proc.ConnectionString:=mdlData.ReadConnStr;
  proc.CommandTimeout:=500;
  ShowPrograss('���ڸ��»������ݣ����Ժ򡭡�',self);
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

procedure TFrm_PlanTaskItem.cxGrid_QryContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV_Qry';
  Gm:='mdata_Qry';
  Gr:='cxGrid_Qry';
  Act_Menu_Set.Execute;

end;

procedure TFrm_PlanTaskItem.Act_Update_StockPartsWetExecute(
  Sender: TObject);
var qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  ShowPrograss('������ȡ����嵥���������Ժ򡭡�',self);
  //ɾ�������ܱ�����Ч�������ܱ���
  try
    qry.SQL.Text:='Delete from T_PlanWeekList where FPlanWeekListID in '
        +'('
        +'select FPlanWeekListID from V_PlanWeekList where Convert(varchar(10),FFileItemID)+'';''+Convert(varchar(10),FPlanWeekPartsID)+'';'' not in '
        +'(select Convert(varchar(10),FFileItemID)+'';''+Convert(varchar(10),FPlanWeekPartsID)+'';'' from V_PlanWeekDetailList)'
        +')';
    qry.ExecSQL;
  finally
    ;
  end;

  // ��ȡ����嵥����
  try
   { qry.SQL.Text:='update T_PlanTaskList set FStockPartsWet=c.FStockPartsWet/1000 from T_PlanTaskList as d '
                 +'inner join ( '
                 +'select f.FPlanTaskItemID,a.FItemID,a.FProductID,a.FPartsCode,a.FPlanParts,a.FStockPartsWet,FPlanPartsID from '
                 +'(select FItemID,FProductID,FPartsCode,FPlanParts,isnull(sum(isnull(FStockPartsWet,0)),0) as FStockPartsWet from V_StockItem '
                 +'where FDepartmentID=:FDepartmentID  '
                 +'group by FItemID,FProductID,FPartsCode,FPlanParts ) as a inner join '
                 +'T_PlanParts as b on a.FProductID=b.FProductID and a.FPlanParts=b.FPlanPartsName '
                 +'inner join T_PlanTaskItem as f on a.FItemID=f.FFileItemID '
                 +') as c  '
                 +' on  d.FPlanTaskItemID=c.FPlanTaskItemID and d.FPlanPartsID=c.FPlanPartsID ';}
   qry.SQL.Text:='update T_PlanTaskList set FStockPartsWet=c.FStockPartsWet/1000 from T_PlanTaskList as d '
                 +'inner join ( '
                 +'select f.FPlanTaskItemID,a.FItemID,a.FProductID,a.FPlanParts,a.FStockPartsWet,FPlanPartsID from '
                 +'(select FItemID,FProductID,FPlanParts,isnull(sum(isnull(FStockPartsWet,0)),0) as FStockPartsWet from V_StockItem '
                 +'where FDepartmentID=:FDepartmentID  '
                 +'group by FItemID,FProductID,FPlanParts ) as a inner join '
                 +'T_PlanParts as b on a.FProductID=b.FProductID and a.FPlanParts=b.FPlanPartsName '
                 +'inner join T_PlanTaskItem as f on a.FItemID=f.FFileItemID '
                 +') as c  '
                 +' on  d.FPlanTaskItemID=c.FPlanTaskItemID and d.FPlanPartsID=c.FPlanPartsID ';
    qry.Parameters.FindParam('FDepartmentID').value:=userFDepartmentID;
    qry.ExecSQL;
  finally
    ;
  end;
  application.MessageBox('��ȡ����嵥������ϣ�','ϵͳ��ʾ',MB_ICONINFORMATION);

end;

procedure TFrm_PlanTaskItem.TB_StockPartsWetClick(Sender: TObject);
begin
  inherited;
  Ac_PlanWeekDetail.Execute;
  Act_Update_StockPartsWet.Execute;
  Act_Update_DesignWet.Execute;
end;

procedure TFrm_PlanTaskItem.cxGrid_TrackContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV_Track';
  Gm:='mdata_PTList';
  Gr:='cxGrid_Track';
  Act_Menu_Set.Execute;
end;

procedure TFrm_PlanTaskItem.PC_TackChange(Sender: TObject);
var
   qry: TADOQuery;
   AFirstColumnStyle: TcxStyle;
begin
  inherited;
  //����ɫ
  AFirstColumnStyle := TcxStyle.Create(Self);
  AFirstColumnStyle.Color := clAqua;
  AFirstColumnStyle.TextColor := clBlue;
  cxGV_PlanWeekDetail_Add.Columns[7].Styles.Content := AFirstColumnStyle;
  cxGV_Error.Columns[11].Styles.Content := AFirstColumnStyle;
  cxGV_Error.Columns[12].Styles.Content := AFirstColumnStyle;


  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If PC_Tack.ActivePage=TS_PlanWeekDetail_Add then
  begin
    RzSP_PTitem.Visible:=False;
    try
      qry.SQL.Text:='select * from  V_PlanTaskList where isnull(FMakeWet,0)=0 and FDepartmentID=:FDepartmentID and FpartsSort=''����'' order by FAgentID,FCarryOut,FFullNumber';
      qry.Parameters.FindParam('FDepartmentID').value:= UserFDepartmentID;
      qry.Open;
    finally
      ;
    end;
    MData_PlanWeekDetail_Add.CopyFromDataSet(qry);
    MData_PlanWeekDetail_Add.Active:=True;
  end;
  If PC_Tack.ActivePage=TS_PlanWeek_Week then
  begin
    RzSP_PTitem.Visible:=False;
     try
       qry.SQL.Text:='select a.FPlanYearWeek,b.FPlanMonthweek from '
                    +'(select max(FPlanYearWeek) as FPlanYearWeek from V_PlanWeek  where FDepartmentID=:FDepartmentID) as a '
                    +' left outer join T_PlanWeekDate as b on a.FPlanYearWeek=b.FPlanYearWeek ';
      qry.Parameters.FindParam('FDepartmentID').value:= UserFDepartmentID;
      qry.Open;
    finally
      ;
    end;
    If qry.RecordCount>0 then
    begin
       E_FPlanYearWeek.Text:=qry.FieldbyName('FPlanYearWeek').AsString;
       E_FPlanYearMonth.Text:=qry.FieldbyName('FPlanMonthweek').AsString;
    end
    else
    begin
       E_FPlanYearWeek.Text:='';
       Exit;
    end;

    try


      qry.SQL.Text:='select b.FDepartmentName as FAgentShortName,a.FName,FBranchItemNumber,a.FItemPlanDate from VT_PlanWeekDetail as a  with(nolock) '
                   +'left outer join T_Department as b on a.FAgentID=b.FDepartmentID '
                   +'where  FNumber like ''%;1;%'' and FBranchItemNumber<>'''' and a.FDepartmentID=:FDepartmentID '
                   +'order by FDepartmentName desc ,FBranchItemNumber';
      qry.Parameters.FindParam('FDepartmentID').value:= UserFDepartmentID;

      {  qry.SQL.Text:='select b.FDepartmentName as FAgentShortName,a.FName,FBranchItemNumber,a.FItemPlanDate from VT_PlanWeekDetail as a  with(nolock) '
                     +'left outer join T_Department as b on a.FAgentID=b.FDepartmentID '
                     +'where  FNumber like ''%;1;%'' and FBranchItemNumber<>'''' and a.FDepartmentID=:FDepartmentID and '
                     +'Convert(nvarchar(20),FFileItemID)+'';''+Convert(nvarchar(20),FAgentID)+'';'' not in '
                     +'(select Convert(nvarchar(20),FFileItemID)+'';''+Convert(nvarchar(20),FAgentID)+'';'' from T_PlanWeek where FPlanYearWeek=:FPlanYearWeek ) '
                     +'order by FDepartmentName desc ,FBranchItemNumber';
        qry.Parameters.FindParam('FDepartmentID').value:= UserFDepartmentID;
        qry.Parameters.FindParam('FPlanYearWeek').value:= Trim(E_FPlanYearWeek.Text);
       }

      qry.Open;
    finally
      ;
    end;
    MData_PlanWeek_Week.CopyFromDataSet(qry);
    MData_PlanWeek_Week.Active:=True;
  end;


  If PC_Tack.ActivePage=TS_PlanDate then
  begin
    RzSP_PTitem.Visible:=False;
     try
       qry.SQL.Text:='select * from V_PlanTaskList where FAgentID<>93 and FPlanDate is null and FPlanPartsType=1 and '
                    +'FDepartmentID=:FDepartmentID order by FBranchItemNumber  ';
      qry.Parameters.FindParam('FDepartmentID').value:= UserFDepartmentID;
      qry.Open;
    finally
      ;
    end;
    MData_PlanDate.CopyFromDataSet(qry);
    MData_PlanDate.Active:=True;
  end;



  If PC_Tack.ActivePage=TS_Error then
  begin
    RzSP_PTitem.Visible:=False;
    try
      qry.SQL.Text:='select cast((cast(FShipQry as Numeric(18,2))/cast(FMakeBOMPackQry as Numeric(18,2)))*100 as Numeric(18,4)) as FProportion, '
                   +'round((isnull(FShipQry,0)/isnull(FMakeBOMPackQry,0)),2)*100,* from V_PlanWeekList '
                   +'where  FDepartmentID=:FDepartmentID and isnull(FShipQry,0)<>0 and isnull(FMakeBOMPackQry,0)<>0 '
                   +'and  FShipPercent<>cast((cast(FShipQry as Numeric(18,2))/cast(FMakeBOMPackQry as Numeric(18,2)))*100 as Numeric(18,4)) ';
      qry.Parameters.FindParam('FDepartmentID').value:= UserFDepartmentID;
      qry.Open;
    finally
      ;
    end;
    MData_Error.CopyFromDataSet(qry);
    MData_Error.Active:=True;
  end
  else
    RzSP_PTitem.Visible:=True;

end;

procedure TFrm_PlanTaskItem.cxGrid_PlanWeekDetail_AddContextPopup(
  Sender: TObject; MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV_PlanWeekDetail_Add';
  Gm:='mdata_PlanWeekDetail_Add';
  Gr:='cxGrid_PlanWeekDetail_Add';
  Act_Menu_Set.Execute;
end;

procedure TFrm_PlanTaskItem.E_FPlanYearWeekPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  try
    qry.SQL.Text:='select * from VT_PlanWeekDate with(nolock) '
                 +' where FPlanYearWeek like :FPlanYearWeek ';
    qry.Parameters.FindParam('FPlanYearWeek').Value:=Trim(E_FPlanYearWeek.Text)+'%';
    qry.Open;
  finally
   ;
  end;
  If qry.RecordCount=1 then
    E_FPlanYearWeek.Text:=qry.FieldByName('FPlanYearWeek').Value
  else
  begin
    selValue:=select('ѡ���ܱ�����','FNumber','FParentNumber','FNumber','FName',qry);
    If (Length(selValue)>0) and (qry.FieldByName('Isleaf').Value<>0) then
    begin
      E_FPlanYearWeek.Text:=qry.FieldByName('FPlanYearWeek').Value;
      E_FPlanYearMonth.Text:=qry.FieldByName('FPlanYearMonth').Value;
    end;
  end;

    try
      qry.SQL.Text:='select b.FDepartmentName as FAgentShortName,a.FName,FBranchItemNumber,a.FItemPlanDate from VT_PlanWeekDetail as a  with(nolock) '
                   +'left outer join T_Department as b on a.FAgentID=b.FDepartmentID '
                   +'where  FNumber like ''%;1;%'' and FBranchItemNumber<>'''' and a.FDepartmentID=:FDepartmentID and '
                   +'Convert(nvarchar(20),FFileItemID)+'';''+Convert(nvarchar(20),FAgentID)+'';'' not in '
                   +'(select Convert(nvarchar(20),FFileItemID)+'';''+Convert(nvarchar(20),FAgentID)+'';'' from T_PlanWeek where FPlanYearWeek=:FPlanYearWeek ) '
                   +'order by FDepartmentName desc ,FBranchItemNumber';
      qry.Parameters.FindParam('FDepartmentID').value:= UserFDepartmentID;
      qry.Parameters.FindParam('FPlanYearWeek').value:= Trim(E_FPlanYearWeek.Text);
      qry.Open;
    finally
      ;
    end;
    MData_PlanWeek_Week.CopyFromDataSet(qry);
    MData_PlanWeek_Week.Active:=True;
end;

procedure TFrm_PlanTaskItem.cxGrid_PlanWeek_WeekContextPopup(
  Sender: TObject; MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV_PlanWeek_Week';
  Gm:='mdata_PlanWeek_Week';
  Gr:='cxGrid_PlanWeek_Week';
  Act_Menu_Set.Execute;

end;

procedure TFrm_PlanTaskItem.Act_PlanWeekExecute(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  PC_Tack.ActivePage:=Ts_PlanWeekList;
  try
     qry.SQL.Text:='Select * from V_PlanWeekList where FFileItemID=:FFileItemID and FPlanPartsID=:FPlanPartsID  order by FPlanYearWeek';
     qry.Parameters.FindParam('FFileItemID').value:= MData_PTList['FFileItemID'];
     qry.Parameters.FindParam('FPlanPartsID').value:= MData_PTList['FPlanPartsID'];
     qry.Open;
  finally
     ;
  end;
  MData_PlanWeek.CopyFromDataSet(qry);
  MData_PlanWeek.Active:=True;

end;

procedure TFrm_PlanTaskItem.PC_TaskChange(Sender: TObject);
begin
  inherited;
  TB_Ref_Ship.Click;
  Mdata_PTItem.Close;
  Mdata_PTList.Close;

end;

procedure TFrm_PlanTaskItem.cxGV_PTItemCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  If  P_state=2 then   //���������޸�״̬
  begin
    If (StrToFloat(AViewInfo.GridRecord.DisplayTexts[FFinshESPPercent_PTItem.Index])=Null) or
       (StrToFloat(AViewInfo.GridRecord.DisplayTexts[FFinshESPShipPercent_PTItem.Index])=Null) then
       Exit;

    If (StrToFloat(AViewInfo.GridRecord.DisplayTexts[FFinshESPPercent_PTItem.Index])=100) then
    begin
      ACanvas.Canvas.Font.Color:=clBlue; //������ɫ
      ACanvas.FillRect(AViewInfo.Bounds);
    end;
    If (StrToFloat(AViewInfo.GridRecord.DisplayTexts[FFinshESPPercent_PTItem.Index])=100)
       and (StrToFloat(AViewInfo.GridRecord.DisplayTexts[FFinshESPShipPercent_PTItem.Index])=100) then
    begin
      ACanvas.Canvas.Font.Color:=clGreen; //������ɫ
      ACanvas.FillRect(AViewInfo.Bounds);
    end;

    If StrToFloat(AViewInfo.GridRecord.DisplayTexts[FFinshESPPercent_PTItem.Index])
      <StrToFloat(AViewInfo.GridRecord.DisplayTexts[FFinshESPShipPercent_PTItem.Index]) then
    begin
      ACanvas.Canvas.Font.Color:=clRed; //������ɫ
      ACanvas.FillRect(AViewInfo.Bounds);
    end;

    If (StrToFloat(AViewInfo.GridRecord.DisplayTexts[FFinshESPPercent_PTItem.Index])>100)
       or (StrToFloat(AViewInfo.GridRecord.DisplayTexts[FFinshESPShipPercent_PTItem.Index])>100) then
    begin
      ACanvas.Canvas.Font.Color:=clRed; //������ɫ
      ACanvas.FillRect(AViewInfo.Bounds);
    end;
  end; 
end;

procedure TFrm_PlanTaskItem.Act_PlanWeek_UpdateExecute(Sender: TObject);
Var
   proc:TADOStoredProc;
begin
  inherited;
  proc:=TADOStoredProc.Create(self);
  proc.ConnectionString:=mdlData.ReadConnStr;
  proc.CommandTimeout:=500;
  ShowPrograss('���ڸ��»������ݣ����Ժ򡭡�',self);
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

procedure TFrm_PlanTaskItem.TB_Qry_CountClick(Sender: TObject);
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
    Act_PlanWeek_Update.Execute;//�������������� 20161124
    MData_PTItem.Next;
  end;
  s2:=now();
  a:=FormatDateTime('hh:mm:ss',s2-s1);
  Messagedlg('��ʾ��Ϣ��������ϣ�����ʱ�䣺��'+a+'��',mtInformation,[mbok],0);
 // application.MessageBox('������ϣ�','ϵͳ��ʾ',MB_ICONINFORMATION);
  P_state:=2;

end;

procedure TFrm_PlanTaskItem.Ac_PlanWeekDetailExecute(Sender: TObject);
Var
   proc:TADOStoredProc;
begin
  inherited;
  proc:=TADOStoredProc.Create(self);
  proc.ConnectionString:=mdlData.ReadConnStr;
  proc.CommandTimeout:=500;
  ShowPrograss('�����Զ�У���ܱ���ϸ�����Ժ򡭡�',self);
  try
    proc.ProcedureName:='P_PlanWeekDetail;1';
     with proc.Parameters.AddParameter do
     begin
       DataType := ftInteger;
       Direction := pdinput;
       size:=20;
       name := '@FDepartmentID';
       value:=UserFDepartmentID;
     end;
     proc.ExecProc;
   finally
     ;
   end;
   proc.Free;
   application.MessageBox('�Զ�У���ܱ���ϸ��ϣ�','ϵͳ��ʾ',MB_ICONINFORMATION);

end;

procedure TFrm_PlanTaskItem.cxGrid_PlanDateContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV_PlanDate';
  Gm:='MData_PlanDate';
  Gr:='cxGrid_PlanDate';
  Act_Menu_Set.Execute;

end;

procedure TFrm_PlanTaskItem.cxGV_PlanDateCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  If P_state<>2   then
     Exit;
  If (StrToFloat(AViewInfo.GridRecord.DisplayTexts[FMakeFinshPercent_PlanDate.Index])=Null) or
     (StrToFloat(AViewInfo.GridRecord.DisplayTexts[FShipFinshPercent_PlanDate.Index])=Null) then
     Exit;

  If (StrToFloat(AViewInfo.GridRecord.DisplayTexts[FMakeFinshPercent_PlanDate.Index])=100) then
  begin
    ACanvas.Canvas.Font.Color:=clBlue; //������ɫ
    ACanvas.FillRect(AViewInfo.Bounds);
  end;
  If (StrToFloat(AViewInfo.GridRecord.DisplayTexts[FMakeFinshPercent_PlanDate.Index])=100)
     and (StrToFloat(AViewInfo.GridRecord.DisplayTexts[FShipFinshPercent_PlanDate.Index])=100) then
  begin
    ACanvas.Canvas.Font.Color:=clGreen; //������ɫ
    ACanvas.FillRect(AViewInfo.Bounds);
  end;

  If StrToFloat(AViewInfo.GridRecord.DisplayTexts[FMakeFinshPercent_PlanDate.Index])<StrToFloat(AViewInfo.GridRecord.DisplayTexts[FShipFinshPercent_PlanDate.Index]) then
  begin
    ACanvas.Canvas.Font.Color:=clRed; //������ɫ
    ACanvas.FillRect(AViewInfo.Bounds);
  end;

  If (StrToFloat(AViewInfo.GridRecord.DisplayTexts[FMakeFinshPercent_PlanDate.Index])>100)
     or (StrToFloat(AViewInfo.GridRecord.DisplayTexts[FShipFinshPercent_PlanDate.Index])>100) then
  begin
    ACanvas.Canvas.Font.Color:=clRed; //������ɫ
    ACanvas.FillRect(AViewInfo.Bounds);
  end;

end;

procedure TFrm_PlanTaskItem.PC_TackContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV_PLanDate';
  Gm:='mdata_PLanDate';
  Gr:='cxGrid_PLanDate';
  Act_Menu_Set.Execute;

end;

procedure TFrm_PlanTaskItem.Act_Update_DesignWetExecute(Sender: TObject);
Var
   proc:TADOStoredProc;
begin
  inherited;
  proc:=TADOStoredProc.Create(self);
  proc.ConnectionString:=mdlData.ReadConnStr;
  proc.CommandTimeout:=500;
  ShowPrograss('������ȡ������������Ժ򡭡�',self);
  try
    proc.ProcedureName:='P_PlanTask_DesignWet;1';
     with proc.Parameters.AddParameter do
     begin
       DataType := ftInteger;
       Direction := pdinput;
       size:=20;
       name := '@';
       value:=UserFDepartmentID;
     end;
     proc.ExecProc;
   finally
     ;
   end;
   proc.Free;
   application.MessageBox('��ȡ���������ϣ�','ϵͳ��ʾ',MB_ICONINFORMATION);
end;

procedure TFrm_PlanTaskItem.Act_Pick_DesignWetExecute(Sender: TObject);
var
  qry,qry1:TADOquery;
  a:Integer;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.CommandTimeout:=500;
  qry1:=TADOQuery.Create(self);
  qry1.ConnectionString:=mdlData.ReadConnStr;
  qry1.CommandTimeout:=500;
  If MData_PTList.RecordCount<=0 then
     Exit;

  MData_PTList.First;
  while not MData_PTList.Eof do
  begin
    If (MData_PTList['FPartsSort']='����') and ((MData_PTList['FPartsNumber']='') or (MData_PTList['FPartsNumber']=Null)) then
    begin
      MData_PTList.Delete;
    end
    else
    MData_PTList.Next;
  end;
  
  try
    qry1.SQL.Text:='Select * From T_Item with(nolock) where FItemNumber=:FItemNumber ';
    qry1.Parameters.FindParam('FItemNumber').value:= MData_PTItem['FItemNumber'];
    qry1.Open;
  finally
     ;
  end;
  try
    qry.SQL.Text:='Select FItemNoID,FItemNumber,FPlanPartsID,sum(FSuttle*FSumQry)/1000 as FDesignWet '
                 +'from V_DesignBOM_Structure with(nolock) where  isnull(FItemID,0)<>0  and FItemNoID=:FItemNoID '
                 +'group by FItemNoID,FItemNumber,FPlanPartsID ';
    qry.Parameters.FindParam('FItemNoID').value:= qry1.FieldByName('FItemId').Value;
    qry.Open;
  finally
    ;
 end;
   a:=qry.RecordCount;
  qry.First;
  while not qry.Eof do
  begin
    MData_PTList.First;
    while not MData_PTList.Eof do
    begin
      If MData_PTList['FPlanPartsID']=qry.FieldByName('FPlanPartsID').Value then
      begin
        MData_PTList.Edit;
        MData_PTList['FDesignWet']:=qry.FieldByName('FDesignWet').Value;
        If (MData_PTList['FPlanWet']=0) or (MData_PTList['FPlanWet']=Null) then
            MData_PTList['FPlanWet']:=qry.FieldByName('FDesignWet').Value;
        MData_PTList.Post;
      end;
      MData_PTList.Next;
    end;
    qry.Next;
  end;
  MData_PTList.First;
  application.MessageBox('��ȡ���������ϣ�','ϵͳ��ʾ',MB_ICONINFORMATION);

  {try
    qry1.SQL.Text:='Select * From T_Item with(nolock) where FItemNumber=:FItemNumber ';
    qry1.Parameters.FindParam('FItemNumber').value:= MData_PTItem['FItemNumber'];
    qry1.Open;
  finally
     ;
  end;

  MData_PTList.First;
  while not MData_PTList.Eof do
  begin
    If (MData_PTList['FPartsNumber']<>'') and (MData_PTList['FPartsNumber']<>Null) then
    begin
      try
         qry.SQL.Text:='Select FItemNoID,FItemNumber,FPlanPartsID,sum(FSuttle*FSumQry)/1000 as FDesignWet '
                      +'from V_DesignBOM_Structure with(nolock) where  isnull(FItemID,0)<>0  and FItemNoID=:FItemNoID and FPlanPartsID=:FPlanPartsID  '
                      +'group by FItemNoID,FItemNumber,FPlanPartsID ';
         qry.Parameters.FindParam('FItemNoID').value:= qry1.FieldByName('FItemId').Value;
         qry.Parameters.FindParam('FPlanPartsID').value:= MData_PTList['FPlanPartsID'];
         qry.Open;
      finally
        7 ;
      end;
      MData_PTList.Edit;
      MData_PTList['FDesignWet']:=qry.FieldByName('FDesignWet').Value;
      If (MData_PTList['FPlanWet']=0) or (MData_PTList['FPlanWet']=Null) then
         MData_PTList['FPlanWet']:=qry.FieldByName('FDesignWet').Value;
      MData_PTList.Post;
    end;
    MData_PTList.Next;
  end;}

end;

procedure TFrm_PlanTaskItem.Button3Click(Sender: TObject);
begin
  inherited;
  Act_Pick_DesignWet.Execute;
end;

procedure TFrm_PlanTaskItem.E_LocatePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
 qry: TADOQuery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Select * from V_PlanTaskItem with(nolock) where FItemNumber like :Locate1 or '
                 +'FBranchItemNumber like :Locate2 or FClientShortName like :Locate3 '
                 +'or FProductName like :Locate4 or FCarryOut like :Locate5 '
                 +'or FPlanner like :Locate6 or FArea like :Locate7 '
                 +'or FFileNo like :Locate8 or FBranchFileNo like :Locate9 ';
    qry.Parameters.FindParam('Locate1').Value:='%'+Trim(E_Locate.Text)+'%';
    qry.Parameters.FindParam('Locate2').Value:='%'+Trim(E_Locate.Text)+'%';
    qry.Parameters.FindParam('Locate3').Value:='%'+Trim(E_Locate.Text)+'%';
    qry.Parameters.FindParam('Locate4').Value:='%'+Trim(E_Locate.Text)+'%';
    qry.Parameters.FindParam('Locate5').Value:='%'+Trim(E_Locate.Text)+'%';
    qry.Parameters.FindParam('Locate6').Value:='%'+Trim(E_Locate.Text)+'%';
    qry.Parameters.FindParam('Locate7').Value:='%'+Trim(E_Locate.Text)+'%';
    qry.Parameters.FindParam('Locate8').Value:='%'+Trim(E_Locate.Text)+'%';
    qry.Parameters.FindParam('Locate9').Value:='%'+Trim(E_Locate.Text)+'%';
    qry.Open;
  finally
     ;
  end;
  MData_PTItem.CopyFromDataSet(qry);
  MData_PTItem.Active:=True;


end;

end.


