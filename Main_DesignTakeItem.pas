unit Main_DesignTakeItem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FrmGridBass, ExtCtrls, StdCtrls, DsFancyButton, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  dxmdaset, cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid,
  cxTextEdit, cxDropDownEdit, cxCalendar, cxMaskEdit, cxContainer, cxLabel,
  cxDBLookupComboBox, ADODB, cxButtonEdit, Grids, DBGrids, ComCtrls, Comobj,  RzShellDialogs,
  ToolWin, ImgList, FR_DSet, FR_DBSet, FR_Class, cxRadioGroup, Buttons,
  cxGroupBox, cxCheckBox, cxCurrencyEdit, RzPanel, RzSplit, RzTabs,IniFiles,
  jpeg, cxLookAndFeelPainters, cxButtons, cxMemo, ActnList, cxDBEdit, Menus,
  cxImage, RzStatus;

type
    TFrm_DesignTakeItem = class(TFrm_GridBass)
    MData: TdxMemData;
    DS_Mdata: TDataSource;
    ImageList: TImageList;
    frReport: TfrReport;
    frDBDataSet: TfrDBDataSet;
    PC_1: TRzPageControl;
    TS_BOM: TRzTabSheet;
    V_K3: TADOTable;
    DS_K3: TDataSource;
    Image1: TImage;
    Label1: TLabel;
    TS_Take: TRzTabSheet;
    ToolBar1: TToolBar;
    TB_Ref1: TToolButton;
    ToolButton5: TToolButton;
    TB_update: TToolButton;
    TB_PartsSort: TToolButton;
    ToolButton3: TToolButton;
    TB_Take: TToolButton;
    TB_Down: TToolButton;
    TB_Print: TToolButton;
    ToolButton1: TToolButton;
    RzSizePanel2: TRzSizePanel;
    RzSizePanel3: TRzSizePanel;
    MyTreeView: TTreeView;
    ToolBar3: TToolBar;
    TB_App: TToolButton;
    TB_Edit: TToolButton;
    TB_Del: TToolButton;
    TB_Ref: TToolButton;
    TB_Out: TToolButton;
    ToolButton7: TToolButton;
    TB_Down2: TToolButton;
    TB_Prin2: TToolButton;
    ToolButton10: TToolButton;
    Image3: TImage;
    L_title2: TLabel;
    DS_Mdata2: TDataSource;
    MData2: TdxMemData;
    TB_EXIT: TToolButton;
    TB_EXIT2: TToolButton;
    Panel1: TPanel;
    Panel_button: TPanel;
    Bevel_button: TBevel;
    OKBtn: TcxButton;
    CancelBtn: TcxButton;
    MData2th: TStringField;
    MData2mc: TStringField;
    MData2gg: TStringField;
    MData2FSumQry: TIntegerField;
    MData2FTakeDemand: TStringField;
    MData2FTakeListReMark: TStringField;
    MData2FSumSuttle: TFloatField;
    MData2FName: TStringField;
    MData2FModel: TStringField;
    MData2UnitName: TStringField;
    Panel3: TPanel;
    Panel4: TPanel;
    Bevel1: TBevel;
    cxGrid: TcxGrid;
    cxGV: TcxGridDBTableView;
    FCode: TcxGridDBColumn;
    th: TcxGridDBColumn;
    mc: TcxGridDBColumn;
    FModel: TcxGridDBColumn;
    FSumQry: TcxGridDBColumn;
    FSuttle: TcxGridDBColumn;
    gg: TcxGridDBColumn;
    ssth: TcxGridDBColumn;
    FQry: TcxGridDBColumn;
    FManageParts: TcxGridDBColumn;
    FWorkParts: TcxGridDBColumn;
    FPartsSort: TcxGridDBColumn;
    FSumSuttle: TcxGridDBColumn;
    FNumber: TcxGridDBColumn;
    FName: TcxGridDBColumn;
    UnitName: TcxGridDBColumn;
    FPriceQry: TcxGridDBColumn;
    FFullNumber: TcxGridDBColumn;
    ssFullNumber: TcxGridDBColumn;
    Remark: TcxGridDBColumn;
    FFullName: TcxGridDBColumn;
    cxGL: TcxGridLevel;
    Panel8: TPanel;
    Label26: TLabel;
    E_FBranchFileNo1: TcxButtonEdit;
    TS_K3: TRzTabSheet;
    ToolBar2: TToolBar;
    TB_SelK4: TToolButton;
    ToolButton2: TToolButton;
    TB_Down4: TToolButton;
    ToolButton6: TToolButton;
    TB_EXIT1: TToolButton;
    Label2: TLabel;
    Image2: TImage;
    cxGridK3: TcxGrid;
    cxGVK3: TcxGridDBTableView;
    FNumber3: TcxGridDBColumn;
    FName3: TcxGridDBColumn;
    FModel3: TcxGridDBColumn;
    UnitName3: TcxGridDBColumn;
    K3ISOut: TcxGridDBColumn;
    FItemId: TcxGridDBColumn;
    FK3ID: TcxGridDBColumn;
    cxGLK3: TcxGridLevel;
    DS_Mdata3: TDataSource;
    MData3: TdxMemData;
    MData2FNumber: TStringField;
    TB_DelOne: TToolButton;
    E_FPartsNumber1: TcxButtonEdit;
    Label10: TLabel;
    TB_Sel: TToolButton;
    MData2Fk3Name: TStringField;
    MData2FK3Model: TStringField;
    MData2FOrderNoQry: TIntegerField;
    TB_Audit: TToolButton;
    actionList: TActionList;
    Act_App: TAction;
    Act_Parts: TAction;
    Act_Edit: TAction;
    Act_Del: TAction;
    Act_Out: TAction;
    Act_Audit: TAction;
    Act_cldy: TAction;
    Act_Save: TAction;
    Act_PartsSort: TAction;
    Act_Tack: TAction;
    Act_SetOpen: TAction;
    Act_SetClose: TAction;
    Act_Set_MaxID: TAction;
    Act_Set_MaxNum: TAction;
    Act_AddRd: TAction;
    Act_EditRd: TAction;
    Act_DelRd: TAction;
    Act_AddMain: TAction;
    Act_AddList: TAction;
    Act_Finsh: TAction;
    Action2: TAction;
    Act_Down: TAction;
    TB_Check: TToolButton;
    TB_PushDown: TToolButton;
    Act_Check: TAction;
    Act_PushDown: TAction;
    Act_Submit: TAction;
    E_FItemListID1: TcxButtonEdit;
    TB_Submit: TToolButton;
    Act_Status: TAction;
    MData_M2: TdxMemData;
    DS_Mdata_M2: TDataSource;
    MData_M2FTakeID: TIntegerField;
    MData_M2FTakeDate: TDateField;
    MData_M2FItemListId: TIntegerField;
    MData_M2FBranchFileNo: TStringField;
    MData_M2FTakeWrite: TStringField;
    MData_M2FTakeWriteDate: TDateTimeField;
    MData_M2FItemNumber: TStringField;
    Act_Refsh: TAction;
    TS_Item: TPageControl;
    TabSheet1: TTabSheet;
    cxGrid_M2: TcxGrid;
    cxGV_M2: TcxGridDBTableView;
    FItemNumber_M2: TcxGridDBColumn;
    FpartsNumber_M2: TcxGridDBColumn;
    FPartsName_M2: TcxGridDBColumn;
    FBranchFileNo_M2: TcxGridDBColumn;
    FClientShortName_M2: TcxGridDBColumn;
    FTakeReMark_M2: TcxGridDBColumn;
    FTakeDate_M2: TcxGridDBColumn;
    FTakeStatusNotes_M2: TcxGridDBColumn;
    FDesignLeader_M2: TcxGridDBColumn;
    FTakeWrite_M2: TcxGridDBColumn;
    FTakeWriteDate_M2: TcxGridDBColumn;
    FTakeSubmitDate_M2: TcxGridDBColumn;
    FTakeCheck_M2: TcxGridDBColumn;
    FTakeCheckDate_M2: TcxGridDBColumn;
    FTakeAudit_M2: TcxGridDBColumn;
    FTakeAuditDate_M2: TcxGridDBColumn;
    FTakePushDown_M2: TcxGridDBColumn;
    FTakePushDownDate_M2: TcxGridDBColumn;
    FTakeID_M2: TcxGridDBColumn;
    FItemListID_M2: TcxGridDBColumn;
    FTakeStatus_M2: TcxGridDBColumn;
    cxGL_M2: TcxGridLevel;
    PC2_1: TPageControl;
    TS_Date: TTabSheet;
    TS_Write: TTabSheet;
    MyTreeView_Date: TTreeView;
    TS_DesignLeader: TTabSheet;
    MyTreeView_Write: TTreeView;
    MyTreeView_DesignLeader: TTreeView;
    Act_Ref_Write: TAction;
    TBar_Sel: TToolBar;
    TB_Date: TcxButton;
    ToolBar5: TToolBar;
    TB_Write: TcxButton;
    Act_Ref_Date: TAction;
    ToolBar6: TToolBar;
    TB_DesignLeader: TcxButton;
    Act_Ref_DesignLeader: TAction;
    RSP_List: TRzSizePanel;
    PageControl2: TPageControl;
    TS_List: TTabSheet;
    cxGrid2: TcxGrid;
    cxGV2: TcxGridDBTableView;
    FPartsNumber_2: TcxGridDBColumn;
    th_2: TcxGridDBColumn;
    mc_2: TcxGridDBColumn;
    gg_2: TcxGridDBColumn;
    FPlanTenderQry: TcxGridDBColumn;
    FOrderQry: TcxGridDBColumn;
    Sel: TcxGridDBColumn;
    FK3Name_2: TcxGridDBColumn;
    FK3Model_2: TcxGridDBColumn;
    UnitName_2: TcxGridDBColumn;
    FTakeDemand: TcxGridDBColumn;
    FTakeListReMark_2: TcxGridDBColumn;
    FNumber_2: TcxGridDBColumn;
    FName_2: TcxGridDBColumn;
    FModel_2: TcxGridDBColumn;
    FSumSuttle_2: TcxGridDBColumn;
    FTakeNumber_2: TcxGridDBColumn;
    FOrderID: TcxGridDBColumn;
    FTakeListID_2: TcxGridDBColumn;
    FItemNumber_2: TcxGridDBColumn;
    cxGL2: TcxGridLevel;
    FTakeQry: TcxGridDBColumn;
    FTenderCoeQry: TcxGridDBColumn;
    MData2FTakeQry: TIntegerField;
    MData2FPlanTenderQry: TIntegerField;
    MData2FTenderCoeQry: TIntegerField;
    MData2FOrderQry: TIntegerField;
    FFinsh_M2: TcxGridDBColumn;
    FFinshDate_M2: TcxGridDBColumn;
    ToolBar7: TToolBar;
    FSumQry_2: TcxGridDBColumn;
    PM_M: TPopupMenu;
    N_App: TMenuItem;
    N_Edit: TMenuItem;
    N_Del: TMenuItem;
    N_Submit: TMenuItem;
    N_Check: TMenuItem;
    N_Audit: TMenuItem;
    N_PushDown: TMenuItem;
    N_Out: TMenuItem;
    N_Print: TMenuItem;
    N_Exit: TMenuItem;
    ActFullName: TAction;
    ActPartsSort: TAction;
    ToolButton4: TToolButton;
    StatusBar1: TStatusBar;
    SaveDialog1: TSaveDialog;
    ToolButton8: TToolButton;
    OpenDialog1: TOpenDialog;
    procedure CancelBtnClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TB_EXIT1Click(Sender: TObject);
    procedure TB_DownClick(Sender: TObject);
    procedure MyTreeViewChange(Sender: TObject; Node: TTreeNode);
    procedure FormCreate(Sender: TObject);
    procedure TB_Ref1Click(Sender: TObject);
    procedure TB_updateClick(Sender: TObject);
    procedure cxGridExit(Sender: TObject);
    procedure MDataAfterEdit(DataSet: TDataSet);
    procedure ToolButton3Click(Sender: TObject);
    procedure MyTreeView_DateExpanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure MyTreeViewExpanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure MyTreeView_DateChange(Sender: TObject; Node: TTreeNode);
    procedure TB_EXITClick(Sender: TObject);
    procedure TB_Prin2Click(Sender: TObject);
    procedure TB_OutClick(Sender: TObject);
    procedure TB_EXIT3Click(Sender: TObject);
    procedure TB_SelK4Click(Sender: TObject);
    procedure SelPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure TB_DelOneClick(Sender: TObject);
    procedure TB_SelClick(Sender: TObject);
    procedure cxGV2CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure PC_1Change(Sender: TObject);
    procedure TB_Down2Click(Sender: TObject);
    procedure TB_Down4Click(Sender: TObject);
    procedure Act_AppExecute(Sender: TObject);
    procedure Act_EditExecute(Sender: TObject);
    procedure Act_DelExecute(Sender: TObject);
    procedure Act_AuditExecute(Sender: TObject);
    procedure Act_PartsSortExecute(Sender: TObject);
    procedure Act_TackExecute(Sender: TObject);
    procedure Act_SetOpenExecute(Sender: TObject);
    procedure Act_SetCloseExecute(Sender: TObject);
    procedure Act_Set_MaxNumExecute(Sender: TObject);
    procedure Act_CheckExecute(Sender: TObject);
    procedure Act_PushDownExecute(Sender: TObject);
    procedure Act_StatusExecute(Sender: TObject);
    procedure Act_SubmitExecute(Sender: TObject);
    procedure Act_SaveExecute(Sender: TObject);
    procedure FpartsNumber_M2PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FBranchFileNo_M2PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure Act_RefshExecute(Sender: TObject);
    procedure MyTreeView_WriteExpanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure MyTreeView_WriteChange(Sender: TObject; Node: TTreeNode);
    procedure Act_Ref_WriteExecute(Sender: TObject);
    procedure Act_Ref_DateExecute(Sender: TObject);
    procedure Act_Ref_DesignLeaderExecute(Sender: TObject);
    procedure MyTreeView_DesignLeaderExpanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure MyTreeView_DesignLeaderChange(Sender: TObject; Node: TTreeNode);
    procedure ActFullNameExecute(Sender: TObject);
    procedure ActPartsSortExecute(Sender: TObject);
    procedure E_FBranchFileNo1PropertiesChange(Sender: TObject);
    procedure E_FBranchFileNo1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxGV_M2FocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure ToolButton4Click(Sender: TObject);
    procedure ToolButton8Click(Sender: TObject);


  private
    ListItemFNumber,ListItemFParentNumber,P_th,P_List:String;
    P_i:boolean;
    P_FProductID_BOM,P_MaxNum,P_IsAudit,P_FItemListId,P_Isleaf:Integer;
    P_Parts: string;
    FFullFileName: string;


    { Private declarations }


    function AddMain:bool;
    function AddList:bool;
    function AddRd:bool;
    function EditRd:bool;
    function DelRd:bool;

  public
    { Public declarations }
  end;

