unit Main_BaseData;

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
  TFrm_BaseData = class(TFrm_GridBass)
    DS_Mdata: TDataSource;
    Panel1: TPanel;
    ToolBar1: TToolBar;
    ToolButton5: TToolButton;
    ToolButton1: TToolButton;
    TB_Prin: TToolButton;
    TB_EXIT: TToolButton;
    RzSizePanel1: TRzSizePanel;
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
    Act_Edit: TAction;
    Act_Del: TAction;
    Act_Out: TAction;
    Act_Audit: TAction;
    Act_OK: TAction;
    Act_Down: TAction;
    Act_Ref: TAction;
    Act_Prin: TAction;
    Act_Cancel: TAction;
    MData: TdxMemData;
    Act_ApprovalStuffNumber: TAction;
    DS_Mdata_Brow: TDataSource;
    MData_Brow: TdxMemData;
    TS_Data: TRzPageControl;
    TS_Brow: TRzTabSheet;
    TS_Edit: TRzTabSheet;
    Panel2: TPanel;
    cxGrid: TcxGrid;
    cxGV: TcxGridDBTableView;
    FNumber: TcxGridDBColumn;
    FParentNumber: TcxGridDBColumn;
    FClas: TcxGridDBColumn;
    FDetail: TcxGridDBColumn;
    FRemark: TcxGridDBColumn;
    FName: TcxGridDBColumn;
    FID: TcxGridDBColumn;
    FParentID: TcxGridDBColumn;
    FDepartmentName: TcxGridDBColumn;
    FDepartmentID: TcxGridDBColumn;
    cxGVC: TcxGridDBCardView;
    FRemark_Card: TcxGridDBCardViewRow;
    FNumber_Card: TcxGridDBCardViewRow;
    FParentNumber_Card: TcxGridDBCardViewRow;
    FName_Card: TcxGridDBCardViewRow;
    FClass_Card: TcxGridDBCardViewRow;
    FID_Card: TcxGridDBCardViewRow;
    cxGL: TcxGridLevel;
    cxGLC: TcxGridLevel;
    Panel_OK: TPanel;
    OKBtn: TcxButton;
    CancelBtn: TcxButton;
    Act_Menu: TAction;
    Act_Menu_Set: TAction;
    PM: TPopupMenu;
    N_Edit: TMenuItem;
    N_Filter: TMenuItem;
    N_Sort: TMenuItem;
    N_Group: TMenuItem;
    N_Set: TMenuItem;
    N_Out: TMenuItem;
    FParentID_Card: TcxGridDBCardViewRow;
    Act_K3: TAction;
    Act_Quotation: TAction;
    FDetail_Card: TcxGridDBCardViewRow;
    FDepartMentID_Card: TcxGridDBCardViewRow;
    cxGrid_Brow: TcxGrid;
    cxGV_Brow: TcxGridDBTableView;
    FParentNumber_Brow: TcxGridDBColumn;
    FNumber_Brow: TcxGridDBColumn;
    FName_Brow: TcxGridDBColumn;
    FRemark_Brow: TcxGridDBColumn;
    FDetail_Brow: TcxGridDBColumn;
    FDepartmentName_Brow: TcxGridDBColumn;
    FDepartmentID_Brow: TcxGridDBColumn;
    cxGL_Brow: TcxGridLevel;
    FID_Brow: TcxGridDBColumn;
    FParentID_Brow: TcxGridDBColumn;
    FDepartmentName_Card: TcxGridDBCardViewRow;
    FClassID_Card: TcxGridDBCardViewRow;
    FClassID: TcxGridDBColumn;
    FFullNumber_Brow: TcxGridDBColumn;
    FClass_Brow: TcxGridDBColumn;
    FClassID_Brow: TcxGridDBColumn;
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
    procedure cxGVCDblClick(Sender: TObject);
    procedure cxGV_BrowFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure cxGrid_BrowContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure Act_MenuExecute(Sender: TObject);
    procedure Act_Menu_SetExecute(Sender: TObject);
    procedure N_EditClick(Sender: TObject);
    procedure N_FilterClick(Sender: TObject);
    procedure N_SortClick(Sender: TObject);
    procedure N_GroupClick(Sender: TObject);
    procedure N_SetClick(Sender: TObject);
    procedure N_OutClick(Sender: TObject);
    procedure cxGridContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure FParentNumber_CardPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxGV_BrowDblClick(Sender: TObject);
    procedure Act_EditRdExecute(Sender: TObject);
    procedure TB_RefClick(Sender: TObject);
    procedure TB_EditClick(Sender: TObject);
    procedure TB_DelClick(Sender: TObject);
    procedure TB_AppClick(Sender: TObject);
  private
    { Private declarations }
    function AddRd:bool;
    function DelRd:bool;
    function EditRd:bool;


  public
    P_state,P_Isleaf:integer;
    { Public declarations }
  end;

