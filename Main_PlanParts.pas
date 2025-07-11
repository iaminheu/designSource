unit Main_PlanParts;

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
  cxBlobEdit;

type
  TFrm_PlanParts = class(TFrm_GridBass)
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
    TB_Ref: TToolButton;
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
    FPlanPartsName: TcxGridDBColumn;
    cxGL: TcxGridLevel;
    MyTreeView: TTreeView;
    TB_Out: TToolButton;
    FParentNumber: TcxGridDBColumn;
    FPlanPartsID: TcxGridDBColumn;
    FNumber: TcxGridDBColumn;
    Image3: TImage;
    Sel: TcxGridDBColumn;
    FDepartmentID: TcxGridDBColumn;
    FDepartmentName: TcxGridDBColumn;
    MDataFParentNumber: TStringField;
    MDataFNumber: TStringField;
    MDataFBalanceName: TStringField;
    MDataFBalanceModel: TStringField;
    MDataFUnitName: TStringField;
    MDataFRemark: TStringField;
    MDataFDetail: TIntegerField;
    MDataFDepartmentName: TStringField;
    MDataFDepartmentID: TIntegerField;
    MDataFBalanceID: TIntegerField;
    FPartsCode: TcxGridDBColumn;
    FPartsName: TcxGridDBColumn;
    MDataFPartsCode: TStringField;
    MDataFPartsName: TStringField;
    MDataFPartsID: TIntegerField;
    FPartsID: TcxGridDBColumn;
    MDataFProductId: TStringField;
    FProductId: TcxGridDBColumn;
    MDataFProductClass: TStringField;
    MDataFSollWeight: TFloatField;
    MDataFProductSort: TStringField;
    FProductName: TcxGridDBColumn;
    FPlanWeekSel: TcxGridDBColumn;
    FPlanPartsType: TcxGridDBColumn;
    FPlanPartsSort: TcxGridDBColumn;
    FPartsSort: TcxGridDBColumn;
    procedure FormResize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TB_EXITClick(Sender: TObject);
    procedure TB_DownClick(Sender: TObject);
    procedure MyTreeViewChange(Sender: TObject; Node: TTreeNode);
    procedure MyTreeViewExpanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure TB_RefClick(Sender: TObject);
    procedure OKBtnClick(Sender: TObject);
    procedure TB_AppClick(Sender: TObject);
    procedure TB_EditClick(Sender: TObject);
    procedure TB_DelClick(Sender: TObject);
    procedure CancelBtnClick(Sender: TObject);
    procedure TB_OutClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Set_Open;
    procedure Set_Close;
    procedure SelPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxGridContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure FPlanPartsSortPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FPlanPartsTypePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FPartsSortPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    ListItemFNumber,P_th:String;
    P_i:boolean;

    { Private declarations }
    function AddRd:bool;
    function EditRd:bool;
    function DelRd:bool;


  public
    P_state,P_Isleaf:integer;
    { Public declarations }
  end;

var
  Frm_PlanParts: TFrm_PlanParts;


implementation

uses FRMDATA, FRMMAIN, COMMON, FrmSelect, ProgBar, PROGRASS;

{$R *.dfm}

procedure TFrm_PlanParts.Set_Open;
begin
  TB_Ref.Visible:=False;
  TB_App.Visible:=False;
  TB_Edit.Visible:=False;
  TB_Del.Visible:=False;
  MyTreeView.Enabled:=False;

  OKBtn.Visible:=True;
  CancelBtn.Visible:=True;

  cxGV.OptionsData.Editing:=True;
  Sel.Visible:=True;
  Sel.Options.Editing:=True;
  FPlanWeekSel.Options.Editing:=True;
  FPlanPartsType.Options.Editing:=True;
  FpartsSort.Options.Editing:=True;

  FParentNumber.Options.Editing:=True;
  FNumber.Options.Editing:=True;
  FPlanPartsName.Options.Editing:=True;
  FPlanPartsSort.Options.Editing:=True;
  FPlanPartsType.Options.Editing:=True;

