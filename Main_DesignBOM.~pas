unit Main_DesignBOM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FrmGridBass, ExtCtrls, StdCtrls, DsFancyButton, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  dxmdaset, cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid,
  cxTextEdit, cxDropDownEdit, cxCalendar, cxMaskEdit, cxContainer, cxLabel,
  cxDBLookupComboBox, ADODB, cxButtonEdit, Grids, DBGrids, ComCtrls,
  cxCurrencyEdit, cxCheckBox, cxLookAndFeelPainters, ActnList, FR_DSet,
  FR_DBSet, FR_Class, ImgList, cxButtons, RzPanel, RzRadGrp, RzSplit,
  RzTabs, jpeg, Comobj,RzShellDialogs,  ToolWin, cxRadioGroup, Buttons,
  cxGroupBox,   IniFiles,  cxMemo, RzStatus, Menus;

type
    TFrm_DesignBOM = class(TFrm_GridBass)
    MData: TdxMemData;
    DS_Mdata: TDataSource;
    ImageList: TImageList;
    frReport: TfrReport;
    frDBDataSet: TfrDBDataSet;
    MDatacpth: TStringField;
    MDatacpmc: TStringField;
    MDatacpxh: TStringField;
    MDatadah: TStringField;
    MDatajsdj: TStringField;
    MDatadjrq: TStringField;
    MDatalkdh: TStringField;
    MDatapqgy: TStringField;
    MDataclf: TStringField;
    MDatagz: TStringField;
    MDataglf: TStringField;
    MDataclfje: TStringField;
    MDatagzje: TStringField;
    MDataglfje: TStringField;
    MDatabz: TStringField;
    MDatajssl: TStringField;
    MDatajsje: TStringField;
    MDatayfmc: TStringField;
    PC_1: TRzPageControl;
    TS_DesignBOM: TRzTabSheet;
    TS_K3: TRzTabSheet;
    cxGridK3: TcxGrid;
    cxGVK3: TcxGridDBTableView;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    FItemId: TcxGridDBColumn;
    cxGLK3: TcxGridLevel;
    V_K3: TADOTable;
    DS_K3: TDataSource;
    Image1: TImage;
    Label1: TLabel;
    ToolBar1: TToolBar;
    TB_Ref: TToolButton;
    ToolButton5: TToolButton;
    TB_Parts: TToolButton;
    TB_cldy: TToolButton;
    TB_update: TToolButton;
    TB_PartsSort: TToolButton;
    TB_PRIN: TToolButton;
    ToolButton1: TToolButton;
    RzSizePanel3: TRzSizePanel;
    MyTreeView: TTreeView;
    Image2: TImage;
    Label2: TLabel;
    DS_Mdata2: TDataSource;
    MData2: TdxMemData;
    TB_EXIT: TToolButton;
    MData2th: TStringField;
    MData2mc: TStringField;
    MData2gg: TStringField;
    MData2FSumQry: TIntegerField;
    MData2FSupplier: TStringField;
    MData2FTakeReMark: TStringField;
    MData2FSumSuttle: TFloatField;
    MData2FName: TStringField;
    MData2FModel: TStringField;
    MData2UnitName: TStringField;
    Panel3: TPanel;
    PC_2: TRzPageControl;
    TS_MX: TRzTabSheet;
    TS_Sort: TRzTabSheet;
    cxGrid: TcxGrid;
    cxGV: TcxGridDBTableView;
    FCode: TcxGridDBColumn;
    th: TcxGridDBColumn;
    mc: TcxGridDBColumn;
    FModel: TcxGridDBColumn;
    FMakeParts: TcxGridDBColumn;
    FSumQry: TcxGridDBColumn;
    FSuttle: TcxGridDBColumn;
    gg: TcxGridDBColumn;
    ssth: TcxGridDBColumn;
    FQry: TcxGridDBColumn;
    FManageParts: TcxGridDBColumn;
    FWorkParts: TcxGridDBColumn;
    FPartsSort: TcxGridDBColumn;
    FSumSuttle: TcxGridDBColumn;
    y_FSuttle: TcxGridDBColumn;
    c_FSuttle: TcxGridDBColumn;
    FMaterialRate: TcxGridDBColumn;
    FNumber: TcxGridDBColumn;
    FName: TcxGridDBColumn;
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
    cxGL: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGV1: TcxGridDBTableView;
    FCode_1: TcxGridDBColumn;
    th_1: TcxGridDBColumn;
    mc_1: TcxGridDBColumn;
    FModel_1: TcxGridDBColumn;
    FParts_1: TcxGridDBColumn;
    FSumQry_1: TcxGridDBColumn;
    FSuttle_1: TcxGridDBColumn;
    gg_1: TcxGridDBColumn;
    ssth_1: TcxGridDBColumn;
    FQry_1: TcxGridDBColumn;
    FManageParts_1: TcxGridDBColumn;
    FWorkParts_1: TcxGridDBColumn;
    FPartsSort_1: TcxGridDBColumn;
    FSumSuttle_1: TcxGridDBColumn;
    y_FSuttle_1: TcxGridDBColumn;
    c_FSuttle_1: TcxGridDBColumn;
    FMaterialRate_1: TcxGridDBColumn;
    FNumber_1: TcxGridDBColumn;
    FName_1: TcxGridDBColumn;
    UnitName_1: TcxGridDBColumn;
    y_FNumber_1: TcxGridDBColumn;
    y_FModel_1: TcxGridDBColumn;
    FPriceQry_1: TcxGridDBColumn;
    FUse_1: TcxGridDBColumn;
    FRation_1: TcxGridDBColumn;
    y_FRation_1: TcxGridDBColumn;
    FFullNumber_1: TcxGridDBColumn;
    ssFullNumber_1: TcxGridDBColumn;
    Remark_1: TcxGridDBColumn;
    FFullName_1: TcxGridDBColumn;
    cxGL1: TcxGridLevel;
    DS_Mdata1: TDataSource;
    MData1: TdxMemData;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    StringField13: TStringField;
    StringField14: TStringField;
    StringField15: TStringField;
    StringField16: TStringField;
    StringField17: TStringField;
    StringField18: TStringField;
    actionList: TActionList;
    ActApp: TAction;
    ActParts: TAction;
    ActEdit: TAction;
    ActDel: TAction;
    ActOut: TAction;
    Act_Audit: TAction;
    Actcldy: TAction;
    ActSave: TAction;
    ActPartsSort: TAction;
    ActWeigth: TAction;
    ActWorkBOM: TAction;
    TB_Edit: TToolButton;
    ActDelWorkBom: TAction;
    ActFullName: TAction;
    TS_Take: TRzTabSheet;
    RzSizePanel2: TRzSizePanel;
    MyTreeView_Date: TTreeView;
    TB_Take: TToolButton;
    P_Task: TPanel;
    Label26: TLabel;
    Label10: TLabel;
    E_FBranchFileNo1: TcxButtonEdit;
    E_FPartsNumber1: TcxButtonEdit;
    ActTake: TAction;
    MData3: TdxMemData;
    StringField19: TStringField;
    StringField20: TStringField;
    StringField21: TStringField;
    IntegerField1: TIntegerField;
    StringField22: TStringField;
    StringField23: TStringField;
    FloatField1: TFloatField;
    StringField24: TStringField;
    StringField25: TStringField;
    StringField26: TStringField;
    MData2FNumber: TStringField;
    MData2Fk3Name: TStringField;
    MData2FK3Model: TStringField;
    MData2FOrderNoQry: TIntegerField;
    DS_Mdata3: TDataSource;
    E_FItemListID1: TcxButtonEdit;
    ActDelTake: TAction;
    Act_Check: TAction;
    Act_PushDown: TAction;
    Act_Status: TAction;
    Act_Submit: TAction;
    Act_TakeEdit: TAction;
    FPartsCode: TcxGridDBColumn;
    ToolButton3: TToolButton;
    Panel6: TPanel;
    Panel_button: TPanel;
    Bevel_button: TBevel;
    OKBtn: TcxButton;
    CancelBtn: TcxButton;
    TS_Item: TPageControl;
    TabSheet3: TTabSheet;
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
    FFinsh_M2: TcxGridDBColumn;
    FFinshDate_M2: TcxGridDBColumn;
    FTakeID_M2: TcxGridDBColumn;
    FItemListID_M2: TcxGridDBColumn;
    FTakeStatus_M2: TcxGridDBColumn;
    cxGL_M2: TcxGridLevel;
    RSP_List: TRzSizePanel;
    PageControl2: TPageControl;
    TS_List: TTabSheet;
    cxGrid2: TcxGrid;
    cxGV2: TcxGridDBTableView;
    Check: TcxGridDBColumn;
    FpartsNumber_2: TcxGridDBColumn;
    th_2: TcxGridDBColumn;
    FTakemc_2: TcxGridDBColumn;
    FTakegg_2: TcxGridDBColumn;
    FSumQry_2: TcxGridDBColumn;
    FTakeQry: TcxGridDBColumn;
    FPlanTenderQry: TcxGridDBColumn;
    FTenderCoeQry: TcxGridDBColumn;
    FOrderQry: TcxGridDBColumn;
    cxGridDBColumn51: TcxGridDBColumn;
    FNumber_2: TcxGridDBColumn;
    UnitName_2: TcxGridDBColumn;
    FTakeDemand: TcxGridDBColumn;
    FTakeListReMark_2: TcxGridDBColumn;
    FName_2: TcxGridDBColumn;
    FModel_2: TcxGridDBColumn;
    FSumSuttle_2: TcxGridDBColumn;
    FTakeNumber_2: TcxGridDBColumn;
    FOrderID: TcxGridDBColumn;
    FTakeListID_2: TcxGridDBColumn;
    FItemNumber_2: TcxGridDBColumn;
    cxGL2: TcxGridLevel;
    ToolBar7: TToolBar;
    TB_Add: TcxButton;
    Panel5: TPanel;
    ToolBar3: TToolBar;
    TB_Ref3: TToolButton;
    TB_DelTake: TToolButton;
    TB_Out3: TToolButton;
    TB_Down3: TToolButton;
    TB_Prin3: TToolButton;
    TB_Exit3: TToolButton;
    MData_M2: TdxMemData;
    MData_M2FTakeID: TIntegerField;
    MData_M2FTakeDate: TDateField;
    MData_M2FItemListId: TIntegerField;
    MData_M2FBranchFileNo: TStringField;
    MData_M2FTakeWrite: TStringField;
    MData_M2FTakeWriteDate: TDateTimeField;
    MData_M2FItemNumber: TStringField;
    DS_Mdata_M2: TDataSource;
    FItemNumber: TcxGridDBColumn;
    SaveDialog1: TSaveDialog;
    stbBar: TRzStatusBar;
    RzClockStatus1: TRzClockStatus;
    RzKeyStatus1: TRzKeyStatus;
    RzKeyStatus2: TRzKeyStatus;
    RzKeyStatus3: TRzKeyStatus;
    stbMsg: TRzFieldStatus;
    TB_Audit: TToolButton;
    ActAudit: TAction;
    MData4: TdxMemData;
    StringField27: TStringField;
    StringField28: TStringField;
    StringField29: TStringField;
    IntegerField2: TIntegerField;
    StringField30: TStringField;
    StringField31: TStringField;
    FloatField2: TFloatField;
    StringField32: TStringField;
    StringField33: TStringField;
    StringField34: TStringField;
    StringField35: TStringField;
    StringField36: TStringField;
    StringField37: TStringField;
    IntegerField3: TIntegerField;
    DS_Mdata4: TDataSource;
    Panel4: TPanel;
    Bevel1: TBevel;
    CB_Type: TcxCheckBox;
    CB_Print: TcxCheckBox;
    CB_Parts: TcxComboBox;
    CB_Sum: TcxComboBox;
    RzRG_1: TRzRadioGroup;
    E_FFileItemID: TcxButtonEdit;
    PM: TPopupMenu;
    N_Edit: TMenuItem;
    N_Filter: TMenuItem;
    N_Sort: TMenuItem;
    N_Group: TMenuItem;
    N_Set: TMenuItem;
    N_Out: TMenuItem;
    Act_Menu: TAction;
    Act_Menu_Set: TAction;
    FPlanParts: TcxGridDBColumn;
    ToolButton2: TToolButton;
    FPartsCode_1: TcxGridDBColumn;
    FPartsNumber_1: TcxGridDBColumn;
    FItemNumber_1: TcxGridDBColumn;
    ToolButton4: TToolButton;
    ToolButton6: TToolButton;
    procedure FormResize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TB_EXIT1Click(Sender: TObject);
    procedure MyTreeViewChange(Sender: TObject; Node: TTreeNode);
    procedure FormCreate(Sender: TObject);
    procedure TB_RefClick(Sender: TObject);
    procedure TB_updateClick(Sender: TObject);
    procedure CB_bjlbPropertiesChange(Sender: TObject);
    procedure cxGridExit(Sender: TObject);
    procedure MDataAfterEdit(DataSet: TDataSet);
    procedure TB_5Click(Sender: TObject);
    procedure CB_TypeClick(Sender: TObject);
    procedure CB_PrintClick(Sender: TObject);
    procedure PC_1Change(Sender: TObject);
    procedure MyTreeViewExpanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure TB_EXITClick(Sender: TObject);
    procedure PartsSort;
    procedure frReportGetValue(const ParName: String;
      var ParValue: Variant);
    procedure ActPartsSortExecute(Sender: TObject);
    procedure ActPartsExecute(Sender: TObject);
    procedure ActcldyExecute(Sender: TObject);
    function DelRdWorkBOM:bool;
    function DelRdTake:bool;
    procedure ActEditExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FPartsSortPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure E_FBranchFileNo1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure ActTakeExecute(Sender: TObject);
    procedure TB_Ref3Click(Sender: TObject);
    procedure MyTreeView_DateExpanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure MyTreeView_DateChange(Sender: TObject; Node: TTreeNode);
    procedure TB_Prin3Click(Sender: TObject);
    procedure ActDelTakeExecute(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure ActAuditExecute(Sender: TObject);
    procedure cxGridContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure cxGrid1ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure N_EditClick(Sender: TObject);
    procedure N_FilterClick(Sender: TObject);
    procedure N_SortClick(Sender: TObject);
    procedure N_GroupClick(Sender: TObject);
    procedure N_SetClick(Sender: TObject);
    procedure N_OutClick(Sender: TObject);
    procedure Act_MenuExecute(Sender: TObject);
    procedure Act_Menu_SetExecute(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure ToolButton6Click(Sender: TObject);


  private

    ListItemFParentNumber,ListItemFNumber1,ListItemFNumber2,ListItemFNumber3,ListItemFNumber4,ListItemFNumber5:String;
    P_i:boolean;

    qry: TADOQuery;
    P_FItemListId:string;
    P_FProductID_BOM,P_MaxNum,P_Isleaf:Integer;
    P_FProductID:string;

    { Private declarations }



 //   Procedure MyItemList(Sender: TObject);

  public
  P_Parts,P_Sort: string;
    { Public declarations }
  end;

var
  Frm_DesignBOM: TFrm_DesignBOM;
  title,title1,title2,title3,bz:string;

implementation

uses FRMDATA, COMMON, FrmSelect, ProgBar, PROGRASS;

{$R *.dfm}


function TFrm_DesignBOM.DelRdWorkBOM: bool;
var
 qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Delete from T_WorkBOM where FFullNumber like :FFullNumber';
    qry.Parameters.FindParam('FFullNumber').value:=ListItemFNumber3+'%';
    result:=qry.ExecSQL>=1;
  finally
    qry.Free;
  end;
end;

function TFrm_DesignBOM.DelRdTake: bool;
var
 qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Delete from T_DesignTake where FTakeID=:FTakeID';
    with qry.Parameters do
    begin
      FindParam('FTakeID').value:=mdata_M2['FTakeID'];
    end;
    result:=qry.ExecSQL>=1;
  finally
    qry.Free;
  end;
end;


procedure TFrm_DesignBOM.PartsSort;
var
  proc:TADOStoredProc;
begin
  proc:=TADOStoredProc.Create(self);
  proc.ConnectionString:=mdlData.ReadConnStr;
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
    proc.ExecProc;
  finally
     ;
  end;
  Proc.Free;
end;

procedure TFrm_DesignBOM.FormResize(Sender: TObject);
begin
  inherited;
  L_title.Caption:='设计BOM操作';
  Self.Caption:='设计BOM操作';
end;

procedure TFrm_DesignBOM.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=cafree;
  Frm_DesignBOM:=nil;
end;

procedure TFrm_DesignBOM.TB_EXIT1Click(Sender: TObject);
begin
  inherited;
  self.Close;
end;

procedure TFrm_DesignBOM.MyTreeViewChange(Sender: TObject; Node: TTreeNode);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  If Node = nil then Exit;
  with PTree(Node.Data)^ do
  begin
    ListItemFNumber:=trim(PTree(Node.Data).FNumber);
    P_th:=PTree(Node.Data).Caption;    //部件级别  001
    P_FProductID_BOM:=PTree(Node.Data).FProductID;
    Mdata.DisableControls;
    cxGV.DataController.DataModeController.GridMode:=True;
    ShowPrograss('正在提取数据'+P_th+'定额数据，请稍候……',self);

    If PTree(Node.Data).Isleaf>1 then
    begin
      If MyItemList(qry,Mdata,'V_DesignBOM_Structure','FFullNumber',ListItemFNumber,'') then
      begin
        cxGvColumn(cxGv,Mdata);
        mdata.First;
      end;

       //是否审核
      try
        qry.SQL.Text:='select * from T_ItemList  with(nolock) where FFullNumber like :FFullNumber and FSortStatus=3';
        qry.Parameters.FindParam('FFullNumber').value:=ListItemFNumber+'%';
        qry.open;
      finally
        ;
      end;
      If qry.RecordCount>0 then
      begin
        TB_PartsSort.Enabled:= False;
      end
      else
      begin
        TB_PartsSort.Enabled:= mdlData.PermissionCheckRights(TFrm_DesignBOM.ClassName,'修改');
      end;
      If mdlData.PermissionCheckRights(TFrm_DesignBOM.ClassName,'新增')=True then  //
      begin
      //分档案号
      try
        qry.SQL.Text:='select * from VT_FileItem with(nolock) where FDepartmentID=:FDepartmentID and FItemNumber=:FItemNumber order by FItemNumber ';
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
        qry.SQL.Text:='select * from VT_DesignBOM  with(nolock) where FFullNumber=:FFullNumber ';
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
     end;//
    end
    else
    begin
      mdata.Close;
    end;
    If PTree(Node.Data).Isleaf>0 then
    begin
       TB_Parts.Enabled:=True;
       TB_cldy.Enabled:=True;
    end
    else
    begin
      TB_Parts.Enabled:=False;
      TB_cldy.Enabled:=False;
    end;
    cxGV.DataController.DataModeController.GridMode:=False;
    mdata.EnableControls;

    qry.SQL.Text:='Select Min(FInputStartDate) as FInputStartDate from V_ItemList with(nolock) where FFullNumber like :FFullNumber and FIsFinsh=1';
    qry.Parameters.FindParam('FFullNumber').value:=ListItemFNumber+'%';
    qry.open;
    If (qry.RecordCount>0) then
    begin
      stbMsg.Caption:='提示信息：设计定额【'+P_th+'】导入最早日期：'+'【'+qry.FieldByName('FInputStartDate').AsString+'】';
      stbBar.Refresh;
    end;
  end;

  If (E_FBranchFileNo1.Text<>'') and (mdlData.PermissionCheckRights(TFrm_DesignBOM.ClassName,'新增')=True) then
    TB_Take.Enabled:=True
  else
    TB_Take.Enabled:=False;


end;

procedure TFrm_DesignBOM.FormCreate(Sender: TObject);
begin
  inherited;
  P_Parts:='FWorkParts';
  P_Sort:='二级图号';

  TB_Edit.Enabled:= mdlData.PermissionCheckRights(TFrm_DesignBOM.ClassName,'修改');
 // TB_PartsSort.Enabled:= mdlData.PermissionCheckRights(TFrm_DesignBOM.ClassName,'修改');
  TB_Audit.Enabled:= mdlData.PermissionCheckRights(TFrm_DesignBOM.ClassName,'审核');

  // 设总
  TB_Take.Enabled:= mdlData.PermissionCheckRights(TFrm_DesignBOM.ClassName,'新增');
  TS_Take.TabEnabled:= mdlData.PermissionCheckRights(TFrm_DesignBOM.ClassName,'查看');
  TB_DelTake.Enabled:= mdlData.PermissionCheckRights(TFrm_DesignBOM.ClassName,'新增');
  P_Task.Visible:= mdlData.PermissionCheckRights(TFrm_DesignBOM.ClassName,'新增');
  E_FBranchFileNo1.Enabled:= mdlData.PermissionCheckRights(TFrm_DesignBOM.ClassName,'新增');
  E_FPartsNumber1.Enabled:= mdlData.PermissionCheckRights(TFrm_DesignBOM.ClassName,'新增');
  TB_Audit.Enabled:= mdlData.PermissionCheckRights(TFrm_DesignBOM.ClassName,'审核');
  //入库清单


end;

procedure TFrm_DesignBOM.TB_RefClick(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If UserFDepartmentsort=1 then //事业部
  begin
    If not TreeVeiwListWhere(qry,MyTreeView,'VT_DesignBOM',' and FK3ID='+IntToStr(UserFK3ID) ) then
    begin
      Application.MessageBox(PChar('树型结构显示错误，请联系开发人员'), '错误', MB_OK +MB_ICONSTOP);
    end;
  end;
  If UserFDepartmentsort=3 then   //公共平台
  begin
    If not TreeVeiwListWhere(qry,MyTreeView,'VT_DesignBOM',' ') then
    Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;



{  If not TreeVeiwListWhere(qry,MyTreeView,'VT_DesignBOM',' and FK3ID='+IntToStr(UserFK3ID) ) then
  begin
    Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;
  }
end;

procedure TFrm_DesignBOM.TB_updateClick(Sender: TObject);
var
  IsEdit:bool;
  qry: TADOQuery;
  I_index:integer;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  I_index:=mData.RecNo ;
  Mdata.Edit;
  Mdata.Post;
  If ShowMsg('是否对已修改部件类别进行批量更新？更新后不可恢复！','提示') then
  begin
    with mdata do
    begin
      mData.DisableControls;
      First;
      try
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

  If not MyItemList(qry,Mdata,'V_DesignBOM_Structure','FFullNumber',ListItemFNumber,'FFullNumber') then
  begin
    mdata.Open;
   end;

 // Self.P_select;
  TB_update.Visible:=False;
  If (I_index<mData.RecordCount) and (I_index<>-1) then
     mData.RecNo :=I_index
  else
     mData.Last;

end;

procedure TFrm_DesignBOM.CB_bjlbPropertiesChange(Sender: TObject);
begin
  inherited;
  If CB_Parts.Text='材料' then
    P_Parts:='FItemNumber';
  If CB_Parts.Text='部件' then
    P_Parts:='FParts';
  If CB_Parts.Text='部件类别' then
    P_Parts:='FPartsSort';
  If CB_Parts.Text='企管部件类别' then
    P_Parts:='FManageParts';
  If CB_Parts.Text='入库部件类别' then
    P_Parts:='FWorkParts';
  If CB_Parts.Text='生产部件类别' then
    P_Parts:='FMakeParts';
  If CB_Parts.Text='排产部件类别' then
    P_Parts:='FPlanParts';

  If CB_Parts.Text='二级图号' then
    P_Parts:='FPartsNumber';
  If CB_Parts.Text='一级图号' then
    P_Parts:='FItemNumber';


end;

procedure TFrm_DesignBOM.cxGridExit(Sender: TObject);
begin
  inherited;
  If TB_update.Visible then
  If messagedlg('数据已修改是否更新？',mtInformation,[mbyes,mbno],0)=mryes then
    TB_update.Click;

end;

procedure TFrm_DesignBOM.MDataAfterEdit(DataSet: TDataSet);
begin
  inherited;
  DataSet['IsEdit']:=True;
  TB_update.Visible:=True;

end;

procedure TFrm_DesignBOM.TB_5Click(Sender: TObject);
var
  proc:TADOStoredProc;
  s1,s2:Ttime;
  a:string;

begin
  proc:=TADOStoredProc.Create(self);
  proc.ConnectionString:=mdlData.ReadConnStr;
  proc.CommandTimeout:=500;
  ShowPrograss('正在汇总定额数据，请稍候……',self);
  s1:=now();
  a:='';

  try
    proc.ProcedureName:='P_Switch;1';
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=50;
      name := '@FScenarioNum';
      value:=CB_Sum.Text;
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftInteger;
      Direction := pdinput;
      name := '@FProductID';
      //value:=1;
      value:=P_FProductID_BOM;
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
      name := '@type';
      value:=CB_Type.Properties.Caption;
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=50;
      name := '@Parts';
      value:=P_Parts;
    end;

    proc.Open;
    s2:=now();
    Messagedlg('【'+a+'】部件汇总完毕！所用时间：【'+(TimeToStr(s1-s2))+'】',mtInformation,[mbok],0);
    //cxGV1.DataController.DataSource.DataSet:=Proc;
    mdata1.CopyFromDataSet(proc);
    cxGvColumn(cxGv,Mdata1);
    mdata1.First;
  finally
     ;
  end;


  If CB_Print.Checked=True then
  begin
    bz:='备注：其他件指外购件(不含紧固件)、阴极线、电磁锤振打器。';
   // title:='材料消耗工艺定额汇总报表('+CB_sum.Text+')';
    title:='材料消耗工艺定额汇总报表';
    frDBDataSet.DataSource:=ds_mdata1;
    frReport.LoadFromFile(ExtractFileDir(Application.ExeName)+'\Report_DesignBOM_Scenario.frf');
    frReport.ShowReport;
  end;


 { Title1:='统计图号：【'+mdata['FItemNumber']+'】'+'/【'+mdata['FPartsNumber']+'】';
  Title2:='用户名称：【'+mdata['FClientShortName']+'】';
  Title:='本体定额材料物资采购汇总表';
  FrReport.LoadFromFile(ExtractFileDir(Application.ExeName)+'\Report_DesignBOM_PartsSum.frf');
  FrReport.ShowReport;  }
  Proc.Free;

end;

procedure TFrm_DesignBOM.CB_TypeClick(Sender: TObject);
begin
  inherited;
  If CB_Type.Checked=True then
    CB_Type.Properties.Caption:='汇总'
  else
  begin
    CB_Type.Properties.Caption:='明细';
    CB_Print.Checked:=False;
  end;

end;

procedure TFrm_DesignBOM.CB_PrintClick(Sender: TObject);
begin
  inherited;
  If CB_Print.Checked=True then
    CB_Type.Properties.Caption:='汇总';

end;

procedure TFrm_DesignBOM.PC_1Change(Sender: TObject);
begin
  inherited;
  If PC_1.ActivePage=TS_K3 then
     V_k3.Active:=True;
  If PC_1.ActivePage=TS_Take then
     TB_Ref3.Click;

end;

procedure TFrm_DesignBOM.MyTreeViewExpanding(Sender: TObject;
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
  If UserFDepartmentsort=1 then //事业部
  begin
    qry.SQL.Text:='Select FNumber, FParentNumber,FName,FProductID,FPartsCode,FItemListID,'
                 +'Isleaf from VT_DesignBOM with(nolock) where FParentNumber= '''
                 +PTree(Node.Data).ID+''' and FK3ID=:FK3ID '
                 +' order by FItemNumber,FFullNumber';
    qry.Parameters.FindParam('FK3ID').value:=UserFK3ID;
  end;
  If UserFDepartmentsort=3 then   //公共平台
  begin
    qry.SQL.Text:='Select FNumber, FParentNumber,FName,FProductID,FPartsCode,FItemListID,'
                 +'Isleaf from VT_DesignBOM with(nolock) where FParentNumber= '''
                 +PTree(Node.Data).ID+'''   order by FItemNumber,FFullNumber';
  end;

  {qry.SQL.Text:='Select FNumber, FParentNumber,FName,FProductID,FPartsCode,FItemListID,'
               +'Isleaf from VT_DesignBOM with(nolock) where FParentNumber= '''
               +PTree(Node.Data).ID+''' and FK3ID=:FK3ID '
               +' order by FItemNumber,FFullNumber';
  qry.Parameters.FindParam('FK3ID').value:=UserFK3ID;
  }
  qry.open;

  PTree(Node.Data).Flag := cLoadFlag;                  // 设置已加载标志
  while not qry.Eof do
  begin
    New(P);
    P.ID := qry.FieldByName('FNumber').AsString;
    P.ParentID := qry.FieldByName('FParentNumber').AsString;
    P.FNumber:=qry.FieldByName('FNumber').AsString;
    P.FProductID:=qry.FieldByName('FProductID').Value;
    P.Isleaf := qry.FieldByName('Isleaf').Value;
    P.Caption := qry.FieldByName('FName').AsString;
    P.FNumber1:=qry.FieldByName('FPartsCode').AsString;

    P.Flag := cNoLoadFlag;                            // 新节点，未加载标志
    with MyTreeView.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('Isleaf').value;
    end;
    qry.Next;
  end;
  cxGvColumn(cxGv,Mdata);


end;

procedure TFrm_DesignBOM.TB_EXITClick(Sender: TObject);
begin
  inherited;
  self.Close;
end;

procedure TFrm_DesignBOM.frReportGetValue(const ParName: String;
  var ParValue: Variant);
begin
  inherited;
  If ParName='title' then
    ParValue:=title;
  If ParName='title1' then
    ParValue:=title1;
  If ParName='title2' then
    ParValue:=title2;
  If ParName='P_Parts' then
    ParValue:=P_Parts;
  If ParName='P_Sort' then
    ParValue:=P_Sort;
  If ParName='bz' then
    ParValue:=bz;

end;

procedure TFrm_DesignBOM.ActPartsSortExecute(Sender: TObject);
var
  qry:TADOquery;
  proc:TADOStoredProc;
  s1,s2:Ttime;
  a,b:string;
  I_index:Integer;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  proc:=TADOStoredProc.Create(self);
  proc.ConnectionString:=mdlData.ReadConnStr;
  proc.CommandTimeout:=500;
  If mData.RecordCount<=0 then
     Exit;
  I_index:=mdata2.RecNo ;
  s1:=now();

  s1:=now();

  Mdata.DisableControls;
  cxGV.DataController.DataModeController.GridMode:=True;

  If ShowMsg('是否对【'+P_th+'】此图号进行部件类别自动划分?','提示') then
  begin
    try
     // ShowPrograss('正在对设计BOM进行部件划分，请稍候……',self);
      a:='【'+mdata['FItemNumber']+'】'+'/【'+mdata['FPartsNumber']+'】';
      ShowPrograss('正在对'+a+'设计BOM进行部件划分，请稍候……',self);

      Self.PartsSort;

      If not MyItemList(qry,Mdata,'V_DesignBOM_Structure','FFullNumber',ListItemFNumber,'FFullNumber') then
      begin
        mdata.Open;
      end;
      S2:=now();
      b:=FormatDateTime('hh:mm:ss',s2-s1);
      Messagedlg(''+a+''+'设计BOM部件划分完毕！所用时间：【'+b+'】',mtInformation,[mbok],0);
    finally
       ;
    end;
  end;
  cxGV.DataController.DataModeController.GridMode:=False;
  mdata.EnableControls;
  If (I_index<mdata.RecordCount) and (I_index<>-1) then
     mdata.RecNo :=I_index
  else
     mdata.Last;
end;

procedure TFrm_DesignBOM.ActPartsExecute(Sender: TObject);
var
  proc:TADOStoredProc;
  bz,a:String;
begin
  proc:=TADOStoredProc.Create(self);
  proc.ConnectionString:=mdlData.ReadConnStr;
  proc.CommandTimeout:=500;
  If RzRG_1.ItemIndex=0 then
     P_Sort:='部件汇总';
  If RzRG_1.ItemIndex=1 then
     P_Sort:='材料汇总';
  If RzRG_1.ItemIndex=2 then
     P_Sort:='台套汇总';
  //a:='【'+mdata['FItemNumber']+'】'+'/【'+mdata['FPartsNumber']+'】';
  ShowPrograss('正在汇总'+P_th+'定额数据，请稍候……',self);
  try
    proc.ProcedureName:='P_DesignBOM_SUM;1';
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
      name := '@FPartsSort';
      value:=P_Parts;
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=50;
      name := '@Sort';
      value:=P_Sort;
    end;
    proc.Open;
    mdata1.CopyFromDataSet(proc);
    cxGvColumn(cxGv1,Mdata1);
  finally
     ;
  end;
  If RzRG_1.ItemIndex=0 then
  begin
    Title1:='统计图号：【'+mdata1['FItemNumber']+'】'+'/【'+mdata1['FPartsNumber']+'】';
    Title2:='用户名称：【'+mdata1['FClientFullName']+'】';
    Title:='材料消耗工艺定额汇总报表';
    bz:='备注：其他件指外购件(不含紧固件)、阴极线、电磁锤振打器。';
    frDBDataSet.DataSource:=ds_mdata1;
    FrReport.LoadFromFile(ExtractFileDir(Application.ExeName)+'\Report_DesignBOM_PartsSortSum.frf');
 end;

  If RzRG_1.ItemIndex=1 then
  begin
    Title1:='统计图号：【'+mdata1['FItemNumber']+'】'+'/【'+mdata1['FPartsNumber']+'】';
    Title2:='用户名称：【'+mdata1['FClientFullName']+'】';
    Title:='本体定额材料物资采购汇总表';
    frDBDataSet.DataSource:=ds_mdata1;
    FrReport.LoadFromFile(ExtractFileDir(Application.ExeName)+'\Report_DesignBOM_PartsSum.frf');
  end;
  If RzRG_1.ItemIndex=2 then
  begin
    Title1:='统计图号：【'+mdata1['FItemNumber']+'】';
    Title2:='用户名称：【'+mdata1['FClientFullName']+'】';
    Title:='本体定额台套材料消耗汇总表';
    frDBDataSet.DataSource:=ds_mdata1;
    FrReport.LoadFromFile(ExtractFileDir(Application.ExeName)+'\Report_DesignBOM_PartsSum.frf');
  end;
 FrReport.ShowReport;
 Proc.Free;
 PC_2.ActivePage:=TS_Sort;

end;

procedure TFrm_DesignBOM.ActcldyExecute(Sender: TObject);
var
  proc:TADOStoredProc;
  s1,s2:Ttime;
  a,b:string;

begin
  proc:=TADOStoredProc.Create(self);
  proc.ConnectionString:=mdlData.ReadConnStr;
  proc.CommandTimeout:=500;
  //a:='【'+mdata['FItemNumber']+'】'+'/【'+mdata['FPartsNumber']+'】';

  ShowPrograss('正在汇总'+P_th+'定额数据，请稍候……',self);
  s1:=now();

  try
    proc.ProcedureName:='P_Switch;1';
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=50;
      name := '@FScenarioNum';
      value:=CB_Sum.Text;
    end;
  {  with proc.Parameters.AddParameter do
    begin
      DataType := ftInteger;
      Direction := pdinput;
      name := '@FProductID';
      //value:=1;
      value:=P_FProductID_BOM;
    end; }
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
      name := '@type';
      value:=CB_Type.Properties.Caption;
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=50;
      name := '@Parts';
      value:=P_Parts;
    end;
    proc.Open;
    s2:=now();
    b:=FormatDateTime('hh:mm:ss',s2-s1);
    Messagedlg(''+a+'部件汇总完毕！所用时间：【'+b+'】',mtInformation,[mbok],0);

    //cxGV1.DataController.DataSource.DataSet:=Proc;
    mdata1.CopyFromDataSet(proc);
    cxGvColumn(cxGv1,Mdata1);
    mdata1.First;
  finally
     ;
  end;


  If CB_Print.Checked=True then
  begin
    bz:='备注：其他件指外购件(不含紧固件)、阴极线、电磁锤振打器。';
   // title:='材料消耗工艺定额汇总报表('+CB_sum.Text+')';
    title:='材料消耗工艺定额汇总报表';
    frDBDataSet.DataSource:=ds_mdata1;
    frReport.LoadFromFile(ExtractFileDir(Application.ExeName)+'\Report_DesignBOM_Scenario.frf');
    frReport.ShowReport;
  end;


 { Title1:='统计图号：【'+mdata['FItemNumber']+'】'+'/【'+mdata['FPartsNumber']+'】';
  Title2:='用户名称：【'+mdata['FClientShortName']+'】';
  Title:='本体定额材料物资采购汇总表';
  FrReport.LoadFromFile(ExtractFileDir(Application.ExeName)+'\Report_DesignBOM_PartsSum.frf');
  FrReport.ShowReport;  }
  Proc.Free;
  PC_2.ActivePage:=TS_Sort;

end;

procedure TFrm_DesignBOM.ActEditExecute(Sender: TObject);
begin
  inherited;

  cxGV.OptionsData.Editing:=True;
  FPartsSort.Options.Editing:=True;
  TB_Edit.Enabled:=False;

end;

procedure TFrm_DesignBOM.FormShow(Sender: TObject);
begin
  inherited;
  TB_Ref.Click;
end;

procedure TFrm_DesignBOM.FPartsSortPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='select distinct FPartsSort from T_PartsSort with(nolock) where FProductID=:FProductID and FPartsCode=:FPartsCode order by FPartsSort ';
   // qry.Parameters.FindParam('FProductID').value:=P_FProductID_BOM;
    qry.Parameters.FindParam('FProductID').value:=mdata['FProductID'];
    qry.Parameters.FindParam('FPartsCode').value:=mdata['FPartsCode'];
    qry.Open;
  finally
   ;
  end;

  selValue:=select('选择部件类别','FPartsSort','FPartsSort','FPartsSort','FPartsSort',qry);
  If (Length(selValue)>0) then
  begin
    mdata.Edit;
    mdata['FPartsSort']:=qry.FieldByName('FPartsSort').Value;
    mdata.Post;
  end;


end;

procedure TFrm_DesignBOM.E_FBranchFileNo1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='select * from VT_FileItem with(nolock) where FDepartmentID=:FDepartmentID and FItemNumber=:FItemNumber order by FItemNumber ';
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
    E_FFileItemID.Text:=qry.FieldByName('FFileItemID').Value;

  end;
  If (E_FBranchFileNo1.Text<>'') and (mdlData.PermissionCheckRights(TFrm_DesignBOM.ClassName,'新增')=True) then
    TB_Take.Enabled:=True
  else
    TB_Take.Enabled:=False;


end;

procedure TFrm_DesignBOM.ActTakeExecute(Sender: TObject);
var
  proc:TADOStoredProc;
  qry: TADOQuery;
begin
  proc:=TADOStoredProc.Create(self);
  proc.ConnectionString:=mdlData.ReadConnStr;
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
   // qry.SQL.Text:='select * from V_DesignBOM_Structure with(nolock) where FFullNumber like :FFullNumber and FPartsSort like ''%外购清单%''';
    qry.SQL.Text:='select * from V_DesignBOM_Structure with(nolock) where FFullNumber like :FFullNumber '
    +'and (FPartsSort like ''%外购件'' or FPartsSort like ''%紧固件'' or FPartsSort like ''%事业部采购'') ';
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
   // qry.SQL.Text:='select * from V_DesignTakeList with(nolock) where FBranchFileNo=:FBranchFileNo and FPartsNumber=:FPartsNumber';
    qry.SQL.Text:='select * from V_DesignTakeList with(nolock) where FBranchFileNo=:FBranchFileNo and FTakeNumber=:FTakeNumber';
    qry.Parameters.FindParam('FBranchFileNo').value:=Trim(E_FBranchFileNo1.Text);
    qry.Parameters.FindParam('FTakeNumber').value:=Trim(E_FPartsNumber1.Text);
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
        name := '@FFileItemID';
        value:=E_FFileItemID.Text;
      end;
      with proc.Parameters.AddParameter do
      begin
        DataType := ftInteger;
        Direction := pdinput;
        size:=20;
        name := '@FItemListId';
        value:=E_FItemListID1.Text;
      end;
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
        DataType := ftString;
        Direction := pdinput;
        size:=20;
        name := '@TwoNum';
        value:=ListItemFNumber;
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
      mdata.CopyFromDataSet(proc);
      cxGvColumn(cxGv,Mdata);
      Messagedlg('外购件请单数据已经成功生成！',mtInformation,[mbok],0);
      E_FBranchFileNo1.Enabled:=False;
    finally
       ;
    end;
  end;

end;

procedure TFrm_DesignBOM.TB_Ref3Click(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If not TreeVeiwListUserID(qry,MyTreeView_Date,'VT_DesignTake',UserFDepartmentID) then
  begin
    Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;
end;

procedure TFrm_DesignBOM.MyTreeView_DateExpanding(Sender: TObject;
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

  qry.SQL.Text:='Select * from VT_DesignTake with(nolock) where FParentNumber= '''
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

procedure TFrm_DesignBOM.MyTreeView_DateChange(Sender: TObject;
  Node: TTreeNode);
var
  qry:TADOquery;

begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If Node = nil then Exit;
  with PTree(Node.Data)^ do
  begin
    ListItemFNumber2:=trim(PTree(Node.Data).FNumber);
    P_th2:=PTree(Node.Data).Caption;
    P_Isleaf:=PTree(Node.Data).Isleaf;


    If PTree(Node.Data).Isleaf>=1 then
    begin
      {If MyItemList(qry,Mdata_M2,'V_DesignTake','FDepartmentName+'';''+FCarryOut+'';''+FTakeStatusNotes+'';''+FItemlb+'';''+FBranchItemNumber+'';''+FPartsCode+'';''',
                   ListItemFNumber2,'FBranchItemNumber,FPartsCode') then

      If MyItemList(qry,Mdata2,'V_DesignTakeList','FDepartmentName+'';''+FCarryOut+'';''+FTakeStatusNotes+'';''+FItemlb+'';''+FBranchItemNumber+'';''+FPartsCode+'';''',
                    ListItemFNumber2,'FBranchItemNumber,FPartsCode,th,mc,gg') then
       }
      If MyItemList(qry,Mdata_M2,'V_DesignTake','FFullNumber',
                    ListItemFNumber2,'FFullNumber') then
      If MyItemList(qry,Mdata2,'V_DesignTakeList','FFullNumber',
                    ListItemFNumber2,'FFullNumber,FTakeListNum') then


    end
    else
    begin
      Mdata_M2.Close;
      mdata2.Close;
    end;
  end;
end;

procedure TFrm_DesignBOM.TB_Prin3Click(Sender: TObject);
begin
  inherited;
  Mdata2.SortedField:='FTakeNumber';
  frDBDataSet.DataSet:=Mdata2;
  FrReport.LoadFromFile(ExtractFileDir(Application.ExeName)+'\Report_DesignBOM_Take.frf');
  FrReport.ShowReport;

end;

procedure TFrm_DesignBOM.ActDelTakeExecute(Sender: TObject);
var
  qry:TADOQuery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  {If (mdata2.RecordCount<1) then
     Exit;

  try
    qry.SQL.Text:='Select * from V_DesignOrderList with(nolock) where FItemListID=:FItemListID';
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
   }
  If application.MessageBox(Pchar('警告：是否删除采购申请单号为：【'+Trim(Mdata_M2['FTakeNumber'])+'】的数据？'+chr(13)+chr(13)
                           +'删除数据操作将不可恢复，确定要删除本单据吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
  If application.MessageBox(Pchar('警告：是否删除采购申请单号为：【'+Trim(Mdata_M2['FTakeNumber'])+'】的数据？'+chr(13)+chr(13)
                           +'删除数据操作将不可恢复，确定要删除本单据吗？'),'再次警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then

  begin
    //单据删除
    If not DelRdTake then
    begin
      application.MessageBox('删除单据失败！','系统提示',MB_ICONINFORMATION);
      mdlData.conn.RollbackTrans;
      Exit;
    end;
  end;
  mdata2.Close;
  qry.Free;
end;

procedure TFrm_DesignBOM.ToolButton3Click(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  ShowPrograss('正在更新数据，请稍候……',self);
  try
    qry.SQL.Text:='select * from V_DesignBOM_Structure with(nolock) where  FFullNumber like :FFullNumber order by FFullNumber ';
    qry.Parameters.FindParam('FFullNumber').value:=ListItemFNumber+'%';
    qry.Open;
  finally
    ;
  end;
  Mdata.DisableControls;

  mdata.CopyFromDataSet(qry);
  mdata.Open;
  mdata.First;
  mdata.EnableControls;

end;

procedure TFrm_DesignBOM.ActAuditExecute(Sender: TObject);
var
 qry,qry1:TADOquery;
 P_ItemID,P_ItemListID:Integer;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry1:=TAdoQuery.Create(self);
  qry1.ConnectionString:=mdlData.ReadConnStr;

  try
    qry1.SQL.Text:='select * from T_ItemList with(nolock) where FFullNumber like :FFullNumber';
    qry1.Parameters.FindParam('FFullNumber').value:=ListItemFNumber+'%';
    qry1.open;
  finally
    ;
  end;
  If qry1.RecordCount>0 then
  begin
    P_ItemID:= qry1.FieldByName('FItemID').AsInteger;
    P_ItemListID:=qry1.FieldByName('FItemListID').AsInteger;
  end;

  If (TB_Audit.Caption='审核')  then
  begin
    If application.MessageBox(Pchar('警告：是否审核【'+P_th+'】的部件划分类别？'+chr(13)+chr(13)
                                   +'确定要审核本部件吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      If qry1.RecordCount=1 then
      begin
        try
          qry.SQL.Text:='Update T_ItemList Set FIsPartsSort=1 where FItemListID=:FItemListID';
          qry.Parameters.FindParam('FItemListID').value:=P_ItemListID;
          qry.ExecSQL;
        finally
           ;
        end;
      end
      else
      begin
        try
          qry.SQL.Text:='Update T_ItemList Set FIsPartsSort=1 where FItemID=:FItemID';
          qry.Parameters.FindParam('FItemID').value:=P_ItemID;
          qry.ExecSQL;
        finally
           ;
        end;
      end;
      TB_Audit.Caption:='反审核';
      application.MessageBox('审核完毕！','系统提示',MB_ICONINFORMATION);
    end;
    Exit;
  end;
  If (TB_Audit.Caption='反审核')  then
  begin
    If application.MessageBox(Pchar('警告：是否反审核【'+P_th+'】的部件划分类别？'+chr(13)+chr(13)
                                   +'确定要反审核本部件吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      If qry1.RecordCount=1 then
      begin
        try
          qry.SQL.Text:='Update T_ItemList Set FIsPartsSort=0  where FItemListID=:FItemListID';
          qry.Parameters.FindParam('FItemListID').value:= P_ItemListID;
          qry.ExecSQL;
        finally
           ;
        end;
      end
      else
      begin
        try
          qry.SQL.Text:='Update T_ItemList Set FIsPartsSort=0  where FItemID=:FItemID';
          qry.Parameters.FindParam('FItemID').value:= P_ItemID;
          qry.ExecSQL;
        finally
           ;
        end;
      end;
      TB_Audit.Caption:='审核';
      application.MessageBox('反审核完毕！','系统提示',MB_ICONINFORMATION);
    end;
    Exit;
  end;



end;

procedure TFrm_DesignBOM.cxGridContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
    GV:='cxGV';
    Gm:='mdata';
    Gr:='cxGrid';
    Act_Menu_Set.Execute;
end;

procedure TFrm_DesignBOM.cxGrid1ContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
    GV:='cxGV1';
    Gm:='mdata1';
    Gr:='cxGrid1';
    Act_Menu_Set.Execute;
end;

procedure TFrm_DesignBOM.N_EditClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_DesignBOM.N_FilterClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_DesignBOM.N_SortClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_DesignBOM.N_GroupClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_DesignBOM.N_SetClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_DesignBOM.N_OutClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_DesignBOM.Act_MenuExecute(Sender: TObject);
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

procedure TFrm_DesignBOM.Act_Menu_SetExecute(Sender: TObject);
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

procedure TFrm_DesignBOM.ToolButton2Click(Sender: TObject);
var
  qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Select FItemNumber,FPartsCode,FPartsNumber,FPartsSort as FParts,FNumber,FName,FModel,UnitName,sum((FPriceQry/FQry)*FSumQry) as FPriceQry '
                 +'from V_DesignBOM_Structure with(nolock) where FFullNumber like :FFullNumber and (FPartsSort like ''%外购件%'' or FPartsSort like ''%紧固件%'') and IsLeaf=1 '
                 +'group by FItemNumber,FPartsCode,FPartsNumber,FPartsSort,FNumber,FName,FModel,UnitName';
    qry.Parameters.FindParam('FFullNumber').value:=ListItemFNumber+'%';
    qry.Open;
  finally
   ;
  end;
  MData1.CopyFromDataSet(qry);
  MData1.Active:=True;
  cxGvColumn(cxGv1,Mdata1);
  PC_2.ActivePage:=TS_Sort;

end;

procedure TFrm_DesignBOM.ToolButton4Click(Sender: TObject);
var
  i,h,k,s,n,ReNum,ReNumLoop,R_Count,ReNumH:Integer;
  ExcelApp,MyWorkBook,mysheet,vLastSheet: Variant;
  filepath,savefilepath,Sqlstr,copystart,copyend,copystart1,aa,copystart_H,copyend_H,copystart1_H:string;
  ListQry:Tadoquery;
  qry,qryList:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.EnableBCD:=False;//小数位数>4
  qryList:=TAdoQuery.Create(self);
  qryList.ConnectionString:=mdlData.ReadConnStr;
  qryList.EnableBCD:=False;//小数位数>4

    try
      qry.SQL.Text:='Select FItemNumber,FPartsCode,FPartsNumber,FPartsSort as FParts,FNumber,FName,FModel,UnitName,sum((FPriceQry/FQry)*FSumQry) as FPriceQry '
                   +'from V_DesignBOM_Structure with(nolock) where FFullNumber like :FFullNumber and (FPartsSort like ''%外购件%'' or FPartsSort like ''%紧固件%'') and IsLeaf=1 '
                   +'group by FItemNumber,FPartsCode,FPartsNumber,FPartsSort,FNumber,FName,FModel,UnitName';
      qry.Parameters.FindParam('FFullNumber').value:=ListItemFNumber+'%';
      qry.Open;
    finally
      ;
    end;
  MData1.CopyFromDataSet(qry);
  MData1.Active:=True;
  cxGvColumn(cxGv1,Mdata1);
  PC_2.ActivePage:=TS_Sort;
  filepath:=Extractfilepath(application.ExeName)+'外购件交接与采购申请模版.xls';
  if (MData1.Active) and (MData1.recordcount>0) then
  Begin
    If ShowMsg('是否导出《外购件交接与采购申请》？请选择导出文件的路径！','提示') then
    begin
      SaveDialog1.FileName:='外购件交接与采购申请('+MData1['FItemNumber']+')';
      SaveDialog1.Filter:='.xls';
      SaveDialog1.Execute;

      if (MData1.FieldByName('FItemNumber').AsString<>'') Or (MData1.FieldByName('FItemNumber').AsString<>Null) then
          savefilepath:=SaveDialog1.FileName+'.xls';

      if FileExists(savefilepath) then
        DeleteFile(savefilepath) ;
    end
    else
       Exit;

    ExcelApp:= CreateOleObject('Excel.Application' );
    ExcelApp.DisplayAlerts:=False;                  //不显示提示框
    MyWorkBook:=ExcelApp.WorkBooks.Open( filepath );   //打开模版
    //ExcelApp.Visible:=True;

    try
      qry.SQL.Text:='select distinct FItemNumber from V_DesignBOM_Structure with(nolock) where FFullNumber like :FFullNumber and FItemNumber is not  null ';
      qry.Parameters.FindParam('FFullNumber').value:=ListItemFNumber+'%';
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
       //汇总信息
      try
        qryList.SQL.Text:='Select FItemNumber,FPartsCode,FPartsNumber,FPartsSort as FParts,FNumber,FName,FModel,UnitName,sum((FPriceQry/FQry)*FSumQry) as FPriceQry '
                     +'from V_DesignBOM_Structure with(nolock) where FFullNumber like :FFullNumber and (FPartsSort like ''%外购件%'' or FPartsSort like ''%紧固件%'') and IsLeaf=1 '
                     +'group by FItemNumber,FPartsCode,FPartsNumber,FPartsSort,FNumber,FName,FModel,UnitName';
        qryList.Parameters.FindParam('FFullNumber').value:=ListItemFNumber+'%';
        qryList.Open;
      finally
         ;
      end;

      vLastSheet:=MyWorkBook.Sheets[MyWorkBook.Sheets.Count];
      MyWorkBook.Sheets[1].Copy(EmptyParam,vLastSheet);
      MyWorkBook.WorkSheets[k].Name:=IntToStr(k)+MData1['FItemNumber'];
      MyWorkBook.WorkSheets[k].Activate;

      //表头


      //工作薄名称
      MyWorkBook.WorkSheets[k].Name:=MData1.FieldByName('FItemNumber').AsString;
      //评审结果
      i:=2;
      copystart:='A'+IntToStr(i);
      if qryList.recordcount>0 then
      Begin
        if qryList.recordcount>1 then
        Begin
          copystart:='A'+IntToStr(i);
          copystart1:='A'+IntToStr(i+1);
          copyend:='K'+IntToStr(i);  //区域  A:J
          ReNum:=qryList.recordcount-1;
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
          R_Count:=qryList.recordcount;
        end;
        qryList.First;
        while not qryList.Eof do
        begin

         // MyWorkBook.WorkSheets[k].Cells[i,6].Value := qryList.FieldByName('FNumber').Value;
          MyWorkBook.WorkSheets[k].Cells[i,2].Value := qryList.FieldByName('FName').Value;
          MyWorkBook.WorkSheets[k].Cells[i,3].Value := qryList.FieldByName('FModel').Value;
          MyWorkBook.WorkSheets[k].Cells[i,4].Value := qryList.FieldByName('UnitName').Value;
          MyWorkBook.WorkSheets[k].Cells[i,5].Value := qryList.FieldByName('FPriceQry').Value;
          MyWorkBook.WorkSheets[k].Cells[i,10].Value := ''+qryList.FieldByName('FPartsCode').Value;
          qryList.Next;
          i:=i+1;
        end;
      end;
      qry.Next;
      ExcelApp.Visible:=True;
      MyWorkBook.WorkSheets[k].PrintPreview;  //打印
      k:=k+1;
    end;
    MyWorkBook.WorkSheets[1].delete; //删除模版
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

procedure TFrm_DesignBOM.ToolButton6Click(Sender: TObject);
var
  i,h,k,s,n,ReNum,ReNumLoop,R_Count,ReNumH:Integer;
  ExcelApp,MyWorkBook,mysheet,vLastSheet: Variant;
  filepath,savefilepath,Sqlstr,copystart,copyend,copystart1,aa,copystart_H,copyend_H,copystart1_H:string;
  ListQry:Tadoquery;
  qry,qryList:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.EnableBCD:=False;//小数位数>4
  qryList:=TAdoQuery.Create(self);
  qryList.ConnectionString:=mdlData.ReadConnStr;
  qryList.EnableBCD:=False;//小数位数>4

    try
      qry.SQL.Text:='Select FItemNumber,FPartsCode,FPartsName,FPlanParts as FParts,sum(FSuttle*FSumQry) as FSumSuttle '
                   +'from V_DesignBOM_Structure with(nolock) where FFullNumber like :FFullNumber and IsLeaf=1 '
                   +'group by FItemNumber,FPartsCode,FPartsName,FPlanParts order by FPartsCode';
      qry.Parameters.FindParam('FFullNumber').value:=ListItemFNumber+'%';
      qry.Open;
    finally
      ;
    end;
  MData1.CopyFromDataSet(qry);
  MData1.Active:=True;
  cxGvColumn(cxGv1,Mdata1);
  PC_2.ActivePage:=TS_Sort;
  filepath:=Extractfilepath(application.ExeName)+'项目排产任务清单模版.xls';
  if (MData1.Active) and (MData1.recordcount>0) then
  Begin
    If ShowMsg('是否导出《项目排产任务清单》？请选择导出文件的路径！','提示') then
    begin
      SaveDialog1.FileName:='项目排产任务清单('+MData1['FItemNumber']+')';
      SaveDialog1.Filter:='.xls';
      SaveDialog1.Execute;

      if (MData1.FieldByName('FItemNumber').AsString<>'') Or (MData1.FieldByName('FItemNumber').AsString<>Null) then
          savefilepath:=SaveDialog1.FileName+'.xls';

      if FileExists(savefilepath) then
        DeleteFile(savefilepath) ;
    end
    else
       Exit;

    ExcelApp:= CreateOleObject('Excel.Application' );
    ExcelApp.DisplayAlerts:=False;                  //不显示提示框
    MyWorkBook:=ExcelApp.WorkBooks.Open( filepath );   //打开模版
    //ExcelApp.Visible:=True;

    try
      qry.SQL.Text:='select distinct FItemNumber from V_DesignBOM_Structure with(nolock) where FFullNumber like :FFullNumber and FItemNumber is not  null ';
      qry.Parameters.FindParam('FFullNumber').value:=ListItemFNumber+'%';
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
       //汇总信息
      try
        qryList.SQL.Text:='Select FItemNumber,FPartsCode,FPartsName,FPlanParts  as FParts ,sum(FSuttle*FSumQry) as FSumSuttle '
                     +'from V_DesignBOM_Structure with(nolock) where FFullNumber like :FFullNumber and IsLeaf=1 '
                     +'group by FItemNumber,FPartsCode,FPartsName,FPlanParts  order by FPartsCode';
        qryList.Parameters.FindParam('FFullNumber').value:=ListItemFNumber+'%';
        qryList.Open;
      finally
         ;
      end;

      vLastSheet:=MyWorkBook.Sheets[MyWorkBook.Sheets.Count];
      MyWorkBook.Sheets[1].Copy(EmptyParam,vLastSheet);
      MyWorkBook.WorkSheets[k].Name:=IntToStr(k)+MData1['FItemNumber'];
      MyWorkBook.WorkSheets[k].Activate;

      //表头


      //工作薄名称
      MyWorkBook.WorkSheets[k].Name:=MData1.FieldByName('FItemNumber').AsString;
      //评审结果
      i:=2;
      copystart:='A'+IntToStr(i);
      if qryList.recordcount>0 then
      Begin
        if qryList.recordcount>1 then
        Begin
          copystart:='A'+IntToStr(i);
          copystart1:='A'+IntToStr(i+1);
          copyend:='K'+IntToStr(i);  //区域  A:J
          ReNum:=qryList.recordcount-1;
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
          R_Count:=qryList.recordcount;
        end;
        qryList.First;
        while not qryList.Eof do
        begin

          MyWorkBook.WorkSheets[k].Cells[i,2].Value :=qryList.FieldByName('FPartsCode').AsString;
          MyWorkBook.WorkSheets[k].Cells[i,3].Value := qryList.FieldByName('FPartsName').Value;
          MyWorkBook.WorkSheets[k].Cells[i,4].Value := qryList.FieldByName('FParts').Value;
          MyWorkBook.WorkSheets[k].Cells[i,5].Value := qryList.FieldByName('FSumSuttle').Value;
          qryList.Next;
          i:=i+1;
        end;
      end;
      qry.Next;
      ExcelApp.Visible:=True;
      MyWorkBook.WorkSheets[k].PrintPreview;  //打印
      k:=k+1;
    end;
    MyWorkBook.WorkSheets[1].delete; //删除模版
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

end.
