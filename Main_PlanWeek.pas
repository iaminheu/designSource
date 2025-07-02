unit Main_PlanWeek;

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
  ActnList, RzLabel, cxButtons, cxTimeEdit, jpeg,
  cxCheckComboBox, cxGridBandedTableView, cxGridDBBandedTableView, DBTables, Menus;

type
  TFrm_PlanWeek = class(TFrm_GridBass)
    ImageList: TImageList;
    frReport: TfrReport;
    frDBDataSet: TfrDBDataSet;
    PC_PlanWeek: TRzPageControl;
    TS_PlanWeek: TRzTabSheet;
    PanelBkGnd: TPanel;
    Panel7: TPanel;
    RSP_CList: TRzSizePanel;
    Image2: TImage;
    Label1: TLabel;
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
    TB_Accept: TToolButton;
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
    Act_Ref: TAction;
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
    StringField123: TStringField;
    StringField124: TStringField;
    StringField125: TStringField;
    StringField126: TStringField;
    StringField127: TStringField;
    StringField128: TStringField;
    StringField129: TStringField;
    StringField130: TStringField;
    StringField131: TStringField;
    StringField132: TStringField;
    StringField133: TStringField;
    FloatField31: TFloatField;
    FloatField32: TFloatField;
    FloatField33: TFloatField;
    StringField134: TStringField;
    StringField135: TStringField;
    StringField136: TStringField;
    StringField137: TStringField;
    StringField138: TStringField;
    StringField139: TStringField;
    IntegerField12: TIntegerField;
    FloatField34: TFloatField;
    FloatField35: TFloatField;
    FloatField36: TFloatField;
    DS_Mdata_PTItem: TDataSource;
    DS_Mdata_PTList: TDataSource;
    MData_PTList: TdxMemData;
    StringField140: TStringField;
    StringField141: TStringField;
    StringField142: TStringField;
    StringField143: TStringField;
    StringField144: TStringField;
    StringField145: TStringField;
    StringField146: TStringField;
    StringField147: TStringField;
    StringField148: TStringField;
    StringField149: TStringField;
    StringField150: TStringField;
    FloatField37: TFloatField;
    FloatField38: TFloatField;
    FloatField39: TFloatField;
    StringField151: TStringField;
    StringField152: TStringField;
    StringField153: TStringField;
    StringField154: TStringField;
    StringField155: TStringField;
    StringField156: TStringField;
    IntegerField13: TIntegerField;
    FloatField40: TFloatField;
    FloatField41: TFloatField;
    FloatField42: TFloatField;
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
    FProductID_PTItem: TcxGridDBColumn;
    FDeliveryDate_PTItem: TcxGridDBColumn;
    FFinishDate_PTItem: TcxGridDBColumn;
    FPlanWeekStatus_PTItem: TcxGridDBColumn;
    FPlanWeekStatusNotes_PTItem: TcxGridDBColumn;
    FPlanWeekWriteDate_PTItem: TcxGridDBColumn;
    FPlanWeekWriteID_PTItem: TcxGridDBColumn;
    FPlanWeekWrite_PTItem: TcxGridDBColumn;
    Act_Edit: TAction;
    FPlanWeekID_PTItem: TcxGridDBColumn;
    Act_Count: TAction;
    FPlanYearWeek_PTItem: TcxGridDBColumn;
    FPlanDateExtent_PTItem: TcxGridDBColumn;
    Act_PlanWeek_UpdateQry: TAction;
    PC_Tack: TRzPageControl;
    TS_Edit: TRzTabSheet;
    Panel1: TPanel;
    P_Btn: TPanel;
    CancelBtn_M: TcxButton;
    OKBtn_M: TcxButton;
    cxGrid_PTList: TcxGrid;
    cxGV_PTList: TcxGridDBTableView;
    FPartsCode_PTList: TcxGridDBColumn;
    FPlanPartsName_PTList: TcxGridDBColumn;
    FPlanWeekPartsName_PTList: TcxGridDBColumn;
    FMakeBOMWet_PTList: TcxGridDBColumn;
    FLastMakePercent_PTList: TcxGridDBColumn;
    FMakePercent_PTList: TcxGridDBColumn;
    FTotalMakePercent_PTList: TcxGridDBColumn;
    FLastShipPercent_PTList: TcxGridDBColumn;
    FShipPercent_PTList: TcxGridDBColumn;
    FTotalShipPercent_PTList: TcxGridDBColumn;
    FPlanWeekPack_PTList: TcxGridDBColumn;
    FWorkShop_PTList: TcxGridDBColumn;
    FTeamName_PTList: TcxGridDBColumn;
    FAgentShortName_PTList: TcxGridDBColumn;
    FTeamID_PTList: TcxGridDBColumn;
    FAgentID_PTList: TcxGridDBColumn;
    FPlanWeekPartsID_PTList: TcxGridDBColumn;
    cxGL_PTList: TcxGridLevel;
    FLastPackQry_PTList: TcxGridDBColumn;
    FPackQry_PTList: TcxGridDBColumn;
    FTotalPackQry_PTList: TcxGridDBColumn;
    FLastShipQry_PTList: TcxGridDBColumn;
    FShipQry_PTList: TcxGridDBColumn;
    FTotalShipQry_PTList: TcxGridDBColumn;
    FMakeBOMPackQry_PTList: TcxGridDBColumn;
    FPlanWeekListID_PTList: TcxGridDBColumn;
    FPlanWeekPartsAdd_PTList: TcxGridDBColumn;
    Act_Accept: TAction;
    MData_QryList: TdxMemData;
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
    MData_QryItem: TdxMemData;
    StringField18: TStringField;
    StringField19: TStringField;
    StringField20: TStringField;
    StringField21: TStringField;
    StringField22: TStringField;
    StringField23: TStringField;
    StringField24: TStringField;
    StringField25: TStringField;
    StringField26: TStringField;
    StringField27: TStringField;
    StringField28: TStringField;
    FloatField7: TFloatField;
    FloatField8: TFloatField;
    FloatField9: TFloatField;
    StringField29: TStringField;
    StringField30: TStringField;
    StringField31: TStringField;
    StringField32: TStringField;
    StringField33: TStringField;
    StringField34: TStringField;
    IntegerField2: TIntegerField;
    FloatField10: TFloatField;
    FloatField11: TFloatField;
    FloatField12: TFloatField;
    DS_Mdata_QryItem: TDataSource;
    DS_Mdata_QryList: TDataSource;
    PC_Week: TPageControl;
    TS_Item: TTabSheet;
    TS_PlanWeekDate: TTabSheet;
    TB_Edit_PackQry: TToolButton;
    TB_Update_PackQry: TToolButton;
    Act_Edit_Edit: TAction;
    CB_ISEdit: TCheckBox;
    Act_Item_PlanWeekDate: TAction;
    TS_Qry: TRzTabSheet;
    cxGrid_Qry: TcxGrid;
    cxGV_Qry: TcxGridDBTableView;
    cxGL_Qry: TcxGridLevel;
    DS_Mdata_Qry: TDataSource;
    MData_Qry: TdxMemData;
    StringField35: TStringField;
    StringField36: TStringField;
    StringField37: TStringField;
    StringField38: TStringField;
    StringField39: TStringField;
    StringField40: TStringField;
    StringField41: TStringField;
    StringField42: TStringField;
    StringField43: TStringField;
    StringField44: TStringField;
    StringField45: TStringField;
    FloatField13: TFloatField;
    FloatField14: TFloatField;
    FloatField15: TFloatField;
    StringField46: TStringField;
    StringField47: TStringField;
    StringField48: TStringField;
    StringField49: TStringField;
    StringField50: TStringField;
    StringField51: TStringField;
    IntegerField3: TIntegerField;
    FloatField16: TFloatField;
    FloatField17: TFloatField;
    FloatField18: TFloatField;
    Edit1: TEdit;
    Panel2: TPanel;
    Label7: TLabel;
    CB_Wet: TcxComboBox;
    TB_Qry_Count: TToolButton;
    Act_PlanWeekList_Qry: TAction;
    TS_Accept: TTabSheet;
    TS_Error: TRzTabSheet;
    cxGrid_Error: TcxGrid;
    cxGV_Error: TcxGridDBTableView;
    FPlanWeekPartsName_Error: TcxGridDBColumn;
    FPlanWeekPartsAdd_Error: TcxGridDBColumn;
    FMakeBOMWet_Error: TcxGridDBColumn;
    FLastMakePercent_Error: TcxGridDBColumn;
    FMakePercent_Error: TcxGridDBColumn;
    FTotalMakePercent_Error: TcxGridDBColumn;
    FLastShipPercent_Error: TcxGridDBColumn;
    FShipPercent_Error: TcxGridDBColumn;
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
    FProportion_Error: TcxGridDBColumn;
    FBranchItemNumber_Error: TcxGridDBColumn;
    FPlanYearWeek: TcxGridDBColumn;
    FClientShortName_Error: TcxGridDBColumn;
    FTotalMakePercentWet_PTList: TcxGridDBColumn;
    FMakePercentWet_PTList: TcxGridDBColumn;
    FLastMakePercentWet_PTList: TcxGridDBColumn;
    FLastShipPercentWet_PTList: TcxGridDBColumn;
    FShipPercentWet_PTList: TcxGridDBColumn;
    FTotalShipPercentWet_PTList: TcxGridDBColumn;
    FMax_TotalMakePercentWet_PTList: TcxGridDBColumn;
    FMax_not_TotalMakePercentWet_PTList: TcxGridDBColumn;
    TS_PlanWeek_Week: TRzTabSheet;
    cxGrid_PlanWeek_Week: TcxGrid;
    cxGV_PlanWeek_Week: TcxGridDBTableView;
    FAgentShortName_PlanWeek_Week: TcxGridDBColumn;
    FBranchItemNumber_PlanWeek_Week: TcxGridDBColumn;
    FName_PlanWeek_Week: TcxGridDBColumn;
    cxGL_PlanWeek_Week: TcxGridLevel;
    Panel3: TPanel;
    Label2: TLabel;
    E_FPlanYearWeek: TcxButtonEdit;
    DS_Mdata_PlanWeek_Week: TDataSource;
    Mdata_PlanWeek_Week: TdxMemData;
    StringField69: TStringField;
    StringField70: TStringField;
    StringField71: TStringField;
    StringField72: TStringField;
    StringField73: TStringField;
    StringField74: TStringField;
    StringField75: TStringField;
    StringField76: TStringField;
    StringField77: TStringField;
    StringField78: TStringField;
    StringField79: TStringField;
    FloatField25: TFloatField;
    FloatField26: TFloatField;
    FloatField27: TFloatField;
    StringField80: TStringField;
    StringField81: TStringField;
    StringField82: TStringField;
    StringField83: TStringField;
    StringField84: TStringField;
    StringField85: TStringField;
    IntegerField5: TIntegerField;
    FloatField28: TFloatField;
    FloatField29: TFloatField;
    FloatField30: TFloatField;
    E_FPlanYearMonth: TcxButtonEdit;
    FItemPlanDate_PlanWeek_Week: TcxGridDBColumn;
    Act_PlanWeek_Update: TAction;
    procedure FormResize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TB_EXITClick(Sender: TObject);
    procedure TB_AppClick(Sender: TObject);
    procedure TB_DelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure MyTreeView_PTItemExpanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure MyTreeView_PTItemChange(Sender: TObject; Node: TTreeNode);
    procedure FormShow(Sender: TObject);
    procedure OKBtn_MClick(Sender: TObject);
    procedure TB_Edit_MClick(Sender: TObject);
    procedure CancelBtn_MClick(Sender: TObject);
    procedure SelCancelBtnClick(Sender: TObject);
    procedure PC_CheckChange(Sender: TObject);
    procedure TB_EditLListClick(Sender: TObject);
    procedure Act_Set_Open_MExecute(Sender: TObject);
    procedure Act_Set_Close_MExecute(Sender: TObject);
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
    procedure FAgentShortName_PTListHeaderClick(Sender: TObject);
    procedure FPlanaPartsPrice_PTListHeaderClick(Sender: TObject);
    procedure FPlanDrawDate_PTListHeaderClick(Sender: TObject);
    procedure FRealDrawDate_PTListHeaderClick(Sender: TObject);
    procedure FPlanFinishDate_PTListHeaderClick(Sender: TObject);
    procedure Act_Status_MExecute(Sender: TObject);
    procedure Act_EditExecute(Sender: TObject);
    procedure Act_CountExecute(Sender: TObject);
    procedure MData_PTListBeforePost(DataSet: TDataSet);
    procedure FPlanYearWeek_PTItemPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure Act_SubmitExecute(Sender: TObject);
    procedure cxGrid_PTItemContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure cxGrid_PTListContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure cxGV_PTListCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure Act_Update_QryExecute(Sender: TObject);
    procedure FPlanWeekPack_PTListPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxGV_PTItemFocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure FPlanWeekPartsName_PTListPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure FPlanWeekPack_PTListHeaderClick(Sender: TObject);
    procedure FShipPercent_PTListPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure Act_AcceptExecute(Sender: TObject);
    procedure Act_RefExecute(Sender: TObject);
    procedure TB_Edit_PackQryClick(Sender: TObject);
    procedure TB_Update_PackQryClick(Sender: TObject);
    procedure MData_PTListAfterEdit(DataSet: TDataSet);
    procedure Act_Edit_EditExecute(Sender: TObject);
    procedure CB_ISEditClick(Sender: TObject);
    procedure Act_Item_PlanWeekDateExecute(Sender: TObject);
    procedure CB_WetPropertiesChange(Sender: TObject);
    procedure Act_PlanWeekList_QryExecute(Sender: TObject);
    procedure TB_Qry_CountClick(Sender: TObject);
    procedure PC_TackChange(Sender: TObject);
    procedure PC_WeekChange(Sender: TObject);
    procedure E_FPlanYearWeekPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxGrid_PlanWeek_WeekContextPopup(Sender: TObject;
      MousePos: TPoint; var Handled: Boolean);
    procedure Act_PlanWeek_UpdateExecute(Sender: TObject);
  private
    P_List:String;
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
    P_Wet:string; 
    { Public declarations }
  end;

var
  Frm_PlanWeek: TFrm_PlanWeek;


implementation

uses FRMDATA,  COMMON, FrmSelect, ProgBar, PROGRASS, Main_Ship;

{$R *.dfm}


function TFrm_PlanWeek.DelRd: bool;
var
 qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Delete from T_PlanWeek where FPlanWeekID=:FPlanWeekID';
    qry.Parameters.FindParam('FPlanWeekID').value:=MData_PTItem['FPlanWeekID'];
    result:=qry.ExecSQL>=0;
  finally
    ;
  end;
  qry.Free;
end;