end;

procedure TFrm_PlanParts.Set_Close;
begin
  TB_Ref.Visible:=True;
  TB_App.Visible:=True;
  TB_Edit.Visible:=True;
  TB_Del.Visible:=True;
  MyTreeView.Enabled:=True;

  OKBtn.Visible:=False;
  CancelBtn.Visible:=False;
  cxGV.OptionsData.Editing:=False;
  Sel.Visible:=False;
  
end;

function TFrm_PlanParts.DelRd: bool;
var
 qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Delete from T_PlanParts where FPlanPartsID=:FPlanPartsID';
    with qry.Parameters do
    begin
      FindParam('FPlanPartsID').value:=mdata['FPlanPartsID'];
    end;
    result:=qry.ExecSQL>=1;
  finally
    qry.Free;
  end;
end;

function TFrm_PlanParts.AddRd: bool;
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
    qry.SQL.Text:='Insert into T_PlanParts(FNumber,FParentNumber,FPlanPartsName,FProductId,FPartsID,FPlanWeekSel,FPlanPartsType,FPlanPartsSort,FpartsSort) '
                 +'values(:FNumber,:FParentNumber,:FPlanPartsName,:FProductId,:FPartsID,:FPlanWeekSel,:FPlanPartsType,:FPlanPartsSort,:FpartsSort)';
     mData.First;

     while not mData.eof do
     begin
       If (mData['FNumber']<>'') and (mData['FPlanPartsName']<>'') and (mData['FPartsID']<>0) then
       begin
         If qry.Active then qry.Close;
         with qry.Parameters do
         begin
           FindParam('FNumber').value:=mdata['FNumber'];;
           FindParam('FParentNumber').value:=mdata['FParentNumber'];
           FindParam('FProductId').value:=mdata['FProductId'];
           FindParam('FPlanPartsName').value:=mdata['FPlanPartsName'];
           FindParam('FPartsID').value:=mdata['FPartsID'];
           FindParam('FPlanWeekSel').value:=mdata['FPlanWeekSel'];
           FindParam('FPlanPartsType').value:=mdata['FPlanPartsType'];
           FindParam('FPlanPartsSort').value:=mdata['FPlanPartsSort'];
           FindParam('FpartsSort').value:=mdata['FpartsSort'];
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


function TFrm_PlanParts.EditRd:bool;
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
    qry.SQL.Text:='Update T_PlanParts set FNumber=:FNumber,FParentNumber=:FParentNumber,'
                 +'FPlanPartsName=:FPlanPartsName,FPartsID=:FPartsID,FPlanWeekSel=:FPlanWeekSel,'
                 +'FPlanPartsType=:FPlanPartsType,FPlanPartsSort=:FPlanPartsSort,FpartsSort=:FpartsSort where FPlanPartsID=:FPlanPartsID';
     mData.First;
     while not mData.eof do
     begin
       If (mData['FNumber']<>'') and (mData['FPlanPartsName']<>'') and (mData['FPartsID']<>0) then
       begin
         If qry.Active then qry.Close;
         with qry.Parameters do
         begin
           FindParam('FNumber').value:=mdata['FNumber'];;
           FindParam('FParentNumber').value:=mdata['FParentNumber'];
           FindParam('FPlanPartsName').value:=mdata['FPlanPartsName'];
           FindParam('FPartsID').value:=mdata['FPartsID'];
           FindParam('FPlanWeekSel').value:=mdata['FPlanWeekSel'];
           FindParam('FPlanPartsType').value:=mdata['FPlanPartsType'];
           FindParam('FPlanPartsSort').value:=mdata['FPlanPartsSort'];
           FindParam('FpartsSort').value:=mdata['FpartsSort'];
           FindParam('FPlanPartsID').value:=mdata['FPlanPartsID'];
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