var
  Frm_DesignTakeItem: TFrm_DesignTakeItem;
implementation

uses FRMDATA, COMMON, FrmSelect, ProgBar, PROGRASS;

{$R *.dfm}


function TFrm_DesignTakeItem.AddRd: bool;
var
  qry:TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  result:=False;

  If mData2.RecordCount<=0 then
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

function TFrm_DesignTakeItem.EditRd:bool;
var
  qry:TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  result:=False;

  If mData2.RecordCount<=0 then
  begin
    result:=True;
    Exit;
  end;

  mData2.Edit;
  mData2.Post;

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

function TFrm_DesignTakeItem.DelRd: bool;
var
 qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.Connection:=mdlData.conn;
  try
    qry.SQL.Text:='Delete from T_DesignTake where FItemListID=:FItemListID';
    with qry.Parameters do
    begin
      FindParam('FItemListID').value:=mdata_M2['FItemListID'];
    end;
    result:=qry.ExecSQL>=1;
  finally
    qry.Free;
  end;
end;



function TFrm_DesignTakeItem.AddMain: bool;
var
 qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Insert into T_DesignTake(FTakeID,FItemListId,FDepartmentID,FTakeDate,FBranchFileNo,FTakeStatus,FTakeWriteID,FTakeWriteDate) '
                 +'values(:FTakeId,:FItemListId,:FDepartmentID,:FTakeDate,:FBranchFileNo,:FTakeStatus,:FTakeWriteID,:FTakeWriteDate)';
   with qry.Parameters do
   begin

     FindParam('FTakeId').value:=P_MaxNum;
     FindParam('FItemListId').value:=mdata_M2['FItemListId'];
     FindParam('FDepartmentID').value:=UserFDepartmentID;
     FindParam('FTakeDate').value:=mdata_M2['FTakeDate'];
     FindParam('FBranchFileNo').value:=mdata_M2['FBranchFileNo'];
     FindParam('FTakeStatus').value:=0;
     FindParam('FTakeWriteID').value:=UserNumID;
     FindParam('FTakeWriteDate').value:=now();
   end;
     result:=qry.ExecSQL>=1;
   finally
     qry.Free;
   end;

end;


function TFrm_DesignTakeItem.AddList: bool;
var
  qry: TADOQuery;
  i: integer;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.EnableBCD:=False;//小数位数>4
  qry.CommandTimeout:=500;
  result:=False;

  If mData2.RecordCount<=0 then
  begin
    result:=True;
    Exit;
  end;

  try
    qry.SQL.Text:='Insert into T_DesignTakeList(FTakeID,th,mc,gg,FSumQry,FTakeQry,FSumSuttle,FTakeDemand,FTakeListReMark,FName,FModel,UnitName,FK3ID) '
                 +'values(:FTakeID,:th,:mc,:gg,:FSumQry,:FTakeQry,:FSumSuttle,:FTakeDemand,:FTakeListReMark,:FName,:FModel,:UnitName,:FK3ID)';
    mData2.First;
    i:=1;
    while not mData2.eof do
    begin
      If (mData2['FSumQry']<>0) then
      begin
        If qry.Active then qry.Close;
        qry.Parameters.FindParam('FTakeID').value:= P_MaxNum;
        qry.Parameters.FindParam('th').value:=mdata2['th'];
        qry.Parameters.FindParam('mc').value:=mdata2['mc'];
        qry.Parameters.FindParam('gg').value:=mdata2['gg'];
        qry.Parameters.FindParam('FSumQry').value:=mdata2['FSumQry'];
        qry.Parameters.FindParam('FTakeQry').value:=mdata2['FTakeQry'];
        qry.Parameters.FindParam('FSumSuttle').value:=mdata2['FSumSuttle'];
        qry.Parameters.FindParam('FTakeDemand').value:=mdata2['FTakeDemand'];
        qry.Parameters.FindParam('FTakeListReMark').value:=mdata2['FTakeListReMark'];
        qry.Parameters.FindParam('FName').value:=mdata2['FName'];
        qry.Parameters.FindParam('FModel').value:=mdata2['FModel'];
        qry.Parameters.FindParam('UnitName').value:=mdata2['UnitName'];
        qry.Parameters.FindParam('FK3ID').value:=UserFK3ID;
        result:=qry.ExecSQL>=1;
        if not result then break;
      end;
        mData2.Next;
        i:=i+1;
     end;
   finally
     qry.Free;
   end;
end;



procedure TFrm_DesignTakeItem.CancelBtnClick(Sender: TObject);
begin
  inherited;
  P_state :=2;//不在新增、修改状态
  Act_SetClose.Execute;
  L_title2.Caption:='外协购件清单信息';
end;

procedure TFrm_DesignTakeItem.FormResize(Sender: TObject);
begin
  inherited;
  TB_Ref1.Click;
  TB_Ref.Click;
  Act_Ref_Date.Execute;
  Act_Ref_Write.Execute;
  Act_Ref_DesignLeader.Execute;

  L_title.Caption:=UserFDepartmentName+'外购件清单';
  L_title2.Caption:=UserFDepartmentName+'外购件清单';
  Self.Caption:=UserFDepartmentName+'外购件清单';
end;

procedure TFrm_DesignTakeItem.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=cafree;
  Frm_DesignTakeItem:=nil;
end;

procedure TFrm_DesignTakeItem.TB_EXIT1Click(Sender: TObject);
begin
  inherited;
  self.Close;
end;

procedure TFrm_DesignTakeItem.TB_DownClick(Sender: TObject);
Var i:Integer;
begin
  If TB_Down.Caption='取消设置' then
  begin
    TB_Down.Caption:='设置';
    cxGV.OptionsData.Editing:=False;
    cxGv.OptionsView.GroupByBox:=False;
    for i:=0 to cxGv.ColumnCount-1 do
    begin
      cxGv.Columns[i].Options.Filtering:=False;
      cxGv.Columns[i].Options.Editing:=False;
      cxGv.Columns[i].Options.Sorting:=False;
    end;
  end
  else
  begin
    TB_Down.Caption:='取消设置';
    cxGV.OptionsData.Editing:=True;
    cxGv.OptionsView.GroupByBox:=True;
    for i:=0 to cxGv.ColumnCount-1 do
    begin
      cxGv.Columns[i].Options.Filtering:=True;
      cxGv.Columns[i].Options.Editing:=True;
      cxGv.Columns[i].Options.Sorting:=True;
    end;
  end;
end;

procedure TFrm_DesignTakeItem.MyTreeViewChange(Sender: TObject; Node: TTreeNode);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;

  ShowPrograss('正在提取数据，请稍候……',self);
  If Node = nil then Exit;
  with PTree(Node.Data)^ do
  begin
    ListItemFNumber:=trim(PTree(Node.Data).FNumber);
    P_th:=PTree(Node.Data).Caption;    //部件级别  001
    P_FProductID_BOM:=PTree(Node.Data).FProductID;
    If PTree(Node.Data).Isleaf=1 then
    begin
      If not MyItemList(qry,Mdata,'V_DesignBOM_Structure','FFullNumber',ListItemFNumber,'') then
      begin
      //  mdata.Open;
      // mdata.First;
      end;
      //分档案号
      try
        qry.SQL.Text:='select * from VT_FileItem where FDepartmentID=:FDepartmentID and FItemNumber=:FItemNumber order by FItemNumber ';
        qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
        qry.Parameters.FindParam('FItemNumber').value:=mdata['FItemNumber'];
        qry.Open;
      finally
        ;
      end;
      If qry.RecordCount=1 then
         E_FBranchFileNo1.Text:=qry.FieldByName('FBranchFileNo').Value
      else
         E_FBranchFileNo1.Text:='';
      //FItemListID
      try
        qry.SQL.Text:='select * from VT_DesignBOM where FFullNumber=:FFullNumber ';
        qry.Parameters.FindParam('FFullNumber').value:=ListItemFNumber;
        qry.Open;
      finally
        ;
      end;
      If qry.RecordCount=1 then
         E_FItemListID1.EditValue:=qry.FieldByName('FItemListID').Value
      else
         E_FItemListID1.Text:='';

     If mdata.RecordCount>0 then
     begin
       E_FBranchFileNo1.Enabled:=True;
       E_FPartsNumber1.Text:=mdata['FPartsNumber'];
     end
     else
     begin
       E_FBranchFileNo1.Enabled:=False;
       E_FPartsNumber1.Text:='';
     end;
    end
    else
    begin
      mdata.Close;
    end;
  end;
end;

