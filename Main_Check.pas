unit Main_Check;

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
  TFlatPanelUnit,Comobj, cxLookAndFeelPainters, cxSpinEdit, RzStatus,
  ActnList, RzLabel, cxButtons,// cxLookAndFeelPainters,   cxButtons,  cxSpinEdit,  RzLabel, ActnList, RzStatus
   cxTimeEdit, jpeg,
  cxCheckComboBox, cxGridBandedTableView, cxGridDBBandedTableView, DBTables,
  Menus;

type
  TFrm_Check = class(TFrm_GridBass)
    ImageList: TImageList;
    frReport: TfrReport;
    frDBDataSet: TfrDBDataSet;
    PC_2: TRzPageControl;
    TS_Check: TRzTabSheet;
    TS_Stock: TRzTabSheet;
    PanelBkGnd: TPanel;
    MData_CList: TdxMemData;
    DS_Mdata_CList: TDataSource;
    Panel7: TPanel;
    P_Btn: TPanel;
    CancelBtn_M: TcxButton;
    OKBtn_M: TcxButton;
    RSP_CList: TRzSizePanel;
    RzSizePanel1: TRzSizePanel;
    MyTreeView_SList: TTreeView;
    Image2: TImage;
    Label1: TLabel;
    ToolBar_CItem: TToolBar;
    TB_App: TToolButton;
    TB_Del: TToolButton;
    TB_Ref_Check: TToolButton;
    Label9: TLabel;
    E_FClientFullName: TcxTextEdit;
    TB_Edit_M: TToolButton;
    TB_Exit: TToolButton;
    TB_Prin: TToolButton;
    Panel3: TPanel;
    Panel11: TPanel;
    Label3: TLabel;
    Image3: TImage;
    Label4: TLabel;
    ToolBar5: TToolBar;
    TB_Ref_Stock: TToolButton;
    RzSizePanel6: TRzSizePanel;
    RzLabel9: TRzLabel;
    RSP_StockIn: TRzPanel;
    RSP_List: TPageControl;
    TabSheet3: TTabSheet;
    cxGrid_SList: TcxGrid;
    cxGV_SList: TcxGridDBTableView;
    Num_3: TcxGridDBColumn;
    th_3: TcxGridDBColumn;
    mc_3: TcxGridDBColumn;
    gg_3: TcxGridDBColumn;
    SelRemark_3: TcxGridDBColumn;
    FSumQry_3: TcxGridDBColumn;
    FSuttle_3: TcxGridDBColumn;
    FSumSuttle_3: TcxGridDBColumn;
    FStockInListRemark_3: TcxGridDBColumn;
    FFullNumber_3: TcxGridDBColumn;
    ssFullNumber_3: TcxGridDBColumn;
    FK3Number_3: TcxGridDBColumn;
    FName_3: TcxGridDBColumn;
    FModel_3: TcxGridDBColumn;
    UnitName_3: TcxGridDBColumn;
    is_3: TcxGridDBColumn;
    FStockInListID_3: TcxGridDBColumn;
    FPartsNumber_3: TcxGridDBColumn;
    FPartsCode_3: TcxGridDBColumn;
    FWorkParts_3: TcxGridDBColumn;
    FK3ItemID_3: TcxGridDBColumn;
    cxGL_SList: TcxGridLevel;
    RSP_Item: TRzSizePanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    cxGrid_SItem: TcxGrid;
    cxGV_SItem: TcxGridDBTableView;
    FBranchItemNumber_M3: TcxGridDBColumn;
    FPartsCode_M3: TcxGridDBColumn;
    FWorkPartsNum_M3: TcxGridDBColumn;
    FWorkParts_M3: TcxGridDBColumn;
    FPartsName_M3: TcxGridDBColumn;
    FStockInStatusNotes_M: TcxGridDBColumn;
    FStockInStatus_M: TcxGridDBColumn;
    FStockInItemDate_M3: TcxGridDBColumn;
    FStockInWrite_M3: TcxGridDBColumn;
    FItemNumber_M3: TcxGridDBColumn;
    FBranchFileNo_M3: TcxGridDBColumn;
    FStockInWriteDate_M3: TcxGridDBColumn;
    FFileNo_M3: TcxGridDBColumn;
    FClientFullName_M3: TcxGridDBColumn;
    FStockInItemID_M3: TcxGridDBColumn;
    FStockInUserNum_M3: TcxGridDBColumn;
    FStockInSubmitDate_M: TcxGridDBColumn;
    FStockInUserNumDate_M3: TcxGridDBColumn;
    FItemId_M3: TcxGridDBColumn;
    FItemModel_M3: TcxGridDBColumn;
    FProductID_M3: TcxGridDBColumn;
    FStockInCheck_M: TcxGridDBColumn;
    FStockInCheckDate_M: TcxGridDBColumn;
    FPlanTenderAudit_M: TcxGridDBColumn;
    FPlanTenderAuditDate_M: TcxGridDBColumn;
    FPlanTenderPushDown_M: TcxGridDBColumn;
    FPlanTenderPushDownDate_M: TcxGridDBColumn;
    FPlanTenderID_M: TcxGridDBColumn;
    FPlanTenderNo_M: TcxGridDBColumn;
    cxGL_SItem: TcxGridLevel;
    MData_SItem: TdxMemData;
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
    MData_SList: TdxMemData;
    MData_SListFCode: TStringField;
    MData_SListth1: TStringField;
    MData_SListmc1: TStringField;
    MData_SListgg1: TStringField;
    MData_SListSelRemark_1: TStringField;
    MData_SListssth1: TStringField;
    MData_SListFK3Number_1: TStringField;
    MData_SListFName1: TStringField;
    MData_SListFModel1: TStringField;
    MData_SListunitName1: TStringField;
    MData_SListjs1: TStringField;
    MData_SListFSumQry1: TFloatField;
    MData_SListFQry1: TFloatField;
    MData_SListFSuttle1: TFloatField;
    MData_SListFNumber1: TStringField;
    MData_SListFParentNumber1: TStringField;
    MData_SListFFullNumber1: TStringField;
    MData_SListNum: TStringField;
    MData_SListabc: TStringField;
    MData_SListFFStockInListRemark: TStringField;
    MData_SListFStockInListID: TIntegerField;
    MData_SListFInSumSuttle: TFloatField;
    MData_SListFInQry: TFloatField;
    MData_SListFInSumQry: TFloatField;
    DS_MdataSList: TDataSource;
    DS_Mdata_SItem: TDataSource;
    RzSizePanel2: TRzSizePanel;
    PageControl3: TPageControl;
    TabSheet4: TTabSheet;
    cxGrid_CList: TcxGrid;
    cxGV_CList: TcxGridDBTableView;
    FCheckListNum: TcxGridDBColumn;
    th: TcxGridDBColumn;
    mc: TcxGridDBColumn;
    gg: TcxGridDBColumn;
    Sel: TcxGridDBColumn;
    FCheckQry: TcxGridDBColumn;
    FSuttle: TcxGridDBColumn;
    FCheckYesQry: TcxGridDBColumn;
    FCheckNoQry: TcxGridDBColumn;
    FSumSuttle: TcxGridDBColumn;
    FCheckListRemark: TcxGridDBColumn;
    FCheckNum: TcxGridDBColumn;
    FFullNumber: TcxGridDBColumn;
    FCheckItemID: TcxGridDBColumn;
    FCheckListID: TcxGridDBColumn;
    cxGL_CList: TcxGridLevel;
    MData_CItem: TdxMemData;
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
    DS_Mdata_CItem: TDataSource;
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
    ActPartsSort: TAction;
    ActWeigth: TAction;
    ActWorkBOM: TAction;
    ActFullName: TAction;
    ActTake: TAction;
    ActAudit: TAction;
    ActProcessSort: TAction;
    stbBar: TRzStatusBar;
    RzClockStatus1: TRzClockStatus;
    RzKeyStatus1: TRzKeyStatus;
    RzKeyStatus2: TRzKeyStatus;
    RzKeyStatus3: TRzKeyStatus;
    stbMsg: TRzFieldStatus;
    SaveDialog1: TSaveDialog;
    TB_CheckList: TToolButton;
    FSumQry: TcxGridDBColumn;
    FFullNumber_M3: TcxGridDBColumn;
    FSumCheckYesQry_3: TcxGridDBColumn;
    Act_CheckQry: TAction;
    Act_Status_M: TAction;
    RzSizePanel4: TRzSizePanel;
    PageControl2: TPageControl;
    TabSheet2: TTabSheet;
    cxGrid_CItem: TcxGrid;
    cxGV_CItem: TcxGridDBTableView;
    FCheckNum_M: TcxGridDBColumn;
    FTeamName_M: TcxGridDBColumn;
    FBranchItemNumber: TcxGridDBColumn;
    FClientFullName: TcxGridDBColumn;
    FCheckStatusNotes: TcxGridDBColumn;
    FCheckStatus: TcxGridDBColumn;
    FCheckWrite: TcxGridDBColumn;
    FCheckWriteDate: TcxGridDBColumn;
    FCheckSubmitDate: TcxGridDBColumn;
    FCheckCheck: TcxGridDBColumn;
    FCheckCheckDate: TcxGridDBColumn;
    FAgentName: TcxGridDBColumn;
    FCheckNo: TcxGridDBColumn;
    FAgentID: TcxGridDBColumn;
    FCheckWriteID: TcxGridDBColumn;
    FCheckItemID_M: TcxGridDBColumn;
    cxGL_CItem: TcxGridLevel;
    P_Btn3: TPanel;
    SelCancelBtn: TcxButton;
    SelBtn: TcxButton;
    FStockCheckNum_3: TcxGridDBColumn;
    FSumCheckQry_3: TcxGridDBColumn;
    FWorkPartsNum: TcxGridDBColumn;
    FWorkParts: TcxGridDBColumn;
    TB_RecordRef: TToolButton;
    FCheckICQCID: TcxGridDBColumn;
    FCheckICQC: TcxGridDBColumn;
    PC_Check: TPageControl;
    TS_CheckList: TTabSheet;
    TS_Write: TTabSheet;
    MyTreeView_CheckList: TTreeView;
    TS_ICQC: TTabSheet;
    MyTreeView_CheckWrite: TTreeView;
    MyTreeView_CheckICQC: TTreeView;
    FFactureName_M3: TcxGridDBColumn;
    ToolBar_CList: TToolBar;
    TB_EditLList: TToolButton;
    OKBtn: TToolButton;
    CancelBtn: TToolButton;
    FCheckDetail_3: TcxGridDBColumn;
    FSumCheckNoQry_3: TcxGridDBColumn;
    TB_CheckQry: TToolButton;
    Act_Set_Open_M: TAction;
    Act_Set_Close_M: TAction;
    Act_Set_Close: TAction;
    Act_Set_Open: TAction;
    FTeamID: TcxGridDBColumn;
    FWorkShop_M: TcxGridDBColumn;
    TS_Team: TTabSheet;
    TS_Item: TTabSheet;
    MyTreeView_CheckTeam: TTreeView;
    MyTreeView_CheckItem: TTreeView;
    Act_PC_CheckList: TAction;
    ToolButton1: TToolButton;
    PM: TPopupMenu;
    N_Edit: TMenuItem;
    N_Filter: TMenuItem;
    N_Sort: TMenuItem;
    N_Group: TMenuItem;
    N_Set: TMenuItem;
    N_Out: TMenuItem;
    Act_Menu: TAction;
    Act_Menu_Set: TAction;
    Act_Update_CheckQry: TAction;
    Panel1: TPanel;
    Label2: TLabel;
    E_th: TcxButtonEdit;
    Act_Update_CheckYesQry: TAction;
    TB_CheckPatch: TToolButton;
    procedure FormResize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TB_EXITClick(Sender: TObject);
    procedure TB_AppClick(Sender: TObject);
    procedure TB_DelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);

    procedure Set_MaxNum;
    procedure NumPropertiesCloseUp(Sender: TObject);
    procedure MyTreeView_CheckListExpanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure MyTreeView_SListExpanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure MyTreeView_CheckListChange(Sender: TObject; Node: TTreeNode);
    procedure MyTreeView_SListChange(Sender: TObject; Node: TTreeNode);
    procedure TB_Ref_CheckClick(Sender: TObject);
    procedure TB_Ref_StockClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ToolButton12Click(Sender: TObject);
    procedure OKBtn_MClick(Sender: TObject);
    procedure TB_Edit_MClick(Sender: TObject);
    procedure CancelBtn_MClick(Sender: TObject);
    procedure SelPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxGV_SItemFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure cxGV_CItemFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure TB_SubmitClick(Sender: TObject);
    procedure TB_CheckClick(Sender: TObject);
    procedure TB_CheckListClick(Sender: TObject);
    procedure TB_PrinClick(Sender: TObject);
    procedure MData_CListBeforePost(DataSet: TDataSet);
    procedure Act_CheckQryExecute(Sender: TObject);
    procedure Act_Status_MExecute(Sender: TObject);
    procedure FBranchItemNumberPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxGV_SListCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure SelBtnClick(Sender: TObject);
    procedure SelCancelBtnClick(Sender: TObject);
    procedure TB_RecordRefClick(Sender: TObject);
    procedure FCheckICQCPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure MyTreeView_CheckWriteExpanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure MyTreeView_CheckWriteChange(Sender: TObject; Node: TTreeNode);
    procedure MyTreeView_CheckICQCExpanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure MyTreeView_CheckICQCChange(Sender: TObject; Node: TTreeNode);
    procedure PC_CheckChange(Sender: TObject);
    procedure TB_EditLListClick(Sender: TObject);
    procedure OKBtnClick(Sender: TObject);
    procedure CancelBtnClick(Sender: TObject);
    procedure TB_CheckQryClick(Sender: TObject);
    procedure Act_Set_Open_MExecute(Sender: TObject);
    procedure Act_Set_Close_MExecute(Sender: TObject);
    procedure Act_Set_OpenExecute(Sender: TObject);
    procedure Act_Set_CloseExecute(Sender: TObject);
    procedure FTeamPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure MyTreeView_CheckTeamExpanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure MyTreeView_CheckItemExpanding(Sender: TObject;
      Node: TTreeNode; var AllowExpansion: Boolean);
    procedure MyTreeView_CheckTeamChange(Sender: TObject; Node: TTreeNode);
    procedure MyTreeView_CheckItemChange(Sender: TObject; Node: TTreeNode);
    procedure Act_PC_CheckListExecute(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure Act_MenuExecute(Sender: TObject);
    procedure Act_Menu_SetExecute(Sender: TObject);
    procedure cxGrid_SItemContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure cxGrid_SListContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure cxGrid_CListContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure cxGrid_CItemContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure N_EditClick(Sender: TObject);
    procedure N_FilterClick(Sender: TObject);
    procedure N_SortClick(Sender: TObject);
    procedure N_GroupClick(Sender: TObject);
    procedure N_SetClick(Sender: TObject);
    procedure N_OutClick(Sender: TObject);
    procedure Act_Update_CheckQryExecute(Sender: TObject);
    procedure E_thPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure Act_Update_CheckYesQryExecute(Sender: TObject);
    procedure TB_CheckPatchClick(Sender: TObject);
  private
    P_List:String;
    P_i:boolean;


    { Private declarations }
    function AddMain:bool;
    function AddList:bool;
    function AddRd:bool;
    function EditRd:bool;
    function DelRd:bool;
    function EditAddRd:bool;


  public
    P_state,P_state2,P_CheckItemID,P_PackNo,P_MaxNum,P_Status,P_FTeamID:Integer;
    P_th1,P_th2,P_th3:String;
    ListFNumber_CList,ListFNumber_CheckWrite,ListFNumber_CheckICQC,ListFNumber_CheckTeam,ListFNumber_CheckItem:string;
   // P_Isleaf_SList,P_Isleaf_CList,P_Isleaf_CheckWrite,P_Isleaf_CheckICQC,P_Isleaf_CheckTeam,P_Isleaf_CheckItem :Integer;
    P_Isleaf_CheckWrite,P_Isleaf_CheckICQC,P_Isleaf_CheckTeam,P_Isleaf_CheckItem :Integer;
    P_List_CheckWrite:string;
    GV,Gr,Gm,Mn:string;

    { Public declarations }
  end;

var
  Frm_Check: TFrm_Check;


implementation

uses FRMDATA,  COMMON, FrmSelect, ProgBar, PROGRASS;

{$R *.dfm}
procedure TFrm_Check.Set_MaxNum;
var
  proc:TADOStoredProc;
begin
  proc:=TADOStoredProc.Create(self);
  proc.ConnectionString:=mdlData.ReadConnStr;
  proc.CommandTimeout:=500;

  try
    proc.ProcedureName:='P_GetICMaxNum;1';
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=20;
      name := '@TableName';
      value:='T_CheckItem';
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
    proc.Free;
  finally
     ;
  end;
end;




function TFrm_Check.DelRd: bool;
var
 qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Delete from T_CheckItem where FCheckItemID=:FCheckItemID';
    qry.Parameters.FindParam('FCheckItemID').value:=MData_CItem['FCheckItemID'];
    result:=qry.ExecSQL>=0;
  finally
    ;
  end;
  qry.Free;
end;


function TFrm_Check.AddMain: bool;
var
 qry,qry1: TADOQuery;
 P_FCheckNo:Integer;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry1:=TADOQuery.Create(Self);
  qry1.ConnectionString:=mdlData.ReadConnStr;
 // If  P_state=0 then //新增
  begin
  //按日期取最大编号
    try
      qry.SQL.Text:='Select isnull(Max(FCheckNo),0) as FCheckNo from V_CheckItem with(nolock) where FAgentID=:FAgentID and FCheckYear+FCheckMonth=:yymm';
      qry.Parameters.FindParam('FAgentID').Value:=UserFDepartmentID;
      qry.Parameters.FindParam('yymm').value:=Copy(ForMatDateTime('yyyymmdd',MData_CItem['FCheckWriteDate']),1,6);
      qry.Open;
    finally
       ;
    end;
    If qry.RecordCount>0 then
      P_FCheckNo:=qry.fieldByName('FCheckNo').Value+1;
  end;

  try
    qry.SQL.Text:='Insert into T_CheckItem(FCheckItemID,FCheckNo,FTeamID,FCheckICQCID,FCheckStatus,FCheckWriteID,FCheckWriteDate,FAgentID) '
                 +'values(:FCheckItemID,:FCheckNo,:FTeamID,:FCheckICQCID,:FCheckStatus,:FCheckWriteID,:FCheckWriteDate,:FAgentID)';
    qry.Parameters.FindParam('FCheckItemID').Value:=P_MaxNum;
    If  P_state=0 then //新增
        qry.Parameters.FindParam('FCheckNo').Value:=P_FCheckNo;
    If  P_state=1 then //修改
    begin
      try
        qry1.SQL.Text:='Select FCheckYear+FCheckMonth as yymm from V_CheckItem where FCheckItemID=:FCheckItemID ';
        qry1.Parameters.FindParam('FCheckItemID').Value:=MData_CItem['FCheckItemID'];
        qry1.Open;
      finally
        ;
      end;
      If qry1.FieldByName('yymm').AsString=Copy(ForMatDateTime('yyyymmdd',MData_CItem['FCheckWriteDate']),1,6) then
         qry.Parameters.FindParam('FCheckNo').Value:=MData_CItem['FCheckNo']
      else
         qry.Parameters.FindParam('FCheckNo').Value:=P_FCheckNo;
    end;
    qry.Parameters.FindParam('FTeamID').Value:=MData_CItem['FTeamID'];
    qry.Parameters.FindParam('FCheckICQCID').Value:=MData_CItem['FCheckICQCID'];
    qry.Parameters.FindParam('FCheckStatus').Value:=0;
    qry.Parameters.FindParam('FCheckWriteID').Value:=UserNumID;
    qry.Parameters.FindParam('FCheckWriteDate').Value:=MData_CItem['FCheckWriteDate'];
    qry.Parameters.FindParam('FAgentID').Value:=UserFDepartmentID;
    result:=qry.ExecSQL>=1;
  finally
     ;
  end;
  MData_CItem.Edit;
  MData_CItem['FCheckStatus']:=0;
  MData_CItem['FCheckStatusNotes']:='填单';
  MData_CItem.Post;
  TB_Submit.Visible:=True;
  qry.Free;
  
end;

function TFrm_Check.AddList: bool;
var
  qry: TADOQuery;
  i:Integer;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
    mdata_CList.Edit;
    mdata_CList.SortedField:='FFullNumber';
    try
    qry.SQL.Text:='Insert into T_CheckList(FCheckItemID,FCheckListNum,th,mc,gg,FCheckQry,FCheckYesQry,FCheckNoQry,FSuttle,FCheckListRemark,FFullNumber) '
                 +'values(:FCheckItemID,:FCheckListNum,:th,:mc,:gg,:FCheckQry,:FCheckYesQry,:FCheckNoQry,:FSuttle,:FCheckListRemark,:FFullNumber)';
    mdata_CList.First;
    i:=1;
    while not mdata_CList.eof do
    begin
      If (mdata_CList['FCheckQry']<>0) then
      begin
        If qry.Active then qry.Close;
        qry.Parameters.FindParam('FCheckItemID').value:= P_MaxNum;
        qry.Parameters.FindParam('FCheckListNum').value:= i;
        qry.Parameters.FindParam('th').value:= mdata_CList['th'];
        qry.Parameters.FindParam('mc').value:= mdata_CList['mc'];
        qry.Parameters.FindParam('gg').value:= mdata_CList['gg'];
        qry.Parameters.FindParam('FCheckQry').value:= mdata_CList['FCheckQry'];
        qry.Parameters.FindParam('FCheckYesQry').value:= mdata_CList['FCheckQry'];
       // qry.Parameters.FindParam('FCheckYesQry').value:= mdata_CList['FCheckYesQry'];
        qry.Parameters.FindParam('FCheckNoQry').value:= mdata_CList['FCheckNoQry'];
        qry.Parameters.FindParam('FSuttle').value:= mdata_CList['FSuttle'];
        qry.Parameters.FindParam('FCheckListRemark').value:=mdata_CList['FCheckListRemark'];
        qry.Parameters.FindParam('FFullNumber').value:=mdata_CList['FFullNumber'];
        result:=qry.ExecSQL>=1;
        if not result then break;
      end;
        mdata_CList.Next;
        i:=i+1;
     end;
   finally
     qry.Free;
   end;

end;


function TFrm_Check.AddRd: bool;
var
 qry:TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  result:=False;

  MData_CItem.Edit;
  MData_CItem.Post;

  mdata_CList.Edit;
  mdata_CList.Post;
  If mdata_CList.RecordCount<=0 then
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


function TFrm_Check.EditRd:bool;
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

function TFrm_Check.EditAddRd:bool;
var
 qry:TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  result:=False;

  If MData_SList.RecordCount<=0 then
  begin
    result:=True;
    Exit;
  end;

  MData_SList.Edit;
  MData_SList.Post;

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

procedure TFrm_Check.FormResize(Sender: TObject);
begin
  inherited;
  Self.Caption:=UserFDepartmentName+'检验单';
end;

procedure TFrm_Check.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=cafree;
  Frm_Check:=nil;
end;

procedure TFrm_Check.TB_EXITClick(Sender: TObject);
begin
  inherited;
  Self.Close;
end;

procedure TFrm_Check.TB_AppClick(Sender: TObject);
Var qry: TADOQuery;
    i,j:Integer;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  P_state :=0; //新增
  try
    qry.SQL.Text:='select * from V_StockItem with(nolock) where FStockItemID=0';
    qry.Open;
  finally
     ;
  end;
  MData_SList.CopyFromDataSet(qry);
  mdata_SItem.CopyFromDataSet(qry);
  MData_SList.Active:=True;
  mdata_SItem.Active:=True;

  try
    qry.SQL.Text:='select * from V_CheckList where FCheckListID=0';
    qry.Open;
  finally
     ;
  end;
  mdata_CList.CopyFromDataSet(qry);
  MData_CItem.CopyFromDataSet(qry);
  MData_CItem.Active:=True;
  MData_CItem.Append;
  MData_CItem.Edit;
  mdata_CList.Active:=True;
  mdata_CList.Append;
  MData_CItem.Edit;
  FSumQry.Visible:=True;
  Act_Set_Open_M.Execute;
  If (P_state =0) then
     MData_CItem['FCheckWriteDate']:=date();


end;

procedure TFrm_Check.TB_DelClick(Sender: TObject);
var
  qry:TADOQuery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  If application.MessageBox(Pchar('警告：是否删除【'+P_th2+'】的检验单信息？'+chr(13)+chr(13)
                                 +'删除数据操作将不可恢复，确定要删除吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
  If application.MessageBox(Pchar('再次警告：是否删除：【'+P_th2+'】的检验单信息？'+chr(13)+chr(13)
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
  mdata_CList.Close;
  Act_CheckQry.Execute;  //检验数量计算

  qry.Free;

end;

procedure TFrm_Check.FormCreate(Sender: TObject);
begin
  inherited;
  TS_Stock.TabEnabled:=False;
  TB_App.Visible:= mdlData.CheckFrmRights(TFrm_Check.ClassName,'新增');
  TB_EditLList.Visible:= mdlData.CheckFrmRights(TFrm_Check.ClassName,'校对');
  ToolBar_CList.Visible:= mdlData.CheckFrmRights(TFrm_Check.ClassName,'删除');

 { Case mdlData.CheckFrmRights(TFrm_Check.ClassName,'查询') of
      True:
      begin
        PC_Check.ActivePage:=TS_CheckList;
        TS_CheckList.TabVisible:=True;
        TS_Write.TabVisible:=False;
        TS_ICQC.TabVisible:=False;
      end;
   end; }

  If mdlData.CheckFrmRights(TFrm_Check.ClassName,'查询')=True then
  begin
    PC_Check.ActivePage:=TS_CheckList;
    TS_CheckList.TabVisible:=True;
    TS_Write.TabVisible:=False;
    TS_ICQC.TabVisible:=False;
  end;

  If mdlData.CheckFrmRights(TFrm_Check.ClassName,'新增')=True then
  begin
    PC_Check.ActivePage:=TS_Write;
    TS_ICQC.TabVisible:=False;
    TS_CheckList.TabVisible:=False;
    TS_Write.TabVisible:=True;
  end;
  If mdlData.CheckFrmRights(TFrm_Check.ClassName,'校对')=True then
  begin
    PC_Check.ActivePage:=TS_ICQC;
    TS_ICQC.TabVisible:=True;
    TS_Write.TabVisible:=False;
    TS_CheckList.TabVisible:=False;
  end;

  P_state:=2;
  P_FTeamID:=0;
end;

procedure TFrm_Check.NumPropertiesCloseUp(Sender: TObject);
Var i:integer;
begin
  inherited;
  MData_SList.Edit;
  MData_SList.Post;
  MData_SList.Edit;


  If pos('(',MData_SList['Num'])=0 then
  begin
    If StrToInt(MData_SList['Num'])>0 then
    begin
      i:=StrToInt(MData_SList['Num']);
      MData_SList['FFullNumber']:=MData_SList['ssFullNumber']+'.'+Format('%.4d',[i]);
    end
    else
      MData_SList['FFullNumber']:=MData_SList['FullNumber'];
  end
  else
  begin
    i:=StrToInt(Copy(MData_SList['Num'],pos('(',MData_SList['Num'])+1,(pos(')',MData_SList['Num'])-pos('(',MData_SList['Num'])-1)));
    MData_SList['FFullNumber']:=MData_SList['ssFullNumber']+'.'+Format('%.4d',[i]);
  end;

end;

procedure TFrm_Check.MyTreeView_CheckListExpanding(Sender: TObject;
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

  qry.SQL.Text:='Select * from VT_Check where FParentNumber= '''
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
    with MyTreeView_CheckList.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('Isleaf').value;
    end;
    qry.Next;
  end;
end;

procedure TFrm_Check.MyTreeView_SListExpanding(Sender: TObject;
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

 // qry.SQL.Text:='Select * from VT_Stock_Dep_Team with(nolock) where FParentNumber= '''
  qry.SQL.Text:='Select * from VT_Stock_Dep with(nolock) where FParentNumber= '''
               +PTree(Node.Data).ID+''' order by FBranchItemNumber,FNumber';

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
    P.Status:= qry.FieldByName('FFactureID').Value;
    P.Flag := cNoLoadFlag;                            // 新节点，未加载标志
    with MyTreeView_SList.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('Isleaf').value;
    end;
    qry.Next;
  end;
end;

procedure TFrm_Check.MyTreeView_CheckListChange(Sender: TObject; Node: TTreeNode);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If Node = nil then Exit;
  with PTree(Node.Data)^ do
  begin
    ListFNumber_CList:=trim(PTree(Node.Data).FNumber);
    P_List_CList:=PTree(Node.Data).Caption;
    P_Isleaf_CList:=PTree(Node.Data).Isleaf;
    mdata_CList.DisableControls;
    cxGV_CList.DataController.DataModeController.GridMode:=True;
    cxGV_CList.DataController.DataModeController.SmartRefresh:=True;

    Act_PC_CheckList.Execute;
    Act_Status_M.Execute;  //权限设置

    mdata_CList.EnableControls;
    cxGV_CList.DataController.DataModeController.GridMode:=False;
    cxGV_CList.DataController.DataModeController.SmartRefresh:=False;

 end;

end;

procedure TFrm_Check.MyTreeView_SListChange(Sender: TObject; Node: TTreeNode);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If Node = nil then Exit;
  with PTree(Node.Data)^ do
  begin
    ListFNumber_SList:=trim(PTree(Node.Data).FNumber);
    P_th:=trim(PTree(Node.Data).Caption);
    P_Isleaf_SList:=PTree(Node.Data).Isleaf;
    P_Status:=PTree(Node.Data).Status;
    If PTree(Node.Data).Isleaf>0 then
    begin
       //If MyItemListwhere(qry,mdata_SItem,'V_StockItem','cast(FTeamID as nvarchar(20))+'';''+cast(FFactureID as nvarchar(20))+'';''+FFullNumber',ListFNumber_SList,' and FFactureID='+IntToStr(P_Status),'FFullNumber',) then
      // If MyItemListwhere(qry,MData_SList,'V_StockList','cast(FListTeamID as nvarchar(20))+'';''+cast(FFactureID as nvarchar(20))+'';''+FFullNumber',ListFNumber_SList,' and FFactureID='+IntToStr(P_Status),'FFullNumber',) then
       If MyItemListFieldWhere(qry,Mdata_SItem,' * ','V_StockItem','cast(FFactureID as nvarchar(20))+'';''+FFullNumber',ListFNumber_SList,' and FFactureID='+IntToStr(UserFDepartmentID),'FFullNumber',) then
       If MyItemListwhere(qry,MData_SList,'V_StockList','cast(FFactureID as nvarchar(20))+'';''+FFullNumber',ListFNumber_SList,' and FFactureID='+IntToStr(P_Status),'FFullNumber',) then
    end
    else
    begin
      mdata_SItem.Close;
      MData_SList.Close;
    end;

    If PTree(Node.Data).Isleaf>=3 then
    begin
      SelBtn.Visible:=True;
      SelCancelBtn.Visible:=True;

      P_Btn3.Visible:=True;
    end
    else
       P_Btn3.Visible:=False;

    MData_SList.EnableControls;
  end;

end;

procedure TFrm_Check.TB_Ref_CheckClick(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If PC_Check.ActivePage=TS_CheckList then
  begin
    If not TreeVeiwListWhere(qry,MyTreeView_CheckList,'VT_Check',' and FAgentID='+IntToStr(UserFDepartmentID) ) then
    Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
    Exit;
  end;
  If PC_Check.ActivePage=TS_Write then
  begin
     If not TreeVeiwListWhere(qry,MyTreeView_CheckWrite,'VT_Check_Write',' and FAgentID='+IntToStr(UserFDepartmentID)+' and FCheckWriteID='+IntToStr(UserNumID) ) then
     Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
    Exit;
  end;
  If PC_Check.ActivePage=TS_ICQC then
  begin
     If not TreeVeiwListWhere(qry,MyTreeView_CheckICQC,'VT_Check_ICQC',' and FAgentID='+IntToStr(UserFDepartmentID)+' and FCheckICQCID='+IntToStr(UserNumID) ) then
     Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
    Exit;
  end;
  If PC_Check.ActivePage=TS_Team then
  begin
     If not TreeVeiwListWhere(qry,MyTreeView_CheckTeam,'VT_Check_Team',' and FAgentID='+IntToStr(UserFDepartmentID) ) then
     Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
    Exit;
  end;
  If PC_Check.ActivePage=TS_Item then
  begin
     If not TreeVeiwListWhere(qry,MyTreeView_CheckItem,'VT_Check_Item',' and FAgentID='+IntToStr(UserFDepartmentID) ) then
     Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
    Exit;
  end;
end;

procedure TFrm_Check.TB_Ref_StockClick(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If UserFDepartmentsort=1 then //事业部
  begin
    If not TreeVeiwListWhere(qry,MyTreeView_SList,'VT_Stock',' and FDepartmentID='+IntToStr(UserFDepartmentID)+' and FAgentID='+IntToStr(UserFDepartmentID)) then
      Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;
  If UserFDepartmentsort=2 then   //子公司
  begin
   // If not TreeVeiwListWhere(qry,MyTreeView_SList,'VT_Stock_Dep_Team',' and (FListTeamID='+IntToStr(P_FTeamID)+') and (FFactureID='+IntToStr(UserFDepartmentID)+') ') then
    If not TreeVeiwListWhere(qry,MyTreeView_SList,'VT_Stock_Dep',' and (FFactureID='+IntToStr(UserFDepartmentID)+' or FDepartmentID='+IntToStr(UserFDepartmentID)+') ') then
       Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
 end;

end;

procedure TFrm_Check.FormShow(Sender: TObject);
begin
  inherited;
  //TB_Ref_Check.Click;
  TB_Ref_Stock.Click;

end;

procedure TFrm_Check.ToolButton12Click(Sender: TObject);
begin
  inherited;
  If MData_SList.RecordCount>0 then
     ExportToExcel(cxGrid_SList,True,TRue)
  else
     Application.MessageBox(PChar('没有需要导出的数据！'), '错误', MB_OK +MB_ICONSTOP);

end;

procedure TFrm_Check.OKBtn_MClick(Sender: TObject);
var qry: TADOQuery;
    P_FBalanceNum:String;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  MData_CItem.open;
  MData_CItem.Edit;
  MData_CItem.Post;

  if (MData_CItem['FCheckICQC']='') or (MData_CItem['FCheckICQC']=null)  or (MData_CItem['FCheckICQCID']=0) or (MData_CItem['FCheckICQCID']=Null) then
  begin
    application.MessageBox('请选择送检检验员！','系统提示',MB_ICONWARNING);
    Exit;
  end;

  if (MData_CItem['FTeamName']='') or (MData_CItem['FTeamName']=null)  or (MData_CItem['FTeamID']=0) or (MData_CItem['FTeamID']=Null) then
  begin
    application.MessageBox('请选择送检班组！','系统提示',MB_ICONWARNING);
    Exit;
  end;
  mdata_CList.open;
  mdata_CList.Edit;
  mdata_CList.Post;

  Self.Set_MaxNum;//取ID
  If P_state=0 then
  begin
    If application.MessageBox('是否要保存添加的数据？','系统提示',MB_ICONINFORMATION+MB_YESNO)<>6 then
       Exit;
    If AddRd then //增加数据
    begin
      //Act_CheckQry.Execute;  //检验数量计算
      Act_Update_CheckQry.Execute;  //送检数量计算
      If application.MessageBox('录入数据已保存,还要继续录入吗？','系统提示',MB_ICONINFORMATION+MB_YESNO)=6 then
      begin
        mdata_CList.Close;
        mdata_CList.Active:=True;
        mdata_CList.Append;
      end
      else
      begin
        inherited;
        CancelBtn_M.Click;
      end;
    end;
  end;
  If P_state=1 then //修改数据
  begin
    If application.MessageBox('是否要保存所作修改？','系统提示',MB_ICONINFORMATION+MB_YESNO)<>6 then
       Exit;
    If EditRd then   //修改数据
    begin
      //Act_CheckQry.Execute;  //检验数量计算
      Act_Update_CheckQry.Execute;  //送检数量计算
      application.MessageBox('修改记录已保存','系统提示',MB_ICONINFORMATION);
      //inherited;
      CancelBtn_M.Click;
    end
    else
      application.MessageBox('修改记录保存失败！','系统提示',MB_ICONWARNING);
  end;
  FSumQry.Visible:=False;
  MyTreeView_SList.Enabled:=True;
  cxGrid_SItem.Enabled:=True;
  qry.Free;

end;

procedure TFrm_Check.TB_Edit_MClick(Sender: TObject);
begin
  inherited;
  P_state :=1; //修改

  Act_Set_Open_M.Execute;
  TB_Edit_M.Visible:=False;
  TB_Del.Visible:=False;

end;

procedure TFrm_Check.CancelBtn_MClick(Sender: TObject);
begin
  inherited;
  Act_Set_Close_M.Execute;

end;

procedure TFrm_Check.SelPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  If (MData_CItem['FTeamID']=0) or (MData_CItem['FTeamID']=Null) then
  begin
    application.MessageBox('请选择冷作班组！','系统提示',MB_ICONINFORMATION);
    Exit;
  end
  else
     P_FTeamID:=MData_CItem['FTeamID'];
  TS_Stock.TabEnabled:=True;
  PC_2.ActivePage:=TS_Stock;
  TS_Check.TabEnabled:=True;
 // TB_Ref_Stock.Click;

end;

procedure TFrm_Check.cxGV_SItemFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
var qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
{  If P_state =2 then  //不在新增、修改状态
  begin
    If (mdata_SItem['FStockItemID']<>0) and (mdata_SItem['FStockItemID']<>Null) then
    begin
      If MyItemListID(qry,MData_SList,'V_StockList',' FStockItemID='+IntToStr(mdata_SItem['FStockItemID']),'FFullNumber',) then
    end;
  end;}

      If (mData_SItem['FStockItemID']<>0) and (mData_SItem['FStockItemID']<>null) then
      begin
        If MyItemListID(qry,Mdata_SList,'V_StockList',' FStockItemID='+IntToStr(Mdata_SItem['FStockItemID']),'FFullNumber',) then
        begin
          cxGvColumn(cxGv_SList,Mdata_SList);
        end;
      end;
end;

procedure TFrm_Check.cxGV_CItemFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
var qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If P_state =2 then  //不在新增、修改状态
  begin
    If (MData_CItem['FCheckItemID']<>0) and (MData_CItem['FCheckItemID']<>null) then
    begin
    If MyItemListID(qry,mdata_CList,'V_CheckList',' FCheckItemID='+IntToStr(MData_CItem['FCheckItemID']),'FFullNumber',) then
      {If MData_CItem.RecordCount>0 then
      begin
        TB_Prin.Visible:=False;
        TB_Check.Visible:=False;
        TB_Execl.Visible:=False;
      end; }
      P_List :='('+MData_CItem['FCheckNum']+')';
      Act_Status_M.Execute  //权限设置
    end;
  end;


 {
   if P_state =2 then  //不在新增、修改状态
  begin
    If (mData_M['FCheckItemID']<>0) and (mData_M['FCheckItemID']<>null) then
    begin
      If MyItemListID(qry,Mdata,'V_CheckList',' FCheckItemID='+IntToStr(Mdata_M['FCheckItemID']),'FFullNumber',) then
      If mdata_M.RecordCount>0 then
      begin
        TB_Prin.Visible:=False;
        TB_Check.Visible:=False;
        TB_Execl.Visible:=False;
      end;
      P_List :='('+mdata_M['FCheckNum']+')';
      Act_Status.Execute  //权限设置
    end;
  end;  }

end;

procedure TFrm_Check.TB_SubmitClick(Sender: TObject);
var
 qry:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  P_state:=3;
  If (TB_Submit.Caption='送检') or (TB_Submit.Caption='批量送检') then
  begin
    If application.MessageBox(Pchar('系统提示：是否对检验单号为：【'+P_List+'】的单据进行送检？'+chr(13)+chr(13)
                                   +'确定要对本单据送检吗？'),'系统提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      MData_CItem.First;
      while not MData_CItem.eof do
      begin
        try
          qry.SQL.Text:='Update T_CheckItem Set FCheckStatus=1,FCheckSubmitDate=:FCheckSubmitDate  where FCheckItemID=:FCheckItemID';
          qry.Parameters.FindParam('FCheckSubmitDate').value:= now();
          qry.Parameters.FindParam('FCheckItemID').value:=MData_CItem['FCheckItemID'];
          qry.ExecSQL;
        finally
          ;
        end;
        MData_CItem.Edit;
        MData_CItem['FCheckStatus']:=1;
        MData_CItem['FCheckStatusNotes']:='送检';
        MData_CItem['FCheckSubmitDate']:=now();
        MData_CItem.Post;
        MData_CItem.Next;
      end;
      If MData_CItem.RecordCount=1 then
      begin
        application.MessageBox('送检完毕！','系统提示',MB_ICONINFORMATION);
        TB_Submit.Caption:='送检撤回';
      end;
      If MData_CItem.RecordCount>1 then
      begin
        application.MessageBox('批量送检完毕！','系统提示',MB_ICONINFORMATION);
        TB_Submit.Caption:='批量送检撤回';
      end;
      Act_Status_M.Execute;  //权限设置
    end;
    P_state:=2;
    Exit;
  end;
  If (TB_Submit.Caption='送检撤回') or (TB_Submit.Caption='批量送检撤回')  then
  begin
    If application.MessageBox(Pchar('系统提示：是否对检验单号为：【'+P_List+'】的单据进行送检撤回？'+chr(13)+chr(13)
                                   +'确定要对本单据送检撤回吗？'),'系统提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      MData_CItem.First;
      while not MData_CItem.eof do
      begin
        try
          qry.SQL.Text:='Update T_CheckItem Set FCheckStatus=0,FCheckSubmitDate=:FCheckSubmitDate where FCheckItemID=:FCheckItemID';
          qry.Parameters.FindParam('FCheckSubmitDate').value:= Null;
          qry.Parameters.FindParam('FCheckItemID').value:= MData_CItem['FCheckItemID'];
          qry.ExecSQL;
        finally
          ;
        end;
        MData_CItem.Edit;
        MData_CItem['FCheckStatus']:=0;
        MData_CItem['FCheckStatusNotes']:='填单';
        MData_CItem['FCheckSubmitDate']:=Null;
        MData_CItem.Post;
        MData_CItem.Next;
      end;
      If MData_CItem.RecordCount=1 then
      begin
        application.MessageBox('送检撤回完毕！','系统提示',MB_ICONINFORMATION);
        TB_Submit.Caption:='送检';
      end;
      If MData_CItem.RecordCount>1 then
      begin
        application.MessageBox('批量送检撤回完毕！','系统提示',MB_ICONINFORMATION);
        TB_Submit.Caption:='批量送检';
      end;
      Act_Status_M.Execute;  //权限设置
    end;
    P_state:=2;
    Exit;
  end;
  Act_CheckQry.Execute;  //检验数量计算

end;

procedure TFrm_Check.TB_CheckClick(Sender: TObject);
var
 qry:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
   P_state:=3;
  If (TB_Check.Caption='检验') or (TB_Check.Caption='批量检验') then
  begin
    If application.MessageBox(Pchar('系统提示：是否将单号为：【'+P_List+'】的单据进行检验？'+chr(13)+chr(13)
                                   +'确定要检验本单据吗？'),'系统提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      MData_CItem.First;
      while not MData_CItem.eof do
      begin
        try
          qry.SQL.Text:='Update T_CheckItem Set FCheckStatus=2,FCheckCheckID=:FCheckCheckID,FCheckCheckDate=:FCheckCheckDate  where FCheckItemID=:FCheckItemID';
          qry.Parameters.FindParam('FCheckCheckID').value:= UserNumID;
          qry.Parameters.FindParam('FCheckCheckDate').value:= now();
          qry.Parameters.FindParam('FCheckItemID').value:=MData_CItem['FCheckItemID'];
          qry.ExecSQL;
        finally
          ;
        end;
        Act_Update_CheckYesQry.Execute;//检验数量更新
        MData_CItem.Edit;
        MData_CItem['FCheckStatus']:=2;
        MData_CItem['FCheckStatusNotes']:='检验';
        MData_CItem['FCheckCheck']:=UserNum;
        MData_CItem['FCheckCheckDate']:=now();
        MData_CItem.Post;
        MData_CItem.Next;
      end;
      if MData_CItem.RecordCount=1 then
      begin
        application.MessageBox('检验完毕！','系统提示',MB_ICONINFORMATION);
        TB_Check.Caption:='检验撤回';
      end;
      if MData_CItem.RecordCount>1 then
      begin
        application.MessageBox('批量检验完毕！','系统提示',MB_ICONINFORMATION);
        TB_Check.Caption:='批量检验撤回';
      end;
      Act_Status_M.Execute;  //权限设置
    end;
    P_state:=2;
    Exit;
  end;
  If (TB_Check.Caption='检验撤回') or (TB_Check.Caption='批量检验撤回')  then
  begin
    If application.MessageBox(Pchar('系统提示：是否将检验单号为：【'+P_List+'】的单据撤回检验？'+chr(13)+chr(13)
                                   +'确定要将本单据撤回检验吗？'),'系统提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      MData_CItem.First;
      while not MData_CItem.eof do
      begin
        try
          qry.SQL.Text:='Update T_CheckItem Set FCheckStatus=1,FCheckCheckID=0,FCheckCheckDate=:FCheckCheckDate where FCheckItemID=:FCheckItemID';
          qry.Parameters.FindParam('FCheckCheckDate').value:= Null;
          qry.Parameters.FindParam('FCheckItemID').value:= MData_CItem['FCheckItemID'];
          qry.ExecSQL;
        finally
          ;
        end;
        Act_Update_CheckYesQry.Execute;//检验数量更新
        MData_CItem.Edit;
        MData_CItem['FCheckStatus']:=1;
        MData_CItem['FCheckStatusNotes']:='送检';
        MData_CItem['FCheckCheck']:='';
        MData_CItem['FCheckCheckDate']:=Null;
        MData_CItem.Post;
        MData_CItem.Next;
      end;
      if MData_CItem.RecordCount=1 then
      begin
        application.MessageBox('检验撤回完毕！','系统提示',MB_ICONINFORMATION);
        TB_Check.Caption:='检验';
      end;
      if MData_CItem.RecordCount>1 then
      begin
        application.MessageBox('批量检验撤回完毕！','系统提示',MB_ICONINFORMATION);
        TB_Check.Caption:='批量检验';
      end;
      Act_Status_M.Execute;  //权限设置
    end;
    P_state:=2;
    Exit;
  end;
  Act_CheckQry.Execute;  //检验数量计算

end;

procedure TFrm_Check.TB_CheckListClick(Sender: TObject);
var
  Query_Sp:TADOStoredProc;
  i,k,s,ReNum,ReNumLoop,R_Count,L:Integer;
  ExcelApp,MyWorkBook,mysheet,vLastSheet: Variant;
  filepath,savefilepath,Sqlstr,copystart,copyend,copystart1,aa:string;
  ListQry:Tadoquery;
  qry,qry1:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry1:=TAdoQuery.Create(self);
  qry1.ConnectionString:=mdlData.ReadConnStr;

  filepath:=Extractfilepath(application.ExeName)+'检验合格单模版.xls';
  if (mdata_CList.Active) and (mdata_CList.recordcount>0) then
  Begin
    SaveDialog1.FileName:='检验合格单'+P_List;
    SaveDialog1.Filter:='.xls';
    SaveDialog1.Execute;

    if (mdata_CList.FieldByName('FBranchItemNumber').AsString<>'') Or (mdata_CList.FieldByName('FCheckNum').AsString<>Null) then
        savefilepath:=SaveDialog1.FileName+'.xls';

    if FileExists(savefilepath) then
    begin
      DeleteFile(savefilepath) ;
    end;
    stbMsg.Caption:='提示信息：正在导出检验合格单:'+P_List;
    stbBar.Refresh;

    ExcelApp:= CreateOleObject('Excel.Application' );
    ExcelApp.DisplayAlerts:=False;                  //不显示提示框
    MyWorkBook:=ExcelApp.WorkBooks.Open( filepath );   //打开模版
    //ExcelApp.Visible:=True;

    try
      If PC_Check.ActivePage=TS_CheckList then
         qry.SQL.Text:='select distinct FCheckNum from  V_CheckList with(nolock) where FAgentID=:FAgentID and FCheckFullNumber like :FCheckFullNumber';
     If PC_Check.ActivePage=TS_Write then
         qry.SQL.Text:='select distinct FCheckNum from  V_CheckList with(nolock) where FAgentID=:FAgentID and FCheckFullNumberWrite like :FCheckFullNumberWrite';
     If PC_Check.ActivePage=TS_ICQC then
         qry.SQL.Text:='select distinct FCheckNum from  V_CheckList with(nolock) where FAgentID=:FAgentID and FCheckFullNumberICQC like :FCheckFullNumberICQC';
      qry.Parameters.FindParam('FAgentID').value:= UserFDepartmentID;
      If PC_Check.ActivePage=TS_CheckList then
         qry.Parameters.FindParam('FCheckFullNumber').value:= ListFNumber_CList+'%';
      If PC_Check.ActivePage=TS_Write then
         qry.Parameters.FindParam('FCheckFullNumberWrite').value:= ListFNumber_CheckWrite+'%';
      If PC_Check.ActivePage=TS_ICQC then
         qry.Parameters.FindParam('FCheckFullNumberICQC').value:= ListFNumber_CheckICQC+'%';
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
       If PC_Check.ActivePage=TS_CheckList then
          qry1.SQL.Text:='select * from V_CheckList with(nolock) where FAgentID=:FAgentID and FCheckNum=:FCheckNum order by FCheckFullNumber,FCheckListNum';
       If PC_Check.ActivePage=TS_Write then
          qry1.SQL.Text:='select * from V_CheckList with(nolock) where FAgentID=:FAgentID and FCheckNum=:FCheckNum order by FCheckFullNumberWrite,FCheckListNum';
       If PC_Check.ActivePage=TS_ICQC then
          qry1.SQL.Text:='select * from V_CheckList with(nolock) where FAgentID=:FAgentID and FCheckNum=:FCheckNum order by FCheckFullNumberICQC,FCheckListNum';
       qry1.Parameters.FindParam('FAgentID').value:= UserFDepartmentID;
       qry1.Parameters.FindParam('FCheckNum').value:= qry.FieldByName('FCheckNum').Value;
       qry1.Open;
     finally
       ;
     end;
     if qry1.RecordCount>0 then
     begin
       mdata_CList.Close;
       mdata_CList.CopyFromDataSet(qry1);
     end;
     vLastSheet:=MyWorkBook.Sheets[MyWorkBook.Sheets.Count];
     MyWorkBook.Sheets[1].Copy(EmptyParam,vLastSheet);
     MyWorkBook.WorkSheets[k].Name:=IntToStr(k)+mdata_CList['FCheckNum'];
     MyWorkBook.WorkSheets[k].Activate;

      //标题
      //MyWorkBook.WorkSheets[k].Cells[1,1].Value:=AnsiReplaceStr(MyWorkBook.WorkSheets[k].Cells[1,1].Value,'A',UserFDepartmentName); //公司名称

      MyWorkBook.WorkSheets[k].Cells[4,2].Value := Trim(mdata_CList.FieldByName('FAgentName').AsString); //送检单位
      MyWorkBook.WorkSheets[k].Cells[4,7].Value := Trim(mdata_CList.FieldByName('FBranchItemNumber').AsString); //图号
      MyWorkBook.WorkSheets[k].Cells[4,9].Value := Trim(mdata_CList.FieldByName('FFileNo').AsString); //档案号
      MyWorkBook.WorkSheets[k].Cells[4,11].Value := Trim(mdata_CList.FieldByName('FDepartmentNum').AsString)+Trim(mdata_CList.FieldByName('FCheckNum').AsString); //单据编号  

      MyWorkBook.WorkSheets[k].Cells[5,2].Value := Trim(mdata_CList.FieldByName('FDepartmentName').AsString); //项目部门
      MyWorkBook.WorkSheets[k].Cells[5,7].Value := Trim(mdata_CList.FieldByName('FItemModel').AsString); //规格型号
      MyWorkBook.WorkSheets[k].Cells[5,11].Value := Trim(mdata_CList.FieldByName('FPartsNumber').AsString); //规格型号

      MyWorkBook.WorkSheets[k].Cells[6,2].Value := Trim(mdata_CList.FieldByName('FClientFullName').AsString); //项目名
      MyWorkBook.WorkSheets[k].Cells[6,11].Value := Trim(mdata_CList.FieldByName('FPartsName').AsString); //规格型号

      //循环行开始
      i:=8;

       //工作薄名称
      MyWorkBook.WorkSheets[k].Name:=mdata_CList.FieldByName('FCheckNum').AsString;
      copystart:='A'+IntToStr(i);
      if mdata_CList.recordcount>0 then
      Begin
        if mdata_CList.recordcount>1 then
        Begin
          copystart:='A'+IntToStr(i);
          copystart1:='A'+IntToStr(i+1);
          copyend:='K'+IntToStr(i);  //区域
          ReNum:=mdata_CList.recordcount-1+(10-((mdata_CList.RecordCount+1) mod 10));;
          L:=mdata_CList.recordcount-1+(10-((mdata_CList.RecordCount+1) mod 10));;
          while ReNum>0 do
          Begin
            ExcelApp.ActiveSheet.Range[copystart+':'+copyend].Copy;
            ExcelApp.ActiveSheet.Rows[i+1].Insert;
            ExcelApp.ActiveSheet.Range[copystart1].PasteSpecial;
            Renum:=Renum-1;
          end;
          //制单、审核栏
          MyWorkBook.WorkSheets[k].Cells[i+L+1,2].Value:=mdata_CList.FieldByName('FTeamName').AsString; //制单
          MyWorkBook.WorkSheets[k].Cells[i+L+1,4].Value:=mdata_CList.FieldByName('FWorkShop').AsString; // 班组
          MyWorkBook.WorkSheets[k].Cells[i+L+1,7].Value:=mdata_CList.FieldByName('FCheckWriteDate').AsString; //制单日期
          MyWorkBook.WorkSheets[k].Cells[i+L+1,9].Value:=mdata_CList.FieldByName('FCheckCheck').AsString; //审核
          MyWorkBook.WorkSheets[k].Cells[i+L+1,11].Value:=mdata_CList.FieldByName('FCheckCheckDate').AsString; //审核日期
        end
        else
        Begin
          R_Count:=mdata_CList.recordcount;
        end;
        mdata_CList.first;
        while not mdata_CList.eof do
        Begin
           //MyWorkBook.WorkSheets[1].Cells[i,1].Value := inttostr(K+1); //序号
          MyWorkBook.WorkSheets[k].Cells[i,1].Value := mdata_CList.FieldByName('th').AsString; //图号
          MyWorkBook.WorkSheets[k].Cells[i,4].Value := mdata_CList.FieldByName('mc').AsString+mdata_CList.FieldByName('gg').AsString; //名称+规格
          MyWorkBook.WorkSheets[k].Cells[i,7].Value := mdata_CList.FieldByName('FCheckQry').Value; //送检数量
          MyWorkBook.WorkSheets[k].Cells[i,8].Value := mdata_CList.FieldByName('FSuttle').AsString; //净重量
          MyWorkBook.WorkSheets[k].Cells[i,9].Value := mdata_CList.FieldByName('FCheckYesQry').Value; //合格数量
          MyWorkBook.WorkSheets[k].Cells[i,10].Value := mdata_CList.FieldByName('FCheckNoQry').AsString; //不合格数量
          MyWorkBook.WorkSheets[k].Cells[i,11].Value := mdata_CList.FieldByName('FCheckListRemark').AsString;
          //MyWorkBook.WorkSheets[i].Cells[1,2].Value:=AnsiReplaceStr(MyWorkBook.WorkSheets[i].Cells[i,2].Value,'B',Mdata2['FMakeSubmit']); //制单
          mdata_CList.next;
          i:=i+1;
        End;
        // MyWorkBook.WorkSheets[1].Cells[i+ReNum+1,2].Value:=Mdata2.FieldByName('FMakeSubmit').AsString; //制单
      end;
      qry.Next ;
      ExcelApp.Visible:=True;
      MyWorkBook.WorkSheets[k].PrintPreview;  //打印
      k:=k+1;

    end;
    MyWorkBook.WorkSheets[1].delete; //删除模版
    stbMsg.Caption:='提示信息：检验合格单:'+P_List+'的信息导出完成!';
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

procedure TFrm_Check.TB_PrinClick(Sender: TObject);
var
 qry:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If PC_Check.ActivePage=TS_CheckList then
  begin
    try
      qry.SQL.Text:='update T_CheckItem set n=8-b.n%8 from T_CheckItem as a left outer join  '
                   +'(select FCheckITemID,count(FCheckITemID) as n from V_CheckList where FCheckFullNumber '
                   +'like '''+ListFNumber_CList+'%'' group by FCheckITemID) as b '
                   +'on a.FCheckITemID=b.FCheckITemID ';
    qry.ExecSQL;
    finally
      ;
    end;
    If not MyItemList(qry,mdata_CList,'V_CheckList','FCheckFullNumber',ListFNumber_CList,'FCheckFullNumber,FCheckListNum') then
       mdata_CList.Open;

    mdata_CList.First;
    mdata_CList.SortedField:='FCheckFullNumber;FCheckListNum';
  end;
  If PC_Check.ActivePage=TS_Write then
  begin
    try
      qry.SQL.Text:='update T_CheckItem set n=8-b.n%8 from T_CheckItem as a left outer join  '
                   +'(select FCheckITemID,count(FCheckITemID) as n from V_CheckList where FCheckFullNumberWrite '
                   +'like '''+ListFNumber_CheckWrite+'%'' group by FCheckITemID) as b '
                   +'on a.FCheckITemID=b.FCheckITemID ';
    qry.ExecSQL;
    finally
      ;
    end;
    If not MyItemList(qry,mdata_CList,'V_CheckList','FCheckFullNumberWrite',ListFNumber_CheckWrite,'FCheckFullNumberWrite,FCheckListNum') then
       mdata_CList.Open;

    mdata_CList.First;
    mdata_CList.SortedField:='FCheckFullNumberWrite;FCheckListNum';
  end;
  If PC_Check.ActivePage=TS_ICQC then
  begin
    try
      qry.SQL.Text:='update T_CheckItem set n=8-b.n%8 from T_CheckItem as a left outer join  '
                   +'(select FCheckITemID,count(FCheckITemID) as n from V_CheckList where FCheckFullNumberICQC '
                   +'like '''+ListFNumber_CheckICQC+'%'' group by FCheckITemID) as b '
                   +'on a.FCheckITemID=b.FCheckITemID ';
    qry.ExecSQL;
    finally
      ;
    end;
    If not MyItemList(qry,mdata_CList,'V_CheckList','FCheckFullNumberICQC',ListFNumber_CheckICQC,'FCheckFullNumberICQC,FCheckListNum') then
       mdata_CList.Open;

    mdata_CList.First;
    mdata_CList.SortedField:='FCheckFullNumberICQC;FCheckListNum';
  end;
  If mdata_CList.RecordCount>0 then
  begin
    FrReport.LoadFromFile(ExtractFileDir(Application.ExeName)+'\Report_DesignBOM_Check_LKTJ.frf');
    FrReport.ShowReport;
  end
  else
    Application.MessageBox(PChar('没有需要打印的数据！'), '错误', MB_OK +MB_ICONSTOP);

end;

procedure TFrm_Check.MData_CListBeforePost(DataSet: TDataSet);
begin
  inherited;
  If P_state=1 then
  begin
    If (DataSet['FCheckQry']=Null) or (DataSet['FCheckQry']<0) then
       DataSet['FCheckQry']:=0;
    If (DataSet['FCheckYesQry']=Null) or (DataSet['FCheckYesQry']<0) then
       DataSet['FCheckYesQry']:=0;
    If (DataSet['FCheckNoQry']=Null) or (DataSet['FCheckNoQry']<0) then
       DataSet['FCheckNoQry']:=0;
    If DataSet['FCheckQry']>DataSet['FSumQry'] then
       DataSet['FCheckQry']:=DataSet['FSumQry'];
    If DataSet['FCheckYesQry']>DataSet['FCheckQry'] then
       DataSet['FCheckYesQry']:=DataSet['FCheckQry']-DataSet['FCheckNoQry'];
    If DataSet['FCheckNoQry']>DataSet['FCheckQry'] then
       DataSet['FCheckNoQry']:=DataSet['FCheckQry']-DataSet['FCheckYesQry'];
    DataSet['FCheckYesQry']:=DataSet['FCheckQry']-DataSet['FCheckNoQry'];
  end;

end;

procedure TFrm_Check.Act_CheckQryExecute(Sender: TObject);
var
  proc:TADOStoredProc;
begin
  proc:=TADOStoredProc.Create(self);
  proc.ConnectionString:=mdlData.ReadConnStr;
  proc.CommandTimeout:=500;
  try
    proc.ProcedureName:='P_Check_CheckQry;1';
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=20;
      name := '@FFullNumber';
      value:=copy(ListFNumber_SList,pos(';',ListFNumber_SList)+1,length(ListFNumber_SList)-pos(';',ListFNumber_SList));
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
  finally
    ;
  end;
  proc.Free;


{  try
    proc.ProcedureName:='P_Check_Log;1';

    with proc.Parameters.AddParameter do
    begin
      DataType := ftInteger;
      Direction := pdinput;
      name := '@FAgentID';
      value:=UserFDepartmentID;
    end;
    proc.ExecProc;
  finally
     ;
  end;
  Proc.Free;
 }
end;

procedure TFrm_Check.Act_Status_MExecute(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  TB_Submit.Visible:=False;
  TB_CheckPatch.Visible:=False;
  TB_Edit_M.Visible:=False;
  TB_EditLList.Visible:=False;
  TB_Del.Visible:=False;
  FCheckYesQry.Visible:=False;
  FCheckNoQry.Visible:=False;
  FCheckListRemark.Visible:=False;
  //制单者是本人
  try
    If PC_Check.ActivePage=TS_CheckList then
    begin
      qry.SQL.Text:='Select distinct FCheckStatus,FCheckWriteID from V_CheckList with(nolock) where FAgentID=:FAgentID and FCheckFullNumber like :FCheckFullNumber';
      qry.Parameters.FindParam('FAgentID').value:= UserFDepartmentID;
      qry.Parameters.FindParam('FCheckFullNumber').value:=ListFNumber_CList+'%';
    end;
    If PC_Check.ActivePage=TS_Write then
    begin
      qry.SQL.Text:='Select distinct FCheckStatus,FCheckWriteID from V_CheckList with(nolock) where FAgentID=:FAgentID and FCheckFullNumberWrite like :FCheckFullNumberWrite';
      qry.Parameters.FindParam('FAgentID').value:= UserFDepartmentID;
      qry.Parameters.FindParam('FCheckFullNumberWrite').value:=ListFNumber_CheckWrite+'%';
    end;
    If PC_Check.ActivePage=TS_ICQC then
    begin
      qry.SQL.Text:='Select distinct FCheckStatus,FCheckWriteID from V_CheckList with(nolock) where FAgentID=:FAgentID and FCheckFullNumberICQC like :FCheckFullNumberICQC';
      qry.Parameters.FindParam('FAgentID').value:= UserFDepartmentID;
      qry.Parameters.FindParam('FCheckFullNumberICQC').value:=ListFNumber_CheckICQC+'%';
    end;
    If PC_Check.ActivePage=TS_Team then
    begin
      qry.SQL.Text:='Select distinct FCheckStatus,FCheckWriteID from V_CheckList with(nolock) where FAgentID=:FAgentID and FCheckFullNumberTeam like :FCheckFullNumberTeam';
      qry.Parameters.FindParam('FAgentID').value:= UserFDepartmentID;
      qry.Parameters.FindParam('FCheckFullNumberTeam').value:=ListFNumber_CheckTeam+'%';
    end;
    If PC_Check.ActivePage=TS_Item then
    begin
      qry.SQL.Text:='Select distinct FCheckStatus,FCheckWriteID from V_CheckList with(nolock) where FAgentID=:FAgentID and FCheckFullNumberItem like :FCheckFullNumberItem';
      qry.Parameters.FindParam('FAgentID').value:= UserFDepartmentID;
      qry.Parameters.FindParam('FCheckFullNumberItem').value:=ListFNumber_CheckItem+'%';
    end;
    qry.Open;
  finally
    ;
  end;
   //制单者是本人

  If (qry.RecordCount=1) and (qry.FieldByName('FCheckStatus').AsInteger=0)
      and (qry.FieldByName('FCheckWriteID').AsInteger=UserNumID) then
  begin
    If mdata_CItem.RecordCount=0 then
    begin
      TB_EditLList.Visible:=False;
      TB_Del.Visible:=False;
      TB_Submit.Visible:=False;
      TB_CheckPatch.Visible:=False;
    end;
    If mdata_CItem.RecordCount>0 then
    begin
      TB_Submit.Visible:=mdlData.CheckFrmRights(TFrm_Check.ClassName,'提交');
      TB_Submit.Caption:='批量送检';
      TB_CheckPatch.Visible:=mdlData.CheckFrmRights(TFrm_Check.ClassName,'提交');
      TB_CheckPatch.Caption:='批量补单';
      TB_EditLList.Visible:=False;
      TB_Del.Visible:=False;
    end;
    If mdata_CItem.RecordCount=1 then
    begin
      TB_Edit_M.Visible:=mdlData.CheckFrmRights(TFrm_Check.ClassName,'修改');
      TB_Del.Visible:=mdlData.CheckFrmRights(TFrm_Check.ClassName,'删除');
      TB_Submit.Visible:=mdlData.CheckFrmRights(TFrm_Check.ClassName,'提交');
      TB_CheckPatch.Visible:=mdlData.CheckFrmRights(TFrm_Check.ClassName,'提交');
      TB_Submit.Caption:='送检';
      TB_CheckPatch.Caption:='补单';
    end;
    Exit;
  end;

   //送检者是本人
  If (qry.RecordCount=1) and (qry.FieldByName('FCheckStatus').AsInteger=1)
     and (qry.FieldByName('FCheckWriteID').AsInteger=UserNumID) then
  begin
    TB_Submit.Visible:=mdlData.CheckFrmRights(TFrm_Check.ClassName,'提交');
    TB_CheckPatch.Visible:=mdlData.CheckFrmRights(TFrm_Check.ClassName,'提交');
    If mdata_CItem.RecordCount=0 then
    begin
      TB_Submit.Visible:=False;
      TB_CheckPatch.Visible:=False;
    end;
    If mdata_CItem.RecordCount>0 then
       TB_Submit.Caption:='批量送检撤回';
    If mdata_CItem.RecordCount=1 then
       TB_Submit.Caption:='送检撤回';
    TB_Edit_M.Visible:=False;
    TB_EditLList.Visible:=False;
    TB_Del.Visible:=False;
    ToolBar_CList.Visible:=False;
    FCheckNoQry.Visible:=True;
    FCheckListRemark.Visible:=True;
    Exit;
  end;


   //检验员者是本人
  try
    If PC_Check.ActivePage=TS_CheckList then
    begin
      qry.SQL.Text:='Select distinct FCheckStatus,FCheckICQCID from V_CheckList with(nolock) where  FAgentID=:FAgentID and FCheckFullNumber like :FCheckFullNumber ';
      qry.Parameters.FindParam('FAgentID').value:= UserFDepartmentID;
      qry.Parameters.FindParam('FCheckFullNumber').value:=ListFNumber_CList+'%';
    end;
    If PC_Check.ActivePage=TS_Write then
    begin
      qry.SQL.Text:='Select distinct FCheckStatus,FCheckICQCID from V_CheckList with(nolock) where  FAgentID=:FAgentID and FCheckFullNumberWrite like :FCheckFullNumberWrite ';
      qry.Parameters.FindParam('FAgentID').value:= UserFDepartmentID;
      qry.Parameters.FindParam('FCheckFullNumberWrite').value:=ListFNumber_CheckWrite+'%';
    end;
    If PC_Check.ActivePage=TS_ICQC then
    begin
      qry.SQL.Text:='Select distinct FCheckStatus,FCheckICQCID from V_CheckList with(nolock) where  FAgentID=:FAgentID and FCheckFullNumberICQC like :FCheckFullNumberICQC ';
      qry.Parameters.FindParam('FAgentID').value:= UserFDepartmentID;
      qry.Parameters.FindParam('FCheckFullNumberICQC').value:=ListFNumber_CheckICQC+'%';
    end;
    If PC_Check.ActivePage=TS_Team then
    begin
      qry.SQL.Text:='Select distinct FCheckStatus,FCheckICQCID from V_CheckList with(nolock) where  FAgentID=:FAgentID and FCheckFullNumberTeam like :FCheckFullNumberTeam ';
      qry.Parameters.FindParam('FAgentID').value:= UserFDepartmentID;
      qry.Parameters.FindParam('FCheckFullNumberTeam').value:=ListFNumber_CheckTeam+'%';
    end;
    If PC_Check.ActivePage=TS_Item then
    begin
      qry.SQL.Text:='Select distinct FCheckStatus,FCheckICQCID from V_CheckList with(nolock) where  FAgentID=:FAgentID and FCheckFullNumberItem like :FCheckFullNumberItem ';
      qry.Parameters.FindParam('FAgentID').value:= UserFDepartmentID;
      qry.Parameters.FindParam('FCheckFullNumberItem').value:=ListFNumber_CheckItem+'%';
    end;
    qry.Open;
  finally
    ;
  end;
  //检验者是本人
  If (qry.RecordCount=1) and (qry.FieldByName('FCheckStatus').AsInteger=1)
     and (qry.FieldByName('FCheckICQCID').AsInteger=UserNumID) then
  begin
    If mdata_CItem.RecordCount=0 then
    begin
      TB_Check.Visible:=False;
      ToolBar_CList.Visible:=False;
      TB_EditLList.Visible:=False;
    end;
    If mdata_CItem.RecordCount>0 then
    begin
      TB_Check.Visible:=mdlData.CheckFrmRights(TFrm_Check.ClassName,'校对');
      TB_Check.Caption:='批量检验';
      ToolBar_CList.Visible:=False;
      TB_EditLList.Visible:=False;
    end;
    If mdata_CItem.RecordCount=1 then
    begin
      TB_Check.Visible:=mdlData.CheckFrmRights(TFrm_Check.ClassName,'校对');
      TB_Check.Caption:='检验';
      ToolBar_CList.Visible:=mdlData.CheckFrmRights(TFrm_Check.ClassName,'校对');
      TB_EditLList.Visible:=mdlData.CheckFrmRights(TFrm_Check.ClassName,'校对');
    end;
    FCheckNoQry.Visible:=True;
    FCheckListRemark.Visible:=True;
    Exit;
  end;


   //审核者是本人
  try
    If PC_Check.ActivePage=TS_CheckList then
    begin
      qry.SQL.Text:='Select distinct FCheckStatus,FCheckCheckID from V_CheckList with(nolock) where  FAgentID=:FAgentID and FCheckFullNumber like :FCheckFullNumber ';
      qry.Parameters.FindParam('FAgentID').value:= UserFDepartmentID;
      qry.Parameters.FindParam('FCheckFullNumber').value:=ListFNumber_CList+'%';
    end;
    If PC_Check.ActivePage=TS_Write then
    begin
      qry.SQL.Text:='Select distinct FCheckStatus,FCheckCheckID from V_CheckList with(nolock) where  FAgentID=:FAgentID and FCheckFullNumberWrite like :FCheckFullNumberWrite ';
      qry.Parameters.FindParam('FAgentID').value:= UserFDepartmentID;
      qry.Parameters.FindParam('FCheckFullNumberWrite').value:=ListFNumber_CheckWrite+'%';
    end;
    If PC_Check.ActivePage=TS_ICQC then
    begin
      qry.SQL.Text:='Select distinct FCheckStatus,FCheckCheckID from V_CheckList with(nolock) where  FAgentID=:FAgentID and FCheckFullNumberICQC like :FCheckFullNumberICQC ';
      qry.Parameters.FindParam('FAgentID').value:= UserFDepartmentID;
      qry.Parameters.FindParam('FCheckFullNumberICQC').value:=ListFNumber_CheckICQC+'%';
    end;
    If PC_Check.ActivePage=TS_Team then
    begin
      qry.SQL.Text:='Select distinct FCheckStatus,FCheckCheckID from V_CheckList with(nolock) where  FAgentID=:FAgentID and FCheckFullNumberTeam like :FCheckFullNumberTeam ';
      qry.Parameters.FindParam('FAgentID').value:= UserFDepartmentID;
      qry.Parameters.FindParam('FCheckFullNumberTeam').value:=ListFNumber_CheckTeam+'%';
    end;
    If PC_Check.ActivePage=TS_Item then
    begin
      qry.SQL.Text:='Select distinct FCheckStatus,FCheckCheckID from V_CheckList with(nolock) where  FAgentID=:FAgentID and FCheckFullNumberItem like :FCheckFullNumberItem ';
      qry.Parameters.FindParam('FAgentID').value:= UserFDepartmentID;
      qry.Parameters.FindParam('FCheckFullNumberItem').value:=ListFNumber_CheckItem+'%';
    end;
    qry.Open;
  finally
    ;
  end;
  If (qry.RecordCount=1) and (qry.FieldByName('FCheckStatus').AsInteger=2)
      and (qry.FieldByName('FCheckCheckID').AsInteger=UserNumID) then
  begin
    TB_Check.Visible:=mdlData.CheckFrmRights(TFrm_Check.ClassName,'校对');
    If mdata_CItem.RecordCount=0 then
       TB_Check.Visible:=False;
    If mdata_CItem.RecordCount>0 then
       TB_Check.Caption:='批量检验撤回';
    If mdata_CItem.RecordCount=1 then
       TB_Check.Caption:='检验撤回';
    FCheckYesQry.Visible:=True;
    FCheckNoQry.Visible:=True;
    FCheckListRemark.Visible:=True;
    Exit;
  end;
end;

procedure TFrm_Check.FBranchItemNumberPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
   qry:=TADOQuery.Create(Self);
   qry.ConnectionString:=mdlData.ReadConnStr;
   If (P_state=0) and (mdata_CList.RecordCount=0) then     //新增
   begin
     try
       qry.SQL.Text:='select * from VT_Stock with(nolock) order by Isleaf,FNumber ';
       qry.Open;
     finally
       ;
     end;
     selValue:=select('请项目部件','FNumber','FParentNumber','FNumber','FName',qry);
     If (Length(selValue)>0) and (qry.FieldByName('Isleaf').Value>=2) then
     begin
       MData_CItem.Edit;
       ListFNumber_SList:=Trim(qry.FieldByName('FNumber').Value);
       MData_CItem.Post;
     end
     else
     begin
       application.MessageBox('请选择明细！','系统提示',MB_ICONINFORMATION);
       Exit;
     end;
   end;
   If P_state=1 then     //修改
      ListFNumber_SList:=MData_CItem['FFullNumber'];

      mdata_SItem.Edit;
      MData_SList.Edit;
   If MyItemList(qry,mdata_SItem,'V_StockItem','FFullNumber',ListFNumber_SList,'FFullNumber') then

   If MyItemList(qry,MData_SList,'V_StockList','FFullNumber',ListFNumber_SList,'FFullNumber') then

      MData_SList.First;
   TS_Stock.TabEnabled:=True;
   PC_2.ActivePage:=TS_Stock;

  { TS_WorkBOM.TabEnabled:=True;
   PC_2.ActivePage:=TS_WorkBOM;
   SelBtn.Visible:=True;
   SelCancelBtn.Visible:=True;
   TB_Ref2.Click;
   MyTreeView2.Enabled:=False;
    }


end;

procedure TFrm_Check.cxGV_SListCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  inherited;
   If cxGV_SList.Controller.FocusedRowIndex=AViewInfo.RecordViewInfo.Index  then  //是否是选中行
     else
  If ((StrToFloat(AViewInfo.GridRecord.DisplayTexts[FSumQry_3.Index])-StrToFloat(AViewInfo.GridRecord.DisplayTexts[FSumCheckYesQry_3.Index]))<>0) and
     ((AViewInfo.GridRecord.DisplayTexts[Num_3.Index]<>'★★') and (AViewInfo.GridRecord.DisplayTexts[SelRemark_3.Index]<>'(按以下入库)'))  then
  begin
    //ACanvas.Canvas.brush.Color := clInactiveCaptionText;      //设置行颜色
    ACanvas.Canvas.Font.Color:=clBlue; //字体颜色
    ACanvas.FillRect(AViewInfo.Bounds);
  end;

  If (StrToFloat(AViewInfo.GridRecord.DisplayTexts[FSumQry_3.Index])<StrToFloat(AViewInfo.GridRecord.DisplayTexts[FSumCheckYesQry_3.Index])) then
  begin
    //ACanvas.Canvas.brush.Color := clRed  ;    //设置行颜色
    ACanvas.Canvas.Font.Color:=clRed; //字体颜色
    ACanvas.FillRect(AViewInfo.Bounds);
  end;

end;

procedure TFrm_Check.SelBtnClick(Sender: TObject);
var  i,j: integer;
begin
  inherited;
  mdata_CList.Open;
  mdata_CList.Edit;
  mdata_CList.Last;
  for i:=0 to cxGV_SList.DataController.Controller.SelectedRecordCount-1 do
  begin
    j:=cxGV_SList.DataController.GetSelectedRowIndex(i);
    If (cxGV_SList.DataController.GetValue(J,5)-cxGV_SList.DataController.GetValue(J,6)<>0)
       and ((cxGV_SList.DataController.GetValue(J,0))<>'★★')
       and ((cxGV_SList.DataController.GetValue(J,3))<>'(按以下入库)') then
    begin
      mdata_CList.Append;
      mdata_CList['FCheckListNum']:=i+1;
      mdata_CList['th']:=cxGV_SList.DataController.GetValue(J,1);
      mdata_CList['mc']:=cxGV_SList.DataController.GetValue(J,2);
      mdata_CList['gg']:=cxGV_SList.DataController.GetValue(J,4);
      mdata_CList['FSumQry']:=cxGV_SList.DataController.GetValue(J,5)-cxGV_SList.DataController.GetValue(J,6);
      mdata_CList['FCheckQry']:=cxGV_SList.DataController.GetValue(J,5)-cxGV_SList.DataController.GetValue(J,6);
      mdata_CList['FCheckYesQry']:=0;
    //  mdata_CList['FCheckYesQry']:=cxGV_SList.DataController.GetValue(J,5)-cxGV_SList.DataController.GetValue(J,6);
      mdata_CList['FCheckNoQry']:=0;
      mdata_CList['FSuttle']:=cxGV_SList.DataController.GetValue(J,9);
      mdata_CList['FFullNumber']:=cxGV_SList.DataController.GetValue(J,13);
      mdata_CList.Post;
    end;
  end;
  MData_CItem.Edit;
  MData_CItem['FBranchItemNumber']:=MData_SList['FBranchItemNumber'];
  MData_CItem['FClientFullName']:=MData_SList['FClientFullName'];
  MData_CItem.Post ;
  cxGV_SList.DataController.DeleteSelection;   //多行删除
  MyTreeView_SList.Enabled:=False;
  cxGrid_SItem.Enabled:=False;
  PC_2.ActivePage:=TS_Check;
  //TS_StockIn.TabEnabled:=False
  TS_Stock.TabEnabled:=False;
  TS_Check.TabEnabled:=True;
end;

procedure TFrm_Check.SelCancelBtnClick(Sender: TObject);
begin
  inherited;
  PC_2.ActivePage:=TS_Check;
  TS_Check.TabEnabled:=True;
  TS_Stock.TabEnabled:=False;

end;

procedure TFrm_Check.TB_RecordRefClick(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  //ShowPrograss('正在更新数据，请稍候……',self);
  MData_SList.DisableControls;
  cxGV_SList.DataController.DataModeController.GridMode:=True;
  cxGV_SList.DataController.DataModeController.SmartRefresh:=True;
  If P_Isleaf_SList>0 then
  begin
     If MyItemList(qry,mdata_SItem,'V_StockItem','FFullNumber',ListFNumber_SList,'FFullNumber') then
     If MyItemList(qry,MData_SList,'V_StockList','FFullNumber',ListFNumber_SList,'FFullNumber') then
  end
  else
  begin
    mdata_SItem.Close;
    MData_SList.Close;
  end;
  Act_CheckQry.Execute;  //检验数量计算

  MData_SList.Edit;
  MData_SList.First;
  MData_SList.EnableControls;
  cxGV_SList.DataController.DataModeController.GridMode:=False;
  cxGV_SList.DataController.DataModeController.SmartRefresh:=False;

end;

procedure TFrm_Check.FCheckICQCPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='select distinct NumID,Num from systemuser with(nolock) where FPermission=''子公司检验员'' and FDepartmentID=:FDepartmentID order by Num ';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Open;
  finally
   ;
  end;

  selValue:=select('选择请求检验员','Num','Num','Num','Num',qry);
  If (Length(selValue)>0) then
  begin
    MData_CItem.Edit;
    MData_CItem['FCheckICQCID']:=qry.FieldByName('NumID').Value;
    MData_CItem['FCheckICQC']:=qry.FieldByName('Num').Value;
    MData_CItem.Post;
  end;

end;

procedure TFrm_Check.MyTreeView_CheckWriteExpanding(Sender: TObject;
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

  qry.SQL.Text:='Select * from VT_Check_Write with(nolock) where FParentNumber= '''
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
    with MyTreeView_CheckWrite.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('Isleaf').value;
    end;
    qry.Next;
  end;


end;

procedure TFrm_Check.MyTreeView_CheckWriteChange(Sender: TObject;
  Node: TTreeNode);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If Node = nil then Exit;
  with PTree(Node.Data)^ do
  begin
    ListFNumber_CheckWrite:=trim(PTree(Node.Data).FNumber);
    P_List_CheckWrite:=PTree(Node.Data).Caption;
    P_Isleaf_CheckWrite:=PTree(Node.Data).Isleaf;
    mdata_CList.DisableControls;
    cxGV_CList.DataController.DataModeController.GridMode:=True;
    cxGV_CList.DataController.DataModeController.SmartRefresh:=True;

    Act_PC_CheckList.Execute;
    Act_Status_M.Execute;  //权限设置

    mdata_CList.EnableControls;
    cxGV_CList.DataController.DataModeController.GridMode:=False;
    cxGV_CList.DataController.DataModeController.SmartRefresh:=False;  
  end;


end;

procedure TFrm_Check.MyTreeView_CheckICQCExpanding(Sender: TObject;
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

  qry.SQL.Text:='Select * from VT_Check_ICQC with(nolock) where FParentNumber= '''
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
    with MyTreeView_CheckICQC.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('Isleaf').value;
    end;
    qry.Next;
  end;




end;

procedure TFrm_Check.MyTreeView_CheckICQCChange(Sender: TObject;
  Node: TTreeNode);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If Node = nil then Exit;
  with PTree(Node.Data)^ do
  begin
    ListFNumber_CheckICQC:=trim(PTree(Node.Data).FNumber);
    P_Isleaf_CheckICQC:=PTree(Node.Data).Isleaf;
    mdata_CList.DisableControls;
    cxGV_CList.DataController.DataModeController.GridMode:=True;
    cxGV_CList.DataController.DataModeController.SmartRefresh:=True;

    Act_PC_CheckList.Execute;
    Act_Status_M.Execute;  //权限设置

    mdata_CList.EnableControls;
    cxGV_CList.DataController.DataModeController.GridMode:=False;
    cxGV_CList.DataController.DataModeController.SmartRefresh:=False;
  end;




end;

procedure TFrm_Check.PC_CheckChange(Sender: TObject);
begin
  inherited;
  TB_Ref_Check.Click;
end;

procedure TFrm_Check.TB_EditLListClick(Sender: TObject);
var
   AFirstColumnStyle: TcxStyle;
begin
  inherited;
  P_state:=1;
  ToolBar_CItem.Visible:=False;
  RSP_CList.Enabled:=False;

  FCheckNoQry.Visible:=True;
  FCheckNoQry.Options.Editing:=True;
  FCheckListRemark.Options.Editing:=True;

  TB_EditLList.Enabled:=False;
  OKBtn.Visible:=True;
  CancelBtn.Visible:=True;
  //列颜色
  AFirstColumnStyle := TcxStyle.Create(Self);
  AFirstColumnStyle.Color := clSkyBlue;//clAqua; //clYellow;
  AFirstColumnStyle.TextColor :=clBlue;
  cxGV_Clist.Columns[cxGV_Clist.FindItemByName('FCheckNoQry').Index].Styles.Content := AFirstColumnStyle;        //FCheckNosQry
  cxGV_Clist.Columns[cxGV_Clist.FindItemByName('FCheckListRemark').Index].Styles.Content := AFirstColumnStyle;        //FCheckListRemark
  
end;

procedure TFrm_Check.OKBtnClick(Sender: TObject);
var
  IsEdit:bool;
  qry: TADOQuery;
  I_index:integer;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  I_index:=mdata_CList.RecNo ;
  mdata_CList.Edit;
  mdata_CList.Post;
  If ShowMsg('是否保存检验情况？','提示') then
  begin
    mdata_CList.DisableControls;
    mdata_CList.First;
    while not mdata_CList.EoF do
    begin
      try
        qry.SQL.Text:='Update T_CheckList set FCheckYesQry=:FCheckYesQry,FCheckNoQry=:FCheckNoQry where FCheckListID=:FCheckListID';
        qry.Parameters[0].Value:=mdata_CList['FCheckYesQry'];
        qry.Parameters[1].Value:=mdata_CList['FCheckNoQry'];
        qry.Parameters[2].Value:=mdata_CList['FCheckListID'];
        qry.ExecSQL;
       finally
        ;
      end;
      mdata_CList.next;
    end;
    mdata_CList.EnableControls;
  end;

  If (I_index<mdata_CList.RecordCount) and (I_index<>-1) then
     mdata_CList.RecNo :=I_index
  else
     mdata_CList.Last;
 
  CancelBtn.Click;

end;

procedure TFrm_Check.CancelBtnClick(Sender: TObject);
var
   AFirstColumnStyle: TcxStyle;
begin
  inherited;
  ToolBar_CItem.Visible:=True;
  RSP_CList.Enabled:=True;

  TB_EditLList.Enabled:=True;
  OKBtn.Visible:=False;
  CancelBtn.Visible:=False;

  FCheckNoQry.Visible:=False;
  FCheckNoQry.Options.Editing:=False;
  FCheckListRemark.Options.Editing:=False;

  AFirstColumnStyle := TcxStyle.Create(Self);
  AFirstColumnStyle.Color := clCaptionText;
  AFirstColumnStyle.TextColor := clWindowText;
  cxGV_Clist.Columns[cxGV_Clist.FindItemByName('FCheckNoQry').Index].Styles.Content := AFirstColumnStyle;        //FCheckNosQry
  cxGV_Clist.Columns[cxGV_Clist.FindItemByName('FCheckListRemark').Index].Styles.Content := AFirstColumnStyle;        //FCheckListRemark

end;

procedure TFrm_Check.TB_CheckQryClick(Sender: TObject);
var
  proc:TADOStoredProc;
  P_Retinf1:String;

begin
  proc:=TADOStoredProc.Create(self);
  proc.ConnectionString:=mdlData.ReadConnStr;
  proc.CommandTimeout:=500;
  try
    proc.ProcedureName:='P_Check_CheckQry;1';
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=20;
      name := '@FFullNumber';
      value:=copy(ListFNumber_SList,pos(';',ListFNumber_SList)+1,length(ListFNumber_SList)-pos(';',ListFNumber_SList));
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
  finally
    ;
  end;
  proc.Free;



end;

procedure TFrm_Check.Act_Set_Open_MExecute(Sender: TObject);
var
   AFirstColumnStyle,AFirstColumnStyle_Yellow: TcxStyle;
begin
  inherited;
  //列颜色
  AFirstColumnStyle := TcxStyle.Create(Self);
  AFirstColumnStyle.Color := clSkyBlue;//clAqua; //clYellow;
  AFirstColumnStyle.TextColor :=clBlue;
  AFirstColumnStyle_Yellow := TcxStyle.Create(Self);
  AFirstColumnStyle_Yellow.Color := clYellow;//clAqua; //clYellow;
  AFirstColumnStyle_Yellow.TextColor :=clBlue;

  cxGV_Clist.Columns[cxGV_Clist.FindItemByName('Sel').Index].Styles.Content := AFirstColumnStyle_Yellow;        //FCheckNosQry
  cxGV_Clist.Columns[cxGV_Clist.FindItemByName('FCheckQry').Index].Styles.Content := AFirstColumnStyle;        //FCheckListRemark

  cxGV_CItem.Columns[cxGV_CItem.FindItemByName('FTeamName_M').Index].Styles.Content := AFirstColumnStyle_Yellow;        //FCheckNosQry
  cxGV_CItem.Columns[cxGV_CItem.FindItemByName('FCheckICQC').Index].Styles.Content := AFirstColumnStyle_Yellow;        //FCheckListRemark

  ToolBar_CItem.Visible:=False;
  MyTreeView_CheckList.Enabled:=False;
  RSP_CList.Enabled:=False;
  PC_Check.Enabled:=False;
  P_Btn.Visible:=True;

  OkBtn_M.Visible:=True;
  CancelBtn_M.Visible:=True;
  FSumQry.Visible:=True;

  cxGV_CItem.OptionsData.Editing:=True;
  FTeamName_M.Options.Editing:=True;
  FBranchItemNumber.Options.Editing:=True;
  FCheckICQC.Options.Editing:=True;
  FCheckListRemark.Options.Editing:=True;
  FCheckWriteDate.Options.Editing:=True;

  cxGV_CList.OptionsData.Editing:=True;
  FCheckQry.Options.Editing:=True;
  FCheckListReMark.Options.Editing:=True;
  Sel.Visible:=True;
  Sel.Options.Editing:=True;

  cxGV_SList.OptionsData.Editing:=True;

  If mdlData.CheckFrmRights(TFrm_Check.ClassName,'新增')=True then
  begin
    FCheckYesQry.Visible:=False;
    FCheckNoQry.Visible:=False;
  end;

  If mdlData.CheckFrmRights(TFrm_Check.ClassName,'校对')=True then
  begin
    FCheckYesQry.Visible:=True;
    FCheckNoQry.Visible:=True;
  end;


end;

procedure TFrm_Check.Act_Set_Close_MExecute(Sender: TObject);
var
   AFirstColumnStyle: TcxStyle;
begin
  inherited;
  AFirstColumnStyle := TcxStyle.Create(Self);
  AFirstColumnStyle.Color := clCaptionText;
  AFirstColumnStyle.TextColor := clWindowText;
  cxGV_Clist.Columns[cxGV_Clist.FindItemByName('FCheckQry').Index].Styles.Content := AFirstColumnStyle;        //FCheckNosQry
  cxGV_Clist.Columns[cxGV_Clist.FindItemByName('Sel').Index].Styles.Content := AFirstColumnStyle;        //FCheckListRemark

  cxGV_CItem.Columns[cxGV_CItem.FindItemByName('FCheckICQC').Index].Styles.Content := AFirstColumnStyle;        //FCheckNosQry
  cxGV_CItem.Columns[cxGV_CItem.FindItemByName('FTeamName_M').Index].Styles.Content := AFirstColumnStyle;        //FCheckNosQry


  ToolBar_CItem.Visible:=True;
  PC_Check.Enabled:=True;

  RSP_CList.Enabled:=True;

  MyTreeView_CheckList.Enabled:=True;
  MyTreeView_SList.Enabled:=True;
  cxGV_CItem.OptionsData.Editing:=False;
  cxGV_CList.OptionsData.Editing:=False;

  FSumQry.Visible:=False;
  FCheckYesQry.Visible:=False;
  FCheckNoQry.Visible:=False;
  Sel.Visible:=False;
  Sel.Options.Editing:=False;

  P_Btn.Visible:=False;
  P_Btn3.Visible:=False;
  SelBtn.Visible:=False;
  SelCancelBtn.Visible:=False;
  OkBtn_M.Visible:=False;
  CancelBtn_M.Visible:=False;

  P_state:=2;


end;

procedure TFrm_Check.Act_Set_OpenExecute(Sender: TObject);
begin
  inherited;
  TB_Ref_Stock.Enabled:=False;
  MyTreeView_SList.Enabled:=True;
  PC_Check.Enabled:=False;

  OKBtn_M.Visible:=True;
  CancelBtn_M.Visible:=True;
  cxGV_SList.OptionsData.Editing:=True;

  Self.TB_Ref_Stock.Click;

end;

procedure TFrm_Check.Act_Set_CloseExecute(Sender: TObject);
begin
  inherited;
  TB_Ref_Stock.Enabled:=True;
  MyTreeView_CheckList.Enabled:=True;
  MyTreeView_SList.Enabled:=True;
  PC_Check.Enabled:=True;
  OKBtn_M.Visible:=False;
  CancelBtn_M.Visible:=False;

end;

procedure TFrm_Check.FTeamPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  MData_CItem.Edit;
  MData_CItem.Post;
  If MData_CItem['FTeamName']=Null then
  begin
    MData_CItem.Edit;
    MData_CItem['FTeamName']:='';
    MData_CItem.Post;
  end;
  try
    qry.SQL.Text:='select * from T_Team with(nolock) where FDepartmentID=:FDepartmentID order by FWorkShop,FTeamName ';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Open;
  finally
   ;
  end;

  selValue:=select('选择送检班组','FTeamName','FWorkShop','FTeamName','FWorkShop;FTeamName',qry);
  If (Length(selValue)>0) then
  begin
    MData_CItem.Edit;
    MData_CItem['FTeamID']:=qry.FieldByName('FTeamID').Value;
    MData_CItem['FTeamName']:=qry.FieldByName('FTeamName').Value;
    MData_CItem['FWorkShop']:=qry.FieldByName('FWorkShop').Value;
    MData_CItem.Post;
  end;

end;

procedure TFrm_Check.MyTreeView_CheckTeamExpanding(Sender: TObject;
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

  qry.SQL.Text:='Select * from VT_Check_Team with(nolock) where FParentNumber= '''
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
    with MyTreeView_CheckTeam.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('Isleaf').value;
    end;
    qry.Next;
  end;



end;

procedure TFrm_Check.MyTreeView_CheckItemExpanding(Sender: TObject;
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

  qry.SQL.Text:='Select * from VT_Check_Item with(nolock) where FParentNumber= '''
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
    with MyTreeView_CheckItem.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('Isleaf').value;
    end;
    qry.Next;
  end;


end;

procedure TFrm_Check.MyTreeView_CheckTeamChange(Sender: TObject;
  Node: TTreeNode);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If Node = nil then Exit;
  with PTree(Node.Data)^ do
  begin
    ListFNumber_CheckTeam:=trim(PTree(Node.Data).FNumber);
    P_Isleaf_CheckTeam:=PTree(Node.Data).Isleaf;
    mdata_CList.DisableControls;
    cxGV_CList.DataController.DataModeController.GridMode:=True;
    cxGV_CList.DataController.DataModeController.SmartRefresh:=True;

    Act_PC_CheckList.Execute;
    Act_Status_M.Execute;  //权限设置

    mdata_CList.EnableControls;
    cxGV_CList.DataController.DataModeController.GridMode:=False;
    cxGV_CList.DataController.DataModeController.SmartRefresh:=False;
  end;

end;

procedure TFrm_Check.MyTreeView_CheckItemChange(Sender: TObject;
  Node: TTreeNode);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If Node = nil then Exit;
  with PTree(Node.Data)^ do
  begin
    ListFNumber_CheckItem:=trim(PTree(Node.Data).FNumber);
    P_Isleaf_CheckItem:=PTree(Node.Data).Isleaf;
    mdata_CList.DisableControls;
    cxGV_CList.DataController.DataModeController.GridMode:=True;
    cxGV_CList.DataController.DataModeController.SmartRefresh:=True;

    Act_PC_CheckList.Execute;
    Act_Status_M.Execute;  //权限设置

    mdata_CList.EnableControls;
    cxGV_CList.DataController.DataModeController.GridMode:=False;
    cxGV_CList.DataController.DataModeController.SmartRefresh:=False;
  end;

end;

procedure TFrm_Check.Act_PC_CheckListExecute(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If PC_Check.ActivePage=TS_CheckList then
  begin
    If P_Isleaf_CList>0 then
    begin
      try
        qry.SQL.Text:='select distinct FCheckNum,FCheckItemID,FCheckNo,FFileNo,FClientFullName,FClientShortName,FbranchItemNumber,FItemModel,'
                     +'FPartsNumber,FPartsName,FPartsCode,FWorkPartsNum,FWorkParts,FTeamID,FWorkShop,FTeamName,FCheckICQCID,FCheckICQC,FCheckStatus,FCheckStatusNotes,FCheckWriteID,FCheckWrite,FCheckWriteDate,FCheckSubmitDate,FCheckCheck,FCheckCheckDate '
                     +' from V_CheckList with(nolock) where FCheckFullNumber like :FCheckFullNumber';
        qry.Parameters.FindParam('FCheckFullNumber').Value:=ListFNumber_CList+'%';
        qry.Open;
      finally
         ;
      end;
      If qry.RecordCount>0 then
      begin
        MData_CItem.CopyFromDataSet(qry);
        MData_CItem.Open;
      end;
      If MyItemListFieldWhere(qry,mdata_CList,' * ','V_CheckList','FCheckFullNumber',ListFNumber_CList,'','FCheckFullNumber,FCheckNum,FCheckListNum') then
      begin
        mdata_CList.Open;
      end
      else
        mdata_CList.Close;
    end
    else
    begin
      TB_Submit.Visible:=False;
      TB_Edit_M.Visible:=False;
      TB_EditLList.Visible:=False;
      TB_Del.Visible:=False;
      mdata_CItem.Close;
      mdata_CList.Close;
    end;
    Exit;
  end;
  If PC_Check.ActivePage=TS_Write then
  begin
    If P_Isleaf_CheckWrite>0 then
    begin
      try
        qry.SQL.Text:='select distinct FCheckNum,FCheckItemID,FCheckNo,FFileNo,FClientFullName,FClientShortName,FbranchItemNumber,FItemModel,'
                     +'FPartsNumber,FPartsName,FPartsCode,FWorkPartsNum,FWorkParts,FTeamID,FWorkShop,FTeamName,FCheckICQCID,FCheckICQC,FCheckStatus,FCheckStatusNotes,FCheckWriteID,FCheckWrite,FCheckWriteDate,FCheckSubmitDate,FCheckCheck,FCheckCheckDate '
                     +' from V_CheckList with(nolock) where FCheckFullNumberWrite like :FCheckFullNumberWrite';
        qry.Parameters.FindParam('FCheckFullNumberWrite').Value:=ListFNumber_CheckWrite+'%';
        qry.Open;
      finally
         ;
      end;
      If qry.RecordCount>0 then
      begin
        MData_CItem.CopyFromDataSet(qry);
        MData_CItem.Open;
      end;
      If MyItemListFieldWhere(qry,mdata_CList,' * ','V_CheckList','FCheckFullNumberWrite',ListFNumber_CheckWrite,'','FCheckFullNumberWrite,FCheckNum,FCheckListNum') then
      begin
        mdata_CList.Open;
      end
      else
        mdata_CList.Close;
    end
    else
    begin
      TB_Submit.Visible:=False;
      TB_Edit_M.Visible:=False;
      TB_EditLList.Visible:=False;
      TB_Del.Visible:=False;
      mdata_CItem.Close;
      mdata_CList.Close;
    end;
    Exit;
  end;
  If PC_Check.ActivePage=TS_ICQC then
  begin
    If P_Isleaf_CheckICQC>0 then
    begin
      try
        qry.SQL.Text:='select distinct FCheckNum,FCheckItemID,FCheckNo,FFileNo,FClientFullName,FClientShortName,FbranchItemNumber,FItemModel,'
                     +'FPartsNumber,FPartsName,FPartsCode,FWorkPartsNum,FWorkParts,FTeamID,FWorkShop,FTeamName,FCheckICQCID,FCheckICQC,FCheckStatus,FCheckStatusNotes,FCheckWriteID,FCheckWrite,FCheckWriteDate,FCheckSubmitDate,FCheckCheck,FCheckCheckDate '
                     +' from V_CheckList with(nolock) where FCheckFullNumberICQC like :FCheckFullNumberICQC';
        qry.Parameters.FindParam('FCheckFullNumberICQC').Value:=ListFNumber_CheckICQC+'%';
        qry.Open;
      finally
         ;
      end;
      If qry.RecordCount>0 then
      begin
        MData_CItem.CopyFromDataSet(qry);
        MData_CItem.Open;
      end;
      If MyItemListFieldWhere(qry,mdata_CList,' * ','V_CheckList','FCheckFullNumberICQC',ListFNumber_CheckICQC,'','FCheckFullNumberICQC,FCheckNum,FCheckListNum') then
      begin
        mdata_CList.Open;
      end
      else
        mdata_CList.Close;
    end
    else
    begin
      TB_Submit.Visible:=False;
      TB_Edit_M.Visible:=False;
      TB_EditLList.Visible:=False;
      TB_Del.Visible:=False;
      mdata_CItem.Close;
      mdata_CList.Close;
    end;
    Exit;
  end;
  If PC_Check.ActivePage=TS_Team then
  begin
    If P_Isleaf_CheckTeam>0 then
    begin
      try
        qry.SQL.Text:='select distinct FCheckNum,FCheckItemID,FCheckNo,FFileNo,FClientFullName,FClientShortName,FbranchItemNumber,FItemModel,'
                     +'FPartsNumber,FPartsName,FPartsCode,FWorkPartsNum,FWorkParts,FTeamID,FWorkShop,FTeamName,FCheckICQCID,FCheckICQC,FCheckStatus,FCheckStatusNotes,FCheckWriteID,FCheckWrite,FCheckWriteDate,FCheckSubmitDate,FCheckCheck,FCheckCheckDate '
                     +' from V_CheckList with(nolock) where FCheckFullNumberTeam like :FCheckFullNumberTeam';
        qry.Parameters.FindParam('FCheckFullNumberTeam').Value:=ListFNumber_CheckTeam+'%';
        qry.Open;
      finally
         ;
      end;
      If qry.RecordCount>0 then
      begin
        MData_CItem.CopyFromDataSet(qry);
        MData_CItem.Open;
      end;
      If MyItemListFieldWhere(qry,mdata_CList,' * ','V_CheckList','FCheckFullNumberTeam',ListFNumber_CheckTeam,'','FCheckFullNumberTeam,FCheckNum,FCheckListNum') then
      begin
        mdata_CList.Open;
      end
      else
        mdata_CList.Close;
    end
    else
    begin
      TB_Submit.Visible:=False;
      TB_Edit_M.Visible:=False;
      TB_EditLList.Visible:=False;
      TB_Del.Visible:=False;
      mdata_CItem.Close;
      mdata_CList.Close;
    end;
    Exit;
  end;
  If PC_Check.ActivePage=TS_Item then
  begin
    If P_Isleaf_CheckItem>0 then
    begin
      try
        qry.SQL.Text:='select distinct FCheckNum,FCheckItemID,FCheckNo,FFileNo,FClientFullName,FClientShortName,FbranchItemNumber,FItemModel,'
                     +'FPartsNumber,FPartsName,FPartsCode,FWorkPartsNum,FWorkParts,FTeamID,FWorkShop,FTeamName,FCheckICQCID,FCheckICQC,FCheckStatus,FCheckStatusNotes,FCheckWriteID,FCheckWrite,FCheckWriteDate,FCheckSubmitDate,FCheckCheck,FCheckCheckDate '
                     +' from V_CheckList with(nolock) where FCheckFullNumberItem like :FCheckFullNumberItem';
        qry.Parameters.FindParam('FCheckFullNumberItem').Value:=ListFNumber_CheckItem+'%';
        qry.Open;
      finally
         ;
      end;
      If qry.RecordCount>0 then
      begin
        MData_CItem.CopyFromDataSet(qry);
        MData_CItem.Open;
      end;
      If MyItemListFieldWhere(qry,mdata_CList,' * ','V_CheckList','FCheckFullNumberItem',ListFNumber_CheckItem,'','FCheckFullNumberItem,FCheckNum,FCheckListNum') then
      begin
        mdata_CList.Open;
      end
      else
        mdata_CList.Close;
    end
    else
    begin
      TB_Submit.Visible:=False;
      TB_Edit_M.Visible:=False;
      TB_EditLList.Visible:=False;
      TB_Del.Visible:=False;
      mdata_CItem.Close;
      mdata_CList.Close;
    end;
    Exit;
  end;
end;

procedure TFrm_Check.ToolButton1Click(Sender: TObject);
begin
  inherited;
  SelCancelBtn.Click;
end;

procedure TFrm_Check.Act_MenuExecute(Sender: TObject);
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

procedure TFrm_Check.Act_Menu_SetExecute(Sender: TObject);
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

procedure TFrm_Check.cxGrid_SItemContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
    GV:='cxGV_SItem';
    Gm:='mdata_SItem';
    Gr:='cxGrid_SItem';
    Act_Menu_Set.Execute;

end;

procedure TFrm_Check.cxGrid_SListContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
    GV:='cxGV_SList';
    Gm:='mdata_SList';
    Gr:='cxGrid_SList';
    Act_Menu_Set.Execute;

end;

procedure TFrm_Check.cxGrid_CListContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV_CList';
  Gm:='mdata_CList';
  Gr:='cxGrid_CList';
  Act_Menu_Set.Execute;

end;

procedure TFrm_Check.cxGrid_CItemContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV_CItem';
  Gm:='mdata_CItem';
  Gr:='cxGrid_CItem';
  Act_Menu_Set.Execute;

end;

procedure TFrm_Check.N_EditClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_Check.N_FilterClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_Check.N_SortClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_Check.N_GroupClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_Check.N_SetClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_Check.N_OutClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_Check.Act_Update_CheckQryExecute(Sender: TObject);
var
  qry: TADOQuery;
  i:Integer;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  mdata_CList.Edit;
  mdata_CList.First;
  while not mdata_CList.eof do
  begin
    //送检数量
    try
      qry.SQL.Text:='Update T_Stocklist set FSumCheckQry=isnull(b.FCheckQry,0) from T_Stocklist as a inner join '
                   +'(select FFullNumber,sum(FCheckQry) as FCheckQry from V_CheckList with(nolock) where FFullNumber=:FFullNumber group by FFullNumber) as b '
                   +' on a.FFullNumber=b.FFullNumber ';
      qry.Parameters.FindParam('FFullNumber').value:=mdata_CList['FFullNumber'];
      qry.ExecSQL;
    finally
       ;
    end;
    {//检验合格数量
    try
      qry.SQL.Text:='update T_Stocklist set FSumCheckYesQry=isnull(b.FCheckYesQry,0) from T_Stocklist as a inner join '
                   +'(select FFullNumber, sum(FCheckYesQry) as FCheckYesQry from V_CheckList with(nolock) where FCheckStatus=2 and FFullNumber=:FFullNumber group by FFullNumber) as b  '
                   +'on a.FFullNumber=b.FFullNumber ';
      qry.Parameters.FindParam('FFullNumber').value:=mdata_CList['FFullNumber'];
      qry.ExecSQL;
    finally
       ;
    end;
    //检验不合格数量
    try
      qry.SQL.Text:='update T_Stocklist set FSumCheckNoQry=isnull(b.FCheckNoQry,0) from T_Stocklist as a inner join  '
                   +'(select FFullNumber, sum(FCheckNoQry) as FCheckNoQry from V_CheckList with(nolock) where FCheckStatus=2 and FFullNumber=:FFullNumber group by FFullNumber) as b   '
                   +'on a.FFullNumber=b.FFullNumber ';
      qry.Parameters.FindParam('FFullNumber').value:=mdata_CList['FFullNumber'];
      qry.ExecSQL;
    finally
       ;
    end;
    //检验合格重量
    try
      qry.SQL.Text:='update T_Stocklist set FSumCheckYesSuttle=isnull(b.FSumSuttle,0) from T_Stocklist as a inner join  '
                    +'(select FFullNumber, sum(FSumSuttle) as FSumSuttle from V_CheckList with(nolock) where FCheckStatus=2 and FFullNumber=:FFullNumber group by FFullNumber) as b   '
                    +'on a.FFullNumber=b.FFullNumber ';
      qry.Parameters.FindParam('FFullNumber').value:=mdata_CList['FFullNumber'];
      qry.ExecSQL;
    finally
       ;
    end;  }
    mdata_CList.Next;
  end;

  qry.Free;


end;

procedure TFrm_Check.E_thPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='select * from V_StockList with(nolock) where cast(FFactureID as nvarchar(20))+'';''+FFullNumber like :FFullNumber and FFActureID=:FFActureID and th like :th';
    qry.Parameters.FindParam('FFullNumber').value:=ListFNumber_SList+'%';
    qry.Parameters.FindParam('FFActureID').value:=UserFDepartmentID;
    qry.Parameters.FindParam('th').value:='%'+Trim(E_th.Text)+'%';
    qry.open;
  finally
    ;
  end;
  mdata_SList.CopyFromDataSet(qry);
  mdata_SList.Active:=True;
  If mdata_SList.RecordCount>0 then
  begin
    P_Btn3.Visible:=True;
    SelBtn.Visible:=True;
  end
  else
  begin
    P_Btn3.Visible:=False;
    SelBtn.Visible:=False;
  end;

end;

procedure TFrm_Check.Act_Update_CheckYesQryExecute(Sender: TObject);
var
  qry: TADOQuery;
  i:Integer;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
    //检验合格数量
    try
      qry.SQL.Text:='update T_Stocklist set FSumCheckYesQry=isnull(b.FCheckYesQry,0) from T_Stocklist as a inner join '
                   +'(select FFullNumber, sum(FCheckYesQry) as FCheckYesQry from V_CheckList with(nolock) where FCheckItemID=:FCheckItemID '
                   +'group by FFullNumber) as b on a.FFullNumber=b.FFullNumber ';
      qry.Parameters.FindParam('FCheckItemID').value:=mdata_CItem['FCheckItemID'];
      qry.ExecSQL;
    finally
       ;
    end;
    //检验不合格数量
    try
      qry.SQL.Text:='update T_Stocklist set FSumCheckNoQry=isnull(b.FCheckNoQry,0) from T_Stocklist as a inner join  '
                   +'(select FFullNumber, sum(FCheckNoQry) as FCheckNoQry from V_CheckList with(nolock) where FCheckItemID=:FCheckItemID '
                   +'group by FFullNumber) as b on a.FFullNumber=b.FFullNumber ';
      qry.Parameters.FindParam('FCheckItemID').value:=mdata_CItem['FCheckItemID'];
      qry.ExecSQL;
    finally
       ;
    end;
    //检验合格重量
    try
      qry.SQL.Text:='update T_Stocklist set FSumCheckYesSuttle=isnull(b.FSumSuttle,0) from T_Stocklist as a inner join  '
                    +'(select FFullNumber, sum(FSumSuttle) as FSumSuttle from V_CheckList with(nolock) where FCheckItemID=:FCheckItemID '
                    +'group by FFullNumber) as b on a.FFullNumber=b.FFullNumber ';
      qry.Parameters.FindParam('FCheckItemID').value:=mdata_CItem['FCheckItemID'];
      qry.ExecSQL;
    finally
       ;
    end;


  qry.Free;


end;

procedure TFrm_Check.TB_CheckPatchClick(Sender: TObject);
var
 qry:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
 // If (TB_Check.Caption='提交') or (TB_Check.Caption='批量提交') then
  begin
    If application.MessageBox(Pchar('系统提示：是否将单号为：【'+P_List+'】的单据进行补单？'+chr(13)+chr(13)
                                   +'确定要对本单据补单吗？'),'系统提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      MData_CItem.First;
      while not MData_CItem.eof do
      begin
        try
          qry.SQL.Text:='Update T_CheckItem Set FCheckStatus=2,FCheckSubmitDate=:FCheckSubmitDate,FCheckCheckID=:FCheckCheckID,FCheckCheckDate=:FCheckCheckDate  where FCheckItemID=:FCheckItemID';
          qry.Parameters.FindParam('FCheckSubmitDate').value:=MData_CItem['FCheckWriteDate'];
          qry.Parameters.FindParam('FCheckCheckID').value:= MData_CItem['FCheckICQCID'];
          qry.Parameters.FindParam('FCheckCheckDate').value:= MData_CItem['FCheckWriteDate'];
          qry.Parameters.FindParam('FCheckItemID').value:=MData_CItem['FCheckItemID'];
          qry.ExecSQL;
        finally
          ;
        end;
        Act_Update_CheckYesQry.Execute;//检验数量更新
        MData_CItem.Edit;
        MData_CItem['FCheckStatus']:=2;
        MData_CItem['FCheckStatusNotes']:='检验';
      //  MData_CItem['FCheckCheckID']:=MData_CItem['FCheckICQCID'];
        MData_CItem['FCheckCheck']:=MData_CItem['FCheckICQC'];
        MData_CItem['FCheckSubmitDate']:=MData_CItem['FCheckWriteDate'];
        MData_CItem['FCheckCheckDate']:=MData_CItem['FCheckWriteDate'];
        MData_CItem.Post;
        MData_CItem.Next;
      end;
      if MData_CItem.RecordCount=1 then
      begin
        application.MessageBox('补单完毕！','系统提示',MB_ICONINFORMATION);
      end;
      if MData_CItem.RecordCount>1 then
      begin
        application.MessageBox('批量补单完毕！','系统提示',MB_ICONINFORMATION);
      end;
    end;
    P_state:=2;
    Exit;
  end;


end;

end.
