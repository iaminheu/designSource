unit Main_Scenario;

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
  TFrm_Scenario = class(TFrm_GridBass)
    MData: TdxMemData;
    DS_Mdata: TDataSource;
    ImageList: TImageList;
    Panel1: TPanel;
    ToolBar1: TToolBar;
    ToolButton5: TToolButton;
    TB_Down: TToolButton;
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
    TB_Ref: TToolButton;
    PanelBkGnd: TPanel;
    Panel_button: TPanel;
    Bevel_button: TBevel;
    OKBtn: TcxButton;
    CancelBtn: TcxButton;
    Panel_upper: TPanel;
    L_Caption: TLabel;
    MyTreeView: TTreeView;
    TB_Out: TToolButton;
    Label5: TLabel;
    E_FProductName: TcxButtonEdit;
    E_FProductId: TcxTextEdit;
    cxGrid: TcxGrid;
    cxGV: TcxGridDBTableView;
    FScenarioNum: TcxGridDBColumn;
    FNum: TcxGridDBColumn;
    FNumber_4: TcxGridDBColumn;
    FName_4: TcxGridDBColumn;
    FModel_4: TcxGridDBColumn;
    FMaterialRate_4: TcxGridDBColumn;
    FMaterialNumber_4: TcxGridDBColumn;
    FMaterialModel_4: TcxGridDBColumn;
    FNotLike: TcxGridDBColumn;
    FLike: TcxGridDBColumn;
    FRemark: TcxGridDBColumn;
    FProductName: TcxGridDBColumn;
    cxGL: TcxGridLevel;
    Label1: TLabel;
    E_FScenarioNum: TcxButtonEdit;
    MDataFScenarioNum: TStringField;
    MDataFNum: TStringField;
    MDataFProductID: TIntegerField;
    MDataFMaterialNumber: TStringField;
    MDataFMaterialModel: TStringField;
    MDataFNumber: TStringField;
    MDataFName: TStringField;
    MDataFModel: TStringField;
    MDataFNotLike: TStringField;
    MDataFLike: TStringField;
    MDataFRemark: TStringField;
    procedure FormResize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TB_EXITClick(Sender: TObject);
    procedure TB_DownClick(Sender: TObject);
    procedure MyTreeViewChange(Sender: TObject; Node: TTreeNode);
    procedure MyTreeViewExpanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure OKBtnClick(Sender: TObject);
    procedure TB_appClick(Sender: TObject);
    procedure TB_EDITClick(Sender: TObject);
    procedure TB_DELClick(Sender: TObject);
    procedure TB_refreshClick(Sender: TObject);
    procedure CancelBtnClick(Sender: TObject);
    procedure TB_OutClick(Sender: TObject);
    procedure E_FProductNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormCreate(Sender: TObject);
  private
    ListItemFNumber,P_th:String;
    P_i:boolean;



    { Private declarations }
    function AddRd:bool;
    function EditRd:bool;
    function DelRd:bool;

 //   Procedure MyItemList(Sender: TObject);

  public
    P_state:integer;
  //  P_id:string;
    { Public declarations }
  end;

var
  Frm_Scenario: TFrm_Scenario;


implementation

uses FRMDATA, FRMMAIN, COMMON, FrmSelect, ProgBar, PROGRASS;

{$R *.dfm}

function TFrm_Scenario.DelRd: bool;
var
 qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Delete from T_SCenario where FProductID=:FProductID and FScenarioNum=:FScenarioNum';
    qry.Parameters.FindParam('FProductID').value:=StrToInt(E_FProductID.Text);
    qry.Parameters.FindParam('FScenarioNum').value:=Trim(E_FScenarioNum.Text);
    result:=qry.ExecSQL>=1;
  finally
    qry.Free;
  end;
end;

