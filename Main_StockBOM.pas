unit Main_StockBOM;

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
  TFlatPanelUnit,Comobj, cxLookAndFeelPainters, cxButtons, cxTimeEdit, jpeg,
  cxCheckComboBox, RzEdit, RzLabel, cxSpinEdit, RzRadGrp, cxImage, DBCtrls,
  RzStatus, ActnList, Menus;

type
  TFrm_StockBOM = class(TFrm_GridBass)
    ImageList: TImageList;
    frReport: TfrReport;
    frDBDataSet: TfrDBDataSet;
    PC_2: TRzPageControl;
    TS_WorkBOM: TRzTabSheet;
    PanelBkGnd: TPanel;
    Panel2: TPanel;
    MData_WBOM: TdxMemData;
    DS_Mdata_WBOM: TDataSource;
    TS_DesignBOM: TRzTabSheet;
    DS_Mdata3: TDataSource;
    MData3: TdxMemData;
    Panel7: TPanel;
    RzSizePanel2: TRzSizePanel;
    MyTreeView_DBOM: TTreeView;
    Panel6: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    ToolBar2: TToolBar;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    ToolBar3: TToolBar;
    TB_Edit1: TToolButton;
    TB_Save: TToolButton;
    TB_Ref_DBOM: TToolButton;
    ToolButton15: TToolButton;
    ToolButton18: TToolButton;
    TB_StockBOM: TToolButton;
    ToolBar1: TToolBar;
    TB_Ref_SBOM: TToolButton;
    MData_DBOM: TdxMemData;
    DS_Mdata_DBOM: TDataSource;
    RzSizePanel4: TRzSizePanel;
    MyTreeView_WBOM: TTreeView;
    TB_PartsSort: TToolButton;
    TB_Exit: TToolButton;
    ToolButton2: TToolButton;
    PC_1: TRzPageControl;
    TS_BOM: TRzTabSheet;
    SaveDialog1: TSaveDialog;
    TB_Del1: TToolButton;
    TB_RecordRef: TToolButton;
    actionList: TActionList;
    ActApp: TAction;
    ActSave: TAction;
    ActOut: TAction;
    ActEdit: TAction;
    ActDel: TAction;
    Act_Submit: TAction;
    Act_Audit: TAction;
    ActPartsSort: TAction;
    Act_Weigth: TAction;
    ActWorkBOM: TAction;
    ActTake: TAction;
    Act_Status: TAction;
    ActAudit: TAction;
    ActProcessSort: TAction;
    stbBar: TRzStatusBar;
    RzClockStatus1: TRzClockStatus;
    RzKeyStatus1: TRzKeyStatus;
    RzKeyStatus2: TRzKeyStatus;
    RzKeyStatus3: TRzKeyStatus;
    stbMsg: TRzFieldStatus;
    TS_StockIn: TRzTabSheet;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    ToolBar4: TToolBar;
    TB_Ref_Stock: TToolButton;
    TB_Edit: TToolButton;
    TB_Del: TToolButton;
    TB_Execl: TToolButton;
    ToolButton19: TToolButton;
    RzPanel1: TRzPanel;
    RzSizePanel3: TRzSizePanel;
    MyTreeView_SList: TTreeView;
    MData_M3: TdxMemData;
    DS_Mdata_M3: TDataSource;
    Panel10: TPanel;
    TB_Submit: TToolButton;
    TB_Audit: TToolButton;
    Panel11: TPanel;
    Label26: TLabel;
    E_FBranchFileNo: TcxButtonEdit;
    TB_App: TToolButton;
    Panel1: TPanel;
    Bevel1: TBevel;
    SelCancelBtn: TcxButton;
    SelBtn: TcxButton;
    cxGrid_WBOM: TcxGrid;
    cxGV_WBOM: TcxGridDBTableView;
    Sel: TcxGridDBColumn;
    FCode: TcxGridDBColumn;
    th: TcxGridDBColumn;
    mc: TcxGridDBColumn;
    gg: TcxGridDBColumn;
    FModel: TcxGridDBColumn;
    FSumQry: TcxGridDBColumn;
    FSuttle: TcxGridDBColumn;
    ssth: TcxGridDBColumn;
    FQry: TcxGridDBColumn;
    FSumSuttle: TcxGridDBColumn;
    IsSel: TcxGridDBColumn;
    FK3Number: TcxGridDBColumn;
    FName: TcxGridDBColumn;
    UnitName: TcxGridDBColumn;
    FFullNumber: TcxGridDBColumn;
    ssFullNumber: TcxGridDBColumn;
    Remark: TcxGridDBColumn;
    js: TcxGridDBColumn;
    FWorkBOMID: TcxGridDBColumn;
    FPartsNumber_2: TcxGridDBColumn;
    FWorkParts_2: TcxGridDBColumn;
    cxGL_WBOM: TcxGridLevel;
    Panel_button: TPanel;
    Bevel_button: TBevel;
    OKBtn: TcxButton;
    CancelBtn: TcxButton;
    Act_Set_MaxID: TAction;
    FWorkPartsCode: TcxGridDBColumn;
    TB_Prin: TToolButton;
    Act_Number: TAction;
    TB_Stock: TToolButton;
    ToolButton7: TToolButton;
    Act_Status_M: TAction;
    RzSizePanel1: TRzSizePanel;
    TB_Print_First: TToolButton;
    TB_Print_ML: TToolButton;
    ToolButton10: TToolButton;
    TS_Sort: TRzTabSheet;
    DS_Mdata_DBOM_Sum: TDataSource;
    MData_DBOM_Sum: TdxMemData;
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
    StringField46: TStringField;
    StringField47: TStringField;
    StringField48: TStringField;
    StringField49: TStringField;
    StringField50: TStringField;
    StringField51: TStringField;
    StringField69: TStringField;
    cxGrid_DBOM_Sum: TcxGrid;
    cxGV_DBOM_Sum: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    FParts_1: TcxGridDBColumn;
    FNumber_1: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    FManageParts_1: TcxGridDBColumn;
    FWorkParts_1: TcxGridDBColumn;
    FPartsSort_1: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    y_FSuttle_1: TcxGridDBColumn;
    c_FSuttle_1: TcxGridDBColumn;
    FMaterialRate_1: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    y_FNumber_1: TcxGridDBColumn;
    y_FModel_1: TcxGridDBColumn;
    FPriceQry_1: TcxGridDBColumn;
    FUse_1: TcxGridDBColumn;
    FRation_1: TcxGridDBColumn;
    y_FRation_1: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridDBColumn15: TcxGridDBColumn;
    cxGridDBColumn16: TcxGridDBColumn;
    cxGL_DBOM_Sum: TcxGridLevel;
    E_FItemIDCopy: TcxTextEdit;
    E_FItemNoCopy: TcxTextEdit;
    Act_Stock_Copy: TAction;
    Label2: TLabel;
    E_FItemNumber_Copy: TcxButtonEdit;
    FDesignRemark_2: TcxGridDBColumn;
    Act_Parts: TAction;
    PM: TPopupMenu;
    N_Edit: TMenuItem;
    N_Filter: TMenuItem;
    N_Sort: TMenuItem;
    N_Group: TMenuItem;
    N_Set: TMenuItem;
    N_Out: TMenuItem;
    Act_Menu: TAction;
    Act_Menu_Set: TAction;
    TB_Weigh: TToolButton;
    cxGrid_SItem: TcxGrid;
    cxGV_SItem: TcxGridDBTableView;
    FBranchItemNumber_M3: TcxGridDBColumn;
    FPartsCode_M3: TcxGridDBColumn;
    FPartsName_M3: TcxGridDBColumn;
    FWorkPartsNum_M3: TcxGridDBColumn;
    FWorkParts_M3: TcxGridDBColumn;
    FStockStatusNotes_M: TcxGridDBColumn;
    FStockStatus_M3: TcxGridDBColumn;
    FStockWrite_M3: TcxGridDBColumn;
    FStockWriteDate_M3: TcxGridDBColumn;
    FStockSubmitDate_M3: TcxGridDBColumn;
    FStockAudit_M3: TcxGridDBColumn;
    FStockAuditDate_M3: TcxGridDBColumn;
    FFullNumber_M3: TcxGridDBColumn;
    FItemNumber_M3: TcxGridDBColumn;
    FBranchFileNo_M3: TcxGridDBColumn;
    FFileNo_M3: TcxGridDBColumn;
    FClientFullName_M3: TcxGridDBColumn;
    FItemModel_M3: TcxGridDBColumn;
    FFactureName_M3: TcxGridDBColumn;
    FStockNum_M3: TcxGridDBColumn;
    FStockItemID_M3: TcxGridDBColumn;
    FItemId_M3: TcxGridDBColumn;
    WorkFFullNumber: TcxGridDBColumn;
    FFactureID_M3: TcxGridDBColumn;
    cxGL_SItem: TcxGridLevel;
    cxGrid_SList: TcxGrid;
    cxGV_SList: TcxGridDBTableView;
    IsEdit: TcxGridDBColumn;
    FCode_3: TcxGridDBColumn;
    xh1: TcxGridDBColumn;
    xh2: TcxGridDBColumn;
    xh3: TcxGridDBColumn;
    Num_3: TcxGridDBColumn;
    th_3: TcxGridDBColumn;
    abc_3: TcxGridDBColumn;
    mc_3: TcxGridDBColumn;
    SelRemark_3: TcxGridDBColumn;
    gg_3: TcxGridDBColumn;
    mcgg_3: TcxGridDBColumn;
    Sel_3: TcxGridDBColumn;
    dw_3: TcxGridDBColumn;
    FSumQry_3: TcxGridDBColumn;
    FStockListRemark_3: TcxGridDBColumn;
    FCheckYesQry_3: TcxGridDBColumn;
    FPackQry_3: TcxGridDBColumn;
    FSuttle_3: TcxGridDBColumn;
    FSumSuttle_3: TcxGridDBColumn;
    FFullNumber_3: TcxGridDBColumn;
    ssFullNumber_3: TcxGridDBColumn;
    FBOMFullNumber_3: TcxGridDBColumn;
    FK3Number_3: TcxGridDBColumn;
    FName_3: TcxGridDBColumn;
    FModel_3: TcxGridDBColumn;
    UnitName_3: TcxGridDBColumn;
    FStockItemID_3: TcxGridDBColumn;
    FStockListID_3: TcxGridDBColumn;
    FPartsNumber_3: TcxGridDBColumn;
    FPartsCode_3: TcxGridDBColumn;
    FWorkParts_3: TcxGridDBColumn;
    FItemNumber_3: TcxGridDBColumn;
    FBranchFileNo_3: TcxGridDBColumn;
    FClientFullName_3: TcxGridDBColumn;
    FBranchItemNumber_3: TcxGridDBColumn;
    cxGL_SList: TcxGridLevel;
    TB_Submit_BOM: TToolButton;
    TB_Check_BOM: TToolButton;
    Act_Status_BOM: TAction;
    TB_Audit_BOM: TToolButton;
    TB_DELError: TToolButton;
    FStockPartsWet_M3: TcxGridDBColumn;
    FPlanParts_M3: TcxGridDBColumn;
    Label1: TLabel;
    E_FInputStartDate: TcxButtonEdit;
    TB_SUM: TToolButton;
    Panel12: TPanel;
    Label11: TLabel;
    E_Locate: TcxButtonEdit;
    Panel13: TPanel;
    Label3: TLabel;
    E_Locate_Stock: TcxButtonEdit;
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
    DS_Mdata_PTList: TDataSource;
    RzSP_PTitem: TRzSizePanel;
    cxGrid_PTList: TcxGrid;
    cxGV_PTList: TcxGridDBTableView;
    FDesignChangeNum_PTList: TcxGridDBColumn;
    FDesignChangeDate_PTList: TcxGridDBColumn;
    FPartsNumber_PTList: TcxGridDBColumn;
    FPartsName_PTList: TcxGridDBColumn;
    FDesignChangeContent_PTList: TcxGridDBColumn;
    FDesignChangeCause_PTList: TcxGridDBColumn;
    FItemListID_PTList: TcxGridDBColumn;
    FDesignChangeListID_PTList: TcxGridDBColumn;
    cxGV_PTListDBColumn4: TcxGridDBColumn;
    cxGV_PTListDBColumn5: TcxGridDBColumn;
    cxGL_PTList: TcxGridLevel;
    cxGrid_DBOM: TcxGrid;
    cxGV_DBOM: TcxGridDBTableView;
    FCode_1: TcxGridDBColumn;
    th_1: TcxGridDBColumn;
    mc_1: TcxGridDBColumn;
    gg_1: TcxGridDBColumn;
    FPartsSort: TcxGridDBColumn;
    FWorkPartsNum: TcxGridDBColumn;
    FWorkParts: TcxGridDBColumn;
    FManagePartsNum: TcxGridDBColumn;
    FMakeParts: TcxGridDBColumn;
    FPlanParts: TcxGridDBColumn;
    FManageParts: TcxGridDBColumn;
    FName_1: TcxGridDBColumn;
    FModel_1: TcxGridDBColumn;
    FQry_1: TcxGridDBColumn;
    FSuttle_1: TcxGridDBColumn;
    FSumQry_1: TcxGridDBColumn;
    FSumSuttle_1: TcxGridDBColumn;
    ssth_1: TcxGridDBColumn;
    y_FSuttle: TcxGridDBColumn;
    c_FSuttle: TcxGridDBColumn;
    FMaterialRate: TcxGridDBColumn;
    FNumber: TcxGridDBColumn;
    UnitName_1: TcxGridDBColumn;
    y_FNumber: TcxGridDBColumn;
    y_FModel: TcxGridDBColumn;
    FPriceQry: TcxGridDBColumn;
    FUse: TcxGridDBColumn;
    FRation: TcxGridDBColumn;
    y_FRation: TcxGridDBColumn;
    FFullNumber_1: TcxGridDBColumn;
    ssFullNumber_1: TcxGridDBColumn;
    FDesignRemark_1: TcxGridDBColumn;
    Remark_1: TcxGridDBColumn;
    FFullName_1: TcxGridDBColumn;
    FItemNumber: TcxGridDBColumn;
    FPartsCode: TcxGridDBColumn;
    FItemNoID: TcxGridDBColumn;
    cxGL_DBOM: TcxGridLevel;
    procedure FormResize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Set_Open2;
    procedure Set_Close2;
    procedure MyTreeView_DBOMExpanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure MyTreeView_WBOMExpanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure MyTreeView_DBOMChange(Sender: TObject; Node: TTreeNode);
    procedure MyTreeView_WBOMChange(Sender: TObject; Node: TTreeNode);
    procedure TB_Ref_DBOMClick(Sender: TObject);
    procedure TB_Edit1Click(Sender: TObject);
    procedure TB_SaveClick(Sender: TObject);
    procedure TB_StockBOMClick(Sender: TObject);
    procedure TB_Ref_SBOMClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TB_PartsSortClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure MData_DBOMAfterEdit(DataSet: TDataSet);
    procedure E_FBranchFileNo1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure TB_Del1Click(Sender: TObject);
    function DelRdStockBOM:bool;
    procedure TB_RecordRefClick(Sender: TObject);
    procedure ActProcessSortExecute(Sender: TObject);
    procedure MyTreeView_SListExpanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure MyTreeView_SListChange(Sender: TObject; Node: TTreeNode);
    procedure TB_Ref_StockClick(Sender: TObject);
    procedure TB_EditClick(Sender: TObject);
    procedure TB_DelClick(Sender: TObject);
    procedure TB_SubmitClick(Sender: TObject);
    procedure Act_StatusExecute(Sender: TObject);
    procedure TB_AuditClick(Sender: TObject);
    procedure cxGV_SItemFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure TB_AppClick(Sender: TObject);
    procedure SelBtnClick(Sender: TObject);
    procedure OKBtnClick(Sender: TObject);
    procedure CancelBtnClick(Sender: TObject);
    procedure Act_Set_MaxIDExecute(Sender: TObject);
    procedure xh1HeaderClick(Sender: TObject);
    procedure xh2HeaderClick(Sender: TObject);
    procedure xh3HeaderClick(Sender: TObject);
    procedure IsEditHeaderClick(Sender: TObject);
    procedure FCode_3HeaderClick(Sender: TObject);
    procedure abc_3PropertiesChange(Sender: TObject);
    procedure TB_PrinClick(Sender: TObject);
    procedure frReportBeginBand(Band: TfrBand);
    procedure FBranchItemNumber_M3PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure SelCancelBtnClick(Sender: TObject);
    procedure SelPropertiesChange(Sender: TObject);
    procedure Sel_3PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure Action_NumberExecute(Sender: TObject);
    procedure Num_3HeaderClick(Sender: TObject);
    procedure TB_StockClick(Sender: TObject);
    procedure SelRemark_3PropertiesCloseUp(Sender: TObject);
    procedure Act_WeigthExecute(Sender: TObject);
    procedure ToolButton7Click(Sender: TObject);
    procedure Act_Status_MExecute(Sender: TObject);
    procedure TB_Print_FirstClick(Sender: TObject);
    procedure TB_Print_MLClick(Sender: TObject);
    procedure ToolButton10Click(Sender: TObject);
    procedure FPartsSortPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FStockListRemark_3PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure E_FItemNumber_CopyPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure Act_Stock_CopyExecute(Sender: TObject);
    procedure FCodeHeaderClick(Sender: TObject);
    procedure SelHeaderClick(Sender: TObject);
    procedure thHeaderClick(Sender: TObject);
    procedure mcHeaderClick(Sender: TObject);
    procedure TB_ExeclClick(Sender: TObject);
    procedure Act_PartsExecute(Sender: TObject);
    procedure Act_MenuExecute(Sender: TObject);
    procedure Act_Menu_SetExecute(Sender: TObject);
    procedure cxGrid_DBOMContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure N_EditClick(Sender: TObject);
    procedure N_FilterClick(Sender: TObject);
    procedure N_SortClick(Sender: TObject);
    procedure N_GroupClick(Sender: TObject);
    procedure N_SetClick(Sender: TObject);
    procedure N_OutClick(Sender: TObject);
    procedure cxGrid_DBOM_SumContextPopup(Sender: TObject;
      MousePos: TPoint; var Handled: Boolean);
    procedure cxGrid_WBOMContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure cxGrid_SListContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure cxGrid_SItemContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure TB_WeighClick(Sender: TObject);
    procedure TB_Submit_BOMClick(Sender: TObject);
    procedure TB_Check_BOMClick(Sender: TObject);
    procedure Act_Status_BOMExecute(Sender: TObject);
    procedure TB_Audit_BOMClick(Sender: TObject);
    procedure TB_DELErrorClick(Sender: TObject);
    procedure TB_SUMClick(Sender: TObject);
    procedure E_LocatePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure E_Locate_StockPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxGrid_PTListContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);

  private
   { Private declarations }

    function DelRdWorkBOM:bool;
    procedure PartsSort;
    function AddMain:bool;
    function AddList:bool;
    function AddRd:bool;
    function EditRd:bool;
    function DelRd:bool;
    function EditAddRd:bool;




  public
    P_state,P_state2,P_stateApp,P_IsAudit,P_Isleaf:integer;
    P_th1,P_th2,P_th3,P_th4,P_th5,P_Sort,P_Parts,P_List,P_FItemNo:String;
    P_FFullNumber,P_ssFullNumber:String;
    P_i:boolean;
    GV,Gr,Gm,Mn:string;

    P_FProductID,P_MaxID:integer;
   { Public declarations }
  end;

