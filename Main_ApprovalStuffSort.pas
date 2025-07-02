unit Main_ApprovalStuffSort;

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
  TFrm_ApprovalStuffSort = class(TFrm_GridBass)
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
    DS_Mdata_Brow: TDataSource;
    MData_Brow: TdxMemData;
    TS_ApprovalStuffSort: TRzPageControl;
    TS_Brow: TRzTabSheet;
    TS_Edit: TRzTabSheet;
    Panel2: TPanel;
    cxGrid: TcxGrid;
    cxGV: TcxGridDBTableView;
    FApprovalStuffSortNumber: TcxGridDBColumn;
    FApprovalStuffSortParentNumber: TcxGridDBColumn;
    FApprovalStuffSort: TcxGridDBColumn;
    FApprovalStuffSortRemak: TcxGridDBColumn;
    FDepartmentName: TcxGridDBColumn;
    FDepartmentID: TcxGridDBColumn;
    cxGVC: TcxGridDBCardView;
    FApprovalStuffSortNumber_Card: TcxGridDBCardViewRow;
    FApprovalStuffSortParentNumber_Card: TcxGridDBCardViewRow;
    FApprovalStuffSort_Card: TcxGridDBCardViewRow;
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
    FisLeaf_Card: TcxGridDBCardViewRow;
    cxGrid_Brow: TcxGrid;
    cxGV_Brow: TcxGridDBTableView;
    FApprovalStuffSortParentNumber_Brow: TcxGridDBColumn;
    FApprovalStuffSortNumber_Brow: TcxGridDBColumn;
    FApprovalStuffSort_Brow: TcxGridDBColumn;
    FApprovalStuffSortRemak_Brow: TcxGridDBColumn;
    FDepartmentName_Brow: TcxGridDBColumn;
    FDepartmentID_Brow: TcxGridDBColumn;
    cxGL_Brow: TcxGridLevel;
    RzSizePanel4: TRzSizePanel;
    cxGrid_List: TcxGrid;
    cxGV_List: TcxGridDBTableView;
    FSupplierWrite_Brow: TcxGridDBColumn;
    FProductClass_Brow: TcxGridDBColumn;
    FSupplierName_Brow: TcxGridDBColumn;
    FSupplierShortName_Brow: TcxGridDBColumn;
    FProvince_Brow: TcxGridDBColumn;
    FSupplierAddress_Brow: TcxGridDBColumn;
    FAgentName_Brow: TcxGridDBColumn;
    FAgentMobilePhone_Brow: TcxGridDBColumn;
    FExpirationDate_Brow: TcxGridDBColumn;
    FAgentCardNum_Brow: TcxGridDBColumn;
    FAgentEmail_Brow: TcxGridDBColumn;
    FAgentFax_Brow: TcxGridDBColumn;
    FLeadName_Brow: TcxGridDBColumn;
    FLeadPosition_Brow: TcxGridDBColumn;
    FLeadMobilePhone_brow: TcxGridDBColumn;
    FLeadEmail_Brow: TcxGridDBColumn;
    FLeadFax_Brow: TcxGridDBColumn;
    FBusinessLicense_Brow: TcxGridDBColumn;
    FTaxRegistration_Brow: TcxGridDBColumn;
    FBankPermit_Brow: TcxGridDBColumn;
    FOrganizationCode_Brow: TcxGridDBColumn;
    FPowerAttorney_Brow: TcxGridDBColumn;
    FSupplierEvaluation_Brow: TcxGridDBColumn;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGL_List: TcxGridLevel;
    DS_Mdata_List: TDataSource;
    MData_List: TdxMemData;
    FisLeaf_Brow: TcxGridDBColumn;
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
    procedure FQuotationStuffName_CardPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxGVCDblClick(Sender: TObject);
    procedure cxGV_BrowFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure Act_EditRdExecute(Sender: TObject);
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
    procedure FQuotationStuffParentNumber_CardPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure cxGrid_ListContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
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
  Frm_ApprovalStuffSort: TFrm_ApprovalStuffSort;


