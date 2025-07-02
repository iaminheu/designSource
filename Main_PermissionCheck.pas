unit Main_PermissionCheck;

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
  TFlatPanelUnit, cxLookAndFeelPainters, cxButtons, cxTimeEdit, jpeg,
  cxGridCardView, cxGridDBCardView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGridCustomPopupMenu, cxGridPopupMenu,
  cxFilterControl, cxDBFilterControl, ActnList, cxCalc, Menus;

type
  TFrm_PermissionCheck = class(TFrm_GridBass)
    MData: TdxMemData;
    DS_Mdata: TDataSource;
    Panel1: TPanel;
    ToolBar1: TToolBar;
    ToolButton5: TToolButton;
    ToolButton1: TToolButton;
    TB_Prin: TToolButton;
    frReport: TfrReport;
    frDBDataSet: TfrDBDataSet;
    RzSizePanel1: TRzSizePanel;
    PC_2: TRzPageControl;
    TB_Ref: TToolButton;
    TB_App: TToolButton;
    TB_Edit: TToolButton;
    TB_Del: TToolButton;
    MyTreeView: TTreeView;
    ImageList: TImageList;
    actionList: TActionList;
    Act_SetOpen: TAction;
    Act_SetClose: TAction;
    Act_Set_MaxID: TAction;
    Act_Set_MaxNum: TAction;
    Act_AddRd: TAction;
    Act_EditRd: TAction;
    Act_DelRd: TAction;
    Act_AddMain: TAction;
    Act_AddList: TAction;
    Act_App: TAction;
    Act_ProductList: TAction;
    Act_Edit: TAction;
    Act_Del: TAction;
    Act_Out: TAction;
    Act_Audit: TAction;
    Act_Act_Quotation: TAction;
    Act_OK: TAction;
    Act_Down: TAction;
    Act_Ref: TAction;
    Act_Prin: TAction;
    Act_Cancel: TAction;
    TS_Permission: TRzPageControl;
    TS_Brow: TRzTabSheet;
    Panel2: TPanel;
    TS_Edit: TRzTabSheet;
    MData_Brow: TdxMemData;
    DS_Mdata_Brow: TDataSource;
    RzSizePanel4: TRzSizePanel;
    Act_Quotation: TAction;
    DS_MData_BrowList: TDataSource;
    MData_BrowList: TdxMemData;
    DS_mData_List: TDataSource;
    mData_List: TdxMemData;
    Act_MaxID: TAction;
    Act_Supplier: TAction;
    cxGrid_Brow: TcxGrid;
    cxGV_Brow: TcxGridDBTableView;
    FPermissionID_Brow: TcxGridDBColumn;
    cxGridDBCardView1: TcxGridDBCardView;
    cxGridDBCardViewRow1: TcxGridDBCardViewRow;
    cxGridDBCardViewRow2: TcxGridDBCardViewRow;
    cxGridDBCardViewRow3: TcxGridDBCardViewRow;
    cxGridDBCardViewRow4: TcxGridDBCardViewRow;
    cxGridDBCardViewRow5: TcxGridDBCardViewRow;
    cxGridDBCardViewRow6: TcxGridDBCardViewRow;
    cxGridDBCardViewRow7: TcxGridDBCardViewRow;
    cxGridDBCardViewRow8: TcxGridDBCardViewRow;
    cxGridDBCardViewRow9: TcxGridDBCardViewRow;
    cxGridDBCardViewRow10: TcxGridDBCardViewRow;
    cxGridDBCardViewRow11: TcxGridDBCardViewRow;
    cxGridDBCardViewRow12: TcxGridDBCardViewRow;
    cxGridDBCardViewRow13: TcxGridDBCardViewRow;
    cxGridDBCardViewRow14: TcxGridDBCardViewRow;
    cxGridDBCardViewRow15: TcxGridDBCardViewRow;
    cxGridDBCardViewRow16: TcxGridDBCardViewRow;
    cxGridDBCardViewRow17: TcxGridDBCardViewRow;
    cxGridDBCardViewRow18: TcxGridDBCardViewRow;
    cxGridDBCardViewRow19: TcxGridDBCardViewRow;
    cxGridDBCardViewRow20: TcxGridDBCardViewRow;
    cxGridDBCardViewRow21: TcxGridDBCardViewRow;
    cxGridDBCardViewRow22: TcxGridDBCardViewRow;
    cxGridDBCardViewRow23: TcxGridDBCardViewRow;
    cxGL_Brow: TcxGridLevel;
    cxGrid_BrowList: TcxGrid;
    cxGV_BrowList: TcxGridDBTableView;
    Num_Quotation: TcxGridDBColumn;
    FPermissionListID_Quotation: TcxGridDBColumn;
    Roles_Quotation: TcxGridDBColumn;
    FPermissionID_Quotation: TcxGridDBColumn;
    NumID_Quotation: TcxGridDBColumn;
    cxGL_BrowList: TcxGridLevel;
    Panel3: TPanel;
    cxGrid: TcxGrid;
    cxGV: TcxGridDBTableView;
    FPermission: TcxGridDBColumn;
    FPermissionID: TcxGridDBColumn;
    cxGVC: TcxGridDBCardView;
    FPermission_Card: TcxGridDBCardViewRow;
    cxGL: TcxGridLevel;
    cxGLC: TcxGridLevel;
    RzSizePanel2: TRzSizePanel;
    cxGrid_ProductList: TcxGrid;
    cxGV_ProductList: TcxGridDBTableView;
    IsApp: TcxGridDBColumn;
    FCheckRights: TcxGridDBColumn;
    FCheckRightsID: TcxGridDBColumn;
    cxGL_ProductList: TcxGridLevel;
    Panel_OK: TPanel;
    OKBtn: TcxButton;
    CancelBtn: TcxButton;
    MData_Qry: TdxMemData;
    DS_MData_Qry: TDataSource;
    Act_FProvince: TAction;
    IsDel: TcxGridDBColumn;
    PM: TPopupMenu;
    N_Edit: TMenuItem;
    N_Filter: TMenuItem;
    N_Sort: TMenuItem;
    N_Group: TMenuItem;
    N_Set: TMenuItem;
    N_Out: TMenuItem;
    Act_Menu: TAction;
    Act_Menu_Set: TAction;
    FPermission_Brow: TcxGridDBColumn;
    TB_EXIT: TToolButton;
    FCheckFrmID_Brow: TcxGridDBColumn;
    FCheckFrm_Brow: TcxGridDBColumn;
    FCheckFrmCaption_Brow: TcxGridDBColumn;
    FCheckFrmCaption: TcxGridDBColumn;
    FCheckFrm: TcxGridDBColumn;
    FCheckFrmID: TcxGridDBColumn;
    FCheckFrmCaption_Card: TcxGridDBCardViewRow;
    FCheckFrm_Card: TcxGridDBCardViewRow;
    FPermissionID_Card: TcxGridDBCardViewRow;
    FCheckFrmIDCard: TcxGridDBCardViewRow;
    cxGrid_Brow_CheckRights: TcxGrid;
    cxGV_Brow_CheckRights: TcxGridDBTableView;
    FCheckRights_1: TcxGridDBColumn;
    FCheckRightsID_1: TcxGridDBColumn;
    cxGL_Brow_CheckRights: TcxGridLevel;
    FDepartmentName_Quotation: TcxGridDBColumn;
    GW_Quotation: TcxGridDBColumn;
    procedure FormResize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TB_EXITClick(Sender: TObject);
    procedure MyTreeViewChange(Sender: TObject; Node: TTreeNode);
    procedure MyTreeViewExpanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Act_AppExecute(Sender: TObject);
    procedure Act_EditExecute(Sender: TObject);
    procedure Act_DelExecute(Sender: TObject);
    procedure Act_RefExecute(Sender: TObject);
    procedure Act_SetOpenExecute(Sender: TObject);
    procedure Act_SetCloseExecute(Sender: TObject);
    procedure Act_OKExecute(Sender: TObject);
    procedure Act_CancelExecute(Sender: TObject);
    procedure cxGV_BrowDblClick(Sender: TObject);
    procedure cxGVCDblClick(Sender: TObject);
    procedure Act_QuotationExecute(Sender: TObject);
    procedure cxGV_BrowFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure Act_MaxIDExecute(Sender: TObject);
    procedure Act_ProductListExecute(Sender: TObject);
    procedure Act_SupplierExecute(Sender: TObject);
    procedure FSupplierShortName_CardPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxGrid_BrowContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure cxGrid_BrowListContextPopup(Sender: TObject;
      MousePos: TPoint; var Handled: Boolean);
    procedure Act_MenuExecute(Sender: TObject);
    procedure Act_Menu_SetExecute(Sender: TObject);
    procedure N_EditClick(Sender: TObject);
    procedure N_FilterClick(Sender: TObject);
    procedure N_SortClick(Sender: TObject);
    procedure N_GroupClick(Sender: TObject);
    procedure N_SetClick(Sender: TObject);
    procedure N_OutClick(Sender: TObject);
    procedure cxGrid_ProductListContextPopup(Sender: TObject;
      MousePos: TPoint; var Handled: Boolean);
    procedure cxGrid_Brow_CheckRightsContextPopup(Sender: TObject;
      MousePos: TPoint; var Handled: Boolean);
    procedure FPermission_CardPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FCheckFrmCaption_CardPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    ListItemFNumber:String;
    { Private declarations }
    function AddRd:bool;
    function AddMain:bool;
    function AddList:bool;
    function EditRd:bool;
    function EditListRd:bool;
    function EditItemRd:bool;
    function DelRd:bool;


  public
    P_state,P_Isleaf,P_MaxID:integer;
    { Public declarations }
  end;

