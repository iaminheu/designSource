unit Main_DesignBOMRight;

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
  cxFilterControl, cxDBFilterControl, ActnList, Menus;

type
  TFrm_DesignBOMRight = class(TFrm_GridBass)
    MData_DBOM: TdxMemData;
    DS_Mdata_DBOM: TDataSource;
    frReport: TfrReport;
    frDBDataSet: TfrDBDataSet;
    PC_2: TRzPageControl;
    TS_DesignBOM: TRzTabSheet;
    PanelBkGnd: TPanel;
    ImageList: TImageList;
    actionList: TActionList;
    Act_SetOpen: TAction;
    Act_SetClose: TAction;
    Act_SetOpen2: TAction;
    Act_Ref2: TAction;
    Act_App: TAction;
    Act_Edit: TAction;
    Act_Del: TAction;
    Act_Out: TAction;
    Act_Audit: TAction;
    Act_OK: TAction;
    Act_Status2: TAction;
    Act_Down: TAction;
    Act_Ref: TAction;
    Act_Prin: TAction;
    Act_Cancel: TAction;
    MData_DBOM_M: TdxMemData;
    DS_Mdata_DBOM_M: TDataSource;
    Panel2: TPanel;
    RzSizePanel2: TRzSizePanel;
    MyTreeView_DBOM: TTreeView;
    RzSizePanel1: TRzSizePanel;
    TS_StockIn: TRzTabSheet;
    Panel3: TPanel;
    Panel5: TPanel;
    RzSizePanel3: TRzSizePanel;
    PageControl2: TPageControl;
    TabSheet1: TTabSheet;
    cxGrid_M2: TcxGrid;
    cxGV_M2: TcxGridDBTableView;
    FBranchItemNumber_M2: TcxGridDBColumn;
    FPartsCode_M2: TcxGridDBColumn;
    FPartsName_M2: TcxGridDBColumn;
    FClientshortName_M2: TcxGridDBColumn;
    FItemNo_M2: TcxGridDBColumn;
    FWorkPartsNum_M2: TcxGridDBColumn;
    FAgentName_M2: TcxGridDBColumn;
    FAgentID_M2: TcxGridDBColumn;
    FDepartmentName_M2: TcxGridDBColumn;
    FDepartmentID_M2: TcxGridDBColumn;
    cxGridDBCardView2: TcxGridDBCardView;
    cxGL_M2: TcxGridLevel;
    PageControl3: TPageControl;
    TabSheet4: TTabSheet;
    RzSizePanel4: TRzSizePanel;
    MyTreeView_Stock: TTreeView;
    Panel4: TPanel;
    Bevel1: TBevel;
    OKBtn2: TcxButton;
    CancelBtn2: TcxButton;
    Panel_button: TPanel;
    Bevel_button: TBevel;
    OKBtn: TcxButton;
    CancelBtn: TcxButton;
    MData_M2: TdxMemData;
    MData2: TdxMemData;
    DS_Mdata2: TDataSource;
    DS_Mdata_M2: TDataSource;
    FStockItemID_M2: TcxGridDBColumn;
    FWorkParts_M2: TcxGridDBColumn;
    Act_Submit2: TAction;
    Act_Check: TAction;
    PM_M2: TPopupMenu;
    N_App2: TMenuItem;
    N_Edit2: TMenuItem;
    N_Del2: TMenuItem;
    N_Check2: TMenuItem;
    N_Audit2: TMenuItem;
    N_Out2: TMenuItem;
    N_Print2: TMenuItem;
    N_Exit: TMenuItem;
    N_Submit2: TMenuItem;
    cxGrid2: TcxGrid;
    cxGV2: TcxGridDBTableView;
    Num_3: TcxGridDBColumn;
    xh_3: TcxGridDBColumn;
    th_3: TcxGridDBColumn;
    abc_3: TcxGridDBColumn;
    mc_3: TcxGridDBColumn;
    gg_3: TcxGridDBColumn;
    mcgg_3: TcxGridDBColumn;
    SelRemark_3: TcxGridDBColumn;
    FSumQry_3: TcxGridDBColumn;
    FPackQry_3: TcxGridDBColumn;
    FSuttle_3: TcxGridDBColumn;
    FSumSuttle_3: TcxGridDBColumn;
    FStockInListRemark_3: TcxGridDBColumn;
    FFullNumber_3: TcxGridDBColumn;
    ssFullNumber_3: TcxGridDBColumn;
    FK3Number_3: TcxGridDBColumn;
    FName_3: TcxGridDBColumn;
    FModel_3: TcxGridDBColumn;
    UnitName_3: TcxGridDBColumn;
    is_3: TcxGridDBColumn;
    FStockListID_3: TcxGridDBColumn;
    FPartsNumber_3: TcxGridDBColumn;
    FPartsCode_3: TcxGridDBColumn;
    FWorkParts_3: TcxGridDBColumn;
    FK3ItemID_3: TcxGridDBColumn;
    cxGL2: TcxGridLevel;
    FStockRightStatusNotes_M2: TcxGridDBColumn;
    Act_App2: TAction;
    Act_SetClose2: TAction;
    Act_Edit2: TAction;
    Act_Del2: TAction;
    FStockRightWrite_M2: TcxGridDBColumn;
    FStockRightWriteDate_M2: TcxGridDBColumn;
    FStockRightSubmitDate_M2: TcxGridDBColumn;
    FStockRightCheck_M2: TcxGridDBColumn;
    FStockRightCheckDate_M2: TcxGridDBColumn;
    Act_Check2: TAction;
    Act_Status: TAction;
    Act_Submit: TAction;
    PM_M: TPopupMenu;
    N_App: TMenuItem;
    N_Edit: TMenuItem;
    N_Del: TMenuItem;
    N_Submit: TMenuItem;
    N_Check: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    cxGrid_DBOM_M: TcxGrid;
    cxGV_DBOM_M: TcxGridDBTableView;
    FItemNumber_M: TcxGridDBColumn;
    FPartsNumber_M: TcxGridDBColumn;
    FPartsName_M: TcxGridDBColumn;
    FAgentName_M: TcxGridDBColumn;
    FClientshortName_M: TcxGridDBColumn;
    FAgentID_M: TcxGridDBColumn;
    FDepartmentName_M: TcxGridDBColumn;
    FDepartmentID_M: TcxGridDBColumn;
    FItemListID_M: TcxGridDBColumn;
    FFullNumber_M: TcxGridDBColumn;
    FDesignBomRightStatusNotes_M: TcxGridDBColumn;
    FDesignBomRightStatus_M: TcxGridDBColumn;
    FDesignBomRightWrite_M: TcxGridDBColumn;
    FDesignBomRightWriteDate_M: TcxGridDBColumn;
    FDesignBomRightSubmitDate_M: TcxGridDBColumn;
    FDesignBomRightCheck_M: TcxGridDBColumn;
    FDesignBomRightCheckDate_M: TcxGridDBColumn;
    cxGridDBCardView1: TcxGridDBCardView;
    cxGL_DBOM_M: TcxGridLevel;
    Panel21: TPanel;
    Label26: TLabel;
    E_FItemNumber: TcxButtonEdit;
    E_FClientShortName: TcxButtonEdit;
    E_FItemID: TcxButtonEdit;
    cxGrid_DBOM: TcxGrid;
    cxGV: TcxGridDBTableView;
    FCode: TcxGridDBColumn;
    th: TcxGridDBColumn;
    mc: TcxGridDBColumn;
    gg: TcxGridDBColumn;
    FName: TcxGridDBColumn;
    FModel: TcxGridDBColumn;
    FParts: TcxGridDBColumn;
    FSumQry: TcxGridDBColumn;
    FSuttle: TcxGridDBColumn;
    ssth: TcxGridDBColumn;
    FQry: TcxGridDBColumn;
    FPartsSort: TcxGridDBColumn;
    FWorkParts: TcxGridDBColumn;
    FManageParts: TcxGridDBColumn;
    FSumSuttle: TcxGridDBColumn;
    y_FSuttle: TcxGridDBColumn;
    c_FSuttle: TcxGridDBColumn;
    FMaterialRate: TcxGridDBColumn;
    FNumber: TcxGridDBColumn;
    UnitName: TcxGridDBColumn;
    y_FNumber: TcxGridDBColumn;
    y_FModel: TcxGridDBColumn;
    FPriceQry: TcxGridDBColumn;
    FUse: TcxGridDBColumn;
    FRation: TcxGridDBColumn;
    y_FRation: TcxGridDBColumn;
    FFullNumber: TcxGridDBColumn;
    ssFullNumber: TcxGridDBColumn;
    Remark: TcxGridDBColumn;
    FFullName: TcxGridDBColumn;
    FPartsCode: TcxGridDBColumn;
    cxGL_DBOM_DBOM: TcxGridLevel;
    E_FAgentName: TcxButtonEdit;
    Label1: TLabel;
    E_FAgentID: TcxButtonEdit;
    ToolBar1: TToolBar;
    TB_App: TToolButton;
    TB_Edit: TToolButton;
    TB_Del: TToolButton;
    TB_Ref: TToolButton;
    TB_Submit: TToolButton;
    TB_Check: TToolButton;
    TB_Out: TToolButton;
    ToolButton5: TToolButton;
    TB_Down: TToolButton;
    TB_Prin: TToolButton;
    ToolButton1: TToolButton;
    TB_EXIT: TToolButton;
    FPartsCode_M: TcxGridDBColumn;
    Act_TreeError: TAction;
    Panel6: TPanel;
    ToolBar2: TToolBar;
    TB_App2: TToolButton;
    TB_Edit2: TToolButton;
    TB_Del2: TToolButton;
    TB_Ref2: TToolButton;
    TB_Submit2: TToolButton;
    TB_Check2: TToolButton;
    TB_Out2: TToolButton;
    ToolButton8: TToolButton;
    TB_Down2: TToolButton;
    TB_Prin2: TToolButton;
    ToolButton11: TToolButton;
    ToolButton12: TToolButton;
    FStockPartsWet_M2: TcxGridDBColumn;
    TB_Accredit: TToolButton;
    procedure FormResize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TB_EXITClick(Sender: TObject);
    procedure MyTreeView_DBOMChange(Sender: TObject; Node: TTreeNode);
    procedure MyTreeView_DBOMExpanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
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
    procedure MyTreeView_StockExpanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure MyTreeView_StockChange(Sender: TObject; Node: TTreeNode);
    procedure Act_Status2Execute(Sender: TObject);
    procedure cxGV_M2CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure FItemNumber_M2PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FAgentName_M2PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure Act_SetOpen2Execute(Sender: TObject);
    procedure Act_App2Execute(Sender: TObject);
    procedure Act_SetClose2Execute(Sender: TObject);
    procedure CancelBtn2Click(Sender: TObject);
    procedure OKBtn2Click(Sender: TObject);
    procedure Act_Del2Execute(Sender: TObject);
    procedure Act_Edit2Execute(Sender: TObject);
    procedure Act_Submit2Execute(Sender: TObject);
    procedure Act_Ref2Execute(Sender: TObject);
    procedure Act_Check2Execute(Sender: TObject);
    procedure FItemNumber_MPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FBranchItemNo_MPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FAgentName_MPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure Act_SubmitExecute(Sender: TObject);
    procedure Act_CheckExecute(Sender: TObject);
    procedure Act_StatusExecute(Sender: TObject);
    procedure FAgentName_MPropertiesEditValueChanged(Sender: TObject);
    procedure E_FTeamNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure E_FAgentNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxGV_DBOM_MFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure E_FItemNumberPropertiesChange(Sender: TObject);
    procedure E_FAgentNamePropertiesChange(Sender: TObject);
    procedure Act_TreeErrorExecute(Sender: TObject);
    procedure TB_AccreditClick(Sender: TObject);
  private
    ListItemFNumber,P_List:String;
    P_i:boolean;


    { Private declarations }
    function AddRd:bool;
    function EditRd:bool;
    function DelRd:bool;

    function AddRd2:bool;
    function EditRd2:bool;
    function DelRd2:bool;

  public
    P_state,P_Isleaf:integer;
    { Public declarations }
  end;

