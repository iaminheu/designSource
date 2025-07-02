unit Main_WorkTrace;

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
  jpeg, cxLookAndFeelPainters, cxButtons, cxMemo, Menus, ActnList;

type
    TFrm_WorkTrace = class(TFrm_GridBass)
    ImageList: TImageList;
    frReport: TfrReport;
    frDBDataSet: TfrDBDataSet;
    PC_1: TRzPageControl;
    TS_WorkItem: TRzTabSheet;
    RzSizePanel2: TRzSizePanel;
    ToolBar3: TToolBar;
    ToolButton7: TToolButton;
    TB_Down2: TToolButton;
    ToolButton10: TToolButton;
    Image3: TImage;
    L_title2: TLabel;
    TB_EXIT1: TToolButton;
    Panel1: TPanel;
    Panel_button: TPanel;
    Bevel_button: TBevel;
    TS_WorkTrace: TRzTabSheet;
    ToolBar2: TToolBar;
    TB_App: TToolButton;
    TB_Edit: TToolButton;
    TB_Del: TToolButton;
    TB_Out: TToolButton;
    ToolButton14: TToolButton;
    TB_Down: TToolButton;
    TB_Print: TToolButton;
    ToolButton17: TToolButton;
    TB_EXIT: TToolButton;
    Image4: TImage;
    RzSizePanel1: TRzSizePanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Bevel2: TBevel;
    OKBtn: TcxButton;
    CancelBtn: TcxButton;
    MData: TdxMemData;
    DS_Mdata: TDataSource;
    ToolButton9: TToolButton;
    TB_Audit: TToolButton;
    PM_M: TPopupMenu;
    N_App: TMenuItem;
    N_Edit: TMenuItem;
    N_Del: TMenuItem;
    N_Out: TMenuItem;
    N_Ref: TMenuItem;
    N_Print: TMenuItem;
    N_Audit: TMenuItem;
    N_Exit: TMenuItem;
    DS_Mdata_M: TDataSource;
    MData_M: TdxMemData;
    actionList: TActionList;
    Act_App: TAction;
    Act_Edit: TAction;
    Act_Del: TAction;
    Act_Out: TAction;
    Act_Audit: TAction;
    Act_Status: TAction;
    TB_Submit: TToolButton;
    TB_Check: TToolButton;
    TB_PushDown: TToolButton;
    Act_Submit: TAction;
    Act_Check: TAction;
    Act_PushDown: TAction;
    Act_SetOpen: TAction;
    Act_SetClose: TAction;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    cxGrid_M: TcxGrid;
    cxGV_M: TcxGridDBTableView;
    FWorkTraceNum_M: TcxGridDBColumn;
    FWorkTraceDate_M: TcxGridDBColumn;
    FWorkTraceReMark_M: TcxGridDBColumn;
    FWorkTraceWrite_M: TcxGridDBColumn;
    FWorkTraceWriteDate_M: TcxGridDBColumn;
    FWorkTraceAudit_M: TcxGridDBColumn;
    FWorkTraceAuditDate_M: TcxGridDBColumn;
    FWorkTraceID_M: TcxGridDBColumn;
    cxGL_M: TcxGridLevel;
    PageControl3: TPageControl;
    TabSheet5: TTabSheet;
    PageControl4: TPageControl;
    TabSheet6: TTabSheet;
    MData2: TdxMemData;
    MData2th: TStringField;
    MData2mc: TStringField;
    MData2gg: TStringField;
    MData2FSumQry: TIntegerField;
    MData2FTakeDemand: TStringField;
    MData2FTakeListReMark: TStringField;
    MData2FSumSuttle: TFloatField;
    MData2FName: TStringField;
    MData2FModel: TStringField;
    MData2UnitName: TStringField;
    MData2FNumber: TStringField;
    MData2Fk3Name: TStringField;
    MData2FK3Model: TStringField;
    MData2FOrderNoQry: TIntegerField;
    DS_Mdata2: TDataSource;
    DS_Mdata_M2: TDataSource;
    MData_M2: TdxMemData;
    MData_M2FTakeID: TIntegerField;
    MData_M2FTakeDate: TDateField;
    MData_M2FItemListId: TIntegerField;
    MData_M2FBranchFileNo: TStringField;
    MData_M2FTakeWrite: TStringField;
    MData_M2FTakeWriteDate: TDateTimeField;
    MData_M2FItemNumber: TStringField;
    FWorkTraceNo_M: TcxGridDBColumn;
    Act_Set_MaxNum: TAction;
    Act_Set_MaxID: TAction;
    PC_Tree: TPageControl;
    TS_Date: TTabSheet;
    TS_Write: TTabSheet;
    MyTreeView_Date: TTreeView;
    MyTreeView_Write: TTreeView;
    ToolBar1: TToolBar;
    TB_Ref_Write: TcxButton;
    Act_Ref_Agent: TAction;
    Act_Ref_Date: TAction;
    ToolBar4: TToolBar;
    TB_Ref_Date: TcxButton;
    MData_M2FPlanTenderDate: TDateField;
    ToolButton1: TToolButton;
    RSP_List: TRzSizePanel;
    PageControl2: TPageControl;
    TabSheet3: TTabSheet;
    TBar_Sel: TToolBar;
    TB_Sel: TcxButton;
    PageControl6: TPageControl;
    TabSheet2: TTabSheet;
    ToolBar5: TToolBar;
    TB_Ref_WorkItem: TcxButton;
    MyTreeView_WorkItem: TTreeView;
    FWorkTraceStatusNotes_M: TcxGridDBColumn;
    N_Submit: TMenuItem;
    N_Check: TMenuItem;
    N_PushDown: TMenuItem;
    FWorkTraceSubmitDate_M: TcxGridDBColumn;
    FWorkTraceCheck_M: TcxGridDBColumn;
    FWorkTraceCheckDate_M: TcxGridDBColumn;
    FWorkTracePushDown_M: TcxGridDBColumn;
    FWorkTracePushDownDate_M: TcxGridDBColumn;
    FWorkTraceStatus_M: TcxGridDBColumn;
    Act_Ref_Write: TAction;
    cxGrid_M2: TcxGrid;
    cxGV_M2: TcxGridDBTableView;
    FWorkStatus_M2: TcxGridDBColumn;
    FStatusNotes_M2: TcxGridDBColumn;
    FDepartmentNum_M2: TcxGridDBColumn;
    FWorkItemNum_M2: TcxGridDBColumn;
    FWorkItemDate_M2: TcxGridDBColumn;
    FMaterialDate_M2: TcxGridDBColumn;
    FBidDate_M2: TcxGridDBColumn;
    FWorkItemRemark_M2: TcxGridDBColumn;
    FClientFullName_M2: TcxGridDBColumn;
    FItemModel_M2: TcxGridDBColumn;
    FItemQry_M2: TcxGridDBColumn;
    FBranchItemNumber_M2: TcxGridDBColumn;
    FBranchFileNo_M2: TcxGridDBColumn;
    FDeliveryPlace_M2: TcxGridDBColumn;
    FJobSort_M2: TcxGridDBColumn;
    FJobPlace_M2: TcxGridDBColumn;
    FAdvancePercent_M2: TcxGridDBColumn;
    FE05_M2: TcxGridDBColumn;
    FAgentName_M2: TcxGridDBColumn;
    FWorkData_M2: TcxGridDBColumn;
    FWorkItemID_M2: TcxGridDBColumn;
    cxGL_M2: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGV2: TcxGridDBTableView;
    FWorkListNum_2: TcxGridDBColumn;
    FBalanceName_2: TcxGridDBColumn;
    FBalanceModel_2: TcxGridDBColumn;
    FUnitName_2: TcxGridDBColumn;
    FQry_2: TcxGridDBColumn;
    FEstimateQry_2: TcxGridDBColumn;
    SumFBalanceQry_2: TcxGridDBColumn;
    FWorkListRemark_2: TcxGridDBColumn;
    FRemark_2: TcxGridDBColumn;
    FWorkItemNum_2: TcxGridDBColumn;
    FItemID_2: TcxGridDBColumn;
    FWorkListID_2: TcxGridDBColumn;
    FBalanceProductName_2: TcxGridDBColumn;
    cxGL2: TcxGridLevel;
    FDeliveryDateTxt_2: TcxGridDBColumn;
    FWorkTracePercent_2: TcxGridDBColumn;
    FWorkTraceQry_2: TcxGridDBColumn;
    FSumWorkTraceQry_2: TcxGridDBColumn;
    FSumWorkTracePercent_2: TcxGridDBColumn;
    cxGrid: TcxGrid;
    cxGV: TcxGridDBTableView;
    FWorkListID: TcxGridDBColumn;
    FWorkItemNum: TcxGridDBColumn;
    FWorkListNum: TcxGridDBColumn;
    FBalanceName: TcxGridDBColumn;
    FBalanceModel: TcxGridDBColumn;
    FUnitName: TcxGridDBColumn;
    FQry: TcxGridDBColumn;
    FEstimateQry: TcxGridDBColumn;
    FWeekTraceQry: TcxGridDBColumn;
    FWeekTracePercent: TcxGridDBColumn;
    FTotalTraceQry: TcxGridDBColumn;
    FTotalTracePercent: TcxGridDBColumn;
    SumFBalanceQry: TcxGridDBColumn;
    FDeliveryDateTxt: TcxGridDBColumn;
    FWorkListRemark: TcxGridDBColumn;
    FRemark: TcxGridDBColumn;
    FItemID: TcxGridDBColumn;
    FBalanceProductName: TcxGridDBColumn;
    cxGL: TcxGridLevel;
    FWorkTraceListReMark: TcxGridDBColumn;
    TS_Item: TTabSheet;
    ToolBar6: TToolBar;
    TB_Ref_Item: TcxButton;
    MyTreeView_Item: TTreeView;
    Act_Ref_Item: TAction;
    TS_SysTem: TTabSheet;
    ToolBar7: TToolBar;
    TB_Ref_Agent: TcxButton;
    MyTreeView_Agent: TTreeView;
    Act_Ref_SysTem: TAction;
    FAgentName_M: TcxGridDBColumn;
    FAgentID_M: TcxGridDBColumn;
    FDepartmentName_M: TcxGridDBColumn;
    FDepartmentID_M: TcxGridDBColumn;
    FProductClass: TcxGridDBColumn;
    MDataFWorkTraceListReMark: TStringField;
    FWorkItemDate: TcxGridDBColumn;
    FBranchFileNo: TcxGridDBColumn;
    FBranchItemNumber: TcxGridDBColumn;
    FClientFullName: TcxGridDBColumn;
    FDepartmentNum_M: TcxGridDBColumn;
    FAgentName: TcxGridDBColumn;
    FWeekTotalTracePercent: TcxGridDBColumn;
    FWeekTotalTraceQry: TcxGridDBColumn;
    FWorkTraceStarDate_M: TcxGridDBColumn;
    TB_Total: TcxButton;
    Act_Total: TAction;
    procedure FormResize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TB_EXIT1Click(Sender: TObject);
    procedure TB_DownClick(Sender: TObject);
    procedure MyTreeView_WorkItemExpanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure MyTreeView_WorkItemChange(Sender: TObject; Node: TTreeNode);
    procedure TB_EXITClick(Sender: TObject);
    procedure OKBtnClick(Sender: TObject);
    procedure CancelBtnClick(Sender: TObject);
    procedure MyTreeView_DateExpanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure MyTreeView_DateChange(Sender: TObject; Node: TTreeNode);
    procedure TB_EditClick(Sender: TObject);
    procedure cxGrid1DBTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure ToolButton9Click(Sender: TObject);
    procedure cxGV2CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FOrderQryPropertiesEditValueChanged(Sender: TObject);
    procedure Act_AppExecute(Sender: TObject);
    procedure Act_EditExecute(Sender: TObject);
    procedure Act_DelExecute(Sender: TObject);
    procedure Act_AuditExecute(Sender: TObject);
    procedure Act_StatusExecute(Sender: TObject);
    procedure Act_SubmitExecute(Sender: TObject);
    procedure Act_CheckExecute(Sender: TObject);
    procedure Act_PushDownExecute(Sender: TObject);
    procedure cxGV_MCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure TB_Down2Click(Sender: TObject);
    procedure Act_SetOpenExecute(Sender: TObject);
    procedure Act_SetCloseExecute(Sender: TObject);
    procedure TB_SelClick(Sender: TObject);
    procedure SelPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure Act_Set_MaxNumExecute(Sender: TObject);
    procedure Act_Set_MaxIDExecute(Sender: TObject);
    procedure Act_Ref_DateExecute(Sender: TObject);
    procedure TB_PrintClick(Sender: TObject);
    procedure cxGVCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure Act_OutExecute(Sender: TObject);
    procedure Act_Ref_AgentExecute(Sender: TObject);
    procedure cxGV_M2CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure MyTreeView_WriteExpanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure MyTreeView_WriteChange(Sender: TObject; Node: TTreeNode);
    procedure Act_Ref_WriteExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure MDataBeforePost(DataSet: TDataSet);
    procedure Act_Ref_ItemExecute(Sender: TObject);
    procedure MyTreeView_ItemExpanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure MyTreeView_ItemChange(Sender: TObject; Node: TTreeNode);
    procedure Act_Ref_SysTemExecute(Sender: TObject);
    procedure MyTreeView_AgentExpanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure MyTreeView_AgentChange(Sender: TObject; Node: TTreeNode);
    procedure FDepartmentName_MPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FAgentName_MPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure TB_TotalClick(Sender: TObject);
    procedure Act_TotalExecute(Sender: TObject);
    procedure PC_TreeChange(Sender: TObject);
    procedure FWorkTraceDate_MPropertiesChange(Sender: TObject);

  private
    ListItemFNumber,P_th,P_List:String;
    P_i:boolean;
    P_MaxNum,P_MaxID,P_Isleaf:Integer;

    function AddMain:bool;
    function AddList:bool;
    function AddRd:bool;
    function EditRd:bool;
    function DelRd:bool;


  public
    { Public declarations }
  end;

