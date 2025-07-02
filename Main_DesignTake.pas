unit Main_DesignTake;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FrmGridBass, ExtCtrls, StdCtrls, DsFancyButton, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  dxmdaset, cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid,
  cxTextEdit, cxDropDownEdit, cxCalendar, cxMaskEdit, cxContainer, cxLabel,
  cxDBLookupComboBox, ADODB, cxButtonEdit, Grids, DBGrids, ComCtrls, Comobj,  RzShellDialogs,
  ToolWin, ImgList, FR_DSet, FR_DBSet, FR_Class, cxRadioGroup, Buttons,StrUtils,
  cxGroupBox, cxCheckBox, cxCurrencyEdit, RzPanel, RzSplit, RzTabs,IniFiles,
  jpeg, cxLookAndFeelPainters, cxButtons, cxMemo, ActnList, cxDBEdit, Menus,
  cxImage, RzStatus;

type
    TFrm_DesignTake = class(TFrm_GridBass)
    ImageList: TImageList;
    frReport: TfrReport;
    frDBDataSet: TfrDBDataSet;
    PC_1: TRzPageControl;
    TS_Take: TRzTabSheet;
    RzSizePanel2: TRzSizePanel;
    ToolBar_Take: TToolBar;
    TB_App: TToolButton;
    TB_Edit: TToolButton;
    TB_Del: TToolButton;
    TB_Ref: TToolButton;
    ToolButton7: TToolButton;
    TB_Prin: TToolButton;
    ToolButton10: TToolButton;
    DS_Mdata_TakeList: TDataSource;
    MData_TakeList: TdxMemData;
    TB_EXIT2: TToolButton;
    Panel1: TPanel;
    ToolBar_Save: TPanel;
    Bevel_button: TBevel;
    OKBtn: TcxButton;
    CancelBtn: TcxButton;
    MData_TakeListth: TStringField;
    MData_TakeListmc: TStringField;
    MData_TakeListgg: TStringField;
    MData_TakeListFSumQry: TIntegerField;
    MData_TakeListFTakeDemand: TStringField;
    MData_TakeListFTakeListReMark: TStringField;
    MData_TakeListFSumSuttle: TFloatField;
    MData_TakeListFName: TStringField;
    MData_TakeListFModel: TStringField;
    MData_TakeListUnitName: TStringField;
    TS_K3: TRzTabSheet;
    ToolBar2: TToolBar;
    TB_SelK4: TToolButton;
    ToolButton2: TToolButton;
    ToolButton6: TToolButton;
    TB_Return: TToolButton;
    cxGrid_K3: TcxGrid;
    cxGV_K3: TcxGridDBTableView;
    FNumber_K3: TcxGridDBColumn;
    FName_K3: TcxGridDBColumn;
    FModel_K3: TcxGridDBColumn;
    UnitName_K3: TcxGridDBColumn;
    FItemId_K3: TcxGridDBColumn;
    FDepartmentID_K3: TcxGridDBColumn;
    cxGL_K3: TcxGridLevel;
    MData_TakeListFNumber: TStringField;
    MData_TakeListFk3Name: TStringField;
    MData_TakeListFK3Model: TStringField;
    MData_TakeListFOrderNoQry: TIntegerField;
    TB_Audit: TToolButton;
    actionList: TActionList;
    Act_App: TAction;
    Act_Edit: TAction;
    Act_Del: TAction;
    Act_Audit: TAction;
    Act_Save: TAction;
    Act_SetOpen: TAction;
    Act_SetClose: TAction;
    Act_Set_MaxID: TAction;
    Act_AddRd: TAction;
    Act_EditRd: TAction;
    Act_DelRd: TAction;
    Act_AddMain: TAction;
    Act_AddList: TAction;
    Act_Temp: TAction;
    TB_Check: TToolButton;
    TB_PushDown: TToolButton;
    Act_Check: TAction;
    Act_PushDown: TAction;
    Act_Submit: TAction;
    TB_Submit: TToolButton;
    Act_Status: TAction;
    MData_TakeItem: TdxMemData;
    DS_Mdata_TakeItem: TDataSource;
    MData_TakeItemFTakeID: TIntegerField;
    MData_TakeItemFTakeDate: TDateField;
    MData_TakeItemFItemListId: TIntegerField;
    MData_TakeItemFBranchFileNo: TStringField;
    MData_TakeItemFTakeWrite: TStringField;
    MData_TakeItemFTakeWriteDate: TDateTimeField;
    MData_TakeItemFItemNumber: TStringField;
    Act_Refsh: TAction;
    PC_Tree: TPageControl;
    TS_Item: TTabSheet;
    TS_Write: TTabSheet;
    MyTreeView_Item: TTreeView;
    TS_DesignLeader: TTabSheet;
    MyTreeView_Write: TTreeView;
    MyTreeView_DesignLeader: TTreeView;
    Act_Ref_Write: TAction;
    TBar_Sel: TToolBar;
    TB_Ref_Item: TcxButton;
    ToolBar5: TToolBar;
    TB_Ref_Write: TcxButton;
    Act_Ref_Item: TAction;
    ToolBar6: TToolBar;
    TB_Ref_DesignLeader: TcxButton;
    Act_Ref_DesignLeader: TAction;
    RSP_List: TRzSizePanel;
    MData_TakeListFTakeQry: TIntegerField;
    MData_TakeListFPlanTenderQry: TIntegerField;
    MData_TakeListFTenderCoeQry: TIntegerField;
    MData_TakeListFOrderQry: TIntegerField;
    TB_Take: TToolButton;
    SaveDialog1: TSaveDialog;
    OpenDialog1: TOpenDialog;
    RB_Ref_K3: TToolButton;
    Panel5: TPanel;
    Bevel4: TBevel;
    Label11: TLabel;
    E_Locate_k3: TcxButtonEdit;
    MData_K3: TdxMemData;
    DS_Mdata_K3: TDataSource;
    Act_Input: TAction;
    Act_Pick: TAction;
    Bevel1: TBevel;
    Bevel2: TBevel;
    stbBar: TRzStatusBar;
    RzClockStatus1: TRzClockStatus;
    RzKeyStatus1: TRzKeyStatus;
    RzKeyStatus2: TRzKeyStatus;
    RzKeyStatus3: TRzKeyStatus;
    stbMsg: TRzFieldStatus;
    PageControl2: TPageControl;
    TS_TakeList: TTabSheet;
    cxGrid_TakeList: TcxGrid;
    cxGV_TakeList: TcxGridDBTableView;
    FTakeListNum_TakeList: TcxGridDBColumn;
    FNumber_TakeList: TcxGridDBColumn;
    FTakeName_TakeList: TcxGridDBColumn;
    FTakeModel_TakeList: TcxGridDBColumn;
    FTakeQry_TakeList: TcxGridDBColumn;
    FPlanTenderQry_TakeList: TcxGridDBColumn;
    FTenderCoeQry_TakeList: TcxGridDBColumn;
    FOrderQry_TakeList: TcxGridDBColumn;
    FTakeListReMark_TakeList: TcxGridDBColumn;
    FTakeUnitName_TakeList: TcxGridDBColumn;
    FTakeDemand_TakeList: TcxGridDBColumn;
    FTakeNumber_TakeList: TcxGridDBColumn;
    FOrderID_TakeList: TcxGridDBColumn;
    FTakeListID_TakeList: TcxGridDBColumn;
    FItemNumber_TakeList: TcxGridDBColumn;
    cxGL_TakeList: TcxGridLevel;
    ToolBar7: TToolBar;
    TS_TakeItem: TPageControl;
    TabSheet1: TTabSheet;
    cxGrid_TakeItem: TcxGrid;
    cxGV_TakeItem: TcxGridDBTableView;
    FBranchFileNo_TakeItem: TcxGridDBColumn;
    FClientShortName_TakeItem: TcxGridDBColumn;
    Pick: TcxGridDBColumn;
    FElectricNum_TakeItem: TcxGridDBColumn;
    FElectricName_TakeItem: TcxGridDBColumn;
    FItemNumber_TakeItem: TcxGridDBColumn;
    FTakeAddNum_TakeItem: TcxGridDBColumn;
    FTakeReMark_TakeItem: TcxGridDBColumn;
    FTakeDate_TakeItem: TcxGridDBColumn;
    FTakeStatusNotes_TakeItem: TcxGridDBColumn;
    FDesignLeader_TakeItem: TcxGridDBColumn;
    FTakeWrite_TakeItem: TcxGridDBColumn;
    FTakeWriteDate_TakeItem: TcxGridDBColumn;
    FTakeSubmitDate_TakeItem: TcxGridDBColumn;
    FTakeCheck_TakeItem: TcxGridDBColumn;
    FTakeCheckDate_TakeItem: TcxGridDBColumn;
    FTakeAudit_TakeItem: TcxGridDBColumn;
    FTakeAuditDate_TakeItem: TcxGridDBColumn;
    FTakePushDown_TakeItem: TcxGridDBColumn;
    FTakePushDownDate_TakeItem: TcxGridDBColumn;
    FFinsh_TakeItem: TcxGridDBColumn;
    FFinshDate_TakeItem: TcxGridDBColumn;
    FTakeID_TakeItem: TcxGridDBColumn;
    FElectricID_TakeItem: TcxGridDBColumn;
    FTakeStatus_TakeItem: TcxGridDBColumn;
    FFileItemID_TakeItem: TcxGridDBColumn;
    cxGL_TakeItem: TcxGridLevel;
    FTakeNumber_TakeItem: TcxGridDBColumn;
    FTakeNo_TakeItem: TcxGridDBColumn;
    Act_PickSel: TAction;
    PM: TPopupMenu;
    N_Edit: TMenuItem;
    N_Filter: TMenuItem;
    N_Sort: TMenuItem;
    N_Group: TMenuItem;
    N_Set: TMenuItem;
    N_Out: TMenuItem;
    Act_Menu: TAction;
    Act_Menu_Set: TAction;
    FTakedw_TakeList: TcxGridDBColumn;
    FTakemc_TakeList: TcxGridDBColumn;
    FTakegg_TakeList: TcxGridDBColumn;
    FTakeSumQry_TakeList: TcxGridDBColumn;
    Act_TS_Item: TAction;
    Act_TS_Write: TAction;
    Act_TS_DesignLeader: TAction;
    Act_FBranchFileNo: TAction;
    Act_FElectricName: TAction;
    Act_FBranchItemNumber: TAction;
    FTakeGBT_TakeList: TcxGridDBColumn;
    FTakeDesign_TakeList: TcxGridDBColumn;
    Act_Item: TAction;
    FApprovalStuffParentNumber_TakeList: TcxGridDBColumn;
    FApprovalStuffSort_TakeList: TcxGridDBColumn;
    Act_FApprovalStuffSortNumber: TAction;
    FApprovalStuffParentID_TakeList: TcxGridDBColumn;
    FApprovalStuffNumber_TakeList: TcxGridDBColumn;
    Act_FApprovalStuffNumber: TAction;
    FApprovalStuffSortID_TakeList: TcxGridDBColumn;
    FApprovalStuffSortNumber_TakeList: TcxGridDBColumn;
    FApprovalStuffRange_TakeList: TcxGridDBColumn;
    FApprovalQry_TakeList: TcxGridDBColumn;
    procedure CancelBtnClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TB_EXIT1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure MyTreeView_ItemExpanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure MyTreeView_ItemChange(Sender: TObject; Node: TTreeNode);
    procedure TB_EXITClick(Sender: TObject);
    procedure TB_PrinClick(Sender: TObject);
    procedure TB_EXIT3Click(Sender: TObject);
    procedure TB_SelK4Click(Sender: TObject);
    procedure cxGV_TakeListCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure Act_AppExecute(Sender: TObject);
    procedure Act_EditExecute(Sender: TObject);
    procedure Act_DelExecute(Sender: TObject);
    procedure Act_AuditExecute(Sender: TObject);
    procedure Act_SetOpenExecute(Sender: TObject);
    procedure Act_SetCloseExecute(Sender: TObject);
    procedure Act_CheckExecute(Sender: TObject);
    procedure Act_PushDownExecute(Sender: TObject);
    procedure Act_StatusExecute(Sender: TObject);
    procedure Act_SubmitExecute(Sender: TObject);
    procedure Act_SaveExecute(Sender: TObject);
    procedure Act_RefshExecute(Sender: TObject);
    procedure MyTreeView_WriteExpanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure MyTreeView_WriteChange(Sender: TObject; Node: TTreeNode);
    procedure Act_Ref_WriteExecute(Sender: TObject);
    procedure Act_Ref_ItemExecute(Sender: TObject);
    procedure Act_Ref_DesignLeaderExecute(Sender: TObject);
    procedure MyTreeView_DesignLeaderExpanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure MyTreeView_DesignLeaderChange(Sender: TObject; Node: TTreeNode);
    procedure cxGV_TakeItemFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure Act_TempExecute(Sender: TObject);
    procedure RB_Ref_K3Click(Sender: TObject);
    procedure E_Locate_k3PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure mc_2PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure gg_2PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure Act_PickExecute(Sender: TObject);
    procedure PickPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure Act_InputExecute(Sender: TObject);
    procedure Act_PickSelExecute(Sender: TObject);
    procedure N_OutClick(Sender: TObject);
    procedure N_EditClick(Sender: TObject);
    procedure N_FilterClick(Sender: TObject);
    procedure N_SortClick(Sender: TObject);
    procedure N_GroupClick(Sender: TObject);
    procedure N_SetClick(Sender: TObject);
    procedure cxGrid_TakeItemContextPopup(Sender: TObject;
      MousePos: TPoint; var Handled: Boolean);
    procedure cxGrid_TakeListContextPopup(Sender: TObject;
      MousePos: TPoint; var Handled: Boolean);
    procedure cxGrid_K3ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure Act_MenuExecute(Sender: TObject);
    procedure Act_Menu_SetExecute(Sender: TObject);
    procedure Act_TS_ItemExecute(Sender: TObject);
    procedure Act_TS_WriteExecute(Sender: TObject);
    procedure Act_TS_DesignLeaderExecute(Sender: TObject);
    procedure cxGV_TakeItemSelectionChanged(
      Sender: TcxCustomGridTableView);
    procedure TB_ReturnClick(Sender: TObject);
    procedure Act_FBranchFileNoExecute(Sender: TObject);
    procedure FBranchFileNo_TakeItemPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure Act_FElectricNameExecute(Sender: TObject);
    procedure Act_FBranchItemNumberExecute(Sender: TObject);
    procedure TB_TakeClick(Sender: TObject);
    procedure Act_Set_MaxIDExecute(Sender: TObject);
    procedure Act_ItemExecute(Sender: TObject);
    procedure cxGrid_K3DblClick(Sender: TObject);
    procedure Act_FApprovalStuffSortNumberExecute(Sender: TObject);
    procedure Act_FApprovalStuffNumberExecute(Sender: TObject);
    procedure FTakemc_TakeListPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FTakeGBT_TakeListPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FTakegg_TakeListPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);


  private
    ListItemFNumber_Item,ListItemFNumber_Write,ListItemFNumber_DesignLeader:string;
    P_th_Item,P_th_Write,P_th_DesignLeader:String;
    P_Isleaf_Take,P_Isleaf_Write,P_Isleaf_DesignLeader:Integer;

    P_List:String;
    P_MaxID:Integer;

    { Private declarations }


    function AddMain:bool;
    function AddList:bool;
    function AddRd:bool;
    function EditRd:bool;
    function DelRd:bool;
    function ImpStuff:bool;

  public

    { Public declarations }
  end;