function TFrm_Scenario.AddRd: bool;
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
    qry.SQL.Text:='Insert into T_SCenario(FProductID,FScenarioNum,FNum,FMaterialModel,FMaterialRate,FName,FModel,FNotLike,FLike,FRemark) '
                 +'values(:FProductID,:FScenarioNum,:FNum,:FMaterialModel,:FMaterialRate,:FName,:FModel,:FNotLike,:FLike,:FRemark)';
     mData.First;
     while not mData.eof do
     begin
      //If (mData['FNum']<>'') and (mData['FMaterialRate']<>0.000000) then
       If (mData['FMaterialRate']<>Null) and  (mData['FMaterialRate']<>0.000000) then
       begin
         If qry.Active then qry.Close;
         with qry.Parameters do
         begin
           FindParam('FProductID').value:=StrToInt(E_FProductID.Text);
           FindParam('FScenarioNum').value:=Trim(E_FScenarioNum.Text);
           FindParam('FNum').value:=mdata['FNum'];
           FindParam('FMaterialModel').value:=mdata['FMaterialModel'];
           FindParam('FMaterialRate').value:=mdata['FMaterialRate'];
           FindParam('FName').value:=mdata['FName'];
           FindParam('FModel').value:=mdata['FModel'];
           FindParam('FNotLike').value:=mdata['FNotLike'];
           FindParam('FLike').value:=mdata['FLike'];
           FindParam('FRemark').value:=mdata['FRemark'];
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


function TFrm_Scenario.EditRd:bool;
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


procedure TFrm_Scenario.FormResize(Sender: TObject);
begin
  inherited;
  self.TB_Ref.Click;
  L_title.Caption:='材料代用换算规则操作';
  Self.Caption:='材料代用换算规则操作';
end;

procedure TFrm_Scenario.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=cafree;
  Frm_Scenario:=nil;
end;

procedure TFrm_Scenario.TB_EXITClick(Sender: TObject);
begin
  inherited;
  self.Close;
end;

procedure TFrm_Scenario.TB_DownClick(Sender: TObject);
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

procedure TFrm_Scenario.MyTreeViewChange(Sender: TObject; Node: TTreeNode);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If Node = nil then Exit;
  with PTree(Node.Data)^ do
  begin
    ListItemFNumber:=trim(PTree(Node.Data).FNumber);
    P_th:=trim(PTree(Node.Data).Caption);

    If PTree(Node.Data).Isleaf=1 then
    begin
      If not MyItemList(qry,Mdata,'V_Scenario','FDepartmentName+'';''+FProductName+'';''+FScenarioNum+'';''',ListItemFNumber,'FDepartmentName+'';''+FProductName+'';''+FScenarioNum+'';'',FNum') then
      If mdata.RecordCount>0 then
    end
    else
    begin
      mdata.Close;
    end;
  end;

    If mdata.RecordCount>0 then
    begin
      E_FProductName.Text:= mdata['FProductName'];
      E_FProductID.Text:= mdata['FProductID'];
      E_FScenarioNum.Text:= mdata['FScenarioNum'];
    end


end;