var
  Frm_DesignBOMRight: TFrm_DesignBOMRight;


implementation

uses FRMDATA, COMMON, FrmSelect, ProgBar, PROGRASS;

{$R *.dfm}

function TFrm_DesignBOMRight.DelRd: bool;
var
 qry,qry1: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry1:=TADOQuery.Create(Self);
  qry1.ConnectionString:=mdlData.ReadConnStr;
  try
    qry1.SQL.Text:='select FDesignBomRightID from V_DesignBomRight '
                  +'where FDepartmentName+'';''+cast(FAgentID as varchar(20) )+'';''+FProductName+'';''+FItemlb+'';''+FItemNo+'';''+FFullNumber+'';'' like :ListFNumber_DBOM ';
    qry1.Parameters.FindParam('ListFNumber_DBOM').value:=ListFNumber_DBOM+'%';
    qry1.Open;
  finally
    ;
  end;
  qry1.First;
  while not qry1.eof do
  begin
    try
      qry.SQL.Text:='Delete from T_DesignBomRight where FDesignBomRightID=:FDesignBomRightID';
      qry.Parameters.FindParam('FDesignBomRightID').value:=qry1.FieldByName('FDesignBomRightID').Value;
      result:=qry.ExecSQL>=1;
    finally
      ;
    end;
    qry1.Next;
  end;
  qry.Free;
  qry1.Free;
end;

function TFrm_DesignBOMRight.DelRd2: bool;
var
 qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Delete from T_StockRight where FStockRightID=:FStockRightID';
    with qry.Parameters do
    begin
      FindParam('FStockRightID').value:=mdata_M2['FStockRightID'];
    end;
    result:=qry.ExecSQL>=1;
  finally
    qry.Free;
  end;
end;

function TFrm_DesignBOMRight.AddRd: bool;
var
  qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  result:=False;
  If mData_DBOM_M.RecordCount<=0 then
  begin
    result:=True;
    Exit;
  end;
  try
    qry.SQL.Text:='Insert into T_DesignBomRight(FAgentID,FItemListID,FDepartmentID,FDesignBomRightStatus,FDesignBomRightWriteID,FDesignBomRightWriteDate) '
                 +'values(:FAgentID,:FItemListID,:FDepartmentID,:FDesignBomRightStatus,:FDesignBomRightWriteID,:FDesignBomRightWriteDate)';
    mData_DBOM_M.First;

    while not mData_DBOM_M.eof do
    begin
      If qry.Active then qry.Close;
      with qry.Parameters do
      begin
        FindParam('FAgentID').value:=mData_DBOM_M['FAgentID'];;
        FindParam('FItemListID').value:=mData_DBOM_M['FItemListID'];
        FindParam('FDepartmentID').value:=UserFDepartmentID;
        FindParam('FDesignBomRightStatus').value:=0;
        FindParam('FDesignBomRightWriteID').value:=UserNumID;
        FindParam('FDesignBomRightWriteDate').value:=date();
      end;
      result:=qry.ExecSQL>=1;
      if not result then
         break;
      mData_DBOM_M.Next;
    end;
  finally
    ;
  end;
  qry.Free;
end;

function TFrm_DesignBOMRight.AddRd2: bool;
var
  qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  result:=False;
  If mData_M2.RecordCount<=0 then
  begin
    result:=True;
    Exit;
  end;
  try
    qry.SQL.Text:='Insert into T_StockRight(FStockItemID,FAgentID,FStockRightStatus,FStockRightWriteID,FStockRightWriteDate,FDepartmentID) '
                 +'values(:FStockItemID,:FAgentID,:FStockRightStatus,:FStockRightWriteID,:FStockRightWriteDate,:FDepartmentID)';
    mData_M2.First;
    while not mData_M2.eof do
    begin
      If qry.Active then qry.Close;
      with qry.Parameters do
      begin
        FindParam('FStockItemID').value:=mData_M2['FStockItemID'];
        FindParam('FAgentID').value:=mData_M2['FAgentID'];
        FindParam('FStockRightStatus').value:=0;
        FindParam('FStockRightWriteID').value:=UserNumID;
        FindParam('FStockRightWriteDate').value:=date();
        FindParam('FDepartmentID').value:=UserFDepartmentID;
      end;
      result:=qry.ExecSQL>=1;
      if not result then
         break;
      mData_M2.Next;
    end;
  finally
    ;
  end;
  qry.Free;
end;


function TFrm_DesignBOMRight.EditRd:bool;
var
 qry:TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  mdlData.conn.BeginTrans;
  try
    if DelRd then  //1  表删除
    begin
      result:=True;
      if AddRd then //3  表新增
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
    Application.MessageBox('保存数据失败，请重试。', '保存错误', 0 or MB_ICONINFORMATION);
    mdlData.Conn.RollBackTrans;
  end;




{
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  //result:=False;
  If mData_DBOM_M.RecordCount<=0 then
  begin
    result:=True;
    Exit;
  end;

  mData_DBOM_M.Edit;
  mData_DBOM_M.Post;

  try
    qry.SQL.Text:='Update T_DesignBomRight set FAgentID=:FAgentID,FItemListID=:FItemListID,'
                 +'FDepartmentID=:FDepartmentID,FDesignBomRightStatus=:FDesignBomRightStatus,FDesignBomRightWriteID=:FDesignBomRightWriteID, '
                 +'FDesignBomRightWriteDate=:FDesignBomRightWriteDate,FDesignBomRightCheckID=:FDesignBomRightCheckID,'
                 +'FDesignBomRightCheckDate=:FDesignBomRightCheckDate where FDesignBomRightID=:FDesignBomRightID';
    mData_DBOM_M.First;
    while not mData_DBOM_M.eof do
    begin
      If (mData_DBOM_M['FAgentID']<>0) and (mData_DBOM_M['FAgentName']<>'')  then
      begin
        If qry.Active then qry.Close;
        with qry.Parameters do
        begin
          FindParam('FAgentID').value:=mData_DBOM_M['FAgentID'];;
          FindParam('FItemListID').value:=mData_DBOM_M['FItemListID'];
          FindParam('FDepartmentID').value:=UserFDepartmentID;
          FindParam('FDesignBomRightStatus').value:=0;
          FindParam('FDesignBomRightWriteID').value:=mData_DBOM_M['FDesignBomRightWriteID'];
          FindParam('FDesignBomRightWriteDate').value:=mData_DBOM_M['FDesignBomRightWriteDate'];
          FindParam('FDesignBomRightCheckID').value:=mData_DBOM_M['FDesignBomRightCheckID'];
          FindParam('FDesignBomRightCheckDate').value:=mData_DBOM_M['FDesignBomRightCheckDate'];
          FindParam('FDesignBomRightID').value:=mData_DBOM_M['FDesignBomRightID'];
        end;
        result:=qry.ExecSQL>=1;
        if not result then break;
      end;
      mData_DBOM_M.Next;
    end;
  finally
    ;
  end;
  qry.Free;
    }
end;

function TFrm_DesignBOMRight.EditRd2:bool;
var
  qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If mData_M2.RecordCount<=0 then
  begin
    result:=True;
    Exit;
  end;
  mData_M2.Edit;
  mData_M2.Post;
  try
    qry.SQL.Text:='Update T_StockRight set FStockItemID=:FStockItemID,FAgentID=:FAgentID,'
                 +'FStockRightStatus=:FStockRightStatus,FStockRightWriteID=:FStockRightWriteID,'
                 +'FStockRightWriteDate=:FStockRightWriteDate,FStockRightSubmitDate=:FStockRightSubmitDate,'
                 +'FStockRightCheckID=:FStockRightCheckID,FStockRightCheckDate=:FStockRightCheckDate,'
                 +'FDepartmentID=:FDepartmentID where FStockRightID=:FStockRightID';
    mData_M2.First;
    while not mData_M2.eof do
    begin
      If (mData_M2['FAgentID']<>0) and (mData_M2['FStockInItemID']<>0)  then
      begin
        If qry.Active then qry.Close;
        with qry.Parameters do
        begin
          FindParam('FStockItemID').value:=mData_M2['FStockItemID'];
          FindParam('FAgentID').value:=mData_M2['FAgentID'];
          FindParam('FStockRightStatus').value:=mData_M2['FStockRightStatus'];
          FindParam('FStockRightWriteID').value:=mData_M2['FStockRightWriteID'];
          FindParam('FStockRightWriteDate').value:=mData_M2['FStockRightWriteDate'];
          FindParam('FStockRightSubmitDate').value:=mData_M2['FStockRightSubmitDate'];
          FindParam('FStockRightCheckID').value:=mData_M2['FStockRightCheckID'];
          FindParam('FStockRightCheckDate').value:=mData_M2['FStockRightCheckDate'];
          FindParam('FDepartmentID').value:=UserFDepartmentID;
          FindParam('FStockRightID').value:=mData_M2['FStockRightID'];
        end;
        result:=qry.ExecSQL>=1;
        if not result then break;
      end;
      mData_M2.Next;
    end;
  finally
    ;
  end;
  qry.Free;

