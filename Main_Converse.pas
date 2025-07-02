unit Main_Converse;

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
  TFlatPanelUnit, cxLookAndFeelPainters, cxButtons, cxTimeEdit, jpeg;

type
  TFrm_Converse = class(TFrm_GridBass)
    MData: TdxMemData;
    DS_Mdata: TDataSource;
    ImageList: TImageList;
    Panel1: TPanel;
    ToolBar1: TToolBar;
    ToolButton5: TToolButton;
    TB_Down: TToolButton;
    ToolButton1: TToolButton;
    TB_Prin: TToolButton;
    TB_EXIT: TToolButton;
    frReport: TfrReport;
    frDBDataSet: TfrDBDataSet;
    RzSizePanel1: TRzSizePanel;
    PC_2: TRzPageControl;
    TS_Brow: TRzTabSheet;
    ADOQuery: TADOQuery;
    DataSource: TDataSource;
    V_K3: TADOTable;
    DS_K3: TDataSource;
    TB_Ref: TToolButton;
    ADOStoredProc1: TADOStoredProc;
    TB_App: TToolButton;
    TB_Edit: TToolButton;
    TB_Del: TToolButton;
    PanelBkGnd: TPanel;
    Panel_button: TPanel;
    Bevel_button: TBevel;
    OKBtn: TcxButton;
    CancelBtn: TcxButton;
    cxGrid: TcxGrid;
    cxGV: TcxGridDBTableView;
    F_UpdateValue: TcxGridDBColumn;
    cxGL: TcxGridLevel;
    MyTreeView: TTreeView;
    TB_Out: TToolButton;
    Isleaf: TcxGridDBColumn;
    F_UpdateSort: TcxGridDBColumn;
    FNumber: TcxGridDBColumn;
    F_UpdateField: TcxGridDBColumn;
    FK3ID: TcxGridDBColumn;
    Image3: TImage;
    F_Remark: TcxGridDBColumn;
    MDataFAgentParentNumber: TStringField;
    MDataFAgentNumber: TStringField;
    MDataFAgentParentNamd: TStringField;
    MDataFDepartmentID: TIntegerField;
    MDataFDepartmentName: TStringField;
    MDataFAgentID: TIntegerField;
    MDataFAgentName: TStringField;
    MDataFDetail: TBooleanField;
    F_UpdateCondition: TcxGridDBColumn;
    FParentNumber: TcxGridDBColumn;
    FName: TcxGridDBColumn;
    procedure FormResize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TB_EXITClick(Sender: TObject);
    procedure TB_DownClick(Sender: TObject);
    procedure MyTreeViewChange(Sender: TObject; Node: TTreeNode);
    procedure MyTreeViewExpanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure TB_RefClick(Sender: TObject);
    procedure OKBtnClick(Sender: TObject);
    procedure TB_EditClick(Sender: TObject);
    procedure CancelBtnClick(Sender: TObject);
    procedure TB_OutClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Set_Open;
    procedure Set_Close;
  private
    ListItemFNumber:String;
    P_i:boolean;


    { Private declarations }
    function AddRd:bool;
    function EditRd:bool;
    function DelRd:bool;


  public
    P_state:integer;
    { Public declarations }
  end;

var
  Frm_Converse: TFrm_Converse;


implementation

uses FRMDATA, COMMON, FrmSelect, ProgBar, PROGRASS;

{$R *.dfm}

procedure TFrm_Converse.Set_Open;
begin
  TB_Ref.Visible:=False;
  TB_App.Visible:=False;
  TB_Edit.Visible:=False;
  TB_Del.Visible:=False;
  MyTreeView.Enabled:=False;

  OKBtn.Visible:=True;
  CancelBtn.Visible:=True;
  cxGV.OptionsData.Editing:=True;

  F_UpdateSort.Options.Editing:=True;
  F_UpdateField.Options.Editing:=True;
  F_UpdateValue.Options.Editing:=True;
  F_UpdateCondition.Options.Editing:=True;

end;

procedure TFrm_Converse.Set_Close;
begin
  TB_Ref.Visible:=True;
  TB_App.Visible:=True;
  TB_Edit.Visible:=True;
  TB_Del.Visible:=True;
  MyTreeView.Enabled:=True;

  OKBtn.Visible:=False;
  CancelBtn.Visible:=False;
  cxGV.OptionsData.Editing:=False;

end;


function TFrm_Converse.DelRd: bool;
var
 qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Delete from T_Converse where FNumber=:FNumber';
    with qry.Parameters do
    begin
      FindParam('FNumber').value:=mdata['FNumber'];
    end;
    result:=qry.ExecSQL>=1;
  finally
    qry.Free;
  end;
end;

function TFrm_Converse.AddRd: bool;
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
    qry.SQL.Text:='Insert into T_Converse(F_UpdateSort,F_UpdateField,F_UpdateValue,F_UpdateCondition,F_Remark,FK3ID,FNumber,FParentNumber,FName) '
                 +'values(:F_UpdateSort,:F_UpdateField,:F_UpdateValue,:F_UpdateCondition,:F_Remark,:FK3ID,:FNumber,:FParentNumber,:FName)';
    mData.First;

    while not mData.eof do
    begin
      If qry.Active then qry.Close;
      with qry.Parameters do
      begin
        FindParam('F_UpdateSort').value:=mdata['F_UpdateSort'];;
        FindParam('F_UpdateField').value:=mdata['F_UpdateField'];
        FindParam('F_UpdateValue').value:=mdata['F_UpdateValue'];
        FindParam('F_UpdateCondition').value:=mdata['F_UpdateCondition'];
        FindParam('F_Remark').value:=mdata['F_Remark'];
        FindParam('FK3ID').value:=UserFK3ID;
        FindParam('FNumber').value:=UserFDepartmentName;
        FindParam('FParentNumber').value:=mdata['FParentNumber'];
        FindParam('FName').value:=mdata['FName'];
      end;
      result:=qry.ExecSQL>=1;
      if not result then break;
      mData.Next;
    end;
  finally
    ;
  end;
  qry.Free;