procedure TFrm_DesignTakeItem.FormCreate(Sender: TObject);
begin
  inherited;
  P_state :=2;//不在新增、修改状态

  P_Parts:='FManageParts';
  TB_App.Visible:= mdlData.CheckFrmRights(TFrm_DesignTakeItem.ClassName,'新增');
  TB_Edit.Visible:=False;
  TB_Del.Visible:= False;
  TB_DelOne.Visible:= False;
  TB_Audit.Visible:= False;

  TB_PartsSort.Visible:= mdlData.CheckFrmRights(TFrm_DesignTakeItem.ClassName,'修改');


{  TB_Edit.Visible:= mdlData.CheckFrmRights(TFrm_DesignTake.ClassName,'修改');
  TB_Del.Visible:= mdlData.CheckFrmRights(TFrm_DesignTake.ClassName,'删除');
  TB_DelOne.Visible:= mdlData.CheckFrmRights(TFrm_DesignTake.ClassName,'删除');
  TB_Audit.Visible:= mdlData.CheckFrmRights(TFrm_DesignTake.ClassName,'审核');
 }
  TB_Out.Visible:= mdlData.CheckFrmRights(TFrm_DesignTakeItem.ClassName,'导出');
  TB_Prin2.Visible:= mdlData.CheckFrmRights(TFrm_DesignTakeItem.ClassName,'打印');

  TS_Date.TabVisible:= mdlData.CheckFrmRights(TFrm_DesignTakeItem.ClassName,'查看');
  TS_DesignLeader.TabVisible:= mdlData.CheckFrmRights(TFrm_DesignTakeItem.ClassName,'校对');
  TS_Write.TabVisible:= mdlData.CheckFrmRights(TFrm_DesignTakeItem.ClassName,'新增');

{  If mdlData.CheckFrmRights(TFrm_DesignTake.ClassName,'校对') then
      TS_Date.TabVisible:=True;
  If mdlData.CheckFrmRights(TFrm_DesignTake.ClassName,'审核') then
      TS_Date.TabVisible:=True;

 }
end;

