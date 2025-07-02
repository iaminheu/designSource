unit Main_DesignTake_TenderCoe;

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
    TFrm_DesignTake_TenderCoe = class(TFrm_GridBass)
    ImageList: TImageList;
    frReport: TfrReport;
    frDBDataSet: TfrDBDataSet;
    MData_TenderCoeList: TdxMemData;
    DS_Mdata_TenderCoeList: TDataSource;
    DS_Mdata_TenderCoe: TDataSource;
    MData_TenderCoe: TdxMemData;
    actionList: TActionList;
    Act_App: TAction;
    Act_Edit: TAction;
    Act_Del: TAction;
    Act_Out: TAction;
    Act_Audit: TAction;
    Act_Status: TAction;
    Act_Submit: TAction;
    Act_Check: TAction;
    Act_PushDown: TAction;
    Act_SetOpen: TAction;
    Act_SetClose: TAction;
    MData_PlanTenderList: TdxMemData;
    MData_PlanTenderListth: TStringField;
    MData_PlanTenderListmc: TStringField;
    MData_PlanTenderListgg: TStringField;
    MData_PlanTenderListFSumQry: TIntegerField;
    MData_PlanTenderListFTakeDemand: TStringField;
    MData_PlanTenderListFTakeListReMark: TStringField;
    MData_PlanTenderListFSumSuttle: TFloatField;
    MData_PlanTenderListFName: TStringField;
    MData_PlanTenderListFModel: TStringField;
    MData_PlanTenderListUnitName: TStringField;
    MData_PlanTenderListFNumber: TStringField;
    MData_PlanTenderListFk3Name: TStringField;
    MData_PlanTenderListFK3Model: TStringField;
    MData_PlanTenderListFOrderNoQry: TIntegerField;
    DS_Mdata_PlanTenderList: TDataSource;
    DS_Mdata_PlanTender: TDataSource;
    MData_PlanTender: TdxMemData;
    MData_PlanTenderFTakeID: TIntegerField;
    MData_PlanTenderFTakeDate: TDateField;
    MData_PlanTenderFItemListId: TIntegerField;
    MData_PlanTenderFBranchFileNo: TStringField;
    MData_PlanTenderFTakeWrite: TStringField;
    MData_PlanTenderFTakeWriteDate: TDateTimeField;
    MData_PlanTenderFItemNumber: TStringField;
    Act_Set_MaxNum: TAction;
    Act_Set_MaxID: TAction;
    Act_Ref_PlanTender: TAction;
    Act_Ref_Item: TAction;
    MData_PlanTenderFPlanTenderDate: TDateField;
    PC_1: TRzPageControl;
    TS_TenderCoe: TRzTabSheet;
    ToolBar_TenderCoe: TToolBar;
    TB_App: TToolButton;
    TB_Edit: TToolButton;
    TB_Del: TToolButton;
    TB_Submit: TToolButton;
    TB_Check: TToolButton;
    TB_Audit: TToolButton;
    TB_PushDown: TToolButton;
    ToolButton14: TToolButton;
    TB_Print: TToolButton;
    ToolButton17: TToolButton;
    TB_EXIT: TToolButton;
    RzSizePanel1: TRzSizePanel;
    PC_Tree: TPageControl;
    TS_Item: TTabSheet;
    MyTreeView_Date: TTreeView;
    ToolBar4: TToolBar;
    TB_Ref_Item: TcxButton;
    TS_Write: TTabSheet;
    MyTreeView_Write: TTreeView;
    ToolBar1: TToolBar;
    TB_Ref_Write: TcxButton;
    Panel5: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    cxGrid_TenderCoe: TcxGrid;
    cxGV_TenderCoe: TcxGridDBTableView;
    FTenderCoeNum_TenderCoe: TcxGridDBColumn;
    FTenderCoeDate_TenderCoe: TcxGridDBColumn;
    FTenderCoeReMark_TenderCoe: TcxGridDBColumn;
    FTenderCoeStatusNotes_TenderCoe: TcxGridDBColumn;
    FTenderCoeStatus_TenderCoe: TcxGridDBColumn;
    FTenderCoeWrite_TenderCoe: TcxGridDBColumn;
    FTenderWriteCoeDate_TenderCoe: TcxGridDBColumn;
    FTenderCoeSubmitDate_TenderCoe: TcxGridDBColumn;
    FTenderCoeCheck_TenderCoe: TcxGridDBColumn;
    FTenderCoeCheckDate_TenderCoe: TcxGridDBColumn;
    FTenderCoeAudit_TenderCoe: TcxGridDBColumn;
    FTenderCoeAuditDate_TenderCoe: TcxGridDBColumn;
    FTenderCoePushDown_TenderCoe: TcxGridDBColumn;
    FTenderCoePushDownDate_TenderCoe: TcxGridDBColumn;
    FTenderCoeID_TenderCoe: TcxGridDBColumn;
    FTenderCoeNo_TenderCoe: TcxGridDBColumn;
    FPlanTenderNum_TenderCoe: TcxGridDBColumn;
    cxGL_TenderCoe: TcxGridLevel;
    RSP_List: TRzSizePanel;
    PageControl2: TPageControl;
    TabSheet3: TTabSheet;
    TBar_Sel: TToolBar;
    TB_Sel: TcxButton;
    cxGrid_TenderCoeList: TcxGrid;
    cxGV_TenderCoeList: TcxGridDBTableView;
    FPlanTenderListID_TenderCoeList: TcxGridDBColumn;
    FTenderCoeListNum_TenderCoeList: TcxGridDBColumn;
    FTenderCoeNum_TenderCoeList: TcxGridDBColumn;
    FNumber_TenderCoeList: TcxGridDBColumn;
    FTakeName_TenderCoeList: TcxGridDBColumn;
    FTakeModel_TenderCoeList: TcxGridDBColumn;
    FTakeUnitName_TenderCoeList: TcxGridDBColumn;
    FTakeSumQry_TenderCoeList: TcxGridDBColumn;
    FPlanTenderQry_TenderCoeList: TcxGridDBColumn;
    FTenderCoeQry_TenderCoeList: TcxGridDBColumn;
    FOrderQry_TenderCoeList: TcxGridDBColumn;
    FOrderPrice_TenderCoeList: TcxGridDBColumn;
    FTaxRate_TenderCoeList: TcxGridDBColumn;
    FOrderAmount_TenderCoeList: TcxGridDBColumn;
    FPlanTenderOrder_TenderCoeList: TcxGridDBColumn;
    FPlanTenderOrderID_TenderCoeList: TcxGridDBColumn;
    FTenderCoeDate_TenderCoeList: TcxGridDBColumn;
    FPlanTenderListDate_TenderCoeList: TcxGridDBColumn;
    FOrderDate_TenderCoeList: TcxGridDBColumn;
    FTenderCoeListReMark_TenderCoeList: TcxGridDBColumn;
    FClientShortName_TenderCoeList: TcxGridDBColumn;
    FBranchFileNo_TenderCoeList: TcxGridDBColumn;
    sumFOrderAmount_TenderCoeList: TcxGridDBColumn;
    FPrecastDate_TenderCoeList: TcxGridDBColumn;
    FFactDate_TenderCoeList: TcxGridDBColumn;
    FF_TenderCoeList: TcxGridDBColumn;
    FInvoice_TenderCoeList: TcxGridDBColumn;
    FStatusNotes_TenderCoeList: TcxGridDBColumn;
    FOrderStatus_TenderCoeList: TcxGridDBColumn;
    FTakeListID_TenderCoeList: TcxGridDBColumn;
    FItemID_TenderCoeList: TcxGridDBColumn;
    cxGL_TenderCoeList: TcxGridLevel;
    TS_PlanTender: TRzTabSheet;
    Panel1: TPanel;
    PageControl3: TPageControl;
    TabSheet5: TTabSheet;
    cxGrid_PlanTender: TcxGrid;
    cxGV_PlanTender: TcxGridDBTableView;
    FPlanTenderNum_PlanTender: TcxGridDBColumn;
    FPlanTenderDate_PlanTender: TcxGridDBColumn;
    FPlanTenderReMark_PlanTender: TcxGridDBColumn;
    FPlanTenderStatusNotes_PlanTender: TcxGridDBColumn;
    FPlanTenderStatus_PlanTender: TcxGridDBColumn;
    FPlanTenderWrite_PlanTender: TcxGridDBColumn;
    FPlanTenderWriteDate_PlanTender: TcxGridDBColumn;
    FPlanTenderSubmitDate_PlanTender: TcxGridDBColumn;
    FPlanTenderCheck_PlanTender: TcxGridDBColumn;
    FPlanTenderCheckDate_PlanTender: TcxGridDBColumn;
    FPlanTenderAudit_PlanTender: TcxGridDBColumn;
    FPlanTenderAuditDate_PlanTender: TcxGridDBColumn;
    FPlanTenderPushDown_PlanTender: TcxGridDBColumn;
    FPlanTenderPushDownDate_PlanTender: TcxGridDBColumn;
    FPlanTenderID_PlanTender: TcxGridDBColumn;
    FPlanTenderNo_PlanTender: TcxGridDBColumn;
    cxGL_PlanTender: TcxGridLevel;
    RzSizePanel2: TRzSizePanel;
    PageControl6: TPageControl;
    TabSheet2: TTabSheet;
    ToolBar5: TToolBar;
    TB_Ref_PlanTender: TcxButton;
    MyTreeView_PlanTender: TTreeView;
    Act_Ref_Write: TAction;
    PopupMenu2: TPopupMenu;
    N2: TMenuItem;
    N1: TMenuItem;
    PM: TPopupMenu;
    N_Edit: TMenuItem;
    N_Filter: TMenuItem;
    N_Sort: TMenuItem;
    N_Group: TMenuItem;
    N_Set: TMenuItem;
    N_Out: TMenuItem;
    Act_Menu: TAction;
    Act_Menu_Set: TAction;
    Act_TS_Item: TAction;
    Act_TS_Write: TAction;
    ToolBar_Save: TPanel;
    OKBtn: TcxButton;
    CancelBtn: TcxButton;
    ToolBar3: TToolBar;
    ToolButton9: TToolButton;
    ToolButton7: TToolButton;
    TB_EXIT1: TToolButton;
    RzSizePanel3: TRzSizePanel;
    PageControl4: TPageControl;
    TabSheet6: TTabSheet;
    cxGrid_PlanTenderList: TcxGrid;
    cxGV_PlanTenderList: TcxGridDBTableView;
    FPlanTenderListNum_PlanTenderList: TcxGridDBColumn;
    FNumber_PlanTenderList: TcxGridDBColumn;
    FTakeName_PlanTenderList: TcxGridDBColumn;
    FTakeModel_PlanTenderList: TcxGridDBColumn;
    FTakeUnitName_PlanTenderList: TcxGridDBColumn;
    FTakeSumQry_PlanTenderList: TcxGridDBColumn;
    FPlanTenderQry_PlanTenderList: TcxGridDBColumn;
    FTenderCoeQry_PlanTenderList: TcxGridDBColumn;
    FOrderQry_PlanTenderList: TcxGridDBColumn;
    FPlanTenderListID_PlanTenderList: TcxGridDBColumn;
    FPlanTenderNum_PlanTenderList: TcxGridDBColumn;
    FPlanTenderDate_PlanTenderList: TcxGridDBColumn;
    FPlanTenderListDate_PlanTenderList: TcxGridDBColumn;
    FPlanTenderOrder_PlanTenderList: TcxGridDBColumn;
    FOrderPrice_PlanTenderList: TcxGridDBColumn;
    FTaxRate_PlanTenderList: TcxGridDBColumn;
    FOrderAmount_PlanTenderList: TcxGridDBColumn;
    FPlanTenderOrderID_PlanTenderList: TcxGridDBColumn;
    FSupplierName_PlanTenderList: TcxGridDBColumn;
    FSupplierID_PlanTenderList: TcxGridDBColumn;
    FPaymentMode_PlanTenderList: TcxGridDBColumn;
    FOrderNum_PlanTenderList: TcxGridDBColumn;
    FOrderListReMark_PlanTenderList: TcxGridDBColumn;
    FOrderDate_PlanTenderList: TcxGridDBColumn;
    FPlanTenderListReMark_PlanTenderList: TcxGridDBColumn;
    FClientShortName_PlanTenderList: TcxGridDBColumn;
    FBranchFileNo_PlanTenderList: TcxGridDBColumn;
    FPrecastDate_PlanTenderList: TcxGridDBColumn;
    FFactDate_PlanTenderList: TcxGridDBColumn;
    FInvoice_PlanTenderList: TcxGridDBColumn;
    FStatusNotes_PlanTenderList: TcxGridDBColumn;
    FOrderStatus_PlanTenderList: TcxGridDBColumn;
    FTakeListID_PlanTenderList: TcxGridDBColumn;
    FItemID_PlanTenderList: TcxGridDBColumn;
    cxGL_PlanTenderList: TcxGridLevel;
    FPaymentMode_TenderCoe: TcxGridDBColumn;
    FSupplierName_TenderCoe: TcxGridDBColumn;
    FSupplierID_TenderCoe: TcxGridDBColumn;
    procedure FormResize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TB_EXIT1Click(Sender: TObject);
    procedure MyTreeView_PlanTenderExpanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure MyTreeView_PlanTenderChange(Sender: TObject; Node: TTreeNode);
    procedure TB_EXITClick(Sender: TObject);
    procedure OKBtnClick(Sender: TObject);
    procedure CancelBtnClick(Sender: TObject);
    procedure MyTreeView_DateExpanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure MyTreeView_DateChange(Sender: TObject; Node: TTreeNode);
    procedure MData_TenderCoeListBeforePost(DataSet: TDataSet);
    procedure TB_EditClick(Sender: TObject);
    procedure cxGrid1DBTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure ToolButton9Click(Sender: TObject);
    procedure cxGV_PlanTenderListCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FOrderQryPropertiesEditValueChanged(Sender: TObject);
    procedure N_AllClick(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N_AuditClick(Sender: TObject);
    procedure N_Audit_NClick(Sender: TObject);
    procedure N_QryClick(Sender: TObject);
    procedure N_DelClick(Sender: TObject);
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
    procedure FSupplier_MPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure TB_SelClick(Sender: TObject);
    procedure Act_Set_MaxNumExecute(Sender: TObject);
    procedure Act_Set_MaxIDExecute(Sender: TObject);
    procedure MyTreeView_WriteExpanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure MyTreeView_WriteChange(Sender: TObject; Node: TTreeNode);
    procedure Act_Ref_ItemExecute(Sender: TObject);
    procedure Act_Ref_PlanTenderExecute(Sender: TObject);
    procedure FPaymentModePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxGV_PlanTenderCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGV_TenderCoeListCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure TB_Ref_2Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure Act_Ref_WriteExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxGV_TenderCoeFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure Act_MenuExecute(Sender: TObject);
    procedure Act_Menu_SetExecute(Sender: TObject);
    procedure cxGrid_PlanTenderContextPopup(Sender: TObject;
      MousePos: TPoint; var Handled: Boolean);
    procedure cxGrid_PlanTenderListContextPopup(Sender: TObject;
      MousePos: TPoint; var Handled: Boolean);
    procedure cxGrid_TenderCoeContextPopup(Sender: TObject;
      MousePos: TPoint; var Handled: Boolean);
    procedure cxGrid_TenderCoeListContextPopup(Sender: TObject;
      MousePos: TPoint; var Handled: Boolean);
    procedure N_EditClick(Sender: TObject);
    procedure N_FilterClick(Sender: TObject);
    procedure N_SortClick(Sender: TObject);
    procedure N_GroupClick(Sender: TObject);
    procedure N_SetClick(Sender: TObject);
    procedure N_OutClick(Sender: TObject);
    procedure Act_TS_ItemExecute(Sender: TObject);
    procedure Act_TS_WriteExecute(Sender: TObject);
    procedure cxGV_TenderCoeSelectionChanged(
      Sender: TcxCustomGridTableView);
    procedure FPaymentMode_TenderCoePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FSupplierName_TenderCoePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FSupplierName_TenderCoePropertiesEditValueChanged(
      Sender: TObject);

  private
    ListItemFNumber_Sel,ListItemFNumber_Item,ListItemFNumber_Write:String;
    P_th_Sel,P_th_Item,P_th_Write:String;
    P_Isleaf_Sel,P_Isleaf_Item,P_Isleaf_Write:Integer;
    P_List:string;

    P_i,P_Chang:boolean;
    P_MaxNum,P_MaxID:Integer;

    function AddMain:bool;
    function AddList:bool;
    function AddRd:bool;
    function EditRd:bool;
    function DelRd:bool;


  public
    { Public declarations }
  end;

var
  Frm_DesignTake_TenderCoe: TFrm_DesignTake_TenderCoe;
implementation

uses FRMDATA, COMMON, FrmSelect, ProgBar, PROGRASS;

{$R *.dfm}


function TFrm_DesignTake_TenderCoe.AddRd: bool;
var
  qry:TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  result:=False;

  If mData_TenderCoeList.RecordCount<=0 then
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

function TFrm_DesignTake_TenderCoe.EditRd:bool;
var
  qry:TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  result:=False;

  If mData_TenderCoeList.RecordCount<=0 then
  begin
    result:=True;
    Exit;
  end;

  mData_TenderCoeList.Edit;
  mData_TenderCoeList.Post;

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

function TFrm_DesignTake_TenderCoe.DelRd: bool;
var
 qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.Connection:=mdlData.conn;
  try
    qry.SQL.Text:='Delete from T_DesignTake_TenderCoe where FTenderCoeID=:FTenderCoeID';
    with qry.Parameters do
    begin
      FindParam('FTenderCoeID').value:=mdata_TenderCoe['FTenderCoeID'];
    end;
    result:=qry.ExecSQL>=1;
  finally
    qry.Free;
  end;
end;



function TFrm_DesignTake_TenderCoe.AddMain: bool;
var
 qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If P_state=0 then
  begin
     Act_Set_MaxID.Execute;//取ID
     Act_Set_MaxNum.Execute;//取Num
  end;
  mdata_TenderCoe.Edit;
  mdata_TenderCoe['FTenderCoeID']:=P_MaxID;
  mdata_TenderCoe.post;


  try
    qry.SQL.Text:='Insert into T_DesignTake_TenderCoe(FDepartmentID,FTenderCoeID,FTenderCoeNo,FTenderCoeDate,FSupplierId,FPaymentMode,FTenderCoeReMark,FTenderCoeWriteID,FTenderCoeWriteDate,FTenderCoeStatus) '
                 +'values(:FDepartmentID,:FTenderCoeID,:FTenderCoeNo,:FTenderCoeDate,:FSupplierId,:FPaymentMode,:FTenderCoeReMark,:FTenderCoeWriteID,:FTenderCoeWriteDate,:FTenderCoeStatus)';
   with qry.Parameters do
   begin
     FindParam('FDepartmentID').value:=UserFDepartmentID;
     If P_state=0 then  //新增
     begin
        FindParam('FTenderCoeID').value:=P_MaxID;
        FindParam('FTenderCoeNo').value:=P_MaxNum;
     end;
     If P_state=1 then  //修改
     begin
        FindParam('FTenderCoeID').value:=mdata_TenderCoe['FTenderCoeID'];
        FindParam('FTenderCoeNo').value:=mdata_TenderCoe['FTenderCoeNo'];
     end;
     FindParam('FTenderCoeDate').value:=mdata_TenderCoe['FTenderCoeDate'];
     FindParam('FSupplierId').value:=mdata_TenderCoe['FSupplierId'];
     FindParam('FPaymentMode').value:=mdata_TenderCoe['FPaymentMode'];
     FindParam('FTenderCoeReMark').value:=mdata_TenderCoe['FTenderCoeReMark'];
     FindParam('FTenderCoeWriteID').value:=UserNumID;
     FindParam('FTenderCoeWriteDate').value:=now();
     FindParam('FTenderCoeStatus').value:=0;
   end;
     result:=qry.ExecSQL>=1;
   finally
     qry.Free;
   end;

end;


function TFrm_DesignTake_TenderCoe.AddList: bool;
var
  qry,qry1: TADOQuery;
  i: integer;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.EnableBCD:=False;//小数位数>4
  qry.CommandTimeout:=500;
  result:=False;

  If mData_TenderCoeList.RecordCount<=0 then
  begin
    result:=True;
    Exit;
  end;

  try

    qry.SQL.Text:='Insert into T_DesignTake_TenderCoeList(FTenderCoeID,FPlanTenderListID,FTenderCoeListNum,FTenderCoeListDate,'
                 +'FTenderCoeQry,FOrderPrice,FTaxRate,FTenderCoeListReMark) '
                 +'values(:FTenderCoeID,:FPlanTenderListID,:FTenderCoeListNum,:FTenderCoeListDate,'
                 +':FTenderCoeQry,:FOrderPrice,:FTaxRate,:FTenderCoeListReMark)';

    mData_TenderCoeList.First;
    i:=1;
    while not mData_TenderCoeList.eof do
    begin
      If (mData_TenderCoeList['FPlanTenderListID']<>0) then
      begin
        If qry.Active then qry.Close;
        If P_state=0 then  //新增
           qry.Parameters.FindParam('FTenderCoeID').value:=P_MaxID;
        If P_state=1 then  //修改
           qry.Parameters.FindParam('FTenderCoeID').value:=mdata_TenderCoe['FTenderCoeID'];
        qry.Parameters.FindParam('FPlanTenderListID').value:= mData_TenderCoeList['FPlanTenderListID'];
        qry.Parameters.FindParam('FTenderCoeListNum').value:=i;
        qry.Parameters.FindParam('FTenderCoeListDate').value:=mData_TenderCoeList['FTenderCoeListDate'];
        qry.Parameters.FindParam('FTenderCoeQry').value:=mData_TenderCoeList['FTenderCoeQry'];
        qry.Parameters.FindParam('FOrderPrice').value:=mData_TenderCoeList['FOrderPrice'];
        qry.Parameters.FindParam('FTaxRate').value:=mData_TenderCoeList['FTaxRate'];
        qry.Parameters.FindParam('FTenderCoeListReMark').value:=mData_TenderCoeList['FTenderCoeListReMark'];
        result:=qry.ExecSQL>=1;
        if not result then break;
      end;
        mData_TenderCoeList.Next;
        i:=i+1;
     end;
   finally
     qry.Free;
   end;
end;


procedure TFrm_DesignTake_TenderCoe.FormResize(Sender: TObject);
begin
  inherited;
  TS_PlanTender.TabEnabled:=False;
  L_title.Caption:=UserFDepartmentName+'招标确认单';
  Self.Caption:=UserFDepartmentName+'招标确认单';
end;

procedure TFrm_DesignTake_TenderCoe.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=cafree;
  Frm_DesignTake_TenderCoe:=nil;
end;

procedure TFrm_DesignTake_TenderCoe.TB_EXIT1Click(Sender: TObject);
begin
  inherited;
  TS_PlanTender.TabEnabled:=False;
  PC_1.ActivePage:=TS_TenderCoe;
end;

procedure TFrm_DesignTake_TenderCoe.MyTreeView_PlanTenderExpanding(Sender: TObject;
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

  qry.SQL.Text:='Select * from VT_DesignTake_PlanTender_Sel with(nolock) where FParentNumber= '''
               +PTree(Node.Data).ID+''' and FDepartmentID=:FDepartmentID '
               +' order by FPlanTenderStatus,FNumber';
  qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
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
    with MyTreeView_PlanTender.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('Isleaf').value;
    end;
    qry.Next;
  end;

end;

procedure TFrm_DesignTake_TenderCoe.MyTreeView_PlanTenderChange(Sender: TObject;
  Node: TTreeNode);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If Node = nil then Exit;
  with PTree(Node.Data)^ do
  begin
    ListItemFNumber_Sel:=trim(PTree(Node.Data).FNumber);
    P_th_Sel:=PTree(Node.Data).Caption;
    P_Isleaf_Sel:=PTree(Node.Data).Isleaf;

    If P_Isleaf_Sel>0 then
    begin
      If MyItemList(qry,Mdata_PlanTender,'V_DesignTake_PlanTender','FDepartmentName+'';''+cast(FPlanTenderStatus as varchar(2))+'';''+cast(year(FPlanTenderDate) as varchar(4))+'';''+cast(month(FPlanTenderDate) as varchar(2))+'';''+FPlanTenderNum+'';''',ListItemFNumber_Sel,'') then
      If MyItemListwhere(qry,Mdata_PlanTenderList,'V_DesignTake_PlanTenderList','FDepartmentName+'';''+cast(FPlanTenderStatus as varchar(2))+'';''+cast(year(FPlanTenderDate) as varchar(4))+'';''+cast(month(FPlanTenderDate) as varchar(2))+'';''+FPlanTenderNum+'';''',
                         ListItemFNumber_Sel,' and FPlanTenderQry<>FTenderCoeQry','FPlanTenderNum') then

    end
    else
    begin
      Mdata_PlanTender.Close;
      mdata_PlanTenderList.Close;
    end;
  end;
end;

procedure TFrm_DesignTake_TenderCoe.TB_EXITClick(Sender: TObject);
begin
  inherited;
  self.Close;

end;

procedure TFrm_DesignTake_TenderCoe.OKBtnClick(Sender: TObject);
var qry: TADOQuery;

begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;

  mData_TenderCoe.Edit;
  If (mData_TenderCoe['FSupplierId']=Null) then
     mData_TenderCoe['FSupplierId']:=0;
  If (mData_TenderCoe['FPaymentMode']=Null) then
     mData_TenderCoe['FPaymentMode']:='';
  mData_TenderCoe.Post;

     If (mData_TenderCoe['FSupplierId']=0) then
    begin
      application.MessageBox('供应商不能为空！请重新输入','系统提示',MB_ICONERROR);
      Exit;
    end;
    If Trim(mData_TenderCoe['FPaymentMode'])='' then
    begin
      application.MessageBox('付款方式不能为空！请重新输入','系统提示',MB_ICONERROR);
      Exit;
    end;


  mData_TenderCoeList.Edit;
  mData_TenderCoeList.Post;
  mData_TenderCoeList.First;
  while not mData_TenderCoeList.eof do
  begin
    If (mData_TenderCoeList['FTenderCoeQry']=0) or (mData_TenderCoeList['FOrderPrice']=0) or (mData_TenderCoeList['FTaxRate']=0) then
    begin
      application.MessageBox('数量、单价不能为空！请重新输入','系统提示',MB_ICONERROR);
      Exit;
    end;
    mData_TenderCoeList.Next;
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

procedure TFrm_DesignTake_TenderCoe.CancelBtnClick(Sender: TObject);
begin
  inherited;
  P_state :=2;//不在新增、修改状态
  Act_SetClose.Execute;
end;

procedure TFrm_DesignTake_TenderCoe.MyTreeView_DateExpanding(Sender: TObject;
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
               +'Isleaf from VT_DesignTake_TenderCoe with(nolock) where FParentNumber= '''
               +PTree(Node.Data).ID+''' and FDepartmentID=:FDepartmentID '
               +' order by FNumber';
  qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
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
    with MyTreeView_Date.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('Isleaf').value;
    end;
    qry.Next;
  end;

end;

procedure TFrm_DesignTake_TenderCoe.MyTreeView_DateChange(Sender: TObject;
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

    Act_TS_Item.Execute;
    Act_Status.Execute; //权限设置

  end;

end;

procedure TFrm_DesignTake_TenderCoe.MData_TenderCoeListBeforePost(DataSet: TDataSet);
begin
  inherited;
//  If DataSet['FOrderQry']>DataSet['FAskQry'] then
//     DataSet['FOrderQry']:=DataSet['FAskQry'];
 DataSet['FOrderAmount']:=round(DataSet['FTenderCoeQry']*DataSet['FOrderPrice']*100)/100;
end;

procedure TFrm_DesignTake_TenderCoe.TB_EditClick(Sender: TObject);
begin
  inherited;
  P_state :=1;
  If (mData_TenderCoeList.RecordCount<1) then
    Exit;
  cxGV_TenderCoeList.DataController.DataSource:=DS_Mdata_TenderCoeList;
  cxGvColumn(cxGv_TenderCoeList,Mdata_TenderCoeList);
    Act_SetOpen.Execute;

end;

procedure TFrm_DesignTake_TenderCoe.cxGrid1DBTableView1StylesGetContentStyle(
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

procedure TFrm_DesignTake_TenderCoe.ToolButton9Click(Sender: TObject);
var  i,j,n: integer;
     Insertbz:boolean;
begin
  inherited;
  mData_TenderCoeList.Open;
  mData_TenderCoeList.First;
  for i:=0 to cxGV_PlanTenderList.DataController.Controller.SelectedRecordCount-1 do
  begin
    Insertbz:=false;
    j:=cxGV_PlanTenderList.DataController.GetSelectedRowIndex(i);
    while not mData_TenderCoeList.eof  do
    begin
      If mData_TenderCoeList['FPlanTenderListID']<>cxGV_PlanTenderList.DataController.GetValue(J,9) then
      begin
         mData_TenderCoeList.Next;
      end
      else
      begin
        application.MessageBox('记录重复选！请重新选择','系统提示',MB_ICONERROR);
        Exit;
      end;
    end
  end;
  mData_TenderCoeList.First;
  for i:=0 to cxGV_PlanTenderList.DataController.Controller.SelectedRecordCount-1 do
  begin
    Insertbz:=True;
    j:=cxGV_PlanTenderList.DataController.GetSelectedRowIndex(i);
    If (cxGV_PlanTenderList.DataController.GetValue(J,9)<>0) then    //FPlanTenderListID
    Begin
      mData_TenderCoeList.Append;
      mData_TenderCoeList.Edit;
      mData_TenderCoeList['FNumber']:=cxGV_PlanTenderList.DataController.GetValue(J,1);
      mData_TenderCoeList['FTakeName']:=cxGV_PlanTenderList.DataController.GetValue(J,2);
      mData_TenderCoeList['FTakeModel']:=cxGV_PlanTenderList.DataController.GetValue(J,3);
      mData_TenderCoeList['FTakeUnitName']:=cxGV_PlanTenderList.DataController.GetValue(J,4);
      mData_TenderCoeList['FTakeSumQry']:=cxGV_PlanTenderList.DataController.GetValue(J,5);
      mData_TenderCoeList['FPlanTenderQry']:=cxGV_PlanTenderList.DataController.GetValue(J,6);
      mData_TenderCoeList['FTenderCoeQry']:=cxGV_PlanTenderList.DataController.GetValue(J,6)-cxGV_PlanTenderList.DataController.GetValue(J,7);
      mData_TenderCoeList['FOrderQry']:=cxGV_PlanTenderList.DataController.GetValue(J,8);
      mData_TenderCoeList['FPlanTenderListID']:=cxGV_PlanTenderList.DataController.GetValue(J,9);
      mData_TenderCoeList['FTaxRate']:=17;
      mData_TenderCoeList['FOrderPrice']:=0.00;
      mData_TenderCoeList['FOrderAmount']:=0.00;
      mData_TenderCoeList['FTenderCoeDate']:=Mdata_TenderCoe['FTenderCoeDate'];
      mData_TenderCoeList['FTenderCoeNum']:=Mdata_TenderCoe['FTenderCoeNum'];
      mData_TenderCoeList.Post;
      Insertbz:=False;
    end;
    if Insertbz then break;
  end;
  cxGV_PlanTenderList.DataController.DeleteSelection;   //多行删除

  TS_PlanTender.TabEnabled:=False;
  PC_1.ActivePage:=TS_TenderCoe;

end;

procedure TFrm_DesignTake_TenderCoe.cxGV_PlanTenderListCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  if cxGV_PlanTenderList.Controller.FocusedRowIndex=AViewInfo.RecordViewInfo.Index  then  //是否是选中行
     ACanvas.Canvas.Font.Color:=clHotLight
  else
  if StrToFloat(AViewInfo.GridRecord.DisplayTexts[FPlanTenderQry_PlanTenderList.Index])=StrToFloat(AViewInfo.GridRecord.DisplayTexts[FTenderCoeQry_PlanTenderList.Index]) then    //设置行颜色
  begin
    ACanvas.Canvas.brush.Color := clInactiveCaptionText;
    ACanvas.FillRect(AViewInfo.Bounds);
  end;

end;

procedure TFrm_DesignTake_TenderCoe.FormCreate(Sender: TObject);
begin
  inherited;
  P_state :=2;//不在新增、修改状态
  Act_App.Visible:= mdlData.CheckFrmRights(TFrm_DesignTake_TenderCoe.ClassName,'新增');
  TB_Print.Visible:= mdlData.CheckFrmRights(TFrm_DesignTake_TenderCoe.ClassName,'打印');

 // TS_Item.TabVisible:= False;

{  If mdlData.CheckFrmRights(TFrm_DesignTake_TenderCoe.ClassName,'校对') then
     TS_Item.TabVisible:= True;
  If mdlData.CheckFrmRights(TFrm_DesignTake_TenderCoe.ClassName,'审核') then
     TS_Item.TabVisible:= True;
 }

 // TS_Write.TabVisible:= mdlData.CheckFrmRights(TFrm_DesignTake_TenderCoe.ClassName,'查看');

end;

procedure TFrm_DesignTake_TenderCoe.FOrderQryPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  mData_TenderCoeList.Edit;

end;

procedure TFrm_DesignTake_TenderCoe.N_AllClick(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
//If MyItemList(qry,Mdata_M,'V_DesignOrder','FDepartmentName+'';''+cast(year(FOrderDate) as varchar(4))+'';''+cast(month(FOrderDate) as varchar(2))+'';''+FOrderStatusNotes+'';''+FOrderNum+'';''',ListItemFNumber3,'') then
 { If MyItemList(qry,Mdata_M,'V_DesignOrder','FDepartmentName+'';''+cast(year(FOrderDate) as varchar(4))+'';''+cast(month(FOrderDate) as varchar(2))+'';''+cast(FOrderStatus as varchar(2))+'';''+FOrderNum+'';''',ListItemFNumber,'') then

  begin
    cxGV.DataController.DataSource:=DS_Mdata_M;
    cxGvColumn(cxGv,Mdata_M);
    L_title.Caption:='采购订单查询';
      Act_SetClose.Execute;
  end;
    }
end;

procedure TFrm_DesignTake_TenderCoe.N5Click(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
 // If MyItemListwhere(qry,Mdata_M,'V_DesignOrder','FDateNumber',ListItemFNumber3,' and FOrderStatus=0 ','') then
 { If MyItemListwhere(qry,Mdata_M,'V_DesignOrder','FDepartmentName+'';''+cast(year(FOrderDate) as varchar(4))+'';''+cast(month(FOrderDate) as varchar(2))+'';''+cast(FOrderStatus as varchar(2))+'';''+FOrderNum+'';''',ListItemFNumber3,' and FOrderStatus=0 ','') then
  begin
    cxGV.DataController.DataSource:=DS_Mdata_M;
    cxGvColumn(cxGv,Mdata_M);
    L_title.Caption:='查询未审核单据';
  end;
    }

end;

procedure TFrm_DesignTake_TenderCoe.N6Click(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
{  If MyItemListwhere(qry,Mdata_M,'V_DesignOrder','FDepartmentName+'';''+cast(year(FOrderDate) as varchar(4))+'';''+cast(month(FOrderDate) as varchar(2))+'';''+cast(FOrderStatus as varchar(2))+'';''+FOrderNum+'';''',ListItemFNumber3,' and FOrderStatus=2 ','') then
  begin
    cxGV.DataController.DataSource:=DS_Mdata_M;
    cxGvColumn(cxGv,Mdata_M);
    L_title.Caption:='查询已审核单据';
  end;
    }
end;

procedure TFrm_DesignTake_TenderCoe.N7Click(Sender: TObject);
var
  qry:TADOquery;
begin
{  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If MyItemListwhere(qry,Mdata_M,'V_DesignOrder','FDepartmentName+'';''+cast(year(FOrderDate) as varchar(4))+'';''+cast(month(FOrderDate) as varchar(2))+'';''+cast(FOrderStatus as varchar(2))+'';''+FOrderNum+'';''',ListItemFNumber3,' and FInvoiceStatus=0 ','') then
  begin
    cxGV.DataController.DataSource:=DS_Mdata_M;
    cxGvColumn(cxGv,Mdata_M);
    L_title.Caption:='查询未收发票';
  end;  }

end;

procedure TFrm_DesignTake_TenderCoe.N8Click(Sender: TObject);
var
  qry:TADOquery;
begin
 { qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If MyItemListwhere(qry,Mdata_M,'V_DesignOrder','FDepartmentName+'';''+cast(year(FOrderDate) as varchar(4))+'';''+cast(month(FOrderDate) as varchar(2))+'';''+cast(FOrderStatus as varchar(2))+'';''+FOrderNum+'';''',ListItemFNumber3,' and FInvoiceStatus=1 ','') then
  begin
    cxGV.DataController.DataSource:=DS_Mdata_M;
    cxGvColumn(cxGv,Mdata_M);
    L_title.Caption:='查询已收发票';
  end;
        }
end;

procedure TFrm_DesignTake_TenderCoe.N9Click(Sender: TObject);
var
  qry:TADOquery;
begin
{  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If (cxGV.DataController.DataSource=DS_Mdata_M)  then
  begin
    If MyItemListwhere(qry,Mdata_M,'V_DesignOrder','FDepartmentName+'';''+cast(year(FOrderDate) as varchar(4))+'';''+cast(month(FOrderDate) as varchar(2))+'';''+cast(FOrderStatus as varchar(2))+'';''+FOrderNum+'';''',ListItemFNumber3,' and FInvoiceStatus=2 ','') then
    begin
      cxGV.DataController.DataSource:=DS_Mdata_M;
      cxGvColumn(cxGv,Mdata_M);
      L_title.Caption:='查询已核销发票';
    end;
  end;    }
end;

procedure TFrm_DesignTake_TenderCoe.N_AuditClick(Sender: TObject);
var
 qry:TADOquery;
 s:String;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  s:=Mdata_TenderCoe['FTenderCoerNum'];
{
  If (mdata_M['FTenderCoeStatus']=0) and  (cxGV.DataController.DataSource=DS_Mdata_M) then
  begin
    If application.MessageBox(Pchar('警告：是否审核采购单号为：【'+s+'】的单据？'+chr(13)+chr(13)
    //If application.MessageBox(Pchar('警告：是否审核采购单号为：【】的单据？'+chr(13)+chr(13)
                                   +'审核后的数据不允许修改和删除，确定要审核本单据吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      try
        qry.SQL.Text:='Update T_DesignOrder Set FTenderCoeStatus=2,FOrderAudit=:FOrderAudit,FOrderAuditDate=:FOrderAuditDate  where FOrderID=:FOrderID';
        qry.Parameters.FindParam('FOrderAudit').value:= UserNum;
        qry.Parameters.FindParam('FOrderAuditDate').value:= now();
        qry.Parameters.FindParam('FOrderID').value:=mdata_M['FOrderID'];
        qry.ExecSQL;
      finally
         ;
      end;
      application.MessageBox('审核完毕！','系统提示',MB_ICONINFORMATION);
    end;
  end; }
end;

procedure TFrm_DesignTake_TenderCoe.N_Audit_NClick(Sender: TObject);
var
 qry:TADOquery;
 s:String;
begin
{  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  s:=mdata_M['FOrderNum'];

  If mdata_M['FOrderStatus']=0 then
  begin
    application.MessageBox('此单据未审核,无须反审核！','系统提示',MB_ICONINFORMATION);
    Exit;
  end;

  If (mdata_M['FOrderStatus']=2) and  (cxGV.DataController.DataSource=DS_Mdata_M)  then
  begin
    If application.MessageBox(Pchar('警告：是否反审核采购单号为：【'+s+'】的单据？'+chr(13)+chr(13)
  //  If application.MessageBox(Pchar('警告：是否反审核采购单号为：【】的单据？'+chr(13)+chr(13)
                                   +'反审核后的数据不允许修改和删除，确定要反审核本单据吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      try
        qry.SQL.Text:='Update T_DesignOrder Set FOrderStatus=0,FOrderAudit=:FOrderAudit,FOrderAuditDate=:FOrderAuditDate  where FOrderID=:FOrderID';
        qry.Parameters.FindParam('FOrderAudit').value:= UserNum;
        qry.Parameters.FindParam('FOrderAuditDate').value:= now();
        qry.Parameters.FindParam('FOrderID').value:= mdata_M['FOrderID'];
        qry.ExecSQL;
      finally
         ;
      end;
      application.MessageBox('反审核完毕！','系统提示',MB_ICONINFORMATION);
    end;
  end; }
end;

procedure TFrm_DesignTake_TenderCoe.N_QryClick(Sender: TObject);
var
 qry:TADOquery;
begin
 { qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  If ((mdlData.CheckFrmRights(TFrm_DesignTake_TenderCoe.ClassName,'审核')=True)) or  (Trim(UpperCase(mdata_M['FOrderUserNum']))=UpperCase(UserNum)) then
  begin
    If MyItemList(qry,Mdata,'V_DesignOrderList','FDateNumber',mdata_M['FDateNumber'],'FDateNumber,FOrderNum') then
    begin
      cxGV.DataController.DataSource:=DS_Mdata;
      cxGvColumn(cxGv,Mdata);
         TB_Edit.Enabled:=mdlData.CheckFrmRights(TFrm_DesignTake_TenderCoe.ClassName,'修改');
      TB_Del.Enabled:=mdlData.CheckFrmRights(TFrm_DesignTake_TenderCoe.ClassName,'删除');
      Label10.Caption:='外协购件采购订单修改';
    end
  end
  else
  begin
    application.MessageBox('无查询此单据的权限！','系统提示',MB_ICONINFORMATION);
    Exit;
  end;
   }
end;

procedure TFrm_DesignTake_TenderCoe.N_DelClick(Sender: TObject);
var
  qry:TADOQuery;
begin
{  qry:=TAdoQuery.Create(self);
  qry.Connection:=mdlData.conn;
  N_Qry.Click;

  If (mdata_M.RecordCount<1) then
     Exit;

  If application.MessageBox(Pchar('警告：是否删除采购订单号为：【'+Trim(Mdata_M['FOrderNum'])+'】的数据？'+chr(13)+chr(13)
                           +'删除数据操作将不可恢复，确定要删除本单据吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
  If application.MessageBox(Pchar('警告：是否删除采购订号为：【'+Trim(Mdata_M['FOrderNum'])+'】的数据？'+chr(13)+chr(13)
                           +'删除数据操作将不可恢复，确定要删除本单据吗？'),'再次警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then

  begin
    //单据删除
    try
      qry.SQL.Text:='Delete from T_DesignOrder where FOrderID=:FOrderID';
      with qry.Parameters do
      begin
        FindParam('FOrderID').value:=mdata_M['FOrderID'];
      end;
    finally
  end;
  end;
  mdata_M.Close;
  qry.Free;
      }
end;

procedure TFrm_DesignTake_TenderCoe.Act_AppExecute(Sender: TObject);
var
 i:Integer;
 qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  P_state :=0;     //新增
  L_title.Caption:='招标确认信息新增';
  P_Chang:=False;
  
  PageControl2.Visible:=True;
  //主表
  try
    qry.SQL.Text:='Select * from  V_DesignTake_TenderCoe with(nolock) where FTenderCoeID=:FTenderCoeID';
    qry.Parameters.FindParam('FTenderCoeID').value:= 0;
    qry.Open;
  finally
    ;
  end;
  Mdata_TenderCoe.CopyFromDataSet(qry);
  Mdata_TenderCoe.Open;
  Mdata_TenderCoe.Edit;
  Mdata_TenderCoe['FTenderCoeDate']:=date();
  Mdata_TenderCoe.Post;

  Act_Set_MaxNum.Execute;    //取单号

  Mdata_TenderCoe.Edit;
  Mdata_TenderCoe['FTenderCoeNo']:=P_MaxNum;
  Mdata_TenderCoe['FTenderCoeID']:=0;
  Mdata_TenderCoe['FTenderCoeNum']:=ForMatDateTime('yyyymm',(date()))+Format('%.4d',[(P_MaxNum)]);
  Mdata_TenderCoe['FTenderCoeStatus']:=0;
  Mdata_TenderCoe['FTenderCoeStatusNotes']:='填单';
  Mdata_TenderCoe['FTenderCoeDate']:=date();
  Mdata_TenderCoe['FTenderCoeWrite']:=UserNum;
  Mdata_TenderCoe['FTenderCoeWriteDate']:=date();
  Mdata_TenderCoe.Post;

   //明细表

  try
    qry.SQL.Text:='Select * from  V_DesignTake_TenderCoeList with(nolock) where FTenderCoeListID=:FTenderCoeListID';
    qry.Parameters.FindParam('FTenderCoeListID').value:= 0;
    qry.Open;
  finally
    ;
  end;
  Mdata_TenderCoeList.CopyFromDataSet(qry);
  Mdata_TenderCoeList.Open;
  Mdata_TenderCoeList.Close;
  Act_SetOpen.Execute;
  Act_Ref_PlanTender.Execute;

{  Mdata_TenderCoeList.Edit;
  mData_TenderCoeList['FTenderCoeNum']:=ForMatDateTime('yyyymm',(date()))+Format('%.4d',[(P_MaxNum)]);
  mData_TenderCoeList['FPlanTenderListID']:=0;
  mData_TenderCoeList['FTenderCoeListID']:=0;
  mData_TenderCoeList['FTakeQry']:=0;
  mData_TenderCoeList['FPlanTenderQry']:=0;
  mData_TenderCoeList['FTenderCoeQry']:=0;
  mData_TenderCoeList['FOrderQry']:=0;

  mData_TenderCoeList['FOrderPrice']:=0;
  mData_TenderCoeList['FTaxRate']:=17;
  mData_TenderCoeList['FOrderAmount']:=0;

  mData_TenderCoeList.Post;  }


 //TBar_Sel.Visible:=True;

end;

procedure TFrm_DesignTake_TenderCoe.Act_EditExecute(Sender: TObject);
var
 qry:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  P_state :=1;
  If (Mdata_TenderCoe.RecordCount<1) then
    Exit;
  Act_SetOpen.Execute;

end;

procedure TFrm_DesignTake_TenderCoe.Act_DelExecute(Sender: TObject);
var
  qry:TADOQuery;
begin
  qry:=TAdoQuery.Create(self);
  qry.Connection:=mdlData.conn;
  P_List :=Mdata_TenderCoe['FTenderCoeNum'];

  If (Mdata_TenderCoe.RecordCount<1) then
     Exit;

  If application.MessageBox(Pchar('警告：是否删除招标申请单号为：【'+P_List+'】的数据？'+chr(13)+chr(13)
                           +'删除数据操作将不可恢复，确定要删除本单据吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
  If application.MessageBox(Pchar('警告：是否删除招标申请号为：【'+P_List+'】的数据？'+chr(13)+chr(13)
                           +'删除数据操作将不可恢复，确定要删除本单据吗？'),'再次警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then

  begin
    //单据删除
    If not DelRd then
    begin
      application.MessageBox('删除单据失败！','系统提示',MB_ICONINFORMATION);
      mdlData.conn.RollbackTrans;
      Exit;
    end;
    Mdata_TenderCoe.Edit;
    Mdata_TenderCoe.Delete;
  end;
  mData_TenderCoeList.Close;
  qry.Free;
end;

procedure TFrm_DesignTake_TenderCoe.Act_AuditExecute(Sender: TObject);
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
      Mdata_TenderCoe.First;
      while not Mdata_TenderCoe.eof do
      begin
        try
          qry.SQL.Text:='Update T_DesignTake_TenderCoe Set FTenderCoeStatus=3,FTenderCoeAuditID=:FTenderCoeAuditID,FTenderCoeAuditDate=:FTenderCoeAuditDate  where FTenderCoeID=:FTenderCoeID';
          qry.Parameters.FindParam('FTenderCoeAuditID').value:= UserNumID;
          qry.Parameters.FindParam('FTenderCoeAuditDate').value:= now();
          qry.Parameters.FindParam('FTenderCoeID').value:=Mdata_TenderCoe['FTenderCoeID'];
          qry.ExecSQL;
        finally
          ;
        end;
        Mdata_TenderCoe.Edit;
        Mdata_TenderCoe['FTenderCoeStatus']:=3;
        Mdata_TenderCoe['FTenderCoeStatusNotes']:='审核';
        Mdata_TenderCoe['FTenderCoeAuditID']:=UserNumID;
        Mdata_TenderCoe['FTenderCoeAudit']:=UserNum;
        Mdata_TenderCoe['FTenderCoeAuditDate']:=now();
        Mdata_TenderCoe.Post;
        Mdata_TenderCoe.Next;
      end;
      If Mdata_TenderCoe.RecordCount=1 then
      begin
        application.MessageBox('审核完毕！','系统提示',MB_ICONINFORMATION);
        TB_Audit.Caption:='审核撤回';
      end;
      If Mdata_TenderCoe.RecordCount>1 then
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
      Mdata_TenderCoe.First;
      while not Mdata_TenderCoe.eof do
      begin
        try
          qry.SQL.Text:='Update T_DesignTake_TenderCoe Set FTenderCoeStatus=2,FTenderCoeAuditID=:FTenderCoeAuditID,FTenderCoeAuditDate=:FTenderCoeAuditDate where FTenderCoeID=:FTenderCoeID';
          qry.Parameters.FindParam('FTenderCoeAuditID').value:= UserNumID;
          qry.Parameters.FindParam('FTenderCoeAuditDate').value:= Null;
          qry.Parameters.FindParam('FTenderCoeID').value:= Mdata_TenderCoe['FTenderCoeID'];
          qry.ExecSQL;
        finally
          ;
        end;
        Mdata_TenderCoe.Edit;
        Mdata_TenderCoe['FTenderCoeStatus']:=2;
        Mdata_TenderCoe['FTenderCoeStatusNotes']:='校对';
        Mdata_TenderCoe['FTenderCoeAuditID']:=0;
        Mdata_TenderCoe['FTenderCoeAudit']:='';
        Mdata_TenderCoe['FTenderCoeAuditDate']:=Null;
        Mdata_TenderCoe.Post;
        Mdata_TenderCoe.Next;
      end;
      If Mdata_TenderCoe.RecordCount=1 then
      begin
        application.MessageBox('审核撤回完毕！','系统提示',MB_ICONINFORMATION);
        TB_Audit.Caption:='审核';
      end;
      If Mdata_TenderCoe.RecordCount>1 then
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

procedure TFrm_DesignTake_TenderCoe.Act_StatusExecute(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If MData_TenderCoe.RecordCount<=0 then
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
      qry.SQL.Text:='Select distinct FTenderCoeStatus from V_DesignTake_TenderCoe with(nolock) where FFullNumber like :FFullNumber and FDepartmentID=:FDepartmentID';
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
      qry.SQL.Text:='Select distinct FTenderCoeStatus from V_DesignTake_TenderCoe with(nolock) where FFullNumber_Write like :FFullNumber_Write and FDepartmentID=:FDepartmentID';
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
      qry.SQL.Text:='Select FTenderCoeStatus,FTenderCoeWriteID from V_DesignTake_TenderCoe with(nolock) '
                   +' where FTenderCoeStatus=0  and FFullNumber like :FFullNumber and FTenderCoeWriteID=:FTenderCoeWriteID and FDepartmentID=:FDepartmentID';
      qry.Parameters.FindParam('FFullNumber').value:=ListItemFNumber_Item+'%';
      qry.Parameters.FindParam('FTenderCoeWriteID').value:= UserNumID;
      qry.Parameters.FindParam('FDepartmentID').value:= UserFDepartmentID;
      qry.Open;
    finally
      ;
     end;
  end;
  If PC_Tree.ActivePage=TS_Write then
  begin
    try
      qry.SQL.Text:='Select FTenderCoeStatus,FTenderCoeWriteID from V_DesignTake_TenderCoe with(nolock) '
                   +' where FTenderCoeStatus=0  and FFullNumber_Write like :FFullNumber_Write and FTenderCoeWriteID=:FTenderCoeWriteID and FDepartmentID=:FDepartmentID';
      qry.Parameters.FindParam('FFullNumber_Write').value:=ListItemFNumber_Write+'%';
      qry.Parameters.FindParam('FTenderCoeWriteID').value:= UserNumID;
      qry.Parameters.FindParam('FDepartmentID').value:= UserFDepartmentID;
      qry.Open;
    finally
      ;
    end;
  end;


  If qry.RecordCount=1 then
  begin
    TB_Submit.Caption:='提交';
    TB_Submit.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake_TenderCoe.ClassName,'提交');
    TB_Edit.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake_TenderCoe.ClassName,'修改');
    TB_Del.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake_TenderCoe.ClassName,'删除');
  end;
  If qry.RecordCount>1 then
  begin
    TB_Submit.Caption:='批量提交';
    TB_Submit.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake_TenderCoe.ClassName,'提交');
    TB_Edit.Visible:=False;
    TB_Del.Visible:=False;
  end;

   //提交撤回
  try
    If PC_Tree.ActivePage=TS_Item then
    begin
      qry.SQL.Text:='Select FTenderCoeStatus,FTenderCoeWriteID from V_DesignTake_TenderCoe with(nolock) '
                   +' where FTenderCoeStatus=1  and FFullNumber like :FFullNumber and FTenderCoeWriteID=:FTenderCoeWriteID and FDepartmentID=:FDepartmentID';
      qry.Parameters.FindParam('FFullNumber').value:=ListItemFNumber_Item+'%';
    end;
    If PC_Tree.ActivePage=TS_Write then
    begin
      qry.SQL.Text:='Select FTenderCoeStatus,FTenderCoeWriteID from V_DesignTake_TenderCoe with(nolock) '
                   +' where FTenderCoeStatus=1  and FFullNumber_Write like :FFullNumber_Write and FTenderCoeWriteID=:FTenderCoeWriteID and FDepartmentID=:FDepartmentID';
      qry.Parameters.FindParam('FFullNumber_Write').value:=ListItemFNumber_Write+'%';
    end;
    qry.Parameters.FindParam('FTenderCoeWriteID').value:= UserNumID;
    qry.Parameters.FindParam('FDepartmentID').value:= UserFDepartmentID;
    qry.Open;
  finally
    ;
  end;
  If qry.RecordCount=1 then
  begin
    TB_Submit.Caption:='提交撤回';
    TB_Submit.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake_TenderCoe.ClassName,'提交');
    TB_Check.Caption:='校对';
    TB_Check.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake_TenderCoe.ClassName,'校对');
    TB_Edit.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake_TenderCoe.ClassName,'修改');
    TB_Del.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake_TenderCoe.ClassName,'删除');
    TB_Check.Visible:=False;
  end;
  If qry.RecordCount>1 then
  begin
    TB_Submit.Caption:='批量提交撤回';
    TB_Submit.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake_TenderCoe.ClassName,'提交');
    TB_Check.Caption:='批量校对';
    TB_Check.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake_TenderCoe.ClassName,'校对');
    TB_Edit.Visible:=False;
    TB_Del.Visible:=False;
    TB_Check.Visible:=False;
  end;

  //校对 1
  try
    If PC_Tree.ActivePage=TS_Item then
    begin
      qry.SQL.Text:='Select FTenderCoeStatus from V_DesignTake_TenderCoe with(nolock) '
                   +' where FTenderCoeStatus=1 and FFullNumber like :FFullNumber and FDepartmentID=:FDepartmentID';
      qry.Parameters.FindParam('FFullNumber').value:=ListItemFNumber_Item+'%';
    end;
     If PC_Tree.ActivePage=TS_Write then
    begin
      qry.SQL.Text:='Select FTenderCoeStatus from V_DesignTake_TenderCoe with(nolock) '
                   +' where FTenderCoeStatus=1 and FFullNumber_Write like :FFullNumber_Write and FDepartmentID=:FDepartmentID';
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
    TB_Check.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake_TenderCoe.ClassName,'校对');
    TB_Edit.Visible:=False;
    TB_Del.Visible:=False;
  end;
  If qry.RecordCount>1 then
  begin
    TB_Check.Caption:='批量校对';
    TB_Check.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake_TenderCoe.ClassName,'校对');
    TB_Edit.Visible:=False;
    TB_Del.Visible:=False;
  end;
     //校对  2
  try
    If PC_Tree.ActivePage=TS_Item then
    begin
      qry.SQL.Text:='Select FTenderCoeStatus from V_DesignTake_TenderCoe with(nolock) '
                   +' where FTenderCoeStatus=2 and FFullNumber like :FFullNumber and FDepartmentID=:FDepartmentID';
      qry.Parameters.FindParam('FFullNumber').value:=ListItemFNumber_Item+'%';
    end;
    If PC_Tree.ActivePage=TS_Write then
    begin
      qry.SQL.Text:='Select FTenderCoeStatus from V_DesignTake_TenderCoe with(nolock) '
                   +' where FTenderCoeStatus=2 and FFullNumber_Write like :FFullNumber_Write and FDepartmentID=:FDepartmentID';
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
    TB_Check.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake_TenderCoe.ClassName,'校对');
    TB_Audit.Caption:='审核';
    TB_Audit.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake_TenderCoe.ClassName,'审核');
    TB_Edit.Visible:=False;
    TB_Del.Visible:=False;
  end;
  If qry.RecordCount>1 then
  begin
    TB_Check.Caption:='批量校对';
    TB_Check.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake_TenderCoe.ClassName,'校对');
    TB_Audit.Caption:='批量审核';
    TB_Audit.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake_TenderCoe.ClassName,'审核');
    TB_Edit.Visible:=False;
    TB_Del.Visible:=False;
  end;
  //审核  3
  try
    If PC_Tree.ActivePage=TS_Item then
    begin
      qry.SQL.Text:='Select FTenderCoeStatus from V_DesignTake_TenderCoe with(nolock) '
                   +' where FTenderCoeStatus=3 and FFullNumber like :FFullNumber and FDepartmentID=:FDepartmentID';
      qry.Parameters.FindParam('FFullNumber').value:=ListItemFNumber_Item+'%';
    end;
    If PC_Tree.ActivePage=TS_Write then
    begin
      qry.SQL.Text:='Select FTenderCoeStatus from V_DesignTake_TenderCoe with(nolock) '
                   +' where FTenderCoeStatus=3 and FFullNumber_Write like :FFullNumber_Write and FDepartmentID=:FDepartmentID';
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
    TB_PushDown.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake_TenderCoe.ClassName,'下推');

    TB_Check.Visible:=False;
    TB_Audit.Visible:=False;
    TB_Edit.Visible:=False;
    TB_Del.Visible:=False;
  end;
  If qry.RecordCount>1 then
  begin
    TB_PushDown.Caption:='批量下推';
    TB_PushDown.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake_TenderCoe.ClassName,'下推');

    TB_Check.Visible:=False;
    TB_Audit.Visible:=False;
    TB_Edit.Visible:=False;
    TB_Del.Visible:=False;
  end;




   //校对撤回
  try
    If PC_Tree.ActivePage=TS_Item then
    begin
      qry.SQL.Text:='Select FTenderCoeStatus,FTenderCoeCheckID from V_DesignTake_TenderCoe with(nolock) '
                   +' where FTenderCoeStatus=2 and FFullNumber like :FFullNumber and FTenderCoeCheckID=:FTenderCoeCheckID and FDepartmentID=:FDepartmentID';
      qry.Parameters.FindParam('FFullNumber').value:=ListItemFNumber_Item+'%';
    end;
    If PC_Tree.ActivePage=TS_Write then
    begin
      qry.SQL.Text:='Select FTenderCoeStatus,FTenderCoeCheckID from V_DesignTake_TenderCoe with(nolock) '
                   +' where FTenderCoeStatus=2 and FFullNumber_Write like :FFullNumber_Write and FTenderCoeCheckID=:FTenderCoeCheckID and FDepartmentID=:FDepartmentID';
      qry.Parameters.FindParam('FFullNumber_Write').value:=ListItemFNumber_Write+'%';
    end;
    qry.Parameters.FindParam('FTenderCoeCheckID').value:= UserNumID;
    qry.Parameters.FindParam('FDepartmentID').value:= UserFDepartmentID;
    qry.Open;
  finally
    ;
  end;
  If qry.RecordCount=1 then
  begin
    TB_Check.Caption:='校对撤回';
    TB_Check.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake_TenderCoe.ClassName,'校对');
    TB_Submit.Visible:=False;
    TB_Edit.Visible:=False;
    TB_Del.Visible:=False;
  end;
  If qry.RecordCount>1 then
  begin
    TB_Check.Caption:='批量校对撤回';
    TB_Check.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake_TenderCoe.ClassName,'校对');
    TB_Submit.Visible:=False;
    TB_Edit.Visible:=False;
    TB_Del.Visible:=False;
  end;

   //审核撤回
  try
    If PC_Tree.ActivePage=TS_Item then
    begin
      qry.SQL.Text:='Select FTenderCoeStatus,FTenderCoeAuditID from V_DesignTake_TenderCoe with(nolock) '
                  +' where FTenderCoeStatus=3 and FFullNumber like :FFullNumber and FTenderCoeAuditID=:FTenderCoeAuditID and FDepartmentID=:FDepartmentID ';
      qry.Parameters.FindParam('FFullNumber').value:=ListItemFNumber_Item+'%';
    end;
    If PC_Tree.ActivePage=TS_Write then
    begin
      qry.SQL.Text:='Select FTenderCoeStatus,FTenderCoeAuditID from V_DesignTake_TenderCoe with(nolock) '
                  +' where FTenderCoeStatus=3 and FFullNumber_Write like :FFullNumber_Write and FTenderCoeAuditID=:FTenderCoeAuditID and FDepartmentID=:FDepartmentID ';
      qry.Parameters.FindParam('FFullNumber_Write').value:=ListItemFNumber_Write+'%';
    end;
    qry.Parameters.FindParam('FTenderCoeAuditID').value:= UserNumID;
    qry.Parameters.FindParam('FDepartmentID').value:= UserFDepartmentID;
    qry.Open;
  finally
    ;
  end;
  If qry.RecordCount=1 then
  begin
    TB_Audit.Caption:='审核撤回';
    TB_Audit.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake_TenderCoe.ClassName,'审核');
    TB_Check.Visible:=False;
    TB_Submit.Visible:=False;
    TB_Edit.Visible:=False;
    TB_Del.Visible:=False;
  end;
  If qry.RecordCount>1 then
  begin
    TB_Audit.Caption:='批量审核撤回';
    TB_Audit.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake_TenderCoe.ClassName,'审核');
    TB_Submit.Visible:=False;
    TB_Check.Visible:=False;
    TB_Edit.Visible:=False;
    TB_Del.Visible:=False;
  end;


   //下推撤回
  try
    If PC_Tree.ActivePage=TS_Item then
    begin
      qry.SQL.Text:='Select FTenderCoeStatus,FTenderCoePushDownID from V_DesignTake_TenderCoe with(nolock) '
                   +' where FTenderCoeStatus=4 and FFullNumber like :FFullNumber and FTenderCoePushDownID=:FTenderCoePushDownID and FDepartmentID=:FDepartmentID ';
      qry.Parameters.FindParam('FFullNumber').value:=ListItemFNumber_Item+'%';
    end;
     If PC_Tree.ActivePage=TS_Write then
    begin
      qry.SQL.Text:='Select FTenderCoeStatus,FTenderCoePushDownID from V_DesignTake_TenderCoe with(nolock) '
                   +' where FTenderCoeStatus=4 and FFullNumber_Write like :FFullNumber_Write and FTenderCoePushDownID=:FTenderCoePushDownID and FDepartmentID=:FDepartmentID ';
      qry.Parameters.FindParam('FFullNumber_Write').value:=ListItemFNumber_Write+'%';
    end;

    qry.Parameters.FindParam('FTenderCoePushDownID').value:= UserNumID;
    qry.Parameters.FindParam('FDepartmentID').value:= UserFDepartmentID;
    qry.Open;
  finally
    ;
  end;
  If qry.RecordCount=1 then
  begin
    TB_PushDown.Caption:='下推撤回';
    TB_PushDown.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake_TenderCoe.ClassName,'下推');
    TB_Audit.Visible:=False;
    TB_Check.Visible:=False;
    TB_Submit.Visible:=False;
    TB_Edit.Visible:=False;
    TB_Del.Visible:=False;
  end;
  If qry.RecordCount>1 then
  begin
    TB_PushDown.Caption:='批量下推撤回';
    TB_PushDown.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake_TenderCoe.ClassName,'下推');
    TB_Audit.Visible:=False;
    TB_Submit.Visible:=False;
    TB_Check.Visible:=False;
    TB_Edit.Visible:=False;
    TB_Del.Visible:=False;
  end;