var
  Frm_WorkTrace: TFrm_WorkTrace;
implementation

uses FRMDATA, COMMON, FrmSelect, ProgBar, PROGRASS;

{$R *.dfm}


function TFrm_WorkTrace.AddRd: bool;
var
  qry:TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  result:=False;

  If mData.RecordCount<=0 then
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

function TFrm_WorkTrace.EditRd:bool;
var
  qry:TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  result:=False;

  If mData.RecordCount<=0 then
  begin
    result:=True;
    Exit;
  end;

  mData.Edit;
  mData.Post;

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

function TFrm_WorkTrace.DelRd: bool;
var
 qry: TADOQuery;
 a:Integer;
begin
  a:=mdata_M['FWorkTraceID'];
  qry:=TADOQuery.Create(Self);
  qry.Connection:=mdlData.conn;
  try
    qry.SQL.Text:='Delete from T_WorkTrace where FWorkTraceID=:FWorkTraceID';
    with qry.Parameters do
    begin
      FindParam('FWorkTraceID').value:=a;
    end;
    result:=qry.ExecSQL>=1;
  finally
    qry.Free;
  end;
end;



function TFrm_WorkTrace.AddMain: bool;
var
 qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  Act_Set_MaxID.Execute;    //取ID
  Mdata_M.Edit;
  Mdata_M['FWorkTraceID']:=P_MaxID;;
  Mdata_M.post;

  try
    qry.SQL.Text:='Insert into T_WorkTrace(FDepartmentID,FAgentID,FWorkTraceID,FWorkTraceNo,FWorkTraceDate,FWorkTraceStarDate,FWorkTraceReMark,FWorkTraceWriteID,FWorkTraceWriteDate,FWorkTraceStatus) '
                 +'values(:FDepartmentID,:FAgentID,:FWorkTraceID,:FWorkTraceNo,:FWorkTraceDate,:FWorkTraceStarDate,:FWorkTraceReMark,:FWorkTraceWriteID,:FWorkTraceWriteDate,:FWorkTraceStatus)';
   with qry.Parameters do
   begin
     FindParam('FDepartmentID').value:=UserFDepartmentID;
    // FindParam('FDepartmentID').value:=mdata_M['FDepartmentID'];
     FindParam('FAgentID').value:=mdata_M['FAgentID'];
     FindParam('FWorkTraceID').value:=P_MaxID;
     FindParam('FWorkTraceNo').value:=mdata_M['FWorkTraceNo'];
     FindParam('FWorkTraceDate').value:=mdata_M['FWorkTraceDate'];
     FindParam('FWorkTraceStarDate').value:=mdata_M['FWorkTraceStarDate'];
     FindParam('FWorkTraceReMark').value:=mdata_M['FWorkTraceReMark'];
     FindParam('FWorkTraceWriteID').value:=UserNumID;
     FindParam('FWorkTraceWriteDate').value:=now();
     FindParam('FWorkTraceStatus').value:=0;
   end;
     result:=qry.ExecSQL>=1;
   finally
     qry.Free;
   end;

end;


function TFrm_WorkTrace.AddList: bool;
var
  qry,qry1: TADOQuery;
  i: integer;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.EnableBCD:=False;//小数位数>4
  qry.CommandTimeout:=500;
  result:=False;

  If mData.RecordCount<=0 then
  begin
    result:=True;
    Exit;
  end;

  try

    qry.SQL.Text:='Insert into T_WorkTraceList(FWorkTraceID,FWorkListID,FWorkTraceListNum,FWeekTracePercent,FWeekTotalTracePercent,FWorkTraceListReMark) '
                 +'values(:FWorkTraceID,:FWorkListID,:FWorkTraceListNum,:FWeekTracePercent,:FWeekTotalTracePercent,:FWorkTraceListReMark)';

    mData.First;
    i:=1;
    while not mData.eof do
    begin
      If (mData['FWorkListID']<>0) then
      begin
        If qry.Active then qry.Close;
        qry.Parameters.FindParam('FWorkTraceID').value:= P_MaxID;
        qry.Parameters.FindParam('FWorkListID').value:= mdata['FWorkListID'];
        qry.Parameters.FindParam('FWorkTraceListNum').value:=i;
        qry.Parameters.FindParam('FWeekTracePercent').value:=mdata['FWeekTracePercent'];
        qry.Parameters.FindParam('FWeekTotalTracePercent').value:=mdata['FWeekTotalTracePercent'];
        qry.Parameters.FindParam('FWorkTraceListReMark').value:=mdata['FWorkTraceListReMark'];
        result:=qry.ExecSQL>=1;
        if not result then break;
      end;
        mData.Next;
        i:=i+1;
     end;
   finally
     qry.Free;
   end;
end;


procedure TFrm_WorkTrace.FormResize(Sender: TObject);
begin
  inherited;
  TS_WorkItem.TabEnabled:=False;
  L_title.Caption:=UserFDepartmentName+'生产任务进度周报';
  Self.Caption:=UserFDepartmentName+'生产任务进度周报';
  
end;

procedure TFrm_WorkTrace.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=cafree;
  Frm_WorkTrace:=nil;
end;

procedure TFrm_WorkTrace.TB_EXIT1Click(Sender: TObject);
begin
  inherited;
  PC_1.ActivePage:=TS_WorkTrace;
  TS_WorkItem.TabEnabled:=False;
  TS_WorkTrace.TabEnabled:=True;
end;

procedure TFrm_WorkTrace.TB_DownClick(Sender: TObject);
Var i:Integer;
begin
  If P_i then
  begin
    TB_Down.Caption:='取消设置';
    cxGV.OptionsData.Editing:=False;
    cxGv.OptionsView.GroupByBox:=False;
    cxGV_M.OptionsData.Editing:=False;
    cxGv_M.OptionsView.GroupByBox:=False;

    for i:=0 to cxGv.ColumnCount-1 do
    begin
      cxGv.Columns[i].Options.Filtering:=False;
      cxGv.Columns[i].Options.Editing:=False;
      cxGv.Columns[i].Options.Sorting:=False;
    end;
    for i:=0 to cxGv_M.ColumnCount-1 do
    begin
      cxGv_M.Columns[i].Options.Filtering:=False;
      cxGv_M.Columns[i].Options.Editing:=False;
      cxGv_M.Columns[i].Options.Sorting:=False;
    end;

    Panel_down.Visible:=False;
    P_i:=False;
  end
  else
  begin
    TB_Down.Caption:='设置';
    cxGV.OptionsData.Editing:=True;
    cxGv.OptionsView.GroupByBox:=True;
    cxGV_M.OptionsData.Editing:=True;
    cxGv_M.OptionsView.GroupByBox:=True;

    for i:=0 to cxGv.ColumnCount-1 do
    begin
      cxGv.Columns[i].Options.Filtering:=True;
      cxGv.Columns[i].Options.Editing:=True;
      cxGv.Columns[i].Options.Sorting:=True;
    end;
    for i:=0 to cxGv_M.ColumnCount-1 do
    begin
      cxGv_M.Columns[i].Options.Filtering:=True;
      cxGv_M.Columns[i].Options.Editing:=True;
      cxGv_M.Columns[i].Options.Sorting:=True;
    end;
    Panel_down.Visible:=True;
    P_i:=True;
  end;
end;

procedure TFrm_WorkTrace.MyTreeView_WorkItemExpanding(Sender: TObject;
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

  qry.SQL.Text:='Select FNumber, FParentNumber,FName,'
               +'Isleaf from VT_BranchWorkList where FParentNumber= '''
               +PTree(Node.Data).ID+''' order by FNumber';
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
    P.Isleaf := qry.FieldByName('Isleaf').Value;

    P.Flag := cNoLoadFlag;                            // 新节点，未加载标志
    with MyTreeView_WorkItem.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('Isleaf').value;
    end;
    qry.Next;
  end;

end;

procedure TFrm_WorkTrace.MyTreeView_WorkItemChange(Sender: TObject;
  Node: TTreeNode);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If Node = nil then Exit;
  with PTree(Node.Data)^ do
  begin
    ListItemFNumber2:=trim(PTree(Node.Data).FNumber);
    P_th2:=PTree(Node.Data).Caption;
    P_Isleaf:=PTree(Node.Data).Isleaf;
    If PTree(Node.Data).Isleaf>0 then
    begin
       If MyItemList(qry,Mdata_M2,'V_WorkItem','FAgentName+'';''+FDepartmentName+'';''+cast(FWorkYear as varchar(4))+'';''+substring(FWorkItemNum,5,2)+'';''+FWorkItemNum+'';''',ListItemFNumber2,'FDepartmentName+'';''+FAgentName+'';''+cast(FWorkYear as varchar(4))+'';''+substring(FWorkItemNum,5,2)+'';''+FWorkItemNum+'';''') then
       If MyItemList(qry,Mdata2,'V_WorkList','FAgentName+'';''+FDepartmentName+'';''+cast(FWorkYear as varchar(4))+'';''+substring(FWorkItemNum,5,2)+'';''+FWorkItemNum+'';''',ListItemFNumber2,'FDepartmentName+'';''+FAgentName+'';''+cast(FWorkYear as varchar(4))+'';''+substring(FWorkItemNum,5,2)+'';''+FWorkItemNum+'';''') then
    end
    else
    begin
      Mdata_M2.Close;
      mdata2.Close;
    end;
  end;