end;

procedure TFrm_DesignBOMRight.FormResize(Sender: TObject);
begin
  inherited;
  L_title.Caption:=UserFDepartmentName+'子公司BOM查看权限';
  Self.Caption:=UserFDepartmentName+'子公司BOM查看权限';
end;

procedure TFrm_DesignBOMRight.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=CaFree;
  Frm_DesignBOMRight:=nil;
end;

procedure TFrm_DesignBOMRight.TB_EXITClick(Sender: TObject);
begin
  inherited;
  Self.Close;
end;

procedure TFrm_DesignBOMRight.MyTreeView_DBOMChange(Sender: TObject; Node: TTreeNode);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If Node = nil then Exit;
  with PTree(Node.Data)^ do
  begin
    ListFNumber_DBOM:=trim(PTree(Node.Data).FNumber);
    P_Isleaf_DBOM:=PTree(Node.Data).Isleaf;
    case PTree(Node.Data).Isleaf of
      0:
      begin
        Mdata_DBOM_M.Close;
        Mdata_DBOM.Close;
        TB_Edit.Visible:=False;
        TB_Del.Visible:=False;
        TB_Submit.Visible:=False;
        N_Submit.Visible:=False;
        TB_Check.Visible:=False;
        N_Check.Visible:=False;
     end;
      1:
      begin
        P_state:=3;
       // If MyItemList(qry,Mdata_DBOM_M,'V_DesignBOMRight','FAgentName+'';''+cast(FDepartmentID as varchar(20) )+'';''+FProductName+'';''+FItemlb+'';''+FItemNo+'';''+FFullNumber+'';''',ListFNumber_DBOM,'FAgentName+'';''+FProductName+'';''+FItemlb+'';''+FItemNo+'';''+FFullNumber+'';''') then
        If MyItemList(qry,Mdata_DBOM_M,'V_DesignBOMRight','FDepartmentName+'';''+cast(FAgentID as varchar(20) )+'';''+FProductName+'';''+FItemlb+'';''+FItemNo+'';''+FFullNumber+'';''',ListFNumber_DBOM,'FAgentName+'';''+FProductName+'';''+FItemlb+'';''+FItemNo+'';''+FFullNumber+'';''') then
        Act_Status.Execute  //权限设置
      end;
      2:
      begin
        P_state:=2;
       // If MyItemList(qry,Mdata_DBOM_M,'V_DesignBOMRight','FAgentName+'';''+cast(FDepartmentID as varchar(20) )+'';''+FProductName+'';''+FItemlb+'';''+FItemNo+'';''+FFullNumber+'';''',ListFNumber_DBOM,'FAgentName+'';''+FProductName+'';''+FItemlb+'';''+FItemNo+'';''+FFullNumber+'';''') then
        If MyItemList(qry,Mdata_DBOM_M,'V_DesignBOMRight','FDepartmentName+'';''+cast(FAgentID as varchar(20) )+'';''+FProductName+'';''+FItemlb+'';''+FItemNo+'';''+FFullNumber+'';''',ListFNumber_DBOM,'FAgentName+'';''+FProductName+'';''+FItemlb+'';''+FItemNo+'';''+FFullNumber+'';''') then
        Act_Status.Execute  //权限设置
      end;
    end;
  end;



end;