end;

procedure TFrm_DesignTake_TenderCoe.Act_SubmitExecute(Sender: TObject);
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
      Mdata_TenderCoe.First;
      while not Mdata_TenderCoe.eof do
      begin
        try
          qry.SQL.Text:='Update T_DesignTake_TenderCoe Set FTenderCoeStatus=1,FTenderCoeSubmitDate=:FTenderCoeSubmitDate  where FTenderCoeID=:FTenderCoeID';
          qry.Parameters.FindParam('FTenderCoeSubmitDate').value:= now();
          qry.Parameters.FindParam('FTenderCoeID').value:=Mdata_TenderCoe['FTenderCoeID'];
          qry.ExecSQL;
        finally
          ;
        end;
        Mdata_TenderCoe.Edit;
        Mdata_TenderCoe['FTenderCoeStatus']:=1;
        Mdata_TenderCoe['FTenderCoeStatusNotes']:='提交';
        Mdata_TenderCoe['FTenderCoeSubmitDate']:=now();
        Mdata_TenderCoe.Post;
        Mdata_TenderCoe.Next;
      end;
      If Mdata_TenderCoe.RecordCount=1 then
      begin
        application.MessageBox('提交完毕！','系统提示',MB_ICONINFORMATION);
        TB_Submit.Caption:='提交撤回';
        TB_Edit.Visible:=False;
        TB_Del.Visible:=False;
      end;
      If Mdata_TenderCoe.RecordCount>1 then
      begin
        application.MessageBox('批量提交完毕！','系统提示',MB_ICONINFORMATION);
        TB_Submit.Caption:='批量提交撤回';
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
      Mdata_TenderCoe.First;
      while not Mdata_TenderCoe.eof do
      begin
        try
          qry.SQL.Text:='Update T_DesignTake_TenderCoe Set FTenderCoeStatus=0,FTenderCoeSubmitDate=:FTenderCoeSubmitDate where FTenderCoeID=:FTenderCoeID';
          qry.Parameters.FindParam('FTenderCoeSubmitDate').value:= Null;
          qry.Parameters.FindParam('FTenderCoeID').value:= Mdata_TenderCoe['FTenderCoeID'];
          qry.ExecSQL;
        finally
          ;
        end;
        Mdata_TenderCoe.Edit;
        Mdata_TenderCoe['FTenderCoeStatus']:=0;
        Mdata_TenderCoe['FTenderCoeStatusNotes']:='填单';
        Mdata_TenderCoe['FTenderCoeSubmitDate']:=Null;
        Mdata_TenderCoe.Post;
        Mdata_TenderCoe.Next;
      end;
      If Mdata_TenderCoe.RecordCount=1 then
      begin
        application.MessageBox('提交撤回完毕！','系统提示',MB_ICONINFORMATION);
        TB_Submit.Caption:='提交';
      end;
      If Mdata_TenderCoe.RecordCount>1 then
      begin
        application.MessageBox('批量提交撤回完毕！','系统提示',MB_ICONINFORMATION);
        TB_Submit.Caption:='批量提交';
        TB_Edit.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake_TenderCoe.ClassName,'修改');
        TB_Del.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake_TenderCoe.ClassName,'删除');
      end;
      Act_Status.Execute;  //权限设置
    end;
    P_state:=2;
    Exit;
  end;
  Act_Ref_Item.Execute;
  Act_Ref_Write.Execute;

