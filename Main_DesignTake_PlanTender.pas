unit Main_DesignTake_PlanTender;

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
  jpeg, cxLookAndFeelPainters, cxButtons, cxMemo, Menus, ActnList;

type
    TFrm_DesignTake_PlanTender = class(TFrm_GridBass)
    ImageList: TImageList;
    frReport: TfrReport;
    frDBDataSet: TfrDBDataSet;
    PC_1: TRzPageControl;
    TS_Take: TRzTabSheet;
    RzSizePanel2: TRzSizePanel;
    Panel1: TPanel;
    TS_PlanTender: TRzTabSheet;
    ToolBar_PlanTender: TToolBar;
    TB_App: TToolButton;
    TB_Edit: TToolButton;
    TB_Del: TToolButton;
    ToolButton14: TToolButton;
    TB_Print: TToolButton;
    ToolButton17: TToolButton;
    TB_EXIT: TToolButton;
    RzSizePanel1: TRzSizePanel;
    Panel5: TPanel;
    MData_PlanTenderList: TdxMemData;
    DS_Mdata_PlanTenderList: TDataSource;
    TB_Audit: TToolButton;
    DS_Mdata_PlanTender: TDataSource;
    MData_PlanTender: TdxMemData;
    actionList: TActionList;
    Act_App: TAction;
    Act_Edit: TAction;
    Act_Del: TAction;
    Act_Out: TAction;
    Act_Audit: TAction;
    Act_Status: TAction;
    TB_Submit: TToolButton;
    TB_Check: TToolButton;
    TB_PushDown: TToolButton;
    Act_Submit: TAction;
    Act_Check: TAction;
    Act_PushDown: TAction;
    Act_SetOpen: TAction;
    Act_SetClose: TAction;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    cxGrid_PlanTender: TcxGrid;
    cxGV_PlanTender: TcxGridDBTableView;
    FPlanTenderNum_PlanTender: TcxGridDBColumn;
    FPlanTenderDate_PlanTender: TcxGridDBColumn;
    FPlanTenderReMark_PlanTender: TcxGridDBColumn;
    FPlanTenderWrite_PlanTender: TcxGridDBColumn;
    FPlanTenderWriteDate_PlanTender: TcxGridDBColumn;
    FPlanTenderAudit_PlanTender: TcxGridDBColumn;
    FPlanTenderAuditDate_PlanTender: TcxGridDBColumn;
    FPlanTenderID_PlanTender: TcxGridDBColumn;
    cxGL_PlanTender: TcxGridLevel;
    MData_TakeList: TdxMemData;
    MData_TakeListth: TStringField;
    MData_TakeListmc: TStringField;
    MData_TakeListgg: TStringField;
    MData_TakeListFSumQry: TIntegerField;
    MData_TakeListFTakeDemand: TStringField;
    MData_TakeListFTakeListReMark: TStringField;
    MData_TakeListFSumSuttle: TFloatField;
    MData_TakeListFName: TStringField;
    MData_TakeListFModel: TStringField;
    MData_TakeListUnitName: TStringField;
    MData_TakeListFNumber: TStringField;
    MData_TakeListFk3Name: TStringField;
    MData_TakeListFK3Model: TStringField;
    MData_TakeListFOrderNoQry: TIntegerField;
    DS_Mdata_TakeList: TDataSource;
    DS_Mdata_TakeItem: TDataSource;
    MData_TakeItem: TdxMemData;
    MData_TakeItemFTakeID: TIntegerField;
    MData_TakeItemFTakeDate: TDateField;
    MData_TakeItemFItemListId: TIntegerField;
    MData_TakeItemFBranchFileNo: TStringField;
    MData_TakeItemFTakeWrite: TStringField;
    MData_TakeItemFTakeWriteDate: TDateTimeField;
    MData_TakeItemFItemNumber: TStringField;
    FPlanTenderNo_PlanTender: TcxGridDBColumn;
    Act_Set_MaxNum: TAction;
    Act_Set_MaxID: TAction;
    PC_Tree: TPageControl;
    TS_Item: TTabSheet;
    TS_Write: TTabSheet;
    MyTreeView_Item: TTreeView;
    MyTreeView_Write: TTreeView;
    ToolBar1: TToolBar;
    TB_Ref_Write: TcxButton;
    Act_Ref_Take: TAction;
    Act_Ref_Item: TAction;
    ToolBar4: TToolBar;
    TB_Ref_Item: TcxButton;
    MData_TakeItemFPlanTenderDate: TDateField;
    RSP_List: TRzSizePanel;
    PageControl2: TPageControl;
    TabSheet3: TTabSheet;
    TBar_Sel: TToolBar;
    TB_Sel: TcxButton;
    cxGrid_PlanTenderList: TcxGrid;
    cxGV_PlanTenderList: TcxGridDBTableView;
    FPlanTenderListNum_PlanTenderList: TcxGridDBColumn;
    FPlanTenderNum_PlanTenderList: TcxGridDBColumn;
    FPlanTenderDate_PlanTenderList: TcxGridDBColumn;
    FPlanTenderListDate_PlanTenderList: TcxGridDBColumn;
    FNumber_PlanTenderList: TcxGridDBColumn;
    FTakeName_PlanTenderList: TcxGridDBColumn;
    FTakeModel_PlanTenderList: TcxGridDBColumn;
    FTakeUnitName_PlanTenderList: TcxGridDBColumn;
    FTenderCoeQry_PlanTenderList: TcxGridDBColumn;
    FOrderQry_PlanTenderList: TcxGridDBColumn;
    FPlanTenderOrder_PlanTenderList: TcxGridDBColumn;
    FPlanTenderOrderID_PlanTenderList: TcxGridDBColumn;
    FOrderPrice_PlanTenderList: TcxGridDBColumn;
    FTaxRate_PlanTenderList: TcxGridDBColumn;
    FOrderAmount_PlanTenderList: TcxGridDBColumn;
    FSupplierName_PlanTenderList: TcxGridDBColumn;
    FPaymentMode_PlanTenderList: TcxGridDBColumn;
    FOrderNum_PlanTenderList: TcxGridDBColumn;
    FOrderListReMark_PlanTenderList: TcxGridDBColumn;
    FOrderDate_PlanTenderList: TcxGridDBColumn;
    FPlanTenderListReMark_PlanTenderList: TcxGridDBColumn;
    FClientShortName_PlanTenderList: TcxGridDBColumn;
    FBranchFileNo_PlanTenderList: TcxGridDBColumn;
    sumFOrderAmount_PlanTenderList: TcxGridDBColumn;
    FPrecastDate_PlanTenderList: TcxGridDBColumn;
    FFactDate_PlanTenderList: TcxGridDBColumn;
    FF_PlanTenderList: TcxGridDBColumn;
    FInvoice_PlanTenderList: TcxGridDBColumn;
    FStatusNotes_PlanTenderList: TcxGridDBColumn;
    FOrderStatus_PlanTenderList: TcxGridDBColumn;
    FTakeListID_PlanTenderList: TcxGridDBColumn;
    FItemID_PlanTenderList: TcxGridDBColumn;
    FSupplierID_PlanTenderList: TcxGridDBColumn;
    cxGL_PlanTenderList: TcxGridLevel;
    PageControl6: TPageControl;
    TabSheet2: TTabSheet;
    ToolBar5: TToolBar;
    TB_Ref_Take: TcxButton;
    MyTreeView_Take: TTreeView;
    FPlanTenderStatusNotes_PlanTender: TcxGridDBColumn;
    FTakeSumQry_PlanTenderList: TcxGridDBColumn;
    FPlanTenderQry_PlanTenderList: TcxGridDBColumn;
    E_FPlanTenderListDate: TcxDateEdit;
    L_FPlanTenderListDate: TLabel;
    FPlanTenderSubmitDate_PlanTender: TcxGridDBColumn;
    FPlanTenderCheck_PlanTender: TcxGridDBColumn;
    FPlanTenderCheckDate_PlanTender: TcxGridDBColumn;
    FPlanTenderPushDown_PlanTender: TcxGridDBColumn;
    FPlanTenderPushDownDate_PlanTender: TcxGridDBColumn;
    FPlanTenderStatus_PlanTender: TcxGridDBColumn;
    Act_Ref_Write: TAction;
    PM: TPopupMenu;
    MenuItem1: TMenuItem;
    N_Filter: TMenuItem;
    N_Sort: TMenuItem;
    N_Group: TMenuItem;
    N_Set: TMenuItem;
    MenuItem2: TMenuItem;
    Act_Menu: TAction;
    Act_Menu_Set: TAction;
    Act_TS_Take: TAction;
    Act_TS_Item: TAction;
    Act_TS_Write: TAction;
    ToolBar_Save: TPanel;
    OKBtn: TcxButton;
    CancelBtn: TcxButton;
    ToolBar3: TToolBar;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    TB_EXIT1: TToolButton;
    RzSizePanel3: TRzSizePanel;
    PageControl3: TPageControl;
    TabSheet5: TTabSheet;
    cxGrid_TakeItem: TcxGrid;
    cxGV_TakeItem: TcxGridDBTableView;
    FBranchFileNo_TakeItem: TcxGridDBColumn;
    FItemNumber_TakeItem: TcxGridDBColumn;
    FClientShortName_TakeItem: TcxGridDBColumn;
    FElectricNum_TakeItem: TcxGridDBColumn;
    FElectricName_TakeItem: TcxGridDBColumn;
    FTakeNumber_TakeItem: TcxGridDBColumn;
    FTakeNo_TakeItem: TcxGridDBColumn;
    FTakeAddNum_TakeItem: TcxGridDBColumn;
    FTakeReMark_TakeItem: TcxGridDBColumn;
    FTakeDate_TakeItem: TcxGridDBColumn;
    FTakeStatusNotes_TakeItem: TcxGridDBColumn;
    FDesignLeader_TakeItem: TcxGridDBColumn;
    FTakeWrite_TakeItem: TcxGridDBColumn;
    FTakeWriteDate_TakeItem: TcxGridDBColumn;
    FTakeSubmitDate_TakeItem: TcxGridDBColumn;
    FTakeCheck_TakeItem: TcxGridDBColumn;
    FTakeCheckDate_TakeItem: TcxGridDBColumn;
    FTakeAudit_TakeItem: TcxGridDBColumn;
    FTakeAuditDate_TakeItem: TcxGridDBColumn;
    FTakePushDown_TakeItem: TcxGridDBColumn;
    FTakePushDownDate_TakeItem: TcxGridDBColumn;
    FFinsh_TakeItem: TcxGridDBColumn;
    FFinshDate_TakeItem: TcxGridDBColumn;
    FTakeID_TakeItem: TcxGridDBColumn;
    FElectricID_TakeItem: TcxGridDBColumn;
    FTakeStatus_TakeItem: TcxGridDBColumn;
    FFileItemID_TakeItem: TcxGridDBColumn;
    cxGL_TakeItem: TcxGridLevel;
    PageControl4: TPageControl;
    TabSheet6: TTabSheet;
    cxGrid_TakeList: TcxGrid;
    cxGV_TakeList: TcxGridDBTableView;
    FTakeListNum_TakeList: TcxGridDBColumn;
    FNumber_TakeList: TcxGridDBColumn;
    FTakeName_TakeList: TcxGridDBColumn;
    FTakeModel_TakeList: TcxGridDBColumn;
    FTakeUnitName_TakeList: TcxGridDBColumn;
    FTakeQry_TakeList: TcxGridDBColumn;
    FTakeSumQry_TakeList: TcxGridDBColumn;
    FPlanTenderQry_TakeList: TcxGridDBColumn;
    FTenderCoeQry_TakeList: TcxGridDBColumn;
    FOrderQry_TakeList: TcxGridDBColumn;
    FTakeListReMark_TakeList: TcxGridDBColumn;
    FTakeDemand_TakeList: TcxGridDBColumn;
    FTakeNumber_TakeList: TcxGridDBColumn;
    FOrderID_TakeList: TcxGridDBColumn;
    FTakeListID_TakeList: TcxGridDBColumn;
    FItemNumber_TakeList: TcxGridDBColumn;
    cxGL_TakeList: TcxGridLevel;
    procedure FormResize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TB_EXIT1Click(Sender: TObject);
    procedure MyTreeView_TakeExpanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure MyTreeView_TakeChange(Sender: TObject; Node: TTreeNode);
    procedure TB_EXITClick(Sender: TObject);
    procedure OKBtnClick(Sender: TObject);
    procedure CancelBtnClick(Sender: TObject);
    procedure MyTreeView_ItemExpanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure MyTreeView_ItemChange(Sender: TObject; Node: TTreeNode);
    procedure TB_EditClick(Sender: TObject);
    procedure cxGrid1DBTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure ToolButton9Click(Sender: TObject);
    procedure cxGV2CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FOrderQryPropertiesEditValueChanged(Sender: TObject);
    procedure Act_AppExecute(Sender: TObject);
    procedure Act_EditExecute(Sender: TObject);
    procedure Act_DelExecute(Sender: TObject);
    procedure Act_AuditExecute(Sender: TObject);
    procedure Act_StatusExecute(Sender: TObject);
    procedure Act_SubmitExecute(Sender: TObject);
    procedure Act_CheckExecute(Sender: TObject);
    procedure Act_PushDownExecute(Sender: TObject);
    procedure Act_SetOpenExecute(Sender: TObject);
    procedure Act_SetCloseExecute(Sender: TObject);
    procedure TB_SelClick(Sender: TObject);
    procedure Act_Set_MaxNumExecute(Sender: TObject);
    procedure Act_Set_MaxIDExecute(Sender: TObject);
    procedure Act_Ref_ItemExecute(Sender: TObject);
    procedure TB_PrintClick(Sender: TObject);
    procedure FPlanTenderOrderPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FPlanTenderOrderPropertiesEditValueChanged(Sender: TObject);
    procedure cxGV_PlanTenderListCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure Act_Ref_TakeExecute(Sender: TObject);
    procedure cxGV_M2CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure MyTreeView_WriteExpanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure MyTreeView_WriteChange(Sender: TObject; Node: TTreeNode);
    procedure Act_Ref_WriteExecute(Sender: TObject);
    procedure cxGV_PlanTenderFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure MenuItem1Click(Sender: TObject);
    procedure N_FilterClick(Sender: TObject);
    procedure N_SortClick(Sender: TObject);
    procedure N_GroupClick(Sender: TObject);
    procedure N_SetClick(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure Act_MenuExecute(Sender: TObject);
    procedure Act_Menu_SetExecute(Sender: TObject);
    procedure cxGrid_PlanTenderContextPopup(Sender: TObject;
      MousePos: TPoint; var Handled: Boolean);
    procedure cxGrid_PlanTenderListContextPopup(Sender: TObject;
      MousePos: TPoint; var Handled: Boolean);
    procedure cxGrid_TakeItemContextPopup(Sender: TObject;
      MousePos: TPoint; var Handled: Boolean);
    procedure cxGrid_TakeListContextPopup(Sender: TObject;
      MousePos: TPoint; var Handled: Boolean);
    procedure cxGV_TakeItemFocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure Act_TS_TakeExecute(Sender: TObject);
    procedure Act_TS_ItemExecute(Sender: TObject);
    procedure Act_TS_WriteExecute(Sender: TObject);
    procedure cxGV_PlanTenderSelectionChanged(
      Sender: TcxCustomGridTableView);

  private

    ListItemFNumber_Take,ListItemFNumber_Item,ListItemFNumber_Write:String;
    P_th_Take,P_th_Item,P_th_Write:String;
    P_Isleaf_Take,P_Isleaf_Item,P_Isleaf_Write:Integer;
    P_List:string;
    P_i:boolean;
    P_MaxNum,P_MaxID,P_Isleaf:Integer;

    function AddMain:bool;
    function AddList:bool;
    function AddRd:bool;
    function EditRd:bool;
    function DelRd:bool;


  public
    { Public declarations }
  end;

var
  Frm_DesignTake_PlanTender: TFrm_DesignTake_PlanTender;
implementation

uses FRMDATA, COMMON, FrmSelect, ProgBar, PROGRASS;

{$R *.dfm}


function TFrm_DesignTake_PlanTender.AddRd: bool;
var
  qry:TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  result:=False;

  If mData_PlanTender.RecordCount<=0 then
  begin
    result:=True;
    Exit;
  end;

  mdlData.conn.BeginTrans;
  try
    if AddMain then  //1   主表新增
    begin
      result:=True;
      if AddList then //2    明细表新增
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
end;

function TFrm_DesignTake_PlanTender.EditRd:bool;
var
  qry:TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  result:=False;

  If mData_PlanTenderList.RecordCount<=0 then
  begin
    result:=True;
    Exit;
  end;

  mData_PlanTenderList.Edit;
  mData_PlanTenderList.Post;

  mdlData.conn.BeginTrans;
  try
    if DelRd then  //1  主表删除
    begin
      result:=True;
      if AddMain then //2   主表新增
      begin
        result:=True;
        if AddList then //3   附新增
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

function TFrm_DesignTake_PlanTender.DelRd: bool;
var
 qry: TADOQuery;
 a:Integer;
begin
  a:=mdata_PlanTender['FPlanTenderID'];
  qry:=TADOQuery.Create(Self);
  qry.Connection:=mdlData.conn;
  try
    qry.SQL.Text:='Delete from T_DesignTake_PlanTender where FPlanTenderID=:FPlanTenderID';
    with qry.Parameters do
    begin
      FindParam('FPlanTenderID').value:=mdata_PlanTender['FPlanTenderID'];
     // FindParam('FPlanTenderID').value:=a;
    end;
    result:=qry.ExecSQL>=1;
  finally
    qry.Free;
  end;
end;

function TFrm_DesignTake_PlanTender.AddMain: bool;
var
 qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If P_state=0 then
  begin
    Act_Set_MaxID.Execute;//取ID
    Act_Set_MaxNum.Execute;    //取单号
  end;

  Mdata_PlanTender.Edit;
  Mdata_PlanTender['FPlanTenderID']:=P_MaxID;;
  Mdata_PlanTender.post;

  try
    qry.SQL.Text:='Insert into T_DesignTake_PlanTender(FDepartmentID,FPlanTenderID,FPlanTenderNo,FPlanTenderDate,FPlanTenderReMark,FPlanTenderWriteID,FPlanTenderWriteDate,FPlanTenderStatus) '
                 +'values(:FDepartmentID,:FPlanTenderID,:FPlanTenderNo,:FPlanTenderDate,:FPlanTenderReMark,:FPlanTenderWriteID,:FPlanTenderWriteDate,:FPlanTenderStatus)';
   with qry.Parameters do
   begin
     FindParam('FDepartmentID').value:=UserFDepartmentID;
     If P_state=0 then  //新增
     begin
        FindParam('FPlanTenderID').value:=P_MaxID;
        FindParam('FPlanTenderNo').value:=P_MaxNum;
     end;
     If P_state=1 then  //修改
     begin
        FindParam('FPlanTenderID').value:=Mdata_PlanTender['FPlanTenderID'];
        FindParam('FPlanTenderNo').value:=Mdata_PlanTender['FPlanTenderNo'];
     end;
     FindParam('FPlanTenderDate').value:=Mdata_PlanTender['FPlanTenderDate'];
     FindParam('FPlanTenderReMark').value:=Mdata_PlanTender['FPlanTenderReMark'];
     FindParam('FPlanTenderWriteID').value:=UserNumID;
     FindParam('FPlanTenderWriteDate').value:=now();
     FindParam('FPlanTenderStatus').value:=0;
   end;
     result:=qry.ExecSQL>=1;
   finally
     qry.Free;
   end;

end;


function TFrm_DesignTake_PlanTender.AddList: bool;
var
  qry,qry1: TADOQuery;
  i: integer;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.EnableBCD:=False;//小数位数>4
  qry.CommandTimeout:=500;
  result:=False;

  If mData_PlanTenderList.RecordCount<=0 then
  begin
    result:=True;
    Exit;
  end;

  try

    qry.SQL.Text:='Insert into T_DesignTake_PlanTenderList(FPlanTenderID,FTakeListID,FPlanTenderOrderID,FPlanTenderListNum,FPlanTenderListDate,FPlanTenderQry,FPlanTenderListReMark) '
                 +'values(:FPlanTenderID,:FTakeListID,:FPlanTenderOrderID,:FPlanTenderListNum,:FPlanTenderListDate,:FPlanTenderQry,:FPlanTenderListReMark)';

    mData_PlanTenderList.First;
    i:=1;
    while not mData_PlanTenderList.eof do
    begin
      If (mData_PlanTenderList['FTakeListID']<>0) then
      begin
        If qry.Active then qry.Close;
        If P_state=0 then  //新增
           qry.Parameters.FindParam('FPlanTenderID').value:= P_MaxID;
        If P_state=1 then  //修改
          qry.Parameters.FindParam('FPlanTenderID').value:=Mdata_PlanTender['FPlanTenderID'];

        qry.Parameters.FindParam('FTakeListID').value:= mData_PlanTenderList['FTakeListID'];
        qry.Parameters.FindParam('FPlanTenderOrderID').value:= mData_PlanTenderList['FPlanTenderOrderID'];
        qry.Parameters.FindParam('FPlanTenderListNum').value:=i;
        qry.Parameters.FindParam('FPlanTenderListDate').value:=mData_PlanTenderList['FPlanTenderListDate'];
        qry.Parameters.FindParam('FPlanTenderQry').value:=mData_PlanTenderList['FPlanTenderQry'];
        qry.Parameters.FindParam('FPlanTenderListReMark').value:=mData_PlanTenderList['FPlanTenderListReMark'];
        result:=qry.ExecSQL>=1;
        if not result then break;
      end;
        mData_PlanTenderList.Next;
        i:=i+1;
     end;
   finally
     qry.Free;
   end;
end;


procedure TFrm_DesignTake_PlanTender.FormResize(Sender: TObject);
begin
  inherited;
  Act_Ref_Item.Execute;
  Act_Ref_Write.Execute;
  Act_Ref_Take.Execute;
  TS_Take.TabEnabled:=False;
  L_title.Caption:=UserFDepartmentName+'招标申请单';
  Self.Caption:=UserFDepartmentName+'招标申请单';
end;

procedure TFrm_DesignTake_PlanTender.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=cafree;
  Frm_DesignTake_PlanTender:=nil;
end;

procedure TFrm_DesignTake_PlanTender.TB_EXIT1Click(Sender: TObject);
begin
  inherited;
  PC_1.ActivePage:=TS_PlanTender;
  TS_Take.TabEnabled:=False;
  TS_PlanTender.TabEnabled:=True;
end;

procedure TFrm_DesignTake_PlanTender.MyTreeView_TakeExpanding(Sender: TObject;
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

  qry.SQL.Text:='Select * from VT_DesignTake_Sel with(nolock) where FParentNumber= '''
               +PTree(Node.Data).ID+''' ';
  qry.open;

  PTree(Node.Data).Flag := cLoadFlag;   // 设置已加载标志
  while not qry.Eof do
  begin
    New(P);
    P.ID := qry.FieldByName('FNumber').AsString;
    P.ParentID := qry.FieldByName('FParentNumber').AsString;
    P.FNumber:=qry.FieldByName('FNumber').AsString;
    P.Isleaf := qry.FieldByName('Isleaf').Value;
    P.Caption := qry.FieldByName('FName').AsString;
    P.Isleaf := qry.FieldByName('Isleaf').Value;

    P.Flag := cNoLoadFlag;                            // 新节点，未加载标志
    with MyTreeView_Take.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('Isleaf').value;
    end;
    qry.Next;
  end;

end;

procedure TFrm_DesignTake_PlanTender.MyTreeView_TakeChange(Sender: TObject;
  Node: TTreeNode);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If Node = nil then Exit;
  with PTree(Node.Data)^ do
  begin
    ListItemFNumber_Take:=trim(PTree(Node.Data).FNumber);
    P_th_Take:=PTree(Node.Data).Caption;
    P_Isleaf_Take:=PTree(Node.Data).Isleaf;

    Act_TS_Take.Execute;
    
  end;
end;

procedure TFrm_DesignTake_PlanTender.TB_EXITClick(Sender: TObject);
begin
  inherited;
  self.Close;

end;

procedure TFrm_DesignTake_PlanTender.OKBtnClick(Sender: TObject);
var qry: TADOQuery;

begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;

  mData_PlanTenderList.Edit;
  mData_PlanTenderList.Post;
//  If (Trim(mdata_M['FSupplierId'])='') or (Trim(mdata_M['FItem3003'])='') or (Trim(mdata_M['FPaymentMode'])='') then
 { If (Trim(mdata_M['FSupplierId'])='') or (Trim(mdata_M['FPaymentMode'])='') then
  begin
    application.MessageBox('关键字不能为空！请重新输入','系统提示',MB_ICONERROR);
    Exit;
  end;
      }
  mData_PlanTenderList.Edit;
  mData_PlanTenderList.Post;
  mData_PlanTenderList.First;
  while not mData_PlanTenderList.eof do
  begin
    If (mData_PlanTenderList['FPlanTenderOrderID']=0)  then
    begin
      application.MessageBox('采购经理不能为空！请重新输入','系统提示',MB_ICONERROR);
      Exit;
    end;
    mData_PlanTenderList.Next;
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

procedure TFrm_DesignTake_PlanTender.CancelBtnClick(Sender: TObject);
begin
  inherited;
  P_state :=2;//不在新增、修改状态
  Act_SetClose.Execute;
end;

procedure TFrm_DesignTake_PlanTender.MyTreeView_ItemExpanding(Sender: TObject;
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

  qry.SQL.Text:='Select FNumber, FParentNumber,FName,FNumber,'
               +'Isleaf from VT_DesignTake_PlanTender with(nolock) where FParentNumber= '''
               +PTree(Node.Data).ID+''' '
               +' order by FNumber';
  qry.open;

  PTree(Node.Data).Flag := cLoadFlag;   // 设置已加载标志
  while not qry.Eof do
  begin
    New(P);
    P.ID := qry.FieldByName('FNumber').AsString;
    P.ParentID := qry.FieldByName('FParentNumber').AsString;
    P.FNumber:=qry.FieldByName('FNumber').AsString;
    P.Isleaf := qry.FieldByName('Isleaf').Value;
    P.Caption := qry.FieldByName('FName').AsString;
    P.Flag := cNoLoadFlag;                            // 新节点，未加载标志
    with MyTreeView_Item.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('Isleaf').value;
    end;
    qry.Next;
  end;

end;

procedure TFrm_DesignTake_PlanTender.MyTreeView_ItemChange(Sender: TObject;
  Node: TTreeNode);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If Node = nil then Exit;
  with PTree(Node.Data)^ do
  begin
    ListItemFNumber_Item:=trim(PTree(Node.Data).FNumber);
    P_th_Item:=PTree(Node.Data).Caption;
    P_Isleaf_Item:=PTree(Node.Data).Isleaf;

    Act_TS_Item.Execute;//页选项设置
    Act_Status.Execute; //权限设置

  end;
end;

procedure TFrm_DesignTake_PlanTender.TB_EditClick(Sender: TObject);
begin
  inherited;
  P_state :=1;
  If (mData_PlanTenderList.RecordCount<1) then
    Exit;
  cxGV_PlanTenderList.DataController.DataSource:=DS_Mdata_PlanTenderList;
  cxGvColumn(cxGv_PlanTenderList,mData_PlanTenderList);
  Act_SetOpen.Execute;


end;

procedure TFrm_DesignTake_PlanTender.cxGrid1DBTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
var
  ADisplayStyle :TcxStyle;
begin
  ADisplayStyle :=TcxStyle.Create(Self);
  try
    if ARecord.Values[1]=320000 then
    begin
      ADisplayStyle.Color :=clYellow;
      //ADisplayStyle.Font.Color :=clBlack;
      //ADisplayStyle.Font.Color :=clYellow;
      AStyle :=ADisplayStyle;
    end ;
  finally
    ADisplayStyle.Free;
  end;


end;

procedure TFrm_DesignTake_PlanTender.ToolButton9Click(Sender: TObject);
var  i,j,n: integer;
     Insertbz:boolean;
begin
  inherited;
  mData_PlanTenderList.Open;
  mData_PlanTenderList.First;
  for i:=0 to cxGV_TakeList.DataController.Controller.SelectedRecordCount-1 do
  begin
    Insertbz:=false;
    j:=cxGV_TakeList.DataController.GetSelectedRowIndex(i);
    while not mData_PlanTenderList.eof  do
    begin
      If mData_PlanTenderList['FTakeListID']<>cxGV_TakeList.DataController.GetValue(J,14) then
      begin
         mData_PlanTenderList.Next;
      end
      else
      begin
        application.MessageBox('记录重复选！请重新选择','系统提示',MB_ICONERROR);
        Exit;
      end;
    end
  end;

  mData_PlanTenderList.Last;
  for i:=0 to cxGV_TakeList.DataController.Controller.SelectedRecordCount-1 do
  begin
    Insertbz:=True;
    j:=cxGV_TakeList.DataController.GetSelectedRowIndex(i);
    If (cxGV_TakeList.DataController.GetValue(J,14)<>0) then    //FTakeListID
    begin
      mData_PlanTenderList.Append;
      mData_PlanTenderList.Edit;
      mData_PlanTenderList['FTakeSumQry']:=cxGV_TakeList.DataController.GetValue(J,6);
      mData_PlanTenderList['FPlanTenderQry']:=cxGV_TakeList.DataController.GetValue(J,6)-cxGV_TakeList.DataController.GetValue(J,7);
      mData_PlanTenderList['FTenderCoeQry']:=cxGV_TakeList.DataController.GetValue(J,8);
      mData_PlanTenderList['FOrderQry']:=cxGV_TakeList.DataController.GetValue(J,9);
      mData_PlanTenderList['FNumber']:=cxGV_TakeList.DataController.GetValue(J,1);
      mData_PlanTenderList['FTakeName']:=cxGV_TakeList.DataController.GetValue(J,2);
      mData_PlanTenderList['FTakeModel']:=cxGV_TakeList.DataController.GetValue(J,3);
      mData_PlanTenderList['FTakeUnitName']:=cxGV_TakeList.DataController.GetValue(J,4);
      mData_PlanTenderList['FTakeListID']:=cxGV_TakeList.DataController.GetValue(J,14);
      mData_PlanTenderList['FPlanTenderListDate']:=E_FPlanTenderListDate.Date;
      mData_PlanTenderList['FPlanTenderOrder']:=UserNum;
      mData_PlanTenderList['FPlanTenderOrderID']:=UserNumID;
      mData_PlanTenderList['FPlanTenderDate']:=Mdata_PlanTender['FPlanTenderDate'];
      mData_PlanTenderList['FPlanTenderNum']:=Mdata_PlanTender['FPlanTenderNum'];
      mData_PlanTenderList.Post;
      Insertbz:=False;
    end;
    if Insertbz then break;
  end;
  cxGV_TakeList.DataController.DeleteSelection;   //多行删除
  PC_1.ActivePage:=TS_PlanTender;
  TS_Take.TabEnabled:=False;
  TS_PlanTender.TabEnabled:=True;

end;

procedure TFrm_DesignTake_PlanTender.cxGV2CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;

  if cxGV_TakeList.Controller.FocusedRowIndex=AViewInfo.RecordViewInfo.Index  then  //是否是选中行
     ACanvas.Canvas.Font.Color:=clHotLight
  else
  if StrToFloat(AViewInfo.GridRecord.DisplayTexts[FTakeSumQry_TakeList.Index])=StrToFloat(AViewInfo.GridRecord.DisplayTexts[FPlanTenderQry_TakeList.Index]) then    //设置行颜色
  begin
    ACanvas.Canvas.brush.Color := clInactiveCaptionText;
    ACanvas.FillRect(AViewInfo.Bounds);
  end;


end;

procedure TFrm_DesignTake_PlanTender.FormCreate(Sender: TObject);
begin
  inherited;
  P_state :=2;//不在新增、修改状态
  Act_App.Visible:= mdlData.CheckFrmRights(TFrm_DesignTake_PlanTender.ClassName,'新增');
  TB_Print.Visible:= mdlData.CheckFrmRights(TFrm_DesignTake_PlanTender.ClassName,'打印');


  TS_Write.TabVisible:= mdlData.CheckFrmRights(TFrm_DesignTake_PlanTender.ClassName,'新增');
  TS_Item.TabVisible:= mdlData.CheckFrmRights(TFrm_DesignTake_PlanTender.ClassName,'校对');
  If mdlData.CheckFrmRights(TFrm_DesignTake_PlanTender.ClassName,'校对') then
      TS_Item.TabVisible:=True;
  If mdlData.CheckFrmRights(TFrm_DesignTake_PlanTender.ClassName,'审核') then
      TS_Item.TabVisible:=True;

end;

procedure TFrm_DesignTake_PlanTender.FOrderQryPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  mData_PlanTenderList.Edit;
end;

procedure TFrm_DesignTake_PlanTender.Act_AppExecute(Sender: TObject);
var
 i:Integer;
 qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  P_state :=0;     //新增
  L_title.Caption:='招标申请信息新增';

  PageControl2.Visible:=True;

  //主表新增
  try
    qry.SQL.Text:='Select * from V_DesignTake_PlanTender with(nolock) where FPlanTenderID=:FPlanTenderID';
    qry.Parameters.FindParam('FPlanTenderID').value:= 0;
    qry.Open;
  finally
    ;
  end;
  Mdata_PlanTender.CopyFromDataSet(qry);
  Mdata_PlanTender.Active:=True;
  Mdata_PlanTender.Edit;
  Mdata_PlanTender['FPlanTenderDate']:=date();
  Mdata_PlanTender.Post;

  Act_Set_MaxNum.Execute;    //取单号

  Mdata_PlanTender.Edit;
  Mdata_PlanTender['FPlanTenderNo']:=P_MaxNum;
  Mdata_PlanTender['FPlanTenderID']:=0;
  Mdata_PlanTender['FPlanTenderNum']:=ForMatDateTime('yyyymm',(date()))+Format('%.4d',[(P_MaxNum)]);
  Mdata_PlanTender['FPlanTenderStatus']:=0;
  Mdata_PlanTender['FPlanTenderStatusNotes']:='填单';
  Mdata_PlanTender['FPlanTenderDate']:=date();
  Mdata_PlanTender['FPlanTenderWrite']:=UserNum;
  Mdata_PlanTender['FPlanTenderWriteDate']:=date();
  Mdata_PlanTender.Post;

   //明细表
  try
    qry.SQL.Text:='Select * from V_DesignTake_PlanTenderList with(nolock) where FPlanTenderListID=:FPlanTenderListID';
    qry.Parameters.FindParam('FPlanTenderListID').value:= 0;
    qry.Open;
  finally
    ;
  end;
  mData_PlanTenderList.CopyFromDataSet(qry);
  mData_PlanTenderList.Active:=True;
  mData_PlanTenderList.Close;
  E_FPlanTenderListDate.Date:=date()+5;
  Act_SetOpen.Execute;
  Act_Ref_Take.Execute;

 { mData_PlanTenderList.Edit;
  mData_PlanTenderList['FPlanTenderNum']:=ForMatDateTime('yyyymm',(date()))+Format('%.4d',[(P_MaxNum)]);
  mData_PlanTenderList['FPlanTenderQry']:=0;
  mData_PlanTenderList['FTenderCoeQry']:=0;

  mData_PlanTenderList.Post;
  mData_PlanTenderList.First; }

end;

procedure TFrm_DesignTake_PlanTender.Act_EditExecute(Sender: TObject);
var
 qry:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  P_state :=1;
  If (mData_PlanTenderList.RecordCount<1) then
    Exit;
  Act_SetOpen.Execute;

end;

procedure TFrm_DesignTake_PlanTender.Act_DelExecute(Sender: TObject);
var
  qry:TADOQuery;
begin
  qry:=TAdoQuery.Create(self);
  qry.Connection:=mdlData.conn;
  P_th_Item:=mData_PlanTenderList['FPlanTenderNum'];

  If (Mdata_PlanTender.RecordCount<1) then
     Exit;

  If application.MessageBox(Pchar('警告：是否删除招标申请单号为：【'+P_th_Item+'】的数据？'+chr(13)+chr(13)
                           +'删除数据操作将不可恢复，确定要删除本单据吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
  If application.MessageBox(Pchar('警告：是否删除招标申请号为：【'+P_th_Item+'】的数据？'+chr(13)+chr(13)
                           +'删除数据操作将不可恢复，确定要删除本单据吗？'),'再次警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then

  begin
    //单据删除
    If not DelRd then
    begin
      application.MessageBox('删除单据失败！','系统提示',MB_ICONINFORMATION);
      mdlData.conn.RollbackTrans;
      Exit;
    end;
    Mdata_PlanTender.Edit;
    Mdata_PlanTender.Delete;
  end;
  mData_PlanTenderList.Close;
  qry.Free;
end;

procedure TFrm_DesignTake_PlanTender.Act_AuditExecute(Sender: TObject);
var
 qry:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  P_state:=3;
  If PC_Tree.ActivePage=TS_Item then
     P_List:=P_th_Item;
  If PC_Tree.ActivePage=TS_Write then
     P_List:=P_th_Write;
  If (TB_Audit.Caption='审核') or (TB_Audit.Caption='批量审核') then
  begin
    If application.MessageBox(Pchar('系统提示：是否对：【'+P_List+'】的单据进行审核？'+chr(13)+chr(13)
                                   +'确定要对本单据审核吗？'),'系统提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      Mdata_PlanTender.First;
      while not Mdata_PlanTender.eof do
      begin
        try
          qry.SQL.Text:='Update T_DesignTake_PlanTender Set FPlanTenderStatus=3,FPlanTenderAuditID=:FPlanTenderAuditID,FPlanTenderAuditDate=:FPlanTenderAuditDate  where FPlanTenderID=:FPlanTenderID';
          qry.Parameters.FindParam('FPlanTenderAuditID').value:= UserNumID;
          qry.Parameters.FindParam('FPlanTenderAuditDate').value:= now();
          qry.Parameters.FindParam('FPlanTenderID').value:=Mdata_PlanTender['FPlanTenderID'];
          qry.ExecSQL;
        finally
          ;
        end;
        Mdata_PlanTender.Edit;
        Mdata_PlanTender['FPlanTenderStatus']:=3;
        Mdata_PlanTender['FPlanTenderStatusNotes']:='审核';
        Mdata_PlanTender['FPlanTenderAuditID']:=UserNumID;
        Mdata_PlanTender['FPlanTenderAudit']:=UserNum;
        Mdata_PlanTender['FPlanTenderAuditDate']:=now();
        Mdata_PlanTender.Post;
        Mdata_PlanTender.Next;
      end;
      If Mdata_PlanTender.RecordCount=1 then
      begin
        application.MessageBox('审核完毕！','系统提示',MB_ICONINFORMATION);
        TB_Audit.Caption:='审核撤回';
      end;
      If Mdata_PlanTender.RecordCount>1 then
      begin
        application.MessageBox('批量审核完毕！','系统提示',MB_ICONINFORMATION);
        TB_Audit.Caption:='批量审核撤回';
      end;
      Act_Status.Execute;  //权限设置
    end;
    P_state:=2;
    Exit;
  end;
  If (TB_Audit.Caption='审核撤回') or (TB_Audit.Caption='批量审核撤回')  then
  begin
    If application.MessageBox(Pchar('系统提示：是否对：【'+P_List+'】的单据进行审核撤回？'+chr(13)+chr(13)
                                   +'确定要对本单据审核撤回吗？'),'系统提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      Mdata_PlanTender.First;
      while not Mdata_PlanTender.eof do
      begin
        try
          qry.SQL.Text:='Update T_DesignTake_PlanTender Set FPlanTenderStatus=2,FPlanTenderAuditID=:FPlanTenderAuditID,FPlanTenderAuditDate=:FPlanTenderAuditDate where FPlanTenderID=:FPlanTenderID';
          qry.Parameters.FindParam('FPlanTenderAuditID').value:= UserNumID;
          qry.Parameters.FindParam('FPlanTenderAuditDate').value:= Null;
          qry.Parameters.FindParam('FPlanTenderID').value:= Mdata_PlanTender['FPlanTenderID'];
          qry.ExecSQL;
        finally
          ;
        end;
        Mdata_PlanTender.Edit;
        Mdata_PlanTender['FPlanTenderStatus']:=2;
        Mdata_PlanTender['FPlanTenderStatusNotes']:='校对';
        Mdata_PlanTender['FPlanTenderAuditID']:=0;
        Mdata_PlanTender['FPlanTenderAudit']:='';
        Mdata_PlanTender['FPlanTenderAuditDate']:=Null;
        Mdata_PlanTender.Post;
        Mdata_PlanTender.Next;
      end;
      If Mdata_PlanTender.RecordCount=1 then
      begin
        application.MessageBox('审核撤回完毕！','系统提示',MB_ICONINFORMATION);
        TB_Audit.Caption:='审核';
      end;
      If Mdata_PlanTender.RecordCount>1 then
      begin
        application.MessageBox('批量审核撤回完毕！','系统提示',MB_ICONINFORMATION);
        TB_Audit.Caption:='批量审核';
      end;
      Act_Status.Execute;  //权限设置
    end;
    P_state:=2;
    Exit;
  end;

  Act_Ref_Write.Execute;
  Act_Ref_Item.Execute;


end;

procedure TFrm_DesignTake_PlanTender.Act_StatusExecute(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If Mdata_PlanTender.RecordCount<=0 then
  begin
    TB_Edit.Visible:=False;
    TB_Del.Visible:=False;
    TB_Submit.Visible:=False;
    TB_Check.Visible:=False;
    TB_Audit.Visible:=False;
    TB_PushDown.Visible:=False;
    Exit;
  end;

  //单据状态是否唯一
  If PC_Tree.ActivePage=TS_Item then
  begin
    try
      qry.SQL.Text:='Select distinct FPlanTenderStatus from V_DesignTake_PlanTender with(nolock) where FFullNumber like :FFullNumber and FDepartmentID=:FDepartmentID';
      qry.Parameters.FindParam('FFullNumber').value:=ListItemFNumber_Item+'%';
      qry.Parameters.FindParam('FDepartmentID').value:= UserFDepartmentID;
      qry.Open;
    finally
      ;
    end;
  end;
  If PC_Tree.ActivePage=TS_Write then
  begin
    try
      qry.SQL.Text:='Select distinct FPlanTenderStatus from V_DesignTake_PlanTender with(nolock) where FFullNumber_Write like :FFullNumber_Write and FDepartmentID=:FDepartmentID';
      qry.Parameters.FindParam('FFullNumber_Write').value:=ListItemFNumber_Write+'%';
      qry.Parameters.FindParam('FDepartmentID').value:= UserFDepartmentID;
      qry.Open;
    finally
      ;
    end;
  end;

  If qry.RecordCount>1 then
  begin
    TB_Edit.Visible:=False;
    TB_Del.Visible:=False;
    TB_Submit.Visible:=False;
    TB_Check.Visible:=False;
    TB_Audit.Visible:=False;
    TB_PushDown.Visible:=False;
    Exit;
  end;
  //提交
  If PC_Tree.ActivePage=TS_Item then
  begin
    try
      qry.SQL.Text:='Select FPlanTenderStatus,FPlanTenderWriteID from V_DesignTake_PlanTender with(nolock) '
                   +' where FPlanTenderStatus=0  and FFullNumber like :FFullNumber and FPlanTenderWriteID=:FPlanTenderWriteID and FDepartmentID=:FDepartmentID';
      qry.Parameters.FindParam('FFullNumber').value:=ListItemFNumber_Item+'%';
      qry.Parameters.FindParam('FPlanTenderWriteID').value:= UserNumID;
      qry.Parameters.FindParam('FDepartmentID').value:= UserFDepartmentID;
      qry.Open;
    finally
      ;
     end;
  end;
  If PC_Tree.ActivePage=TS_Write then
  begin
    try
      qry.SQL.Text:='Select FPlanTenderStatus,FPlanTenderWriteID from V_DesignTake_PlanTender with(nolock) '
                   +' where FPlanTenderStatus=0  and FFullNumber_Write like :FFullNumber_Write and FPlanTenderWriteID=:FPlanTenderWriteID and FDepartmentID=:FDepartmentID';
      qry.Parameters.FindParam('FFullNumber_Write').value:=ListItemFNumber_Write+'%';
      qry.Parameters.FindParam('FPlanTenderWriteID').value:= UserNumID;
      qry.Parameters.FindParam('FDepartmentID').value:= UserFDepartmentID;
      qry.Open;
    finally
      ;
    end;
  end;


  If qry.RecordCount=1 then
  begin
    TB_Submit.Caption:='提交';
    TB_Submit.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake_PlanTender.ClassName,'提交');
    TB_Edit.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake_PlanTender.ClassName,'修改');
    TB_Del.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake_PlanTender.ClassName,'删除');
  end;
  If qry.RecordCount>1 then
  begin
    TB_Submit.Caption:='批量提交';
    TB_Submit.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake_PlanTender.ClassName,'提交');
    TB_Edit.Visible:=False;
    TB_Del.Visible:=False;
  end;

   //提交撤回
  try
    If PC_Tree.ActivePage=TS_Item then
    begin
      qry.SQL.Text:='Select FPlanTenderStatus,FPlanTenderWriteID from V_DesignTake_PlanTender with(nolock) '
                   +' where FPlanTenderStatus=1  and FFullNumber like :FFullNumber and FPlanTenderWriteID=:FPlanTenderWriteID and FDepartmentID=:FDepartmentID';
      qry.Parameters.FindParam('FFullNumber').value:=ListItemFNumber_Item+'%';
    end;
    If PC_Tree.ActivePage=TS_Write then
    begin
      qry.SQL.Text:='Select FPlanTenderStatus,FPlanTenderWriteID from V_DesignTake_PlanTender with(nolock) '
                   +' where FPlanTenderStatus=1  and FFullNumber_Write like :FFullNumber_Write and FPlanTenderWriteID=:FPlanTenderWriteID and FDepartmentID=:FDepartmentID';
      qry.Parameters.FindParam('FFullNumber_Write').value:=ListItemFNumber_Write+'%';
    end;
    qry.Parameters.FindParam('FPlanTenderWriteID').value:= UserNumID;
    qry.Parameters.FindParam('FDepartmentID').value:= UserFDepartmentID;
    qry.Open;
  finally
    ;
  end;
  If qry.RecordCount=1 then
  begin
    TB_Submit.Caption:='提交撤回';
    TB_Submit.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake_PlanTender.ClassName,'提交');
    TB_Check.Caption:='校对';
    TB_Check.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake_PlanTender.ClassName,'校对');
    TB_Edit.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake_PlanTender.ClassName,'修改');
    TB_Del.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake_PlanTender.ClassName,'删除');
    TB_Check.Visible:=False;
  end;
  If qry.RecordCount>1 then
  begin
    TB_Submit.Caption:='批量提交撤回';
    TB_Submit.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake_PlanTender.ClassName,'提交');
    TB_Check.Caption:='批量校对';
    TB_Check.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake_PlanTender.ClassName,'校对');
    TB_Edit.Visible:=False;
    TB_Del.Visible:=False;
    TB_Check.Visible:=False;
  end;

  //校对 1
  try
    If PC_Tree.ActivePage=TS_Item then
    begin
      qry.SQL.Text:='Select FPlanTenderStatus from V_DesignTake_PlanTender with(nolock) '
                   +' where FPlanTenderStatus=1 and FFullNumber like :FFullNumber and FDepartmentID=:FDepartmentID';
      qry.Parameters.FindParam('FFullNumber').value:=ListItemFNumber_Item+'%';
    end;
     If PC_Tree.ActivePage=TS_Write then
    begin
      qry.SQL.Text:='Select FPlanTenderStatus from V_DesignTake_PlanTender with(nolock) '
                   +' where FPlanTenderStatus=1 and FFullNumber_Write like :FFullNumber_Write and FDepartmentID=:FDepartmentID';
      qry.Parameters.FindParam('FFullNumber_Write').value:=ListItemFNumber_Write+'%';
    end;
   qry.Parameters.FindParam('FDepartmentID').value:= UserFDepartmentID;
    qry.Open;
  finally
    ;
  end;
  If qry.RecordCount=1 then
  begin
    TB_Check.Caption:='校对';
    TB_Check.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake_PlanTender.ClassName,'校对');
    TB_Edit.Visible:=False;
    TB_Del.Visible:=False;
  end;
  If qry.RecordCount>1 then
  begin
    TB_Check.Caption:='批量校对';
    TB_Check.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake_PlanTender.ClassName,'校对');
    TB_Edit.Visible:=False;
    TB_Del.Visible:=False;
  end;
     //校对  2
  try
    If PC_Tree.ActivePage=TS_Item then
    begin
      qry.SQL.Text:='Select FPlanTenderStatus from V_DesignTake_PlanTender with(nolock) '
                   +' where FPlanTenderStatus=2 and FFullNumber like :FFullNumber and FDepartmentID=:FDepartmentID';
      qry.Parameters.FindParam('FFullNumber').value:=ListItemFNumber_Item+'%';
    end;
    If PC_Tree.ActivePage=TS_Write then
    begin
      qry.SQL.Text:='Select FPlanTenderStatus from V_DesignTake_PlanTender with(nolock) '
                   +' where FPlanTenderStatus=2 and FFullNumber_Write like :FFullNumber_Write and FDepartmentID=:FDepartmentID';
      qry.Parameters.FindParam('FFullNumber_Write').value:=ListItemFNumber_Write+'%';
    end;

    qry.Parameters.FindParam('FDepartmentID').value:= UserFDepartmentID;
    qry.Open;
  finally
    ;
  end;
  If qry.RecordCount=1 then
  begin
    TB_Check.Caption:='校对';
    TB_Check.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake_PlanTender.ClassName,'校对');
    TB_Audit.Caption:='审核';
    TB_Audit.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake_PlanTender.ClassName,'审核');
    TB_Edit.Visible:=False;
    TB_Del.Visible:=False;
  end;
  If qry.RecordCount>1 then
  begin
    TB_Check.Caption:='批量校对';
    TB_Check.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake_PlanTender.ClassName,'校对');
    TB_Audit.Caption:='批量审核';
    TB_Audit.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake_PlanTender.ClassName,'审核');
    TB_Edit.Visible:=False;
    TB_Del.Visible:=False;
  end;
  //审核  3
  try
    If PC_Tree.ActivePage=TS_Item then
    begin
      qry.SQL.Text:='Select FPlanTenderStatus from V_DesignTake_PlanTender with(nolock) '
                   +' where FPlanTenderStatus=3 and FFullNumber like :FFullNumber and FDepartmentID=:FDepartmentID';
      qry.Parameters.FindParam('FFullNumber').value:=ListItemFNumber_Item+'%';
    end;
    If PC_Tree.ActivePage=TS_Write then
    begin
      qry.SQL.Text:='Select FPlanTenderStatus from V_DesignTake_PlanTender with(nolock) '
                   +' where FPlanTenderStatus=3 and FFullNumber_Write like :FFullNumber_Write and FDepartmentID=:FDepartmentID';
      qry.Parameters.FindParam('FFullNumber_Write').value:=ListItemFNumber_Write+'%';
    end;
    qry.Parameters.FindParam('FDepartmentID').value:= UserFDepartmentID;
    qry.Open;
  finally
    ;
  end;
  If qry.RecordCount=1 then
  begin
    TB_PushDown.Caption:='下推';
    TB_PushDown.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake_PlanTender.ClassName,'下推');

    TB_Check.Visible:=False;
    TB_Audit.Visible:=False;
    TB_Edit.Visible:=False;
    TB_Del.Visible:=False;
  end;
  If qry.RecordCount>1 then
  begin
    TB_PushDown.Caption:='批量下推';
    TB_PushDown.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake_PlanTender.ClassName,'下推');

    TB_Check.Visible:=False;
    TB_Audit.Visible:=False;
    TB_Edit.Visible:=False;
    TB_Del.Visible:=False;
  end;




   //校对撤回
  try
    If PC_Tree.ActivePage=TS_Item then
    begin
      qry.SQL.Text:='Select FPlanTenderStatus,FPlanTenderCheckID from V_DesignTake_PlanTender with(nolock) '
                   +' where FPlanTenderStatus=2 and FFullNumber like :FFullNumber and FPlanTenderCheckID=:FPlanTenderCheckID and FDepartmentID=:FDepartmentID';
      qry.Parameters.FindParam('FFullNumber').value:=ListItemFNumber_Item+'%';
    end;
    If PC_Tree.ActivePage=TS_Write then
    begin
      qry.SQL.Text:='Select FPlanTenderStatus,FPlanTenderCheckID from V_DesignTake_PlanTender with(nolock) '
                   +' where FPlanTenderStatus=2 and FFullNumber_Write like :FFullNumber_Write and FPlanTenderCheckID=:FPlanTenderCheckID and FDepartmentID=:FDepartmentID';
      qry.Parameters.FindParam('FFullNumber_Write').value:=ListItemFNumber_Write+'%';
    end;
    qry.Parameters.FindParam('FPlanTenderCheckID').value:= UserNumID;
    qry.Parameters.FindParam('FDepartmentID').value:= UserFDepartmentID;
    qry.Open;
  finally
    ;
  end;
  If qry.RecordCount=1 then
  begin
    TB_Check.Caption:='校对撤回';
    TB_Check.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake_PlanTender.ClassName,'校对');
    TB_Submit.Visible:=False;
    TB_Edit.Visible:=False;
    TB_Del.Visible:=False;
  end;
  If qry.RecordCount>1 then
  begin
    TB_Check.Caption:='批量校对撤回';
    TB_Check.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake_PlanTender.ClassName,'校对');
    TB_Submit.Visible:=False;
    TB_Edit.Visible:=False;
    TB_Del.Visible:=False;
  end;

   //审核撤回
  try
    If PC_Tree.ActivePage=TS_Item then
    begin
      qry.SQL.Text:='Select FPlanTenderStatus,FPlanTenderAuditID from V_DesignTake_PlanTender with(nolock) '
                  +' where FPlanTenderStatus=3 and FFullNumber like :FFullNumber and FPlanTenderAuditID=:FPlanTenderAuditID and FDepartmentID=:FDepartmentID ';
      qry.Parameters.FindParam('FFullNumber').value:=ListItemFNumber_Item+'%';
    end;
    If PC_Tree.ActivePage=TS_Write then
    begin
      qry.SQL.Text:='Select FPlanTenderStatus,FPlanTenderAuditID from V_DesignTake_PlanTender with(nolock) '
                  +' where FPlanTenderStatus=3 and FFullNumber_Write like :FFullNumber_Write and FPlanTenderAuditID=:FPlanTenderAuditID and FDepartmentID=:FDepartmentID ';
      qry.Parameters.FindParam('FFullNumber_Write').value:=ListItemFNumber_Write+'%';
    end;
    qry.Parameters.FindParam('FPlanTenderAuditID').value:= UserNumID;
    qry.Parameters.FindParam('FDepartmentID').value:= UserFDepartmentID;
    qry.Open;
  finally
    ;
  end;
  If qry.RecordCount=1 then
  begin
    TB_Audit.Caption:='审核撤回';
    TB_Audit.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake_PlanTender.ClassName,'审核');
    TB_Check.Visible:=False;
    TB_Submit.Visible:=False;
    TB_Edit.Visible:=False;
    TB_Del.Visible:=False;
  end;
  If qry.RecordCount>1 then
  begin
    TB_Audit.Caption:='批量审核撤回';
    TB_Audit.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake_PlanTender.ClassName,'审核');
    TB_Submit.Visible:=False;
    TB_Check.Visible:=False;
    TB_Edit.Visible:=False;
    TB_Del.Visible:=False;
  end;


   //下推撤回
  try
    If PC_Tree.ActivePage=TS_Item then
    begin
      qry.SQL.Text:='Select FPlanTenderStatus,FPlanTenderPushDownID from V_DesignTake_PlanTender with(nolock) '
                   +' where FPlanTenderStatus=4 and FFullNumber like :FFullNumber and FPlanTenderPushDownID=:FPlanTenderPushDownID and FDepartmentID=:FDepartmentID ';
      qry.Parameters.FindParam('FFullNumber').value:=ListItemFNumber_Item+'%';
    end;
     If PC_Tree.ActivePage=TS_Write then
    begin
      qry.SQL.Text:='Select FPlanTenderStatus,FPlanTenderPushDownID from V_DesignTake_PlanTender with(nolock) '
                   +' where FPlanTenderStatus=4 and FFullNumber_Write like :FFullNumber_Write and FPlanTenderPushDownID=:FPlanTenderPushDownID and FDepartmentID=:FDepartmentID ';
      qry.Parameters.FindParam('FFullNumber_Write').value:=ListItemFNumber_Write+'%';
    end;

    qry.Parameters.FindParam('FPlanTenderPushDownID').value:= UserNumID;
    qry.Parameters.FindParam('FDepartmentID').value:= UserFDepartmentID;
    qry.Open;
  finally
    ;
  end;
  If qry.RecordCount=1 then
  begin
    TB_PushDown.Caption:='下推撤回';
    TB_PushDown.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake_PlanTender.ClassName,'下推');
    TB_Audit.Visible:=False;
    TB_Check.Visible:=False;
    TB_Submit.Visible:=False;
    TB_Edit.Visible:=False;
    TB_Del.Visible:=False;
  end;
  If qry.RecordCount>1 then
  begin
    TB_PushDown.Caption:='批量下推撤回';
    TB_PushDown.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake_PlanTender.ClassName,'下推');
    TB_Audit.Visible:=False;
    TB_Submit.Visible:=False;
    TB_Check.Visible:=False;
    TB_Edit.Visible:=False;
    TB_Del.Visible:=False;
  end;

end;

procedure TFrm_DesignTake_PlanTender.Act_SubmitExecute(Sender: TObject);
var
 qry:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  P_state:=3;
  If PC_Tree.ActivePage=TS_Item then
     P_List:=P_th_Item;
  If PC_Tree.ActivePage=TS_Write then
     P_List:=P_th_Write;
  If (TB_Submit.Caption='提交') or (TB_Submit.Caption='批量提交') then
  begin

    If application.MessageBox(Pchar('系统提示：是否对：【'+P_List+'】的单据进行提交？'+chr(13)+chr(13)
                                   +'确定要对本单据提交吗？'),'系统提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      Mdata_PlanTender.First;
      while not Mdata_PlanTender.eof do
      begin
        try
          qry.SQL.Text:='Update T_DesignTake_PlanTender Set FPlanTenderStatus=1,FPlanTenderSubmitDate=:FPlanTenderSubmitDate  where FPlanTenderID=:FPlanTenderID';
          qry.Parameters.FindParam('FPlanTenderSubmitDate').value:= now();
          qry.Parameters.FindParam('FPlanTenderID').value:=Mdata_PlanTender['FPlanTenderID'];
          qry.ExecSQL;
        finally
          ;
        end;
        Mdata_PlanTender.Edit;
        Mdata_PlanTender['FPlanTenderStatus']:=1;
        Mdata_PlanTender['FPlanTenderStatusNotes']:='提交';
        Mdata_PlanTender['FPlanTenderSubmitDate']:=now();
        Mdata_PlanTender.Post;
        Mdata_PlanTender.Next;
      end;
      If Mdata_PlanTender.RecordCount=1 then
      begin
        application.MessageBox('提交完毕！','系统提示',MB_ICONINFORMATION);
        TB_Submit.Caption:='提交撤回';
        TB_Edit.Visible:=False;
        TB_Del.Visible:=False;
      end;
      If Mdata_PlanTender.RecordCount>1 then
      begin
        application.MessageBox('批量提交完毕！','系统提示',MB_ICONINFORMATION);
        TB_Submit.Caption:='批量提交撤回';
        TB_Edit.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake_PlanTender.ClassName,'修改');
        TB_Del.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake_PlanTender.ClassName,'删除');
      end;
      Act_Status.Execute;  //权限设置
    end;
    P_state:=2;
    Exit;
  end;
  If (TB_Submit.Caption='提交撤回') or (TB_Submit.Caption='批量提交撤回')  then
  begin
    If application.MessageBox(Pchar('系统提示：是否对：【'+P_List+'】的单据进行提交撤回？'+chr(13)+chr(13)
                                   +'确定要对本单据提交撤回吗？'),'系统提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      Mdata_PlanTender.First;
      while not Mdata_PlanTender.eof do
      begin
        try
          qry.SQL.Text:='Update T_DesignTake_PlanTender Set FPlanTenderStatus=0,FPlanTenderSubmitDate=:FPlanTenderSubmitDate where FPlanTenderID=:FPlanTenderID';
          qry.Parameters.FindParam('FPlanTenderSubmitDate').value:= Null;
          qry.Parameters.FindParam('FPlanTenderID').value:= Mdata_PlanTender['FPlanTenderID'];
          qry.ExecSQL;
        finally
          ;
        end;
        Mdata_PlanTender.Edit;
        Mdata_PlanTender['FPlanTenderStatus']:=0;
        Mdata_PlanTender['FPlanTenderStatusNotes']:='填单';
        Mdata_PlanTender['FPlanTenderSubmitDate']:=Null;
        Mdata_PlanTender.Post;
        Mdata_PlanTender.Next;
      end;
      If Mdata_PlanTender.RecordCount=1 then
      begin
        application.MessageBox('提交撤回完毕！','系统提示',MB_ICONINFORMATION);
        TB_Submit.Caption:='提交';
      end;
      If Mdata_PlanTender.RecordCount>1 then
      begin
        application.MessageBox('批量提交撤回完毕！','系统提示',MB_ICONINFORMATION);
        TB_Submit.Caption:='批量提交';
      end;
      Act_Status.Execute;  //权限设置
    end;
    P_state:=2;
    Exit;
  end;
  Act_Ref_Item.Execute;
  Act_Ref_Write.Execute;

end;

procedure TFrm_DesignTake_PlanTender.Act_CheckExecute(Sender: TObject);
var
 qry:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  P_state:=3;
  If PC_Tree.ActivePage=TS_Item then
     P_List:=P_th_Item;
  If PC_Tree.ActivePage=TS_Write then
     P_List:=P_th_Write;
  If (TB_Check.Caption='校对') or (TB_Check.Caption='批量校对') then
  begin
    If application.MessageBox(Pchar('系统提示：是否对：【'+P_List+'】的单据进行校对？'+chr(13)+chr(13)
                                   +'确定要对本单据校对吗？'),'系统提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      Mdata_PlanTender.First;
      while not Mdata_PlanTender.eof do
      begin
        try
          qry.SQL.Text:='Update T_DesignTake_PlanTender Set FPlanTenderStatus=2,FPlanTenderCheckID=:FPlanTenderCheckID,FPlanTenderCheckDate=:FPlanTenderCheckDate  where FPlanTenderID=:FPlanTenderID';
          qry.Parameters.FindParam('FPlanTenderCheckID').value:= UserNumID;
          qry.Parameters.FindParam('FPlanTenderCheckDate').value:= now();
          qry.Parameters.FindParam('FPlanTenderID').value:=Mdata_PlanTender['FPlanTenderID'];
          qry.ExecSQL;
        finally
          ;
        end;
        Mdata_PlanTender.Edit;
        Mdata_PlanTender['FPlanTenderStatus']:=2;
        Mdata_PlanTender['FPlanTenderStatusNotes']:='校对';
        Mdata_PlanTender['FPlanTenderCheckID']:=UserNumID;
        Mdata_PlanTender['FPlanTenderCheck']:=UserNum;
        Mdata_PlanTender['FPlanTenderCheckDate']:=now();
        Mdata_PlanTender.Post;
        Mdata_PlanTender.Next;
      end;
      If Mdata_PlanTender.RecordCount=1 then
      begin
        application.MessageBox('校对完毕！','系统提示',MB_ICONINFORMATION);
        TB_Check.Caption:='校对撤回';
      end;
      If Mdata_PlanTender.RecordCount>1 then
      begin
        application.MessageBox('批量校对完毕！','系统提示',MB_ICONINFORMATION);
        TB_Check.Caption:='批量校对撤回';
      end;
      Act_Status.Execute;  //权限设置
    end;
    P_state:=2;
    Exit;
  end;
  If (TB_Check.Caption='校对撤回') or (TB_Check.Caption='批量校对撤回')  then
  begin
    If application.MessageBox(Pchar('系统提示：是否对：【'+P_List+'】的单据进行校对撤回？'+chr(13)+chr(13)
                                   +'确定要对本单据校对撤回吗？'),'系统提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      Mdata_PlanTender.First;
      while not Mdata_PlanTender.eof do
      begin
        try
          qry.SQL.Text:='Update T_DesignTake_PlanTender Set FPlanTenderStatus=1,FPlanTenderCheckID=:FPlanTenderCheckID,FPlanTenderCheckDate=:FPlanTenderCheckDate where FPlanTenderID=:FPlanTenderID';
          qry.Parameters.FindParam('FPlanTenderCheckID').value:= UserNumID;
          qry.Parameters.FindParam('FPlanTenderCheckDate').value:= Null;
          qry.Parameters.FindParam('FPlanTenderID').value:= Mdata_PlanTender['FPlanTenderID'];
          qry.ExecSQL;
        finally
          ;
        end;
        Mdata_PlanTender.Edit;
        Mdata_PlanTender['FPlanTenderStatus']:=1;
        Mdata_PlanTender['FPlanTenderStatusNotes']:='提交';
        Mdata_PlanTender['FPlanTenderCheckID']:=0;
        Mdata_PlanTender['FPlanTenderCheck']:='';
        Mdata_PlanTender['FPlanTenderCheckDate']:=Null;
        Mdata_PlanTender.Post;
        Mdata_PlanTender.Next;
      end;
      If Mdata_PlanTender.RecordCount=1 then
      begin
        application.MessageBox('校对撤回完毕！','系统提示',MB_ICONINFORMATION);
        TB_Check.Caption:='校对';
      end;
      If Mdata_PlanTender.RecordCount>1 then
      begin
        application.MessageBox('批量校对撤回完毕！','系统提示',MB_ICONINFORMATION);
        TB_Check.Caption:='批量校对';
      end;
      Act_Status.Execute;  //权限设置
    end;
    P_state:=2;
    Exit;
  end;

  Act_Ref_Item.Execute;
  Act_Ref_Write.Execute;


end;

procedure TFrm_DesignTake_PlanTender.Act_PushDownExecute(Sender: TObject);
var
 qry:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  P_state:=3;
  If PC_Tree.ActivePage=TS_Item then
     P_List:=P_th_Item;
  If PC_Tree.ActivePage=TS_Write then
     P_List:=P_th_Write;
  If (TB_PushDown.Caption='下推') or (TB_PushDown.Caption='批量下推') then
  begin
    If application.MessageBox(Pchar('系统提示：是否对：【'+P_List+'】的单据进行下推？'+chr(13)+chr(13)
                                   +'确定要对本单据下推准吗？'),'系统提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      Mdata_PlanTender.First;
      while not Mdata_PlanTender.eof do
      begin
        try
          qry.SQL.Text:='Update T_DesignTake_PlanTender Set FPlanTenderStatus=4,FPlanTenderPushDownID=:FPlanTenderPushDownID,FPlanTenderPushDownDate=:FPlanTenderPushDownDate  where FPlanTenderID=:FPlanTenderID';
          qry.Parameters.FindParam('FPlanTenderPushDownID').value:= UserNumID;
          qry.Parameters.FindParam('FPlanTenderPushDownDate').value:= now();
          qry.Parameters.FindParam('FPlanTenderID').value:=Mdata_PlanTender['FPlanTenderID'];
          qry.ExecSQL;
        finally
          ;
        end;
        Mdata_PlanTender.Edit;
        Mdata_PlanTender['FPlanTenderStatus']:=4;
        Mdata_PlanTender['FPlanTenderStatusNotes']:='下推';
        Mdata_PlanTender['FPlanTenderPushDownID']:=0;
        Mdata_PlanTender['FPlanTenderPushDown']:='';
        Mdata_PlanTender['FPlanTenderPushDownDate']:=now();
        Mdata_PlanTender.Post;
        Mdata_PlanTender.Next;
      end;
      If Mdata_PlanTender.RecordCount=1 then
      begin
        application.MessageBox('下推完毕！','系统提示',MB_ICONINFORMATION);
        TB_PushDown.Caption:='下推撤回';
      end;
      If Mdata_PlanTender.RecordCount>1 then
      begin
        application.MessageBox('批量下推完毕！','系统提示',MB_ICONINFORMATION);
        TB_PushDown.Caption:='批量下推撤回';
      end;
      Act_Status.Execute;  //权限设置
    end;
    P_state:=2;
    Exit;
  end;
  If (TB_PushDown.Caption='下推撤回') or (TB_PushDown.Caption='批量下推撤回')  then
  begin
    If application.MessageBox(Pchar('系统提示：是否对：【'+P_List+'】的单据进行下推撤回？'+chr(13)+chr(13)
                                   +'确定要对本单据下推撤回吗？'),'系统提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      Mdata_PlanTender.First;
      while not Mdata_PlanTender.eof do
      begin
        try
          qry.SQL.Text:='Update T_DesignTake_PlanTender Set FPlanTenderStatus=3,FPlanTenderPushDownID=:FPlanTenderPushDownID,FPlanTenderPushDownDate=:FPlanTenderPushDownDate where FPlanTenderID=:FPlanTenderID';
          qry.Parameters.FindParam('FPlanTenderPushDownID').value:= UserNumID;
          qry.Parameters.FindParam('FPlanTenderPushDownDate').value:= Null;
          qry.Parameters.FindParam('FPlanTenderID').value:= Mdata_PlanTender['FPlanTenderID'];
          qry.ExecSQL;
        finally
          ;
        end;
        Mdata_PlanTender.Edit;
        Mdata_PlanTender['FPlanTenderStatus']:=3;
        Mdata_PlanTender['FPlanTenderStatusNotes']:='审核';
        Mdata_PlanTender['FPlanTenderPushDownID']:=0;
        Mdata_PlanTender['FPlanTenderPushDown']:='';
        Mdata_PlanTender['FPlanTenderPushDownDate']:=Null;
        Mdata_PlanTender.Post;
        Mdata_PlanTender.Next;
      end;
      If Mdata_PlanTender.RecordCount=1 then
      begin
        application.MessageBox('下推完毕！','系统提示',MB_ICONINFORMATION);
        TB_PushDown.Caption:='下推撤回';
      end;
      If Mdata_PlanTender.RecordCount>1 then
      begin
        application.MessageBox('批量下推撤回完毕！','系统提示',MB_ICONINFORMATION);
        TB_PushDown.Caption:='批量下推';
      end;
      Act_Status.Execute;  //权限设置
    end;                      
    P_state:=2;
    Exit;
  end;

  Act_Ref_Item.Execute;
  Act_Ref_Write.Execute;

end;

procedure TFrm_DesignTake_PlanTender.Act_SetOpenExecute(Sender: TObject);
begin
  inherited;
  TB_Ref_Item.Visible:=False;
  TB_Ref_Write.Visible:=False;
  ToolBar_PlanTender.Visible:=False;
  TBar_Sel.Visible:=True;
  ToolBar_Save.Visible:=True;
  TB_Sel.Enabled:=True;
  L_FPlanTenderListDate.Enabled:=True;
  E_FPlanTenderListDate.Enabled:=True;

  MyTreeView_Item.Enabled:=False;
  MyTreeView_Write.Enabled:=False;


  cxGV_PlanTenderList.OptionsData.Editing:=True;
  cxGV_PlanTender.OptionsData.Editing:=True;

  FPlanTenderNum_PlanTender.Options.Editing:=True;
  FPlanTenderDate_PlanTender.Options.Editing:=True;
  FPlanTenderReMark_PlanTender.Options.Editing:=True;

  FPlanTenderListDate_PlanTenderList.Options.Editing:=True;
  FPlanTenderListReMark_PlanTenderList.Options.Editing:=True;
  FPlanTenderOrder_PlanTenderList.Options.Editing:=True;
  FPlanTenderQry_PlanTenderList.Options.Editing:=True;

end;

procedure TFrm_DesignTake_PlanTender.Act_SetCloseExecute(Sender: TObject);
begin
  inherited;
  TB_Ref_Item.Visible:=True;
  TB_Ref_Write.Visible:=True;
  ToolBar_PlanTender.Visible:=True;
  TBar_Sel.Visible:=False;
  ToolBar_Save.Visible:=False;
  TB_Sel.Enabled:=False;
  L_FPlanTenderListDate.Enabled:=False;
  E_FPlanTenderListDate.Enabled:=False;
  cxGV_PlanTenderList.OptionsData.Editing:=False;
  cxGV_PlanTender.OptionsData.Editing:=False;
  MyTreeView_Item.Enabled:=True;
  MyTreeView_Write.Enabled:=True;

end;

procedure TFrm_DesignTake_PlanTender.TB_SelClick(Sender: TObject);
begin
  PC_1.ActivePage:=TS_Take;
  TS_Take.TabEnabled:=True;
  TS_PlanTender.TabEnabled:=False;
end;

procedure TFrm_DesignTake_PlanTender.Act_Set_MaxNumExecute(Sender: TObject);
var
  i:Integer;
  proc:TADOStoredProc;
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  proc:=TADOStoredProc.Create(self);
  proc.ConnectionString:=mdlData.ReadConnStr;
  proc.CommandTimeout:=500;

  try
    proc.ProcedureName:='P_GetDateMaxNum;1';
   with proc.Parameters.AddParameter do
    begin
      DataType := ftDateTime;
      Direction := pdinput;
      name := '@TableDate';
      value:=ForMatDateTime('yyyy-mm-dd',(Mdata_PlanTender['FPlanTenderDate']));
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=30;
      name := '@TableName';
      value:='T_DesignTake_PlanTender';
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=20;
      name := '@DateFiled';
      value:='FPlanTenderDate';
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=20;
      name := '@NumFiled';
      value:='FPlanTenderNo';
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=20;
      name := '@FDepartmentFiled';
      value:='FDepartmentID';
    end;

    with proc.Parameters.AddParameter do
    begin
      DataType := ftInteger;
      Direction := pdinput;
      size:=20;
      name := '@FDepartmentID';
      value:=UserFDepartmentID;
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftInteger;
      Direction := pdoutput;
      size:=255;
      name := '@FInterID';
      value:=0;
    end;
    proc.ExecProc;
    P_MaxNum:=proc.Parameters.FindParam('@FInterID').Value;
  finally
     ;
  end;
  proc.Free;
end;

procedure TFrm_DesignTake_PlanTender.Act_Set_MaxIDExecute(Sender: TObject);
var
  proc:TADOStoredProc;
begin
  proc:=TADOStoredProc.Create(self);
  proc.ConnectionString:=mdlData.ReadConnStr;
  proc.CommandTimeout:=500;

  try
    proc.ProcedureName:='P_GetMaxID;1';
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=20;
      name := '@TableName';
      value:='T_DesignTake_PlanTender';
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftInteger;
      Direction := pdoutput;
      size:=255;
      name := '@FInterID';
      value:=0;
    end;
    proc.ExecProc;
    P_MaxID:=proc.Parameters.FindParam('@FInterID').Value;
    proc.Free;
  finally
     ;
  end;

end;

procedure TFrm_DesignTake_PlanTender.Act_Ref_ItemExecute(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If not TreeVeiwListWhere(qry,MyTreeView_Item,'VT_DesignTake_PlanTender',' and FDepartmentID='+IntToStr(UserFDepartmentID) ) then
  begin
    Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;
end;

procedure TFrm_DesignTake_PlanTender.TB_PrintClick(Sender: TObject);
var
  qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If ShowMsg('是否打印招标申请？','提示') then
  begin
    try
      qry.SQL.Text:='Select * From V_DesignTake_PlanTenderList with(nolock) where FDepartmentID=:FDepartmentID  '
                   +'and FPlanTenderID=:FPlanTenderID order by FBranchItemNumber';
      qry.Parameters[0].Value:=UserFDepartmentID;
      qry.Parameters[1].Value:=mData_PlanTenderList['FPlanTenderID'];
      qry.Open;
    finally
      ;
    end;
  end;
  mData_PlanTenderList.CopyFromDataSet(qry);
  frDBDataSet.DataSet:=mData_PlanTenderList;
  FrReport.LoadFromFile(ExtractFileDir(Application.ExeName)+'\Report_DesignBOM_PlanTender.frf');
  FrReport.ShowReport;


end;

procedure TFrm_DesignTake_PlanTender.FPlanTenderOrderPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
   qry:=TADOQuery.Create(self);
   qry.ConnectionString:=mdlData.ReadConnStr;
   mData_PlanTenderList.Edit;
   mData_PlanTenderList.Post;
   mData_PlanTenderList.Edit;
   if mData_PlanTenderList['FPlanTenderOrder']=Null then
      mData_PlanTenderList['FPlanTenderOrder']:='';
   mData_PlanTenderList.Post;
   try
     qry.SQL.Text:='select * from systemuser where Num=:Num ';
     qry.Parameters.FindParam('Num').Value:=Trim(mData_PlanTenderList['FPlanTenderOrder']);
     qry.Open;
   finally
     ;
   end;

   If qry.RecordCount=1 then
   begin
     mData_PlanTenderList.Edit;
     mData_PlanTenderList['FPlanTenderOrderID']:=qry.FieldByName('NumID').Value;
     mData_PlanTenderList.Post;
     Exit;
   end
   else
   begin
     mData_PlanTenderList.Edit;
     mData_PlanTenderList['FPlanTenderOrderID']:=0;
     mData_PlanTenderList['FPlanTenderOrder']:='';
     mData_PlanTenderList.Post;
     If Trim(mData_PlanTenderList['FPlanTenderOrder'])='' then
     begin
       try
         qry.SQL.Text:='select distinct FPlanTenderOrderID,FPlanTenderOrder from V_DesignTake_PlanTenderList with(nolock) where FDepartmentID=:FDepartmentID order by FPlanTenderOrder ';
         qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
         qry.Open;
       finally
         ;
       end;
       selValue:=select('选择采购经理','FPlanTenderOrder','FPlanTenderOrder','FPlanTenderOrder','FPlanTenderOrder',qry);
     end
     else
     begin
       try
         qry.SQL.Text:='select distinct FPlanTenderOrderID,FPlanTenderOrder from V_DesignTake_PlanTenderList with(nolock) where FDepartmentID=:FDepartmentID and FPlanTenderOrder like :FPlanTenderOrder order by FPlanTenderOrder ';
         qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
         qry.Parameters.FindParam('FPlanTenderOrder').Value:='%'+Trim(mData_PlanTenderList['FPlanTenderOrder'])+'%';
         qry.Open;
       finally
         ;
       end;
       If qry.RecordCount=1 then
       begin
         mData_PlanTenderList.Edit;
         mData_PlanTenderList['FPlanTenderOrderID']:=qry.FieldByName('FPlanTenderOrderID').Value;
         mData_PlanTenderList['FPlanTenderOrder']:=qry.FieldByName('FPlanTenderOrder').Value;
         mData_PlanTenderList.Post;
       end
       else
         selValue:=select('选择采购经理','FPlanTenderOrder','FPlanTenderOrder','FPlanTenderOrder','FPlanTenderOrder',qry);
     end;
     If (Length(selValue)>0) then
     begin
       mData_PlanTenderList.Edit;
       mData_PlanTenderList['FPlanTenderOrderID']:=qry.FieldByName('FPlanTenderOrderID').Value;
       mData_PlanTenderList['FPlanTenderOrder']:=qry.FieldByName('FPlanTenderOrder').Value;
       mData_PlanTenderList.Post;
     end
     else
     begin
       mData_PlanTenderList.Edit;
       mData_PlanTenderList['FPlanTenderOrderID']:=0;
       mData_PlanTenderList['FPlanTenderOrder']:='';
       mData_PlanTenderList.Post;
     end;
   end;

end;
procedure TFrm_DesignTake_PlanTender.FPlanTenderOrderPropertiesEditValueChanged(
  Sender: TObject);
var  qry: TADOQuery;
begin
   qry:=TADOQuery.Create(self);
   qry.ConnectionString:=mdlData.ReadConnStr;
   mData_PlanTenderList.Edit;
   mData_PlanTenderList.Post;
   mData_PlanTenderList.Edit;
   if mData_PlanTenderList['FPlanTenderOrder']=Null then
      mData_PlanTenderList['FPlanTenderOrder']:='';
   mData_PlanTenderList.Post;
   try
     qry.SQL.Text:='select * from systemuser with(nolock) where Num=:Num ';
     qry.Parameters.FindParam('Num').Value:=Trim(mData_PlanTenderList['FPlanTenderOrder']);
     qry.Open;
   finally
     ;
   end;

   If qry.RecordCount=1 then
   begin
     mData_PlanTenderList.Edit;
     mData_PlanTenderList['FPlanTenderOrderID']:=qry.FieldByName('NumID').Value;
     mData_PlanTenderList.Post;
     Exit;
   end
   else
   begin
     mData_PlanTenderList.Edit;
     mData_PlanTenderList['FPlanTenderOrderID']:=0;
     mData_PlanTenderList['FPlanTenderOrder']:='';
     mData_PlanTenderList.Post;
  end;

end;

procedure TFrm_DesignTake_PlanTender.cxGV_PlanTenderListCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  If P_state<>0 then
  begin
  if StrToFloat(AViewInfo.GridRecord.DisplayTexts[FPlanTenderQry_PlanTenderList.Index])<>StrToFloat(AViewInfo.GridRecord.DisplayTexts[FTenderCoeQry_PlanTenderList.Index]) then    //设置行字体颜色
  begin
     ACanvas.Canvas.Font.Color:=clHotLight; //字体颜色
    ACanvas.FillRect(AViewInfo.Bounds);
  end;
  end;
end;

procedure TFrm_DesignTake_PlanTender.Act_Ref_TakeExecute(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If not TreeVeiwListUserID(qry,MyTreeView_Take,'VT_DesignTake_Sel',UserFDepartmentID) then
  begin
    Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;

end;

procedure TFrm_DesignTake_PlanTender.cxGV_M2CellClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If mData_TakeItem['FTakeID']<>0 then
  begin
    If MyItemListwhere(qry,Mdata_TakeList,'V_DesignTakeList','cast(FTakeID as varchar(20))',
                       Mdata_TakeItem['FTakeID'],' and FTakeQry<>FPlanTenderQry','') then

     Act_Status.Execute  //权限设置
  end;

end;

procedure TFrm_DesignTake_PlanTender.MyTreeView_WriteExpanding(Sender: TObject;
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

  qry.SQL.Text:='Select FNumber, FParentNumber,FName,FNumber,'
               +'Isleaf from VT_DesignTake_PlanTender_Write with(nolock) where FParentNumber= '''
               +PTree(Node.Data).ID+''' and FDepartmentID=:FDepartmentID and FPlanTenderWriteID=:FPlanTenderWriteID '
               +' order by FNumber';
  qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
  qry.Parameters.FindParam('FPlanTenderWriteID').value:=UserNumID;
  qry.open;

  PTree(Node.Data).Flag := cLoadFlag;   // 设置已加载标志
  while not qry.Eof do
  begin
    New(P);
    P.ID := qry.FieldByName('FNumber').AsString;
    P.ParentID := qry.FieldByName('FParentNumber').AsString;
    P.FNumber:=qry.FieldByName('FNumber').AsString;
    P.Isleaf := qry.FieldByName('Isleaf').Value;
    P.Caption := qry.FieldByName('FName').AsString;
    P.Flag := cNoLoadFlag;                            // 新节点，未加载标志
    with MyTreeView_Write.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('Isleaf').value;
    end;
    qry.Next;
  end;


end;

procedure TFrm_DesignTake_PlanTender.MyTreeView_WriteChange(Sender: TObject;
  Node: TTreeNode);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If Node = nil then Exit;
  with PTree(Node.Data)^ do
  begin
    ListItemFNumber_Write:=trim(PTree(Node.Data).FNumber);
    P_th_Write:=PTree(Node.Data).Caption;
    P_Isleaf_Write:=PTree(Node.Data).Isleaf;
    Act_TS_Write.Execute;
    Act_Status.Execute; //权限设置

  end;



end;

procedure TFrm_DesignTake_PlanTender.Act_Ref_WriteExecute(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If not TreeVeiwListWhere(qry,MyTreeView_Write,'VT_DesignTake_PlanTender_Write',' and FPlanTenderWriteID='+IntToStr(UserNumID)+' and FDepartmentID='+IntToStr(UserFDepartmentID) ) then
  begin
    Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;

end;

procedure TFrm_DesignTake_PlanTender.cxGV_PlanTenderFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
var qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If P_state =2  then //不在新增、修改状态
  begin
    If (Mdata_PlanTender['FPlanTenderID']<>0) and (Mdata_PlanTender['FPlanTenderID']<>null) then
      begin
      If MyItemList(qry,mData_PlanTenderList,'V_DesignTake_PlanTenderList','cast(FPlanTenderID as varchar(20))',
                    Mdata_PlanTender['FPlanTenderID'],'FPlanTenderNum') then
      Act_Status.Execute  //权限设置
    end;
  end;


end;

procedure TFrm_DesignTake_PlanTender.MenuItem1Click(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_DesignTake_PlanTender.N_FilterClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_DesignTake_PlanTender.N_SortClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_DesignTake_PlanTender.N_GroupClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_DesignTake_PlanTender.N_SetClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_DesignTake_PlanTender.MenuItem2Click(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_DesignTake_PlanTender.Act_MenuExecute(Sender: TObject);
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

procedure TFrm_DesignTake_PlanTender.Act_Menu_SetExecute(Sender: TObject);
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

procedure TFrm_DesignTake_PlanTender.cxGrid_PlanTenderContextPopup(
  Sender: TObject; MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV_PlanTender';
  Gm:='mdata_PlanTender';
  Gr:='cxGrid_PlanTender';
  Act_Menu_Set.Execute;

end;

procedure TFrm_DesignTake_PlanTender.cxGrid_PlanTenderListContextPopup(
  Sender: TObject; MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV_PlanTenderList';
  Gm:='mdata_PlanTenderList';
  Gr:='cxGrid_PlanTenderList';
  Act_Menu_Set.Execute;

end;

procedure TFrm_DesignTake_PlanTender.cxGrid_TakeItemContextPopup(
  Sender: TObject; MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV_TakeItem';
  Gm:='mdata_TakeItem';
  Gr:='cxGrid_TakeItem';
  Act_Menu_Set.Execute;

end;

procedure TFrm_DesignTake_PlanTender.cxGrid_TakeListContextPopup(
  Sender: TObject; MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV_TakeList';
  Gm:='mdata_TakeList';
  Gr:='cxGrid_TakeList';
  Act_Menu_Set.Execute;

end;

procedure TFrm_DesignTake_PlanTender.cxGV_TakeItemFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
var qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If (mdata_TakeItem['FTakeID']<>0) and (mdata_TakeItem['FTakeID']<>null) then
  begin
    If MyItemList(qry,mdata_TakeList,'V_DesignTakeList','cast(FTakeID as varchar(20))',
                  mdata_TakeItem['FTakeID'],'FBranchItemNumber') then
  end;


end;

procedure TFrm_DesignTake_PlanTender.Act_TS_TakeExecute(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If P_Isleaf_Take>2 then
  begin
    If MyItemList(qry,Mdata_TakeItem,'V_DesignTake','FFullNumber',
                 ListItemFNumber_Take,'FFullNumber') then
    If MyItemListwhere(qry,Mdata_TakeList,'V_DesignTakeList','FFullNumber',
                  ListItemFNumber_Take,' and FTakeSumQry<>FPlanTenderQry','FFullNumber,FTakeListNum') then

  end
  else
  begin
    Mdata_TakeItem.Close;
    Mdata_TakeList.Close;
  end;

end;

procedure TFrm_DesignTake_PlanTender.Act_TS_ItemExecute(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If P_Isleaf_Item>0 then
  begin
    If PC_Tree.ActivePage=TS_Item then
    begin
      If MyItemList(qry,Mdata_PlanTender,'V_DesignTake_PlanTender','FFullNumber',
                    ListItemFNumber_Item,'FPlanTenderNum') then
      If MyItemList(qry,mData_PlanTenderList,'V_DesignTake_PlanTenderList','FFullNumber',
                    ListItemFNumber_Item,'FPlanTenderNum') then
    end;
  end
  else
  begin
    Mdata_PlanTender.Close;
    mData_PlanTenderList.Close;
  end;

end;

procedure TFrm_DesignTake_PlanTender.Act_TS_WriteExecute(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If P_Isleaf_Write>0 then
  begin
    If MyItemList(qry,Mdata_PlanTender,'V_DesignTake_PlanTender','FFullNumber_Write',ListItemFNumber_Write,'') then
    If MyItemList(qry,mData_PlanTenderList,'V_DesignTake_PlanTenderList','FFullNumber_Write ',ListItemFNumber_Write,'FPlanTenderNum') then
  end
  else
  begin
    Mdata_PlanTender.Close;
    mData_PlanTenderList.Close;
  end;

end;

procedure TFrm_DesignTake_PlanTender.cxGV_PlanTenderSelectionChanged(
  Sender: TcxCustomGridTableView);
var qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If mdata_PlanTender.RecordCount<0 then
     Exit;
  If P_state =2 then //不在新增、修改状态
  begin
    If mdata_PlanTender['FPlanTenderID']<>0 then
    begin
      If MyItemList(qry,Mdata_PlanTenderList,'V_Design_PlanTenderList','cast(FPlanTenderID as varchar(20))',
                    mdata_PlanTender['FPlanTenderID'],'FPlanTenderNum') then
      //Act_Status.Execute  //权限设置
    end;
  end;


end;

end.