var
  Frm_PermissionCheck: TFrm_PermissionCheck;


implementation

uses FRMDATA, COMMON, FrmSelect, ProgBar, PROGRASS;

{$R *.dfm}

function TFrm_PermissionCheck.DelRd: bool;
var
 qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Delete from T_PermissionCheck where FPermissionCheckID=:FPermissionCheckID';
    with qry.Parameters do
    begin
      FindParam('FPermissionCheckID').value:=mdata['FPermissionCheckID'];
    end;
    result:=qry.ExecSQL>=1;
  finally
    qry.Free;
  end;
end;

function TFrm_PermissionCheck.AddMain: bool;
var
 qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  Act_MaxID.Execute;//取最大ID
 try
    qry.SQL.Text:='Insert into T_PermissionCheck(FPermissionCheckID,FPermissionID,FCheckFrmID)'
                 +'values(:FPermissionCheckID,:FPermissionID,:FCheckFrmID)';
    mData.First;
    while not mData.eof do
    begin
      If qry.Active then qry.Close;
      with qry.Parameters do
      begin
        FindParam('FPermissionCheckID').value:=P_MaxID;
        FindParam('FPermissionID').value:=mdata['FPermissionID'];
        FindParam('FCheckFrmID').value:=mdata['FCheckFrmID'];
      end;
      result:=qry.ExecSQL>=1;
      if not result then
         break;
      mData.Next;
    end;
  finally
    ;
  end;
  mData.Edit;
  mData['FPermissionCheckID']:=P_MaxID;
  mData.Post;
  qry.Free;