end;

procedure TFrm_DesignTake_TenderCoe.Act_CheckExecute(Sender: TObject);
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
      Mdata_TenderCoe.First;
      while not Mdata_TenderCoe.eof do
      begin
        try
          qry.SQL.Text:='Update T_DesignTake_TenderCoe Set FTenderCoeStatus=2,FTenderCoeCheckID=:FTenderCoeCheckID,FTenderCoeCheckDate=:FTenderCoeCheckDate  where FTenderCoeID=:FTenderCoeID';
          qry.Parameters.FindParam('FTenderCoeCheckID').value:= UserNumID;
          qry.Parameters.FindParam('FTenderCoeCheckDate').value:= now();
          qry.Parameters.FindParam('FTenderCoeID').value:=Mdata_TenderCoe['FTenderCoeID'];
          qry.ExecSQL;
        finally
          ;
        end;
        Mdata_TenderCoe.Edit;
        Mdata_TenderCoe['FTenderCoeStatus']:=2;
        Mdata_TenderCoe['FTenderCoeStatusNotes']:='校对';
        Mdata_TenderCoe['FTenderCoeCheckID']:=UserNumID;
        Mdata_TenderCoe['FTenderCoeCheck']:=UserNum;
        Mdata_TenderCoe['FTenderCoeCheckDate']:=now();
        Mdata_TenderCoe.Post;
        Mdata_TenderCoe.Next;
      end;
      If Mdata_TenderCoe.RecordCount=1 then
      begin
        application.MessageBox('校对完毕！','系统提示',MB_ICONINFORMATION);
        TB_Check.Caption:='校对撤回';
      end;
      If Mdata_TenderCoe.RecordCount>1 then
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
      Mdata_TenderCoe.First;
      while not Mdata_TenderCoe.eof do
      begin
        try
          qry.SQL.Text:='Update T_DesignTake_TenderCoe Set FTenderCoeStatus=1,FTenderCoeCheckID=:FTenderCoeCheckID,FTenderCoeCheckDate=:FTenderCoeCheckDate where FTenderCoeID=:FTenderCoeID';
          qry.Parameters.FindParam('FTenderCoeCheckID').value:= UserNumID;
          qry.Parameters.FindParam('FTenderCoeCheckDate').value:= Null;
          qry.Parameters.FindParam('FTenderCoeID').value:= Mdata_TenderCoe['FTenderCoeID'];
          qry.ExecSQL;
        finally
          ;
        end;
        Mdata_TenderCoe.Edit;
        Mdata_TenderCoe['FTenderCoeStatus']:=1;
        Mdata_TenderCoe['FTenderCoeStatusNotes']:='提交';
        Mdata_TenderCoe['FTenderCoeCheckID']:=0;
        Mdata_TenderCoe['FTenderCoeCheck']:='';
        Mdata_TenderCoe['FTenderCoeCheckDate']:=Null;
        Mdata_TenderCoe.Post;
        Mdata_TenderCoe.Next;
      end;
      If Mdata_TenderCoe.RecordCount=1 then
      begin
        application.MessageBox('校对撤回完毕！','系统提示',MB_ICONINFORMATION);
        TB_Check.Caption:='校对';
      end;
      If Mdata_TenderCoe.RecordCount>1 then
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