var
  Frm_StockBOM: TFrm_StockBOM;


implementation

uses FRMDATA,  COMMON, FrmSelect, ProgBar, PROGRASS;




{$R *.dfm}


function TFrm_StockBOM.DelRd: bool;
var
 qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Delete from T_StockItem where FStockItemID=:FStockItemID';
    qry.Parameters.FindParam('FStockItemID').value:=mdata_M3['FStockItemID'];
    result:=qry.ExecSQL>=0;
  finally
    ;
  end;
  qry.Free;
end;

function TFrm_StockBOM.AddMain: bool;
var
 qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;


  Mdata_M3.Edit;
  Mdata_M3['FStockItemID']:=P_MaxID;
  Mdata_M3.post;

  try
     qry.SQL.Text:='Insert into T_StockItem(FStockItemID,FItemID,FPartsCode,FWorkPartsNum,FWorkParts,FAgentID,FFactureID,FStockStatus,FStockWriteID,FStockWriteDate) '
                   +'values(:FStockItemID,:FItemID,:FPartsCode,:FWorkPartsNum,:FWorkParts,:FAgentID,:FFactureID,:FStockStatus,:FStockWriteID,:FStockWriteDate)';
      with qry.Parameters do
      begin
        FindParam('FStockItemID').value:=P_MaxID;
        FindParam('FItemID').value:=mdata_M3['FItemID'];
        FindParam('FPartsCode').value:=mdata_M3['FPartsCode'];
        FindParam('FWorkPartsNum').value:=mdata_M3['FWorkPartsNum'];
        FindParam('FWorkParts').value:=mdata_M3['FWorkParts'];
        FindParam('FAgentID').Value:=UserFDepartmentID;
        If UserFDepartmentsort=1 then //事业部
           FindParam('FFactureID').value:=mdata_M3['FFactureID'];
        If UserFDepartmentsort=2 then   //子公司
           FindParam('FFactureID').value:=UserFDepartmentID;
        FindParam('FStockStatus').Value:=0;
        FindParam('FStockWriteID').Value:=UserNumID;
        FindParam('FStockWriteDate').Value:=date();
      end;
    result:=qry.ExecSQL>=1;
  finally
    ;
  end;
  mdata_M3.Edit;
  mdata_M3['FStockItemID']:=P_MaxID;
  mdata_M3.Post;
  qry.Free;
end;

function TFrm_StockBOM.AddList: bool;
var
  qry: TADOQuery;
  i:Integer;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  result:=False;

  If mData3.RecordCount<=0 then
  begin
    result:=True;
    Exit;
  end;

  try
     qry.SQL.Text:='Insert into T_StockList(FAgentID,FStockItemID,FCode,Num,xh1,xh2,xh3,xh,th,mc,gg,FSumQry,'
                  +'SelRemark,FSuttle,FSumSuttle,FStockListRemark,FFullNumber,ssFullNumber,FBOMFullNumber,FK3ItemID) '
                  +'values(:FAgentID,:FStockItemID,:FCode,:Num,:xh1,:xh2,:xh3,:xh,:th,:mc,:gg,:FSumQry,'
                  +':SelRemark,:FSuttle,:FSumSuttle,:FStockListRemark,:FFullNumber,:ssFullNumber,:FBOMFullNumber,:FK3ItemID)';
     mData3.First;
     while not mData3.eof do
     begin
       If  (mData3['th']<>'') and (mData3['FSumQry']<>0) and (mData3['FFullNumber']<>'')
         and (mData3['ssFullNumber']<>'') then
       begin
         If qry.Active then qry.Close;
         with qry.Parameters do
         begin
           FindParam('FAgentID').value:=UserFDepartmentID;
           FindParam('FStockItemID').value:=P_MaxID;
           FindParam('FCode').value:=mdata3['FCode'];
           FindParam('Num').value:=mdata3['Num'];
           FindParam('xh1').value:=mdata3['xh1'];
           FindParam('xh2').value:=mdata3['xh2'];
           FindParam('xh3').value:=mdata3['xh3'];
           FindParam('xh').value:=mdata3['xh'];
           FindParam('th').value:=mdata3['th'];
           FindParam('mc').value:=mdata3['mc'];
           FindParam('gg').value:=mdata3['gg'];
           FindParam('FSumQry').value:=mdata3['FSumQry'];
           //FindParam('FPartsNumber').value:=mdata3['FPartsNumber'];
           //FindParam('FWorkParts').value:=mdata3['FWorkParts'];
           FindParam('SelRemark').value:=mdata3['SelRemark'];
           FindParam('FSuttle').value:=mdata3['FSuttle'];
           FindParam('FSumSuttle').value:=mdata3['FSumSuttle'];
           FindParam('FStockListRemark').value:=mdata3['FStockListRemark'];
           FindParam('FFullNumber').value:=mdata3['FFullNumber'];
           FindParam('ssFullNumber').value:=mdata3['ssFullNumber'];
           FindParam('FBOMFullNumber').value:=mdata3['FBOMFullNumber'];
           FindParam('FK3ItemID').value:=mdata3['FK3ItemID'];
           //FindParam('FPartsCode').value:=mdata3['FPartsCode'];
         end;
         result:=qry.ExecSQL>=1;
         if not result then break;
       end;
       mData3.Next;
     end;
   finally
     qry.Free;
   end;
end;


function TFrm_StockBOM.AddRd: bool;
var
 qry:TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  result:=False;

  mData_M3.Edit;
  mData_M3.Post;

  mData3.Edit;
  mData3.Post;
  If mData3.RecordCount<=0 then
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


function TFrm_StockBOM.EditRd:bool;
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

function TFrm_StockBOM.EditAddRd:bool;
var
 qry:TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  result:=False;

  If mData3.RecordCount<=0 then
  begin
    result:=True;
    Exit;
  end;

  mData3.Edit;
  mData3.Post;

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


function TFrm_StockBOM.DelRdStockBOM: bool;
var
 qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Delete from T_StockBOM where FFullNumber like :FFullNumber';
    qry.Parameters.FindParam('FFullNumber').value:=ListItemFNumber1+'%';
    result:=qry.ExecSQL>=1;
  finally
    qry.Free;
  end;
end;


procedure TFrm_StockBOM.PartsSort;
var
  proc:TADOStoredProc;

begin
  proc:=TADOStoredProc.Create(self);
  proc.ConnectionString:=mdlData.ReadConnStr;
  proc.CommandTimeout:=500;

  try
    proc.ProcedureName:='P_BOM_PartsSort;1';
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=50;
      name := '@TableName';
      value:='T_DesignBOM_Structure';
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=50;
      name := '@ViewName';
      value:='V_DesignBOM_Structure';
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=50;
      name := '@FFullNumber';
      value:=ListItemFNumber;
    end;
    proc.ExecProc;
  finally
     ;
  end;
  Proc.Free;
end;



procedure TFrm_StockBOM.Set_Open2;
begin
  TB_App.Enabled:=False;
  TB_Edit.Enabled:=False;
  TB_Del.Enabled:=False;
  TB_Submit.Enabled:=False;
  MyTreeView_SList.Enabled:=False;

 // ToolBar4.Visible:=False;
  MyTreeView_SList.Enabled:=False;

  cxGV_WBOM.OptionsData.Editing:=True;
  cxGV_SList.OptionsData.Editing:=True;

  cxGV_SItem.OptionsData.Editing:=True;
  FBranchItemNumber_M3.Options.Editing:=True;
  
  IsEdit.Visible:=True;
  FCode_3.Visible:=True;
  xh1.Visible:=True;
  xh2.Visible:=True;
  xh3.Visible:=True;
  abc_3.Visible:=True;
  sel_3.Visible:=True;

  sel.Options.Editing:=True;
  sel_3.Options.Editing:=True;
  IsEdit.Options.Editing:=True;

  SelBtn.Visible:=True;
  SelCancelBtn.Visible:=True;
  OkBtn.Visible:=True;
  CancelBtn.Visible:=True;
  P_i:=True;

end;

procedure TFrm_StockBOM.Set_Close2;
begin
  TB_App.Enabled:=True;
  TB_Edit.Enabled:=True;
  TB_Del.Enabled:=True;
  TB_Submit.Enabled:=True;

 // ToolBar4.Visible:=True;

  IsEdit.Visible:=False;
  FCode_3.Visible:=False;
  xh1.Visible:=False;
  xh2.Visible:=False;
  xh3.Visible:=False;
  abc_3.Visible:=False;
  sel_3.Visible:=False;

  sel_3.Options.Editing:=False;

  TB_Ref_Stock.Enabled:=True;
  MyTreeView_WBOM.Enabled:=True;
  MyTreeView_SList.Enabled:=True;

  SelBtn.Visible:=False;
  SelCancelBtn.Visible:=False;
  OkBtn.Visible:=False;
  CancelBtn.Visible:=False;
  cxGV_WBOM.OptionsData.Editing:=False;
  cxGV_SList.OptionsData.Editing:=False;

  P_state:=2;
end;



function TFrm_StockBOM.DelRdWorkBOM: bool;
var
 qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  try
    qry.SQL.Text:='Delete from T_WorkBOM where FFullNumber like :FFullNumber';
    qry.Parameters.FindParam('FFullNumber').value:=ListItemFNumber2+'%';
    result:=qry.ExecSQL>=1;
  finally
    qry.Free;
  end;
end;




procedure TFrm_StockBOM.FormResize(Sender: TObject);
begin
  inherited;
  Self.Caption:=UserFDepartmentName+'入库清单BOM';
end;

procedure TFrm_StockBOM.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=cafree;
  Frm_StockBOM:=nil;
end;

