unit Main_PermissionList;

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
  TFrm_PermissionList = class(TFrm_GridBass)
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
    TB_Edit: TToolButton;
    TB_Exit: TToolButton;
    RzSizePanel2: TRzSizePanel;
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
    MData_Item: TdxMemData;
    DS_Mdata_Item: TDataSource;
    DS_Mdata_List: TDataSource;
    MData_List: TdxMemData;
    cxGrid_Item: TcxGrid;
    cxGV_Item: TcxGridDBTableView;
    cxGL_Item: TcxGridLevel;
    MyTreeView_Item: TTreeView;
    PopupMenu1: TPopupMenu;
    Act_MaxID: TAction;
    Act_Sel: TAction;
    cxGrid_List: TcxGrid;
    cxGV_List: TcxGridDBTableView;
    Num_List: TcxGridDBColumn;
    FPermissionListID_List: TcxGridDBColumn;
    cxGL_List: TcxGridLevel;
    Act_Edit: TAction;
    Image2: TImage;
    P_Btn: TPanel;
    CancelBtn_M: TcxButton;
    OKBtn_M: TcxButton;
    ADOProc: TADOStoredProc;
    DS_ADOProc: TDataSource;
    Act_Check: TAction;
    FPermissionID_List: TcxGridDBColumn;
    Act_MaxNum: TAction;
    FPermissionID_Item: TcxGridDBColumn;
    FPermission_Item: TcxGridDBColumn;
    Act_FQuotationType: TAction;
    NumID_List: TcxGridDBColumn;
    cxGrid_Quotation: TcxGrid;
    cxGV_Quotation: TcxGridDBTableView;
    Num_Quotation: TcxGridDBColumn;
    SSBM_Quotation: TcxGridDBColumn;
    Roles_Quotation: TcxGridDBColumn;
    MC_Quotation: TcxGridDBColumn;
    SEX_Quotation: TcxGridDBColumn;
    PWD_Quotation: TcxGridDBColumn;
    Interphone_Quotation: TcxGridDBColumn;
    Outsidephone_Quotation: TcxGridDBColumn;
    FFax_Quotation: TcxGridDBColumn;
    FMail_Quotation: TcxGridDBColumn;
    GW_Quotation: TcxGridDBColumn;
    FDepartmentID_Quotation: TcxGridDBColumn;
    FAgentID_Quotation: TcxGridDBColumn;
    FTeam_Quotation: TcxGridDBColumn;
    FQuotationListRemark_Quotation: TcxGridDBColumn;
    FApprovalItemNum_Quotation: TcxGridDBColumn;
    FQuotationNum_Quotation: TcxGridDBColumn;
    FItemNumber_Quotation: TcxGridDBColumn;
    FClientShortName_Quotation: TcxGridDBColumn;
    FApprovalStuffID_Quotation: TcxGridDBColumn;
    FQuotationItemID_Quotation: TcxGridDBColumn;
    FPermissionID_Quotation: TcxGridDBColumn;
    NumID_Quotation: TcxGridDBColumn;
    cxGL_Quotation: TcxGridLevel;
    GW_List: TcxGridDBColumn;
    procedure FormResize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TB_EXITClick(Sender: TObject);
    procedure TB_AppClick(Sender: TObject);
    procedure TB_DelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure MyTreeView_ItemExpanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure MyTreeView_ItemChange(Sender: TObject; Node: TTreeNode);
    procedure TB_RefClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure OKBtn_MClick(Sender: TObject);
    procedure CancelBtn_MClick(Sender: TObject);
    procedure SelCancelBtnClick(Sender: TObject);
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
    procedure Act_MaxIDExecute(Sender: TObject);
    procedure cxGrid_ItemContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure cxGV_ListCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure cxGV_ItemFocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure TB_EditClick(Sender: TObject);
    procedure Act_FQuotationTypeExecute(Sender: TObject);
    procedure FPermission_ItemPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxGrid_ListContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure cxGrid_QuotationContextPopup(Sender: TObject;
      MousePos: TPoint; var Handled: Boolean);
  private
    P_List,P_Wet,P_Sort:String;
    P_i:boolean;


    { Private declarations }
    function AddMain:bool;
    function AddList:bool;
    function AddRd:bool;
    function EditRd:bool;
    function DelRd:bool;
    function EditListRd:bool;
    function EditItemRd:bool;



  public
    P_state,P_PackNo,P_MaxID,P_Status:Integer;
    ListFNumber_PTItem,ListFNumber_PTList,P_MaxNum:string;
    P_Isleaf_PTList :Integer;
    P_List_PTList:string;
    GV,Gr,Gm,Mn:string;
    AFirstColumnStyle: TcxStyle;
    { Public declarations }
  end;

