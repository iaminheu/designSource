unit Main_ErSatz;

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
  ActnList, Menus;

type
  TFrm_ErSatz = class(TFrm_GridBass)
    MData: TdxMemData;
    DS_Mdata: TDataSource;
    ImageList: TImageList;
    Panel1: TPanel;
    ToolBar1: TToolBar;
    ToolButton5: TToolButton;
    ToolButton1: TToolButton;
    TB_PRIN: TToolButton;
    TB_EXIT: TToolButton;
    frReport: TfrReport;
    frDBDataSet: TfrDBDataSet;
    RzSizePanel1: TRzSizePanel;
    PC_2: TRzPageControl;
    TS_Brow: TRzTabSheet;
    TB_app: TToolButton;
    TB_EDIT: TToolButton;
    TB_DEL: TToolButton;
    TB_refresh: TToolButton;
    PanelBkGnd: TPanel;
    Panel_button: TPanel;
    Bevel_button: TBevel;
    OKBtn: TcxButton;
    CancelBtn: TcxButton;
    Panel_upper: TPanel;
    L_Caption: TLabel;
    MyTreeView: TTreeView;
    MDataFItemNo: TStringField;
    MDataFPactNo: TStringField;
    MDataFFileNo: TStringField;
    MDataFItemNumber: TStringField;
    MDataFClientFullName: TStringField;
    MDataFClientShortName: TStringField;
    MDataFProductName: TStringField;
    MDataFItemModel: TStringField;
    MDataFItemLb: TStringField;
    MDataFDesignDate: TStringField;
    MDataFProductID: TStringField;
    cxGrid: TcxGrid;
    cxGV: TcxGridDBTableView;
    FErSatzNum: TcxGridDBColumn;
    FErSatzType: TcxGridDBColumn;
    FName: TcxGridDBColumn;
    cxGL: TcxGridLevel;
    Label5: TLabel;
    E_FProductName: TcxButtonEdit;
    E_FProductID: TcxTextEdit;
    Label1: TLabel;
    E_FErSatzScheme: TcxButtonEdit;
    FErSatzScheme: TcxGridDBColumn;
    FModel: TcxGridDBColumn;
    FName_Ersatz: TcxGridDBColumn;
    FModel_Ersatz: TcxGridDBColumn;
    mc: TcxGridDBColumn;
    FProductID: TcxGridDBColumn;
    FProductName: TcxGridDBColumn;
    actionList: TActionList;
    ActApp: TAction;
    ActSave: TAction;
    ActOut: TAction;
    ActEdit: TAction;
    ActDel: TAction;
    Act_Status_M: TAction;
    Act_Set_Close: TAction;
    Act_Set_Open: TAction;
    Act_Ref: TAction;
    Act_Menu: TAction;
    Act_Menu_Set: TAction;
    FRemark: TcxGridDBColumn;
    PM: TPopupMenu;
    N_Edit: TMenuItem;
    N_Filter: TMenuItem;
    N_Sort: TMenuItem;
    N_Group: TMenuItem;
    N_Set: TMenuItem;
    N_Out: TMenuItem;
    TH: TcxGridDBColumn;
    procedure FormResize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TB_EXITClick(Sender: TObject);
    procedure MyTreeViewChange(Sender: TObject; Node: TTreeNode);
    procedure MyTreeViewExpanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure OKBtnClick(Sender: TObject);
    procedure TB_appClick(Sender: TObject);
    procedure TB_EDITClick(Sender: TObject);
    procedure TB_DELClick(Sender: TObject);
    procedure CancelBtnClick(Sender: TObject);
    procedure E_FProductNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormCreate(Sender: TObject);
    procedure Act_RefExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Act_MenuExecute(Sender: TObject);
    procedure Act_Menu_SetExecute(Sender: TObject);
    procedure cxGridContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure N_EditClick(Sender: TObject);
    procedure N_FilterClick(Sender: TObject);
    procedure N_SortClick(Sender: TObject);
    procedure N_GroupClick(Sender: TObject);
    procedure N_SetClick(Sender: TObject);
    procedure N_OutClick(Sender: TObject);
  private
    ListItemFNumber,P_th:String;

    { Private declarations }
    function AddRd:bool;
    function EditRd:bool;
    function DelRd:bool;

  public
    P_state:integer;

    { Public declarations }
  end;

var
  Frm_ErSatz: TFrm_ErSatz;


implementation

uses FRMDATA, FRMMAIN, COMMON, FrmSelect, ProgBar, PROGRASS;

