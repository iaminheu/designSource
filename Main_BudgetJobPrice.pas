unit Main_BudgetJobPrice;

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
  cxSpinEdit, ActnList,cxDBEdit, Menus;

type
  TFrm_BudgetJobPrice = class(TFrm_GridBass)
    MData: TdxMemData;
    DS_Mdata: TDataSource;
    ImageList: TImageList;
    Panel1: TPanel;
    ToolBar_WorkCarryJob: TToolBar;
    ToolButton5: TToolButton;
    ToolButton1: TToolButton;
    TB_Prin: TToolButton;
    TB_EXIT: TToolButton;
    frReport: TfrReport;
    frDBDataSet: TfrDBDataSet;
    RzSizePanel1: TRzSizePanel;
    PC_2: TRzPageControl;
    TS_WorkTaskWorkPrice: TRzTabSheet;
    TB_Ref: TToolButton;
    TB_App: TToolButton;
    TB_Edit: TToolButton;
    TB_Del: TToolButton;
    PanelBkGnd: TPanel;
    ToolBar_Save: TPanel;
    Bevel_button: TBevel;
    OKBtn: TcxButton;
    CancelBtn: TcxButton;
    cxGrid: TcxGrid;
    cxGV: TcxGridDBTableView;
    FBudgetPartsName: TcxGridDBColumn;
    cxGL: TcxGridLevel;
    MyTreeView: TTreeView;
    FParentNumber: TcxGridDBColumn;
    FWorkPriceID: TcxGridDBColumn;
    FNumber: TcxGridDBColumn;
    Image2: TImage;
    FWorkTaskPartsModel: TcxGridDBColumn;
    FBudgetPartsUnit: TcxGridDBColumn;
    FWorkPriceReMark: TcxGridDBColumn;
    Label2: TLabel;
    Sel: TcxGridDBColumn;
    FWorkBasePrice: TcxGridDBColumn;
    FWorkResizePrice: TcxGridDBColumn;
    FWorkPrice: TcxGridDBColumn;
    E_FWorkCarryJobID: TcxButtonEdit;
    E_FWorkCarryJob: TcxButtonEdit;
    FBudgetPartsID: TcxGridDBColumn;
    FWorkCarryJob: TcxGridDBColumn;
    Image3: TImage;
    E_FWorkCarryJobYear: TcxSpinEdit;
    E_FWorkCarryJobMonth: TcxSpinEdit;
    SB_App: TSpeedButton;
    Label1: TLabel;
    Label4: TLabel;
    E_FProductName: TcxButtonEdit;
    E_FProductID: TcxButtonEdit;
    TB_Price: TToolButton;
    Label3: TLabel;
    FProductName: TcxGridDBColumn;
    Image1: TImage;
    actionList: TActionList;
    Act_Set_Open: TAction;
    ActApp: TAction;
    ActSave: TAction;
    ActOut: TAction;
    ActEdit: TAction;
    ActDel: TAction;
    Act_Submit: TAction;
    Act_Audit: TAction;
    Act_Status: TAction;
    Act_Set_Close: TAction;
    Act_Menu: TAction;
    Act_Menu_Set: TAction;
    Act_MaxID: TAction;
    Act_Sel: TAction;
    Act_TS_BudgetJobPrice: TAction;
    PM: TPopupMenu;
    N_Edit: TMenuItem;
    N_Filter: TMenuItem;
    N_Sort: TMenuItem;
    N_Group: TMenuItem;
    N_Set: TMenuItem;
    N_Out: TMenuItem;
    FManageParts: TcxGridDBColumn;
    Act_Sel_FNumber: TAction;
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
    procedure E_FAgentDatePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure E_FWorkCarryJobDblClick(Sender: TObject);
    procedure SB_AppClick(Sender: TObject);
    procedure MDataBeforePost(DataSet: TDataSet);
    procedure E_FProductNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure TB_PrinClick(Sender: TObject);
    procedure TB_PriceClick(Sender: TObject);
    procedure N_EditClick(Sender: TObject);
    procedure N_FilterClick(Sender: TObject);
    procedure N_SortClick(Sender: TObject);
    procedure N_GroupClick(Sender: TObject);
    procedure N_SetClick(Sender: TObject);
    procedure N_OutClick(Sender: TObject);
    procedure cxGridContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure Act_MenuExecute(Sender: TObject);
    procedure Act_Menu_SetExecute(Sender: TObject);
    procedure Act_Set_OpenExecute(Sender: TObject);
    procedure Act_Set_CloseExecute(Sender: TObject);
    procedure Act_TS_BudgetJobPriceExecute(Sender: TObject);
    procedure Act_StatusExecute(Sender: TObject);
    procedure E_FProductIDPropertiesEditValueChanged(Sender: TObject);
    procedure Act_Sel_FNumberExecute(Sender: TObject);
    procedure Act_SelExecute(Sender: TObject);
    procedure SelPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    { Private declarations }
    function AddRd:bool;
    function EditRd:bool;
    function DelRd:bool;

  public

    { Public declarations }
  end;