end;

procedure TFrm_WorkTrace.TB_EXITClick(Sender: TObject);
begin
  inherited;
  self.Close;

end;

procedure TFrm_WorkTrace.OKBtnClick(Sender: TObject);
var qry: TADOQuery;

begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;

  mData.Edit;
  mData.Post;
//  If (Trim(mdata_M['FSupplierId'])='') or (Trim(mdata_M['FItem3003'])='') or (Trim(mdata_M['FPaymentMode'])='') then
 { If (Trim(mdata_M['FSupplierId'])='') or (Trim(mdata_M['FPaymentMode'])='') then
  begin
    application.MessageBox('关键字不能为空！请重新输入','系统提示',MB_ICONERROR);
    Exit;
  end;
      }
  mData.Edit;
  mData.Post;
  mData.First;
 { while not mData.eof do
  begin
    If (mData['FPlanTenderOrderID']=0)  then
    begin
      application.MessageBox('采购经理不能为空！请重新输入','系统提示',MB_ICONERROR);
      Exit;
    end;
    mData.Next;
  end;
     }

{  Act_Set_MaxID.Execute;    //取ID
  Mdata_M.Edit;
  Mdata_M['FPlanTenderID']:=P_MaxID;;
  Mdata_M.post;
 }
  Act_Total.Execute;  //累计进度
  Act_Set_MaxNum.Execute;//取ID
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

procedure TFrm_WorkTrace.CancelBtnClick(Sender: TObject);
begin
  inherited;
  Act_SetClose.Execute;
end;