procedure TFrm_DesignTake_TenderCoe.Act_PushDownExecute(Sender: TObject);
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
      Mdata_TenderCoe.First;
      while not Mdata_TenderCoe.eof do
      begin
        try
          qry.SQL.Text:='Update T_DesignTake_TenderCoe Set FTenderCoeStatus=4,FTenderCoePushDownID=:FTenderCoePushDownID,FTenderCoePushDownDate=:FTenderCoePushDownDate  where FTenderCoeID=:FTenderCoeID';
          qry.Parameters.FindParam('FTenderCoePushDownID').value:= UserNumID;
          qry.Parameters.FindParam('FTenderCoePushDownDate').value:= now();
          qry.Parameters.FindParam('FTenderCoeID').value:=Mdata_TenderCoe['FTenderCoeID'];
          qry.ExecSQL;
        finally
          ;
        end;
        Mdata_TenderCoe.Edit;
        Mdata_TenderCoe['FTenderCoeStatus']:=4;
        Mdata_TenderCoe['FTenderCoeStatusNotes']:='下推';
        Mdata_TenderCoe['FTenderCoePushDownID']:=0;
        Mdata_TenderCoe['FTenderCoePushDown']:='';
        Mdata_TenderCoe['FTenderCoePushDownDate']:=now();
        Mdata_TenderCoe.Post;
        Mdata_TenderCoe.Next;
      end;
      If Mdata_TenderCoe.RecordCount=1 then
      begin
        application.MessageBox('下推完毕！','系统提示',MB_ICONINFORMATION);
        TB_PushDown.Caption:='下推撤回';
      end;
      If Mdata_TenderCoe.RecordCount>1 then
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
      Mdata_TenderCoe.First;
      while not Mdata_TenderCoe.eof do
      begin
        try
          qry.SQL.Text:='Update T_DesignTake_TenderCoe Set FTenderCoeStatus=3,FTenderCoePushDownID=:FTenderCoePushDownID,FTenderCoePushDownDate=:FTenderCoePushDownDate where FTenderCoeID=:FTenderCoeID';
          qry.Parameters.FindParam('FTenderCoePushDownID').value:= UserNumID;
          qry.Parameters.FindParam('FTenderCoePushDownDate').value:= Null;
          qry.Parameters.FindParam('FTenderCoeID').value:= Mdata_TenderCoe['FTenderCoeID'];
          qry.ExecSQL;
        finally
          ;
        end;
        Mdata_TenderCoe.Edit;
        Mdata_TenderCoe['FTenderCoeStatus']:=3;
        Mdata_TenderCoe['FTenderCoeStatusNotes']:='审核';
        Mdata_TenderCoe['FTenderCoePushDownID']:=0;
        Mdata_TenderCoe['FTenderCoePushDown']:='';
        Mdata_TenderCoe['FTenderCoePushDownDate']:=Null;
        Mdata_TenderCoe.Post;
        Mdata_TenderCoe.Next;
      end;
      If Mdata_TenderCoe.RecordCount=1 then
      begin
        application.MessageBox('下推完毕！','系统提示',MB_ICONINFORMATION);
        TB_PushDown.Caption:='下推撤回';
      end;
      If Mdata_TenderCoe.RecordCount>1 then
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

