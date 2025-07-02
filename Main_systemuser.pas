unit Main_systemuser;

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
  cxEditRepositoryItems, ActnList, Menus, cxGridCardView, cxGridDBCardView;

type
  TFrm_SysTemUser = class(TFrm_GridBass)
    MData: TdxMemData;
    DS_Mdata: TDataSource;
    ImageList: TImageList;
    Panel1: TPanel;
    ToolBar1: TToolBar;
    ToolButton5: TToolButton;
    ToolButton1: TToolButton;
    TB_EXIT: TToolButton;
    frReport: TfrReport;
    frDBDataSet: TfrDBDataSet;
    RzSizePanel1: TRzSizePanel;
    PC_2: TRzPageControl;
    TS_SYS: TRzTabSheet;
    TB_Ref: TToolButton;
    TB_App: TToolButton;
    TB_Edit: TToolButton;
    TB_Del: TToolButton;
    MyTreeView: TTreeView;
    EditRepository: TcxEditRepository;
    ImageComboLanguages: TcxEditRepositoryImageComboBoxItem;
    ImageComboCommunication: TcxEditRepositoryImageComboBoxItem;
    SpinItemYears: TcxEditRepositorySpinItem;
    DateItemStartWorkFrom: TcxEditRepositoryDateItem;
    MDataFPermission: TStringField;
    MDataNum: TStringField;
    MDatagw: TStringField;
    MDataSex: TStringField;
    MDatapwd: TStringField;
    MDatamc: TStringField;
    TS_Login: TRzTabSheet;
    cxGrid_LogIN: TcxGrid;
    cxGV_LogIN: TcxGridDBTableView;
    Num2: TcxGridDBColumn;
    mc2: TcxGridDBColumn;
    GW2: TcxGridDBColumn;
    FPermission2: TcxGridDBColumn;
    FDepartmentName2: TcxGridDBColumn;
    FDepartmentID2: TcxGridDBColumn;
    cxGL_LogIN: TcxGridLevel;
    FLogType: TcxGridDBColumn;
    FLogInDate: TcxGridDBColumn;
    MDataFDepartmentName: TStringField;
    MDataFDepartmentID: TIntegerField;
    MDataFTeam: TStringField;
    FIP: TcxGridDBColumn;
    FMacAddress: TcxGridDBColumn;
    FPCName: TcxGridDBColumn;
    FWinUserName: TcxGridDBColumn;
    ToolButton2: TToolButton;
    Mdata_LogIN: TdxMemData;
    DS_Mdata_LogIN: TDataSource;
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
    TS_Item: TRzPageControl;
    TS_Brow: TRzTabSheet;
    Panel2: TPanel;
    TS_Edit: TRzTabSheet;
    Panel3: TPanel;
    cxGrid: TcxGrid;
    cxGV: TcxGridDBTableView;
    NumID: TcxGridDBColumn;
    Num: TcxGridDBColumn;
    Sex: TcxGridDBColumn;
    mc: TcxGridDBColumn;
    GW: TcxGridDBColumn;
    cxGVC: TcxGridDBCardView;
    Num_Card: TcxGridDBCardViewRow;
    Sex_Card: TcxGridDBCardViewRow;
    mc_Card: TcxGridDBCardViewRow;
    GW_Card: TcxGridDBCardViewRow;
    pwd_Card: TcxGridDBCardViewRow;
    cxGL: TcxGridLevel;
    cxGLC: TcxGridLevel;
    Panel_OK: TPanel;
    cxGrid_Brow: TcxGrid;
    cxGV_Brow: TcxGridDBTableView;
    NumID_Brow: TcxGridDBColumn;
    Num_Brow: TcxGridDBColumn;
    Sex_Brow: TcxGridDBColumn;
    mc_Brow: TcxGridDBColumn;
    GW_Brow: TcxGridDBColumn;
    pwd_Brow: TcxGridDBColumn;
    Interphone_Brow: TcxGridDBColumn;
    Outsidephone_Brow: TcxGridDBColumn;
    FFax_Brow: TcxGridDBColumn;
    FMail_Brow: TcxGridDBColumn;
    FDepartmentName_Brow: TcxGridDBColumn;
    FAgentName_Brow: TcxGridDBColumn;
    FTeam_Brow: TcxGridDBColumn;
    FDepartmentID_Brow: TcxGridDBColumn;
    FAgentID_Brow: TcxGridDBColumn;
    cxGL_Brow: TcxGridLevel;
    OKBtn: TcxButton;
    CancelBtn: TcxButton;
    pwd: TcxGridDBColumn;
    Interphone: TcxGridDBColumn;
    Outsidephone: TcxGridDBColumn;
    FFax: TcxGridDBColumn;
    FMail: TcxGridDBColumn;
    FDepartmentName: TcxGridDBColumn;
    FTeam: TcxGridDBColumn;
    FAgentName: TcxGridDBColumn;
    FAgentID: TcxGridDBColumn;
    FDepartmentID: TcxGridDBColumn;
    Interphone_Card: TcxGridDBCardViewRow;
    Outsidephone_Card: TcxGridDBCardViewRow;
    FFax_Card: TcxGridDBCardViewRow;
    FMail_Card: TcxGridDBCardViewRow;
    FDepartmentName_Card: TcxGridDBCardViewRow;
    FTeam_Card: TcxGridDBCardViewRow;
    FAgentName_Card: TcxGridDBCardViewRow;
    FAgentID_Card: TcxGridDBCardViewRow;
    FDepartmentID_Card: TcxGridDBCardViewRow;
    Act_SYS: TAction;
    Act_SetOpen: TAction;
    Act_SetClose: TAction;
    Act_App: TAction;
    Act_Edit: TAction;
    Act_Del: TAction;
    Act_Ref: TAction;
    Act_MaxID: TAction;
    DS_Mdata_Brow: TDataSource;
    MData_Brow: TdxMemData;
    Panel4: TPanel;
    Label11: TLabel;
    E_Locate: TcxButtonEdit;
    procedure FormResize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TB_EXITClick(Sender: TObject);
    procedure MyTreeViewChange(Sender: TObject; Node: TTreeNode);
    procedure MyTreeViewExpanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure TB_RefClick(Sender: TObject);
    procedure OKBtnClick(Sender: TObject);
    procedure CancelBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxGV_BrowCustomDrawPartBackground(Sender: TcxGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxCustomGridCellViewInfo;
      var ADone: Boolean);
    procedure ToolButton2Click(Sender: TObject);
    procedure N_EditClick(Sender: TObject);
    procedure N_FilterClick(Sender: TObject);
    procedure N_SortClick(Sender: TObject);
    procedure N_GroupClick(Sender: TObject);
    procedure N_SetClick(Sender: TObject);
    procedure N_OutClick(Sender: TObject);
    procedure Act_MenuExecute(Sender: TObject);
    procedure Act_Menu_SetExecute(Sender: TObject);
    procedure cxGrid_BrowContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure Act_SYSExecute(Sender: TObject);
    procedure cxGV_BrowDblClick(Sender: TObject);
    procedure Act_SetOpenExecute(Sender: TObject);
    procedure Act_SetCloseExecute(Sender: TObject);
    procedure Act_AppExecute(Sender: TObject);
    procedure Act_EditExecute(Sender: TObject);
    procedure Act_RefExecute(Sender: TObject);
    procedure GW_CardPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FDepartmentName_CardPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FAgentName_CardPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FTeam_CardPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxGridContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure Act_MaxIDExecute(Sender: TObject);
    procedure Act_DelExecute(Sender: TObject);
    procedure cxGVCDblClick(Sender: TObject);
    procedure E_LocatePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    P_FNumber,P_Caption:String;
    P_state,P_MaxID:integer;
    P_GW,P_FDepartmentName,P_FTeam:string;
    P_FDepartmentID:Integer;

    { Private declarations }
    function AddRd:bool;
    function EditRd:bool;
    function DelRd:bool;

  public
    { Public declarations }
  end;