end;

function TFrm_PermissionCheck.AddList: bool;
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
     qry.SQL.Text:='Insert into T_PermissionCheckList(FCheckRightsID,FPermissionCheckID) '
                  +'values(:FCheckRightsID,:FPermissionCheckID)';
     mData_List.First;
     while not mData_List.eof do
     begin
       If (mData_List['IsApp']=True)  then
       begin
         If qry.Active then qry.Close;
         with qry.Parameters do
         begin
           qry.Parameters.FindParam('FCheckRightsID').value:= mData_List['FCheckRightsID'];
           If  P_state=0 then
               qry.Parameters.FindParam('FPermissionCheckID').value:= P_MaxID;
           If  P_state=1 then
               qry.Parameters.FindParam('FPermissionCheckID').value:= mData['FPermissionCheckID'];
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


function TFrm_PermissionCheck.AddRd: bool;
var
 qry:TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  result:=False;

  MData.Edit;
  MData.Post;

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

function TFrm_PermissionCheck.EditRd: bool;
var
 qry:TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  result:=False;

  MData.Edit;
  MData.Post;

  mdata_List.Edit;
  mdata_List.Post;
  If mdata_List.RecordCount<=0 then
  begin
    result:=True;
    Exit;
  end;

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
end;

function TFrm_PermissionCheck.EditItemRd:bool;
var
  qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.EnableBCD:=False;//小数位数>4

    //result:=False;
  If mData.RecordCount<=0 then
  begin
    result:=True;
    Exit;
  end;

  mData.Edit;
  mData.Post;

  try
   qry.SQL.Text:='Update T_PermissionCheck set FPermissionID=:FPermissionID,FCheckFrmID=:FCheckFrmID '
                +'where FPermissionCheckID=:FPermissionCheckID';
     mData.First;
    while not mData.eof do
    begin
      If (mData['FPermission']<>'') and (mData['FPermission']<>'')  then
      begin
        If qry.Active then qry.Close;
        with qry.Parameters do
        begin
          FindParam('FPermissionID').value:=mdata['FPermissionID'];;
          FindParam('FCheckFrmID').value:=mdata['FCheckFrmID'];;
          FindParam('FPermissionCheckID').value:=mdata['FPermissionCheckID'];
        end;
        result:=qry.ExecSQL>=1;
        if not result then break;

      end;
      mData.Next;
    end;
  finally
    ;
  end;
  qry.Free;