procedure TFrm_Scenario.MyTreeViewExpanding(Sender: TObject;
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

  qry.SQL.Text:='Select * from VT_Scenario where FParentNumber= '''
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

procedure TFrm_Scenario.OKBtnClick(Sender: TObject);
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
      qry.SQL.Text:='Select * from V_Scenario where FScenarioNum=:FScenarioNum and FProductID=:FProductID';
      qry.Parameters.FindParam('FScenarioNum').Value:=Trim(E_FScenarioNum.Text);
      qry.Parameters.FindParam('FProductID').Value:=StrToInt(E_FProductID.Text);
      qry.Open;
      If qry.RecordCount>0 then
      begin
         application.MessageBox('材料借用规则重复！请重新选择','系统提示',MB_ICONERROR);
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
        Tb_App.Click ;
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



procedure TFrm_Scenario.TB_appClick(Sender: TObject);
var
 i:Integer;
begin
  P_state :=0;
  L_Caption.Caption:='数据新增';

  If mData.Active then mData.Close;
     mData.Open;
  mData.Append;

  cxGV.OptionsData.Editing:=True;

  OKBtn.Left:=StrToInt(FloatToStr(int((PanelBkGnd.Width-OKBtn.Width-CancelBtn.Width-20)/2)));
  CancelBtn.Left:=StrToInt(FloatToStr(int((PanelBkGnd.Width-OKBtn.Width-CancelBtn.Width-20)/2)))+OKBtn.Width+20;
  OKBtn.Visible:=True;
  CancelBtn.Visible:=True;

  TB_Ref.Visible:=False;
  TB_app.Visible:=False;
  TB_Edit.Visible:=False;
  TB_Del.Visible:=False;
  MyTreeView.Enabled:=False;
  E_FProductName.Enabled:=True;
  E_FScenarioNum.Enabled:=True;

  for i:=0 to cxGv.ColumnCount-1 do
  begin
    cxGv.Columns[i].Options.Editing:=True;
  end;

end;

procedure TFrm_Scenario.TB_EDITClick(Sender: TObject);
var

 i:Integer;
begin
  P_state :=1;
  L_Caption.Caption:='数据修改';
  OKBtn.Left:=StrToInt(FloatToStr(int((PanelBkGnd.Width-OKBtn.Width-CancelBtn.Width-20)/2)));
  CancelBtn.Left:=StrToInt(FloatToStr(int((PanelBkGnd.Width-OKBtn.Width-CancelBtn.Width-20)/2)))+OKBtn.Width+20;
  OKBtn.Visible:=True;
  CancelBtn.Visible:=True;

  TB_Ref.Visible:=False;
  TB_Edit.Visible:=False;
  TB_Del.Visible:=False;
  TB_app.Visible:=False;
  MyTreeView.Enabled:=False;
  E_FProductName.Enabled:=True;
  E_FSCenarioNum.Enabled:=True;

  cxGV.OptionsData.Editing:=True;
  cxGV.OptionsData.Deleting:=True;
  for i:=0 to cxGv.ColumnCount-1 do
  begin
    cxGv.Columns[i].Options.Editing:=True;
  end;
  
end;

procedure TFrm_Scenario.TB_DELClick(Sender: TObject);
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

  If application.MessageBox(Pchar('警告：是否删除部件类别为：【'+Trim(Mdata['FPartsSort'])+'】的单据？'+chr(13)+chr(13)
                           +'删除数据操作将不可恢复，确定要删除本记录吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
  If application.MessageBox(Pchar('警告：是否删除部件类别为：【'+Trim(Mdata['FPartsSort'])+'】的单据？'+chr(13)+chr(13)
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
  TB_ref.Click;
end;

procedure TFrm_Scenario.TB_refreshClick(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If not TreeVeiwListWhere(qry,MyTreeView,'VT_Scenario',' and FDepartmentID='+IntToStr(UserFDepartmentID) ) then
  begin
    Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;
end;

procedure TFrm_Scenario.CancelBtnClick(Sender: TObject);
begin
  inherited;
  L_Caption.Caption:='数据浏览';
  cxGV.OptionsData.Editing:=False;
  OKBtn.Visible:=False;
  CancelBtn.Visible:=False;
  TB_Ref.Visible:=True;
  TB_app.Visible:=True;
  TB_Edit.Visible:=True;
  TB_Del.Visible:=True;
  MyTreeView.Enabled:=True;
  TB_ref.Click;
  E_FProductName.Enabled:=False;
  E_FSCenarioNum.Enabled:=False;

end;

procedure TFrm_Scenario.TB_OutClick(Sender: TObject);
begin
  inherited;
  ExportToExcel(cxGrid,True,TRue);
end;

procedure TFrm_Scenario.E_FProductNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;

begin
  qry:=TADOQuery.Create(Self);
  qry.Connection:=mdlData.conn;
  try
    qry.SQL.Text:='select distinct FProductId,FProductName from T_Product where FDepartmentID=:FDepartmentID order by FProductName';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Open;
  finally
     ;
  end;
  selValue:=select('请选择产品类型','FProductName','FProductName','FProductName','FProductName',qry);
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
      mdata['FProductName']:=qry.FieldByName('FProductName').AsString;
      mdata.Post;
      mdata.Next;
    end;
  end;
  mdata.First;
  qry.Free;

end;

procedure TFrm_Scenario.FormCreate(Sender: TObject);
begin
  inherited;
  TB_App.Enabled:= mdlData.PermissionCheckRights(TFrm_Scenario.ClassName,'新增');
  TB_Edit.Enabled:= mdlData.PermissionCheckRights(TFrm_Scenario.ClassName,'修改');
  TB_Del.Enabled:= mdlData.PermissionCheckRights(TFrm_Scenario.ClassName,'删除');
  TB_Prin.Enabled:= mdlData.PermissionCheckRights(TFrm_Scenario.ClassName,'打印');
  TB_out.Enabled:= mdlData.PermissionCheckRights(TFrm_Scenario.ClassName,'导出');

end;

end.
