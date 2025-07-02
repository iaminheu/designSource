unit Main_WorkPayment;

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
  TFrm_WorkPayment = class(TFrm_GridBass)
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
    Panel_Edit: TPanel;
    Panel_List: TFlatPanel;
    Panel_List2: TFlatPanel;
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
    FWorkInvoiceDate_List: TcxGridDBColumn;
    cxGL_List: TcxGridLevel;
    FWorkAcceptAmount_List: TcxGridDBColumn;
    Act_Update: TAction;
    FlatPanel1: TFlatPanel;
    E_FWorkPaymentDate: TcxDBDateEdit;
    FlatPanel3: TFlatPanel;
    E_FWorkPaymentItemAmount: TcxDBCurrencyEdit;
    cxGrid_Item: TcxGrid;
    cxGV_Item: TcxGridDBBandedTableView;
    XH: TcxGridDBBandedColumn;
    FWorkPaymentNum: TcxGridDBBandedColumn;
    FWorkPaymentDate: TcxGridDBBandedColumn;
    FFirstLogging: TcxGridDBBandedColumn;
    FFirstLoggingDate: TcxGridDBBandedColumn;
    FNewestAlter: TcxGridDBBandedColumn;
    FNewestAlterDate: TcxGridDBBandedColumn;
    cxGL_Item: TcxGridLevel;
    FWorkPaymentAmount_List: TcxGridDBColumn;
    FClientShortName_List: TcxGridDBColumn;
    FWorkItemDate_List: TcxGridDBColumn;
    FWorkItemNum_List: TcxGridDBColumn;
    FWorkPaymentItemAmount: TcxGridDBBandedColumn;
    FWorkTMOAmount_List: TcxGridDBColumn;
    FlatPanel5: TFlatPanel;
    FlatPanel2: TFlatPanel;
    E_FWorkPaymentNum: TcxDBButtonEdit;
    FlatPanel4: TFlatPanel;
    TS_InvoiceNum: TTabSheet;
    Act_MaxID_List: TAction;
    Act_WorkItemNum: TAction;
    E_FWorkPaymentNo: TcxDBCurrencyEdit;
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
    FlatPanel7: TFlatPanel;
    E_FAgentName: TcxDBButtonEdit;
    Act_AgentName: TAction;
    Act_FWorkBudgetNum: TAction;
    cxGrid: TcxGrid;
    cxGV: TcxGridDBBandedTableView;
    FWorkAcceptAmount: TcxGridDBBandedColumn;
    FWorkTMOAmount: TcxGridDBBandedColumn;
    FWorkItemBalanceAmount: TcxGridDBBandedColumn;
    FWorkPaymentAmount: TcxGridDBBandedColumn;
    FWorkItemNum: TcxGridDBBandedColumn;
    FWorkItemDate: TcxGridDBBandedColumn;
    FWorkItemAmount: TcxGridDBBandedColumn;
    FBranchFileNo: TcxGridDBBandedColumn;
    FClientShortName: TcxGridDBBandedColumn;
    FWorkBudgetNum: TcxGridDBBandedColumn;
    FWorkBudgetDate: TcxGridDBBandedColumn;
    FWorkbudgetAmount: TcxGridDBBandedColumn;
    FWorkInvoiceDate: TcxGridDBBandedColumn;
    FWorkInvoiceNum: TcxGridDBBandedColumn;
    FWorkInvoiceAmount: TcxGridDBBandedColumn;
    FWorkPaymentListRemark: TcxGridDBBandedColumn;
    cxGL: TcxGridLevel;
    FAgentName_Item: TcxGridDBBandedColumn;
    cxGVDBBandedColumn1: TcxGridDBBandedColumn;
    FWorkItemPayMentAmount: TcxGridDBBandedColumn;
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
    procedure Panel_EditConstrainedResize(Sender: TObject; var MinWidth,
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
    procedure Act_FWorkBudgetNumExecute(Sender: TObject);
    procedure FWorkBudgetNumPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure MDataBeforePost(DataSet: TDataSet);
    procedure XHGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: String);
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
  Frm_WorkPayment: TFrm_WorkPayment;


implementation

uses FRMDATA,  COMMON, FrmSelect, ProgBar, PROGRASS,
   FrmWorkMain;

{$R *.dfm}

function TFrm_WorkPayment.DelRd: bool;
var
 qry: TADOQuery;
begin
 // result:=False;
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Delete from T_WorkInvoice where FWorkInvoiceID=:FWorkInvoiceID';
    with qry.Parameters do
    begin
      FindParam('FWorkInvoiceID').value:=mdata['FWorkInvoiceID'];
    end;
    result:=qry.ExecSQL>=1;
  finally
    qry.Free;
  end;
