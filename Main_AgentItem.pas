unit Main_AgentItem;

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
  cxFilterControl, cxDBFilterControl, ActnList, cxCalc;

type
  TFrm_AgentItem = class(TFrm_GridBass)
    MData: TdxMemData;
    DS_Mdata: TDataSource;
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
    FAgentName: TcxGridDBColumn;
    cxGL: TcxGridLevel;
    MyTreeView: TTreeView;
    TB_Out: TToolButton;
    FDetail: TcxGridDBColumn;
    FAgentParentNumber: TcxGridDBColumn;
    FAgentID: TcxGridDBColumn;
    FAgentNumber: TcxGridDBColumn;
    FDepartmentID: TcxGridDBColumn;
    Image3: TImage;
    FDepartmentName: TcxGridDBColumn;
    FAgentNum: TcxGridDBColumn;
    FIsSysTem: TcxGridDBColumn;
    FJobSort: TcxGridDBColumn;
    FJobPlace: TcxGridDBColumn;
    FAgentRemark: TcxGridDBColumn;
    FPlaceSort: TcxGridDBColumn;
    cxGVC: TcxGridDBCardView;
    FAgentParentNumber_C: TcxGridDBCardViewRow;
    FAgentNumber_C: TcxGridDBCardViewRow;
    FAgentNum_C: TcxGridDBCardViewRow;
    FDetail_C: TcxGridDBCardViewRow;
    FIsSysTem_C: TcxGridDBCardViewRow;
    FJobSort_C: TcxGridDBCardViewRow;
    FAgentName_C: TcxGridDBCardViewRow;
    FJobPlace_C: TcxGridDBCardViewRow;
    FAgentRemark_C: TcxGridDBCardViewRow;
    FPlaceSort_C: TcxGridDBCardViewRow;
    FDepartmentName_C: TcxGridDBCardViewRow;
    FDepartmentID_C: TcxGridDBCardViewRow;
    FAgentID_C: TcxGridDBCardViewRow;
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
    Act_Parts: TAction;
    Act_Edit: TAction;
    Act_Del: TAction;
    Act_Out: TAction;
    Act_Audit: TAction;
    Act_cldy: TAction;
    Act_OK: TAction;
    Act_PartsSort: TAction;
    Act_Tack: TAction;
    Action1: TAction;
    Action2: TAction;
    Act_Down: TAction;
    Act_Ref: TAction;
    Act_Prin: TAction;
    Act_Cancel: TAction;
    cxGLC: TcxGridLevel;
    FTaxRate: TcxGridDBColumn;
    FTaxRate_C: TcxGridDBCardViewRow;
    FAgentShortName: TcxGridDBColumn;
    FAgentShortName_C: TcxGridDBCardViewRow;
    FSysTem: TcxGridDBColumn;
    FSysTem_C: TcxGridDBCardViewRow;
    FPaymentWay_C: TcxGridDBCardViewRow;
    FPaymentWay: TcxGridDBColumn;
    procedure FormResize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TB_EXITClick(Sender: TObject);
    procedure MyTreeViewChange(Sender: TObject; Node: TTreeNode);
    procedure MyTreeViewExpanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FAgentParentNumberPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FJobPlacePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FJobSortPropertiesChange(Sender: TObject);
    procedure FPlaceSortPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure Act_AppExecute(Sender: TObject);
    procedure Act_EditExecute(Sender: TObject);
    procedure Act_DelExecute(Sender: TObject);
    procedure Act_DownExecute(Sender: TObject);
    procedure Act_RefExecute(Sender: TObject);
    procedure Act_OutExecute(Sender: TObject);
    procedure Act_SetOpenExecute(Sender: TObject);
    procedure Act_SetCloseExecute(Sender: TObject);
    procedure Act_OKExecute(Sender: TObject);
    procedure Act_CancelExecute(Sender: TObject);
    procedure FJobSort_CPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FJobPlace_CPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FPlaceSort_CPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FAgentParentNumber_CPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FPaymentWay_CPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    ListItemFNumber:String;
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
  Frm_AgentItem: TFrm_AgentItem;