var
  Frm_PermissionList: TFrm_PermissionList;


implementation

uses FRMDATA, COMMON, FrmSelect, ProgBar, PROGRASS, Main_Ship;

{$R *.dfm}


function TFrm_PermissionList.DelRd: bool;
var
 qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Delete from T_Permission where FPermissionID=:FPermissionID';
    qry.Parameters.FindParam('FPermissionID').value:=MData_Item['FPermissionID'];
    result:=qry.ExecSQL>=0;
  finally
    ;
  end;
  qry.Free;
end;


function TFrm_PermissionList.AddMain: bool;
var
 qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  Act_MaxID.Execute;//取最大ID
  Act_MaxNum.Execute;//取最大NUm
  try
    qry.SQL.Text:='Insert into T_Permission(FPermissionID,FPermission) '
                 +'values(:FPermissionID,:FPermission)';
    with qry.Parameters do
    begin
       FindParam('FPermissionID').value:=P_MaxID;
       FindParam('FPermission').value:=mData_Item['FPermission'];
     end;
     result:=qry.ExecSQL>=1;
  finally
     ;
  end;
  mData_Item.Edit;
  mData_Item['FPermissionID']:=P_MaxID;
  mData_Item.Post;

  qry.Free;
end;

function TFrm_PermissionList.AddList: bool;
var
  qry: TADOQuery;
  i:Integer;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  result:=False;

  If mData_List.RecordCount<=0 then
  begin
    result:=True;
    Exit;
  end;
  try
     qry.SQL.Text:='Insert into T_PermissionList(FPermissionListID,FPermissionID) '
                  +'values(:FPermissionListID,:FPermissionID)';
     mData_List.First;
     while not mData_List.eof do
     begin
       If ((mData_List['FPermissionID']<>0) and (mData_List['FPermissionID']<>Null)) then
       begin
         If qry.Active then qry.Close;
         with qry.Parameters do
         begin
           qry.Parameters.FindParam('FPermissionListID').value:= P_MaxID;
           qry.Parameters.FindParam('FPermissionID').value:= mData_List['FPermissionID'];
         end;
         result:=qry.ExecSQL>=1;
         if not result then break;
       end;
       mData_List.Next;
     end;
   finally
     qry.Free;
   end;

end;


function TFrm_PermissionList.AddRd: bool;
var
 qry:TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  result:=False;

  MData_Item.Edit;
  MData_Item.Post;

  mdata_List.Edit;
  mdata_List.Post;
  If mdata_List.RecordCount<=0 then
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


function TFrm_PermissionList.EditRd:bool;
var
 qry:TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  mdlData.conn.BeginTrans;
  try
    if EditItemRd then  //1   主表修改
    begin
      result:=True;
      if EditListRd then //2    明细表修改
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
    Application.MessageBox('修改数据失败，请重试。', '保存错误', 0 or MB_ICONINFORMATION);
    mdlData.Conn.RollBackTrans;
  end;

{  mdlData.conn.BeginTrans;
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
     }
end;