procedure TFrm_PlanParts.FormResize(Sender: TObject);
begin
  inherited;
  L_title.Caption:=UserFDepartmentName+'生产计划部件信息';
  Self.Caption:=UserFDepartmentName+'生产计划部件信息';
 // OKBtn.Left:=StrToInt(FloatToStr(int((PanelBkGnd.Width-OKBtn.Width-CancelBtn.Width-20)/2)));
 // CancelBtn.Left:=StrToInt(FloatToStr(int((PanelBkGnd.Width-OKBtn.Width-CancelBtn.Width-20)/2)))+OKBtn.Width+20;

end;

procedure TFrm_PlanParts.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=cafree;
  Frm_PlanParts:=nil;
end;

procedure TFrm_PlanParts.TB_EXITClick(Sender: TObject);
begin
  inherited;
  self.Close;
end;

procedure TFrm_PlanParts.TB_DownClick(Sender: TObject);
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

procedure TFrm_PlanParts.MyTreeViewChange(Sender: TObject; Node: TTreeNode);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  If Node = nil then Exit;
  with PTree(Node.Data)^ do
  begin
    ListItemFNumber:=PTree(Node.Data).FNumber;
    P_th:=PTree(Node.Data).Caption;
    P_Isleaf:=PTree(Node.Data).Isleaf;
    If not MyItemList(qry,Mdata,'V_PlanParts','FFullNumber',ListItemFNumber,'FFullNumber') then
    begin
      mdata.Open;
      cxGvColumn(cxGv,Mdata);
    end;
    If P_Isleaf=1 then
    begin
      TB_Edit.Visible:= mdlData.PermissionCheckRights(TFrm_PlanParts.ClassName,'修改');
      TB_Del.Visible:=mdlData.PermissionCheckRights(TFrm_PlanParts.ClassName,'删除');
    end
    else
    begin
      TB_Edit.Visible:=False;
      TB_Del.Visible:=False;
    end;

  end;

end;