procedure TFrm_DesignBOMRight.MyTreeView_DBOMExpanding(Sender: TObject;
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

  qry.SQL.Text:='Select FNumber,FParentNumber,FName,FFullNumber,'
               +'Isleaf from VT_DesignBOM_Right where FParentNumber= '''
               +PTree(Node.Data).ID+''' order by FItemNumber';

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
    with MyTreeView_DBOM.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('Isleaf').value;
    end;
    qry.Next;
  end;
end;

procedure TFrm_DesignBOMRight.FormCreate(Sender: TObject);
var AFirstColumnStyle: TcxStyle;
begin
  inherited;
  //列颜色
{  AFirstColumnStyle := TcxStyle.Create(Self);
  AFirstColumnStyle.Color := clAqua;
  AFirstColumnStyle.TextColor := clBlue;
  cxGV.Columns[0].Styles.Content := AFirstColumnStyle;
  cxGV.Columns[1].Styles.Content := AFirstColumnStyle;
   }
//  Act_App.Enabled:= mdlData.PermissionCheckRights(TFrm_DesignBOMRight.ClassName,'新增');
  Act_Prin.Enabled:= mdlData.PermissionCheckRights(TFrm_DesignBOMRight.ClassName,'打印');
  Act_Out.Enabled:= mdlData.PermissionCheckRights(TFrm_DesignBOMRight.ClassName,'打印');

   TB_Accredit.Visible:= mdlData.PermissionCheckRights(TFrm_DesignBOMRight.ClassName,'新增');

  P_state:=2;
end;

procedure TFrm_DesignBOMRight.FormShow(Sender: TObject);
begin
  TB_Ref.Click;
  TB_Ref2.Click;
end;

procedure TFrm_DesignBOMRight.Act_AppExecute(Sender: TObject);
var
 i:Integer;
 qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  P_state :=0;     //新增
  mData_DBOM_M.Close;
 // If (E_FItemID.EditValue<>'') and (E_FItemID.EditValue<>Null) then
  begin
  try
    qry.SQL.Text:='Select FItemListId,FItemNumber,FPartsNumber,FPartsName,'+E_FAgentID.EditValue+' as FAgentID,'''+Trim(E_FAgentName.Text)+''' as FAgentName,'
                 +'0 as FDesignBomRightStatus,0 as FDesignBomRightWriteID   from V_ItemList where FItemID=:FItemID order by FPartsCode';
    qry.Parameters.FindParam('FItemID').value:=E_FItemID.EditValue;
    qry.Open;
  finally
    ;
  end;
  mData_DBOM_M.CopyFromDataSet(qry);
  mData_DBOM_M.Edit;
  mData_DBOM_M.Post;
  Act_SetOpen.Execute;
  end;
{  If (E_FItemID.EditValue='') or (E_FItemID.EditValue=Null) then
  begin
  for i:=1 to 5 do
  begin
    mData_DBOM_M.Open;
    mData_DBOM_M.Append;
    mData_DBOM_M['FItemListId']:=0;
    mData_DBOM_M['FAgentID']:=0;
    mData_DBOM_M['FAgentName']:='';
    mData_DBOM_M['FDepartmentID']:=UserFDepartmentID;
    mData_DBOM_M['FDepartmentName']:=UserFDepartmentName;

    mData_DBOM_M['FDesignBomRightStatus']:=0;
    mData_DBOM_M['FDesignBomRightStatusNotes']:='填单';
    mData_DBOM_M['FDesignBomRightWrite']:=UserNum;
    mData_DBOM_M['FDesignBomRightWriteDate']:=date();
    mData_DBOM_M.Post;
  end;

   end;
   }
  L_title.Caption:='设计BOM查看权限信息新增';
  Act_SetOpen.Execute;

end;

procedure TFrm_DesignBOMRight.Act_EditExecute(Sender: TObject);
begin
  inherited;
  P_state :=1;
  Act_SetOpen.Execute;
  L_title.Caption:=UserFDepartmentName+'子公司BOM查看权限修改';

end;

procedure TFrm_DesignBOMRight.Act_DelExecute(Sender: TObject);
var
  qry:TADOQuery;

begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;


  If application.MessageBox(Pchar('警告：是否删除：【'+Trim(mData_DBOM_M['FAgentName'])+'】【'+Trim(mData_DBOM_M['FPartsNumber'])+'】的数据授权？'+chr(13)+chr(13)
                           +'确定要删除本数据的授权吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
  If application.MessageBox(Pchar('警告：是否删除：【'+Trim(mData_DBOM_M['FAgentName'])+'】【'+Trim(mData_DBOM_M['FPartsNumber'])+'】的数据授权？'+chr(13)+chr(13)
                           +'确定要删除本数据的授权吗？'),'再次警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then

  begin
    //单据删除
    If not DelRd then
    begin
      application.MessageBox('删除单据失败！','系统提示',MB_ICONINFORMATION);
      mdlData.conn.RollbackTrans;
      Exit;
    end;
  end;
  mData_DBOM_M.Close;
  qry.Free;
  TB_ref.Click;


end;

procedure TFrm_DesignBOMRight.Act_DownExecute(Sender: TObject);
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

procedure TFrm_DesignBOMRight.Act_RefExecute(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If not TreeVeiwListWhere(qry,MyTreeView_DBOM,'VT_DesignBOM_Right',' and FDepartmentID='+IntToStr(UserFDepartmentID) ) then
  begin
    Application.MessageBox(PChar('树型结构显示错误，请联系开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;
  Act_TreeError.Execute;
end;

procedure TFrm_DesignBOMRight.Act_OutExecute(Sender: TObject);
begin
  inherited;
  ExportToExcel(cxGrid_DBOM,True,TRue);
end;

procedure TFrm_DesignBOMRight.Act_SetOpenExecute(Sender: TObject);
begin
  inherited;
  Act_Ref.Visible:=False;
  Act_App.Visible:=False;
  Act_Edit.Visible:=False;
  Act_Del.Visible:=False;
  MyTreeView_DBOM.Enabled:=False;

  OKBtn.Visible:=True;
  CancelBtn.Visible:=True;
  cxGV.OptionsData.Editing:=True;

  FItemNumber_M.Options.Editing:=True;
  FAgentName_M.Options.Editing:=True;

end;

procedure TFrm_DesignBOMRight.Act_SetCloseExecute(Sender: TObject);
begin
  inherited;
  Act_Ref.Visible:=True;
  Act_App.Visible:=True;
  Act_Edit.Visible:=True;
  Act_Del.Visible:=True;
  MyTreeView_DBOM.Enabled:=True;
  OKBtn.Visible:=False;
  CancelBtn.Visible:=False;
  cxGV_DBOM_M.OptionsData.Editing:=False;
  P_state:=2;
end;

procedure TFrm_DesignBOMRight.Act_OKExecute(Sender: TObject);
var qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  mData_DBOM_M.Edit;
  mData_DBOM_M.Post;

  If (mData_DBOM_M['FAgentID']=0) or (mData_DBOM_M['FItemListID']=0) then
  begin
    application.MessageBox('关键字不能为空！请重新输入','系统提示',MB_ICONERROR);
    Exit;
  end;
  If P_state=0 then
  begin
    mData_DBOM_M.First;
    while not mData_DBOM_M.eof do
    begin
      try
        qry.SQL.Text:='select * from T_DesignBomRight where FDepartmentID=:FDepartmentID '
                     +' and FAgentID=:FAgentID and FItemListID=:FItemListID';
        qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
        qry.Parameters.FindParam('FAgentID').value:=mData_DBOM_M['FAgentID'];
        qry.Parameters.FindParam('FItemListID').value:=mData_DBOM_M['FItemListID'];
        qry.Open;
      finally
         ;
      end;
      If qry.RecordCount>0 then
      begin
        mData_DBOM_M.Delete;
      end;
      mData_DBOM_M.Next;
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

procedure TFrm_DesignBOMRight.Act_CancelExecute(Sender: TObject);
begin
  inherited;
  L_title.Caption:=UserFDepartmentName+'子公司BOM查看权限信息';
  Act_SetClose.Execute;
  
end;

procedure TFrm_DesignBOMRight.MyTreeView_StockExpanding(Sender: TObject;
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
               +'Isleaf from VT_Stock_Right where FParentNumber= '''
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
    with MyTreeView_Stock.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('Isleaf').value;
    end;
    qry.Next;
  end;


end;

procedure TFrm_DesignBOMRight.MyTreeView_StockChange(Sender: TObject;
  Node: TTreeNode);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If Node = nil then Exit;
  with PTree(Node.Data)^ do
  begin
    ListItemFNumber:=trim(PTree(Node.Data).FNumber);
    P_Isleaf:=PTree(Node.Data).Isleaf;
    If PTree(Node.Data).Isleaf>=0 then
    begin
       If MyItemList(qry,Mdata_M2,'V_StockRight','FDepartmentName+'';''+FAgentName+'';''+FProductName+'';''+FItemlb+'';''+FItemNo+'';''+FPartsCode+'';''+FWorkPartsNum+'';''',ListItemFNumber,'FFullNumber') then
       Mdata2.Close;
    end
    else
    begin
      Mdata_M2.Close;
      Mdata2.Close;
    end;

    If PTree(Node.Data).Isleaf=1 then
    begin
      If MyItemList(qry,Mdata2,'V_StockList','cast(FStockItemID as varchar(20))',
                    Mdata_M2['FStockItemID'],'FFullNumber') then
    end
    else
    begin
      Mdata2.Close;
    end;
  end;
  If (P_Isleaf=1) and (mdata_M2.RecordCount>0) then
     Act_Status2.Execute  //权限设置
  else
  begin
    TB_Edit2.Visible:=False;
    TB_Del2.Visible:=False;
    TB_Submit2.Visible:=False;
    N_Submit2.Visible:=False;
    TB_Check2.Visible:=False;
    N_Check2.Visible:=False;
  end;


end;

procedure TFrm_DesignBOMRight.Act_Status2Execute(Sender: TObject);
begin
  Case mdata_M2['FStockRightStatus'] of
    0:       //填单
    begin
      If mdata_M2['FStockRightWriteID']=UserNumID then  //操作者为本人
      begin
        TB_Del2.Visible:=mdlData.PermissionCheckRights(TFrm_DesignBOMRight.ClassName,'删除');
        N_Del2.Visible:=mdlData.PermissionCheckRights(TFrm_DesignBOMRight.ClassName,'删除');
        TB_Edit2.Visible:=mdlData.PermissionCheckRights(TFrm_DesignBOMRight.ClassName,'修改');
        N_Edit2.Visible:=mdlData.PermissionCheckRights(TFrm_DesignBOMRight.ClassName,'修改');
        TB_Submit2.Visible:=mdlData.PermissionCheckRights(TFrm_DesignBOMRight.ClassName,'提交');
        N_Submit2.Visible:=mdlData.PermissionCheckRights(TFrm_DesignBOMRight.ClassName,'提交');
        TB_Submit2.Caption:='提交';
        N_Submit2.Caption:='提交';
        TB_Check2.Visible:=False;
        N_Check2.Visible:=False;
      end
      else
      begin
        TB_Del2.Visible:=False;
        N_Del2.Visible:=False;
        TB_Edit2.Visible:=False;
        N_Edit2.Visible:=False;
        TB_Submit2.Visible:=False;
        N_Submit2.Visible:=False;
        TB_Check2.Visible:=False;
        N_Check2.Visible:=False;
      end;
    end;
  end;
  Case mdata_M2['FStockRightStatus'] of
    1:       //提交
    begin
      If mdata_M2['FStockRightWriteID']=UserNumID then  //提交者为本人
      begin
        TB_Submit2.Visible:=mdlData.PermissionCheckRights(TFrm_DesignBOMRight.ClassName,'提交');
        N_Submit2.Visible:=mdlData.PermissionCheckRights(TFrm_DesignBOMRight.ClassName,'提交');
        TB_Submit2.Caption:='反提交';
        N_Submit2.Caption:='反提交';
      end
      else
      begin
        TB_Submit2.Visible:=False;
        N_Submit2.Visible:=False;
      end;
      TB_Del2.Visible:=False;
      N_Del2.Visible:=False;
      TB_Edit2.Visible:=False;
      N_Edit2.Visible:=False;
      TB_Check2.Visible:=mdlData.PermissionCheckRights(TFrm_DesignBOMRight.ClassName,'校对');
      N_Check2.Visible:=mdlData.PermissionCheckRights(TFrm_DesignBOMRight.ClassName,'校对');
      TB_Check2.Caption:='校对';
      N_Check2.Caption:='校对';
    end;
  end;
  Case mdata_M2['FStockRightStatus'] of
    2:           //校对
    begin
      TB_Check2.Visible:=mdlData.PermissionCheckRights(TFrm_DesignBOMRight.ClassName,'校对');
      N_Check2.Visible:=mdlData.PermissionCheckRights(TFrm_DesignBOMRight.ClassName,'校对');
      TB_Check2.Caption:='反校对';
      N_Check2.Caption:='反校对';
      TB_Del2.Visible:=False;
      N_Del2.Visible:=False;
      TB_Edit2.Visible:=False;
      N_Edit2.Visible:=False;
      TB_Submit2.Visible:=False;
      N_Submit2.Visible:=False;
    end;
  end;

end;

procedure TFrm_DesignBOMRight.cxGV_M2CellClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If mData_M2['FStockItemID']<>0 then
  begin
    If MyItemList(qry,Mdata2,'V_StockList','cast(FStockItemID as varchar(20))',
                  Mdata_M2['FStockItemID'],'FFullNumber') then
    Act_Status2.Execute  //权限设置
  end;
end;

procedure TFrm_DesignBOMRight.FItemNumber_M2PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry,qry1: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry1:=TADOQuery.Create(self);
  qry1.ConnectionString:=mdlData.ReadConnStr;
    mdata_M2.Edit;
    mdata_M2.Edit;
  try
    qry.SQL.Text:='select * from VT_Stock where FDepartmentID=:FDepartmentID order by FBranchItemNumber,FNumber  ';
    //qry.Parameters.FindParam('FBranchItemNumber').value:='%'+mdata_M2['FItemNumber']+'%';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Open;
  finally
     ;
  end;
  selValue:=select('选择清单图号','FNumber','FParentNumber','FNumber','FName',qry);
  If (Length(selValue)>0) and (qry.FieldByName('FStockItemID').Value<>0) then
  begin
    mdata_M2.Edit;
    mdata_M2['FStockItemID']:=qry.FieldByName('FStockItemID').Value;
    mdata_M2.Post;
  end
  else
  begin
    application.MessageBox('请选择明细！','系统提示',MB_ICONINFORMATION);
    Exit
  end;


  try
    qry1.SQL.Text:='select * from V_StockList where FStockItemID=:FStockItemID';
    qry1.Parameters.FindParam('FStockItemID').value:=qry.FieldByName('FStockItemID').Value;
    qry1.Open;
  finally
     ;
  end;
  If qry1.RecordCount>0 then
  begin
    mdata_M2.Edit;
    mdata_M2['FBranchItemNumber']:=qry1.FieldByName('FBranchItemNumber').Value;
    mdata_M2['FPartsCode']:=qry1.FieldByName('FPartsCode').Value;
    mdata_M2['FPartsName']:=qry1.FieldByName('FPartsName').Value;
    mdata_M2['FWorkPartsNum']:=qry1.FieldByName('FWorkPartsNum').Value;
    mdata_M2['FWorkParts']:=qry1.FieldByName('FWorkParts').Value;
    mdata_M2['FClientshortName']:=qry1.FieldByName('FClientshortName').Value;
    mdata_M2['FItemNo']:=qry1.FieldByName('FItemNo').Value;
    mdata_M2['FBranchItemNumber']:=qry1.FieldByName('FBranchItemNumber').Value;
    mdata_M2.Post;
  end
  else
  begin
  end;



end;

procedure TFrm_DesignBOMRight.FAgentName_M2PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  mdata_M2.Edit;
  If mdata_M2['FAgentName']=null then
     mdata_M2['FAgentName']:='';
  mdata_M2.Post;
  mdata_M2.Edit;

  try
    qry.SQL.Text:='Select distinct b.FDepartMentID as FAgentID,FAgentName,a.FjobSort from V_WorkItem as a '
                 +' left outer join T_Department as b on a.FAgentName=b.FDepartMentName '
                 +' where a.FDepartmentID=:FDepartmentID and a.FAgentName like :FAgentName '
                 +' and  a.FisSysTem=''体系内'' '
                 +' order by a.FjobSort,a.FAgentName ';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Parameters.FindParam('FAgentName').value:='%'+mdata_M2['FAgentName']+'%';
    qry.Open;
  finally
     ;
  end;
  If qry.RecordCount=1 then
  begin
    mdata_M2['FAgentName']:=qry.FieldByName('FAgentName').AsString;
    mdata_M2['FAgentID']:=qry.FieldByName('FAgentID').AsInteger;
  end
  else
  begin
    selValue:=select('选择生产单位','FAgentName','FjobSort','FAgentName','FjobSort;FAgentName',qry);
    If (Length(selValue)>0) then
    begin
      mdata_M2['FAgentName']:=qry.FieldByName('FAgentName').AsString;
      mdata_M2['FAgentID']:=qry.FieldByName('FAgentID').AsString;
    end
    else
      application.MessageBox('请选择明细！','系统提示',MB_ICONINFORMATION);

  end;

  qry.Free;
end;

procedure TFrm_DesignBOMRight.Act_SetOpen2Execute(Sender: TObject);
begin
  inherited;
  Act_Ref2.Visible:=False;
  Act_App2.Visible:=False;
  Act_Edit2.Visible:=False;
  Act_Del2.Visible:=False;
  MyTreeView_Stock.Enabled:=False;

  OKBtn2.Visible:=True;
  CancelBtn2.Visible:=True;
  cxGV_M2.OptionsData.Editing:=True;

  FBranchItemNumber_M2.Options.Editing:=True;
  FAgentName_M2.Options.Editing:=True;

end;

procedure TFrm_DesignBOMRight.Act_App2Execute(Sender: TObject);
var
 i:Integer;
 qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  P_state :=0;     //新增

  try
    qry.SQL.Text:='Select * from V_StockRight where FStockRightID=:FStockRightID';
    qry.Parameters.FindParam('FStockRightID').value:= 0;
    qry.Open;
  finally
    ;
  end;
  mData_M2.CopyFromDataSet(qry);
  mData_M2.Edit;
  for i:=1 to 20 do
  begin
    mData_M2.Append;
    mData_M2['FStockItemID']:=0;
    mdata_M2['FAgentName']:='';
    mData_M2['FDepartmentID']:=UserFDepartmentID;
    mData_M2['FDepartmentName']:=UserFDepartmentName;

    mData_M2['FStockRightStatus']:=0;
    mData_M2['FStockRightStatusNotes']:='填单';
    mData_M2['FStockRightWrite']:=UserNum;
    mData_M2['FStockRightWriteDate']:=date();
    mData_M2.Post;
  end;

  L_title.Caption:='入库清单权限信息新增';
  Act_SetOpen2.Execute;
  mData_M2.First;
end;

procedure TFrm_DesignBOMRight.Act_SetClose2Execute(Sender: TObject);
begin
  inherited;
  Act_Ref2.Visible:=True;
  Act_App2.Visible:=True;
  Act_Edit2.Visible:=True;
  Act_Del2.Visible:=True;
  Act_Submit2.Visible:=True;
  MyTreeView_Stock.Enabled:=True;
  OKBtn2.Visible:=False;
  CancelBtn2.Visible:=False;

  cxGV_M2.OptionsData.Editing:=False;

end;

procedure TFrm_DesignBOMRight.CancelBtn2Click(Sender: TObject);
begin
  inherited;
  L_title.Caption:=UserFDepartmentName+'子公司入库清单查看权限信息';
  Act_SetClose2.Execute;

end;

procedure TFrm_DesignBOMRight.OKBtn2Click(Sender: TObject);
var qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
qry.ConnectionString:=mdlData.ReadConnStr;
  mData_M2.Edit;
  mData_M2.Post;

  If (mData_M2['FAgentID']=0) or (mData_M2['FStockItemID']=0) then
  begin
    application.MessageBox('关键字不能为空！请重新输入','系统提示',MB_ICONERROR);
    Exit;
  end;

  If P_state=0 then
  begin
    //检查是否重复录入
    try
      qry.SQL.Text:='Select * from V_StockRight where FStockItemID=:FStockItemID and FAgentID=:FAgentID and FDepartmentID=:FDepartmentID';
      qry.Parameters.FindParam('FStockItemID').Value:=Mdata_M2['FStockItemID'];
      qry.Parameters.FindParam('FAgentID').Value:=Mdata_M2['FAgentID'];
      qry.Parameters.FindParam('FDepartmentID').Value:=UserFDepartmentID;
      qry.Open;
      If qry.RecordCount>0 then
      begin
        application.MessageBox('此入库清单已经授权,不允许重复授权!','系统提示',MB_ICONERROR);
        Exit;
      end;
    finally
       ;
    end;

    If application.MessageBox('是否要保存添加的数据？','提示',MB_ICONINFORMATION+MB_YESNO)<>6 then
       Exit;
    If AddRd2 then //增加数据
    begin
      If application.MessageBox('录入数据已保存,还要继续录入吗？','提示',MB_ICONINFORMATION+MB_YESNO)=6 then
      begin
        TB_App2.Click ;
      end
      else
      begin
        inherited;
        CancelBtn2.Click;
      end;
    end;
  end;

  If P_state=1 then //修改数据
  begin
    //检查是否重复录入
    try
      qry.SQL.Text:='Select * from V_StockRight where FStockItemID=:FStockItemID and FAgentID=:FAgentID '
                   +' and FStockRightID<>:FStockRightID and FDepartmentID=:FDepartmentID ';
      qry.Parameters.FindParam('FStockItemID').Value:=Mdata_M2['FStockItemID'];
      qry.Parameters.FindParam('FAgentID').Value:=Mdata_M2['FAgentID'];
      qry.Parameters.FindParam('FStockRightID').Value:=Mdata_M2['FStockRightID'];
      qry.Parameters.FindParam('FDepartmentID').Value:=UserFDepartmentID;
      qry.Open;
      If qry.RecordCount>0 then
      begin
        application.MessageBox('此入库清单已经授权,不允许重复授权!','系统提示',MB_ICONERROR);
        Exit;
      end;
    finally
       ;
    end;

    If application.MessageBox('是否要保存所作修改？','提示',MB_ICONINFORMATION+MB_YESNO)<>6 then
       Exit;
    If EditRd2 then   //修改数据
    begin
      application.MessageBox('修改记录已保存','系统提示',MB_ICONINFORMATION);
      inherited;
    end
    else
      application.MessageBox('修改记录保存失败！','系统提示',MB_ICONWARNING);
    CancelBtn2.Click;
  end;
  qry.Free;



end;

procedure TFrm_DesignBOMRight.Act_Del2Execute(Sender: TObject);
var
  qry:TADOQuery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  P_List :=mdata_M2['FBranchItemNumber']+'】【'+mdata_M2['FPartsName']+'】【'+mdata_M2['FWorkParts'];

  If (mdata_M2.RecordCount<1) then
     Exit;

  If application.MessageBox(Pchar('警告：是否删除入库清单为：【'+P_List+'】的数据？'+chr(13)+chr(13)
                           +'删除数据操作将不可恢复，确定要删除本单据吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
  If application.MessageBox(Pchar('警告：是否删除入库清单为：【'+P_List+'】的数据？'+chr(13)+chr(13)
                           +'删除数据操作将不可恢复，确定要删除本单据吗？'),'再次警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then

  begin
    //单据删除
    If not DelRd2 then
    begin
      application.MessageBox('删除单据失败！','系统提示',MB_ICONINFORMATION);
      mdlData.conn.RollbackTrans;
      Exit;
    end;
    mdata_M2.Edit;
    mdata_M2.Delete;
  end;
  mdata_M2.Close;
  qry.Free;

end;

procedure TFrm_DesignBOMRight.Act_Edit2Execute(Sender: TObject);
begin
  inherited;
  P_state :=1;
  Act_SetOpen2.Execute;
  L_title.Caption:=UserFDepartmentName+'子公司入库清单查看权限修改';

end;

procedure TFrm_DesignBOMRight.Act_Submit2Execute(Sender: TObject);
var
 qry:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  P_List :=mdata_M2['FBranchItemNumber']+'】【'+mdata_M2['FPartsName']+'】【'+mdata_M2['FWorkParts'];
  If (TB_Submit2.Caption='提交') or (N_Submit2.Caption='提交') then
  begin
    If application.MessageBox(Pchar('警告：是否提交入库清单：【'+P_List+'】的单据？'+chr(13)+chr(13)
                                   +'提交后的数据不允许修改和删除，确定要提交本单据吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      try
        qry.SQL.Text:='Update T_StockRight Set FStockRightStatus=1,FStockRightSubmitDate=:FStockRightSubmitDate  where FStockRightID=:FStockRightID';
        qry.Parameters.FindParam('FStockRightSubmitDate').value:= now();
        qry.Parameters.FindParam('FStockRightID').value:=mdata_M2['FStockRightID'];
        qry.ExecSQL;
      finally
         ;
      end;
      mdata_M2.Edit;
      mdata_M2['FStockRightStatus']:=1;
      mdata_M2['FStockRightStatusNotes']:='提交';
      mdata_M2['FStockRightSubmitDate']:=now();
      mdata_M2.Post;
      TB_Submit2.Caption:='反提交';
      Act_Status2.Execute;  //权限设置
      application.MessageBox('提交完毕！','系统提示',MB_ICONINFORMATION);    end;
    Exit;
  end;
  If (TB_Submit2.Caption='反提交') or (N_Submit2.Caption='反提交') then
  begin
    If application.MessageBox(Pchar('警告：是否反提交招标入库清单：【'+P_List+'】的单据？'+chr(13)+chr(13)
                                   +'反提交后的数据不允许修改和删除，确定要反提交本单据吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      try
        qry.SQL.Text:='Update T_StockRight Set FStockRightStatus=0,FStockRightSubmitDate=:FStockRightSubmitDate  where FStockRightID=:FStockRightID';
        qry.Parameters.FindParam('FStockRightSubmitDate').value:= '1900-01-01';
        qry.Parameters.FindParam('FStockRightID').value:= mdata_M2['FStockRightID'];
        qry.ExecSQL;
      finally
         ;
      end;
      mdata_M2.Edit;
      mdata_M2['FStockRightStatus']:=0;
      mdata_M2['FStockRightStatusNotes']:='填单';
      mdata_M2['FStockRightSubmitDate']:='1900-01-01';
      mdata_M2.Post;
      TB_Submit2.Caption:='提交';
      Act_Status2.Execute;  //权限设置
      application.MessageBox('反提交完毕！','系统提示',MB_ICONINFORMATION);
    end;
    Exit;
  end;
  Act_Ref2.Execute;


end;

procedure TFrm_DesignBOMRight.Act_Ref2Execute(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If not TreeVeiwListWhere(qry,MyTreeView_Stock,'VT_Stock_Right',' and FDepartmentID='+IntToStr(UserFDepartmentID) ) then
  begin
    Application.MessageBox(PChar('树型结构显示错误，请联系开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;
end;

procedure TFrm_DesignBOMRight.Act_Check2Execute(Sender: TObject);
var
 qry:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  P_List :=mdata_M2['FBranchItemNumber']+'】【'+mdata_M2['FPartsName']+'】【'+mdata_M2['FWorkParts'];
  If (TB_Check2.Caption='校对') or (N_Check2.Caption='校对') then
  begin
    If application.MessageBox(Pchar('警告：是否校对入库清单：【'+P_List+'】的单据？'+chr(13)+chr(13)
                                   +'校对后的数据不允许修改和删除，确定要校对本单据吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      try
        qry.SQL.Text:='Update T_StockRight Set FStockRightStatus=2,FStockRightCheckID=:FStockRightCheckID,FStockRightCheckDate=:FStockRightCheckDate  where FStockRightID=:FStockRightID';
        qry.Parameters.FindParam('FStockRightCheckID').value:= UserNumID;
        qry.Parameters.FindParam('FStockRightCheckDate').value:= now();
        qry.Parameters.FindParam('FStockRightID').value:=mdata_M2['FStockRightID'];
        qry.ExecSQL;
      finally
         ;
      end;
      mdata_M2.Edit;
      mdata_M2['FStockRightStatus']:=2;
      mdata_M2['FStockRightStatusNotes']:='校对';
      mdata_M2['FStockRightCheckID']:=UserNumID;
      mdata_M2['FStockRightCheck']:=UserNum;
      mdata_M2['FStockRightCheckDate']:=now();
      mdata_M2.Post;
      TB_Check2.Caption:='反校对';
      Act_Status2.Execute;  //权限设置
      application.MessageBox('校对完毕！','系统提示',MB_ICONINFORMATION);
    end;
    Exit;
  end;
  If (TB_Check2.Caption='反校对') or (N_Check2.Caption='反校对') then
  begin
    If application.MessageBox(Pchar('警告：是否反校对入库清单：【'+P_List+'】的单据？'+chr(13)+chr(13)
                                   +'反校对后的数据不允许修改和删除，确定要反校对本单据吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      try
        qry.SQL.Text:='Update T_StockRight Set FStockRightStatus=1,FStockRightCheckID=:FStockRightCheckID,FStockRightCheckDate=:FStockRightCheckDate  where FStockRightID=:FStockRightID';
        qry.Parameters.FindParam('FStockRightCheckID').value:= UserNumID;
        qry.Parameters.FindParam('FStockRightCheckDate').value:= '1900-01-01';
        qry.Parameters.FindParam('FStockRightID').value:= mdata_M2['FStockRightID'];
        qry.ExecSQL;
      finally
         ;
      end;
      mdata_M2.Edit;
      mdata_M2['FStockRightStatus']:=1;
      mdata_M2['FStockRightStatusNotes']:='提交';
      mdata_M2['FStockRightCheckID']:=UserNumID;
      mdata_M2['FStockRightCheck']:='';
      mdata_M2['FStockRightCheckDate']:='1900-01-01';
      mdata_M2.Post;
      TB_Check2.Caption:='校对';
      Act_Status2.Execute;  //权限设置
      application.MessageBox('反校对完毕！','系统提示',MB_ICONINFORMATION);
    end;
    Exit;
  end;
  Act_Ref2.Execute;

end;

procedure TFrm_DesignBOMRight.FItemNumber_MPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  mdata_DBOM_M.Edit;
  mdata_DBOM_M.Post;
    try
      qry.SQL.Text:='select * from VT_ItemList where FItemNumber like :FItemNumber and FDepartmentID=:FDepartmentID order by FItemNumber  ';
      qry.Parameters.FindParam('FItemNumber').value:='%'+mdata_DBOM_M['FItemNumber']+'%';
      qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
      qry.Open;
    finally
       ;
    end;
    selValue:=select('选择部件图号','FNumber','FParentNumber','FNumber','FName',qry);
    If (Length(selValue)>0) then
    begin
      mdata_DBOM_M.Edit;
      mdata_DBOM_M['FItemNumber']:=qry.FieldByName('FItemNumber').Value;
      mdata_DBOM_M['FItemListID']:=qry.FieldByName('FItemListID').Value;
      mdata_DBOM_M.Post;
    end;
end;

procedure TFrm_DesignBOMRight.FBranchItemNo_MPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  mdata_DBOM_M.Edit;
  If mdata_DBOM_M['FBranchItemNumber']=null then
     mdata_DBOM_M['FBranchItemNumber']:='';
  mdata_DBOM_M.Post;
  mdata_DBOM_M.Edit;

  try
    qry.SQL.Text:='Select * from V_FileItem where FDepartmentID=:FDepartmentID and FBranchItemNumber like :FBranchItemNumber';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Parameters.FindParam('FBranchItemNumber').value:='%'+mdata_DBOM_M['FBranchItemNumber']+'%';
    qry.Open;
  finally
     ;
  end;
  If qry.RecordCount=1 then
  begin
    mdata_DBOM_M['FBranchItemNumber']:=qry.FieldByName('FBranchItemNumber').AsString;
    mdata_DBOM_M['FBranchItemID']:=qry.FieldByName('FBranchItemID').AsInteger;
  end
  else
  begin
    selValue:=select('选择分档案号','FNumber','FParentNumber','FNumber','FName',qry);
    If (Length(selValue)>0) and (qry.FieldByName('FDetail').Value<>0) then
    begin
      mdata_DBOM_M['FBranchItemNumber']:=qry.FieldByName('FBranchItemNumber').AsString;
      mdata_DBOM_M['FBranchItemID']:=qry.FieldByName('FBranchItemID').AsString;
    end
    else
      application.MessageBox('请选择明细！','系统提示',MB_ICONINFORMATION);

  end;

  qry.Free;


end;

procedure TFrm_DesignBOMRight.FAgentName_MPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  mdata_DBOM_M.Edit;
  If mdata_DBOM_M['FAgentName']=null then
     mdata_DBOM_M['FAgentName']:='';
  mdata_DBOM_M.Post;
  mdata_DBOM_M.Edit;

  try
    qry.SQL.Text:='Select distinct b.FDepartMentID as FAgentID,FAgentName,a.FjobSort from V_WorkItem as a '
                 +' left outer join T_Department as b on a.FAgentName=b.FDepartMentName '
                 +' where a.FDepartmentID=:FDepartmentID and a.FAgentName like :FAgentName '
                 +' and  a.FisSysTem=''体系内'' '
                 +' order by a.FjobSort,a.FAgentName ';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Parameters.FindParam('FAgentName').value:='%'+Trim(mdata_DBOM_M['FAgentName'])+'%';
    qry.Open;
  finally
     ;
  end;
  If qry.RecordCount=1 then
  begin
    mdata_DBOM_M['FAgentName']:=qry.FieldByName('FAgentName').AsString;
    mdata_DBOM_M['FAgentID']:=qry.FieldByName('FAgentID').AsInteger;
  end
  else
  begin
    selValue:=select('选择生产单位','FAgentName','FjobSort','FAgentName','FjobSort;FAgentName',qry);
    If (Length(selValue)>0) then
    begin
      mdata_DBOM_M['FAgentName']:=qry.FieldByName('FAgentName').AsString;
      mdata_DBOM_M['FAgentID']:=qry.FieldByName('FAgentID').AsString;
    end
    else
      application.MessageBox('请选择明细！','系统提示',MB_ICONINFORMATION);
  end;
  qry.Free;

end;

procedure TFrm_DesignBOMRight.Act_SubmitExecute(Sender: TObject);
var
 qry:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  P_List :=mdata_DBOM_M['FItemNumber']+'】【'+mdata_DBOM_M['FPartsNumber']+'】【'+mdata_DBOM_M['FPartsName'];
  If (TB_Submit.Caption='提交') or (N_Submit.Caption='提交') then
  begin
    If application.MessageBox(Pchar('警告：是否提交设计BOM：【'+P_List+'】的单据？'+chr(13)+chr(13)
                                   +'提交后的数据不允许修改和删除，确定要提交本单据吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      try
        qry.SQL.Text:='Update T_DesignBomRight Set FDesignBomRightStatus=1,FDesignBomRightSubmitDate=:FDesignBomRightSubmitDate  where FDesignBomRightID=:FDesignBomRightID';
        qry.Parameters.FindParam('FDesignBomRightSubmitDate').value:= now();
        qry.Parameters.FindParam('FDesignBomRightID').value:=mdata_DBOM_M['FDesignBomRightID'];
        qry.ExecSQL;
      finally
         ;
      end;
      mdata_DBOM_M.Edit;
      mdata_DBOM_M['FDesignBomRightStatus']:=1;
      mdata_DBOM_M['FDesignBomRightStatusNotes']:='提交';
      mdata_DBOM_M['FDesignBomRightSubmitDate']:=now();
      mdata_DBOM_M.Post;
      TB_Submit.Caption:='反提交';
      Act_Status.Execute;  //权限设置
      application.MessageBox('提交完毕！','系统提示',MB_ICONINFORMATION);    end;
    Exit;
  end;
  If (TB_Submit.Caption='反提交') or (N_Submit.Caption='反提交') then
  begin
    If application.MessageBox(Pchar('警告：是否反提交设计BOM：【'+P_List+'】的单据？'+chr(13)+chr(13)
                                   +'反提交后的数据不允许修改和删除，确定要反提交本单据吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      try
        qry.SQL.Text:='Update T_DesignBomRight Set FDesignBomRightStatus=0,FDesignBomRightSubmitDate=:FDesignBomRightSubmitDate  where FDesignBomRightID=:FDesignBomRightID';
        qry.Parameters.FindParam('FDesignBomRightSubmitDate').value:= Null;
        qry.Parameters.FindParam('FDesignBomRightID').value:= mdata_DBOM_M['FDesignBomRightID'];
        qry.ExecSQL;
      finally
         ;
      end;
      mdata_DBOM_M.Edit;
      mdata_DBOM_M['FDesignBomRightStatus']:=0;
      mdata_DBOM_M['FDesignBomRightStatusNotes']:='填单';
      mdata_DBOM_M['FDesignBomRightSubmitDate']:=NUll;
      mdata_DBOM_M.Post;
      TB_Submit.Caption:='提交';
      Act_Status.Execute;  //权限设置
      application.MessageBox('反提交完毕！','系统提示',MB_ICONINFORMATION);
    end;
    Exit;
  end;
  Act_Ref.Execute;
end;

procedure TFrm_DesignBOMRight.Act_CheckExecute(Sender: TObject);
var
 qry:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  P_List :=mdata_DBOM_M['FItemNumber']+'】【'+mdata_DBOM_M['FPartsNumber']+'】【'+mdata_DBOM_M['FPartsName'];
  If (TB_Check.Caption='校对') or (N_Check.Caption='校对') then
  begin
    If application.MessageBox(Pchar('警告：是否校对设计BOM：【'+P_List+'】的单据？'+chr(13)+chr(13)
                                   +'校对后的数据不允许修改和删除，确定要校对本单据吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      try
        qry.SQL.Text:='Update T_DesignBomRight Set FDesignBomRightStatus=2,FDesignBomRightCheckID=:FDesignBomRightCheckID,FDesignBomRightCheckDate=:FDesignBomRightCheckDate  where FDesignBomRightID=:FDesignBomRightID';
        qry.Parameters.FindParam('FDesignBomRightCheckID').value:= UserNumID;
        qry.Parameters.FindParam('FDesignBomRightCheckDate').value:= now();
        qry.Parameters.FindParam('FDesignBomRightID').value:=mdata_DBOM_M['FDesignBomRightID'];
        qry.ExecSQL;
      finally
         ;
      end;
      mdata_DBOM_M.Edit;
      mdata_DBOM_M['FDesignBomRightStatus']:=2;
      mdata_DBOM_M['FDesignBomRightStatusNotes']:='校对';
      mdata_DBOM_M['FDesignBomRightCheckID']:=UserNumID;
      mdata_DBOM_M['FDesignBomRightCheck']:=UserNum;
      mdata_DBOM_M['FDesignBomRightCheckDate']:=now();
      mdata_DBOM_M.Post;
      TB_Check.Caption:='反校对';
      Act_Status.Execute;  //权限设置
      application.MessageBox('校对完毕！','系统提示',MB_ICONINFORMATION);
    end;
    Exit;
  end;
  If (TB_Check.Caption='反校对') or (N_Check.Caption='反校对') then
  begin
    If application.MessageBox(Pchar('警告：是否反校对设计BOM：【'+P_List+'】的单据？'+chr(13)+chr(13)
                                   +'反校对后的数据不允许修改和删除，确定要反校对本单据吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      try
        qry.SQL.Text:='Update T_DesignBomRight Set FDesignBomRightStatus=1,FDesignBomRightCheckID=:FDesignBomRightCheckID,FDesignBomRightCheckDate=:FDesignBomRightCheckDate  where FDesignBomRightID=:FDesignBomRightID';
        qry.Parameters.FindParam('FDesignBomRightCheckID').value:= UserNumID;
        qry.Parameters.FindParam('FDesignBomRightCheckDate').value:=NUll;
        qry.Parameters.FindParam('FDesignBomRightID').value:= mdata_DBOM_M['FStockInRightID'];
        qry.ExecSQL;
      finally
         ;
      end;
      mdata_DBOM_M.Edit;
      mdata_DBOM_M['FDesignBomRightStatus']:=1;
      mdata_DBOM_M['FDesignBomRightStatusNotes']:='提交';
      mdata_DBOM_M['FDesignBomRightCheckID']:=UserNumID;
      mdata_DBOM_M['FDesignBomRightCheck']:='';
      mdata_DBOM_M['FDesignBomRightCheckDate']:='1900-01-01';
      mdata_DBOM_M.Post;
      TB_Check.Caption:='校对';
      Act_Status.Execute;  //权限设置
      application.MessageBox('反校对完毕！','系统提示',MB_ICONINFORMATION);
    end;
    Exit;
  end;
  Act_Ref.Execute;


end;

procedure TFrm_DesignBOMRight.Act_StatusExecute(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Select distinct FDesignBomRightStatus from V_DesignBOMRight where FDepartmentID=:FDepartmentID '
                 +' and ListFNumber_DBOM like :ListFNumber_DBOM and FDesignBomRightWriteID=:FDesignBomRightWriteID ';
    qry.Parameters.FindParam('FDepartmentID').value:= UserFDepartmentID;
    qry.Parameters.FindParam('ListFNumber_DBOM').value:=ListFNumber_DBOM+'%';
    qry.Parameters.FindParam('FDesignBomRightWriteID').value:= UserNumID;
    qry.Open;
  finally
    ;
  end;
  If qry.RecordCount=1 then
  begin
    Case qry.FieldByName('FDesignBomRightStatus').Value of
      0:       //填单
      begin
        TB_Del.Visible:=mdlData.PermissionCheckRights(TFrm_DesignBOMRight.ClassName,'删除');
        N_Del.Visible:=mdlData.PermissionCheckRights(TFrm_DesignBOMRight.ClassName,'删除');
        TB_Edit.Visible:=mdlData.PermissionCheckRights(TFrm_DesignBOMRight.ClassName,'修改');
        N_Edit.Visible:=mdlData.PermissionCheckRights(TFrm_DesignBOMRight.ClassName,'修改');
        TB_Submit.Visible:=mdlData.PermissionCheckRights(TFrm_DesignBOMRight.ClassName,'提交');
        N_Submit.Visible:=mdlData.PermissionCheckRights(TFrm_DesignBOMRight.ClassName,'提交');
        TB_Submit.Caption:='提交';
        N_Submit.Caption:='提交';
        TB_Check.Visible:=False;
        N_Check.Visible:=False;
      end;
    //Case qry.FieldByName('FDesignBomRightStatus').Value of
      1:       //提交
      begin
        TB_Submit.Visible:=mdlData.PermissionCheckRights(TFrm_DesignBOMRight.ClassName,'提交');
        N_Submit.Visible:=mdlData.PermissionCheckRights(TFrm_DesignBOMRight.ClassName,'提交');
        TB_Submit.Caption:='反提交';
        N_Submit.Caption:='反提交';
        TB_Del.Visible:=False;
        N_Del.Visible:=False;
        TB_Edit.Visible:=False;
        N_Edit.Visible:=False;
        TB_Check.Visible:=False;
        N_Check.Visible:=False;
      end;
    //Case qry.FieldByName('FDesignBomRightStatus').Value of
      2:       //校对
      begin
        TB_Check.Visible:=mdlData.PermissionCheckRights(TFrm_DesignBOMRight.ClassName,'校对');
        N_Check.Visible:=mdlData.PermissionCheckRights(TFrm_DesignBOMRight.ClassName,'校对');
        TB_Check.Caption:='反校对';
        N_Check.Caption:='反校对';
        TB_Del.Visible:=False;
        N_Del.Visible:=False;
        TB_Edit.Visible:=False;
        N_Edit.Visible:=False;
        TB_Submit.Visible:=False;
        N_Submit.Visible:=False;
      end;
    end;
    
  end
  else
  begin
      TB_Del.Visible:=False;
      N_Del.Visible:=False;
      TB_Edit.Visible:=False;
      N_Edit.Visible:=False;
      TB_Submit.Visible:=False;
      N_Submit.Visible:=False;
      TB_Check.Visible:=False;
      N_Check.Visible:=False;
   end;
  {  If qry.FieldByName('FDesignBomRightStatus').Value=1 then
    begin
      TB_Submit.Visible:=mdlData.PermissionCheckRights(TFrm_DesignBOMRight.ClassName,'提交');
      N_Submit.Visible:=mdlData.PermissionCheckRights(TFrm_DesignBOMRight.ClassName,'提交');
      TB_Submit.Caption:='反提交';
      N_Submit.Caption:='反提交';
    end
    else
    begin
      TB_Submit.Visible:=False;
      N_Submit.Visible:=False;
      TB_Del.Visible:=False;
      N_Del.Visible:=False;
      TB_Edit.Visible:=False;
      N_Edit.Visible:=False;
      TB_Check.Visible:=mdlData.PermissionCheckRights(TFrm_DesignBOMRight.ClassName,'校对');
      N_Check.Visible:=mdlData.PermissionCheckRights(TFrm_DesignBOMRight.ClassName,'校对');
      TB_Check.Caption:='校对';
      N_Check.Caption:='校对';
    end;
    If qry.FieldByName('FDesignBomRightStatus').Value=2 then
    begin
      TB_Check.Visible:=mdlData.PermissionCheckRights(TFrm_DesignBOMRight.ClassName,'校对');
      N_Check.Visible:=mdlData.PermissionCheckRights(TFrm_DesignBOMRight.ClassName,'校对');
      TB_Check.Caption:='反校对';
      N_Check.Caption:='反校对';
      TB_Del.Visible:=False;
      N_Del.Visible:=False;
      TB_Edit.Visible:=False;
      N_Edit.Visible:=False;
      TB_Submit.Visible:=False;
      N_Submit.Visible:=False;
    end
    else
    begin

    end;
  end
  else
  begin
    TB_Del.Visible:=False;
    N_Del.Visible:=False;
    TB_Edit.Visible:=False;
    N_Edit.Visible:=False;
    TB_Submit.Visible:=False;
    N_Submit.Visible:=False;
    TB_Check.Visible:=False;
    N_Check.Visible:=False;
  end;
   }
  {
  Case mdata_DBOM_M['FDesignBomRightStatus'] of
    0:       //填单
    begin
      If mdata_DBOM_M['FDesignBomRightWriteID']=UserNumID then  //操作者为本人
      begin
        TB_Del.Visible:=mdlData.PermissionCheckRights(TFrm_DesignBOMRight.ClassName,'删除');
        N_Del.Visible:=mdlData.PermissionCheckRights(TFrm_DesignBOMRight.ClassName,'删除');
        TB_Edit.Visible:=mdlData.PermissionCheckRights(TFrm_DesignBOMRight.ClassName,'修改');
        N_Edit.Visible:=mdlData.PermissionCheckRights(TFrm_DesignBOMRight.ClassName,'修改');
        TB_Submit.Visible:=mdlData.PermissionCheckRights(TFrm_DesignBOMRight.ClassName,'提交');
        N_Submit.Visible:=mdlData.PermissionCheckRights(TFrm_DesignBOMRight.ClassName,'提交');
        TB_Submit.Caption:='提交';
        N_Submit.Caption:='提交';
        TB_Check.Visible:=False;
        N_Check.Visible:=False;
      end
      else
      begin
        TB_Del.Visible:=False;
        N_Del.Visible:=False;
        TB_Edit.Visible:=False;
        N_Edit.Visible:=False;
        TB_Submit.Visible:=False;
        N_Submit.Visible:=False;
        TB_Check.Visible:=False;
        N_Check.Visible:=False;
      end;
    end;
  end;
  Case mdata_DBOM_M['FDesignBomRightStatus'] of
    1:       //提交
    begin
      If mdata_DBOM_M['FDesignBomRightWriteID']=UserNumID then  //提交者为本人
      begin
        TB_Submit.Visible:=mdlData.PermissionCheckRights(TFrm_DesignBOMRight.ClassName,'提交');
        N_Submit.Visible:=mdlData.PermissionCheckRights(TFrm_DesignBOMRight.ClassName,'提交');
        TB_Submit.Caption:='反提交';
        N_Submit.Caption:='反提交';
      end
      else
      begin
        TB_Submit.Visible:=False;
        N_Submit.Visible:=False;
      end;
      TB_Del.Visible:=False;
      N_Del.Visible:=False;
      TB_Edit.Visible:=False;
      N_Edit.Visible:=False;
      TB_Check.Visible:=mdlData.PermissionCheckRights(TFrm_DesignBOMRight.ClassName,'校对');
      N_Check.Visible:=mdlData.PermissionCheckRights(TFrm_DesignBOMRight.ClassName,'校对');
      TB_Check.Caption:='校对';
      N_Check.Caption:='校对';
    end;
  end;
  Case mdata_DBOM_M['FDesignBomRightStatus'] of
    2:           //校对
    begin
      TB_Check.Visible:=mdlData.PermissionCheckRights(TFrm_DesignBOMRight.ClassName,'校对');
      N_Check.Visible:=mdlData.PermissionCheckRights(TFrm_DesignBOMRight.ClassName,'校对');
      TB_Check.Caption:='反校对';
      N_Check.Caption:='反校对';
      TB_Del.Visible:=False;
      N_Del.Visible:=False;
      TB_Edit.Visible:=False;
      N_Edit.Visible:=False;
      TB_Submit.Visible:=False;
      N_Submit.Visible:=False;
    end;
  end;
   }
end;

procedure TFrm_DesignBOMRight.FAgentName_MPropertiesEditValueChanged(
  Sender: TObject);
var  qry: TADOQuery;
begin
   qry:=TADOQuery.Create(self);
   qry.ConnectionString:=mdlData.ReadConnStr;
   mdata_DBOM.Edit;
   mdata_DBOM.Post;
   mdata_DBOM.Edit;
   if mdata_DBOM['FAgentName']=Null then
      mdata_DBOM['FAgentName']:='';
   mdata_DBOM.Post;
   mdata_DBOM.Edit;
   try
    qry.SQL.Text:='Select distinct b.FDepartMentID as FAgentID,FAgentName,a.FjobSort from V_WorkItem as a '
                 +' left outer join T_Department as b on a.FAgentName=b.FDepartMentName '
                 +' where a.FDepartmentID=:FDepartmentID and a.FAgentName like :FAgentName '
                 +' and  a.FisSysTem=''体系内'' '
                 +' order by a.FjobSort,a.FAgentName ';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Parameters.FindParam('FAgentName').value:='%'+Trim(mdata_DBOM['FAgentName'])+'%';
    qry.Open;
   finally
     ;
   end;

   If qry.RecordCount=1 then
   begin
     mdata_DBOM.Edit;
     mdata_DBOM['FAgentID']:=qry.FieldByName('FAgentID').Value;
     mdata_DBOM.Post;
     Exit;
   end
   else
   begin
     mdata_DBOM.Edit;
     mdata_DBOM['FAgentID']:=0;
     mdata_DBOM['FAgentName']:='';
     mdata_DBOM.Post;
  end;

end;

procedure TFrm_DesignBOMRight.E_FTeamNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='select * from VT_Item where FDepartmentID=:FDepartmentID and FItemNumber like :FItemNumber order by FItemNumber ';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Parameters.FindParam('FItemNumber').value:='%'+Trim(E_FItemNumber.Text)+'%';
    qry.Open;
  finally
   ;
  end;

  selValue:=select('选择项目图号','FNumber','FParentNumber','FNumber','FName',qry);
  If (Length(selValue)>0) then
  begin
    E_FItemID.EditValue:=qry.FieldByName('FItemID').Value;
    E_FItemNumber.Text:=qry.FieldByName('FItemNumber').Value;
    E_FClientShortName.Text:=qry.FieldByName('FClientShortName').Value;
  end;
  If ((E_FItemID.Text<>'') and (E_FItemID.EditValue<>0)) and ((E_FAgentID.Text<>'') and (E_FAgentID.EditValue<>0))  then
     TB_App.Enabled:= mdlData.PermissionCheckRights(TFrm_DesignBOMRight.ClassName,'新增')
  else
     TB_App.Enabled:=False;
  


end;

procedure TFrm_DesignBOMRight.E_FAgentNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    {qry.SQL.Text:='Select distinct b.FDepartMentID as FAgentID,FAgentName,a.FjobSort from V_WorkItem as a '
                 +' left outer join T_Department as b on a.FAgentName=b.FDepartMentName '
                 +' where a.FDepartmentID=:FDepartmentID and a.FAgentName like :FAgentName '
                 +' and  a.FisSysTem=''体系内'' '
                 +' order by a.FjobSort,a.FAgentName ';}
    qry.SQL.Text:='Select b.FDepartmentID,a.* from VT_AgentItem as a left outer join T_Department as b '
                 +' on a.FAgentName=b.FDepartmentName '
                 +' where a.FDepartmentID=:FDepartmentID and FAgentName like :FAgentName and  FisSysTem=''体系内'' order by FNumber,FAgentName  ';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Parameters.FindParam('FAgentName').value:='%'+Trim(E_FAgentName.Text)+'%';
    qry.Open;
  finally
     ;
  end;
  If qry.RecordCount=1 then
  begin
    E_FAgentName.Text:=qry.FieldByName('FAgentName').AsString;
    E_FAgentID.EditValue:=qry.FieldByName('FDepartmentID').AsInteger;
  end
  else
  begin
    //selValue:=select('选择生产单位','FAgentName','FjobSort','FAgentName','FjobSort;FAgentName',qry);
     selValue:=select('选择生产单位','FNumber','FParentNumber','FNumber','FName',qry);
    If (Length(selValue)>0) then
    begin
      E_FAgentName.Text:=qry.FieldByName('FAgentName').AsString;
      E_FAgentID.EditValue:=qry.FieldByName('FDepartmentID').AsString;
    end
    else
      application.MessageBox('请选择明细！','系统提示',MB_ICONINFORMATION);
  end;
  qry.Free;

  If ((E_FItemID.Text<>'') and (E_FItemID.EditValue<>0)) and ((E_FAgentID.Text<>'') and (E_FAgentID.EditValue<>0))  then
     TB_App.Enabled:= mdlData.PermissionCheckRights(TFrm_DesignBOMRight.ClassName,'新增')
  else
     TB_App.Enabled:=False;

end;

procedure TFrm_DesignBOMRight.cxGV_DBOM_MFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
var qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
{
  If (P_state=2) and (mData_DBOM_M['FItemListID']<>0) and (mData_DBOM_M['FItemListID']<>null ) then
  begin
    If MyItemList(qry,Mdata_DBOM,'V_DesignBOM_Structure','cast(FItemListID as varchar(20))',
                  Mdata_DBOM_M['FItemListID'],'FFullNumber') then
    Act_Status.Execute  //权限设置
  end;
 }

end;

procedure TFrm_DesignBOMRight.E_FItemNumberPropertiesChange(
  Sender: TObject);
begin
  inherited;
  If E_FItemNumber.Text='' then
  begin
    E_FClientShortName.Text:='';
    E_FItemID.EditValue:=0;
  end;
   If ((E_FItemID.Text<>'') and (E_FItemID.EditValue<>0)) and ((E_FAgentID.Text<>'') and (E_FAgentID.EditValue<>0))  then
     TB_App.Enabled:= mdlData.PermissionCheckRights(TFrm_DesignBOMRight.ClassName,'新增')
  else
     TB_App.Enabled:=False;

end;

procedure TFrm_DesignBOMRight.E_FAgentNamePropertiesChange(
  Sender: TObject);
begin
  inherited;
  If E_FAgentName.Text='' then
     E_FAgentID.EditValue:=0;
   If ((E_FItemID.Text<>'') and (E_FItemID.EditValue<>0)) and ((E_FAgentID.Text<>'') and (E_FAgentID.EditValue<>0))  then
     TB_App.Enabled:= mdlData.PermissionCheckRights(TFrm_DesignBOMRight.ClassName,'新增')
  else
     TB_App.Enabled:=False;

end;

procedure TFrm_DesignBOMRight.Act_TreeErrorExecute(Sender: TObject);
var
  qry:TADOQuery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Delete from T_DesignBOMRight where FDesignBOMRightID in  (select distinct FDesignBOMRightID from V_DesignBOMRight where FProductName is null)';
    qry.ExecSQL;
  finally
    ;
  end;

end;

procedure TFrm_DesignBOMRight.TB_AccreditClick(Sender: TObject);
var
  proc:TADOStoredProc;
begin
  proc:=TADOStoredProc.Create(self);
  proc.ConnectionString:=mdlData.ReadConnStr;
  proc.CommandTimeout:=500;
  try
    proc.ProcedureName:='P_BOMRight;1';
    with proc.Parameters.AddParameter do
    begin
      DataType := ftInteger;
      Direction := pdinput;
      size:=50;
      name := '@FDepartMentID';
      value:=UserFDepartMentID;
    end;
    proc.ExecProc;
  finally
     ;
  end;
  Proc.Free;
  application.MessageBox('授权完毕！','系统提示',MB_ICONINFORMATION);

end;

end.
