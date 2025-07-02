unit Main_BudgetParts;

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
  TFrm_BudgetParts = class(TFrm_GridBass)
    MData: TdxMemData;
    DS_Mdata: TDataSource;
    ImageList: TImageList;
    Panel1: TPanel;
    frReport: TfrReport;
    frDBDataSet: TfrDBDataSet;
    RzSizePanel1: TRzSizePanel;
    PC_2: TRzPageControl;
    TS_WorkTaskParts: TRzTabSheet;
    PanelBkGnd: TPanel;
    Panel_button: TPanel;
    Bevel_button: TBevel;
    OKBtn: TcxButton;
    CancelBtn: TcxButton;
    cxGrid: TcxGrid;
    cxGV: TcxGridDBTableView;
    FBudgetPartsName: TcxGridDBColumn;
    cxGL: TcxGridLevel;
    MyTreeView: TTreeView;
    FDetail: TcxGridDBColumn;
    FParentNumber: TcxGridDBColumn;
    FBudgetPartsID: TcxGridDBColumn;
    FNumber: TcxGridDBColumn;
    FBudgetPartsModel: TcxGridDBColumn;
    FBudgetPartsUnit: TcxGridDBColumn;
    FBudgetPartsRemark: TcxGridDBColumn;
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
    FProductClass: TcxGridDBColumn;
    MDataFProductId: TStringField;
    FProductId: TcxGridDBColumn;
    MDataFProductClass: TStringField;
    MDataFSollWeight: TFloatField;
    MDataFProductSort: TStringField;
    actionList: TActionList;
    ActApp: TAction;
    ActSave: TAction;
    ActOut: TAction;
    ActEdit: TAction;
    ActDel: TAction;
    Act_Submit: TAction;
    Act_Audit: TAction;
    Act_Status: TAction;
    Act_Set_Close: TAction;
    Act_Set_Open: TAction;
    Act_Menu: TAction;
    Act_Menu_Set: TAction;
    Act_MaxID: TAction;
    Action_Sel: TAction;
    Act_TS_BudgetParts: TAction;
    PM: TPopupMenu;
    N_Edit: TMenuItem;
    N_Filter: TMenuItem;
    N_Sort: TMenuItem;
    N_Group: TMenuItem;
    N_Set: TMenuItem;
    N_Out: TMenuItem;
    ToolBar1: TToolBar;
    TB_Ref: TToolButton;
    TB_App: TToolButton;
    TB_Edit: TToolButton;
    TB_Del: TToolButton;
    ToolButton5: TToolButton;
    TB_Prin: TToolButton;
    ToolButton1: TToolButton;
    TB_EXIT: TToolButton;
    FManageParts: TcxGridDBColumn;
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
    procedure SelPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure Act_Set_OpenExecute(Sender: TObject);
    procedure Act_Set_CloseExecute(Sender: TObject);
    procedure Act_StatusExecute(Sender: TObject);
    procedure Act_TS_BudgetPartsExecute(Sender: TObject);
    procedure N_EditClick(Sender: TObject);
    procedure N_FilterClick(Sender: TObject);
    procedure N_SortClick(Sender: TObject);
    procedure N_GroupClick(Sender: TObject);
    procedure N_SetClick(Sender: TObject);
    procedure N_OutClick(Sender: TObject);
    procedure cxGridContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure Act_Menu_SetExecute(Sender: TObject);
    procedure Act_MenuExecute(Sender: TObject);
  private
   // ListItemFNumber,P_th:String;
   // P_i:boolean;

    { Private declarations }
    function AddRd:bool;
    function EditRd:bool;
    function DelRd:bool;

  public
    { Public declarations }
  end;

var
  Frm_BudgetParts: TFrm_BudgetParts;


implementation

uses FRMDATA, FRMMAIN, COMMON, FrmSelect, ProgBar, PROGRASS;

{$R *.dfm}

function TFrm_BudgetParts.DelRd: bool;
var
 qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Delete from T_BudgetParts where FBudgetPartsID=:FBudgetPartsID';
    with qry.Parameters do
    begin
      FindParam('FBudgetPartsID').value:=mdata['FBudgetPartsID'];
    end;
    result:=qry.ExecSQL>=1;
  finally
    qry.Free;
  end;
end;