function TFrm_PlanWeek.AddMain: bool;
var
 qry,qryDate: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qryDate:=TAdoQuery.Create(self);
  qryDate.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Insert into T_PlanWeek(FPlanWeekID,FPlanYearWeek,FFileItemID,FAgentID,FPlanWeekStatus,FPlanWeekWriteID,FPlanWeekWriteDate) '
                 +'values(:FPlanWeekID,:FPlanYearWeek,:FFileItemID,:FAgentID,:FPlanWeekStatus,:FPlanWeekWriteID,:FPlanWeekWriteDate)';
    with qry.Parameters do
    begin
       FindParam('FPlanWeekID').value:=P_MaxID;
       FindParam('FPlanYearWeek').value:=mData_PTItem['FPlanYearWeek'];
       FindParam('FFileItemID').value:=mData_PTItem['FFileItemID'];
       FindParam('FAgentID').value:=UserFDepartmentID;
       FindParam('FPlanWeekStatus').value:=0;
       FindParam('FPlanWeekWriteID').value:=UserNumID;
       FindParam('FPlanWeekWriteDate').value:=S_SyStemDate(qryDate);
     end;
     result:=qry.ExecSQL>=1;
  finally
     ;
  end;
  Mdata_PTItem.Edit;
  Mdata_PTItem['FPlanWeekID']:=P_MaxID;
  Mdata_PTItem.Post;
  qry.Free;
end;

function TFrm_PlanWeek.AddList: bool;
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
     qry.SQL.Text:='Insert into T_PlanWeekList(FPlanWeekID,FPlanWeekPartsID,FPlanWeekPartsAdd,FLastMakePercent,FMakePercent,FTotalMakePercent,FLastShipPercent,FShipPercent,FTotalShipPercent,FPlanWeekPack,'
                 +'FLastPackQry,FPackQry,FTotalPackQry,FLastShipQry,FShipQry,FTotalShipQry ) '
                  +'values(:FPlanWeekID,:FPlanWeekPartsID,:FPlanWeekPartsAdd,:FLastMakePercent,:FMakePercent,:FTotalMakePercent,:FLastShipPercent,:FShipPercent,:FTotalShipPercent,:FPlanWeekPack,'
                  +':FLastPackQry,:FPackQry,:FTotalPackQry,:FLastShipQry,:FShipQry,:FTotalShipQry )';
     mData_PTList.First;
     while not mData_PTList.eof do
     begin
       If (mData_PTList['FPlanWeekPartsID']<>0) and (mData_PTList['FPlanWeekPartsID']<>Null) then
       begin
         If qry.Active then qry.Close;
         with qry.Parameters do
         begin
           qry.Parameters.FindParam('FPlanWeekID').value:= P_MaxID;
           qry.Parameters.FindParam('FPlanWeekPartsID').value:= mData_PTList['FPlanWeekPartsID'];
           qry.Parameters.FindParam('FPlanWeekPartsAdd').value:= mData_PTList['FPlanWeekPartsAdd'];
           qry.Parameters.FindParam('FLastMakePercent').value:= mData_PTList['FLastMakePercent'];
           qry.Parameters.FindParam('FMakePercent').value:= mData_PTList['FMakePercent'];
           qry.Parameters.FindParam('FTotalMakePercent').value:= mData_PTList['FTotalMakePercent'];
           qry.Parameters.FindParam('FLastShipPercent').value:= mData_PTList['FLastShipPercent'];
           qry.Parameters.FindParam('FShipPercent').value:= mData_PTList['FShipPercent'];
           qry.Parameters.FindParam('FTotalShipPercent').value:= mData_PTList['FTotalShipPercent'];
           qry.Parameters.FindParam('FPlanWeekPack').value:= mData_PTList['FPlanWeekPack'];
           qry.Parameters.FindParam('FLastPackQry').value:= mData_PTList['FLastPackQry'];
           qry.Parameters.FindParam('FPackQry').value:= mData_PTList['FPackQry'];
           qry.Parameters.FindParam('FTotalPackQry').value:= mData_PTList['FTotalPackQry'];
           qry.Parameters.FindParam('FLastShipQry').value:= mData_PTList['FLastShipQry'];
           qry.Parameters.FindParam('FShipQry').value:= mData_PTList['FShipQry'];
           qry.Parameters.FindParam('FTotalShipQry').value:= mData_PTList['FTotalShipQry'];
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


function TFrm_PlanWeek.AddRd: bool;
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


function TFrm_PlanWeek.EditRd:bool;
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



procedure TFrm_PlanWeek.FormResize(Sender: TObject);
begin
  inherited;
  Self.Caption:=UserFDepartmentName+'生产周报';
end;

procedure TFrm_PlanWeek.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=cafree;
  Frm_PlanWeek:=nil;
end;

procedure TFrm_PlanWeek.TB_EXITClick(Sender: TObject);
begin
  inherited;
  Self.Close;
end;

procedure TFrm_PlanWeek.TB_AppClick(Sender: TObject);
Var qry: TADOQuery;
    i,j:Integer;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  P_state :=0; //新增

  mdata_PTItem.Close;
  If (mdata_PTItem.RecordCount>1) or (mdata_PTItem.RecordCount=0) then
  begin
    try
      qry.SQL.Text:='select * from V_PlanWeek with(nolock) where FPlanWeekID=0';
      qry.Open;
    finally
       ;
    end;
    mdata_PTItem.CopyFromDataSet(qry);
    mdata_PTItem.Active:=True;
    mdata_PTItem.Append;
    mdata_PTItem.Edit;
    mdata_PTList.Close;
  end;
  Act_Set_Open_M.Execute;

end;