end;



function TFrm_WorkPayment.AddRd: bool;
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

function TFrm_WorkPayment.EditRd:bool;   // 修改
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

function TFrm_WorkPayment.AddMain: bool;
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
  If (E_FWorkPaymentNo.Value<>Null) and (E_FWorkPaymentNo.Value<>0) then
  begin
    try
      qry.SQL.Text:='Insert into T_WorkPayment(FWorkPaymentID,FWorkPaymentDate,FWorkPaymentNo,'
                   +'FAgentID,FFirstLoggingID,FFirstLoggingDate,FDepartMentID) '
                   +'values(:FWorkPaymentID,:FWorkPaymentDate,:FWorkPaymentNo,'
                   +':FAgentID,:FFirstLoggingID,:FFirstLoggingDate,:FDepartMentID)';
       with qry.Parameters do
       begin
         Act_MaxID.Execute;//取ID
         FindParam('FWorkPaymentID').value:=P_MaxID;
         FindParam('FWorkPaymentDate').value:=mdata['FWorkPaymentDate'];
         FindParam('FWorkPaymentNo').value:=mdata['FWorkPaymentNo'];
         FindParam('FAgentID').value:=mdata['FAgentID'];
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

function TFrm_WorkPayment.EditMain:bool;

var
  qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  result:=False;
  If mData.RecordCount<=0 then
  begin
    result:=True;
    Exit;
  end;
  mdata.Edit;
  mdata.Post;
  If (mdata['FWorkPaymentNo']<>Null) and (mdata['FWorkPaymentNo']<>0) then
  begin
    try
      qry.SQL.Text:='Update T_WorkPayment set FWorkPaymentDate=:FWorkPaymentDate,'
                   +'FWorkPaymentNo=:FWorkPaymentNo,FAgentID=:FAgentID,'
                   +'FNewestAlterID=:FNewestAlterID,FNewestAlterDate=getdate() '
                   +'where FWorkPaymentID=:FWorkPaymentID';
      with qry.Parameters do
      begin
        FindParam('FWorkPaymentDate').value:=mdata['FWorkPaymentDate'];
        FindParam('FWorkPaymentNo').value:=mdata['FWorkPaymentNo'];
        FindParam('FAgentID').value:=mdata['FAgentID'];
        FindParam('FNewestAlterID').value:=mdata['FNewestAlterID'];
        FindParam('FNewestAlterID').value:=UserNumID;
        FindParam('FWorkPaymentID').value:=mdata['FWorkPaymentID'];
      end;
      result:=qry.ExecSQL>=1;
    finally
       qry.Free;
    end;
   end;
end;

function TFrm_WorkPayment.DelList: bool;
var i:Integer;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  result:=True;

  qry.SQL.Text:='Delete from T_WorkPaymentList where FWorkPaymentListID=:FWorkPaymentListID';
  for i:=Low(DelArray) to High(DelArray) do
  begin
    if DelArray[i]<>'' then
    begin
      if qry.Active then qry.Close;
      try
        qry.Parameters.FindParam('FWorkPaymentListID').Value:=StrToInt(DelArray[i]);
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

function TFrm_WorkPayment.AddList: bool;
var qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  result:=True;
  mData_List.Edit;
  try
    qry.SQL.Text:='Insert into T_WorkPaymentList(FWorkPaymentListID,FWorkPaymentID,FWorkBudgetListID,'
                 +'FWorkAcceptAmount,FWorkTMOAmount,FWorkPaymentListRemark) '
                 +'values(:FWorkPaymentListID,:FWorkPaymentID,:FWorkBudgetListID, '
                 +':FWorkAcceptAmount,:FWorkTMOAmount,:FWorkPaymentListRemark)';
    mData_List.First;
    while not mData_List.eof do
    begin
      If (mData_List['IsApp']=True)
         and (mData_List['FWorkPaymentAmount']<>0) and (mData_List['FWorkPaymentAmount']<>Null)

       then
      begin
        If qry.Active then qry.Close;
        Act_MaxID_List.Execute;//取ID
        qry.Parameters.FindParam('FWorkPaymentListID').value:=P_MaxID_List;
        If P_state=0 then  //新增
          qry.Parameters.FindParam('FWorkPaymentID').value:=P_MaxID;
        If P_state=1 then  //修改
          qry.Parameters.FindParam('FWorkPaymentID').value:=mdata['FWorkPaymentID'];
        qry.Parameters.FindParam('FWorkBudgetListID').value:=mData_List['FWorkBudgetListID'];
        qry.Parameters.FindParam('FWorkAcceptAmount').value:=mData_List['FWorkAcceptAmount'];
        qry.Parameters.FindParam('FWorkTMOAmount').value:=mData_List['FWorkTMOAmount'];
        qry.Parameters.FindParam('FWorkPaymentListRemark').value:=mData_List['FWorkPaymentListRemark'];
        result:=qry.ExecSQL>=1;
        if not result then break;
      end;
      mData_List.Next;
    end;
  finally
     qry.Free;
  end;

