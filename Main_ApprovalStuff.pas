unit Main_ApprovalStuff;

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
  TFrm_ApprovalStuff = class(TFrm_GridBass)
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
    TS_ApprovalStuff: TRzPageControl;
    TS_Brow: TRzTabSheet;
    TS_Edit: TRzTabSheet;
    Panel2: TPanel;
    cxGrid: TcxGrid;
    cxGV: TcxGridDBTableView;
    FApprovalStuffSort: TcxGridDBColumn;
    FApprovalStuffNumber: TcxGridDBColumn;
    FApprovalStuffParentNumber: TcxGridDBColumn;
    FTakemc: TcxGridDBColumn;
    FTakegg: TcxGridDBColumn;
    FTakedw: TcxGridDBColumn;
    FApprovalStuffRemak: TcxGridDBColumn;
    FNumber: TcxGridDBColumn;
    FName: TcxGridDBColumn;
    FModel: TcxGridDBColumn;
    UnitName: TcxGridDBColumn;
    FApprovalStuffSortNumber: TcxGridDBColumn;
    FApprovalStuffSortID: TcxGridDBColumn;
    FK3ItemID: TcxGridDBColumn;
    FDepartmentName: TcxGridDBColumn;
    FDepartmentID: TcxGridDBColumn;
    cxGVC: TcxGridDBCardView;
    FApprovalStuffSort_Card: TcxGridDBCardViewRow;
    FApprovalStuffNumber_Card: TcxGridDBCardViewRow;
    FApprovalStuffParentNumber_Card: TcxGridDBCardViewRow;
    FTakemc_Card: TcxGridDBCardViewRow;
    FTakegg_Card: TcxGridDBCardViewRow;
    FTakedw_Card: TcxGridDBCardViewRow;
    FNumber_Card: TcxGridDBCardViewRow;
    FName_Card: TcxGridDBCardViewRow;
    FModel_Card: TcxGridDBCardViewRow;
    UnitName_Card: TcxGridDBCardViewRow;
    cxGL: TcxGridLevel;
    cxGLC: TcxGridLevel;
    Panel_OK: TPanel;
    OKBtn: TcxButton;
    CancelBtn: TcxButton;
    TS_K3: TRzTabSheet;
    Mdata_K3: TdxMemData;
    DS_Mdata_K3: TDataSource;
    cxGrid_K3: TcxGrid;
    cxGV_K3: TcxGridDBTableView;
    FNumber2: TcxGridDBColumn;
    FName2: TcxGridDBColumn;
    FModel2: TcxGridDBColumn;
    UnitName2: TcxGridDBColumn;
    FSize: TcxGridDBColumn;
    FK3Suttle_1: TcxGridDBColumn;
    FK3Ration_2: TcxGridDBColumn;
    K3ISOut: TcxGridDBColumn;
    FItemId: TcxGridDBColumn;
    FK3ID: TcxGridDBColumn;
    FL_2: TcxGridDBColumn;
    FXS_2: TcxGridDBColumn;
    FCY_2: TcxGridDBColumn;
    cxGL_K3: TcxGridLevel;
    Panel5: TPanel;
    Bevel4: TBevel;
    Label11: TLabel;
    E_Locate2: TcxButtonEdit;
    ToolButton2: TToolButton;
    Act_Menu: TAction;
    Act_Menu_Set: TAction;
    PM: TPopupMenu;
    N_Edit: TMenuItem;
    N_Filter: TMenuItem;
    N_Sort: TMenuItem;
    N_Group: TMenuItem;
    N_Set: TMenuItem;
    N_Out: TMenuItem;
    FK3ItemID_Card: TcxGridDBCardViewRow;
    Act_K3: TAction;
    Act_Quotation: TAction;
    DS_MData_Quotation: TDataSource;
    MData_Quotation: TdxMemData;
    RzSizePanel4: TRzSizePanel;
    FisLeaf_Card: TcxGridDBCardViewRow;
    FApprovalStuffParentID_Card: TcxGridDBCardViewRow;
    FTakeGBT: TcxGridDBColumn;
    FTakeGBT_Card: TcxGridDBCardViewRow;
    FK3ID_Card: TcxGridDBCardViewRow;
    ToolButton3: TToolButton;
    cxGrid_Brow: TcxGrid;
    cxGV_Brow: TcxGridDBTableView;
    FApprovalStuffParentNumber_Brow: TcxGridDBColumn;
    FApprovalStuffNumber_Brow: TcxGridDBColumn;
    FApprovalStuffSort_Brow: TcxGridDBColumn;
    FTakeGBT_Brow: TcxGridDBColumn;
    FTakemc_Brow: TcxGridDBColumn;
    FTakegg_Brow: TcxGridDBColumn;
    FTakedw_Brow: TcxGridDBColumn;
    FApprovalStuffRemak_Brow: TcxGridDBColumn;
    FIsleaf_Brow: TcxGridDBColumn;
    FNumber_Brow: TcxGridDBColumn;
    FName_Brow: TcxGridDBColumn;
    FModel_Brow: TcxGridDBColumn;
    UnitName_Brow: TcxGridDBColumn;
    FProductListNum_Brow: TcxGridDBColumn;
    FDepartmentName_Brow: TcxGridDBColumn;
    FDepartmentID_Brow: TcxGridDBColumn;
    FApprovalStuffSortID_Brow: TcxGridDBColumn;
    FK3ItemID_Brow: TcxGridDBColumn;
    FApprovalStuffID_Brow: TcxGridDBColumn;
    cxGL_Brow: TcxGridLevel;
    cxGrid_Quotation: TcxGrid;
    cxGV_Quotation: TcxGridDBTableView;
    FQuotationType_Quotation: TcxGridDBColumn;
    FSupplierName_Quotation: TcxGridDBColumn;
    FPrice_Quotation: TcxGridDBColumn;
    FTakeSumQry_Quotation: TcxGridDBColumn;
    FTotalAmount_Quotation: TcxGridDBColumn;
    FQuotationListRemark_Quotation: TcxGridDBColumn;
    FApprovalItemNum_Quotation: TcxGridDBColumn;
    FISApproval_Quotation: TcxGridDBColumn;
    FQuotationNum_Quotation: TcxGridDBColumn;
    FItemNumber_Quotation: TcxGridDBColumn;
    FClientShortName_Quotation: TcxGridDBColumn;
    FQuotationStuffID_Quotation: TcxGridDBColumn;
    FQuotationItemID_Quotation: TcxGridDBColumn;
    FQuotationListID_Quotation: TcxGridDBColumn;
    FApprovalListID_Quotation: TcxGridDBColumn;
    cxGL_Quotation: TcxGridLevel;
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
    procedure FProductList_CardPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FQuotationStuffName_CardPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FQuotationStuffModel_CardPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxGVCDblClick(Sender: TObject);
    procedure cxGV_BrowFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure Act_EditRdExecute(Sender: TObject);
    procedure FName_CardPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure E_Locate2PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
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
    procedure cxGrid_K3ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure cxGV_K3DblClick(Sender: TObject);
    procedure FNumber_CardPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure Act_K3Execute(Sender: TObject);
    procedure TS_ApprovalStuffChange(Sender: TObject);
    procedure cxGridContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure Act_QuotationExecute(Sender: TObject);
    procedure cxGrid_QuotationContextPopup(Sender: TObject;
      MousePos: TPoint; var Handled: Boolean);
    procedure FQuotationStuffParentNumber_CardPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure FisLeaf_CardPropertiesEditValueChanged(Sender: TObject);
    procedure Act_ApprovalStuffNumberExecute(Sender: TObject);
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
  Frm_ApprovalStuff: TFrm_ApprovalStuff;