var
  Frm_DesignTake: TFrm_DesignTake;
implementation

uses FRMDATA, COMMON, FrmSelect, ProgBar, PROGRASS;

{$R *.dfm}


function TFrm_DesignTake.AddRd: bool;
var
  qry:TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  result:=False;

  If mData_TakeItem.RecordCount<=0 then
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
        if ImpStuff then //3    物料新增
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

function TFrm_DesignTake.EditRd:bool;
var
  qry:TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  result:=False;

  If mData_TakeList.RecordCount<=0 then
  begin
    result:=True;
    Exit;
  end;

  mData_TakeList.Edit;
  mData_TakeList.Post;

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

function TFrm_DesignTake.DelRd: bool;
var
 qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Delete from T_DesignTake where FTakeItemID=:FTakeItemID';
    with qry.Parameters do
    begin
      FindParam('FTakeItemID').value:=mdata_TakeItem['FTakeItemID'];
    end;
    result:=qry.ExecSQL>=1;
  finally
    qry.Free;
  end;
end;



function TFrm_DesignTake.AddMain: bool;
var
 qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If P_state=0 then
  begin
    Act_Set_MaxID.Execute;//取ID
  end;
  try
    qry.SQL.Text:='Insert into T_DesignTake(FTakeItemID,FItemID,FElectricID,FDepartmentID,FTakeNumber,FTakeNo,FTakeAddNum,FTakeStatus,FTakeWriteID,FTakeWriteDate) '
                 +'values(:FTakeItemID,:FItemID,:FElectricID,:FDepartmentID,:FTakeNumber,:FTakeNo,:FTakeAddNum,:FTakeStatus,:FTakeWriteID,:FTakeWriteDate)';
   with qry.Parameters do
   begin
     If P_state=0 then  //新增
        FindParam('FTakeItemID').value:=P_MaxID;
     If P_state=1 then  //修改
        FindParam('FTakeItemID').value:=mdata_TakeItem['FTakeItemID'];

     FindParam('FItemID').value:=mdata_TakeItem['FItemID'];
     FindParam('FElectricID').value:=mdata_TakeItem['FElectricID'];
     FindParam('FDepartmentID').value:=UserFDepartmentID;
     FindParam('FTakeNumber').value:=mdata_TakeItem['FTakeNumber'];
     FindParam('FTakeNo').value:=mdata_TakeItem['FTakeNo'];
     FindParam('FTakeAddNum').value:=mdata_TakeItem['FTakeAddNum'];
     FindParam('FTakeStatus').value:=0;
     FindParam('FTakeWriteID').value:=UserNumID;
     FindParam('FTakeWriteDate').value:=now();
   end;
     result:=qry.ExecSQL>=1;
   finally
     qry.Free;
   end;

end;


function TFrm_DesignTake.AddList: bool;
var
  qry: TADOQuery;
  i: integer;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.EnableBCD:=False;//小数位数>4
  qry.CommandTimeout:=500;
  result:=False;

  If mData_TakeList.RecordCount<=0 then
  begin
    result:=True;
    Exit;
  end;

  try
    qry.SQL.Text:='Insert into T_DesignTakeList(FTakeItemID,FTakeListNum,FTakeGBT,FTakemc,FTakegg,FTakedw,'
                 +'FApprovalStuffSortID,FTakeQry,FTakeSumQry,FTakeDesign,FTakeDemand,FTakeListReMark,'
                 +'FTakeName,FTakeModel,FTakeUnitName,FK3ID) '
                 +'values(:FTakeItemID,:FTakeListNum,:FTakeGBT,:FTakemc,:FTakegg,:FTakedw,'
                 +':FApprovalStuffSortID,:FTakeQry,:FTakeSumQry,:FTakeDesign,:FTakeDemand,:FTakeListReMark,'
                 +':FTakeName,:FTakeModel,:FTakeUnitName,:FK3ID)';
    mData_TakeList.First;
    i:=1;
    while not mData_TakeList.eof do
    begin
      If (mData_TakeList['FTakeQry']<>0) and (mData_TakeList['FTakeQry']<>Null) and (mData_TakeList['FTakemc']<>'') and (mData_TakeList['FTakemc']<>Null) then
      begin
        If qry.Active then qry.Close;
        If P_state=0 then  //新增
           qry.Parameters.FindParam('FTakeItemID').value:=P_MaxID;
        If P_state=1 then  //修改
           qry.Parameters.FindParam('FTakeItemID').value:=mdata_TakeItem['FTakeItemID'];
        qry.Parameters.FindParam('FTakeListNum').value:=i;
        qry.Parameters.FindParam('FTakeGBT').value:=mData_TakeList['FTakeGBT'];
        qry.Parameters.FindParam('FTakemc').value:=mData_TakeList['FTakemc'];
        qry.Parameters.FindParam('FTakegg').value:=mData_TakeList['FTakegg'];
        qry.Parameters.FindParam('FTakedw').value:=mData_TakeList['FTakedw'];
        qry.Parameters.FindParam('FApprovalStuffSortID').value:=mData_TakeList['FApprovalStuffSortID'];
        qry.Parameters.FindParam('FTakeQry').value:=mData_TakeList['FTakeQry'];
        qry.Parameters.FindParam('FTakeSumQry').value:=mData_TakeList['FTakeSumQry'];
        qry.Parameters.FindParam('FTakeDesign').value:=mData_TakeList['FTakeDesign'];
        qry.Parameters.FindParam('FTakeDemand').value:=mData_TakeList['FTakeDemand'];
        qry.Parameters.FindParam('FTakeListReMark').value:=mData_TakeList['FTakeListReMark'];
        qry.Parameters.FindParam('FTakeName').value:= mData_TakeList['FTakeName'];
        qry.Parameters.FindParam('FTakeModel').value:= mData_TakeList['FTakeModel'];
        qry.Parameters.FindParam('FTakeUnitName').value:= mData_TakeList['FTakeUnitName'];
        qry.Parameters.FindParam('FK3ID').value:= userFK3ID;
        result:=qry.ExecSQL>=1;
        if not result then break;
      end;
        mData_TakeList.Next;
        i:=i+1;
     end;
   finally
     qry.Free;
   end;

end;

function TFrm_DesignTake.ImpStuff: bool;
var
  qry,qry1: TADOQuery;
  i:Integer;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry1:=TADOQuery.Create(Self);
  qry1.ConnectionString:=mdlData.ReadConnStr;
  result:=False;

  If MData_TakeList.RecordCount<=0 then
  begin
    result:=True;
    Exit;
  end;
  MData_TakeList.First;
  while not MData_TakeList.eof do
  begin
     result:=True;

     try
       qry1.SQL.Text:='Select * from T_ApprovalStuff where FK3_Join=:FK3_Join and  FDepartMentID=:FDepartMentID';
       qry1.Parameters.FindParam('FK3_Join').value:= IntToStr(userFK3ID)+';'+MData_TakeList['FTakemc']+MData_TakeList['FTakeGBT']+';'+MData_TakeList['FTakegg']+';'+MData_TakeList['FTakedw']+';';
       qry1.Parameters.FindParam('FDepartMentID').value:= userFDepartMentID;
       qry1.Open;
     finally
       ;
     end;
     If qry1.RecordCount=0 then
     begin
       Act_FApprovalStuffNumber.Execute;
       try
         qry.SQL.Text:='Insert into T_ApprovalStuff(FApprovalStuffNumber,FApprovalStuffParentID,FTakeGBT,FTakemc,FTakegg,FTakedw,FApprovalStuffSortID,FDepartMentID,FK3ID,FIsLeaf) '
                      +'values(:FApprovalStuffNumber,:FApprovalStuffParentID,:FTakeGBT,:FTakemc,:FTakegg,:FTakedw,:FApprovalStuffSortID,:FDepartMentID,:FK3ID,:FIsLeaf)';
         qry.Parameters.FindParam('FApprovalStuffNumber').value:= MData_TakeList['FApprovalStuffNumber'];
         qry.Parameters.FindParam('FApprovalStuffParentID').value:= MData_TakeList['FApprovalStuffParentID'];
         qry.Parameters.FindParam('FTakeGBT').value:= MData_TakeList['FTakeGBT'];
         qry.Parameters.FindParam('FTakemc').value:= MData_TakeList['FTakemc'];
         qry.Parameters.FindParam('FTakegg').value:= MData_TakeList['FTakegg'];
         qry.Parameters.FindParam('FTakedw').value:= MData_TakeList['FTakedw'];
         qry.Parameters.FindParam('FApprovalStuffSortID').value:= MData_TakeList['FApprovalStuffSortID'];
         qry.Parameters.FindParam('FDepartMentID').value:= userFDepartMentID;
         qry.Parameters.FindParam('FK3ID').value:= userFK3ID;
         qry.Parameters.FindParam('FIsLeaf').value:= 1;
         result:=qry.ExecSQL>=1;
       finally
         ;
       end;
     end;
     MData_TakeList.Next;
   end;
end;

procedure TFrm_DesignTake.CancelBtnClick(Sender: TObject);
begin
  inherited;
  P_state :=2;//不在新增、修改状态
  Act_SetClose.Execute;
end;

procedure TFrm_DesignTake.FormResize(Sender: TObject);
begin
  inherited;
  TB_Ref.Click;
  Act_Ref_Item.Execute;
  Act_Ref_Write.Execute;
  Act_Ref_DesignLeader.Execute;

  L_title.Caption:=UserFDepartmentName+'外购件清单';
  Self.Caption:=UserFDepartmentName+'外购件清单';
end;

procedure TFrm_DesignTake.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=cafree;
  Frm_DesignTake:=nil;
end;

procedure TFrm_DesignTake.TB_EXIT1Click(Sender: TObject);
begin
  inherited;
  self.Close;
end;

procedure TFrm_DesignTake.FormCreate(Sender: TObject);
begin
  inherited;
  P_state :=2;//不在新增、修改状态

  TB_App.Visible:= mdlData.CheckFrmRights(TFrm_DesignTake.ClassName,'新增');
  TB_Prin.Visible:= mdlData.CheckFrmRights(TFrm_DesignTake.ClassName,'打印');

  TS_Item.TabVisible:= mdlData.CheckFrmRights(TFrm_DesignTake.ClassName,'查看');
  TS_DesignLeader.TabVisible:= mdlData.CheckFrmRights(TFrm_DesignTake.ClassName,'校对');
  TS_Write.TabVisible:= mdlData.CheckFrmRights(TFrm_DesignTake.ClassName,'新增');

  If mdlData.CheckFrmRights(TFrm_DesignTake.ClassName,'校对') then
      TS_Item.TabVisible:=True;
  If mdlData.CheckFrmRights(TFrm_DesignTake.ClassName,'审核') then
      TS_Item.TabVisible:=True;


end;