procedure TFrm_WorkTrace.MyTreeView_DateExpanding(Sender: TObject;
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

  qry.SQL.Text:='Select FNumber, FParentNumber,FName,FNumber,'
               +'Isleaf from VT_WorkTrace where FParentNumber= '''
               +PTree(Node.Data).ID+''' and WorkFDepartmentID=:WorkFDepartmentID '
               +' order by FNumber';
  qry.Parameters.FindParam('WorkFDepartmentID').value:=UserFDepartmentID;
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
    with MyTreeView_Date.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('Isleaf').value;
    end;
    qry.Next;
  end;

end;

procedure TFrm_WorkTrace.MyTreeView_DateChange(Sender: TObject;
  Node: TTreeNode);
var
  qry,qry1:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  qry1:=TADOQuery.Create(self);
  qry1.Connection:=mdlData.conn;
  If Node = nil then Exit;
  with PTree(Node.Data)^ do
  begin
    ListItemFNumber:=trim(PTree(Node.Data).FNumber);
    P_Isleaf:=PTree(Node.Data).Isleaf;

    If P_Isleaf>=0 then
    begin
      try
        qry1.SQL.Text:='select * from V_WorkTrace where FWorkTraceID '
                     +' in (select distinct FWorkTraceID from V_WorkTraceList where WorkFDepartmentID=:WorkFDepartmentID '
                     +' and WorkFDepartmentName+'';''+cast(FWorkTraceStatus as varchar(8))+'';'''
                     +'+cast(year(FWorkTraceDate) as varchar(4))+'';''+cast(month(FWorkTraceDate) as varchar(2))+'';''+FDepartmentName+'';''+FDepartmentNum+FWorkTraceNum+'';'' like '''
                     +ListItemFNumber+'%'') ';
        qry1.Parameters.FindParam('WorkFDepartmentID').value:=UserFDepartmentID;
        qry1.OPen;
      finally
         ;
      end;
      If qry1.RecordCount>0 then
      begin
        Mdata_M.CopyFromDataSet(qry1);
        Mdata_M.Open;
      end
      else
        Mdata_M.Close;
       If MyItemList(qry,Mdata,'V_WorkTraceList','WorkFDepartmentName+'';''+cast(FWorkTraceStatus as varchar(2))+'';''+cast(year(FWorkTraceDate) as varchar(4))+'';''+cast(month(FWorkTraceDate) as varchar(2))+'';''+FDepartmentName+'';''+FDepartmentNum+FWorkTraceNum+'';''',ListItemFNumber,'FDepartmentNum,FWorkTraceNum') then
    end
    else
    begin
      Mdata_M.Close;
      mdata.Close;
    end;

 {   If P_Isleaf=1 then
    begin
       If MyItemList(qry,Mdata,'V_WorkTraceList','WorkItemFDepartmentName+'';''+cast(FAgentDepartmentID as varchar(10))+'';''+cast(FWorkTraceStatus as varchar(2))+'';''+cast(year(FWorkTraceDate) as varchar(4))+'';''+cast(month(FWorkTraceDate) as varchar(2))+'';''+FWorkTraceNum+'';''',ListItemFNumber,'FWorkTraceNum') then
    end
    else
    begin
      mdata.Close;
    end;
      }
  end;
  If (P_Isleaf=1) and (mdata_M.RecordCount>0) then
     Act_Status.Execute  //权限设置
  else
  begin
    TB_Edit.Visible:=False;
    TB_Del.Visible:=False;
    TB_Submit.Visible:=False;
    N_Submit.Visible:=False;
    TB_Check.Visible:=False;
    N_Check.Visible:=False;
    TB_Audit.Visible:=False;
    N_Audit.Visible:=False;
    TB_PushDown.Visible:=False;
    N_PushDown.Visible:=False;
  end;
end;

procedure TFrm_WorkTrace.TB_EditClick(Sender: TObject);
begin
  inherited;
  P_state :=1;
  If (mdata.RecordCount<1) then
    Exit;
  cxGV.DataController.DataSource:=DS_Mdata;
  cxGvColumn(cxGv,Mdata);
    Act_SetOpen.Execute;


end;

procedure TFrm_WorkTrace.cxGrid1DBTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
var
  ADisplayStyle :TcxStyle;
begin
  ADisplayStyle :=TcxStyle.Create(Self);
  try
    if ARecord.Values[1]=320000 then
    begin
      ADisplayStyle.Color :=clYellow;
      //ADisplayStyle.Font.Color :=clBlack;
      //ADisplayStyle.Font.Color :=clYellow;
      AStyle :=ADisplayStyle;
    end ;
  finally
    ADisplayStyle.Free;
  end;


end;

procedure TFrm_WorkTrace.ToolButton9Click(Sender: TObject);
var  i,j,n: integer;
     Insertbz:boolean;
begin
  inherited;
  mData.Open;
  mData.Edit;
  mdata.Post;
  mdata.First;
  for i:=0 to cxGV2.DataController.Controller.SelectedRecordCount-1 do
  begin
    Insertbz:=false;
    j:=cxGV2.DataController.GetSelectedRowIndex(i);
    while not mdata.eof  do
    begin
      If mdata['FWorkListID']<>cxGV2.DataController.GetValue(J,0) then
      begin
         mdata.Next;
      end
      else
      begin
        application.MessageBox('记录重复选！请重新选择','系统提示',MB_ICONERROR);
        Exit;
      end;
    end
  end;
  mdata.First;
  for i:=0 to cxGV2.DataController.Controller.SelectedRecordCount-1 do
  begin
    Insertbz:=false;
    j:=cxGV2.DataController.GetSelectedRowIndex(i);
    while not mdata.eof  do
    begin
      if mdata['FWorkListID']>0 then
          mdata.next
      else
      Begin
          mdata.Edit;
          mdata['FWorkListID']:=cxGV2.DataController.GetValue(J,0);
          mdata['FWorkItemNum']:=cxGV2.DataController.GetValue(J,1);
          mdata['FBalanceName']:=cxGV2.DataController.GetValue(J,3);
          mdata['FBalanceModel']:=cxGV2.DataController.GetValue(J,4);
          mdata['FUnitName']:=cxGV2.DataController.GetValue(J,5);
         // mdata['FQry']:=cxGV2.DataController.GetValue(J,6);
          mdata['FEstimateQry']:=cxGV2.DataController.GetValue(J,7);
          mdata['FWeekTraceQry']:=99;
          mdata['FWeekTracePercent']:=20;
          mdata.Post;
          mdata.next;
          Insertbz:=True;
      end;
      if Insertbz then break;
    end;
    while mdata.eof do
    begin
      if mdata['FWorkListID']>0 then
      begin
        if (mdata['FWorkListID']<>cxGV2.DataController.GetValue(J,0)) then
        begin
          mdata.Append;
          mdata.Edit;
          mdata['FWorkListID']:=cxGV2.DataController.GetValue(J,0);
          mdata['FWorkItemNum']:=cxGV2.DataController.GetValue(J,1);
          mdata['FBalanceName']:=cxGV2.DataController.GetValue(J,3);
          mdata['FBalanceModel']:=cxGV2.DataController.GetValue(J,4);
          mdata['FUnitName']:=cxGV2.DataController.GetValue(J,5);
         // mdata['FQry']:=cxGV2.DataController.GetValue(J,6);
          mdata['FEstimateQry']:=cxGV2.DataController.GetValue(J,7);
          mdata['FWeekTraceQry']:=99;
          mdata['FWeekTracePercent']:=20;
          mdata.Post;
        end;
      end;
      mdata.Next;
      break;
    end;
  end;
  PC_1.ActivePage:=TS_WorkItem;
  TS_WorkTrace.TabEnabled:=True;
  TS_WorkItem.TabEnabled:=False;

end;

procedure TFrm_WorkTrace.cxGV2CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  {
  if cxGV2.Controller.FocusedRowIndex=AViewInfo.RecordViewInfo.Index  then  //是否是选中行
     ACanvas.Canvas.Font.Color:=clHotLight
  else
  if StrToFloat(AViewInfo.GridRecord.DisplayTexts[FTakeQry_2.Index])=StrToFloat(AViewInfo.GridRecord.DisplayTexts[FPlanTenderQry_2.Index]) then    //设置行颜色
  begin
    ACanvas.Canvas.brush.Color := clInactiveCaptionText;
    ACanvas.FillRect(AViewInfo.Bounds);
  end;
   }
end;

procedure TFrm_WorkTrace.FormCreate(Sender: TObject);
begin
  inherited;
  Act_App.Visible:= mdlData.CheckFrmRights(TFrm_WorkTrace.ClassName,'新增');
  N_App.Visible:= mdlData.CheckFrmRights(TFrm_WorkTrace.ClassName,'新增');
  TB_Out.Visible:= mdlData.CheckFrmRights(TFrm_WorkTrace.ClassName,'导出');
  N_Out.Visible:= mdlData.CheckFrmRights(TFrm_WorkTrace.ClassName,'导出');
  TB_Print.Visible:= mdlData.CheckFrmRights(TFrm_WorkTrace.ClassName,'打印');
  N_Print.Visible:= mdlData.CheckFrmRights(TFrm_WorkTrace.ClassName,'打印');

  If UserFAgentID<>0 then
  begin
    TS_Date.TabVisible:=False;
    TS_Item.TabVisible:=False;
    TS_SysTem.TabVisible:=True;
    TS_write.TabVisible:=True;
  end
  else
  begin
    TS_Date.TabVisible:=True;
    TS_Item.TabVisible:=True;
    TS_SysTem.TabVisible:=True;
    TS_write.TabVisible:=True;
  end;
end;

procedure TFrm_WorkTrace.FOrderQryPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  mdata.Edit;
end;

procedure TFrm_WorkTrace.Act_AppExecute(Sender: TObject);
var
 i:Integer;
 qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  L_title.Caption:='生产任务周报信息新增';
  Act_SetOpen.Execute;

  P_state :=0;     //新增

  PageControl2.Visible:=True;

  If mData_M.RecordCount>0 then
  begin
    try
      qry.SQL.Text:='Select * from V_WorkTrace where FWorkTraceID=:FWorkTraceID';
      qry.Parameters.FindParam('FWorkTraceID').value:= mdata_M['FWorkTraceID'];
      qry.Open;
    finally
      ;
    end;
    mData_M.CopyFromDataSet(qry);
  end
  else
  begin
    try
      qry.SQL.Text:='Select * from V_WorkTraceList where FWorkTraceID=:FWorkTraceID';
      qry.Parameters.FindParam('FWorkTraceID').value:= 0;
      qry.Open;
    finally
      ;
    end;
    mData_M.CopyFromDataSet(qry);
    mData_M.Open;
    mData_M.Edit;
    mData_M.Append;
    mData.CopyFromDataSet(qry);
  end;
  mData_M.Open;
  mData_M.Edit;
  mData_M['FWorkTraceDate']:=date();
  mData_M['FWorkTraceStarDate']:=date()-7;
  If UserFAgentID=0 then
  begin
    mdata_M['FDepartmentNum']:=UserFDepartmentNum;
    mdata_M['FDepartmentName']:=UserFDepartmentName;
    mdata_M['FDepartmentID']:=UserFDepartmentID;
    FDepartmentName_M.Options.Editing:=False;
    mdata_M['FAgentName']:='';
    mdata_M['FAgentID']:=0;
  end
  else
  begin
    FDepartmentName_M.Options.Editing:=True;
    mdata_M['FDepartmentNum']:=UserFDepartmentNum;
    mdata_M['FDepartmentName']:='';
    mdata_M['FDepartmentID']:=0;
    mdata_M['FAgentName']:=UserFDepartmentName;
    FAgentName_M.Options.Editing:=False;
    mdata_M['FAgentID']:=0;
  end;
  mData_M.Post;

  Act_Set_MaxNum.Execute;    //取单号

  mData_M.Edit;
  Mdata_M['FWorkTraceNo']:=P_MaxNum;
  Mdata_M['FWorkTraceID']:=0;
  Mdata_M['FWorkTraceNum']:=ForMatDateTime('yyyymm',(date()))+Format('%.4d',[(P_MaxNum)]);
  mdata_M['FWorkTraceStatus']:=0;
  mData_M['FWorkTraceStatusNotes']:='填单';
  mData_M['FWorkTraceDate']:=date();
  mData_M['FWorkTraceWrite']:=UserNum;
  mData_M['FWorkTraceWriteDate']:=date();
  mData_M['FWorkTraceStarDate']:=date()-7;
  mData_M.Post;

   //明细表
  If mData.Active then mData.Close;
  mData.Open;
  mData.Edit;
  for i:=1 to 2 do
  begin
    mData.Append;
    Mdata['FWorkTraceNum']:=ForMatDateTime('yyyymm',(date()))+Format('%.4d',[(P_MaxNum)]);
    mdata['FWorkListID']:=0;
    mdata['FWorkTraceListID']:=0;
    mdata['FEstimateQry']:=0;
    mdata['FWeekTraceQry']:=0;
    mdata['FWeekTracePercent']:=0;
    mdata['FWeekTotalTracePercent']:=0;
    mdata['FWeekTotalTraceQry']:=0;
    mdata['FToTalTracePercent']:=0;
    mdata['FToTalTraceQry']:=0;
    mData.Post;
    mData.First;
  end;


 //TBar_Sel.Visible:=True;

end;

procedure TFrm_WorkTrace.Act_EditExecute(Sender: TObject);
var
 qry:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  P_state :=1;
  If (mdata.RecordCount<1) then
    Exit;
  Act_SetOpen.Execute;

end;

procedure TFrm_WorkTrace.Act_DelExecute(Sender: TObject);
var
  qry:TADOQuery;
begin
  qry:=TAdoQuery.Create(self);
  qry.Connection:=mdlData.conn;
  P_List :=mdata_M['FWorkTraceNum'];

  If (mdata_M.RecordCount<1) then
     Exit;

  If application.MessageBox(Pchar('警告：是否删除任务跟踪号为：【'+P_List+'】的数据？'+chr(13)+chr(13)
                           +'删除数据操作将不可恢复，确定要删除本单据吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
  If application.MessageBox(Pchar('警告：是否删除任务跟踪号为：【'+P_List+'】的数据？'+chr(13)+chr(13)
                           +'删除数据操作将不可恢复，确定要删除本单据吗？'),'再次警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then

  begin
    //单据删除
    If not DelRd then
    begin
      application.MessageBox('删除单据失败！','系统提示',MB_ICONINFORMATION);
      mdlData.conn.RollbackTrans;
      Exit;
    end;
    mdata_M.Edit;
    mdata_M.Delete;
  end;
  mdata.Close;
  qry.Free;
end;

procedure TFrm_WorkTrace.Act_AuditExecute(Sender: TObject);
var
 qry:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  P_List :=mdata_M['FWorkTraceNum'];
  If (TB_Audit.Caption='审核') or (N_Audit.Caption='审核') then
  begin
    If application.MessageBox(Pchar('警告：是否审核招标申请单号为：【'+P_List+'】的单据？'+chr(13)+chr(13)
                                   +'审核后的数据不允许修改和删除，确定要审核本单据吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      try
        qry.SQL.Text:='Update T_WorkTrace Set FWorkTraceStatus=3,FWorkTraceAuditID=:FWorkTraceAuditID,FWorkTraceAuditDate=:FWorkTraceAuditDate  where FWorkTraceID=:FWorkTraceID';
        qry.Parameters.FindParam('FWorkTraceAuditID').value:= UserNumID;
        qry.Parameters.FindParam('FWorkTraceAuditDate').value:= now();
        qry.Parameters.FindParam('FWorkTraceID').value:=mdata_M['FWorkTraceID'];
        qry.ExecSQL;
      finally
         ;
      end;
      mdata_M.Edit;
      mdata_M['FWorkTraceStatus']:=3;
      mdata_M['FWorkTraceStatusNotes']:='审核';
      mdata_M['FWorkTraceAuditID']:=UserNumID;
      mdata_M['FWorkTraceAudit']:=UserNum;
      mdata_M['FWorkTraceAuditDate']:=now();
      mdata_M.Post;
      TB_Audit.Caption:='反审核';
      Act_Status.Execute;  //权限设置
      application.MessageBox('审核完毕！','系统提示',MB_ICONINFORMATION);
    end;
    Exit;
  end;
  If (TB_Audit.Caption='反审核') or (N_Audit.Caption='反审核') then
  begin
    If application.MessageBox(Pchar('警告：是否反审核招标申请单号为：【'+P_List+'】的单据？'+chr(13)+chr(13)
                                   +'反审核后的数据不允许修改和删除，确定要反审核本单据吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      try
        qry.SQL.Text:='Update T_WorkTrace Set FWorkTraceStatus=2,FWorkTraceAuditID=:FWorkTraceAuditID,FWorkTraceAuditDate=:FWorkTraceAuditDate  where FWorkTraceID=:FWorkTraceID';
        qry.Parameters.FindParam('FWorkTraceAuditID').value:= UserNumID;
        qry.Parameters.FindParam('FWorkTraceAuditDate').value:= '1900-01-01';
        qry.Parameters.FindParam('FWorkTraceID').value:= mdata_M['FWorkTraceID'];
        qry.ExecSQL;
      finally
         ;
      end;
      mdata_M.Edit;
      mdata_M['FWorkTraceStatus']:=2;
      mdata_M['FWorkTraceStatusNotes']:='校对';
      mdata_M['FWorkTraceAuditID']:=UserNumID;
      mdata_M['FWorkTraceAudit']:='';
      mdata_M['FWorkTraceAuditDate']:='1900-01-01';
      mdata_M.Post;
      TB_Audit.Caption:='审核';
      Act_Status.Execute;  //权限设置
      application.MessageBox('反审核完毕！','系统提示',MB_ICONINFORMATION);
    end;
    Exit;
  end;
  Act_Ref_Write.Execute;
  Act_Ref_Date.Execute;
end;

procedure TFrm_WorkTrace.Act_StatusExecute(Sender: TObject);
begin
  Case mdata_M['FWorkTraceStatus'] of
    0:       //填单
    begin
      If mdata_M['FWorkTraceWriteID']=UserNumID then  //操作者为本人
      begin
        TB_Del.Visible:=mdlData.CheckFrmRights(TFrm_WorkTrace.ClassName,'删除');
        N_Del.Visible:=mdlData.CheckFrmRights(TFrm_WorkTrace.ClassName,'删除');
        TB_Edit.Visible:=mdlData.CheckFrmRights(TFrm_WorkTrace.ClassName,'修改');
        N_Edit.Visible:=mdlData.CheckFrmRights(TFrm_WorkTrace.ClassName,'修改');
        TB_Submit.Visible:=mdlData.CheckFrmRights(TFrm_WorkTrace.ClassName,'提交');
        N_Submit.Visible:=mdlData.CheckFrmRights(TFrm_WorkTrace.ClassName,'提交');
        TB_Submit.Caption:='提交';
        N_Submit.Caption:='提交';
      end
      else
      begin
        TB_Del.Visible:=False;
        N_Del.Visible:=False;
        TB_Edit.Visible:=False;
        N_Edit.Visible:=False;
        TB_Submit.Visible:=False;
        N_Submit.Visible:=False;
      end;
      TB_Check.Visible:=False;
      N_Check.Visible:=False;
      TB_Audit.Visible:=False;
      N_Audit.Visible:=False;
      TB_PushDown.Visible:=False;
      N_PushDown.Visible:=False;
    end;
  end;
  Case mdata_M['FWorkTraceStatus'] of
    1:       //提交
    begin
      If mdata_M['FWorkTraceWriteID']=UserNumID then  //提交者为本人
      begin
        TB_Submit.Visible:=mdlData.CheckFrmRights(TFrm_WorkTrace.ClassName,'提交');
        N_Submit.Visible:=mdlData.CheckFrmRights(TFrm_WorkTrace.ClassName,'提交');
        TB_Submit.Caption:='反提交';
        N_Submit.Caption:='反提交';
      end
      else
      begin
        TB_Submit.Visible:=False;
        N_Submit.Visible:=False;
      end;
      TB_Del.Visible:=False;
      N_Del.Visible:=False;
      TB_Edit.Visible:=False;
      N_Edit.Visible:=False;
      TB_Check.Visible:=mdlData.CheckFrmRights(TFrm_WorkTrace.ClassName,'校对');
      N_Check.Visible:=mdlData.CheckFrmRights(TFrm_WorkTrace.ClassName,'校对');
      TB_Check.Caption:='校对';
      N_Check.Caption:='校对';
      TB_Audit.Visible:=False;
      N_Audit.Visible:=False;
      TB_PushDown.Visible:=False;
      N_PushDown.Visible:=False;
    end;
  end;

  Case mdata_M['FWorkTraceStatus'] of
    2:           //校对
    begin
      TB_Check.Visible:=mdlData.CheckFrmRights(TFrm_WorkTrace.ClassName,'校对');
      N_Check.Visible:=mdlData.CheckFrmRights(TFrm_WorkTrace.ClassName,'校对');
      TB_Check.Caption:='反校对';
      N_Check.Caption:='反校对';
      TB_Del.Visible:=False;
      N_Del.Visible:=False;
      TB_Edit.Visible:=False;
      N_Edit.Visible:=False;
      TB_Submit.Visible:=False;
      N_Submit.Visible:=False;
      TB_Audit.Visible:=mdlData.CheckFrmRights(TFrm_WorkTrace.ClassName,'审核');
      N_Audit.Visible:=mdlData.CheckFrmRights(TFrm_WorkTrace.ClassName,'审核');
      TB_Audit.Caption:='审核';
      N_Audit.Caption:='审核';
      TB_PushDown.Visible:=False;
      N_PushDown.Visible:=False;
    end;
  end;
  Case mdata_M['FWorkTraceStatus'] of
    3:           //审核
    begin
      TB_Audit.Visible:=mdlData.CheckFrmRights(TFrm_WorkTrace.ClassName,'审核');
      N_Audit.Visible:=mdlData.CheckFrmRights(TFrm_WorkTrace.ClassName,'审核');
      TB_Audit.Caption:='反审核';
      N_Audit.Caption:='反审核';
      TB_Del.Visible:=False;
      N_Del.Visible:=False;
      TB_Edit.Visible:=False;
      N_Edit.Visible:=False;
      TB_Submit.Visible:=False;
      N_Submit.Visible:=False;
      TB_Check.Visible:=False;
      N_Check.Visible:=False;
      TB_PushDown.Visible:=mdlData.CheckFrmRights(TFrm_WorkTrace.ClassName,'下推');
      N_PushDown.Visible:=mdlData.CheckFrmRights(TFrm_WorkTrace.ClassName,'下推');
      TB_PushDown.Caption:='下推';
      N_PushDown.Caption:='下推';
    end;
  end;
  Case mdata_M['FWorkTraceStatus'] of
    4:        //下推
    begin
      TB_Del.Visible:=False;
      N_Del.Visible:=False;
      TB_Edit.Visible:=False;
      N_Edit.Visible:=False;
      TB_Submit.Visible:=False;
      N_Submit.Visible:=False;
      TB_Check.Visible:=False;
      N_Check.Visible:=False;
      TB_Audit.Visible:=False;
      N_Audit.Visible:=False;
      TB_PushDown.Visible:=mdlData.CheckFrmRights(TFrm_WorkTrace.ClassName,'下推');
      N_PushDown.Visible:=mdlData.CheckFrmRights(TFrm_WorkTrace.ClassName,'下推');
      TB_PushDown.Caption:='反下推';
      N_PushDown.Caption:='反下推';
    end;
  end;
end;

procedure TFrm_WorkTrace.Act_SubmitExecute(Sender: TObject);
var
 qry:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  P_List :=mdata_M['FWorkTraceNum'];
  If (TB_Submit.Caption='提交') or (N_Submit.Caption='提交') then
  begin
    If application.MessageBox(Pchar('警告：是否提交招标申请单号为：【'+P_List+'】的单据？'+chr(13)+chr(13)
                                   +'提交后的数据不允许修改和删除，确定要提交本单据吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      try
        qry.SQL.Text:='Update T_WorkTrace Set FWorkTraceStatus=1,FWorkTraceSubmitDate=:FWorkTraceSubmitDate  where FWorkTraceID=:FWorkTraceID';
        qry.Parameters.FindParam('FWorkTraceSubmitDate').value:= now();
        qry.Parameters.FindParam('FWorkTraceID').value:=mdata_M['FWorkTraceID'];
        qry.ExecSQL;
      finally
         ;
      end;
      mdata_M.Edit;
      mdata_M['FWorkTraceStatus']:=1;
      mdata_M['FWorkTraceStatusNotes']:='提交';
      mdata_M['FWorkTraceSubmitDate']:=now();
      mdata_M.Post;
      TB_Submit.Caption:='反提交';
      Act_Status.Execute;  //权限设置
      application.MessageBox('提交完毕！','系统提示',MB_ICONINFORMATION);    end;
    Exit;
  end;
  If (TB_Submit.Caption='反提交') or (N_Submit.Caption='反提交') then
  begin
    If application.MessageBox(Pchar('警告：是否反提交招标申请单号为：【'+P_List+'】的单据？'+chr(13)+chr(13)
                                   +'反提交后的数据不允许修改和删除，确定要反提交本单据吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      try
        qry.SQL.Text:='Update T_WorkTrace Set FWorkTraceStatus=0,FWorkTraceSubmitDate=:FWorkTraceSubmitDate  where FWorkTraceID=:FWorkTraceID';
        qry.Parameters.FindParam('FWorkTraceSubmitDate').value:= '1900-01-01';
        qry.Parameters.FindParam('FWorkTraceID').value:= mdata_M['FWorkTraceID'];
        qry.ExecSQL;
      finally
         ;
      end;
      mdata_M.Edit;
      mdata_M['FWorkTraceStatus']:=0;
      mdata_M['FWorkTraceStatusNotes']:='填单';
      mdata_M['FWorkTraceSubmitDate']:='1900-01-01';
      mdata_M.Post;
      TB_Submit.Caption:='提交';
      Act_Status.Execute;  //权限设置
      application.MessageBox('反提交完毕！','系统提示',MB_ICONINFORMATION);
    end;
    Exit;
  end;
  Act_Ref_Date.Execute;
  Act_Ref_Write.Execute;

end;

procedure TFrm_WorkTrace.Act_CheckExecute(Sender: TObject);
var
 qry:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  P_List :=mdata_M['FWorkTraceNum'];
  If (TB_Check.Caption='校对') or (N_Check.Caption='校对') then
  begin
    If application.MessageBox(Pchar('警告：是否校对招标申请单号为：【'+P_List+'】的单据？'+chr(13)+chr(13)
                                   +'校对后的数据不允许修改和删除，确定要校对本单据吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      try
        qry.SQL.Text:='Update T_WorkTrace Set FWorkTraceStatus=2,FWorkTraceCheckID=:FWorkTraceCheckID,FWorkTraceCheckDate=:FWorkTraceCheckDate  where FWorkTraceID=:FWorkTraceID';
        qry.Parameters.FindParam('FWorkTraceCheckID').value:= UserNumID;
        qry.Parameters.FindParam('FWorkTraceCheckDate').value:= now();
        qry.Parameters.FindParam('FWorkTraceID').value:=mdata_M['FWorkTraceID'];
        qry.ExecSQL;
      finally
         ;
      end;
      mdata_M.Edit;
      mdata_M['FWorkTraceStatus']:=2;
      mdata_M['FWorkTraceStatusNotes']:='校对';
      mdata_M['FWorkTraceCheckID']:=UserNumID;
      mdata_M['FWorkTraceCheck']:=UserNum;
      mdata_M['FWorkTraceCheckDate']:=now();
      mdata_M.Post;
      TB_Check.Caption:='反校对';
      Act_Status.Execute;  //权限设置
      application.MessageBox('校对完毕！','系统提示',MB_ICONINFORMATION);
    end;
    Exit;
  end;
  If (TB_Check.Caption='反校对') or (N_Check.Caption='反校对') then
  begin
    If application.MessageBox(Pchar('警告：是否反校对招标申请单号为：【'+P_List+'】的单据？'+chr(13)+chr(13)
                                   +'反校对后的数据不允许修改和删除，确定要反校对本单据吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      try
        qry.SQL.Text:='Update T_WorkTrace Set FWorkTraceStatus=1,FWorkTraceCheckID=:FWorkTraceCheckID,FWorkTraceCheckDate=:FWorkTraceCheckDate  where FWorkTraceID=:FWorkTraceID';
        qry.Parameters.FindParam('FWorkTraceCheckID').value:= UserNumID;
        qry.Parameters.FindParam('FWorkTraceCheckDate').value:= '1900-01-01';
        qry.Parameters.FindParam('FWorkTraceID').value:= mdata_M['FWorkTraceID'];
        qry.ExecSQL;
      finally
         ;
      end;
      mdata_M.Edit;
      mdata_M['FWorkTraceStatus']:=1;
      mdata_M['FWorkTraceStatusNotes']:='提交';
      mdata_M['FWorkTraceCheckID']:=UserNumID;
      mdata_M['FWorkTraceCheck']:='';
      mdata_M['FWorkTraceCheckDate']:='1900-01-01';
      mdata_M.Post;
      TB_Check.Caption:='校对';
      Act_Status.Execute;  //权限设置
      application.MessageBox('反校对完毕！','系统提示',MB_ICONINFORMATION);
    end;
    Exit;
  end;

  Act_Ref_Date.Execute;
  Act_Ref_Write.Execute;


end;

procedure TFrm_WorkTrace.Act_PushDownExecute(Sender: TObject);
var
 qry:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  P_List :=mdata_M['FWorkTraceNum'];
  If (TB_PushDown.Caption='下推') or (N_PushDown.Caption='下推') then
  begin
    If application.MessageBox(Pchar('警告：是否下推招标申请单号为：【'+P_List+'】的单据？'+chr(13)+chr(13)
                                   +'下推后的数据不允许修改和删除，确定要下推本单据吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      try
        qry.SQL.Text:='Update T_WorkTrace Set FWorkTraceStatus=4,FWorkTracePushDownID=:FWorkTracePushDownID,FWorkTracePushDownDate=:FWorkTracePushDownDate  where FWorkTraceID=:FWorkTraceID';
        qry.Parameters.FindParam('FWorkTracePushDownID').value:= UserNumID;
        qry.Parameters.FindParam('FWorkTracePushDownDate').value:= now();
        qry.Parameters.FindParam('FWorkTraceID').value:=mdata_M['FWorkTraceID'];
        qry.ExecSQL;
      finally
         ;
      end;
      mdata_M.Edit;
      mdata_M['FWorkTraceStatus']:=4;
      mdata_M['FWorkTraceStatusNotes']:='下推';
      mdata_M['FWorkTracePushDownID']:=UserNumID;
      mdata_M['FWorkTracePushDown']:=UserNum;
      mdata_M['FWorkTracePushDownDate']:=now();
      mdata_M.Post;
      TB_PushDown.Caption:='反下推';
      Act_Status.Execute;  //权限设置
      application.MessageBox('下推完毕！','系统提示',MB_ICONINFORMATION);
    end;
    Exit;
  end;
  If (TB_PushDown.Caption='反下推') or (N_PushDown.Caption='反下推') then
  begin
    If application.MessageBox(Pchar('警告：是否反下推招标申请单号为：【'+P_List+'】的单据？'+chr(13)+chr(13)
                                   +'反下推后的数据不允许修改和删除，确定要反下推本单据吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      try
        qry.SQL.Text:='Update T_WorkTrace Set FWorkTraceStatus=3,FWorkTracePushDownID=:FWorkTracePushDownID,FWorkTracePushDownDate=:FWorkTracePushDownDate  where FWorkTraceID=:FWorkTraceID';
        qry.Parameters.FindParam('FWorkTracePushDownID').value:= UserNumID;
        qry.Parameters.FindParam('FWorkTracePushDownDate').value:='1900-01-01';
        qry.Parameters.FindParam('FWorkTraceID').value:= mdata_M['FWorkTraceID'];
        qry.ExecSQL;
      finally
         ;
      end;
      mdata_M.Edit;
      mdata_M['FWorkTraceStatus']:=3;
      mdata_M['FWorkTraceStatusNotes']:='审核';
      mdata_M['FWorkTracePushDownID']:=UserNumID;
      mdata_M['FWorkTracePushDown']:='';
      mdata_M['FWorkTracePushDownDate']:='1900-01-01';
      mdata_M.Post;
      TB_PushDown.Caption:='下推';
      Act_Status.Execute;  //权限设置
      application.MessageBox('反下推完毕！','系统提示',MB_ICONINFORMATION);
    end;
    Exit;
  end;
  Act_Ref_Date.Execute;
  Act_Ref_Write.Execute;

end;

procedure TFrm_WorkTrace.cxGV_MCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If mData_M['FWorkTraceID']<>0 then
  begin
    If MyItemList(qry,Mdata,'V_WorkTraceList','cast(FWorkTraceID as varchar(20))',
                  Mdata_M['FWorkTraceID'],'FWorkTraceNum') then

     Act_Status.Execute  //权限设置
  end;
  
end;

procedure TFrm_WorkTrace.TB_Down2Click(Sender: TObject);
Var i:Integer;
begin
  If P_i then
  begin
    TB_Down2.Caption:='取消设置';
    cxGV2.OptionsData.Editing:=False;
    cxGv2.OptionsView.GroupByBox:=False;

    for i:=0 to cxGv2.ColumnCount-1 do
    begin
      cxGv2.Columns[i].Options.Filtering:=False;
      cxGv2.Columns[i].Options.Editing:=False;
      cxGv2.Columns[i].Options.Sorting:=False;
    end;

    Panel_down.Visible:=False;
    P_i:=False;
  end
  else
  begin
    TB_Down.Caption:='设置';
     cxGV2.OptionsData.Editing:=True;
    cxGv2.OptionsView.GroupByBox:=True;

    for i:=0 to cxGv2.ColumnCount-1 do
    begin
      cxGv2.Columns[i].Options.Filtering:=True;
      cxGv2.Columns[i].Options.Editing:=True;
      cxGv2.Columns[i].Options.Sorting:=True;
    end;
    Panel_down.Visible:=True;
    P_i:=True;
  end;

end;

procedure TFrm_WorkTrace.Act_SetOpenExecute(Sender: TObject);
begin
  inherited;
  TB_Ref_Date.Visible:=False;
  TB_Ref_Write.Visible:=False;

  TB_App.Visible:=False;
  TB_Edit.Visible:=False;
  TB_Del.Visible:=False;
  TB_Submit.Visible:=False;
  TB_Sel.Enabled:=True;
  TB_Total.Enabled:=True;

  MyTreeView_Date.Enabled:=False;
  MyTreeView_Write.Enabled:=False;

  OKBtn.Visible:=True;
  CancelBtn.Visible:=True;
  cxGV.OptionsData.Editing:=True;
  cxGV_M.OptionsData.Editing:=True;

  FDepartmentName_M.Options.Editing:=True;
  FAgentName_M.Options.Editing:=True;
  FWorkTraceNum_M.Options.Editing:=True;
  FWorkTraceDate_M.Options.Editing:=True;
  FWorkTraceReMark_M.Options.Editing:=True;

  FWorkTraceListReMark.Options.Editing:=True;
  FWeekTraceQry.Options.Editing:=True;
  FWeekTracePercent.Options.Editing:=True;

end;

procedure TFrm_WorkTrace.Act_SetCloseExecute(Sender: TObject);
begin
  inherited;
  TB_Ref_Date.Visible:=True;
  TB_Ref_Write.Visible:=True;
  TB_App.Visible:=True;
  TB_Edit.Visible:=False;
  TB_Del.Visible:=False;
  TB_Submit.Visible:=False;
  TB_Sel.Enabled:=False;
  TB_Total.Enabled:=False;

  OKBtn.Visible:=False;
  CancelBtn.Visible:=False;

  cxGV.OptionsData.Editing:=False;
  cxGV_M.OptionsData.Editing:=False;
  MyTreeView_Date.Enabled:=True;
  MyTreeView_Write.Enabled:=True;

end;

procedure TFrm_WorkTrace.TB_SelClick(Sender: TObject);
var   qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  mdata_M.Edit;
  mdata_M.Post;
  If mdata_M['FDepartmentID']=0  then
  begin
    application.MessageBox('任务部门不能为空！请重新输入','系统提示',MB_ICONERROR);
    Exit;
  end;
  If mdata_M['FAgentID']=0 then
  begin
    application.MessageBox('外协单位不能为空！请重新输入','系统提示',MB_ICONERROR);
    Exit;
  end;
  try
    qry.SQL.Text:='update T_WorkList set FTotalTracePercent=b.FTotalTracePercent from T_WorkList as a '
                 +' left outer join '
                 +'(select FDepartmentID,FAgentID,FWorkListId,sum(isnull(FWeekTracePercent,0)) as FTotalTracePercent '
                 +' from  T_WorkTraceList as b1 left outer join T_WorkTrace as b2 on b1.FWorkTraceID=b2.FWorkTraceID '
                 +' group by FDepartmentID,FAgentID,FWorkListId) as b on a.FWorkListId=b.FWorkListId ';
    qry.ExecSQL;
  finally
     ;
  end;

  mdata_M.Edit;
  mdata_M.Post;
  If UserFAgentID=0 then
  begin
    try
      qry.SQL.Text:='Select ''         '' as FWorkTraceNum,0 as FWorkTraceListID,0.0000 as FWeekTraceQry,'
                   +'(100-isnull(FTotalTracePercent,0) ) as FWeekTracePercent,'
                   +'0 as FWeekTotalTracePercent,0 as FWeekTotalTraceQry,'
                   +'isnull(FTotalTraceQry,0) as FTotalTraceQry,isnull(FTotalTracePercent,0) as FTotalTracePercent,'
                   +'''    '' as FWorkTraceListReMark,* from V_WorkList where FDepartmentID=:FDepartmentID and FAgentID=:FAgentID '
                   +' and FWorkWriteID=:FWorkWriteID and FProductClass=''主产品'' and FWorkStatus>=3 ';
      qry.Parameters.FindParam('FDepartmentID').value:=mdata_M['FDepartmentID'];
      qry.Parameters.FindParam('FAgentID').value:=mdata_M['FAgentID'];
      qry.Parameters.FindParam('FWorkWriteID').value:=UserNumID;
      qry.Open;
    finally
       ;
    end;
  end;
  If UserFAgentID<>0 then
  begin
    try
      qry.SQL.Text:='Select ''         '' as FWorkTraceNum,0 as FWorkTraceListID,0.0000 as FWeekTraceQry,'
                   +'(100-isnull(FTotalTracePercent,0) ) as FWeekTracePercent,'
                   +'0 as FWeekTotalTracePercent,0 as FWeekTotalTraceQry,'
                   +'isnull(FTotalTraceQry,0) as FTotalTraceQry,isnull(FTotalTracePercent,0) as FTotalTracePercent,'
                   +'''    '' as FWorkTraceListReMark,* from V_WorkList where FDepartmentID=:FDepartmentID and FAgentID=:FAgentID '
                   +' and FProductClass=''主产品'' and FWorkStatus>=3 ';
      qry.Parameters.FindParam('FDepartmentID').value:=mdata_M['FDepartmentID'];
      qry.Parameters.FindParam('FAgentID').value:=mdata_M['FAgentID'];
      qry.Open;
    finally
       ;
    end;
  end;
  mdata.CopyFromDataSet(qry);
  mdata.Open;


{  mdata_M.Edit;
  mdata_M.Post;
  TS_WorkTrace.TabEnabled:=False;
  TS_WorkItem.TabEnabled:=True;
  PC_1.ActivePage:=TS_WorkItem; }
end;

procedure TFrm_WorkTrace.SelPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  PC_1.ActivePage:=TS_WorkItem;
  TS_WorkTrace.TabEnabled:=True;
  TS_WorkItem.TabEnabled:=False;
end;

procedure TFrm_WorkTrace.Act_Set_MaxNumExecute(Sender: TObject);
var
  i:Integer;
  proc:TADOStoredProc;
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

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
      value:=ForMatDateTime('yyyy-mm-dd',(mdata_M['FWorkTraceDate']));
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=30;
      name := '@TableName';
      value:='T_WorkTrace';
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=20;
      name := '@DateFiled';
      value:='FWorkTraceDate';
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=20;
      name := '@NumFiled';
      value:='FWorkTraceNo';
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftInteger;
      Direction := pdinput;
      size:=20;
      name := '@FDepartmentID';
      value:=UserFDepartmentID;
     // value:=mdata_M['FDepartmentID'];
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

procedure TFrm_WorkTrace.Act_Set_MaxIDExecute(Sender: TObject);
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
      value:='T_WorkTrace';
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

procedure TFrm_WorkTrace.Act_Ref_DateExecute(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If not TreeVeiwListWhere(qry,MyTreeView_Date,'VT_WorkTrace',' and WorkFDepartmentID='+IntToStr(UserFDepartmentID) ) then
  begin
    Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;
end;

procedure TFrm_WorkTrace.TB_PrintClick(Sender: TObject);
var
  qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
{  If ShowMsg('是否打印招标申请？','提示') then
  begin
    try
      qry.SQL.Text:='Select * From V_WorkTraceList where FDepartmentID=:FDepartmentID  '
                   +'and FWorkTraceID=:FWorkTraceID order by FBranchItemNumber,FPartsCode';
      qry.Parameters[0].Value:=UserFDepartmentID;
      qry.Parameters[1].Value:=mdata['FPlanTenderID'];
      qry.Open;
    finally
      ;
    end;
  end;
  mdata.CopyFromDataSet(qry);
 // Mdata.SortedField:='FItemNumber;FPartsCode';
  frDBDataSet.DataSet:=Mdata;
  FrReport.LoadFromFile(ExtractFileDir(Application.ExeName)+'\Report_DesignBOM_PlanTender.frf');
  FrReport.ShowReport;

     }
end;

procedure TFrm_WorkTrace.cxGVCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  {if StrToFloat(AViewInfo.GridRecord.DisplayTexts[FPlanTenderQry.Index])<>StrToFloat(AViewInfo.GridRecord.DisplayTexts[FTenderCoeQry.Index]) then    //设置行字体颜色
  begin
     ACanvas.Canvas.Font.Color:=clHotLight; //字体颜色
    ACanvas.FillRect(AViewInfo.Bounds);
  end;
   }
end;

procedure TFrm_WorkTrace.Act_OutExecute(Sender: TObject);
begin
  inherited;
  ExportToExcel(cxGrid,True,TRue);
end;

procedure TFrm_WorkTrace.Act_Ref_AgentExecute(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If not TreeVeiwListWhere(qry,MyTreeView_WorkItem,'VT_BranchWorkList',' and FDepartmentID='+IntToStr(mdata_M['FDepartmentID'])+' and FAgentID='+IntToStr(mdata_M['FAgentID']) ) then
  begin
    Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;

end;

procedure TFrm_WorkTrace.cxGV_M2CellClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If mData_M2['FWorkItemID']<>0 then
  begin
    If MyItemList(qry,Mdata2,'V_WorkList','cast(FWorkItemID as varchar(20))',
                  Mdata_M2['FWorkItemID'],'FWorkItemNum') then

//    If MyItemListwhere(qry,Mdata2,'V_WorkList','cast(FWorkItemID as varchar(20))',
 //                      Mdata_M2['FWorkItemID'],' and FEstimateQry<>FEstimateQry ','') then
  end;

end;

procedure TFrm_WorkTrace.MyTreeView_WriteExpanding(Sender: TObject;
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

  qry.SQL.Text:='Select FNumber, FParentNumber,FName,FNumber,'
               +'Isleaf from VT_WorkTrace_Write where FParentNumber= '''
               +PTree(Node.Data).ID+''' and FWorkTraceWriteID=:FWorkTraceWriteID '
               +' order by FNumber';
  qry.Parameters.FindParam('FWorkTraceWriteID').value:=UserNumID;
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

procedure TFrm_WorkTrace.MyTreeView_WriteChange(Sender: TObject;
  Node: TTreeNode);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If Node = nil then Exit;
  with PTree(Node.Data)^ do
  begin
    ListItemFNumber:=trim(PTree(Node.Data).FNumber);
    P_Isleaf:=PTree(Node.Data).Isleaf;
    If P_Isleaf>=0 then
    begin
      If MyItemList(qry,Mdata_M,'V_WorkTrace','FDepartmentName+'';''+cast(FWorkTraceWriteID as varchar(10))+'';''+cast(FWorkTraceStatus as varchar(2))+'';''+cast(year(FWorkTraceDate) as varchar(4))+'';''+cast(month(FWorkTraceDate) as varchar(2))+'';''+FWorkTraceNum+'';''',ListItemFNumber,'') then
      If MyItemList(qry,Mdata,'V_WorkTraceList','FDepartmentName+'';''+cast(FWorkTraceWriteID as varchar(10))+'';''+cast(FWorkTraceStatus as varchar(2))+'';''+cast(year(FWorkTraceDate) as varchar(4))+'';''+cast(month(FWorkTraceDate) as varchar(2))+'';''+FWorkTraceNum+'';''',ListItemFNumber,'FWorkTraceNum') then
    end
    else
    begin
      Mdata_M.Close;
      mdata.Close;
    end;
  end;
  If (P_Isleaf=1) and (mdata_M.RecordCount>0) then
     Act_Status.Execute  //权限设置
  else
  begin
    TB_Edit.Visible:=False;
    TB_Del.Visible:=False;
    TB_Submit.Visible:=False;
    N_Submit.Visible:=False;
    TB_Check.Visible:=False;
    N_Check.Visible:=False;
    TB_Audit.Visible:=False;
    N_Audit.Visible:=False;
    TB_PushDown.Visible:=False;
    N_PushDown.Visible:=False;
  end;

end;

procedure TFrm_WorkTrace.Act_Ref_WriteExecute(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If not TreeVeiwListWhere(qry,MyTreeView_Write,'VT_WorkTrace_Write',' and FWorkTraceWriteID='+IntToStr(UserNumID) ) then
  begin
    Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;

end;

procedure TFrm_WorkTrace.FormShow(Sender: TObject);
begin
  inherited;
  Act_Ref_Date.Execute;
  Act_Ref_Write.Execute;
  Act_Ref_Item.Execute;
  Act_Ref_sysTem.Execute;



end;

procedure TFrm_WorkTrace.MDataBeforePost(DataSet: TDataSet);
begin
  inherited;
  DataSet['FWeekTraceQry']:=round(round(DataSet['FEstimateQry']*DataSet['FWeekTracePercent']*10000)/10000)/100;
  If  DataSet['FWeekTracePercent']<0 then
     DataSet['FWeekTracePercent']:=0;
  If  DataSet['FTotalTracePercent']+DataSet['FWeekTracePercent']>100 then
      DataSet['FWeekTracePercent']:=100-DataSet['FTotalTracePercent'];

end;

procedure TFrm_WorkTrace.Act_Ref_ItemExecute(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If not TreeVeiwListWhere(qry,MyTreeView_Item,'VT_WorkTrace_Item',' and WorkFDepartmentID='+IntToStr(UserFDepartmentID) ) then
  begin
    Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;

end;

procedure TFrm_WorkTrace.MyTreeView_ItemExpanding(Sender: TObject;
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

  qry.SQL.Text:='Select FNumber, FParentNumber,FName,FNumber,'
               +'Isleaf from VT_WorkTrace_Item where FParentNumber= '''
               +PTree(Node.Data).ID+''' and WorkFDepartmentID=:WorkFDepartmentID '
               +' order by FNumber';
  qry.Parameters.FindParam('WorkFDepartmentID').value:=UserFDepartmentID;
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

procedure TFrm_WorkTrace.MyTreeView_ItemChange(Sender: TObject;
  Node: TTreeNode);
var
  qry,qry1:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  qry1:=TADOQuery.Create(self);
  qry1.Connection:=mdlData.conn;
  If Node = nil then Exit;
  with PTree(Node.Data)^ do
  begin
    ListItemFNumber:=trim(PTree(Node.Data).FNumber);
    P_Isleaf:=PTree(Node.Data).Isleaf;

    If P_Isleaf>=0 then
    begin
      try
        qry1.SQL.Text:='select * from V_WorkTrace where FWorkTraceID '
                     +' in (select distinct FWorkTraceID from V_WorkTraceList where WorkFDepartmentID=:WorkFDepartmentID '
                     +' and WorkFDepartmentName+'';''+FCarryOut+'';''+FItemlb+'';''+FBranchItemNumber+'';''+cast(FAgentID as varchar(10))+'';''+cast(FDepartmentID as varchar(10))+'';'''
                     +'+FDepartmentNum+FWorkTraceNum+'';'' like '''
                     +ListItemFNumber+'%'') ';
        qry1.Parameters.FindParam('WorkFDepartmentID').value:=UserFDepartmentID;
        qry1.OPen;
      finally
         ;
      end;
      If qry1.RecordCount>0 then
      begin
        Mdata_M.CopyFromDataSet(qry1);
        Mdata_M.Open;
      end
      else
        Mdata_M.Close;
       If MyItemList(qry,Mdata,'V_WorkTraceList','WorkFDepartmentName+'';''+FCarryOut+'';''+FItemlb+'';''+FBranchItemNumber+'';'''
            +'+cast(FAgentID as varchar(10))+'';''+cast(FDepartmentID as varchar(10))+'';''+FDepartmentNum+FWorkTraceNum+'';''',ListItemFNumber,'FWorkTraceNum') then
    end
    else
    begin
      Mdata_M.Close;
      mdata.Close;
    end;
  end;
  If (P_Isleaf=1) and (mdata_M.RecordCount>0) then
     Act_Status.Execute  //权限设置
  else
  begin
    TB_Edit.Visible:=False;
    TB_Del.Visible:=False;
    TB_Submit.Visible:=False;
    N_Submit.Visible:=False;
    TB_Check.Visible:=False;
    N_Check.Visible:=False;
    TB_Audit.Visible:=False;
    N_Audit.Visible:=False;
    TB_PushDown.Visible:=False;
    N_PushDown.Visible:=False;
  end;

end;

procedure TFrm_WorkTrace.Act_Ref_SysTemExecute(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If UserFAgentID=0 then
  begin
    If not TreeVeiwListWhere(qry,MyTreeView_Agent,'VT_WorkTrace_Agent',' and WorkFDepartmentID='+IntToStr(UserFDepartmentID) ) then
    begin
      Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
    end;
  end;
  If UserFAgentID<>0 then
  begin
    If not TreeVeiwListWhere(qry,MyTreeView_Agent,'VT_WorkTrace_Agent',' and (FDepartmentID=0 or FDepartmentID='+IntToStr(UserFDepartmentID)+')' ) then
    begin
      Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
    end;
  end;

end;

procedure TFrm_WorkTrace.MyTreeView_AgentExpanding(Sender: TObject;
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

  If UserFAgentID=0 then  //事业部
  begin
    qry.SQL.Text:='Select FNumber, FParentNumber,FName,FNumber,'
                 +'Isleaf from VT_WorkTrace_Agent where FParentNumber= '''
                 +PTree(Node.Data).ID+''' and WorkFDepartmentID=:WorkFDepartmentID '
                 +' order by FNumber';
    qry.Parameters.FindParam('WorkFDepartmentID').value:=UserFDepartmentID;
  end;
  If UserFAgentID<>0 then       //外协
  begin
    qry.SQL.Text:='Select FNumber, FParentNumber,FName,FNumber,'
                 +'Isleaf from VT_WorkTrace_Agent where FParentNumber= '''
                 +PTree(Node.Data).ID+''' and FDepartmentID=:FDepartmentID '
                 +' order by FNumber';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
  end;
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
    with MyTreeView_Agent.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('Isleaf').value;
    end;
    qry.Next;
  end;




end;

procedure TFrm_WorkTrace.MyTreeView_AgentChange(Sender: TObject;
  Node: TTreeNode);
var
  qry,qry1:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  qry1:=TADOQuery.Create(self);
  qry1.Connection:=mdlData.conn;
  If Node = nil then Exit;
  with PTree(Node.Data)^ do
  begin
    ListItemFNumber:=trim(PTree(Node.Data).FNumber);
    P_Isleaf:=PTree(Node.Data).Isleaf;
    If P_Isleaf>=0 then
    begin
      try
        If UserFAgentID=0 then
        begin
          qry1.SQL.Text:='select * from V_WorkTrace where FWorkTraceID '
                        +' in (select distinct FWorkTraceID from V_WorkTraceList where WorkFDepartmentID=:WorkFDepartmentID '
                        +' and WorkFDepartmentName+'';''+cast(FAgentID as varchar(10))+'';''+cast(FWorkTraceStatus as varchar(2))+'';''+cast(year(FWorkTraceDate) as varchar(4))+'';''+cast(month(FWorkTraceDate) as varchar(2))+'';''+FDepartmentName+'';'''
                        +'+FDepartmentNum+FWorkTraceNum+'';'' like '''
                        +ListItemFNumber+'%'') ';
          qry1.Parameters.FindParam('WorkFDepartmentID').value:=UserFDepartmentID;
        end;
        If UserFAgentID<>0 then
        begin
          qry1.SQL.Text:='select * from V_WorkTrace where FWorkTraceID '
                        +' in (select distinct FWorkTraceID from V_WorkTraceList where FDepartmentID=:FDepartmentID '
                        +' and WorkFDepartmentName+'';''+cast(FAgentID as varchar(10))+'';''+cast(FWorkTraceStatus as varchar(2))+'';''+cast(year(FWorkTraceDate) as varchar(4))+'';''+cast(month(FWorkTraceDate) as varchar(2))+'';''+FDepartmentName+'';'''
                        +'+FDepartmentNum+FWorkTraceNum+'';'' like '''
                        +ListItemFNumber+'%'') ';
          qry1.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
        end;
        qry1.OPen;
      finally
         ;
      end;
      If qry1.RecordCount>0 then
      begin
        Mdata_M.CopyFromDataSet(qry1);
        Mdata_M.Open;
      end
      else
        Mdata_M.Close;
        If UserFAgentID=0 then
           If MyItemList(qry,Mdata,'V_WorkTraceList','WorkFDepartmentName+'';''+cast(FAgentID as varchar(10))+'';''+cast(FWorkTraceStatus as varchar(2))+'';''+cast(year(FWorkTraceDate) as varchar(4))+'';''+cast(month(FWorkTraceDate) as varchar(2))+'';''+FDepartmentName+'';''+FDepartmentNum+FWorkTraceNum+'';''',ListItemFNumber,'FWorkTraceNum') then
        If UserFAgentID<>0 then
           If MyItemList(qry,Mdata,'V_WorkTraceList','WorkFDepartmentName+'';''+cast(FAgentID as varchar(10))+'';''+cast(FWorkTraceStatus as varchar(2))+'';''+cast(year(FWorkTraceDate) as varchar(4))+'';''+cast(month(FWorkTraceDate) as varchar(2))+'';''+FDepartmentName+'';''+FDepartmentNum+FWorkTraceNum+'';''',ListItemFNumber,'FWorkTraceNum') then
     end
    else
    begin
      Mdata_M.Close;
      mdata.Close;
    end;
  end;
  {  ListItemFNumber:=trim(PTree(Node.Data).FNumber);
    P_Isleaf:=PTree(Node.Data).Isleaf;
    If PTree(Node.Data).Isleaf>0 then
    begin
      If MyItemList(qry,Mdata_M,'V_WorkTrace','WorkFDepartmentName+'';''+cast(FAgentID as varchar(10))+'';''+cast(FWorkTraceStatus as varchar(2))+'';''+cast(year(FWorkTraceDate) as varchar(4))+'';''+cast(month(FWorkTraceDate) as varchar(2))+'';''+FDepartmentName+'';''+FDepartmentNum+FWorkTraceNum+'';''',ListItemFNumber,'') then
      If MyItemList(qry,Mdata,'V_WorkTraceList','WorkFDepartmentName+'';''+cast(FAgentID as varchar(10))+'';''+cast(FWorkTraceStatus as varchar(2))+'';''+cast(year(FWorkTraceDate) as varchar(4))+'';''+cast(month(FWorkTraceDate) as varchar(2))+'';''+FDepartmentName+'';''+FDepartmentNum+FWorkTraceNum+'';''',ListItemFNumber,'FWorkTraceNum') then
    end
    else
    begin
      Mdata_M.Close;
      mdata.Close;
    end;
  end;}
  If (P_Isleaf=1) and (mdata_M.RecordCount>0) then
     Act_Status.Execute  //权限设置
  else
  begin
    TB_Edit.Visible:=False;
    TB_Del.Visible:=False;
    TB_Submit.Visible:=False;
    N_Submit.Visible:=False;
    TB_Check.Visible:=False;
    N_Check.Visible:=False;
    TB_Audit.Visible:=False;
    N_Audit.Visible:=False;
    TB_PushDown.Visible:=False;
    N_PushDown.Visible:=False;
  end;

end;

procedure TFrm_WorkTrace.FDepartmentName_MPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='select distinct FDepartmentID,FDepartmentName  from V_WorkItem where FAgentName=:FAgentName '
                 +' order by FDepartmentName';
    qry.Parameters.FindParam('FAgentName').value:= UserFDepartmentName;
    qry.Open;
  finally
     ;
  end;
  selValue:=select('请选择权限组别','FDepartmentName','FDepartmentName','FDepartmentName','FDepartmentName',qry);
  If Length(selValue)>0 then
  begin
    mdata_M.Edit;
    mdata_M['FDepartmentName']:=qry.FieldByName('FDepartmentName').Value;
    mdata_M['FDepartmentID']:=qry.FieldByName('FDepartmentID').Value;
    mdata_M.Post;
  end;

    try
      qry.SQL.Text:='Select * from V_AgentItem where FDepartmentID=:FDepartmentID and FAgentName=:FAgentName';
      qry.Parameters.FindParam('FDepartmentID').value:= mdata_M['FDepartmentID'];
      qry.Parameters.FindParam('FAgentName').value:= UserFDepartmentName;
      qry.Open;
    finally
      ;
    end;
    mdata_M.Edit;
    If qry.RecordCount>0 then
       mdata_M['FAgentID']:=qry.FieldByName('FAgentID').Value
    else
       mdata_M['FAgentID']:=0;
    mdata_M.Post;


end;

procedure TFrm_WorkTrace.FAgentName_MPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  mdata_M.Edit;
  mdata_M.Post;
  try
    qry.SQL.Text:='Select distinct FAgentID,FAgentName,FjobSort  from V_WorkItem where FDepartmentID=:FDepartmentID and FAgentName like :FAgentName '
                 +' and  FisSysTem=''体系外'' order by FjobSort,FAgentName';
    qry.Parameters.FindParam('FDepartmentID').value:=mdata_M['FDepartmentID'];
    qry.Parameters.FindParam('FAgentName').value:='%'+Trim(mdata_M['FAgentName'])+'%';
    qry.Open;
  finally
     ;
  end;
  selValue:=select('请选择外协单位','FAgentName','FjobSort','FAgentName','FjobSort;FAgentName',qry);
  If Length(selValue)>0 then
  begin
    mdata_M.Edit;
    mdata_M['FAgentName']:=qry.FieldByName('FAgentName').Value;
    mdata_M['FAgentID']:=qry.FieldByName('FAgentID').Value;
    mdata_M.Post;
  end;

end;

procedure TFrm_WorkTrace.TB_TotalClick(Sender: TObject);
begin
  Act_Total.Execute;
end;

procedure TFrm_WorkTrace.Act_TotalExecute(Sender: TObject);
var  qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If P_state=0 then  //新增
  begin
    mData.Edit;
    mData.Post;
    mData.First;
    while not mData.eof do
    begin
      try
      qry.SQL.Text:='select FWorkListID,sum(FWeekTracePercent) as FWeekTotalTracePercent from V_WorkTraceList '
                  +' where FWorkListID=:FWorkListID and FWorkTraceDate<=:FWorkTraceDate '
                  +'group by FWorkListID';
      qry.Parameters.FindParam('FWorkListID').value:=mdata['FWorkListID'];
      qry.Parameters.FindParam('FWorkTraceDate').value:=mdata_M['FWorkTraceDate'];
      qry.Open;
      finally
        ;
      end;
      If (qry.RecordCount>0)  then
      begin
        mData.Edit;
        mData['FWeekTotalTracePercent']:=mData['FWeekTracePercent']+qry.FieldByName('FWeekTotalTracePercent').Value;
        mData['FWeekTotalTraceQry']:=round(round(mData['FEstimateQry']*(mData['FWeekTracePercent']+mData['FWeekTotalTracePercent'])*10000)/10000)/100;
        mData.Post;
        mData.Edit;
        mData['FToTalTracePercent']:=mData['FWeekTracePercent']+qry.FieldByName('FWeekTotalTracePercent').Value;
        mData['FToTalTraceQry']:=round(round(mData['FEstimateQry']*(mData['FWeekTracePercent']+mData['FWeekTotalTracePercent'])*10000)/10000)/100;
        mData.Post;
      end
      else
      begin
        mData.Edit;
        mData['FWeekTotalTracePercent']:=mData['FWeekTracePercent'];
        mData['FWeekTotalTraceQry']:=round(round(mData['FEstimateQry']*(mData['FWeekTracePercent']+mData['FWeekTotalTracePercent'])*10000)/10000)/100;
        mData['FToTalTracePercent']:=mData['FWeekTracePercent'];
        mData['FToTalTraceQry']:=round(round(mData['FEstimateQry']*(mData['FWeekTracePercent']+mData['FWeekTotalTracePercent'])*10000)/10000)/100;
        mData.Post;
      end;
      mData.Next;
    end;
  end;
  If P_state=1 then  //修改
  begin
    mData.Edit;
    mData.Post;
    mData.First;
    while not mData.eof do
    begin
      try
      qry.SQL.Text:='select FWorkListID,sum(FWeekTracePercent) as FWeekTotalTracePercent from V_WorkTraceList '
                  +' where FWorkListID=:FWorkListID and FWorkTraceDate<=:FWorkTraceDate and FWorkTraceNum<>:FWorkTraceNum '
                  +'group by FWorkListID';
      qry.Parameters.FindParam('FWorkListID').value:=mdata['FWorkListID'];
      qry.Parameters.FindParam('FWorkTraceDate').value:=mdata_M['FWorkTraceDate'];
      qry.Parameters.FindParam('FWorkTraceNum').value:=mdata_M['FWorkTraceNum'];
      qry.Open;
      finally
        ;
      end;
      If (qry.RecordCount>0)  then
      begin
        mData.Edit;
        mData['FWeekTotalTracePercent']:=mData['FWeekTracePercent']+qry.FieldByName('FWeekTotalTracePercent').Value;
        mData['FWeekTotalTraceQry']:=round(round(mData['FEstimateQry']*(mData['FWeekTracePercent']+mData['FWeekTotalTracePercent'])*10000)/10000)/100;
        mData.Post;
        mData.Edit;
        mData['FToTalTracePercent']:=mData['FWeekTracePercent']+qry.FieldByName('FWeekTotalTracePercent').Value;
        mData['FToTalTraceQry']:=round(round(mData['FEstimateQry']*(mData['FWeekTracePercent']+mData['FWeekTotalTracePercent'])*10000)/10000)/100;
        mData.Post;
      end
      else
      begin
        mData.Edit;
        mData['FWeekTotalTracePercent']:=mData['FWeekTracePercent'];
        mData['FWeekTotalTraceQry']:=round(round(mData['FEstimateQry']*(mData['FWeekTracePercent']+mData['FWeekTotalTracePercent'])*10000)/10000)/100;
        mData.Post;
        mData.Edit;
        mData['FToTalTracePercent']:=mData['FWeekTracePercent'];
        mData['FToTalTraceQry']:=round(round(mData['FEstimateQry']*(mData['FWeekTracePercent']+mData['FWeekTotalTracePercent'])*10000)/10000)/100;
        mData.Post;
      end;
      mData.Next;
    end;
  end;

end;

procedure TFrm_WorkTrace.PC_TreeChange(Sender: TObject);
begin
  inherited;
  mdata_M.Close;
  mdata.Close;

end;

procedure TFrm_WorkTrace.FWorkTraceDate_MPropertiesChange(Sender: TObject);
begin
  inherited;
  mdata_M.Edit;
  mdata_M['FWorkTraceStarDate']:=mdata_M['FWorkTraceDate']-7;
  mdata_M.Post;
end;

end.