var
  Frm_BudgetJobPrice: TFrm_BudgetJobPrice;


implementation

uses FRMDATA, FRMMAIN, COMMON, FrmSelect, ProgBar, PROGRASS;

{$R *.dfm}


function TFrm_BudgetJobPrice.DelRd: bool;
var
 qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Delete from T_BudgetJobPrice where FWorkPriceID=:FWorkPriceID';
    with qry.Parameters do
    begin
      FindParam('FWorkPriceID').value:=mdata['FWorkPriceID'];
    end;
    result:=qry.ExecSQL>=1;
  finally
    qry.Free;
  end;
end;

function TFrm_BudgetJobPrice.AddRd: bool;
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

  try
    qry.SQL.Text:='Insert into T_BudgetJobPrice(FBudgetPartsID, FWorkBasePrice, FWorkResizePrice,FWorkCarryJobID) '
                 +'values(:FBudgetPartsID, :FWorkBasePrice, :FWorkResizePrice, :FWorkCarryJobID)';
    mData.First;
    while not mData.eof do
    begin
      If (mData['FWorkBasePrice']<>0) or (mData['FWorkResizePrice']<>0) then
      begin
        If qry.Active then qry.Close;
        qry.Parameters.FindParam('FBudgetPartsID').value:=mdata['FBudgetPartsID'];
        If mdata['FWorkBasePrice']=Null then
           qry.Parameters.FindParam('FWorkBasePrice').value:=0.000000
        else
           qry.Parameters.FindParam('FWorkBasePrice').value:=mdata['FWorkBasePrice'];
        If mdata['FWorkResizePrice']=Null then
           qry.Parameters.FindParam('FWorkResizePrice').value:=0
        else
           qry.Parameters.FindParam('FWorkResizePrice').value:=mdata['FWorkResizePrice'];
        qry.Parameters.FindParam('FWorkCarryJobID').value:=Trim(E_FWorkCarryJobID.Text);
        result:=qry.ExecSQL>=1;
        if not result then break;
      end;
      mData.Next;
    end;
  finally
     qry.Free;
  end;

end;


function TFrm_BudgetJobPrice.EditRd:bool;
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
  try
    qry.SQL.Text:='Update T_BudgetJobPrice set FBudgetPartsID=:FBudgetPartsID,FWorkBasePrice=:FWorkBasePrice,FWorkResizePrice=:FWorkResizePrice,'
                 +'FWorkCarryJobID=:FWorkCarryJobID where FWorkPriceID=:FWorkPriceID';
    mData.First;
    while not mData.eof do
    begin
      If (mData['FWorkBasePrice']<>0) or (mData['FWorkResiaePrice']<>0) then
      begin
        If qry.Active then qry.Close;
        with qry.Parameters do
        begin
          FindParam('FBudgetPartsID').value:=mdata['FBudgetPartsID'];;
          FindParam('FWorkBasePrice').value:=mdata['FWorkBasePrice'];
          FindParam('FWorkResizePrice').value:=mdata['FWorkResizePrice'];
          FindParam('FWorkCarryJobID').value:=mdata['FWorkCarryJobID'];
          FindParam('FWorkPriceID').value:=mdata['FWorkPriceID'];
         end;
         result:=qry.ExecSQL>=1;
        if not result then break;
      end;
      mData.Next;
    end;
  finally
    qry.Free;
  end;