procedure TFrm_DesignTake_TenderCoe.Act_SetOpenExecute(Sender: TObject);
begin
  inherited;
  TB_Ref_Item.Visible:=False;
  TB_Ref_Write.Visible:=False;
  ToolBar_TenderCoe.Visible:=False;
  TBar_Sel.Visible:=True;
  ToolBar_Save.Visible:=True;

  TB_Sel.Enabled:=True;
  MyTreeView_Date.Enabled:=False;

  cxGV_TenderCoeList.OptionsData.Editing:=True;
  cxGV_TenderCoe.OptionsData.Editing:=True;

  FTenderCoeNum_TenderCoe.Options.Editing:=True;
  FTenderCoeDate_TenderCoe.Options.Editing:=True;
  FTenderCoeReMark_TenderCoe.Options.Editing:=True;

  FOrderPrice_TenderCoeList.Options.Editing:=True;
  FTaxRate_TenderCoeList.Options.Editing:=True;

  FPaymentMode_TenderCoe.Options.Editing:=True;
  FSupplierName_TenderCoe.Options.Editing:=True;
  FTenderCoeQry_TenderCoeList.Options.Editing:=True;

end;

procedure TFrm_DesignTake_TenderCoe.Act_SetCloseExecute(Sender: TObject);
begin
  inherited;
  TB_Ref_Item.Visible:=True;
  TB_Ref_Write.Visible:=True;
  ToolBar_TenderCoe.Visible:=True;
  TBar_Sel.Visible:=False;
  ToolBar_Save.Visible:=False;

  TB_Sel.Enabled:=False;

  cxGV_TenderCoeList.OptionsData.Editing:=False;
  cxGV_TenderCoe.OptionsData.Editing:=False;
  MyTreeView_Date.Enabled:=True;