procedure TFrm_StockBOM.MyTreeView_DBOMExpanding(Sender: TObject;
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


  If UserFDepartmentsort=1 then //事业部
  begin
    qry.SQL.Text:='Select FNumber, FParentNumber,FName,FItemNumber,FFullNumber,FProductID,'
                 +'Isleaf from VT_DesignBOM with(nolock) where FParentNumber= '''
                 +PTree(Node.Data).ID+''' and FDepartmentID='+IntToStr(UserFDepartmentID)+' order by FItemNumber';
  end;
  If UserFDepartmentsort=2 then   //子公司
  begin
    qry.SQL.Text:='Select FNumber,FParentNumber,FName,FFullNumber,'
                 +'Isleaf from VT_DesignBOM_Right_Dep with(nolock) where FParentNumber= '''
                 +PTree(Node.Data).ID+''' and FAgentID='+IntToStr(UserFDepartmentID)+' order by FNumber';
  end;

  If UserFDepartmentsort=3 then //公共平台
  begin
    qry.SQL.Text:='Select FNumber, FParentNumber,FName,FItemNumber,FFullNumber,FProductID,'
                 +'Isleaf from VT_DesignBOM with(nolock) where FParentNumber= '''
                 +PTree(Node.Data).ID+'''  order by FItemNumber';
  end;


  qry.open;

  PTree(Node.Data).Flag := cLoadFlag;                  // 设置已加载标志
  while not qry.Eof do
  begin
    New(P);
    P.ID := qry.FieldByName('FNumber').AsString;
    P.ParentID := qry.FieldByName('FParentNumber').AsString;
    P.FNumber:=qry.FieldByName('FFullNumber').AsString;
    P.FParentNumber:=qry.FieldByName('FParentNumber').AsString;
    P.Caption := qry.FieldByName('FName').AsString;
    P.Isleaf := qry.FieldByName('Isleaf').Value;
    P.Flag := cNoLoadFlag;                            // 新节点，未加载标志
    with MyTreeView_DBOM.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('Isleaf').value;
    end;
    qry.Next;
  end;


end;

procedure TFrm_StockBOM.MyTreeView_WBOMExpanding(Sender: TObject;
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
  qry.SQL.Text:='Select * from VT_StockBOM with(nolock) where FParentNumber= '''
               +PTree(Node.Data).ID+''' and FAgentID='+IntToStr(UserFDepartmentID);
  qry.open;

  PTree(Node.Data).Flag := cLoadFlag;                  // 设置已加载标志
  while not qry.Eof do
  begin
    New(P);
    P.ID := qry.FieldByName('FNumber').AsString;
    P.ParentID := qry.FieldByName('FParentNumber').AsString;
    P.FNumber:=qry.FieldByName('FFullNumber').AsString;
    P.Caption := qry.FieldByName('FName').AsString;
    P.Isleaf := qry.FieldByName('Isleaf').Value;
    P.Flag := cNoLoadFlag;                            // 新节点，未加载标志
    with MyTreeView_WBOM.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('Isleaf').value;
    end;
    qry.Next;
  end;
end;

procedure TFrm_StockBOM.MyTreeView_DBOMChange(Sender: TObject; Node: TTreeNode);
var
  qry:TADOquery;
  s1,s2:Ttime;
  a:string;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  If Node = nil then Exit;
    Mdata_DBOM.DisableControls;
  cxGV_DBOM.DataController.DataModeController.GridMode:=True;
  cxGV_DBOM.DataController.DataModeController.SmartRefresh:=True;

  with PTree(Node.Data)^ do
  begin
    ListItemFNumber:=trim(PTree(Node.Data).FNumber);
    P_th:=PTree(Node.Data).Caption;    //部件级别  001
    P_FProductID:=PTree(Node.Data).FProductID;
    P_Isleaf:=PTree(Node.Data).Isleaf;
    If PC_1.ActivePage=TS_Sort then
       Act_Parts.Execute;

    If PC_1.ActivePage=TS_BOM then
    begin
     Case PTree(Node.Data).Isleaf of
        1:
        begin
          ShowPrograss('正在提取数据'+P_th+'定额数据，请稍候……',self);
          s1:=now();
          If MyItemListFieldWhere(qry,Mdata_DBOM,'FCode,th,mc,gg,FQry,FSuttle,FSumSuttle,FItemNoID,FFullNumber ','V_DesignBOM_Structure','FFullNumber',ListItemFNumber,' and js<=2 ','FFullNumber') then
          //If MyItemList(qry,Mdata_DBOM,'V_DesignBOM_Structure','FFullNumber',ListItemFNumber,'FFullNumber') then
          begin
            cxGvColumn(cxGv_DBOM,Mdata_DBOM);
            mdata_DBOM.Last;

            If (Mdata_DBOM['FItemNoID']<>0) and (Mdata_DBOM['FItemNoID']<>Null) then
            begin
              If MyItemListID(qry,Mdata_PTList,'V_DesignChangeList','FItemID='+IntToStr(Mdata_DBOM['FItemNoID'] ),'FpartsCode',) then
              If Mdata_PTList.RecordCount>0 then
                 RzSP_PTitem.Visible:=True
              else
                 RzSP_PTitem.Visible:=False;
              end;
              cxGrid_DBOM.SetFocus;
          end;
          s2:=now();
          a:=FormatDateTime('hh:mm:ss',s2-s1);
          Messagedlg('提示信息：提取设计定额完成！所用时间：【'+a+'】',mtInformation,[mbok],0);
      end;
      end;
      Case PTree(Node.Data).Isleaf of
        2:
        begin
          ShowPrograss('正在提取数据'+P_th+'定额数据，请稍候……',self);
          s1:=now();
          If MyItemList(qry,Mdata_DBOM,'V_DesignBOM_Structure','FFullNumber',ListItemFNumber,'FFullNumber') then
          //If MyItemListFieldWhere(qry,Mdata,'FCode,th,mc,gg,FQry,FSumQry,FSuttle,FSumSuttle,FNumber,FName,FModel,UnitName,FFullNumber,ssFullNumber,FItemNumber,FPartsNumber,FItemListId,FDesignRemark ','V_DesignBOM_Structure','FFullNumber',ListItemFNumber,'',FFullNumber) then
          begin
            cxGvColumn(cxGv_DBOM,Mdata_DBOM);
            mdata_DBOM.First;
            If (Mdata_DBOM['FItemListId']<>0) and (Mdata_DBOM['FItemListId']<>Null) then
            begin
              If MyItemListID(qry,Mdata_PTList,'V_DesignChangeList','FItemListId='+IntToStr(Mdata_DBOM['FItemListId']),'',) then
              If Mdata_PTList.RecordCount>0 then
                 RzSP_PTitem.Visible:=True
              else
                 RzSP_PTitem.Visible:=False;
            end;
            //cxGrid.SetFocus;
          end;
          Act_Status_BOM.Execute;
           //分档案号
          try
            qry.SQL.Text:='select * from V_FileItem with(nolock) where FItemNumber=:FItemNumber order by FItemNumber ';
            qry.Parameters.FindParam('FItemNumber').value:=mdata_DBOM['FItemNumber'];
            qry.Open;
          finally
            ;
          end;
          If qry.RecordCount=1 then
          begin
            E_FBranchFileNo.Enabled:=False;
            If qry.FieldByName('FBranchFileNo').Value=null then
               E_FBranchFileNo.Text:=''
            else
               E_FBranchFileNo.Text:=qry.FieldByName('FBranchFileNo').Value;
            P_FItemNo:=qry.FieldByName('FItemNo').Value;
          end
          else
          begin
            E_FBranchFileNo.Enabled:=True;
            E_FBranchFileNo.Text:='';
          end;
          s2:=now();
          a:=FormatDateTime('hh:mm:ss',s2-s1);
          Messagedlg('提示信息：提取设计定额完成！所用时间：【'+a+'】',mtInformation,[mbok],0);
        end;
      end;
      try
        qry.SQL.Text:='Select Min(FInputStartDate) as FInputStartDate from V_ItemList with(nolock) where FFullNumber like :FFullNumber ';
        qry.Parameters.FindParam('FFullNumber').value:=ListItemFNumber+'%';
        qry.open;
      finally
        ;
      end;
     If (qry.RecordCount>0) and (qry.FieldByName('FInputStartDate').AsString<>'') then
      begin
        E_FInputStartDate.Text:=qry.FieldByName('FInputStartDate').AsString;
        stbMsg.Caption:='提示信息：设计定额【'+P_th+'】导入最早日期：'+'【'+qry.FieldByName('FInputStartDate').AsString+'】';
        stbBar.Refresh;
      end;
    end;
  end;


  mdata_DBOM.EnableControls;
  cxGV_DBOM.DataController.DataModeController.GridMode:=False;
  cxGV_DBOM.DataController.DataModeController.SmartRefresh:=False;
  If (E_FBranchFileNo.Text<>'') then
     TB_StockBOM.Enabled:=True
  else
     TB_StockBOM.Enabled:=False;



end;

procedure TFrm_StockBOM.MyTreeView_WBOMChange(Sender: TObject; Node: TTreeNode);
var
  qry:TADOquery;
  s1,s2:Ttime;
  a:string;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If Node = nil then Exit;
  with PTree(Node.Data)^ do
  begin
    ListItemFNumber1:=trim(PTree(Node.Data).FNumber);
    P_th1:=PTree(Node.Data).Caption;
    Mdata_WBOM.DisableControls;
    cxGV_WBOM.DataController.DataModeController.GridMode:=True;
    cxGV_WBOM.DataController.DataModeController.SmartRefresh:=True;

    If PTree(Node.Data).Isleaf>0 then
    begin
      DS_Mdata_WBOM.DataSet:=Mdata_WBOM;
      ShowPrograss('正在提取入库单BOM'+P_th1+'定额数据，请稍候……',self);
      s1:=now();
      If not MyItemListwhere(qry,Mdata_WBOM,'V_StockBOM','FFullNumber',ListItemFNumber1,' and FAgentID='+IntToStr(UserFDepartmentID),'FFullNumber',) then
      begin
        cxGvColumn(cxGv_WBOM,Mdata_WBOM);
        mdata_WBOM.First;
      end;
      s2:=now();
      a:=FormatDateTime('hh:mm:ss',s2-s1);
      Messagedlg('提示信息：提取入库单BOM完成！所用时间：【'+a+'】',mtInformation,[mbok],0);
    end;
  end;
  mdata_WBOM.EnableControls;
  cxGV_WBOM.DataController.DataModeController.GridMode:=False;
  cxGV_WBOM.DataController.DataModeController.SmartRefresh:=False;

//  If (E_FBranchFileNo.Text<>'') and (mdlData.CheckFrmRights(TFrm_MakeBOM.ClassName,'审核')=True) then

     
end;

procedure TFrm_StockBOM.TB_Ref_DBOMClick(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If UserFDepartmentsort=1 then //事业部
  begin
    If not TreeVeiwListUserID(qry,MyTreeView_DBOM,'VT_DesignBOM',UserFDepartmentID) then
      Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;
  If UserFDepartmentsort=2 then   //子公司
  begin
    If not TreeVeiwListWhere(qry,MyTreeView_DBOM,'VT_DesignBOM_Right_Dep',' and FAgentID='+IntToStr(UserFDepartmentID) ) then
       Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;
  If UserFDepartmentsort=3 then   //公共平台
  begin
    If not TreeVeiwListWhere(qry,MyTreeView_DBOM,'VT_DesignBOM',' ') then
    Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;

end;

procedure TFrm_StockBOM.TB_Edit1Click(Sender: TObject);
begin
  inherited;
  cxGV_DBOM.OptionsData.Editing:=True;
  FPartsSort.Options.Editing:=True;
  TB_Edit1.Enabled:=False;
end;

procedure TFrm_StockBOM.TB_SaveClick(Sender: TObject);
var
  IsEdit:bool;
  qry: TADOQuery;
  I_index:integer;
begin
  I_index:=mData_DBOM.RecNo ;
  Mdata_DBOM.Edit;
  Mdata_DBOM.Post;
  If ShowMsg('是否对已修改部件类别进行批量更新？','提示') then
  begin
    with mdata_DBOM do
    begin
      mData_DBOM.DisableControls;
      First;
      qry:=TADOQuery.Create(Self);
      qry.ConnectionString:=mdlData.ReadConnStr;
      try
        qry.SQL.Text:='Update T_DesignBOM_Structure set FPartsSort=:FPartsSort where FFullNumber=:FFullNumber';
        while not mdata_DBOM.EoF do
        begin
          IsEdit:=mData_DBOM.FieldByName('IsEdit').AsBoolean;
          If IsEdit then
          begin
            qry.Parameters[0].Value:=mData_DBOM['FPartsSort'];
            qry.Parameters[1].Value:=mData_DBOM['FFullNumber'];
            qry.ExecSQL;
          end;
          next;
        end;
      finally
        ;
      end;
    end;
    mData_DBOM.EnableControls;
  end;
  TB_RecordRef.Click;
  If (I_index<mData_DBOM.RecordCount) and (I_index<>-1) then
     mData_DBOM.RecNo :=I_index
  else
     mData_DBOM.Last;
 

  TB_Save.Visible:=False;
  TB_Edit1.Enabled:=True;


end;

procedure TFrm_StockBOM.TB_StockBOMClick(Sender: TObject);
var
  proc:TADOStoredProc;
  s1,s2:Ttime;
  a,p_FItemNo:string;
  P_Retinf:String;
  qry: TADOQuery;
begin
  proc:=TADOStoredProc.Create(self);
  proc.ConnectionString:=mdlData.ReadConnStr;
  proc.CommandTimeout:=500;

  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  try
    qry.SQL.Text:='select FItemNo from V_FileItem with(nolock) where FBranchFileNo=:FBranchFileNo ';
    qry.Parameters.FindParam('FBranchFileNo').value:=Trim(E_FBranchFileNo.Text);
    qry.Open;
  finally
    ;
  end;
  If qry.RecordCount=1 then
    p_FItemNo:=qry.fieldByname('FItemNo').Value
  else
  begin
    Messagedlg('档案号书写是否有误！',mtInformation,[mbok],0);
    Exit;
  end;

  try                                 
    qry.SQL.Text:='select * from V_StockBOM with(nolock) where FAgentID=:FAgentID and FFullNumber like :FFullNumber order by FFullNumber ';
    qry.Parameters.FindParam('FAgentID').value:=UserFDepartmentID;
    qry.Parameters.FindParam('FFullNumber').value:=p_FItemNo+'.'+mdata_DBOM['FPartsCode']+'%';
    qry.Open;
  finally
    ;
  end;
  If qry.RecordCount>0 then
  begin
    Messagedlg('入库BOM'+P_th+'已经导入，请不要重复导入！',mtInformation,[mbok],0);
    Exit;
  end;

  If ShowMsg('是否将图号【'+P_th+'】导入生产BOM？','提示') then
  begin
    s1:=now();
    try
      proc.ProcedureName:='P_Imp_StockBOM;1';
      with proc.Parameters.AddParameter do
      begin
        DataType := ftString;
        Direction := pdinput;
        size:=20;
        name := '@FFullNumber';
        value:=ListItemFNumber;
      end;

      with proc.Parameters.AddParameter do
      begin
        DataType := ftString;
        Direction := pdinput;
        size:=20;
        name := '@FBranchFileNo';
        value:=Trim(E_FBranchFileNo.Text);
      end;

      with proc.Parameters.AddParameter do
      begin
        DataType := ftInteger;
        Direction := pdinput;
        name := '@UserFAgentID';
        value:=UserFDepartmentID;
      end;
      with proc.Parameters.AddParameter do
      begin
        DataType := ftString;
        Direction := pdoutput;
        size:=255;
        name := '@Retinf';
        value:='';
      end;
      proc.Open;
      P_Retinf:=proc.Parameters.FindParam('@Retinf').Value;
      If  P_Retinf<>'' then
      begin
        s2:=now();
        a:=FormatDateTime('hh:mm:ss',s2-s1);
        Messagedlg('入库BOM已经成功生成！所用时间：【'+a+'】',mtInformation,[mbok],0);
        Messagedlg(P_Retinf,mtInformation,[mbok],0);
        mdata_DBOM.Close;
        mdata_DBOM.CopyFromDataSet(proc);
        Mdata_DBOM.Active:=True;
        cxGvColumn(cxGv_DBOM,mdata_DBOM);
        ActProcessSortExecute(Sender);
        Self.TB_Ref_SBOM.Click;
        PC_2.ActivePage:=TS_WorkBOM;
        Exit;
      end
      else
      begin
        mdata_DBOM.Close;
       // mdata.CopyFromDataSet(proc);
        //Mdata.Active:=True;
       // cxGvColumn(cxGv,mdata);
      end;
      finally
        ;
    end;
  end;

  proc.Free;


end;

procedure TFrm_StockBOM.TB_Ref_SBOMClick(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If not TreeVeiwListWhere(qry,MyTreeView_WBOM,'VT_StockBOM',' and FAgentID='+IntToStr(UserFDepartmentID) ) then
  begin
    Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;

end;

procedure TFrm_StockBOM.FormShow(Sender: TObject);
begin
  inherited;
  TB_Ref_DBOM.Click;
  TB_Ref_SBOM.Click;
  TB_Ref_Stock.Click;

end;

procedure TFrm_StockBOM.TB_PartsSortClick(Sender: TObject);
var
  qry:TADOquery;
  proc:TADOStoredProc;
  s1,s2:Ttime;
  a,b:string;
  I_index:Integer;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  proc:=TADOStoredProc.Create(self);
  proc.ConnectionString:=mdlData.ReadConnStr;
  proc.CommandTimeout:=500;
  If mData_DBOM.RecordCount<=0 then
     Exit;
  I_index:=mdata_DBOM.RecNo ;
  s1:=now();


  If ShowMsg('是否对【'+P_th+'】此图号进行部件类别自动划分?','提示') then
  begin
    try
      a:='【'+mdata_DBOM['FItemNumber']+'】'+'/【'+mdata_DBOM['FPartsNumber']+'】';
      ShowPrograss('正在对'+a+'设计BOM进行部件划分，请稍候……',self);

      Self.PartsSort;

      If not MyItemList(qry,Mdata_DBOM,'V_DesignBOM_Structure','FFullNumber',ListItemFNumber,'FFullNumber') then
      begin
        mdata_DBOM.Open;
      end;
      S2:=now();
      b:=FormatDateTime('hh:mm:ss',s2-s1);
      Messagedlg(''+a+''+'设计BOM部件划分完毕！所用时间：【'+b+'】',mtInformation,[mbok],0);
    finally
       ;
    end;
  end;

  If (I_index<mdata_DBOM.RecordCount) and (I_index<>-1) then
     mdata_DBOM.RecNo :=I_index
  else
     mdata_DBOM.Last;

end;

procedure TFrm_StockBOM.FormCreate(Sender: TObject);
begin
  inherited;
  TB_App.Visible:= mdlData.PermissionCheckRights(TFrm_StockBOM.ClassName,'新增');
  TB_StockBOM.Visible:= mdlData.PermissionCheckRights(TFrm_StockBOM.ClassName,'新增');
  TB_DELError.Visible:= mdlData.PermissionCheckRights(TFrm_StockBOM.ClassName,'删除');
  TB_PartsSort.Visible:= mdlData.PermissionCheckRights(TFrm_StockBOM.ClassName,'提交');
  TB_Edit1.Enabled:= mdlData.PermissionCheckRights(TFrm_StockBOM.ClassName,'新增');
  TB_Stock.Visible:= mdlData.PermissionCheckRights(TFrm_StockBOM.ClassName,'打印');
  TB_Print_ML.Visible:= mdlData.PermissionCheckRights(TFrm_StockBOM.ClassName,'打印');
  TB_Execl.Visible:= mdlData.PermissionCheckRights(TFrm_StockBOM.ClassName,'打印');
  TB_Stock.Visible:= mdlData.PermissionCheckRights(TFrm_StockBOM.ClassName,'打印');

  E_FItemNumber_Copy.Visible:= mdlData.PermissionCheckRights(TFrm_StockBOM.ClassName,'新增');
  P_state:=2;
end;

procedure TFrm_StockBOM.MData_DBOMAfterEdit(DataSet: TDataSet);
begin
  inherited;
  DataSet['IsEdit']:=True;
  TB_Save.Visible:=True;
end;

procedure TFrm_StockBOM.E_FBranchFileNo1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='select * from VT_FileItem with(nolock) where FDepartmentID=:FDepartmentID and FItemNumber=:FItemNumber order by FItemNumber ';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Parameters.FindParam('FItemNumber').value:=Trim(mdata_DBOM['FItemNumber']);
    qry.Open;
  finally
    ;
  end;
  selValue:=select('选择档案号','FNumber','FParentNumber','FNumber','FName',qry);
  If (Length(selValue)>0) then
  begin
    E_FBranchFileNo.Text:=qry.FieldByName('FBranchFileNo').Value;
  end;
   If (E_FBranchFileNo.Text<>'')  then
     TB_StockBOM.Enabled:=True
   else
    TB_StockBOM.Enabled:=False;


end;

procedure TFrm_StockBOM.TB_Del1Click(Sender: TObject);
var
  qry:TADOQuery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If  ListItemFNumber1='' then
  begin
    Application.MessageBox(PChar('请选择明细！'), '错误', MB_OK +MB_ICONSTOP);
    Exit;
  end;

  If application.MessageBox(Pchar('警告：是否删除图号为：【'+P_th1+'】的生产BOM信息？'+chr(13)+chr(13)
                                 +'删除数据操作将不可恢复，确定要删除吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
  If application.MessageBox(Pchar('再次警告：是否删除图号为：【'+P_th1+'】的生产BOM信息？'+chr(13)+chr(13)
                                 +'删除数据操作将不可恢复，确定要删除吗？'),'再次警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then

  mdlData.conn.BeginTrans;
  begin
    //单据删除
    If not DelRdStockBOM then
    begin
      application.MessageBox('删除单据失败！','系统提示',MB_ICONINFORMATION);
      mdlData.conn.RollbackTrans;
      Exit;
    end;
    mdlData.conn.CommitTrans;
  end;
  Self.TB_Ref_SBOM.Click;
  qry.Free;


end;

procedure TFrm_StockBOM.TB_RecordRefClick(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  //ShowPrograss('正在更新数据，请稍候……',self);
  Mdata_DBOM.DisableControls;
  cxGV_DBOM.DataController.DataModeController.GridMode:=True;
  cxGV_DBOM.DataController.DataModeController.SmartRefresh:=True;
  try
    qry.SQL.Text:='select * from V_DesignBOM_Structure with(nolock) where FFullNumber like :FFullNumber order by FFullNumber ';
    qry.Parameters.FindParam('FFullNumber').value:=ListItemFNumber+'%';
    qry.Open;
  finally
    ;
  end;
  mdata_DBOM.CopyFromDataSet(qry);
  mdata_DBOM.Open;
  cxGvColumn(cxGv_DBOM,Mdata_DBOM);
  mdata_DBOM.First;
  mdata_DBOM.EnableControls;
  cxGV_DBOM.DataController.DataModeController.GridMode:=False;
  cxGV_DBOM.DataController.DataModeController.SmartRefresh:=False;


end;

procedure TFrm_StockBOM.ActProcessSortExecute(Sender: TObject);
var
  proc:TADOStoredProc;
begin
  proc:=TADOStoredProc.Create(self);
  proc.ConnectionString:=mdlData.ReadConnStr;
  proc.CommandTimeout:=500;
  try
    proc.ProcedureName:='[P_MakeBOM_PartsSort];1';
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=50;
      name := '@TableName';
      value:='T_MakeBOM';
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=50;
      name := '@ViewName';
      value:='V_MakeBOM';
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=50;
      name := '@FFullNumber';
      value:=ListItemFNumber;
    end;
    proc.ExecProc;
  finally
     ;
  end;
  Proc.Free;


end;

procedure TFrm_StockBOM.MyTreeView_SListExpanding(Sender: TObject;
  Node: TTreeNode; var AllowExpansion: Boolean);
var
  P :PTree;
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.CommandTimeout:=1000;
  If (Node = nil) or
     (PTree(Node.Data).Flag <> cNoLoadFlag) or   // 1.加载标志
     (not Node.HasChildren) or                   // 2.未有子
     (Node.Count>0) then                         // 3.已有子节点
     Exit;
     
  If UserFDepartmentsort=1 then //事业部
  begin
    qry.SQL.Text:='Select * from VT_Stock with(nolock) where FParentNumber= '''
                 +PTree(Node.Data).ID+''' and FAgentID=:FAgentID order by FBranchItemNumber,FNumber';
    qry.Parameters.FindParam('FAgentID').value:=UserFDepartmentID;
  end;
  If UserFDepartmentsort=3 then //公共平台
  begin
    qry.SQL.Text:='Select * from VT_Stock with(nolock) where FParentNumber= '''
                 +PTree(Node.Data).ID+'''  order by FBranchItemNumber,FNumber';
  end;



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
    with MyTreeView_SList.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('Isleaf').value;
    end;
    qry.Next;
  end;


end;

procedure TFrm_StockBOM.MyTreeView_SListChange(Sender: TObject; Node: TTreeNode);
var
  qry:TADOquery;
  s1,s2:Ttime;
  a:string;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.CommandTimeout:=1000;

  If Node = nil then Exit;
  with PTree(Node.Data)^ do
  begin
    ListItemFNumber2:=trim(PTree(Node.Data).FNumber);
    P_th2:=PTree(Node.Data).Caption;
    P_Isleaf:=PTree(Node.Data).Isleaf;
  //  Mdata3.DisableControls;
    cxGV_SList.DataController.DataModeController.GridMode:=True;
    cxGV_SList.DataController.DataModeController.SmartRefresh:=True;

    If PTree(Node.Data).Isleaf>0 then
    begin
      ShowPrograss('正在提取《入库清单》'+P_th1+'定额数据，请稍候……',self);
      s1:=now();
      If UserFDepartmentsort=1 then //事业部
      begin
        If MyItemListwhere(qry,Mdata_M3,'V_StockItem','FFullNumber',ListItemFNumber2,' and FAgentID='+IntToStr(UserFDepartmentID),'FFullNumber') then
        If MyItemListwhere(qry,Mdata3,'V_StockList','FFullNumber',ListItemFNumber2,' and FAgentID='+IntToStr(UserFDepartmentID),'FFullNumber',) then
      end;
      If UserFDepartmentsort=3 then //公共平台
      begin
        If MyItemListwhere(qry,Mdata_M3,'V_StockItem','FFullNumber',ListItemFNumber2,' ','FFullNumber') then
        If MyItemListwhere(qry,Mdata3,'V_StockList','FFullNumber',ListItemFNumber2,' ','FFullNumber',) then
      end;

      s2:=now();
      a:=FormatDateTime('hh:mm:ss',s2-s1);

      Messagedlg('提示信息：提取《入库清单》完成！所用时间：【'+a+'】',mtInformation,[mbok],0);
    end
    else
      mdata3.Close;


    //If (mdata_M3.RecordCount>0) then
    If (PTree(Node.Data).Isleaf<3) and (mdata_M3.RecordCount>0) then
    begin
      TB_Prin.Visible:=mdlData.PermissionCheckRights(TFrm_StockBOM.ClassName,'打印');
      TB_Stock.Visible:=mdlData.PermissionCheckRights(TFrm_StockBOM.ClassName,'打印');
      TB_Execl.Visible:=mdlData.PermissionCheckRights(TFrm_StockBOM.ClassName,'导出');
    end
    else
    begin
      TB_Prin.Visible:=False;
      TB_Stock.Visible:=False;
      TB_Execl.Visible:=False;
    end;

    If (PTree(Node.Data).Isleaf=3) and (mdata_M3.RecordCount>0) then
      Act_Status.Execute  //权限设置
    else
    begin
      TB_Del.Visible:=False;
      TB_Edit.Visible:=False;
      TB_Submit.Visible:=False;
      TB_Audit.Visible:=False;
    end;
    If (PTree(Node.Data).Isleaf<3) and (mdata_M3.RecordCount>0) then
      Act_Status_M.Execute;  //权限设置多行

    If (PTree(Node.Data).Isleaf=1) and (mdata_M3.RecordCount>0) then
       P_List :='('+mdata_M3['FBranchItemNumber']+')('+mdata_M3['FClientshortName']+')';
    If (PTree(Node.Data).Isleaf=2) and (mdata_M3.RecordCount>0) then
       P_List :='('+mdata_M3['FBranchItemNumber']+')('+mdata_M3['FPartsCode']+')('+mdata_M3['FPartsName']+')';
    If (PTree(Node.Data).Isleaf=3) and (mdata_M3.RecordCount>0) then
       P_List :='('+mdata_M3['FBranchItemNumber']+')('+mdata_M3['FWorkPartsNum']+')('+mdata_M3['FWorkParts']+')';


    mdata3.EnableControls;
    cxGV_SList.DataController.DataModeController.GridMode:=False;
    cxGV_SList.DataController.DataModeController.SmartRefresh:=False;

 end;


end;

procedure TFrm_StockBOM.TB_Ref_StockClick(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If UserFDepartmentsort=1 then //事业部
  begin
    If not TreeVeiwListWhere(qry,MyTreeView_SList,'VT_Stock',' and FAgentID='+IntToStr(UserFDepartmentID) ) then
    begin
      Application.MessageBox(PChar('树型结构显示错误，请联系开发人员'), '错误', MB_OK +MB_ICONSTOP);
    end;
  end;
  If UserFDepartmentsort=3 then   //公共平台
  begin
    If not TreeVeiwListWhere(qry,MyTreeView_SList,'VT_Stock',' ') then
    Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;



 { If not TreeVeiwListWhere(qry,MyTreeView_SList,'VT_Stock',' and FAgentID='+IntToStr(UserFDepartmentID) ) then
  begin
    Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;
 }


end;

procedure TFrm_StockBOM.TB_EditClick(Sender: TObject);
begin
  inherited;
   P_state :=1;     //修改
   L_title.Caption:='入库清单信息修改';
   TS_WorkBOM.TabEnabled:=True;
   Self.Set_Open2;

end;

procedure TFrm_StockBOM.TB_DelClick(Sender: TObject);
var
  qry:TADOQuery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If  ListItemFNumber2='' then
  begin
    Application.MessageBox(PChar('请选择明细！'), '错误', MB_OK +MB_ICONSTOP);
    Exit;
  end;

  If application.MessageBox(Pchar('警告：是否删除图号为：【'+P_th2+'】的入库清单信息？'+chr(13)+chr(13)
                                 +'删除数据操作将不可恢复，确定要删除吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
  If application.MessageBox(Pchar('再次警告：是否删除图号为：【'+P_th2+'】的入库清单信息？'+chr(13)+chr(13)
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
  mdata_M3.Close;
  mdata3.Close;

  //Self.TB_Ref2.Click;
  qry.Free;


end;

procedure TFrm_StockBOM.TB_SubmitClick(Sender: TObject);
var
 qry:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  P_state:=3;
  If (TB_Submit.Caption='提交') then
  begin
    If application.MessageBox(Pchar('警告：是否提交入库清单为：【'+P_List+'】的单据？'+chr(13)+chr(13)
                                   +'提交后的数据不允许修改和删除，确定要提交本单据吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      mdata_M3.First;
      while not mdata_M3.eof do
      begin
        try
          qry.SQL.Text:='Update T_StockItem Set FStockStatus=1,FStockSubmitDate=:FStockSubmitDate  where FStockItemID=:FStockItemID';
          qry.Parameters.FindParam('FStockSubmitDate').value:= now();
          qry.Parameters.FindParam('FStockItemID').value:=mdata_M3['FStockItemID'];
          qry.ExecSQL;
        finally
          ;
        end;
        mdata_M3.Edit;
        mdata_M3['FStockStatus']:=1;
        mdata_M3['FStockStatusNotes']:='提交';
        mdata_M3['FStockSubmitDate']:=now();
        mdata_M3.Post;
        mdata_M3.Next;
      end;
      TB_Submit.Caption:='反提交';
      Act_Status.Execute;  //权限设置
      application.MessageBox('提交完毕！','系统提示',MB_ICONINFORMATION);
    end;
    P_state:=2;
    Exit;
  end;
  If (TB_Submit.Caption='反提交')  then
  begin
    If application.MessageBox(Pchar('警告：是否反提交入库清单为：【'+P_List+'】的单据？'+chr(13)+chr(13)
                                   +'反提交后的数据不允许修改和删除，确定要反提交本单据吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      mdata_M3.First;
      while not mdata_M3.eof do
      begin
        try
          qry.SQL.Text:='Update T_StockItem Set FStockStatus=0,FStockSubmitDate=:FStockSubmitDate where FStockItemID=:FStockItemID';
          qry.Parameters.FindParam('FStockSubmitDate').value:= Null;
          qry.Parameters.FindParam('FStockItemID').value:= mdata_M3['FStockItemID'];
          qry.ExecSQL;
        finally
          ;
        end;
        mdata_M3.Edit;
        mdata_M3['FStockStatus']:=0;
        mdata_M3['FStockStatusNotes']:='填单';
        mdata_M3['FStockSubmitDate']:=Null;
        mdata_M3.Post;
        mdata_M3.Next;
      end;
      TB_Submit.Caption:='提交';
      Act_Status.Execute;  //权限设置
      application.MessageBox('反提交完毕！','系统提示',MB_ICONINFORMATION);
    end;
    P_state:=2;
    Exit;
  end;

end;

procedure TFrm_StockBOM.Act_StatusExecute(Sender: TObject);
begin
  Case mdata_M3['FStockStatus'] of
    0:       //填单
    begin
      If (mdata_M3['FStockWriteID']=UserNumID) and (mdata_M3.RecordCount=1) then  //提交者为本人
      begin
        TB_Del.Visible:=mdlData.PermissionCheckRights(TFrm_StockBOM.ClassName,'删除');
        TB_Edit.Visible:=mdlData.PermissionCheckRights(TFrm_StockBOM.ClassName,'修改');
      end;
      If (mdata_M3['FStockWriteID']=UserNumID) then  //提交者为本人
         TB_Submit.Visible:=mdlData.PermissionCheckRights(TFrm_StockBOM.ClassName,'提交');
      TB_Submit.Caption:='提交';
      TB_Audit.Visible:=False;
    end;
  end;
  Case mdata_M3['FStockStatus'] of
    1:       //提交
    begin
      If mdata_M3['FStockWriteID']=UserNumID then  //提交者为本人
      begin
        TB_Submit.Visible:=mdlData.PermissionCheckRights(TFrm_StockBOM.ClassName,'提交');
        TB_Submit.Caption:='反提交';
      end
      else
      begin
        TB_Submit.Visible:=False;
      end;
      TB_Audit.Caption:='审核';
      TB_Audit.Visible:=mdlData.PermissionCheckRights(TFrm_StockBOM.ClassName,'审核');

      TB_Del.Visible:=False;
      TB_Edit.Visible:=False;
     end;
  end;
  Case mdata_M3['FStockStatus'] of
    3:           //审核
    begin
      TB_Audit.Visible:=mdlData.PermissionCheckRights(TFrm_StockBOM.ClassName,'审核');
      TB_Audit.Caption:='反审核';
      TB_Del.Visible:=False;
      TB_Edit.Visible:=False;
      TB_Submit.Visible:=False;
    end;
  end;



end;

procedure TFrm_StockBOM.TB_AuditClick(Sender: TObject);
var
 qry:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  P_state:=3;
  If (TB_Audit.Caption='审核') then
  begin
    If application.MessageBox(Pchar('警告：是否审核入库清单为：【'+P_List+'】的单据？'+chr(13)+chr(13)
                                   +'审核后的数据不允许修改和删除，确定要审核本单据吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      mdata_M3.First;
      while not mdata_M3.eof do
      begin
        try
          qry.SQL.Text:='Update T_StockItem Set FStockStatus=3,FStockAuditID=:FStockAuditID,FStockAuditDate=:FStockAuditDate  where FStockItemID=:FStockItemID';
          qry.Parameters.FindParam('FStockAuditID').value:= UserNumID;
          qry.Parameters.FindParam('FStockAuditDate').value:= now();
          qry.Parameters.FindParam('FStockItemID').value:=mdata_M3['FStockItemID'];
          qry.ExecSQL;
        finally
          ;
        end;
        mdata_M3.Edit;
        mdata_M3['FStockStatus']:=3;
        mdata_M3['FStockStatusNotes']:='审核';
        mdata_M3['FStockAuditDate']:=now();
        mdata_M3.Post;
        mdata_M3.Next;
      end;
      TB_Audit.Caption:='反审核';
      Act_Status.Execute;  //权限设置
      application.MessageBox('审核完毕！','系统提示',MB_ICONINFORMATION);
    end;
    P_state:=2;
    Exit;
  end;
  If (TB_Audit.Caption='反审核')  then
  begin
    If application.MessageBox(Pchar('警告：是否反审核入库清单为：【'+P_List+'】的单据？'+chr(13)+chr(13)
                                   +'反审核后的数据不允许修改和删除，确定要反审核本单据吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      mdata_M3.First;
      while not mdata_M3.eof do
      begin
        try
          qry.SQL.Text:='Update T_StockItem Set FStockStatus=1,FStockAuditID=0,FStockAuditDate=:FStockAuditDate where FStockItemID=:FStockItemID';
          qry.Parameters.FindParam('FStockAuditDate').value:= Null;
          qry.Parameters.FindParam('FStockItemID').value:= mdata_M3['FStockItemID'];
          qry.ExecSQL;
        finally
          ;
        end;
        mdata_M3.Edit;
        mdata_M3['FStockStatus']:=1;
        mdata_M3['FStockStatusNotes']:='提交';
        mdata_M3['FStockAuditDate']:=Null;
        mdata_M3.Post;
        mdata_M3.Next;
      end;
      TB_Audit.Caption:='审核';
      Act_Status.Execute;  //权限设置
      application.MessageBox('反审核完毕！','系统提示',MB_ICONINFORMATION);
    end;
    P_state:=2;

    Exit;
  end;

//  Act_Ref_Date.Execute;


end;

procedure TFrm_StockBOM.cxGV_SItemFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
var qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  if P_state =2 then  //不在新增、修改状态
  begin
    If (mData_M3['FStockItemID']<>0) and (mData_M3['FStockItemID']<>null) then
    begin
      If MyItemListID(qry,Mdata3,'V_StockList',' FStockItemID='+IntToStr(Mdata_M3['FStockItemID']),'FFullNumber',) then
      If mdata_M3.RecordCount>0 then
      begin
        TB_Prin.Visible:=False;
        TB_Stock.Visible:=False;
        TB_Execl.Visible:=False;
      end;
      P_List :='('+mdata_M3['FWorkPartsNum']+')('+mdata_M3['FWorkParts']+')';
      Act_Status.Execute  //权限设置
    end;
  end;
end;

procedure TFrm_StockBOM.TB_AppClick(Sender: TObject);
var
 i:Integer;
 qry:TADOquery;
begin
   qry:=TADOQuery.Create(self);
   qry.ConnectionString:=mdlData.ReadConnStr;
   P_state :=0;     //新增
     P_IsAudit:=0;
   L_title.Caption:='入库清单信息新增';
   TS_WorkBOM.TabEnabled:=True;

   Self.Set_Open2;
   //Self.Set_Open3;
   mdata3.Close;
   mdata3.Open;
   mdata3.Edit;

   try
     qry.SQL.Text:='Select *,FFullNumber  as WorkFFullNumber from V_StockList with(nolock) where FStockItemID=:FStockItemID';
     qry.Parameters.FindParam('FStockItemID').value:= 0;
     qry.Open;
   finally
     ;
   end;

   mData_M3.CopyFromDataSet(qry);
   mData_M3.Open;
   mData_M3.Edit;
   mData_M3.Append;
   mData3.CopyFromDataSet(qry);
   mData3.Open;
   mData3.Edit;
   mData3.Append;

   mData_M3.Open;
   mData_M3.Edit;
   Mdata_M3['FStockItemID']:=0;
   Mdata_M3['FStockStatus']:=0;
   Mdata_M3['FStockStatusNotes']:='填单';
   Mdata_M3['FStockWrite']:=UserNum;
   Mdata_M3['FStockWriteDate']:=date();
   mData_M3.Post;

end;

procedure TFrm_StockBOM.SelBtnClick(Sender: TObject);
Var
  qry: TADOQuery;
  proc:TADOStoredProc;
  i:Integer;
  b:string;

begin
  inherited;
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
   proc:=TADOStoredProc.Create(self);
  proc.ConnectionString:=mdlData.ReadConnStr;
  proc.CommandTimeout:=500;

  try
    proc.ProcedureName:='P_Stock_Sel;1';
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=20;
      name := '@ListItemFNumber';
      value:=ListItemFNumber1;
    end;
     with proc.Parameters.AddParameter do
      begin
        DataType := ftInteger;
        Direction := pdinput;
        name := '@FAgentID';
        value:=UserFDepartmentID;
      end;
     proc.Open;
  finally
    ;
  end;
  mdata_WBOM.Close;
  mdata_WBOM.CopyFromDataSet(proc);
  mdata_WBOM.Open;
  mData_WBOM.First;
  mData3.Open;
  mData3.Edit;

  i:=mdata3.RecordCount;
  while not mData_WBOM.eof do
  begin
    //If mdata2['Sel']=True then
    begin
      mData3.Append;
      mdata3['Num']:=mdata_WBOM['Num'];
      If mdata3['Num']='★★' then
      begin
        mdata3['xh1']:=0;
        mdata3['xh2']:=0;
        mdata3['xh3']:=0;
      end
      else
      begin
        mdata3['xh1']:=i;
        mdata3['xh2']:=0;
        mdata3['xh3']:=0;
      end;
      mdata3['IsEdit']:=1;
      mdata3['FCode']:=mdata_WBOM['FCode'];
      mdata3['xh1']:=i;
      mdata3['xh2']:=0;
      mdata3['xh3']:=0;
      mdata3['xh']:=0;
      mdata3['th']:=mdata_WBOM['th'];
      mdata3['mc']:=mdata_WBOM['mc'];
      mdata3['gg']:=mdata_WBOM['gg'];
      mdata3['FSumQry']:=mdata_WBOM['FSumQry'];
      mdata3['FPartsNumber']:=mdata_WBOM['FPartsNumber'];
      mdata3['FWorkParts']:=mdata_WBOM['FWorkParts'];
      mdata3['dw']:='件';
      mdata3['FSuttle']:=mdata_WBOM['FSuttle'];
      mdata3['FSumSuttle']:=mdata_WBOM['FSumSuttle'];
      mdata3['FWorkPartsNum']:=mdata_WBOM['FFullNumber'];
      mdata3['FBOMFullNumber']:=mdata_WBOM['FFullNumber'];
      mdata3['FFullNumber']:=mdata_WBOM['FFullNumber'];
      mdata3['ssFullNumber']:=mdata_WBOM['ssFullNumber'];

      mdata3['FPartsCode']:=mdata_WBOM['FPartsCode'];
      mdata3['FName']:=mdata_WBOM['FName'];
      mdata3['FModel']:=mdata_WBOM['FModel'];
     // mdata3['FStockListRemark']:=mdata_WBOM['FDesignRemark'];

      mData3.Post;
    end;
    mData_WBOM.Next;
    i:=i+1;
  end;
  mdata_M3.Edit;
  mdata_M3['FItemID']:=mdata_WBOM['FItemID'];
  mdata_M3['FPartsCode']:=mdata_WBOM['FPartsCode'];
  mdata_M3['FPartsName']:=mdata_WBOM['FPartsName'];
  mdata_M3['FWorkPartsNum']:=mdata_WBOM['FWorkPartsNum'];
  mdata_M3['FFullNumber']:=mdata_WBOM['FWorkPartsCode'];
  mdata_M3['WorkFFullNumber']:=mdata_WBOM['FWorkPartsCode'];
  mdata_M3['FWorkParts']:=mdata_WBOM['FWorkParts'];
  mdata_M3.Post;


  //删除选择标记
  try
    qry.SQL.Text:='Update T_StockBOM set Sel=0 where  FFullNumber like :FFullNumber';
    qry.Parameters.FindParam('FFullNumber').value:= ListItemFNumber1+'%';
    qry.ExecSQL;
  finally
    ;
  end;

  If not MyItemListwhere(qry,Mdata_WBOM,'V_StockBOM','FFullNumber',ListItemFNumber1,' and FAgentID='+IntToStr(UserFDepartmentID),'FFullNumber',) then
   begin
     mdata_WBOM.Open;
     cxGvColumn(cxGv_WBOM,Mdata_WBOM);
  end;
  P_IsAudit:=0;
  PC_2.ActivePage:=TS_StockIn;

  MyTreeView_WBOM.Enabled:=False;
 // TB_Edit.Enabled:=False;
 // TB_Del.Enabled:=False;
 // TB_Ref2.Enabled:=False;
 // Self.Set_Open3;


end;

procedure TFrm_StockBOM.OKBtnClick(Sender: TObject);
var qry: TADOQuery;
    P_FBalanceNum:String;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  Act_Number.Execute;  //代码编写

  mData_M3.open;
  mData_M3.Edit;
  mData_M3.Post;

  mData3.open;
  mData3.Edit;
  mData3.Post;
  //是否重复
  If P_state=0 then
  begin
    try
      qry.SQL.Text:='Select * from V_StockItem with(nolock) where FAgentID=:FAgentID and FItemId=:FItemId '
                   +'and FPartsCode=:FPartsCode and FWorkParts=:FWorkParts ';
      qry.Parameters.FindParam('FAgentID').value:= UserFDepartmentID;
      qry.Parameters.FindParam('FItemId').value:= mdata_M3['FItemId'];
      qry.Parameters.FindParam('FPartsCode').value:=mdata_M3['FPartsCode'];
      qry.Parameters.FindParam('FWorkParts').value:=mdata_M3['FWorkParts'];
      qry.OPen;
    finally
     ;
    end;
    If qry.RecordCount>0 then
    begin
      application.MessageBox('此部件入库清单已存在，请不要重复增加！','系统提示',MB_ICONINFORMATION);
      Exit;
      CancelBtn.Click;
    end;
  end;
  Act_Set_MaxID.Execute;    //取ID

  If P_state=0 then
  begin
    If application.MessageBox('是否要保存添加的数据？','提示',MB_ICONINFORMATION+MB_YESNO)<>6 then
       Exit;
    If AddRd then //增加数据
    begin
      If application.MessageBox('录入数据已保存,还要继续录入吗？','提示',MB_ICONINFORMATION+MB_YESNO)=6 then
      begin
        Act_Weigth.Execute;  //重量计算
        mdata_DBOM.Close;
        TB_App.Click ;
      end
      else
      begin
        inherited;
        CancelBtn.Click;
      end;
    end;
    Act_Weigth.Execute;  //重量计算
  end;

  If P_state=1 then //修改数据
  begin
    If application.MessageBox('是否要保存所作修改？','提示',MB_ICONINFORMATION+MB_YESNO)<>6 then
       Exit;
    If EditRd then   //修改数据
    begin
      application.MessageBox('修改记录已保存','系统提示',MB_ICONINFORMATION);
      inherited;
      CancelBtn.Click;
    end
    else
      application.MessageBox('修改记录保存失败！','系统提示',MB_ICONWARNING);
    Act_Weigth.Execute;  //重量计算
  end;
  MyTreeView_SList.Enabled:=True;
  cxGrid_SItem.Enabled:=True;

  mdata3.First;
  qry.Free;
    

end;

procedure TFrm_StockBOM.CancelBtnClick(Sender: TObject);
begin
  inherited;
  Self.Set_Close2;
end;

procedure TFrm_StockBOM.Act_Set_MaxIDExecute(Sender: TObject);
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
      value:='T_StockItem';
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

procedure TFrm_StockBOM.xh1HeaderClick(Sender: TObject);
var
  i,I_index:Integer;
begin
  If mData3.RecordCount<=0 then
    Exit;

  I_index:=mdata3.RecNo ;
  i:=1;
  mdata3.First;
  while not mData3.eof do
  begin
    If mdata3['IsEdit']=True then
    begin
      mData3.Edit;
      mdata3['xh1']:=i;
      mdata3['xh2']:=0;
      mdata3['xh3']:=0;
      mData3.Post;
      i:=i+1;
    end;
    mData3.Next;
  end;
  If (I_index<mdata3.RecordCount) and (I_index<>-1) then
     mdata3.RecNo :=I_index
  else
     mdata3.Last;

end;

procedure TFrm_StockBOM.xh2HeaderClick(Sender: TObject);
var
  i,P_xh1:Integer;
begin
  If mData3.RecordCount<=0 then
    Exit;
  mdata3.SortedField:='FBOMFullNumber';
  mdata3.First;
   i:=1;
  while not mData3.eof do
  begin
    If mdata3['IsEdit']=True then
    begin
      If mdata3['SelRemark']='(按以下入库)' then
      begin
         mData3.Edit;
         P_xh1:=mdata3['xh1'];
         mdata3['xh2']:=0;
         mdata3['xh3']:=0;
         mdata3['IsEdit']:=False;
         mData3.Post;
         mData3.Next;
         i:=1;
      end;
      mData3.Edit;
      If P_xh1>0 then
         mdata3['xh1']:=P_xh1;
      mdata3['xh2']:=i;
      mdata3['xh3']:=0;
      mData3.Post;
      i:=i+1;
    end;
    mData3.Next;
  end;
end;

procedure TFrm_StockBOM.xh3HeaderClick(Sender: TObject);
var
  i,P_xh1,P_xh2:Integer;
begin
  If mData3.RecordCount<=0 then
    Exit;
  mdata3.SortedField:='FBOMFullNumber';
  mdata3.First;
   i:=1;
  while not mData3.eof do
  begin
    If mdata3['IsEdit']=True then
    begin
      If mdata3['SelRemark']='(按以下入库)' then
      begin
         mData3.Edit;
         P_xh1:=mdata3['xh1'];
         P_xh2:=mdata3['xh2'];
         mdata3['xh3']:=0;
         mdata3['IsEdit']:=False;
         mData3.Post;
         mData3.Next;
         i:=1;
      end;
      mData3.Edit;
      If P_xh1>0 then
         mdata3['xh1']:=P_xh1;
      If P_xh2>0 then
         mdata3['xh2']:=P_xh2;
      mdata3['xh3']:=i;
      mData3.Post;
      i:=i+1;
    end;
    mData3.Next;
  end;
end;

procedure TFrm_StockBOM.IsEditHeaderClick(Sender: TObject);
var
  i:Integer;
begin
  If mData3.RecordCount<=0 then
    Exit;
  i:=1;
  mdata3.First;
  while not mData3.eof do
  begin
    mData3.Edit;
    mdata3['IsEdit']:=0;
    mData3.Post;
    i:=i+1;
    mData3.Next;
  end;
end;

procedure TFrm_StockBOM.FCode_3HeaderClick(Sender: TObject);
var
  i,I_index:Integer;
  P_IsEdit:String;
begin
  If mData3.RecordCount<=0 then
    Exit;
  I_index:=mdata3.RecNo ;
  P_IsEdit:=mdata3['FCode'];
  i:=1;
  mdata3.First;
  while not mData3.eof do
  begin
    If mdata3['FCode']=P_IsEdit then
    begin
      mData3.Edit;
      mData3['IsEdit']:=True;
      mData3.Post;
      i:=i+1;
    end;
    mData3.Next;
  end;
  If (I_index<mdata3.RecordCount) and (I_index<>-1) then
     mdata3.RecNo :=I_index
  else
     mdata3.Last;
end;

procedure TFrm_StockBOM.abc_3PropertiesChange(Sender: TObject);
begin
  inherited;
  mdata3.Edit;
  mdata3.Post;

  mdata3.Edit;
  If (pos('(A)',mdata3['th'])<>0) or ((pos('(B)',mdata3['th'])<>0)) or (pos('(C)',mdata3['th'])<>0) or
     (pos('(D)',mdata3['th'])<>0) or ((pos('(E)',mdata3['th'])<>0)) or (pos('(F)',mdata3['th'])<>0) or
     (pos('(G)',mdata3['th'])<>0) or ((pos('(H)',mdata3['th'])<>0)) or (pos('(I)',mdata3['th'])<>0) or
     (pos('(J)',mdata3['th'])<>0) or ((pos('(K)',mdata3['th'])<>0)) or (pos('(L)',mdata3['th'])<>0) 
     then
    mdata3['th']:=copy(mdata3['th'],1,pos('(',mdata3['th'])-1)+mdata3['abc']
  else
    mdata3['th']:=mdata3['th']+ mdata3['abc'];
  mdata3.Post;

end;

procedure TFrm_StockBOM.TB_PrinClick(Sender: TObject);
begin
  //Act_Weigth.Execute;  //重量计算

  If mdata3.RecordCount>0 then
  begin
    mdata3.SortedField:='FFullNumber';
    FrReport.LoadFromFile(ExtractFileDir(Application.ExeName)+'\Report_DesignBOM_Stock.frf');
    FrReport.ShowReport;
  end
  else
    Application.MessageBox(PChar('没有需要打印的数据！'), '错误', MB_OK +MB_ICONSTOP);

  mdata3.SortedField:='';

end;

procedure TFrm_StockBOM.frReportBeginBand(Band: TfrBand);
begin
  inherited;
   if Band.Name='dtFooter' then
  begin
    If ((mdata3.RecordCount+1) mod 25)>0 then
      frReport.Dictionary.Variables['n']:=25-((mdata3.RecordCount+1) mod 25)
    else
      frReport.Dictionary.Variables['n']:=0;
  end;

end;

procedure TFrm_StockBOM.FBranchItemNumber_M3PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
   qry:=TADOQuery.Create(Self);
   qry.ConnectionString:=mdlData.ReadConnStr;
   If (P_state=0) and (mdata3.RecordCount=0) then     //新增
   begin
     try
      { qry.SQL.Text:='select * from VT_Stock_StockBOM with(nolock) '
                    + ' where ConVert(Varchar(10),FItemID) +FPartsCode+FWorkParts  '
                    + ' not in (select ConVert(Varchar(10),0FItemID)+FPartsCode+FWorkParts from T_StockItem with(nolock) where FAgentID=:FAgentID1) '
                    +' and FAgentID=:FAgentID2 order by FNumber'; }
       qry.SQL.Text:='select * from VT_StockBOM_Sel with(nolock) where FAgentID=:FAgentID1 order by FNumber ';
       qry.Parameters.FindParam('FAgentID1').value:= UserFDepartmentID;
      // qry.Parameters.FindParam('FAgentID2').value:= UserFDepartmentID;
       qry.Open;
     finally
       ;
     end;
     selValue:=select('请项目名称','FNumber','FParentNumber','FNumber','FName',qry);
     If (Length(selValue)>0) and (qry.FieldByName('Isleaf').Value<>0) then
     begin
       mdata_M3.Edit;
       mdata_M3['FBranchItemNumber']:=qry.FieldByName('FBranchItemNumber').Value;
       mdata_M3['FPartsCode']:=qry.FieldByName('FPartsCode').Value;
       mdata_M3['FWorkPartsNum']:=qry.FieldByName('FWorkPartsNum').Value;
       mdata_M3['FWorkParts']:=qry.FieldByName('FWorkParts').Value;
       mdata_M3['WorkFFullNumber']:=qry.FieldByName('FFullNumber').Value;
       mdata_M3['FFullNumber']:=qry.FieldByName('FFullNumber').Value;
       ListItemFNumber1:=Trim(qry.FieldByName('FFullNumber').Value);
       mdata_M3.Post;
     end
     else
     begin
       application.MessageBox('请选择明细！','系统提示',MB_ICONINFORMATION);
       Exit;
     end;
   end;
   If P_state=1 then     //修改
      ListItemFNumber1:=mdata_M3['FFullNumber'];

   If not MyItemListwhere(qry,Mdata_WBOM,'V_StockBOM','FFullNumber',ListItemFNumber1,' and FAgentID='+IntToStr(UserFDepartmentID),'FFullNumber',) then
   begin
      cxGvColumn(cxGv_WBOM,Mdata_WBOM);
      mdata_WBOM.First;
    end;


   TS_WorkBOM.TabEnabled:=True;
   PC_2.ActivePage:=TS_WorkBOM;
   SelBtn.Visible:=True;
   SelCancelBtn.Visible:=True;
   TB_Ref_Stock.Click;
   MyTreeView_WBOM.Enabled:=False;

   If P_state=1 then     //修改
      MyTreeView_WBOM.Enabled:=True;


end;

procedure TFrm_StockBOM.SelCancelBtnClick(Sender: TObject);
begin
  inherited;
  PC_2.ActivePage:=TS_StockIn;
end;

procedure TFrm_StockBOM.SelPropertiesChange(Sender: TObject);
Var
  qry: TADOQuery;
  i:Integer;
begin
  inherited;
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  mdata_WBOM.Edit;
  mdata_WBOM.Post;
  If mdata_WBOM['Sel']=True then
  begin
    try
      qry.SQL.Text:='Update T_StockBOM set IsSel=1,Sel=1 where FStockBOMID=:FStockBOMID';
      qry.Parameters.FindParam('FStockBOMID').Value:=mdata_WBOM['FStockBOMID'];
      qry.ExecSQL;
      mdata_WBOM.Edit;
      mdata_WBOM['IsSel']:=True;
      mdata_WBOM.Post;
    finally
       ;
    end;
  end
  else
  begin
    mdata_WBOM.Edit;
    mdata_WBOM['IsSel']:=False;
    mdata_WBOM['Sel']:=False;
    mdata_WBOM.Post;
    try
      qry.SQL.Text:='Update T_StockBOM set IsSel=0,Sel=0 where FStockBOMID=:FStockBOMID';
      qry.Parameters.FindParam('FStockBOMID').Value:=mdata_WBOM['FStockBOMID'];
      qry.ExecSQL;
    finally
       ;
    end;
  end;

end;

procedure TFrm_StockBOM.Sel_3PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
  var p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11:String;
      s1,s2,s3,s4,s5,s6:Integer;
      n1,n2,n3,n4,n5:real;
begin
  inherited;
  mdata3.Edit;
  mdata3.Post;
  p1:= mdata3['FCode'];
  p2:= mdata3['th'];
  p3:= mdata3['mc'];
  p4:= mdata3['gg'];
  p5:= mdata3['FFullNumber'];
  p6:= mdata3['ssFullNumber'];
  p7:= mdata3['FBOMFullNumber'];
  p8:= mdata3['NUm'];

  s1:= mdata3['xh'];
  s2:= mdata3['xh1'];
  s3:= mdata3['xh2'];
  s4:= mdata3['xh3'];
  n1:= mdata3['FSumQry'];
  n2:= mdata3['FSuttle'];
  n3:= mdata3['FSumSuttle'];

  mdata3.Edit;
  mdata3.Next;
  mdata3.Insert;

  mdata3['FCode']:=p1;
  mdata3['th']:=p2+'(A)';
  mdata3['mc']:=p3;
  mdata3['gg']:=p4;
  mdata3['FFullNumber']:=p5;
  mdata3['ssFullNumber']:=p6;
  mdata3['FBOMFullNumber']:=p7;
  mdata3['NUm']:=p8;


  mdata3['xh']:=s1;
  mdata3['xh1']:=s2;
  mdata3['xh2']:=s3;
  mdata3['xh3']:=s4;
  mdata3['FSumQry']:=n1;
  mdata3['FSuttle']:=n2;
  mdata3['FSumSuttle']:=n3;

  mdata3.Post;

end;

procedure TFrm_StockBOM.Action_NumberExecute(Sender: TObject);
 var
   i1,i2,i3:Integer;
begin
  If mData3.RecordCount<=0 then
    Exit;
  mdata_M3.Edit;
  mdata_M3.Post;
  mdata3.SortedField:='xh1,xh2,xh3';
  mdata3.First;
  while not mData3.eof do
  begin
    If  mdata3['FCode']='★★' then
    begin
      mdata3.Edit;
      mdata3['xh1']:=0;
      mdata3['xh2']:=0;
      mdata3['xh3']:=0;
      mdata3.Post;
    end;

    i1:=mdata3['xh1'];
    i2:=mdata3['xh2'];
    i3:=mdata3['xh3'];
    If (mdata3['xh1']=0) and (mdata3['xh2']=0) and (mdata3['xh3']=0) then
    begin
      mData3.Edit;
      mdata3['Num']:='★★';
      mData3.Post;
    end;

    If (mdata3['xh1']<>0) and (mdata3['xh2']=0) and (mdata3['xh3']=0) then
    begin
      mData3.Edit;
      mdata3['Num']:=IntToStr(mdata3['xh1']);
      mdata3['FFullNumber']:=mdata_M3['WorkFFullNumber']+'.'+Format('%.3d',[i1]);
      mdata3['ssFullNumber']:=mdata_M3['WorkFFullNumber'];
      mData3.Post;
    end;
    If (mdata3['xh1']<>0) and (mdata3['xh2']<>0) and (mdata3['xh3']=0) then
    begin
      mData3.Edit;
      mdata3['Num']:='('+IntToStr(mdata3['xh2'])+')';
      mdata3['FFullNumber']:=mdata_M3['WorkFFullNumber']+'.'+Format('%.3d',[i1])+'.'+Format('%.3d',[i2]);
      mdata3['ssFullNumber']:=mdata_M3['WorkFFullNumber']+'.'+Format('%.3d',[i1]);
      mData3.Post;
    end;
    If (mdata3['xh1']<>0) and (mdata3['xh2']<>0) and (mdata3['xh3']<>0) then
    begin
      mData3.Edit;
      mdata3['FFullNumber']:=mdata_M3['WorkFFullNumber']+'.'+Format('%.3d',[i1])+'.'+Format('%.3d',[i2])+'.'+Format('%.3d',[i3]);
      mdata3['ssFullNumber']:=mdata_M3['WorkFFullNumber']+'.'+Format('%.3d',[i1])+'.'+Format('%.3d',[i2]);
      If mdata3['xh3']=1 then  mdata3['Num']:='①';
      If mdata3['xh3']=2 then  mdata3['Num']:='②';
      If mdata3['xh3']=3 then  mdata3['Num']:='③';
      If mdata3['xh3']=4 then  mdata3['Num']:='④';
      If mdata3['xh3']=5 then  mdata3['Num']:='⑤';
      If mdata3['xh3']=6 then  mdata3['Num']:='⑥';
      If mdata3['xh3']=7 then  mdata3['Num']:='⑦';
      If mdata3['xh3']=8 then  mdata3['Num']:='⑧';
      If mdata3['xh3']=9 then  mdata3['Num']:='⑨';
      If mdata3['xh3']=10 then  mdata3['Num']:='⑩';
      mData3.Post;
    end;
    mData3.Next;
  end;




end;

procedure TFrm_StockBOM.Num_3HeaderClick(Sender: TObject);
begin
  inherited;
  Act_Number.Execute;  //代码编写
end;



procedure TFrm_StockBOM.TB_StockClick(Sender: TObject);
var
  Query_Sp:TADOStoredProc;

  i,k,s,ReNum,ReNumLoop,R_Count,L:Integer;
  ExcelApp,MyWorkBook,mysheet,vLastSheet: Variant;
  filepath,savefilepath,Sqlstr,copystart,copyend,copystart1,aa,rs:string;
  ListQry:Tadoquery;
  qry,qry1:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry1:=TAdoQuery.Create(self);
  qry1.ConnectionString:=mdlData.ReadConnStr;

  filepath:=Extractfilepath(application.ExeName)+'入库清单模版.xls';
  if (Mdata3.Active) and (Mdata3.recordcount>0) then
  Begin
    SaveDialog1.FileName:='入库清单'+P_List;
    SaveDialog1.Filter:='.xls';
    SaveDialog1.Execute;

    if (Mdata3.FieldByName('FBranchItemNumber').AsString<>'') Or (Mdata3.FieldByName('FPartsNumber').AsString<>Null) then
        savefilepath:=SaveDialog1.FileName+'.xls';

    if FileExists(savefilepath) then
    begin
      DeleteFile(savefilepath) ;
    end;
    stbMsg.Caption:='提示信息：正在导出入库清单:'+'【'+Mdata3.FieldByName('FPartsNumber').AsString+'】';
    stbBar.Refresh;

    ExcelApp:= CreateOleObject('Excel.Application' );
    ExcelApp.DisplayAlerts:=False;                  //不显示提示框
    MyWorkBook:=ExcelApp.WorkBooks.Open( filepath );   //打开模版
    //ExcelApp.Visible:=True;

    try
      qry.SQL.Text:='Select distinct FPartsName,FPartsCode from V_StockList with(nolock) where FAgentID=:FAgentID and FFullNumber like :FFullNumber order by FPartsCode';
      qry.Parameters.FindParam('FAgentID').value:= UserFDepartmentID;
      qry.Parameters.FindParam('FFullNumber').value:= ListItemFNumber2+'%';
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
       qry1.SQL.Text:='select * from  V_StockList with(nolock) where FAgentID=:FAgentID and FFullNumber like :FFullNumber and FPartsName=:FPartsName and FPartsCode=:FPartsCode order by FFullNumber';
       qry1.Parameters.FindParam('FAgentID').value:= UserFDepartmentID;
       qry1.Parameters.FindParam('FFullNumber').value:= ListItemFNumber2+'%';
       qry1.Parameters.FindParam('FPartsName').value:= qry.FieldByName('FPartsName').Value;
       qry1.Parameters.FindParam('FPartsCode').value:= qry.FieldByName('FPartsCode').Value;
       qry1.Open;
     finally
       ;
     end;
     if qry1.RecordCount>0 then
     begin
       mdata3.Close;
       mdata3.CopyFromDataSet(qry1);
     end;
     vLastSheet:=MyWorkBook.Sheets[MyWorkBook.Sheets.Count];
     MyWorkBook.Sheets[1].Copy(EmptyParam,vLastSheet);
     MyWorkBook.WorkSheets[k].Name:=IntToStr(k)+Mdata3['FPartsCode']+Mdata3['FPartsName'];
     MyWorkBook.WorkSheets[k].Activate;

      //标题
     MyWorkBook.WorkSheets[k].Cells[3,3].Value := Mdata3.FieldByName('FPartsNumber').AsString; //档 案 号
     MyWorkBook.WorkSheets[k].Cells[3,5].Value := Mdata3.FieldByName('FClientFullName').AsString+'  '+Mdata3.FieldByName('FItemModel').AsString; //项目名称

     //MyWorkBook.WorkSheets[k].Cells[1,1].Value:=AnsiReplaceStr(MyWorkBook.WorkSheets[k].Cells[1,1].Value,'A',UserFDepartmentName); //公司名称

       //循环行开始
      i:=6;

       //工作薄名称
      MyWorkBook.WorkSheets[k].Name:=Mdata3.FieldByName('FPartsCode').AsString+Mdata3.FieldByName('FPartsName').AsString;
      copystart:='A'+IntToStr(i);
      if Mdata3.recordcount>0 then
      Begin
        if Mdata3.recordcount>1 then
        Begin
          copystart:='A'+IntToStr(i);
          copystart1:='A'+IntToStr(i+1);
          copyend:='L'+IntToStr(i);  //区域
          ReNum:=Mdata3.recordcount-1+(25-((mdata3.RecordCount+1) mod 25));//记录个数加空白个数
          L:=(25-((mdata3.RecordCount+1) mod 25));//空白个数
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
          R_Count:=Mdata3.recordcount;
        end;
        Mdata3.first;
        while not Mdata3.eof do
        Begin
           MyWorkBook.WorkSheets[k].Cells[i,1].Value := Mdata3.FieldByName('Num').AsString; //部件名称 +规格
          if  Mdata3.FieldByName('Num').AsString='★★' then  //黑体字
          begin
            rs:='A'+IntToStr(i)+':L'+IntToStr(i);
            MyWorkBook.worksheets[k].range[rs].font.bold:=True;
          end;
          MyWorkBook.WorkSheets[k].Cells[i,2].Value := Mdata3.FieldByName('th').AsString; //部件名称 +规格
          MyWorkBook.WorkSheets[k].Cells[i,4].Value := Mdata3.FieldByName('mc').AsString+Mdata3.FieldByName('SelRemark').AsString+' '+Mdata3.FieldByName('gg').AsString; //单位
          if  Mdata3.FieldByName('Num').AsString='★★' then
          begin
            MyWorkBook.WorkSheets[k].Cells[i,6].Value := ''; //单价
            MyWorkBook.WorkSheets[k].Cells[i,7].Value := ''; //净重
          end
          else
          begin
            MyWorkBook.WorkSheets[k].Cells[i,6].Value := Mdata3.FieldByName('FSumQry').AsString; //单价
            MyWorkBook.WorkSheets[k].Cells[i,7].Value := Mdata3.FieldByName('FSuttle').AsString; //净重
          end;
          MyWorkBook.WorkSheets[k].Cells[i,8].Value := Mdata3.FieldByName('FSumSuttle').AsString; //交货期
          MyWorkBook.WorkSheets[k].Cells[i,12].Value := Mdata3.FieldByName('FStockListRemark').AsString; //备注
          Mdata3.next;
          i:=i+1;
        End;
      end;
      //合计制单、审核栏
      MyWorkBook.WorkSheets[k].Cells[i+L,8].Value := '=SUMIF(A6:A'+IntToStr(i-1)+',"★★"'+',H6:H'+IntToStr(i-1)+')'; //净重合计

         // MyWorkBook.WorkSheets[k].Cells[i+L+1,3].Value:=Mdata3.FieldByName('FStockAudit').AsString; //校对
         // MyWorkBook.WorkSheets[k].Cells[i+L+1,9].Value:=Mdata3.FieldByName('FStockSubmit').AsString; //制单

      qry.Next ;
      ExcelApp.Visible:=True;
      MyWorkBook.WorkSheets[k].PrintPreview;  //打印
      k:=k+1;

    end;
    MyWorkBook.WorkSheets[1].delete; //删除模版
    stbMsg.Caption:='提示信息：入库清单:'+'【'+Mdata3.FieldByName('FPartsName').AsString+'】的信息导出完成!';
    stbBar.Refresh;
    MyWorkBook.saveas(savefilepath);

   // ExcelApp.Visible:=True;
   // MyWorkBook.WorkSheets[1].PrintPreview;

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

procedure TFrm_StockBOM.SelRemark_3PropertiesCloseUp(Sender: TObject);
begin
  inherited;
  mdata3.Edit;
  mdata3.Post;
  If Mdata3['SelRemark']='(按以下入库)' then
  begin
    mdata3.Edit;
    mdata3['FSumQry']:=1;//本级数量设为1
    mdata3.Post;
  end;
end;

procedure TFrm_StockBOM.Act_WeigthExecute(Sender: TObject);
var
  proc:TADOStoredProc;
begin
  proc:=TADOStoredProc.Create(self);
  proc.ConnectionString:=mdlData.ReadConnStr;
  proc.CommandTimeout:=500;
  try
    proc.ProcedureName:='P_Stock_Weight;1';     
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=50;
      name := '@ListItemFNumber';
      value:=mdata_M3['FFullNumber'];
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftInteger;
      Direction := pdinput;
      name := '@UserFAgentID';
      value:=UserFDepartmentID;
    end;

    proc.Open;
    mdata3.Close;
    mdata3.CopyFromDataSet(proc);
    Mdata3.Active:=True;
  finally
     ;
  end;


end;

procedure TFrm_StockBOM.ToolButton7Click(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  If MyItemListwhere(qry,Mdata_M3,'V_StockItem','FFullNumber',ListItemFNumber2,' and FAgentID='+IntToStr(UserFDepartmentID),'FFullNumber') then
  If MyItemListwhere(qry,Mdata3,'V_StockList','FFullNumber',ListItemFNumber2,' and FAgentID='+IntToStr(UserFDepartmentID),'FFullNumber',) then
  mdata3.First;
   //  cxGvColumn(cxGv,Mdata);

end;

procedure TFrm_StockBOM.Act_Status_MExecute(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.CommandTimeout:=1000;
  try
    qry.SQL.Text:='Select distinct FStockStatus from V_StockItem with(nolock) where FStockWriteID=:FStockWriteID and FAgentID=:FAgentID and FFullNumber like :FFullNumber';
    qry.Parameters.FindParam('FStockWriteID').value:= UserNumID;
    qry.Parameters.FindParam('FAgentID').value:= UserFDepartmentID;
    qry.Parameters.FindParam('FFullNumber').value:=ListItemFNumber2+'%';
    qry.Open;
  finally
    ;
  end;
  If qry.RecordCount=1 then
  begin
    If qry.FieldByName('FStockStatus').Value=0 then
       TB_Submit.Visible:=mdlData.PermissionCheckRights(TFrm_StockBOM.ClassName,'提交');
    If qry.FieldByName('FStockStatus').Value=1 then
    begin
       TB_Submit.Visible:=mdlData.PermissionCheckRights(TFrm_StockBOM.ClassName,'提交');
       TB_Audit.Visible:=mdlData.PermissionCheckRights(TFrm_StockBOM.ClassName,'审核');
    end;
    If qry.FieldByName('FStockStatus').Value=3 then
    begin
       TB_Audit.Visible:=mdlData.PermissionCheckRights(TFrm_StockBOM.ClassName,'审核');
    end;
  end
  else
  begin
    TB_Submit.Visible:=False;
    TB_Audit.Visible:=False;
  end;

end;

procedure TFrm_StockBOM.TB_Print_FirstClick(Sender: TObject);
var
  Query_Sp:TADOStoredProc;
  i,k,s,ReNum,ReNumLoop,R_Count,n:Integer;
  ExcelApp,MyWorkBook,mysheet,vLastSheet: Variant;
  filepath,savefilepath,Sqlstr,copystart,copyend,copystart1,aa,ty:string;
  ListQry,qry:Tadoquery;
begin
  filepath:=Extractfilepath(application.ExeName)+'入库清单封面目录模版.xls';
  SaveDialog1.FileName:='入库清单封面目录('+Mdata_M3.FieldByName('FBranchItemNumber').AsString+')' ;
  SaveDialog1.Filter:='.xls';
  SaveDialog1.Execute;

  If (Mdata_M3.FieldByName('FBranchItemNumber').AsString<>'') Or (Mdata_M3.FieldByName('FPartsNumber').AsString<>Null) then
        savefilepath:=SaveDialog1.FileName+'.xls';

    if FileExists(savefilepath) then
    begin
      DeleteFile(savefilepath) ;
    end;
    stbMsg.Caption:='提示信息：正在导出入库清单封面目录:'+'【'+Mdata_M3.FieldByName('FBranchItemNumber').AsString+'】';
    stbBar.Refresh;

    ExcelApp:= CreateOleObject('Excel.Application' );
    ExcelApp.DisplayAlerts:=False;                  //不显示提示框
    MyWorkBook:=ExcelApp.WorkBooks.Open( filepath );       //打开模版

    vLastSheet:=MyWorkBook.Sheets[MyWorkBook.Sheets.Count];
   // MyWorkBook.Sheets[1].Copy(EmptyParam,vLastSheet);
    MyWorkBook.WorkSheets[1].Name:='封面('+Mdata_M3['FBranchItemNumber']+')';
    MyWorkBook.WorkSheets[1].Activate;

    MyWorkBook.WorkSheets[1].Cells[6,4].Value := Mdata_M3['FClientFullName']; //用户全称
    MyWorkBook.WorkSheets[1].Cells[8,4].Value := Mdata_M3['FItemModel']; //产品型号
    MyWorkBook.WorkSheets[1].Cells[10,4].Value := Mdata_M3['FItemNumber']; //图号
    MyWorkBook.WorkSheets[1].Cells[12,4].Value := Mdata_M3['FPactNo']; //合同号
    MyWorkBook.WorkSheets[1].Cells[14,4].Value := Mdata_M3['FStockNum'];//编目号

    stbMsg.Caption:='提示信息：入库清单封面目录:'+'【'+Mdata_M3.FieldByName('FBranchItemNumber').AsString+'】的信息导出完成!';
    stbBar.Refresh;

    MyWorkBook.saveas(savefilepath);
    ExcelApp.Visible:=True;
    MyWorkBook.WorkSheets[1].PrintPreview;  //打印

    MyWorkBook.Close;

    ExcelApp.Quit;
    ExcelApp:=Unassigned;



  
 {  If mdata3.RecordCount>0 then
  begin
    mdata3.SortedField:='FFullNumber';
    FrReport.LoadFromFile(ExtractFileDir(Application.ExeName)+'\Report_DesignBOM_StockIn_First.frf');
    FrReport.ShowReport;
  end
  else
    Application.MessageBox(PChar('没有需要打印的数据！'), '错误', MB_OK +MB_ICONSTOP);
  }
end;

procedure TFrm_StockBOM.TB_Print_MLClick(Sender: TObject);
var
  qry:TADOquery;
  Query_Sp:TADOStoredProc;
  i,k,s,ReNum,ReNumLoop,R_Count,L:Integer;
  ExcelApp,MyWorkBook,mysheet: Variant;
  filepath,savefilepath,Sqlstr,copystart,copyend,copystart1,aa,rs:string;
  ListQry:Tadoquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  try
    qry.SQL.Text:='select ''○○'' as Num,'
                 +'(case ConVert(numeric(18,0),FPartsCode) when 0 then 1 else ConVert(numeric(18,0),FPartsCode) end) as xh,'
                 +'FPartsNumber as th,FPartsCode,FPartsName as mc,''  '' gg,FItemListQry as FSumQry,sum(FSuttle) as FSuttle,sum(FItemListQry*FSumSuttle) as FSumSuttle,'
                 +'''      '' as FStockListRemark,''  '' as SelRemark ,FClientFullName,FBranchItemNumber as FPartsNumber,FBranchFileNo,FItemModel,FPartsCode,FPartsName,'' '' as FFullNumber,'' '' ssFullNumber '
                 +' from V_StockList with(nolock) where Num=''★★'' and FItemID=:FItemID  '
                 +' group by Num,FPartsNumber,FPartsCode,FPartsName,FItemListQry,FClientFullName,FBranchItemNumber,FBranchFileNo ,FItemModel,FPartsCode,FPartsName '
                 +' order by FBranchItemNumber,FPartsCode ';
    qry.Parameters.FindParam('FItemID').value:=Mdata_M3['FItemID'];
    qry.Open;
  finally
     ;
  end;
  mdata3.Close;
  mdata3.CopyFromDataSet(qry);
  Mdata3.Active:=True;


  filepath:=Extractfilepath(application.ExeName)+'入库清单封面目录模版.xls';
  if (Mdata3.Active) and (Mdata3.recordcount>0) then
  Begin
    SaveDialog1.FileName:='入库清单封面目录('+Mdata_M3.FieldByName('FBranchItemNumber').AsString+')' ;
    SaveDialog1.Filter:='.xls';
    SaveDialog1.Execute;

   If (Mdata_M3.FieldByName('FBranchItemNumber').AsString<>'') Or (Mdata_M3.FieldByName('FBranchItemNumber').AsString<>Null) then
        savefilepath:=SaveDialog1.FileName+'.xls';


    if FileExists(savefilepath) then
    begin
      DeleteFile(savefilepath) ;
    end;
    stbMsg.Caption:='提示信息：正在导出入库清单封面目录:'+'【'+Mdata_M3.FieldByName('FBranchItemNumber').AsString+'】';
    stbBar.Refresh;

    ExcelApp:= CreateOleObject('Excel.Application' );
    MyWorkBook:=ExcelApp.WorkBooks.Open( filepath );

    MyWorkBook.WorkSheets[1].Name:='封面('+Mdata_M3['FBranchItemNumber']+')';
    MyWorkBook.WorkSheets[1].Activate;

    MyWorkBook.WorkSheets[1].Cells[5,4].Value := Mdata_M3['FClientFullName']; //用户全称
    MyWorkBook.WorkSheets[1].Cells[8,4].Value := Mdata_M3['FItemModel']; //产品型号
    MyWorkBook.WorkSheets[1].Cells[10,4].Value := Mdata_M3['FItemNumber']; //图号
    MyWorkBook.WorkSheets[1].Cells[12,4].Value := Mdata_M3['FPactNo']; //合同号
    MyWorkBook.WorkSheets[1].Cells[14,4].Value := Mdata_M3['FStockNum'];//编目号

    MyWorkBook.WorkSheets[2].Name:='目录('+Mdata_M3['FBranchItemNumber']+')';
    MyWorkBook.WorkSheets[2].Activate;

    MyWorkBook.WorkSheets[2].Cells[3,3].Value := Mdata_M3.FieldByName('FPartsNumber').AsString; //档 案 号
    MyWorkBook.WorkSheets[2].Cells[3,5].Value := Mdata_M3.FieldByName('FClientFullName').AsString+'  '+Mdata_M3.FieldByName('FItemModel').AsString; //项目名称
    i:=6;

    copystart:='A'+IntToStr(i);
    if Mdata3.recordcount>0 then
    Begin
      if Mdata3.recordcount>1 then
      Begin
        copystart:='A'+IntToStr(i);
        copystart1:='A'+IntToStr(i+1);
        copyend:='L'+IntToStr(i);
        ReNum:=Mdata3.recordcount-1+(25-((mdata3.RecordCount+1) mod 25));
        L:=Mdata3.recordcount-1+(25-((mdata3.RecordCount+1) mod 25));
        while ReNum>0 do
        Begin
          ExcelApp.ActiveSheet.Range[copystart+':'+copyend].Copy;
          ExcelApp.ActiveSheet.Rows[i+1].Insert;
          ExcelApp.ActiveSheet.Range[copystart1].PasteSpecial;
          Renum:=Renum-1;
        end;
        //合计制单、审核栏
        MyWorkBook.WorkSheets[2].Cells[i+L+1,7].Value := '=SUMIF(A6:A'+IntToStr(i-1)+',"○○"'+',G6:G'+IntToStr(i-1)+')'; //净重合计
      End
      else
      Begin
        R_Count:=Mdata3.recordcount;
      end;
      Mdata3.first;
      while not Mdata3.eof do
      Begin
        MyWorkBook.WorkSheets[2].Cells[i,1].Value := Mdata3.FieldByName('Num').AsString; //部件名称 +规格
        MyWorkBook.WorkSheets[2].Cells[i,2].Value := Mdata3.FieldByName('th').AsString; //部件名称 +规格
        MyWorkBook.WorkSheets[2].Cells[i,4].Value := Mdata3.FieldByName('mc').AsString+Mdata3.FieldByName('SelRemark').AsString+' '+Mdata3.FieldByName('gg').AsString; //单位
        MyWorkBook.WorkSheets[2].Cells[i,7].Value := Mdata3.FieldByName('FSuttle').AsString; //金  额
        Mdata3.next;
        i:=i+1;
      End;
    end;
    stbMsg.Caption:='提示信息：入库清单封面目录:'+'【'+Mdata_M3.FieldByName('FBranchItemNumber').AsString+'】的信息导出完成!';
    stbBar.Refresh;
    MyWorkBook.saveas(savefilepath);

    ExcelApp.Visible:=True;
    MyWorkBook.WorkSheets[1].PrintPreview;
    MyWorkBook.WorkSheets[2].PrintPreview;

    MyWorkBook.Close;
    ExcelApp.Quit;
    ExcelApp:=Unassigned;
  end
  else
  Begin
    Application.MessageBox(PChar('没有可导出的数据，请重新选择'), '数据引出错误', MB_OK + MB_ICONSTOP);
    exit;
  End;





 { If mdata3.RecordCount>0 then
  begin
    mdata3.SortedField:='FPartsCode';
    FrReport.LoadFromFile(ExtractFileDir(Application.ExeName)+'\Report_DesignBOM_Stock.frf');
    FrReport.ShowReport;
  end
  else
    Application.MessageBox(PChar('没有需要打印的数据！'), '错误', MB_OK +MB_ICONSTOP);

  mdata3.SortedField:='';
 }


end;

procedure TFrm_StockBOM.ToolButton10Click(Sender: TObject);
var
  a:String;
  Query_Sp,proc:TADOStoredProc;
  i,k,s,ReNum,ReNumLoop,R_Count,L:Integer;
  ExcelApp,MyWorkBook,mysheet: Variant;
  filepath,savefilepath,Sqlstr,copystart,copyend,copystart1,aa,rs:string;
  ListQry:Tadoquery;
begin
  proc:=TADOStoredProc.Create(self);
  proc.ConnectionString:=mdlData.ReadConnStr;
  proc.CommandTimeout:=500;
  If ListItemFNumber='' then Exit;
  a:='【'+mdata_DBOM['FItemNumber']+'】';
  ShowPrograss('正在汇总'+a+'定额数据，请稍候……',self);
  try
    proc.ProcedureName:='P_DesignBOM_SUM;1';
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=50;
      name := '@FFullNumber';
      value:=ListItemFNumber;
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=50;
      name := '@FPartsSort';
      value:='FWorkParts';
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=50;
      name := '@Sort';
      value:='部件汇总';
    end;
    proc.Open;
    mdata_DBOM_Sum.CopyFromDataSet(proc);
    cxGvColumn(cxGv_DBOM_Sum,Mdata_DBOM_Sum);
  finally
     ;
  end;
  PC_1.ActivePage:=TS_Sort;

  
  filepath:=Extractfilepath(application.ExeName)+'定额部件汇总表模版.xls';
  if (Mdata_DBOM_Sum.Active) and (Mdata_DBOM_Sum.recordcount>0) then
  Begin
    SaveDialog1.FileName:='定额部件汇总表('+Mdata_DBOM_Sum.FieldByName('FItemNumber').AsString+')' ;
    SaveDialog1.Filter:='.xls';
    SaveDialog1.Execute;

   If (Mdata_DBOM_Sum.FieldByName('FItemNumber').AsString<>'') Or (Mdata_DBOM_Sum.FieldByName('FItemNumber').AsString<>Null) then
        savefilepath:=SaveDialog1.FileName+'.xls';


    if FileExists(savefilepath) then
    begin
      DeleteFile(savefilepath) ;
    end;
    stbMsg.Caption:='提示信息：正在导出定额部件汇总表:'+'【'+Mdata_DBOM_Sum.FieldByName('FItemNumber').AsString+'】';
    stbBar.Refresh;

    ExcelApp:= CreateOleObject('Excel.Application' );
    MyWorkBook:=ExcelApp.WorkBooks.Open( filepath );

    MyWorkBook.WorkSheets[1].Name:='部件汇总('+Mdata_DBOM_Sum['FItemNumber']+')' ;
    MyWorkBook.WorkSheets[1].Activate;

    MyWorkBook.WorkSheets[1].Cells[3,2].Value := '【'+Mdata_DBOM_Sum['FItemNumber']+'】'; //图号
    MyWorkBook.WorkSheets[1].Cells[4,2].Value := Mdata_DBOM_Sum['FClientFullName']; //用户全称

    i:=6;

    copystart:='A'+IntToStr(i);
    if Mdata_DBOM_Sum.recordcount>0 then
    Begin
      if Mdata_DBOM_Sum.recordcount>1 then
      Begin
        copystart:='A'+IntToStr(i);
        copystart1:='A'+IntToStr(i+1);
        copyend:='G'+IntToStr(i);
       // ReNum:=Mdata4.recordcount-1+(25-((mdata4.RecordCount+1) mod 25));
       // L:=Mdata4.recordcount-1+(25-((mdata4.RecordCount+1) mod 25));
        ReNum:=Mdata_DBOM_Sum.recordcount-1;
       // L:=Mdata4.recordcount-1;

        while ReNum>0 do
        Begin
          ExcelApp.ActiveSheet.Range[copystart+':'+copyend].Copy;
          ExcelApp.ActiveSheet.Rows[i+1].Insert;
          ExcelApp.ActiveSheet.Range[copystart1].PasteSpecial;
          Renum:=Renum-1;
        end;
        //合计制单、审核栏
       // MyWorkBook.WorkSheets[2].Cells[i+L+1,7].Value := '=SUMIF(A6:A'+IntToStr(i-1)+',"○○"'+',H6:H'+IntToStr(i-1)+')'; //净重合计
      End
      else
      Begin
        R_Count:=Mdata_DBOM_Sum.recordcount;
      end;
      Mdata_DBOM_Sum.first;
      while not Mdata_DBOM_Sum.eof do
      Begin
        if  pos('【',Mdata_DBOM_Sum.FieldByName('FParts').AsString)>0 then  //黑体字
          begin
            rs:='A'+IntToStr(i)+':L'+IntToStr(i);
            MyWorkBook.worksheets[1].range[rs].font.bold:=True;
          end;

        MyWorkBook.WorkSheets[1].Cells[i,1].Value := ' '+Mdata_DBOM_Sum.FieldByName('FParts').AsString; //材料编号
        MyWorkBook.WorkSheets[1].Cells[i,3].Value := Mdata_DBOM_Sum.FieldByName('FSuttle').AsString+'  '; //设计净重
        MyWorkBook.WorkSheets[1].Cells[i,4].Value := Mdata_DBOM_Sum.FieldByName('FSuttle').AsString+'  '; //设计净重
        MyWorkBook.WorkSheets[1].Cells[i,5].Value := FLoatToStr(Mdata_DBOM_Sum.FieldByName('FSuttle').Value-Mdata_DBOM_Sum.FieldByName('FSuttle').Value); //设计净重
        Mdata_DBOM_Sum.next;
        i:=i+1;
      End;
    end;
    stbMsg.Caption:='提示信息：定额部件汇总表:'+'【'+Mdata_DBOM_Sum.FieldByName('FItemNumber').AsString+'】的信息导出完成!';
    stbBar.Refresh;
    MyWorkBook.saveas(savefilepath);

    ExcelApp.Visible:=True;
    MyWorkBook.WorkSheets[1].PrintPreview;

    MyWorkBook.Close;
    ExcelApp.Quit;
    ExcelApp:=Unassigned;
  end
  else
  Begin
    Application.MessageBox(PChar('没有可导出的数据，请重新选择'), '数据引出错误', MB_OK + MB_ICONSTOP);
    exit;
  End;


end;

procedure TFrm_StockBOM.FPartsSortPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='select distinct FPartsSort from T_PartsSort with(nolock) where FProductID=:FProductID and FPartsCode=:FPartsCode order by FPartsSort ';
    qry.Parameters.FindParam('FProductID').value:=mdata_DBOM['FProductID'];
    qry.Parameters.FindParam('FPartsCode').value:=mdata_DBOM['FPartsCode'];
    qry.Open;
  finally
   ;
  end;

  selValue:=select('选择部件类别','FPartsSort','FPartsSort','FPartsSort','FPartsSort',qry);
  If (Length(selValue)>0) then
  begin
    mdata_DBOM.Edit;
    mdata_DBOM['FPartsSort']:=qry.FieldByName('FPartsSort').Value;
    mdata_DBOM.Post;
  end;


end;

procedure TFrm_StockBOM.FStockListRemark_3PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  mdata3.Edit;
  If  mdata3['FStockListRemark']=Null then
     mdata3['FStockListRemark']:='';
  mdata3.Post;
  try
    qry.SQL.Text:='select distinct FStockListRemark from V_StockList with(nolock) where FAgentID=:FAgentID and FStockListRemark like :FStockListRemark order by FStockListRemark ';
    qry.Parameters.FindParam('FAgentID').value:=UserFDepartmentID;
    qry.Parameters.FindParam('FStockListRemark').value:='%'+mdata3['FStockListRemark']+'%';
    qry.Open;
  finally
     ;
  end;
  If qry.RecordCount<=0 then
     Exit;
  selValue:=select('选择备注','FStockListRemark','FStockListRemark','FStockListRemark','FStockListRemark',qry);
  If (Length(selValue)>0) then
  begin
    mdata3.Edit;
    mdata3['FStockListRemark']:=qry.FieldByName('FStockListRemark').Value;
   // FStockInListRemark_3.EditValue:=qry.FieldByName('FStockInListRemark').Value;
    mdata3.Post;
  end;


end;

procedure TFrm_StockBOM.E_FItemNumber_CopyPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry,qry1: TADOQuery;
begin
   qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
   qry1:=TADOQuery.Create(self);
  qry1.ConnectionString:=mdlData.ReadConnStr;
   try
     qry.SQL.Text:='select * from V_FileItem with(nolock) where FDepartmentID=:FDepartmentID and FItemNumber=:FItemNumber order by FItemNumber ';
     qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
     qry.Parameters.FindParam('FItemNumber').value:=Trim(E_FItemNumber_Copy.Text);
     qry.Open;
   finally
      ;
   end;
   If qry.RecordCount=0 then
   begin
     try
       qry.SQL.Text:='select * from VT_FileItem with(nolock) where FDepartmentID=:FDepartmentID';
       qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
       qry.Open;
     finally
       ;
     end;

     selValue:=select('选择档案号','FNumber','FParentNumber','FNumber','FName',qry);
     If (Length(selValue)>0) and (qry.FieldByName('FDetail').Value<>0) then
     begin
       E_FItemIDCopy.Text:=qry.FieldByName('FItemID').Value;
       try
         qry1.SQL.Text:='select * from V_FileItem with(nolock) where FDepartmentID=:FDepartmentID and FItemID=:FItemID';
         qry1.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
         qry1.Parameters.FindParam('FItemID').value:=qry.FieldByName('FItemID').Value;
         qry1.Open;
       finally
          ;
       end;
       If qry1.RecordCount>0 then
       begin
         E_FItemNumber_Copy.Text:=qry1.FieldByName('FBranchItemNumber').Value;
         E_FItemIDCopy.Text:=qry1.FieldByName('FItemID').Value;
         E_FItemNoCopy.Text:=qry1.FieldByName('FItemNo').AsString;
         If (mdata_M3.RecordCount>0) and (E_FItemNumber_Copy.Text<>'') then
            Act_Stock_Copy.Execute;  //复制图号

       end;
     end
     else
       application.MessageBox('请选择明细！','系统提示',MB_ICONINFORMATION);
     Exit;
   end;

   If qry.RecordCount=1 then
   begin
     E_FItemNumber_Copy.Text:=qry.FieldByName('FBranchItemNumber').Value;
     E_FItemIDCopy.Text:=qry.FieldByName('FItemID').Value;
     E_FItemNoCopy.Text:=qry.FieldByName('FItemNo').Value;
     If (mdata_M3.RecordCount>0) and (E_FItemNumber_Copy.Text<>'') then
       Act_Stock_Copy.Execute;  //复制图号
     Exit;
   end
   else
   begin
    selValue:=select('选择档案信息','FBranchItemNumber','FItemNumber','FBranchItemNumber','FBranchItemNumber;FClientShortName',qry);
    If (Length(selValue)>0) then
    begin
      E_FItemNumber_Copy.Text:=qry.FieldByName('FBranchItemNumber').Value;
      E_FItemIDCopy.Text:=qry.FieldByName('FItemID').Value;
      E_FItemNoCopy.Text:=qry.FieldByName('FItemNo').Value;
      If (mdata_M3.RecordCount>0) and (E_FItemNumber_Copy.Text<>'') then
         Act_Stock_Copy.Execute;  //复制图号
    end;
    Exit;
  end;

end;

procedure TFrm_StockBOM.Act_Stock_CopyExecute(Sender: TObject);
var
  proc:TADOStoredProc;
  P_Retinf:String;

begin
  If (E_FItemIDCopy.Text=Null) or (Trim(E_FItemIDCopy.Text)='') or (Trim(E_FItemNumber_Copy.Text)='') then
  begin
    application.MessageBox('关键字不能为空！请重新输入','系统提示',MB_ICONERROR);
    Exit;
  end;

  P_List :='【'+mdata_M3['FBranchItemNumber']+'】至【'+E_FItemNumber_Copy.Text+'】';
  If application.MessageBox(Pchar('警告：是否复制编号：【'+P_List+'】的入库单信息？'+chr(13)+chr(13)
                                 +'复制数据操作将不可恢复，确定要复制吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
  proc:=TADOStoredProc.Create(self);
  proc.ConnectionString:=mdlData.ReadConnStr;
  proc.CommandTimeout:=500;

  try
    proc.ProcedureName:='P_Stock_Copy;1';
    with proc.Parameters.AddParameter do
    begin
      DataType := ftInteger;
      Direction := pdinput;
      name := '@FItemID';
      value:=mdata3['FItemID'];
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=50;
      name := '@FFullNumber';
      value:=ListItemFNumber2;
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftInteger;
      Direction := pdinput;
      name := '@FItemIDCopy';
      value:=StrToInt(E_FItemIDCopy.Text);
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftInteger;
      Direction := pdinput;
      name := '@FStockWriteID';
      value:=UserNumID;
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftInteger;
      Direction := pdinput;
      name := '@FAgentID';
      value:=UserFDepartmentID;
    end;

    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdoutput;
      size:=255;
      name := '@Retinf';
      value:='';
    end;
    proc.ExecProc;
    P_Retinf:=proc.Parameters.FindParam('@Retinf').Value;
    Messagedlg(P_Retinf,mtInformation,[mbok],0);
  finally
     ;
  end;

end;

procedure TFrm_StockBOM.FCodeHeaderClick(Sender: TObject);
Var
  qry: TADOQuery;
  I_index:Integer;
  P_Sel:String;
begin
  If mData_WBOM.RecordCount<=0 then
    Exit;
  I_index:=mdata_WBOM.RecNo ;

  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  P_Sel:=mdata_WBOM['FCode'];
  mdata_WBOM.First;
  while not mData_WBOM.eof do
  begin
    mData_WBOM.Edit;
    If mdata_WBOM['FCode']=P_Sel then
    begin
      try
        qry.SQL.Text:='Update T_StockBOM set IsSel=1,Sel=1 where FStockBOMID=:FStockBOMID';
        qry.Parameters.FindParam('FStockBOMID').Value:=mdata_WBOM['FStockBOMID'];
        qry.ExecSQL;
        mdata_WBOM.Edit;
        mdata_WBOM['Sel']:=True;
        mdata_WBOM['IsSel']:=True;
        mdata_WBOM.Post;
      finally
         ;
      end;
    end;
    mData_WBOM.Next;
  end;
  If (I_index<mdata_WBOM.RecordCount) and (I_index<>-1) then
     mdata_WBOM.RecNo :=I_index
  else
     mdata_WBOM.Last;
end;

procedure TFrm_StockBOM.SelHeaderClick(Sender: TObject);
Var  qry: TADOQuery;
    I_index:Integer;
    P_Sel:String;
begin
  inherited;
  If mData_WBOM.RecordCount<=0 then
    Exit;
  I_index:=mdata_WBOM.RecNo ;
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  P_Sel:=mdata_WBOM['FCode'];
  mdata_WBOM.First;
  while not mData_WBOM.eof do
  begin
    mData_WBOM.Edit;
    If mdata_WBOM['FCode']=P_Sel then
    begin
      try
        qry.SQL.Text:='Update T_StockBOM set IsSel=0,Sel=0 where FStockBOMID=:FStockBOMID';
        qry.Parameters.FindParam('FStockBOMID').Value:=mdata_WBOM['FStockBOMID'];
        qry.ExecSQL;
        mdata_WBOM.Edit;
        mdata_WBOM['Sel']:=False;
        mdata_WBOM['IsSel']:=False;
        mdata_WBOM.Post;
      finally
         ;
      end;
    end;
    mData_WBOM.Next;
  end;
  If (I_index<mdata_WBOM.RecordCount) and (I_index<>-1) then
     mdata_WBOM.RecNo :=I_index
  else
     mdata_WBOM.Last;
end;

procedure TFrm_StockBOM.thHeaderClick(Sender: TObject);
Var
  qry: TADOQuery;
  I_index:Integer;

begin
  inherited;
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If mData_WBOM.RecordCount<=0 then
    Exit;
  I_index:=mdata_WBOM.RecNo ;
  mdata_WBOM.First;
  while not mData_WBOM.eof do
  begin
    mData_WBOM.Edit;
    If (mdata_WBOM['FCode']='★★') or (mdata_WBOM['FCode']='◆◆') or (mdata_WBOM['FCode']='□□') then
    begin
      try
        qry.SQL.Text:='Update T_StockBOM set IsSel=1,Sel=1 where FStockBOMID=:FStockBOMID';
        qry.Parameters.FindParam('FStockBOMID').Value:=mdata_WBOM['FStockBOMID'];
        qry.ExecSQL;
        mdata_WBOM.Edit;
        mdata_WBOM['Sel']:=True;
        mdata_WBOM['IsSel']:=True;
        mdata_WBOM.Post;
      finally
         ;
      end;
    end;
    mData_WBOM.Next;
  end;
  If (I_index<mdata_WBOM.RecordCount) and (I_index<>-1) then
     mdata_WBOM.RecNo :=I_index
  else
     mdata_WBOM.Last;


end;

procedure TFrm_StockBOM.mcHeaderClick(Sender: TObject);
Var  qry: TADOQuery;
  I_index:Integer;
begin
  inherited;
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  If mData_WBOM.RecordCount<=0 then
    Exit;
  I_index:=mdata_WBOM.RecNo ;
  mdata_WBOM.First;
  while not mData_WBOM.eof do
  begin
    mData_WBOM.Edit;
    If (mdata_WBOM['FCode']='★★') or (mdata_WBOM['FCode']='◆◆') or (mdata_WBOM['FCode']='□□') then
    begin
      try
        qry.SQL.Text:='Update T_StockBOM set IsSel=0,Sel=0 where FStockBOMID=:FStockBOMID';
        qry.Parameters.FindParam('FStockBOMID').Value:=mdata_WBOM['FStockBOMID'];
        qry.ExecSQL;
        mdata_WBOM.Edit;
        mdata_WBOM['Sel']:=False;
        mdata_WBOM['IsSel']:=False;
        mdata_WBOM.Post;
      finally
         ;
      end;
    end;
    mData_WBOM.Next;
  end;
  If (I_index<mdata_WBOM.RecordCount) and (I_index<>-1) then
     mdata_WBOM.RecNo :=I_index
  else
     mdata_WBOM.Last;



end;

procedure TFrm_StockBOM.TB_ExeclClick(Sender: TObject);
var i:integer;
begin
  inherited;

 for i:=0 to cxGv_SList.ColumnCount-1 do
  begin
    cxGv_SList.Columns[i].Visible:=False;
  end;

  Num_3.Visible:=True;
  th_3.Visible:=True;
  mcgg_3.Visible:=True;
  dw_3.Visible:=True;
  FSumQry_3.Visible:=True;
  FSuttle_3.Visible:=True;
  FSumSuttle_3.Visible:=True;
  FStockListRemark_3.Visible:=True;

  If mdata3.RecordCount>0 then
     ExportToExcel(cxGrid_SList,True,TRue)
  else
     Application.MessageBox(PChar('没有需要导出的数据！'), '错误', MB_OK +MB_ICONSTOP);

  for i:=0 to cxGv_SList.ColumnCount-1 do
  begin
    cxGv_SList.Columns[i].Visible:=True;
  end;

  IsEdit.Visible:=False;
  FCode_3.Visible:=False;
  xh1.Visible:=False;
  xh2.Visible:=False;
  xh3.Visible:=False;
  abc_3.Visible:=False;
  sel_3.Visible:=False;

  dw_3.Visible:=False;
  mcgg_3.Visible:=False;
end;

procedure TFrm_StockBOM.Act_PartsExecute(Sender: TObject);
var
  proc:TADOStoredProc;
begin
  proc:=TADOStoredProc.Create(self);
  proc.ConnectionString:=mdlData.ReadConnStr;
  proc.CommandTimeout:=500;
  P_Sort:='材料汇总';
  P_Parts:='FworkParts';      //入库类别
  ShowPrograss('正在按入库类别汇总'+P_th+'定额数据，请稍候……',self);
  try
    proc.ProcedureName:='P_DesignBOM_SUM;1';
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=50;
      name := '@FFullNumber';
      value:=ListItemFNumber;
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=50;
      name := '@FPartsSort';
      value:=P_Parts;
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=50;
      name := '@Sort';
      value:=P_Sort;
    end;
    proc.Open;
    mdata_DBOM_Sum.CopyFromDataSet(proc);
    cxGvColumn(cxGv_DBOM_Sum,Mdata_DBOM_Sum);
  finally
     ;
  end;
//  PC_2.ActivePage:=TS_Sort;
 // cxGrid4.SetFocus;
  Proc.Free;

end;

procedure TFrm_StockBOM.Act_MenuExecute(Sender: TObject);
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

procedure TFrm_StockBOM.Act_Menu_SetExecute(Sender: TObject);
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

procedure TFrm_StockBOM.cxGrid_DBOMContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
    GV:='cxGV_DBOM';
    Gm:='mdata_DBOM';
    Gr:='cxGrid_DBOM';
    Act_Menu_Set.Execute;

end;

procedure TFrm_StockBOM.N_EditClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_StockBOM.N_FilterClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_StockBOM.N_SortClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_StockBOM.N_GroupClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_StockBOM.N_SetClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_StockBOM.N_OutClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_StockBOM.cxGrid_DBOM_SumContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
    GV:='cxGV_DBOM_Sum';
    Gm:='mdata_DBOM_Sum';
    Gr:='cxGrid_DBOM_Sum';
    Act_Menu_Set.Execute;

end;

procedure TFrm_StockBOM.cxGrid_WBOMContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
    GV:='cxGV_WBOM';
    Gm:='mdata_WBOM';
    Gr:='cxGrid_WBOM';
    Act_Menu_Set.Execute;

end;

procedure TFrm_StockBOM.cxGrid_SListContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV_SList';
  Gm:='mdata3';
  Gr:='cxGrid_SList';
  Act_Menu_Set.Execute;

end;

procedure TFrm_StockBOM.cxGrid_SItemContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV_SItem';
  Gm:='mdata_M3';
  Gr:='cxGrid_SItem';
  Act_Menu_Set.Execute;

end;

procedure TFrm_StockBOM.TB_WeighClick(Sender: TObject);
var
  proc:TADOStoredProc;
begin
  proc:=TADOStoredProc.Create(self);
  proc.ConnectionString:=mdlData.ReadConnStr;
  proc.CommandTimeout:=500;
  If  ListItemFNumber='' then
     Exit;
  try
    proc.ProcedureName:='P_BOM_CountWeigh;1';
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=50;
      name := '@FFullNumber';
      value:=ListItemFNumber;
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=50;
      name := '@TableName';
      value:='T_DesignBOM_Structure';
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=50;
      name := '@ViewName';
      value:='V_DesignBOM_Structure';
    end;
    proc.Open;
    mdata_DBOM.CopyFromDataSet(proc);
    mdata_DBOM.Active:=True;
    mdata_DBOM.First;
  finally
     ;
  end;
  proc.Free;

end;

procedure TFrm_StockBOM.TB_Submit_BOMClick(Sender: TObject);
var
 qry,qry1:TADOquery;
 P_ItemID,P_ItemListID:Integer;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry1:=TAdoQuery.Create(self);
  qry1.ConnectionString:=mdlData.ReadConnStr;

  try
    qry1.SQL.Text:='select * from T_ItemList with(nolock) where FFullNumber like :FFullNumber';
    qry1.Parameters.FindParam('FFullNumber').value:=ListItemFNumber+'%';
    qry1.open;
  finally
    ;
  end;
  If qry1.RecordCount>0 then
  begin
    P_ItemID:= qry1.FieldByName('FItemID').AsInteger;
    P_ItemListID:=qry1.FieldByName('FItemListID').AsInteger;
  end;

  If (TB_Submit_BOM.Caption='提交')  then
  begin
    If application.MessageBox(Pchar('警告：是否提交【'+P_th+'】的部件划分类别？'+chr(13)+chr(13)
                                   +'确定要提交本部件吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      If qry1.RecordCount=1 then
      begin
        try
          qry.SQL.Text:='Update T_ItemList Set FSortStatus=1 where FItemListID=:FItemListID';
          qry.Parameters.FindParam('FItemListID').value:=P_ItemListID;
          qry.ExecSQL;
        finally
           ;
        end;
      end
      else
      begin
        try
          qry.SQL.Text:='Update T_ItemList Set FSortStatus=1 where FItemID=:FItemID';
          qry.Parameters.FindParam('FItemID').value:=P_ItemID;
          qry.ExecSQL;
        finally
           ;
        end;
      end;
      TB_Submit_BOM.Caption:='反提交';
      application.MessageBox('提交完毕！','系统提示',MB_ICONINFORMATION);
    end;
    Exit;
  end;
  If (TB_Submit_BOM.Caption='反提交')  then
  begin
    If application.MessageBox(Pchar('警告：是否反提交【'+P_th+'】的部件划分类别？'+chr(13)+chr(13)
                                   +'确定要反提交本部件吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      If qry1.RecordCount=1 then
      begin
        try
          qry.SQL.Text:='Update T_ItemList Set FSortStatus=0  where FItemListID=:FItemListID';
          qry.Parameters.FindParam('FItemListID').value:= P_ItemListID;
          qry.ExecSQL;
        finally
           ;
        end;
      end
      else
      begin
        try
          qry.SQL.Text:='Update T_ItemList Set FSortStatus=0  where FItemID=:FItemID';
          qry.Parameters.FindParam('FItemID').value:= P_ItemID;
          qry.ExecSQL;
        finally
           ;
        end;
      end;
      TB_Submit_BOM.Caption:='提交';
      application.MessageBox('反提交完毕！','系统提示',MB_ICONINFORMATION);
    end;
    Exit;
  end;



end;

procedure TFrm_StockBOM.TB_Check_BOMClick(Sender: TObject);
var
 qry,qry1:TADOquery;
 P_ItemID,P_ItemListID:Integer;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry1:=TAdoQuery.Create(self);
  qry1.ConnectionString:=mdlData.ReadConnStr;

  try
    qry1.SQL.Text:='select * from T_ItemList with(nolock) where FFullNumber like :FFullNumber';
    qry1.Parameters.FindParam('FFullNumber').value:=ListItemFNumber+'%';
    qry1.open;
  finally
    ;
  end;
  If qry1.RecordCount>0 then
  begin
    P_ItemID:= qry1.FieldByName('FItemID').AsInteger;
    P_ItemListID:=qry1.FieldByName('FItemListID').AsInteger;
  end;

  If (TB_Check_BOM.Caption='校对')  then
  begin
    If application.MessageBox(Pchar('警告：是否校对【'+P_th+'】的部件划分类别？'+chr(13)+chr(13)
                                   +'确定要校对本部件吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      If qry1.RecordCount=1 then
      begin
        try
          qry.SQL.Text:='Update T_ItemList Set FSortStatus=2 where FItemListID=:FItemListID';
          qry.Parameters.FindParam('FItemListID').value:=P_ItemListID;
          qry.ExecSQL;
        finally
           ;
        end;
      end
      else
      begin
        try
          qry.SQL.Text:='Update T_ItemList Set FSortStatus=2 where FItemID=:FItemID';
          qry.Parameters.FindParam('FItemID').value:=P_ItemID;
          qry.ExecSQL;
        finally
           ;
        end;
      end;
      TB_Check_BOM.Caption:='反校对';
      application.MessageBox('校对完毕！','系统提示',MB_ICONINFORMATION);
    end;
    Exit;
  end;
  If (TB_Check_BOM.Caption='反校对')  then
  begin
    If application.MessageBox(Pchar('警告：是否反校对【'+P_th+'】的部件划分类别？'+chr(13)+chr(13)
                                   +'确定要反校对本部件吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      If qry1.RecordCount=1 then
      begin
        try
          qry.SQL.Text:='Update T_ItemList Set FSortStatus=1  where FItemListID=:FItemListID';
          qry.Parameters.FindParam('FItemListID').value:= P_ItemListID;
          qry.ExecSQL;
        finally
           ;
        end;
      end
      else
      begin
        try
          qry.SQL.Text:='Update T_ItemList Set FSortStatus=1  where FItemID=:FItemID';
          qry.Parameters.FindParam('FItemID').value:= P_ItemID;
          qry.ExecSQL;
        finally
           ;
        end;
      end;
      TB_Check_BOM.Caption:='校对';
      application.MessageBox('反校对完毕！','系统提示',MB_ICONINFORMATION);
    end;
    Exit;
  end;

end;

procedure TFrm_StockBOM.Act_Status_BOMExecute(Sender: TObject);
var
 qry:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  //是否提交
  try
    qry.SQL.Text:='select * from T_ItemList where FFullNumber like :FFullNumber and isnull(FSortStatus,0)=0';
    qry.Parameters.FindParam('FFullNumber').value:=ListItemFNumber+'%';
    qry.open;
  finally
    ;
  end;

  If qry.RecordCount>0 then
  begin
    TB_PartsSort.Visible:= mdlData.PermissionCheckRights(TFrm_StockBOM.ClassName,'提交');
    TB_Submit_BOM.Visible:= mdlData.PermissionCheckRights(TFrm_StockBOM.ClassName,'提交');
    TB_Submit_BOM.Caption:='提交';
    TB_Check_BOM.Visible:= False;
    TB_Audit_BOM.Visible:= mdlData.PermissionCheckRights(TFrm_StockBOM.ClassName,'审核');
  end;
{  else
  begin
    TB_PartsSort.Visible:= False;
    TB_Submit_BOM.Visible:= False;
    TB_Check_BOM.Visible:= False;
  end; }

  //是否反提交
  try
    qry.SQL.Text:='select * from T_ItemList where FFullNumber like :FFullNumber and isnull(FSortStatus,0)=1';
    qry.Parameters.FindParam('FFullNumber').value:=ListItemFNumber+'%';
    qry.open;
  finally
    ;
  end;
  If qry.RecordCount>0 then
  begin
    TB_PartsSort.Visible:=False;
    TB_Submit_BOM.Visible:= mdlData.PermissionCheckRights(TFrm_StockBOM.ClassName,'提交');
    TB_Submit_BOM.Caption:='反提交';
    TB_Check_BOM.Visible:= True;
    TB_Check_BOM.Visible:= mdlData.PermissionCheckRights(TFrm_StockBOM.ClassName,'校对');
    TB_Check_BOM.Caption:='校对';
    TB_Audit_BOM.Visible:= mdlData.PermissionCheckRights(TFrm_StockBOM.ClassName,'审核');
  end;


   //是否校对
  try
    qry.SQL.Text:='select * from T_ItemList where FFullNumber like :FFullNumber and isnull(FSortStatus,0)=1';
    qry.Parameters.FindParam('FFullNumber').value:=ListItemFNumber+'%';
    qry.open;
  finally
    ;
  end;

  If qry.RecordCount>0 then
  begin
    TB_PartsSort.Visible:= False;
    TB_Check_BOM.Visible:= mdlData.PermissionCheckRights(TFrm_StockBOM.ClassName,'校对');
    TB_Check_BOM.Caption:='校对';
    TB_Submit_BOM.Visible:= True;
    TB_Audit_BOM.Visible:=mdlData.PermissionCheckRights(TFrm_StockBOM.ClassName,'审核');
  end;
 { else
  begin
    TB_PartsSort.Visible:= False;
    TB_Check_BOM.Visible:= False;
    TB_Submit_BOM.Visible:= False;
  end; }

  //是否反校对
  try
    qry.SQL.Text:='select * from T_ItemList where FFullNumber like :FFullNumber and isnull(FSortStatus,0)=2';
    qry.Parameters.FindParam('FFullNumber').value:=ListItemFNumber+'%';
    qry.open;
  finally
    ;
  end;
  If qry.RecordCount>0 then
  begin
    TB_PartsSort.Visible:=False;
    TB_Check_BOM.Visible:= mdlData.PermissionCheckRights(TFrm_StockBOM.ClassName,'校对');
    TB_Check_BOM.Caption:='反校对';
    TB_Check_BOM.Visible:= True;
    TB_Audit_BOM.Visible:= mdlData.PermissionCheckRights(TFrm_StockBOM.ClassName,'审核');
  end;


    //是否审核
  try
    qry.SQL.Text:='select * from T_ItemList where FFullNumber like :FFullNumber and isnull(FSortStatus,0)<>3 ';
    qry.Parameters.FindParam('FFullNumber').value:=ListItemFNumber+'%';
    qry.open;
  finally
    ;
  end;

  If qry.RecordCount>0 then
  begin
    TB_PartsSort.Visible:= False;
    TB_Audit_BOM.Visible:= mdlData.PermissionCheckRights(TFrm_StockBOM.ClassName,'审核');
    TB_Audit_BOM.Caption:='审核';
    TB_PartsSort.Visible:=True;
   // TB_Submit_BOM.Visible:= mdlData.CheckFrmRights(TFrm_StockBOM.ClassName,'提交');
   // TB_Check_BOM.Visible:= mdlData.CheckFrmRights(TFrm_StockBOM.ClassName,'校对');
   end;

  //是否反审核
  try
    qry.SQL.Text:='select * from T_ItemList where FFullNumber like :FFullNumber and isnull(FSortStatus,0)=3';
    qry.Parameters.FindParam('FFullNumber').value:=ListItemFNumber+'%';
    qry.open;
  finally
    ;
  end;
  If qry.RecordCount>0 then
  begin
    TB_PartsSort.Visible:=False;
    TB_Audit_BOM.Visible:= mdlData.PermissionCheckRights(TFrm_StockBOM.ClassName,'审核');
    TB_Audit_BOM.Caption:='反审核';
    TB_Submit_BOM.Visible:= False;
    TB_Check_BOM.Visible:= False;
  end;

end;

procedure TFrm_StockBOM.TB_Audit_BOMClick(Sender: TObject);
var
 qry,qry1:TADOquery;
 P_ItemID,P_ItemListID:Integer;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry1:=TAdoQuery.Create(self);
  qry1.ConnectionString:=mdlData.ReadConnStr;

  try
    qry1.SQL.Text:='select * from T_ItemList with(nolock) where FFullNumber like :FFullNumber';
    qry1.Parameters.FindParam('FFullNumber').value:=ListItemFNumber+'%';
    qry1.open;
  finally
    ;
  end;
  If qry1.RecordCount>0 then
  begin
    P_ItemID:= qry1.FieldByName('FItemID').AsInteger;
    P_ItemListID:=qry1.FieldByName('FItemListID').AsInteger;
  end;

  If (TB_Audit_BOM.Caption='审核')  then
  begin
    If application.MessageBox(Pchar('警告：是否审核【'+P_th+'】的部件划分类别？'+chr(13)+chr(13)
                                   +'确定要审核本部件吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      If qry1.RecordCount=1 then
      begin
        try
          qry.SQL.Text:='Update T_ItemList Set FSortStatus=3 where FItemListID=:FItemListID';
          qry.Parameters.FindParam('FItemListID').value:=P_ItemListID;
          qry.ExecSQL;
        finally
           ;
        end;
      end
      else
      begin
        try
          qry.SQL.Text:='Update T_ItemList Set FSortStatus=3 where FItemID=:FItemID';
          qry.Parameters.FindParam('FItemID').value:=P_ItemID;
          qry.ExecSQL;
        finally
           ;
        end;
      end;
      TB_Audit_BOM.Caption:='反审核';
      application.MessageBox('审核完毕！','系统提示',MB_ICONINFORMATION);
    end;
    Exit;
  end;
  If (TB_Audit_BOM.Caption='反审核')  then
  begin
    If application.MessageBox(Pchar('警告：是否反审核【'+P_th+'】的部件划分类别？'+chr(13)+chr(13)
                                   +'确定要反审核本部件吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      If qry1.RecordCount=1 then
      begin
        try
          qry.SQL.Text:='Update T_ItemList Set FSortStatus=0  where FItemListID=:FItemListID';
          qry.Parameters.FindParam('FItemListID').value:= P_ItemListID;
          qry.ExecSQL;
        finally
           ;
        end;
      end
      else
      begin
        try
          qry.SQL.Text:='Update T_ItemList Set FSortStatus=0  where FItemID=:FItemID';
          qry.Parameters.FindParam('FItemID').value:= P_ItemID;
          qry.ExecSQL;
        finally
           ;
        end;
      end;
      TB_Audit_BOM.Caption:='审核';
      application.MessageBox('反审核完毕！','系统提示',MB_ICONINFORMATION);
    end;
    Exit;
  end;

end;

procedure TFrm_StockBOM.TB_DELErrorClick(Sender: TObject);
var
  qry:TADOQuery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  P_state:=3; //不在新增、修改状态
 {
  begin
    try
      qry.SQL.Text:='Select FStockItemID from V_StockItem where FDepartmentiD is Null';
      qry.Open;
    finally
      ;
    end;
    MData_M3.CopyFromDataSet(qry);
    MData_M3.Active:=True;

    try
      qry.SQL.Text:='Select * from V_StockItem where FDepartmentiD is Null';
      qry.Open;
    finally
      ;
    end;
    MData3.CopyFromDataSet(qry);
    MData3.Active:=True;
  end;
  If MData_M3.RecordCount>0 then
  begin
    If application.MessageBox('是否删除以下错误的生产作业表信息？','提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      try
        qry.SQL.Text:='Delete from T_StockItem where FStockItemID in (select FStockItemID from V_StockItem where FDepartmentiD is Null)';
        qry.ExecSQL;
      finally
        ;
      end;
      application.MessageBox('错误单据已删除！','系统提示',MB_ICONINFORMATION);
    end;
  end;
  application.MessageBox('不存在错误单据！','系统提示',MB_ICONINFORMATION);

  P_state:=2; //不在新增、修改状态
 }
end;

procedure TFrm_StockBOM.TB_SUMClick(Sender: TObject);
begin
  inherited;
  P_state:=3;
  If mdata_M3.RecordCount>0 then
  begin
    MData_M3.First;
    while not MData_M3.eof do
    begin
      Act_Weigth.Execute;
      MData_M3.Next;
    end;
    application.MessageBox('重量计算完毕！','系统提示',MB_ICONINFORMATION);
  end
  else
    application.MessageBox('无数据计算！','系统提示',MB_ICONINFORMATION);
  P_state:=2;

end;

procedure TFrm_StockBOM.E_LocatePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var selValue,P_FFullNumber : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If E_Locate.Text='' then
     Exit;


  If UserFDepartmentsort=1 then //事业部
  begin
    try
      qry.SQL.Text:='select * from VT_DesignBOM with(nolock) where FDepartmentID=:FDepartmentID and '
                   +'FItemNumber like :FItemNumber  order by FItemNumber ';
      qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
      qry.Parameters.FindParam('FItemNumber').value:=Trim(E_Locate.Text)+'%';
      qry.Open;
    finally
      ;
    end;
  end;
  If UserFDepartmentsort=3 then //公共平台
  begin
    try
      qry.SQL.Text:='select * from VT_DesignBOM with(nolock) where  '
                   +'FItemNumber like :FItemNumber  order by FItemNumber ';
      qry.Parameters.FindParam('FItemNumber').value:=Trim(E_Locate.Text)+'%';
      qry.Open;
    finally
      ;
    end;
  end;
  selValue:=select('选择图号','FNumber','FParentNumber','FNumber','FName',qry);
  If (Length(selValue)>0) then
  begin
    P_FFullNumber:=Trim(qry.FieldByName('FFullNumber').Value);
  end;

  try
    qry.SQL.Text:='Select * from V_DesignBOM_Structure with(nolock) where FFullNumber like :FFullNumber '
                 +'order by FFullNumber ';
    qry.Parameters.FindParam('FFullNumber').Value:=P_FFullNumber+'%';
    qry.Open;
  finally
     ;
  end;
  MData_DBOM.CopyFromDataSet(qry);
  MData_DBOM.Active:=True;
  MData_DBOM.First;

end;

procedure TFrm_StockBOM.E_Locate_StockPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue,P_FFullNumber : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If E_Locate_Stock.Text='' then
     Exit;
  If UserFDepartmentsort=1 then //事业部
  begin
    try
      qry.SQL.Text:='select * from VT_Stock with(nolock) where FDepartmentID=:FDepartmentID and '
                   +'FBranchItemNumber like :FBranchItemNumber  order by FBranchItemNumber ';
      qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
      qry.Parameters.FindParam('FBranchItemNumber').value:=Trim(E_Locate_Stock.Text)+'%';
      qry.Open;
    finally
      ;
    end;
  end;
  If UserFDepartmentsort=3 then //公共平台
  begin
    try
      qry.SQL.Text:='select * from VT_Stock with(nolock) where '
                   +'FBranchItemNumber like :FBranchItemNumber  order by FBranchItemNumber ';
      qry.Parameters.FindParam('FBranchItemNumber').value:=Trim(E_Locate_Stock.Text)+'%';
      qry.Open;
    finally
      ;
    end;
  end;
  selValue:=select('选择入库类别','FNumber','FParentNumber','FNumber','FName',qry);
  If (Length(selValue)>0) then
  begin
    P_FFullNumber:=Trim(qry.FieldByName('FNumber').Value);
  end;

  try
    qry.SQL.Text:='Select * from V_StockItem with(nolock) where FFullNumber like :FFullNumber '
                 +'order by FFullNumber ';
    qry.Parameters.FindParam('FFullNumber').Value:=P_FFullNumber+'%';
    qry.Open;
  finally
     ;
  end;
  MData_M3.CopyFromDataSet(qry);
  MData_M3.Active:=True;
  MData_M3.First;

end;

procedure TFrm_StockBOM.cxGrid_PTListContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV_PTList';
  Gm:='mdata_PTList';
  Gr:='cxGrid_PTList';
  Act_Menu_Set.Execute;

end;

end.