end;

function TFrm_PermissionCheck.EditListRd:bool;
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
        qry.SQL.Text:='Insert into T_PermissionCheckList(FCheckRightsID,FPermissionCheckID)'
                    +'values (:FCheckRightsID,:FPermissionCheckID)';
        qry.Parameters.FindParam('FCheckRightsID').value:=mData_List['FCheckRightsID'];
        qry.Parameters.FindParam('FPermissionCheckID').value:=mData['FPermissionCheckID'];
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
        qry.SQL.Text:='Delete from T_PermissionCheckList  where FCheckRightsID=:FCheckRightsID and FPermissionCheckID=:FPermissionCheckID ';
        qry.Parameters.FindParam('FCheckRightsID').value:=mData_List['FCheckRightsID'];
        qry.Parameters.FindParam('FPermissionCheckID').value:=mData['FPermissionCheckID'];
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
procedure TFrm_PermissionCheck.FormResize(Sender: TObject);
begin
  inherited;
  L_title.Caption:=UserFDepartmentName+'表单权限设置';
  Self.Caption:=UserFDepartmentName+'表单权限设置';
end;

procedure TFrm_PermissionCheck.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=CaFree;
  Frm_PermissionCheck:=nil;
end;

procedure TFrm_PermissionCheck.TB_EXITClick(Sender: TObject);
begin
  inherited;
  self.Close;
end;

procedure TFrm_PermissionCheck.MyTreeViewChange(Sender: TObject; Node: TTreeNode);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.EnableBCD:=False;//小数位数>4
  If Node = nil then Exit;
  with PTree(Node.Data)^ do
  begin
    ListItemFNumber:=PTree(Node.Data).FNumber;
    P_Isleaf:=PTree(Node.Data).Isleaf;
    If not MyItemList(qry,Mdata_Brow,'V_PermissionCheck','FFullNumber',ListItemFNumber,'FFullNumber') then
    begin
      Mdata_Brow.Open;
    end;
    If not MyItemList(qry,Mdata,'V_PermissionCheck','FFullNumber',ListItemFNumber,'FFullNumber') then
    begin
      mdata.Open;
    end;
    {If P_Isleaf=1 then
    begin
      Act_Edit.Visible:= mdlData.PermissionCheckRights(TFrm_Permission.ClassName,'修改');
      Act_Del.Visible:=mdlData.PermissionCheckRights(TFrm_Permission.ClassName,'删除');
    end
    else
    begin
      Act_Edit.Visible:=False;
      Act_Del.Visible:=False;
    end;}
  end;