end;


procedure TFrm_BudgetJobPrice.FormResize(Sender: TObject);
begin
  inherited;
  L_title.Caption:=UserFDepartmentName+'外协工管单价';
  Self.Caption:=UserFDepartmentName+'外协工管单价';

end;

procedure TFrm_BudgetJobPrice.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=cafree;
  Frm_BudgetJobPrice:=nil;
end;

procedure TFrm_BudgetJobPrice.TB_EXITClick(Sender: TObject);
begin
  inherited;
  self.Close;
end;

procedure TFrm_BudgetJobPrice.MyTreeViewChange(Sender: TObject; Node: TTreeNode);
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
    P_th:=PTree(Node.Data).Caption;
    P_Isleaf:=PTree(Node.Data).Isleaf;

    Act_TS_BudgetJobPrice.Execute;//页选项设置
    Act_Status.Execute; //权限设置


  end;

end;

procedure TFrm_BudgetJobPrice.MyTreeViewExpanding(Sender: TObject;
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

  qry.SQL.Text:='Select FNumber, FParentNumber,FName,'
               +'Isleaf from VT_BudgetJobPrice with(nolock) where FParentNumber= '''
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
    with MyTreeView.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('Isleaf').value;
    end;
    qry.Next;
  end;


end;

procedure TFrm_BudgetJobPrice.TB_RefClick(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If UserFDepartmentsort=1 then //事业部
  begin
    If not TreeVeiwListWhere(qry,MyTreeView,'VT_BudgetJobPrice',' and FDepartmentID='+IntToStr(UserFDepartmentID) ) then
       Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;
  If UserFDepartmentsort=2 then //子公司
  begin
    If not TreeVeiwList(qry,MyTreeView,'VT_BudgetJobPrice' ) then
       Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;

end;

procedure TFrm_BudgetJobPrice.OKBtnClick(Sender: TObject);
var qry: TADOQuery;

begin
  cxGV.OptionsData.Editing:=True;
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  mData.Edit;
  mData.Post;
  If (StrToInt(Trim(E_FWorkCarryJobID.Text))=0) then
  begin
    application.MessageBox('关键字不能为空！请重新输入','系统提示',MB_ICONERROR);
    Exit;
  end;
  If (P_state =0) and (mdata.RecordCount=1) then
  begin
    try
      qry.SQL.Text:='Select * from V_BudgetJobPrice with(nolock) where FDepartmentID=:FDepartmentID and FBudgetPartsID=:FBudgetPartsID and FWorkCarryJobID=:FWorkCarryJobID';
      qry.Parameters.FindParam('FDepartmentID').Value:=UserFDepartmentID;
      qry.Parameters.FindParam('FBudgetPartsID').Value:=mdata['FBudgetPartsID'];
      qry.Parameters.FindParam('FWorkCarryJobID').Value:=StrToInt(Trim(E_FWorkCarryJobID.Text));
      qry.Open;
      If qry.RecordCount>0 then
      begin
         application.MessageBox('此工管执行价日期的结算部件已存在！请重新输入','系统提示',MB_ICONERROR);
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
        //mdata.Close;
        TB_App.Click ;
      end
      else
      begin
        inherited;
        E_FWorkCarryJob.Enabled:=False;
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



procedure TFrm_BudgetJobPrice.TB_AppClick(Sender: TObject);
var
 qry:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  P_state :=0;
  L_title.Caption:=UserFDepartmentName+'外协工管单价数据新增';
  try
    qry.SQL.Text:='Select * from V_BudgetJobPrice with(nolock) where FWorkPriceID=0';
    qry.Open;
  finally
     ;
  end;
  mdata.CopyFromDataSet(qry);
  mdata.Active:=True;
  mdata.Edit;
  mdata.Append;
  mdata.Post;

  Act_Set_Open.Execute;
  If E_FProductID.Text='' then
      E_FWorkCarryJob.Enabled:=False;

end;

procedure TFrm_BudgetJobPrice.TB_EditClick(Sender: TObject);
var
 qry:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  P_state :=1;        //修改
  If (mdata.RecordCount<1) then
    Exit;
  If mdata.RecordCount<>1 then
  begin
    application.MessageBox('只允许修改单个记录！请重新选择!','系统提示',MB_ICONINFORMATION);
    Exit;
  end;
  If mdata.RecordCount=0 then
  begin
    application.MessageBox('无记录可修改！请重新选择!','系统提示',MB_ICONINFORMATION);
    Exit;
  end;

  try
    qry.SQL.Text:='Select * from V_BudgetJobPrice with(nolock) where FBudgetPartsID=:FBudgetPartsID and FWorkCarryJobID=:FWorkCarryJobID';
    qry.Parameters.FindParam('FBudgetPartsID').Value:=mdata['FBudgetPartsID'];
    qry.Parameters.FindParam('FWorkCarryJobID').Value:=mdata['FWorkCarryJobID'];
//    qry.Parameters.FindParam('FWorkCarryJob').Value:=Trim(E_FWorkCarryJob.Text);
    qry.Open;
  finally
     ;
  end;
  if qry.RecordCount>0 then
  begin
    application.MessageBox(Pchar('部件【'+Trim(Mdata['FBudgetPartsName'])+'】【'+Trim(Mdata['FBudgetPartsModel'])+'】【'+Trim(Mdata['FWorkCarryJob'])+'】已启用不允许修改！'),'系统提示',MB_ICONINFORMATION);
    Exit;
  end;

  L_title.Caption:=UserFDepartmentName+'外协工管单价数据修改';
  Act_Set_Open.Execute;

end;

procedure TFrm_BudgetJobPrice.TB_DelClick(Sender: TObject);
var
  qry:TADOQuery;

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
  If mdata.RecordCount=0 then
  begin
    application.MessageBox('无记录可删除！请重新选择!','系统提示',MB_ICONINFORMATION);
    Exit;
  end;

  try
    qry.SQL.Text:='Select * from T_BudgetPrice where FWorkPriceID=:FWorkPriceID';
    qry.Parameters.FindParam('FWorkPriceID').Value:=mdata['FWorkPriceID'];
    qry.Open;
  finally
     ;
  end;
  if qry.RecordCount>0 then
  begin
    application.MessageBox(Pchar('部件【'+Trim(Mdata['FBudgetPartsName'])+'】【'+Trim(Mdata['FBudgetPartsModel'])+'】【'+Trim(Mdata['FWorkCarryJob'])+'】已启用不允许删除！'),'系统提示',MB_ICONINFORMATION);
    Exit;
  end;

  If application.MessageBox(Pchar('警告：是否删除：【'+Trim(Mdata['FBudgetPartsName'])+'】【'+Trim(Mdata['FBudgetPartsModel'])+'】【'+Trim(Mdata['FWorkCarryJob'])+'】的信息？'+chr(13)+chr(13)
                           +'删除数据操作将不可恢复，确定要删除本数据吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
  If application.MessageBox(Pchar('警告：是否删除：【'+Trim(Mdata['FBudgetPartsName'])+'】【'+Trim(Mdata['FBudgetPartsModel'])+'】【'+Trim(Mdata['FWorkCarryJob'])+'】的信息？'+chr(13)+chr(13)
                           +'删除数据操作将不可恢复，确定要删除本数据吗？'),'再次警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then

  begin
    //单据删除
    If not DelRd then
    begin
      application.MessageBox('删除数据失败！','系统提示',MB_ICONINFORMATION);
      mdlData.conn.RollbackTrans;
      Exit;
    end;
  end;
  mdata.Close;
  qry.Free;

end;

procedure TFrm_BudgetJobPrice.CancelBtnClick(Sender: TObject);
begin
  inherited;
  L_title.Caption:=UserFDepartmentName+'外协工管单价';
  mdata.Close;
  Act_Set_Close.Execute;
end;

procedure TFrm_BudgetJobPrice.FormCreate(Sender: TObject);
begin
  inherited;
  TB_App.Enabled:= mdlData.CheckFrmRights(TFrm_BudgetJobPrice.ClassName,'新增');
  TB_Price.Enabled:= mdlData.CheckFrmRights(TFrm_BudgetJobPrice.ClassName,'新增');
  TB_Prin.Enabled:= mdlData.CheckFrmRights(TFrm_BudgetJobPrice.ClassName,'打印');
  N_Out.Enabled:= mdlData.CheckFrmRights(TFrm_BudgetJobPrice.ClassName,'打印');

end;

procedure TFrm_BudgetJobPrice.FormShow(Sender: TObject);
begin
  TB_Ref.Click;
end;

procedure TFrm_BudgetJobPrice.E_FAgentDatePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='select distinct FWorkCarryJobYear as FNumber,'''' as FParentNumber,FWorkCarryJobYear as FName,'
                 +''''' as FWorkCarryJob,0 as FWorkCarryJobID,0 as isleaf from T_WorkCarryJob with(nolock) where FDepartmentID=:FDepartmentID1 '
                 +' union '
                 +'select distinct FWorkCarryJobMonth as FNumber,FWorkCarryJobYear as FParentNumber,FWorkCarryJob as FName,'
                 +'FWorkCarryJob,FWorkCarryJobID,1 as isleaf from T_WorkCarryJob with(nolock) where FDepartmentID=:FDepartmentID2 ';
    qry.Parameters.FindParam('FDepartmentID1').value:=UserFDepartmentID;
    qry.Parameters.FindParam('FDepartmentID2').value:=UserFDepartmentID;
    qry.Open;
  finally
     ;
  end;
  selValue:=select('请选择工管执行日期','FNumber','FParentNumber','FNumber','FName',qry);
  If (Length(selValue)>0) and (qry.FieldByName('isleaf').Value>0) and (qry.RecordCount>0) then
  begin
    E_FWorkCarryJob.Text:=qry.FieldByName('FWorkCarryJob').AsString;
    E_FWorkCarryJobID.Text:=qry.FieldByName('FWorkCarryJobID').AsString;
  end
  else
  begin
    messagedlg('请选择明细！',mtInformation,[mbok],0);
    mdata.Close;
    Exit;
  end;

  qry.Free;


end;

procedure TFrm_BudgetJobPrice.E_FWorkCarryJobDblClick(Sender: TObject);
begin
  inherited;
  SB_App.Enabled:=True;
  E_FWorkCarryJobYear.Enabled:=True;
  E_FWorkCarryJobMonth.Enabled:=True;

end;

procedure TFrm_BudgetJobPrice.SB_AppClick(Sender: TObject);
var qry: TADOQuery;
    a:Integer;
begin
  a:=E_FWorkCarryJobMonth.Value;
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  try
    qry.SQL.Text:='Select * from T_WorkCarryJob with(nolock) where FDepartmentID=:FDepartmentID and FWorkCarryJobYear=:FWorkCarryJobYear and FWorkCarryJobMonth=:FWorkCarryJobMonth';
    with qry.Parameters do
    begin
      FindParam('FDepartmentID').value:=UserFDepartmentID;
      FindParam('FWorkCarryJobYear').value:=IntToStr(E_FWorkCarryJobYear.Value);
      FindParam('FWorkCarryJobMonth').value:=Format('%.2d',[a]);
    end;
    qry.Open;
    If qry.RecordCount>0 then
    begin
      application.MessageBox('此工管执行日期已存在！不允许重复','系统提示',MB_ICONERROR);
      Exit;
    end
  finally
    ;
  end;

  If application.MessageBox('是否新增工管执行日期？','提示',MB_ICONINFORMATION+MB_YESNO)=6 then
  begin
    try
      qry.SQL.Text:='Insert into T_WorkCarryJob(FWorkCarryJobYear,FWorkCarryJobMonth,FDepartmentID) '
                   +'values(:FWorkCarryJobYear,:FWorkCarryJobMonth,:FDepartmentID)';
      with qry.Parameters do
      begin
        FindParam('FWorkCarryJobYear').value:=IntToStr(E_FWorkCarryJobYear.Value);
        FindParam('FWorkCarryJobMonth').value:=Format('%.2d',[a]);
        FindParam('FDepartmentID').value:=UserFDepartmentID;
      end;
      qry.ExecSQL;
    finally
      ;
    end;
    application.MessageBox('工管执行日期新增成功。','系统提示',MB_ICONERROR);

  end;

end;

procedure TFrm_BudgetJobPrice.MDataBeforePost(DataSet: TDataSet);
begin
  inherited;
  DataSet['FWorkPrice']:=DataSet['FWorkBasePrice']+DataSet['FWorkResizePrice'];
end;

procedure TFrm_BudgetJobPrice.E_FProductNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='select distinct FProductID,FProductName from T_Product with(nolock) where FDepartmentID=:FDepartmentID order by FProductName';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Open;
  finally
     ;
  end;
  selValue:=select('请选择产品类别','FProductName','FProductName','FProductName','FProductName',qry);
  If Length(selValue)>0 then
  begin
    E_FProductID.Text:=qry.FieldByName('FProductID').AsString;
    E_FProductName.Text:=qry.FieldByName('FProductName').AsString;
  end;

end;

procedure TFrm_BudgetJobPrice.TB_PrinClick(Sender: TObject);
begin
  inherited;
  FrReport.LoadFromFile(ExtractFileDir(Application.ExeName)+'\Report_DesignBOM_WorkPrice.frf');
  FrReport.ShowReport;
end;

procedure TFrm_BudgetJobPrice.TB_PriceClick(Sender: TObject);
begin
  inherited;
  SB_App.Enabled:=True;
  E_FWorkCarryJobYear.Enabled:=True;
  E_FWorkCarryJobMonth.Enabled:=True;
end;

procedure TFrm_BudgetJobPrice.N_EditClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_BudgetJobPrice.N_FilterClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_BudgetJobPrice.N_SortClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_BudgetJobPrice.N_GroupClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_BudgetJobPrice.N_SetClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_BudgetJobPrice.N_OutClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_BudgetJobPrice.cxGridContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV';
  Gm:='mdata';
  Gr:='cxGrid';
  Act_Menu_Set.Execute;
end;

procedure TFrm_BudgetJobPrice.Act_MenuExecute(Sender: TObject);
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

procedure TFrm_BudgetJobPrice.Act_Menu_SetExecute(Sender: TObject);
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

procedure TFrm_BudgetJobPrice.Act_Set_OpenExecute(Sender: TObject);
begin
  inherited;
  ToolBar_WorkCarryJob.Visible:=False;
  ToolBar_Save.Visible:=True;

  MyTreeView.Enabled:=False;

  cxGV.OptionsData.Editing:=True;

  E_FWorkCarryJob.Enabled:=True;
  E_FProductName.Enabled:=True;
  Sel.Visible:=True;
  Sel.Options.Editing:=True;
  FWorkBasePrice.Options.Editing:=True;
  FWorkResizePrice.Options.Editing:=True;

end;

procedure TFrm_BudgetJobPrice.Act_Set_CloseExecute(Sender: TObject);
begin
  inherited;
  ToolBar_WorkCarryJob.Visible:=True;
  ToolBar_Save.Visible:=False;

  MyTreeView.Enabled:=True;

  cxGV.OptionsData.Editing:=False;
  Sel.Options.Editing:=False;

  E_FWorkCarryJob.Enabled:=False;
  E_FProductName.Enabled:=False;

end;

procedure TFrm_BudgetJobPrice.Act_TS_BudgetJobPriceExecute(
  Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.EnableBCD:=False;//小数位数>4
  If not MyItemList(qry,Mdata,'V_BudgetJobPrice','FFullNumber',ListItemFNumber,'FFullNumber') then
  begin
    mdata.Open;
    cxGvColumn(cxGv,Mdata);
  end;
  If mdata.RecordCount>0 then
  begin
    E_FWorkCarryJobID.Text:= mdata['FWorkCarryJobID'];
    E_FWorkCarryJob.Text:= mdata['FWorkCarryJob'];
    E_FProductName.Text:= mdata['FProductName'];
    E_FProductID.Text:= mdata['FProductID'];
  end;
end;

procedure TFrm_BudgetJobPrice.Act_StatusExecute(Sender: TObject);
begin
  inherited;
  If P_Isleaf=1 then
  begin
    TB_Edit.Visible:= mdlData.CheckFrmRights(TFrm_BudgetJobPrice.ClassName,'修改');
    TB_Del.Visible:=mdlData.CheckFrmRights(TFrm_BudgetJobPrice.ClassName,'删除');
  end
  else
  begin
    TB_Edit.Visible:=False;
    TB_Del.Visible:=False;
  end;
end;

procedure TFrm_BudgetJobPrice.E_FProductIDPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
   If (E_FProductID.Text<>'') and (E_FProductID.EditValue<>0) then
      E_FWorkCarryJob.Enabled:=True
   else
      E_FWorkCarryJob.Enabled:=False;

end;

procedure TFrm_BudgetJobPrice.Act_Sel_FNumberExecute(Sender: TObject);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Select * from VT_BudgetParts with(nolock) where FDepartmentID=:FDepartmentID order by FNumber';
    qry.Parameters.FindParam('FDepartmentID').Value:=UserFDepartmentID;
    qry.Open;
  finally
     ;
  end;
  selValue:=select('请选择部件编码','FNumber','FParentNumber','FNumber','FName',qry);
  If (Length(selValue)>0) and (qry.FieldByName('IsLeaf').Value<>0) then
  begin
    mdata.Edit;
    mdata['FBudgetPartsID']:=qry.FieldByName('FBudgetPartsID').AsString;
    mdata.Post;

  end
  else
  begin
    messagedlg('请选择明细！',mtInformation,[mbok],0);
    Exit;
  end;
 { try
    qry.SQL.Text:='select * from V_BudgetJobPrice where FBudgetPartsID=:FBudgetPartsID and FWorkCarryJobID=:FWorkCarryJobID ';
    qry.Parameters.FindParam('FBudgetPartsID').Value:=mdata['FBudgetPartsID'];
    qry.Parameters.FindParam('FWorkCarryJobID').Value:=StrToInt(Trim(E_FWorkCarryJobID.Text));
    qry.Open;
  finally
    ;
  end;
  If qry.RecordCount>0 then
  begin
    messagedlg('此部件执行单价已存在，请重新选择！',mtInformation,[mbok],0);
    Exit;
  end;
  try
     qry.SQL.Text:='Select *,0.00000 as FWorkBasePrice,0.00000 as FWorkResizePrice,0.00000 as FWorkPrice from V_BudgetParts with(nolock) '
                   +'where FDepartmentID=:FDepartmentID and FProductID=:FProductID';
     qry.Parameters.FindParam('FDepartmentID').Value:=UserFDepartmentID;
     qry.Parameters.FindParam('FProductID').Value:=StrToInt(Trim(E_FProductID.Text));
     qry.Open;
  finally
     ;
  end;
  Mdata.CopyFromDataSet(qry);
  Mdata.Active:=True;
  Mdata.First;
  }
end;

procedure TFrm_BudgetJobPrice.Act_SelExecute(Sender: TObject);
var selValue : string;
    qry,qry1: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry1:=TADOQuery.Create(Self);
  qry1.ConnectionString:=mdlData.ReadConnStr;

  try
    qry.SQL.Text:='Select * from V_BudgetJobPrice with(nolock) where FWorkCarryJobID=:FWorkCarryJobID and FProductID=:FProductID and FDepartmentID=:FDepartmentID';
    qry.Parameters.FindParam('FWorkCarryJobID').Value:=StrToInt(Trim(E_FWorkCarryJobID.Text));
    qry.Parameters.FindParam('FProductID').Value:=StrToInt(Trim(E_FProductID.Text));
    qry.Parameters.FindParam('FDepartmentID').Value:=UserFDepartmentID;
    qry.Open;
  finally
     ;
  end;

  If qry.RecordCount>0 then
  begin
     try
        qry1.SQL.Text:='Select *,0.00000 as FWorkBasePrice,0.00000 as FWorkResizePrice,0.00000 as FWorkPrice from V_BudgetParts with(nolock) '
                      +'where FDepartmentID=:FDepartmentID and FProductID=:FProductID '
                      +' and FBudgetPartsID not in (select FBudgetPartsID from V_BudgetJobPrice where FWorkCarryJobID=:FWorkCarryJobID)';
        qry1.Parameters.FindParam('FDepartmentID').Value:=UserFDepartmentID;
        qry1.Parameters.FindParam('FProductID').Value:=StrToInt(Trim(E_FProductID.Text));
        qry1.Parameters.FindParam('FWorkCarryJobID').Value:=StrToInt(Trim(E_FWorkCarryJobID.Text));
        qry1.Open;
      finally
         ;
      end;
      If qry1.RecordCount>0 then
      begin
        Mdata.CopyFromDataSet(qry1);
        Mdata.Active:=True;
        Mdata.First;
      end
      else
      begin
        messagedlg('部件执行单价已存在，请重新选择！',mtInformation,[mbok],0);
        Exit;
      end;
    {Act_Sel_FNumber.Execute;
    try
      qry.SQL.Text:='select * from V_BudgetJobPrice where FBudgetPartsID=:FBudgetPartsID and FWorkCarryJobID=:FWorkCarryJobID ';
      qry.Parameters.FindParam('FBudgetPartsID').Value:=mdata['FBudgetPartsID'];
      qry.Parameters.FindParam('FWorkCarryJobID').Value:=StrToInt(Trim(E_FWorkCarryJobID.Text));
      qry.Open;
    finally
      ;
    end;
    If qry.RecordCount>0 then
    begin
      messagedlg('此部件执行单价已存在，请重新选择！',mtInformation,[mbok],0);
      Exit;
    end;

    try
      qry.SQL.Text:='select * from V_BudgetParts where FBudgetPartsID=:FBudgetPartsID ';
      qry.Parameters.FindParam('FBudgetPartsID').Value:=mdata['FBudgetPartsID'];
      qry.Open;
    finally
       ;
    end;
    If qry.RecordCount=1 then
    begin
      mdata.Edit;
      mdata['FBudgetPartsName']:=qry.FieldByName('FBudgetPartsName').AsString;
      mdata['FBudgetPartsModel']:=qry.FieldByName('FBudgetPartsModel').AsString;
      mdata['FBudgetPartsUnit']:=qry.FieldByName('FBudgetPartsUnit').AsString;
      mdata['FWorkBasePrice']:=0.0000;
      mdata['FWorkResizePrice']:=0.0000;
      mdata['FWorkPrice']:=0.0000;
      mdata.Post;
    end;  }
  end
  else
  begin
    //取最大的工管执行价
    try
      qry.SQL.Text:='select * from V_BudgetJobPrice with(nolock) where FDepartmentID=:FDepartmentID1 and FProductID=:FProductID '
                   +'and FWorkCarryJob=(Select max(FWorkCarryJob) from V_BudgetJobPrice where FDepartmentID=:FDepartmentID2)';
      qry.Parameters.FindParam('FDepartmentID1').Value:=UserFDepartmentID;
      qry.Parameters.FindParam('FProductID').Value:=StrToInt(Trim(E_FProductID.Text));
      qry.Parameters.FindParam('FDepartmentID2').Value:=UserFDepartmentID;
      qry.Open;
    finally
       ;
    end;

    If qry.RecordCount>0 then
    begin
      Mdata.CopyFromDataSet(qry);
      Mdata.Active:=True;
      Mdata.First;
    end
    else
    begin
      try
        qry1.SQL.Text:='Select *,0.00000 as FWorkBasePrice,0.00000 as FWorkResizePrice,0.00000 as FWorkPrice from V_BudgetParts with(nolock) '
                      +'where FDepartmentID=:FDepartmentID and FProductID=:FProductID';
        qry1.Parameters.FindParam('FDepartmentID').Value:=UserFDepartmentID;
        qry1.Parameters.FindParam('FProductID').Value:=StrToInt(Trim(E_FProductID.Text));
        qry1.Open;
      finally
         ;
      end;
      Mdata.CopyFromDataSet(qry1);
      Mdata.Active:=True;
      Mdata.First;
    end;
  end;

  qry.Free;

end;

procedure TFrm_BudgetJobPrice.SelPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  Act_Sel.Execute;
end;

end.