var
  Frm_SysTemUser: TFrm_SysTemUser;


implementation

uses FRMDATA,COMMON, FrmSelect, ProgBar, PROGRASS;

{$R *.dfm}


function TFrm_SysTemUser.DelRd: bool;
var
 qry: TADOQuery;
begin
  result:=False;
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Delete from T_systemuser where NumID=:NumID';
    with qry.Parameters do
    begin
      FindParam('NumID').value:=mdata_Brow['NumID'];
    end;
    result:=qry.ExecSQL>=1;
  finally
    qry.Free;
  end;
end;

function TFrm_SysTemUser.AddRd: bool;
var
  qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  Act_MaxID.Execute;//取最大ID
  Result:=False;

  If mData.RecordCount<=0 then
  begin
    Result:=True;
    Exit;
  end;

  try
    qry.SQL.Text:='Insert into T_systemuser(NumID,Num,ssbm,Roles,mc,Sex,Pwd,gw,Interphone,Outsidephone,FFax,FMail,FDepartmentID,FAgentID,FTeam) '
                 +'values(:NumID,:Num,:ssbm,:Roles,:mc,:Sex,:Pwd,:gw,:Interphone,:Outsidephone,:FFax,:FMail,:FDepartmentID,:FAgentID,:FTeam)';
     mData.First;
     while not mData.eof do
     begin
       qry.Parameters.FindParam('NumID').value:=P_MaxID;
       qry.Parameters.FindParam('Num').value:=mdata['Num'];
       qry.Parameters.FindParam('ssbm').value:='公司职员';
       qry.Parameters.FindParam('Roles').value:=5;
       qry.Parameters.FindParam('mc').value:=mdata['mc'];
       qry.Parameters.FindParam('Sex').value:=mdata['Sex'];
       qry.Parameters.FindParam('Pwd').value:=mdata['Pwd'];
       qry.Parameters.FindParam('gw').value:=mdata['gw'];
       qry.Parameters.FindParam('Interphone').value:=mdata['Interphone'];
       qry.Parameters.FindParam('Outsidephone').value:=mdata['Outsidephone'];
       qry.Parameters.FindParam('FFax').value:=mdata['FFax'];
       qry.Parameters.FindParam('FMail').value:=mdata['FMail'];
       qry.Parameters.FindParam('FDepartmentID').value:=mdata['FDepartmentID'];
       qry.Parameters.FindParam('FAgentID').value:=mdata['FDepartmentID'];
       qry.Parameters.FindParam('FTeam').value:=mdata['FTeam'];
       result:=qry.ExecSQL>=1;
       if not result then
          break;
       mData.Next;
     end
   finally
     qry.Free;
   end;