end;

procedure TFrm_DesignTake_TenderCoe.FSupplier_MPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  Mdata_TenderCoe.Edit;
  if Mdata_TenderCoe['FSupplierName']=Null then
     Mdata_TenderCoe['FSupplierName']:='';
  Mdata_TenderCoe.Post;
  If Mdata_TenderCoe['FSupplierName']='' then
  begin
    try
      qry.SQL.Text:='select * from Zsi_K3_Supplier  with(nolock) order by FNumber ';
      qry.Open;
    finally
      ;
    end;
    selValue:=select('选择供应商信息','FItemId','FParentId','FItemId','FName',qry);
  end
  else
  begin
    try
      qry.SQL.Text:='select * from Zsi_K3_Supplier with(nolock) where FName like :FName order by FNumber ';
      qry.Parameters.FindParam('FName').Value:='%'+Mdata_TenderCoe['FSupplierName']+'%';
      qry.Open;
    finally
      ;
    end;
    If qry.RecordCount=1 then
    begin
      Mdata_TenderCoe.Edit;
      Mdata_TenderCoe['FSupplierName']:=qry.FieldByName('FName').Value;
      Mdata_TenderCoe['FSupplierID']:=qry.FieldByName('FItemId').Value;
      Mdata_TenderCoe.Post;
    end
    else
      selValue:=select('选择供应商信息','FItemId','FItemId','FItemId','FName',qry);
   end;

  If (Length(selValue)>0) then
  begin
    Mdata_TenderCoe.Edit;
    Mdata_TenderCoe['FSupplierName']:=qry.FieldByName('FName').Value;
    Mdata_TenderCoe['FSupplierID']:=qry.FieldByName('FItemId').Value;
    Mdata_TenderCoe.Post;
  end;