implementation

uses FRMDATA, COMMON, FrmSelect, ProgBar, PROGRASS;

{$R *.dfm}

function TFrm_ApprovalStuff.DelRd: bool;
var
 qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Delete from T_ApprovalStuff where FApprovalStuffID=:FApprovalStuffID';
    with qry.Parameters do
    begin
      FindParam('FApprovalStuffID').value:=mdata_Brow['FApprovalStuffID'];
    end;
    result:=qry.ExecSQL>=1;
  finally
    qry.Free;
  end;
end;

function TFrm_ApprovalStuff.AddRd: bool;
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
    qry.SQL.Text:='Insert into T_ApprovalStuff(FApprovalStuffNumber,FApprovalStuffParentID,FTakeGBT,FTakemc,FTakegg,Ftakedw,'
                 +'FApprovalStuffRemak,FApprovalStuffSortID,FK3ID,FDepartmentID,FisLeaf )'
                 +'values(:FApprovalStuffNumber,:FApprovalStuffParentID,:FTakeGBT,:FTakemc,:FTakegg,:FTakedw,'
                 +':FApprovalStuffRemak,:FApprovalStuffSortID,:FK3ID,:FDepartmentID,:FisLeaf)';
    mData.First;
    while not mData.eof do
    begin
      If qry.Active then qry.Close;
      with qry.Parameters do
      begin
        FindParam('FApprovalStuffNumber').value:=mdata['FApprovalStuffNumber'];
        FindParam('FApprovalStuffParentID').value:=mdata['FApprovalStuffParentID'];
        FindParam('FTakeGBT').value:=mdata['FTakeGBT'];
        FindParam('FTakemc').value:=mdata['FTakemc'];
        FindParam('FTakegg').value:=mdata['FTakegg'];
        FindParam('Ftakedw').value:=mdata['Ftakedw'];
        FindParam('FApprovalStuffRemak').value:=mdata['FApprovalStuffRemak'];
        FindParam('FApprovalStuffSortID').value:=mdata['FApprovalStuffSortID'];
        FindParam('FK3ID').value:=UserFK3ID;
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


