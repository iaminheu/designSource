unit Main_PlanExecutive;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FrmGridBass, ExtCtrls, StdCtrls, DsFancyButton, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  dxmdaset, cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid,
  cxTextEdit, cxDropDownEdit, cxCalendar, cxMaskEdit, cxContainer, cxLabel,
  cxDBLookupComboBox, ADODB, cxButtonEdit, Grids, DBGrids, ComCtrls, RzShellDialogs,
  ToolWin, ImgList, FR_DSet, FR_DBSet, FR_Class, cxRadioGroup, Buttons, StrUtils,
  cxGroupBox, cxCheckBox, cxCurrencyEdit, RzPanel, RzSplit, RzTabs,IniFiles,
  TFlatPanelUnit,Comobj, cxLookAndFeelPainters, cxSpinEdit, RzStatus,
  ActnList, RzLabel, cxButtons, cxTimeEdit, jpeg,
  cxCheckComboBox, cxGridBandedTableView, cxGridDBBandedTableView, DBTables, Menus;

type
  TFrm_PlanExecutive = class(TFrm_GridBass)
    ImageList: TImageList;
    frReport: TfrReport;
    frDBDataSet: TfrDBDataSet;
    PC_Ship: TRzPageControl;
    TS_Ship: TRzTabSheet;
    PanelBkGnd: TPanel;
    Panel7: TPanel;
    P_Btn: TPanel;
    CancelBtn_M: TcxButton;
    OKBtn_M: TcxButton;
    RSP_CList: TRzSizePanel;
    Image2: TImage;
    Label1: TLabel;
    ToolBar_HItem: TToolBar;
    TB_App: TToolButton;
    TB_Del: TToolButton;
    TB_Ref: TToolButton;
    Label9: TLabel;
    E_FClientFullName: TcxTextEdit;
    TB_Edit_M: TToolButton;
    TB_Exit: TToolButton;
    TB_Prin: TToolButton;
    RzSizePanel2: TRzSizePanel;
    TB_Submit: TToolButton;
    TB_Check: TToolButton;
    actionList: TActionList;
    ActApp: TAction;
    ActSave: TAction;
    ActOut: TAction;
    ActEdit: TAction;
    ActDel: TAction;
    Act_Submit: TAction;
    Act_Audit: TAction;
    stbBar: TRzStatusBar;
    RzClockStatus1: TRzClockStatus;
    RzKeyStatus1: TRzKeyStatus;
    RzKeyStatus2: TRzKeyStatus;
    RzKeyStatus3: TRzKeyStatus;
    stbMsg: TRzFieldStatus;
    SaveDialog1: TSaveDialog;
    TB_PlanTaskList: TToolButton;
    Act_Status_M: TAction;
    RzSizePanel4: TRzSizePanel;
    Act_Set_Open_M: TAction;
    Act_Set_Close_M: TAction;
    Act_Set_Close: TAction;
    Act_Set_Open: TAction;
    Act_PC_ShipList: TAction;
    PM: TPopupMenu;
    N_Edit: TMenuItem;
    N_Filter: TMenuItem;
    N_Sort: TMenuItem;
    N_Group: TMenuItem;
    N_Set: TMenuItem;
    N_Out: TMenuItem;
    Act_Menu: TAction;
    Act_Menu_Set: TAction;
    MData_PTItem: TdxMemData;
    StringField123: TStringField;
    StringField124: TStringField;
    StringField125: TStringField;
    StringField126: TStringField;
    StringField127: TStringField;
    StringField128: TStringField;
    StringField129: TStringField;
    StringField130: TStringField;
    StringField131: TStringField;
    StringField132: TStringField;
    StringField133: TStringField;
    FloatField31: TFloatField;
    FloatField32: TFloatField;
    FloatField33: TFloatField;
    StringField134: TStringField;
    StringField135: TStringField;
    StringField136: TStringField;
    StringField137: TStringField;
    StringField138: TStringField;
    StringField139: TStringField;
    IntegerField12: TIntegerField;
    FloatField34: TFloatField;
    FloatField35: TFloatField;
    FloatField36: TFloatField;
    DS_Mdata_PTItem: TDataSource;
    DS_Mdata_PTList: TDataSource;
    MData_PTList: TdxMemData;
    StringField140: TStringField;
    StringField141: TStringField;
    StringField142: TStringField;
    StringField143: TStringField;
    StringField144: TStringField;
    StringField145: TStringField;
    StringField146: TStringField;
    StringField147: TStringField;
    StringField148: TStringField;
    StringField149: TStringField;
    StringField150: TStringField;
    FloatField37: TFloatField;
    FloatField38: TFloatField;
    FloatField39: TFloatField;
    StringField151: TStringField;
    StringField152: TStringField;
    StringField153: TStringField;
    StringField154: TStringField;
    StringField155: TStringField;
    StringField156: TStringField;
    IntegerField13: TIntegerField;
    FloatField40: TFloatField;
    FloatField41: TFloatField;
    FloatField42: TFloatField;
    MyTreeView_PTItem: TTreeView;
    PopupMenu1: TPopupMenu;
    Act_MaxID: TAction;
    Act_Sel: TAction;
    cxGrid_PTList: TcxGrid;
    cxGV_PTList: TcxGridDBTableView;
    FFinishDateShow_PTList: TcxGridDBColumn;
    FPlanExecutivepartsNum_PTList: TcxGridDBColumn;
    FPlanExecutivepartsName_PTList: TcxGridDBColumn;
    FPlanDate_PTList: TcxGridDBColumn;
    FPlanExecutiveListID_PTList: TcxGridDBColumn;
    FPlanDateShow_PTList: TcxGridDBColumn;
    cxGL_PTList: TcxGridLevel;
    FFinishDateTxt_PTList: TcxGridDBColumn;
    FFinishDate_PTList: TcxGridDBColumn;
    ActionList1: TActionList;
    FShipFinshPercent_PTList: TcxGridDBColumn;
    FMakeShip_PTList: TcxGridDBColumn;
    FMakeUnit_PTList: TcxGridDBColumn;
    FPlanDateTxt_PTList: TcxGridDBColumn;
    Act_Edit: TAction;
    Act_Count: TAction;
    FMakeFinshPercent_PTList: TcxGridDBColumn;
    Act_Update: TAction;
    Act_Update_Qry: TAction;
    PC_2: TRzPageControl;
    TS_Pact: TRzTabSheet;
    Panel1: TPanel;
    TS_ESP: TRzTabSheet;
    TS_Executive: TRzTabSheet;
    cxGrid_PTItem: TcxGrid;
    cxGV_PTItem: TcxGridDBTableView;
    FPlanYearWeek_PTItem: TcxGridDBColumn;
    FPlanDateExtent_PTItem: TcxGridDBColumn;
    FBranchItemNumber_PTItem: TcxGridDBColumn;
    FBranchFileNo_PTItem: TcxGridDBColumn;
    FDeliveryDate_PTItem: TcxGridDBColumn;
    FFinishDate_PTItem: TcxGridDBColumn;
    FPlanExecutiveSort_PTItem: TcxGridDBColumn;
    FPlanExecutiveWrite_PTItem: TcxGridDBColumn;
    FPlanExecutiveWriteDate_PTItem: TcxGridDBColumn;
    FClientFullName_PTItem: TcxGridDBColumn;
    FClientShortName_PTItem: TcxGridDBColumn;
    FProductName_PTItem: TcxGridDBColumn;
    FItemModel_PTItem: TcxGridDBColumn;
    FFileItemID_PTItem: TcxGridDBColumn;
    FProductID_PTItem: TcxGridDBColumn;
    FPlanExecutiveStatus_PTItem: TcxGridDBColumn;
    FPlanExecutiveStatusNotes_PTItem: TcxGridDBColumn;
    FPlanExecutiveWriteID_PTItem: TcxGridDBColumn;
    FPlanExecutiveItemID_PTItem: TcxGridDBColumn;
    cxGL_PTItem: TcxGridLevel;
    TS_Contact: TRzTabSheet;
    TS_FPactPatment: TRzTabSheet;
    cxGrid_5: TcxGrid;
    cxGV_5: TcxGridDBTableView;
    FItemNumber_3: TcxGridDBColumn;
    FBranch_3: TcxGridDBColumn;
    FPactPatment: TcxGridDBColumn;
    FInstallRange: TcxGridDBColumn;
    cxGL_5: TcxGridLevel;
    cxGrid_4: TcxGrid;
    cxGV_4: TcxGridDBTableView;
    FItemNumber_2: TcxGridDBColumn;
    FBranch_2: TcxGridDBColumn;
    FPM: TcxGridDBColumn;
    FPMPhone: TcxGridDBColumn;
    FEspDesign: TcxGridDBColumn;
    FEspDesignPhone: TcxGridDBColumn;
    FPowerDesign: TcxGridDBColumn;
    FPowerDesignPhone: TcxGridDBColumn;
    FPlanner: TcxGridDBColumn;
    FPlannerPhone: TcxGridDBColumn;
    FLocaleer: TcxGridDBColumn;
    FLocaleerPhone: TcxGridDBColumn;
    FShipAddress: TcxGridDBColumn;
    FConsignee: TcxGridDBColumn;
    FConsigneePhone: TcxGridDBColumn;
    cxGL_4: TcxGridLevel;
    cxGrid_3: TcxGrid;
    cxGV_3: TcxGridDBTableView;
    FShipDynamic: TcxGridDBColumn;
    FProblems: TcxGridDBColumn;
    FExecutiveCase: TcxGridDBColumn;
    cxGL_3: TcxGridLevel;
    cxGrid_2: TcxGrid;
    cxGV_2: TcxGridDBTableView;
    FPlanMap: TcxGridDBColumn;
    FMakeMap: TcxGridDBColumn;
    FPaintRation: TcxGridDBColumn;
    FOutPartList: TcxGridDBColumn;
    cxGL_2: TcxGridLevel;
    FSparePart: TcxGridDBColumn;
    FRealMap: TcxGridDBColumn;
    FMakeShipShow_PTList: TcxGridDBColumn;
    FBranchItemNumber_PTList: TcxGridDBColumn;
    FPlanExecutiveNumber_PTItem: TcxGridDBColumn;
    FPlanMap_PTList: TcxGridDBColumn;
    FRealMap_PTList: TcxGridDBColumn;
    FShipDynamic_PTList: TcxGridDBColumn;
    FProblems_PTList: TcxGridDBColumn;
    FExecutiveCase_PTList: TcxGridDBColumn;
    FContactShow_PTList: TcxGridDBColumn;
    FShipAddress_PTList: TcxGridDBColumn;
    FConsignee_PTList: TcxGridDBColumn;
    FConsigneePhone_PTList: TcxGridDBColumn;
    FInstallRange_PTList: TcxGridDBColumn;
    FPactPatment_PTList: TcxGridDBColumn;
    FPlanYear_PTItem: TcxGridDBColumn;
    FPlanWeek_PTItem: TcxGridDBColumn;
    procedure FormResize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TB_EXITClick(Sender: TObject);
    procedure TB_AppClick(Sender: TObject);
    procedure TB_DelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure MyTreeView_PTItemExpanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure MyTreeView_PTItemChange(Sender: TObject; Node: TTreeNode);
    procedure TB_RefClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure OKBtn_MClick(Sender: TObject);
    procedure TB_Edit_MClick(Sender: TObject);
    procedure CancelBtn_MClick(Sender: TObject);
    procedure SelCancelBtnClick(Sender: TObject);
    procedure PC_CheckChange(Sender: TObject);
    procedure TB_EditLListClick(Sender: TObject);
    procedure Act_Set_Open_MExecute(Sender: TObject);
    procedure Act_Set_Close_MExecute(Sender: TObject);
    procedure Act_MenuExecute(Sender: TObject);
    procedure Act_Menu_SetExecute(Sender: TObject);
    procedure N_EditClick(Sender: TObject);
    procedure N_FilterClick(Sender: TObject);
    procedure N_SortClick(Sender: TObject);
    procedure N_GroupClick(Sender: TObject);
    procedure N_SetClick(Sender: TObject);
    procedure N_OutClick(Sender: TObject);
    procedure FBranchItemNumberPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure Act_MaxIDExecute(Sender: TObject);
    procedure TB_PlanTaskListClick(Sender: TObject);
    procedure Act_SelExecute(Sender: TObject);
    procedure Act_Status_MExecute(Sender: TObject);
    procedure Act_EditExecute(Sender: TObject);
    procedure FPlanYearWeek_PTItemPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure Act_SubmitExecute(Sender: TObject);
    procedure cxGrid_PTItemContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure cxGrid_PTListContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure cxGV_PTItemFocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure FPlanMapPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FPaintRationPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FOutPartListPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FSparePartPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FShipDynamicPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FProblemsPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FExecutiveCasePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FPlanDateTxt_PTListPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FFinishDateTxt_PTListPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FMakeShip_PTListPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FMakeUnit_PTListPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FPlanExecutiveSort_PTItemPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure FMakeMapPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    P_List:String;
    P_i:boolean;


    { Private declarations }
    function AddMain:bool;
    function AddList:bool;
    function AddRd:bool;
    function EditRd:bool;
    function DelRd:bool;



  public
    P_state,P_PackNo,P_MaxID,P_Status:Integer;
    ListFNumber_PTItem,ListFNumber_PTList:string;
    P_Isleaf_PTList :Integer;
    P_List_PTList:string;
    GV,Gr,Gm,Mn:string;

    { Public declarations }
  end;

