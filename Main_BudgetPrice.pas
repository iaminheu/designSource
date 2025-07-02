unit Main_BudgetPrice;

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
  cxSpinEdit, cxDBEdit, Menus, ActnList;

type
  TFrm_BudgetPrice = class(TFrm_GridBass)
    MData: TdxMemData;
    DS_Mdata: TDataSource;
    ImageList: TImageList;
    frReport: TfrReport;
    frDBDataSet: TfrDBDataSet;
    PC_2: TRzPageControl;
    TS_WorkTaskPrice: TRzTabSheet;
    ADOQuery: TADOQuery;
    DataSource: TDataSource;
    ADOStoredProc1: TADOStoredProc;
    MDataFParentNumber: TStringField;
    MDataFNumber: TStringField;
    MDataFBalanceName: TStringField;
    MDataFBalanceModel: TStringField;
    MDataFUnitName: TStringField;
    MDataFWorkBasePrice: TCurrencyField;
    MDataFWorkResiaePrice: TCurrencyField;
    MDataFWorkPrice: TCurrencyField;
    MDataFRemark: TStringField;
    MDataFWorkID: TIntegerField;
    MDataFBalanceID: TIntegerField;
    MDataFMaterialBasePrice: TFloatField;
    MDataFMaterialPrice: TFloatField;
    MDataFMaterialResizePrice: TFloatField;
    MDataFBalanceBasePrice: TFloatField;
    DS_Mdata_Carry: TDataSource;
    MData_Carry: TdxMemData;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    CurrencyField1: TCurrencyField;
    CurrencyField2: TCurrencyField;
    CurrencyField3: TCurrencyField;
    StringField6: TStringField;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    Label7: TLabel;
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
    Act_TS_BudgetPrice: TAction;
    PM: TPopupMenu;
    N_Edit: TMenuItem;
    N_Filter: TMenuItem;
    N_Sort: TMenuItem;
    N_Group: TMenuItem;
    N_Set: TMenuItem;
    N_Out: TMenuItem;
    TS_WorkCarry: TRzTabSheet;
    RzSizePanel1: TRzSizePanel;
    MyTreeView: TTreeView;
    Panel3: TPanel;
    cxGrid: TcxGrid;
    cxGV: TcxGridDBTableView;
    FProductName: TcxGridDBColumn;
    FParentNumber: TcxGridDBColumn;
    FNumber: TcxGridDBColumn;
    FBudgetPartsName: TcxGridDBColumn;
    FBudgetPartsModel: TcxGridDBColumn;
    FBudgetPartsUnit: TcxGridDBColumn;
    Sel: TcxGridDBColumn;
    FMaterialBasePrice: TcxGridDBColumn;
    FMaterialResizePrice: TcxGridDBColumn;
    FMaterialPrice: TcxGridDBColumn;
    FWorkBasePrice: TcxGridDBColumn;
    FWorkResizePrice: TcxGridDBColumn;
    FWorkPrice: TcxGridDBColumn;
    FBalanceBasePrice: TcxGridDBColumn;
    FBudgetPriceID: TcxGridDBColumn;
    FBudgetPartsID: TcxGridDBColumn;
    FWorkCarryID: TcxGridDBColumn;
    FWorkCarry: TcxGridDBColumn;
    FWorkCarryJobID: TcxGridDBColumn;
    FWorkCarryJob: TcxGridDBColumn;
    cxGL: TcxGridLevel;
    PanelBkGnd: TPanel;
    Label2: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    E_FWorkCarryID: TcxButtonEdit;
    E_FWorkCarry: TcxButtonEdit;
    E_FProductName: TcxButtonEdit;
    E_FProductID: TcxButtonEdit;
    E_FWorkCarry_Copy: TcxButtonEdit;
    RzSizePanel2: TRzSizePanel;
    MyTreeView_Carry: TTreeView;
    Panel2: TPanel;
    cxGrid_Carry: TcxGrid;
    cxGV_Carry: TcxGridDBTableView;
    FDepartmentName_Carry: TcxGridDBColumn;
    FAgentID_Carry: TcxGridDBColumn;
    FDepartmentID_Carry: TcxGridDBColumn;
    FWorkCarryID_Carry: TcxGridDBColumn;
    FWorkCarry_Carry: TcxGridDBColumn;
    FWorkCarryJobID_Carry: TcxGridDBColumn;
    FWorkCarryJob_Carry: TcxGridDBColumn;
    cxGL_Carry: TcxGridLevel;
    OKBtn_Carry: TcxButton;
    CancelBtn_Carry: TcxButton;
    TB_Ref_Carry: TToolButton;
    TB_APP_Carry: TToolButton;
    TB_Edit_Carry: TToolButton;
    TB_Del_Carry: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    Act_Set_Open_Carry: TAction;
    Act_Set_Close_Carry: TAction;
    FWorkCarryYear_Carry: TcxGridDBColumn;
    FWorkCarryMonth_Carry: TcxGridDBColumn;
    FWorkCarryDay_Carry: TcxGridDBColumn;
    Act_Status_Carry: TAction;
    E_FWorkCarryID_Copy: TcxButtonEdit;
    Act_WorkCarry: TAction;
    E_FDepartmentID: TcxButtonEdit;
    E_FWorkCarryjobID: TcxButtonEdit;
    FBudgetPartsRemark: TcxGridDBColumn;
    ToolBar_BudgetPrice: TToolBar;
    TB_Ref: TToolButton;
    TB_App: TToolButton;
    TB_Edit: TToolButton;
    TB_Del: TToolButton;
    ToolButton5: TToolButton;
    TB_Prin: TToolButton;
    ToolButton1: TToolButton;
    TB_EXIT: TToolButton;
    Act_Sel_WorkCarry: TAction;
    E_FDepBalanceTypeID: TcxButtonEdit;
    Act_Sel_FNumber: TAction;
    Act_Sel: TAction;
    ToolBar_Save: TPanel;
    OKBtn: TcxButton;
    CancelBtn: TcxButton;
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
    procedure P_Select;
    procedure E_FAgentDatePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure TB_PrinClick(Sender: TObject);
    procedure E_FProductNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure E_FMaterialDate_1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
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
    procedure TB_APP_CarryClick(Sender: TObject);
    procedure OKBtn_CarryClick(Sender: TObject);
    procedure Act_Set_Close_CarryExecute(Sender: TObject);
    procedure Act_Set_Open_CarryExecute(Sender: TObject);
    procedure CancelBtn_CarryClick(Sender: TObject);
    procedure TB_Ref_CarryClick(Sender: TObject);
    procedure MyTreeView_CarryExpanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure MyTreeView_CarryChange(Sender: TObject; Node: TTreeNode);
    procedure FDepartmentName_PricePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FWorkCarryJob_PricePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure Act_Status_CarryExecute(Sender: TObject);
    procedure TB_Del_CarryClick(Sender: TObject);
    procedure Act_WorkCarryExecute(Sender: TObject);
    procedure MData_CarryBeforePost(DataSet: TDataSet);
    procedure cxGrid_CarryContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure TB_Edit_CarryClick(Sender: TObject);
    procedure MDataBeforePost(DataSet: TDataSet);
    procedure Act_Sel_WorkCarryExecute(Sender: TObject);
    procedure SelPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure Act_Sel_FNumberExecute(Sender: TObject);
    procedure Act_SelExecute(Sender: TObject);
  private
    { Private declarations }
    function AddRd:bool;
    function EditRd:bool;
    function DelRd:bool;

    function AddRd_Carry:bool;
    function EditRd_Carry:bool;
    function DelRd_Carry:bool;

  public

    { Public declarations }
  end;