var
  Frm_BaseData: TFrm_BaseData;


implementation

uses FRMDATA, COMMON, FrmSelect, ProgBar, PROGRASS, FrmWorkMain;

{$R *.dfm}

function TFrm_BaseData.DelRd: bool;
var
 qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Delete from T_BaseData where FID=:FID';
    with qry.Parameters do
    begin
      FindParam('FID').value:=mdata_Brow['FID'];
    end;
    result:=qry.ExecSQL>=1;
  finally
    qry.Free;
  end;
end;

function TFrm_BaseData.AddRd: bool;
var
  qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.EnableBCD:=False;//小数位数>4
  result:=False;
  If mData.RecordCount<=0 then
  begin
    result:=True;
    Exit;
  end;
  try
    qry.SQL.Text:='Insert into T_BaseData(FNumber,FParentID,FName,FRemark,FClassID,FClass,FDetail,FDepartmentID )'
                 +'values(:FNumber,:FParentID,:FName,:FRemark,:FClassID,:FClass,:FDetail,:FDepartmentID)';
    mData.First;
    while not mData.eof do
    begin
      If qry.Active then qry.Close;
      with qry.Parameters do
      begin
        FindParam('FNumber').value:=mdata['FNumber'];
        FindParam('FParentID').value:=mdata['FParentID'];
        FindParam('FName').value:=mdata['FName'];
        FindParam('FRemark').value:=mdata['FRemark'];
        FindParam('FClassID').value:=mdata['FClassID'];
        FindParam('FClass').value:=mdata['FClass'];
        FindParam('FDetail').value:=mdata['FDetail'];
        FindParam('FDepartmentID').value:=UserFDepartmentID;
      end;
      result:=qry.ExecSQL>=1;
      if not result then
         break;
      mData.Next;
    end;
  finally
    ;
  end;
  qry.Free;
end;


function TFrm_BaseData.EditRd:bool;
var
  qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.EnableBCD:=False;//小数位数>4
  result:=False;
  If mData.RecordCount<=0 then
  begin
    result:=True;
    Exit;
  end;

  mData.Edit;
  mData.Post;

  try
    qry.SQL.Text:='Update T_BaseData set FNumber=:FNumber,FParentID=:FParentID,'
                 +'FName=:FName,FRemark=:FRemark,FClass=:FClass,'
                 +'FClassID=:FClassID,FDetail=:FDetail,FDepartmentID=:FDepartmentID '
                 +'where FID=:FID';
    mData.First;
    while not mData.eof do
    begin
      If (mData['FName']<>'') and (mData['FName']<>'')  then
      begin
        If qry.Active then qry.Close;
        with qry.Parameters do
        begin
          FindParam('FNumber').value:=mdata['FNumber'];
          FindParam('FParentID').value:=mdata['FParentID'];
          FindParam('FName').value:=mdata['FName'];
          FindParam('FRemark').value:=mdata['FRemark'];
          FindParam('FClass').value:=mdata['FClass'];
          FindParam('FClassID').value:=mdata['FClassID'];
          FindParam('FDetail').value:=mdata['FDetail'];
          FindParam('FDepartmentID').value:=UserFDepartmentID;
          FindParam('FID').value:=mdata['FID'];
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