end;

function TFrm_WorkPayment.EditList:bool;
var qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  result:=True;
  try
    qry.SQL.Text:='Update T_WorkPaymentList set FWorkPaymentID=:FWorkPaymentID,FWorkBudgetListID=:FWorkBudgetListID,'
                 +'FWorkAcceptAmount=:FWorkAcceptAmount,FWorkTMOAmount=:FWorkTMOAmount,'
                 +'FWorkPaymentListRemark=:FWorkPaymentListRemark '
                 +'where FWorkPaymentListID=:FWorkPaymentListID';
    mData_List.First;
    while not mData_List.eof do
    begin
      If (mData_List['IsEdit']=True) and (mData_List['IsApp']=False)
         and (mData_List['FWorkPaymentAmount']<>0) and (mData_List['FWorkPaymentAmount']<>Null)  then
      begin
        If qry.Active then qry.Close;
        qry.Parameters.FindParam('FWorkPaymentID').value:=mData['FWorkPaymentID'];
        qry.Parameters.FindParam('FWorkBudgetListID').value:=mData_List['FWorkBudgetListID'];
        qry.Parameters.FindParam('FWorkAcceptAmount').value:=mData_List['FWorkAcceptAmount'];
        qry.Parameters.FindParam('FWorkTMOAmount').value:=mData_List['FWorkTMOAmount'];
        qry.Parameters.FindParam('FWorkPaymentListRemark').value:=mData_List['FWorkPaymentListRemark'];
        If mData_List['IsApp']=True  then
           qry.Parameters.FindParam('FWorkPaymentListID').value:=P_MaxID_List
        else
           qry.Parameters.FindParam('FWorkPaymentListID').value:=mData_List['FWorkPaymentListID'];
        result:=qry.ExecSQL>=1;
        if not result then break;
      end;
      mData_List.Next;
    end;
  finally
     qry.Free;
  end;

end;



procedure TFrm_WorkPayment.FormResize(Sender: TObject);
begin
  inherited;
  L_title.Caption:=UserFDepartmentName+'付款申请';
  Self.Caption:=UserFDepartmentName+'付款申请信息操作';
end;

procedure TFrm_WorkPayment.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=cafree;
  Frm_WorkPayment:=nil;
end;

procedure TFrm_WorkPayment.TB_EXITClick(Sender: TObject);
begin
  self.Close;
end;

procedure TFrm_WorkPayment.MyTreeViewChange(Sender: TObject; Node: TTreeNode);
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

    If TS_Tree.ActivePage=TS_InvoiceNum then
    begin
      mdata.DisableControls;
      If not MyItemList(qry,MData,'V_WorkPayment','FNumber',ListItemFNumber,'FNumber') then
      begin
        MData.Open;
      end;
      mdata.EnableControls;
    end;
    P_state:=2;
    Act_ItemChange.Execute;
  end;
end;