implementation

uses FRMDATA, COMMON, FrmSelect, ProgBar, PROGRASS;

{$R *.dfm}

function TFrm_AgentItem.DelRd: bool;
var
 qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Delete from T_AgentItem where FAgentID=:FAgentID';
    with qry.Parameters do
    begin
      FindParam('FAgentID').value:=mdata['FAgentID'];
    end;
    result:=qry.ExecSQL>=1;
  finally
    qry.Free;
  end;
end;

function TFrm_AgentItem.AddRd: bool;
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
    qry.SQL.Text:='Insert into T_AgentItem(FAgentNumber,FAgentParentNumber,FAgentName,FAgentRemark,FAgentShortName,FPaymentWay,FAgentNum,FDetail,FDepartmentID,FIsSysTem,FJobSort,FJobPlace,FPlaceSort,FTaxRate) '
                 +'values(:FAgentNumber,:FAgentParentNumber,:FAgentName,:FAgentRemark,:FAgentShortName,:FPaymentWay,:FAgentNum,:FDetail,:FDepartmentID,:FIsSysTem,:FJobSort,:FJobPlace,:FPlaceSort,:FTaxRate)';
    mData.First;

    while not mData.eof do
    begin
      If qry.Active then qry.Close;
      with qry.Parameters do
      begin
        FindParam('FAgentNumber').value:=mdata['FAgentNumber'];;
        FindParam('FAgentParentNumber').value:=mdata['FAgentParentNumber'];
        FindParam('FAgentName').value:=mdata['FAgentName'];
        FindParam('FAgentRemark').value:=mdata['FAgentRemark'];
        FindParam('FAgentShortName').value:=mdata['FAgentShortName'];
        FindParam('FPaymentWay').value:=mdata['FPaymentWay'];
        FindParam('FAgentNum').value:=mdata['FAgentNum'];
        FindParam('FDetail').value:=mdata['FDetail'];
        FindParam('FDepartmentID').value:=UserFDepartmentID;
        FindParam('FIsSysTem').value:=mdata['FIsSysTem'];
        FindParam('FJobSort').value:=mdata['FJobSort'];
        FindParam('FJobPlace').value:=mdata['FJobPlace'];
        FindParam('FPlaceSort').value:=mdata['FPlaceSort'];
        FindParam('FTaxRate').value:=mdata['FTaxRate'];
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


function TFrm_AgentItem.EditRd:bool;
var
  qry: TADOQuery;
  s:string;
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
   qry.SQL.Text:='Update T_AgentItem set FAgentNumber=:FAgentNumber,FAgentParentNumber=:FAgentParentNumber,FAgentName=:FAgentName,FPaymentWay=:FPaymentWay,'
                 +'FAgentRemark=:FAgentRemark,FAgentShortName=:FAgentShortName,FAgentNum=:FAgentNum,FDetail=:FDetail,FDepartmentID=:FDepartmentID,FIsSysTem=:FIsSysTem,'
                 +'FJobSort=:FJobSort,FJobPlace=:FJobPlace,FPlaceSort=:FPlaceSort,FTaxRate='+FloatToStr(mdata['FTaxRate'])+' where FAgentID=:FAgentID';
     mData.First;
    while not mData.eof do
    begin
      If (mData['FAgentNumber']<>'') and (mData['FAgentName']<>'')  then
      begin
        If qry.Active then qry.Close;
        with qry.Parameters do
        begin
          FindParam('FAgentNumber').value:=mdata['FAgentNumber'];
          FindParam('FAgentParentNumber').value:=mdata['FAgentParentNumber'];
          FindParam('FAgentName').value:=mdata['FAgentName'];
          FindParam('FPaymentWay').value:=mdata['FPaymentWay'];
          FindParam('FAgentRemark').value:=mdata['FAgentRemark'];
          FindParam('FAgentShortName').value:=mdata['FAgentShortName'];
          FindParam('FAgentNum').value:=mdata['FAgentNum'];
          FindParam('FDetail').value:=mdata['FDetail'];
          FindParam('FDepartmentID').value:=mdata['FDepartmentID'];
          FindParam('FIsSysTem').value:=mdata['FIsSysTem'];
          FindParam('FJobSort').value:=mdata['FJobSort'];
          FindParam('FJobPlace').value:=mdata['FJobPlace'];
          FindParam('FPlaceSort').value:=mdata['FPlaceSort'];
          FindParam('FAgentID').value:=mdata['FAgentID'];
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