procedure TFrm_DesignTakeItem.TB_Ref1Click(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
 // If not TreeVeiwList(qry,MyTreeView,'VT_DesignBOM') then
  If not TreeVeiwListUserID(qry,MyTreeView,'VT_DesignBOM',UserFDepartmentID) then
  begin
    Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;

end;

procedure TFrm_DesignTakeItem.TB_updateClick(Sender: TObject);
var
  IsEdit:bool;
  qry: TADOQuery;
  I_index:integer;
begin
  I_index:=mData.RecNo ;
  Mdata.Edit;
  Mdata.Post;
  If ShowMsg('是否对已修改部件类别进行批量更新？更新后不可恢复！','提示') then
  begin
    with mdata do
    begin
      mData.DisableControls;
      First;
      qry:=TADOQuery.Create(Self);
      try
        qry.Connection:=mdlData.conn;
        qry.SQL.Text:='Update T_DesignBOM_Structure set FPartsSort=:FPartsSort where FFullNumber=:FFullNumber';
        while not mdata.EoF do
        begin
          IsEdit:=mData.FieldByName('IsEdit').AsBoolean;
          If IsEdit then
          begin
            qry.Parameters[0].Value:=mData['FPartsSort'];
            qry.Parameters[1].Value:=mData['FFullNumber'];
            qry.ExecSQL;
          end;
          next;
        end;
      finally
        ;
        //Messagedlg('数据更新失败！',mtInformation,[mbok],0);
      end;
    end;
    mData.EnableControls;
  end;
  TB_update.Visible:=False;
  If (I_index<mData.RecordCount) and (I_index<>-1) then
     mData.RecNo :=I_index
  else
     mData.Last;

end;

procedure TFrm_DesignTakeItem.cxGridExit(Sender: TObject);
begin
  inherited;
  If TB_update.Visible then
  If messagedlg('数据已修改是否更新？',mtInformation,[mbyes,mbno],0)=mryes then
    TB_update.Click;

end;

procedure TFrm_DesignTakeItem.MDataAfterEdit(DataSet: TDataSet);
begin
  inherited;
  DataSet['IsEdit']:=True;
  TB_update.Visible:=True;
end;

procedure TFrm_DesignTakeItem.ToolButton3Click(Sender: TObject);
begin
  inherited;
  ExportToExcel(cxGrid,True,TRue);
end;

procedure TFrm_DesignTakeItem.MyTreeView_DateExpanding(Sender: TObject;
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

  qry.SQL.Text:='Select * from VT_DesignTake where FParentNumber= '''
               +PTree(Node.Data).ID+''' and FDepartmentID=:FDepartmentID '
               +' order by FTakeStatus,FNumber';
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

procedure TFrm_DesignTakeItem.MyTreeViewExpanding(Sender: TObject;
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

  qry.SQL.Text:='Select FNumber, FParentNumber,FName,FProductID,'
               +'Isleaf from VT_DesignBOM where FParentNumber= '''
               +PTree(Node.Data).ID+''' and FK3ID=:FK3ID'
               +' order by FItemNumber,FFullNumber';
  qry.Parameters.FindParam('FK3ID').value:=UserFK3ID;
  qry.open;

  PTree(Node.Data).Flag := cLoadFlag;                  // 设置已加载标志
  while not qry.Eof do
  begin
    New(P);
    P.ID := qry.FieldByName('FNumber').AsString;
    P.ParentID := qry.FieldByName('FParentNumber').AsString;
    P.FNumber:=qry.FieldByName('FNumber').AsString;
    P.FParentNumber:=qry.FieldByName('FParentNumber').AsString;

    P.FProductID:=qry.FieldByName('FProductID').Value;
    P.Isleaf := qry.FieldByName('Isleaf').Value;
    P.Caption := qry.FieldByName('FName').AsString;

    P.Flag := cNoLoadFlag;                            // 新节点，未加载标志
    with MyTreeView.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('Isleaf').value;
    end;
    qry.Next;
  end;
  cxGvColumn(cxGv,Mdata);

end;

procedure TFrm_DesignTakeItem.MyTreeView_DateChange(Sender: TObject;
  Node: TTreeNode);
var
  qry:TADOquery;

begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If Node = nil then Exit;
  with PTree(Node.Data)^ do
  begin
    ListItemFNumber2:=trim(PTree(Node.Data).FNumber);
    P_th2:=PTree(Node.Data).Caption;
    P_Isleaf:=PTree(Node.Data).Isleaf;


    If PTree(Node.Data).Isleaf>=1 then
    begin
      If MyItemList(qry,Mdata_M2,'V_DesignTake','FDepartmentName+'';''+FCarryOut+'';''+FTakeStatusNotes+'';''+FItemlb+'';''+FBranchItemNumber+'';''+FPartsCode+'';''',
                   ListItemFNumber2,'FBranchItemNumber,FPartsCode') then

      If MyItemList(qry,Mdata2,'V_DesignTakeList','FDepartmentName+'';''+FCarryOut+'';''+FTakeStatusNotes+'';''+FItemlb+'';''+FBranchItemNumber+'';''+FPartsCode+'';''',
                    ListItemFNumber2,'FBranchItemNumber,FPartsCode,th,mc,gg') then
    end
    else
    begin
      Mdata_M2.Close;
      mdata2.Close;
    end;
  end;
  If (P_Isleaf=2) and (mdata_M2.RecordCount>0) then
     Act_Status.Execute  //权限设置
  else
  begin
    TB_Edit.Visible:=False;
    TB_Del.Visible:=False;
    TB_DelOne.Visible:=False;
    TB_Submit.Visible:=False;
    TB_Check.Visible:=False;
    TB_Audit.Visible:=False;
    TB_PushDown.Visible:=False;
  end;
end;

procedure TFrm_DesignTakeItem.TB_EXITClick(Sender: TObject);
begin
  inherited;
  self.Close;
end;

procedure TFrm_DesignTakeItem.TB_Prin2Click(Sender: TObject);
begin
  inherited;
  Mdata2.SortedField:='FTakeNumber';
  frDBDataSet.DataSet:=Mdata2;
  FrReport.LoadFromFile(ExtractFileDir(Application.ExeName)+'\Report_DesignBOM_Take.frf');
  FrReport.ShowReport;

end;

procedure TFrm_DesignTakeItem.TB_OutClick(Sender: TObject);
begin
  inherited;
  ExportToExcel(cxGrid2,True,TRue);
end;

procedure TFrm_DesignTakeItem.TB_EXIT3Click(Sender: TObject);
begin
  inherited;
  self.Close;
end;

procedure TFrm_DesignTakeItem.TB_SelK4Click(Sender: TObject);
var  i,j: integer;
begin
  inherited;
  mData2.Open;
  mData2.Edit;
  mdata2.Post;
  begin
    mData2.Last;
    for i:=0 to cxGVK3.DataController.Controller.SelectedRecordCount-1 do
    begin
      j:=cxGVK3.DataController.GetSelectedRowIndex(i);
      mdata2.Append;
      mdata2.Edit;
      mdata2['FName']:=cxGVK3.DataController.GetValue(J,1);
      mdata2['FModel']:=cxGVK3.DataController.GetValue(J,2);
      mdata2['FNumber']:=cxGVK3.DataController.GetValue(J,0);
      mdata2['FK3Name']:=cxGVK3.DataController.GetValue(J,1);
      mdata2['FK3Model']:=cxGVK3.DataController.GetValue(J,2);
      mdata2['UnitName']:=cxGVK3.DataController.GetValue(J,3);
      mdata2.Post;
    end;
  end;
  PC_1.ActivePage:=TS_Take;

end;

procedure TFrm_DesignTakeItem.SelPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
   qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.Connection:=mdlData.conn;
  mdata2.Edit;
  If mdata2['FName']=Null then
     mdata2['FName']:='';
  If mdata2['FModel']=Null then
     mdata2['FModel']:='';
  mdata2.Post;
  try
    qry.SQL.Text:='select * from K3_Item_V where FK3ID=:FK3ID and FName like :FName and FModel like :FModel order by FNumber';
    qry.Parameters.FindParam('FK3ID').Value:=UserFK3ID;
    qry.Parameters.FindParam('FName').Value:='%'+Trim(mdata2['FName'])+'%';
    qry.Parameters.FindParam('FModel').Value:='%'+Trim(mdata2['FModel'])+'%';
    qry.Open;
  finally
     ;
  end;
  mdata3.CopyFromDataSet(qry);
  mdata3.Active:=True;
  mdata3.Open;

end;

procedure TFrm_DesignTakeItem.TB_DelOneClick(Sender: TObject);
var
 qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Select * from V_DesignOrderList where FTakeListID=:FTakeListID';
    qry.Parameters.FindParam('FTakeListID').value:=mdata2['FTakeListID'];
    qry.Open;
  finally
     ;
  end;

  If (qry.RecordCount>0) then
  begin
    application.MessageBox('此记录已经生成采购订单,不允许删除！请重新选择!','系统提示',MB_ICONINFORMATION);
    Exit;
  end;

  If application.MessageBox(Pchar('警告：是否删除外购清单号为：【'+Trim(Mdata_M2['FPartsNumber'])+'】【'+Trim(Mdata2['th'])+'】【'+Trim(Mdata2['mc'])+'】的信息？'+chr(13)+chr(13)
                           +'删除数据操作将不可恢复，确定要删除本单据吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
  If application.MessageBox(Pchar('再次警告：是否删除外购清单号为：【'+Trim(Mdata_M2['FPartsNumber'])+'】【'+Trim(Mdata2['th'])+'】【'+Trim(Mdata2['mc'])+'】的信息？'+chr(13)+chr(13)
                           +'删除数据操作将不可恢复，确定要删除本单据吗？'),'再次警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then

 mdata2.Delete;
 try
    qry.SQL.Text:='Delete from T_DesignTakeList where FTakeListID=:FTakeListID';
    qry.Parameters.FindParam('FTakeListID').value:=mdata2['FTakeListID'];
    qry.ExecSQL;
  finally
    qry.Free;
  end;

end;

procedure TFrm_DesignTakeItem.TB_SelClick(Sender: TObject);
var  i,j: integer;
begin
  inherited;
  mData2.Open;
  mData2.Edit;
  mdata2.Post;
  begin
    mData2.Last;
    for i:=0 to cxGV.DataController.Controller.SelectedRecordCount-1 do
    begin
      j:=cxGV.DataController.GetSelectedRowIndex(i);
      mdata2.Append;
      mdata2.Edit;
      mdata2['th']:=cxGV.DataController.GetValue(J,1);
      mdata2['mc']:=cxGV.DataController.GetValue(J,2);
      mdata2['gg']:=cxGV.DataController.GetValue(J,3);
      mdata2['FName']:=cxGV.DataController.GetValue(J,5);
      mdata2['FModel']:=cxGV.DataController.GetValue(J,6);
      mdata2['FNumber']:=cxGV.DataController.GetValue(J,4);
      mdata2['FK3Name']:=cxGV.DataController.GetValue(J,5);
      mdata2['FK3Model']:=cxGV.DataController.GetValue(J,6);
      mdata2['UnitName']:=cxGV.DataController.GetValue(J,7);
      mdata2['FSumQry']:=cxGV.DataController.GetValue(J,8);
      mdata2.Post;
    end;
  end;
  PC_1.ActivePage:=TS_Take;


end;

procedure TFrm_DesignTakeItem.cxGV2CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
 // if StrToFloat(AViewInfo.GridRecord.DisplayTexts[FTakeQry.Index])<>StrToFloat(AViewInfo.GridRecord.DisplayTexts[FPlanTenderQry.Index]) then    //设置行颜色
  if StrToFloat(AViewInfo.GridRecord.DisplayTexts[FSumQry.Index])<>StrToFloat(AViewInfo.GridRecord.DisplayTexts[FTakeQry.Index]) then    //设置行颜色
  begin
     ACanvas.Canvas.Font.Color:=clHotLight;
   // ACanvas.Canvas.brush.Color := clHotLight;
    ACanvas.FillRect(AViewInfo.Bounds);
  end;

 { If P_state<>0 then
  begin
    if StrToFloat(AViewInfo.GridRecord.DisplayTexts[FSumOrderQry.Index])=0 then
    begin
      ACanvas.Canvas.brush.Color := clSkyBlue;
    end;
    if (StrToFloat(AViewInfo.GridRecord.DisplayTexts[FSumQry2.Index])>StrToFloat(AViewInfo.GridRecord.DisplayTexts[FSumOrderQry.Index]))
       and (StrToFloat(AViewInfo.GridRecord.DisplayTexts[FSumOrderQry.Index])<>0) then
    begin
      ACanvas.Canvas.brush.Color := clYellow;
    end;
      ACanvas.FillRect(AViewInfo.Bounds);
  end;
      }
end;

procedure TFrm_DesignTakeItem.PC_1Change(Sender: TObject);
begin
  inherited;
  If PC_1.ActivePage=TS_K3 then
  begin
    V_K3.Active:=True;
    V_K3.Filter:='FK3ID='+IntToStr(UserFK3ID);
    V_K3.Filtered:=True;
  end;

end;

procedure TFrm_DesignTakeItem.TB_Down2Click(Sender: TObject);
Var i:Integer;
begin
  If TB_Down2.Caption='取消设置' then
  begin
    TB_Down2.Caption:='设置';
    cxGV2.OptionsData.Editing:=False;
    cxGv2.OptionsView.GroupByBox:=False;
    cxGV_M2.OptionsData.Editing:=False;
    cxGV_M2.OptionsView.GroupByBox:=False;
    for i:=0 to cxGv2.ColumnCount-1 do
    begin
      cxGv2.Columns[i].Options.Filtering:=False;
      cxGv2.Columns[i].Options.Editing:=False;
      cxGv2.Columns[i].Options.Sorting:=False;
    end;
    for i:=0 to cxGV_M2.ColumnCount-1 do
    begin
      cxGV_M2.Columns[i].Options.Filtering:=False;
      cxGV_M2.Columns[i].Options.Editing:=False;
      cxGV_M2.Columns[i].Options.Sorting:=False;
    end;
  end
  else
  begin
    TB_Down2.Caption:='取消设置';
    cxGV2.OptionsData.Editing:=True;
    cxGv2.OptionsView.GroupByBox:=True;
    cxGV_M2.OptionsData.Editing:=True;
    cxGV_M2.OptionsView.GroupByBox:=True;
    for i:=0 to cxGv2.ColumnCount-1 do
    begin
      cxGv2.Columns[i].Options.Filtering:=True;
      cxGv2.Columns[i].Options.Editing:=True;
      cxGv2.Columns[i].Options.Sorting:=True;
    end;
    for i:=0 to cxGV_M2.ColumnCount-1 do
    begin
      cxGV_M2.Columns[i].Options.Filtering:=True;
      cxGV_M2.Columns[i].Options.Editing:=True;
      cxGV_M2.Columns[i].Options.Sorting:=True;
    end;
  end;

end;

procedure TFrm_DesignTakeItem.TB_Down4Click(Sender: TObject);
Var i:Integer;
begin
  If TB_Down4.Caption='取消设置' then
  begin
    TB_Down4.Caption:='设置';
    cxGVK3.OptionsData.Editing:=False;
    cxGvK3.OptionsView.GroupByBox:=False;
    for i:=0 to cxGvK3.ColumnCount-1 do
    begin
      cxGvK3.Columns[i].Options.Filtering:=False;
      cxGvK3.Columns[i].Options.Editing:=False;
      cxGvK3.Columns[i].Options.Sorting:=False;
    end;
  end
  else
  begin
    TB_Down4.Caption:='取消设置';
    cxGVK3.OptionsData.Editing:=True;
    cxGvK3.OptionsView.GroupByBox:=True;
    for i:=0 to cxGvK3.ColumnCount-1 do
    begin
      cxGvK3.Columns[i].Options.Filtering:=True;
      cxGvK3.Columns[i].Options.Editing:=True;
      cxGvK3.Columns[i].Options.Sorting:=True;
    end;
  end;


end;

procedure TFrm_DesignTakeItem.Act_AppExecute(Sender: TObject);
var
   qry:TADOquery;
   i:Integer;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  P_state :=0;
  If mData_M2.RecordCount>0 then
  begin
    try
      qry.SQL.Text:='Select * from  V_DesignTake where FTakeID=:FTakeID';
      qry.Parameters.FindParam('FTakeID').value:= mdata_M2['FTakeID'];
      qry.Open;
    finally
      ;
    end;
    mData_M2.CopyFromDataSet(qry);
  end
  else
  begin
    try
      qry.SQL.Text:='Select * from  V_DesignTake where FTakeID=:FTakeID';
      qry.Parameters.FindParam('FTakeID').value:= 0;
      qry.Open;
    finally
      ;
    end;
    mData_M2.CopyFromDataSet(qry);
    mData_M2.Open;
    mData_M2.Edit;
    mData_M2.Append;
    mData_M2['FTakeDate']:=date();
    mData_M2['FTakeID']:=0;
    mData_M2['FTakeStatus']:=0;
    mData_M2['FTakeStatusNotes']:='填单';
    mData_M2['FTakeWrite']:=UserNum;
    mData_M2['FTakeWriteDate']:=date();
    mData_M2.Post;
  end;

  //明细表
  If mData2.Active then mData2.Close;
  mData2.Open;
  mdata2.Edit;
  for i:=1 to 10 do
  begin
    mdata2.Append;
    mdata2['th']:='';
    mdata2['mc']:='';
    mdata2['gg']:='';
    mdata2['FTakeQry']:=0;
    mdata2['FPlanTenderQry']:=0;
    mdata2['FTenderCoeQry']:=0;
    mdata2['FOrderQry']:=0;

    mdata2['FTakeDemand']:='';
    mdata2['FTakeListReMark']:='';
    mdata2['FSumSuttle']:=0;
    mdata2['FNumber']:='           ';
    mdata2['FName']:='                                                                              ';
    mdata2['FModel']:='                                                             ';
    mdata2['UnitName']:='           ';
    mdata2['FK3Name']:='                                                                              ';
    mdata2['FK3Model']:='                                                             ';
    mdata2.Post;
    mdata2.First;
  end;

  L_title2.Caption:='外协购件清单信息新增';

  Act_SetOpen.Execute;

end;
procedure TFrm_DesignTakeItem.Act_EditExecute(Sender: TObject);
var
  qry:TADOQuery;
begin
  qry:=TAdoQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If (mdata2.RecordCount<1) then
     Exit;
   try
    qry.SQL.Text:='Select * from V_DesignOrderList where FItemListID=:FItemListID';
    qry.Parameters.FindParam('FItemListID').Value:=Mdata_M2['FItemListID'];
    qry.Open;
  finally
     ;
  end;
  if qry.RecordCount>0 then
  begin
    application.MessageBox(Pchar('【'+Trim(Mdata_M2['FPartsNumber'])+'】采购申请单已启用不允许修改！'),'系统提示',MB_ICONINFORMATION);
    Exit;
  end;

  P_state :=1;
  If (mdata2.RecordCount<1) then
    Exit;
  Act_SetOpen.Execute;
  L_title2.Caption:='外协购件清单信息修改';

end;

procedure TFrm_DesignTakeItem.Act_DelExecute(Sender: TObject);
var
  qry:TADOQuery;
begin
  qry:=TAdoQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If (mdata2.RecordCount<1) then
     Exit;

  try
    qry.SQL.Text:='Select * from V_DesignOrderList where FItemListID=:FItemListID';
    qry.Parameters.FindParam('FItemListID').Value:=Mdata_M2['FItemListID'];
    qry.Open;
  finally
     ;
  end;
  if qry.RecordCount>0 then
  begin
    application.MessageBox(Pchar('采购申请单【'+Trim(Mdata_M2['FPartsNumber'])+'】已启用不允许删除！'),'系统提示',MB_ICONINFORMATION);
    Exit;
  end;

  If application.MessageBox(Pchar('警告：是否删除采购申请单号为：【'+Trim(Mdata_M2['FPartsNumber'])+'】的数据？'+chr(13)+chr(13)
                           +'删除数据操作将不可恢复，确定要删除本单据吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
  If application.MessageBox(Pchar('警告：是否删除采购申请单号为：【'+Trim(Mdata_M2['FPartsNumber'])+'】的数据？'+chr(13)+chr(13)
                           +'删除数据操作将不可恢复，确定要删除本单据吗？'),'再次警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then

  begin
    //单据删除
    If not DelRd then
    begin
      application.MessageBox('删除单据失败！','系统提示',MB_ICONINFORMATION);
      mdlData.conn.RollbackTrans;
      Exit;
    end;
  end;
  mdata2.Close;
  qry.Free;
  TB_ref.Click;

end;

procedure TFrm_DesignTakeItem.Act_AuditExecute(Sender: TObject);
var
 qry:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  P_List :=mdata_M2['FPartsNumber'];
  If (TB_Audit.Caption='审核') or (N_Audit.Caption='审核') then
  begin
    If application.MessageBox(Pchar('警告：是否审核外购件单号为：【'+P_List+'】的单据？'+chr(13)+chr(13)
                                   +'审核后的数据不允许修改和删除，确定要审核本单据吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      try
        qry.SQL.Text:='Update T_DesignTake Set FTakeStatus=3,FTakeAuditID=:FTakeAuditID,FTakeAuditDate=:FTakeAuditDate  where FTakeID=:FTakeID';
        qry.Parameters.FindParam('FTakeAuditID').value:= UserNumID;
        qry.Parameters.FindParam('FTakeAuditDate').value:= now();
        qry.Parameters.FindParam('FTakeID').value:=mdata_M2['FTakeID'];
        qry.ExecSQL;
      finally
         ;
      end;
      mdata_M2.Edit;
      mdata_M2['FTakeStatus']:=3;
      mdata_M2['FTakeStatusNotes']:='审核';
      mdata_M2['FTakeAuditID']:=UserNumID;
      mdata_M2['FTakeAudit']:=UserNum;
      mdata_M2['FTakeAuditDate']:=now();
      mdata_M2.Post;
      TB_Audit.Caption:='反审核';
      Act_Status.Execute;  //权限设置
      application.MessageBox('审核完毕！','系统提示',MB_ICONINFORMATION);
    end;
    Exit;
  end;
  If (TB_Audit.Caption='反审核') or (N_Audit.Caption='反审核') then
  begin
    If application.MessageBox(Pchar('警告：是否反审核外购件单号为：【'+P_List+'】的单据？'+chr(13)+chr(13)
                                   +'反审核后的数据不允许修改和删除，确定要反审核本单据吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      try
        qry.SQL.Text:='Update T_DesignTake Set FTakeStatus=2,FTakeAuditID=:FTakeAuditID,FTakeAuditDate=:FTakeAuditDate  where FTakeID=:FTakeID';
        qry.Parameters.FindParam('FTakeAuditID').value:= UserNumID;
        qry.Parameters.FindParam('FTakeAuditDate').value:= '1900-01-01';
        qry.Parameters.FindParam('FTakeID').value:= mdata_M2['FTakeID'];
        qry.ExecSQL;
      finally
         ;
      end;
      mdata_M2.Edit;
      mdata_M2['FTakeStatus']:=2;
      mdata_M2['FTakeStatusNotes']:='校对';
      mdata_M2['FTakeAuditID']:=UserNumID;
      mdata_M2['FTakeAudit']:='';
      mdata_M2['FTakeAuditDate']:='1900-01-01';
      mdata_M2.Post;
      TB_Audit.Caption:='审核';
      Act_Status.Execute;  //权限设置
      application.MessageBox('反审核完毕！','系统提示',MB_ICONINFORMATION);
    end;
    Exit;
  end;
  Act_Ref_Write.Execute;
  Act_Ref_Date.Execute;

end;

procedure TFrm_DesignTakeItem.Act_PartsSortExecute(Sender: TObject);
var
  qry:TADOquery;
  proc:TADOStoredProc;
  s1,s2:Ttime;
  a:string;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  proc:=TADOStoredProc.Create(self);
  proc.ConnectionString:=mdlData.ReadConnStr;
  proc.CommandTimeout:=500;

  s1:=now();
  a:='';

  //查询全名称是否为空
  try
    qry.SQL.Text:='select distinct FFullName,FItemNo from V_DesignBOM_Structure where FFullNumber=:FFullNumber';
    qry.Parameters[0].Value:=ListItemFNumber;
    qry.Open;
  finally
    ;
  end;
  If qry.RecordCount>0 then
     ActFullNameExecute(Sender);

  If ShowMsg('是否对【'+P_th+'】此图号进行部件类别自动划分?','提示') then
  begin
    try
      ShowPrograss('正在对设计BOM进行部件划分，请稍候……',self);
      ActPartsSort.Execute;

      If not MyItemList(qry,Mdata,'V_DesignBOM_Structure','FFullNumber',ListItemFNumber,'FFullNumber') then
      begin
        mdata.Open;
      end;
      S2:=now();
      a:=FormatDateTime('hh:mm:ss',s2-s1);
      Messagedlg('设计BOM部件划分完毕！所用时间：【'+a+'】',mtInformation,[mbok],0);
    finally
       ;
    end;
  end;

end;

procedure TFrm_DesignTakeItem.Act_TackExecute(Sender: TObject);
var
  proc:TADOStoredProc;
  qry: TADOQuery;
begin

  proc:=TADOStoredProc.Create(self);
  proc.Connection:=mdlData.conn;
  proc.CommandTimeout:=500;
  proc.Parameters.Clear;
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If pos('.',ListItemFNumber)=0  then
  begin
    application.MessageBox('只能分部件下推外购件清单！请重新选择','系统提示',MB_ICONERROR);
    E_FBranchFileNo1.SetFocus;
    Exit;
  end;
  If (Trim(E_FBranchFileNo1.Text)='') or (Trim(E_FBranchFileNo1.Text)=Null)  then
  begin
    application.MessageBox('分档案号不能为空！请重新输入','系统提示',MB_ICONERROR);
    E_FBranchFileNo1.SetFocus;
    Exit;
  end;

  try
    qry.SQL.Text:='select * from V_DesignBOM_Structure where FFullNumber like :FFullNumber and FPartsSort like ''%外购清单%''';
    qry.Parameters.FindParam('FFullNumber').value:=ListItemFNumber+'%';
    qry.Open;
   finally
     ;
   end;

   If qry.RecordCount=0 then
   begin
     application.MessageBox('此部件无《外购件请单》！请重新选择!','系统提示',MB_ICONINFORMATION);
     Exit;
   end;


  try
    qry.SQL.Text:='select * from V_DesignTakeList where FBranchFileNo=:FBranchFileNo and FPartsNumber=:FPartsNumber';
    qry.Parameters.FindParam('FBranchFileNo').value:=Trim(E_FBranchFileNo1.Text);
    qry.Parameters.FindParam('FPartsNumber').value:=Trim(E_FPartsNumber1.Text);
    qry.Open;
   finally
     ;
   end;
   If qry.RecordCount>0 then
   begin
     application.MessageBox('此部件《外购件请单》已经生成！请重新选择!','系统提示',MB_ICONINFORMATION);
     Exit;
   end;


  If ShowMsg('是否将图号【'+P_th+'】生成外购件请单？','提示') then
  begin
    try
      proc.ProcedureName:='P_Imp_Take;1';
      with proc.Parameters.AddParameter do
      begin
        DataType := ftInteger;
        Direction := pdinput;
        size:=20;
        name := '@UserNumID';
        value:=UserNumID;
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
        DataType := ftString;
        Direction := pdinput;
        size:=20;
        name := '@TwoNum';
        value:=ListItemFNumber;
      end;
      with proc.Parameters.AddParameter do
      begin
        DataType := ftString;
        Direction := pdinput;
        size:=20;
        name := '@FBranchFileNo';
        value:=Trim(E_FBranchFileNo1.Text);
      end;
      with proc.Parameters.AddParameter do
      begin
        DataType := ftInteger;
        Direction := pdinput;
        size:=20;
        name := '@FItemListId';
        value:=E_FItemListId1.EditValue;
      end;
      with proc.Parameters.AddParameter do
      begin
        DataType := ftString;
        Direction := pdoutput;
        size:=255;
        name := '@Retinf';
        value:='';
      end;
      proc.Open;
      Messagedlg('外购件请单数据已经成功生成！',mtInformation,[mbok],0);
      E_FBranchFileNo1.Enabled:=False;
    finally
       ;
    end;
  end;

end;

procedure TFrm_DesignTakeItem.Act_SetOpenExecute(Sender: TObject);
begin
  inherited;
  TB_Ref.Visible:=False;
  TB_App.Visible:=False;
  TB_Edit.Visible:=False;
  TB_Del.Visible:=False;
  TB_DelOne.Visible:=False;
  MyTreeView_Date.Enabled:=False;

  OKBtn.Visible:=True;
  CancelBtn.Visible:=True;
  cxGV2.OptionsData.Editing:=True;
  FTakeDemand.Options.Editing:=True;
  FTakeListReMark_2.Options.Editing:=True;

  cxGV_M2.OptionsData.Editing:=True;
  FTakeDate_M2.Options.Editing:=True;
  FBranchFileNo_M2.Options.Editing:=True;
  FTakeReMark_M2.Options.Editing:=True;
  FPartsNumber_M2.Options.Editing:=True;

end;

procedure TFrm_DesignTakeItem.Act_SetCloseExecute(Sender: TObject);
begin
  inherited;
  TB_Ref.Visible:=True;
  TB_App.Visible:=True;
  TB_Edit.Visible:=True;
  TB_Del.Visible:=True;
  TB_DelOne.Visible:=True;
  MyTreeView_Date.Enabled:=True;

  FTakeListReMark_2.Options.Editing:=False;
  OKBtn.Visible:=False;
  CancelBtn.Visible:=False;
  cxGV.OptionsData.Editing:=False;

end;

procedure TFrm_DesignTakeItem.Act_Set_MaxNumExecute(Sender: TObject);
var
  proc:TADOStoredProc;
begin
  proc:=TADOStoredProc.Create(self);
  proc.ConnectionString:=mdlData.ReadConnStr;
  proc.CommandTimeout:=500;

  try
    proc.ProcedureName:='P_GetICMaxNum;1';
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=20;
      name := '@TableName';
      value:='T_DesignTake';
    end;
   { with proc.Parameters.AddParameter do
    begin
      DataType := ftInteger;
      Direction := pdinput;
      size:=20;
      name := '@FDepartmentID';
      value:=UserFDepartmentID;
    end;  }
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
    proc.Free;
  finally
     ;
  end;

end;

procedure TFrm_DesignTakeItem.Act_CheckExecute(Sender: TObject);
var
 qry:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  P_List :=mdata_M2['FPartsNumber'];
  If (TB_Check.Caption='校对') or (N_Check.Caption='校对') then
  begin
    If application.MessageBox(Pchar('警告：是否校对外购件单号为：【'+P_List+'】的单据？'+chr(13)+chr(13)
                                   +'校对后的数据不允许修改和删除，确定要校对本单据吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      try
        qry.SQL.Text:='Update T_DesignTake Set FTakeStatus=2,FTakeCheckID=:FTakeCheckID,FTakeCheckDate=:FTakeCheckDate  where FTakeID=:FTakeID';
        qry.Parameters.FindParam('FTakeCheckID').value:= UserNumID;
        qry.Parameters.FindParam('FTakeCheckDate').value:= now();
        qry.Parameters.FindParam('FTakeID').value:=mdata_M2['FTakeID'];
        qry.ExecSQL;
      finally
         ;
      end;
      mdata_M2.Edit;
      mdata_M2['FTakeStatus']:=2;
      mdata_M2['FTakeStatusNotes']:='校对';
      mdata_M2['FTakeCheckID']:=UserNumID;
      mdata_M2['FTakeCheck']:=UserNum;
      mdata_M2['FTakeCheckDate']:=now();
      mdata_M2.Post;
      TB_Check.Caption:='反校对';
      Act_Status.Execute;  //权限设置
      application.MessageBox('校对完毕！','系统提示',MB_ICONINFORMATION);
    end;
    Exit;
  end;
  If (TB_Check.Caption='反校对') or (N_Check.Caption='反校对') then
  begin
    If application.MessageBox(Pchar('警告：是否反校对外购件单号为：【'+P_List+'】的单据？'+chr(13)+chr(13)
                                   +'反校对后的数据不允许修改和删除，确定要反校对本单据吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      try
        qry.SQL.Text:='Update T_DesignTake Set FTakeStatus=1,FTakeCheckID=:FTakeCheckID,FTakeCheckDate=:FTakeCheckDate  where FTakeID=:FTakeID';
        qry.Parameters.FindParam('FTakeCheckID').value:= UserNumID;
        qry.Parameters.FindParam('FTakeCheckDate').value:= '1900-01-01';
        qry.Parameters.FindParam('FTakeID').value:= mdata_M2['FTakeID'];
        qry.ExecSQL;
      finally
         ;
      end;
      mdata_M2.Edit;
      mdata_M2['FTakeStatus']:=1;
      mdata_M2['FTakeStatusNotes']:='提交';
      mdata_M2['FTakeCheckID']:=UserNumID;
      mdata_M2['FTakeCheck']:='';
      mdata_M2['FTakeCheckDate']:='1900-01-01';
      mdata_M2.Post;
      TB_Check.Caption:='校对';
      Act_Status.Execute;  //权限设置
      application.MessageBox('反校对完毕！','系统提示',MB_ICONINFORMATION);
    end;
    Exit;
  end;

  Act_Ref_Date.Execute;
  Act_Ref_Write.Execute;

end;

procedure TFrm_DesignTakeItem.Act_PushDownExecute(Sender: TObject);
var
 qry:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
   P_List :=mdata_M2['FPartsNumber'];
  If (TB_PushDown.Caption='下推') or (N_PushDown.Caption='下推') then
  begin
    If application.MessageBox(Pchar('警告：是否下推外购件单号为：【'+P_List+'】的单据？'+chr(13)+chr(13)
                                   +'下推后的数据不允许修改和删除，确定要下推本单据吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      try
        qry.SQL.Text:='Update T_DesignTake Set FTakeStatus=4,FTakePushDownID=:FTakePushDownID,FTakePushDownDate=:FTakePushDownDate  where FTakeID=:FTakeID';
        qry.Parameters.FindParam('FTakePushDownID').value:= UserNumID;
        qry.Parameters.FindParam('FTakePushDownDate').value:= now();
        qry.Parameters.FindParam('FTakeID').value:=mdata_M2['FTakeID'];
        qry.ExecSQL;
      finally
         ;
      end;
      mdata_M2.Edit;
      mdata_M2['FTakeStatus']:=4;
      mdata_M2['FTakeStatusNotes']:='下推';
      mdata_M2['FTakePushDownID']:=UserNumID;
      mdata_M2['FTakePushDown']:=UserNum;
      mdata_M2['FTakePushDownDate']:=now();
      mdata_M2.Post;
      TB_PushDown.Caption:='反下推';
      Act_Status.Execute;  //权限设置
      application.MessageBox('下推完毕！','系统提示',MB_ICONINFORMATION);
    end;
    Exit;
  end;
  If (TB_PushDown.Caption='反下推') or (N_PushDown.Caption='反下推') then
  begin
    If application.MessageBox(Pchar('警告：是否反下推外购件单号为：【'+P_List+'】的单据？'+chr(13)+chr(13)
                                   +'反下推后的数据不允许修改和删除，确定要反下推本单据吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      try
        qry.SQL.Text:='Update T_DesignTake Set FTakeStatus=3,FTakePushDownID=:FTakePushDownID,FTakePushDownDate=:FTakePushDownDate  where FTakeID=:FTakeID';
        qry.Parameters.FindParam('FTakePushDownID').value:= UserNumID;
        qry.Parameters.FindParam('FTakePushDownDate').value:='1900-01-01';
        qry.Parameters.FindParam('FTakeID').value:= mdata_M2['FTakeID'];
        qry.ExecSQL;
      finally
         ;
      end;
      mdata_M2.Edit;
      mdata_M2['FTakeStatus']:=3;
      mdata_M2['FTakeStatusNotes']:='审核';
      mdata_M2['FTakePushDownID']:=UserNumID;
      mdata_M2['FTakePushDown']:='';
      mdata_M2['FTakePushDownDate']:='1900-01-01';
      mdata_M2.Post;
      TB_PushDown.Caption:='下推';
      Act_Status.Execute;  //权限设置
      application.MessageBox('反下推完毕！','系统提示',MB_ICONINFORMATION);
    end;
    Exit;
  end;
  Act_Ref_Date.Execute;
  Act_Ref_Write.Execute;

end;

procedure TFrm_DesignTakeItem.Act_StatusExecute(Sender: TObject);
begin
  Case mdata_M2['FTakeStatus'] of
    0:       //填单
    begin
      If mdata_M2['FTakeWriteID']=UserNumID then  //操作者为本人
      begin
        TB_Del.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake.ClassName,'删除');
        N_Del.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake.ClassName,'删除');
        TB_Edit.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake.ClassName,'修改');
        N_Edit.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake.ClassName,'修改');
        TB_Submit.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake.ClassName,'提交');
        N_Submit.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake.ClassName,'提交');
        TB_Submit.Caption:='提交';
        N_Submit.Caption:='提交';
      end
      else
      begin
        TB_Del.Visible:=False;
        N_Del.Visible:=False;
        TB_Edit.Visible:=False;
        N_Edit.Visible:=False;
        TB_Submit.Visible:=False;
        N_Submit.Visible:=False;
      end;
      TB_Check.Visible:=False;
      N_Check.Visible:=False;
      TB_Audit.Visible:=False;
      N_Audit.Visible:=False;
      TB_PushDown.Visible:=False;
      N_PushDown.Visible:=False;
    end;
  end;
  Case mdata_M2['FTakeStatus'] of
    1:       //提交
    begin
      If mdata_M2['FTakeWriteID']=UserNumID then  //提交者为本人
      begin
        TB_Submit.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake.ClassName,'提交');
        N_Submit.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake.ClassName,'提交');
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


      If mdata_M2['FDesignLeaderID']=UserNumID then  //校对为设总本人
      begin
        TB_Check.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake.ClassName,'校对');
        N_Check.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake.ClassName,'校对');
        TB_Check.Caption:='校对';
        N_Check.Caption:='校对';
      end
      else
      begin
        TB_Check.Visible:=False;
        N_Check.Visible:=False;
      end;
      TB_Audit.Visible:=False;
      N_Audit.Visible:=False;
      TB_PushDown.Visible:=False;
      N_PushDown.Visible:=False;
    end;
  end;

  Case mdata_M2['FTakeStatus'] of
    2:           //校对
    begin
      TB_Check.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake.ClassName,'校对');
      N_Check.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake.ClassName,'校对');
      TB_Check.Caption:='反校对';
      N_Check.Caption:='反校对';
      TB_Del.Visible:=False;
      N_Del.Visible:=False;
      TB_Edit.Visible:=False;
      N_Edit.Visible:=False;
      TB_Submit.Visible:=False;
      N_Submit.Visible:=False;
      TB_Audit.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake.ClassName,'审核');
      N_Audit.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake.ClassName,'审核');
      TB_Audit.Caption:='审核';
      N_Audit.Caption:='审核';
      TB_PushDown.Visible:=False;
      N_PushDown.Visible:=False;
    end;
  end;
  Case mdata_M2['FTakeStatus'] of
    3:           //审核
    begin
      TB_Audit.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake.ClassName,'审核');
      N_Audit.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake.ClassName,'审核');
      TB_Audit.Caption:='反审核';
      N_Audit.Caption:='反审核';
      TB_Del.Visible:=False;
      N_Del.Visible:=False;
      TB_Edit.Visible:=False;
      N_Edit.Visible:=False;
      TB_Submit.Visible:=False;
      N_Submit.Visible:=False;
      TB_Check.Visible:=False;
      N_Check.Visible:=False;
      TB_PushDown.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake.ClassName,'下推');
      N_PushDown.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake.ClassName,'下推');
      TB_PushDown.Caption:='下推';
      N_PushDown.Caption:='下推';
    end;
  end;
  Case mdata_M2['FTakeStatus'] of
    4:        //下推
    begin
      TB_Del.Visible:=False;
      N_Del.Visible:=False;
      TB_Edit.Visible:=False;
      N_Edit.Visible:=False;
      TB_Submit.Visible:=False;
      N_Submit.Visible:=False;
      TB_Check.Visible:=False;
      N_Check.Visible:=False;
      TB_Audit.Visible:=False;
      N_Audit.Visible:=False;
      TB_PushDown.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake.ClassName,'下推');
      N_PushDown.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake.ClassName,'下推');
      TB_PushDown.Caption:='反下推';
      N_PushDown.Caption:='反下推';
    end;
  end;

 {

  Case mdata_M2['FTakeStatus'] of
    0:       //填单
    begin
      If mdata_M2['FTakeWriteID']=UserNumID then  //操作者为本人
      begin
        TB_Del.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake.ClassName,'删除');
        TB_Delone.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake.ClassName,'删除');
        TB_Edit.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake.ClassName,'修改');
        TB_Submit.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake.ClassName,'提交');
        TB_Submit.Caption:='提交';
      end
      else
      begin
        TB_Del.Visible:=False;
        TB_Delone.Visible:=False;
        TB_Edit.Visible:=False;
        TB_Submit.Visible:=False;
      end;
      TB_Check.Visible:=False;
      TB_Audit.Visible:=False;
      TB_PushDown.Visible:=False;
    end;
  end;
  Case mdata_M2['FTakeStatus'] of
    1:       //提交
    begin
      If mdata_M2['FTakeWriteID']=UserNumID then  //提交者为本人
      begin
        TB_Submit.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake.ClassName,'提交');
        TB_Submit.Caption:='反提交';
      end
      else
      begin
        TB_Submit.Visible:=False;
      end;
      TB_Del.Visible:=False;
      TB_DelOne.Visible:=False;
      TB_Edit.Visible:=False;
      If mdata_M2['FDesignLeaderID']=UserNumID then  //本人为设总
      begin
        TB_Check.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake.ClassName,'校对');
        TB_Check.Caption:='校对';
      end;
      TB_Audit.Visible:=False;
      TB_PushDown.Visible:=False;
    end;
  end;

  Case mdata_M2['FTakeStatus'] of
    2:           //校对
    begin
      If mdata_M2['FDesignLeaderID']=UserNumID then  //本人为项目设总
      begin
        TB_Check.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake.ClassName,'校对');
        TB_Check.Caption:='反校对';
      end
      else
      begin
        TB_Check.Visible:=False;
      end;
      TB_Del.Visible:=False;
      TB_DelOne.Visible:=False;
      TB_Edit.Visible:=False;
      TB_Submit.Visible:=False;
      TB_Audit.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake.ClassName,'审核');
      TB_Audit.Caption:='审核';
      TB_PushDown.Visible:=False;
    end;
  end;
  Case mdata_M2['FTakeStatus'] of
    3:           //审核
    begin
      TB_Audit.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake.ClassName,'审核');
      TB_Audit.Caption:='反审核';
      TB_Del.Visible:=False;
      TB_DelOne.Visible:=False;
      TB_Edit.Visible:=False;
      TB_Submit.Visible:=False;
      TB_Check.Visible:=False;
      TB_PushDown.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake.ClassName,'下推');
      TB_PushDown.Caption:='下推';
    end;
  end;
  Case mdata_M2['FTakeStatus'] of
    4:        //下推
    begin
      TB_Del.Visible:=False;
      TB_DelOne.Visible:=False;
      TB_Edit.Visible:=False;
      TB_Submit.Visible:=False;
      TB_Check.Visible:=False;
      TB_Audit.Visible:=False;
      TB_PushDown.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake.ClassName,'下推');
      TB_PushDown.Caption:='反下推';
    end;
  end;
  Case mdata_M2['FTakeStatus'] of
    6:        //下推
    begin
      TB_Del.Visible:=False;
      TB_DelOne.Visible:=False;
      TB_Edit.Visible:=False;
      TB_Submit.Visible:=False;
      TB_Check.Visible:=False;
      TB_Audit.Visible:=False;
      TB_PushDown.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake.ClassName,'下推');
      TB_PushDown.Caption:='反下推';
   //   TB_Finsh.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake.ClassName,'下推');
    end;
  end;

      }