function TFrm_BudgetParts.AddRd: bool;
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
    qry.SQL.Text:='Insert into T_BudgetParts(FNumber,FParentNumber,FDepartmentID,FBudgetPartsName,FBudgetPartsModel,FBudgetPartsUnit,FManageParts,FPartsID,FBudgetPartsRemark,FProductClass,FDetail) '
                 +'values(:FNumber,:FParentNumber,:FDepartmentID,:FBudgetPartsName,:FBudgetPartsModel,:FBudgetPartsUnit,:FManageParts,:FPartsID,:FBudgetPartsRemark,:FProductClass,:FDetail)';
     mData.First;

     while not mData.eof do
     begin
       If (mData['FNumber']<>'') and (mData['FBudgetPartsName']<>'') and (mData['FBudgetPartsUnit']<>'') and (mData['FPartsID']<>0) then
       begin
         If qry.Active then qry.Close;
         with qry.Parameters do
         begin
           FindParam('FNumber').value:=mdata['FNumber'];;
           FindParam('FParentNumber').value:=mdata['FParentNumber'];
           FindParam('FDepartmentID').value:=UserFDepartmentID;
           FindParam('FBudgetPartsName').value:=mdata['FBudgetPartsName'];
           FindParam('FBudgetPartsModel').value:=mdata['FBudgetPartsModel'];
           FindParam('FBudgetPartsUnit').value:=mdata['FBudgetPartsUnit'];
           FindParam('FManageParts').value:=mdata['FManageParts'];
           FindParam('FPartsID').value:=mdata['FPartsID'];
           FindParam('FBudgetPartsRemark').value:=mdata['FBudgetPartsRemark'];
           FindParam('FProductClass').value:=mdata['FProductClass'];
           FindParam('FDetail').value:=mdata['FDetail'];
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


function TFrm_BudgetParts.EditRd:bool;
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
    qry.SQL.Text:='Update T_BudgetParts set FNumber=:FNumber,FParentNumber=:FParentNumber,FDepartmentID=:FDepartmentID,FBudgetPartsName=:FBudgetPartsName,'
                 +'FBudgetPartsModel=:FBudgetPartsModel,FBudgetPartsUnit=:FBudgetPartsUnit,FManageParts=:FManageParts,'
                 +'FPartsID=:FPartsID,FBudgetPartsRemark=:FBudgetPartsRemark,FProductClass=:FProductClass,FDetail=:FDetail where FBudgetPartsID=:FBudgetPartsID';
     mData.First;

     while not mData.eof do
     begin
       If (mData['FNumber']<>'') and (mData['FBudgetPartsName']<>'') and (mData['FBudgetPartsUnit']<>'')  and (mData['FPartsID']<>0) and (mData['FProductClass']<>'') then
       begin
         If qry.Active then qry.Close;
         with qry.Parameters do
         begin
           FindParam('FNumber').value:=mdata['FNumber'];;
           FindParam('FParentNumber').value:=mdata['FParentNumber'];
           FindParam('FDepartmentID').value:=UserFDepartmentID;
           FindParam('FBudgetPartsName').value:=mdata['FBudgetPartsName'];
           FindParam('FBudgetPartsModel').value:=mdata['FBudgetPartsModel'];
           FindParam('FBudgetPartsUnit').value:=mdata['FBudgetPartsUnit'];
           FindParam('FManageParts').value:=mdata['FManageParts'];
           FindParam('FPartsID').value:=mdata['FPartsID'];
           FindParam('FBudgetPartsRemark').value:=mdata['FBudgetPartsRemark'];
           FindParam('FProductClass').value:=mdata['FProductClass'];
           FindParam('FDetail').value:=mdata['FDetail'];
           FindParam('FBudgetPartsID').value:=mdata['FBudgetPartsID'];
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


procedure TFrm_BudgetParts.FormResize(Sender: TObject);
begin
  inherited;
  L_title.Caption:=UserFDepartmentName+'结算部件信息';
  Self.Caption:=UserFDepartmentName+'结算部件信息';
end;

procedure TFrm_BudgetParts.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=cafree;
  Frm_BudgetParts:=nil;
end;

procedure TFrm_BudgetParts.TB_EXITClick(Sender: TObject);
begin
  inherited;
  self.Close;
end;

procedure TFrm_BudgetParts.MyTreeViewChange(Sender: TObject; Node: TTreeNode);
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
    
    Act_TS_BudgetParts.Execute;//页选项设置
    Act_Status.Execute; //权限设置

  end;

end;