end;


function TFrm_Converse.EditRd:bool;
var
  qry: TADOQuery;

begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  If mData.RecordCount<=0 then
  begin
    result:=True;
    Exit;
  end;

  mData.Edit;
  mData.Post;
  mdlData.conn.BeginTrans;
  try
    if DelRd then  //1   表删除
    begin
      result:=True;
      if AddRd then //2    表新增
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
  qry.Free;

end;


procedure TFrm_Converse.FormResize(Sender: TObject);
begin
  inherited;
  L_title.Caption:='材料替换信息';
  Self.Caption:='材料替换信息';
  OKBtn.Left:=StrToInt(FloatToStr(int((PanelBkGnd.Width-OKBtn.Width-CancelBtn.Width-20)/2)));
  CancelBtn.Left:=StrToInt(FloatToStr(int((PanelBkGnd.Width-OKBtn.Width-CancelBtn.Width-20)/2)))+OKBtn.Width+20;
end;

procedure TFrm_Converse.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=CaFree;
  Frm_Converse:=nil;
end;

procedure TFrm_Converse.TB_EXITClick(Sender: TObject);
begin
  inherited;
  Self.Close;
end;

procedure TFrm_Converse.TB_DownClick(Sender: TObject);
Var i:Integer;
begin
  If P_i then
  begin
    TB_Down.Caption:='取消设置';
    cxGV.OptionsData.Editing:=False;
    cxGv.OptionsView.GroupByBox:=False;
    for i:=0 to cxGv.ColumnCount-1 do
    begin
      cxGv.Columns[i].Options.Filtering:=False;
      cxGv.Columns[i].Options.Editing:=False;
      cxGv.Columns[i].Options.Sorting:=False;
    end;
    P_i:=False;
  end
  else
  begin
    TB_Down.Caption:='设置';
    cxGV.OptionsData.Editing:=True;
    cxGv.OptionsView.GroupByBox:=True;
    for i:=0 to cxGv.ColumnCount-1 do
    begin
      cxGv.Columns[i].Options.Filtering:=True;
      cxGv.Columns[i].Options.Editing:=True;
      cxGv.Columns[i].Options.Sorting:=True;
    end;
    P_i:=True;
  end;
end;

procedure TFrm_Converse.MyTreeViewChange(Sender: TObject; Node: TTreeNode);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  If Node = nil then Exit;
  with PTree(Node.Data)^ do
  begin
    ListItemFNumber:=PTree(Node.Data).FNumber;
    If not MyItemList(qry,Mdata,'T_Converse','FNumber+'';''+F_UpdateSort+'';''',ListItemFNumber,'FNumber') then
    begin
      mdata.Open;
      cxGvColumn(cxGv,Mdata);
    end;
  end;
end;

procedure TFrm_Converse.MyTreeViewExpanding(Sender: TObject;
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

  qry.SQL.Text:='Select distinct * from VT_Converse where FParentNumber= '''
               +PTree(Node.Data).ID+''' and FK3ID=:FK3ID ';
               //+' order by FNumber';
  qry.Parameters.FindParam('FK3ID').value:=UserFK3ID;


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

procedure TFrm_Converse.TB_RefClick(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
 //If not TreeVeiwList(qry,MyTreeView,'T_Converse') then
  If not TreeVeiwListWhere(qry,MyTreeView,'VT_Converse',' and FK3ID='+IntToStr(UserFK3ID) ) then
  begin
    Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;
end;

procedure TFrm_Converse.OKBtnClick(Sender: TObject);
var qry: TADOQuery;

begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  mData.Edit;
  mData.Post;

  If (mData['F_UpdateField']='') or (mData['F_UpdateValue']='') then
  begin
    application.MessageBox('关键字不能为空！请重新输入','系统提示',MB_ICONERROR);
    Exit;
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



procedure TFrm_Converse.TB_EditClick(Sender: TObject);

begin
  P_state :=1;
  Self.Set_Open;
  L_title.Caption:='材料替换信息修改';

end;

procedure TFrm_Converse.CancelBtnClick(Sender: TObject);
begin
  inherited;
  L_title.Caption:='材料替换信息';
  Self.Set_Close;
end;

procedure TFrm_Converse.TB_OutClick(Sender: TObject);
begin
  inherited;
  ExportToExcel(cxGrid,True,TRue);
end;

procedure TFrm_Converse.FormCreate(Sender: TObject);
begin
  inherited;
  TB_App.Enabled:= mdlData.PermissionCheckRights(TFrm_Converse.ClassName,'新增');
  TB_Edit.Enabled:= mdlData.PermissionCheckRights(TFrm_Converse.ClassName,'修改');
  TB_Del.Enabled:= mdlData.PermissionCheckRights(TFrm_Converse.ClassName,'删除');
  TB_Prin.Enabled:= mdlData.PermissionCheckRights(TFrm_Converse.ClassName,'打印');
  TB_Out.Enabled:= mdlData.PermissionCheckRights(TFrm_Converse.ClassName,'打印');
end;

procedure TFrm_Converse.FormShow(Sender: TObject);
begin
  TB_Ref.Click;
end;

end.