procedure TFrm_BaseData.FormResize(Sender: TObject);
begin
  inherited;
  L_title.Caption:=UserFDepartmentName+'基础资料信息';
  Self.Caption:=UserFDepartmentName+'基础资料信息';
end;

procedure TFrm_BaseData.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=CaFree;
  Frm_BaseData:=nil;
end;

procedure TFrm_BaseData.TB_EXITClick(Sender: TObject);
var
  qry:TADOQuery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  //LogIn(qry,Self.ClassName,TToolButton(Sender).Caption);

  Self.Close;
end;

procedure TFrm_BaseData.MyTreeViewChange(Sender: TObject; Node: TTreeNode);
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
    If not MyItemList(qry,Mdata_Brow,'V_BaseData','FNumber',ListItemFNumber,'FNumber') then
    begin
      mdata_Brow.Open;
    end;

    If P_Isleaf=1 then
    begin
      If MData_Brow.RecordCount=1 then
      begin
        Act_Edit.Visible:= mdlData.PermissionCheckRights(TFrm_BaseData.ClassName,'修改');
        Act_Del.Visible:=mdlData.PermissionCheckRights(TFrm_BaseData.ClassName,'删除');
      //  TB_Edit.Visible:= mdlData.PermissionCheckRights(TFrm_BaseData.ClassName,'修改');
       // TB_Del.Visible:=mdlData.PermissionCheckRights(TFrm_BaseData.ClassName,'删除');
      end;
    end
    else
    begin
      Act_Edit.Visible:=False;
      Act_Del.Visible:=False;
    end;
  end;
end;