implementation

uses FRMDATA, COMMON, FrmSelect, ProgBar, PROGRASS;

{$R *.dfm}

function TFrm_ApprovalStuffSort.DelRd: bool;
var
 qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Delete from T_ApprovalStuffSort where FApprovalStuffSortID=:FApprovalStuffSortID';
    with qry.Parameters do
    begin
      FindParam('FApprovalStuffSortID').value:=mdata_Brow['FApprovalStuffSortID'];
    end;
    result:=qry.ExecSQL>=1;
  finally
    qry.Free;
  end;
end;

function TFrm_ApprovalStuffSort.AddRd: bool;
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
    qry.SQL.Text:='Insert into T_ApprovalStuffSort(FApprovalStuffSortNumber,FApprovalStuffSortParentID,FApprovalStuffSort,'
                 +'FApprovalStuffSortRemak,FisLeaf,FDepartmentID )'
                 +'values(:FApprovalStuffSortNumber,:FApprovalStuffSortParentID,:FApprovalStuffSort,'
                 +':FApprovalStuffSortRemak,:FisLeaf,:FDepartmentID)';
    mData.First;
    while not mData.eof do
    begin
      If qry.Active then qry.Close;
      with qry.Parameters do
      begin
        FindParam('FApprovalStuffSortNumber').value:=mdata['FApprovalStuffSortNumber'];;
        FindParam('FApprovalStuffSortParentID').value:=mdata['FApprovalStuffSortParentID'];;
        FindParam('FApprovalStuffSort').value:=mdata['FApprovalStuffSort'];
        FindParam('FApprovalStuffSortRemak').value:=mdata['FApprovalStuffSortRemak'];
        FindParam('FDepartmentID').value:=UserFDepartmentID;
        FindParam('FisLeaf').value:=mdata['FisLeaf'];
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


function TFrm_ApprovalStuffSort.EditRd:bool;
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
   qry.SQL.Text:='Update T_ApprovalStuffSort set FApprovalStuffSortNumber=:FApprovalStuffSortNumber,FApprovalStuffSortParentID=:FApprovalStuffSortParentID,'
                +'FApprovalStuffSort=:FApprovalStuffSort,FApprovalStuffSortRemak=:FApprovalStuffSortRemak,FisLeaf=:FisLeaf,FDepartmentID=:FDepartmentID '
                +'where FApprovalStuffSortID=:FApprovalStuffSortID';
     mData.First;
    while not mData.eof do
    begin
      If (mData['FApprovalStuffSort']<>'') and (mData['FApprovalStuffSort']<>'')  then
      begin
        If qry.Active then qry.Close;
        with qry.Parameters do
        begin
          FindParam('FApprovalStuffSortNumber').value:=mdata['FApprovalStuffSortNumber'];;
          FindParam('FApprovalStuffSortParentID').value:=mdata['FApprovalStuffSortParentID'];;
          FindParam('FApprovalStuffSort').value:=mdata['FApprovalStuffSort'];
          FindParam('FApprovalStuffSortRemak').value:=mdata['FApprovalStuffSortRemak'];
          FindParam('FisLeaf').value:=mdata['FisLeaf'];
          FindParam('FDepartmentID').value:=UserFDepartmentID;
          FindParam('FApprovalStuffSortID').value:=mdata['FApprovalStuffSortID'];
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


procedure TFrm_ApprovalStuffSort.FormResize(Sender: TObject);
begin
  inherited;
  L_title.Caption:=UserFDepartmentName+'供货范围信息';
  Self.Caption:=UserFDepartmentName+'供货范围信息';
end;

procedure TFrm_ApprovalStuffSort.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=CaFree;
  Frm_ApprovalStuffSort:=nil;
end;

procedure TFrm_ApprovalStuffSort.TB_EXITClick(Sender: TObject);
begin
  inherited;
  Self.Close;
end;