end;

procedure TFrm_DesignTake_TenderCoe.TB_SelClick(Sender: TObject);
begin
  inherited;
  TS_PlanTender.TabEnabled:=True;
  PC_1.ActivePage:=TS_PlanTender;
end;

procedure TFrm_DesignTake_TenderCoe.Act_Set_MaxNumExecute(Sender: TObject);
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
      value:=ForMatDateTime('yyyy-mm-dd',(Mdata_TenderCoe['FTenderCoeDate']));
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=30;
      name := '@TableName';
      value:='T_DesignTake_TenderCoe';
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=20;
      name := '@DateFiled';
      value:='FTenderCoeDate';
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=20;
      name := '@NumFiled';
      value:='FTenderCoeNo';
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

procedure TFrm_DesignTake_TenderCoe.Act_Set_MaxIDExecute(Sender: TObject);
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
      value:='T_DesignTake_TenderCoe';
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

procedure TFrm_DesignTake_TenderCoe.MyTreeView_WriteExpanding(Sender: TObject;
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
               +'Isleaf from VT_DesignTake_TenderCoe_Supplier with(nolock) where (FParentNumber= '''
               +PTree(Node.Data).ID+''' and FDepartmentID=:FDepartmentID) '
               +' and FPlanTenderOrderID=:FPlanTenderOrderID '
               +' order by FTenderCoeStatus,FNumber ';
  qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
  qry.Parameters.FindParam('FPlanTenderOrderID').value:=UserNumID;
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

procedure TFrm_DesignTake_TenderCoe.MyTreeView_WriteChange(Sender: TObject;
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

procedure TFrm_DesignTake_TenderCoe.Act_Ref_ItemExecute(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If not TreeVeiwListWhere(qry,MyTreeView_Date,'VT_DesignTake_TenderCoe',' and FDepartmentID='+IntToStr(UserFDepartmentID) ) then
  begin
    Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;
end;

procedure TFrm_DesignTake_TenderCoe.Act_Ref_PlanTenderExecute(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If not TreeVeiwList(qry,MyTreeView_PlanTender,'VT_DesignTake_PlanTender_Sel') then
  begin
    Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;
end;

procedure TFrm_DesignTake_TenderCoe.FPaymentModePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  mData_TenderCoeList.Edit;
  if mData_TenderCoeList['FPaymentMode']=Null then
     mData_TenderCoeList['FPaymentMode']:='';
  mData_TenderCoeList.Post;

  If Trim(mData_TenderCoeList['FPaymentMode'])='' then
  begin
    try
      qry.SQL.Text:='select distinct FPaymentMode from T_DesignTake_TenderCoeList with(nolock) FPaymentMode order by FPaymentMode ';
      qry.Open;
    finally
      ;
    end;
    selValue:=select('选择付款方式','FPaymentMode','FPaymentMode','FPaymentMode','FPaymentMode',qry);
  end
  else
  begin
    try
      qry.SQL.Text:='select distinct FPaymentMode from T_DesignTake_TenderCoeList with(nolock) where FPaymentMode like :FPaymentMode order by FPaymentMode ';
      qry.Parameters.FindParam('FPaymentMode').Value:='%'+Trim(mData_TenderCoeList['FPaymentMode'])+'%';
      qry.Open;
    finally
      ;
    end;
    If qry.RecordCount=1 then
    begin
      mData_TenderCoeList.Edit;
      mData_TenderCoeList['FPaymentMode']:=qry.FieldByName('FPaymentMode').Value;
      mData_TenderCoeList.Post;
    end
    else
      selValue:=select('选择付款方式','FPaymentMode','FPaymentMode','FPaymentMode','FPaymentMode',qry);
      If (Length(selValue)>0) then
      begin
        mData_TenderCoeList.Edit;
        mData_TenderCoeList['FPaymentMode']:=qry.FieldByName('FPaymentMode').Value;
        mData_TenderCoeList.Post;
      end;
  end;

end;

procedure TFrm_DesignTake_TenderCoe.cxGV_PlanTenderCellClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If Mdata_PlanTender['FPlanTenderID']<>0 then
  begin
    If MyItemList(qry,Mdata_PlanTenderList,'V_DesignTake_PlanTenderList','cast(FPlanTenderID as varchar(20))',
                  Mdata_PlanTender['FPlanTenderID'],'FPlanTenderNum') then
  end;

end;

procedure TFrm_DesignTake_TenderCoe.cxGV_TenderCoeListCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  if StrToFloat(AViewInfo.GridRecord.DisplayTexts[FOrderQry_TenderCoeList.Index])<>StrToFloat(AViewInfo.GridRecord.DisplayTexts[FTenderCoeQry_TenderCoeList.Index]) then    //设置行字体颜色
  begin
     ACanvas.Canvas.Font.Color:=clHotLight; //字体颜色
    ACanvas.FillRect(AViewInfo.Bounds);
  end; 
end;

procedure TFrm_DesignTake_TenderCoe.TB_Ref_2Click(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If not TreeVeiwListWhere(qry,MyTreeView_Write,'VT_DesignTake_TenderCoe_Supplier',' and FDepartmentID='+IntToStr(UserFDepartmentID) ) then
  begin
    Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;

end;

procedure TFrm_DesignTake_TenderCoe.N2Click(Sender: TObject);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  mData_TenderCoeList.Edit;
  If mData_TenderCoeList['FSupplierName']=Null then
     mData_TenderCoeList['FSupplierName']:='';
  mData_TenderCoeList.Post;
  //If mdata['FSupplierName']='' then
  begin
    try
      qry.SQL.Text:='select * from Zsi_K3_Supplier with(nolock) where FName like :FName order by FNumber ';
      qry.Parameters.FindParam('FName').Value:='%'+mData_TenderCoeList['FSupplierName']+'%';
      qry.Open;
    finally
      ;
    end;
    If qry.RecordCount=1 then
    begin
      mData_TenderCoeList.Edit;
      mData_TenderCoeList['FSupplierName']:=qry.FieldByName('FName').Value;
      mData_TenderCoeList['FSupplierID']:=qry.FieldByName('FItemId').Value;
      mData_TenderCoeList.Post;
    end
    else
    begin
      selValue:=select('选择供应商信息','FItemId','FParentId','FItemId','FName',qry);
      If (Length(selValue)>0) then
      begin
        mData_TenderCoeList.Edit;
        mData_TenderCoeList['FSupplierName']:=qry.FieldByName('FName').Value;
        mData_TenderCoeList['FSupplierID']:=qry.FieldByName('FItemId').Value;
        mData_TenderCoeList.Post;
      end;
    end;
  end;
end;

procedure TFrm_DesignTake_TenderCoe.Act_Ref_WriteExecute(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If not TreeVeiwListWhere(qry,MyTreeView_Write,'VT_DesignTake_TenderCoe_Supplier',
                          ' and  FPlanTenderOrderID='+IntToStr(UserNumID) 
                         +' and FDepartmentID='+IntToStr(UserFDepartmentID) ) then
  begin
    Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;

end;

procedure TFrm_DesignTake_TenderCoe.FormShow(Sender: TObject);
begin
  inherited;
  Act_Ref_Item.Execute;
  Act_Ref_Write.Execute;
  Act_Ref_PlanTender.Execute;

end;

procedure TFrm_DesignTake_TenderCoe.cxGV_TenderCoeFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
var qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;

  If P_state =2  then //不在新增、修改状态
  begin
    If (Mdata_TenderCoe['FTenderCoeID']<>0) and (Mdata_TenderCoe['FTenderCoeID']<>null) then
      begin
      If MyItemList(qry,mData_TenderCoeList,'V_DesignTake_TenderCoeList','cast(FTenderCoeID as varchar(20))',
                    Mdata_TenderCoe['FTenderCoeID'],'FTenderCoeNum') then
      Act_Status.Execute  //权限设置
    end;
  end;

end;

procedure TFrm_DesignTake_TenderCoe.Act_MenuExecute(Sender: TObject);
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

procedure TFrm_DesignTake_TenderCoe.Act_Menu_SetExecute(Sender: TObject);
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

procedure TFrm_DesignTake_TenderCoe.cxGrid_PlanTenderContextPopup(
  Sender: TObject; MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV_PlanTender';
  Gm:='mdata_PlanTender';
  Gr:='cxGrid_PlanTender';
  Act_Menu_Set.Execute;

end;

procedure TFrm_DesignTake_TenderCoe.cxGrid_PlanTenderListContextPopup(
  Sender: TObject; MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV_PlanTenderList';
  Gm:='mdata_PlanTenderList';
  Gr:='cxGrid_PlanTenderList';
  Act_Menu_Set.Execute;

end;

procedure TFrm_DesignTake_TenderCoe.cxGrid_TenderCoeContextPopup(
  Sender: TObject; MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV_TenderCoe';
  Gm:='mdata_TenderCoe';
  Gr:='cxGrid_TenderCoe';
  Act_Menu_Set.Execute;

end;

procedure TFrm_DesignTake_TenderCoe.cxGrid_TenderCoeListContextPopup(
  Sender: TObject; MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV_TenderCoeList';
  Gm:='mdata_TenderCoeList';
  Gr:='cxGrid_TenderCoeList';
  Act_Menu_Set.Execute;

end;

procedure TFrm_DesignTake_TenderCoe.N_EditClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_DesignTake_TenderCoe.N_FilterClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_DesignTake_TenderCoe.N_SortClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_DesignTake_TenderCoe.N_GroupClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_DesignTake_TenderCoe.N_SetClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_DesignTake_TenderCoe.N_OutClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_DesignTake_TenderCoe.Act_TS_ItemExecute(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;

  If P_Isleaf_Item>0 then
  begin
     If MyItemList(qry,Mdata_TenderCoe,'V_DesignTake_TenderCoe','FFullNumber',ListItemFNumber_Item,'') then
     If MyItemList(qry,mData_TenderCoeList,'V_DesignTake_TenderCoeList','FFullNumber',ListItemFNumber_Item,'FTenderCoeNum') then
  end
  else
  begin
    Mdata_TenderCoe.Close;
    mData_TenderCoeList.Close;
  end;

end;

procedure TFrm_DesignTake_TenderCoe.Act_TS_WriteExecute(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;

  If P_Isleaf_Write>=0 then
  begin
    If MyItemList(qry,Mdata_TenderCoe,'V_DesignTake_TenderCoe','FDepartmentName+'';''+cast(FTenderCoeStatus as varchar(2))+'';''+cast(year(FTenderCoeDate) as varchar(4))+'';''+cast(month(FTenderCoeDate) as varchar(2))+'';''+FTenderCoeNum+'';''',ListItemFNumber_Write,'') then
    If MyItemList(qry,mData_TenderCoeList,'V_DesignTake_TenderCoeList','FDepartmentName+'';''+cast(FPlanTenderOrderId as varchar(8))+'';''+cast(FTenderCoeStatus as varchar(2))+'';''+cast(year(FTenderCoeDate) as varchar(4))+'';''+cast(month(FTenderCoeDate) as varchar(2))+'';'''
                 +'+FTenderCoeNum+'';''+FBranchItemNumber+'';''+cast(FSupplierId as varchar(8))+'';''+FPayMentMode+'';''',ListItemFNumber_Write,'FTenderCoeNum') then
  end
  else
  begin
    Mdata_TenderCoe.Close;
    mData_TenderCoeList.Close;
  end;