end;

procedure TFrm_PermissionCheck.MyTreeViewExpanding(Sender: TObject;
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

  qry.SQL.Text:='Select FNumber,FParentNumber,FName,'
               +'Isleaf from VT_PermissionCheck with(nolock) where FParentNumber= '''
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
    P.Flag := cNoLoadFlag;                         // 新节点，未加载标志
    with MyTreeView.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('Isleaf').value;
    end;
    qry.Next;
  end;
end;

procedure TFrm_PermissionCheck.FormCreate(Sender: TObject);
var AFirstColumnStyle: TcxStyle;
begin
  inherited;
   P_state:=2;
  //列颜色
  AFirstColumnStyle := TcxStyle.Create(Self);
  AFirstColumnStyle.Color := clAqua;
  AFirstColumnStyle.TextColor := clBlue;

  TS_Brow.TabVisible:=True;
  TS_Edit.TabVisible:=False;
  TS_Permission.ActivePage:=TS_Brow;

  cxGV.Columns[0].Styles.Content := AFirstColumnStyle;
  cxGV.Columns[1].Styles.Content := AFirstColumnStyle;

  //Act_App.Visible:= mdlData.PermissionCheckRights(TFrm_PermissionCheck.ClassName,'新增');
  //Act_Prin.Visible:= mdlData.PermissionCheckRights(TFrm_PermissionCheck.ClassName,'打印');
  //Act_Out.Visible:= mdlData.PermissionCheckRights(TFrm_PermissionCheck.ClassName,'打印');
end;

procedure TFrm_PermissionCheck.FormShow(Sender: TObject);
begin
  TB_Ref.Click;
end;

procedure TFrm_PermissionCheck.Act_AppExecute(Sender: TObject);
var
 qry:TADOquery;
begin
  P_state:=0;
  L_title.Caption:=UserFDepartmentName+'角色组信息新增';
  Act_SetOpen.Execute;

  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Select a.FCheckRightsID,a.FCheckRights,isnull(b.FPermissionCheckID,0) as FPermissionCheckID, '
                 +'case isnull(b.FCheckRightsID,0) when 0 then cast(0 as bit) else cast(1 as bit) end as IsSel, '
                 +'case isnull(b.FCheckRightsID,0) when 0 then cast(0 as bit) else cast(1 as bit) end as IsDel, '
                 +'case isnull(b.FCheckRightsID,0) when 0 then cast(0 as bit) else cast(1 as bit) end as IsApp '
                 +' from T_CheckRights as a left outer join '
                 +'(select * from T_PermissionCheckList where FPermissionCheckID=:FPermissionCheckID) as b '
                 +' on a.FCheckRightsID=b.FCheckRightsID order by a.FCheckRightsID';
    qry.Parameters.FindParam('FPermissionCheckID').value:=0;
    qry.Open;
  finally
     ;
  end;
  mData_List.CopyFromDataSet(qry);
  mData_List.Active:=True;

  try
    qry.SQL.Text:='Select * from V_PermissionCheckList with(nolock) where FPermissionCheckListID=0';
    qry.Open;
  finally
     ;
  end;
  mdata.CopyFromDataSet(qry);
  mdata.Active:=True;
  mdata.Edit;
  mdata.Append;
  mdata.post;
 { If mdata['FProvince']=Null then
  begin
    mdata.Edit;
    mdata['FProvince']:='';
    mdata.Post;
  end;}
end;

procedure TFrm_PermissionCheck.Act_EditExecute(Sender: TObject);
begin
  inherited;
  P_state :=1;
  Act_Supplier.Execute;
  Act_ProductList.Execute;
  Act_SetOpen.Execute;
  L_title.Caption:=UserFDepartmentName+'权限组信息修改';
end;

procedure TFrm_PermissionCheck.Act_DelExecute(Sender: TObject);
var
  qry:TADOQuery;

begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If (mdata_Brow.RecordCount<1) then
    Exit;
  If mdata_Brow.RecordCount<>1 then
  begin
    application.MessageBox('只允许删除单个记录！请重新选择!','系统提示',MB_ICONINFORMATION);
    Exit;
  end;

  {try
    qry.SQL.Text:='Select * from T_FrmRights where FPermissionID=:FPermissionID';
    qry.Parameters.FindParam('FPermissionID').Value:=mdata['FPermissionID'];
    qry.Open;
  finally
     ;
  end;
  if qry.RecordCount>0 then
  begin
    application.MessageBox(Pchar('供应商【'+Trim(Mdata['FPermission'])+'】已启用不允许删除！'),'系统提示',MB_ICONINFORMATION);
    Exit;
  end;
   }
  If application.MessageBox(Pchar('警告：是否删除供应商名称为：【'+Trim(Mdata['FPermission'])+'】的数据？'+chr(13)+chr(13)
                           +'删除数据操作将不可恢复，确定要删除本数据吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
  If application.MessageBox(Pchar('警告：是否删除供应商名称为：【'+Trim(Mdata['FPermission'])+'】的数据？'+chr(13)+chr(13)
                           +'删除数据操作将不可恢复，确定要删除本数据吗？'),'再次警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then

  begin
    //单据删除
    If not DelRd then
    begin
      application.MessageBox('删除单据失败！','系统提示',MB_ICONINFORMATION);
      mdlData.conn.RollbackTrans;
      Exit;
    end;
  end;
  mdata.Close;
  qry.Free;
  TB_ref.Click;

end;

procedure TFrm_PermissionCheck.Act_RefExecute(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If not TreeVeiwListWhere(qry,MyTreeView,'VT_PermissionCheck','') then
  begin
    Application.MessageBox(PChar('树型结构显示错误，请联系开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;
end;

procedure TFrm_PermissionCheck.Act_SetOpenExecute(Sender: TObject);
begin
  inherited;
  Act_Ref.Visible:=False;
  Act_App.Visible:=False;
  Act_Edit.Visible:=False;
  Act_Del.Visible:=False;
  MyTreeView.Enabled:=False;

  TS_Brow.TabVisible:=False;
  TS_Edit.TabVisible:=True;
  TS_Permission.ActivePage:=TS_Edit;

  Panel_OK.Visible:=True;
  cxGV.OptionsData.Editing:=True;
  cxGVC.OptionsData.Editing:=True;
  cxGV_ProductList.OptionsData.Editing:=True;

  FPermission_Card.Options.Editing:=True;
  isApp.Options.Editing:=True;
  //Act_FProvince.Execute;

end;

procedure TFrm_PermissionCheck.Act_SetCloseExecute(Sender: TObject);
begin
  inherited;
  Act_Ref.Visible:=True;
  Act_App.Visible:=True;
  Act_Edit.Visible:=True;
  Act_Del.Visible:=True;
  MyTreeView.Enabled:=True;
  Panel_OK.Visible:=False;
  cxGV.OptionsData.Editing:=False;
  cxGV_ProductList.OptionsData.Editing:=False;

  TS_Brow.TabVisible:=True;
  TS_Edit.TabVisible:=False;
  TS_Permission.ActivePage:=TS_Brow;

  P_state:=2;
 // cxGVC.OptionsData.Editing:=False;
end;

procedure TFrm_PermissionCheck.Act_OKExecute(Sender: TObject);
var qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.EnableBCD:=False;//小数位数>4

  mData.Edit;
  mData.Post;

  If (mData['FPermissionID']=0)  then
  begin
    application.MessageBox('关键字不能为空！请重新输入','系统提示',MB_ICONERROR);
    Exit;
  end;

  If P_state =0 then
  begin
    try
      qry.SQL.Text:='Select * from V_PermissionCheck where FPermissionID=:FPermissionID and FCheckFrmID=:FCheckFrmID ';
      qry.Parameters.FindParam('FPermissionID').Value:=mdata['FPermissionID'];
      qry.Parameters.FindParam('FCheckFrmID').Value:=mdata['FCheckFrmID'];
      qry.Open;
      If qry.RecordCount>0 then
      begin
         application.MessageBox('权限组名称重复！请重新输入','系统提示',MB_ICONERROR);
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

procedure TFrm_PermissionCheck.Act_CancelExecute(Sender: TObject);
begin
  inherited;
  L_title.Caption:=UserFDepartmentName+'权限组信息';
  Act_SetClose.Execute;
end;

procedure TFrm_PermissionCheck.cxGV_BrowDblClick(Sender: TObject);
begin
  Act_Supplier.Execute;
  Act_ProductList.Execute;
//  Act_FProvince.Execute;
end;

procedure TFrm_PermissionCheck.cxGVCDblClick(Sender: TObject);
begin
  inherited;
  If P_state=2 then
  begin
    TS_Brow.TabVisible:=True;
    TS_Edit.TabVisible:=False;
    TS_Permission.ActivePage:=TS_Brow;
  end;
end;

procedure TFrm_PermissionCheck.Act_QuotationExecute(Sender: TObject);
var  qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='select * from V_PermissionList with(nolock) where FPermissionID=:FPermissionID ';
    qry.Parameters.FindParam('FPermissionID').value:=MData_Brow['FPermissionID'];
    qry.Open;
  finally
   ;
  end;
  MData_BrowList.CopyFromDataSet(qry);
  MData_BrowList.Active:=True;
end;

procedure TFrm_PermissionCheck.cxGV_BrowFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
var qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If  (P_state=2) and (Mdata_Brow['FPermissionCheckID']<>0) and (Mdata_Brow['FPermissionCheckID']<>Null)then
  begin
     Act_Edit.Visible:= mdlData.PermissionCheckRights(TFrm_PermissionCheck.ClassName,'修改');
     If MyItemListID(qry,mData_List,'V_PermissionCheckList',' FPermissionCheckID='+IntToStr(mData_Brow['FPermissionCheckID']),'FCheckRightsID',) then
    // Act_ProductList.Execute;
     Act_Quotation.Execute;
  end;
end;

procedure TFrm_PermissionCheck.Act_MaxIDExecute(Sender: TObject);
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
      value:='T_PermissionCheck';
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

procedure TFrm_PermissionCheck.Act_ProductListExecute(Sender: TObject);
var
   qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  try
   // qry.SQL.Text:='Select b.FApprovalStuffSortID,a.FApprovalStuffSortID,a.FApprovalStuffSort,isnull(FsupplierID,0) as FsupplierID, '
    qry.SQL.Text:='Select a.FCheckRightsID,a.FCheckRights,isnull(b.FPermissionCheckID,0) as FPermissionCheckID, '
                 +'case isnull(b.FCheckRightsID,0) when 0 then cast(0 as bit) else cast(1 as bit) end as IsSel, '
                 +'case isnull(b.FCheckRightsID,0) when 0 then cast(0 as bit) else cast(1 as bit) end as IsDel, '
                 +'case isnull(b.FCheckRightsID,0) when 0 then cast(0 as bit) else cast(1 as bit) end as IsApp '
                 +' from T_CheckRights as a left outer join (select * from T_PermissionCheckList where FPermissionCheckID=:FPermissionCheckID) as b '
                 +' on a.FCheckRightsID=b.FCheckRightsID order by a.FCheckRightsID';
    qry.Parameters.FindParam('FPermissionCheckID').value:=MData_Brow['FPermissionCheckID'];
    qry.Open;
  finally
     ;
  end;
 // If qry.RecordCount>0 then
  begin
    mdata_List.CopyFromDataSet(qry);
    mdata_List.Active:=True;
    mdata_List.Edit;
    mdata_List.post;
  end;
end;

procedure TFrm_PermissionCheck.Act_SupplierExecute(Sender: TObject);
var  qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  TS_Brow.TabVisible:=False;
  TS_Edit.TabVisible:=True;
  TS_Permission.ActivePage:=TS_Edit;
  try
    qry.SQL.Text:='select * from V_PermissionCheck with(nolock) where FPermissionCheckID=:FPermissionCheckID ';
    qry.Parameters.FindParam('FPermissionCheckID').value:=MData_Brow['FPermissionCheckID'];
    qry.Open;
  finally
   ;
  end;
  MData.CopyFromDataSet(qry);
  MData.Active:=True;
end;

procedure TFrm_PermissionCheck.FSupplierShortName_CardPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
 { MData.Edit;
  MData['FPermission']:=MData['FPermission'];}
end;

procedure TFrm_PermissionCheck.cxGrid_BrowContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV_Brow';
  Gm:='mdata_Brow';
  Gr:='cxGrid_Brow';
  Act_Menu_Set.Execute;
end;

procedure TFrm_PermissionCheck.cxGrid_BrowListContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV_Quotation';
  Gm:='mdata_Quotation';
  Gr:='cxGrid_Quotation';
  Act_Menu_Set.Execute;
end;

procedure TFrm_PermissionCheck.Act_MenuExecute(Sender: TObject);
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

procedure TFrm_PermissionCheck.Act_Menu_SetExecute(Sender: TObject);
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

procedure TFrm_PermissionCheck.N_EditClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_PermissionCheck.N_FilterClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_PermissionCheck.N_SortClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_PermissionCheck.N_GroupClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_PermissionCheck.N_SetClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_PermissionCheck.N_OutClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_PermissionCheck.cxGrid_ProductListContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV_ProductList';
  Gm:='mdata_ProductList';
  Gr:='cxGrid_ProductList';
  Act_Menu_Set.Execute;
end;

procedure TFrm_PermissionCheck.cxGrid_Brow_CheckRightsContextPopup(
  Sender: TObject; MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV_ProductList_Brow';
  Gm:='mdata_ProductList_Brow';
  Gr:='cxGrid_ProductList_Brow';
  Act_Menu_Set.Execute;
end;

procedure TFrm_PermissionCheck.FPermission_CardPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='select * from VT_Permission order by FNumber';
    qry.Open;
  finally
     ;
  end;
  selValue:=select('请选择角色','FNumber','FParentNumber','FNumber','FName',qry);
  If Length(selValue)>0 then
  begin
    mdata.Edit;
    mdata['FPermission']:=qry.FieldByName('FPermission').Value;
    mdata['FPermissionID']:=qry.FieldByName('FPermissionID').Value;
   // mdata.Post;
  end;

end;

procedure TFrm_PermissionCheck.FCheckFrmCaption_CardPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='select * from T_CheckFrm order by FCheckFrm,FCheckFrmCaption ';
    qry.Open;
  finally
     ;
  end;
  selValue:=select('请选择报表','FCheckFrm','FCheckFrm','FCheckFrm','FCheckFrm;FCheckFrmCaption',qry);
  If Length(selValue)>0 then
  begin
    mdata.Edit;
    mdata['FCheckFrm']:=qry.FieldByName('FCheckFrm').Value;
    mdata['FCheckFrmCaption']:=qry.FieldByName('FCheckFrmCaption').Value;
    mdata['FCheckFrmID']:=qry.FieldByName('FCheckFrmID').Value;
   // mdata.Post;
  end;

end;

end.