{$R *.dfm}

function TFrm_ErSatz.DelRd: bool;
var
 qry: TADOQuery;
begin
 // result:=False;
  qry:=TADOQuery.Create(Self);
  qry.Connection:=mdlData.conn;
  try
    qry.SQL.Text:='Delete from T_ErSatz where FProductID=:FProductID and FErSatzScheme=:FErSatzScheme ';
    with qry.Parameters do
    begin
      FindParam('FProductID').value:=Trim(E_FProductID.Text);
      FindParam('FErSatzScheme').value:=Trim(E_FErSatzScheme.Text);
    end;
    result:=qry.ExecSQL>=1;
  finally
    qry.Free;
  end;
end;

function TFrm_ErSatz.AddRd: bool;
var
  qry: TADOQuery;

begin
  qry:=TADOQuery.Create(Self);
  qry.Connection:=mdlData.conn;
  result:=False;

  If mData.RecordCount<=0 then
  begin
    result:=True;
    Exit;
  end;
  try
    qry.SQL.Text:='Insert into T_ErSatz(FErSatzScheme,FErSatzType,FErSatzNum,th,MC,FName,FModel,FName_Ersatz,FModel_Ersatz,FRemark,FDepartmentID,FProductID) '
                 +'values(:FErSatzScheme,:FErSatzType,:FErSatzNum,:th,:MC,:FName,:FModel,:FName_Ersatz,:FModel_Ersatz,:FRemark,:FDepartmentID,:FProductID)';
     mData.First;
     while not mData.eof do
     begin
       //If (mData['FPartsCode']<>'') and (mData['Num']<>'') and (mData['FPartsSort']<>'') then
       begin
         If qry.Active then qry.Close;
         with qry.Parameters do
         begin
           FindParam('FErSatzScheme').value:=Trim(E_FErSatzScheme.Text);
           FindParam('FErSatzType').value:=mdata['FErSatzType'];
           FindParam('FErSatzNum').value:=mdata['FErSatzNum'];
           FindParam('th').value:=mdata['th'];
           FindParam('mc').value:=mdata['mc'];
           FindParam('FName').value:=mdata['FName'];
           FindParam('FModel').value:=mdata['FModel'];
           FindParam('FName_Ersatz').value:=mdata['FName_Ersatz'];
           FindParam('FModel_Ersatz').value:=mdata['FModel_Ersatz'];
           FindParam('FRemark').value:=mdata['FRemark'];
           FindParam('FDepartmentID').value:=userFDepartmentID;
           FindParam('FProductID').value:=Trim(E_FProductID.Text);
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


function TFrm_ErSatz.EditRd:bool;
var
 qry:TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.Connection:=mdlData.conn;
  result:=False;

  If mData.RecordCount<=0 then
  begin
    result:=True;
    Exit;
  end;

  mData.Edit;
  mData.Post;

  mdlData.conn.BeginTrans;  //定义事务
  try
    if DelRd then  //1  表删除
    begin
      result:=True;
      if AddRd then //2   表新增
      begin
        result:=True;
        mdlData.conn.CommitTrans; //提交事务
      end
      else
      begin
        result:=False;
        mdlData.conn.RollbackTrans;      //回滚事务
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


procedure TFrm_ErSatz.FormResize(Sender: TObject);
begin
  inherited;
  L_title.Caption:='材料代用库操作';
  Self.Caption:='材料何用库操作';
end;

procedure TFrm_ErSatz.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=cafree;
  Frm_ErSatz:=nil;
end;

procedure TFrm_ErSatz.TB_EXITClick(Sender: TObject);
begin
  inherited;
  self.Close;
end;

procedure TFrm_ErSatz.MyTreeViewChange(Sender: TObject; Node: TTreeNode);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;

  If Node = nil then Exit;
  with PTree(Node.Data)^ do
  begin
    ListItemFNumber:=PTree(Node.Data).FNumber;
    P_th:=PTree(Node.Data).Caption;
    If PTree(Node.Data).Isleaf>=1 then
    begin
      If not MyItemList(qry,Mdata,'V_ErSatz','FFullNumber',ListItemFNumber,'FFullNumber') then
      begin
        mdata.Open;
        cxGvColumn(cxGv,Mdata);
      end;
      If mdata.RecordCount>0 then
      begin
        E_FProductName.Text:= mdata['FProductName'];
        E_FProductID.Text:= mdata['FProductID'];
        E_FErSatzScheme.Text:= mdata['FErSatzScheme'];

      end
    end
    else
    begin
      mdata.Close;
    end;
    If PTree(Node.Data).Isleaf>0 then
       TB_EDIT.Enabled:=True
    else
       TB_EDIT.Enabled:=False;

  end;