var
  Frm_BudgetPrice: TFrm_BudgetPrice;


implementation

uses FRMDATA, COMMON, FrmSelect, ProgBar, PROGRASS;

{$R *.dfm}
function TFrm_BudgetPrice.DelRd_Carry: bool;
var
 qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Delete from T_WorkCarry where FWorkCarryID=:FWorkCarryID';
    with qry.Parameters do
    begin
      FindParam('FWorkCarryID').value:=mdata_Carry['FWorkCarryID'];
    end;
    result:=qry.ExecSQL>=1;
  finally
    qry.Free;
  end;
end;


function TFrm_BudgetPrice.AddRd_Carry: bool;
var
  qry: TADOQuery;

begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  result:=False;

  If mData_Carry.RecordCount<=0 then
  begin
    result:=True;
    Exit;
  end;
  try
    qry.SQL.Text:='Insert into T_WorkCarry(FWorkCarryJobID,FWorkCarryYear,FWorkCarryMonth,FWorkCarryDay,FWorkCarryAgent,FDepartmentID,FAgentID) '
                 +'values(:FWorkCarryJobID,:FWorkCarryYear,:FWorkCarryMonth,:FWorkCarryDay,:FWorkCarryAgent,:FDepartmentID,:FAgentID)';
     mData_Carry.First;

     while not mData_Carry.eof do
     begin
      // If (mData_Carry['FNumber']<>'') and (mData_Carry['FWorkTaskPartsName']<>'') and (mData_Carry['FWorkTaskPartsUnit']<>'') and (mData_Carry['FPartsID']<>0) then
       begin
         If qry.Active then qry.Close;
         with qry.Parameters do
         begin
           FindParam('FWorkCarryJobID').value:=mData_Carry['FWorkCarryJobID'];;
           FindParam('FWorkCarryYear').value:=mData_Carry['FWorkCarryYear'];
           FindParam('FWorkCarryMonth').value:=mData_Carry['FWorkCarryMonth'];
           FindParam('FWorkCarryDay').value:=mData_Carry['FWorkCarryDay'];
           FindParam('FWorkCarryAgent').value:=mData_Carry['FWorkCarryAgent'];
           FindParam('FDepartmentID').value:=mData_Carry['FDepartmentID'];
           FindParam('FAgentID').value:=UserFDepartmentID;
         end;
         result:=qry.ExecSQL>=1;
         if not result then break;
       end;
       mData_Carry.Next;
     end;
   finally
     qry.Free;
   end;
end;


function TFrm_BudgetPrice.EditRd_Carry:bool;
var
  qry: TADOQuery;

begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  result:=False;

  If mData_Carry.RecordCount<=0 then
  begin
    result:=True;
    Exit;
  end;

  mData_Carry.Edit;
  mData_Carry.Post;

  try
    qry.SQL.Text:='Update T_WorkCarry set FWorkCarryJobID=:FWorkCarryJobID,FWorkCarryYear=:FWorkCarryYear,FWorkCarryMonth=:FWorkCarryMonth,FWorkCarryDay=:FWorkCarryDay,'
                 +'FWorkCarryAgent=:FWorkCarryAgent,FDepartmentID=:FDepartmentID,FAgentID=:FAgentID '
                 +'where FWorkCarryID=:FWorkCarryID';
     mData_Carry.First;

     while not mData_Carry.eof do
     begin
      // If (mData_Carry['FNumber']<>'') and (mData_Carry['FWorkTaskPartsName']<>'') and (mData_Carry['FWorkTaskPartsUnit']<>'')  and (mData_Carry['FPartsID']<>0) and (mData_Carry['FProductClass']<>'') then
       begin
         If qry.Active then qry.Close;
         with qry.Parameters do
         begin
           FindParam('FWorkCarryJobID').value:=mData_Carry['FWorkCarryJobID'];;
           FindParam('FWorkCarryYear').value:=mData_Carry['FWorkCarryYear'];
           FindParam('FWorkCarryMonth').value:=mData_Carry['FWorkCarryMonth'];
           FindParam('FWorkCarryDay').value:=mData_Carry['FWorkCarryDay'];
           FindParam('FWorkCarryAgent').value:=mData_Carry['FWorkCarryAgent'];
           FindParam('FDepartmentID').value:=mData_Carry['FDepartmentID'];
           FindParam('FAgentID').value:=UserFDepartmentID;
           FindParam('FWorkCarryID').value:=mData_Carry['FWorkCarryID'];
          end;
         result:=qry.ExecSQL>=1;
         if not result then break;
       end;
       mData_Carry.Next;
      end;
   finally
     qry.Free;
   end;
end;



procedure TFrm_BudgetPrice.P_Select;
var qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Select *,0.00000 as FMaterialBasePrice,0.00000 as FMaterialResizePrice,0.00000 as FMaterialPrice,0.00000 as FBalancebasePrice '
                 +'from V_BudgetPrice where FDepartmentID=:FDepartmentID and FProductID=:FProductID ';
    qry.Parameters.FindParam('FDepartmentID').Value:=UserFDepartmentID;
    qry.Parameters.FindParam('FProductID').Value:=StrToInt(Trim(E_FProductID.Text));
    qry.Open;
  finally
     ;
  end;
  Mdata.CopyFromDataSet(qry);
  Mdata.Active:=True;
  Mdata.First;
  cxGvColumn(cxGv,Mdata);

  cxGV.OptionsData.Editing:=True;
  FMaterialBasePrice.Options.Editing:=True;
  FMaterialResizePrice.Options.Editing:=True;
  qry.Free;