procedure TFrm_AgentItem.FormResize(Sender: TObject);
begin
  inherited;
  L_title.Caption:=UserFDepartmentName+'外协生产用户信息';
  Self.Caption:=UserFDepartmentName+'外协生产用户信息';
end;

procedure TFrm_AgentItem.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=CaFree;
  Frm_AgentItem:=nil;
end;

procedure TFrm_AgentItem.TB_EXITClick(Sender: TObject);
begin
  inherited;
  Self.Close;
end;

procedure TFrm_AgentItem.MyTreeViewChange(Sender: TObject; Node: TTreeNode);
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
    If not MyItemList(qry,Mdata,'V_AgentItem','FFullNumber',ListItemFNumber,'FFullNumber') then
    begin
      mdata.Open;
      cxGvColumn(cxGv,Mdata);
    end;
    If P_Isleaf=1 then
    begin
      Act_Edit.Enabled:= mdlData.PermissionCheckRights(TFrm_AgentItem.ClassName,'修改');
      Act_Del.Enabled:=mdlData.PermissionCheckRights(TFrm_AgentItem.ClassName,'删除');
    end
    else
    begin
      Act_Edit.Enabled:=False;
      Act_Del.Enabled:=False;
    end;
  end;
end;

procedure TFrm_AgentItem.MyTreeViewExpanding(Sender: TObject;
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
               +'Isleaf from VT_AgentItem where FParentNumber= '''
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

procedure TFrm_AgentItem.FormCreate(Sender: TObject);
var AFirstColumnStyle: TcxStyle;
begin
  inherited;
  //列颜色
  AFirstColumnStyle := TcxStyle.Create(Self);
  AFirstColumnStyle.Color := clAqua;
  AFirstColumnStyle.TextColor := clBlue;
  cxGV.Columns[0].Styles.Content := AFirstColumnStyle;
  cxGV.Columns[1].Styles.Content := AFirstColumnStyle;

  Act_App.Enabled:= mdlData.PermissionCheckRights(TFrm_AgentItem.ClassName,'新增');
  Act_Prin.Enabled:= mdlData.PermissionCheckRights(TFrm_AgentItem.ClassName,'打印');
  Act_Out.Enabled:= mdlData.PermissionCheckRights(TFrm_AgentItem.ClassName,'打印');
end;

procedure TFrm_AgentItem.FormShow(Sender: TObject);
begin
  TB_Ref.Click;
end;

procedure TFrm_AgentItem.FAgentParentNumberPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
    i:Integer;
begin
{  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Select FAgentNumber as FNumber,FAgentParentNumber as FParentNumber,FAgentName as FName,FDetail from V_AgentItem '
                 +'Where FDetail=0 and FDepartmentID=:FDepartmentID order by FAgentNumber ';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Open;
  finally
     ;
  end;

  selValue:=select('选择上级编码','FNumber','FParentNumber','FNumber','FNumber;FName',qry);
  If (Length(selValue)>0) then
  begin
    mdata.Edit;
    mdata['FAgentParentNumber']:=qry.FieldByName('FNumber').AsString;
    mdata.Post;
    try
      qry.SQL.Text:='Select isnull(max(FAgentNumber),'''') as maxFAgentNumber from V_AgentItem where FDepartmentID=:FDepartmentID and FAgentParentNumber=:FAgentParentNumber';
      qry.Parameters.FindParam('FDepartmentID').Value:=UserFDepartmentID;
      qry.Parameters.FindParam('FAgentParentNumber').Value:=mdata['FAgentParentNumber'];
      qry.Open;
    finally
       ;
    end;
    If (qry.RecordCount=1) and (LastDelimiter('.',qry.FieldByName('maxFAgentNumber').Value)<>0) then
       i:=StrToInt(Copy(qry.FieldByName('maxFAgentNumber').Value,LastDelimiter('.',qry.FieldByName('maxFAgentNumber').Value)+1,2))+1
    else
       i:=1;
    mData.Edit;
    mData['FAgentNumber']:=mdata['FAgentParentNumber']+'.'+Format('%.2d',[i]);
    mdata.Post;
  end
  else
    application.MessageBox('请选择明细！','系统提示',MB_ICONINFORMATION);

  qry.Free; }
end;

procedure TFrm_AgentItem.FJobPlacePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='select FJobPlace from V_AgentItem where FDepartmentID=:FDepartmentID order by FJobPlace ';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Open;
  finally
   ;
  end;

  selValue:=select('选择加工地点','FJobPlace','FJobPlace','FJobPlace','FJobPlace',qry);
  If (Length(selValue)>0) then
  begin
    mdata.Edit;
    mdata['FJobPlace']:=qry.FieldByName('FJobPlace').Value;
    mdata.Post;
  end;

end;

procedure TFrm_AgentItem.FJobSortPropertiesChange(Sender: TObject);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='select FJobSort from V_AgentItem where FDepartmentID=:FDepartmentID order by FJobSort ';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Open;
  finally
   ;
  end;

  selValue:=select('选择加工类型','FJobSort','FJobSort','FJobSort','FJobSort',qry);
  If (Length(selValue)>0) then
  begin
    mdata.Edit;
    mdata['FJobSort']:=qry.FieldByName('FJobSort').Value;
    mdata.Post;
  end;

end;

procedure TFrm_AgentItem.FPlaceSortPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='select FPlaceSort from V_AgentItem where FDepartmentID=:FDepartmentID order by FPlaceSort ';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Open;
  finally
   ;
  end;

  selValue:=select('选择地点分类','FPlaceSort','FPlaceSort','FPlaceSort','FPlaceSort',qry);
  If (Length(selValue)>0) then
  begin
    mdata.Edit;
    mdata['FPlaceSort']:=qry.FieldByName('FPlaceSort').Value;
    mdata.Post;
  end;

end;

procedure TFrm_AgentItem.Act_AppExecute(Sender: TObject);
var
 qry,qry1:TADOquery;
 i:Integer;
 P_FAgentNumber,P_FAgentParentNumber,P_FDetail,P_FAgentName:string;
begin
  P_state :=0;
  L_title.Caption:=UserFDepartmentName+'外协生产用户信息新增';
  Act_SetOpen.Execute;

  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry1:=TAdoQuery.Create(self);
  qry1.ConnectionString:=mdlData.ReadConnStr;

  If (mData.RecordCount=1) and (mdata['FAgentParentNumber']<>'') then
  begin
    try
      qry.SQL.Text:='Select max(FAgentNumber) as maxFAgentNumber from T_AgentItem where FDepartmentID=:FDepartmentID and FAgentParentNumber=:FAgentParentNumber';
      qry.Parameters.FindParam('FDepartmentID').Value:=UserFDepartmentID;
      qry.Parameters.FindParam('FAgentParentNumber').Value:=mdata['FAgentParentNumber'];
      qry.Open;
    finally
       ;
    end;
    If qry.RecordCount>0 then
       i:=StrToInt(Copy(qry.FieldByName('maxFAgentNumber').Value,LastDelimiter('.',qry.FieldByName('maxFAgentNumber').Value)+1,3))+1
    else
       i:=1;

    P_FAgentNumber:=mData['FAgentNumber'];
    P_FAgentParentNumber:=mData['FAgentParentNumber'];
    P_FAgentName:=mData['FAgentName'];
    P_FDetail:=mData['FDetail'];
    try
      qry1.SQL.Text:='Select * from V_AgentItem where FDepartmentID=:FDepartmentID and FAgentID=0';
      qry1.Parameters.FindParam('FDepartmentID').Value:=UserFDepartmentID;
      qry1.Open;
    finally
       ;
    end;
    mData.CopyFromDataSet(qry1);
    mData.Active:=True;

    mData.Edit;
    mData['FAgentNumber']:=P_FAgentParentNumber+'.'+Format('%.3d',[i]);
    mData['FAgentParentNumber']:=P_FAgentParentNumber;
    mData['FAgentName']:='';
    mData['FDetail']:=P_FDetail;
    mData.Post;
  end
  else
  begin
    try
      qry1.SQL.Text:='Select * from V_AgentItem where FDepartmentID=:FDepartmentID and FAgentID=0';
      qry1.Parameters.FindParam('FDepartmentID').Value:=UserFDepartmentID;
      qry1.Open;
    finally
       ;
    end;
    mData.CopyFromDataSet(qry1);
    mData.Active:=True;
    mData.Close;
    mData.Open;
    mData.Append;
    mData.Edit;
    mData['FDetail']:=True;
    mData['FIsSysTem']:=False;

    mData['FAgentNumber']:='';
    mData['FAgentParentNumber']:='';
    mData['FJobPlace']:='';
    mData['FPlaceSort']:='';

    mData['FAgentName']:='';
    mData['FDepartmentID']:=UserFDepartmentID;
    mData['FDepartmentName']:=UserFDepartmentName;
    mData.Post;
  end;

  qry.Free;
  qry1.Free;

end;

procedure TFrm_AgentItem.Act_EditExecute(Sender: TObject);
begin
  inherited;
  P_state :=1;
  Act_SetOpen.Execute;
  L_title.Caption:=UserFDepartmentName+'外协生产用户信息修改';

end;

procedure TFrm_AgentItem.Act_DelExecute(Sender: TObject);
var
  qry:TADOQuery;

begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  try
    qry.SQL.Text:='Select * from T_WorkItem where FAgentID=:FAgentID';
    qry.Parameters.FindParam('FAgentID').Value:=mdata['FAgentID'];
    qry.Open;
  finally
     ;
  end;
  if qry.RecordCount>0 then
  begin
    application.MessageBox(Pchar('外协用户【'+Trim(Mdata['FAgentName'])+'】已启用不允许删除！'),'系统提示',MB_ICONINFORMATION);
    Exit;
  end;

  If application.MessageBox(Pchar('警告：是否删除外协用户名称为：【'+Trim(Mdata['FAgentName'])+'】的数据？'+chr(13)+chr(13)
                           +'删除数据操作将不可恢复，确定要删除本数据吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
  If application.MessageBox(Pchar('警告：是否删除外协用户名称为：【'+Trim(Mdata['FAgentName'])+'】的数据？'+chr(13)+chr(13)
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

procedure TFrm_AgentItem.Act_DownExecute(Sender: TObject);
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

procedure TFrm_AgentItem.Act_RefExecute(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If not TreeVeiwListWhere(qry,MyTreeView,'VT_AgentItem',' and FDepartmentID='+IntToStr(UserFDepartmentID) ) then
  begin
    Application.MessageBox(PChar('树型结构显示错误，请联系开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;
end;

procedure TFrm_AgentItem.Act_OutExecute(Sender: TObject);
begin
  inherited;
  ExportToExcel(cxGrid,True,TRue);
end;

procedure TFrm_AgentItem.Act_SetOpenExecute(Sender: TObject);
begin
  inherited;
  Act_Ref.Visible:=False;
  Act_App.Visible:=False;
  Act_Edit.Visible:=False;
  Act_Del.Visible:=False;
  MyTreeView.Enabled:=False;
  Panel_button.Visible:=True;
  OKBtn.Visible:=True;
  CancelBtn.Visible:=True;
 { cxGV.OptionsData.Editing:=True;

  FAgentNumber.Options.Editing:=True;
  FAgentParentNumber.Options.Editing:=True;
  FAgentName.Options.Editing:=True;
  FAgentRemark.Options.Editing:=True;
  FDetail.Options.Editing:=True;
  FAgentNum.Options.Editing:=True;
  FIsSysTem.Options.Editing:=True;
  FJobSort.Options.Editing:=True;
  FJobPlace.Options.Editing:=True;
  FPlaceSort.Options.Editing:=True;
     }
  cxGVC.OptionsData.Editing:=True;
  FAgentNumber_C.Options.Editing:=True;
  FAgentParentNumber_C.Options.Editing:=True;
  FAgentName_C.Options.Editing:=True;
  FAgentRemark_C.Options.Editing:=True;
  FDetail_C.Options.Editing:=True;
  FAgentNum_C.Options.Editing:=True;
  FIsSysTem_C.Options.Editing:=True;
  FJobSort_C.Options.Editing:=True;
  FJobPlace_C.Options.Editing:=True;
  FPlaceSort_C.Options.Editing:=True;
  FTaxRate_C.Options.Editing:=True;
  FAgentShortName_C.Options.Editing:=True;
  FPaymentWay_C.Options.Editing:=True;

end;

procedure TFrm_AgentItem.Act_SetCloseExecute(Sender: TObject);
begin
  inherited;
  Act_Ref.Visible:=True;
  Act_App.Visible:=True;
  Act_Edit.Visible:=True;
  Act_Del.Visible:=True;
  MyTreeView.Enabled:=True;

  Panel_button.Visible:=False;
  OKBtn.Visible:=False;
  CancelBtn.Visible:=False;
  cxGV.OptionsData.Editing:=False;

  cxGVC.OptionsData.Editing:=False;
  FAgentNumber_C.Options.Editing:=False;
  FAgentParentNumber_C.Options.Editing:=False;
  FAgentName_C.Options.Editing:=False;
  FAgentRemark_C.Options.Editing:=False;
  FDetail_C.Options.Editing:=False;
  FAgentNum_C.Options.Editing:=False;
  FIsSysTem_C.Options.Editing:=False;
  FJobSort_C.Options.Editing:=False;
  FJobPlace_C.Options.Editing:=False;
  FPlaceSort_C.Options.Editing:=False;
  FTaxRate_C.Options.Editing:=False;
  FAgentShortName_C.Options.Editing:=False;
  FPaymentWay_C.Options.Editing:=False;

end;

procedure TFrm_AgentItem.Act_OKExecute(Sender: TObject);
var qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.EnableBCD:=False;//小数位数>4

  mData.Edit;
  mData.Post;

  If (mData['FAgentNumber']='') or (mData['FAgentName']='') then
  begin
    application.MessageBox('关键字不能为空！请重新输入','系统提示',MB_ICONERROR);
    Exit;
  end;

  If P_state =0 then
  begin
    try
      qry.SQL.Text:='Select * from V_AgentItem where FDepartmentID=:FDepartmentID '
                   +' and FAgentNumber=:FAgentNumber and FAgentRemark=:FAgentRemark';
      qry.Parameters.FindParam('FDepartmentID').Value:=UserFDepartmentID;
      qry.Parameters.FindParam('FAgentNumber').Value:=mdata['FAgentNumber'];
      qry.Parameters.FindParam('FAgentRemark').Value:=mdata['FAgentRemark'];
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
      qry.SQL.Text:='Select * from V_AgentItem where FDepartmentID=:FDepartmentID '
                   +' and FAgentName=:FAgentName and FAgentRemark=:FAgentRemark';
      qry.Parameters.FindParam('FDepartmentID').Value:=UserFDepartmentID;
      qry.Parameters.FindParam('FAgentName').Value:=mdata['FAgentName'];
      qry.Parameters.FindParam('FAgentRemark').Value:=mdata['FAgentRemark'];
      qry.Open;
      If qry.RecordCount>0 then
      begin
         application.MessageBox('用户名称重复！请重新输入','系统提示',MB_ICONERROR);
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

procedure TFrm_AgentItem.Act_CancelExecute(Sender: TObject);
begin
  inherited;
  L_title.Caption:=UserFDepartmentName+'外协生产用户信息';
  Act_SetClose.Execute;
end;

procedure TFrm_AgentItem.FJobSort_CPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='select FJobSort from V_AgentItem where FDepartmentID=:FDepartmentID order by FJobSort ';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Open;
  finally
   ;
  end;

  selValue:=select('选择加工类型','FJobSort','FJobSort','FJobSort','FJobSort',qry);
  If (Length(selValue)>0) then
  begin
    mdata.Edit;
    mdata['FJobSort']:=qry.FieldByName('FJobSort').Value;
    mdata.Post;
  end;
end;

procedure TFrm_AgentItem.FJobPlace_CPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='select FJobPlace from V_AgentItem where FDepartmentID=:FDepartmentID order by FJobPlace ';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Open;
  finally
   ;
  end;

  selValue:=select('选择加工地点','FJobPlace','FJobPlace','FJobPlace','FJobPlace',qry);
  If (Length(selValue)>0) then
  begin
    mdata.Edit;
    mdata['FJobPlace']:=qry.FieldByName('FJobPlace').Value;
    mdata.Post;
  end;
end;

procedure TFrm_AgentItem.FPlaceSort_CPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='select FPlaceSort from V_AgentItem where FDepartmentID=:FDepartmentID order by FPlaceSort ';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Open;
  finally
   ;
  end;

  selValue:=select('选择地点分类','FPlaceSort','FPlaceSort','FPlaceSort','FPlaceSort',qry);
  If (Length(selValue)>0) then
  begin
    mdata.Edit;
    mdata['FPlaceSort']:=qry.FieldByName('FPlaceSort').Value;
    mdata.Post;
  end;

end;

procedure TFrm_AgentItem.FAgentParentNumber_CPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
    i:Integer;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Select FAgentNumber as FNumber,FAgentParentNumber as FParentNumber,FAgentName as FName,FDetail from V_AgentItem '
                 +'Where FDetail=0 and FDepartmentID=:FDepartmentID order by FAgentNumber ';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Open;
  finally
     ;
  end;

  selValue:=select('选择上级编码','FNumber','FParentNumber','FNumber','FNumber;FName',qry);
  If (Length(selValue)>0) then
  begin
    mdata.Edit;
    mdata['FAgentParentNumber']:=qry.FieldByName('FNumber').AsString;
    mdata.Post;
    try
      qry.SQL.Text:='Select isnull(max(FAgentNumber),'''') as maxFAgentNumber from V_AgentItem where FDepartmentID=:FDepartmentID and FAgentParentNumber=:FAgentParentNumber';
      qry.Parameters.FindParam('FDepartmentID').Value:=UserFDepartmentID;
      qry.Parameters.FindParam('FAgentParentNumber').Value:=mdata['FAgentParentNumber'];
      qry.Open;
    finally
       ;
    end;
    If (qry.RecordCount=1) and (LastDelimiter('.',qry.FieldByName('maxFAgentNumber').Value)<>0) then
       i:=StrToInt(Copy(qry.FieldByName('maxFAgentNumber').Value,LastDelimiter('.',qry.FieldByName('maxFAgentNumber').Value)+1,2))+1
    else
       i:=1;
    mData.Edit;
    mData['FAgentNumber']:=mdata['FAgentParentNumber']+'.'+Format('%.2d',[i]);
    mdata.Post;
  end
  else
    application.MessageBox('请选择明细！','系统提示',MB_ICONINFORMATION);

  //qry.Free;

end;

procedure TFrm_AgentItem.FPaymentWay_CPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='select distinct FPaymentWay from V_AgentItem where FDepartmentID=:FDepartmentID order by FPaymentWay ';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Open;
  finally
   ;
  end;

  selValue:=select('选择默认付款方式','FPaymentWay','FPaymentWay','FPaymentWay','FPaymentWay',qry);
  If (Length(selValue)>0) then
  begin
    mdata.Edit;
    mdata['FPaymentWay']:=qry.FieldByName('FPaymentWay').Value;
    mdata.Post;
  end;


end;

end.
