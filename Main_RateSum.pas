unit Main_RateSum;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FrmGridBass, ExtCtrls, StdCtrls, DsFancyButton, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  dxmdaset, cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid,
  cxTextEdit, cxDropDownEdit, cxCalendar, cxMaskEdit, cxContainer, cxLabel,
  cxDBLookupComboBox, ADODB, cxButtonEdit, Grids, DBGrids, ComCtrls, Comobj,
  cxLookAndFeelPainters, cxSpinEdit, cxCurrencyEdit, cxEditRepositoryItems,
  FR_DSet, FR_DBSet, FR_Class, ImgList, RzTabs, cxButtons, RzPanel,
  RzSplit, ToolWin, jpeg,RzShellDialogs,
  //ToolWin, ImgList, FR_DSet, FR_DBSet, FR_Class, cxRadioGroup, Buttons,
  cxGroupBox, cxCheckBox, //cxCurrencyEdit, RzPanel, RzSplit, RzTabs,IniFiles,
  TFlatPanelUnit, //cxLookAndFeelPainters, cxButtons, cxTimeEdit, jpeg,
  //cxEditRepositoryItems,// cxSpinEdit,
  Excel97,StrUtils;

type
  TFrm_RateSum = class(TFrm_GridBass)
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
    TS_Edit: TRzTabSheet;
    TB_Ref: TToolButton;
    TB_App: TToolButton;
    TB_Edit: TToolButton;
    TB_Del: TToolButton;
    PanelBkGnd: TPanel;
    Panel_button: TPanel;
    Bevel_button: TBevel;
    cxGrid: TcxGrid;
    cxGV: TcxGridDBTableView;
    FInteresrWay: TcxGridDBColumn;
    cxGL: TcxGridLevel;
    TB_Out: TToolButton;
    FBondsMan_3: TcxGridDBColumn;
    FItemNum: TcxGridDBColumn;
    FBondsMan_1: TcxGridDBColumn;
    FCustomer: TcxGridDBColumn;
    FIssueDate: TcxGridDBColumn;
    FIssueAmount: TcxGridDBColumn;
    FBondsWay: TcxGridDBColumn;
    FDuedate: TcxGridDBColumn;
    FListRate: TcxGridDBColumn;
    FBondsMan_4: TcxGridDBColumn;
    Image3: TImage;
    FLoanLimit: TcxGridDBColumn;
    FBondsMan_2: TcxGridDBColumn;
    EditRepository: TcxEditRepository;
    ImageComboLanguages: TcxEditRepositoryImageComboBoxItem;
    ImageComboCommunication: TcxEditRepositoryImageComboBoxItem;
    SpinItemYears: TcxEditRepositorySpinItem;
    DateItemStartWorkFrom: TcxEditRepositoryDateItem;
    FItemRate: TcxGridDBColumn;
    FBondsMan_5: TcxGridDBColumn;
    FYear: TcxGridDBColumn;
    FMonth: TcxGridDBColumn;
    FItemNameSort: TcxGridDBColumn;
    FAmount: TcxGridDBColumn;
    FLoanNum: TcxGridDBColumn;
    PC2_1: TPageControl;
    TS_Date: TTabSheet;
    MyTreeView_Loan: TTreeView;
    TBar_Sel: TToolBar;
    TB_Loan: TcxButton;
    TS_Write: TTabSheet;
    MyTreeView_FCustomer: TTreeView;
    ToolBar5: TToolBar;
    TB_Customer: TcxButton;
    TS_DesignLeader: TTabSheet;
    MyTreeView_LoanOfficer: TTreeView;
    ToolBar6: TToolBar;
    TB_LoanOfficer: TcxButton;
    FRateDay: TcxGridDBColumn;
    FStartDate: TcxGridDBColumn;
    FEndDate: TcxGridDBColumn;
    FRefundAmount: TcxGridDBColumn;
    FRefundDate: TcxGridDBColumn;
    E_FStartDate: TcxDateEdit;
    Label7: TLabel;
    E_FEndDate: TcxDateEdit;
    FLoanAmount: TcxGridDBColumn;
    FDate: TcxGridDBColumn;
    FDay: TcxGridDBColumn;
    Fhousehold: TcxGridDBColumn;
    FLoanSort: TcxGridDBColumn;
    FRelevance: TcxGridDBColumn;
    FRateAmount: TcxGridDBColumn;
    FProduct: TcxGridDBColumn;
    FInterest: TcxGridDBColumn;
    FRateType: TcxGridDBColumn;
    ToolButton2: TToolButton;
    StatusBar1: TStatusBar;
    SaveDialog1: TSaveDialog;
    ToolButton3: TToolButton;
    TB_Interest: TToolButton;
    FYetInterestAmount: TcxGridDBColumn;
    procedure FormResize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TB_EXITClick(Sender: TObject);
    procedure TB_DownClick(Sender: TObject);
    procedure TB_OutClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Set_Open;
    procedure Set_Close;
    procedure cxGVCustomDrawPartBackground(Sender: TcxGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxCustomGridCellViewInfo;
      var ADone: Boolean);
    procedure MyTreeView_FCustomerExpanding(Sender: TObject;
      Node: TTreeNode; var AllowExpansion: Boolean);
    procedure MyTreeView_FCustomerChange(Sender: TObject; Node: TTreeNode);
    procedure TB_CustomerClick(Sender: TObject);
    procedure MyTreeView_LoanExpanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure MyTreeView_LoanChange(Sender: TObject; Node: TTreeNode);
    procedure TB_LoanClick(Sender: TObject);
    procedure MyTreeView_LoanOfficerChange(Sender: TObject;
      Node: TTreeNode);
    procedure TB_LoanOfficerClick(Sender: TObject);
    procedure MyTreeView_LoanOfficerExpanding(Sender: TObject;
      Node: TTreeNode; var AllowExpansion: Boolean);
    procedure TB_PrinClick(Sender: TObject);
    procedure frReportBeginBand(Band: TfrBand);
    procedure frReportGetValue(const ParName: String;
      var ParValue: Variant);
    procedure ToolButton2Click(Sender: TObject);
    procedure TB_AppClick(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure TB_InterestClick(Sender: TObject);
  private
    ListItemFNumber,P_th:String;
    P_FProductID:Integer;
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
  Frm_RateSum: TFrm_RateSum;


implementation

uses FRMDATA, FRMMAIN, COMMON, FrmSelect, ProgBar, PROGRASS;

{$R *.dfm}
procedure TFrm_RateSum.Set_Open;
begin
  TB_Ref.Visible:=False;
  TB_App.Visible:=False;
  TB_Edit.Visible:=False;
  TB_Del.Visible:=False;
  MyTreeView_Loan.Enabled:=False;


  cxGV.OptionsData.Editing:=True;

  {FItemYear.Options.Editing:=True;
  FItemSort.Options.Editing:=True;
  FItemNo.Options.Editing:=True;
  FItemName.Options.Editing:=True;
  FItemAmount.Options.Editing:=True;
  FItemModel.Options.Editing:=True;
  FPactNo.Options.Editing:=True;
  FDesignLeader.Options.Editing:=True;
  FItemQry.Options.Editing:=True;

  }
end;

procedure TFrm_RateSum.Set_Close;
begin
  TB_Ref.Visible:=True;
  TB_App.Visible:=True;
  TB_Edit.Visible:=True;
  TB_Del.Visible:=True;
  MyTreeView_Loan.Enabled:=True;


  cxGV.OptionsData.Editing:=False;

end;

function TFrm_RateSum.DelRd: bool;
var
 qry: TADOQuery;
begin
  //result:=False;
  qry:=TADOQuery.Create(Self);
  qry.Connection:=mdlData.conn;
  try
    qry.SQL.Text:='Delete from T_Issue where FIssueID=:FIssueID';
    with qry.Parameters do
    begin
      FindParam('FIssueID').value:=mdata['FIssueID'];
    end;
    result:=qry.ExecSQL>=1;
  finally
    qry.Free;
  end;
end;

function TFrm_RateSum.AddRd: bool;
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
    qry.SQL.Text:='Insert into T_Issue(FItemNum,FLoanNum,FItemName,FIssueAmount,FIssueDate,FDueDate,FTimeLimit,FItemRate,FListRate '
                 +'values(:FItemNum,:FLoanNum,:FItemName,:FIssueAmount,:FIssueDate,:FDueDate,:FTimeLimit,:FItemRate,:FListRate )';
     mData.First;
     while not mData.eof do
     begin
       If (mData['FLoanNum']<>0) then
       begin
         If qry.Active then qry.Close;
         with qry.Parameters do
         begin
           FindParam('FItemNum').value:=mdata['FItemNum'];
           FindParam('FLoanNum').value:=mdata['FLoanNum'];
           FindParam('FItemName').value:=mdata['FItemName'];
           FindParam('FIssueAmount').value:=mdata['FIssueAmount'];
           FindParam('FIssueDate').value:=mdata['FIssueDate'];
           FindParam('FDueDate').value:=mdata['FDueDate'];
           FindParam('FTimeLimit').value:=mdata['FTimeLimit'];
           FindParam('FItemRate').value:=mdata['FItemRate'];
           FindParam('FListRate').value:=mdata['FListRate'];
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


function TFrm_RateSum.EditRd:bool;
var
  qry: TADOQuery;

begin
  qry:=TADOQuery.Create(Self);
  qry.Connection:=mdlData.conn;
  //result:=False;

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
    qry.SQL.Text:='Update T_Issue set FItemNum=:FItemNum,FLoanNum=:FLoanNum,FItemName=:FItemName,FIssueAmount=:FIssueAmount,FIssueDate=:FIssueDate,'
                 +'FDueDate=:FDueDate,FTimeLimit=:FTimeLimit,FItemRate=:FItemRate,FListRate=:FListRate '
                 +'where FIssueID=:FIssueID';
     mData.First;

     while not mData.eof do
     begin
       If (mData['FLoanNum']<>0) then
       begin
         If qry.Active then qry.Close;
         with qry.Parameters do
         begin
           FindParam('FItemNum').value:=mdata['FItemNum'];
           FindParam('FLoanNum').value:=mdata['FLoanNum'];
           FindParam('FItemName').value:=mdata['FItemName'];
           FindParam('FIssueAmount').value:=mdata['FIssueAmount'];
           FindParam('FIssueDate').value:=mdata['FIssueDate'];
           FindParam('FDueDate').value:=mdata['FDueDate'];
           FindParam('FTimeLimit').value:=mdata['FTimeLimit'];
           FindParam('FItemRate').value:=mdata['FItemRate'];
           FindParam('FListRate').value:=mdata['FListRate'];
           FindParam('FIssueID').value:=mdata['FIssueID'];
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


procedure TFrm_RateSum.FormResize(Sender: TObject);
begin
  inherited;
  L_title.Caption:='贷款查询';
  Self.Caption:='贷款查询';

end;

procedure TFrm_RateSum.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=cafree;
  Frm_RateSum:=nil;
end;

procedure TFrm_RateSum.TB_EXITClick(Sender: TObject);
begin
  inherited;
  self.Close;
end;

procedure TFrm_RateSum.TB_DownClick(Sender: TObject);
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

procedure TFrm_RateSum.TB_OutClick(Sender: TObject);
begin
  inherited;
  ExportToExcel(cxGrid,True,TRue);
end;

procedure TFrm_RateSum.FormCreate(Sender: TObject);
begin
  inherited;
  TB_App.Enabled:= mdlData.CheckFrmRights(TFrm_RateSum.ClassName,'新增');
  TB_Edit.Enabled:= mdlData.CheckFrmRights(TFrm_RateSum.ClassName,'修改');
  TB_Del.Enabled:= mdlData.CheckFrmRights(TFrm_RateSum.ClassName,'删除');
  TB_Prin.Enabled:= mdlData.CheckFrmRights(TFrm_RateSum.ClassName,'打印');
  TB_Out.Enabled:= mdlData.CheckFrmRights(TFrm_RateSum.ClassName,'导出');
  E_FStartDate.Date:=date();
  E_FEndDate.Date:=date();
end;

procedure TFrm_RateSum.FormShow(Sender: TObject);
begin
  inherited;
  TB_Ref.Click;
  TB_Loan.Click;
  TB_Customer.Click;
  TB_LoanOfficer.Click;
  E_FStartDate.Date:=date();
  E_FEndDate.Date:=date();  
end;

procedure TFrm_RateSum.cxGVCustomDrawPartBackground(Sender: TcxGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxCustomGridCellViewInfo;
  var ADone: Boolean);
//var   AViewInfo:string;
begin
  inherited;
 // AViewInfo.Text:='动态设置 GroupBox 的显示内容';
 // ACanvas.FillRect(AViewInfo.Bounds);


end;

procedure TFrm_RateSum.MyTreeView_FCustomerExpanding(Sender: TObject;
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

  qry.SQL.Text:='Select FNumber, FParentNumber,FName,'
               +'Isleaf from VT_Loan_Customer where FParentNumber= '''
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
    P.Flag := cNoLoadFlag;                            // 新节点，未加载标志
    with MyTreeView_FCustomer.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('Isleaf').value;
    end;
    qry.Next;
  end;

end;

procedure TFrm_RateSum.MyTreeView_FCustomerChange(Sender: TObject;
  Node: TTreeNode);
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
    If not MyItemList(qry,Mdata,'V_Loan','''锦丰小贷''+FCustomer+'';''+ltrim(FLoanNum)+'';''',ListItemFNumber,'''锦丰小贷''+FCustomer+'';''+ltrim(Cast(FLoanNum as varchar(20)))+'';''') then
    begin
      mdata.Open;
      cxGvColumn(cxGv,Mdata);
    end;
  end;


end;

procedure TFrm_RateSum.TB_CustomerClick(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If not TreeVeiwList(qry,MyTreeView_FCustomer,'VT_Loan_Customer') then
  begin
    Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;

end;

procedure TFrm_RateSum.MyTreeView_LoanExpanding(Sender: TObject;
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

  qry.SQL.Text:='Select FNumber, FParentNumber,FName,'
               +'Isleaf from VT_Loan where FParentNumber= '''
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
    P.Flag := cNoLoadFlag;                            // 新节点，未加载标志
    with MyTreeView_Loan.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('Isleaf').value;
    end;
    qry.Next;
  end;


end;

procedure TFrm_RateSum.MyTreeView_LoanChange(Sender: TObject;
  Node: TTreeNode);
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
    If not MyItemList(qry,Mdata,'V_Loan',
    '''锦丰小贷''+Fhousehold+'';''+FLoanNum+'';'''
    ,ListItemFNumber,
    '''锦丰小贷''+Fhousehold+'';''+FLoanNum+'';''') then
    begin
      mdata.Open;
      cxGvColumn(cxGv,Mdata);
    end;
  end;


end;

procedure TFrm_RateSum.TB_LoanClick(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If not TreeVeiwList(qry,MyTreeView_Loan,'VT_Loan') then
  begin
    Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;

end;

procedure TFrm_RateSum.MyTreeView_LoanOfficerChange(Sender: TObject;
  Node: TTreeNode);
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
    If not MyItemList(qry,Mdata,'V_Loan',
    '''锦丰小贷''+FLoanOfficer+'';''+FCustomer+'';''+ltrim(FLoanNum)+'';'''
    ,ListItemFNumber,
    '''锦丰小贷''+FLoanOfficer+'';''+FCustomer+'';''+ltrim(Cast(FLoanNum as varchar(20)))+'';''') then
    begin
      mdata.Open;
      cxGvColumn(cxGv,Mdata);
    end;
  end;


end;

procedure TFrm_RateSum.TB_LoanOfficerClick(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If not TreeVeiwList(qry,MyTreeView_LoanOfficer,'VT_Loan_LoanOfficer') then
  begin
    Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;


end;

procedure TFrm_RateSum.MyTreeView_LoanOfficerExpanding(Sender: TObject;
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

  qry.SQL.Text:='Select FNumber, FParentNumber,FName,'
               +'Isleaf from VT_Loan_LoanOfficer where FParentNumber= '''
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
    P.Flag := cNoLoadFlag;                            // 新节点，未加载标志
    with MyTreeView_LoanOfficer.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('Isleaf').value;
    end;
    qry.Next;
  end;


end;

procedure TFrm_RateSum.TB_PrinClick(Sender: TObject);
begin
  inherited;
  FrReport.LoadFromFile(ExtractFileDir(Application.ExeName)+'\Report_MonthRate.frf.frf');
  FrReport.ShowReport;
  
end;

procedure TFrm_RateSum.frReportBeginBand(Band: TfrBand);
begin
  inherited;
{  if Band.Name='dtFooter' then
  begin
    If (mdata.RecordCount mod 20)>0 then
      frReport.Dictionary.Variables['n']:=20-(mdata.RecordCount mod 20)-1
    else
      frReport.Dictionary.Variables['n']:=0;
  end;
  }
end;

procedure TFrm_RateSum.frReportGetValue(const ParName: String;
  var ParValue: Variant);
begin
  inherited;
  If ParName='UserName' then
    ParValue:=UserName;
  If ParName='FStartDate' then
    ParValue:=E_FStartDate.Date;
  If ParName='FEndDate' then
    ParValue:=E_FEndDate.Date;


end;

procedure TFrm_RateSum.ToolButton2Click(Sender: TObject);
var
  proc:TADOStoredProc;
  P_Retinf:String;

  Query_Sp:TADOStoredProc;
  i,k,s,ReNum,ReNumLoop,R_Count,n:Integer;
  ExcelApp,MyWorkBook,mysheet: Variant;
  filepath,savefilepath,Sqlstr,copystart,copyend,copystart1,aa,ty:string;
  ListQry:Tadoquery;
begin
    filepath:=Extractfilepath(application.ExeName)+'应收利息.xls';
    SaveDialog1.FileName:='应收利息'+ForMatDateTime('yyyymmdd',E_FEndDate.Date);
    SaveDialog1.Filter:='.xls';
    SaveDialog1.Execute;

    if (ForMatDateTime('yyyymm',E_FEndDate.Date)<>'') Or (ForMatDateTime('yyyymm',E_FEndDate.Date)<>Null) then
        savefilepath:=SaveDialog1.FileName+'.xls';

    if FileExists(savefilepath) then
    begin
      DeleteFile(savefilepath) ;
    end;

    StatusBar1.Panels[5].text:='正在导出应收利息:'+ForMatDateTime('yyyymmdd',E_FEndDate.Date)+'的信息..请稍等!!';
    ExcelApp:= CreateOleObject('Excel.Application' );
    MyWorkBook:=ExcelApp.WorkBooks.Open( filepath );

    for n:=1 to MyWorkBook.Sheets.Count do
    begin
      If n=1 then
         Ty:='正常';
      If n=2 then
         Ty:='逾期';
      If n=3 then
         Ty:='中途还款';
      If n=4 then
         Ty:='%';
      proc:=TADOStoredProc.Create(self);
      proc.ConnectionString:=mdlData.ReadConnStr;
      proc.CommandTimeout:=500;
      try
        proc.ProcedureName:='P_Rate_Sum;1';
        with proc.Parameters.AddParameter do
        begin
          DataType := ftDateTime;
          Direction := pdinput;
          size:=20;
          name := '@FStartDate';
          value:=E_FStartDate.Date;
        end;
        with proc.Parameters.AddParameter do
        begin
          DataType := ftDateTime;
          Direction := pdinput;
          size:=20;
          name := '@FEndDate';
          value:=E_FEndDate.Date;
        end;
        with proc.Parameters.AddParameter do
        begin
          DataType := ftString;
          Direction := pdinput;
          size:=20;
          name := '@FRateType';
          value:=ty;
        end;
        proc.Open;
      finally
         ;
      end;
      mdata.Close;
      mdata.CopyFromDataSet(proc);

      Mdata.Active:=True;
      DS_Mdata.DataSet:=Mdata;
      cxGV.DataController.DataSource:=DS_Mdata;
      cxGvColumn(cxGv,mdata);

      MyWorkBook.WorkSheets[Ty].Activate;  //激活工作珍

      MyWorkBook.WorkSheets[Ty].Cells[1,1].Value:=AnsiReplaceStr(MyWorkBook.WorkSheets[Ty].Cells[1,1].Value,'A',ForMatDateTime('yyyy年mm月dd日',E_FEndDate.Date)); //日期
      MyWorkBook.WorkSheets[Ty].Cells[3,3].Value:=AnsiReplaceStr(MyWorkBook.WorkSheets[Ty].Cells[3,3].Value,'B',ForMatDateTime('yyyy年mm月dd日',E_FStartDate.Date)); //日期
      MyWorkBook.WorkSheets[Ty].Cells[3,3].Value:=AnsiReplaceStr(MyWorkBook.WorkSheets[Ty].Cells[3,3].Value,'C',ForMatDateTime('yyyy年mm月dd日',E_FEndDate.Date)); //日期

      i:=5;
      StatusBar1.Panels[5].text:='正在导出应收利息:'+ForMatDateTime('yyyymmdd',E_FEndDate.Date)+'的明细信息..请稍等!!';
      copystart:='A'+IntToStr(i);
      if Mdata.recordcount>0 then
      Begin
        if Mdata.recordcount>1 then
        Begin
          copystart:='A'+IntToStr(i);
          copystart1:='A'+IntToStr(i+1);
          copyend:='O'+IntToStr(i);
          ReNum:=Mdata.recordcount-1;
          while ReNum>0 do
          Begin
            ExcelApp.ActiveSheet.Range[copystart+':'+copyend].Copy;
            ExcelApp.ActiveSheet.Rows[i+1].Insert;
            ExcelApp.ActiveSheet.Range[copystart1].PasteSpecial;
            Renum:=Renum-1;
          end;
        End
        else
        Begin
          R_Count:=Mdata.recordcount;
        end;
        Mdata.first;
        K:=0 ;
        while not Mdata.eof do
        Begin
          MyWorkBook.WorkSheets[Ty].Cells[i,1].Value := inttostr(K+1); //序号
          MyWorkBook.WorkSheets[Ty].Cells[i,2].Value := Mdata.FieldByName('FLoanNum').AsString;//贷款帐号
          MyWorkBook.WorkSheets[Ty].Cells[i,3].Value := Mdata.FieldByName('FCustomer').AsString; //借款人
          MyWorkBook.WorkSheets[Ty].Cells[i,4].Value := Mdata.FieldByName('FRateAmount').AsString; //贷款金额
          MyWorkBook.WorkSheets[Ty].Cells[i,5].Value := Mdata.FieldByName('FStartDate').AsString; //起息日
          MyWorkBook.WorkSheets[Ty].Cells[i,6].Value := Mdata.FieldByName('FEndDate').AsString; //结息日
          MyWorkBook.WorkSheets[Ty].Cells[i,7].Value := Mdata.FieldByName('FIssueDate').AsString; //借款日期
          MyWorkBook.WorkSheets[Ty].Cells[i,8].Value := Mdata.FieldByName('FDuedate').AsString; //到期日期
          MyWorkBook.WorkSheets[Ty].Cells[i,9].Value := Mdata.FieldByName('FLoanLimit').AsString; //期限
          MyWorkBook.WorkSheets[Ty].Cells[i,10].Value := Mdata.FieldByName('FItemRate').AsString; //利率
          MyWorkBook.WorkSheets[Ty].Cells[i,11].Value := Mdata.FieldByName('FRateDay').AsString; //天数
          MyWorkBook.WorkSheets[Ty].Cells[i,12].Value := Mdata.FieldByName('FProduct').AsString; //积数
          MyWorkBook.WorkSheets[Ty].Cells[i,13].Value := Mdata.FieldByName('FInterest').AsString; //利息
          MyWorkBook.WorkSheets[Ty].Cells[i,14].Value := Mdata.FieldByName('FRateType').AsString; //备注
          MyWorkBook.WorkSheets[Ty].Cells[i,15].Value := Mdata.FieldByName('FYetInterestAmount').AsString; //已收利息 
          i:=i+1;
          k:=k+1;
        End;
        MyWorkBook.WorkSheets[Ty].Cells[i,4].Value := '=SUM(D5:D'+IntToStr(i-1)+')'; //合计贷款金额
        MyWorkBook.WorkSheets[Ty].Cells[i,13].Value := '=SUM(M5:M'+IntToStr(i-1)+')'; //合计利息
      end;
      MyWorkBook.WorkSheets[Ty].Name:=MyWorkBook.WorkSheets[Ty].Name+ForMatDateTime('yyyy年mm月dd日',E_FEndDate.Date);//工作表改名
    end;

    StatusBar1.Panels[5].text:='应收利息:'+ForMatDateTime('yyyymmdd',E_FEndDate.Date)+'的信息导出完成!!';
    MyWorkBook.saveas(savefilepath);

    ExcelApp.Visible:=True;

    for n:=1 to MyWorkBook.Sheets.Count do
    begin
      MyWorkBook.WorkSheets[n].Activate;
      MyWorkBook.WorkSheets[n].PrintPreview;
    end;
    MyWorkBook.Close;

    ExcelApp.Quit;
    ExcelApp:=Unassigned;
    proc.Free;

end;

procedure TFrm_RateSum.TB_AppClick(Sender: TObject);
begin
  inherited;
  SaveDialog1.Execute;
  StatusBar1.Panels[5].text:=ExtractFilePath(SaveDialog1.FileName);

end;

procedure TFrm_RateSum.ToolButton3Click(Sender: TObject);
var
  proc:TADOStoredProc;
  P_Retinf:String;

  Query_Sp:TADOStoredProc;
  i,k,s,ReNum,ReNumLoop,R_Count,n:Integer;
  ExcelApp,MyWorkBook,mysheet,vLastSheet: Variant;
  filepath,savefilepath,Sqlstr,copystart,copyend,copystart1,aa,ty:string;
  ListQry,qry:Tadoquery;
begin
    filepath:=Extractfilepath(application.ExeName)+'收息通知.xls';
    SaveDialog1.FileName:='收息通知'+ForMatDateTime('yyyymmdd',E_FEndDate.Date);
    SaveDialog1.Filter:='.xls';
    SaveDialog1.Execute;

    if (ForMatDateTime('yyyymm',E_FEndDate.Date)<>'') Or (ForMatDateTime('yyyymm',E_FEndDate.Date)<>Null) then
        savefilepath:=SaveDialog1.FileName+'.xls';

    if FileExists(savefilepath) then
    begin
      DeleteFile(savefilepath) ;
    end;

    StatusBar1.Panels[5].text:='正在导出收息通知:'+ForMatDateTime('yyyymmdd',E_FEndDate.Date)+'的信息..请稍等!!';
    ExcelApp:= CreateOleObject('Excel.Application' );
    MyWorkBook:=ExcelApp.WorkBooks.Open( filepath );       //打开模版

      proc:=TADOStoredProc.Create(self);
      proc.ConnectionString:=mdlData.ReadConnStr;
      proc.CommandTimeout:=500;
      try
        proc.ProcedureName:='P_Rate_Sum;1';
        with proc.Parameters.AddParameter do
        begin
          DataType := ftDateTime;
          Direction := pdinput;
          size:=20;
          name := '@FStartDate';
          value:=E_FStartDate.Date;
        end;
        with proc.Parameters.AddParameter do
        begin
          DataType := ftDateTime;
          Direction := pdinput;
          size:=20;
          name := '@FEndDate';
          value:=E_FEndDate.Date;
        end;
        with proc.Parameters.AddParameter do
        begin
          DataType := ftString;
          Direction := pdinput;
          size:=20;
          name := '@FRateType';
          value:='';
        end;
        proc.Open;
      finally
         ;
      end;
      mdata.Close;
      mdata.CopyFromDataSet(proc);

      Mdata.Active:=True;
      DS_Mdata.DataSet:=Mdata;
      cxGV.DataController.DataSource:=DS_Mdata;
      cxGvColumn(cxGv,mdata);
      mdata.First;
      for  i:=1 to mdata.RecordCount do
      begin
        vLastSheet:=MyWorkBook.Sheets[MyWorkBook.Sheets.Count];
        MyWorkBook.Sheets[1].Copy(EmptyParam,vLastSheet);
        MyWorkBook.WorkSheets[i].Name:=IntToStr(i)+Mdata['FCustomer'];
        MyWorkBook.WorkSheets[i].Activate;

        MyWorkBook.WorkSheets[i].Cells[3,2].Value := Mdata['FCustomer']; //借 款 人
        MyWorkBook.WorkSheets[i].Cells[3,6].Value := Mdata['FLoanNum']; //贷款编码
        MyWorkBook.WorkSheets[i].Cells[4,2].Value := Mdata['FIssueAmount']; //贷款金额
        MyWorkBook.WorkSheets[i].Cells[4,6].Value := Mdata['FListRate']; //利    率
        MyWorkBook.WorkSheets[i].Cells[5,2].Value := MData['FInterest'];//金额
        MyWorkBook.WorkSheets[i].Cells[5,6].Value := Mdata['FRateDay']; //计息天数

        MyWorkBook.WorkSheets[i].Cells[4,4].Value:=AnsiReplaceStr(MyWorkBook.WorkSheets[i].Cells[4,4].Value,'A',Mdata['FIssueDate']);
        MyWorkBook.WorkSheets[i].Cells[4,4].Value:=AnsiReplaceStr(MyWorkBook.WorkSheets[i].Cells[4,4].Value,'B',Mdata['FDueDate']);
        MyWorkBook.WorkSheets[i].Cells[5,4].Value:=AnsiReplaceStr(MyWorkBook.WorkSheets[i].Cells[5,4].Value,'C',Mdata['FStartDate']);
        MyWorkBook.WorkSheets[i].Cells[5,4].Value:=AnsiReplaceStr(MyWorkBook.WorkSheets[i].Cells[5,4].Value,'D',Mdata['FEndDate']);
        MyWorkBook.WorkSheets[i].Cells[6,5].Value:=AnsiReplaceStr(MyWorkBook.WorkSheets[i].Cells[6,5].Value,'E',Mdata['FLoanOfficer']); //信贷员
        mdata.Next;
      end;

    StatusBar1.Panels[5].text:='收息通知:'+ForMatDateTime('yyyymmdd',E_FEndDate.Date)+'的信息导出完成!!';
    MyWorkBook.saveas(savefilepath);

    ExcelApp.Visible:=True;

    {for n:=1 to MyWorkBook.Sheets.Count do
    begin
      MyWorkBook.WorkSheets[n].Activate;
      MyWorkBook.WorkSheets[n].PrintPreview;
    end;   }

    MyWorkBook.Close;

    ExcelApp.Quit;
    ExcelApp:=Unassigned;
    proc.Free;


end;

procedure TFrm_RateSum.TB_InterestClick(Sender: TObject);
Var
  proc:TADOStoredProc;
begin
  inherited;
      proc:=TADOStoredProc.Create(self);
      proc.ConnectionString:=mdlData.ReadConnStr;
      proc.CommandTimeout:=500;
      try
        proc.ProcedureName:='P_Rate_Sum;1';
        with proc.Parameters.AddParameter do
        begin
          DataType := ftDateTime;
          Direction := pdinput;
          size:=20;
          name := '@FStartDate';
          value:=E_FStartDate.Date;
        end;
        with proc.Parameters.AddParameter do
        begin
          DataType := ftDateTime;
          Direction := pdinput;
          size:=20;
          name := '@FEndDate';
          value:=E_FEndDate.Date;
        end;
        with proc.Parameters.AddParameter do
        begin
          DataType := ftString;
          Direction := pdinput;
          size:=20;
          name := '@FRateType';
          value:='';
        end;
        proc.Open;
      finally
         ;
      end;
      mdata.Close;
      mdata.CopyFromDataSet(proc);

      Mdata.Active:=True;
      DS_Mdata.DataSet:=Mdata;
      cxGV.DataController.DataSource:=DS_Mdata;
      cxGvColumn(cxGv,mdata);


end;

end.