end;


function TFrm_SysTemUser.EditRd:bool;
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

  mData.Edit;
  mData.Post;

  If mData.RecordCount<=0 then
  begin
    result:=True;
    Exit;
  end;
  try
    qry.SQL.Text:='Update T_systemuser set Num=:Num,ssbm=:ssbm,Roles=:Roles,mc=:mc,Sex=:Sex,Pwd=:pwd,gw=:gw,'
                 +'Interphone=:Interphone,Outsidephone=:Outsidephone,FFax=:FFax,FMail=:FMail,'
                 +'FDepartmentID=:FDepartmentID,FAgentID=:FAgentID,FTeam=:FTeam '
                 +'where NumID=:NumID';
     mData.First;
     while not mData.eof do
     begin
       qry.Parameters.FindParam('Num').value:=mdata['Num'];
       qry.Parameters.FindParam('ssbm').value:='公司职员';
       qry.Parameters.FindParam('Roles').value:=5;
       qry.Parameters.FindParam('mc').value:=mdata['mc'];
       qry.Parameters.FindParam('Sex').value:=mdata['Sex'];
       qry.Parameters.FindParam('Pwd').value:=mdata['Pwd'];
       qry.Parameters.FindParam('gw').value:=mdata['gw'];
       qry.Parameters.FindParam('Interphone').value:=mdata['Interphone'];
       qry.Parameters.FindParam('Outsidephone').value:=mdata['Outsidephone'];
       qry.Parameters.FindParam('FFax').value:=mdata['FFax'];
       qry.Parameters.FindParam('FMail').value:=mdata['FMail'];
       qry.Parameters.FindParam('FDepartmentID').value:=mdata['FDepartmentID'];
       qry.Parameters.FindParam('FAgentID').value:=mdata['FAgentID'];
       qry.Parameters.FindParam('FTeam').value:=mdata['FTeam'];
       qry.Parameters.FindParam('NumID').value:=mdata['NumID'];
       result:=qry.ExecSQL>=1;
       if not result then
          break;
       mData.Next;
     end;
   finally
     qry.Free;
   end;
end;