function TFrm_ApprovalStuff.EditRd:bool;
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
   qry.SQL.Text:='Update T_ApprovalStuff set FApprovalStuffNumber=:FApprovalStuffNumber,FApprovalStuffParentID=:FApprovalStuffParentID,FTakeGBT=:FTakeGBT,FTakemc=:FTakemc,FTakegg=:FTakegg,'
                 +'Ftakedw=:Ftakedw,FApprovalStuffRemak=:FApprovalStuffRemak,FApprovalStuffSortID=:FApprovalStuffSortID,FisLeaf=:FisLeaf, '
                 +'FK3ID=:FK3ID,FDepartmentID=:FDepartmentID '
                 +'where FApprovalStuffID=:FApprovalStuffID';
     mData.First;
    while not mData.eof do
    begin
      If (mData['FTakemc']<>'') and (mData['FTakemc']<>'')  then
      begin
        If qry.Active then qry.Close;
        with qry.Parameters do
        begin
          FindParam('FApprovalStuffNumber').value:=mdata['FApprovalStuffNumber'];
          FindParam('FApprovalStuffParentID').value:=mdata['FApprovalStuffParentID'];
          FindParam('FTakeGBT').value:=mdata['FTakeGBT'];
          FindParam('FTakemc').value:=mdata['FTakemc'];
          FindParam('FTakegg').value:=mdata['FTakegg'];
          FindParam('Ftakedw').value:=mdata['Ftakedw'];
          FindParam('FApprovalStuffRemak').value:=mdata['FApprovalStuffRemak'];
          FindParam('FApprovalStuffSortID').value:=mdata['FApprovalStuffSortID'];
          FindParam('FK3ID').value:=UserFK3ID;
          FindParam('FDepartmentID').value:=UserFDepartmentID;
          FindParam('FisLeaf').value:=mdata['FisLeaf'];
          FindParam('FApprovalStuffID').value:=mdata['FApprovalStuffID'];
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


procedure TFrm_ApprovalStuff.FormResize(Sender: TObject);
begin
  inherited;
  L_title.Caption:=UserFDepartmentName+'招标物料信息';
  Self.Caption:=UserFDepartmentName+'招标物料信息';
end;

procedure TFrm_ApprovalStuff.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=CaFree;
  Frm_ApprovalStuff:=nil;
end;

procedure TFrm_ApprovalStuff.TB_EXITClick(Sender: TObject);
begin
  inherited;
  Self.Close;
end;

procedure TFrm_ApprovalStuff.MyTreeViewChange(Sender: TObject; Node: TTreeNode);
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
    If not MyItemList(qry,Mdata_Brow,'V_ApprovalStuff','FFullNumber',ListItemFNumber,'FFullNumber') then
    begin
      mdata_Brow.Open;
      cxGvColumn(cxGv_Brow,Mdata_Brow);
    end;

    If not MyItemList(qry,Mdata,'V_ApprovalStuff','FFullNumber',ListItemFNumber,'FFullNumber') then
    begin
      mdata.Open;
      cxGvColumn(cxGv,Mdata);
    end;

    If P_Isleaf>=0 then
    begin
      If MData_Brow.RecordCount=1 then
      begin
        TB_Edit.Visible:= mdlData.CheckFrmRights(TFrm_ApprovalStuff.ClassName,'修改');
        TB_Del.Visible:=mdlData.CheckFrmRights(TFrm_ApprovalStuff.ClassName,'删除');
      end;  
      Act_Quotation.Execute;
    end
    else
    begin
      Act_Edit.Visible:=False;
      Act_Del.Visible:=False;
    end;
  end;
end;