procedure TFrm_BaseData.MyTreeViewExpanding(Sender: TObject;
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

  qry.SQL.Text:='Select *  from V_BaseData where FParentNumber= '''
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
    P.FDetail := qry.FieldByName('FDetail').Value;
    P.Flag := cNoLoadFlag;                         // 新节点，未加载标志
    with MyTreeView.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('FDetail').value;
    end;
    qry.Next;
  end;
end;

procedure TFrm_BaseData.FormCreate(Sender: TObject);
var AFirstColumnStyle: TcxStyle;
begin
  inherited;
  P_state:=2;
  
  TS_Brow.TabVisible:=True;
  TS_Edit.TabVisible:=False;
  TS_Data.ActivePage:=TS_Brow;

  //列颜色
  AFirstColumnStyle := TcxStyle.Create(Self);
  AFirstColumnStyle.Color := clAqua;
  AFirstColumnStyle.TextColor := clBlue;


  cxGV.Columns[0].Styles.Content := AFirstColumnStyle;
  cxGV.Columns[1].Styles.Content := AFirstColumnStyle;

  Act_App.Visible:= mdlData.PermissionCheckRights(TFrm_BaseData.ClassName,'新增');
  Act_Prin.Visible:= mdlData.PermissionCheckRights(TFrm_BaseData.ClassName,'打印');
  Act_Out.Visible:= mdlData.PermissionCheckRights(TFrm_BaseData.ClassName,'打印');
end;

procedure TFrm_BaseData.FormShow(Sender: TObject);
begin
  TB_Ref.Click;
end;

procedure TFrm_BaseData.Act_AppExecute(Sender: TObject);
var
 qry:TADOquery;
begin
  P_state :=0;
  L_title.Caption:=UserFDepartmentName+'基础资料新增';
  Act_SetOpen.Execute;

  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Select * from V_BaseData where FID=0';
    qry.Open;
  finally
     ;
  end;
  mdata.CopyFromDataSet(qry);
  mdata.Active:=True;
  mdata.Edit;
  mdata.Append;
  If MData['FParentNumber']=Null then MData['FParentNumber']:='';
  If MData['FNumber']=Null then MData['FNumber']:='';
  If MData['FName']=Null then MData['FName']:='';
  If MData['FRemark']=Null then MData['FRemark']:='';
  If MData['FClass']=Null then MData['FClass']:='';
  If MData['FClassID']=Null then MData['FClassID']:=0;
  If MData['FParentID']=Null then MData['FParentID']:=0;
  If MData['FDetail']=Null then MData['FDetail']:=True;
  try
    qry.SQL.Text:='select  (replicate(''0'',(3 - len(cast(max(right(FNumber,3)) as int)+1))) + convert(varchar(3),cast(max(right(FNumber,3)) as int)+1)) as n  '
                  +' from V_BaseData where FDepartmentID=:FDepartmentID and FParentNumber=''''  ';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Open;
  finally
    ;
  end;
  MData.Edit;
  MData['FNumber']:=qry.FieldByName('n').Value;
  MData['FDetail']:=False;
  MData['FParentID']:=0;
  MData.Post;

end;

procedure TFrm_BaseData.Act_EditExecute(Sender: TObject);
var
  qry:TADOQuery;

begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  P_state :=1;
  Act_SetOpen.Execute;  //要在前面
  Act_EditRd.Execute;
  L_title.Caption:=UserFDepartmentName+'基础资料信息修改';
end;

procedure TFrm_BaseData.Act_DelExecute(Sender: TObject);
var
  qry:TADOQuery;

begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  If application.MessageBox(Pchar('警告：是否删除名称为：【'+Trim(mdata_Brow['FName'])+'】资料信息的数据？'+chr(13)+chr(13)
                           +'删除数据操作将不可恢复，确定要删除本数据吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
  If application.MessageBox(Pchar('警告：是否删除名称为：【'+Trim(mdata_Brow['FName'])+'】资料信息的数据？'+chr(13)+chr(13)
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
  mdata_Brow.Close;
  qry.Free;


end;

procedure TFrm_BaseData.Act_RefExecute(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If not TreeVeiwListWhere(qry,MyTreeView,'V_BaseData',' and FDepartmentID='+IntToStr(UserFDepartmentID) ) then
  begin
    Application.MessageBox(PChar('树型结构显示错误，请联系开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;
end;

procedure TFrm_BaseData.Act_SetOpenExecute(Sender: TObject);
begin
  inherited;
  Act_Ref.Visible:=False;
  Act_App.Visible:=False;
  Act_Edit.Visible:=False;
  Act_Del.Visible:=False;
  MyTreeView.Enabled:=False;

  Panel_OK.Visible:=True;
  TS_Brow.TabVisible:=False;
  TS_Edit.TabVisible:=True;
  TS_Data.ActivePage:=TS_Edit;

  cxGV.OptionsData.Editing:=True;
  FNumber.Options.Editing:=True;

  cxGVC.OptionsData.Editing:=True;
  
  FNumber_Card.Options.Editing:=True;
  FParentNumber_Card.Options.Editing:=True;
  FName_Card.Options.Editing:=True;
  FRemark_Card.Options.Editing:=True;
  FClass_Card.Options.Editing:=True;
  FDetail_Card.Options.Editing:=True;
end;

procedure TFrm_BaseData.Act_SetCloseExecute(Sender: TObject);
begin
  inherited;
  P_state :=2;
  Act_Ref.Visible:=True;
  Act_App.Visible:=True;
  Act_Edit.Visible:=False;
  Act_Del.Visible:=False;
  MyTreeView.Enabled:=True;
  Panel_OK.Visible:=False;

  TS_Brow.TabVisible:=True;
  TS_Edit.TabVisible:=False;
  TS_Data.ActivePage:=TS_Brow;

  cxGV.OptionsData.Editing:=False;
  cxGVC.OptionsData.Editing:=False;

end;

procedure TFrm_BaseData.Act_OKExecute(Sender: TObject);
var qry,qry1: TADOQuery;
    P_FParentNumber,P_FClass:string;
    P_FParentID,P_FClassId:Integer;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry1:=TADOQuery.Create(self);
  qry1.ConnectionString:=mdlData.ReadConnStr;
  qry.EnableBCD:=False;//小数位数>4

  mData.Edit;
  If MData['FName']=Null then  MData['FName']:='';
  If MData['FRemark']=Null then MData['FRemark']:='';
  If MData['FClass']=Null then MData['FClass']:='';
  If MData['FClassID']=Null then MData['FClassID']:=0;
  If MData['FDetail']=Null then MData['FDetail']:=0;
  mData.Post;

  If  mdata['FDetail']=True then
  begin
    If (mData['FNumber']='') or (mData['FNumber']=Null)
       or (mData['FParentID']=0) or (mData['FParentID']=Null)
       or (mData['FName']='') or (mData['FName']=Null)
       then
    begin
      application.MessageBox('关键字不能为空！请重新输入','系统提示',MB_ICONERROR);
      Exit;
    end;
  end;
  If P_state =0 then
  begin
    try
      qry.SQL.Text:='Select * from V_BaseData where FDepartmentID=:FDepartmentID '
                   +' and FName=:FName and FRemark=:FRemark and FParentID=:FParentID '
                   +' and FClassID=:FClassID ';
      qry.Parameters.FindParam('FDepartmentID').Value:=UserFDepartmentID;
      qry.Parameters.FindParam('FName').Value:=mdata['FName'];
      qry.Parameters.FindParam('FRemark').Value:=mdata['FRemark'];
      qry.Parameters.FindParam('FParentID').Value:=mdata['FParentID'];
      qry.Parameters.FindParam('FClassID').Value:=mdata['FClassID'];
      qry.Open;
      If qry.RecordCount>0 then
      begin
         application.MessageBox('信息重复！请重新输入','系统提示',MB_ICONERROR);
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
        P_FParentNumber:=MData['FParentNumber'];
        P_FParentID:=MData['FParentID'];
        P_FClass:=MData['FClass'];
        P_FClassId:=MData['FClassId'];

        TB_App.Click ;
        try
          qry1.SQL.Text:='select  (replicate(''0'',(3 - len(cast(max(right(FNumber,3)) as int)+1))) + convert(varchar(3),cast(max(right(FNumber,3)) as int)+1)) as n  '
                        +' from V_BaseData where FDepartmentID=:FDepartmentID and FParentNumber=:FParentNumber  ';
          qry1.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
          qry1.Parameters.FindParam('FParentNumber').value:=P_FParentNumber;
          qry1.Open;
        finally
          ;
        end;
        MData.Edit;
        MData['FParentNumber']:=P_FParentNumber;
        MData['FParentID']:=P_FParentID;
        MData['FClass']:=P_FClass;
        MData['FClassID']:=P_FClassId;
        MData['FDetail']:=True;
        If qry1.FieldByName('n').Value<>null then
        begin
          MData['FNumber']:=P_FParentNumber+'.'+qry1.FieldByName('n').Value;
        end
        else
        begin
          MData['FNumber']:=P_FParentNumber+'.001';
        end;
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

procedure TFrm_BaseData.Act_CancelExecute(Sender: TObject);
begin
  inherited;
  P_state:=2;
  L_title.Caption:=UserFDepartmentName+'基础资料信息';
  Act_SetClose.Execute;
end;

procedure TFrm_BaseData.cxGVCDblClick(Sender: TObject);
begin
  inherited;
  If P_state=2 then
  begin
    TS_Brow.TabVisible:=True;
    TS_Edit.TabVisible:=False;
    TS_Data.ActivePage:=TS_Brow;
  end;
end;

procedure TFrm_BaseData.cxGV_BrowFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;
  If Mdata_Brow['FID']<>0 then
  begin
     Act_Edit.Visible:= mdlData.PermissionCheckRights(TFrm_BaseData.ClassName,'修改');
  end;
end;

procedure TFrm_BaseData.cxGrid_BrowContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV_Brow';
  Gm:='mdata_Brow';
  Gr:='cxGrid_Brow';
  Act_Menu_Set.Execute;
end;

procedure TFrm_BaseData.Act_MenuExecute(Sender: TObject);
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

procedure TFrm_BaseData.Act_Menu_SetExecute(Sender: TObject);
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

procedure TFrm_BaseData.N_EditClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_BaseData.N_FilterClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_BaseData.N_SortClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_BaseData.N_GroupClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_BaseData.N_SetClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_BaseData.N_OutClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_BaseData.cxGridContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV';
  Gm:='mdata';
  Gr:='cxGrid';
  Act_Menu_Set.Execute;
end;

procedure TFrm_BaseData.FParentNumber_CardPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry,qry1: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry1:=TADOQuery.Create(self);
  qry1.ConnectionString:=mdlData.ReadConnStr;

  mData.Edit;
  try
    qry.SQL.Text:='select * from  V_BaseData with(nolock) '
                 +' where FDetail=0 and FDepartmentID=:FDepartmentID  order by FNumber ';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Open;
  finally
    ;
  end;

  selValue:=select('选择上级编码','FNumber','FParentNumber','FNumber','FName',qry);
  If (Length(selValue)>0) then
  begin
     MData['FParentID']:=qry.FieldByName('FID').Value;
     MData['FParentNumber']:=qry.FieldByName('FNumber').Value;
     MData['FClass']:=qry.FieldByName('FClass').Value;
     MData['FClassID']:=qry.FieldByName('FClassID').Value;
  end;

    try
      qry1.SQL.Text:='select  (replicate(''0'',(3 - len(cast(max(right(FNumber,3)) as int)+1))) + convert(varchar(3),cast(max(right(FNumber,3)) as int)+1)) as n  '
                    +' from V_BaseData where FDepartmentID=:FDepartmentID and FParentNumber=:FParentNumber  ';
      qry1.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
      qry1.Parameters.FindParam('FParentNumber').value:=qry.FieldByName('FNumber').Value;
      qry1.Open;
    finally
     ;
    end;
    If qry1.FieldByName('n').Value<>null then
    begin
      MData['FNumber']:=qry.FieldByName('FNumber').Value+'.'+qry1.FieldByName('n').Value;
      MData['FDetail']:=True;
    end
    else
    begin
      MData['FNumber']:=qry.FieldByName('FNumber').Value+'.001';
      MData['FDetail']:=True;
    end;


end;

procedure TFrm_BaseData.cxGV_BrowDblClick(Sender: TObject);
var  qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  TS_Brow.TabVisible:=False;
  TS_Edit.TabVisible:=True;
  TS_Data.ActivePage:=TS_Edit;
  try
    qry.SQL.Text:='select * from V_BaseData with(nolock) where FID=:FID ';
    qry.Parameters.FindParam('FID').value:=MData_Brow['FID'];
    qry.Open;
  finally
   ;
  end;
  MData.CopyFromDataSet(qry);
  MData.Active:=True;
  TB_Edit.Visible:= mdlData.PermissionCheckRights(TFrm_BaseData.ClassName,'修改');

end;

procedure TFrm_BaseData.Act_EditRdExecute(Sender: TObject);
var  qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  TS_Brow.TabVisible:=False;
  TS_Edit.TabVisible:=True;
  TS_Data.ActivePage:=TS_Edit;
  try
    qry.SQL.Text:='select * from V_BaseData with(nolock) where FID=:FID ';
    qry.Parameters.FindParam('FID').value:=MData_Brow['FID'];
    qry.Open;
  finally
   ;
  end;
  MData.CopyFromDataSet(qry);
  MData.Active:=True;
  TB_Edit.Visible:= mdlData.PermissionCheckRights(TFrm_BaseData.ClassName,'修改');

end;

procedure TFrm_BaseData.TB_RefClick(Sender: TObject);
var  qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
 // LogIn(qry,Self.ClassName,TToolButton(Sender).Caption);
  Act_Ref.Execute;
end;

procedure TFrm_BaseData.TB_EditClick(Sender: TObject);
var
  qry:TADOQuery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
 // LogIn(qry,Self.ClassName,TToolButton(Sender).Caption);

  Act_Edit.Execute;
end;

procedure TFrm_BaseData.TB_DelClick(Sender: TObject);
var
  qry:TADOQuery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  //LogIn(qry,Self.ClassName,TToolButton(Sender).Caption);
  Act_Del.Execute;
end;

procedure TFrm_BaseData.TB_AppClick(Sender: TObject);
var
  qry:TADOQuery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  //LogIn(qry,Self.ClassName,TToolButton(Sender).Caption);
  Act_App.Execute;
end;

end.