function TFrm_PermissionList.EditItemRd:bool;
var
  qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.EnableBCD:=False;//小数位数>4

    //result:=False;
  If mData_Item.RecordCount<=0 then
  begin
    result:=True;
    Exit;
  end;

  mData_Item.Edit;
  mData_Item.Post;

  try
   qry.SQL.Text:='Update T_Permission set FPermission=:FPermission '
                +'where FPermissionID=:FPermissionID';
     mData_Item.First;
    while not mData_Item.eof do
    begin
      If (mData_Item['FPermission']<>'') and (mData_Item['FPermission']<>'')  then
      begin
        If qry.Active then qry.Close;
        with qry.Parameters do
        begin
          FindParam('FPermission').value:=mData_Item['FPermission'];;
          FindParam('FPermissionID').value:=mData_Item['FPermissionID'];;
        end;
        result:=qry.ExecSQL>=1;
        if not result then break;

      end;
      mData_Item.Next;
    end;
  finally
    ;
  end;
  qry.Free;

end;

function TFrm_PermissionList.EditListRd:bool;
var
 qry,qry1:TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry1:=TADOQuery.Create(Self);
  qry1.ConnectionString:=mdlData.ReadConnStr;

  result:=True;

  If mData_List.RecordCount<=0 then
  begin
    result:=True;
    Exit;
  end;

  mData_List.Edit;
  mData_List.Post;

  mData_List.First;
  while not mData_List.eof do
  begin
    //新增
    If mData_List['IsApp'] and not mData_List['IsDel'] then
    begin
      try
        qry.SQL.Text:='Insert into T_PermissionList(FPermissionID,NumID)'
                    +'values (:FPermissionID,:NumID)';
        qry.Parameters.FindParam('FPermissionID').value:=mData_Item['FPermissionID'];
        qry.Parameters.FindParam('NumID').value:=mData_List['NumID'];
        result:=qry.ExecSQL>=1;
        if not result then break;
      finally
        ;
      end;
    end;
     //删除
    If not mData_List['IsApp'] and mData_List['IsDel'] then
    begin
      try
        qry.SQL.Text:='Delete from T_PermissionList  where FPermissionID=:FPermissionID and NumID=:NumID ';
        qry.Parameters.FindParam('FPermissionID').value:=mData_Item['FPermissionID'];
        qry.Parameters.FindParam('NumID').value:=mData_List['NumID'];
        result:=qry.ExecSQL>=1;
        if not result then break;
      finally
          ;
      end;
    end;
    If mData_List['IsApp']=mData_List['IsDel'] then
       result:=True;

    mData_List.Next;
  end;
  qry.Free;

end;


procedure TFrm_PermissionList.FormResize(Sender: TObject);
begin
  inherited;
  Self.Caption:=UserFDepartmentName+'权限组角色';
end;

procedure TFrm_PermissionList.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=cafree;
  Frm_PermissionList:=nil;
end;

procedure TFrm_PermissionList.TB_EXITClick(Sender: TObject);
begin
  inherited;
  Self.Close;
end;

procedure TFrm_PermissionList.TB_AppClick(Sender: TObject);
Var qry: TADOQuery;
    i,j:Integer;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  P_state :=0; //新增
  mdata_Item.Close;
  mdata_List.Close;

  try
    qry.SQL.Text:='select * from V_Permission with(nolock) where FPermissionID=0';
    qry.Open;
  finally
     ;
  end;
  mdata_Item.CopyFromDataSet(qry);
  mdata_Item.Active:=True;
  mdata_Item.Append;
  mdata_Item.Edit;
  mdata_Item.Post;

  try
    qry.SQL.Text:='select * from V_PermissionList with(nolock) where FPermissionID=0';
    qry.Open;
  finally
     ;
  end;
  mdata_List.CopyFromDataSet(qry);
  for i:=1 to 5 do
  begin
    mdata_List.Append;
    mdata_List['FPermissionID']:=0;
    mdata_List['NumID']:=0;
    mdata_List['Num']:='';
    mdata_List.Post;
  end;

  Act_Set_Open_M.Execute;