procedure TFrm_ApprovalStuffSort.MyTreeViewChange(Sender: TObject; Node: TTreeNode);
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
    If not MyItemList(qry,Mdata_Brow,'V_ApprovalStuffSort','FFullNumber',ListItemFNumber,'FFullNumber') then
    begin
      mdata_Brow.Open;
    end;

    If not MyItemList(qry,Mdata,'V_ApprovalStuffSort','FFullNumber',ListItemFNumber,'FFullNumber') then
    begin
      mdata.Open;
    end;

    If P_Isleaf>=0 then
    begin
      TB_Edit.Visible:= mdlData.CheckFrmRights(TFrm_ApprovalStuffSort.ClassName,'修改');
      TB_Del.Visible:=mdlData.CheckFrmRights(TFrm_ApprovalStuffSort.ClassName,'删除');
    end
    else
    begin
      Act_Edit.Visible:=False;
      Act_Del.Visible:=False;
    end;
  end;
end;

procedure TFrm_ApprovalStuffSort.MyTreeViewExpanding(Sender: TObject;
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

  qry.SQL.Text:='Select *  from VT_ApprovalStuffSort where FParentNumber= '''
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

procedure TFrm_ApprovalStuffSort.FormCreate(Sender: TObject);
var AFirstColumnStyle: TcxStyle;
begin
  inherited;
  P_state:=2;
  
  TS_Brow.TabVisible:=True;
  TS_Edit.TabVisible:=False;
  TS_ApprovalStuffSort.ActivePage:=TS_Brow;

  //列颜色
  AFirstColumnStyle := TcxStyle.Create(Self);
  AFirstColumnStyle.Color := clAqua;
  AFirstColumnStyle.TextColor := clBlue;


  cxGV.Columns[0].Styles.Content := AFirstColumnStyle;
  cxGV.Columns[1].Styles.Content := AFirstColumnStyle;

  Act_App.Visible:= mdlData.CheckFrmRights(TFrm_ApprovalStuffSort.ClassName,'新增');
  Act_Prin.Visible:= mdlData.CheckFrmRights(TFrm_ApprovalStuffSort.ClassName,'打印');
  Act_Out.Visible:= mdlData.CheckFrmRights(TFrm_ApprovalStuffSort.ClassName,'打印');
end;

procedure TFrm_ApprovalStuffSort.FormShow(Sender: TObject);
begin
  TB_Ref.Click;
end;

procedure TFrm_ApprovalStuffSort.Act_AppExecute(Sender: TObject);
var
 qry:TADOquery;
begin
  P_state :=0;
  L_title.Caption:=UserFDepartmentName+'供货范围信息新增';
  Act_SetOpen.Execute;

  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Select * from V_ApprovalStuffSort where FApprovalStuffSortID=0';
    qry.Open;
  finally
     ;
  end;
  mdata.CopyFromDataSet(qry);
  mdata.Active:=True;
  mdata.Edit;
  mdata.Append;
  mdata.post;
  If MData['FApprovalStuffSort']=Null then
  begin
    MData.Edit;
    MData['FApprovalStuffSort']:='';
    MData.Post;
  end;
  If MData['FApprovalStuffSortParentNumber']=Null then
  begin
    MData.Edit;
    MData['FApprovalStuffSortParentNumber']:='';
    MData.Post;
  end;
  If MData['FApprovalStuffSortParentID']=Null then
  begin
    MData.Edit;
    MData['FApprovalStuffSortParentID']:=0;
    MData.Post;
  end;
  If MData['FIsLeaf']=Null then
  begin
    MData.Edit;
    MData['FIsLeaf']:=False;
    MData.Post;
  end;
end;

procedure TFrm_ApprovalStuffSort.Act_EditExecute(Sender: TObject);
begin
  inherited;
  P_state :=1;
  Act_EditRd.Execute;
  Act_SetOpen.Execute;
  L_title.Caption:=UserFDepartmentName+'供货范围信息修改';

end;

procedure TFrm_ApprovalStuffSort.Act_DelExecute(Sender: TObject);
var
  qry:TADOQuery;

begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  try
    qry.SQL.Text:='Select * from T_SupplierProductList where FApprovalStuffSortID=:FApprovalStuffSortID';
    qry.Parameters.FindParam('FApprovalStuffSortID').Value:=mdata_Brow['FApprovalStuffSortID'];
    qry.Open;
  finally
     ;
  end;
  if qry.RecordCount>0 then
  begin
    application.MessageBox(Pchar('供货范围【'+Trim(mdata_Brow['FQuotationStuffSortName'])+'】已启用不允许删除！'),'系统提示',MB_ICONINFORMATION);
    Exit;
  end;

  If application.MessageBox(Pchar('警告：是否删除供货范围为：【'+Trim(mdata_Brow['FApprovalStuffSort'])+'】的数据？'+chr(13)+chr(13)
                           +'删除数据操作将不可恢复，确定要删除本数据吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
  If application.MessageBox(Pchar('警告：是否删除供货范围为：【'+Trim(mdata_Brow['FApprovalStuffSort'])+'】的数据？'+chr(13)+chr(13)
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

procedure TFrm_ApprovalStuffSort.Act_RefExecute(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If not TreeVeiwListWhere(qry,MyTreeView,'VT_ApprovalStuffSort',' and FDepartmentID='+IntToStr(UserFDepartmentID) ) then
  begin
    Application.MessageBox(PChar('树型结构显示错误，请联系开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;
end;

procedure TFrm_ApprovalStuffSort.Act_SetOpenExecute(Sender: TObject);
begin
  inherited;
  Act_Ref.Visible:=False;
  Act_App.Visible:=False;
  Act_Edit.Visible:=False;
  Act_Del.Visible:=False;
  MyTreeView.Enabled:=False;

  Panel_OK.Visible:=True;
  cxGV.OptionsData.Editing:=True;
 // cxGVC.OptionsData.Editing:=True;
  TS_Brow.TabVisible:=False;
  TS_Edit.TabVisible:=True;
  TS_ApprovalStuffSort.ActivePage:=TS_Edit;

  FApprovalStuffSort_Card.Options.Editing:=True;
  FApprovalStuffSortNumber_Card.Options.Editing:=True;
  FApprovalStuffSortParentNumber_Card.Options.Editing:=True;

end;

procedure TFrm_ApprovalStuffSort.Act_SetCloseExecute(Sender: TObject);
begin
  inherited;
  Act_Ref.Visible:=True;
  Act_App.Visible:=True;
  Act_Edit.Visible:=False;
  Act_Del.Visible:=False;
  MyTreeView.Enabled:=True;
  Panel_OK.Visible:=False;
  cxGV.OptionsData.Editing:=False;
//  cxGVC.OptionsData.Editing:=False;

  TS_Brow.TabVisible:=True;
  TS_Edit.TabVisible:=False;
  TS_ApprovalStuffSort.ActivePage:=TS_Brow;

{  FQuotationStuffName_Card.Options.Editing:=False;
  FQuotationStuffModel_Card.Options.Editing:=False;
  FQuotationStuffUnit_Card.Options.Editing:=False;
  }
end;

procedure TFrm_ApprovalStuffSort.Act_OKExecute(Sender: TObject);
var qry,qry1: TADOQuery;
P_FApprovalStuffSortParentNumber:string;
P_FApprovalStuffSortParentID:Integer;

begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry1:=TADOQuery.Create(self);
  qry1.ConnectionString:=mdlData.ReadConnStr;
  qry.EnableBCD:=False;//小数位数>4

  mData.Edit;
  If MData['FApprovalStuffSortNumber']=Null then  MData['FApprovalStuffSortNumber']:='';
  If MData['FApprovalStuffSort']=Null then MData['FApprovalStuffSort']:='';
  If MData['FisLeaf']=Null then MData['FisLeaf']:=0;
  mData.Post;

  If  mdata['FisLeaf']=1 then
  begin
    If (mData['FApprovalStuffSortNumber']='') or (mData['FApprovalStuffSortNumber']=Null)
       or (mData['FApprovalStuffSortParentID']='') or (mData['ApprovalStuffSortParentID']=Null)
       or (mData['FApprovalStuffSort']='') or (mData['FApprovalStuffSort']=Null)
    then
    begin
      application.MessageBox('关键字不能为空！请重新输入','系统提示',MB_ICONERROR);
      Exit;
    end;
  end;
  If P_state =0 then
  begin
    try
      qry.SQL.Text:='Select * from V_ApprovalStuffSort where FDepartmentID=:FDepartmentID '
                   +' and FApprovalStuffSort=:FApprovalStuffSort ';
      qry.Parameters.FindParam('FDepartmentID').Value:=UserFDepartmentID;
      qry.Parameters.FindParam('FApprovalStuffSort').Value:=mdata['FApprovalStuffSort'];
      qry.Open;
      If qry.RecordCount>0 then
      begin
         application.MessageBox('供货范围重复！请重新输入','系统提示',MB_ICONERROR);
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
        P_FApprovalStuffSortParentNumber:=MData['FApprovalStuffSortParentNumber'];
        P_FApprovalStuffSortParentID:=MData['FApprovalStuffSortParentID'];
        TB_App.Click ;
        try
          qry1.SQL.Text:='select  (replicate(''0'',(3 - len(cast(max(right(FApprovalStuffSortNumber,3)) as int)+1))) + convert(varchar(3),cast(max(right(FApprovalStuffSortNumber,3)) as int)+1)) as n  '
                        +' from V_ApprovalStuffSort where FDepartmentID=:FDepartmentID and FApprovalStuffSortParentNumber=:FApprovalStuffSortParentNumber  ';
          qry1.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
          qry1.Parameters.FindParam('FApprovalStuffSortParentNumber').value:=P_FApprovalStuffSortParentNumber;
          qry1.Open;
        finally
          ;
        end;
        MData.Edit;
        MData['FApprovalStuffSortParentNumber']:=P_FApprovalStuffSortParentNumber;
        MData['FApprovalStuffSortParentID']:=P_FApprovalStuffSortParentID;
        MData['FIsLeaf']:=True;
        If qry1.FieldByName('n').Value<>null then
        begin
          MData['FApprovalStuffSortNumber']:=P_FApprovalStuffSortParentNumber+'.'+qry1.FieldByName('n').Value;
        end
        else
        begin
          MData['FApprovalStuffSortNumber']:=P_FApprovalStuffSortParentNumber+'.001';
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

procedure TFrm_ApprovalStuffSort.Act_CancelExecute(Sender: TObject);
begin
  inherited;
  P_state:=2;
  L_title.Caption:=UserFDepartmentName+'供货范围息';
  Act_SetClose.Execute;
end;

procedure TFrm_ApprovalStuffSort.FQuotationStuffName_CardPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  mData.Edit;
  try
    qry.SQL.Text:='select distinct FApprovalStuffSort from  V_ApprovalStuffSort with(nolock) '
                 +' where FDepartmentID=:FDepartmentID and FApprovalStuffSort like :FApprovalStuffSort order by FApprovalStuffSort ';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Parameters.FindParam('FApprovalStuffSort').value:='%'+mData['FApprovalStuffSort']+'%';
    qry.Open;
  finally
   ;
  end;

  selValue:=select('选择供货范围','FApprovalStuffSort','FApprovalStuffSort','FApprovalStuffSort','FApprovalStuffSort',qry);
  If (Length(selValue)>0) then
      MData['FApprovalStuffSort']:=qry.FieldByName('FApprovalStuffSort').Value;

end;

procedure TFrm_ApprovalStuffSort.cxGVCDblClick(Sender: TObject);
begin
  inherited;
  If P_state=2 then
  begin
    TS_Brow.TabVisible:=True;
    TS_Edit.TabVisible:=False;
    TS_ApprovalStuffSort.ActivePage:=TS_Brow;
  end;  
end;

procedure TFrm_ApprovalStuffSort.cxGV_BrowFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
var  qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If (P_state=2) and (Mdata_Brow['FApprovalStuffSortID']<>0) and (Mdata_Brow['FApprovalStuffSortID']<>Null) then
  begin
     Act_Edit.Visible:= mdlData.CheckFrmRights(TFrm_ApprovalStuffSort.ClassName,'修改');
     If not MyItemListID(qry,Mdata_List,'V_SupplierProductList',' FApprovalStuffSortID='+IntToStr(mData_Brow['FApprovalStuffSortID']),'FApprovalStuffSortNumber',) then
  end;
end;

procedure TFrm_ApprovalStuffSort.Act_EditRdExecute(Sender: TObject);
var  qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  TS_Brow.TabVisible:=False;
  TS_Edit.TabVisible:=True;
  TS_ApprovalStuffSort.ActivePage:=TS_Edit;
  try
    qry.SQL.Text:='select * from V_ApprovalStuffSort with(nolock) where FApprovalStuffSortID=:FApprovalStuffSortID ';
    qry.Parameters.FindParam('FApprovalStuffSortID').value:=MData_Brow['FApprovalStuffSortID'];
    qry.Open;
  finally
   ;
  end;
  MData.CopyFromDataSet(qry);
  MData.Active:=True;
  TB_Edit.Visible:= mdlData.CheckFrmRights(TFrm_ApprovalStuffSort.ClassName,'修改');
end;

procedure TFrm_ApprovalStuffSort.cxGrid_BrowContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV_Brow';
  Gm:='mdata_Brow';
  Gr:='cxGrid_Brow';
  Act_Menu_Set.Execute;
end;

procedure TFrm_ApprovalStuffSort.Act_MenuExecute(Sender: TObject);
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

procedure TFrm_ApprovalStuffSort.Act_Menu_SetExecute(Sender: TObject);
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

procedure TFrm_ApprovalStuffSort.N_EditClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_ApprovalStuffSort.N_FilterClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_ApprovalStuffSort.N_SortClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_ApprovalStuffSort.N_GroupClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_ApprovalStuffSort.N_SetClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_ApprovalStuffSort.N_OutClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_ApprovalStuffSort.cxGridContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV';
  Gm:='mdata';
  Gr:='cxGrid';
  Act_Menu_Set.Execute;
end;

procedure TFrm_ApprovalStuffSort.FQuotationStuffParentNumber_CardPropertiesButtonClick(
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
    qry.SQL.Text:='select * from  VT_ApprovalStuffSortNumber with(nolock) '
                 +' where FDepartmentID=:FDepartmentID  order by FNumber ';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Open;
  finally
    ;
  end;

  selValue:=select('选择上级编码','FNumber','FParentNumber','FNumber','FName',qry);
  If (Length(selValue)>0) then
  begin
     MData['FApprovalStuffSortParentID']:=qry.FieldByName('FApprovalStuffSortID').Value;
     MData['FApprovalStuffSortParentNumber']:=qry.FieldByName('FNumber').Value;
  end;

    try
      qry1.SQL.Text:='select  (replicate(''0'',(3 - len(cast(max(right(FApprovalStuffSortNumber,3)) as int)+1))) + convert(varchar(3),cast(max(right(FApprovalStuffSortNumber,3)) as int)+1)) as n  '
                    +' from V_ApprovalStuffSort where FDepartmentID=:FDepartmentID and FApprovalStuffSortParentNumber=:FApprovalStuffSortParentNumber  ';
      qry1.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
      qry1.Parameters.FindParam('FApprovalStuffSortParentNumber').value:=qry.FieldByName('FNumber').Value;
      qry1.Open;
    finally
     ;
    end;
    If qry1.FieldByName('n').Value<>null then
    begin
      MData['FApprovalStuffSortNumber']:=qry.FieldByName('FNumber').Value+'.'+qry1.FieldByName('n').Value;
    end
    else
    begin
      MData['FApprovalStuffSortNumber']:=qry.FieldByName('FNumber').Value+'.001';
    end;
end;

procedure TFrm_ApprovalStuffSort.cxGrid_ListContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV_List';
  Gm:='mdata_List';
  Gr:='cxGrid_List';
  Act_Menu_Set.Execute;
end;

end.