procedure TFrm_DesignTake.MyTreeView_ItemExpanding(Sender: TObject;
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

    If PC_Tree.ActivePage=TS_Item then
       qry.SQL.Text:='Select * from VT_DesignTake with(nolock) where FParentNumber= '''
                    +PTree(Node.Data).ID+''' and FDepartmentID=:FDepartmentID '
                    +' order by FTakeStatus,FNumber';
    If PC_Tree.ActivePage=TS_Write then
       qry.SQL.Text:='Select * from VT_DesignTake_Write with(nolock) where FParentNumber= '''
                    +PTree(Node.Data).ID+''' and FTakeWriteID=:FTakeWriteID '
                    +' order by FTakeStatus,FNumber';

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

procedure TFrm_DesignTake.MyTreeView_ItemChange(Sender: TObject;
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
    P_th_Item:=PTree(Node.Data).Caption;
    P_Isleaf_Take:=PTree(Node.Data).Isleaf;

    Act_TS_Item.Execute;//页选项设置
    Act_Status.Execute; //权限设置

  end;

end;

procedure TFrm_DesignTake.TB_EXITClick(Sender: TObject);
begin
  inherited;
  self.Close;
end;

procedure TFrm_DesignTake.TB_PrinClick(Sender: TObject);
begin
  inherited;
  mData_TakeList.SortedField:='FTakeNumber';
  frDBDataSet.DataSet:=mData_TakeList;
  FrReport.LoadFromFile(ExtractFileDir(Application.ExeName)+'\Report_DesignBOM_Take.frf');
  FrReport.ShowReport;

end;

procedure TFrm_DesignTake.TB_EXIT3Click(Sender: TObject);
begin
  inherited;
  self.Close;
end;

procedure TFrm_DesignTake.TB_SelK4Click(Sender: TObject);
var  i,j: integer;
begin
  inherited;
  mData_TakeList.Open;
  mData_TakeList.Edit;
  mData_TakeList.Post;
  begin
    mData_TakeList.Last;
    for i:=0 to cxGV_K3.DataController.Controller.SelectedRecordCount-1 do
    begin
      j:=cxGV_K3.DataController.GetSelectedRowIndex(i);
      mData_TakeList.Append;
      mData_TakeList.Edit;
      mData_TakeList['FNumber']:=cxGV_K3.DataController.GetValue(J,0);
      mData_TakeList['FTakeName']:=cxGV_K3.DataController.GetValue(J,1);
      mData_TakeList['FTakeModel']:=cxGV_K3.DataController.GetValue(J,2);
      mData_TakeList['FTakeUnitName']:=cxGV_K3.DataController.GetValue(J,3);
      mData_TakeList.Post;
    end;
  end;
  PC_1.ActivePage:=TS_Take;

end;

procedure TFrm_DesignTake.cxGV_TakeListCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
{  if StrToFloat(AViewInfo.GridRecord.DisplayTexts[FSumQry.Index])<>StrToFloat(AViewInfo.GridRecord.DisplayTexts[FTakeQry.Index]) then    //设置行颜色
  begin
     ACanvas.Canvas.Font.Color:=clHotLight;
    ACanvas.FillRect(AViewInfo.Bounds);
  end;
  }

end;

procedure TFrm_DesignTake.Act_AppExecute(Sender: TObject);
var
   qry:TADOquery;
   i:Integer;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  P_state :=0;   //新增
  try
    qry.SQL.Text:='Select * from  V_DesignTake with(nolock) where FTakeItemID=:FTakeItemID';
    qry.Parameters.FindParam('FTakeItemID').value:= 0;
    qry.Open;
  finally
    ;
  end;
  mData_TakeItem.CopyFromDataSet(qry);
  mData_TakeItem.Active:=True;
  mData_TakeItem.Append;
  mData_TakeItem.Edit;
  try
    qry.SQL.Text:='Select * from  V_DesignTakeList with(nolock) where FTakeListID=:FTakeListID';
    qry.Parameters.FindParam('FTakeListID').value:= 0;
    qry.Open;
  finally
    ;
  end;
  mData_TakeList.CopyFromDataSet(qry);
  mData_TakeList.Active:=True;
  mData_TakeList.Append;
  mData_TakeList.Edit;

  Act_SetOpen.Execute;

  Act_Pick.Execute; //提取文本
  Act_Temp.Execute; // 导入临时表


end;
procedure TFrm_DesignTake.Act_EditExecute(Sender: TObject);
var
  qry:TADOQuery;
begin
  qry:=TAdoQuery.Create(self);
  qry.Connection:=mdlData.conn;
 { If (mdata_TakeList.RecordCount<1) then
     Exit;
   try
    qry.SQL.Text:='Select * from V_DesignOrderList with(nolock) where FTakeListID=:FTakeListID';
    qry.Parameters.FindParam('FTakeListID').Value:=mdata_TakeItem['FTakeListID'];
    qry.Open;
  finally
     ;
  end;
  if qry.RecordCount>0 then
  begin
    application.MessageBox(Pchar('【'+Trim(mdata_TakeItem['FTakeNumber'])+'】采购申请单已启用不允许修改！'),'系统提示',MB_ICONINFORMATION);
    Exit;
  end;
 }
  P_state :=1;
  If (mdata_TakeList.RecordCount<1) then
    Exit;
  Act_SetOpen.Execute;

end;

procedure TFrm_DesignTake.Act_DelExecute(Sender: TObject);
var
  qry:TADOQuery;
begin
  qry:=TAdoQuery.Create(self);
  qry.Connection:=mdlData.conn;

  If (mdata_TakeList.RecordCount<1) then
     Exit;

{
  try
    qry.SQL.Text:='Select * from V_DesignOrderList with(nolock) where FTakeListID=:FTakeListID';
    qry.Parameters.FindParam('FTakeListID').Value:=mdata_TakeList['FTakeListID'];
    qry.Open;
  finally
     ;
  end;
  if qry.RecordCount>0 then
  begin
    application.MessageBox(Pchar('采购申请单【'+Trim(mdata_TakeItem['FElectricNum'])+'】已启用不允许删除！'),'系统提示',MB_ICONINFORMATION);
    Exit;
  end;
   }
  If application.MessageBox(Pchar('警告：是否删除外购件请单号为：【'+Trim(mdata_TakeItem['FElectricNum'])+Trim(mdata_TakeItem['FTakeNumber'])+Trim(mdata_TakeItem['FTakeAddNum'])+'】的数据？'+chr(13)+chr(13)
                           +'删除数据操作将不可恢复，确定要删除本单据吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
  If application.MessageBox(Pchar('警告：是否删除外购件请单号为：【'+Trim(mdata_TakeItem['FElectricNum'])+Trim(mdata_TakeItem['FTakeNumber'])+Trim(mdata_TakeItem['FTakeAddNum'])+'】的数据？'+chr(13)+chr(13)
                           +'删除数据操作将不可恢复，确定要删除本单据吗？'),'再次警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then

  begin
    //单据删除
    If not DelRd then
    begin
      application.MessageBox('删除单据失败！','系统提示',MB_ICONINFORMATION);
      mdlData.conn.RollbackTrans;
      Exit;
    end;
  end;
  mdata_TakeList.Close;
  qry.Free;
  TB_ref.Click;

end;

procedure TFrm_DesignTake.Act_AuditExecute(Sender: TObject);
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
      mdata_TakeItem.First;
      while not mdata_TakeItem.eof do
      begin
        try
          qry.SQL.Text:='Update T_DesignTake Set FTakeStatus=3,FTakeAuditID=:FTakeAuditID,FTakeAuditDate=:FTakeAuditDate  where FTakeItemID=:FTakeItemID';
          qry.Parameters.FindParam('FTakeAuditID').value:= UserNumID;
          qry.Parameters.FindParam('FTakeAuditDate').value:= now();
          qry.Parameters.FindParam('FTakeItemID').value:=mdata_TakeItem['FTakeItemID'];
          qry.ExecSQL;
        finally
          ;
        end;
        mdata_TakeItem.Edit;
        mdata_TakeItem['FTakeStatus']:=3;
        mdata_TakeItem['FTakeStatusNotes']:='审核';
        mdata_TakeItem['FTakeAuditID']:=UserNumID;
        mdata_TakeItem['FTakeAudit']:=UserNum;
        mdata_TakeItem['FTakeAuditDate']:=now();
        mdata_TakeItem.Post;
        mdata_TakeItem.Next;
      end;
      If mdata_TakeItem.RecordCount=1 then
      begin
        application.MessageBox('审核完毕！','系统提示',MB_ICONINFORMATION);
        TB_Audit.Caption:='审核撤回';
      end;
      If mdata_TakeItem.RecordCount>1 then
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
      mdata_TakeItem.First;
      while not mdata_TakeItem.eof do
      begin
        try
          qry.SQL.Text:='Update T_DesignTake Set FTakeStatus=2,FTakeAuditID=:FTakeAuditID,FTakeAuditDate=:FTakeAuditDate where FTakeItemID=:FTakeItemID';
          qry.Parameters.FindParam('FTakeAuditID').value:= UserNumID;
          qry.Parameters.FindParam('FTakeAuditDate').value:= Null;
          qry.Parameters.FindParam('FTakeItemID').value:= mdata_TakeItem['FTakeItemID'];
          qry.ExecSQL;
        finally
          ;
        end;
        mdata_TakeItem.Edit;
        mdata_TakeItem['FTakeStatus']:=2;
        mdata_TakeItem['FTakeStatusNotes']:='校对';
        mdata_TakeItem['FTakeAuditID']:=0;
        mdata_TakeItem['FTakeAudit']:='';
        mdata_TakeItem['FTakeAuditDate']:=Null;
        mdata_TakeItem.Post;
        mdata_TakeItem.Next;
      end;
      If mdata_TakeItem.RecordCount=1 then
      begin
        application.MessageBox('审核撤回完毕！','系统提示',MB_ICONINFORMATION);
        TB_Audit.Caption:='审核';
      end;
      If mdata_TakeItem.RecordCount>1 then
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

procedure TFrm_DesignTake.Act_SetOpenExecute(Sender: TObject);
begin
  inherited;
  ToolBar_Take.Visible:=False;
  ToolBar_Save.Visible:=True;
  MyTreeView_Item.Enabled:=False;

  cxGV_TakeList.OptionsData.Editing:=True;
  FTakeDemand_TakeList.Options.Editing:=True;
  FTakeListReMark_TakeList.Options.Editing:=True;

  cxGV_TakeItem.OptionsData.Editing:=True;
  FTakeDate_TakeItem.Options.Editing:=True;
  FTakeReMark_TakeItem.Options.Editing:=True;

end;

procedure TFrm_DesignTake.Act_SetCloseExecute(Sender: TObject);
begin
  inherited;
  ToolBar_Take.Visible:=True;
  ToolBar_Save.Visible:=False;
  MyTreeView_Item.Enabled:=True;

  FTakeListReMark_TakeList.Options.Editing:=False;
  Pick.Visible:=False;


end;

procedure TFrm_DesignTake.Act_CheckExecute(Sender: TObject);
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
      mdata_TakeItem.First;
      while not mdata_TakeItem.eof do
      begin
        try
          qry.SQL.Text:='Update T_DesignTake Set FTakeStatus=2,FTakeCheckID=:FTakeCheckID,FTakeCheckDate=:FTakeCheckDate  where FTakeItemID=:FTakeItemID';
          qry.Parameters.FindParam('FTakeCheckID').value:= UserNumID;
          qry.Parameters.FindParam('FTakeCheckDate').value:= now();
          qry.Parameters.FindParam('FTakeItemID').value:=mdata_TakeItem['FTakeItemID'];
          qry.ExecSQL;
        finally
          ;
        end;
        mdata_TakeItem.Edit;
        mdata_TakeItem['FTakeStatus']:=2;
        mdata_TakeItem['FTakeStatusNotes']:='校对';
        mdata_TakeItem['FTakeCheckID']:=UserNumID;
        mdata_TakeItem['FTakeCheck']:=UserNum;
        mdata_TakeItem['FTakeCheckDate']:=now();
        mdata_TakeItem.Post;
        mdata_TakeItem.Next;
      end;
      If mdata_TakeItem.RecordCount=1 then
      begin
        application.MessageBox('校对完毕！','系统提示',MB_ICONINFORMATION);
        TB_Check.Caption:='校对撤回';
      end;
      If mdata_TakeItem.RecordCount>1 then
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
      mdata_TakeItem.First;
      while not mdata_TakeItem.eof do
      begin
        try
          qry.SQL.Text:='Update T_DesignTake Set FTakeStatus=1,FTakeCheckID=:FTakeCheckID,FTakeCheckDate=:FTakeCheckDate where FTakeItemID=:FTakeItemID';
          qry.Parameters.FindParam('FTakeCheckID').value:= UserNumID;
          qry.Parameters.FindParam('FTakeCheckDate').value:= Null;
          qry.Parameters.FindParam('FTakeItemID').value:= mdata_TakeItem['FTakeItemID'];
          qry.ExecSQL;
        finally
          ;
        end;
        mdata_TakeItem.Edit;
        mdata_TakeItem['FTakeStatus']:=1;
        mdata_TakeItem['FTakeStatusNotes']:='提交';
        mdata_TakeItem['FTakeCheckID']:=0;
        mdata_TakeItem['FTakeCheck']:='';
        mdata_TakeItem['FTakeCheckDate']:=Null;
        mdata_TakeItem.Post;
        mdata_TakeItem.Next;
      end;
      If mdata_TakeItem.RecordCount=1 then
      begin
        application.MessageBox('校对撤回完毕！','系统提示',MB_ICONINFORMATION);
        TB_Check.Caption:='校对';
      end;
      If mdata_TakeItem.RecordCount>1 then
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

procedure TFrm_DesignTake.Act_PushDownExecute(Sender: TObject);
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
      mdata_TakeItem.First;
      while not mdata_TakeItem.eof do
      begin
        try
          qry.SQL.Text:='Update T_DesignTake Set FTakeStatus=4,FTakePushDownID=:FTakePushDownID,FTakePushDownDate=:FTakePushDownDate  where FTakeItemID=:FTakeItemID';
          qry.Parameters.FindParam('FTakePushDownID').value:= UserNumID;
          qry.Parameters.FindParam('FTakePushDownDate').value:= now();
          qry.Parameters.FindParam('FTakeItemID').value:=mdata_TakeItem['FTakeItemID'];
          qry.ExecSQL;
        finally
          ;
        end;
        mdata_TakeItem.Edit;
        mdata_TakeItem['FTakeStatus']:=4;
        mdata_TakeItem['FTakeStatusNotes']:='下推';
        mdata_TakeItem['FTakePushDownID']:=UserNumID;
        mdata_TakeItem['FTakePushDown']:=UserNum;
        mdata_TakeItem['FTakePushDownDate']:=now();
        mdata_TakeItem.Post;
        mdata_TakeItem.Next;
      end;
      If mdata_TakeItem.RecordCount=1 then
      begin
        application.MessageBox('下推完毕！','系统提示',MB_ICONINFORMATION);
        TB_PushDown.Caption:='下推撤回';
      end;
      If mdata_TakeItem.RecordCount>1 then
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
      mdata_TakeItem.First;
      while not mdata_TakeItem.eof do
      begin
        try
          qry.SQL.Text:='Update T_DesignTake Set FTakeStatus=3,FTakePushDownID=:FTakePushDownID,FTakePushDownDate=:FTakePushDownDate where FTakeItemID=:FTakeItemID';
          qry.Parameters.FindParam('FTakePushDownID').value:= UserNumID;
          qry.Parameters.FindParam('FTakePushDownDate').value:= Null;
          qry.Parameters.FindParam('FTakeItemID').value:= mdata_TakeItem['FTakeItemID'];
          qry.ExecSQL;
        finally
          ;
        end;
        mdata_TakeItem.Edit;
        mdata_TakeItem['FTakeStatus']:=3;
        mdata_TakeItem['FTakeStatusNotes']:='审核';
        mdata_TakeItem['FTakePushDownID']:=0;
        mdata_TakeItem['FTakePushDown']:='';
        mdata_TakeItem['FTakePushDownDate']:=Null;
        mdata_TakeItem.Post;
        mdata_TakeItem.Next;
      end;
      If mdata_TakeItem.RecordCount=1 then
      begin
        application.MessageBox('下推完毕！','系统提示',MB_ICONINFORMATION);
        TB_PushDown.Caption:='下推撤回';
      end;
      If mdata_TakeItem.RecordCount>1 then
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

procedure TFrm_DesignTake.Act_StatusExecute(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If mdata_TakeItem.RecordCount<=0 then
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
    If PC_Tree.ActivePage=TS_Item then
    begin
      qry.SQL.Text:='Select distinct FTakeStatus from V_DesignTake with(nolock) where FFullNumber like :FFullNumber and FDepartmentID=:FDepartmentID  ';
      qry.Parameters.FindParam('FFullNumber').value:=ListItemFNumber_Item+'%';
    end;
    If PC_Tree.ActivePage=TS_Write then
    begin
      qry.SQL.Text:='Select distinct FTakeStatus from V_DesignTake with(nolock) where FFullNumber_Write like :FFullNumber_Write and FDepartmentID=:FDepartmentID  ';
      qry.Parameters.FindParam('FFullNumber_Write').value:=ListItemFNumber_Write+'%';
    end;
    qry.Parameters.FindParam('FDepartmentID').value:= UserFDepartmentID;
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
    If PC_Tree.ActivePage=TS_Item then
    begin
      qry.SQL.Text:='Select FTakeStatus,FTakeWriteID from V_DesignTake with(nolock) '
                   +' where FTakeStatus=0 and FFullNumber like :FFullNumber and FTakeWriteID=:FTakeWriteID and FDepartmentID=:FDepartmentID ';
      qry.Parameters.FindParam('FFullNumber').value:=ListItemFNumber_Item+'%';
    end;
    If PC_Tree.ActivePage=TS_Write then
    begin
      qry.SQL.Text:='Select FTakeStatus,FTakeWriteID from V_DesignTake with(nolock) '
                   +' where FTakeStatus=0 and FFullNumber_Write like :FFullNumber_Write and FTakeWriteID=:FTakeWriteID and FDepartmentID=:FDepartmentID ';
      qry.Parameters.FindParam('FFullNumber_Write').value:=ListItemFNumber_Write+'%';
    end;
    qry.Parameters.FindParam('FTakeWriteID').value:= UserNumID;
    qry.Parameters.FindParam('FDepartmentID').value:= UserFDepartmentID;
    qry.Open;
  finally
    ;
  end;

  If qry.RecordCount=1 then
  begin
    TB_Submit.Caption:='提交';
    TB_Submit.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake.ClassName,'提交');
    TB_Edit.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake.ClassName,'修改');
    TB_Del.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake.ClassName,'删除');
  end;
  If qry.RecordCount>1 then
  begin
    TB_Submit.Caption:='批量提交';
    TB_Submit.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake.ClassName,'提交');
    TB_Edit.Visible:=False;
    TB_Del.Visible:=False;
  end;

   //提交撤回
  try
    If PC_Tree.ActivePage=TS_Item then
    begin
      qry.SQL.Text:='Select FTakeStatus,FTakeWriteID from V_DesignTake with(nolock) '
                  +' where FTakeStatus=1 and FFullNumber like :FFullNumber and FTakeWriteID=:FTakeWriteID and FDepartmentID=:FDepartmentID ';
      qry.Parameters.FindParam('FFullNumber').value:=ListItemFNumber_Item+'%';
    end;
    If PC_Tree.ActivePage=TS_Write then
    begin
      qry.SQL.Text:='Select FTakeStatus,FTakeWriteID from V_DesignTake with(nolock) '
                  +' where FTakeStatus=1 and FFullNumber_Write like :FFullNumber_Write and FTakeWriteID=:FTakeWriteID and FDepartmentID=:FDepartmentID ';
      qry.Parameters.FindParam('FFullNumber_Write').value:=ListItemFNumber_Write+'%';
    end;
    qry.Parameters.FindParam('FTakeWriteID').value:= UserNumID;
    qry.Parameters.FindParam('FDepartmentID').value:= UserFDepartmentID;
    qry.Open;
  finally
    ;
  end;
  If qry.RecordCount=1 then
  begin
    TB_Submit.Caption:='提交撤回';
    TB_Submit.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake.ClassName,'提交');
    TB_Check.Caption:='校对';
    TB_Check.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake.ClassName,'校对');
    TB_Edit.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake.ClassName,'修改');
    TB_Del.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake.ClassName,'删除');
    TB_Check.Visible:=False;
  end;
  If qry.RecordCount>1 then
  begin
    TB_Submit.Caption:='批量提交撤回';
    TB_Submit.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake.ClassName,'提交');
    TB_Check.Caption:='批量校对';
    TB_Check.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake.ClassName,'校对');
    TB_Edit.Visible:=False;
    TB_Del.Visible:=False;
    TB_Check.Visible:=False;
  end;

  //校对 1
  try
    If PC_Tree.ActivePage=TS_Item then
    begin
      qry.SQL.Text:='Select FTakeStatus from V_DesignTake with(nolock) '
                   +' where FTakeStatus=1 and FFullNumber like :FFullNumber and FDepartmentID=:FDepartmentID';
      qry.Parameters.FindParam('FFullNumber').value:=ListItemFNumber_Item+'%';
    end;
     If PC_Tree.ActivePage=TS_Write then
    begin
      qry.SQL.Text:='Select FTakeStatus from V_DesignTake with(nolock) '
                   +' where FTakeStatus=1 and FFullNumber_Write like :FFullNumber_Write and FDepartmentID=:FDepartmentID';
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
    TB_Check.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake.ClassName,'校对');
    TB_Edit.Visible:=False;
    TB_Del.Visible:=False;
  end;
  If qry.RecordCount>1 then
  begin
    TB_Check.Caption:='批量校对';
    TB_Check.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake.ClassName,'校对');
    TB_Edit.Visible:=False;
    TB_Del.Visible:=False;
  end;
     //校对  2
  try
    If PC_Tree.ActivePage=TS_Item then
    begin
      qry.SQL.Text:='Select FTakeStatus from V_DesignTake with(nolock) '
                   +' where FTakeStatus=2 and FFullNumber like :FFullNumber and FDepartmentID=:FDepartmentID';
      qry.Parameters.FindParam('FFullNumber').value:=ListItemFNumber_Item+'%';
    end;
    If PC_Tree.ActivePage=TS_Write then
    begin
      qry.SQL.Text:='Select FTakeStatus from V_DesignTake with(nolock) '
                   +' where FTakeStatus=2 and FFullNumber_Write like :FFullNumber_Write and FDepartmentID=:FDepartmentID';
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
    TB_Check.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake.ClassName,'校对');
    TB_Audit.Caption:='审核';
    TB_Audit.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake.ClassName,'审核');
    TB_Edit.Visible:=False;
    TB_Del.Visible:=False;
  end;
  If qry.RecordCount>1 then
  begin
    TB_Check.Caption:='批量校对';
    TB_Check.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake.ClassName,'校对');
    TB_Audit.Caption:='批量审核';
    TB_Audit.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake.ClassName,'审核');
    TB_Edit.Visible:=False;
    TB_Del.Visible:=False;
  end;
  //审核  3
  try
    If PC_Tree.ActivePage=TS_Item then
    begin
      qry.SQL.Text:='Select FTakeStatus from V_DesignTake with(nolock) '
                   +' where FTakeStatus=3 and FFullNumber like :FFullNumber and FDepartmentID=:FDepartmentID';
      qry.Parameters.FindParam('FFullNumber').value:=ListItemFNumber_Item+'%';
    end;
     If PC_Tree.ActivePage=TS_Write then
    begin
      qry.SQL.Text:='Select FTakeStatus from V_DesignTake with(nolock) '
                   +' where FTakeStatus=3 and FFullNumber_Write like :FFullNumber_Write and FDepartmentID=:FDepartmentID';
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
    TB_PushDown.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake.ClassName,'下推');

    TB_Check.Visible:=False;
    TB_Audit.Visible:=False;
    TB_Edit.Visible:=False;
    TB_Del.Visible:=False;
  end;
  If qry.RecordCount>1 then
  begin
    TB_PushDown.Caption:='批量下推';
    TB_PushDown.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake.ClassName,'下推');

    TB_Check.Visible:=False;
    TB_Audit.Visible:=False;
    TB_Edit.Visible:=False;
    TB_Del.Visible:=False;
  end;




   //校对撤回
  try
    If PC_Tree.ActivePage=TS_Item then
    begin
      qry.SQL.Text:='Select FTakeStatus,FTakeCheckID from V_DesignTake with(nolock) '
                   +' where FTakeStatus=2 and FFullNumber like :FFullNumber and FTakeCheckID=:FTakeCheckID and FDepartmentID=:FDepartmentID';
      qry.Parameters.FindParam('FFullNumber').value:=ListItemFNumber_Item+'%';
    end;
    If PC_Tree.ActivePage=TS_Write then
    begin
      qry.SQL.Text:='Select FTakeStatus,FTakeCheckID from V_DesignTake with(nolock) '
                   +' where FTakeStatus=2 and FFullNumber_Write like :FFullNumber_Write and FTakeCheckID=:FTakeCheckID and FDepartmentID=:FDepartmentID';
      qry.Parameters.FindParam('FFullNumber_Write').value:=ListItemFNumber_Write+'%';
    end;
    qry.Parameters.FindParam('FTakeCheckID').value:= UserNumID;
    qry.Parameters.FindParam('FDepartmentID').value:= UserFDepartmentID;
    qry.Open;
  finally
    ;
  end;
  If qry.RecordCount=1 then
  begin
    TB_Check.Caption:='校对撤回';
    TB_Check.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake.ClassName,'校对');
    TB_Submit.Visible:=False;
    TB_Edit.Visible:=False;
    TB_Del.Visible:=False;
  end;
  If qry.RecordCount>1 then
  begin
    TB_Check.Caption:='批量校对撤回';
    TB_Check.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake.ClassName,'校对');
    TB_Submit.Visible:=False;
    TB_Edit.Visible:=False;
    TB_Del.Visible:=False;
  end;

   //审核撤回
  try
    If PC_Tree.ActivePage=TS_Item then
    begin
      qry.SQL.Text:='Select FTakeStatus,FTakeAuditID from V_DesignTake with(nolock) '
                   +' where FTakeStatus=3 and FFullNumber like :FFullNumber and FTakeAuditID=:FTakeAuditID and FDepartmentID=:FDepartmentID';
      qry.Parameters.FindParam('FFullNumber').value:=ListItemFNumber_Item+'%';
    end;
    If PC_Tree.ActivePage=TS_Write then
    begin
      qry.SQL.Text:='Select FTakeStatus,FTakeAuditID from V_DesignTake with(nolock) '
                   +' where FTakeStatus=3 and FFullNumber_Write like :FFullNumber_Write and FTakeAuditID=:FTakeAuditID and FDepartmentID=:FDepartmentID';
      qry.Parameters.FindParam('FFullNumber_Write').value:=ListItemFNumber_Write+'%';
    end;
    qry.Parameters.FindParam('FTakeAuditID').value:= UserNumID;
    qry.Parameters.FindParam('FDepartmentID').value:= UserFDepartmentID;
    qry.Open;
  finally
    ;
  end;
  If qry.RecordCount=1 then
  begin
    TB_Audit.Caption:='审核撤回';
    TB_Audit.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake.ClassName,'审核');
    TB_Check.Visible:=False;
    TB_Submit.Visible:=False;
    TB_Edit.Visible:=False;
    TB_Del.Visible:=False;
  end;
  If qry.RecordCount>1 then
  begin
    TB_Audit.Caption:='批量审核撤回';
    TB_Audit.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake.ClassName,'审核');
    TB_Submit.Visible:=False;
    TB_Check.Visible:=False;
    TB_Edit.Visible:=False;
    TB_Del.Visible:=False;
  end;


   //下推撤回
  try
    If PC_Tree.ActivePage=TS_Item then
    begin
       qry.SQL.Text:='Select FTakeStatus,FTakePushDownID from V_DesignTake with(nolock) '
                   +' where FTakeStatus=4 and FFullNumber like :FFullNumber and FTakePushDownID=:FTakePushDownID and FDepartmentID=:FDepartmentID';
       qry.Parameters.FindParam('FFullNumber').value:=ListItemFNumber_Item+'%';
    end;
    If PC_Tree.ActivePage=TS_Write then
    begin
       qry.SQL.Text:='Select FTakeStatus,FTakePushDownID from V_DesignTake with(nolock) '
                   +' where FTakeStatus=4 and FFullNumber_Write like :FFullNumber_Write and FTakePushDownID=:FTakePushDownID and FDepartmentID=:FDepartmentID';
       qry.Parameters.FindParam('FFullNumber_Write').value:=ListItemFNumber_Write+'%';
    end;
    qry.Parameters.FindParam('FTakePushDownID').value:= UserNumID;
    qry.Parameters.FindParam('FDepartmentID').value:= UserFDepartmentID;
    qry.Open;
  finally
    ;
  end;
  If qry.RecordCount=1 then
  begin
    TB_PushDown.Caption:='下推撤回';
    TB_PushDown.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake.ClassName,'下推');
    TB_Audit.Visible:=False;
    TB_Check.Visible:=False;
    TB_Submit.Visible:=False;
    TB_Edit.Visible:=False;
    TB_Del.Visible:=False;
  end;
  If qry.RecordCount>1 then
  begin
    TB_PushDown.Caption:='批量下推撤回';
    TB_PushDown.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake.ClassName,'下推');
    TB_Audit.Visible:=False;
    TB_Submit.Visible:=False;
    TB_Check.Visible:=False;
    TB_Edit.Visible:=False;
    TB_Del.Visible:=False;
  end;

end;

procedure TFrm_DesignTake.Act_SubmitExecute(Sender: TObject);
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
    //没物料不提交
    try
      If PC_Tree.ActivePage=TS_Item then
      begin
        qry.SQL.Text:='Select FTakeStatus,FTakeWriteID from V_DesignTakeList with(nolock) '
                     +' where FTakeStatus=0 and FItemID=0 and FFullNumber like :FFullNumber and FTakeWriteID=:FTakeWriteID and FDepartmentID=:FDepartmentID';
        qry.Parameters.FindParam('FFullNumber').value:=ListItemFNumber_Item+'%';
      end;
      If PC_Tree.ActivePage=TS_Write then
      begin
        qry.SQL.Text:='Select FTakeStatus,FTakeWriteID from V_DesignTakeList with(nolock) '
                     +' where FTakeStatus=0 and FItemID=0 and FFullNumber_Write like :FFullNumber_Write and FTakeWriteID=:FTakeWriteID and FDepartmentID=:FDepartmentID';
        qry.Parameters.FindParam('FFullNumber_Write').value:=ListItemFNumber_Write+'%';
      end;

      qry.Parameters.FindParam('FTakeWriteID').value:= UserNumID;
      qry.Parameters.FindParam('FDepartmentID').value:= UserFDepartmentID;
      qry.Open;
    finally
      ;
    end;
    If qry.RecordCount>0 then
    begin
      application.MessageBox(Pchar('物料不匹配不允许提交！'),'系统提示',MB_ICONINFORMATION);
      Exit;
    end;

    If application.MessageBox(Pchar('系统提示：是否对：【'+P_List+'】的单据进行提交？'+chr(13)+chr(13)
                                   +'确定要对本单据提交吗？'),'系统提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      mdata_TakeItem.First;
      while not mdata_TakeItem.eof do
      begin
        try
          qry.SQL.Text:='Update T_DesignTake Set FTakeStatus=1,FTakeSubmitDate=:FTakeSubmitDate  where FTakeItemID=:FTakeItemID';
          qry.Parameters.FindParam('FTakeSubmitDate').value:= now();
          qry.Parameters.FindParam('FTakeItemID').value:=mdata_TakeItem['FTakeItemID'];
          qry.ExecSQL;
        finally
          ;
        end;
        mdata_TakeItem.Edit;
        mdata_TakeItem['FTakeStatus']:=1;
        mdata_TakeItem['FTakeStatusNotes']:='提交';
        mdata_TakeItem['FTakeSubmitDate']:=now();
        mdata_TakeItem.Post;
        mdata_TakeItem.Next;
      end;
      If mdata_TakeItem.RecordCount=1 then
      begin
        application.MessageBox('提交完毕！','系统提示',MB_ICONINFORMATION);
        TB_Submit.Caption:='提交撤回';
        TB_Edit.Visible:=False;
        TB_Del.Visible:=False;
      end;
      If mdata_TakeItem.RecordCount>1 then
      begin
        application.MessageBox('批量提交完毕！','系统提示',MB_ICONINFORMATION);
        TB_Submit.Caption:='批量提交撤回';
        TB_Edit.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake.ClassName,'修改');
        TB_Del.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake.ClassName,'删除');
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
      mdata_TakeItem.First;
      while not mdata_TakeItem.eof do
      begin
        try
          qry.SQL.Text:='Update T_DesignTake Set FTakeStatus=0,FTakeSubmitDate=:FTakeSubmitDate where FTakeItemID=:FTakeItemID';
          qry.Parameters.FindParam('FTakeSubmitDate').value:= Null;
          qry.Parameters.FindParam('FTakeItemID').value:= mdata_TakeItem['FTakeItemID'];
          qry.ExecSQL;
        finally
          ;
        end;
        mdata_TakeItem.Edit;
        mdata_TakeItem['FTakeStatus']:=0;
        mdata_TakeItem['FTakeStatusNotes']:='填单';
        mdata_TakeItem['FTakeSubmitDate']:=Null;
        mdata_TakeItem.Post;
        mdata_TakeItem.Next;
      end;
      If mdata_TakeItem.RecordCount=1 then
      begin
        application.MessageBox('提交撤回完毕！','系统提示',MB_ICONINFORMATION);
        TB_Submit.Caption:='提交';
      end;
      If mdata_TakeItem.RecordCount>1 then
      begin
        application.MessageBox('批量提交撤回完毕！','系统提示',MB_ICONINFORMATION);
        TB_Submit.Caption:='批量提交';
      end;
      Act_Status.Execute;  //权限设置
    end;
    P_state:=2;
    Exit;
  end;

  Act_Ref_Item.Execute;
  Act_Ref_Write.Execute;

end;

procedure TFrm_DesignTake.Act_SaveExecute(Sender: TObject);
var qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  mdata_TakeList.Edit;
  mdata_TakeList.Post;

  If (mData_TakeItem['FElectricID']=0) or (mData_TakeItem['FItemID']=0) then
  begin
    application.MessageBox('关键字不能为空！请重新输入','系统提示',MB_ICONERROR);
    Exit;
  end;

  If P_state =0 then
  begin
    try
      qry.SQL.Text:='Select * from V_DesignTake with(nolock) where FDepartmentID=:FDepartmentID and FItemID=:FItemID and '
                   +'FElectricID=:FElectricID and FTakeNumber=:FTakeNumber and FTakeAddNum=:FTakeAddNum';
      qry.Parameters.FindParam('FDepartmentID').Value:=UserFDepartmentID;
      qry.Parameters.FindParam('FItemID').Value:=mData_TakeItem['FItemID'];
      qry.Parameters.FindParam('FElectricID').Value:=mData_TakeItem['FElectricID'];
      qry.Parameters.FindParam('FTakeNumber').Value:=mData_TakeItem['FTakeNumber'];
      qry.Parameters.FindParam('FTakeAddNum').Value:=mData_TakeItem['FTakeAddNum'];
      qry.Open;
      If qry.RecordCount>0 then
      begin
         application.MessageBox('档案号、部件号、图号、版本号不允许重复！请重新输入','系统提示',MB_ICONERROR);
         Exit;
      end;
    finally
       ;
    end;
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

procedure TFrm_DesignTake.Act_RefshExecute(Sender: TObject);
var
  qry:TADOquery;
  I_index:integer;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  I_index:=mdata_TakeItem.RecNo ;

  If MyItemList(qry,mdata_TakeItem,'V_DesignTake','FDepartmentName+'';''+FProductName+'';''+FCarryOut+'';''+FTakeStatusNotes+'';''+FItemlb+'';''+FItemNo+'';''+FTakeNumber+'';''',
                ListItemFNumber_Item,'FItemNo,FTakeNumber') then

  If (I_index<mdata_TakeItem.RecordCount) and (I_index<>-1) then
     mdata_TakeItem.RecNo :=I_index
  else
     mdata_TakeItem.Last;