end;


function TFrm_BudgetPrice.DelRd: bool;
var
 qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Delete from T_BudgetPrice where FBudgetPriceID=:FBudgetPriceID';
    with qry.Parameters do
    begin
      FindParam('FBudgetPriceID').value:=mdata['FBudgetPriceID'];
    end;
    result:=qry.ExecSQL>=1;
  finally
    qry.Free;
  end;
end;

function TFrm_BudgetPrice.AddRd: bool;
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
    qry.SQL.Text:='Insert into T_BudgetPrice(FBudgetPartsID, FMaterialBasePrice, FMaterialResizePrice, FWorkCarryID) '
                 +'values(:FBudgetPartsID, :FMaterialBasePrice, :FMaterialResizePrice, :FWorkCarryID)';
     mData.First;

     while not mData.eof do
     begin
       If (mData['FMaterialBasePrice']<>0) or (mData['FMaterialResizePrice']<>0) or (mData['FWorkBasePrice']<>0) then
       begin
         If qry.Active then qry.Close;
         with qry.Parameters do
         begin
           FindParam('FBudgetPartsID').value:=mdata['FBudgetPartsID'];;
           FindParam('FMaterialBasePrice').value:=mdata['FMaterialBasePrice'];
           FindParam('FMaterialResizePrice').value:=mdata['FMaterialResizePrice'];
           FindParam('FWorkCarryID').value:=StrToInt(Trim(E_FWorkCarryID.Text));
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


function TFrm_BudgetPrice.EditRd:bool;
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

  qry:=TADOQuery.Create(Self);
  qry.Connection:=mdlData.conn;
  result:=False;

  If mData.RecordCount<=0 then
  begin
    result:=True;
    Exit;
  end;
  try
    qry.SQL.Text:='Update T_BudgetPrice set FBudgetPartsID=:FBudgetPartsID,FMaterialBasePrice=:FMaterialBasePrice,FMaterialResizePrice=:FMaterialResizePrice,'
                 +'FWorkCarryID=:FWorkCarryID where FBudgetPriceID=:FBudgetPriceID';
     mData.First;

     while not mData.eof do
     begin
       If (mData['FMaterialBasePrice']<>0) or (mData['FMaterialResizePrice']<>0) or (mData['FWorkBasePrice']<>0)  then
       begin
         If qry.Active then qry.Close;
         with qry.Parameters do
         begin
           FindParam('FBudgetPartsID').value:=mdata['FBudgetPartsID'];;
           FindParam('FMaterialBasePrice').value:=mdata['FMaterialBasePrice'];
           FindParam('FMaterialResizePrice').value:=mdata['FMaterialResizePrice'];
           FindParam('FWorkCarryID').value:=Trim(E_FWorkCarryID.Text);
           FindParam('FBudgetPriceID').value:=mdata['FBudgetPriceID'];
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


procedure TFrm_BudgetPrice.FormResize(Sender: TObject);
begin
  inherited;
  L_title.Caption:=UserFDepartmentName+'材料结算单价';
  Self.Caption:=UserFDepartmentName+'材料结算单价';

//  OKBtn.Left:=StrToInt(FloatToStr(int((PanelBkGnd.Width-OKBtn.Width-CancelBtn.Width-20)/2)));
 // CancelBtn.Left:=StrToInt(FloatToStr(int((PanelBkGnd.Width-OKBtn.Width-CancelBtn.Width-20)/2)))+OKBtn.Width+20;

end;

procedure TFrm_BudgetPrice.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=cafree;
  Frm_BudgetPrice:=nil;
end;

procedure TFrm_BudgetPrice.TB_EXITClick(Sender: TObject);
begin
  inherited;
  self.Close;
end;

procedure TFrm_BudgetPrice.MyTreeViewChange(Sender: TObject; Node: TTreeNode);
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
    P_th:=PTree(Node.Data).Caption;
    If not MyItemList(qry,Mdata,'V_BudgetPrice','FFullNumber',ListItemFNumber,'FFullNumber') then
    begin
      mdata.Open;
      cxGvColumn(cxGv,Mdata);
    end;
    If mdata.RecordCount>0 then
    begin
      E_FWorkCarryID.Text:= mdata['FWorkCarryID'];
      E_FWorkCarryjobID.Text:= mdata['FWorkCarryjobID'];
      E_FWorkCarry.Text:= mdata['FWorkCarry'];
      E_FDepBalanceTypeID.Text:= mdata['FDepBalanceTypeID'];
      E_FProductName.Text:= mdata['FProductName'];
      E_FProductID.Text:= mdata['FProductID'];
      E_FDepartmentID.Text:=mdata['FDepartmentID'];
    end;
    If P_Isleaf=1 then
    begin
      TB_Edit.Visible:= mdlData.CheckFrmRights(TFrm_BudgetPrice.ClassName,'修改');
      TB_Del.Visible:=mdlData.CheckFrmRights(TFrm_BudgetPrice.ClassName,'删除');
    end
    else
    begin
      TB_Edit.Visible:=False;
      TB_Del.Visible:=False;
    end;

  end;

end;