procedure TFrm_ApprovalStuff.MyTreeViewExpanding(Sender: TObject;
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

  qry.SQL.Text:='Select *  from VT_ApprovalStuff where FParentNumber= '''
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

procedure TFrm_ApprovalStuff.FormCreate(Sender: TObject);
var AFirstColumnStyle: TcxStyle;
begin
  inherited;
  P_state:=2;
  
  TS_Brow.TabVisible:=True;
  TS_Edit.TabVisible:=False;
  TS_ApprovalStuff.ActivePage:=TS_Brow;

  //列颜色
  AFirstColumnStyle := TcxStyle.Create(Self);
  AFirstColumnStyle.Color := clAqua;
  AFirstColumnStyle.TextColor := clBlue;


  cxGV.Columns[0].Styles.Content := AFirstColumnStyle;
  cxGV.Columns[1].Styles.Content := AFirstColumnStyle;

  Act_App.Visible:= mdlData.CheckFrmRights(TFrm_ApprovalStuff.ClassName,'新增');
  Act_Prin.Visible:= mdlData.CheckFrmRights(TFrm_ApprovalStuff.ClassName,'打印');
  Act_Out.Visible:= mdlData.CheckFrmRights(TFrm_ApprovalStuff.ClassName,'打印');
end;

procedure TFrm_ApprovalStuff.FormShow(Sender: TObject);
begin
  TB_Ref.Click;
end;

procedure TFrm_ApprovalStuff.Act_AppExecute(Sender: TObject);
var
 qry:TADOquery;
begin
  P_state :=0;
  L_title.Caption:=UserFDepartmentName+'招标物料信息新增';
  Act_SetOpen.Execute;

  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Select * from V_ApprovalStuff where FApprovalStuffID=0';
    qry.Open;
  finally
     ;
  end;
  mdata.CopyFromDataSet(qry);
  mdata.Active:=True;
  mdata.Edit;
  mdata.Append;
  mdata.post;

  If MData['FTakemc']=Null then
  begin
    MData.Edit;
    MData['FTakemc']:='';
    MData.Post;
  end;
  If MData['FTakegg']=Null then
  begin
    MData.Edit;
    MData['FTakegg']:='';
    MData.Post;
  end;
  If MData['FTakeGBT']=Null then
  begin
    MData.Edit;
    MData['FTakeGBT']:='';
    MData.Post;
  end;
  If MData['FApprovalStuffRemak']=Null then
  begin
    MData.Edit;
    MData['FApprovalStuffRemak']:='';
    MData.Post;
  end;
  If MData['FApprovalStuffParentNumber']=Null then
  begin
    MData.Edit;
    MData['FApprovalStuffParentNumber']:='';
    MData.Post;
  end;
  If MData['FApprovalStuffParentID']=Null then
  begin
    MData.Edit;
    MData['FApprovalStuffParentID']:=0;
    MData.Post;
  end;
  If MData['FK3ItemID']=Null then
  begin
    MData.Edit;
    MData['FK3ItemID']:=0;
    MData.Post;
  end;


  If MData['FIsLeaf']=Null then
  begin
    MData.Edit;
    MData['FIsLeaf']:=True;
    MData.Post;
  end;
end;

procedure TFrm_ApprovalStuff.Act_EditExecute(Sender: TObject);
begin
  inherited;
  P_state :=1;
  Act_EditRd.Execute;
  Act_SetOpen.Execute;
  L_title.Caption:=UserFDepartmentName+'招标物料信息修改';

end;

procedure TFrm_ApprovalStuff.Act_DelExecute(Sender: TObject);
var
  qry:TADOQuery;

begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  try
    qry.SQL.Text:='Select * from V_ApprovalList where FApprovalStuffID=:FApprovalStuffID';
    qry.Parameters.FindParam('FApprovalStuffID').Value:=mdata_Brow['FApprovalStuffID'];
    qry.Open;
  finally
     ;
  end;
  if qry.RecordCount>0 then
  begin
    application.MessageBox(Pchar('招标物料名称【'+Trim(mdata_Brow['FTakemc'])+'】【'+Trim(mdata_Brow['Ftakegg'])+'】已启用不允许删除！'),'系统提示',MB_ICONINFORMATION);
    Exit;
  end;

  If application.MessageBox(Pchar('警告：是否删除招标物料名称为：【'+Trim(mdata_Brow['FTakemc'])+'】的数据？'+chr(13)+chr(13)
                           +'删除数据操作将不可恢复，确定要删除本数据吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
  If application.MessageBox(Pchar('警告：是否删除招标物料名称为：【'+Trim(mdata_Brow['FTakemc'])+'】的数据？'+chr(13)+chr(13)
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

procedure TFrm_ApprovalStuff.Act_RefExecute(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If not TreeVeiwListWhere(qry,MyTreeView,'VT_ApprovalStuff',' and FDepartmentID='+IntToStr(UserFDepartmentID) ) then
  begin
    Application.MessageBox(PChar('树型结构显示错误，请联系开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;
end;

procedure TFrm_ApprovalStuff.Act_SetOpenExecute(Sender: TObject);
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
  TS_ApprovalStuff.ActivePage:=TS_Edit;

  FTakeGBT_Card.Options.Editing:=True;
  FTakemc_Card.Options.Editing:=True;
  FTakegg_Card.Options.Editing:=True;
  FTakedw_Card.Options.Editing:=True;
  FApprovalStuffNumber_Card.Options.Editing:=True;
  FApprovalStuffParentNumber_Card.Options.Editing:=True;

end;

procedure TFrm_ApprovalStuff.Act_SetCloseExecute(Sender: TObject);
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
  TS_ApprovalStuff.ActivePage:=TS_Brow;

{  FQuotationStuffName_Card.Options.Editing:=False;
  FQuotationStuffModel_Card.Options.Editing:=False;
  FQuotationStuffUnit_Card.Options.Editing:=False;
  }
end;

procedure TFrm_ApprovalStuff.Act_OKExecute(Sender: TObject);
var qry,qry1: TADOQuery;
P_FApprovalStuffSort,P_FApprovalStuffParentNumber:string;
P_FApprovalStuffSortID,P_FApprovalStuffParentID:Integer;

begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry1:=TADOQuery.Create(self);
  qry1.ConnectionString:=mdlData.ReadConnStr;
  qry.EnableBCD:=False;//小数位数>4

  mData.Edit;
  If MData['FApprovalStuffSortID']=Null then  MData['FApprovalStuffSortID']:=0;
  If MData['FApprovalStuffSort']=Null then  MData['FApprovalStuffSort']:='';
  If MData['FTakeGBT']=Null then  MData['FTakeGBT']:='';
  If MData['FTakemc']=Null then  MData['FTakemc']:='';
  If MData['FTakegg']=Null then MData['FTakegg']:='';
  If MData['FTakedw']=Null then MData['FTakedw']:='';
  If MData['FisLeaf']=Null then MData['FisLeaf']:=0;
  mData.Post;

  If  mdata['FisLeaf']=1 then
  begin
    If (mData['FApprovalStuffSort']='') or (mData['FApprovalStuffSort']=Null)
       or (mData['FApprovalStuffNumber']='') or (mData['FApprovalStuffNumber']=Null)
       or (mData['FApprovalStuffParentID']='') or (mData['FApprovalStuffParentID']=Null)
       or (mData['FTakemc']='') or (mData['FTakemc']=Null)
       or (mData['FTakedw']='') or (mData['FTakedw']=Null)
       or (mData['FApprovalStuffSortID']=0) or (mData['FApprovalStuffSortID']=Null)
       then
    begin
      application.MessageBox('关键字不能为空！请重新输入','系统提示',MB_ICONERROR);
      Exit;
    end;
  end;
  If P_state =0 then
  begin
    try
      qry.SQL.Text:='Select * from V_ApprovalStuff where FDepartmentID=:FDepartmentID '
                   +' and FTakeGBT=:FTakeGBT and FTakemc=:FTakemc and FTakegg=:FTakegg '
                   +' and FTakedw=:FTakedw';
      qry.Parameters.FindParam('FDepartmentID').Value:=UserFDepartmentID;
      qry.Parameters.FindParam('FTakeGBT').Value:=mdata['FTakeGBT'];
      qry.Parameters.FindParam('FTakemc').Value:=mdata['FTakemc'];
      qry.Parameters.FindParam('FTakegg').Value:=mdata['FTakegg'];
      qry.Parameters.FindParam('FTakedw').Value:=mdata['FTakedw'];
      qry.Open;
      If qry.RecordCount>0 then
      begin
         application.MessageBox('物料重复！请重新输入','系统提示',MB_ICONERROR);
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
        P_FApprovalStuffParentNumber:=MData['FApprovalStuffParentNumber'];
        P_FApprovalStuffParentID:=MData['FApprovalStuffParentID'];
        P_FApprovalStuffSort:=MData['FApprovalStuffSort'];
        P_FApprovalStuffSortID:=MData['FApprovalStuffSortID'];

        TB_App.Click ;
        try
          qry1.SQL.Text:='select  (replicate(''0'',(3 - len(cast(max(right(FApprovalStuffNumber,3)) as int)+1))) + convert(varchar(3),cast(max(right(FApprovalStuffNumber,3)) as int)+1)) as n  '
                        +' from V_ApprovalStuff where FDepartmentID=:FDepartmentID and FApprovalStuffParentNumber=:FApprovalStuffParentNumber  ';
          qry1.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
          qry1.Parameters.FindParam('FApprovalStuffParentNumber').value:=P_FApprovalStuffParentNumber;
          qry1.Open;
        finally
          ;
        end;
        MData.Edit;
        MData['FApprovalStuffParentNumber']:=P_FApprovalStuffParentNumber;
        MData['FApprovalStuffParentID']:=P_FApprovalStuffParentID;
        MData['FApprovalStuffSort']:=P_FApprovalStuffSort;
        MData['FIsLeaf']:=True;
        If qry1.FieldByName('n').Value<>null then
        begin
          MData['FApprovalStuffNumber']:=P_FApprovalStuffParentNumber+'.'+qry1.FieldByName('n').Value;
        end
        else
        begin
          MData['FApprovalStuffNumber']:=P_FApprovalStuffParentNumber+'.001';
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

procedure TFrm_ApprovalStuff.Act_CancelExecute(Sender: TObject);
begin
  inherited;
  P_state:=2;
  L_title.Caption:=UserFDepartmentName+'供应商信息';
  Act_SetClose.Execute;
end;

procedure TFrm_ApprovalStuff.FProductList_CardPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue: string;
    qry,qry1: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry1:=TADOQuery.Create(self);
  qry1.ConnectionString:=mdlData.ReadConnStr;

  try
    qry.SQL.Text:='select * from V_ApprovalStuffSort with(nolock) where FDepartmentID=:FDepartmentID '
                 //+' and FApprovalStuffSort like :FApprovalStuffSort '
                 +' order by FApprovalStuffSortNumber ';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
   // qry.Parameters.FindParam('FApprovalStuffSort').value:='%'+MData['FApprovalStuffSort']+'%';
    qry.Open;
  finally
   ;
  end;
  selValue:=select('选择供货类别','FApprovalStuffSortNumber','FApprovalStuffSortParentNumber','FApprovalStuffSortNumber','FApprovalStuffSortNumber;FApprovalStuffSort',qry);
  If (Length(selValue)>0) then
  begin
    MData.Edit;
    MData['FApprovalStuffSortID']:=qry.FieldByName('FApprovalStuffSortID').Value;
    MData['FApprovalStuffSort']:=qry.FieldByName('FApprovalStuffSort').Value;
  //  MData['FApprovalStuffSortNumber']:=qry.FieldByName('FApprovalStuffSortNumber').Value;
  end;


end;

procedure TFrm_ApprovalStuff.FQuotationStuffName_CardPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  mData.Edit;
  try
    qry.SQL.Text:='select distinct FTakemc from  T_ApprovalStuff with(nolock) '
                 +' where FDepartmentID=:FDepartmentID and FTakemc like :FTakemc order by FTakemc ';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Parameters.FindParam('FTakemc').value:='%'+mData['FTakemc']+'%';
    qry.Open;
  finally
   ;
  end;

  selValue:=select('选择供货品名','FTakemc','FTakemc','FTakemc','FTakemc',qry);
  If (Length(selValue)>0) then
      MData['FTakemc']:=qry.FieldByName('FTakemc').Value;

end;

procedure TFrm_ApprovalStuff.FQuotationStuffModel_CardPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  mData.Edit;
  try
    qry.SQL.Text:='select distinct FTakegg from  T_ApprovalStuff with(nolock) '
                 +' where FDepartmentID=:FDepartmentID and FTakemc=:FTakemc and '
                 +'FTakegg like :FTakegg order by FTakegg ';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Parameters.FindParam('FTakemc').value:=mData['FTakemc'];
    qry.Parameters.FindParam('FTakegg').value:='%'+mData['FTakegg']+'%';
    qry.Open;
  finally
   ;
  end;

  selValue:=select('选择供货规格','FTakegg','FTakegg','FTakegg','FTakegg',qry);
  If (Length(selValue)>0) then
      mData['FTakegg']:=qry.FieldByName('FTakegg').Value;
end;

procedure TFrm_ApprovalStuff.cxGVCDblClick(Sender: TObject);
begin
  inherited;
  If P_state=2 then
  begin
    TS_Brow.TabVisible:=True;
    TS_Edit.TabVisible:=False;
    TS_ApprovalStuff.ActivePage:=TS_Brow;
  end;  
end;

procedure TFrm_ApprovalStuff.cxGV_BrowFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;
  If Mdata_Brow['FApprovalStuffID']<>0 then
  begin
     Act_Edit.Visible:= mdlData.CheckFrmRights(TFrm_ApprovalStuff.ClassName,'修改');
     Act_Quotation.Execute;
  end;
end;

procedure TFrm_ApprovalStuff.Act_EditRdExecute(Sender: TObject);
var  qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  TS_Brow.TabVisible:=False;
  TS_Edit.TabVisible:=True;
  TS_ApprovalStuff.ActivePage:=TS_Edit;
  try
    qry.SQL.Text:='select * from V_ApprovalStuff with(nolock) where FApprovalStuffID=:FApprovalStuffID ';
    qry.Parameters.FindParam('FApprovalStuffID').value:=MData_Brow['FApprovalStuffID'];
    qry.Open;
  finally
   ;
  end;
  MData.CopyFromDataSet(qry);
  MData.Active:=True;
  TB_Edit.Visible:= mdlData.CheckFrmRights(TFrm_ApprovalStuff.ClassName,'修改');

end;

procedure TFrm_ApprovalStuff.FName_CardPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  mData.Edit;
  try
    qry.SQL.Text:='select * from  T_K3Item with(nolock) '
                 +' where FK3ID=:FK3ID and FName like :FName order by FNumber ';
    qry.Parameters.FindParam('FK3ID').value:=UserFK3ID;
    qry.Parameters.FindParam('FName').value:='%'+ mData['FName']+'%';
   // qry.Parameters.FindParam('FName').value:='%'+FName_Card.EditValue+'%';
    qry.Open;
  finally
    ;
  end;

  selValue:=select('选择K3物料名称','FName','FName','FName','FNumber;FName;FModel;UnitName',qry);
  If (Length(selValue)>0) then
  begin
     MData['FNumber']:=qry.FieldByName('FNumber').Value;
     MData['FName']:=qry.FieldByName('FName').Value;
     MData['FModel']:=qry.FieldByName('FModel').Value;
     MData['UnitName']:=qry.FieldByName('UnitName').Value;
  end;

end;

procedure TFrm_ApprovalStuff.E_Locate2PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.CommandTimeout:=800;

 // If PC_1.ActivePage=TS_K3 then
  begin
   try
      qry.SQL.Text:='Select * from T_K3Item  with(nolock) where FNumber+FName+FModel like :Locate and FK3ID='+IntToStr(UserFK3ID);
      qry.Parameters.FindParam('Locate').value:='%'+Trim(E_Locate2.Text)+'%';
      qry.Open;
    finally
       ;
    end;
    mdata_K3.CopyFromDataSet(qry);
    cxGvColumn(cxGv_K3,Mdata_K3);
    mdata_K3.Open;
    mdata_K3.First;
  end;


end;

procedure TFrm_ApprovalStuff.cxGrid_BrowContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV_Brow';
  Gm:='mdata_Brow';
  Gr:='cxGrid_Brow';
  Act_Menu_Set.Execute;

end;

procedure TFrm_ApprovalStuff.Act_MenuExecute(Sender: TObject);
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

procedure TFrm_ApprovalStuff.Act_Menu_SetExecute(Sender: TObject);
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

procedure TFrm_ApprovalStuff.N_EditClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_ApprovalStuff.N_FilterClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_ApprovalStuff.N_SortClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_ApprovalStuff.N_GroupClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_ApprovalStuff.N_SetClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_ApprovalStuff.N_OutClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_ApprovalStuff.cxGrid_K3ContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV_K3';
  Gm:='mdata_K3';
  Gr:='cxGrid_K3';
  Act_Menu_Set.Execute;

end;

procedure TFrm_ApprovalStuff.cxGV_K3DblClick(Sender: TObject);
begin
  inherited;
  If (P_state=0) or (P_state=1) then
  begin
    MData.Edit;
    MData['FTakemc']:=Mdata_K3['FName'];
    MData['FTakegg']:=Mdata_K3['FModel'];
    MData['FTakedw']:=Mdata_K3['UnitName'];
    MData['FNumber']:=Mdata_K3['FName'];
    MData['FName']:=Mdata_K3['FName'];
    MData['FModel']:=Mdata_K3['FModel'];
    MData['UnitName']:=Mdata_K3['UnitName'];
    MData['Fk3ItemID']:=Mdata_K3['FItemId'];
    MData.Post;
  end;
  TS_ApprovalStuff.ActivePage:=TS_Edit;
end;

procedure TFrm_ApprovalStuff.FNumber_CardPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  If (P_state=1) or (P_state=0) then
  begin
    TS_ApprovalStuff.ActivePage:=TS_K3;
    If Mdata_K3.Active=False then
       Act_K3.Execute;
  end;

end;

procedure TFrm_ApprovalStuff.Act_K3Execute(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.CommandTimeout:=500;
 // If PC_1.ActivePage=TS_K3 then
  begin
   try
      qry.SQL.Text:='Select * from T_K3Item with(nolock) where FK3ID='+IntToStr(UserFK3ID);
      qry.Open;
    finally
       ;
    end;
    mdata_K3.CopyFromDataSet(qry);
    cxGvColumn(cxGv_K3,Mdata_K3);

    mdata_K3.Open;
    mdata_K3.First;
  end;
  qry.Free;


end;

procedure TFrm_ApprovalStuff.TS_ApprovalStuffChange(Sender: TObject);
begin
  inherited;
 If (P_state=2) and (TS_ApprovalStuff.ActivePage=TS_K3) and (Mdata_K3.Active=False) then
      Act_K3.Execute;

end;

procedure TFrm_ApprovalStuff.cxGridContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV';
  Gm:='mdata';
  Gr:='cxGrid';
  Act_Menu_Set.Execute;

end;

procedure TFrm_ApprovalStuff.Act_QuotationExecute(Sender: TObject);
var  qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  try
    qry.SQL.Text:='select * from V_QuotationList with(nolock) where FApprovalStuffID=:FApprovalStuffID ';
    qry.Parameters.FindParam('FApprovalStuffID').value:=MData_Brow['FApprovalStuffID'];
    qry.Open;
  finally
   ;
  end;
  MData_Quotation.CopyFromDataSet(qry);
  MData_Quotation.Active:=True;
end;

procedure TFrm_ApprovalStuff.cxGrid_QuotationContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV_Quotation';
  Gm:='mdata_Quotation';
  Gr:='cxGrid_Quotation';
  Act_Menu_Set.Execute;

end;

procedure TFrm_ApprovalStuff.FQuotationStuffParentNumber_CardPropertiesButtonClick(
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
    qry.SQL.Text:='select * from  VT_ApprovalStuffNumber with(nolock) '
                 +' where FDepartmentID=:FDepartmentID  order by FNumber ';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Open;
  finally
    ;
  end;

  selValue:=select('选择上级编码','FNumber','FParentNumber','FNumber','FName',qry);
  If (Length(selValue)>0) then
  begin
     MData['FApprovalStuffParentID']:=qry.FieldByName('FApprovalStuffID').Value;
     MData['FApprovalStuffParentNumber']:=qry.FieldByName('FNumber').Value;
     MData['FApprovalStuffSort']:=qry.FieldByName('FApprovalStuffSort').Value;
     MData['FApprovalStuffSortID']:=qry.FieldByName('FApprovalStuffSortID').Value;
  end;

    try
      qry1.SQL.Text:='select  (replicate(''0'',(3 - len(cast(max(right(FApprovalStuffNumber,3)) as int)+1))) + convert(varchar(3),cast(max(right(FApprovalStuffNumber,3)) as int)+1)) as n  '
                    +' from V_ApprovalStuff where FDepartmentID=:FDepartmentID and FApprovalStuffParentNumber=:FApprovalStuffParentNumber  ';
      qry1.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
      qry1.Parameters.FindParam('FApprovalStuffParentNumber').value:=qry.FieldByName('FNumber').Value;
      qry1.Open;
    finally
     ;
    end;
    If qry1.FieldByName('n').Value<>null then
    begin
      MData['FApprovalStuffNumber']:=qry.FieldByName('FNumber').Value+'.'+qry1.FieldByName('n').Value;
    end
    else
    begin
      MData['FApprovalStuffNumber']:=qry.FieldByName('FNumber').Value+'.001';
    end;


end;

procedure TFrm_ApprovalStuff.FisLeaf_CardPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
{  If mdata['FIsLeaf']=False then
  begin
    mdata.Edit;
    MData['FQuotationStuffModel']:='';
    MData['FQuotationStuffUnit']:='';
    MData['FNumber']:='';
    MData['FName']:='';
    MData['FModel']:='';
    MData['UnitName']:='';
    MData['Fk3ItemID']:=0;
  end;   }
end;

procedure TFrm_ApprovalStuff.Act_ApprovalStuffNumberExecute(Sender: TObject);
var
  proc:TADOStoredProc;
begin
  proc:=TADOStoredProc.Create(self);
  proc.ConnectionString:=mdlData.ReadConnStr;
  proc.CommandTimeout:=500;
  try
    proc.ProcedureName:='P_ApprovalStuffNumber';
    proc.ExecProc;
  finally
     ;
  end;
  proc.Free;
end;

end.