end;

procedure TFrm_DesignTakeItem.Act_SubmitExecute(Sender: TObject);
var
  qry:TADOquery;

begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  P_List :=mdata_M2['FPartsNumber'];
  If (TB_Submit.Caption='提交') or (N_Submit.Caption='提交') then
  begin
    If application.MessageBox(Pchar('警告：是否提交外购件单号为：【'+P_List+'】的单据？'+chr(13)+chr(13)
                                   +'提交后的数据不允许修改和删除，确定要提交本单据吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      try
        qry.SQL.Text:='Update T_DesignTake Set FTakeStatus=1,FTakeSubmitDate=:FTakeSubmitDate  where FTakeID=:FTakeID';
        qry.Parameters.FindParam('FTakeSubmitDate').value:= now();
        qry.Parameters.FindParam('FTakeID').value:=mdata_M2['FTakeID'];
        qry.ExecSQL;
      finally
         ;
      end;
      mdata_M2.Edit;
      mdata_M2['FTakeStatus']:=1;
      mdata_M2['FTakeStatusNotes']:='提交';
      mdata_M2['FTakeSubmitDate']:=now();
      mdata_M2.Post;
      TB_Submit.Caption:='反提交';
      Act_Status.Execute;  //权限设置
      application.MessageBox('提交完毕！','系统提示',MB_ICONINFORMATION);    end;
    Exit;
  end;
  If (TB_Submit.Caption='反提交') or (N_Submit.Caption='反提交') then
  begin
    If application.MessageBox(Pchar('警告：是否反提交外购件单号为：【'+P_List+'】的单据？'+chr(13)+chr(13)
                                   +'反提交后的数据不允许修改和删除，确定要反提交本单据吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      try
        qry.SQL.Text:='Update T_DesignTake Set FTakeStatus=0,FTakeSubmitDate=:FTakeSubmitDate  where FTakeID=:FTakeID';
        qry.Parameters.FindParam('FTakeSubmitDate').value:= '1900-01-01';
        qry.Parameters.FindParam('FTakeID').value:= mdata_M2['FTakeID'];
        qry.ExecSQL;
      finally
         ;
      end;
      mdata_M2.Edit;
      mdata_M2['FTakeStatus']:=0;
      mdata_M2['FTakeStatusNotes']:='填单';
      mdata_M2['FTakeSubmitDate']:='1900-01-01';
      mdata_M2.Post;
      TB_Submit.Caption:='提交';
      Act_Status.Execute;  //权限设置
      application.MessageBox('反提交完毕！','系统提示',MB_ICONINFORMATION);
    end;
    Exit;
  end;
  Act_Ref_Date.Execute;
  Act_Ref_Write.Execute;

end;

procedure TFrm_DesignTakeItem.Act_SaveExecute(Sender: TObject);
var qry: TADOQuery;

begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;

  mData2.Edit;
  mData2.Post;

{  If (mData['FAgentNumber']='') or (mData['FAgentName']='') then
  begin
    application.MessageBox('关键字不能为空！请重新输入','系统提示',MB_ICONERROR);
    Exit;
  end;

  If P_state =0 then
  begin
    try
      qry.SQL.Text:='Select * from V_AgentItem where FDepartmentID=:FDepartmentID and FAgentNumber=:FAgentNumber';
      qry.Parameters.FindParam('FDepartmentID').Value:=UserFDepartmentID;
      qry.Parameters.FindParam('FAgentNumber').Value:=mdata['FAgentNumber'];
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
      qry.SQL.Text:='Select * from V_AgentItem where FDepartmentID=:FDepartmentID and FAgentName=:FAgentName';
      qry.Parameters.FindParam('FDepartmentID').Value:=UserFDepartmentID;
      qry.Parameters.FindParam('FAgentName').Value:=mdata['FAgentName'];
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
  }
  Act_Set_MaxNum.Execute;//取ID


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

procedure TFrm_DesignTakeItem.FpartsNumber_M2PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If (mdata_M2['FItemNumber']=Null) or (mdata_M2['FItemNumber']='') then
  begin
    Messagedlg('请先选择档案号！',mtInformation,[mbok],0);
    Exit;
  end;    

  mdata_M2.Edit;
  If mdata_M2['FPartsNumber']=Null then
     mdata_M2['FPartsNumber']:='';
  mdata_M2.Post;
  try
    qry.SQL.Text:='select FPartsNumber as FNumber,FItemNumber as FParentNumber,+''【''+FItemNumber+''】【''+FPartsNumber+''】【''+FPartsName+''】'' as FName,* from V_ItemList where FDepartmentID=:FDepartmentID and FItemNumber=:FItemNumber order by FItemNumber,FPartsCode ';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Parameters.FindParam('FItemNumber').value:= mdata_M2['FItemNumber'];
    qry.Open;
  finally
    ;
  end;
  selValue:=select('选择项目明细','FNumber','FParentNumber','FNumber','FName',qry);
  If (Length(selValue)>0) then
  begin
    mdata_M2.Edit;
    mdata_M2['FpartsNumber']:=qry.FieldByName('FpartsNumber').Value;
    mdata_M2['FpartsName']:=qry.FieldByName('FpartsName').Value;
    mdata_M2['FItemListID']:=qry.FieldByName('FItemListID').Value;
    mdata_M2.Post;
  end;


end;

procedure TFrm_DesignTakeItem.FBranchFileNo_M2PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  mdata_M2.Edit;
  if mdata_M2['FBranchFileNo']=Null then
     mdata_M2['FBranchFileNo']:='';
  mdata_M2.Post;

  try
    qry.SQL.Text:='select * from VT_FileItem where FDepartmentID=:FDepartmentID and FBranchFileNo like :FBranchFileNo order by FBranchFileNo ';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Parameters.FindParam('FBranchFileNo').value:='%'+Trim(mdata_M2['FBranchFileNo'])+'%';
    qry.Open;
  finally
    ;
  end;
  selValue:=Select('选择档案号','FNumber','FParentNumber','FNumber','FName',qry);
  If (Length(selValue)>0) then
  begin
    mdata_M2.Edit;
    mdata_M2['FBranchFileNo']:=qry.FieldByName('FBranchFileNo').Value;
    mdata_M2['FItemNumber']:=qry.FieldByName('FItemNumber').Value;
    mdata_M2['FClientShortName']:=qry.FieldByName('FClientShortName').Value;
    mdata_M2.Post;
  end;


end;

procedure TFrm_DesignTakeItem.Act_RefshExecute(Sender: TObject);
var
  qry:TADOquery;
  I_index:integer;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  I_index:=Mdata_M2.RecNo ;

  If MyItemList(qry,Mdata_M2,'V_DesignTake','FDepartmentName+'';''+FProductName+'';''+FCarryOut+'';''+FTakeStatusNotes+'';''+FItemlb+'';''+FItemNo+'';''+FTakeNumber+'';''',
                ListItemFNumber2,'FItemNo,FTakeNumber') then

  If (I_index<Mdata_M2.RecordCount) and (I_index<>-1) then
     Mdata_M2.RecNo :=I_index
  else
     Mdata_M2.Last;
end;

procedure TFrm_DesignTakeItem.MyTreeView_WriteExpanding(Sender: TObject;
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
  qry.SQL.Text:='Select * from VT_DesignTake_Write where FParentNumber= '''
               +PTree(Node.Data).ID+''' and FDepartmentID=:FDepartmentID and (FTakeWriteID=0 or FTakeWriteID=:FTakeWriteID) '
               +' order by FTakeStatus,FNumber';
  qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
  qry.Parameters.FindParam('FTakeWriteID').value:=UserNumID;
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

procedure TFrm_DesignTakeItem.MyTreeView_WriteChange(Sender: TObject;
  Node: TTreeNode);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;

  If Node = nil then Exit;
  with PTree(Node.Data)^ do
  begin
    ListItemFNumber2:=trim(PTree(Node.Data).FNumber);
    P_th2:=PTree(Node.Data).Caption;
    P_Isleaf:=PTree(Node.Data).Isleaf;
    If PTree(Node.Data).Isleaf>0 then
    begin
      If MyItemList(qry,Mdata_M2,'V_DesignTake','FDepartmentName+'';''+FProductName+'';''+FCarryOut+'';''+FTakeWrite+'';''+FTakeStatusNotes+'';''+FItemlb+'';''+FBranchItemNumber+'';''+FPartsCode+'';''',
                 ListItemFNumber2,'FBranchItemNumber,FPartsCode') then

      If MyItemList(qry,Mdata2,'V_DesignTakeList','FDepartmentName+'';''+FProductName+'';''+FCarryOut+'';''+FTakeWrite+'';''+FTakeStatusNotes+'';''+FItemlb+'';''+FBranchItemNumber+'';''+FPartsCode+'';''',
                    ListItemFNumber2,'FBranchItemNumber,FPartsCode,th,mc,gg') then
    end
    else
    begin
      Mdata_M2.Close;
      mdata2.Close;
    end;
  end;
  If P_Isleaf=2 then
     Act_Status.Execute  //权限设置
  else
  begin
    TB_Edit.Visible:=False;
    TB_Del.Visible:=False;
    TB_DelOne.Visible:=False;
    TB_Submit.Visible:=False;
    TB_Check.Visible:=False;
    TB_Audit.Visible:=False;
    TB_PushDown.Visible:=False;
  end;
end;

procedure TFrm_DesignTakeItem.Act_Ref_WriteExecute(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If not TreeVeiwListUserID(qry,MyTreeView_Write,'VT_DesignTake_Write',UserFDepartmentID) then
  begin
    Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;
end;

procedure TFrm_DesignTakeItem.Act_Ref_DateExecute(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If not TreeVeiwListUserID(qry,MyTreeView_Date,'VT_DesignTake',UserFDepartmentID) then
  begin
    Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;

end;

procedure TFrm_DesignTakeItem.Act_Ref_DesignLeaderExecute(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If not TreeVeiwListUserID(qry,MyTreeView_DesignLeader,'VT_DesignTake_DesignLeader',UserFDepartmentID) then
  begin
    Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;

end;

procedure TFrm_DesignTakeItem.MyTreeView_DesignLeaderExpanding(Sender: TObject;
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
  qry.SQL.Text:='Select * from VT_DesignTake_DesignLeader where FParentNumber= '''
               +PTree(Node.Data).ID+''' and FDepartmentID=:FDepartmentID and (FDesignLeaderID=0 or FDesignLeaderID=:FDesignLeaderID) '
               +' order by FTakeStatus,FNumber';
  qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
  qry.Parameters.FindParam('FDesignLeaderID').value:=UserNumID;
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
    with MyTreeView_DesignLeader.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('Isleaf').value;
    end;
    qry.Next;
  end;


end;

procedure TFrm_DesignTakeItem.MyTreeView_DesignLeaderChange(Sender: TObject;
  Node: TTreeNode);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;

  If Node = nil then Exit;
  with PTree(Node.Data)^ do
  begin
    ListItemFNumber3:=trim(PTree(Node.Data).FNumber);
    P_th2:=PTree(Node.Data).Caption;
    P_Isleaf:=PTree(Node.Data).Isleaf;

    If PTree(Node.Data).Isleaf>0 then
    begin
      If MyItemList(qry,Mdata_M2,'V_DesignTake','FDepartmentName+'';''+FProductName+'';''+FCarryOut+'';''+FDesignLeader+'';''+FTakeStatusNotes+'';''+FItemlb+'';''+FBranchItemNumber+'';''+FPartsCode+'';''',
                    ListItemFNumber3,'FBranchItemNumber,FPartsCode') then
      If MyItemList(qry,Mdata2,'V_DesignTakeList','FDepartmentName+'';''+FProductName+'';''+FCarryOut+'';''+FDesignLeader+'';''+FTakeStatusNotes+'';''+FItemlb+'';''+FBranchItemNumber+'';''+FPartsCode+'';''',
                    ListItemFNumber3,'FBranchItemNumber,FPartsCode,th,mc,gg') then
    end
    else
    begin
      mdata2.Close;
      Mdata_M2.Close;
    end;
  end;
  If P_Isleaf=2 then
     Act_Status.Execute  //权限设置
  else
  begin
    TB_Edit.Visible:=False;
    TB_Del.Visible:=False;
    TB_DelOne.Visible:=False;
    TB_Submit.Visible:=False;
    TB_Check.Visible:=False;
    TB_Audit.Visible:=False;
    TB_PushDown.Visible:=False;
  end;


end;

procedure TFrm_DesignTakeItem.ActFullNameExecute(Sender: TObject);
var
  proc:TADOStoredProc;

begin
  proc:=TADOStoredProc.Create(self);
  proc.Connection:=mdlData.conn;
  proc.CommandTimeout:=500;

  try
    proc.ProcedureName:='P_BOM_AutoFullName;1';
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=50;
      name := '@ListItemFParentNumber';
      value:=ListItemFNumber;
      //value:=mdata['FItemNo'];

    end;
    proc.ExecProc;
    Messagedlg('全名称生成！',mtInformation,[mbok],0);
  finally
     ;
  end;

end;

procedure TFrm_DesignTakeItem.ActPartsSortExecute(Sender: TObject);
var
  proc:TADOStoredProc;

begin
  proc:=TADOStoredProc.Create(self);
  proc.Connection:=mdlData.conn;
  proc.CommandTimeout:=500;

  try
    proc.ProcedureName:='P_BOM_PartsSort;1';
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=50;
      name := '@TableName';
      value:='T_DesignBOM_Structure';
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=50;
      name := '@ViewName';
      value:='V_DesignBOM_Structure';
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=50;
      name := '@FFullNumber';
      value:=ListItemFNumber;
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=50;
      name := '@ListItemFParentNumber';
      value:=ListItemFParentNumber;
    end;

    with proc.Parameters.AddParameter do
    begin
      DataType := ftInteger;
      Direction := pdinput;
      name := '@FProductID';
      //value:=1;
      value:=P_FProductID_BOM;
    end;


    proc.ExecProc;
  finally
     ;
  end;
  Proc.Free;


end;

procedure TFrm_DesignTakeItem.E_FBranchFileNo1PropertiesChange(
  Sender: TObject);
begin
  inherited;
  If E_FBranchFileNo1.Text<>'' then
     TB_Take.Enabled:=True
  else
     TB_Take.Enabled:=False;

end;

procedure TFrm_DesignTakeItem.E_FBranchFileNo1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='select * from VT_FileItem where FDepartmentID=:FDepartmentID and FItemNumber=:FItemNumber order by FItemNumber ';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Parameters.FindParam('FItemNumber').value:=Trim(mdata['FItemNumber']);
    qry.Open;
  finally
    ;
  end;
  selValue:=select('选择档案号','FNumber','FParentNumber','FNumber','FName',qry);
  If (Length(selValue)>0) then
  begin
    E_FBranchFileNo1.Text:=qry.FieldByName('FBranchFileNo').Value;
  end;

end;

procedure TFrm_DesignTakeItem.cxGV_M2FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
var qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If P_state =2  then //不在新增、修改状态
  begin
    If (mData_M2['FTakeID']<>0) and (mData_M2['FTakeID']<>null) then
      begin
      If MyItemList(qry,Mdata2,'V_DesignTakeList','cast(FTakeID as varchar(20))',
                    mdata_M2['FTakeID'],'FItemNo,FTakeNumber,th,mc,gg') then
      Act_Status.Execute  //权限设置
    end;
  end;

end;

procedure TFrm_DesignTakeItem.ToolButton4Click(Sender: TObject);
var
  Query_Sp:TADOStoredProc;
  i,k,s,ReNum,ReNumLoop,R_Count:Integer;
  ExcelApp,MyWorkBook,mysheet: Variant;
  filepath,savefilepath,Sqlstr,copystart,copyend,copystart1,aa:string;
  ListQry:Tadoquery;
begin
 { filepath:=Extractfilepath(application.ExeName)+'电袋外购件模版.xls';
  if (Mdata2.Active) and (Mdata2.recordcount>0) then
  Begin
    if (Mdata2.FieldByName('FItemNumber').AsString<>'') Or (Mdata2.FieldByName('FItemNumber').AsString<>Null) then
    Begin
      if not DirectoryExists(Extractfilepath(application.ExeName)+Mdata2.FieldByName('FItemNumber').AsString) then
      Begin
        if Not CreateDir(Extractfilepath(application.ExeName)+Mdata2.FieldByName('FItemNumber').AsString) then
        Begin
          Application.MessageBox(PChar('创建数据保存目录'+Extractfilepath(application.ExeName)+Mdata2.FieldByName('FItemNumber').AsString+'失败!'), '系统错误', MB_OK +MB_ICONSTOP);
          exit;
        End;
      End;
      savefilepath:=Extractfilepath(application.ExeName)+Mdata2.FieldByName('FItemNumber').AsString+'\'+Mdata2.FieldByName('FItemNumber').AsString+'.xls';
    end
    else
    BEGIN
      savefilepath:=Extractfilepath(application.ExeName)+'OutData\'+mdata2.FieldByName('FItemNumber').AsString+'.xls';
    END;
    if FileExists(savefilepath) then
    begin
      DeleteFile(savefilepath) ;
    end;
   }
  filepath:=Extractfilepath(application.ExeName)+'电袋外购件模版.xls';
  if (Mdata2.Active) and (Mdata2.recordcount>0) then
  Begin
    SaveDialog1.FileName:='电袋外购件'+Mdata2.FieldByName('FItemNumber').AsString;
    SaveDialog1.Filter:='.xls';
    SaveDialog1.Execute;

    if (Mdata2.FieldByName('FItemNumber').AsString<>'') Or (Mdata2.FieldByName('FItemNumber').AsString<>Null) then
        savefilepath:=SaveDialog1.FileName+'.xls';

    if FileExists(savefilepath) then
    begin
      DeleteFile(savefilepath) ;
    end;

    StatusBar1.Panels[5].text:='正在导出电袋外购件:'+Mdata2.FieldByName('FItemNumber').AsString+'的信息..请稍等!!';
    ExcelApp:= CreateOleObject('Excel.Application' );
    MyWorkBook:=ExcelApp.WorkBooks.Open( filepath );
    ExcelApp.Visible:=True;
    MyWorkBook.WorkSheets[1].Cells[3,3].Value := Mdata2.FieldByName('FFileNo').AsString; //档案号
    MyWorkBook.WorkSheets[1].Cells[3,12].Value := Mdata2.FieldByName('FFileNo').AsString; //设计编号
    MyWorkBook.WorkSheets[1].Cells[4,3].Value := Mdata2.FieldByName('FClientFullName').AsString; //项目名称
    MyWorkBook.WorkSheets[1].Cells[5,3].Value := Mdata2.FieldByName('FItemModel').AsString; //产品型号
    MyWorkBook.WorkSheets[1].Cells[5,3].Value := Mdata2.FieldByName('FItemNumber').AsString; //产品代号

    MyWorkBook.WorkSheets[1].Cells[5,12].Value := Mdata2.FieldByName('FItemNumber').AsString; //设总
    MyWorkBook.WorkSheets[1].Cells[6,12].Value := Mdata2.FieldByName('FItemQry').AsString; //台套数

    i:=8;
    MyWorkBook.WorkSheets[1].Name:=Mdata2.FieldByName('FItemNumber').AsString;

    StatusBar1.Panels[5].text:='正在导出电袋外购件:'+Mdata2.FieldByName('FItemNumber').AsString+'的明细信息..请稍等!!';
    copystart:='A'+IntToStr(i);
    if Mdata2.recordcount>0 then
    Begin
      if Mdata2.recordcount>1 then
      Begin
        copystart:='A'+IntToStr(i);
        copystart1:='A'+IntToStr(i+1);
        copyend:='L'+IntToStr(i);
        ReNum:=Mdata2.recordcount-1;
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
        R_Count:=Mdata2.recordcount;
      end;
      Mdata2.first;
      K:=0 ;
      while not Mdata2.eof do
      Begin
        MyWorkBook.WorkSheets[1].Cells[i,1].Value := inttostr(K+1); //序号
        MyWorkBook.WorkSheets[1].Cells[i,2].Value := Mdata2.FieldByName('th').AsString; //部件名称 +规格
        MyWorkBook.WorkSheets[1].Cells[i,6].Value := Mdata2.FieldByName('mc').AsString+Mdata2.FieldByName('gg').AsString; //部件名称 +规格
        MyWorkBook.WorkSheets[1].Cells[i,8].Value := Mdata2.FieldByName('UnitName').AsString; //单位
        MyWorkBook.WorkSheets[1].Cells[i,9].Value := Mdata2.FieldByName('FSumQry').AsString; //单台数量
        MyWorkBook.WorkSheets[1].Cells[i,10].Value := Mdata2.FieldByName('FTakeDemand').AsString; //协议要求生产厂家
        MyWorkBook.WorkSheets[1].Cells[i,12].Value := Mdata2.FieldByName('FTakeListReMark').AsString; //备注
        MyWorkBook.WorkSheets[1].Cells[i,13].Value := Mdata2.FieldByName('FpartsNumber').AsString; //部件图号
        Mdata2.next;
        i:=i+1;
        k:=k+1;
      End;
     { MyWorkBook.WorkSheets[1].Cells[i,8].Value := '=SUM(h9:h'+IntToStr(i-1)+')'; //合计重量
      MyWorkBook.WorkSheets[1].Cells[i+2,2].Value:=AnsiReplaceStr(MyWorkBook.WorkSheets[1].Cells[i+2,2].Value,'A',Mdata.FieldByName('FMaterialDate').AsString); //单价执行日期
      MyWorkBook.WorkSheets[1].Cells[i+3,2].Value:=AnsiReplaceStr(MyWorkBook.WorkSheets[1].Cells[i+3,2].Value,'A',Mdata.FieldByName('FMaterialDate').AsString); //单价执行日期
      MyWorkBook.WorkSheets[1].Cells[i+3,2].Value:=AnsiReplaceStr(MyWorkBook.WorkSheets[1].Cells[i+3,2].Value,'B',Mdata.FieldByName('FAdvancePercent').AsString); //预付款
      MyWorkBook.WorkSheets[1].Cells[i+5,4].Value:=AnsiReplaceStr(MyWorkBook.WorkSheets[1].Cells[i+5,4].Value,'C',Mdata.FieldByName('FE05').AsString); //补充说明
      }
    end;

    StatusBar1.Panels[5].text:='电袋外购件:'+Mdata2.FieldByName('FItemNumber').AsString+'的信息导出完成!!';
    MyWorkBook.saveas(savefilepath);
    
    ExcelApp.Visible:=True;
    MyWorkBook.WorkSheets[1].PrintPreview;

    MyWorkBook.Close;
    ExcelApp.Quit;
    ExcelApp:=Unassigned;
  end
  else
  Begin
    Application.MessageBox(PChar('没有可导出的数据，请重新选择'), '数据引出错误', MB_OK + MB_ICONSTOP);
    exit;
  End;


end;

procedure TFrm_DesignTakeItem.ToolButton8Click(Sender: TObject);
var
    dlgOpen: TRzOpenDialog;
    Filter,SelCaption,filepath:string;
    //IniFile: TIniFile;
    ExcelApp,MyWorkBook,mysheet: Variant;
     i:Integer;
begin
  //打开导入的文件
   dlgOpen:=TRzOpenDialog.Create(Application);
   try
     Filter:='';
     selCaption:='';
     Filter:='电子表格|*.xls;*.csv|所有文件|*.*';
     dlgOpen.Title:='选择部件的导入文件';
     dlgOpen.Filter:=Filter;
     If not dlgOpen.Execute then Exit;
     filepath:=dlgOpen.FileName;
   finally
     ;
    // dlgOpen.Free;
    // Application.ProcessMessages;
   end;
    //打开EXCEL文件
   ExcelApp:= CreateOleObject('Excel.Application' );
   MyWorkBook:=ExcelApp.WorkBooks.Open( filepath );

   i:= MyWorkBook.WorkSheets[1].UsedRange.Rows.Count;

   MData_M2.Open;
   MData_M2.First;
   for i:=4 to i do
   begin
     MData_M2.Append;
     MData_M2.Edit;
     MData_M2['FItemNumber']:= MyWorkBook.WorkSheets[1].Cells[i,4].Value;
     MData_M2.post;
   end;

   MData_M2.First;
   MyWorkBook.Close;
   ExcelApp.Quit;
   ExcelApp:=Unassigned;
   dlgOpen.Free;

end;

end.