procedure TFrm_BudgetPrice.MyTreeViewExpanding(Sender: TObject;
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
               +'Isleaf from VT_BudgetPrice where FParentNumber= '''
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

procedure TFrm_BudgetPrice.TB_RefClick(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
   If UserFDepartmentsort=1 then //事业部
  begin
    If not TreeVeiwListWhere(qry,MyTreeView,'VT_BudgetPrice',' and FDepartmentID='+IntToStr(UserFDepartmentID) ) then
       Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;
  If UserFDepartmentsort=2 then //子公司
  begin
    If not TreeVeiwList(qry,MyTreeView,'VT_BudgetPrice' ) then
       Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;

end;

procedure TFrm_BudgetPrice.OKBtnClick(Sender: TObject);
var qry: TADOQuery;

begin
  cxGV.OptionsData.Editing:=True;
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  mData.Edit;
  mData.Post;

  If (StrToInt(Trim(E_FWorkCarryID.Text))=0) then
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
        mdata.Close;
        mdata.Open;
       // Self.P_Select;  选择全部
        mdata.Edit;
        mdata.Append;
        mdata.Post;
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
      //刷新记录
      If not MyItemList(qry,Mdata,'V_BudgetPrice','FFullNumber',ListItemFNumber,'FFullNumber') then
      begin
        mdata.Open;
        cxGvColumn(cxGv,Mdata);
      end;
      application.MessageBox('修改记录已保存','系统提示',MB_ICONINFORMATION);
      inherited;
    end
    else
      application.MessageBox('修改记录保存失败！','系统提示',MB_ICONWARNING);
    CancelBtn.Click;
  end;
  qry.Free;


end;



procedure TFrm_BudgetPrice.TB_AppClick(Sender: TObject);
var
 qry:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  P_state :=0;    //新增
  try
    qry.SQL.Text:='Select * from V_BudgetPrice with(nolock) where FBudgetPriceID=0';
    qry.Open;
  finally
     ;
  end;
  mdata.CopyFromDataSet(qry);
  mdata.Active:=True;
  mdata.Edit;
  mdata.Append;
  mdata.Post;
  L_title.Caption:=UserFDepartmentName+'外协结算单价数据新增';
  Act_Set_Open.Execute;

end;

procedure TFrm_BudgetPrice.TB_EditClick(Sender: TObject);
var
 qry:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  P_state :=1;   //  修改

 { try
    qry.SQL.Text:='Select * from V_BalanceList where FWorkTaskPriceID=:FWorkTaskPriceID';
    qry.Parameters.FindParam('FWorkTaskPriceID').Value:=mdata['FWorkTaskPriceID'];
    qry.Open;
  finally
     ;
  end;
  if qry.RecordCount>0 then
  begin
    application.MessageBox(Pchar('部件【'+Trim(Mdata['FWorkTaskPartsName'])+'】【'+Trim(Mdata['FWorkTaskPartsModel'])+'】【'+Trim(Mdata['FWorkCarry'])+'】已启用不允许修改！'),'系统提示',MB_ICONINFORMATION);
    Exit;
  end;  }
  Act_Set_Open.Execute;


end;

procedure TFrm_BudgetPrice.TB_DelClick(Sender: TObject);
var
  qry:TADOQuery;

begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

{  try
    qry.SQL.Text:='Select * from V_WorkList where FBalancePriceID=:FBalancePriceID';    //任务单已使用的不允许删除
    qry.Parameters.FindParam('FBalancePriceID').Value:=mdata['FBalancePriceID'];
    qry.Open;
  finally
     ;
  end;
  if qry.RecordCount>0 then
  begin
    application.MessageBox(Pchar('部件【'+Trim(Mdata['FBalanceName'])+'】【'+Trim(Mdata['FBalanceModel'])+'】【'+Trim(Mdata['FMaterialDate'])+'】已启用不允许删除！'),'系统提示',MB_ICONINFORMATION);
    Exit;
  end;
  }

  If application.MessageBox(Pchar('警告：是否删除：【'+Trim(Mdata['FBudgetPartsName'])+'】【'+Trim(Mdata['FBudgetPartsModel'])+'】【'+Trim(Mdata['FWorkCarry'])+'】的信息？'+chr(13)+chr(13)
                           +'删除数据操作将不可恢复，确定要删除本数据吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
  If application.MessageBox(Pchar('警告：是否删除：【'+Trim(Mdata['FBudgetPartsName'])+'】【'+Trim(Mdata['FBudgetPartsModel'])+'】【'+Trim(Mdata['FWorkCarry'])+'】的信息？'+chr(13)+chr(13)
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
  //TB_ref.Click;

end;

procedure TFrm_BudgetPrice.CancelBtnClick(Sender: TObject);
begin
  inherited;
  L_title.Caption:=UserFDepartmentName+'外协结算单价';
  Act_Set_Close.Execute;
end;

procedure TFrm_BudgetPrice.FormCreate(Sender: TObject);
begin
  inherited;
  TB_App.Enabled:= mdlData.CheckFrmRights(TFrm_BudgetPrice.ClassName,'新增');
  TB_Prin.Enabled:= mdlData.CheckFrmRights(TFrm_BudgetPrice.ClassName,'打印');
  N_Out.Enabled:= mdlData.CheckFrmRights(TFrm_BudgetPrice.ClassName,'打印');

end;

procedure TFrm_BudgetPrice.FormShow(Sender: TObject);
begin
  TB_Ref.Click;
end;

procedure TFrm_BudgetPrice.E_FAgentDatePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
   Act_Sel_WorkCarry.Execute;
end;

procedure TFrm_BudgetPrice.TB_PrinClick(Sender: TObject);
begin
  inherited;
  FrReport.LoadFromFile(ExtractFileDir(Application.ExeName)+'\Report_DesignBOM_BalancePrice.frf');
  FrReport.ShowReport;

end;

procedure TFrm_BudgetPrice.E_FProductNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.Connection:=mdlData.conn;
  try
    qry.SQL.Text:='select distinct 0 as FProductID,'''' as FProductName,FDepartmentID,FDepartmentName as FNumber ,'''' as FParentNumber,FDepartmentName as FName,0 as IsLeaf  from V_BudgetJobPrice  '
                 +' union  '
                 +' select distinct FProductID,FProductName,FDepartmentID,FProductName as FNumber ,FDepartmentName as FParentNumber,FProductName as FName,1 as IsLeaf  from V_BudgetJobPrice ';
    qry.Open;
  finally
     ;
  end;
  selValue:=select('请选择产品类别','FNumber','FParentNumber','FNumber','FName',qry);
  If (Length(selValue)>0) and (qry.FieldByName('Isleaf').Value=1) then
  begin
    E_FProductID.Text:=qry.FieldByName('FProductID').AsString;
    E_FProductName.Text:=qry.FieldByName('FProductName').AsString;
    E_FDepartmentID.Text:=qry.FieldByName('FDepartmentID').AsString;
  end
  else
  begin
    messagedlg('请选择明细！',mtInformation,[mbok],0);
    Exit;
  end;

end;

procedure TFrm_BudgetPrice.E_FMaterialDate_1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry,qry1: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry1:=TADOQuery.Create(Self);
  qry1.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='select * from VT_WorkCarry where  FAgentID=:FAgentID ';
    qry.Parameters.FindParam('FAgentID').value:=UserFDepartmentID;
    qry.Open;
  finally
     ;
  end;
  If qry.RecordCount<1 then
     Exit;

  selValue:=select('请选择材料价执行日期','FNumber','FParentNumber','FNumber','FName',qry);
  If (Length(selValue)>0) and (qry.FieldByName('Isleaf').Value=1) then
  begin
    E_FWorkCarry_Copy.Text:=qry.FieldByName('FWorkCarry').AsString;
    E_FWorkCarryID_Copy.Text:=qry.FieldByName('FWorkCarryID').AsString;
  end
  else
  begin
    messagedlg('请选择明细！',mtInformation,[mbok],0);
    Exit;
  end;

end;

procedure TFrm_BudgetPrice.N_EditClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_BudgetPrice.N_FilterClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_BudgetPrice.N_SortClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_BudgetPrice.N_GroupClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_BudgetPrice.N_SetClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_BudgetPrice.N_OutClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_BudgetPrice.cxGridContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV';
  Gm:='mdata';
  Gr:='cxGrid';
  Act_Menu_Set.Execute;

end;

procedure TFrm_BudgetPrice.Act_MenuExecute(Sender: TObject);
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

procedure TFrm_BudgetPrice.Act_Menu_SetExecute(Sender: TObject);
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

procedure TFrm_BudgetPrice.Act_Set_OpenExecute(Sender: TObject);
var
   AFirstColumnStyle: TcxStyle;
begin
  inherited;
  MyTreeView.Enabled:=False;
  ToolBar_BudgetPrice.Visible:=False;
  ToolBar_Save.Visible:=True;
  cxGV.OptionsData.Editing:=True;

  E_FWorkCarry.Enabled:=True;
  E_FProductName.Enabled:=True;
  E_FWorkCarry_Copy.Enabled:=True;
  Sel.Visible:=True;
  Sel.Options.Editing:=True;
  FMaterialBasePrice.Options.Editing:=True;
  FMaterialResizePrice.Options.Editing:=True;
    //列颜色
  AFirstColumnStyle := TcxStyle.Create(Self);
  AFirstColumnStyle.Color := clInactiveCaptionText;
  AFirstColumnStyle.TextColor := clBlue;

  cxGV.Columns[7].Styles.Content := AFirstColumnStyle;
  cxGV.Columns[8].Styles.Content := AFirstColumnStyle;

end;

procedure TFrm_BudgetPrice.Act_Set_CloseExecute(Sender: TObject);
var
   AFirstColumnStyle: TcxStyle;
begin
  inherited;
  ToolBar_BudgetPrice.Visible:=True;
  ToolBar_Save.Visible:=False;
  MyTreeView.Enabled:=True;

  E_FWorkCarry_Copy.Enabled:=False;
  E_FWorkCarry.Enabled:=False;
  E_FProductName.Enabled:=False;
  E_FWorkCarry_Copy.Enabled:=False;
  Sel.Visible:=False;

  cxGV.OptionsData.Editing:=False;
     //列颜色
  AFirstColumnStyle := TcxStyle.Create(Self);
  AFirstColumnStyle.Color := clBtnHighlight;
  AFirstColumnStyle.TextColor := clblack;

  cxGV.Columns[7].Styles.Content := AFirstColumnStyle;
  cxGV.Columns[8].Styles.Content := AFirstColumnStyle;

end;

procedure TFrm_BudgetPrice.TB_APP_CarryClick(Sender: TObject);
var
 qry:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  P_state :=0;    //新增
  try
    qry.SQL.Text:='select * from V_WorkCarry with(nolock) where FWorkCarryID=0';
    qry.Open;
  finally
    ;
  end;
  mdata_Carry.CopyFromDataSet(qry);
  mdata_Carry.Active:=True;
  mdata_Carry.Append;
  mdata_Carry.post;
  Act_Set_Open_Carry.Execute;
  Act_WorkCarry.Execute;

end;

procedure TFrm_BudgetPrice.OKBtn_CarryClick(Sender: TObject);
var qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  mData_Carry.Edit;
  mData_Carry.Post;

  If (mData_Carry['FDepartMentName']='')or (mData_Carry['FAgentName']='') or (mData_Carry['FWorkCarryYear']='') or (mData_Carry['FWorkCarryMonth']='')  or (mData_Carry['FWorkCarryDay']='') or (mData_Carry['FWorkCarryAgent']='') then
  begin
    application.MessageBox('关键字不能为空！请重新输入','系统提示',MB_ICONERROR);
    Exit;
  end;


  If P_state =0 then
  begin
    try
      qry.SQL.Text:='Select * from V_WorkCarry where FWorkCarry=:FWorkCarry and FAgentID=:FAgentID and FDepartmentID=:FDepartmentID  ';
      qry.Parameters.FindParam('FWorkCarry').Value:=mData_Carry['FWorkCarry'];
      qry.Parameters.FindParam('FAgentID').Value:=UserFDepartmentID;
      qry.Parameters.FindParam('FDepartmentID').Value:=mdata_Carry['FDepartmentID'];
      qry.Open;
      If qry.RecordCount>0 then
      begin
         application.MessageBox('材料执行单价日期重复！请重新输入','系统提示',MB_ICONERROR);
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
    If AddRd_Carry then //增加数据
    begin
      If application.MessageBox('录入数据已保存,还要继续录入吗？','提示',MB_ICONINFORMATION+MB_YESNO)=6 then
      begin
        TB_App_Carry.Click ;
      end
      else
      begin
        inherited;
        CancelBtn_Carry.Click;
      end;
    end;
  end;

  If P_state=1 then //修改数据
  begin
    If application.MessageBox('是否要保存所作修改？','提示',MB_ICONINFORMATION+MB_YESNO)<>6 then
       Exit;
    If EditRd_Carry then   //修改数据
    begin
      application.MessageBox('修改记录已保存','系统提示',MB_ICONINFORMATION);
      inherited;
    end
    else
      application.MessageBox('修改记录保存失败！','系统提示',MB_ICONWARNING);
    CancelBtn_Carry.Click;
  end;
  qry.Free;


end;

procedure TFrm_BudgetPrice.Act_Set_Close_CarryExecute(Sender: TObject);
begin
  inherited;
  TB_Ref_Carry.Visible:=True;
  TB_App_Carry.Visible:=True;
  TB_Edit_Carry.Visible:=True;
  TB_Del_Carry.Visible:=True;
  MyTreeView_Carry.Enabled:=True;

  OKBtn_Carry.Visible:=False;
  CancelBtn_Carry.Visible:=False;
  cxGV_Carry.OptionsData.Editing:=False;

end;

procedure TFrm_BudgetPrice.Act_Set_Open_CarryExecute(Sender: TObject);
begin
  inherited;
  TB_Ref_Carry.Visible:=False;
  TB_App_Carry.Visible:=False;
  TB_Edit_Carry.Visible:=False;
  TB_Del_Carry.Visible:=False;
  MyTreeView_Carry.Enabled:=False;

  OKBtn_Carry.Visible:=True;
  CancelBtn_Carry.Visible:=True;

  cxGV_Carry.OptionsData.Editing:=True;

  FDepartmentName_Carry.Options.Editing:=True;
  FWorkCarryYear_Carry.Options.Editing:=True;
  FWorkCarryMonth_Carry.Options.Editing:=True;
  FWorkCarryDay_Carry.Options.Editing:=True;
 // If UserFDepartmentSort=1 then  //事业部
   //  FWorkCarryAgent_Carry.Options.Editing:=True;
  
end;

procedure TFrm_BudgetPrice.CancelBtn_CarryClick(Sender: TObject);
begin
  inherited;
  Act_Set_Close_Carry.Execute;
end;

procedure TFrm_BudgetPrice.TB_Ref_CarryClick(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If not TreeVeiwListWhere(qry,MyTreeView_Carry,'VT_WorkCarry',' and FDepartmentID='+IntToStr(UserFDepartmentID) ) then
  begin
    Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;

end;

procedure TFrm_BudgetPrice.MyTreeView_CarryExpanding(Sender: TObject;
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
               +'Isleaf from VT_WorkCarry where FParentNumber= '''
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
    with MyTreeView_Carry.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('Isleaf').value;
    end;
    qry.Next;
  end;



end;

procedure TFrm_BudgetPrice.MyTreeView_CarryChange(Sender: TObject;
  Node: TTreeNode);
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
    P_th:=PTree(Node.Data).Caption;
    If not MyItemList(qry,Mdata_Carry,'V_WorkCarry','FFullNumber',ListItemFNumber,'FFullNumber') then
    begin
      mdata_Carry.Open;
      cxGvColumn(cxGv_Carry,Mdata_Carry);
    end;
    Act_Status_Carry.Execute;
    {If mdata.RecordCount>0 then
    begin
      E_FWorkCarry.Text:= mdata['FWorkDate'];
      E_FWorkCarryID.Text:= mdata['FWorkCarryID'];
      E_FWorkCarryID.Text:= mdata['FWorkCarryID'];
      E_FWorkCarry.Text:= mdata['FWorkCarry'];
      E_FProductName.Text:= mdata['FProductName'];
      E_FProductID.Text:= mdata['FProductID'];
    end;
    If P_Isleaf=1 then
    begin
      TB_Edit.Enabled:= mdlData.CheckFrmRights(TFrm_WorkTaskPrice.ClassName,'修改');
      TB_Del.Enabled:=mdlData.CheckFrmRights(TFrm_WorkTaskPrice.ClassName,'删除');
    end
    else
    begin
      TB_Edit.Enabled:=False;
      TB_Del.Enabled:=False;
    end;
     }
  end;


end;

procedure TFrm_BudgetPrice.FDepartmentName_PricePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='select FDepartmentID,FDepartmentName,FDepartmentName as FNumber,'''' as FParentNumber,FDepartmentName as FName,1 as IsLeaf from T_Department where FDepartmentSort=1';
    qry.Open;
  finally
     ;
  end;
  selValue:=select('请选择事业部','FNumber','FParentNumber','FNumber','FName',qry);
  If (Length(selValue)>0) and (qry.FieldByName('IsLeaf').Value>0) and (qry.RecordCount>0) then
  begin
    mdata_Carry.Edit;
    mdata_Carry['FDepartmentName']:=qry.FieldByName('FDepartmentName').AsString;
    mdata_Carry['FDepartmentID']:=qry.FieldByName('FDepartmentID').AsString;
    mdata_Carry.Post;
  end
  else
  begin
    messagedlg('请选择明细！',mtInformation,[mbok],0);
    Exit;
  end;


  try
    qry.SQL.Text:='select FWorkCarryJobID,FWorkCarryJob,FWorkCarryJob as FNumber,'''' as FParentNumber,FWorkCarryJob as FName,1 as Isleaf '
                 +' from T_WorkCarryJob where FDepartmentID=:FDepartmentID1 and '
                 +' FWorkCarryJob=(select Max(FWorkCarryJob) as  WorkCarryJob from T_WorkCarryJob where FDepartmentID=:FDepartmentID2)';
    qry.Parameters.FindParam('FDepartmentID1').value:=mdata_Carry['FDepartmentID'];
    qry.Parameters.FindParam('FDepartmentID2').value:=mdata_Carry['FDepartmentID'];
    qry.Open;
  finally
     ;
  end;
  If qry.RecordCount>0 then
  begin
    mdata_Carry.Edit;
    mdata_Carry['FWorkCarryJob']:=qry.FieldByName('FWorkCarryJob').AsString;
    mdata_Carry['FWorkCarryJobID']:=qry.FieldByName('FWorkCarryJobID').value;
    mdata_Carry.Post;
  end;
  FWorkCarryJob_Carry.Options.Editing:=True;

end;

procedure TFrm_BudgetPrice.FWorkCarryJob_PricePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='select FWorkCarryJobID,FWorkCarryJob,FWorkCarryJob as FNumber,'''' as FParentNumber,FWorkCarryJob as FName,1 as Isleaf '
                 +' from T_WorkCarryJob where FDepartmentID=:FDepartmentID ';
    qry.Parameters.FindParam('FDepartmentID').value:=mdata_Carry['FDepartmentID'];
    qry.Open;
  finally
     ;
  end;

  selValue:=select('请选择工管执行日期','FNumber','FParentNumber','FNumber','FName',qry);
  If (Length(selValue)>0) and (qry.FieldByName('Isleaf').Value>0) and (qry.RecordCount>0) then
  begin
    mdata_Carry.Edit;
    mdata_Carry['FWorkCarryJob']:=qry.FieldByName('FWorkCarryJob').AsString;
    mdata_Carry['FWorkCarryJobID']:=qry.FieldByName('FWorkCarryJobID').value;
    mdata_Carry.Post;
  end
  else
  begin
    messagedlg('请选择明细！',mtInformation,[mbok],0);
    Exit;
  end;



end;

procedure TFrm_BudgetPrice.Act_Status_CarryExecute(Sender: TObject);
begin
  inherited;
  If P_Isleaf=1 then
  begin
    TB_Edit_Carry.Visible:= mdlData.CheckFrmRights(TFrm_BudgetPrice.ClassName,'修改');
    TB_Del_Carry.Visible:=mdlData.CheckFrmRights(TFrm_BudgetPrice.ClassName,'删除');
  end
  else
  begin
    TB_Edit_Carry.Visible:=False;
    TB_Del_Carry.Visible:=False;
  end;

end;

procedure TFrm_BudgetPrice.TB_Del_CarryClick(Sender: TObject);
var
  qry:TADOQuery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If (mdata_Carry.RecordCount<1) then
    Exit;

  try
    qry.SQL.Text:='Select * from V_BudgetPrice where FWorkCarryID=:FWorkCarryID';
    qry.Parameters.FindParam('FWorkCarryID').Value:=mdata_Carry['FWorkCarryID'];
    qry.Open;
  finally
     ;
  end;
  if qry.RecordCount>0 then
  begin
    application.MessageBox(Pchar('【'+Trim(mdata_Carry['FWorkCarry'])+'】材料执行单价日期已启用不允许删除！'),'系统提示',MB_ICONINFORMATION);
    Exit;
  end;


  If application.MessageBox(Pchar('警告：是否删除：【'+Trim(Mdata_Carry['FWorkCarry'])+'】的信息？'+chr(13)+chr(13)
                           +'删除数据操作将不可恢复，确定要删除本数据吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
  If application.MessageBox(Pchar('警告：是否删除：【'+Trim(Mdata_Carry['FWorkCarry'])+'】的信息？'+chr(13)+chr(13)
                           +'删除数据操作将不可恢复，确定要删除本数据吗？'),'再次警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then

  begin
    //单据删除
    If not DelRd_Carry then
    begin
      application.MessageBox('删除数据失败！','系统提示',MB_ICONINFORMATION);
      mdlData.conn.RollbackTrans;
      Exit;
    end;
  end;
  Mdata_Carry.Close;
  qry.Free;
end;

procedure TFrm_BudgetPrice.Act_WorkCarryExecute(Sender: TObject);
var
  qry:TADOQuery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  try
    qry.SQL.Text:='Select year(getdate()) as FWorkCarryYear,REPLICATE(''0'',2 - LEN(CAST(Month(getdate()) AS varchar(2)))) + CAST(month(getdate()) AS varchar(2))  as FWorkCarryMonth ';
    qry.Open;
  finally
     ;
  end;
  if qry.RecordCount>0 then
  begin
    mdata_Carry.Edit;
    mdata_Carry['FWorkCarryYear']:=qry.FieldByName('FWorkCarryYear').AsString;
    mdata_Carry['FWorkCarryMonth']:=qry.FieldByName('FWorkCarryMonth').AsString;
    mdata_Carry.Post
  end;

  try
    qry.SQL.Text:='select FDepartmentID,FDepartmentName,FDepartmentshortName from T_Department where FDepartmentID=:FDepartmentID';
    qry.Parameters.FindParam('FDepartmentID').value:=userFDepartmentID;
    qry.Open;
  finally
     ;
  end;
  if qry.RecordCount>0 then
  begin
    mdata_Carry.Edit;
    mdata_Carry['FAgentID']:=qry.FieldByName('FDepartmentID').AsString;
    mdata_Carry['FAgentName']:=qry.FieldByName('FDepartmentName').AsString;
    mdata_Carry['FWorkCarryAgent']:=qry.FieldByName('FDepartmentshortName').AsString;
    mdata_Carry.Post
  end;


  qry.Free;

end;

procedure TFrm_BudgetPrice.MData_CarryBeforePost(DataSet: TDataSet);
begin
  inherited;
  DataSet['FWorkCarry']:=DataSet['FWorkCarryYear']+DataSet['FWorkCarryMonth']+DataSet['FWorkCarryDay']+DataSet['FWorkCarryType'];

end;

procedure TFrm_BudgetPrice.cxGrid_CarryContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV_Carry';
  Gm:='mdata_Carry';
  Gr:='cxGrid_Carry';
  Act_Menu_Set.Execute;
end;

 procedure TFrm_BudgetPrice.TB_Edit_CarryClick(Sender: TObject);
var
 qry:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  P_state :=1;        //修改
  If (mdata_Carry.RecordCount<1) then
    Exit;
  If mdata_Carry.RecordCount<>1 then
  begin
    application.MessageBox('只允许修改单个记录！请重新选择!','系统提示',MB_ICONINFORMATION);
    Exit;
  end;
  If mdata_Carry.RecordCount=0 then
  begin
    application.MessageBox('无记录可修改！请重新选择!','系统提示',MB_ICONINFORMATION);
    Exit;
  end;

  try
     qry.SQL.Text:='Select * from T_BudgetPrice where FWorkCarryID=:FWorkCarryID  ';
     qry.Parameters.FindParam('FWorkCarryID').Value:=mData_Carry['FWorkCarryID'];
     qry.Open;
  finally
     ;
  end;
  if qry.RecordCount>0 then
  begin
    application.MessageBox(Pchar('【'+Trim(mdata_Carry['FWorkCarry'])+'】材料执行单价日期已启用不允许修改！'),'系统提示',MB_ICONINFORMATION);
    Exit;
  end;

  Act_Set_Open_Carry.Execute;


end;

procedure TFrm_BudgetPrice.MDataBeforePost(DataSet: TDataSet);
begin
  inherited;
  DataSet['FMaterialPrice']:=DataSet['FMaterialBasePrice']+DataSet['FMaterialResizePrice'];
  DataSet['FBalanceBasePrice']:=DataSet['FWorkPrice']+DataSet['FMaterialPrice'];

end;

procedure TFrm_BudgetPrice.Act_Sel_WorkCarryExecute(Sender: TObject);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='select * from VT_WorkCarry where  FDepartmentID=:FDepartmentID ';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Open;
  finally
     ;
  end;
  If qry.RecordCount<1 then
     Exit;

  selValue:=select('请选择材料价执行日期','FNumber','FParentNumber','FNumber','FName',qry);
  If (Length(selValue)>0) and (qry.FieldByName('Isleaf').Value>0) then
  begin
    E_FWorkCarry.Text:=qry.FieldByName('FWorkCarry').AsString;
    E_FWorkCarryID.Text:=qry.FieldByName('FWorkCarryID').AsString;
    E_FWorkCarryjobID.Text:=qry.FieldByName('FWorkCarryjobID').AsString;
    E_FDepBalanceTypeID.Text:=qry.FieldByName('FDepBalanceTypeID').AsString;
  end
  else
  begin
    messagedlg('请选择明细！',mtInformation,[mbok],0);
    Exit;
  end;
  qry.Free;

end;

procedure TFrm_BudgetPrice.SelPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  Act_Sel.Execute;
end;

procedure TFrm_BudgetPrice.Act_Sel_FNumberExecute(Sender: TObject);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Select * from VT_BudgetParts where FDepartmentID=:FDepartmentID order by FNumber';
    qry.Parameters.FindParam('FDepartmentID').Value:=StrToInt(Trim(E_FDepartmentID.Text));
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
  try
    qry.SQL.Text:='select * from V_BudgetPrice where FBudgetPartsID=:FBudgetPartsID and FWorkCarryID=:FWorkCarryID';
    qry.Parameters.FindParam('FBudgetPartsID').Value:=mdata['FBudgetPartsID'];
    qry.Parameters.FindParam('FWorkCarryID').Value:=StrToInt((Trim(E_FWorkCarryID.Text)));
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
    qry.SQL.Text:='select *,0.00000 as FMaterialBasePrice,0.00000 as FMaterialResizePrice,0.00000 as FMaterialPrice,0.0000 as FBalanceBasePrice from V_BudgetJobPrice '
                 +'where FBudgetPartsID=:FBudgetPartsID and FWorkCarryJobID=:FWorkCarryJobID';
    qry.Parameters.FindParam('FBudgetPartsID').Value:=mdata['FBudgetPartsID'];
    qry.Parameters.FindParam('FWorkCarryJobID').Value:=StrToInt((Trim(E_FWorkCarryJobID.Text)));
    qry.Open;
  finally
     ;
  end;
  If qry.RecordCount>0 then
  begin
    mdata.CopyFromDataSet(qry);
    Mdata.Active:=True;
  end
  else
  begin
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
      mdata.Post;
    end;
  end;
  qry.Free;

end;

procedure TFrm_BudgetPrice.Act_SelExecute(Sender: TObject);
var selValue : string;
    qry,qry1: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry1:=TADOQuery.Create(Self);
  qry1.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Select * from V_BudgetPrice where FWorkCarryID=:FWorkCarryID and FProductID=:FProductID '
                 +' and FDepartmentID=:FDepartmentID and FDepBalanceTypeID=:FDepBalanceTypeID';
    qry.Parameters.FindParam('FWorkCarryID').Value:=StrToInt(Trim(E_FWorkCarryID.Text));
    qry.Parameters.FindParam('FProductID').Value:=StrToInt(Trim(E_FProductID.Text));
    qry.Parameters.FindParam('FDepartmentID').Value:=UserFDepartmentID;
    qry.Parameters.FindParam('FDepBalanceTypeID').Value:=StrToInt(Trim(E_FDepBalanceTypeID.Text));
    qry.Open;
  finally
     ;
  end;
  If qry.RecordCount>0 then
  begin
     try
        qry1.SQL.Text:='Select *,0.00000 as FMaterialBasePrice,0.00000 as FMaterialResizePrice,0.00000 as FMaterialPrice,'
                      +'FWorkPrice as FBalanceBasePrice from V_BudgetJobPrice with(nolock) '
                      +'where FDepartmentID=:FDepartmentID and FProductID=:FProductID '
                      +' and FBudgetPartsID not in (select FBudgetPartsID from V_BudgetPrice where FWorkCarryID=:FWorkCarryID)';
        qry1.Parameters.FindParam('FDepartmentID').Value:=UserFDepartmentID;
        qry1.Parameters.FindParam('FProductID').Value:=StrToInt(Trim(E_FProductID.Text));
        qry1.Parameters.FindParam('FWorkCarryID').Value:=StrToInt(Trim(E_FWorkCarryID.Text));
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

    //Act_Sel_FNumber.Execute;
  end
  else
  begin
    //取最大的材料执行价
    try
      qry.SQL.Text:='select * from V_BudgetPrice where FWorkCarryjobID=:FWorkCarryjobID and FDepBalanceTypeID=:FDepBalanceTypeID1 and FProductID=:FProductID1 '
                   +'and FWorkCarry=(Select max(FWorkCarry) from V_BudgetPrice where FDepBalanceTypeID=:FDepBalanceTypeID2 and FProductID=:FProductID2)';
      qry.Parameters.FindParam('FWorkCarryjobID').Value:=StrToInt(Trim(E_FWorkCarryjobID.Text));
      qry.Parameters.FindParam('FDepBalanceTypeID1').Value:=StrToInt(Trim(E_FDepBalanceTypeID.Text));
      qry.Parameters.FindParam('FProductID1').Value:=StrToInt(Trim(E_FProductID.Text));
      qry.Parameters.FindParam('FDepBalanceTypeID2').Value:=StrToInt(Trim(E_FDepBalanceTypeID.Text));
      qry.Parameters.FindParam('FProductID2').Value:=StrToInt(Trim(E_FProductID.Text));
      qry.Open;
    finally
       ;
    end;

    If qry.RecordCount>0 then
    begin
      Mdata.CopyFromDataSet(qry);
      Mdata.Active:=True;
      Mdata.First;
      while not mData.eof do
      begin
        Mdata.Edit;
        Mdata['FMaterialBasePrice']:=0.0000;
        Mdata['FMaterialResizePrice']:=0.0000;
       // Mdata['FMaterialPrice']:=0.0000;
       // Mdata['FBalanceBasePrice']:=0.0000;
        Mdata.Post;
        Mdata.Next;
      end;
    end
    else
    begin
      try
        qry1.SQL.Text:='Select *,0.00000 as FMaterialBasePrice,0.00000 as FMaterialResizePrice,0.00000 as FMaterialPrice,'
                      +'FWorkPrice as FBalanceBasePrice  from V_BudgetJobPrice '
                      +'where FDepartmentID=:FDepartmentID and FProductID=:FProductID and FWorkCarryjobID=:FWorkCarryjobID';
        qry1.Parameters.FindParam('FDepartmentID').Value:=StrToInt(Trim(E_FDepartmentID.Text));
        qry1.Parameters.FindParam('FProductID').Value:=StrToInt(Trim(E_FProductID.Text));
        qry1.Parameters.FindParam('FWorkCarryjobID').Value:=StrToInt(Trim(E_FWorkCarryjobID.Text));
        qry1.Open;
      finally
         ;
      end;
      Mdata.CopyFromDataSet(qry1);
      Mdata.Active:=True;
      Mdata.First;
    end;
  end;

  cxGV.OptionsData.Editing:=True;
  FMaterialBasePrice.Options.Editing:=True;
  FMaterialResizePrice.Options.Editing:=True;
  qry.Free;
  qry1.Free;

end;

end.