procedure TFrm_PlanParts.MyTreeViewExpanding(Sender: TObject;
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
               +'Isleaf from VT_PlanParts with(nolock) where FParentNumber= '''
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

procedure TFrm_PlanParts.TB_RefClick(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If UserFDepartmentsort=1 then //事业部
  begin
    If not TreeVeiwListWhere(qry,MyTreeView,'VT_PlanParts',' and FDepartmentID='+IntToStr(UserFDepartmentID) ) then
       Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;
  If UserFDepartmentsort=2 then //子公司
  begin
    If not TreeVeiwListWhere(qry,MyTreeView,'VT_PlanParts',' ') then
       Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;

end;

procedure TFrm_PlanParts.OKBtnClick(Sender: TObject);
var qry: TADOQuery;

begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  mData.Edit;
  mData.Post;

  If (mData['FNumber']='')or (mData['FParentNumber']='') or (mData['FPlanPartsName']='') or (mData['FPartsID']=0) then
  begin
    application.MessageBox('关键字不能为空！请重新输入','系统提示',MB_ICONERROR);
    Exit;
  end;


  If P_state =0 then
  begin
    try
      qry.SQL.Text:='Select * from V_PlanParts with(nolock) where FNumber=:FNumber and FDepartmentID=:FDepartmentID '
                   +'and FPartsID=:FPartsID';
      qry.Parameters.FindParam('FNumber').Value:=mdata['FNumber'];
      qry.Parameters.FindParam('FDepartmentID').Value:=UserFDepartmentID;
      qry.Parameters.FindParam('FPartsID').Value:=mdata['FPartsID'];
      qry.Open;
      If qry.RecordCount>0 then
      begin
         application.MessageBox('编码重复！请重新输入','系统提示',MB_ICONERROR);
         Exit;
      end;
    finally
       ;
    end;
    try
      qry.SQL.Text:='Select * from V_PlanParts with(nolock) where FPlanPartsName=:FPlanPartsName and FDepartmentID=:FDepartmentID and FPartsID=:FPartsID';
      qry.Parameters.FindParam('FPlanPartsName').Value:=mdata['FPlanPartsName'];
      qry.Parameters.FindParam('FDepartmentID').Value:=UserFDepartmentID;
      qry.Parameters.FindParam('FPartsID').Value:=mdata['FPartsID'];
      qry.Open;
      If qry.RecordCount>0 then
      begin
         application.MessageBox('部件名称+规格不允许重复！请重新输入','系统提示',MB_ICONERROR);
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



procedure TFrm_PlanParts.TB_AppClick(Sender: TObject);
var
 qry:TADOquery;
 i,P_FProductId:Integer;
 P_FNumber,P_FParentNumber,P_PartsSort,P_PlanPartsSort:string;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  P_state :=0;    //新增
  L_title.Caption:=UserFDepartmentName+'生产计划部件信息增加';
  If (mData.RecordCount=0) then
  begin
    try
      qry.SQL.Text:='Select * from V_PlanParts with(nolock) where FPlanPartsID=0 and FDepartmentID=:FDepartmentID';
      qry.Parameters.FindParam('FDepartmentID').Value:=UserFDepartmentID;
      qry.Open;
    finally
       ;
    end;
    mdata.CopyFromDataSet(qry);
    mdata.Active:=True;
  end;
  Self.Set_Open;


  If (mData.RecordCount=1) and (mdata['FParentNumber']<>'') then
  begin
    try
      qry.SQL.Text:='Select max(FNumber) as maxFNumber from V_PlanParts with(nolock) where FParentNumber=:FParentNumber and FPartsID=:FPartsID and FDepartmentID=:FDepartmentID';
      qry.Parameters.FindParam('FParentNumber').Value:=mdata['FParentNumber'];
      qry.Parameters.FindParam('FPartsID').Value:=mdata['FPartsID'];
      qry.Parameters.FindParam('FDepartmentID').Value:=UserFDepartmentID;
      qry.Open;
    finally
       ;
    end;
    If qry.RecordCount>0 then
    begin
      If pos('.',qry.FieldByName('maxFNumber').Value)>1 then
         i:=StrToInt(Copy(qry.FieldByName('maxFNumber').Value,LastDelimiter('.',qry.FieldByName('maxFNumber').Value)+1,3))+1
     else
        i:=StrToInt(qry.FieldByName('maxFNumber').Value)+1
    end
    else
       i:=1;
    If mdata['FPartsSort']=Null then
    begin
     mData.Edit;
     mdata['FPartsSort']:='';
     mData.Post;
    end;
    If mData['FPlanPartsSort']=null then
    begin
      mData.Edit;
      mData['FPlanPartsSort']:='';
      mData.Post;
    end;
    
    P_FNumber:=mData['FNumber'];
    P_FParentNumber:=mData['FParentNumber'];
    P_FProductId:=mData['FProductId'];
    P_PlanPartsSort:=mData['FPlanPartsSort'];
    P_PartsSort:=mData['FPartsSort'];

    mData.Edit;
    mData['FNumber']:=P_FParentNumber+'.'+Format('%.3d',[i]);
    mData['FParentNumber']:=P_FParentNumber;
    mData['FPlanPartsName']:='';
    mData['FProductId']:=P_FProductId;
    mData['FPartsSort']:=P_PartsSort;
    mData['FPlanPartsSort']:=P_PlanPartsSort;
    mData.Post;
  end
  else
  begin
    mData.Close;
    mData.Open;
    mData.Append;
    mData['FProductId']:=0;
    mData['FDepartmentID']:=UserFDepartmentID;
    mData['FDepartmentName']:=UserFDepartmentName;
    mData.Edit;
  end;

end;

procedure TFrm_PlanParts.TB_EditClick(Sender: TObject);
var
  qry:TADOQuery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  P_state :=1;  //修改
 { If (mdata.RecordCount<1) then
    Exit;
  try
    qry.SQL.Text:='Select * from V_PlanWeekParts where FPartsID=:FPartsID';
    qry.Parameters.FindParam('FPartsID').Value:=mdata['FPartsID'];
    qry.Open;
  finally
     ;
  end;
  if qry.RecordCount>0 then
  begin
    application.MessageBox(Pchar('部件【'+Trim(Mdata['FPlanPartsName'])+'】已启用不允许修改！'),'系统提示',MB_ICONINFORMATION);
    Exit;
  end;
   }
  L_title.Caption:=UserFDepartmentName+'部件数据修改';
  Self.Set_Open;

end;

procedure TFrm_PlanParts.TB_DelClick(Sender: TObject);
var
  qry:TADOQuery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If (mdata.RecordCount<1) then
      Exit;

  try
    qry.SQL.Text:='Select * from V_PlanWeekParts where FPlanPartsID=:FPlanPartsID';
    qry.Parameters.FindParam('FPlanPartsID').Value:=mdata['FPlanPartsID'];
    qry.Open;
  finally
     ;
  end;
  if qry.RecordCount>0 then
  begin
    application.MessageBox(Pchar('生产周报部件【'+Trim(Mdata['FPlanPartsName'])+'】已启用不允许删除！'),'系统提示',MB_ICONINFORMATION);
    Exit;
  end;



  If application.MessageBox(Pchar('警告：是否删除：【'+Trim(Mdata['FPlanPartsName'])+'】的信息？'+chr(13)+chr(13)
                           +'删除数据操作将不可恢复，确定要删除本数据吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
  If application.MessageBox(Pchar('警告：是否删除：【'+Trim(Mdata['FPlanPartsName'])+'】的信息？'+chr(13)+chr(13)
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

procedure TFrm_PlanParts.CancelBtnClick(Sender: TObject);
begin
  inherited;
  L_title.Caption:=UserFDepartmentName+'生产计划部件信息';
  Self.Set_Close;
end;

procedure TFrm_PlanParts.TB_OutClick(Sender: TObject);
begin
  inherited;
  ExportToExcel(cxGrid,True,TRue);
end;

procedure TFrm_PlanParts.FormCreate(Sender: TObject);
begin
  inherited;
  TB_App.Visible:= mdlData.PermissionCheckRights(TFrm_PlanParts.ClassName,'新增');
  TB_Prin.Visible:= mdlData.PermissionCheckRights(TFrm_PlanParts.ClassName,'打印');
  TB_Out.Visible:= mdlData.PermissionCheckRights(TFrm_PlanParts.ClassName,'打印');

end;

procedure TFrm_PlanParts.FormShow(Sender: TObject);
begin
  TB_Ref.Click;
end;

procedure TFrm_PlanParts.SelPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var selValue,aa : string;
    qry: TADOQuery;
    i:Integer;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Select * from VT_ProductParts with(nolock) where FDepartmentID=:FDepartmentID order by FNumber ';
    qry.Parameters.FindParam('FDepartmentID').Value:=UserFDepartmentID;
    qry.Open;
  finally
     ;
  end;
  SelValue:=select('选择上级编码','FNumber','FParentNumber','FNumber','FName',qry);
  If (Length(selValue)>0) and (qry.FieldByName('Isleaf').Value<>0) then
  begin
    mdata.Edit;
    mdata['FPartsID']:=qry.FieldByName('FPartsID').Value;
    mdata.Post;

    try
      qry.SQL.Text:='Select * from V_ProductParts with(nolock) where FPartsID=:FPartsID';
      qry.Parameters.FindParam('FPartsID').Value:=mdata['FPartsID'];
      qry.Open;
    finally
       ;
    end;
    mdata.Edit;
    mdata['FProductID']:=qry.FieldByName('FProductID').Value;
    mdata['FParentNumber']:=qry.FieldByName('FPartsCode').Value;
    mdata['FPartsCode']:=qry.FieldByName('FPartsCode').Value;
    mdata['FPartsName']:=qry.FieldByName('FPartsName').Value;
    mdata['FProductName']:=qry.FieldByName('FProductName').Value;
    mdata.Post;


    try
      qry.SQL.Text:='Select isnull(max(FNumber),''0'') as maxFNumber from V_PlanParts with(nolock) '
                   +'where FDepartmentID=:FDepartmentID and FParentNumber=:FParentNumber and FProductID=:FProductID and FPartsID=:FPartsID';
      qry.Parameters.FindParam('FDepartmentID').Value:=UserFDepartmentID;
      qry.Parameters.FindParam('FParentNumber').Value:=mdata['FParentNumber'];
      qry.Parameters.FindParam('FProductID').Value:=mdata['FProductID'];
      qry.Parameters.FindParam('FPartsID').Value:=mdata['FPartsID'];
      qry.Open;
    finally
       ;
    end;
    aa:=qry.FieldByName('maxFNumber').Value;
    If qry.RecordCount>0 then
       i:=StrToInt(Copy(qry.FieldByName('maxFNumber').Value,LastDelimiter('.',qry.FieldByName('maxFNumber').Value)+1,3))+1
    else
       i:=1;
    mData.Edit;
    mData['FNumber']:=mdata['FParentNumber']+'.'+Format('%.3d',[i]);
    mdata.Post;
  end
  else
    application.MessageBox('请选择明细！','系统提示',MB_ICONINFORMATION);
end;

procedure TFrm_PlanParts.cxGridContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV';
  Gm:='mdata';
  Gr:='cxGrid';
end;

procedure TFrm_PlanParts.FPlanPartsSortPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  MData.Edit;
  MData.Post;
  If MData['FPlanPartsSort']=Null  then
  begin
    MData.Edit;
    MData['FPlanPartsSort']:='';
    MData.Post;
  end;
  try
    qry.SQL.Text:='select distinct FPlanPartsSort from V_PlanParts with(nolock) where FDepartmentID=:FDepartmentID order by FPlanPartsSort ';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Open;
  finally
    ;
  end;

  selValue:=select('选择排产部件类型','FPlanPartsSort','FPlanPartsSort','FPlanPartsSort','FPlanPartsSort',qry);
  If (Length(selValue)>0) then
  begin
    MData.Edit;
    MData['FPlanPartsSort']:=qry.FieldByName('FPlanPartsSort').Value;
    MData.Post;
  end;

end;

procedure TFrm_PlanParts.FPlanPartsTypePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  MData.Edit;
  MData.Post;
  If MData['FPlanPartsType']=Null  then
  begin
    MData.Edit;
    MData['FPlanPartsType']:='';
    MData.Post;
  end;
  try
    qry.SQL.Text:='select distinct cast(FPlanPartsType as nvarchar(10)) as FPlanPartsType from V_PlanParts with(nolock) '
                 +' where FDepartmentID=:FDepartmentID order by cast(FPlanPartsType as nvarchar(10)) ';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Open;
  finally
    ;
  end;

  selValue:=select('选择排产部件打印类型','FPlanPartsType','FPlanPartsType','FPlanPartsType','FPlanPartsType',qry);
  If (Length(selValue)>0) then
  begin
    MData.Edit;
    MData['FPlanPartsType']:=qry.FieldByName('FPlanPartsType').Value;
    MData.Post;
  end;

end;

procedure TFrm_PlanParts.FPartsSortPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  MData.Edit;
  MData.Post;
  If MData['FPartsSort']=Null  then
  begin
    MData.Edit;
    MData['FPartsSort']:='';
    MData.Post;
  end;
  try
    qry.SQL.Text:='select distinct FPartsSort from V_PlanParts with(nolock) where FDepartmentID=:FDepartmentID order by FPartsSort ';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Open;
  finally
    ;
  end;

  selValue:=select('选择排产部件分类','FPartsSort','FPartsSort','FPartsSort','FPartsSort',qry);
  If (Length(selValue)>0) then
  begin
    MData.Edit;
    MData['FPartsSort']:=qry.FieldByName('FPartsSort').Value;
    MData.Post;
  end;


end;

end.