end;

procedure TFrm_ErSatz.MyTreeViewExpanding(Sender: TObject;
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

  qry.SQL.Text:='Select * from VT_ErSatz where FParentNumber= '''
               +PTree(Node.Data).ID+''' and FDepartmentID=:FDepartmentID order by FNumber';
  qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
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

procedure TFrm_ErSatz.OKBtnClick(Sender: TObject);
var qry: TADOQuery;

begin
  cxGV.OptionsData.Editing:=True;
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;

  mData.Edit;
  mData.Post;

  If P_state =0 then
  begin
    try
      qry.SQL.Text:='Select * from V_ErSatz where FErSatzScheme=:FErSatzScheme and FDepartmentID=:FDepartmentID';
      qry.Parameters.FindParam('FErSatzScheme').Value:=mdata['FErSatzScheme'];
      qry.Parameters.FindParam('FDepartmentID').Value:=mdata['FAgentID'];
      qry.Open;
      If qry.RecordCount>0 then
      begin
         application.MessageBox('方案重复！请重新选择','系统提示',MB_ICONERROR);
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
        Tb_app.Click ;
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

  cxGV.OptionsData.Editing:=False;
  cxGv.OptionsData.Inserting:=False;
  cxGv.OptionsData.Appending:=False;
  cxGv.OptionsData.Deleting:=False;

  E_FProductName.Enabled:=False;
  E_FErSatzScheme.Enabled:=False;

end;



procedure TFrm_ErSatz.TB_appClick(Sender: TObject);
var   qry: TADOQuery;
      i:Integer;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  P_state :=0;
  L_Caption.Caption:='数据新增';
  E_FProductName.Text:= '';
  E_FProductID.Text:= '';

  try
    qry.SQL.Text:='select * from V_ErSatz with(nolock) where FErSatzID=0';
    qry.Open;
  finally
    ;
  end;
  mData.CopyFromDataSet(qry);
  mData.Active:=True;
  mData.Append;
  mData.Edit;
  for i:=1 to 10 do
  begin
    mData.Append;
    mData['th']:='';
    mData['mc']:='';
    mData.Post;
  end;
  mdata.First;
  cxGV.OptionsData.Editing:=True;
  cxGV.OptionsData.Editing:=True;
  cxGv.OptionsData.Inserting:=True;
  cxGv.OptionsData.Appending:=True;
  cxGv.OptionsData.Deleting:=True;

  //OKBtn.Left:=StrToInt(FloatToStr(int((PanelBkGnd.Width-OKBtn.Width-CancelBtn.Width-20)/2)));
  //CancelBtn.Left:=StrToInt(FloatToStr(int((PanelBkGnd.Width-OKBtn.Width-CancelBtn.Width-20)/2)))+OKBtn.Width+20;
  OKBtn.Visible:=True;
  CancelBtn.Visible:=True;

  E_FProductName.Enabled:=True;
  E_FErSatzScheme.Enabled:=True;

  TB_refresh.Visible:=False;
  TB_app.Visible:=False;
  TB_Edit.Visible:=False;
  TB_Del.Visible:=False;
  MyTreeView.Enabled:=False;

  cxGV.OptionsData.Editing:=True;
  cxGv.OptionsData.Inserting:=True;
  cxGv.OptionsData.Appending:=True;
  cxGv.OptionsData.Deleting:=True;

  for i:=0 to cxGv.ColumnCount-1 do
  begin
    cxGv.Columns[i].Options.Editing:=True;
  end;

end;

procedure TFrm_ErSatz.TB_EDITClick(Sender: TObject);
var

 i:Integer;
begin
  P_state :=1;

  L_Caption.Caption:='数据修改';

  //OKBtn.Left:=StrToInt(FloatToStr(int((PanelBkGnd.Width-OKBtn.Width-CancelBtn.Width-20)/2)));
  //CancelBtn.Left:=StrToInt(FloatToStr(int((PanelBkGnd.Width-OKBtn.Width-CancelBtn.Width-20)/2)))+OKBtn.Width+20;
  OKBtn.Visible:=True;
  CancelBtn.Visible:=True;

  E_FProductName.Enabled:=False;
  E_FErSatzScheme.Enabled:=False;

  TB_refresh.Visible:=False;
  TB_Edit.Visible:=False;
  TB_Del.Visible:=False;
  TB_app.Visible:=False;
  MyTreeView.Enabled:=False;

  cxGV.OptionsData.Editing:=True;
  cxGv.OptionsData.Inserting:=True;
  cxGv.OptionsData.Appending:=True;
  cxGv.OptionsData.Deleting:=True;


  for i:=0 to cxGv.ColumnCount-1 do
  begin
    cxGv.Columns[i].Options.Editing:=True;
  end;
end;

procedure TFrm_ErSatz.TB_DELClick(Sender: TObject);
var
  qry:TADOQuery;

begin
  qry:=TAdoQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If (mdata.RecordCount<1) then
    Exit;

  If mdata.RecordCount<>1 then
  begin
    application.MessageBox('只允许删除单个记录！请重新选择!','系统提示',MB_ICONINFORMATION);
    Exit;
  end;


  If application.MessageBox(Pchar('警告：是否删除部件类别为：【'+Trim(Mdata['FErSatzScheme'])+'】的单据？'+chr(13)+chr(13)
                           +'删除数据操作将不可恢复，确定要删除本记录吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
  If application.MessageBox(Pchar('警告：是否删除部件类别为：【'+Trim(Mdata['FErSatzScheme'])+'】的单据？'+chr(13)+chr(13)
                           +'删除数据操作将不可恢复，确定要删除本记录吗？'),'再次警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then

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
  TB_refresh.Click;
end;

procedure TFrm_ErSatz.CancelBtnClick(Sender: TObject);
begin
  inherited;
  L_Caption.Caption:='数据浏览';
  cxGV.OptionsData.Editing:=False;
  OKBtn.Visible:=False;
  CancelBtn.Visible:=False;
  TB_refresh.Visible:=True;
  TB_app.Visible:=True;
  TB_Edit.Visible:=True;
  TB_Del.Visible:=True;
  MyTreeView.Enabled:=True;
  TB_refresh.Click;
  E_FProductName.Enabled:=False;
  E_FErSatzScheme.Enabled:=False;

end;

procedure TFrm_ErSatz.E_FProductNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;

begin
  qry:=TADOQuery.Create(Self);
  qry.Connection:=mdlData.conn;
  try
    qry.SQL.Text:='select * from VT_Product order by FNumber';
    qry.Open;
  finally
     ;
  end;
  selValue:=select('请选择产品类型','FNumber','FParentNumber','FNumber','FName',qry);
  If Length(selValue)>0 then
  begin
    E_FProductId.Text:=qry.FieldByName('FProductId').AsString;
    E_FProductName.Text:=qry.FieldByName('FProductName').AsString;
  end;
  If P_state=0 then
  begin
    mdata.First;
    while not mdata.Eof do
    begin
      mdata.Edit;
      mdata['FProductId']:=qry.FieldByName('FProductId').AsString;
      mdata['FProductName']:=qry.FieldByName('FProductName').AsString;
      mdata.Post;
      mdata.Next;
    end;
  end;
  mdata.First;
  qry.Free;

end;

procedure TFrm_ErSatz.FormCreate(Sender: TObject);
begin
  inherited;
  TB_App.Enabled:= mdlData.PermissionCheckRights(TFrm_ErSatz.ClassName,'新增');
  TB_Edit.Enabled:= mdlData.PermissionCheckRights(TFrm_ErSatz.ClassName,'修改');
  TB_Del.Enabled:= mdlData.PermissionCheckRights(TFrm_ErSatz.ClassName,'删除');
  TB_Prin.Enabled:= mdlData.PermissionCheckRights(TFrm_ErSatz.ClassName,'打印');

end;

procedure TFrm_ErSatz.Act_RefExecute(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If not TreeVeiwListUserID(qry,MyTreeView,'VT_ErSatz',UserFDepartmentID) then
  begin
    Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;


end;

procedure TFrm_ErSatz.FormShow(Sender: TObject);
begin
  inherited;
  Act_Ref.Execute;

end;

procedure TFrm_ErSatz.Act_MenuExecute(Sender: TObject);
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

procedure TFrm_ErSatz.Act_Menu_SetExecute(Sender: TObject);
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

procedure TFrm_ErSatz.cxGridContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
  inherited;
  GV:='cxGV';
  Gm:='mdata';
  Gr:='cxGrid';
  Act_Menu_Set.Execute;

end;

procedure TFrm_ErSatz.N_EditClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_ErSatz.N_FilterClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_ErSatz.N_SortClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_ErSatz.N_GroupClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_ErSatz.N_SetClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_ErSatz.N_OutClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

end.