end;

procedure TFrm_PermissionList.TB_DelClick(Sender: TObject);
var
  qry:TADOQuery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

{  try
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
  end;}

  If application.MessageBox(Pchar('警告：是否删除'+P_List_PTList+'的角色组信息？'+chr(13)+chr(13)
                                 +'删除数据操作将不可恢复，确定要删除吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
  If application.MessageBox(Pchar('再次警告：是否删除：'+P_List_PTList+'的角色组信息？'+chr(13)+chr(13)
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
  mdata_Item.Close;
  mdata_List.Close;
  qry.Free;

end;

procedure TFrm_PermissionList.FormCreate(Sender: TObject);
begin
  inherited;
  TB_App.Visible:= mdlData.PermissionCheckRights(TFrm_PermissionList.ClassName,'新增');
  P_state:=2;

end;

procedure TFrm_PermissionList.MyTreeView_ItemExpanding(Sender: TObject;
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
  qry.SQL.Text:='Select * from VT_Permission with(nolock) where FParentNumber= '''
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
    with MyTreeView_Item.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('Isleaf').value;
    end;
    qry.Next;
  end;
end;

procedure TFrm_PermissionList.MyTreeView_ItemChange(Sender: TObject; Node: TTreeNode);
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
    mdata_List.DisableControls;
    cxGV_List.DataController.DataModeController.GridMode:=True;
    cxGV_List.DataController.DataModeController.SmartRefresh:=True;
    If P_Isleaf_PTList>=0 then
    begin
      If MyItemListFieldWhere(qry,Mdata_Item,' *  ','V_Permission','FFullNumber',ListFNumber_PTList,' ','FFullNumber') then
         cxGvColumn(cxGv_Item,Mdata_Item);
    end
    else
    begin
      Mdata_Item.Close;
      Mdata_List.Close;
    end;
    mdata_List.EnableControls;
    cxGV_List.DataController.DataModeController.GridMode:=False;
    cxGV_List.DataController.DataModeController.SmartRefresh:=False;

 end;

end;

procedure TFrm_PermissionList.TB_RefClick(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If not TreeVeiwListWhere(qry,MyTreeView_Item,'VT_Permission','') then
      Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
end;

procedure TFrm_PermissionList.FormShow(Sender: TObject);
begin
  inherited;
  TB_Ref.Click;
end;

procedure TFrm_PermissionList.OKBtn_MClick(Sender: TObject);
var qry: TADOQuery;
    P_FBalanceNum:String;
    i:Integer;
    I_index,P_FPlanWeekPartsID:Integer;
    P_FPlanWeekPartsAdd:string;

begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  MData_Item.open;
  MData_Item.Edit;
  MData_Item.Post;

  if (MData_Item['FQuotationType']='') or (MData_Item['FQuotationType']=null)  then
  begin
    application.MessageBox('角色组不能为空！','系统提示',MB_ICONWARNING);
    Exit;
  end;
  if (MData_Item['FPermissionID']=0) or (MData_Item['FPermissionID']=null)  then
  begin
    application.MessageBox('角色组ID不能为空！','系统提示',MB_ICONWARNING);
    Exit;
  end;



  mdata_List.open;
  mdata_List.Edit;
  mdata_List.Post;

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
        mdata_Item.Edit;
        mdata_Item['FPermissionID']:=0;
        mdata_Item['FPermission']:='';
        mdata_Item.Post;
        MData_List.First;
        While not MData_List.eof do
        begin
          MData_List.Edit;
          MData_List['NumID']:=0;
          MData_List.Post;
          MData_List.Next;
        end;
      end
      else
      begin
        CancelBtn_M.Click;
        Exit;
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
      CancelBtn_M.Click;
    end
    else
      application.MessageBox('修改记录保存失败！','系统提示',MB_ICONWARNING);
  end;
  MyTreeView_Item.Enabled:=True;
  cxGrid_Item.Enabled:=True;
  qry.Free;

end;

procedure TFrm_PermissionList.CancelBtn_MClick(Sender: TObject);
begin
  inherited;
 // If (P_state=0) and (mData_PTItem['FPlanWeekDetailID']=0 or mData_PTItem['FPlanWeekDetailID']=null ) then
  begin
    MData_Item.Close;
    MData_List.Close;
  end;
  Act_Set_Close_M.Execute;
end;

procedure TFrm_PermissionList.SelCancelBtnClick(Sender: TObject);
begin
  inherited;
  PC_Ship.ActivePage:=TS_Ship;
  TS_Ship.TabEnabled:=True;

end;

procedure TFrm_PermissionList.TB_EditLListClick(Sender: TObject);
var
   AFirstColumnStyle: TcxStyle;
begin
  inherited;
  P_state:=1;
end;

procedure TFrm_PermissionList.Act_Set_Open_MExecute(Sender: TObject);
var AFirstColumnStyle: TcxStyle;
begin
  inherited;
  MyTreeView_Item.Enabled:=False;
  RSP_CList.Enabled:=False;
  P_Btn.Visible:=True;
  OkBtn_M.Visible:=True;
  CancelBtn_M.Visible:=True;
  ToolBar_HItem.Visible:=False;
  cxGV_Item.OptionsData.Editing:=True;
  cxGV_List.OptionsData.Editing:=True;

 { FISApproval_Item.Options.Editing:=True;
  FQuotationType_Item.Options.Editing:=True;
  FApprovalItemNum_Item.Options.Editing:=True;
  FPaymentType_Item.Options.Editing:=True;
  FArrivalAddress_Item.Options.Editing:=True;
  FArrivalDate_Item.Options.Editing:=True;
  FLeadTime_Item.Options.Editing:=True;
  FOfferPeriod_Item.Options.Editing:=True;
  FSupplierName_Item.Options.Editing:=True;

  FPrice_List.Options.Editing:=True;
  }
Act_FQuotationType.Execute;

  If P_state<>1 then  //修改
  begin
    cxGV_Item.OptionsData.Editing:=True;
 //   FItemNumber_Item.Options.Editing:=True;
  end;

  cxGV_List.OptionsData.Editing:=True;
{
    //列颜色
  AFirstColumnStyle := TcxStyle.Create(Self);
  AFirstColumnStyle.Color := clMenu; //底色
  AFirstColumnStyle.TextColor := clBlue;        //字体颜色

  cxGV_PTList.Columns[FMakeBOMWet_PTList.Index].Styles.Content := AFirstColumnStyle;
  cxGV_PTList.Columns[FMakeBOMPackQry_PTList.Index].Styles.Content := AFirstColumnStyle;
  cxGV_PTList.Columns[FTeamName_PTList.Index].Styles.Content := AFirstColumnStyle;
  cxGV_PTList.Columns[Sel_PTList.Index].Styles.Content := AFirstColumnStyle;
  cxGV_PTList.Columns[FPlanWeekPartsAdd_PTList.Index].Styles.Content := AFirstColumnStyle;
 }
end;

procedure TFrm_PermissionList.Act_Set_Close_MExecute(Sender: TObject);
var
   AFirstColumnStyle: TcxStyle;
begin
  inherited;
     //列颜色
  {AFirstColumnStyle := TcxStyle.Create(Self);
  AFirstColumnStyle.Color := clWindow; //底色
  AFirstColumnStyle.TextColor := clWindowText;        //字体颜色

  cxGV_List.Columns[FMakeBOMWet_PTList.Index].Styles.Content := AFirstColumnStyle;
  cxGV_List.Columns[FMakeBOMPackQry_PTList.Index].Styles.Content := AFirstColumnStyle;
  cxGV_List.Columns[FTeamName_PTList.Index].Styles.Content := AFirstColumnStyle;
  cxGV_List.Columns[Sel_PTList.Index].Styles.Content := AFirstColumnStyle;
  cxGV_List.Columns[FPlanWeekPartsAdd_PTList.Index].Styles.Content := AFirstColumnStyle;
  }
  PC_Ship.Enabled:=True;

  RSP_CList.Enabled:=True;

  MyTreeView_Item.Enabled:=True;
  P_Btn.Visible:=False;

  cxGV_Item.OptionsData.Editing:=False;
  cxGV_List.OptionsData.Editing:=False;


  ToolBar_HItem.Visible:=True;


  P_state:=2;


end;

procedure TFrm_PermissionList.Act_MenuExecute(Sender: TObject);
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

procedure TFrm_PermissionList.Act_Menu_SetExecute(Sender: TObject);
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

procedure TFrm_PermissionList.N_EditClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_PermissionList.N_FilterClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_PermissionList.N_SortClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_PermissionList.N_GroupClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_PermissionList.N_SetClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_PermissionList.N_OutClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_PermissionList.Act_MaxIDExecute(Sender: TObject);
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
      value:='T_Permission';
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

procedure TFrm_PermissionList.cxGrid_ItemContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV_Item';
  Gm:='mdata_Item';
  Gr:='cxGrid_Item';
  Act_Menu_Set.Execute;
end;

procedure TFrm_PermissionList.cxGV_ListCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
 { If P_state<>2   then
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
  end; }
end;

procedure TFrm_PermissionList.cxGV_ItemFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
var qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If  P_state=2 then   //不在新增修改状态
  begin
    begin
      If (mData_Item['FPermissionID']<>0) and (mData_Item['FPermissionID']<>Null) then
      begin
        If MyItemListID(qry,Mdata_List,'V_PermissionList',' FPermissionID='+IntToStr(mData_Item['FPermissionID']),'FFullNumber',) then
      end;
    end;
  end;
end;

procedure TFrm_PermissionList.TB_EditClick(Sender: TObject);
begin
  inherited;
  P_state :=1;
  Act_Set_Open_M.Execute;
  L_title.Caption:=UserFDepartmentName+'权限角色组信息修改';
end;

procedure TFrm_PermissionList.Act_FQuotationTypeExecute(Sender: TObject);
var qry: TADOQuery;
begin
  inherited;
end;

procedure TFrm_PermissionList.FPermission_ItemPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  mData_Item.Edit;
  mData_Item.Post;
  If mData_Item['FPermission']=Null then
  begin
    mData_Item.Edit;
    mData_Item['FPermission']:='';
    mData_Item.Post;
  end;
  try
    qry.SQL.Text:='select * from  V_Permission with(nolock) '
                 +' where Permission like :Permission order by Permission ';
    qry.Parameters.FindParam('Permission').value:='%'+mData_Item['Permission']+'%';
    qry.Open;
  finally
   ;
  end;

  If qry.RecordCount=1 then
  begin
    mData_Item.Edit;
    mData_Item['FPermission']:=qry.FieldByName('FPermission').Value;
    mData_Item.Post;
    Exit;
  end
  else
  begin
    selValue:=select('选择角色','FPermission','FPermission','FPermission','FPermission',qry);
    If (Length(selValue)>0) then
    begin
      mData_Item.Edit;
      mData_Item['FPermissionID']:=qry.FieldByName('FPermissionID').Value;
      mData_Item['FPermission']:=qry.FieldByName('FPermission').Value;
      mData_Item.Post;
    end;
  end;

end;

procedure TFrm_PermissionList.cxGrid_ListContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV_List';
  Gm:='mdata_List';
  Gr:='cxGrid_List';
  Act_Menu_Set.Execute;

end;

procedure TFrm_PermissionList.cxGrid_QuotationContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV_Quotation';
  Gm:='mdata_Quotation';
  Gr:='cxGrid_Quotation';
  Act_Menu_Set.Execute;

end;

end.