procedure TFrm_WorkPayment.MyTreeViewExpanding(Sender: TObject;
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

  If TS_Tree.ActivePage=TS_InvoiceNum then
     qry.SQL.Text:='Select * from VT_WorkPayment with(nolock) where FParentNumber= '''
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

procedure TFrm_WorkPayment.TB_RefClick(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If TS_Tree.ActivePage=TS_InvoiceNum then
  begin
    If not TreeVeiwListWhere(qry,MyTreeView,'VT_WorkPayment',' and FDepartmentID='+IntToStr(UserFDepartmentID) ) then
       Application.MessageBox(PChar('树型结构显示错误，请联系开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;

end;

procedure TFrm_WorkPayment.OKBtnClick(Sender: TObject);
var qry: TADOQuery;
begin
  cxGV.OptionsData.Editing:=True;
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  mdata.Edit;
  mdata.Post;
  If (mdata['FWorkPaymentDate']=Null) then
  begin
    application.MessageBox('付款申请日期不允许空！请重新输入','系统提示',MB_ICONERROR);
    Exit;
  end;
  If (mdata['FWorkPaymentNo']=Null) or (mdata['FWorkPaymentNo']=0) then
  begin
    application.MessageBox('付款申请单号不允许空！请重新输入','系统提示',MB_ICONERROR);
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

procedure TFrm_WorkPayment.TB_AppClick(Sender: TObject);
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
  L_title.Caption:='付款申请信息新增';

  try
    qry1.SQL.Text:='Select (isnull(max(FWorkPaymentNo),0)+1) as FWorkPaymentNo from V_WorkPayment with(nolock) '
                  +'where year(FWorkPaymentDate)=year(GETDATE()) and MONTH(FWorkPaymentDate)=MONTH(GETDATE())';
    qry1.Open;
  finally
     ;
  end;

  try
    qry.SQL.Text:='Select IsEdit=cast(0 as bit),IsApp=cast(1 as bit),* from V_WorkPayment with(nolock) where FWorkPaymentID=0';
    qry.Open;
  finally
     ;
  end;
  mData.CopyFromDataSet(qry);
  mData.Active:=True;
  mData.Edit;
  Mdata['FWorkPaymentDate']:=formatdatetime('yyyy-mm-dd',now());
  mData.Post;
  Act_MaxNum.Execute;//取最大单号

  try
    qry.SQL.Text:='Select IsEdit=cast(0 as bit),IsApp=cast(1 as bit),* from V_WorkPaymentList with(nolock) where FWorkPaymentID=0';
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

procedure TFrm_WorkPayment.TB_EditClick(Sender: TObject);
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
  L_title.Caption:='付款申请信息修改';
  try
    qry.SQL.Text:='Select IsEdit=cast(0 as bit),IsApp=cast(0 as bit),* from V_WorkPaymentList with(nolock) where FWorkPaymentID=:FWorkPaymentID';
    qry.Parameters.FindParam('FWorkPaymentID').Value:=mData['FWorkPaymentID'];
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

procedure TFrm_WorkPayment.TB_DelClick(Sender: TObject);
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
  If application.MessageBox(Pchar('警告：是否删除此项付款申请信息：【'+Trim(mData['FWorkPaymentNum'])+'】的数据？'+chr(13)+chr(13)
                           +'删除数据操作将不可恢复，确定要删除此项付款申请吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
  If application.MessageBox(Pchar('警告：是否删除此项付款申请信息：【'+Trim(mData['FWorkPaymentNum'])+'】的数据？'+chr(13)+chr(13)
                           +'删除数据操作将不可恢复，确定要删除此项付款申请信息吗？'),'再次警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then

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

procedure TFrm_WorkPayment.CancelBtnClick(Sender: TObject);
var
  qry:TADOQuery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  P_state:=2;
  L_title.Caption:=UserFDepartmentName+'付款申请信息';
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

procedure TFrm_WorkPayment.FormCreate(Sender: TObject);
begin
  inherited;
  P_state:=2;
  TS_Item.ActivePage:=TS_Brow;
  TB_App.Visible:= mdlData.PermissionCheckRights(TFrm_WorkPayment.ClassName,'新增');

end;

procedure TFrm_WorkPayment.FormShow(Sender: TObject);
begin
  inherited;
  P_back.Width:=Self.Width;
  P_back.Height:=Self.Height;
  P_back.Top:=21;
  P_back.Left:=1;
  TB_Ref.Click;
end;

procedure TFrm_WorkPayment.Act_Menu_SetExecute(Sender: TObject);
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

procedure TFrm_WorkPayment.Act_MenuExecute(Sender: TObject);
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

procedure TFrm_WorkPayment.N_EditClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_WorkPayment.N_FilterClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_WorkPayment.N_SortClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_WorkPayment.N_GroupClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_WorkPayment.N_SetClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_WorkPayment.N_OutClick(Sender: TObject);
begin
  inherited;
  Mn:=TMenuItem(Sender).Name;
  Act_Menu.Execute;
end;

procedure TFrm_WorkPayment.Act_Set_OpenExecute(Sender: TObject);
var AFirstColumnStyle: TcxStyle;
begin
  inherited;
  MyTreeView.Enabled:=False;
  Panel_EditButton.Enabled:=False;
  Panel_OK.Visible:=True;

  TS_Item.ActivePage:=TS_Edit;
  TS_Brow.TabVisible:=False;

  E_FWorkPaymentNo.Enabled:=True;
  E_FWorkPaymentDate.Enabled:=True;
  E_FAgentName.Enabled:=True;

  cxGV.OptionsData.Editing:=True;
  FWorkBudgetNum.Editing:=True;
  FWorkAcceptAmount.Editing:=True;
  FWorkTMOAmount.Editing:=True;
  FWorkPaymentListRemark.Editing:=True;

end;

procedure TFrm_WorkPayment.Act_Set_CloseExecute(Sender: TObject);
begin
  inherited;
  P_state :=2;

  MyTreeView.Enabled:=True;
  Panel_EditButton.Enabled:=True;
  Panel_OK.Visible:=False;

  cxGV.OptionsData.Editing:=False;

  TS_Item.ActivePage:=TS_Brow;
  TS_Brow.TabVisible:=True;

  E_FWorkPaymentNo.Enabled:=False;
  E_FWorkPaymentDate.Enabled:=False;
  E_FAgentName.Enabled:=False;
end;

procedure TFrm_WorkPayment.TS_TreeChange(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If TS_Tree.ActivePage=TS_InvoiceNum then
  begin
    If not TreeVeiwListWhere(qry,MyTreeView,'VT_WorkPayment',' and FDepartmentID='+IntToStr(UserFDepartmentID) ) then
       Application.MessageBox(PChar('树型结构显示错误，请联系开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;

end;

procedure TFrm_WorkPayment.cxGVDblClick(Sender: TObject);
begin
  I_index:=MData.RecNo ;
  If P_state=2 then
     TS_Item.ActivePage:=TS_Edit;

end;

procedure TFrm_WorkPayment.cxGrid_ItemContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
  inherited;
  GV:='cxGV_Item';
  Gm:='mdata';
  Gr:='cxGrid_Item';
  Act_Menu_Set_Band.Execute;
end;

procedure TFrm_WorkPayment.Panel_EditConstrainedResize(Sender: TObject;
  var MinWidth, MinHeight, MaxWidth, MaxHeight: Integer);
begin
  inherited;
 // Panel_List.Left:=(Panel_Edit.Width-Panel_List.Width) div 2;
end;

procedure TFrm_WorkPayment.TS_ItemChange(Sender: TObject);
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

procedure TFrm_WorkPayment.RSP_TreeConstrainedResize(Sender: TObject;
  var MinWidth, MinHeight, MaxWidth, MaxHeight: Integer);
begin
  inherited;
{  Panel_List.Left:=(Panel_Edit.Width-Panel_List.Width) div 2;
  Panel_Button.Left:=(Panel_OK.Width-Panel_Button.Width) div 2;

  Panel_List.Left:=(Panel_Edit.Width-Panel_List.Width) div 2;
  Panel_Button.Left:=(Panel_OK.Width-Panel_Button.Width) div 2;
  RzPanel_Edit.Height:=TS_Edit.Height-Panel_Edit.Height;
 }
end;

procedure TFrm_WorkPayment.FlatPanel5DblClick(Sender: TObject);
begin
  inherited;
  If P_state=2 then
     TS_Item.ActivePage:=TS_Brow;
end;

procedure TFrm_WorkPayment.Act_MaxIDExecute(Sender: TObject);
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
      value:='T_WorkPayment';
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

procedure TFrm_WorkPayment.cxGV_ItemFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  Act_ItemChange.Execute;
end;

procedure TFrm_WorkPayment.E_LocatePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
    Act_Locate.Execute;
end;

procedure TFrm_WorkPayment.E_LocateKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  If Key=13 then
    Act_Locate.Execute;
end;

procedure TFrm_WorkPayment.Act_LocateExecute(Sender: TObject);
var
 qry: TADOQuery;
begin
{  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.EnableBCD:=False;//小数位数>4
  mdata.DisableControls;
  try
    qry.SQL.Text:='Select IsEdit=cast(0 as bit),IsApp=cast(0 as bit),* from V_ItemMake with(nolock) '
                 +'where FItemStoveNum like :Locate1 or '
                 +'FItemMakeStatus like :Locate2  '
                 +'or FItemStoveFullName like :Locate4 or FItemStoveName like :Locate5 '
                 +'or FItemHandler like :Locate6  ';
    qry.Parameters.FindParam('Locate1').Value:='%'+Trim(E_Locate.Text)+'%';
    qry.Parameters.FindParam('Locate2').Value:='%'+Trim(E_Locate.Text)+'%';
    qry.Parameters.FindParam('Locate4').Value:='%'+Trim(E_Locate.Text)+'%';
    qry.Parameters.FindParam('Locate5').Value:='%'+Trim(E_Locate.Text)+'%';
    qry.Parameters.FindParam('Locate6').Value:='%'+Trim(E_Locate.Text)+'%';
    qry.Open;
  finally
     ;
  end;
  mdata.CopyFromDataSet(qry);
  mdata.Active:=True;
  mdata.EnableControls;
}

end;

procedure TFrm_WorkPayment.Act_ItemChangeExecute(Sender: TObject);
var qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  If  (P_state=2) and (mData['FWorkPaymentID']<>0) and (mData['FWorkPaymentID']<>Null) then   //不在新增修改状态
  begin
    If MData['FFirstLoggingID']=UserNumID then
    begin
      TB_Edit.Visible:= mdlData.PermissionCheckRights(TFrm_WorkPayment.ClassName,'修改');
      TB_Del.Visible:= mdlData.PermissionCheckRights(TFrm_WorkPayment.ClassName,'删除');
    end
    else
    begin
      TB_Edit.Visible:= False;
      TB_Del.Visible:= False;
    end;

    If (mdata['FWorkPaymentID']<>0) and (mdata['FWorkPaymentID']<>Null) then
    begin
      If MyItemListID(qry,Mdata_List,'V_WorkPaymentList',' FWorkPaymentID='+IntToStr(mdata['FWorkPaymentID']),'',) then
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

procedure TFrm_WorkPayment.MData_ListBeforePost(DataSet: TDataSet);
begin
  inherited;
  If DataSet['FWorkPaymentNum']=Null then DataSet['FWorkPaymentNum']:='';
  If DataSet['FWorkBudgetNum']=Null then DataSet['FWorkBudgetNum']:='';


  If DataSet['FWorkPaymentListReMark']=Null then DataSet['FWorkPaymentListReMark']:='';
  If DataSet['FWorkItemNum']=Null then DataSet['FWorkItemNum']:='';
  If DataSet['FWorkAcceptAmount']=0 then DataSet['FWorkAcceptAmount']:='';
  If DataSet['FWorkTMOAmount']=0 then DataSet['FWorkTMOAmount']:='';
  If DataSet['FWorkPaymentAmount']=0 then DataSet['FWorkPaymentAmount']:='';
  DataSet['FWorkPaymentAmount']:=DataSet['FWorkAcceptAmount']+DataSet['FWorkTMOAmount'];
end;

procedure TFrm_WorkPayment.Act_UpdateExecute(Sender: TObject);
var qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='update T_WorkPayment set FWorkPaymentItemAmount=b.FWorkPaymentAmount from T_WorkPayment as a '
                 +' inner join (select FWorkPaymentID,SUM(FWorkPaymentAmount) as FWorkPaymentAmount from  T_WorkPaymentList '
                 +'where FWorkPaymentID=:FWorkPaymentID group by FWorkPaymentID) as b on a.FWorkPaymentID=b.FWorkPaymentID';
    If P_state=0 then
       qry.Parameters.FindParam('FWorkPaymentID').value:=P_MaxID;
    If P_state=1 then
       qry.Parameters.FindParam('FWorkPaymentID').value:=Mdata['FWorkPaymentID'];

    qry.ExecSQL;
  finally
    ;
  end;


end;

procedure TFrm_WorkPayment.cxGV_ItemCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
 var
   ARec: TRect;
begin
  inherited;
 // AText:=IntToStr(ARecord.Index);

//*******************************  特定的某一行变颜色*****************************


//  if (AViewInfo.GridRecord.Values[TcxGridDBTableView(Sender).GetColumnByFieldName
//('SheBeiBianHao').Index])='20050419' then
//
//  begin
//   ACanvas.Brush.Color := clRed;
//  end;



   //********************  隔列变颜色**************************
 { if AViewInfo.Item.Index mod 2 = 0 then
     ACanvas.Canvas.brush.color := clGreen
   else
     ACanvas.Canvas.brush.color := clGrayText;
}
 //*********************  设置行的颜色 **************************
//  begin
//    ARec := AViewInfo.Bounds;
//    ACanvas.canvas.brush.color:= clGreen;
//    ACanvas.FillRect(ARec)
//  end;
  //*********************  设置单元格的颜色 **************************
   begin
     //ARec := AViewInfo.ClientBounds;
     ACanvas.canvas.brush.color:= clGradientActiveCaption;
     ACanvas.canvas.Font.Color:=clBlack;   //字体颜色设置
     ACanvas.FillRect(ARec)
   end;
  //***********************************************

//*************************************隔行变颜色************************
   if AViewInfo.RecordViewInfo.Index mod 2 = 0 then
   begin
    ACanvas.Canvas.brush.color := clInfoBk ;
   end
   else
   begin
     ACanvas.Canvas.brush.color :=clMoneyGreen;
   end;



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

procedure TFrm_WorkPayment.cxGV_ListCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  GV:='cxGV_List';
  Gm:='mdata_List';
  Gr:='cxGrid_List';
  Act_Menu_Set.Execute;
end;

procedure TFrm_WorkPayment.Act_MaxID_ListExecute(Sender: TObject);
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
      value:='T_WorkPaymentList';
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

procedure TFrm_WorkPayment.Act_WorkItemNumExecute(Sender: TObject);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  mData_List.Edit;
  mData_List.Post;
  try
    qry.SQL.Text:='Select * from  VT_WorkItem_Sel with(nolock) '
                 +'where  (FWorkItemNum like :FWorkItemNum  '
                 +'or FName like :FName '
                 +') and FDepartmentID=:FDepartmentID  '
                 +'order by FWorkItemNum ';
    qry.Parameters.FindParam('FWorkItemNum').value:='%'+mData_List['FWorkItemNum']+'%';
    qry.Parameters.FindParam('FName').value:='%'+mData_List['FWorkItemNum']+'%';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
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
      mData_List['FAgentName']:=qry.FieldByName('FAgentName').Value;
      mData_List['FWorkItemAmount']:=qry.FieldByName('FWorkItemAmount').Value;
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
      mData_List['FWorkItemAmount']:=0.00;
      mData_List.Post;
    end

  end;



end;

procedure TFrm_WorkPayment.FWorkItemNumPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
//  Act_WorkItemNum.Execute;
end;

procedure TFrm_WorkPayment.cxGrid_ListContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV';
  Gm:='mdata_List';
  Gr:='cxGrid';
  Act_Menu_Set.Execute;
end;

procedure TFrm_WorkPayment.cxGridContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV';
  Gm:='mdata_List';
  Gr:='cxGrid';
  Act_Menu_Set.Execute;
end;

procedure TFrm_WorkPayment.Act_MaxNumExecute(Sender: TObject);
var  qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If (P_state<>0) and (P_state<>1) then Exit;
  mData.Edit;
  mData.Post;
  If mData['FWorkPaymentDate']<>null then
  begin
    try
      qry.SQL.Text:='Select isnull(Max(FWorkPaymentNo),0)+1 as FWorkPaymentNo from  V_WorkPayment with(nolock) '
                   +'where  FWorkPaymentYYMM=:FWorkPaymentYYMM  and FDepartmentID=:FDepartmentID ';
      qry.Parameters.FindParam('FWorkPaymentYYMM').value:=Copy(ForMatDateTime('yyyy-mm-dd',mData['FWorkPaymentDate']),1,7);
      qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;

      qry.Open;
    finally
      ;
    end;
    mData.Edit;
    mData['FWorkPaymentNo']:=qry['FWorkPaymentNo'];
    mData.Post;
  end;


end;

procedure TFrm_WorkPayment.MData_ListAfterEdit(DataSet: TDataSet);
begin
  inherited;
  DataSet['IsEdit']:=True;
end;

procedure TFrm_WorkPayment.MData_ListAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet['IsApp']:=True;

end;

procedure TFrm_WorkPayment.MData_ListBeforeDelete(DataSet: TDataSet);
var
 arrLen:Integer;
begin
  If not varisnull(MData_List['FWorkPaymentListID']) then
  begin
    arrLen:=Length(DelArray)+1;
    setLength(DelArray,arrLen);
    DelArray[High(DelArray)]:=MData_List['FWorkPaymentListID'];
  end;

end;

procedure TFrm_WorkPayment.cxGVCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  GV:='cxGV';
  Gm:='mdata_List';
  Gr:='cxGrid';
  Act_Menu_Set.Execute;

end;

procedure TFrm_WorkPayment.Act_Menu_BandExecute(Sender: TObject);
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

procedure TFrm_WorkPayment.Act_Menu_Set_BandExecute(Sender: TObject);
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

procedure TFrm_WorkPayment.N_Edit_BandClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu_Band.Execute;
end;

procedure TFrm_WorkPayment.Act_AgentNameExecute(Sender: TObject);
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

procedure TFrm_WorkPayment.E_FAgentNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  Act_AgentName.Execute;
end;

procedure TFrm_WorkPayment.Act_FWorkBudgetNumExecute(Sender: TObject);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  mData_List.Edit;
  mData_List.Post;
  try
    qry.SQL.Text:='Select * from  VT_WorkBudget_Agent_Sel with(nolock) '
                 +'where  (FWorkBudgetNum like :FWorkBudgetNum or FWorkItemNum like :FWorkItemNum  '
                 +'or FName like :FName '
                 +') and FAgentID=:FAgentID and FDepartmentID=:FDepartmentID '
                 +'order by FWorkBudgetNum ';
    qry.Parameters.FindParam('FWorkBudgetNum').value:='%'+mData_List['FWorkBudgetNum']+'%';
    qry.Parameters.FindParam('FWorkItemNum').value:='%'+mData_List['FWorkBudgetNum']+'%';
    qry.Parameters.FindParam('FName').value:='%'+mData_List['FWorkBudgetNum']+'%';
    qry.Parameters.FindParam('FAgentID').value:=mData['FAgentID'];
    qry.Parameters.FindParam('FDepartmentID').value:=userFDepartmentID;
    qry.Open;
  finally
    ;
  end;
  If qry.RecordCount=0 then
  begin
    mData_List.Edit;
    mData_List['FWorkBudgetListID']:=0;
    mData_List.Post;
    application.MessageBox('该预结单号不存在，请重新选择！','系统提示',MB_ICONINFORMATION);
    Exit;
  end;
  If qry.RecordCount=1 then
  begin
    mData_List.Edit;
    mData_List['FWorkBudgetListID']:=qry.FieldByName('FWorkBudgetListID').Value;
    mData_List.Post;
  end;
  If (qry.RecordCount>0) and (qry.RecordCount<>1) then
  begin
    selValue:=select('选择预结算单信息','FNumber','FParentNumber','FNumber','FName',qry);
    If (Length(selValue)>0)  then
    begin
      mData_List.Edit;
      mData_List['FWorkBudgetListID']:=qry.FieldByName('FWorkBudgetListID').Value;
      mData_List.Post;
    end
    else
      application.MessageBox('请选择明细！','系统提示',MB_ICONINFORMATION);
  end;


  If  mData_List['FWorkBudgetListID']<>0 and mData_List['FWorkBudgetListID']<>Null then
  begin
    try
      qry.SQL.Text:='Select * from  V_WorkBudgetList with(nolock) '
                   +'where FWorkBudgetListID=:FWorkBudgetListID ';
      qry.Parameters.FindParam('FWorkBudgetListID').value:=mData_List['FWorkBudgetListID'];
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
      mData_List['FWorkBudgetNum']:=qry.FieldByName('FWorkBudgetNum').Value;
      mData_List['FWorkBudgetDate']:=qry.FieldByName('FWorkBudgetDate').Value;
      mData_List['FWorkbudgetAmount']:=qry.FieldByName('FWorkbudgetAmount').Value;
      mData_List['FWorkItemAmount']:=qry.FieldByName('FWorkItemAmount').Value;
      mData_List['FWorkItemBalanceAmount']:=qry.FieldByName('FWorkItemBalanceAmount').Value;
      mData_List['FWorkInvoiceDate']:=qry.FieldByName('FWorkInvoiceDate').Value;
      mData_List['FWorkInvoiceAmount']:=qry.FieldByName('FWorkInvoiceAmount').Value;

      {mData_List['FWorkItemAmount']:=qry.FieldByName('FWorkItemAmount').Value;
      mData_List['FWorkItemBalanceAmount']:=qry.FieldByName('FWorkItemBalanceAmount').Value;
      mData_List['FWorkItemBudgetAmount']:=qry.FieldByName('FWorkItemBudgetAmount').Value;
      mData_List['FWorkItemPayMentAmount']:=qry.FieldByName('FWorkItemPayMentAmount').Value;
      mData_List['FTaxRate']:=qry.FieldByName('FTaxRate').Value;  }
      mData_List.Post;
    end
    else
    begin
      mData_List.Edit;
      mData_List['FWorkItemNum']:='';
      mData_List['FWorkItemDate']:=Null;
      mData_List['FBranchFileNo']:='';
      mData_List['FClientShortName']:='';

      mData_List['FWorkBudgetNum']:='';
      mData_List['FWorkBudgetDate']:=Null;
      mData_List['FWorkbudgetAmount']:=0.00;
      mData_List['FWorkItemAmount']:=0.00;
      mData_List['FWorkItemBalanceAmount']:=0.00;
      mData_List['FWorkInvoiceDate']:=Null;
      mData_List['FWorkInvoiceAmount']:=0.00;


     { mData_List['FAgentName']:='';
      mData_List['FBranchItemNumber']:='';
      mData_List['FWorkItemAmount']:=0.00;
      mData_List['FWorkItemBalanceAmount']:=0.00;
      mData_List['FWorkItemBudgetAmount']:=0.00;
      mData_List['FWorkItemPayMentAmount']:=0.00;
      mData_List['FTaxRate']:=0; }
      mData_List.Post;
    end
  end;


end;

procedure TFrm_WorkPayment.FWorkBudgetNumPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  Act_FWorkBudgetNum.Execute;
end;

procedure TFrm_WorkPayment.MDataBeforePost(DataSet: TDataSet);
begin
  inherited;
  If DataSet['FAgentID']=Null then DataSet['FAgentID']:=0;
  If DataSet['FAgentName']=Null then DataSet['FAgentName']:='';

end;

procedure TFrm_WorkPayment.XHGetDisplayText(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; var AText: String);
begin
  inherited;
  atext:=inttostr(arecord.Index+1);

end;

end.