procedure TFrm_SysTemUser.FormResize(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  L_title.Caption:='角色信息操作';
  Self.Caption:='角色信息操作';
  If not TreeVeiwList(qry,MyTreeView,'VT_SystemUser') then
  begin
    Application.MessageBox(PChar('物料树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;
end;

procedure TFrm_SysTemUser.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=cafree;
  Frm_SysTemUser:=nil;
end;

procedure TFrm_SysTemUser.TB_EXITClick(Sender: TObject);
begin
  inherited;
  self.Close;
end;

procedure TFrm_SysTemUser.MyTreeViewChange(Sender: TObject; Node: TTreeNode);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If Node = nil then Exit;
  with PTree(Node.Data)^ do
  begin
    P_FNumber:=PTree(Node.Data).FNumber;
    P_Caption:=PTree(Node.Data).Caption;
    If not MyItemList(qry,Mdata,'V_SystemUser','FNumber',P_FNumber,'FNumber') then
    begin
      mdata.Open;
      mdata.First;
    end;
    If not MyItemList(qry,Mdata_Brow,'V_SystemUser','FNumber',P_FNumber,'FNumber') then
    begin
      Mdata_Brow.Open;
      Mdata_Brow.First;
    end;
  end;

end;

procedure TFrm_SysTemUser.MyTreeViewExpanding(Sender: TObject;
  Node: TTreeNode; var AllowExpansion: Boolean);
var
  P :PTree;
  qry:TADOquery;
  Id:Integer;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  If (Node = nil) or
     (PTree(Node.Data).Flag <> cNoLoadFlag) or   // 1.加载标志
     (not Node.HasChildren) or                   // 2.未有子
     (Node.Count>0) then                         // 3.已有子节点
     Exit;

  qry.SQL.Text:='Select FNumber, FParentNumber,FName,'
               +'Isleaf from VT_SystemUser where FParentNumber='''
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
    P.Flag := cNoLoadFlag;                            // 新节点，未加载标志
    with MyTreeView.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('Isleaf').value;
    end;
    qry.Next;
  end;
end;

procedure TFrm_SysTemUser.TB_RefClick(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If not TreeVeiwList(qry,MyTreeView,'VT_SystemUser') then
  begin
    Application.MessageBox(PChar('物料树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;
end;

procedure TFrm_SysTemUser.OKBtnClick(Sender: TObject);
var qry: TADOQuery;
begin
  cxGV.OptionsData.Editing:=True;
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  mData.Edit;
  mData.Post;

  If P_state =0 then
  begin
    try
      qry.SQL.Text:='Select * from V_SystemUser where Num=:Num';
      qry.Parameters.FindParam('Num').Value:=mdata['Num'];
      qry.Open;
      If qry.RecordCount>0 then
      begin
         application.MessageBox('登录名重复！请重新选择','系统提示',MB_ICONERROR);
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



procedure TFrm_SysTemUser.CancelBtnClick(Sender: TObject);
begin
  inherited;
  L_title.Caption:='角色信息';
  Act_SetClose.Execute;
end;

procedure TFrm_SysTemUser.FormCreate(Sender: TObject);
begin
  inherited;
  TS_Brow.TabVisible:=True;
  TS_Edit.TabVisible:=False;
  TS_Item.ActivePage:=TS_Brow;

//  Act_App.Enabled:= mdlData.CheckFrmRights(TFrm_SysTemUser.ClassName,'新增');
//  Act_Edit.Enabled:= mdlData.CheckFrmRights(TFrm_SysTemUser.ClassName,'修改');
//  Act_Del.Enabled:= mdlData.CheckFrmRights(TFrm_SysTemUser.ClassName,'删除');
end;

procedure TFrm_SysTemUser.FormShow(Sender: TObject);
begin
  inherited;
  Act_Ref.Execute;
end;

procedure TFrm_SysTemUser.cxGV_BrowCustomDrawPartBackground(Sender: TcxGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxCustomGridCellViewInfo;
  var ADone: Boolean);
//var   AViewInfo:string;
begin
  inherited;
  AViewInfo.Text:='动态设置 GroupBox 的显示内容';
  ACanvas.FillRect(AViewInfo.Bounds);
end;

procedure TFrm_SysTemUser.ToolButton2Click(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.CommandTimeout:=500;

  If PC_2.ActivePage=TS_Login then
  begin
    try
      qry.SQL.Text:='Select * from V_LogIn order by FLoginDate desc';
      qry.Open;
    finally
       ;
    end;
    mdata_LogIN.CopyFromDataSet(qry);
    mdata_LogIN.Open;
    mdata_LogIN.First;
  end;

end;

procedure TFrm_SysTemUser.N_EditClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_SysTemUser.N_FilterClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_SysTemUser.N_SortClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_SysTemUser.N_GroupClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_SysTemUser.N_SetClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_SysTemUser.N_OutClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_SysTemUser.Act_MenuExecute(Sender: TObject);
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

procedure TFrm_SysTemUser.Act_Menu_SetExecute(Sender: TObject);
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

procedure TFrm_SysTemUser.cxGrid_BrowContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV_Brow';
  Gm:='mdata';
  Gr:='cxGrid_Brow';
  Act_Menu_Set.Execute;
end;

procedure TFrm_SysTemUser.Act_SYSExecute(Sender: TObject);
var  qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  TS_Brow.TabVisible:=False;
  TS_Edit.TabVisible:=True;
  TS_Item.ActivePage:=TS_Edit;
  try
    qry.SQL.Text:='select * from V_SystemUser with(nolock) where NumID=:NumID ';
    qry.Parameters.FindParam('NumID').value:=MData_Brow['NumID'];
    qry.Open;
  finally
   ;
  end;
  MData.CopyFromDataSet(qry);
  MData.Active:=True;
end;

procedure TFrm_SysTemUser.cxGV_BrowDblClick(Sender: TObject);
begin
  inherited;
  Act_SYS.Execute;
end;

procedure TFrm_SysTemUser.Act_SetOpenExecute(Sender: TObject);
begin
  inherited;
  Act_Ref.Visible:=False;
  Act_App.Visible:=False;
  Act_Edit.Visible:=False;
  Act_Del.Visible:=False;
  MyTreeView.Enabled:=False;

  Panel_OK.Visible:=True;
  cxGV.OptionsData.Editing:=True;
  cxGVC.OptionsData.Editing:=True;
  TS_Brow.TabVisible:=False;
  TS_Edit.TabVisible:=True;
  TS_Item.ActivePage:=TS_Edit;
end;

procedure TFrm_SysTemUser.Act_SetCloseExecute(Sender: TObject);
begin
  inherited;
  P_state:=2;

  Act_Ref.Visible:=True;
  Act_App.Visible:=True;
  Act_Edit.Visible:=True;
  Act_Del.Visible:=True;
  MyTreeView.Enabled:=True;
  Panel_OK.Visible:=False;
  cxGV.OptionsData.Editing:=False;

  TS_Brow.TabVisible:=True;
  TS_Edit.TabVisible:=False;
  TS_Item.ActivePage:=TS_Brow;
end;

procedure TFrm_SysTemUser.Act_AppExecute(Sender: TObject);
var
 qry:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  P_state :=0;
  L_title.Caption:='角色信息新增';
  Act_SetOpen.Execute;

  If mdata.RecordCount>0 then
  begin
    P_GW:=mdata['GW'];
    P_FDepartmentName:=mdata['FDepartmentName'];
    P_FDepartmentID:=mdata['FDepartmentID'];
    P_FTeam:=mdata['FTeam'];
  end
  else
  begin
    P_GW:='';
    P_FDepartmentName:='';
    P_FDepartmentID:=0;
    P_FTeam:='';
  end;
  try
    qry.SQL.Text:='Select * from V_systemuser with(nolock) where NumID=0';
    qry.Open;
  finally
     ;
  end;
  mdata.CopyFromDataSet(qry);
  mdata.Active:=True;
  mdata.Edit;
  mdata.Append;
  mdata['GW']:=P_GW;
  mdata['FDepartmentName']:=P_FDepartmentName;
  mdata['FDepartmentID']:=P_FDepartmentID;
  mdata['FTeam']:=P_FTeam;
  mdata.post;

end;

procedure TFrm_SysTemUser.Act_EditExecute(Sender: TObject);
begin
  P_state :=1;
  Act_SYS.Execute;
  L_title.Caption:='角色信息修改';
  Act_SetOpen.Execute;
end;

procedure TFrm_SysTemUser.Act_RefExecute(Sender: TObject);
var
  qry:TADOQuery;
  ResultBool:bool;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If (mdata.RecordCount<1) then
    Exit;

  If mdata.RecordCount<>1 then
  begin
    application.MessageBox('只允许删除单个记录！请重新选择!','系统提示',MB_ICONINFORMATION);
    Exit;
  end;

  qry:=TAdoQuery.Create(self);
  qry.Connection:=mdlData.conn;


  If application.MessageBox(Pchar('警告：是否删角色为：【'+Trim(Mdata['Num'])+'】的单据？'+chr(13)+chr(13)
                           +'删除数据操作将不可恢复，确定要删除本角色吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
  If application.MessageBox(Pchar('警告：是否删除角色为：【'+Trim(Mdata['Num'])+'】的单据？'+chr(13)+chr(13)
                           +'删除数据操作将不可恢复，确定要删除本角色吗？'),'再次警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then

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
  Act_ref.Execute;

end;

procedure TFrm_SysTemUser.GW_CardPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='select distinct GW from V_SystemUser order by GW';
    qry.Open;
  finally
     ;
  end;
  selValue:=select('请选择岗位','GW','GW','GW','GW',qry);
  If Length(selValue)>0 then
  begin
    (Sender as TcxButtonEdit).EditingText:=qry.FieldByName('GW').AsString
  end;
end;

procedure TFrm_SysTemUser.FDepartmentName_CardPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='select * from VT_Department order by FNumber';
    qry.Open;
  finally
     ;
  end;
  selValue:=select('请选择部门','FNumber','FParentNumber','FNumber','FName',qry);
  If Length(selValue)>0 then
  begin
    mdata.Edit;
    mdata['FDepartmentName']:=qry.FieldByName('FDepartmentName').Value;
    mdata['FDepartmentID']:=qry.FieldByName('FDepartmentID').Value;
    mdata['FAgentID']:=qry.FieldByName('FDepartmentID').Value;
   // mdata.Post;
  end;
end;

procedure TFrm_SysTemUser.FAgentName_CardPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='select * from VT_AgentItem order by FNumber';
    qry.Open;
  finally
     ;
  end;
  selValue:=select('选择外协单位名称','FNumber','FParentNumber','FNumber','FName',qry);
  If Length(selValue)>0 then
  begin
    mdata.Edit;
    mdata['FAgentName']:=qry.FieldByName('FAgentName').Value;
    mdata['FAgentID']:=qry.FieldByName('FAgentID').Value;
   // mdata.Post;
  end;

end;

procedure TFrm_SysTemUser.FTeam_CardPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='select distinct FTeam from V_SystemUser order by FTeam';
    qry.Open;
  finally
     ;
  end;
  selValue:=select('请选择处室','FTeam','FTeam','FTeam','FTeam',qry);
  If Length(selValue)>0 then
  begin
    mdata.Edit;
    (Sender as TcxButtonEdit).EditingText:=qry.FieldByName('FTeam').AsString
   // mdata.Post;
  end;


end;

procedure TFrm_SysTemUser.cxGridContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV';
  Gm:='mdata';
  Gr:='cxGrid';
  Act_Menu_Set.Execute;
end;

procedure TFrm_SysTemUser.Act_MaxIDExecute(Sender: TObject);
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
      value:='T_SystemUser';
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

procedure TFrm_SysTemUser.Act_DelExecute(Sender: TObject);
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
  If application.MessageBox(Pchar('警告：是否删除角色为：【'+Trim(Mdata['Num'])+'】的数据？'+chr(13)+chr(13)
                           +'删除数据操作将不可恢复，确定要删除本数据吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
  If application.MessageBox(Pchar('警告：是否删除角色为：【'+Trim(Mdata['Num'])+'】的数据？'+chr(13)+chr(13)
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

procedure TFrm_SysTemUser.cxGVCDblClick(Sender: TObject);
begin
  inherited;
  TS_Brow.TabVisible:=True;
  TS_Edit.TabVisible:=False;
  TS_Item.ActivePage:=TS_Brow;

end;

procedure TFrm_SysTemUser.E_LocatePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
 qry: TADOQuery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Select * from V_SystemUser with(nolock) where Num like :Locate1 or '
                 +'MC like :Locate2 or FTeam like :Locate3 '
                 +'or GW like :Locate4 or FDepartmentName like :Locate5 '
                 +'or FDepartCostSort like :Locate6 or Interphone like :Locate7 ';
    qry.Parameters.FindParam('Locate1').Value:='%'+Trim(E_Locate.Text)+'%';
    qry.Parameters.FindParam('Locate2').Value:='%'+Trim(E_Locate.Text)+'%';
    qry.Parameters.FindParam('Locate3').Value:='%'+Trim(E_Locate.Text)+'%';
    qry.Parameters.FindParam('Locate4').Value:='%'+Trim(E_Locate.Text)+'%';
    qry.Parameters.FindParam('Locate5').Value:='%'+Trim(E_Locate.Text)+'%';
    qry.Parameters.FindParam('Locate6').Value:='%'+Trim(E_Locate.Text)+'%';
    qry.Parameters.FindParam('Locate7').Value:='%'+Trim(E_Locate.Text)+'%';
    qry.Open;
  finally
     ;
  end;
  MData_Brow.CopyFromDataSet(qry);
  MData_Brow.Active:=True;

end;

end.