end;

procedure TFrm_DesignTake.MyTreeView_WriteExpanding(Sender: TObject;
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
{  qry.SQL.Text:='Select * from VT_DesignTake_Write where FParentNumber= '''
               +PTree(Node.Data).ID+''' and FDepartmentID=:FDepartmentID and (FTakeWriteID=0 or FTakeWriteID=:FTakeWriteID) '
               +' order by FTakeStatus,FNumber';
  qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
  qry.Parameters.FindParam('FTakeWriteID').value:=UserNumID;}

  If PC_Tree.ActivePage=TS_Item then
     qry.SQL.Text:='Select * from VT_DesignTake where FParentNumber= '''
                  +PTree(Node.Data).ID+''' '
                  +' order by FTakeStatus,FNumber';
  If PC_Tree.ActivePage=TS_Write then
     qry.SQL.Text:='Select * from VT_DesignTake_Write where FParentNumber= '''
                  +PTree(Node.Data).ID+''' '
                  +' order by FTakeStatus,FNumber';

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

procedure TFrm_DesignTake.MyTreeView_WriteChange(Sender: TObject;
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
    P_th_Write:=PTree(Node.Data).Caption;
    P_Isleaf_Write:=PTree(Node.Data).Isleaf;

    Act_TS_Write.Execute;//页选项设置
    Act_Status.Execute; //权限设置

  end;
end;

procedure TFrm_DesignTake.Act_Ref_WriteExecute(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If PC_Tree.ActivePage=TS_Write then
  begin
    If not TreeVeiwListWhere(qry,MyTreeView_Write,'VT_DesignTake_Write',' and (FTakeWriteID=0 or FTakeWriteID='+IntToStr(UserNumID)+' )' ) then
       Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;

end;

procedure TFrm_DesignTake.Act_Ref_ItemExecute(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If PC_Tree.ActivePage=TS_Item then
  begin
    If not TreeVeiwListWhere(qry,MyTreeView_Item,'VT_DesignTake',' and FDepartmentID='+IntToStr(UserFDepartmentID) ) then
       Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;

end;

procedure TFrm_DesignTake.Act_Ref_DesignLeaderExecute(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If PC_Tree.ActivePage=TS_DesignLeader then
  begin
    If not TreeVeiwListWhere(qry,MyTreeView_DesignLeader,'VT_DesignTake_DesignLeader',' and (FDesignLeaderID=0 or FDesignLeaderID='+IntToStr(UserNumID)+' )' ) then
    Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;
end;

procedure TFrm_DesignTake.MyTreeView_DesignLeaderExpanding(Sender: TObject;
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
  qry.SQL.Text:='Select * from VT_DesignTake_DesignLeader with(nolock) where FParentNumber= '''
               +PTree(Node.Data).ID+''' '
               +' order by FTakeStatus,FNumber';
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
    with MyTreeView_DesignLeader.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('Isleaf').value;
    end;
    qry.Next;
  end;


end;

procedure TFrm_DesignTake.MyTreeView_DesignLeaderChange(Sender: TObject;
  Node: TTreeNode);
var
  qry:TADOquery;

begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If Node = nil then Exit;
  with PTree(Node.Data)^ do
  begin
    ListItemFNumber_DesignLeader:=trim(PTree(Node.Data).FNumber);
    P_th_DesignLeader:=PTree(Node.Data).Caption;
    P_Isleaf_DesignLeader:=PTree(Node.Data).Isleaf;

    Act_TS_DesignLeader.Execute;//页选项设置
    Act_Status.Execute; //权限设置

  end;

end;

procedure TFrm_DesignTake.cxGV_TakeItemFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
var qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If P_state =2  then //不在新增、修改状态
  begin
    If (mdata_TakeItem['FTakeItemID']<>0) and (mdata_TakeItem['FTakeItemID']<>null) then
      begin
        If MyItemList(qry,mdata_TakeList,'V_DesignTakeList','cast(FTakeItemID as varchar(20))',
           mdata_TakeItem['FTakeItemID'],'FItemNumber') then
      //Act_Status.Execute  //权限设置
    end;
  end;

end;

procedure TFrm_DesignTake.Act_TempExecute(Sender: TObject);
var
  qry: TADOQuery;
  i: integer;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.EnableBCD:=False;//小数位数>4
  qry.CommandTimeout:=500;
  try
    qry.SQL.Text:='delete from T_DesignTakeTemp where NumID='+IntToStr(UserNumID);
    qry.ExecSQL;
  finally
     ;
  end;

  If mdata_TakeList.RecordCount<=0 then
  begin
    Exit;
  end;

  try
    qry.SQL.Text:='Insert into T_DesignTakeTemp(FTakeListNum,FTakeGBT,FTakemc,FTakegg,FTakedw,'
                 +'FTakeDemand,FTakeDesign,FTakeListReMark,FApprovalStuffRange,'
                 +'FTakeName,FTakeModel,FTakeunitName,FTakeQry,FTakeSumQry,FDepartmentID,NumID) '
                 +'values(:FTakeListNum,:FTakeGBT,:FTakemc,:FTakegg,:FTakedw,'
                 +':FTakeDemand,:FTakeDesign,:FTakeListReMark,:FApprovalStuffRange,'
                 +':FTakeName,:FTakeModel,:FTakeunitName,:FTakeQry,:FTakeSumQry,:FDepartmentID,:NumID)';
    mdata_TakeList.First;
    i:=1;
    while not mdata_TakeList.eof do
    begin
      If (mdata_TakeList['FTakeQry']<>0) then
      begin
        If qry.Active then qry.Close;
       // qry.Parameters.FindParam('FTakeItemID').value:= P_MaxNum;
        qry.Parameters.FindParam('FTakeListNum').value:=mdata_TakeList['FTakeListNum'];
        qry.Parameters.FindParam('FTakeGBT').value:=mdata_TakeList['FTakeGBT'];
        qry.Parameters.FindParam('FTakemc').value:=mdata_TakeList['FTakemc'];
        qry.Parameters.FindParam('FTakegg').value:=mdata_TakeList['FTakegg'];
        qry.Parameters.FindParam('FTakedw').value:=mdata_TakeList['FTakedw'];
        qry.Parameters.FindParam('FTakeDemand').value:=mdata_TakeList['FTakeDemand'];
        qry.Parameters.FindParam('FTakeDesign').value:=mdata_TakeList['FTakeDesign'];
        qry.Parameters.FindParam('FTakeListReMark').value:=mdata_TakeList['FTakeListReMark'];
        qry.Parameters.FindParam('FApprovalStuffRange').value:=mdata_TakeList['FApprovalStuffRange'];
        qry.Parameters.FindParam('FTakeName').value:=mdata_TakeList['FTakeName'];
        qry.Parameters.FindParam('FTakeModel').value:=mdata_TakeList['FTakeModel'];
        qry.Parameters.FindParam('FTakeUnitName').value:=mdata_TakeList['FTakeUnitName'];
        qry.Parameters.FindParam('FTakeQry').value:=mdata_TakeList['FTakeQry'];
        qry.Parameters.FindParam('FTakeSumQry').value:=mdata_TakeList['FTakeSumQry'];
        qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
        qry.Parameters.FindParam('NumID').value:=UserNumID;
        qry.ExecSQL;
      end;
        mdata_TakeList.Next;
        i:=i+1;
     end;
   finally
     ;
   end;
  try
    qry.SQL.Text:='delete from T_DesignTakeTemp where isnull(FTakeName,'''')='''' and NumID='+IntToStr(UserNumID);
    qry.ExecSQL;
  finally
     ;
  end;
  try
    qry.SQL.Text:='select * from V_DesignTakeTemp with(nolock) where NumID='+IntToStr(UserNumID)
                 +' and isnull(FApprovalStuffRangeID,0)=0 ' ;
    qry.Open;
  finally
     ;
  end;
  If qry.RecordCount>0 then
  begin
    application.MessageBox('物料类别未匹配到！请添加物料类别后重新导入','系统提示',MB_ICONERROR);
    mdata_TakeList.CopyFromDataSet(qry);
    mdata_TakeList.Active:=True;
    Exit;
  end
  else
  begin
    try
      qry.SQL.Text:='select * from V_DesignTakeTemp with(nolock) where NumID='+IntToStr(UserNumID)
                   +' order by FTakeListNum ' ;
                 //  +' order by FTakeListNum,FApprovalStuffParentNumber,FTakeGBT,FTakemc,FTakegg' ;
      qry.Open;
    finally
       ;
    end;
    mdata_TakeList.CopyFromDataSet(qry);
    mdata_TakeList.Active:=True;
 end;    
  qry.Free


end;

procedure TFrm_DesignTake.RB_Ref_K3Click(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.CommandTimeout:=500;
  If PC_1.ActivePage=TS_K3 then
  begin
   try
      qry.SQL.Text:='Select * from T_K3Item with(nolock) where FK3ID='+IntToStr(UserFK3ID);
      qry.Open;
    finally
       ;
    end;
    mdata_K3.CopyFromDataSet(qry);
    cxGvColumn(cxGv_K3,mdata_K3);

    mdata_K3.Open;
    mdata_K3.First;
  end;
  qry.Free;

end;

procedure TFrm_DesignTake.E_Locate_k3PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.CommandTimeout:=800;

  If PC_1.ActivePage=TS_K3 then
  begin
   try
      qry.SQL.Text:='Select * from T_K3Item  with(nolock) where FNumber+FName+FModel like :Locate and FK3ID='+IntToStr(UserFK3ID);
      qry.Parameters.FindParam('Locate').value:='%'+Trim(E_Locate_k3.Text)+'%';
      qry.Open;
    finally
       ;
    end;
    mdata_k3.CopyFromDataSet(qry);
    cxGvColumn(cxGv_k3,mdata_k3);
    mdata_k3.Open;
    mdata_k3.First;
  end;


end;

procedure TFrm_DesignTake.mc_2PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.CommandTimeout:=800;
  try
    qry.SQL.Text:='Select * from T_K3Item  with(nolock) where FNumber+FName+FModel like :Locate and FK3ID='+IntToStr(UserFK3ID);
    qry.Parameters.FindParam('Locate').value:='%'+mdata_TakeList['FTakeName']+'%';
    qry.Open;
  finally
     ;
  end;
  mdata_k3.CopyFromDataSet(qry);
  cxGvColumn(cxGv_k3,Mdata_k3);
  mdata_k3.Open;
  mdata_k3.First;

  PC_1.ActivePage:=TS_k3;


end;

procedure TFrm_DesignTake.gg_2PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.CommandTimeout:=800;
  try
    qry.SQL.Text:='Select * from T_K3Item  with(nolock) where FNumber+FName+FModel like :Locate and FK3ID='+IntToStr(UserFK3ID);
    qry.Parameters.FindParam('Locate').value:='%'+mdata_TakeList['FTakeModel']+'%';
    qry.Open;
  finally
     ;
  end;
  mdata_k3.CopyFromDataSet(qry);
  cxGvColumn(cxGv_k3,Mdata_k3);
  mdata_k3.Open;
  mdata_k3.First;

  PC_1.ActivePage:=TS_k3;

end;

procedure TFrm_DesignTake.Act_PickExecute(Sender: TObject);
var
  dlgOpen: TRzOpenDialog;
  Filter,SelCaption,filepath:string;
  ExcelApp,MyWorkBook,mysheet: Variant;
  k,i,Maxc:Integer;
  selValue : string;
  qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  //打开导入的文件
   dlgOpen:=TRzOpenDialog.Create(Application);
   try
     Filter:='';
     selCaption:='';
     Filter:='电子表格|*.xls;*.csv|所有文件|*.*';
     dlgOpen.Title:='选择部件的导入文件';
     dlgOpen.Filter:=Filter;
     If not dlgOpen.Execute then Exit;
     filepath:=dlgOpen.FileName;
   finally
     ;
   end;
   //打开EXCEL文件
   ExcelApp:= CreateOleObject('Excel.Application' );
   MyWorkBook:=ExcelApp.WorkBooks.Open( filepath );
   k:=MyWorkBook.Sheets.Count;  //工作薄的个数
   try
     qry.SQL.Text:='select 1 as FNumber,'''+MyWorkBook.WorkSheets[1].Cells[3,3].Value+''' as FName ';
     for k:=2 to k do
     begin
       qry.SQL.Text:=qry.SQL.Text+' union ' ;
       qry.SQL.Text:=qry.SQL.Text+'select '+IntToStr(k)+' as FNumber,'''+MyWorkBook.WorkSheets[k].Cells[3,3].Value+''' as FName';
     end;
     qry.Open;
   finally
     ;
   end;
   selValue:=Select('选择工作薄','FName','FName','FName','FNumber;FName',qry);
   If (Length(selValue)>0) and (qry.RecordCount>1) then
   begin
     k:=qry.FieldByName('FNumber').Value;
   end;

 //  MyWorkBook.WorkSheets[k].Name;
   //打开已存在工作簿
   ExcelApp.Worksheets[k].activate;      //打开第k个工作表
   //ExcelApp.WorkSheets['第四章'].activate;  //打开名为第四章的工作表
   Maxc:=MyWorkBook.WorkSheets[k].UsedRange.Columns.Count;
   i:= MyWorkBook.WorkSheets[k].UsedRange.Rows.Count;   //已经使用的行数

   mdata_TakeItem.Edit;
   mdata_TakeItem['FItemNumber']:= MyWorkBook.WorkSheets[k].Cells[3,3].Value;
   mdata_TakeItem['FTakeNumber']:= MyWorkBook.WorkSheets[k].Cells[3,9].Value;
   mdata_TakeItem['FTakeAddNum']:= MyWorkBook.WorkSheets[k].Cells[3,9].Value;
   mdata_TakeItem['FElectricName']:= MyWorkBook.WorkSheets[k].Cells[3,11].Value;
   mdata_TakeItem['FTakeReMark']:= MyWorkBook.WorkSheets[k].Cells[3,14].Value;
   mdata_TakeItem.Post;
   Act_Item.Execute; //  项目信息
   Act_FElectricName.Execute;   // 电气类别号

   mdata_TakeList.Open;
   mdata_TakeList.First;
   for i:=6 to i do
   begin
     mdata_TakeList.Append;
     mdata_TakeList.Edit;
     If  (MyWorkBook.WorkSheets[k].Cells[i,4].Value<>'') and  (MyWorkBook.WorkSheets[k].Cells[i,4].Value<> Null) and 
         (MyWorkBook.WorkSheets[k].Cells[i,9].Value<>0) and (MyWorkBook.WorkSheets[k].Cells[i,9].Value<>Null) then
     begin
       //mdata_TakeList['FTakeListNum']:= MyWorkBook.WorkSheets[k].Cells[i,1].Value;
       mdata_TakeList['FTakeGBT']:= MyWorkBook.WorkSheets[k].Cells[i,2].Value;
       mdata_TakeList['FTakemc']:= MyWorkBook.WorkSheets[k].Cells[i,4].Value;
       mdata_TakeList['FTakegg']:= MyWorkBook.WorkSheets[k].Cells[i,6].Value;
       mdata_TakeList['FTakedw']:= MyWorkBook.WorkSheets[k].Cells[i,8].Value;
       mdata_TakeList['FTakeQry']:= MyWorkBook.WorkSheets[k].Cells[i,9].Value;
       mdata_TakeList['FTakeSumQry']:= MyWorkBook.WorkSheets[k].Cells[i,10].Value;
       mdata_TakeList['FTakeDemand']:= MyWorkBook.WorkSheets[k].Cells[i,11].Value;
       mdata_TakeList['FTakeDesign']:= MyWorkBook.WorkSheets[k].Cells[i,13].Value;
       mdata_TakeList['FTakeListReMark']:= MyWorkBook.WorkSheets[k].Cells[i,15].Value;
       mdata_TakeList['FTakeName']:= MyWorkBook.WorkSheets[k].Cells[i,4].Value+MyWorkBook.WorkSheets[k].Cells[i,2].Value;
       mdata_TakeList['FTakeModel']:= MyWorkBook.WorkSheets[k].Cells[i,6].Value;
       mdata_TakeList['FTakeUnitName']:= MyWorkBook.WorkSheets[k].Cells[i,8].Value;
       mdata_TakeList['FApprovalStuffRange']:= MyWorkBook.WorkSheets[k].Cells[i,16].Value;
     end;
     mdata_TakeList.post;
   end;

   mdata_TakeList.First;
   MyWorkBook.Close;
   ExcelApp.WorkBooks.Close;         //关闭工作簿
   ExcelApp.Quit;                   //退出 Excel
   ExcelApp:=Unassigned;
   dlgOpen.Free;



end;

procedure TFrm_DesignTake.PickPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  If P_state =0 then
  begin
    mData_TakeItem.Close;
    mData_TakeItem.Active:=True;
    mData_TakeList.Close;
    mData_TakeList.Active:=True;
    Act_Pick.Execute; //提取文本
    Act_Temp.Execute; // 导入临时表
    //Act_Input.Execute; //  临时表判断
  end;

  {mData_TakeItem.Edit;
  mData_TakeItem.Post;
  If mData_TakeItem['FTakeAddNum']=Null then
  begin
    mData_TakeItem.Edit;
    mData_TakeItem['FTakeAddNum']:='';
    mData_TakeItem.Post;
  end; }
  {
  If P_state =0 then
  begin
    try
      qry.SQL.Text:='Select * from V_DesignTake with(nolock) where FDepartmentID=:FDepartmentID and FFileItemID=:FFileItemID and '
                   +'FElectricID=:FElectricID and FTakeNumber=:FTakeNumber and FTakeAddNum=:FTakeAddNum';
      qry.Parameters.FindParam('FDepartmentID').Value:=UserFDepartmentID;
      qry.Parameters.FindParam('FFileItemID').Value:=mData_TakeItem['FFileItemID'];
      qry.Parameters.FindParam('FElectricID').Value:=mData_TakeItem['FElectricID'];
      qry.Parameters.FindParam('FTakeNumber').Value:=mData_TakeItem['FTakeNumber'];
      qry.Parameters.FindParam('FTakeAddNum').Value:=mData_TakeItem['FTakeAddNum'];
      qry.Open;
      If qry.RecordCount>0 then
      begin
         application.MessageBox('档案号、部件号、图号、版本号不允许重复！请重新输入','系统提示',MB_ICONERROR);
         Exit;
      end;
    finally
       ;
    end;
  end;
  }

end;

procedure TFrm_DesignTake.Act_InputExecute(Sender: TObject);
var
  proc:TADOStoredProc;
  P_Retinf:String;
begin
  proc:=TADOStoredProc.Create(self);
  proc.ConnectionString:=mdlData.ReadConnStr;
  proc.CommandTimeout:=500;
  P_Retinf:='';
  try
    proc.ProcedureName:='P_Imp_DesignTake;1';
    with proc.Parameters.AddParameter do
    begin
      DataType := ftInteger;
      Direction := pdinput;
      size:=20;
      name := '@NumID';
      value:=UserNumID;
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
      DataType := ftString;
      Direction := pdoutput;
      size:=255;
      name := '@Retinf';
      value:='';
    end;
    proc.Open;
    P_Retinf:=proc.Parameters.FindParam('@Retinf').Value;

    mdata_TakeList.CopyFromDataSet(proc);
    mdata_TakeList.Active:=True;
    cxGvColumn(cxGv_TakeList,mdata_TakeList);

    If (P_Retinf<>'') then
    begin
      ShowPrograss('提示信息：【'+P_Retinf+'】',self);
      stbMsg.Caption:='提示信息：'+'【'+P_Retinf+'】';
      stbBar.Refresh;
    end;
    finally
     ;
    end;

    If P_Retinf<>'' then
       Messagedlg(P_Retinf,mtInformation,[mbok],0);

    proc.Free;


end;

procedure TFrm_DesignTake.Act_PickSelExecute(Sender: TObject);
begin
  inherited;
  mData_TakeItem.Edit;
  mData_TakeItem.Post;
  If (mData_TakeItem['FElectricID']=0) or (mData_TakeItem['FFileItemID']=0)  or (mData_TakeItem['FTakeNumber']='') then
     Pick.Visible:=False
  else
     Pick.Visible:=True;

end;

procedure TFrm_DesignTake.N_OutClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_DesignTake.N_EditClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_DesignTake.N_FilterClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_DesignTake.N_SortClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_DesignTake.N_GroupClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_DesignTake.N_SetClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_DesignTake.cxGrid_TakeItemContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV_TakeItem';
  Gm:='mdata_TakeItem';
  Gr:='cxGrid_TakeItem';
  Act_Menu_Set.Execute;

end;

procedure TFrm_DesignTake.cxGrid_TakeListContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV_TakeList';
  Gm:='mdata_TakeList';
  Gr:='cxGrid_TakeList';
  Act_Menu_Set.Execute;

end;

procedure TFrm_DesignTake.cxGrid_K3ContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV_K3';
  Gm:='mdata_K3';
  Gr:='cxGrid_K3';
  Act_Menu_Set.Execute;

end;

procedure TFrm_DesignTake.Act_MenuExecute(Sender: TObject);
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

procedure TFrm_DesignTake.Act_Menu_SetExecute(Sender: TObject);
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

procedure TFrm_DesignTake.Act_TS_ItemExecute(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  If P_Isleaf_Take>0 then
  begin
    If PC_Tree.ActivePage=TS_Item then
    begin
      If MyItemList(qry,mdata_TakeItem,'V_DesignTake','FFullNumber',
                    ListItemFNumber_Item,'FFullNumber') then
      If MyItemList(qry,mData_TakeList,'V_DesignTakeList','FFullNumber',
                    ListItemFNumber_Item,'FFullNumber,FTakeListNum') then
    end;
    If PC_Tree.ActivePage=TS_Write then
    begin
      If MyItemList(qry,mdata_TakeItem,'V_DesignTake','FFullNumber_Write',
                    ListItemFNumber_Item,'FFullNumber_Write') then
      If MyItemList(qry,mData_TakeList,'V_DesignTakeList','FFullNumber_Write',
                    ListItemFNumber_Item,'FFullNumber_Write,FTakeListNum') then
    end;
  end
  else
  begin
    mdata_TakeItem.Close;
    mData_TakeList.Close;
  end;

end;

procedure TFrm_DesignTake.Act_TS_WriteExecute(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  If P_Isleaf_Write>=1 then
  begin
    If PC_Tree.ActivePage=TS_Write then
    begin
      If MyItemList(qry,mdata_TakeItem,'V_DesignTake','FFullNumber_Write',
                    ListItemFNumber_Write,'FFullNumber_Write') then
      If MyItemList(qry,mData_TakeList,'V_DesignTakeList','FFullNumber_Write',
                    ListItemFNumber_Write,'FFullNumber_Write,FTakeListNum') then
    end;
  end
  else
  begin
    mdata_TakeItem.Close;
    mData_TakeList.Close;
  end;

end;

procedure TFrm_DesignTake.Act_TS_DesignLeaderExecute(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  If P_Isleaf_DesignLeader>=1 then
  begin
    If PC_Tree.ActivePage=TS_DesignLeader then
    begin
      If MyItemList(qry,mdata_TakeItem,'V_DesignTake','FFullNumber_DesignLeader',
                    ListItemFNumber_DesignLeader,'FFullNumber_DesignLeader') then
      If MyItemList(qry,mData_TakeList,'V_DesignTakeList','FFullNumber_DesignLeader',
                    ListItemFNumber_DesignLeader,'FFullNumber_DesignLeader,FTakeNum') then
    end;
  end
  else
  begin
    mdata_TakeItem.Close;
    mData_TakeList.Close;
  end;

end;

procedure TFrm_DesignTake.cxGV_TakeItemSelectionChanged(
  Sender: TcxCustomGridTableView);
var qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If mdata_TakeItem.RecordCount<0 then
     Exit;
  If P_state =2 then //不在新增、修改状态
  begin
    If (mdata_TakeItem['FTakeItemID']<>0) and (mdata_TakeItem['FTakeItemID']<>null) then
    begin
      If MyItemList(qry,mdata_TakeList,'V_DesignTakeList','cast(FTakeItemID as varchar(20))',
                    mdata_TakeItem['FTakeItemID'],'FItemNumber') then
      //Act_Status.Execute  //权限设置
    end;
  end;



end;

procedure TFrm_DesignTake.TB_ReturnClick(Sender: TObject);
begin
  inherited;
  PC_1.ActivePage:=TS_Take;
end;

procedure TFrm_DesignTake.Act_FBranchFileNoExecute(Sender: TObject);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  mdata_TakeItem.Edit;
  if mdata_TakeItem['FBranchFileNo']=Null then
     mdata_TakeItem['FBranchFileNo']:='';
  mdata_TakeItem.Post;

  try
    qry.SQL.Text:='select * from T_FileItem with(nolock) where FDepartmentID=:FDepartmentID and FBranchFileNo like :FBranchFileNo order by FBranchFileNo ';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Parameters.FindParam('FBranchFileNo').value:='%'+Trim(mdata_TakeItem['FBranchFileNo'])+'%';
    qry.Open;
  finally
    ;
  end;
  If qry.RecordCount=1 then
  begin
    mdata_TakeItem.Edit;
    mdata_TakeItem['FBranchFileNo']:=qry.FieldByName('FBranchFileNo').Value;
    mdata_TakeItem['FBranchItemNumber']:=qry.FieldByName('FBranchItemNumber').Value;
    mdata_TakeItem['FClientShortName']:=qry.FieldByName('FClientShortName').Value;
    mdata_TakeItem['FFileItemId']:=qry.FieldByName('FFileItemId').Value;
    mdata_TakeItem.Post;
    Exit;
  end;
  selValue:=Select('选择档案号','FBranchFileNo','FBranchFileNo','FBranchFileNo','FBranchFileNo;FClientShortName',qry);
  If (Length(selValue)>0) and (qry.RecordCount>1) then
  begin
    mdata_TakeItem.Edit;
    mdata_TakeItem['FBranchFileNo']:=qry.FieldByName('FBranchFileNo').Value;
    mdata_TakeItem['FBranchItemNumber']:=qry.FieldByName('FBranchItemNumber').Value;
    mdata_TakeItem['FClientShortName']:=qry.FieldByName('FClientShortName').Value;
    mdata_TakeItem['FFileItemId']:=qry.FieldByName('FFileItemId').Value;
    mdata_TakeItem.Post;
  end;



end;

procedure TFrm_DesignTake.FBranchFileNo_TakeItemPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  Act_FBranchFileNo.Execute;
end;

procedure TFrm_DesignTake.Act_FElectricNameExecute(Sender: TObject);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='select * from T_Electric with(nolock) where FDepartmentID=:FDepartmentID and FElectricName like :FElectricName order by FElectricNum ';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Parameters.FindParam('FElectricName').value:='%'+Trim(mdata_TakeItem['FElectricName'])+'%';
    qry.Open;
  finally
    ;
  end;
  If (qry.RecordCount=1) then
  begin
    mdata_TakeItem.Edit;
    mdata_TakeItem['FElectricID']:=qry.FieldByName('FElectricID').Value;
    mdata_TakeItem['FElectricNum']:=qry.FieldByName('FElectricNum').Value;
    mdata_TakeItem['FElectricName']:=qry.FieldByName('FElectricName').Value;
    mdata_TakeItem.Post;
    Exit;
  end;
  selValue:=select('选择产品类别','FElectricName','FElectricName','FElectricName','FElectricNum;FElectricName',qry);

  If (Length(selValue)>0) and (qry.RecordCount>1) then
  begin
    mdata_TakeItem.Edit;
    mdata_TakeItem['FElectricID']:=qry.FieldByName('FElectricID').Value;
    mdata_TakeItem['FTakeNumber']:=qry.FieldByName('FElectricNum').Value;
    mdata_TakeItem['FElectricName']:=qry.FieldByName('FElectricName').Value;
    mdata_TakeItem.Post;
  end;
end;

procedure TFrm_DesignTake.Act_FBranchItemNumberExecute(Sender: TObject);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  mdata_TakeItem.Edit;
  if mdata_TakeItem['FBranchItemNumber']=Null then
     mdata_TakeItem['FBranchItemNumber']:='';
  mdata_TakeItem.Post;

  try
    qry.SQL.Text:='select * from VT_FileItem with(nolock) where FDepartmentID=:FDepartmentID and FBranchItemNumber like :FBranchItemNumber order by FItemNumber ';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Parameters.FindParam('FBranchItemNumber').value:='%'+Trim(mdata_TakeItem['FBranchItemNumber'])+'%';
    qry.Open;
  finally
    ;
  end;
  If qry.RecordCount=1 then
  begin
    mdata_TakeItem.Edit;
    mdata_TakeItem['FBranchFileNo']:=qry.FieldByName('FBranchFileNo').Value;
    mdata_TakeItem['FBranchItemNumber']:=qry.FieldByName('FBranchItemNumber').Value;
    mdata_TakeItem['FClientShortName']:=qry.FieldByName('FClientShortName').Value;
    mdata_TakeItem['FFileItemId']:=qry.FieldByName('FFileItemId').Value;
    mdata_TakeItem.Post;
    Exit;
  end;
  selValue:=Select('选择档案号','FNumber','FParentNumber','FNumber','FName',qry);
  If (Length(selValue)>0) and (qry.RecordCount>1) then
  begin
    mdata_TakeItem.Edit;
    mdata_TakeItem['FBranchFileNo']:=qry.FieldByName('FBranchFileNo').Value;
    mdata_TakeItem['FBranchItemNumber']:=qry.FieldByName('FBranchItemNumber').Value;
    mdata_TakeItem['FClientShortName']:=qry.FieldByName('FClientShortName').Value;
    mdata_TakeItem['FFileItemId']:=qry.FieldByName('FFileItemId').Value;
    mdata_TakeItem.Post;
  end;

end;

procedure TFrm_DesignTake.TB_TakeClick(Sender: TObject);
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
   P_List:=P_th_Write ;
  filepath:=Extractfilepath(application.ExeName)+'电气外购件模版.xls';
  if (Mdata_TakeList.Active) and (Mdata_TakeList.recordcount>0) then
  Begin
    SaveDialog1.FileName:='电气外购件('+P_List+')';
    SaveDialog1.Filter:='.xls';
    SaveDialog1.Execute;

    if (Mdata_TakeList.FieldByName('FTakeNum').AsString<>'') Or (Mdata_TakeList.FieldByName('FTakeNum').AsString<>Null) then
        savefilepath:=SaveDialog1.FileName+'.xls';

    if FileExists(savefilepath) then
    begin
      DeleteFile(savefilepath) ;
    end;
    stbMsg.Caption:='提示信息：正在导出电气外购件:'+'【'+P_List+'】';
    stbBar.Refresh;

    ExcelApp:= CreateOleObject('Excel.Application' );
    ExcelApp.Visible:=False;  //工作表显示

    ExcelApp.DisplayAlerts:=False;                  //不显示提示框
    MyWorkBook:=ExcelApp.WorkBooks.Open( filepath );   //打开模版

    try
      qry.SQL.Text:='select distinct FTakeNum from  V_DesignTake where FDepartmentID=:FDepartmentID and FFullNumber_Write like :FFullNumber_Write order by FTakeNum';
      qry.Parameters.FindParam('FDepartmentID').value:= UserFDepartmentID;
      qry.Parameters.FindParam('FFullNumber_Write').value:= ListItemFNumber_Write+'%';
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
       qry1.SQL.Text:='select * from V_DesignTakeList where FDepartmentID=:FDepartmentID and FFullNumber_Write like :FFullNumber_Write and FTakeNum=:FTakeNum order by FFullNumber_Write,FTakeListNum ';
       qry1.Parameters.FindParam('FDepartmentID').value:= UserFDepartmentID;
       qry1.Parameters.FindParam('FFullNumber_Write').value:= ListItemFNumber_Write+'%';
       qry1.Parameters.FindParam('FTakeNum').value:= qry.FieldByName('FTakeNum').Value;
       qry1.Open;
     finally
       ;
     end;
     if qry1.RecordCount>0 then
     begin
       Mdata_TakeList.Close;
       Mdata_TakeList.CopyFromDataSet(qry1);
     end;
     vLastSheet:=MyWorkBook.Sheets[MyWorkBook.Sheets.Count];
     MyWorkBook.Sheets[1].Copy(EmptyParam,vLastSheet);
     MyWorkBook.WorkSheets[k].Name:=IntToStr(k)+Mdata_TakeList['FElectricName']+Mdata_TakeList['FTakeNum'];
     MyWorkBook.WorkSheets[k].Activate;

      //标题
      MyWorkBook.WorkSheets[k].Cells[1,1].Value:=AnsiReplaceStr(MyWorkBook.WorkSheets[k].Cells[1,1].Value,'A',UserFDepartmentName); //公司名称

      MyWorkBook.WorkSheets[k].Cells[2,9].Value := Trim(Mdata_TakeList.FieldByName('FTakeNo').AsString);
      MyWorkBook.WorkSheets[k].Cells[2,10].Value := Trim(Mdata_TakeList.FieldByName('FTakeAddNum').AsString);
      MyWorkBook.WorkSheets[k].Cells[3,3].Value := Trim(Mdata_TakeList.FieldByName('FTakeNumber').AsString);
      MyWorkBook.WorkSheets[k].Cells[3,5].Value := Trim(Mdata_TakeList.FieldByName('FBranchFileNo').AsString);
      MyWorkBook.WorkSheets[k].Cells[3,7].Value := Trim(Mdata_TakeList.FieldByName('FItemQry').AsString);
      MyWorkBook.WorkSheets[k].Cells[3,9].Value := Trim(Mdata_TakeList.FieldByName('FElectricName').AsString);
      MyWorkBook.WorkSheets[k].Cells[4,3].Value := Trim(Mdata_TakeList.FieldByName('FClientFullName').AsString);
      MyWorkBook.WorkSheets[k].Cells[4,9].Value := Trim(Mdata_TakeList.FieldByName('FTakeWrite').AsString);


      //循环行开始
      i:=6;

       //工作薄名称
      MyWorkBook.WorkSheets[k].Name:=Mdata_TakeList.FieldByName('FTakeNum').AsString;
      copystart:='A'+IntToStr(i);
      if Mdata_TakeList.recordcount>0 then
      Begin
        if Mdata_TakeList.recordcount>1 then
        Begin
          copystart:='A'+IntToStr(i);
          copystart1:='A'+IntToStr(i+1);
          copyend:='J'+IntToStr(i);  //区域
          ReNum:=Mdata_TakeList.recordcount-1+(25-((Mdata_TakeList.RecordCount+1) mod 25));;
          L:=Mdata_TakeList.recordcount-1+(25-((Mdata_TakeList.RecordCount+1) mod 25));;
          while ReNum>0 do
          Begin
            ExcelApp.ActiveSheet.Range[copystart+':'+copyend].Copy;
            ExcelApp.ActiveSheet.Rows[i+1].Insert;
            ExcelApp.ActiveSheet.Range[copystart1].PasteSpecial;
            Renum:=Renum-1;
          end;
          //制单、审核栏
          MyWorkBook.WorkSheets[k].Cells[i+L+1,3].Value:=Mdata_TakeList.FieldByName('FTakeAudit').AsString; //审核
          MyWorkBook.WorkSheets[k].Cells[i+L+1,5].Value:=Mdata_TakeList.FieldByName('FTakeCheck').AsString; //校对
          MyWorkBook.WorkSheets[k].Cells[i+L+1,9].Value:=Mdata_TakeList.FieldByName('FTakeWrite').AsString; //制单
        end
        else
        Begin
          R_Count:=Mdata_TakeList.recordcount;
        end;
        Mdata_TakeList.first;
        while not Mdata_TakeList.eof do
        Begin
          MyWorkBook.WorkSheets[k].Cells[i,1].Value := Mdata_TakeList.FieldByName('FTakeListNum').AsString;
          MyWorkBook.WorkSheets[k].Cells[i,2].Value := Mdata_TakeList.FieldByName('FTakemc').AsString;
          MyWorkBook.WorkSheets[k].Cells[i,4].Value := Mdata_TakeList.FieldByName('FTakegg').AsString;
          MyWorkBook.WorkSheets[k].Cells[i,6].Value := Mdata_TakeList.FieldByName('FTakedw').AsString;
          MyWorkBook.WorkSheets[k].Cells[i,7].Value := Mdata_TakeList.FieldByName('FTakeQry').AsString;
          MyWorkBook.WorkSheets[k].Cells[i,8].Value := Mdata_TakeList.FieldByName('FTakeListReMark').AsString;
          Mdata_TakeList.next;
          i:=i+1;
        End;
      end;
      qry.Next ;
      ExcelApp.Visible:=False;
     // MyWorkBook.WorkSheets[k].PrintPreview;  //打印
      k:=k+1;
    end;
    MyWorkBook.WorkSheets[1].delete; //删除模版
    stbMsg.Caption:='提示信息：电气外购件:'+'【'+Mdata_TakeList.FieldByName('FTakeNum').AsString+'】的信息导出完成!';
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

procedure TFrm_DesignTake.Act_Set_MaxIDExecute(Sender: TObject);
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
      value:='T_DesignTake';
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

procedure TFrm_DesignTake.Act_ItemExecute(Sender: TObject);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  mdata_TakeItem.Edit;
  if mdata_TakeItem['FItemNumber']=Null then
     mdata_TakeItem['FItemNumber']:='';
  mdata_TakeItem.Post;

  try
    qry.SQL.Text:='select * from VT_Item with(nolock) where FDepartmentID=:FDepartmentID and FItemNumber like :FItemNumber order by FItemNumber ';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Parameters.FindParam('FItemNumber').value:='%'+Trim(mdata_TakeItem['FItemNumber'])+'%';
    qry.Open;
  finally
    ;
  end;
  If qry.RecordCount=1 then
  begin
    mdata_TakeItem.Edit;
    mdata_TakeItem['FFileNo']:=qry.FieldByName('FFileNo').Value;
    mdata_TakeItem['FItemNumber']:=qry.FieldByName('FItemNumber').Value;
    mdata_TakeItem['FClientShortName']:=qry.FieldByName('FClientShortName').Value;
    mdata_TakeItem['FItemId']:=qry.FieldByName('FItemId').Value;
    mdata_TakeItem.Post;
    Exit;
  end;
  selValue:=Select('选择项目号','FNumber','FParentNumber','FNumber','FName',qry);
  If (Length(selValue)>0) and (qry.RecordCount>1) then
  begin
    mdata_TakeItem.Edit;
    mdata_TakeItem['FFileNo']:=qry.FieldByName('FFileNo').Value;
    mdata_TakeItem['FItemNumber']:=qry.FieldByName('FItemNumber').Value;
    mdata_TakeItem['FClientShortName']:=qry.FieldByName('FClientShortName').Value;
    mdata_TakeItem['FItemId']:=qry.FieldByName('FItemId').Value;
    mdata_TakeItem.Post;
  end;


end;

procedure TFrm_DesignTake.cxGrid_K3DblClick(Sender: TObject);
var  i,j: integer;
begin
  inherited;
  mData_TakeList.Open;
  mData_TakeList.Edit;
  mData_TakeList.Post;
  begin
    mData_TakeList.Last;
    for i:=0 to cxGV_K3.DataController.Controller.SelectedRecordCount-1 do
    begin
      j:=cxGV_K3.DataController.GetSelectedRowIndex(i);
      mData_TakeList.Append;
      mData_TakeList.Edit;
      mData_TakeList['FNumber']:=cxGV_K3.DataController.GetValue(J,0);
      mData_TakeList['FTakeName']:=cxGV_K3.DataController.GetValue(J,1);
      mData_TakeList['FTakeModel']:=cxGV_K3.DataController.GetValue(J,2);
      mData_TakeList['FTakeUnitName']:=cxGV_K3.DataController.GetValue(J,3);
      mData_TakeList.Post;
    end;
  end;
  PC_1.ActivePage:=TS_Take;


end;

procedure TFrm_DesignTake.Act_FApprovalStuffSortNumberExecute(
  Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.CommandTimeout:=800;
 { try
    qry.SQL.Text:='Select * from V_ApprovalStuff with(nolock) where FTakemc=:FTakemc and FDepartMentID=:FDepartMentID and FisLeaf=0 ';
    //qry.SQL.Text:='Select * from V_ApprovalStuff with(nolock) where FTakemc=:FTakemc and FDepartMentID=:FDepartMentID ';
    qry.Parameters.FindParam('FTakemc').value:=mdata_TakeList['FApprovalStuffSort'];
    qry.Parameters.FindParam('FDepartMentID').value:=UserFDepartMentID;
    qry.Open;
  finally
     ;
  end;
  If qry.RecordCount=1 then
  begin
    mdata_TakeList.Edit;
    mdata_TakeList['FApprovalStuffParentID']:=qry.FieldByName('FApprovalStuffID').Value;
    mdata_TakeList['FApprovalStuffParentNumber']:=qry.FieldByName('FApprovalStuffNumber').Value;
    mdata_TakeList.Post;
  end
  else
  begin
    mdata_TakeList.Edit;
    mdata_TakeList['FApprovalStuffParentID']:=0;
    mdata_TakeList['FApprovalStuffParentNumber']:='';
    mdata_TakeList.Post;
  end;
    }
    try
      qry.SQL.Text:='select  (replicate(''0'',(3 - len(cast(max(right(FApprovalStuffNumber,3)) as int)+1))) + convert(varchar(3),cast(max(right(FApprovalStuffNumber,3)) as int)+1)) as n  '
                    +' from V_ApprovalStuff where FDepartmentID=:FDepartmentID and FApprovalStuffParentID=:FApprovalStuffParentID  ';
      qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
      qry.Parameters.FindParam('FApprovalStuffParentID').value:=mdata_TakeList['FApprovalStuffParentID'];
      qry.Open;
    finally
     ;
    end;
    If (qry.FieldByName('n').Value<>null) and (qry.FieldByName('n').Value<>'') then
    begin
      mdata_TakeList.Edit;
      mdata_TakeList['FApprovalStuffNumber']:= mdata_TakeList['FApprovalStuffParentNumber']+'.'+qry.FieldByName('n').Value;
      mdata_TakeList.Post;
    end
    else
    begin
      mdata_TakeList.Edit;
      mdata_TakeList['FApprovalStuffNumber']:= mdata_TakeList['FApprovalStuffParentNumber']+'.001';
      mdata_TakeList.Post;
    end;

end;

procedure TFrm_DesignTake.Act_FApprovalStuffNumberExecute(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.CommandTimeout:=800;
  try
    qry.SQL.Text:='select  (replicate(''0'',(3 - len(cast(max(right(FApprovalStuffNumber,3)) as int)+1))) + convert(varchar(3),cast(max(right(FApprovalStuffNumber,3)) as int)+1)) as n  '
                 +' from V_ApprovalStuff where FDepartmentID=:FDepartmentID and FApprovalStuffParentID=:FApprovalStuffParentID  ';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Parameters.FindParam('FApprovalStuffParentID').value:=mdata_TakeList['FApprovalStuffParentID'];
    qry.Open;
  finally
   ;
  end;
  If (qry.FieldByName('n').Value<>null) and (qry.FieldByName('n').Value<>'') then
  begin
    mdata_TakeList.Edit;
    mdata_TakeList['FApprovalStuffNumber']:= mdata_TakeList['FApprovalStuffParentNumber']+'.'+qry.FieldByName('n').Value;
    mdata_TakeList.Post;
  end
  else
  begin
    mdata_TakeList.Edit;
    mdata_TakeList['FApprovalStuffNumber']:= mdata_TakeList['FApprovalStuffParentNumber']+'.001';
    mdata_TakeList.Post;
  end;

end;

procedure TFrm_DesignTake.FTakemc_TakeListPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.CommandTimeout:=800;
  try
    qry.SQL.Text:='Select * from T_K3Item  with(nolock) where FNumber+FName+FModel like :Locate and FK3ID='+IntToStr(UserFK3ID);
    qry.Parameters.FindParam('Locate').value:='%'+mdata_TakeList['FTakemc']+'%';
    qry.Open;
  finally
     ;
  end;
  mdata_k3.CopyFromDataSet(qry);
  cxGvColumn(cxGv_k3,Mdata_k3);
  mdata_k3.Open;
  mdata_k3.First;

  PC_1.ActivePage:=TS_k3;

end;

procedure TFrm_DesignTake.FTakeGBT_TakeListPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.CommandTimeout:=800;
  try
    qry.SQL.Text:='Select * from T_K3Item  with(nolock) where FNumber+FName+FModel like :Locate and FK3ID='+IntToStr(UserFK3ID);
    qry.Parameters.FindParam('Locate').value:='%'+mdata_TakeList['FTakeGBT']+'%';
    qry.Open;
  finally
     ;
  end;
  mdata_k3.CopyFromDataSet(qry);
  cxGvColumn(cxGv_k3,Mdata_k3);
  mdata_k3.Open;
  mdata_k3.First;

  PC_1.ActivePage:=TS_k3;

end;

procedure TFrm_DesignTake.FTakegg_TakeListPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.CommandTimeout:=800;
  try
    qry.SQL.Text:='Select * from T_K3Item  with(nolock) where FNumber+FName+FModel like :Locate and FK3ID='+IntToStr(UserFK3ID);
    qry.Parameters.FindParam('Locate').value:='%'+mdata_TakeList['FTakegg']+'%';
    qry.Open;
  finally
     ;
  end;
  mdata_k3.CopyFromDataSet(qry);
  cxGvColumn(cxGv_k3,Mdata_k3);
  mdata_k3.Open;
  mdata_k3.First;

  PC_1.ActivePage:=TS_k3;

end;

end.