end;

procedure TFrm_DesignTake_TenderCoe.cxGV_TenderCoeSelectionChanged(
  Sender: TcxCustomGridTableView);
var qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If mdata_TenderCoe.RecordCount<0 then
     Exit;
  If P_state =2 then //不在新增、修改状态
  begin
    If mdata_TenderCoe['FTenderCoeID']<>0 then
    begin
      If MyItemList(qry,Mdata_TenderCoeList,'V_Design_TenderCoeList','cast(FTenderCoeID as varchar(20))',
                    mdata_TenderCoe['FTenderCoeID'],'FTenderCoeNum') then
      //Act_Status.Execute  //权限设置
    end;
  end;

end;

procedure TFrm_DesignTake_TenderCoe.FPaymentMode_TenderCoePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
   qry:=TADOQuery.Create(self);
   qry.ConnectionString:=mdlData.ReadConnStr;

   mData_TenderCoe.Edit;
   if mData_TenderCoe['FPaymentMode']=Null then
      mData_TenderCoe['FPaymentMode']:='';
   mData_TenderCoe.Post;
   try
     qry.SQL.Text:='select distinct FPaymentMode from V_DesignTake_TenderCoe with(nolock) where FPaymentMode like :FPaymentMode '
                  +'and FDepartmentID=:FDepartmentID order by FPaymentMode ';
     qry.Parameters.FindParam('FPaymentMode').Value:='%'+Trim(mData_TenderCoe['FPaymentMode'])+'%';
     qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
     qry.Open;
   finally
      ;
   end;

   selValue:=select('选择付款方式','FPaymentMode','FPaymentMode','FPaymentMode','FPaymentMode',qry);
   If (Length(selValue)>0) then
   begin
     mData_TenderCoe.Edit;
     mData_TenderCoe['FPaymentMode']:=qry.FieldByName('FPaymentMode').Value;
     mData_TenderCoe.Post;
   end;

end;

procedure TFrm_DesignTake_TenderCoe.FSupplierName_TenderCoePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
   P_Chang:=True;

   qry:=TADOQuery.Create(self);
   qry.ConnectionString:=mdlData.ReadConnStr;

   mData_TenderCoe.Edit;
   mData_TenderCoe.Post;
   mData_TenderCoe.Edit;
   if mData_TenderCoe['FSupplierName']=Null then
      mData_TenderCoe['FSupplierName']:='';
   mData_TenderCoe.Post;
   try
     qry.SQL.Text:='select * from Zsi_K3_Supplier with(nolock) where FName like :FName order by FNumber ';
     qry.Parameters.FindParam('FName').Value:='%'+Trim(mData_TenderCoe['FSupplierName'])+'%';
     qry.Open;
   finally
     ;
   end;

   If (qry.RecordCount=1) and (qry.FieldByName('FDetail').Value=True) then
   begin
     mData_TenderCoe.Edit;
     mData_TenderCoe['FSupplierName']:=qry.FieldByName('FName').Value;
     mData_TenderCoe['FSupplierID']:=qry.FieldByName('FItemId').Value;
     mData_TenderCoe.Post;
     Exit;
   end
   else
   begin
     selValue:=select('选择供应商信息','FItemId','FParentId','FItemId','FName',qry);
     If (Length(selValue)>0) and (qry.FieldByName('FDetail').Value=True) then
     begin
       mData_TenderCoe.Edit;
       mData_TenderCoe['FSupplierID']:=qry.FieldByName('FItemId').Value;
       mData_TenderCoe['FSupplierName']:=qry.FieldByName('FName').Value;
       mData_TenderCoe.Post;
     end
     else
     begin
       application.MessageBox('请选择明细！','系统提示',MB_ICONINFORMATION);
       Exit
     end;
   end;
   P_Chang:=False;

end;

procedure TFrm_DesignTake_TenderCoe.FSupplierName_TenderCoePropertiesEditValueChanged(
  Sender: TObject);
var  qry: TADOQuery;
begin
{   qry:=TADOQuery.Create(self);
   qry.ConnectionString:=mdlData.ReadConnStr;

   If P_Chang=False then
   begin
     mData_TenderCoe.Edit;
     mData_TenderCoe.Post;
     mData_TenderCoe.Edit;
     if mData_TenderCoe['FSupplierName']=Null then
        mData_TenderCoe['FSupplierName']:='';
     mData_TenderCoe.Post;
     try
       qry.SQL.Text:='select * from Zsi_K3_Supplier FName where FName like :FName order by FNumber ';
       qry.Parameters.FindParam('FName').Value:='%'+Trim(mData_TenderCoe['FSupplierName'])+'%';
       qry.Open;
     finally
       ;
     end;

     If qry.RecordCount=1 then
     begin
       mData_TenderCoe.Edit;
       mData_TenderCoe['FSupplierName']:=qry.FieldByName('FName').Value;
       mData_TenderCoe['FSupplierID']:=qry.FieldByName('FItemId').Value;
       mData_TenderCoe.Post;
       Exit;
     end
     else
     begin
       mData_TenderCoe.Edit;
       mData_TenderCoe['FSupplierID']:=0;
       mData_TenderCoe['FSupplierName']:='';
       mData_TenderCoe.Post;
       application.MessageBox('请选择明细erwerwerewr！','系统提示',MB_ICONINFORMATION);
     end;
  end;
     }
end;

end.