var
  Frm_PlanExecutive: TFrm_PlanExecutive;


implementation

uses FRMDATA,  COMMON, FrmSelect, ProgBar, PROGRASS, Main_Ship;

{$R *.dfm}


function TFrm_PlanExecutive.DelRd: bool;
var
 qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Delete from T_PlanExecutiveItem where FPlanExecutiveItemID=:FPlanExecutiveItemID';
    qry.Parameters.FindParam('FPlanExecutiveItemID').value:=MData_PTItem['FPlanExecutiveItemID'];
    result:=qry.ExecSQL>=0;
  finally
    ;
  end;
  qry.Free;
end;


function TFrm_PlanExecutive.AddMain: bool;
var
 qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Insert into T_PlanExecutiveItem(FPlanExecutiveItemID,FPlanYearWeek,FFileItemID,FPlanExecutiveNumber,FPlanExecutiveSort,'
                 +'FMakeMap,FPaintRation,FOutPartList,FSparePart,FShipDynamic,FProblems,FExecutiveCase,'
                 +'FPlanExecutiveStatus,FPlanExecutiveWriteID,FPlanExecutiveWriteDate,FDepartmentID) '
                 +'values(:FPlanExecutiveItemID,:FPlanYearWeek,:FFileItemID,:FPlanExecutiveNumber,:FPlanExecutiveSort,'
                 +':FPlanMap,:FMakeMap,:FPaintRation,:FOutPartList,:FSparePart,:FShipDynamic,:FProblems,:FExecutiveCase,'
                 +':FPlanExecutiveStatus,:FPlanExecutiveWriteID,:FPlanExecutiveWriteDate,:FDepartmentID)';
    with qry.Parameters do
    begin
       FindParam('FPlanExecutiveItemID').value:=P_MaxID;
       FindParam('FPlanYearWeek').value:=mData_PTItem['FPlanYearWeek'];
       FindParam('FFileItemID').value:=mData_PTItem['FFileItemID'];
       FindParam('FPlanExecutiveNumber').value:=mData_PTItem['FPlanExecutiveNumber'];
       FindParam('FPlanExecutiveSort').value:=mData_PTItem['FPlanExecutiveSort'];
       FindParam('FPlanMap').value:=mData_PTItem['FPlanMap'];
       FindParam('FPaintRation').value:=mData_PTItem['FPaintRation'];
       FindParam('FOutPartList').value:=mData_PTItem['FOutPartList'];
       FindParam('FSparePart').value:=mData_PTItem['FSparePart'];
       FindParam('FShipDynamic').value:=mData_PTItem['FShipDynamic'];
       FindParam('FProblems').value:=mData_PTItem['FProblems'];
       FindParam('FExecutiveCase').value:=mData_PTItem['FExecutiveCase'];
       FindParam('FPlanExecutiveStatus').value:=0;
       FindParam('FPlanExecutiveWriteID').value:=UserNumID;
       FindParam('FPlanExecutiveWriteDate').value:=Date();
       FindParam('FDepartmentID').value:=UserFDepartmentID;
    end;
     result:=qry.ExecSQL>=1;
  finally
     ;
  end;
  qry.Free;
end;

function TFrm_PlanExecutive.AddList: bool;
var
  qry: TADOQuery;
  i:Integer;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  result:=False;

  If mData_PTList.RecordCount<=0 then
  begin
    result:=True;
    Exit;
  end;
  try
     qry.SQL.Text:='Insert into T_PlanExecutiveList(FPlanExecutiveItemID,FPlanExecutivepartsID,FPlanDate,FPlanDateTxt,FFinishDate,'
                  +'FFinishDateTxt,FMakeFinshPercent,FShipFinshPercent,FMakeShip,FMakeUnit) '
                  +'values(:FPlanExecutiveItemID,:FPlanExecutivepartsID,:FPlanDate,:FPlanDateTxt,:FFinishDate,'
                  +':FFinishDateTxt,:FMakeFinshPercent,:FShipFinshPercent,:FMakeShip,:FMakeUnit)';
     mData_PTList.First;
     while not mData_PTList.eof do
     begin
       If (mData_PTList['FPlanExecutivepartsID']<>0) and (mData_PTList['FPlanExecutivepartsID']<>Null) then
       begin
         If qry.Active then qry.Close;
         with qry.Parameters do
         begin
           qry.Parameters.FindParam('FPlanExecutiveItemID').value:= P_MaxID;
           qry.Parameters.FindParam('FPlanExecutivepartsID').value:= mData_PTList['FPlanExecutivepartsID'];
           qry.Parameters.FindParam('FPlanDate').value:= mData_PTList['FPlanDate'];
           qry.Parameters.FindParam('FPlanDateTxt').value:= mData_PTList['FPlanDateTxt'];
           qry.Parameters.FindParam('FFinishDate').value:= mData_PTList['FFinishDate'];
           qry.Parameters.FindParam('FFinishDateTxt').value:= mData_PTList['FFinishDateTxt'];
           qry.Parameters.FindParam('FMakeFinshPercent').value:= mData_PTList['FMakeFinshPercent'];
           qry.Parameters.FindParam('FShipFinshPercent').value:= mData_PTList['FShipFinshPercent'];
           qry.Parameters.FindParam('FMakeShip').value:= mData_PTList['FMakeShip'];
           qry.Parameters.FindParam('FMakeUnit').value:= mData_PTList['FMakeUnit'];
         end;
         result:=qry.ExecSQL>=1;
         if not result then break;
       end;
       mData_PTList.Next;
     end;
   finally
     qry.Free;
   end;

end;


function TFrm_PlanExecutive.AddRd: bool;
var
 qry:TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  result:=False;

  MData_PTItem.Edit;
  MData_PTItem.Post;

  mdata_PTList.Edit;
  mdata_PTList.Post;
  If mdata_PTList.RecordCount<=0 then
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
    Application.MessageBox('新增数据失败，请重试。', '保存错误', 0 or MB_ICONINFORMATION);
    mdlData.Conn.RollBackTrans;
  end;

end;


function TFrm_PlanExecutive.EditRd:bool;
var
 qry:TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  mdlData.conn.BeginTrans;
  try
    if DelRd then  //1  主表删除
    begin
      result:=True;
      if AddMain then //2  主表新增
      begin
        result:=True;
        if AddList then //3  附表新增
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
    Application.MessageBox('保存数据失败，请重试。', '保存错误', 0 or MB_ICONINFORMATION);
    mdlData.Conn.RollBackTrans;
  end;

end;



procedure TFrm_PlanExecutive.FormResize(Sender: TObject);
begin
  inherited;
  Self.Caption:=UserFDepartmentName+'生产采购执行周报';
end;

procedure TFrm_PlanExecutive.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=cafree;
  Frm_PlanExecutive:=nil;
end;

procedure TFrm_PlanExecutive.TB_EXITClick(Sender: TObject);
begin
  inherited;
  Self.Close;
end;

procedure TFrm_PlanExecutive.TB_AppClick(Sender: TObject);
Var qry: TADOQuery;
    i,j:Integer;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  P_state :=0; //新增
  Act_Set_Open_M.Execute;

  mdata_PTItem.Close;
  If (mdata_PTItem.RecordCount>1) or (mdata_PTItem.RecordCount=0) then
  begin
    try
      qry.SQL.Text:='select * from V_PlanExecutiveItem with(nolock) where FPlanExecutiveItemID=0';
      qry.Open;
    finally
       ;
    end;
    mdata_PTItem.CopyFromDataSet(qry);
    mdata_PTItem.Active:=True;
    mdata_PTItem.Append;
    mdata_PTItem.Edit;
    try
      qry.SQL.Text:='select FPlanYear+''-''+(replicate(''0'',2-len(cast(FPlanWeek as Int)-1)))+cast((cast(FPlanWeek as Int)-1) as varchar(2)) as FPlanYearWeek '
                   +' from T_PlanWeekDate with(nolock) where FFirstDate<=getdate() and FLastDate>=getdate()';
      qry.Open;
    finally
       ;
    end;
    If qry.RecordCount<1 then
       Exit;

    mdata_PTItem.Edit;
    mdata_PTItem['FPlanYearWeek']:=qry.FieldByName('FPlanYearWeek').AsString;
    mdata_PTItem.Post;
    try
      qry.SQL.Text:='select * from T_PlanWeekDate with(nolock) where FPlanYearWeek=:FPlanYearWeek';
      qry.Parameters[0].Value:=mdata_PTItem['FPlanYearWeek'];
      qry.Open;
    finally
       ;
    end;
    If qry.RecordCount=1 then
    begin
      mdata_PTItem.Edit;
      mdata_PTItem['FPlanYearWeek']:=qry.FieldByName('FPlanYearWeek').AsString;
      mdata_PTItem['FPlanDateExtent']:=qry.FieldByName('FPlanDateExtent').AsString;
      mdata_PTItem.Post;
    end;  
    mdata_PTList.Close;
  end;

end;

procedure TFrm_PlanExecutive.TB_DelClick(Sender: TObject);
var
  qry:TADOQuery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  If application.MessageBox(Pchar('警告：是否删除'+P_List_PTList+'的生产采购执行周报信息？'+chr(13)+chr(13)
                                 +'删除数据操作将不可恢复，确定要删除吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
  If application.MessageBox(Pchar('再次警告：是否删除：'+P_List_PTList+'的生产采购执行周报信息？'+chr(13)+chr(13)
                                 +'删除数据操作将不可恢复，确定要删除吗？'),'再次警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then

  mdlData.conn.BeginTrans;
  begin
    //单据删除
    If not DelRd then
    begin
      application.MessageBox('删除单据失败！','系统提示',MB_ICONINFORMATION);
      mdlData.conn.RollbackTrans;
      Exit;
    end;
    mdlData.conn.CommitTrans;
  end;
  mdata_PTItem.Close;
  mdata_PTList.Close;
  qry.Free;

end;

procedure TFrm_PlanExecutive.FormCreate(Sender: TObject);
begin
  inherited;
  TB_App.Visible:= mdlData.CheckFrmRights(TFrm_PlanExecutive.ClassName,'新增');
  P_state:=2;
end;

procedure TFrm_PlanExecutive.MyTreeView_PTItemExpanding(Sender: TObject;
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

   qry.SQL.Text:='Select * from VT_PlanExecutive with(nolock) where FParentNumber= '''
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
    with MyTreeView_PTItem.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('Isleaf').value;
    end;
    qry.Next;
  end;
end;

procedure TFrm_PlanExecutive.MyTreeView_PTItemChange(Sender: TObject; Node: TTreeNode);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If Node = nil then Exit;
  with PTree(Node.Data)^ do
  begin
    ListFNumber_PTList:=trim(PTree(Node.Data).FNumber);
    P_List_PTList:=PTree(Node.Data).Caption;
    P_Isleaf_PTList:=PTree(Node.Data).Isleaf;
    mdata_PTList.DisableControls;
    cxGV_PTList.DataController.DataModeController.GridMode:=True;
    cxGV_PTList.DataController.DataModeController.SmartRefresh:=True;
    If P_Isleaf_PTList>0 then
    begin
      If MyItemListFieldWhere(qry,Mdata_PTItem,' *  ','V_PlanExecutiveItem','FFullNumber',ListFNumber_PTList,' ','FFullNumber') then
         //cxGvColumn(cxGv_PTItem,Mdata_PTItem);

      If MyItemListFieldWhere(qry,Mdata_PTList,' *  ','V_PlanExecutiveList','FFullNumber',ListFNumber_PTList,' ','FFullNumber') then
        // cxGvColumn(cxGv_PTList,Mdata_PTList);

    end
    else
    begin
      Mdata_PTItem.Close;
    end;
    Act_Status_M.Execute;  //权限设置

    mdata_PTList.EnableControls;
    cxGV_PTList.DataController.DataModeController.GridMode:=False;
    cxGV_PTList.DataController.DataModeController.SmartRefresh:=False;

 end;

end;

procedure TFrm_PlanExecutive.TB_RefClick(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If UserFDepartmentsort=1 then //事业部
  begin
    If not TreeVeiwListWhere(qry,MyTreeView_PTItem,'VT_PlanExecutive',' and FDepartmentID='+IntToStr(UserFDepartmentID)) then
      Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;


end;

procedure TFrm_PlanExecutive.FormShow(Sender: TObject);
begin
  inherited;
  TB_Ref.Click;
end;

procedure TFrm_PlanExecutive.OKBtn_MClick(Sender: TObject);
var qry: TADOQuery;
    P_FBalanceNum:String;
    i:Integer;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  MData_PTItem.open;
  MData_PTItem.Edit;
  MData_PTItem.Post;

  if (MData_PTItem['FBranchItemNumber']='') or (MData_PTItem['FBranchItemNumber']=null)  then
  begin
    application.MessageBox('图号不能为空！','系统提示',MB_ICONWARNING);
    Exit;
  end;

  mdata_PTList.open;
  mdata_PTList.Edit;
  mdata_PTList.Post;

  Act_MaxID.Execute;//取ID
  If P_state=0 then
  begin
    If application.MessageBox('是否要保存添加的数据？','提示',MB_ICONINFORMATION+MB_YESNO)<>6 then
       Exit;
    If AddRd then //增加数据
    begin
      If application.MessageBox('录入数据已保存,还要继续录入吗？','提示',MB_ICONINFORMATION+MB_YESNO)=6 then
      begin
        TB_App.Click;
      end
      else
        CancelBtn_M.Click;
    end;
  end;
  If P_state=1 then //修改数据
  begin
    If application.MessageBox('是否要保存所作修改？','提示',MB_ICONINFORMATION+MB_YESNO)<>6 then
       Exit;
    If EditRd then   //修改数据
    begin
      application.MessageBox('修改记录已保存','系统提示',MB_ICONINFORMATION);
      CancelBtn_M.Click;
    end
    else
      application.MessageBox('修改记录保存失败！','系统提示',MB_ICONWARNING);
  end;

  MyTreeView_PTItem.Enabled:=True;
  cxGrid_PTItem.Enabled:=True;
  qry.Free;

end;

procedure TFrm_PlanExecutive.TB_Edit_MClick(Sender: TObject);
begin
  inherited;
  P_state:=1; //修改
  Act_Edit.Execute;
  Act_Set_Open_M.Execute;
end;

procedure TFrm_PlanExecutive.CancelBtn_MClick(Sender: TObject);
begin
  inherited;
  Act_Set_Close_M.Execute;

end;

procedure TFrm_PlanExecutive.SelCancelBtnClick(Sender: TObject);
begin
  inherited;
  PC_Ship.ActivePage:=TS_Ship;
  TS_Ship.TabEnabled:=True;
end;

procedure TFrm_PlanExecutive.PC_CheckChange(Sender: TObject);
begin
  inherited;
  TB_Ref.Click;
end;

procedure TFrm_PlanExecutive.TB_EditLListClick(Sender: TObject);
var
   AFirstColumnStyle: TcxStyle;
begin
  inherited;
  P_state:=1;
end;

procedure TFrm_PlanExecutive.Act_Set_Open_MExecute(Sender: TObject);
var AFirstColumnStyle: TcxStyle;
begin
  inherited;
  MyTreeView_PTItem.Enabled:=False;
  RSP_CList.Enabled:=False;
  P_Btn.Visible:=True;
  OkBtn_M.Visible:=True;
  CancelBtn_M.Visible:=True;
  ToolBar_HItem.Visible:=False;

  cxGV_PTItem.OptionsData.Editing:=True;
  cxGV_2.OptionsData.Editing:=True;
  cxGV_3.OptionsData.Editing:=True;
  cxGV_4.OptionsData.Editing:=True;
  cxGV_5.OptionsData.Editing:=True;

  FBranchItemNumber_PTItem.Options.Editing:=True;
  FPlanYearWeek_PTItem.Options.Editing:=True;
  FMakeMap.Options.Editing:=True;
  FPaintRation.Options.Editing:=True;
  FOutPartList.Options.Editing:=True;
  FSparePart.Options.Editing:=True;
  FRealMap.Options.Editing:=True;
  FShipDynamic.Options.Editing:=True;
  FProblems.Options.Editing:=True;
  FExecutiveCase.Options.Editing:=True;
  FPlanExecutiveSort_PTItem.Options.Editing:=True;
  FPlanExecutiveNumber_PTItem.Options.Editing:=True;

  cxGV_PTList.OptionsData.Editing:=True;

  FPlanDate_PTList.Options.Editing:=True;
  FPlanDateTxt_PTList.Options.Editing:=True;
  FFinishDate_PTList.Options.Editing:=True;
  FFinishDateTxt_PTList.Options.Editing:=True;
  FMakeFinshPercent_PTList.Options.Editing:=True;
  FShipFinshPercent_PTList.Options.Editing:=True;
  FMakeShip_PTList.Options.Editing:=True;
  FMakeUnit_PTList.Options.Editing:=True;


  FPlanMap_PTList.Visible:=False;
  FRealMap_PTList.Visible:=False;
  FShipDynamic_PTList.Visible:=False;
  FProblems_PTList.Visible:=False;
  FExecutiveCase_PTList.Visible:=False;
  FContactShow_PTList.Visible:=False;
  FShipAddress_PTList.Visible:=False;
  FConsignee_PTList.Visible:=False;
  FConsigneePhone_PTList.Visible:=False;
  FPactPatment_PTList.Visible:=False;
  FInstallRange_PTList.Visible:=False;


  FPlanDate_PTList.Visible:=True;
  FPlanDateTxt_PTList.Visible:=True;
  FPlanDateShow_PTList.Visible:=False;

  FFinishDate_PTList.Visible:=True;
  FFinishDateTxt_PTList.Visible:=True;
  FFinishDateShow_PTList.Visible:=False;
  FMakeFinshPercent_PTList.Visible:=True;
  FShipFinshPercent_PTList.Visible:=True;
  FMakeShip_PTList.Visible:=True;
  FMakeShipShow_PTList.Visible:=False;

   //列颜色
  AFirstColumnStyle := TcxStyle.Create(Self);
  AFirstColumnStyle.Color := clMenu; //底色

  AFirstColumnStyle.TextColor := clBlue;        //字体颜色

  cxGV_PTList.Columns[FPlanDate_PTList.Index].Styles.Content := AFirstColumnStyle;
  cxGV_PTList.Columns[FPlanDateTxt_PTList.Index].Styles.Content := AFirstColumnStyle;
  cxGV_PTList.Columns[FFinishDate_PTList.Index].Styles.Content := AFirstColumnStyle;
  cxGV_PTList.Columns[FFinishDateTxt_PTList.Index].Styles.Content := AFirstColumnStyle;
  cxGV_PTList.Columns[FMakeFinshPercent_PTList.Index].Styles.Content := AFirstColumnStyle;
  cxGV_PTList.Columns[FShipFinshPercent_PTList.Index].Styles.Content := AFirstColumnStyle;
  cxGV_PTList.Columns[FMakeShip_PTList.Index].Styles.Content := AFirstColumnStyle;
  cxGV_PTList.Columns[FMakeUnit_PTList.Index].Styles.Content := AFirstColumnStyle;

end;

procedure TFrm_PlanExecutive.Act_Set_Close_MExecute(Sender: TObject);
var
   AFirstColumnStyle: TcxStyle;
begin
  inherited;
   //列颜色
  AFirstColumnStyle := TcxStyle.Create(Self);
  AFirstColumnStyle.Color := clWindow; //底色

  AFirstColumnStyle.TextColor := clWindowText;        //字体颜色

  cxGV_PTList.Columns[FPlanDate_PTList.Index].Styles.Content := AFirstColumnStyle;
  cxGV_PTList.Columns[FPlanDateTxt_PTList.Index].Styles.Content := AFirstColumnStyle;
  cxGV_PTList.Columns[FFinishDate_PTList.Index].Styles.Content := AFirstColumnStyle;
  cxGV_PTList.Columns[FFinishDateTxt_PTList.Index].Styles.Content := AFirstColumnStyle;
  cxGV_PTList.Columns[FMakeFinshPercent_PTList.Index].Styles.Content := AFirstColumnStyle;
  cxGV_PTList.Columns[FShipFinshPercent_PTList.Index].Styles.Content := AFirstColumnStyle;
  cxGV_PTList.Columns[FMakeShip_PTList.Index].Styles.Content := AFirstColumnStyle;
  cxGV_PTList.Columns[FMakeUnit_PTList.Index].Styles.Content := AFirstColumnStyle;

  PC_Ship.Enabled:=True;

  RSP_CList.Enabled:=True;

  MyTreeView_PTItem.Enabled:=True;
  P_Btn.Visible:=False;

  cxGV_PTItem.OptionsData.Editing:=False;
  cxGV_PTList.OptionsData.Editing:=False;
  cxGV_2.OptionsData.Editing:=False;
  cxGV_3.OptionsData.Editing:=False;
  cxGV_4.OptionsData.Editing:=False;
  cxGV_5.OptionsData.Editing:=False;

  FPlanMap_PTList.Visible:=True;
  FRealMap_PTList.Visible:=True;
  FShipDynamic_PTList.Visible:=True;
  FProblems_PTList.Visible:=True;
  FExecutiveCase_PTList.Visible:=True;
  FContactShow_PTList.Visible:=True;
  FShipAddress_PTList.Visible:=True;
  FConsignee_PTList.Visible:=True;
  FConsigneePhone_PTList.Visible:=True;
  FPactPatment_PTList.Visible:=True;
  FInstallRange_PTList.Visible:=True;

  FPlanDate_PTList.Visible:=False;
  FPlanDateTxt_PTList.Visible:=False;
  FPlanDateShow_PTList.Visible:=True;

  FFinishDate_PTList.Visible:=False;
  FFinishDateTxt_PTList.Visible:=False;
  FFinishDateShow_PTList.Visible:=True;

  FMakeFinshPercent_PTList.Visible:=False;
  FShipFinshPercent_PTList.Visible:=False;
  FMakeShip_PTList.Visible:=True;

  ToolBar_HItem.Visible:=True;

  P_state:=2;


end;

procedure TFrm_PlanExecutive.Act_MenuExecute(Sender: TObject);
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

procedure TFrm_PlanExecutive.Act_Menu_SetExecute(Sender: TObject);
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

procedure TFrm_PlanExecutive.N_EditClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_PlanExecutive.N_FilterClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_PlanExecutive.N_SortClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_PlanExecutive.N_GroupClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_PlanExecutive.N_SetClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_PlanExecutive.N_OutClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_PlanExecutive.FBranchItemNumberPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var selValue : string;
    qry,qry1: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry1:=TADOQuery.Create(self);
  qry1.ConnectionString:=mdlData.ReadConnStr;
  mData_PTItem.Edit;
  mData_PTItem.Post;

  If mData_PTItem['FBranchItemNumber']=Null then
  begin
    mData_PTItem.Edit;
    mData_PTItem['FBranchItemNumber']:='';
    mData_PTItem.Post;
  end;
  try
    qry.SQL.Text:='select * from VT_FileItem with(nolock) where FDepartmentID=:FDepartmentID and '
                 +'FFileItemID not in (select FFileItemID from T_PlanExecutiveItem with(nolock) where FPlanYearWeek=:FPlanYearWeek and FDepartmentID=:FDepartmentID2) '
                 +' and FBranchItemNumber like :FBranchItemNumber order by FBranchItemNumber ';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Parameters.FindParam('FPlanYearWeek').value:=mData_PTItem['FPlanYearWeek'];
    qry.Parameters.FindParam('FDepartmentID2').value:=UserFDepartmentID;
    qry.Parameters.FindParam('FBranchItemNumber').value:='%'+mData_PTItem['FBranchItemNumber']+'%';
    qry.Open;
  finally


   ;
  end;
  If qry.RecordCount=1 then
  begin
    mData_PTItem.Edit;
    mData_PTItem['FFileItemID']:=qry.FieldByName('FFileItemID').Value;
    mData_PTItem.Post;
    try
      qry1.SQL.Text:='select * from V_FileItem with(nolock) where FFileItemID=:FFileItemID ';
      qry1.Parameters.FindParam('FFileItemID').value:=mData_PTItem['FFileItemID'];
      qry1.Open;
    finally
     ;
    end;
    mData_PTItem.Edit;
    mData_PTItem['FBranchItemNumber']:= qry1.FieldByName('FBranchItemNumber').Value;
    mData_PTItem['FItemNumber']:=qry1.FieldByName('FItemNumber').Value;
    mData_PTItem['FClientShortName']:=qry1.FieldByName('FClientShortName').Value;
    mData_PTItem['FBranchFileNo']:=qry1.FieldByName('FBranchFileNo').Value;
    mData_PTItem['FProductName']:=qry1.FieldByName('FProductName').Value;
    mData_PTItem['FProductID']:=qry1.FieldByName('FProductID').Value;
    mData_PTItem['FPlanner']:=qry1.FieldByName('FPlanner').Value;
    mData_PTItem['FPlannerPhone']:=qry1.FieldByName('FPlannerPhone').Value;
    mData_PTItem['FPM']:=qry1.FieldByName('FPM').Value;
    mData_PTItem['FPMPhone']:=qry1.FieldByName('FPMPhone').Value;
    mData_PTItem['FEspDesign']:=qry1.FieldByName('FEspDesign').Value;
    mData_PTItem['FEspDesignPhone']:=qry1.FieldByName('FEspDesignPhone').Value;
    mData_PTItem['FPowerDesign']:=qry1.FieldByName('FPowerDesign').Value;
    mData_PTItem['FPowerDesignPhone']:=qry1.FieldByName('FPowerDesignPhone').Value;
    mData_PTItem['FLocaleer']:=qry1.FieldByName('FLocaleer').Value;
    mData_PTItem['FLocaleerPhone']:=qry1.FieldByName('FLocaleerPhone').Value;
    mData_PTItem['FShipAddress']:=qry1.FieldByName('FShipAddress').Value;
    mData_PTItem['FConsignee']:=qry1.FieldByName('FConsignee').Value;
    mData_PTItem['FConsigneePhone']:=qry1.FieldByName('FConsigneePhone').Value;
    mData_PTItem['FPactPatment']:=qry1.FieldByName('FPactPatment').Value;
    mData_PTItem['FInstallRange']:=qry1.FieldByName('FInstallRange').Value;
    mData_PTItem['FPlanMap']:=qry1.FieldByName('FPlanMap').Value;
    mData_PTItem.Post;
    Act_Sel.Execute;
    Exit;
  end;

  selValue:=select('选择项目图号','FNumber','FParentNumber','FNumber','FName',qry);
  If (Length(selValue)>0) and (qry.FieldByName('Isleaf').Value<>0) then
  begin
    mData_PTItem.Edit;
    mData_PTItem['FFileItemID']:=qry.FieldByName('FFileItemID').Value;
    mData_PTItem.Post;
    try
      qry.SQL.Text:='select * from V_FileItem with(nolock) where FFileItemID=:FFileItemID ';
      qry.Parameters.FindParam('FFileItemID').value:=mData_PTItem['FFileItemID'];
      qry.Open;
    finally
     ;
    end;

    mData_PTItem.Edit;
    mData_PTItem['FBranchItemNumber']:= qry.FieldByName('FBranchItemNumber').Value;
    mData_PTItem['FItemNumber']:=qry.FieldByName('FItemNumber').Value;
    mData_PTItem['FClientShortName']:=qry.FieldByName('FClientShortName').Value;
    mData_PTItem['FBranchFileNo']:=qry.FieldByName('FBranchFileNo').Value;
    mData_PTItem['FProductName']:=qry.FieldByName('FProductName').Value;
    mData_PTItem['FProductID']:=qry.FieldByName('FProductID').Value;
    mData_PTItem['FPlanner']:=qry.FieldByName('FPlanner').Value;
    mData_PTItem['FPlannerPhone']:=qry.FieldByName('FPlannerPhone').Value;
    mData_PTItem['FPM']:=qry.FieldByName('FPM').Value;
    mData_PTItem['FPMPhone']:=qry.FieldByName('FPMPhone').Value;
    mData_PTItem['FEspDesign']:=qry.FieldByName('FEspDesign').Value;
    mData_PTItem['FEspDesignPhone']:=qry.FieldByName('FEspDesignPhone').Value;
    mData_PTItem['FPowerDesign']:=qry.FieldByName('FPowerDesign').Value;
    mData_PTItem['FPowerDesignPhone']:=qry.FieldByName('FPowerDesignPhone').Value;
    mData_PTItem['FLocaleer']:=qry.FieldByName('FLocaleer').Value;
    mData_PTItem['FLocaleerPhone']:=qry.FieldByName('FLocaleerPhone').Value;
    mData_PTItem['FShipAddress']:=qry.FieldByName('FShipAddress').Value;
    mData_PTItem['FConsignee']:=qry.FieldByName('FConsignee').Value;
    mData_PTItem['FConsigneePhone']:=qry.FieldByName('FConsigneePhone').Value;
    mData_PTItem['FPactPatment']:=qry.FieldByName('FPactPatment').Value;
    mData_PTItem['FInstallRange']:=qry.FieldByName('FInstallRange').Value;
    mData_PTItem['FPlanMap']:=qry.FieldByName('FPlanMap').Value;
    mData_PTItem.Post;
    Act_Sel.Execute;
  end
  else
    begin
      application.MessageBox('请选择明细！','系统提示',MB_ICONINFORMATION);
      mData_PTList.Close;
    end;


end;

procedure TFrm_PlanExecutive.Act_MaxIDExecute(Sender: TObject);
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
      value:='T_PlanExecutiveItem';
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

procedure TFrm_PlanExecutive.TB_PlanTaskListClick(Sender: TObject);
var
  Query_Sp:TADOStoredProc;
  i,h,k,s,x,n,ReNum,ReNumLoop,R_Count,ReNumH:Integer;
  ExcelApp,MyWorkBook,mysheet,vLastSheet: Variant;
  filepath,savefilepath,Sqlstr,copystart,copyend,copystart1,copystart_H,copyend_H,copystart1_H,a:string;
  RepSpace:String;//合并单元格
  ListQry:Tadoquery;
  qry,qry1,qry2:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  qry1:=TAdoQuery.Create(self);
  qry1.ConnectionString:=mdlData.ReadConnStr;

  qry2:=TAdoQuery.Create(self);
  qry2.ConnectionString:=mdlData.ReadConnStr;


  P_List_Pack:=mdata_PTItem['FPlanYearWeek'];
  filepath:=Extractfilepath(application.ExeName)+'生产执行周报模版.xls';
  if (mdata_PTItem.Active) and (mdata_PTItem.recordcount>0) then
  Begin
    SaveDialog1.FileName:='生产执行生产周报('+P_List_Pack+')';
    SaveDialog1.Filter:='.xls';
    SaveDialog1.Execute;

    if (mdata_PTItem.FieldByName('FPlanYearWeek').AsString<>'') Or (mdata_PTItem.FieldByName('FPlanYearWeek').AsString<>Null) then
        savefilepath:=SaveDialog1.FileName+'.xls';

    if FileExists(savefilepath) then
    begin
      DeleteFile(savefilepath) ;
    end;
    stbMsg.Caption:='提示信息：正在导出生产执行周报:'+'【'+mdata_PTItem.FieldByName('FPlanYearWeek').AsString+'】';
    stbBar.Refresh;

    ExcelApp:= CreateOleObject('Excel.Application' );
    ExcelApp.DisplayAlerts:=False;                  //不显示提示框
    MyWorkBook:=ExcelApp.WorkBooks.Open( filepath );   //打开模版
    //ExcelApp.Visible:=True;

    try
      qry.SQL.Text:='select distinct FPlanYearWeek from V_PlanExecutiveItem with(nolock) where FDepartmentID=:FDepartmentID and FFullNumber like :FFullNumber';
      qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
      qry.Parameters.FindParam('FFullNumber').value:=ListFNumber_PTList+'%';
      qry.Open;
    finally
      ;
    end;

    If qry.RecordCount>0 then
       k:=2
    else
       Exit;

   qry.First;
   while not qry.eof do
   begin
     try
       qry1.SQL.Text:='Select b.n ,a.* from V_PlanExecutiveList as a with(nolock) left outer join  '
                     +'(Select FDepartmentID,FPlanYearWeek,FFileItemID,count(*) as n from V_PlanExecutiveList with(nolock) where FDepartmentID=:FDepartmentID and FPlanYearWeek=:FPlanYearWeek '
                     +' group by FDepartmentID,FPlanYearWeek,FFileItemID ) as b '
                     +' on a.FFileItemID=b.FFileItemID and a.FDepartmentID=b.FDepartmentID and a.FPlanYearWeek=b.FPlanYearWeek '
                     +' where a.FDepartmentID=:FDepartmentID2 and a.FPlanYearWeek=:FPlanYearWeek2 '
                     +'order by a.FPlanExecutiveSort,a.FPlanExecutiveNumber,a.FBranchItemNumber,a.FPlanExecutivepartsNum ';
       qry1.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
       qry1.Parameters.FindParam('FPlanYearWeek').value:=mdata_PTItem['FPlanYearWeek'];
       qry1.Parameters.FindParam('FDepartmentID2').value:=UserFDepartmentID;
       qry1.Parameters.FindParam('FPlanYearWeek2').value:=mdata_PTItem['FPlanYearWeek'];
       qry1.Open;
     finally
       ;
     end;
     if qry1.RecordCount>0 then
     begin
       mdata_PTList.Close;
       mdata_PTList.CopyFromDataSet(qry1);
     end;
     vLastSheet:=MyWorkBook.Sheets[MyWorkBook.Sheets.Count];
     MyWorkBook.Sheets[1].Copy(EmptyParam,vLastSheet);
     MyWorkBook.WorkSheets[k].Name:=IntToStr(k)+mdata_PTItem['FPlanYearWeek'];
     MyWorkBook.WorkSheets[k].Activate;


      //标题
      MyWorkBook.WorkSheets[k].Cells[1,1].Value:=AnsiReplaceStr(MyWorkBook.WorkSheets[k].Cells[1,1].Value,'A',UserFDepartmentName+mdata_PTItem.FieldByName('FPlanYear').AsString+'年生产采购执行周报（第'+mdata_PTItem.FieldByName('FPlanWeek').AsString+'周）'); //公司名称
      MyWorkBook.WorkSheets[k].Cells[13,12].Value:=AnsiReplaceStr(MyWorkBook.WorkSheets[k].Cells[13,12].Value,'A',UserFDepartmentName); //公司名称
       //MyWorkBook.WorkSheets[k].Cells[5,3].Value := '【'+Trim(mdata_PTItem.FieldByName('FPlanYearWeek').AsString)+'】周【'+Trim(mdata_PTItem.FieldByName('FPlanDateExtent').AsString)+'】';

     // MyWorkBook.WorkSheets[k].Cells[9,13].Value:=mdata_PTItem.FieldByName('FPlanWeekWrite').AsString; //制单



     //循环行开始
      i:=10;

       //工作薄名称
      MyWorkBook.WorkSheets[k].Name:=mdata_PTItem.FieldByName('FPlanYearWeek').AsString;
      copystart:='A'+IntToStr(i);
      if mdata_PTList.recordcount>0 then
      Begin
        if mdata_PTList.recordcount>1 then
        Begin
          copystart:='A'+IntToStr(i);
          copystart1:='A'+IntToStr(i+1);
          copyend:='O'+IntToStr(i);  //区域  A:O
          ReNum:=mdata_PTList.recordcount-1;//记录个数加空白个数
         // ReNum:=mdata_PTList.recordcount-1+(10-((mdata_PTList.RecordCount+1) mod 10));//记录个数加空白个数
          while ReNum>0 do
          Begin
            ExcelApp.ActiveSheet.Range[copystart+':'+copyend].Copy;
            ExcelApp.ActiveSheet.Rows[i+1].Insert;
            ExcelApp.ActiveSheet.Range[copystart1].PasteSpecial;
            Renum:=Renum-1;
          end;
        end
        else
        Begin
          R_Count:=mdata_PTList.recordcount;
        end;
        mdata_PTList.first;
        while not mdata_PTList.eof do
        Begin
          MyWorkBook.WorkSheets[k].Cells[i,1].Value := mdata_PTList.FieldByName('FPlanExecutiveNumber').AsString;
          MyWorkBook.WorkSheets[k].Cells[i,2].Value := mdata_PTList.FieldByName('FBranchItemNumber').AsString
                                                     +mdata_PTList.FieldByName('FClientFullName').AsString
                                                     +'('+mdata_PTList.FieldByName('FFileNo').AsString+')';
          MyWorkBook.WorkSheets[k].Cells[i,3].Value := mdata_PTList.FieldByName('FPlanMap').AsString;
          MyWorkBook.WorkSheets[k].Cells[i,4].Value := mdata_PTList.FieldByName('FRealMap').AsString;
          MyWorkBook.WorkSheets[k].Cells[i,5].Value := mdata_PTList.FieldByName('FShipDynamic').AsString;
          MyWorkBook.WorkSheets[k].Cells[i,6].Value := mdata_PTList.FieldByName('FProblems').AsString;
          MyWorkBook.WorkSheets[k].Cells[i,7].Value := mdata_PTList.FieldByName('FExecutiveCase').AsString;
          MyWorkBook.WorkSheets[k].Cells[i,8].Value := mdata_PTList.FieldByName('FPlanExecutivepartsName').AsString;
          MyWorkBook.WorkSheets[k].Cells[i,9].Value := mdata_PTList.FieldByName('FPlanDateShow').AsString;
          MyWorkBook.WorkSheets[k].Cells[i,10].Value := mdata_PTList.FieldByName('FFinishDateShow').AsString;
          MyWorkBook.WorkSheets[k].Cells[i,11].Value := mdata_PTList.FieldByName('FMakeShipShow').AsString;
          MyWorkBook.WorkSheets[k].Cells[i,12].Value := mdata_PTList.FieldByName('FMakeUnit').AsString;

          MyWorkBook.WorkSheets[k].Cells[i,13].Value := mdata_PTList.FieldByName('FContactShow').AsString;
          MyWorkBook.WorkSheets[k].Cells[i,14].Value := mdata_PTList.FieldByName('FShipAddress').AsString
                                                      +'联系人：'+mdata_PTList.FieldByName('FConsignee').AsString
                                                      +mdata_PTList.FieldByName('FConsigneePhone').AsString;
          MyWorkBook.WorkSheets[k].Cells[i,15].Value := '合同付款方式：'+mdata_PTList.FieldByName('FPactPatment').AsString
                                                      +'安装范畴：'+mdata_PTList.FieldByName('FInstallRange').AsString;

          mdata_PTList.next;
          i:=i+1;
        End;
      end;
       //合并循环行开始

      try
        qry1.SQL.Text:='Select FDepartmentID,FPlanYearWeek,FPlanExecutiveSort,FPlanExecutiveNumber,FFileItemID,count(*) as n from V_PlanExecutiveList with(nolock) '
                      +' where FDepartmentID=:FDepartmentID and FPlanYearWeek=:FPlanYearWeek group by FDepartmentID,FPlanYearWeek,FPlanExecutiveSort,FPlanExecutiveNumber,FFileItemID'
                      +' order by  FDepartmentID,FPlanYearWeek,FPlanExecutiveSort,FPlanExecutiveNumber ';
        qry1.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
        qry1.Parameters.FindParam('FPlanYearWeek').value:=mdata_PTItem['FPlanYearWeek'];
        qry1.Open;
      finally
        ;
      end;
      If qry1.RecordCount>0 then
      begin
        qry1.First;
        i:=10;
       // h:=1;
        while not qry1.eof do
        begin
          //合并单元格
          n:=qry1.FieldByName('n').Value;
          RepSpace:=GetRepRange(i,1)+':'+GetRepRange(i+n-1,1);
          ExcelApp.Range[RepSpace].Select;
          ExcelApp.Selection.Merge;
          RepSpace:=GetRepRange(i,2)+':'+GetRepRange(i+n-1,2);
          ExcelApp.Range[RepSpace].Select;
          ExcelApp.Selection.Merge;
          RepSpace:=GetRepRange(i,3)+':'+GetRepRange(i+n-1,3);
          ExcelApp.Range[RepSpace].Select;
          ExcelApp.Selection.Merge;
          RepSpace:=GetRepRange(i,4)+':'+GetRepRange(i+n-1,4);
          ExcelApp.Range[RepSpace].Select;
          ExcelApp.Selection.Merge;
          RepSpace:=GetRepRange(i,5)+':'+GetRepRange(i+n-1,5);
          ExcelApp.Range[RepSpace].Select;
          ExcelApp.Selection.Merge;
          RepSpace:=GetRepRange(i,6)+':'+GetRepRange(i+n-1,6);
          ExcelApp.Range[RepSpace].Select;
          ExcelApp.Selection.Merge;
          RepSpace:=GetRepRange(i,7)+':'+GetRepRange(i+n-1,7);
          ExcelApp.Range[RepSpace].Select;
          ExcelApp.Selection.Merge;
          RepSpace:=GetRepRange(i,13)+':'+GetRepRange(i+n-1,13);
          ExcelApp.Range[RepSpace].Select;
          ExcelApp.Selection.Merge;
          RepSpace:=GetRepRange(i,14)+':'+GetRepRange(i+n-1,14);
          ExcelApp.Range[RepSpace].Select;
          ExcelApp.Selection.Merge;
          RepSpace:=GetRepRange(i,15)+':'+GetRepRange(i+n-1,15);
          ExcelApp.Range[RepSpace].Select;
          ExcelApp.Selection.Merge;
         // ExcelApp.cells(i,1):=h;  {单元格写数据}
          {加边框线}
          RepSpace:=GetRepRange(i-1,1)+':'+GetRepRange(i,14);
          ExcelApp.ActiveSheet.Range[RepSpace].Borders.LineStyle:=1;
          //ExcelApp.ActiveSheet.Range[RepSpace].Borders.LineStyle:=xlContinuous;

          qry1.Next;
          i:=i+n;
         // h:=h+1;
        end;
      end;
     //复制表头
      try
        qry2.SQL.Text:='select a.*,b.s from '
                      +'(Select FDepartmentID,FPlanYearWeek,FPlanExecutiveSort,count(*) as n from V_PlanExecutiveList with(nolock)  '
                      +'where FDepartmentID=:FDepartmentID1 and FPlanYearWeek=:FPlanYearWeek1  '
                      +'group by FDepartmentID,FPlanYearWeek,FPlanExecutiveSort) as a   '
                      +'left outer join (Select FDepartmentID,FPlanYearWeek,FPlanExecutiveSort,count(*) as s from V_PlanExecutiveItem with(nolock)  '
                      +'where FDepartmentID=:FDepartmentID2 and FPlanYearWeek=:FPlanYearWeek2 '
                      +'group by FDepartmentID,FPlanYearWeek,FPlanExecutiveSort) as b '
                      +'on a.FDepartmentID=b.FDepartmentID and a.FPlanYearWeek=b.FPlanYearWeek and a.FPlanExecutiveSort=b.FPlanExecutiveSort '
                      +'order by a.FPlanYearWeek,a.FPlanExecutiveSort  '  ;
        qry2.Parameters.FindParam('FDepartmentID1').value:=UserFDepartmentID;
        qry2.Parameters.FindParam('FPlanYearWeek1').value:=mdata_PTItem['FPlanYearWeek'];
        qry2.Parameters.FindParam('FDepartmentID2').value:=UserFDepartmentID;
        qry2.Parameters.FindParam('FPlanYearWeek2').value:=mdata_PTItem['FPlanYearWeek'];
        qry2.Open;
      finally
        ;
      end;
      If qry2.RecordCount>0 then
      begin
        qry2.First;
        i:=7;
        h:=1;
        MyWorkBook.WorkSheets[k].Cells[7-1+h,2].Value := qry2.FieldByName('FPlanExecutiveSort').AsString+'（'+qry2.FieldByName('s').AsString+'台套）';
        a:=copy(qry2.FieldByName('FPlanExecutiveSort').AsString,pos('、',qry2.FieldByName('FPlanExecutiveSort').AsString)+2,20);
        MyWorkBook.WorkSheets[k].Cells[6,1].Value:=AnsiReplaceStr(MyWorkBook.WorkSheets[k].Cells[6,1].Value,a,a+'（'+qry2.FieldByName('s').AsString+'台套）');
        n:=qry2.FieldByName('n').Value;
        h:=i+3+n;
        qry2.Next;
        x:=0;
        while not qry2.Eof do
        begin
          //写表头
          copystart:='A'+IntToStr(7);
          copyend:='O'+IntToStr(9);  //区域  A:O
          ExcelApp.ActiveSheet.Range[copystart+':'+copyend].Copy;
          ExcelApp.ActiveSheet.Rows[h].Insert;
          MyWorkBook.WorkSheets[k].Cells[h,2].Value:=qry2.FieldByName('FPlanExecutiveSort').AsString+'（'+qry2.FieldByName('s').AsString+'台套）';
          a:=copy(qry2.FieldByName('FPlanExecutiveSort').AsString,pos('、',qry2.FieldByName('FPlanExecutiveSort').AsString)+2,20);
          MyWorkBook.WorkSheets[k].Cells[6,1].Value:=AnsiReplaceStr(MyWorkBook.WorkSheets[k].Cells[6,1].Value,a,a+'（'+qry2.FieldByName('s').AsString+'台套）');
          n:=qry2.FieldByName('n').Value;
          h:=h+n+3;
          x:=x+qry2.FieldByName('s').Value;
          qry2.Next;
        end;
      end;
      MyWorkBook.WorkSheets[k].Cells[6,1].Value:=AnsiReplaceStr(MyWorkBook.WorkSheets[k].Cells[6,1].Value,'X',IntToStr(x)); //公司名称

      qry.Next ;
      ExcelApp.Visible:=True;
      MyWorkBook.WorkSheets[k].PrintPreview;  //打印
      k:=k+1;
    end;
    MyWorkBook.WorkSheets[1].delete; //删除模版
    stbMsg.Caption:='提示信息：生产执行周报:'+'【'+mdata_PTItem.FieldByName('FPlanYearWeek').AsString+'】的信息导出完成!';
    stbBar.Refresh;
    MyWorkBook.saveas(savefilepath);
    MyWorkBook.Close;
    ExcelApp.Quit;
    ExcelApp:=Unassigned;
  end
  else
  Begin
    Application.MessageBox(PChar('没有可导出的数据，请重新选择'), '数据引出错误', MB_OK + MB_ICONSTOP);
    Exit;
  End;


end;

procedure TFrm_PlanExecutive.Act_SelExecute(Sender: TObject);
var
  qry,qry1:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
    try
      qry.SQL.Text:='Select * from V_PlanExecutiveItem with(nolock) where FDepartmentID=:FDepartmentID and FFileItemID=:FFileItemID and FPlanYear=:FPlanYear and  FPlanWeek=:FPlanWeek';
      qry.Parameters.FindParam('FDepartmentID').Value:=UserFDepartmentID;
      qry.Parameters.FindParam('FFileItemID').Value:=mdata_PTItem['FFileItemID'];
      qry.Parameters.FindParam('FPlanYear').Value:=mdata_PTItem['FPlanYear'];
      qry.Parameters.FindParam('FPlanWeek').Value:=mdata_PTItem['FPlanWeek'];
      qry.Open;
      If qry.RecordCount>0 then
      begin
         application.MessageBox('此项目本周执行周报已存在！请不要重复输入','系统提示',MB_ICONERROR);
         mData_PTItem.Edit;
         mData_PTItem['FBranchItemNumber']:= '';
         mData_PTItem['FItemNumber']:='';
         mData_PTItem['FClientShortName']:='';
         mData_PTItem['FBranchFileNo']:='';
         mData_PTItem['FProductName']:='';
         mData_PTItem['FProductID']:=0;
         mData_PTItem.Post;
         Exit;
      end;
    finally
       ;
    end;


  If (mData_PTItem['FFileItemID']=0) or (mData_PTItem['FFileItemID']=Null) then
  begin
    Application.MessageBox(PChar('请选择项目名称，请重新选择'), '系统提示', MB_OK + MB_ICONSTOP);
    Exit;
  End;
  try
    qry.SQL.Text:='select a.*,b.* from T_PlanExecutiveParts as a  with(nolock)left outer join (select * from V_PlanExecutiveList with(nolock) where FPlanExecutiveListID=0 ) as b '
                 +' on a.FProductID=b.FProductID  where  a.FProductID=:FProductID order by a.FPlanExecutivepartsNum';
    qry.Parameters.FindParam('FProductID').value:=mData_PTItem['FProductID'];
    qry.Open;
  finally
     ;
  end;
  If qry.RecordCount>0 then
  begin
    mdata_PTList.CopyFromDataSet(qry);
   // cxGvColumn(cxGv_PTList,Mdata_PTList);
    mdata_PTList.Active:=True;
    mdata_PTList.First;
  end;
end;

procedure TFrm_PlanExecutive.Act_Status_MExecute(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  TB_Submit.Visible:=False;
  TB_Check.Visible:=False;
  TB_Edit_M.Visible:=False;
  TB_Del.Visible:=False;

  //制单者是本人
  try
    qry.SQL.Text:='Select distinct FPlanExecutiveStatus,FPlanExecutiveWriteID from V_PlanExecutiveItem with(nolock) '
                 +' where FDepartmentID=:FDepartmentID and FFullNumber like :FFullNumber';
    qry.Parameters.FindParam('FDepartmentID').value:= UserFDepartmentID;
    qry.Parameters.FindParam('FFullNumber').value:=ListFNumber_PTList+'%';
    qry.Open;
  finally
    ;
  end;

   //制单者是本人

  If (qry.RecordCount=1) and (qry.FieldByName('FPlanExecutiveStatus').AsInteger=0)
      and (qry.FieldByName('FPlanExecutiveWriteID').AsInteger=UserNumID) then
  begin
    If mdata_PTItem.RecordCount=0 then
    begin
      TB_Del.Visible:=False;
      TB_Submit.Visible:=False;
    end;
    If mdata_PTItem.RecordCount>0 then
    begin
      TB_Submit.Visible:=mdlData.CheckFrmRights(TFrm_PlanExecutive.ClassName,'提交');
      TB_Submit.Caption:='批量提交';
      TB_Del.Visible:=False;
    end;
    If mdata_PTItem.RecordCount=1 then
    begin
      TB_Edit_M.Visible:=mdlData.CheckFrmRights(TFrm_PlanExecutive.ClassName,'修改');
      TB_Del.Visible:=mdlData.CheckFrmRights(TFrm_PlanExecutive.ClassName,'删除');
      TB_Submit.Visible:=mdlData.CheckFrmRights(TFrm_PlanExecutive.ClassName,'提交');
      TB_Submit.Caption:='提交';
    end;
    Exit;
  end;

   //提交者是本人
  If (qry.RecordCount=1) and (qry.FieldByName('FPlanExecutiveStatus').AsInteger=1)
     and (qry.FieldByName('FPlanExecutiveWriteID').AsInteger=UserNumID) then
  begin
    TB_Submit.Visible:=mdlData.CheckFrmRights(TFrm_PlanExecutive.ClassName,'提交');
    If mdata_PTItem.RecordCount=0 then
       TB_Submit.Visible:=False;
    If mdata_PTItem.RecordCount>0 then
       TB_Submit.Caption:='批量提交撤回';
    If mdata_PTItem.RecordCount=1 then
       TB_Submit.Caption:='提交撤回';
    TB_Edit_M.Visible:=False;
    TB_Del.Visible:=False;
    Exit;
  end;

   //制单者是本人
 {
  If (qry.RecordCount=1) and (qry.FieldByName('FPlanWeekStatus').AsInteger=0)
      and (qry.FieldByName('FPlanWeekWriteID').AsInteger=UserNumID) then
  begin
    If mdata_PTItem.RecordCount=0 then
    begin
      TB_Del.Visible:=False;
      TB_Submit.Visible:=False;
    end;
    If mdata_PTItem.RecordCount>0 then
    begin
      TB_Del.Visible:=False;
    end;
    If mdata_PTItem.RecordCount=1 then
    begin
      TB_Edit_M.Visible:=mdlData.CheckFrmRights(TFrm_PlanWeek.ClassName,'修改');
      TB_Del.Visible:=mdlData.CheckFrmRights(TFrm_PlanWeek.ClassName,'删除');
    end;
    Exit;
  end;
  }



end;

procedure TFrm_PlanExecutive.Act_EditExecute(Sender: TObject);
var
 qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Select a.*,b.* from T_PlanExecutiveParts as a with(nolock)  '
                 +'left outer join (select * from V_PlanExecutiveList where FDepartmentID=:FDepartmentID and FFileItemID=:FFileItemID) as b '
                 +' on a.FPlanExecutivepartsID=b.FPlanExecutivepartsID where a.FProductID=:FProductID '
                 +'order by a.FPlanExecutivepartsNum ';
    qry.Parameters.FindParam('FDepartmentID').Value:=UserFDepartmentID;
    qry.Parameters.FindParam('FFileItemID').Value:=Trim(Mdata_PTItem['FFileItemID']);
    qry.Parameters.FindParam('FProductID').Value:=Trim(Mdata_PTItem['FProductID']);
    qry.Open;
  finally
     ;
  end;
  If qry.RecordCount>0 then
  begin
    MData_PTList.CopyFromDataSet(qry);
    MData_PTList.Active:=True;
    MData_PTList.First;
  end;
  //cxGvColumn(cxGv_PTList,MData_PTList);
  qry.Free;

end;

procedure TFrm_PlanExecutive.FPlanYearWeek_PTItemPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  Mdata_PTItem.Edit;
  Mdata_PTItem.Post;
  If Mdata_PTItem['FPlanYearWeek']=Null then
  begin
    Mdata_PTItem.Edit;
    Mdata_PTItem['FPlanYearWeek']:='';
    Mdata_PTItem.Post;
  end;
  try
    qry.SQL.Text:='select * from VT_PlanWeekDate with(nolock) ';
    qry.Open;
  finally
   ;
  end;

  selValue:=select('选择周报日期','FNumber','FParentNumber','FNumber','FName',qry);
  If (Length(selValue)>0) and (qry.FieldByName('Isleaf').Value<>0) then
  begin
    Mdata_PTItem.Edit;
    Mdata_PTItem['FPlanYearWeek']:=qry.FieldByName('FPlanYearWeek').Value;
    Mdata_PTItem['FPlanDateExtent']:=qry.FieldByName('FPlanDateExtent').Value;
    Mdata_PTItem.Post;
  end;
  If mdata_PTItem['FFileItemID']<>0 then
  begin
    try
      qry.SQL.Text:='Select * from V_PlanExecutiveItem with(nolock) where FDepartmentID=:FDepartmentID and FFileItemID=:FFileItemID and FPlanYearWeek=:FPlanYearWeek ';
      qry.Parameters.FindParam('FDepartmentID').Value:=UserFDepartmentID;
      qry.Parameters.FindParam('FFileItemID').Value:=mdata_PTItem['FFileItemID'];
      qry.Parameters.FindParam('FPlanYearWeek').Value:=mdata_PTItem['FPlanYearWeek'];
      qry.Open;
      If qry.RecordCount>0 then
      begin
         application.MessageBox('此项目本周采购执行周报已存在！请不要重复输入','系统提示',MB_ICONERROR);
         mData_PTItem.Edit;
         mData_PTItem['FBranchItemNumber']:= '';
         mData_PTItem['FItemNumber']:='';
         mData_PTItem['FClientShortName']:='';
         mData_PTItem['FBranchFileNo']:='';
         mData_PTItem['FProductName']:='';
         mData_PTItem['FProductID']:=0;
         mData_PTItem.Post;
         mData_PTList.Close;
         Exit;
      end;
    finally
       ;
    end;
  end;
end;

procedure TFrm_PlanExecutive.Act_SubmitExecute(Sender: TObject);
var
 qry:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  P_state:=3;
  If (TB_Submit.Caption='提交') or (TB_Submit.Caption='批量提交') then
  begin
    If application.MessageBox(Pchar('系统提示：是否对生产周报单号为：'+P_List_PTList+'的单据进行提交？'+chr(13)+chr(13)
                                   +'确定要提交对本单据吗？'),'系统提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      MData_PTItem.First;
      while not MData_PTItem.eof do
      begin
        try
          qry.SQL.Text:='Update T_PlanExecutiveItem Set FPlanExecutiveStatus=1,FPlanExecutiveSubmitDate=:FPlanExecutiveSubmitDate  where FPlanExecutiveItemID=:FPlanExecutiveItemID';
          qry.Parameters.FindParam('FPlanExecutiveSubmitDate').value:= now();
          qry.Parameters.FindParam('FPlanExecutiveItemID').value:=MData_PTItem['FPlanExecutiveItemID'];
          qry.ExecSQL;
        finally
          ;
        end;
        MData_PTItem.Edit;
        MData_PTItem['FPlanExecutiveStatus']:=1;
        MData_PTItem['FPlanExecutiveStatusNotes']:='提交';
        MData_PTItem['FPlanExecutiveSubmitDate']:=now();
        MData_PTItem.Post;
        Act_Update_Qry.Execute;//更新汇总数据
        MData_PTItem.Next;
      end;
      If MData_PTItem.RecordCount=1 then
      begin
        application.MessageBox('提交完毕！','系统提示',MB_ICONINFORMATION);
        TB_Submit.Caption:='提交撤回';
      end;
      If MData_PTItem.RecordCount>1 then
      begin
        application.MessageBox('批量提交完毕！','系统提示',MB_ICONINFORMATION);
        TB_Submit.Caption:='批量提交撤回';
      end;
      Act_Status_M.Execute;  //权限设置
    end;
    P_state:=2;
//    Act_Update.Execute;//更新汇总数据
    Exit;
  end;
  If (TB_Submit.Caption='提交撤回') or (TB_Submit.Caption='批量提交撤回')  then
  begin
    If application.MessageBox(Pchar('系统提示：是否对生产周报单号为：'+P_List_PTList+'的单据进行提交撤回？'+chr(13)+chr(13)
                                     +'确定要对本单据提交撤回吗？'),'系统提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      MData_PTItem.First;
      while not MData_PTItem.eof do
      begin
        try
          qry.SQL.Text:='Update T_PlanExecutiveItem Set FPlanExecutiveStatus=0,FPlanExecutiveSubmitDate=:FPlanExecutiveSubmitDate where FPlanExecutiveItemID=:FPlanExecutiveItemID';
          qry.Parameters.FindParam('FPlanExecutiveSubmitDate').value:= Null;
          qry.Parameters.FindParam('FPlanExecutiveItemID').value:= MData_PTItem['FPlanExecutiveItemID'];
          qry.ExecSQL;
        finally
          ;
        end;
        MData_PTItem.Edit;
        MData_PTItem['FPlanExecutiveStatus']:=0;
        MData_PTItem['FPlanExecutiveStatusNotes']:='填单';
        MData_PTItem['FPlanExecutiveSubmitDate']:=Null;
        MData_PTItem.Post;
        Act_Update_Qry.Execute;//更新汇总数据
        MData_PTItem.Next;
      end;
      If MData_PTItem.RecordCount=1 then
      begin
        application.MessageBox('提交撤回完毕！','系统提示',MB_ICONINFORMATION);
        TB_Submit.Caption:='提交';
      end;
      If MData_PTItem.RecordCount>1 then
      begin
        application.MessageBox('批量提交撤回完毕！','系统提示',MB_ICONINFORMATION);
        TB_Submit.Caption:='批量提交';
      end;
      Act_Status_M.Execute;  //权限设置
    end;
    P_state:=2;
    //Act_Update.Execute;//更新汇总数据
    Exit;
  end;


end;

procedure TFrm_PlanExecutive.cxGrid_PTItemContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV_PTItem';
  Gm:='mdata_PTItem';
  Gr:='cxGrid_PTItem';
  Act_Menu_Set.Execute;
end;

procedure TFrm_PlanExecutive.cxGrid_PTListContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV_PTList';
  Gm:='mdata_PTList';
  Gr:='cxGrid_PTList';
  Act_Menu_Set.Execute;

end;

procedure TFrm_PlanExecutive.cxGV_PTItemFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
var qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If  P_state=2 then   //不在新增修改状态
  begin
    If (mData_PTItem['FPlanExecutiveItemID']<>0) and (mData_PTItem['FPlanExecutiveItemID']<>Null) then
    begin
      If MyItemListID(qry,Mdata_PTList,'V_PlanExecutiveList',' FPlanExecutiveItemID='+IntToStr(mData_PTItem['FPlanExecutiveItemID']),'FFullNumber',) then
         Act_Status_M.Execute  //权限设置
    end;
  end;

end;

procedure TFrm_PlanExecutive.FPlanMapPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  mData_PTItem.Edit;
  mData_PTItem.Post;
  If mData_PTItem['FPlanMap']=Null then
  begin
    mData_PTItem.Edit;
    mData_PTItem['FPlanMap']:='';
    mData_PTItem.Post;
  end;
  try
    qry.SQL.Text:='select distinct FPlanMap from T_PlanExecutiveItem with(nolock) where FDepartmentID=:FDepartmentID and FPlanMap like :FPlanMap order by FPlanMap ';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Parameters.FindParam('FPlanMap').value:='%'+mData_PTItem['FPlanMap']+'%';
    qry.Open;
  finally
   ;
  end;

  selValue:=select('选择出图计划','FPlanMap','FPlanMap','FPlanMap','FPlanMap',qry);
  If (Length(selValue)>0) then
  begin
    mData_PTItem.Edit;
    mData_PTItem['FPlanMap']:=qry.FieldByName('FPlanMap').Value;
    mData_PTItem.Post;
  end;

end;

procedure TFrm_PlanExecutive.FPaintRationPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  mData_PTItem.Edit;
  mData_PTItem.Post;
  If mData_PTItem['FPaintRation']=Null then
  begin
    mData_PTItem.Edit;
    mData_PTItem['FPaintRation']:='';
    mData_PTItem.Post;
  end;
  try
    qry.SQL.Text:='select distinct FPaintRation from T_PlanExecutiveItem with(nolock) where FDepartmentID=:FDepartmentID and FPaintRation like :FPaintRation order by FPaintRation ';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Parameters.FindParam('FPaintRation').value:='%'+mData_PTItem['FPaintRation']+'%';
    qry.Open;
  finally
   ;
  end;

  selValue:=select('选择油漆定额','FPaintRation','FPaintRation','FPaintRation','FPaintRation',qry);
  If (Length(selValue)>0) then
  begin
    mData_PTItem.Edit;
    mData_PTItem['FPaintRation']:=qry.FieldByName('FPaintRation').Value;
    mData_PTItem.Post;
  end;
end;

procedure TFrm_PlanExecutive.FOutPartListPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  mData_PTItem.Edit;
  mData_PTItem.Post;
  If mData_PTItem['FOutPartList']=Null then
  begin
    mData_PTItem.Edit;
    mData_PTItem['FOutPartList']:='';
    mData_PTItem.Post;
  end;
  try
    qry.SQL.Text:='select distinct FOutPartList from T_PlanExecutiveItem with(nolock) where FDepartmentID=:FDepartmentID and FOutPartList like :FOutPartList order by FOutPartList ';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Parameters.FindParam('FOutPartList').value:='%'+mData_PTItem['FOutPartList']+'%';
    qry.Open;
  finally
   ;
  end;

  selValue:=select('选择外购件清单','FOutPartList','FOutPartList','FOutPartList','FOutPartList',qry);
  If (Length(selValue)>0) then
  begin
    mData_PTItem.Edit;
    mData_PTItem['FOutPartList']:=qry.FieldByName('FOutPartList').Value;
    mData_PTItem.Post;
  end;
end;

procedure TFrm_PlanExecutive.FSparePartPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  mData_PTItem.Edit;
  mData_PTItem.Post;
  If mData_PTItem['FSparePart']=Null then
  begin
    mData_PTItem.Edit;
    mData_PTItem['FSparePart']:='';
    mData_PTItem.Post;
  end;
  try
    qry.SQL.Text:='select distinct FSparePart from T_PlanExecutiveItem with(nolock) where FDepartmentID=:FDepartmentID and FSparePart like :FSparePart order by FSparePart ';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Parameters.FindParam('FSparePart').value:='%'+mData_PTItem['FSparePart']+'%';
    qry.Open;
  finally
   ;
  end;

  selValue:=select('选择备品备件','FSparePart','FSparePart','FSparePart','FSparePart',qry);
  If (Length(selValue)>0) then
  begin
    mData_PTItem.Edit;
    mData_PTItem['FSparePart']:=qry.FieldByName('FSparePart').Value;
    mData_PTItem.Post;
  end;

end;

procedure TFrm_PlanExecutive.FShipDynamicPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  mData_PTItem.Edit;
  mData_PTItem.Post;
  If mData_PTItem['FShipDynamic']=Null then
  begin
    mData_PTItem.Edit;
    mData_PTItem['FShipDynamic']:='';
    mData_PTItem.Post;
  end;
  try
    qry.SQL.Text:='select distinct FShipDynamic from T_PlanExecutiveItem with(nolock) where FDepartmentID=:FDepartmentID and FShipDynamic like :FShipDynamic order by FShipDynamic ';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Parameters.FindParam('FShipDynamic').value:='%'+mData_PTItem['FShipDynamic']+'%';
    qry.Open;
  finally
   ;
  end;

  selValue:=select('选择最新交货动态','FShipDynamic','FShipDynamic','FShipDynamic','FShipDynamic',qry);
  If (Length(selValue)>0) then
  begin
    mData_PTItem.Edit;
    mData_PTItem['FShipDynamic']:=qry.FieldByName('FShipDynamic').Value;
    mData_PTItem.Post;
  end;
end;

procedure TFrm_PlanExecutive.FProblemsPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  mData_PTItem.Edit;
  mData_PTItem.Post;
  If mData_PTItem['FProblems']=Null then
  begin
    mData_PTItem.Edit;
    mData_PTItem['FProblems']:='';
    mData_PTItem.Post;
  end;
  try
    qry.SQL.Text:='select distinct FProblems from T_PlanExecutiveItem with(nolock) where FDepartmentID=:FDepartmentID and FProblems like :FProblems order by FProblems ';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Parameters.FindParam('FProblems').value:='%'+mData_PTItem['FProblems']+'%';
    qry.Open;
  finally
   ;
  end;

  selValue:=select('选择目前存在问题','FProblems','FProblems','FProblems','FProblems',qry);
  If (Length(selValue)>0) then
  begin
    mData_PTItem.Edit;
    mData_PTItem['FProblems']:=qry.FieldByName('FProblems').Value;
    mData_PTItem.Post;
  end;

end;

procedure TFrm_PlanExecutive.FExecutiveCasePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  mData_PTItem.Edit;
  mData_PTItem.Post;
  If mData_PTItem['FExecutiveCase']=Null then
  begin
    mData_PTItem.Edit;
    mData_PTItem['FExecutiveCase']:='';
    mData_PTItem.Post;
  end;
  try
    qry.SQL.Text:='select distinct FExecutiveCase from T_PlanExecutiveItem with(nolock) where FDepartmentID=:FDepartmentID and FExecutiveCase like :FExecutiveCase order by FExecutiveCase ';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Parameters.FindParam('FExecutiveCase').value:='%'+mData_PTItem['FExecutiveCase']+'%';
    qry.Open;
  finally
   ;
  end;

  selValue:=select('选择会议要求及执行情况','FExecutiveCase','FExecutiveCase','FExecutiveCase','FExecutiveCase',qry);
  If (Length(selValue)>0) then
  begin
    mData_PTItem.Edit;
    mData_PTItem['FExecutiveCase']:=qry.FieldByName('FExecutiveCase').Value;
    mData_PTItem.Post;
  end;

end;

procedure TFrm_PlanExecutive.FPlanDateTxt_PTListPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  mData_PTList.Edit;
  mData_PTList.Post;
  If mData_PTList['FPlanDateTxt']=Null then
  begin
    mData_PTList.Edit;
    mData_PTList['FPlanDateTxt']:='';
    mData_PTList.Post;
  end;
  try
    qry.SQL.Text:='select distinct FPlanDateTxt from V_PlanExecutiveList with(nolock) where FDepartmentID=:FDepartmentID and FPlanDateTxt like :FPlanDateTxt order by FPlanDateTxt ';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Parameters.FindParam('FPlanDateTxt').value:='%'+mData_PTList['FPlanDateTxt']+'%';
    qry.Open;
  finally
   ;
  end;

  selValue:=select('选择排产日期说明','FPlanDateTxt','FPlanDateTxt','FPlanDateTxt','FPlanDateTxt',qry);
  If (Length(selValue)>0) then
  begin
    mData_PTList.Edit;
    mData_PTList['FPlanDateTxt']:=qry.FieldByName('FPlanDateTxt').Value;
    mData_PTList.Post;
  end;

end;

procedure TFrm_PlanExecutive.FFinishDateTxt_PTListPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  mData_PTList.Edit;
  mData_PTList.Post;
  If mData_PTList['FFinishDateTxt']=Null then
  begin
    mData_PTList.Edit;
    mData_PTList['FFinishDateTxt']:='';
    mData_PTList.Post;
  end;
  try
    qry.SQL.Text:='select distinct FFinishDateTxt from V_PlanExecutiveList with(nolock) where FDepartmentID=:FDepartmentID and FFinishDateTxt like :FFinishDateTxt order by FFinishDateTxt ';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Parameters.FindParam('FFinishDateTxt').value:='%'+mData_PTList['FFinishDateTxt']+'%';
    qry.Open;
  finally
   ;
  end;

  selValue:=select('选择计划完工日期说明','FFinishDateTxt','FFinishDateTxt','FFinishDateTxt','FFinishDateTxt',qry);
  If (Length(selValue)>0) then
  begin
    mData_PTList.Edit;
    mData_PTList['FFinishDateTxt']:=qry.FieldByName('FFinishDateTxt').Value;
    mData_PTList.Post;
  end;

end;

procedure TFrm_PlanExecutive.FMakeShip_PTListPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  mData_PTList.Edit;
  mData_PTList.Post;
  If mData_PTList['FMakeShip']=Null then
  begin
    mData_PTList.Edit;
    mData_PTList['FMakeShip']:='';
    mData_PTList.Post;
  end;
  try
    qry.SQL.Text:='select distinct FMakeShip from V_PlanExecutiveList with(nolock) where FDepartmentID=:FDepartmentID and FMakeShip like :FMakeShip order by FMakeShip ';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Parameters.FindParam('FMakeShip').value:='%'+mData_PTList['FMakeShip']+'%';
    qry.Open;
  finally
   ;
  end;

  selValue:=select('选择生产、采购情况说明','FMakeShip','FMakeShip','FMakeShip','FMakeShip',qry);
  If (Length(selValue)>0) then
  begin
    mData_PTList.Edit;
    mData_PTList['FMakeShip']:=qry.FieldByName('FMakeShip').Value;
    mData_PTList.Post;
  end;

end;


procedure TFrm_PlanExecutive.FMakeUnit_PTListPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  mData_PTList.Edit;
  mData_PTList.Post;
  If mData_PTList['FMakeUnit']=Null then
  begin
    mData_PTList.Edit;
    mData_PTList['FMakeUnit']:='';
    mData_PTList.Post;
  end;
  try
    qry.SQL.Text:='select distinct FMakeUnit from V_PlanExecutiveList with(nolock) where FDepartmentID=:FDepartmentID and FMakeUnit like :FMakeUnit order by FMakeUnit ';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Parameters.FindParam('FMakeUnit').value:='%'+mData_PTList['FMakeUnit']+'%';
    qry.Open;
  finally
   ;
  end;

  selValue:=select('选择生产单位','FMakeUnit','FMakeUnit','FMakeUnit','FMakeUnit',qry);
  If (Length(selValue)>0) then
  begin
    mData_PTList.Edit;
    mData_PTList['FMakeUnit']:=qry.FieldByName('FMakeUnit').Value;
    mData_PTList.Post;
  end;

end;

procedure TFrm_PlanExecutive.FPlanExecutiveSort_PTItemPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  mData_PTItem.Edit;
  mData_PTItem.Post;
  If mData_PTItem['FPlanExecutiveSort']=Null then
  begin
    mData_PTItem.Edit;
    mData_PTItem['FPlanExecutiveSort']:='';
    mData_PTItem.Post;
  end;
  try
    qry.SQL.Text:='select distinct FPlanExecutiveSort from T_PlanExecutiveItem with(nolock) where FDepartmentID=:FDepartmentID and FPlanExecutiveSort like :FPlanExecutiveSort order by FPlanExecutiveSort ';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Parameters.FindParam('FPlanExecutiveSort').value:='%'+mData_PTItem['FPlanExecutiveSort']+'%';
    qry.Open;
  finally
   ;
  end;

  selValue:=select('选择统计分类','FPlanExecutiveSort','FPlanExecutiveSort','FPlanExecutiveSort','FPlanExecutiveSort',qry);
  If (Length(selValue)>0) then
  begin
    mData_PTItem.Edit;
    mData_PTItem['FPlanExecutiveSort']:=qry.FieldByName('FPlanExecutiveSort').Value;
    mData_PTItem.Post;
  end;


end;

procedure TFrm_PlanExecutive.FMakeMapPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  mData_PTItem.Edit;
  mData_PTItem.Post;
  If mData_PTItem['FMakeMap']=Null then
  begin
    mData_PTItem.Edit;
    mData_PTItem['FMakeMap']:='';
    mData_PTItem.Post;
  end;
  try
    qry.SQL.Text:='select distinct FMakeMap from T_PlanExecutiveItem with(nolock) where FDepartmentID=:FDepartmentID and FMakeMap like :FMakeMap order by FMakeMap ';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Parameters.FindParam('FMakeMap').value:='%'+mData_PTItem['FMakeMap']+'%';
    qry.Open;
  finally
   ;
  end;

  selValue:=select('选择生产图纸','FMakeMap','FMakeMap','FMakeMap','FMakeMap',qry);
  If (Length(selValue)>0) then
  begin
    mData_PTItem.Edit;
    mData_PTItem['FMakeMap']:=qry.FieldByName('FMakeMap').Value;
    mData_PTItem.Post;
  end;

end;

end.