procedure TFrm_PlanWeek.TB_DelClick(Sender: TObject);
var
  qry:TADOQuery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  If application.MessageBox(Pchar('警告：是否删除'+P_List_PTList+'的生产周报信息？'+chr(13)+chr(13)
                                 +'删除数据操作将不可恢复，确定要删除吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
  If application.MessageBox(Pchar('再次警告：是否删除：'+P_List_PTList+'的生产周报信息？'+chr(13)+chr(13)
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

procedure TFrm_PlanWeek.FormCreate(Sender: TObject);
begin
  inherited;
  P_Wet:='FMakePercent';
  TB_App.Visible:= mdlData.PermissionCheckRights(TFrm_PlanWeek.ClassName,'新增');
  TS_Accept.TabVisible:= mdlData.PermissionCheckRights(TFrm_PlanWeek.ClassName,'接收');
  P_state:=2;
end;

procedure TFrm_PlanWeek.MyTreeView_PTItemExpanding(Sender: TObject;
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

  If PC_Week.ActivePage=TS_PlanWeekDate then
     qry.SQL.Text:='Select * from VT_PlanWeek with(nolock) where FParentNumber= '''
                  +PTree(Node.Data).ID+''' order by FNumber';
  If PC_Week.ActivePage=TS_Item then
     qry.SQL.Text:='Select * from VT_PlanWeek_Dep_Item with(nolock) where FParentNumber= '''
                  +PTree(Node.Data).ID+''' order by FNumber';
   If PC_Week.ActivePage=TS_Accept then
     qry.SQL.Text:='Select * from VT_PlanWeek_Date with(nolock) where FParentNumber= '''
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

procedure TFrm_PlanWeek.MyTreeView_PTItemChange(Sender: TObject; Node: TTreeNode);
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
      If PC_Week.ActivePage=TS_PlanWeekDate then
      begin
        If MyItemListFieldWhere(qry,Mdata_PTItem,' *  ','V_PlanWeek','FFullNumber',ListFNumber_PTList,' ','FFullNumber') then
      end;
      If PC_Week.ActivePage=TS_Item then
      begin
         If MyItemListFieldWhere(qry,Mdata_PTItem,' *  ','V_PlanWeek','FFullNumber_Dep_Item',ListFNumber_PTList,' ','FFullNumber_Dep_Item') then
      end;
      If PC_Week.ActivePage=TS_Accept then
      begin
         If MyItemListFieldWhere(qry,Mdata_PTItem,' *  ','V_PlanWeek','FFullNumber_Date',ListFNumber_PTList,' ','FFullNumber_Date') then
      end;
    end
    else
    begin
      Mdata_PTItem.Close;
      Mdata_PTList.Close;
    end;
    Act_Status_M.Execute;  //权限设置
    If Mdata_PTItem.RecordCount=1 then
       TB_Edit_PackQry.Visible:= mdlData.PermissionCheckRights(TFrm_PlanWeek.ClassName,'审核')
    else
       TB_Edit_PackQry.Visible:=False;

    If (P_Isleaf_PTList=1) and (PC_Week.ActivePage=TS_Item) and (PC_Tack.ActivePage=TS_Qry)  then
    begin
      Act_Item_PlanWeekDate.Execute;
    end ;
    {else
    begin
      Mdata_PTItem.Close;
      Mdata_PTList.Close;
      cxGrid_PTItem.Visible:=True;
    end; }

    If (P_Isleaf_PTList=1) and (PC_Week.ActivePage=TS_Item) and (PC_Tack.ActivePage=TS_Edit)  then
       TB_Qry_Count.Visible:=True
    else
       TB_Qry_Count.Visible:=False;

    mdata_PTList.EnableControls;
    cxGV_PTList.DataController.DataModeController.GridMode:=False;
    cxGV_PTList.DataController.DataModeController.SmartRefresh:=False;
 end;
end;

procedure TFrm_PlanWeek.FormShow(Sender: TObject);
begin
  inherited;
  TB_Ref.Click;
end;

procedure TFrm_PlanWeek.OKBtn_MClick(Sender: TObject);
var qry: TADOQuery;
    P_FBalanceNum:String;
    i:Integer;
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
  mdata_PTList.Post;

  Act_MaxID.Execute;//取ID
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
        //Act_PlanWeek_Update.Execute;//更新三个表数据 20161124
        //Act_Count.Execute;  //累计数20161124
        //Act_PlanWeekList_Qry.Execute;  //重新计算生产周报的累计百分比  更新最大周累计未完成重量20161124
        //Act_PlanWeek_UpdateQry.Execute;//更新周报明细及生产排产表汇总数据20161124
        mdata_PTList.Close;
        mData_PTItem.Edit;
        mData_PTItem['FBranchItemNumber']:= '';
        mData_PTItem['FItemNumber']:='';
        mData_PTItem['FClientShortName']:='';
        mData_PTItem['FBranchFileNo']:='';
        mData_PTItem['FProductName']:='';
        mData_PTItem['FProductID']:=0;
        mData_PTItem.Post;
      end
      else
      begin
        //Act_PlanWeek_Update.Execute;//更新三个表数据 20161124
        //Act_Count.Execute;  //累计数20161124
        //Act_PlanWeekList_Qry.Execute;  //重新计算生产周报的累计百分比  更新最大周累计未完成重量20161124
        //Act_PlanWeek_UpdateQry.Execute;//更新周报明细及生产排产表汇总数据20161124
       CancelBtn_M.Click;
      end;
    end;
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
      application.MessageBox('修改记录已保存','系统提示',MB_ICONINFORMATION);
      Act_Edit.Execute;    //刷新修改数据
      //Act_PlanWeek_Update.Execute;//更新三个表数据 20161124
      //Act_Count.Execute;    //累计数20161124
      //Act_PlanWeekList_Qry.Execute;  //重新计算生产周报的累计百分比  更新最大周累计未完成重量20161124
      //Act_PlanWeek_UpdateQry.Execute;//更新周报明细及生产排产表汇总数据20161124
      CancelBtn_M.Click;
    end
    else
      application.MessageBox('修改记录保存失败！','系统提示',MB_ICONWARNING);
  end;
  MyTreeView_PTItem.Enabled:=True;
  cxGrid_PTItem.Enabled:=True;
  qry.Free;

end;

procedure TFrm_PlanWeek.TB_Edit_MClick(Sender: TObject);
begin
  inherited;
  P_state:=1; //修改

  If CB_ISEdit.Checked=True then
     CB_ISEdit.Checked:=False;

  Act_Edit_Edit.Execute;
  CB_ISEdit.Visible:=True;

 // Act_Edit.Execute;
  Act_Set_Open_M.Execute;
end;

procedure TFrm_PlanWeek.CancelBtn_MClick(Sender: TObject);
begin
  inherited;
  Act_Set_Close_M.Execute;
  If P_state=0 then
end;

procedure TFrm_PlanWeek.SelCancelBtnClick(Sender: TObject);
begin
  inherited;
  PC_PlanWeek.ActivePage:=TS_PlanWeek;
  TS_PlanWeek.TabEnabled:=True;
  PC_Week.ActivePage:=TS_PlanWeekDate;
end;

procedure TFrm_PlanWeek.PC_CheckChange(Sender: TObject);
begin
  inherited;
  TB_Ref.Click;
end;

procedure TFrm_PlanWeek.TB_EditLListClick(Sender: TObject);
var
   AFirstColumnStyle: TcxStyle;
begin
  inherited;
 // P_state:=1;
end;

procedure TFrm_PlanWeek.Act_Set_Open_MExecute(Sender: TObject);

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
  FPlanYearWeek_PTItem.Options.Editing:=True;

  FMakePercent_PTList.Options.Editing:=True;

  FPlanWeekPack_PTList.Options.Editing:=True;
  FShipPercent_PTList.Options.Editing:=True;
  FPackQry_PTList.Options.Editing:=True;
  FShipQry_PTList.Options.Editing:=True;

  cxGV_PTList.OptionsData.Editing:=True;

   //列颜色
  AFirstColumnStyle := TcxStyle.Create(Self);
  AFirstColumnStyle.Color := clMenu; //底色

  AFirstColumnStyle.TextColor := clBlue;        //字体颜色

  cxGV_PTList.Columns[FMakePercent_PTList.Index].Styles.Content := AFirstColumnStyle;
  cxGV_PTList.Columns[FShipPercent_PTList.Index].Styles.Content := AFirstColumnStyle;
  cxGV_PTList.Columns[FPackQry_PTList.Index].Styles.Content := AFirstColumnStyle;
  cxGV_PTList.Columns[FShipQry_PTList.Index].Styles.Content := AFirstColumnStyle;
  cxGV_PTList.Columns[FPlanWeekPack_PTList.Index].Styles.Content := AFirstColumnStyle;
  cxGV_PTList.Columns[FTeamName_PTList.Index].Styles.Content := AFirstColumnStyle;

end;

procedure TFrm_PlanWeek.Act_Set_Close_MExecute(Sender: TObject);
var
   AFirstColumnStyle: TcxStyle;
begin
  inherited;
   //列颜色
  AFirstColumnStyle := TcxStyle.Create(Self);
  AFirstColumnStyle.Color := clWindow; //底色

  AFirstColumnStyle.TextColor := clWindowText;        //字体颜色

  cxGV_PTList.Columns[FMakePercent_PTList.Index].Styles.Content := AFirstColumnStyle;
  cxGV_PTList.Columns[FShipPercent_PTList.Index].Styles.Content := AFirstColumnStyle;
  cxGV_PTList.Columns[FPackQry_PTList.Index].Styles.Content := AFirstColumnStyle;
  cxGV_PTList.Columns[FShipQry_PTList.Index].Styles.Content := AFirstColumnStyle;
  cxGV_PTList.Columns[FPlanWeekPack_PTList.Index].Styles.Content := AFirstColumnStyle;
  cxGV_PTList.Columns[FTeamName_PTList.Index].Styles.Content := AFirstColumnStyle;

  PC_PlanWeek.Enabled:=True;

  RSP_CList.Enabled:=True;

  MyTreeView_PTItem.Enabled:=True;
  P_Btn.Visible:=False;

  cxGV_PTItem.OptionsData.Editing:=False;
  cxGV_PTList.OptionsData.Editing:=False;

  ToolBar_HItem.Visible:=True;
  If P_state=0 then
  begin
    mdata_PTItem.Close;
    mdata_PTList.Close;
  end;

  P_state:=2;


end;

procedure TFrm_PlanWeek.Act_MenuExecute(Sender: TObject);
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

procedure TFrm_PlanWeek.Act_Menu_SetExecute(Sender: TObject);
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

procedure TFrm_PlanWeek.N_EditClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_PlanWeek.N_FilterClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_PlanWeek.N_SortClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_PlanWeek.N_GroupClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_PlanWeek.N_SetClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_PlanWeek.N_OutClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_PlanWeek.FBranchItemNumberPropertiesButtonClick(Sender: TObject;
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
    qry.SQL.Text:='select * from VT_PlanWeekDetail with(nolock) where FAgentID=:FAgentID and FNumber like ''%;1;%'' and '
                 +'FFileItemID not in (select FFileItemID from T_PlanWeek  with(nolock) where FPlanYearWeek=:FPlanYearWeek and FAgentID=:FAgentID2) '
                 +' and FBranchItemNumber like :FBranchItemNumber order by FBranchItemNumber ';
    qry.Parameters.FindParam('FAgentID').value:=UserFDepartmentID;
    qry.Parameters.FindParam('FPlanYearWeek').value:=mData_PTItem['FPlanYearWeek'];
    qry.Parameters.FindParam('FAgentID2').value:=UserFDepartmentID;
    qry.Parameters.FindParam('FBranchItemNumber').value:='%'+mData_PTItem['FBranchItemNumber']+'%';
    qry.Open;
  finally
   ;
  end;
  If qry.RecordCount=1 then
  begin
    mData_PTItem.Edit;
    mData_PTItem['FFileItemID']:=qry.FieldByName('FFileItemID').Value;
    mData_PTItem.Post;
    try
      qry1.SQL.Text:='select * from V_FileItem with(nolock) where FFileItemID=:FFileItemID ';
      qry1.Parameters.FindParam('FFileItemID').value:=mData_PTItem['FFileItemID'];
      qry1.Open;
    finally
     ;
    end;
    mData_PTItem.Edit;
    mData_PTItem['FBranchItemNumber']:= qry1.FieldByName('FBranchItemNumber').Value;
    mData_PTItem['FItemNumber']:=qry1.FieldByName('FItemNumber').Value;
    mData_PTItem['FClientShortName']:=qry1.FieldByName('FClientShortName').Value;
    mData_PTItem['FBranchFileNo']:=qry1.FieldByName('FBranchFileNo').Value;
    mData_PTItem['FProductName']:=qry1.FieldByName('FProductName').Value;
    mData_PTItem['FProductID']:=qry1.FieldByName('FProductID').Value;
    mData_PTItem.Post;
    Act_Sel.Execute;
    Exit;
  end;

  selValue:=select('选择项目图号','FNumber','FParentNumber','FNumber','FName',qry);
  If (Length(selValue)>0) and (qry.FieldByName('Isleaf').Value<>0) then
  begin
    mData_PTItem.Edit;
    mData_PTItem['FFileItemID']:=qry.FieldByName('FFileItemID').Value;
    mData_PTItem.Post;
    try
      qry.SQL.Text:='select * from V_FileItem with(nolock) where FFileItemID=:FFileItemID ';
      qry.Parameters.FindParam('FFileItemID').value:=mData_PTItem['FFileItemID'];
      qry.Open;
    finally
     ;
    end;
    mData_PTItem.Edit;
    mData_PTItem['FBranchItemNumber']:= qry.FieldByName('FBranchItemNumber').Value;
    mData_PTItem['FItemNumber']:=qry.FieldByName('FItemNumber').Value;
    mData_PTItem['FClientShortName']:=qry.FieldByName('FClientShortName').Value;
    mData_PTItem['FBranchFileNo']:=qry.FieldByName('FBranchFileNo').Value;
    mData_PTItem['FProductName']:=qry.FieldByName('FProductName').Value;
    mData_PTItem['FProductID']:=qry.FieldByName('FProductID').Value;
    mData_PTItem.Post;
    Act_Sel.Execute;
  end
  else
  begin
    application.MessageBox('请选择明细！','系统提示',MB_ICONINFORMATION);
    mData_PTList.Close;
  end;
end;

procedure TFrm_PlanWeek.Act_MaxIDExecute(Sender: TObject);
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
      value:='T_PlanWeek';
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

procedure TFrm_PlanWeek.TB_PlanTaskListClick(Sender: TObject);
var
  Query_Sp:TADOStoredProc;
  i,h,k,s,n,ReNum,ReNumLoop,R_Count,ReNumH:Integer;
  ExcelApp,MyWorkBook,mysheet,vLastSheet: Variant;
  filepath,savefilepath,Sqlstr,copystart,copyend,copystart1,aa,copystart_H,copyend_H,copystart1_H:string;
  RepSpace:String;//合并单元格
  ListQry:Tadoquery;
  qry,qry1:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  qry1:=TAdoQuery.Create(self);
  qry1.ConnectionString:=mdlData.ReadConnStr;

  P_List_Pack:=mdata_PTItem['FPlanYearWeek'];
  filepath:=Extractfilepath(application.ExeName)+'子公司生产周报模版.xls';
  if (mdata_PTItem.Active) and (mdata_PTItem.recordcount>0) then
  Begin
    SaveDialog1.FileName:=UserFDepartmentShortName+'生产周报('+P_List_Pack+')';
    SaveDialog1.Filter:='.xls';
    SaveDialog1.Execute;

    if (mdata_PTItem.FieldByName('FPlanYearWeek').AsString<>'') Or (mdata_PTItem.FieldByName('FPlanYearWeek').AsString<>Null) then
        savefilepath:=SaveDialog1.FileName+'.xls';

    if FileExists(savefilepath) then
    begin
      DeleteFile(savefilepath) ;
    end;
    stbMsg.Caption:='提示信息：正在导出子公司生产周报:'+'【'+mdata_PTItem.FieldByName('FPlanYearWeek').AsString+'】';
    stbBar.Refresh;

    ExcelApp:= CreateOleObject('Excel.Application' );
    ExcelApp.DisplayAlerts:=False;                  //不显示提示框
    MyWorkBook:=ExcelApp.WorkBooks.Open( filepath );   //打开模版
    //ExcelApp.Visible:=True;

    try
      qry.SQL.Text:='select distinct FPlanYearWeek from V_PlanWeek with(nolock) where FAgentID=:FAgentID and FFullNumber like :FFullNumber';
      qry.Parameters.FindParam('FAgentID').value:=UserFDepartmentID;
      qry.Parameters.FindParam('FFullNumber').value:=ListFNumber_PTList+'%';
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
       qry1.SQL.Text:='Select b.n ,a.* from V_PlanWeekList as a with(nolock) left outer join  '
                     +'(Select FAgentID,FPlanYearWeek,FProductNum,FBranchItemNumber,FFileItemID,count(*) as n from V_PlanWeekList with(nolock) where FAgentID=:FAgentID and FPlanYearWeek=:FPlanYearWeek '
                     +' group by FAgentID,FPlanYearWeek,FProductNum,FBranchItemNumber,FFileItemID ) as b '
                     +' on a.FFileItemID=b.FFileItemID and a.FAgentID=b.FAgentID and a.FPlanYearWeek=b.FPlanYearWeek '
                     +' where a.FAgentID=:FAgentID2 and a.FPlanYearWeek=:FPlanYearWeek2 '
                     +' order by a.FAgentID,a.FPlanYearWeek,a.FProductNum,a.FBranchItemNumber,a.FFileItemID,a.FPartsCode ';
       qry1.Parameters.FindParam('FAgentID').value:=UserFDepartmentID;
       qry1.Parameters.FindParam('FPlanYearWeek').value:=mdata_PTItem['FPlanYearWeek'];
       qry1.Parameters.FindParam('FAgentID2').value:=UserFDepartmentID;
       qry1.Parameters.FindParam('FPlanYearWeek2').value:=mdata_PTItem['FPlanYearWeek'];
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
     MyWorkBook.WorkSheets[k].Name:=IntToStr(k)+mdata_PTItem['FPlanYearWeek'];
     MyWorkBook.WorkSheets[k].Activate;


      //标题
      MyWorkBook.WorkSheets[k].Cells[1,1].Value:=AnsiReplaceStr(MyWorkBook.WorkSheets[k].Cells[1,1].Value,'A',UserFDepartmentName); //公司名称

      MyWorkBook.WorkSheets[k].Cells[5,3].Value := '【'+Trim(mdata_PTItem.FieldByName('FPlanYearWeek').AsString)+'】周【'+Trim(mdata_PTItem.FieldByName('FPlanDateExtent').AsString)+'】';

      MyWorkBook.WorkSheets[k].Cells[9,13].Value:=mdata_PTItem.FieldByName('FPlanWeekWrite').AsString; //制单



     //循环行开始
      i:=7;

       //工作薄名称
      MyWorkBook.WorkSheets[k].Name:=mdata_PTItem.FieldByName('FPlanYearWeek').AsString;
      copystart:='A'+IntToStr(i);
      if mdata_PTList.recordcount>0 then
      Begin
        if mdata_PTList.recordcount>1 then
        Begin
          copystart:='A'+IntToStr(i);
          copystart1:='A'+IntToStr(i+1);
          copyend:='N'+IntToStr(i);  //区域  A:N
          ReNum:=mdata_PTList.recordcount-1+(23-((mdata_PTList.RecordCount+1) mod 25));//记录个数加空白个数
         //L:=(25-((mdata_PTList.RecordCount+1) mod 23));//空白个数
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
          MyWorkBook.WorkSheets[k].Cells[i,2].Value := mdata_PTList.FieldByName('FBranchItemNumber').AsString;
          MyWorkBook.WorkSheets[k].Cells[i,3].Value := mdata_PTList.FieldByName('FClientShortName').AsString;
          MyWorkBook.WorkSheets[k].Cells[i,4].Value := mdata_PTList.FieldByName('FPlanWeekPartsName').AsString;
          MyWorkBook.WorkSheets[k].Cells[i,5].Value := mdata_PTList.FieldByName('FMakeBOMWet').AsString;
          If mdata_PTList.FieldByName('FMakePercent').AsString='0' then
            MyWorkBook.WorkSheets[k].Cells[i,6].Value := ''
          else
            MyWorkBook.WorkSheets[k].Cells[i,6].Value := mdata_PTList.FieldByName('FMakePercent').AsString+'%';
          If mdata_PTList.FieldByName('FTotalMakePercent').AsString='0' then
            MyWorkBook.WorkSheets[k].Cells[i,7].Value := ''
          else
            MyWorkBook.WorkSheets[k].Cells[i,7].Value := mdata_PTList.FieldByName('FTotalMakePercent').AsString+'%';
          If mdata_PTList.FieldByName('FShipPercent').AsString='0' then
            MyWorkBook.WorkSheets[k].Cells[i,8].Value := ''
          else
            MyWorkBook.WorkSheets[k].Cells[i,8].Value := mdata_PTList.FieldByName('FShipPercent').AsString+'%';
          If mdata_PTList.FieldByName('FTotalShipPercent').AsString='0' then
            MyWorkBook.WorkSheets[k].Cells[i,9].Value := ''
          else
            MyWorkBook.WorkSheets[k].Cells[i,9].Value := mdata_PTList.FieldByName('FTotalShipPercent').AsString+'%';
          MyWorkBook.WorkSheets[k].Cells[i,11].Value := mdata_PTList.FieldByName('FMakePartsDate').AsString;
          MyWorkBook.WorkSheets[k].Cells[i,12].Value := mdata_PTList.FieldByName('FShipPartsDate').AsString;
          MyWorkBook.WorkSheets[k].Cells[i,13].Value := mdata_PTList.FieldByName('FTeamName').AsString;
          mdata_PTList.next;
          i:=i+1;
        End;
      end;
       //合并循环行开始

      try
        qry1.SQL.Text:='Select FAgentID,FPlanYearWeek,FProductNum,FBranchItemNumber,count(*) as n from V_PlanWeekList with(nolock) '
                      +' where FAgentID=:FAgentID and FPlanYearWeek=:FPlanYearWeek '
                      +' group by FAgentID,FPlanYearWeek,FProductNum,FBranchItemNumber'
                      +' order by FAgentID,FPlanYearWeek,FProductNum,FBranchItemNumber' ;
        qry1.Parameters.FindParam('FAgentID').value:=UserFDepartmentID;
        qry1.Parameters.FindParam('FPlanYearWeek').value:=mdata_PTItem['FPlanYearWeek'];
        qry1.Open;
      finally
        ;
      end;
      If qry1.RecordCount>0 then
      begin
        qry1.First;
        i:=7;
        h:=1;
        while not qry1.eof do
        begin
          //合并单元格
          n:=qry1.FieldByName('n').Value;
          RepSpace:=GetRepRange(i,1)+':'+GetRepRange(i+n-1,1);
          ExcelApp.Range[RepSpace].Select;
          ExcelApp.Selection.Merge;
          RepSpace:=GetRepRange(i,2)+':'+GetRepRange(i+n-1,2);
          ExcelApp.Range[RepSpace].Select;
          ExcelApp.Selection.Merge;
          RepSpace:=GetRepRange(i,3)+':'+GetRepRange(i+n-1,3);
          ExcelApp.Range[RepSpace].Select;
          ExcelApp.Selection.Merge;

          ExcelApp.cells(i,1):=h;{单元格写数据}
          {加边框线}
          RepSpace:=GetRepRange(i-1,1)+':'+GetRepRange(i,14);
          ExcelApp.ActiveSheet.Range[RepSpace].Borders.LineStyle:=1;
          //ExcelApp.ActiveSheet.Range[RepSpace].Borders.LineStyle:=xlContinuous;

          qry1.Next;
          i:=i+n;
          h:=h+1;
        end;
      end; 
      qry.Next ;
      ExcelApp.Visible:=True;
      MyWorkBook.WorkSheets[k].PrintPreview;  //打印
      k:=k+1;
    end;
    MyWorkBook.WorkSheets[1].delete; //删除模版
    stbMsg.Caption:='提示信息：子公司生产周报:'+'【'+mdata_PTItem.FieldByName('FPlanYearWeek').AsString+'】的信息导出完成!';
    stbBar.Refresh;
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

procedure TFrm_PlanWeek.Act_SelExecute(Sender: TObject);
var
  qry,qry1:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
    try
      qry.SQL.Text:='Select * from V_PlanWeek with(nolock) where FAgentID=:FAgentID and FFileItemID=:FFileItemID and '
                   +'FPlanYearWeek=:FPlanYearWeek ';
      qry.Parameters.FindParam('FAgentID').Value:=UserFDepartmentID;
      qry.Parameters.FindParam('FFileItemID').Value:=mdata_PTItem['FFileItemID'];
      qry.Parameters.FindParam('FPlanYearWeek').Value:=mdata_PTItem['FPlanYearWeek'];

      qry.Open;
      If qry.RecordCount>0 then
      begin
         application.MessageBox('此项目本周周报已存在！请不要重复输入','系统提示',MB_ICONERROR);
         mData_PTItem.Edit;
         mData_PTItem['FBranchItemNumber']:= '';
         mData_PTItem['FItemNumber']:='';
         mData_PTItem['FClientShortName']:='';
         mData_PTItem['FBranchFileNo']:='';
         mData_PTItem['FProductName']:='';
         mData_PTItem['FProductID']:=0;
         mData_PTItem.Post;
         Exit;
      end;
    finally
       ;
    end;


  If (mData_PTItem['FFileItemID']=0) or (mData_PTItem['FFileItemID']=Null) then
  begin
    Application.MessageBox(PChar('请选择项目名称，请重新选择'), '系统提示', MB_OK + MB_ICONSTOP);
    Exit;
  End;
  try
     qry.SQL.Text:='select IsEdit=cast(0 as bit),a.FMakeBOMWet,a.FMakeBOMPackQry,a.FPlanPartsName,a.FPartsCode,a.FPlanWeekPartsName,a.FWorkShop,a.FTeamName,a.FAgentShortName,a.FPlanWeekPartsID,a.FFileItemID,'
                  +'b.FPlanWeekPartsID,a.FPlanWeekPartsAdd,b.FMakePercent,b.FTotalMakePercent,b.FShipPercent,b.FTotalShipPercent,FPlanWeekPack,c.FLastMakePercent,c.FLastShipPercent,'
                  +'c.FLastPackQry,c.FLastShipQry,FPackQry,FTotalPackQry,FShipQry,FTotalShipQry from V_PlanWeekDetailList as a with(nolock) '
                  +'left outer join (select FPlanWeekPartsID,FPlanWeekPartsAdd,FMakePercent,FTotalMakePercent,FShipPercent,FTotalShipPercent,'
                  +'FPackQry,FTotalPackQry,FShipQry,FTotalShipQry,FPlanWeekPack from V_PlanWeekList with(nolock) where FPlanWeekListID=0) as b '
                  +'on a.FPlanWeekPartsID=b.FPlanWeekPartsID and a.FPlanWeekPartsAdd=b.FPlanWeekPartsAdd '
                  +'left outer join (select FAgentiD,FFileItemID,FPlanWeekPartsID,FPlanWeekPartsAdd, FTotalMakePercent as FLastMakePercent,FTotalShipPercent as FLastShipPercent,FTotalPackQry as FLastPackQry,FTotalShipQry as FLastShipQry from V_PlanWeekList with(nolock) '
                  +'where FPlanYearWeek=(select max(FPlanYearWeek) from  V_PlanWeekList with(nolock) where FFileItemID=:FFileItemID1 and FAgentId=:FAgentId1 and FPlanYearWeek<:FPlanYearWeek ) '
                  +'and FFileItemID=:FFileItemID2 and FAgentId=:FAgentId2 ) as c   '
                  +'on a.FAgentiD=c.FAgentiD and a.FFileItemID=c.FFileItemID and a.FPlanWeekPartsID=c.FPlanWeekPartsID and a.FPlanWeekPartsAdd=c.FPlanWeekPartsAdd  '
                  +'where a.FFileItemID=:FFileItemID3  and a.FAgentId=:FAgentId3 order by a.FPartsCode,a.FPlanWeekPartsNumber ';
      qry.Parameters.FindParam('FFileItemID1').value:=mData_PTItem['FFileItemID'];
      qry.Parameters.FindParam('FAgentId1').value:=UserFDepartmentID;
      qry.Parameters.FindParam('FPlanYearWeek').value:=mData_PTItem['FPlanYearWeek'];
      qry.Parameters.FindParam('FFileItemID2').value:=mData_PTItem['FFileItemID'];
      qry.Parameters.FindParam('FAgentId2').value:=UserFDepartmentID;
      qry.Parameters.FindParam('FFileItemID3').value:=mData_PTItem['FFileItemID'];
      qry.Parameters.FindParam('FAgentId3').value:=UserFDepartmentID;
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

procedure TFrm_PlanWeek.FAgentShortName_PTListHeaderClick(Sender: TObject);
Var
  qry: TADOQuery;
  I_index:Integer;
  P_Str:String;
  P_Int:Integer;
begin
{  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  If mData_PTList.RecordCount<=0 then
    Exit;
  I_index:=mData_PTList.RecNo ;

  mData_PTList.Edit;
  mData_PTList.Post;

  P_Str:=mData_PTList['FAgentShortName'];
  P_Int:=mData_PTList['FAgentID'];
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
     mData_PTList.Last;  }
end;

procedure TFrm_PlanWeek.FPlanaPartsPrice_PTListHeaderClick(
  Sender: TObject);
Var
  qry: TADOQuery;
  I_index:Integer;
  P_Str:String;
begin
 { qry:=TADOQuery.Create(self);
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
  }
end;

procedure TFrm_PlanWeek.FPlanDrawDate_PTListHeaderClick(
  Sender: TObject);
Var
  qry: TADOQuery;
  I_index:Integer;
  P_Date:TDateTime;
begin
 { qry:=TADOQuery.Create(self);
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
     }

end;

procedure TFrm_PlanWeek.FRealDrawDate_PTListHeaderClick(
  Sender: TObject);
Var
  qry: TADOQuery;
  I_index:Integer;
  P_Date:TDateTime;
begin
{  qry:=TADOQuery.Create(self);
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


    }
end;

procedure TFrm_PlanWeek.FPlanFinishDate_PTListHeaderClick(
  Sender: TObject);
Var
  qry: TADOQuery;
  I_index:Integer;
  P_Date:TDateTime;
begin
 { qry:=TADOQuery.Create(self);
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
  }

end;

procedure TFrm_PlanWeek.Act_Status_MExecute(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  TB_Submit.Visible:=False;
  TB_Accept.Visible:=False;
  TB_Edit_M.Visible:=False;
  TB_Del.Visible:=False;

  //制单者是本人
  try
    If PC_Week.ActivePage=TS_PlanWeekDate then
       qry.SQL.Text:='Select distinct FPlanWeekStatus,FPlanWeekWriteID from V_PlanWeek with(nolock) where FAgentID=:FAgentID and FFullNumber like :FFullNumber';
    If PC_Week.ActivePage=TS_Item then
       qry.SQL.Text:='Select distinct FPlanWeekStatus,FPlanWeekWriteID from V_PlanWeek with(nolock) where FAgentID=:FAgentID and FFullNumber_Dep_Item like :FFullNumber_Dep_Item';
    If PC_Week.ActivePage=TS_Accept then
       qry.SQL.Text:='Select distinct FPlanWeekStatus,FPlanWeekWriteID from V_PlanWeek with(nolock) where FDepartmentID=:FDepartmentID and FFullNumber_Date like :FFullNumber_Date';
    If PC_Week.ActivePage=TS_PlanWeekDate then
    begin
       qry.Parameters.FindParam('FAgentID').value:= UserFDepartmentID;
       qry.Parameters.FindParam('FFullNumber').value:=ListFNumber_PTList+'%';
    end;
    If PC_Week.ActivePage=TS_Item then
    begin
      qry.Parameters.FindParam('FAgentID').value:= UserFDepartmentID;
      qry.Parameters.FindParam('FFullNumber_Dep_Item').value:=ListFNumber_PTList+'%';
    end;
    If PC_Week.ActivePage=TS_Accept then
    begin
       qry.Parameters.FindParam('FDepartmentID').value:= UserFDepartmentID;
       qry.Parameters.FindParam('FFullNumber_Date').value:=ListFNumber_PTList+'%';
    end;
    qry.Open;
  finally
    ;
  end;

   //制单者是本人

  If (qry.RecordCount=1) and (qry.FieldByName('FPlanWeekStatus').AsInteger=0)
      and (qry.FieldByName('FPlanWeekWriteID').AsInteger=UserNumID) then
  begin
    If mdata_PTItem.RecordCount=0 then
    begin
      TB_Del.Visible:=False;
      TB_Submit.Visible:=False;
    end;
    If mdata_PTItem.RecordCount>0 then
    begin
      TB_Submit.Visible:=mdlData.PermissionCheckRights(TFrm_PlanWeek.ClassName,'提交');
      TB_Submit.Caption:='批量提交';
      TB_Del.Visible:=False;
    end;
    If mdata_PTItem.RecordCount=1 then
    begin
      TB_Edit_M.Visible:=mdlData.PermissionCheckRights(TFrm_PlanWeek.ClassName,'修改');
      TB_Del.Visible:=mdlData.PermissionCheckRights(TFrm_PlanWeek.ClassName,'删除');
      TB_Submit.Visible:=mdlData.PermissionCheckRights(TFrm_PlanWeek.ClassName,'提交');
      TB_Submit.Caption:='提交';

    end;
    Exit;
  end;

   //提交者是本人
  If (qry.RecordCount=1) and (qry.FieldByName('FPlanWeekStatus').AsInteger=1)
     and (qry.FieldByName('FPlanWeekWriteID').AsInteger=UserNumID) then
  begin
    TB_Submit.Visible:=mdlData.PermissionCheckRights(TFrm_PlanWeek.ClassName,'提交');
    If mdata_PTItem.RecordCount=0 then
       TB_Submit.Visible:=False;
    If mdata_PTItem.RecordCount>0 then
    begin
      TB_Submit.Caption:='批量提交撤回';
      TB_Accept.Visible:=mdlData.PermissionCheckRights(TFrm_PlanWeek.ClassName,'接收');
      TB_Accept.Caption:='批量接收';
    end;
    If mdata_PTItem.RecordCount=1 then
    begin
      TB_Submit.Caption:='提交撤回';
      TB_Accept.Visible:=mdlData.PermissionCheckRights(TFrm_PlanWeek.ClassName,'接收');
      TB_Accept.Caption:='接收';
    end;
    TB_Edit_M.Visible:=False;
    TB_Del.Visible:=False;
    Exit;
  end;

   //校对
  try
     If PC_Week.ActivePage=TS_PlanWeekDate then
        qry.SQL.Text:='Select distinct FPlanWeekStatus from V_PlanWeekList with(nolock) where FAgentID=:FAgentID and FFullNumber like :FFullNumber';
    If PC_Week.ActivePage=TS_Item then
       qry.SQL.Text:='Select distinct FPlanWeekStatus from V_PlanWeekList with(nolock) where FAgentID=:FAgentID and FFullNumber_Dep_Item like :FFullNumber_Dep_Item';
    If PC_Week.ActivePage=TS_Accept then
       qry.SQL.Text:='Select distinct FPlanWeekStatus from V_PlanWeekList with(nolock) where FDepartmentID=:FDepartmentID and FFullNumber_Date like :FFullNumber_Date';
    If PC_Week.ActivePage=TS_PlanWeekDate then
    begin
      qry.Parameters.FindParam('FAgentID').value:= UserFDepartmentID;
      qry.Parameters.FindParam('FFullNumber').value:=ListFNumber_PTList+'%';
    end;
    If PC_Week.ActivePage=TS_Item then
    begin
      qry.Parameters.FindParam('FAgentID').value:= UserFDepartmentID;
      qry.Parameters.FindParam('FFullNumber_Dep_Item').value:=ListFNumber_PTList+'%';
    end;
    If PC_Week.ActivePage=TS_Accept then
    begin
      qry.Parameters.FindParam('FDepartmentID').value:= UserFDepartmentID;
      qry.Parameters.FindParam('FFullNumber_Date').value:=ListFNumber_PTList+'%';
    end;
    qry.Open;
  finally
    ;
  end;
  If (qry.RecordCount>1)  then
     Exit;
  If (qry.RecordCount=1) and (qry.FieldByName('FPlanWeekStatus').AsInteger=1) then
  begin
    If mdata_PTItem.RecordCount=0 then
    begin
      TB_Accept.Visible:=False;
    end;
    If mdata_PTItem.RecordCount>0 then
    begin
      TB_Accept.Visible:=mdlData.PermissionCheckRights(TFrm_PlanWeek.ClassName,'接收');
      TB_Accept.Caption:='批量接收';
    end;
    If mdata_PTItem.RecordCount=1 then
    begin
      TB_Accept.Visible:=mdlData.PermissionCheckRights(TFrm_PlanWeek.ClassName,'接收');
      TB_Accept.Caption:='接收';
    end;
    Exit;
  end;


  If (qry.RecordCount=1) and (qry.FieldByName('FPlanWeekStatus').AsInteger=5) then
  begin
    TB_Accept.Visible:=mdlData.PermissionCheckRights(TFrm_PlanWeek.ClassName,'接收');
    If mdata_PTItem.RecordCount=0 then
       TB_Accept.Visible:=False;
    If mdata_PTItem.RecordCount>0 then
       TB_Accept.Caption:='批量接收撤回';
    If mdata_PTItem.RecordCount=1 then
       TB_Accept.Caption:='接收撤回';
    Exit;
  end;



end;

procedure TFrm_PlanWeek.Act_EditExecute(Sender: TObject);
var
 qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='select IsEdit=cast(0 as bit),a.FPlanPartsName,a.FPartsCode,a.FPlanWeekPartsName,a.FPlanWeekPartsAdd,a.FWorkShop,a.FTeamName,a.FAgentShortName,a.FPlanWeekPartsID,a.FFileItemID,b.FPlanWeekID,'
                 +'b.FPlanWeekPartsID,a.FMakeBOMWet,a.FMakeBOMPackQry,c.FLastMakePercent,b.FMakePercent,b.FTotalMakePercent,'
                 +'c.FLastShipPercent,b.FShipPercent,b.FTotalShipPercent,FPlanWeekPack,'
                 +'c.FLastPackQry,FPackQry,FTotalPackQry,c.FLastShipQry,FShipQry,FTotalShipQry from V_PlanWeekDetailList as a with(nolock) '
                 +'left outer join (select FPlanWeekID,FPlanWeekPartsID,FMakePercent,FTotalMakePercent,FShipPercent,FTotalShipPercent,'
                 +'FPackQry,FTotalPackQry,FShipQry,FTotalShipQry,FPlanWeekPack from V_PlanWeekList with(nolock) where FPlanWeekID=:FPlanWeekID) as b '
                 +'on a.FPlanWeekPartsID=b.FPlanWeekPartsID '
                 +'left outer join (select  FAgentiD,FFileItemID,FPlanWeekPartsID,FPlanWeekPartsAdd,FTotalMakePercent as FLastMakePercent,FTotalShipPercent as FLastShipPercent,FTotalPackQry as FLastPackQry,FTotalShipQry as FLastShipQry from V_PlanWeekList with(nolock) '
                 +'where FPlanYearWeek=(select max(FPlanYearWeek) from  V_PlanWeekList with(nolock) where FFileItemID=:FFileItemID1 and FAgentId=:FAgentId1 and FPlanYearWeek<:FPlanYearWeek ) '
                 +'and FFileItemID=:FFileItemID2 and FAgentId=:FAgentId2 ) as c   '
                 +'on a.FAgentiD=c.FAgentiD and a.FFileItemID=c.FFileItemID and a.FPlanWeekPartsID=c.FPlanWeekPartsID  '
                 +'where a.FFileItemID=:FFileItemID3  and a.FAgentId=:FAgentId3 order by a.FPartsCode,a.FPlanWeekPartsNumber ';
    qry.Parameters.FindParam('FPlanWeekID').value:=mData_PTItem['FPlanWeekID'];
    qry.Parameters.FindParam('FFileItemID1').value:=mData_PTItem['FFileItemID'];
    qry.Parameters.FindParam('FAgentId1').value:=UserFDepartmentID;
    qry.Parameters.FindParam('FPlanYearWeek').value:=mData_PTItem['FPlanYearWeek'];
    qry.Parameters.FindParam('FFileItemID2').value:=mData_PTItem['FFileItemID'];
    qry.Parameters.FindParam('FAgentId2').value:=UserFDepartmentID;
    qry.Parameters.FindParam('FFileItemID3').value:=mData_PTItem['FFileItemID'];
    qry.Parameters.FindParam('FAgentId3').value:=UserFDepartmentID;
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
 // cxGvColumn(cxGv_PTList,MData_PTList);
  qry.Free;

end;

procedure TFrm_PlanWeek.Act_CountExecute(Sender: TObject);
var
 qry:TADOquery;
 i:Integer;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  //更新上周数
  try
    qry.SQL.Text:='update T_PlanWeekList set FLastMakePercent=b.FLastMakePercent,FLastShipPercent=b.FLastShipPercent, '
                 +'FLastPackQry=b.FLastPackQry,FLastShipQry=b.FLastShipQry from T_PlanWeekList as a '
                 +'left outer join '
                 +'(select FAgentID,FFileItemID,FPlanWeekPartsID,FPlanWeekPartsAdd,'
                 +'isnull(sum(FMakePercent),0) as FLastMakePercent,'
                 +'isnull(sum(FShipPercent),0) as FLastShipPercent,'
                 +'isnull(sum(FPackQry),0) as FLastPackQry,'
                 +'isnull(sum(FShipQry),0) as FLastShipQry from V_PlanWeekList with(nolock) '
                 +'where FAgentID=:FAgentID and FFileItemID=:FFileItemID and FPlanYearWeek<:FPlanYearWeek '
                 +'group by FAgentID,FFileItemID,FPlanWeekPartsID,FPlanWeekPartsAdd ) as b '
                 +'on a.FPlanWeekPartsID=b.FPlanWeekPartsID and a.FPlanWeekPartsAdd=b.FPlanWeekPartsAdd where FPlanWeekID=:FPlanWeekID ';
    qry.Parameters.FindParam('FAgentID').Value:=UserFDepartmentID;
    qry.Parameters.FindParam('FFileItemID').Value:=Mdata_PTItem['FFileItemID'];
    qry.Parameters.FindParam('FPlanYearWeek').Value:=Mdata_PTItem['FPlanYearWeek'];
    qry.Parameters.FindParam('FPlanWeekID').Value:=Mdata_PTItem['FPlanWeekID'];
    qry.ExecSQL;
  finally
     ;
  end;
  try
    qry.SQL.Text:=' select * from V_PlanWeekList where FPlanWeekID=:FPlanWeekID';
    qry.Parameters.FindParam('FPlanWeekID').Value:=Mdata_PTItem['FPlanWeekID'];
    qry.Open;
  finally
     ;
  end;
  //更新累计数
  try
    qry.SQL.Text:='update T_PlanWeekList set FTotalMakePercent=b.FTotalMakePercent,'
                 +'FTotalShipPercent=b.FTotalShipPercent, '
                 +'FTotalPackQry=b.FTotalPackQry, '
                 +'FTotalShipQry=b.FTotalShipQry '
                 +'from T_PlanWeekList as a '
                 +'left outer join '
                 +'(select FAgentID,FFileItemID,FPlanWeekPartsID,FPlanWeekPartsAdd,isnull(sum(FMakePercent),0) as FTotalMakePercent,'
                 +'isnull(sum(FShipPercent),0) as FTotalShipPercent,'
                 +'isnull(sum(FPackQry),0) as FTotalPackQry,'
                 +'isnull(sum(FShipQry),0) as FTotalShipQry from V_PlanWeekList with(nolock) '
                 +'where FAgentID=:FAgentID and FFileItemID=:FFileItemID and FPlanYearWeek<=:FPlanYearWeek '
                 +'group by FAgentID,FFileItemID,FPlanWeekPartsID,FPlanWeekPartsAdd ) as b '
                 +'on a.FPlanWeekPartsID=b.FPlanWeekPartsID and a.FPlanWeekPartsAdd=b.FPlanWeekPartsAdd where FPlanWeekID=:FPlanWeekID ';
    qry.Parameters.FindParam('FAgentID').Value:=UserFDepartmentID;
    qry.Parameters.FindParam('FFileItemID').Value:=Mdata_PTItem['FFileItemID'];
    qry.Parameters.FindParam('FPlanYearWeek').Value:=Mdata_PTItem['FPlanYearWeek'];
    qry.Parameters.FindParam('FPlanWeekID').Value:=Mdata_PTItem['FPlanWeekID'];
    qry.ExecSQL;
  finally
     ;
  end;
  try
    qry.SQL.Text:=' select * from V_PlanWeekList with(nolock) where FPlanWeekID=:FPlanWeekID';
    qry.Parameters.FindParam('FPlanWeekID').Value:=Mdata_PTItem['FPlanWeekID'];
    qry.Open;
  finally
     ;
  end;
  qry.Free;

end;

procedure TFrm_PlanWeek.MData_PTListBeforePost(DataSet: TDataSet);
begin
  inherited;
  If P_state<>2  then //新增
  begin
    If DataSet['FLastMakePercent']=Null then
       DataSet['FLastMakePercent']:=0;
    If DataSet['FMakePercent']=Null then
       DataSet['FMakePercent']:=0;
    If DataSet['FTotalMakePercent']=Null then
       DataSet['FTotalMakePercent']:=0;
    {If DataSet['FTotalMakePercent']=Null then
       DataSet['FPlanWeekTotalPercent']:=0;}

    DataSet['FTotalMakePercent']:=DataSet['FLastMakePercent']+DataSet['FMakePercent'];

    If DataSet['FLastShipPercent']=Null then
       DataSet['FLastShipPercent']:=0;
    If DataSet['FShipPercent']=Null then
       DataSet['FShipPercent']:=0;
    If DataSet['FTotalShipPercent']=Null then
       DataSet['FTotalShipPercent']:=0;
    DataSet['FTotalShipPercent']:=DataSet['FLastShipPercent']+DataSet['FShipPercent'];

    If DataSet['FLastPackQry']=Null then
       DataSet['FLastPackQry']:=0;
    If DataSet['FPackQry']=Null then
       DataSet['FPackQry']:=0;
    If DataSet['FTotalPackQry']=Null then
       DataSet['FTotalPackQry']:=0;
    DataSet['FTotalPackQry']:=DataSet['FLastPackQry']+DataSet['FPackQry'];

    If DataSet['FLastShipQry']=Null then
       DataSet['FLastShipQry']:=0;
    If DataSet['FShipQry']=Null then
       DataSet['FShipQry']:=0;
    If DataSet['FTotalShipQry']=Null then
       DataSet['FTotalShipQry']:=0;
    DataSet['FTotalShipQry']:=DataSet['FLastShipQry']+DataSet['FShipQry'];
    
 end;
end;

procedure TFrm_PlanWeek.FPlanYearWeek_PTItemPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  Mdata_PTItem.Edit;
  Mdata_PTItem.Post;
  If Mdata_PTItem['FPlanYearWeek']=Null then
  begin
    Mdata_PTItem.Edit;
    Mdata_PTItem['FPlanYearWeek']:='';
    Mdata_PTItem.Post;
  end;
  try
    qry.SQL.Text:='select * from VT_PlanWeekDate with(nolock) '
                 +' where FPlanYearWeek like :FPlanYearWeek ';
                 //+'and FDepartmentID=:FDepartmentID   ';
    qry.Parameters.FindParam('FPlanYearWeek').Value:=Mdata_PTItem['FPlanYearWeek']+'%';
//    qry.Parameters.FindParam('FAgentID').Value:=UserFDepartmentID;
    qry.Open;
  finally
   ;
  end;
  If qry.RecordCount=1 then
  begin
    Mdata_PTItem.Edit;
    Mdata_PTItem['FPlanYearWeek']:=qry.FieldByName('FPlanYearWeek').Value;
    Mdata_PTItem['FPlanDateExtent']:=qry.FieldByName('FPlanDateExtent').Value;
    Mdata_PTItem.Post;
    Exit;
  end
  else
  begin

    selValue:=select('选择周报日期','FNumber','FParentNumber','FNumber','FName',qry);
    If (Length(selValue)>0) and (qry.FieldByName('Isleaf').Value<>0) then
    begin
      Mdata_PTItem.Edit;
      Mdata_PTItem['FPlanYearWeek']:=qry.FieldByName('FPlanYearWeek').Value;
      Mdata_PTItem['FPlanDateExtent']:=qry.FieldByName('FPlanDateExtent').Value;
      Mdata_PTItem.Post;
    end;
    If mdata_PTItem['FFileItemID']<>0 then
    begin
      try
        qry.SQL.Text:='Select * from V_PlanWeek with(nolock) where FAgentID=:FAgentID and FFileItemID=:FFileItemID and FPlanYearWeek=:FPlanYearWeek ';
        qry.Parameters.FindParam('FAgentID').Value:=UserFDepartmentID;
        qry.Parameters.FindParam('FFileItemID').Value:=mdata_PTItem['FFileItemID'];
        qry.Parameters.FindParam('FPlanYearWeek').Value:=mdata_PTItem['FPlanYearWeek'];
        qry.Open;
        If qry.RecordCount>0 then
        begin
           application.MessageBox('此项目本周周报已存在！请不要重复输入','系统提示',MB_ICONERROR);
           mData_PTItem.Edit;
           mData_PTItem['FBranchItemNumber']:= '';
           mData_PTItem['FItemNumber']:='';
           mData_PTItem['FClientShortName']:='';
           mData_PTItem['FBranchFileNo']:='';
           mData_PTItem['FProductName']:='';
           mData_PTItem['FProductID']:=0;
           mData_PTItem.Post;
           mData_PTList.Close;
           Exit;
        end;
      finally
         ;
      end;
    end;
  end;
end;

procedure TFrm_PlanWeek.Act_SubmitExecute(Sender: TObject);
var
 qry,qryDate:TADOquery;
  s1,s2:Ttime;
  a:string;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qryDate:=TAdoQuery.Create(self);
  qryDate.ConnectionString:=mdlData.ReadConnStr;
  P_state:=3;
  ShowPrograss('正在提交数据，请稍候……',self);
  s1:=now();
  If (TB_Submit.Caption='提交') or (TB_Submit.Caption='批量提交') then
  begin
    If application.MessageBox(Pchar('系统提示：是否对生产周报单号为：'+P_List_PTList+'的单据进行提交？'+chr(13)+chr(13)
                                   +'确定要提交对本单据吗？'),'系统提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      MData_PTItem.First;
      while not MData_PTItem.eof do
      begin
        try
          qry.SQL.Text:='Update T_PlanWeek Set FPlanWeekStatus=1,FPlanWeekSubmitDate=:FPlanWeekSubmitDate  where FPlanWeekID=:FPlanWeekID';
          qry.Parameters.FindParam('FPlanWeekSubmitDate').value:= S_SyStemDate(qryDate);
          qry.Parameters.FindParam('FPlanWeekID').value:=MData_PTItem['FPlanWeekID'];
          qry.ExecSQL;
        finally
          ;
        end;
        MData_PTItem.Edit;
        MData_PTItem['FPlanWeekStatus']:=1;
        MData_PTItem['FPlanWeekStatusNotes']:='提交';
        MData_PTItem['FPlanWeekSubmitDate']:=S_SyStemDate(qryDate);
        MData_PTItem.Post;
        Act_PlanWeek_Update.Execute;//更新三个表数据 20161124
        MData_PTItem.Next;
      end;
      If MData_PTItem.RecordCount=1 then
      begin
        s2:=now();
        a:=FormatDateTime('hh:mm:ss',s2-s1);
        Messagedlg('提示信息：提交完毕！所用时间：【'+a+'】',mtInformation,[mbok],0);
        //application.MessageBox('提交完毕！','系统提示',MB_ICONINFORMATION);
        TB_Submit.Caption:='提交撤回';
      end;
      If MData_PTItem.RecordCount>1 then
      begin
        s2:=now();
        a:=FormatDateTime('hh:mm:ss',s2-s1);
        Messagedlg('提示信息：批量提交完毕！所用时间：【'+a+'】',mtInformation,[mbok],0);
        //application.MessageBox('批量提交完毕！','系统提示',MB_ICONINFORMATION);
        TB_Submit.Caption:='批量提交撤回';
      end;
      Act_Status_M.Execute;  //权限设置
    end;
    P_state:=2;
    Exit;
  end;
  If (TB_Submit.Caption='提交撤回') or (TB_Submit.Caption='批量提交撤回')  then
  begin
    If application.MessageBox(Pchar('系统提示：是否对生产周报单号为：'+P_List_PTList+'的单据进行提交撤回？'+chr(13)+chr(13)
                                     +'确定要对本单据提交撤回吗？'),'系统提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      MData_PTItem.First;
      while not MData_PTItem.eof do
      begin
        try
          qry.SQL.Text:='Update T_PlanWeek Set FPlanWeekStatus=0,FPlanWeekSubmitDate=:FPlanWeekSubmitDate where FPlanWeekID=:FPlanWeekID';
          qry.Parameters.FindParam('FPlanWeekSubmitDate').value:= Null;
          qry.Parameters.FindParam('FPlanWeekID').value:= MData_PTItem['FPlanWeekID'];
          qry.ExecSQL;
        finally
          ;
        end;
        MData_PTItem.Edit;
        MData_PTItem['FPlanWeekStatus']:=0;
        MData_PTItem['FPlanWeekStatusNotes']:='填单';
        MData_PTItem['FPlanWeekSubmitDate']:=Null;
        MData_PTItem.Post;
        Act_PlanWeek_Update.Execute;//更新三个表数据 20161124
        MData_PTItem.Next;
      end;
      If MData_PTItem.RecordCount=1 then
      begin
        s2:=now();
        a:=FormatDateTime('hh:mm:ss',s2-s1);
        Messagedlg('提示信息：提交撤回完毕！所用时间：【'+a+'】',mtInformation,[mbok],0);

       // application.MessageBox('提交撤回完毕！','系统提示',MB_ICONINFORMATION);
        TB_Submit.Caption:='提交';
      end;
      If MData_PTItem.RecordCount>1 then
      begin
        s2:=now();
        a:=FormatDateTime('hh:mm:ss',s2-s1);
        Messagedlg('提示信息：批量提交撤回完毕！所用时间：【'+a+'】',mtInformation,[mbok],0);
       // application.MessageBox('批量提交撤回完毕！','系统提示',MB_ICONINFORMATION);
        TB_Submit.Caption:='批量提交';
      end;
      Act_Status_M.Execute;  //权限设置
    end;
    P_state:=2;
    Exit;
  end;


end;

procedure TFrm_PlanWeek.cxGrid_PTItemContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV_PTItem';
  Gm:='mdata_PTItem';
  Gr:='cxGrid_PTItem';
  Act_Menu_Set.Execute;
end;

procedure TFrm_PlanWeek.cxGrid_PTListContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV_PTList';
  Gm:='mdata_PTList';
  Gr:='cxGrid_PTList';
  Act_Menu_Set.Execute;
end;

procedure TFrm_PlanWeek.cxGV_PTListCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  If (StrToFloat(AViewInfo.GridRecord.DisplayTexts[FTotalMakePercent_PTList.Index])=Null)
     or (StrToFloat(AViewInfo.GridRecord.DisplayTexts[FTotalShipPercent_PTList.Index])=Null)
     or (StrToFloat(AViewInfo.GridRecord.DisplayTexts[FTotalShipQry_PTList.Index])=Null)
     or (StrToFloat(AViewInfo.GridRecord.DisplayTexts[FMakeBOMPackQry_PTList.Index])=Null)
     or (StrToFloat(AViewInfo.GridRecord.DisplayTexts[FPackQry_PTList.Index])=Null)
  then Exit;


  If (StrToFloat(AViewInfo.GridRecord.DisplayTexts[FTotalMakePercent_PTList.Index])=100) then
  begin
    //ACanvas.Canvas.brush.Color := clInactiveCaptionText;     //设置行颜色
    ACanvas.Canvas.Font.Color:=clBlue; //字体颜色
    ACanvas.FillRect(AViewInfo.Bounds);
  end;
  If (StrToFloat(AViewInfo.GridRecord.DisplayTexts[FTotalMakePercent_PTList.Index])=100)
     and (StrToFloat(AViewInfo.GridRecord.DisplayTexts[FTotalShipPercent_PTList.Index])=100) then
  begin
    //ACanvas.Canvas.brush.Color := clInactiveCaptionText;     //设置行颜色
    ACanvas.Canvas.Font.Color:=clGreen; //字体颜色
    ACanvas.FillRect(AViewInfo.Bounds);
  end;

  If StrToFloat(AViewInfo.GridRecord.DisplayTexts[FTotalMakePercent_PTList.Index])
    <StrToFloat(AViewInfo.GridRecord.DisplayTexts[FTotalShipPercent_PTList.Index]) then
  begin
    //ACanvas.Canvas.brush.Color := clInactiveCaptionText;     //设置行颜色
    ACanvas.Canvas.Font.Color:=clRed; //字体颜色
    ACanvas.FillRect(AViewInfo.Bounds);
  end;

  If (StrToFloat(AViewInfo.GridRecord.DisplayTexts[FTotalMakePercent_PTList.Index])>100)
     or (StrToFloat(AViewInfo.GridRecord.DisplayTexts[FTotalShipPercent_PTList.Index])>100) then
  begin
    //ACanvas.Canvas.brush.Color := clInactiveCaptionText;     //设置行颜色
    ACanvas.Canvas.Font.Color:=clRed; //字体颜色
    ACanvas.FillRect(AViewInfo.Bounds);
  end;

  If StrToFloat(AViewInfo.GridRecord.DisplayTexts[FTotalShipQry_PTList.Index])
     >StrToFloat(AViewInfo.GridRecord.DisplayTexts[FMakeBOMPackQry_PTList.Index]) then
  begin
    //ACanvas.Canvas.brush.Color := clInactiveCaptionText;     //设置行颜色
    ACanvas.Canvas.Font.Color:=clRed; //字体颜色
    ACanvas.FillRect(AViewInfo.Bounds);
  end;


  If StrToFloat(AViewInfo.GridRecord.DisplayTexts[FMakeBOMPackQry_PTList.Index])
     <StrToFloat(AViewInfo.GridRecord.DisplayTexts[FPackQry_PTList.Index]) then
  begin
    //ACanvas.Canvas.brush.Color := clInactiveCaptionText;     //设置行颜色
    ACanvas.Canvas.Font.Color:=clRed; //字体颜色
    ACanvas.FillRect(AViewInfo.Bounds);
  end;
  If StrToFloat(AViewInfo.GridRecord.DisplayTexts[FMakeBOMPackQry_PTList.Index])
     <StrToFloat(AViewInfo.GridRecord.DisplayTexts[FShipQry_PTList.Index]) then
  begin
    //ACanvas.Canvas.brush.Color := clInactiveCaptionText;     //设置行颜色
    ACanvas.Canvas.Font.Color:=clRed; //字体颜色
    ACanvas.FillRect(AViewInfo.Bounds);
  end;


  If StrToFloat(AViewInfo.GridRecord.DisplayTexts[FMakeBOMPackQry_PTList.Index])
     <StrToFloat(AViewInfo.GridRecord.DisplayTexts[FTotalPackQry_PTList.Index]) then
  begin
    //ACanvas.Canvas.brush.Color := clInactiveCaptionText;     //设置行颜色
    ACanvas.Canvas.Font.Color:=clRed; //字体颜色
    ACanvas.FillRect(AViewInfo.Bounds);
  end;
  If StrToFloat(AViewInfo.GridRecord.DisplayTexts[FMakeBOMPackQry_PTList.Index])
     <StrToFloat(AViewInfo.GridRecord.DisplayTexts[FTotalShipQry_PTList.Index]) then
  begin
    //ACanvas.Canvas.brush.Color := clInactiveCaptionText;     //设置行颜色
    ACanvas.Canvas.Font.Color:=clRed; //字体颜色
    ACanvas.FillRect(AViewInfo.Bounds);
  end;

end;

procedure TFrm_PlanWeek.Act_Update_QryExecute(Sender: TObject);
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

procedure TFrm_PlanWeek.FPlanWeekPack_PTListPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='select distinct isnull(FPlanWeekPack,'''') as FPlanWeekPack from V_PlanWeekList with(nolock) '
                 +'where FFileItemID=:FFileItemID1 and FPlanWeekPartsID=:FPlanWeekPartsID1 and '
                 +'FPlanYearWeek='
                 +'(select max(FPlanYearWeek) as FPlanYearWeek from V_PlanWeekList '
                 +'where FFileItemID=:FFileItemID2 and FPlanWeekPartsID=:FPlanWeekPartsID2 and FPlanYearWeek<:FPlanYearWeek) ';
    qry.Parameters.FindParam('FFileItemID1').value:=MData_PTList['FFileItemID'];
    qry.Parameters.FindParam('FPlanWeekPartsID1').value:=MData_PTList['FPlanWeekPartsID'];
    qry.Parameters.FindParam('FFileItemID2').value:=MData_PTList['FFileItemID'];
    qry.Parameters.FindParam('FPlanWeekPartsID2').value:=MData_PTList['FPlanWeekPartsID'];
    qry.Parameters.FindParam('FPlanYearWeek').value:=MData_PTItem['FPlanYearWeek'];
    qry.Open;
  finally
    ;
  end;
  If qry.RecordCount=1 then
  begin
    MData_PTList.Edit;
    MData_PTList['FPlanWeekPack']:=qry.FieldByName('FPlanWeekPack').Value;
    MData_PTList.Post;
    Exit;
  end;

  If qry.RecordCount>0 then
  begin
    selValue:=select('选择发货情况说明','FPlanWeekPack','FPlanWeekPack','FPlanWeekPack','FPlanWeekPack',qry);
    If (Length(selValue)>0) then
    begin
      MData_PTList.Edit;
      MData_PTList['FPlanWeekPack']:=qry.FieldByName('FPlanWeekPack').Value;
      MData_PTList.Post;
    end;
  end;

end;

procedure TFrm_PlanWeek.cxGV_PTItemFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
var qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If  P_state=2 then   //不在新增修改状态
  begin
    If (mData_PTItem['FPlanWeekID']<>0) and (mData_PTItem['FPlanWeekID']<>Null) then
    begin
      If PC_Week.ActivePage=TS_PlanWeekDate then
      begin
        If MyItemListID(qry,Mdata_PTList,'V_PlanWeekList',' FPlanWeekID='+IntToStr(mData_PTItem['FPlanWeekID']),'FFullNumber',) then
      end;
      If PC_Week.ActivePage=TS_Item then
      begin
        If MyItemListID(qry,Mdata_PTList,'V_PlanWeekList',' FPlanWeekID='+IntToStr(mData_PTItem['FPlanWeekID']),'FFullNumber_Dep_Item',) then
      end;
      If PC_Week.ActivePage=TS_Accept then
      begin
        If MyItemListID(qry,Mdata_PTList,'V_PlanWeekList',' FPlanWeekID='+IntToStr(mData_PTItem['FPlanWeekID']),'FFullNumber_Date',) then
      end;

      Act_Status_M.Execute  //权限设置
    end;
  end;

end;

procedure TFrm_PlanWeek.FPlanWeekPartsName_PTListPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  MData_PTList.Edit;
  MData_PTList.Append;
  MData_PTList.Post;
end;

procedure TFrm_PlanWeek.FPlanWeekPack_PTListHeaderClick(Sender: TObject);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If P_state<>2 then
  begin
    MData_PTList.First;
    while not MData_PTList.Eof do
    begin
      try
        qry.SQL.Text:='select distinct isnull(FPlanWeekPack,'''') as FPlanWeekPack from V_PlanWeekList with(nolock) '
                   +'where FFileItemID=:FFileItemID1 and FPlanWeekPartsID=:FPlanWeekPartsID1 and '
                   +'FPlanYearWeek='
                   +'(select max(FPlanYearWeek) as FPlanYearWeek from V_PlanWeekList with(nolock) '
                   +'where FFileItemID=:FFileItemID2 and FPlanWeekPartsID=:FPlanWeekPartsID2 and FPlanYearWeek<:FPlanYearWeek) ';
        qry.Parameters.FindParam('FFileItemID1').value:=MData_PTList['FFileItemID'];
        qry.Parameters.FindParam('FPlanWeekPartsID1').value:=MData_PTList['FPlanWeekPartsID'];
        qry.Parameters.FindParam('FFileItemID2').value:=MData_PTList['FFileItemID'];
        qry.Parameters.FindParam('FPlanWeekPartsID2').value:=MData_PTList['FPlanWeekPartsID'];
        qry.Parameters.FindParam('FPlanYearWeek').value:=MData_PTItem['FPlanYearWeek'];
        qry.Open;
      finally
        ;
      end;
      If qry.RecordCount=1 then
      begin
        MData_PTList.Edit;
        MData_PTList['FPlanWeekPack']:=qry.FieldByName('FPlanWeekPack').Value;
        MData_PTList.Post;
      end;
      MData_PTList.Next;
    end;
  end;


end;

procedure TFrm_PlanWeek.FShipPercent_PTListPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  If (MData_PTList['FMakeBOMPackQry']<>0) and (MData_PTList['FMakeBOMPackQry']<>null) then
  begin
    MData_PTList.Edit;
    MData_PTList['FLastShipPercent']:=(MData_PTList['FLastShipQry']*10000/MData_PTList['FMakeBOMPackQry'])/100;
    MData_PTList['FShipPercent']:=(MData_PTList['FShipQry']*10000/MData_PTList['FMakeBOMPackQry'])/100;
    MData_PTList['FTotalShipPercent']:=(MData_PTList['FTotalShipQry']*10000/MData_PTList['FMakeBOMPackQry'])/100;
    MData_PTList.Post;
  end;

  MData_PTList.Edit;
  MData_PTList['FPlanWeekPack']:='共'+IntToStr(MData_PTList['FMakeBOMPackQry'])+'箱；包装'
                                +IntToStr(MData_PTList['FShipQry'])+'箱；发货'+IntToStr(MData_PTList['FTotalShipQry'])+'箱；';
  MData_PTList.Post;

end;

procedure TFrm_PlanWeek.Act_AcceptExecute(Sender: TObject);
var
 qry,qryDate:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qryDate:=TAdoQuery.Create(self);
  qryDate.ConnectionString:=mdlData.ReadConnStr;
  P_state:=3;
  If (TB_Accept.Caption='接收') or (TB_Accept.Caption='批量接收') then
  begin
    If application.MessageBox(Pchar('系统提示：是否对周报明细：'+P_List_PTList+'的单据进行接收？'+chr(13)+chr(13)
                                   +'确定要接收本单据吗？'),'系统提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      MData_PTItem.First;
      while not MData_PTItem.eof do
      begin
        try
          qry.SQL.Text:='Update T_PlanWeek Set FPlanWeekStatus=5,FPlanWeekSubmitDate=:FPlanWeekSubmitDate '
                       +' where FPlanWeekID=:FPlanWeekID';
          qry.Parameters.FindParam('FPlanWeekSubmitDate').value:= S_SyStemDate(qryDate);
          qry.Parameters.FindParam('FPlanWeekID').value:=MData_PTItem['FPlanWeekID'];
          qry.ExecSQL;
        finally
          ;
        end;
        MData_PTItem.Edit;
        MData_PTItem['FPlanWeekStatus']:=5;
        MData_PTItem['FPlanWeekStatusNotes']:='接收';
        MData_PTItem['FPlanWeekSubmitDate']:=S_SyStemDate(qryDate);
        MData_PTItem.Post;
        MData_PTItem.Next;
      end;
      If MData_PTItem.RecordCount=1 then
      begin
        application.MessageBox('接收完毕！','系统提示',MB_ICONINFORMATION);
        TB_Accept.Caption:='接收撤回';
      end;
      If MData_PTItem.RecordCount>1 then
      begin
        application.MessageBox('批量接收完毕！','系统提示',MB_ICONINFORMATION);
        TB_Accept.Caption:='批量接收撤回';
      end;
      Act_Status_M.Execute;  //权限设置
    end;
    P_state:=2;
    Exit;
  end;
  If (TB_Accept.Caption='接收撤回') or (TB_Accept.Caption='批量接收撤回')  then
  begin
    If application.MessageBox(Pchar('系统提示：是否对周报明细：'+P_List_PTList+'的单据进行接收撤回？'+chr(13)+chr(13)
                                     +'确定要对本单据接收撤回吗？'),'系统提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      MData_PTItem.First;
      while not MData_PTItem.eof do
      begin
        try
          qry.SQL.Text:='Update T_PlanWeek Set FPlanWeekStatus=1,FPlanWeekSubmitDate=:FPlanWeekSubmitDate '
                       +'where FPlanWeekID=:FPlanWeekID';
          qry.Parameters.FindParam('FPlanWeekSubmitDate').value:= Null;
          qry.Parameters.FindParam('FPlanWeekID').value:= MData_PTItem['FPlanWeekID'];
          qry.ExecSQL;
        finally
          ;
        end;
        MData_PTItem.Edit;
        MData_PTItem['FPlanWeekStatus']:=1;
        MData_PTItem['FPlanWeekStatusNotes']:='提交';
        MData_PTItem['FPlanWeekSubmitDate']:=Null;
        MData_PTItem.Post;
        MData_PTItem.Next;
      end;
      If MData_PTItem.RecordCount=1 then
      begin
        application.MessageBox('接收撤回完毕！','系统提示',MB_ICONINFORMATION);
        TB_Accept.Caption:='接收';
      end;
      If MData_PTItem.RecordCount>1 then
      begin
        application.MessageBox('批量接收撤回完毕！','系统提示',MB_ICONINFORMATION);
        TB_Accept.Caption:='批量接收';
      end;
      Act_Status_M.Execute;  //权限设置
    end;
    P_state:=2;
    Exit;
  end;

end;

procedure TFrm_PlanWeek.Act_RefExecute(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If PC_Week.ActivePage=TS_PlanWeekDate then
  begin
    If UserFDepartmentsort=1 then //事业部
    begin
      If not TreeVeiwListWhere(qry,MyTreeView_PTItem,'VT_PlanWeek',' and FDepartmentID='+IntToStr(UserFDepartmentID)) then
        Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
    end;
    If (UserFDepartmentsort=2) or (UserFDepartmentsort=4) then //子公司  外协点
    begin
      If not TreeVeiwListWhere(qry,MyTreeView_PTItem,'VT_PlanWeek',' and FAgentID='+IntToStr(UserFDepartmentID)) then
        Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
    end;
    RzSP_PTitem.Visible:=True;
    TS_Qry.TabVisible:=False;
    PC_Tack.ActivePage:=TS_Edit;
    TB_PlanTaskList.Visible:=True;
  end;

  If PC_Week.ActivePage=TS_Item then
  begin
    If UserFDepartmentsort=1 then //事业部
    begin
      If not TreeVeiwListWhere(qry,MyTreeView_PTItem,'VT_PlanWeek_Dep_Item',' and FDepartmentID='+IntToStr(UserFDepartmentID)) then
         Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
      TS_Qry.TabVisible:=False;
    end;

    If (UserFDepartmentsort=2) or (UserFDepartmentsort=4) then //子公司  外协点
    begin
      If not TreeVeiwListWhere(qry,MyTreeView_PTItem,'VT_PlanWeek_Dep_Item',' and FAgentID='+IntToStr(UserFDepartmentID)) then
         Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
    RzSP_PTitem.Visible:=True;
    TS_Qry.TabVisible:=True;
    PC_Tack.ActivePage:=TS_Edit;
    end;
    TB_PlanTaskList.Visible:=False;
  end;
  If PC_Week.ActivePage=TS_Accept then
  begin
    If UserFDepartmentsort=1 then //事业部
    begin
      If not TreeVeiwListWhere(qry,MyTreeView_PTItem,'VT_PlanWeek_Date',' and FDepartmentID='+IntToStr(UserFDepartmentID)) then
         Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
    end;
    RzSP_PTitem.Visible:=True;
    TS_Qry.TabVisible:=False;
    PC_Tack.ActivePage:=TS_Edit;
    TB_PlanTaskList.Visible:=False;
 end;

end;

procedure TFrm_PlanWeek.TB_Edit_PackQryClick(Sender: TObject);
begin
  inherited;
  cxGV_PTList.OptionsData.Editing:=True;
  FShipPercent_PTList.Options.Editing:=True;
  FPackQry_PTList.Options.Editing:=True;
  FShipQry_PTList.Options.Editing:=True;
  FPlanWeekPack_PTList.Options.Editing:=True;

  TB_Edit_PackQry.Visible:=False;

    //列颜色
  AFirstColumnStyle := TcxStyle.Create(Self);
  AFirstColumnStyle.Color := clMenu; //底色
  AFirstColumnStyle.TextColor := clBlue;        //字体颜色
  cxGV_PTList.Columns[FShipPercent_PTList.Index].Styles.Content := AFirstColumnStyle;
  cxGV_PTList.Columns[FPackQry_PTList.Index].Styles.Content := AFirstColumnStyle;
  cxGV_PTList.Columns[FShipQry_PTList.Index].Styles.Content := AFirstColumnStyle;
  cxGV_PTList.Columns[FPlanWeekPack_PTList.Index].Styles.Content := AFirstColumnStyle;

end;

procedure TFrm_PlanWeek.TB_Update_PackQryClick(Sender: TObject);
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
        qry.SQL.Text:='Update T_PlanWeekList set FLastShipPercent=:FLastShipPercent,FShipPercent=:FShipPercent, '
                     +'FTotalShipPercent=:FTotalShipPercent,FPlanWeekPack=:FPlanWeekPack,FLastPackQry=:FLastPackQry,FPackQry=:FPackQry,'
                     +'FTotalPackQry=:FTotalPackQry,FLastShipQry=:FLastShipQry,FShipQry=:FShipQry,FTotalShipQry=:FTotalShipQry '
                     +'where FPlanWeekListID=:FPlanWeekListID';
        while not MData_PTList.EoF do
        begin
          IsEdit:=MData_PTList.FieldByName('IsEdit').AsBoolean;
          If IsEdit then
          begin
            qry.Parameters.FindParam('FLastShipPercent').value:= mData_PTList['FLastShipPercent'];
            qry.Parameters.FindParam('FShipPercent').value:= mData_PTList['FShipPercent'];
            qry.Parameters.FindParam('FTotalShipPercent').value:= mData_PTList['FTotalShipPercent'];
            qry.Parameters.FindParam('FPlanWeekPack').value:= mData_PTList['FPlanWeekPack'];
            qry.Parameters.FindParam('FLastPackQry').value:= mData_PTList['FLastPackQry'];
            qry.Parameters.FindParam('FPackQry').value:= mData_PTList['FPackQry'];
            qry.Parameters.FindParam('FTotalPackQry').value:= mData_PTList['FTotalPackQry'];
            qry.Parameters.FindParam('FLastShipQry').value:= mData_PTList['FLastShipQry'];
            qry.Parameters.FindParam('FShipQry').value:= mData_PTList['FShipQry'];
            qry.Parameters.FindParam('FTotalShipQry').value:= mData_PTList['FTotalShipQry'];
            qry.Parameters.FindParam('FPlanWeekListID').value:= mData_PTList['FPlanWeekListID'];
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

 { If not MyItemList(qry,MData_PTList,'V_PlanWeekList','FFullNumber',ListFNumber_PTList,'FFullNumber') then
  begin
    MData_PTList.Open;
   end;
  }
  If PC_Week.ActivePage=TS_PlanWeekDate then
  begin
    If MyItemListFieldWhere(qry,MData_PTList,' *  ','V_PlanWeekList','FFullNumber',ListFNumber_PTList,' ','FFullNumber') then
  end;
  If PC_Week.ActivePage=TS_Item then
  begin
     If MyItemListFieldWhere(qry,MData_PTList,' *  ','V_PlanWeekList','FFullNumber_Dep_Item',ListFNumber_PTList,' ','FFullNumber_Dep_Item') then
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

  cxGV_PTList.Columns[FShipPercent_PTList.Index].Styles.Content := AFirstColumnStyle;
  cxGV_PTList.Columns[FPackQry_PTList.Index].Styles.Content := AFirstColumnStyle;
  cxGV_PTList.Columns[FShipQry_PTList.Index].Styles.Content := AFirstColumnStyle;
  cxGV_PTList.Columns[FPlanWeekPack_PTList.Index].Styles.Content := AFirstColumnStyle;

  cxGV_PTList.OptionsData.Editing:=False;
  Act_PlanWeek_Update.Execute;//更新三个表数据 20161124
  //Act_PlanWeekList_Qry.Execute;  //重新计算生产周报的累计百分比  更新最大周累计未完成重量20161124
  //Act_PlanWeek_UpdateQry.Execute;//更新周报明细及生产排产表汇总数据20161124
end;

procedure TFrm_PlanWeek.MData_PTListAfterEdit(DataSet: TDataSet);
begin
  inherited;
  DataSet['IsEdit']:=True;
  TB_update_PackQry.Visible:=mdlData.PermissionCheckRights(TFrm_PlanWeek.ClassName,'审核');

end;

procedure TFrm_PlanWeek.Act_Edit_EditExecute(Sender: TObject);
var
 qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    {qry.SQL.Text:='select IsEdit=cast(0 as bit),a.FPlanPartsName,a.FPartsCode,a.FPlanWeekPartsName,a.FWorkShop,a.FTeamName,a.FAgentShortName,a.FPlanWeekPartsID,a.FFileItemID,b.FPlanWeekID,'
                 +'b.FPlanWeekPartsID,a.FMakeBOMWet,a.FMakeBOMPackQry,c.FLastMakePercent,b.FMakePercent,b.FTotalMakePercent,'
                 +'c.FLastShipPercent,b.FShipPercent,b.FTotalShipPercent,FPlanWeekPack,'
                 +'c.FLastPackQry,FPackQry,FTotalPackQry,c.FLastShipQry,FShipQry,FTotalShipQry from V_PlanWeekDetailList as a with(nolock) '
                 +'left outer join (select FPlanWeekID,FPlanWeekPartsID,FMakePercent,FTotalMakePercent,FShipPercent,FTotalShipPercent,'
                 +'FPackQry,FTotalPackQry,FShipQry,FTotalShipQry,FPlanWeekPack from V_PlanWeekList with(nolock) where FPlanWeekID=:FPlanWeekID) as b '
                 +'on a.FPlanWeekPartsID=b.FPlanWeekPartsID '
                 +'left outer join (select  FAgentiD,FFileItemID,FPlanWeekPartsID, FTotalMakePercent as FLastMakePercent,FTotalShipPercent as FLastShipPercent,FTotalPackQry as FLastPackQry,FTotalShipQry as FLastShipQry from V_PlanWeekList with(nolock) '
                 +'where FPlanYearWeek=(select max(FPlanYearWeek) from  V_PlanWeekList with(nolock) where FFileItemID=:FFileItemID1 and FAgentId=:FAgentId1 and FPlanYearWeek<:FPlanYearWeek ) '
                 +'and FFileItemID=:FFileItemID2 and FAgentId=:FAgentId2 ) as c   '
                 +'on a.FAgentiD=c.FAgentiD and a.FFileItemID=c.FFileItemID and a.FPlanWeekPartsID=c.FPlanWeekPartsID  '
                 +'where a.FFileItemID=:FFileItemID3  and a.FAgentId=:FAgentId3 order by a.FPartsCode,a.FPlanWeekPartsNumber ';
    qry.Parameters.FindParam('FPlanWeekID').value:=mData_PTItem['FPlanWeekID'];
    qry.Parameters.FindParam('FFileItemID1').value:=mData_PTItem['FFileItemID'];
    qry.Parameters.FindParam('FAgentId1').value:=UserFDepartmentID;
    qry.Parameters.FindParam('FPlanYearWeek').value:=mData_PTItem['FPlanYearWeek'];
    qry.Parameters.FindParam('FFileItemID2').value:=mData_PTItem['FFileItemID'];
    qry.Parameters.FindParam('FAgentId2').value:=UserFDepartmentID;
    qry.Parameters.FindParam('FFileItemID3').value:=mData_PTItem['FFileItemID'];
    qry.Parameters.FindParam('FAgentId3').value:=UserFDepartmentID;  }


    qry.SQL.Text:='select IsEdit=cast(0 as bit),FPlanPartsName,FPartsCode,FPlanWeekPartsName,FWorkShop,FTeamName,FAgentShortName,FPlanWeekPartsID,FFileItemID,FPlanWeekID,'
                 +'FPlanWeekPartsID,FPlanWeekPartsAdd,FMakeBOMWet,FMakeBOMPackQry,FLastMakePercent,FMakePercent,FTotalMakePercent,'
                 +'FLastShipPercent,FShipPercent,FTotalShipPercent,FPlanWeekPack,'
                 +'FLastPackQry,FPackQry,FTotalPackQry,FLastShipQry,FShipQry,FTotalShipQry from V_PlanWeekList with(nolock) '
                 +' where FPlanWeekID=:FPlanWeekID ';
    qry.Parameters.FindParam('FPlanWeekID').value:=mData_PTItem['FPlanWeekID']; 
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
 // cxGvColumn(cxGv_PTList,MData_PTList);
  qry.Free;



end;

procedure TFrm_PlanWeek.CB_ISEditClick(Sender: TObject);
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

procedure TFrm_PlanWeek.Act_Item_PlanWeekDateExecute(Sender: TObject);
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
    qry_Loop.SQL.Text:='select distinct FPlanYearWeek,FFileItemID,FAgentID from V_PlanWeekList where FAgentID=:FAgentID '
                      +' and FFullNumber_Dep_Item like :FFullNumber_Dep_Item order by FFileItemID,FPlanYearWeek ';
    qry_Loop.Parameters.FindParam('FAgentID').value:=UserFDepartmentID;
    qry_Loop.Parameters.FindParam('FFullNumber_Dep_Item').value:=ListFNumber_PTList+'%';
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
  colHeadStr3:=' from (select FPlanYearWeek,FProductNum,FBranchItemNumber,FClientFullName,FPlanWeekPartsNumber,FPlanWeekPartsName,FPlanWeekPartsAdd,'
               //+'(sum(isnull('+P_Wet+',0))) as Wet from V_PlanWeekList where FAgentID=:FAgentID1 '
               //+' and  FFullNumber_Dep_Item like :FFullNumber_Dep_Item1  '
               +'(sum(isnull('+P_Wet+',0))) as Wet from V_PlanWeekList where FAgentID='+inttostr(UserFDepartmentID)
               +' and  FFullNumber_Dep_Item like '''+ListFNumber_PTList+'%'' '
               +'group by FPlanYearWeek,FProductNum,FBranchItemNumber,FClientFullName,FPlanWeekPartsNumber,FPlanWeekPartsName,FPlanWeekPartsAdd) as a ';
  colHeadStr4:='0';
  mdata_Qry.First;
  while not mdata_Qry.eof do
  begin
    If mdata_Qry['FPlanYearWeek']='' then
    begin
      mdata_Qry.Edit;
      mdata_Qry['FPlanYearWeek']:='空白';
      mdata_Qry.Post
    end;
    colHeadStr1:=colHeadStr1+',sum('+'第'+mdata_Qry['FPlanYearWeek']+'周) as '+Trim(CB_Wet.Text)+mdata_Qry['FPlanYearWeek'];
    colHeadStr2:=colHeadStr2+',isnull(case FPlanYearWeek when '+mdata_Qry['FPlanYearWeek']+' '
               +'then isnull(Wet,0) end,0) as '+'第'+mdata_Qry['FPlanYearWeek']+'周';

    colHeadStr4:=colHeadStr4+'+sum('+'第'+mdata_Qry['FPlanYearWeek']+'周)';

    mdata_Qry.Next;
  end;

  colHeadStr:='select FBranchItemNumber as 图号,FClientFullName as 用户名称,FPlanWeekPartsName as 部件名称,FPlanWeekPartsAdd as 部件规格 '
             +colHeadStr1+','+colHeadStr4+' as 合计,FProductNum as 产品编号,FPlanWeekPartsNumber as 部件编码 '
             +'from (select FProductNum,FBranchItemNumber,FClientFullName,FPlanWeekPartsNumber,FPlanWeekPartsName,FPlanWeekPartsAdd '
             +colHeadStr2+colHeadStr3
             +' ) as b group by FProductNum,FBranchItemNumber,FClientFullName,FPlanWeekPartsNumber,FPlanWeekPartsName,FPlanWeekPartsAdd '
             +'order by FProductNum,FBranchItemNumber,FClientFullName,FPlanWeekPartsNumber,FPlanWeekPartsName,FPlanWeekPartsAdd ';
  try
    Edit1.Text:=colHeadStr;
    qry.SQL.Text:=colHeadStr;
   // qry.Parameters.FindParam('FAgentID1').value:=UserFDepartmentID;
   // qry.Parameters.FindParam('FFullNumber_Dep_Item1').value:=ListFNumber_PTList+'%';
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

procedure TFrm_PlanWeek.CB_WetPropertiesChange(Sender: TObject);
begin
  inherited;
  If CB_Wet.Text='本周完工' then
     P_Wet:='FMakePercent';
  If CB_Wet.Text='本周发货' then
     P_Wet:='FShipPercent';
  If CB_Wet.Text='本周包装件数' then
     P_Wet:='FPackQry';
  If CB_Wet.Text='本周发货件数' then
     P_Wet:='FShipQry';

  If (P_Isleaf_PTList=1) and (PC_Week.ActivePage=TS_Item) and (PC_Tack.ActivePage=TS_Qry)  then
      Act_Item_PlanWeekDate.Execute;

end;

procedure TFrm_PlanWeek.Act_PlanWeekList_QryExecute(Sender: TObject);
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

procedure TFrm_PlanWeek.TB_Qry_CountClick(Sender: TObject);
var  s1,s2:Ttime;
    a:string;
begin
  inherited;
  s1:=now();

  MData_PTItem.First;
  while not MData_PTItem.eof do
  begin
    Act_PlanWeek_Update.Execute;//更新三个表数据 20161124
    //Act_PlanWeekList_Qry.Execute;    //重新计算生产周报的累计百分比  更新最大周累计未完成重量20161124
    //Act_PlanWeek_UpdateQry.Execute;//更新周报明细及生产排产表汇总数据 20161124
    MData_PTItem.Next;
  end;
  s2:=now();
  a:=FormatDateTime('hh:mm:ss',s2-s1);
  Messagedlg('提示信息：计算完毕！所用时间：【'+a+'】',mtInformation,[mbok],0);

end;

procedure TFrm_PlanWeek.PC_TackChange(Sender: TObject);
var
  qry: TADOQuery;
   AFirstColumnStyle: TcxStyle;
begin
  inherited;
  //列颜色
  AFirstColumnStyle := TcxStyle.Create(Self);
  AFirstColumnStyle.Color := clAqua;
  AFirstColumnStyle.TextColor := clBlue;
  cxGV_Error.Columns[10].Styles.Content := AFirstColumnStyle;
  cxGV_Error.Columns[11].Styles.Content := AFirstColumnStyle;

  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  If PC_Tack.ActivePage=TS_Edit then
      RzSP_PTitem.Visible:=True;
  If PC_Tack.ActivePage=TS_Qry then
      RzSP_PTitem.Visible:=False;
  If (P_Isleaf_PTList=1) and (PC_Week.ActivePage=TS_Item) and (PC_Tack.ActivePage=TS_Qry)  then
  begin
    Act_Item_PlanWeekDate.Execute;
  end ;

  If PC_Tack.ActivePage=TS_PlanWeek_Week then
  begin
    try
      If UserFDepartmentsort=1 then //事业部
      begin
        qry.SQL.Text:='select a.FPlanYearWeek,b.FPlanMonthweek from '
                     +'(select max(FPlanYearWeek) as FPlanYearWeek from V_PlanWeek  where FDepartmentID=:FDepartmentID) as a '
                     +' left outer join T_PlanWeekDate as b on a.FPlanYearWeek=b.FPlanYearWeek ';
         qry.Parameters.FindParam('FDepartmentID').value:= UserFDepartmentID;
      end;
      If (UserFDepartmentsort=2) or (UserFDepartmentsort=4) then //子公司  外协点
      begin
        qry.SQL.Text:='select a.FPlanYearWeek,b.FPlanMonthweek from (select max(FPlanYearWeek) as FPlanYearWeek from V_PlanWeek  where FAgentID=:FAgentID) as a '
                     +' left outer join T_PlanWeekDate as b on a.FPlanYearWeek=b.FPlanYearWeek ';
        qry.Parameters.FindParam('FAgentID').value:= UserFDepartmentID;
      end;

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
      If UserFDepartmentsort=1 then //事业部
      begin
        qry.SQL.Text:='select b.FDepartmentName as FAgentShortName,a.FName,FBranchItemNumber,a.FItemPlanDate from VT_PlanWeekDetail as a  with(nolock) '
                     +'left outer join T_Department as b on a.FAgentID=b.FDepartmentID '
                     +'where  FNumber like ''%;1;%'' and FBranchItemNumber<>'''' and a.FDepartmentID=:FDepartmentID and '{a.FItemPlanDate<=:FItemPlanDate and ' }
                     +'Convert(nvarchar(20),FFileItemID)+'';''+Convert(nvarchar(20),FAgentID)+'';'' not in '
                     +'(select Convert(nvarchar(20),FFileItemID)+'';''+Convert(nvarchar(20),FAgentID)+'';'' from T_PlanWeek where FPlanYearWeek=:FPlanYearWeek ) '
                     +'order by FDepartmentName desc ,FBranchItemNumber';
        qry.Parameters.FindParam('FDepartmentID').value:= UserFDepartmentID;
      end;
      If (UserFDepartmentsort=2) or (UserFDepartmentsort=4) then //子公司  外协点
     //20180718改
      begin
        qry.SQL.Text:='select b.FDepartmentName as FAgentShortName,a.FName,FBranchItemNumber,a.FItemPlanDate from VT_PlanWeekDetail as a  with(nolock) '
                     +'left outer join T_Department as b on a.FDepartmentID=b.FDepartmentID '
                     +'where  FNumber like ''%;1;%'' and FBranchItemNumber<>'''' and a.FAgentID=:FAgentID '
                     +'order by FDepartmentName desc ,FBranchItemNumber';
        qry.Parameters.FindParam('FAgentID').value:= UserFDepartmentID;
       end;

    {  begin
        qry.SQL.Text:='select b.FDepartmentName as FAgentShortName,a.FName,FBranchItemNumber,a.FItemPlanDate from VT_PlanWeekDetail as a  with(nolock) '
                     +'left outer join T_Department as b on a.FDepartmentID=b.FDepartmentID '
                     +'where  FNumber like ''%;1;%'' and FBranchItemNumber<>'''' and a.FAgentID=:FAgentID and '
                     +'FFileItemID not in (select FFileItemID from T_PlanWeek where FAgentID=:FAgentID2 and FPlanYearWeek=:FPlanYearWeek ) '
                     +'order by FDepartmentName desc ,FBranchItemNumber';
        qry.Parameters.FindParam('FAgentID').value:= UserFDepartmentID;
        qry.Parameters.FindParam('FAgentID2').value:= UserFDepartmentID;
      end;
      qry.Parameters.FindParam('FPlanYearWeek').value:= Trim(E_FPlanYearWeek.Text);

    }

      qry.Open;
    finally
      ;
    end;
    MData_PlanWeek_Week.CopyFromDataSet(qry);
    MData_PlanWeek_Week.Active:=True;
  end;

  If PC_Tack.ActivePage=TS_Error then
  begin
    RzSP_PTitem.Visible:=False;
    try
      If UserFDepartmentsort=1 then //事业部
      begin
        qry.SQL.Text:='select cast((cast(FShipQry as Numeric(18,2))/cast(FMakeBOMPackQry as Numeric(18,2)))*100 as Numeric(18,4)) as FProportion, '
                     +'round((isnull(FShipQry,0)/isnull(FMakeBOMPackQry,0)),2)*100,* from V_PlanWeekList '
                     +'where  FDepartmentID=:FDepartmentID and isnull(FShipQry,0)<>0 and isnull(FMakeBOMPackQry,0)<>0 '
                     +'and  FShipPercent<>cast((cast(FShipQry as Numeric(18,2))/cast(FMakeBOMPackQry as Numeric(18,2)))*100 as Numeric(18,4)) ';
        qry.Parameters.FindParam('FDepartmentID').value:= UserFDepartmentID;
      end;
      If (UserFDepartmentsort=2) or (UserFDepartmentsort=4) then //子公司  外协点
      begin
        qry.SQL.Text:='select cast((cast(FShipQry as Numeric(18,2))/cast(FMakeBOMPackQry as Numeric(18,2)))*100 as Numeric(18,4)) as FProportion, '
                     +'round((isnull(FShipQry,0)/isnull(FMakeBOMPackQry,0)),2)*100,* from V_PlanWeekList '
                     +'where  FAgentID=:FAgentID and isnull(FShipQry,0)<>0 and isnull(FMakeBOMPackQry,0)<>0 '
                     +'and  FShipPercent<>cast((cast(FShipQry as Numeric(18,2))/cast(FMakeBOMPackQry as Numeric(18,2)))*100 as Numeric(18,4)) ';
        qry.Parameters.FindParam('FAgentID').value:= UserFDepartmentID;
      end;
      qry.Open;
    finally
      ;
    end;
    MData_Error.CopyFromDataSet(qry);
    MData_Error.Active:=True;
  end;


end;

procedure TFrm_PlanWeek.PC_WeekChange(Sender: TObject);
begin
  inherited;
  Act_Ref.Execute;
end;

procedure TFrm_PlanWeek.E_FPlanYearWeekPropertiesButtonClick(
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
  begin
    E_FPlanYearWeek.Text:=qry.FieldByName('FPlanYearWeek').Value;
  end
  else
  begin
    selValue:=select('选择周报日期','FNumber','FParentNumber','FNumber','FName',qry);
    If (Length(selValue)>0) and (qry.FieldByName('Isleaf').Value<>0) then
    begin
      E_FPlanYearWeek.Text:=qry.FieldByName('FPlanYearWeek').Value;
      E_FPlanYearMonth.Text:=qry.FieldByName('FPlanYearMonth').Value;
    end;
  end;

    try
      If UserFDepartmentsort=1 then //事业部
      begin
        {qry.SQL.Text:='select b.FDepartmentName as FAgentShortName,a.FName,FBranchItemNumber,a.FItemPlanDate from VT_PlanWeekDetail as a  with(nolock) '
                     +'left outer join T_Department as b on a.FAgentID=b.FDepartmentID '
                     +'where  FNumber like ''%;1;%'' and FBranchItemNumber<>'''' and a.FDepartmentID=:FDepartmentID and a.FItemPlanDate<=:FItemPlanDate and '
                     +'FFileItemID not in (select FFileItemID from T_PlanWeek where FPlanYearWeek=:FPlanYearWeek ) '
                     +'order by FDepartmentName desc ,FBranchItemNumber'; }
         qry.SQL.Text:='select b.FDepartmentName as FAgentShortName,a.FName,FBranchItemNumber,a.FItemPlanDate from VT_PlanWeekDetail as a  with(nolock) '
                     +'left outer join T_Department as b on a.FAgentID=b.FDepartmentID '
                     +'where  FNumber like ''%;1;%'' and FBranchItemNumber<>'''' and a.FDepartmentID=:FDepartmentID and '{a.FItemPlanDate<=:FItemPlanDate and '}
                     +'Convert(nvarchar(20),FFileItemID)+'';''+Convert(nvarchar(20),FAgentID)+'';'' not in '
                     +'(select Convert(nvarchar(20),FFileItemID)+'';''+Convert(nvarchar(20),FAgentID)+'';'' from T_PlanWeek where FPlanYearWeek=:FPlanYearWeek ) '
                     +'order by FDepartmentName desc ,FBranchItemNumber';

        qry.Parameters.FindParam('FDepartmentID').value:= UserFDepartmentID;
      end;
      If (UserFDepartmentsort=2) or (UserFDepartmentsort=4) then //子公司  外协点
      begin
        {qry.SQL.Text:='select b.FDepartmentName as FAgentShortName,a.FName,FBranchItemNumber,a.FItemPlanDate from VT_PlanWeekDetail as a  with(nolock) '
                     +'left outer join T_Department as b on a.FDepartmentID=b.FDepartmentID '
                     +'where  FNumber like ''%;1;%'' and FBranchItemNumber<>'''' and a.FAgentID=:FAgentID and a.FItemPlanDate<=:FItemPlanDate and '
                     +'FFileItemID not in (select FFileItemID from T_PlanWeek where FPlanYearWeek=:FPlanYearWeek ) '
                     +'order by FDepartmentName desc ,FBranchItemNumber';  }
         qry.SQL.Text:='select b.FDepartmentName as FAgentShortName,a.FName,FBranchItemNumber,a.FItemPlanDate from VT_PlanWeekDetail as a  with(nolock) '
                     +'left outer join T_Department as b on a.FDepartmentID=b.FDepartmentID '
                     +'where  FNumber like ''%;1;%'' and FBranchItemNumber<>'''' and a.FAgentID=:FAgentID and '  {a.FItemPlanDate<=:FItemPlanDate and '}
                     +'FFileItemID not in (select FFileItemID from T_PlanWeek where FAgentID=:FAgentID2 and FPlanYearWeek=:FPlanYearWeek ) '
                     +'order by FDepartmentName desc ,FBranchItemNumber';
       qry.Parameters.FindParam('FAgentID').value:= UserFDepartmentID;
       qry.Parameters.FindParam('FAgentID2').value:= UserFDepartmentID;
      end;
     // qry.Parameters.FindParam('FItemPlanDate').value:= Trim(E_FPlanYearMonth.Text);
      qry.Parameters.FindParam('FPlanYearWeek').value:= Trim(E_FPlanYearWeek.Text);
      qry.Open;
    finally
      ;
    end;
    MData_PlanWeek_Week.CopyFromDataSet(qry);
    MData_PlanWeek_Week.Active:=True;
end;

procedure TFrm_PlanWeek.cxGrid_PlanWeek_WeekContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV_PlanWeek_Week';
  Gm:='mdata_PlanWeek_Week';
  Gr:='cxGrid_PlanWeek_Week';
  Act_Menu_Set.Execute;
end;

procedure TFrm_PlanWeek.Act_PlanWeek_UpdateExecute(Sender: TObject);
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