procedure TFrm_BudgetParts.MyTreeViewExpanding(Sender: TObject;
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

  qry.SQL.Text:='Select * from VT_BudgetParts where FParentNumber= '''
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

procedure TFrm_BudgetParts.TB_RefClick(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
//  If not TreeVeiwListWhere(qry,MyTreeView,'VT_BudgetParts',' and FDepartmentID='+IntToStr(UserFDepartmentID) ) then
  If not TreeVeiwListWhere(qry,MyTreeView,'VT_BudgetParts',' ' ) then
  begin
    Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;

end;

procedure TFrm_BudgetParts.OKBtnClick(Sender: TObject);
var qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  mData.Edit;
  mData.Post;

  If (mData['FNumber']='')or (mData['FParentNumber']='') or (mData['FBudgetPartsName']='') or (mData['FBudgetPartsUnit']='')  or (mData['FPartsID']=0)  or (mData['FProductClass']='') then
  begin
    application.MessageBox('关键字不能为空！请重新输入','系统提示',MB_ICONERROR);
    Exit;
  end;


  If P_state =0 then
  begin
    try
      qry.SQL.Text:='Select * from V_BudgetParts where FNumber=:FNumber and FDepartmentID=:FDepartmentID '
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
      qry.SQL.Text:='Select * from V_BudgetParts where FBudgetPartsName=:FBudgetPartsName and FBudgetPartsModel=:FBudgetPartsModel '
                   +' and FBudgetPartsUnit=:FBudgetPartsUnit and FDepartmentID=:FDepartmentID and FPartsID=:FPartsID';
      qry.Parameters.FindParam('FBudgetPartsName').Value:=mdata['FBudgetPartsName'];
      qry.Parameters.FindParam('FBudgetPartsModel').Value:=mdata['FBudgetPartsModel'];
      qry.Parameters.FindParam('FBudgetPartsUnit').Value:=mdata['FBudgetPartsUnit'];
      qry.Parameters.FindParam('FDepartmentID').Value:=UserFDepartmentID;
      qry.Parameters.FindParam('FPartsID').Value:=mdata['FPartsID'];
      qry.Open;
      If qry.RecordCount>0 then
      begin
         application.MessageBox('结算部件名称+规格不允许重复！请重新输入','系统提示',MB_ICONERROR);
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



procedure TFrm_BudgetParts.TB_AppClick(Sender: TObject);
var
 qry:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  L_title.Caption:=UserFDepartmentName+'结算部件信息增加';
  P_state :=0;    //新增
  try
    qry.SQL.Text:='select * from V_BudgetParts with(nolock) where FBudgetPartsID=0';
    qry.Open;
  finally
    ;
  end;
  mdata.CopyFromDataSet(qry);
  mdata.Active:=True;
  mdata.Append;
  mdata.Edit;
  mData['FProductClass']:='主产品';
  mData['FDepartmentID']:=UserFDepartmentID;
  mData['FDepartmentname']:=UserFDepartmentName;
  mdata.post;
  Act_Set_Open.Execute;


end;

procedure TFrm_BudgetParts.TB_EditClick(Sender: TObject);
var
  qry:TADOQuery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  P_state :=1;  //修改
  If (mdata.RecordCount<1) then
    Exit;
 { try
    qry.SQL.Text:='Select * from V_BudgetPrice where FBudgetPartsID=:FBudgetPartsID';
    qry.Parameters.FindParam('FBalanceID').Value:=mdata['FBalanceID'];
    qry.Open;
  finally
     ;
  end;
  if qry.RecordCount>0 then
  begin
    application.MessageBox(Pchar('部件【'+Trim(Mdata['FBudgetPartsName'])+'】【'+Trim(Mdata['FBudgetPartsModel'])+'】已启用不允许修改！'),'系统提示',MB_ICONINFORMATION);
    Exit;
  end;
  }
  L_title.Caption:=UserFDepartmentName+'结算部件数据修改';
  Act_Set_Open.Execute;

end;

procedure TFrm_BudgetParts.TB_DelClick(Sender: TObject);
var
  qry:TADOQuery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If (mdata.RecordCount<1) then
    Exit;
 {
  try
    qry.SQL.Text:='Select * from V_BudgetWorkPrice where FBudgetPartsID=:FBudgetPartsID';
    qry.Parameters.FindParam('FBudgetPartsID').Value:=mdata['FBudgetPartsID'];
    qry.Open;
  finally
     ;
  end;
  if qry.RecordCount>0 then
  begin
    application.MessageBox(Pchar('部件【'+Trim(Mdata['FBudgetPartsName'])+'】【'+Trim(Mdata['FBudgetPartsModel'])+'】已启用不允许删除！'),'系统提示',MB_ICONINFORMATION);
    Exit;
  end;

  }

  If application.MessageBox(Pchar('警告：是否删除：【'+Trim(Mdata['FBudgetPartsName'])+'】【'+Trim(Mdata['FBudgetPartsModel'])+'】的信息？'+chr(13)+chr(13)
                           +'删除数据操作将不可恢复，确定要删除本数据吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
  If application.MessageBox(Pchar('警告：是否删除：【'+Trim(Mdata['FBudgetPartsName'])+'】【'+Trim(Mdata['FBudgetPartsModel'])+'】的信息？'+chr(13)+chr(13)
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

procedure TFrm_BudgetParts.CancelBtnClick(Sender: TObject);
begin
  inherited;
  L_title.Caption:=UserFDepartmentName+'结算部件信息';
  Act_Set_Close.Execute;
end;

procedure TFrm_BudgetParts.FormCreate(Sender: TObject);
begin
  inherited;
  TB_App.Enabled:= mdlData.CheckFrmRights(TFrm_BudgetParts.ClassName,'新增');
  TB_Prin.Enabled:= mdlData.CheckFrmRights(TFrm_BudgetParts.ClassName,'打印');
  N_Out.Enabled:= mdlData.CheckFrmRights(TFrm_BudgetParts.ClassName,'导出');

end;

procedure TFrm_BudgetParts.FormShow(Sender: TObject);
begin
  TB_Ref.Click;
end;

procedure TFrm_BudgetParts.SelPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var selValue,aa : string;
    qry: TADOQuery;
    i:Integer;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Select * from VT_ProductParts where FDepartmentID=:FDepartmentID order by FNumber ';
    qry.Parameters.FindParam('FDepartmentID').Value:=UserFDepartmentID;
    qry.Open;
  finally
     ;
  end;
  SelValue:=select('选择上级编码','FNumber','FParentNumber','FNumber','FName',qry);
  If (Length(selValue)>0) then
  begin
    mdata.Edit;
    mdata['FParentNumber']:=qry.FieldByName('FPartsCode').Value;
    mdata['FPartsID']:=qry.FieldByName('FPartsID').Value;
    mdata['FPartsCode']:=qry.FieldByName('FPartsCode').Value;
    mdata['FPartsName']:=qry.FieldByName('FPartsName').Value;
    mdata['FProductID']:=qry.FieldByName('FProductID').Value;
    mdata.Post;
    try
      qry.SQL.Text:='Select isnull(max(FNumber),''0'') as maxFNumber from V_BudgetParts '
                   +'where FDepartmentID=:FDepartmentID and FParentNumber=:FParentNumber and FProductID=:FProductID';
      qry.Parameters.FindParam('FDepartmentID').Value:=UserFDepartmentID;
      qry.Parameters.FindParam('FParentNumber').Value:=mdata['FParentNumber'];
      qry.Parameters.FindParam('FProductID').Value:=mdata['FProductID'];
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

procedure TFrm_BudgetParts.Act_Set_OpenExecute(Sender: TObject);
begin
  inherited;
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
  FParentNumber.Options.Editing:=True;
  FNumber.Options.Editing:=True;
  FBudgetPartsName.Options.Editing:=True;
  FBudgetPartsModel.Options.Editing:=True;
  FBudgetPartsUnit.Options.Editing:=True;
  FBudgetPartsRemark.Options.Editing:=True;
  FProductClass.Options.Editing:=True;
  FDetail.Options.Editing:=True;
  FManageParts.Options.Editing:=True;
end;

procedure TFrm_BudgetParts.Act_Set_CloseExecute(Sender: TObject);
begin
  inherited;
  TB_Ref.Visible:=True;
  TB_App.Visible:=True;
  TB_Edit.Visible:=True;
  TB_Del.Visible:=True;
  MyTreeView.Enabled:=True;

  OKBtn.Visible:=False;
  CancelBtn.Visible:=False;
  Sel.Visible:=False;
  cxGV.OptionsData.Editing:=False;

end;

procedure TFrm_BudgetParts.Act_StatusExecute(Sender: TObject);
begin
  inherited;
  If P_Isleaf=1 then
  begin
    TB_Edit.Enabled:= mdlData.CheckFrmRights(TFrm_BudgetParts.ClassName,'修改');
    TB_Del.Enabled:=mdlData.CheckFrmRights(TFrm_BudgetParts.ClassName,'删除');
  end
  else
  begin
    TB_Edit.Enabled:=False;
    TB_Del.Enabled:=False;
  end;

end;

procedure TFrm_BudgetParts.Act_TS_BudgetPartsExecute(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  If not MyItemList(qry,Mdata,'V_BudgetParts','FFullNumber',ListItemFNumber,'FFullNumber') then
  begin
    mdata.Open;
    cxGvColumn(cxGv,Mdata);
  end;

end;

procedure TFrm_BudgetParts.N_EditClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_BudgetParts.N_FilterClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_BudgetParts.N_SortClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_BudgetParts.N_GroupClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_BudgetParts.N_SetClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_BudgetParts.N_OutClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_BudgetParts.cxGridContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV';
  Gm:='mdata';
  Gr:='cxGrid';
  Act_Menu_Set.Execute;

end;

procedure TFrm_BudgetParts.Act_Menu_SetExecute(Sender: TObject);
begin
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

procedure TFrm_BudgetParts.Act_MenuExecute(Sender: TObject);
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

end.
