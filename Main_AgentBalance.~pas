unit Main_AgentBalance;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FrmGridBass, ExtCtrls, StdCtrls, DsFancyButton, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  dxmdaset, cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid,
  cxTextEdit, cxDropDownEdit, cxCalendar, cxMaskEdit, cxContainer, cxLabel,
  cxDBLookupComboBox, ADODB, cxButtonEdit, Grids, DBGrids, ComCtrls, RzShellDialogs,
  ToolWin, ImgList, FR_DSet, FR_DBSet, FR_Class, cxRadioGroup, Buttons, Comobj, StrUtils,
  cxGroupBox, cxCheckBox, cxCurrencyEdit, RzPanel, RzSplit, RzTabs,IniFiles,
  TFlatPanelUnit, cxLookAndFeelPainters, cxButtons, cxTimeEdit, jpeg,
  Menus, ActnList,cxGridBandedTableView, RzStatus;

type
  TFrm_AgentBalance = class(TFrm_GridBass)
    MData2: TdxMemData;
    DS_Mdata2: TDataSource;
    ImageList: TImageList;
    frDBDataSet: TfrDBDataSet;
    ADOQuery: TADOQuery;
    DS_Mdata1: TDataSource;
    PC_2: TRzPageControl;
    TS_BalanceList: TRzTabSheet;
    PanelBkGnd: TPanel;
    RzSizePanel1: TRzSizePanel;
    MyTreeView1: TTreeView;
    Panel3: TPanel;
    Panel10: TPanel;
    ToolBar3: TToolBar;
    TB_App: TToolButton;
    TB_Edit: TToolButton;
    TB_Del: TToolButton;
    TB_Ref: TToolButton;
    TB_Out: TToolButton;
    TB_Down: TToolButton;
    TB_Prin: TToolButton;
    TS_WorkList: TRzTabSheet;
    Panel2: TPanel;
    RzSizePanel2: TRzSizePanel;
    MyTreeView2: TTreeView;
    Panel4: TPanel;
    Panel5: TPanel;
    Bevel1: TBevel;
    Panel6: TPanel;
    Image1: TImage;
    L_Caption: TLabel;
    ToolBar2: TToolBar;
    TB_Sel: TToolButton;
    TB_Ref2: TToolButton;
    TB_Down2: TToolButton;
    cxGrid2: TcxGrid;
    cxGV2: TcxGridDBTableView;
    FWorkListNum2: TcxGridDBColumn;
    FBalanceName2: TcxGridDBColumn;
    FBalanceModel2: TcxGridDBColumn;
    FUnitName2: TcxGridDBColumn;
    FMaterialDate2: TcxGridDBColumn;
    FSollWeight2: TcxGridDBColumn;
    FLength2: TcxGridDBColumn;
    FQry2: TcxGridDBColumn;
    FSingleWeight2: TcxGridDBColumn;
    FEstimateQry2: TcxGridDBColumn;
    FBalanceBasePrice2: TcxGridDBColumn;
    FOutPrice2: TcxGridDBColumn;
    FBalancePrice2: TcxGridDBColumn;
    FEstimateAmount2: TcxGridDBColumn;
    SumFBalanceQry_2: TcxGridDBColumn;
    SumFBalanceAmount_2: TcxGridDBColumn;
    FDeliveryDateTxt2: TcxGridDBColumn;
    FWorkListRemark2: TcxGridDBColumn;
    SumFQualityAmount_2: TcxGridDBColumn;
    FRemark2: TcxGridDBColumn;
    FAgentBalanceID2: TcxGridDBColumn;
    FBalancePriceID2: TcxGridDBColumn;
    FItemID2: TcxGridDBColumn;
    FWorkListID2: TcxGridDBColumn;
    cxGL2: TcxGridLevel;
    FBranchItemNumber2: TcxGridDBColumn;
    FWorkItemNum2: TcxGridDBColumn;
    MData1: TdxMemData;
    DS_Mdata_M3: TDataSource;
    MData_M3: TdxMemData;
    MData_M3FOutPrice: TFloatField;
    MData_M3FBalancePrice: TFloatField;
    MData_M3FBalanceAdjust: TFloatField;
    MData4: TdxMemData;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    DS_Mdata4: TDataSource;
    TB_Audit: TToolButton;
    frReport3: TfrReport;
    frDBDataSet3: TfrDBDataSet;
    frReport4: TfrReport;
    frDBDataSet4: TfrDBDataSet;
    DS_Mdata_M: TDataSource;
    MData_M: TdxMemData;
    StringField10: TStringField;
    StringField15: TStringField;
    StringField18: TStringField;
    StringField19: TStringField;
    StringField20: TStringField;
    CurrencyField2: TCurrencyField;
    StringField21: TStringField;
    IntegerField5: TIntegerField;
    IntegerField6: TIntegerField;
    IntegerField7: TIntegerField;
    StringField22: TStringField;
    StringField23: TStringField;
    StringField24: TStringField;
    IntegerField8: TIntegerField;
    StringField25: TStringField;
    StringField26: TStringField;
    DateTimeField2: TDateTimeField;
    StringField27: TStringField;
    StringField28: TStringField;
    StringField29: TStringField;
    StringField30: TStringField;
    StringField31: TStringField;
    FloatField4: TFloatField;
    FloatField5: TFloatField;
    IntegerField9: TIntegerField;
    BCDField1: TBCDField;
    BCDField2: TBCDField;
    FloatField6: TFloatField;
    FloatField7: TFloatField;
    FWorkOutPrice_2: TcxGridDBColumn;
    TB_EXIT: TToolButton;
    TS_Qry: TRzTabSheet;
    Panel1: TPanel;
    RzSizePanel5: TRzSizePanel;
    MyTreeView_Qry: TTreeView;
    Panel14: TPanel;
    Panel15: TPanel;
    Bevel4: TBevel;
    Panel16: TPanel;
    Image4: TImage;
    Label25: TLabel;
    ToolBar1: TToolBar;
    TB_Ref6: TToolButton;
    TB_Out6: TToolButton;
    TB_Down3: TToolButton;
    TB_Prin6: TToolButton;
    ToolButton13: TToolButton;
    cxButtonEdit1: TcxButtonEdit;
    DS_Mdata3: TDataSource;
    MData3: TdxMemData;
    StringField32: TStringField;
    StringField33: TStringField;
    StringField34: TStringField;
    StringField35: TStringField;
    StringField36: TStringField;
    CurrencyField3: TCurrencyField;
    StringField37: TStringField;
    IntegerField10: TIntegerField;
    IntegerField11: TIntegerField;
    IntegerField12: TIntegerField;
    StringField38: TStringField;
    StringField39: TStringField;
    StringField40: TStringField;
    IntegerField13: TIntegerField;
    StringField41: TStringField;
    StringField42: TStringField;
    DateTimeField3: TDateTimeField;
    StringField43: TStringField;
    StringField44: TStringField;
    StringField45: TStringField;
    StringField46: TStringField;
    StringField47: TStringField;
    FloatField8: TFloatField;
    FloatField9: TFloatField;
    IntegerField14: TIntegerField;
    BCDField3: TBCDField;
    BCDField4: TBCDField;
    FloatField10: TFloatField;
    FloatField11: TFloatField;
    Panel7: TPanel;
    Bevel2: TBevel;
    Label5: TLabel;
    TB_FWorkItemNum: TSpeedButton;
    Label1: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label8: TLabel;
    Label4: TLabel;
    Label10: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label15: TLabel;
    Label19: TLabel;
    Label18: TLabel;
    E_FDepartmentNum: TcxTextEdit;
    E_FWorkItemNum: TcxMaskEdit;
    E_FWorkData: TcxButtonEdit;
    E_FWorkItemID: TcxTextEdit;
    E_FWorkItemDate: TcxDateEdit;
    E_FWorkItemRemark: TcxButtonEdit;
    E_FIsdel: TcxCheckBox;
    E_FItemModel: TcxTextEdit;
    E_FItemId: TcxTextEdit;
    E_FClientFullName: TcxButtonEdit;
    E_FDeliveryPlace: TcxButtonEdit;
    E_FItemNumber: TcxButtonEdit;
    E_FFileNo: TcxTextEdit;
    E_FAgentID: TcxButtonEdit;
    E_FAgentName: TcxButtonEdit;
    E_FJobPlace: TcxButtonEdit;
    E_FMaterialDate: TcxButtonEdit;
    E_FJobMode: TcxButtonEdit;
    E_FAdvancePercent: TcxCurrencyEdit;
    E_FE05: TcxButtonEdit;
    E_FDeliveryDateTxt: TcxButtonEdit;
    E_FDeliveryDate: TcxDateEdit;
    TB_Check: TToolButton;
    FNumber1: TcxGridDBColumn;
    frReport: TfrReport;
    Panel8: TPanel;
    Panel9: TPanel;
    Bevel5: TBevel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    TS_Item: TPageControl;
    TabSheet1: TTabSheet;
    RSP_List: TRzSizePanel;
    PageControl2: TPageControl;
    TS_List: TTabSheet;
    ToolBar7: TToolBar;
    cxGrid3: TcxGrid;
    cxGV_3: TcxGridDBTableView;
    FBalanceListNum_3: TcxGridDBColumn;
    FBalanceName_3: TcxGridDBColumn;
    FBalanceModel_3: TcxGridDBColumn;
    FUnitName_3: TcxGridDBColumn;
    FMaterialDate_3: TcxGridDBColumn;
    FEstimateQry_3: TcxGridDBColumn;
    FEstimateAmount_3: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    FWorkItemPrice_3: TcxGridDBColumn;
    FBalanceWorkAdjust_3: TcxGridDBColumn;
    FBalanceAdjust_3: TcxGridDBColumn;
    FBalancePrice_3: TcxGridDBColumn;
    FBalanceQry_3: TcxGridDBColumn;
    FBalanceAmount_3: TcxGridDBColumn;
    FQualityAmount_3: TcxGridDBColumn;
    cxGridDBColumn16: TcxGridDBColumn;
    cxGridDBColumn17: TcxGridDBColumn;
    cxGridDBColumn18: TcxGridDBColumn;
    cxGridDBColumn19: TcxGridDBColumn;
    cxGridDBColumn20: TcxGridDBColumn;
    cxGridDBColumn21: TcxGridDBColumn;
    cxGridDBColumn22: TcxGridDBColumn;
    cxGridDBColumn23: TcxGridDBColumn;
    cxGridDBColumn24: TcxGridDBColumn;
    cxGridDBColumn25: TcxGridDBColumn;
    cxGridDBColumn26: TcxGridDBColumn;
    cxGridDBColumn27: TcxGridDBColumn;
    cxGridDBColumn28: TcxGridDBColumn;
    cxGridDBColumn29: TcxGridDBColumn;
    cxGridDBColumn30: TcxGridDBColumn;
    cxGridDBColumn31: TcxGridDBColumn;
    cxGridDBColumn32: TcxGridDBColumn;
    cxGridDBColumn33: TcxGridDBColumn;
    cxGridDBColumn34: TcxGridDBColumn;
    cxGridDBColumn35: TcxGridDBColumn;
    cxGridDBColumn36: TcxGridDBColumn;
    cxGridDBColumn37: TcxGridDBColumn;
    cxGridDBColumn38: TcxGridDBColumn;
    cxGridDBColumn39: TcxGridDBColumn;
    cxGridDBColumn40: TcxGridDBColumn;
    cxGL_3: TcxGridLevel;
    cxGrid_M3: TcxGrid;
    cxGV_M3: TcxGridDBTableView;
    cxGL_M3: TcxGridLevel;
    FDepartmentNum_M3: TcxGridDBColumn;
    FBalanceNum_M3: TcxGridDBColumn;
    FBalanceDate_M3: TcxGridDBColumn;
    FBalanceStatus_M3: TcxGridDBColumn;
    FStatusNotes_M3: TcxGridDBColumn;
    FAgentName_M3: TcxGridDBColumn;
    FWorkItemNum_M3: TcxGridDBColumn;
    FInvoice_M3: TcxGridDBColumn;
    FInvoiceDate_M3: TcxGridDBColumn;
    FBalanceID_M3: TcxGridDBColumn;
    FAgentID_M3: TcxGridDBColumn;
    Panel11: TPanel;
    PageControl1: TPageControl;
    TabSheet2: TTabSheet;
    cxGrid_M: TcxGrid;
    cxGV_M: TcxGridDBTableView;
    FDepartmentNum_M: TcxGridDBColumn;
    FBalanceNum_M: TcxGridDBColumn;
    FBalanceDate_M: TcxGridDBColumn;
    FAgentName_M: TcxGridDBColumn;
    FWorkItemNum_M: TcxGridDBColumn;
    FInvoice_M: TcxGridDBColumn;
    FInvoiceDate_M: TcxGridDBColumn;
    FBalanceStatus_M: TcxGridDBColumn;
    FStatusNotes_M: TcxGridDBColumn;
    FBalanceWrite_M: TcxGridDBColumn;
    FBalanceWriteDate_M: TcxGridDBColumn;
    FBalanceID_M: TcxGridDBColumn;
    FAgentID_M: TcxGridDBColumn;
    cxGL_M: TcxGridLevel;
    RzSizePanel3: TRzSizePanel;
    PageControl3: TPageControl;
    TabSheet3: TTabSheet;
    cxGrid1: TcxGrid;
    cxGV1: TcxGridDBTableView;
    FBalanceListNum: TcxGridDBColumn;
    FBalanceName: TcxGridDBColumn;
    FBalanceModel: TcxGridDBColumn;
    FUnitName: TcxGridDBColumn;
    FMaterialDate: TcxGridDBColumn;
    FEstimateQry: TcxGridDBColumn;
    FEstimateAmount: TcxGridDBColumn;
    Sel: TcxGridDBColumn;
    FWorkItemPrice: TcxGridDBColumn;
    FBalanceWorkAdjust: TcxGridDBColumn;
    FBalanceAdjust: TcxGridDBColumn;
    FBalancePrice: TcxGridDBColumn;
    FBalanceQry: TcxGridDBColumn;
    FBalanceAmount: TcxGridDBColumn;
    FQualityAmount: TcxGridDBColumn;
    FRealAmount: TcxGridDBColumn;
    FBalanceTaxAmount: TcxGridDBColumn;
    FBalanceRemark: TcxGridDBColumn;
    FBranchItemNumber: TcxGridDBColumn;
    FBalanceYear: TcxGridDBColumn;
    FBalanceMonth: TcxGridDBColumn;
    FBalanceDay: TcxGridDBColumn;
    FBalanceNum: TcxGridDBColumn;
    FWorkItemNum: TcxGridDBColumn;
    FWorkListID: TcxGridDBColumn;
    FWorkData: TcxGridDBColumn;
    FAgentName: TcxGridDBColumn;
    FClientShortName: TcxGridDBColumn;
    FBranchFileNo: TcxGridDBColumn;
    FBalancePriceID: TcxGridDBColumn;
    FProductClass: TcxGridDBColumn;
    FNumber: TcxGridDBColumn;
    FPartsCode_1: TcxGridDBColumn;
    FSollWeight: TcxGridDBColumn;
    FLength: TcxGridDBColumn;
    FQry: TcxGridDBColumn;
    FBalanceBasePrice: TcxGridDBColumn;
    FWorkOutPrice_0: TcxGridDBColumn;
    FOutPrice: TcxGridDBColumn;
    cxGV1DBColumn1: TcxGridDBColumn;
    cxGL1: TcxGridLevel;
    Panel_button: TPanel;
    Bevel_button: TBevel;
    OKBtn: TcxButton;
    CancelBtn: TcxButton;
    FBalanceSubmitDate_M: TcxGridDBColumn;
    FBalanceCheck_M: TcxGridDBColumn;
    FBalanceCheckDate_M: TcxGridDBColumn;
    FBalanceAudit_M: TcxGridDBColumn;
    FBalanceAuditDate_M: TcxGridDBColumn;
    TB_Submit: TToolButton;
    actionList: TActionList;
    Act_SetOpen: TAction;
    Act_SetClose: TAction;
    Act_Set_MaxNum: TAction;
    Act_Set_MaxID: TAction;
    Act_App: TAction;
    Act_Edit: TAction;
    Act_Del: TAction;
    Act_Submit: TAction;
    Act_Check: TAction;
    Act_Audit: TAction;
    Act_PushDown: TAction;
    Act_Out: TAction;
    Act_Ref: TAction;
    Act_Status: TAction;
    Act_Ref_Take: TAction;
    Act_Ref_Write: TAction;
    PM_M: TPopupMenu;
    N_App: TMenuItem;
    N_Edit: TMenuItem;
    N_Del: TMenuItem;
    N_Ref: TMenuItem;
    N_Submit: TMenuItem;
    N_Check: TMenuItem;
    N_Audit: TMenuItem;
    N_PushDown: TMenuItem;
    N_Out: TMenuItem;
    N_Print: TMenuItem;
    N_Exit: TMenuItem;
    Act_Print: TAction;
    TB_FInvoice: TToolButton;
    PM_FInvoice: TPopupMenu;
    N1: TMenuItem;
    TB_FInvoice_Save: TToolButton;
    MData_MFWorkItemNum: TStringField;
    ToolButton2: TToolButton;
    TB_AgentBalance: TToolButton;
    SaveDialog1: TSaveDialog; 
    stbBar: TRzStatusBar;
    RzClockStatus1: TRzClockStatus;
    RzKeyStatus1: TRzKeyStatus;
    RzKeyStatus2: TRzKeyStatus;
    RzKeyStatus3: TRzKeyStatus;
    stbMsg: TRzFieldStatus;
    ToolButton1: TToolButton;
    Act_MaxID_List: TAction;
    Act_MaxID: TAction;
    procedure FormResize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure MyTreeView1Change(Sender: TObject; Node: TTreeNode);
    procedure MyTreeView1Expanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure OKBtnClick(Sender: TObject);
    procedure CancelBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Set_Open;
    procedure Set_Close;
    procedure Set_MaxNum;
    procedure SelMaxNum;
    procedure frReportBeginBand(Band: TfrBand);
    procedure frReportGetValue(const ParName: String;
      var ParValue: Variant);
    procedure MyTreeView2Change(Sender: TObject; Node: TTreeNode);
    procedure MyTreeView2Expanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure TB_Ref2Click(Sender: TObject);
    procedure TB_SelClick(Sender: TObject);
    procedure TB_Down2Click(Sender: TObject);
    procedure MData1BeforePost(DataSet: TDataSet);
    procedure WorkBOMSelPropertiesChange(Sender: TObject);
    procedure TB_FWorkItemNumClick(Sender: TObject);
    procedure SelPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure TB_DownClick(Sender: TObject);
    procedure TB_EXITClick(Sender: TObject);
    procedure cxGV2CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure MyTreeView_QryExpanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure MyTreeView_QryChange(Sender: TObject; Node: TTreeNode);
    procedure TB_Ref6Click(Sender: TObject);
    procedure TB_Down3Click(Sender: TObject);
    procedure TB_Out6Click(Sender: TObject);
    procedure FAgentName_M3PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FWorkItemNum_M3PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FAgentName_MPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FWorkItemNum_MPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure Act_StatusExecute(Sender: TObject);
    procedure Act_RefExecute(Sender: TObject);
    procedure Act_CheckExecute(Sender: TObject);
    procedure Act_AuditExecute(Sender: TObject);
    procedure Act_AppExecute(Sender: TObject);
    procedure Act_EditExecute(Sender: TObject);
    procedure Act_DelExecute(Sender: TObject);
    procedure Act_OutExecute(Sender: TObject);
    procedure Act_PrintExecute(Sender: TObject);
    procedure TB_FInvoiceClick(Sender: TObject);
    procedure TB_FInvoice_SaveClick(Sender: TObject);
    procedure Act_SubmitExecute(Sender: TObject);
    procedure cxGV_MFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure cxGV_M3FocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure ToolButton2Click(Sender: TObject);
    procedure TB_AgentBalanceClick(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure Act_MaxID_ListExecute(Sender: TObject);
    procedure Act_MaxIDExecute(Sender: TObject);
  private

    { Private declarations }
    function AddMain:bool;
    function AddList:bool;
    function AddRd:bool;
    function EditRd:bool;
    function DelRd:bool;
    function EditMain:bool;

  public
    P_i:boolean;
    P_Isleaf,P_IsAudit,P_MaxNum,P_MaxID,P_MaxID_List:Integer;
     P_List:string;
    { Public declarations }
  end;

var
  Frm_AgentBalance: TFrm_AgentBalance;


implementation

uses FRMDATA,{ FRMMAIN,} COMMON, FrmSelect, ProgBar, PROGRASS;

{$R *.dfm}
procedure TFrm_AgentBalance.SelMaxNum;
var qry,qry1: TADOQuery;
    P_yymm:String;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.EnableBCD:=False;//小数位数>4
  qry1:=TAdoQuery.Create(self);
  qry1.ConnectionString:=mdlData.ReadConnStr;
  qry1.EnableBCD:=False;//小数位数>4

  try
    qry1.SQL.Text:='select * from T_Period with(nolock) where FTableName=''T_BalanceItem'' and FDepartmentID=:FDepartmentID and FStarDate<=:FStarDate and FEndDate>=:FEndDate';
    qry1.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry1.Parameters.FindParam('FStarDate').value:=Mdata_M['FBalanceDate'];
    qry1.Parameters.FindParam('FEndDate').value:=Mdata_M['FBalanceDate'];
   // qry1.Parameters.FindParam('FStarDate').value:=E_FBalanceDate.Date;
    //qry1.Parameters.FindParam('FEndDate').value:=E_FBalanceDate.Date;
    qry1.Open;
  finally
     ;
  end;

  If qry1.RecordCount=1 then
     P_yymm:=qry1.FieldByName('FPeriodYear').Value+qry1.FieldByName('FPeriodMonth').Value;

  try
    {qry.SQL.Text:='select max(FBalanceNum) as FMaxBalanceNum,cast(FBalanceYear as varchar(4))+cast(FBalanceMonth as varchar(2)) as yymm  from V_BalanceList with(nolock) '
                 +'where FDepartmentID=:FDepartmentID and FBalanceNum like :FBalanceNum '
                 +'group by cast(FBalanceYear as varchar(4))+cast(FBalanceMonth as varchar(2))'; }
    qry.SQL.Text:='select max(FBalanceNum) as FMaxBalanceNum,FBalanceYYMM  from V_BalanceList with(nolock) '
                 +'where FDepartmentID=:FDepartmentID and FBalanceNum like :FBalanceNum '
                 +'group by FBalanceYYMM';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Parameters.FindParam('FBalanceNum').value:=P_yymm+'%';
    qry.Open;
  finally
     ;
  end;
  Mdata_M.Edit;
  If qry.RecordCount=1 then
     Mdata_M['FBalanceNum']:=Format('%.3d',[(StrToInt(qry.FieldByName('FMaxBalanceNum').Value)+1)])
     //E_FBalanceNum.Text:=Format('%.3d',[(StrToInt(qry.FieldByName('FMaxBalanceNum').Value)+1)])
  else
     Mdata_M['FBalanceNum']:=P_yymm+'001';
     //E_FBalanceNum.Text:=P_yymm+'001';
  Mdata_M.Post;
end;


procedure TFrm_AgentBalance.Set_MaxNum;
var
  proc:TADOStoredProc;
begin
  proc:=TADOStoredProc.Create(self);
  proc.ConnectionString:=mdlData.ReadConnStr;
  proc.CommandTimeout:=500;

  try
    proc.ProcedureName:='P_GetBalanceMaxNum;1';
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=20;
      name := '@BalanceDate';
      value:=Mdata_M['FBalanceDate'];
      //value:=E_FBalanceDate.Date;
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
    proc.Free;
  finally
     ;
  end;
end;



procedure TFrm_AgentBalance.Set_Open;
begin
  TB_Ref.Visible:=False;
  TB_App.Visible:=False;
  TB_Edit.Visible:=False;
  TB_Del.Visible:=False;
  TB_Audit.Enabled:=False;
  MyTreeView1.Enabled:=False;

  OKBtn.Visible:=True;
  CancelBtn.Visible:=True;
  cxGV1.OptionsData.Editing:=True;
  FAgentName_M.Options.Editing:=True;
  FWorkItemNum_M.Options.Editing:=True;
  FBalanceNum_M.Options.Editing:=True;
  FBalanceDate_M.Options.Editing:=True;

  Sel.Options.Editing:=True;
  FBalanceQry.Options.Editing:=True;
  FQualityAmount.Options.Editing:=True;
  FBalanceWorkAdjust.Options.Editing:=True;
  FBalanceAdjust.Options.Editing:=True;
  FBalanceRemark.Options.Editing:=True;

  TB_FWorkItemNum.Enabled:=True;


end;

procedure TFrm_AgentBalance.Set_Close;
begin
  TB_Ref.Visible:=True;
  TB_App.Visible:=True;
  TB_Edit.Visible:=True;
  TB_Del.Visible:=True;
  TB_Audit.Enabled:=True;
  MyTreeView1.Enabled:=True;

  OKBtn.Visible:=False;
  CancelBtn.Visible:=False;
  cxGV1.OptionsData.Editing:=False;


  TB_FWorkItemNum.Enabled:=False;
end;


function TFrm_AgentBalance.DelRd: bool;
var
 qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.EnableBCD:=False;//小数位数>4
  try
    qry.SQL.Text:='Delete from T_BalanceItem where FBalanceID=:FBalanceID';
    qry.Parameters.FindParam('FBalanceID').value:=Mdata_M['FBalanceID'];
   // qry.Parameters.FindParam('FBalanceID').value:=StrToInt(Trim(E_FBalanceID.Text));
    result:=qry.ExecSQL>=1;
  finally
    qry.Free;
  end;
end;



function TFrm_AgentBalance.AddMain: bool;
var
 qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.EnableBCD:=False;//小数位数>4
  try
    qry.SQL.Text:='Insert into T_BalanceItem(FBalanceID,FBalanceNum, FBalanceDate,FAgentID,FItemID,FTaxRate,FBalanceStatus,FDepartmentID,FBalanceWriteID,FBalanceWriteDate,FInvoice,FInvoiceDate) '
                 +'values(:FBalanceID,:FBalanceNum, :FBalanceDate,:FAgentID,:FItemID,:FTaxRate,:FBalanceStatus,:FDepartmentID,:FBalanceWriteID,:FBalanceWriteDate,:FInvoice,:FInvoiceDate)';
   with qry.Parameters do
   begin
     Act_MaxID.Execute;//取ID
     FindParam('FBalanceID').value:=P_MaxID;
     FindParam('FBalanceNum').value:=Trim(Mdata_M['FBalanceNum']);
     FindParam('FBalanceDate').value:=Mdata_M['FBalanceDate'];
     FindParam('FAgentID').value:=Mdata_M['FAgentID'];
     FindParam('FItemID').value:=Mdata_M['FItemID'];
     FindParam('FTaxRate').value:=Mdata_M['FTaxRate'];
     FindParam('FBalanceStatus').value:=Mdata_M['FBalanceStatus'];         //未审核标识
     FindParam('FDepartmentID').value:=UserFDepartmentID;
     FindParam('FBalanceWriteID').value:=UserNumID;
     FindParam('FBalanceWriteDate').value:=date();
     FindParam('FInvoice').value:=Mdata_M['FInvoice'];
     FindParam('FInvoiceDate').value:=Mdata_M['FInvoiceDate'];
   end;
     result:=qry.ExecSQL>=1;
   finally
     qry.Free;
   end;

end;

function TFrm_AgentBalance.EditMain: bool;
var
 qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.EnableBCD:=False;//小数位数>4
  try
    qry.SQL.Text:='Update T_BalanceItem Set FBalanceNum=:FBalanceNum, FBalanceDate=:FBalanceDate,FAgentID=:FAgentID,FItemID=:FItemID,FTaxRate=:FTaxRate,'
                 +'FBalanceStatus=:FBalanceStatus,FDepartmentID=:FDepartmentID where  FBalanceID=:FBalanceID';
    with qry.Parameters do
    begin
      FindParam('FBalanceNum').value:=Trim(Mdata_M['FBalanceNum']);
      FindParam('FBalanceDate').value:=Mdata_M['FBalanceDate'];
      FindParam('FAgentID').value:=Mdata_M['FAgentID'];
      FindParam('FItemID').value:=Mdata_M['FItemID'];
      FindParam('FTaxRate').value:=Mdata_M['FTaxRate'];
      FindParam('FBalanceStatus').value:=Mdata_M['FBalanceStatus']; //未审核制单标识
      FindParam('FDepartmentID').value:=UserFDepartmentID;
      FindParam('FBalanceID').value:=Mdata_M['FBalanceID'];
    end;
    result:=qry.ExecSQL>=1;
  finally
    qry.Free;
  end;

end;


function TFrm_AgentBalance.AddList: bool;
var
  qry,qry1: TADOQuery;
  i: integer;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.EnableBCD:=False;//小数位数>4

  qry1:=TADOQuery.Create(Self);
  qry1.ConnectionString:=mdlData.ReadConnStr;
  qry1.EnableBCD:=False;//小数位数>4
  result:=False;

  If mData1.RecordCount<=0 then
  begin
    result:=True;
    Exit;
  end;

  try
    qry1.SQL.Text:='select * from V_BalanceItem with(nolock) where FBalanceNum=:FBalanceNum and  FDepartmentID=:FDepartmentID';
    qry1.Parameters.FindParam('FBalanceNum').value:=Trim(Mdata_M['FBalanceNum']);
    qry1.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry1.Open;
  finally
    ;
  end;
  If qry1.RecordCount>0 then
  begin
    Mdata_M.Edit;
    Mdata_M['FBalanceID']:=IntTostr(qry1.FieldByName('FBalanceID').value);
    Mdata_M.Post;
  end;  

  try
    qry.SQL.Text:='Insert into T_BalanceList(FBalanceListID,FBalanceID, FBalanceListNum, FWorkListID, FBalanceQry,FBalanceWorkAdjust,FBalanceAdjust,FQualityAmount,FBalanceRemark) '
                 +'values(:FBalanceListID,:FBalanceID, :FBalanceListNum,:FWorkListID, :FBalanceQry,:FBalanceWorkAdjust,:FBalanceAdjust,:FQualityAmount,:FBalanceRemark)';
    mData1.First;
    i:=1;
    while not mData1.eof do
     begin
       qry.Parameters.ParamByName('FBalanceWorkAdjust').DataType:=ftfloat;
       qry.Parameters.ParamByName('FBalanceAdjust').DataType:=ftfloat;
     //  If ((mData1['FBalanceQry']<>0) and (mData1['FBalanceQry']<>Null)) or ((mData1['FBalancePiece']<>0) and (mData1['FBalancePiece']<>Null)) then
       If ((mData1['FBalanceQry']<>0) and (mData1['FBalanceQry']<>Null)) then
       begin
         If qry.Active then qry.Close;
         with qry.Parameters do
         begin
           Act_MaxID_List.Execute;//取ID
           FindParam('FBalanceListID').value:=P_MaxID_List;
           If P_state=0 then  //新增
              FindParam('FBalanceID').value:=P_MaxID;
           If P_state=1 then  //修改
              FindParam('FBalanceID').value:=MData_M['FBalanceID'];

           //FindParam('FBalanceID').value:= qry1.FieldByName('FBalanceID').value;
           FindParam('FBalanceListNum').value:=i;
           FindParam('FWorkListID').value:=mdata1['FWorkListID'];
           FindParam('FBalanceQry').value:=mdata1['FBalanceQry'];
           FindParam('FBalanceWorkAdjust').value:=mdata1['FBalanceWorkAdjust'];
           FindParam('FBalanceAdjust').value:=mdata1['FBalanceAdjust'];
           FindParam('FQualityAmount').value:=mdata1['FQualityAmount'];
           FindParam('FBalanceRemark').value:=mdata1['FBalanceRemark'];
         end;
         result:=qry.ExecSQL>=1;
         if not result then break;
       end;
       mData1.Next;
       i:=i+1;
     end;
   finally
     qry.Free;
   end;
end;


function TFrm_AgentBalance.AddRd: bool;
var
 qry:TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.EnableBCD:=False;//小数位数>4
  result:=False;

  If mData1.RecordCount<=0 then
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


function TFrm_AgentBalance.EditRd:bool;
var
 qry:TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.EnableBCD:=False;//小数位数>4
  result:=False;

  If mData1.RecordCount<=0 then
  begin
    result:=True;
    Exit;
  end;

  mData1.Edit;
  mData1.Post;

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


procedure TFrm_AgentBalance.FormResize(Sender: TObject);
begin
  inherited;
  L_title.Caption:=UserFDepartmentName+'外协加工结算';
  Self.Caption:=UserFDepartmentName+'外协加工结算';
end;

procedure TFrm_AgentBalance.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=cafree;
  Frm_AgentBalance:=nil;
end;

procedure TFrm_AgentBalance.MyTreeView1Change(Sender: TObject; Node: TTreeNode);
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
    P_th1:=PTree(Node.Data).Caption;
    P_Isleaf:=PTree(Node.Data).Isleaf;
    P_IsAudit:=PTree(Node.Data).IsAudit;
    If PTree(Node.Data).Isleaf>0 then
    begin
      try
        qry.SQL.Text:='select distinct FDepartmentNum,FBalanceID,FBalanceNum,FBalanceDate,FAgentID,FAgentName,FItemID,FTaxRate,FBalanceStatus,FBalanceStatusNotes,'
                     +'FBalanceWriteID,FBalanceWrite,FBalanceWriteDate,FBalanceSubmitDate,FBalanceCheckID,FBalanceCheck,FBalanceCheckDate,'
                     +'FBalanceAuditID,FBalanceAudit,FBalanceAuditDate,'
                     +'FDepartmentID,FDepartmentName,''             '' as FWorkItemNum,FInvoice,FInvoiceDate  from V_BalanceList with(nolock) '
                     +' where FDepartmentName+'';''+cast(FBalanceStatus as varchar(2))+'';''+cast(FBalanceYear as varchar(4))+'';''+cast(FBalanceMonth as varchar(2))+'';''+FBalanceNum +'';'' like :ListItemFNumber';
        qry.Parameters.FindParam('ListItemFNumber').value:='%'+ListItemFNumber+'%';
        qry.Open;
      finally
         ;
      end;
      mdata_M.CopyFromDataSet(qry);
      mdata_M.Open;
      mdata_M.First;
      If MyItemList(qry,Mdata1,'V_BalanceList','FDepartmentName+'';''+cast(FBalanceStatus as varchar(2))+'';''+cast(FBalanceYear as varchar(4))+'';''+cast(FBalanceMonth as varchar(2))+'';''+FBalanceNum +'';''',ListItemFNumber,'FFullNumber,FBalanceListNum') then
    end;
  end;
  If (P_Isleaf=1) and (mdata_M.RecordCount>0) then
     Act_Status.Execute  //权限设置
  else
  begin
    TB_Edit.Visible:=False;
    TB_Del.Visible:=False;
    TB_Submit.Visible:=False;
    N_Submit.Visible:=False;
    TB_Check.Visible:=False;
    N_Check.Visible:=False;
    TB_Audit.Visible:=False;
    N_Audit.Visible:=False;
    //TB_PushDown.Visible:=False;
   // N_PushDown.Visible:=False;
  end;
end;

procedure TFrm_AgentBalance.MyTreeView1Expanding(Sender: TObject;
  Node: TTreeNode; var AllowExpansion: Boolean);
var
  P :PTree;
  qry:TADOquery;

begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.EnableBCD:=False;//小数位数>4
  If (Node = nil) or
     (PTree(Node.Data).Flag <> cNoLoadFlag) or   // 1.加载标志
     (not Node.HasChildren) or                   // 2.未有子
     (Node.Count>0) then                         // 3.已有子节点
     Exit;

  qry.SQL.Text:='Select FNumber, FParentNumber,FName,Isleaf,FIsAudit from VT_BalanceList with(nolock) '
               +'where FParentNumber= '''
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
    P.IsAudit := qry.FieldByName('FIsAudit').Value;
    P.Flag := cNoLoadFlag;                            // 新节点，未加载标志
    with MyTreeView1.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('Isleaf').value;
    end;
    qry.Next;
  end;


end;

procedure TFrm_AgentBalance.OKBtnClick(Sender: TObject);
var qry: TADOQuery;
    P_FBalanceNum:String;
begin
  cxGV1.OptionsData.Editing:=True;
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.EnableBCD:=False;//小数位数>4

  mData1.Edit;
  mData1.Post;
  mData_M.Edit;
  mData_M.Post;

  If (Trim(Mdata_M['FBalanceNum'])='') then
  begin
    application.MessageBox('关键字不能为空！请重新输入','系统提示',MB_ICONERROR);
    Exit;
  end;


  If P_state =0 then
  begin
    Self.SelMaxNum;//取ID
    //E_FBalanceStatus.EditValue:=3;//未审核制单标识
    try
      qry.SQL.Text:='Select * from V_BalanceList with(nolock) where FBalanceNum=:FBalanceNum and FDepartmentID=:FDepartmentID';
      qry.Parameters.FindParam('FBalanceNum').Value:=Trim(Mdata_M['FBalanceNum']);
      qry.Parameters.FindParam('FDepartmentID').Value:=UserFDepartmentID;
      qry.Open;
      If qry.RecordCount>0 then
      begin
         If application.MessageBox('此结算单号已存在,是否系统自动取号吗？','提示',MB_ICONINFORMATION+MB_YESNO)=6 then
         begin
           Mdata_M['FBalanceNum']:=P_FBalanceNum;
         end
         else
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
        mdata1.Close;
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
      CancelBtn.Click;
    end
    else
      application.MessageBox('修改记录保存失败！','系统提示',MB_ICONWARNING);
  end;


  qry.Free;


end;



procedure TFrm_AgentBalance.CancelBtnClick(Sender: TObject);
begin
  P_state:=2;     //不在新增 、修改状态
  Self.Set_Close;
end;

procedure TFrm_AgentBalance.FormCreate(Sender: TObject);
begin
  inherited;
  P_state :=2;  //不在新增修改状态   
  TB_App.Enabled:= mdlData.PermissionCheckRights(TFrm_AgentBalance.ClassName,'新增');
  TB_Edit.Enabled:= mdlData.PermissionCheckRights(TFrm_AgentBalance.ClassName,'修改');
  TB_Del.Enabled:= mdlData.PermissionCheckRights(TFrm_AgentBalance.ClassName,'删除');
  TB_Prin.Enabled:= mdlData.PermissionCheckRights(TFrm_AgentBalance.ClassName,'打印');
  TB_Out.Enabled:= mdlData.PermissionCheckRights(TFrm_AgentBalance.ClassName,'导出');
  TB_FInvoice.Enabled:= mdlData.PermissionCheckRights(TFrm_AgentBalance.ClassName,'新增');
  TB_FInvoice_Save.Enabled:= mdlData.PermissionCheckRights(TFrm_AgentBalance.ClassName,'新增');
  TB_AgentBalance.Enabled:= mdlData.PermissionCheckRights(TFrm_AgentBalance.ClassName,'新增');
  TB_Out6.Enabled:= mdlData.PermissionCheckRights(TFrm_AgentBalance.ClassName,'导出');
end;

procedure TFrm_AgentBalance.FormShow(Sender: TObject);
begin
  TB_Ref.Click;
 // TB_Ref2.Click;
  //TB_Ref6.Click;
end;

procedure TFrm_AgentBalance.frReportBeginBand(Band: TfrBand);
begin
  inherited;
  if Band.Name='dtFooter' then
  begin
    If (mdata1.RecordCount mod 16)>0 then
      frReport.Dictionary.Variables['n']:=16-(mdata1.RecordCount mod 16)-1
    else
      frReport.Dictionary.Variables['n']:=0;
  end;

end;

procedure TFrm_AgentBalance.frReportGetValue(const ParName: String;
  var ParValue: Variant);
begin
  inherited;
  If ParName='UserName' then
    ParValue:=UserName;

end;

procedure TFrm_AgentBalance.MyTreeView2Change(Sender: TObject;
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
    ListItemFNumber2:=PTree(Node.Data).FNumber2;
    P_th2:=PTree(Node.Data).Caption;
    If PTree(Node.Data).Isleaf=1 then
    begin
      //Panel6.Visible:=True;
      If not MyItemList(qry,Mdata2,'V_WorkList_Sel','FDepartmentName+'';''+cast(FWorkStatus as varchar(2))+'';''+cast(FWorkYear as varchar(4))+'';''+substring(FWorkItemNum,5,2)+'';''+FWorkItemNum+'';''',ListItemFNumber2,'FFullNumber') then
      begin
       // mdata2.Open;
       // cxGvColumn(cxGv2,Mdata2);
      end;
      If mdata2.RecordCount>0 then
      begin
        P_FWorkItemNum:= mdata2['FWorkItemNum'];
        P_FWorkItemID:= mdata2['FWorkItemID'];
        E_FWorkItemDate.Date:= mdata2['FWorkItemDate'];
        E_FWorkData.Text:= mdata2['FWorkData'];
        E_FDepartmentNum.Text:= mdata2['FDepartmentNum'];
        E_FWorkItemNum.Text:= mdata2['FWorkItemNum'];
        E_FWorkItemID.Text:= mdata2['FWorkItemID'];
        E_FClientFullName.Text:= mdata2['FClientFullName'];
        E_FItemId.Text:= mdata2['FItemId'];
        E_FDeliveryPlace.Text:= mdata2['FDeliveryPlace'];
        E_FAgentName.Text:= mdata2['FAgentName'];
        E_FAgentID.Text:= mdata2['FAgentID'];
        E_FE05.Text:= mdata2['FE05'];
        E_FMaterialDate.Text:= mdata2['FMaterialDate'];
        E_FJobMode.Text:= mdata2['FJobMode'];
        E_FItemModel.Text:= mdata2['FItemModel'];
        E_FItemNumber.Text:= mdata2['FItemNumber'];
        E_FFileNo.Text:= mdata2['FFileNo'];
        E_FJobPlace.Text:= mdata2['FJobPlace'];
        E_FAdvancePercent.Value:=mdata2['FAdvancePercent'];
        E_FDeliveryDateTxt.Text:=mdata2['FDeliveryDateTxt'];
        E_FWorkItemRemark.Text:=mdata2['FWorkItemRemark'];
        E_FIsdel.EditValue:=mdata2['FIsdel'];
        If mdata2['FIsDel']=True then
           L_Caption.Caption:='福建龙净环保股份有限公司生产任务单(作废)'
        else
           L_Caption.Caption:='福建龙净环保股份有限公司生产任务单';
      end;
    end
    else
    begin
      mdata2.Close;
      //Panel6.Visible:=False;
    end;
  end;
  qry.Free;
end;

procedure TFrm_AgentBalance.MyTreeView2Expanding(Sender: TObject;
  Node: TTreeNode; var AllowExpansion: Boolean);
var
  P :PTree;
  qry:TADOquery;

begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.EnableBCD:=False;//小数位数>4
  If (Node = nil) or
     (PTree(Node.Data).Flag <> cNoLoadFlag) or   // 1.加载标志
     (not Node.HasChildren) or                   // 2.未有子
     (Node.Count>0) then                         // 3.已有子节点
     Exit;

  qry.SQL.Text:='Select FNumber, FParentNumber,FName,'
               +'Isleaf from VT_WorkList with(nolock) where (FWorkStatus=0 or FWorkStatus=3) and FParentNumber= '''
               +PTree(Node.Data).ID+''' order by FNumber';
  qry.open;

  PTree(Node.Data).Flag := cLoadFlag;                  // 设置已加载标志
  while not qry.Eof do
  begin
    New(P);
    P.ID := qry.FieldByName('FNumber').AsString;
    P.ParentID := qry.FieldByName('FParentNumber').AsString;
    P.FNumber2:=qry.FieldByName('FNumber').AsString;
    P.Caption := qry.FieldByName('FName').AsString;
    P.Isleaf := qry.FieldByName('Isleaf').Value;
    P.Flag := cNoLoadFlag;                            // 新节点，未加载标志
    with MyTreeView2.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('Isleaf').value;
    end;
    qry.Next;
  end;


end;

procedure TFrm_AgentBalance.TB_Ref2Click(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.EnableBCD:=False;//小数位数>4
  If not TreeVeiwListWhere(qry,MyTreeView2,'VT_WorkList',' and FDepartmentID='+IntToStr(UserFDepartmentID) ) then
  begin
    Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;
end;

procedure TFrm_AgentBalance.TB_SelClick(Sender: TObject);
var  i,j: integer;
begin
  inherited;
  mData2.Edit;
  mData2.Post;
  mdata1.Open;
 // If mdata1.RecordCount>0 then
  begin
    //mData2.Last;
    for i:=0 to cxGV2.DataController.Controller.SelectedRecordCount-1 do
    begin
      j:=cxGV2.DataController.GetSelectedRowIndex(i);
      mdata1.Append;
      mdata1.Edit;
     // mdata1['FBalanceListNum']:=cxGV2.DataController.GetValue(J,0);
      mdata1['FBalanceName']:=cxGV2.DataController.GetValue(J,1);
      mdata1['FBalanceModel']:=cxGV2.DataController.GetValue(J,2);
      mdata1['FUnitName']:=cxGV2.DataController.GetValue(J,3);
      mdata1['FMaterialDate']:=cxGV2.DataController.GetValue(J,4);
      mdata1['FSollWeight']:=cxGV2.DataController.GetValue(J,5);
      mdata1['FLength']:=cxGV2.DataController.GetValue(J,6);
      mdata1['FQry']:=cxGV2.DataController.GetValue(J,7);
      mdata1['FSingleWeight']:=cxGV2.DataController.GetValue(J,8);
      mdata1['FEstimateQry']:=cxGV2.DataController.GetValue(J,9);
      mdata1['FBalanceBasePrice']:=cxGV2.DataController.GetValue(J,10);  //结算基价
      mdata1['FWorkOutPrice']:=cxGV2.DataController.GetValue(J,11);  //工管贴补单价
      mdata1['FOutPrice']:=cxGV2.DataController.GetValue(J,12);  //贴补单价

      mdata1['FBalancePrice']:=cxGV2.DataController.GetValue(J,13);       //结算单价
      mdata1['FWorkItemPrice']:=cxGV2.DataController.GetValue(J,13);       //任务单价


      mdata1['FEstimateAmount']:=cxGV2.DataController.GetValue(J,14);
      mdata1['FBalanceQry']:=cxGV2.DataController.GetValue(J,15);
      mdata1['FBalanceAmount']:=cxGV2.DataController.GetValue(J,16);
      mdata1['FBranchItemNumber']:=cxGV2.DataController.GetValue(J,20);
      mdata1['FWorkListID']:=cxGV2.DataController.GetValue(J,24);

      mdata1['FQualityAmount']:=0.00;
      mdata1['FRealAmount']:=0.00;
      mdata1['FBalanceWorkAdjust']:=0.00000;
      mdata1['FBalanceAdjust']:=0.00000;
      mdata1['FPrice']:=0.00000;
      mdata1['FBalanceQry']:=0.00000;
      mdata1.Post;
    end;
  end;
//  E_FAgentName1.Text:=Trim(E_FAgentName.Text);
  PC_2.ActivePage:=TS_BalanceList;

end;

procedure TFrm_AgentBalance.TB_Down2Click(Sender: TObject);
Var i:Integer;
begin
  If  TB_Down2.Caption='取消设置' then
  begin
    TB_Down2.Caption:='设置';
    cxGV2.OptionsData.Editing:=False;
    cxGv2.OptionsView.GroupByBox:=False;
    for i:=0 to cxGv2.ColumnCount-1 do
    begin
      cxGv2.Columns[i].Options.Filtering:=False;
      cxGv2.Columns[i].Options.Editing:=False;
      cxGv2.Columns[i].Options.Sorting:=False;
    end;
  end
  else
  begin
    TB_Down2.Caption:='取消设置';
    cxGV2.OptionsData.Editing:=True;
    cxGv2.OptionsView.GroupByBox:=True;
    for i:=0 to cxGv2.ColumnCount-1 do
    begin
      cxGv2.Columns[i].Options.Filtering:=True;
      cxGv2.Columns[i].Options.Editing:=True;
      cxGv2.Columns[i].Options.Sorting:=True;
    end;
  end;
end;

procedure TFrm_AgentBalance.MData1BeforePost(DataSet: TDataSet);
begin
  inherited;
  If DataSet['FBalanceBasePrice']=Null then
     DataSet['FBalanceBasePrice']:=0;
//  DataSet['FBalancePrice']:=DataSet['FBalanceBasePrice']+DataSet['FWorkOutPrice']+DataSet['FOutPrice']+DataSet['FBalanceWorkAdjust']+DataSet['FBalanceAdjust'];


  DataSet['FBalancePrice']:=DataSet['FWorkItemPrice']+DataSet['FBalanceWorkAdjust']+DataSet['FBalanceAdjust'];


  DataSet['FBalanceAmount']:=round(DataSet['FBalanceQry']*DataSet['FBalancePrice']*100)/100;

  DataSet['FRealAmount'] :=DataSet['FBalanceAmount']-DataSet['FQualityAmount'];

end;

procedure TFrm_AgentBalance.WorkBOMSelPropertiesChange(Sender: TObject);
begin
  inherited;
  mdata2.Edit;
  mdata2.Post;
end;

procedure TFrm_AgentBalance.TB_FWorkItemNumClick(Sender: TObject);
var qry: TADOQuery;
begin
   qry:=TADOQuery.Create(self);
   qry.ConnectionString:=mdlData.ReadConnStr;
   qry.EnableBCD:=False;//小数位数>4
     try
     qry.SQL.Text:='select *  from V_WorkList with(nolock) where FIsDelList=0 and SumFBalanceQry=0 and FWorkItemNum=:FWorkItemNum and FDepartmentID=:FDepartmentID '
                  +' order by FDepartmentName,FWorkItemNum,FNumber';
     qry.Parameters.FindParam('FWorkItemNum').value:=Trim(E_FWorkItemNum.Text);
     qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
     qry.Open;
   finally
      ;
   end;

   mdata2.CopyFromDataSet(qry);
   mdata2.Open;

   If mdata2.RecordCount>0 then
   begin
     P_FWorkItemNum:= mdata2['FWorkItemNum'];
     P_FWorkItemID:= mdata2['FWorkItemID'];
     E_FWorkItemDate.Date:= mdata2['FWorkItemDate'];
     E_FWorkData.Text:= mdata2['FWorkData'];
     E_FDepartmentNum.Text:= mdata2['FDepartmentNum'];
     E_FWorkItemNum.Text:= mdata2['FWorkItemNum'];
     E_FWorkItemID.Text:= mdata2['FWorkItemID'];
     E_FClientFullName.Text:= mdata2['FClientFullName'];
     E_FItemId.Text:= mdata2['FItemId'];
     E_FDeliveryPlace.Text:= mdata2['FDeliveryPlace'];
     E_FAgentName.Text:= mdata2['FAgentName'];
     E_FAgentID.Text:= mdata2['FAgentID'];
     E_FE05.Text:= mdata2['FE05'];
     E_FMaterialDate.Text:= mdata2['FMaterialDate'];
     E_FJobMode.Text:= mdata2['FJobMode'];
     E_FItemModel.Text:= mdata2['FItemModel'];
     E_FItemNumber.Text:= mdata2['FItemNumber'];
     E_FFileNo.Text:= mdata2['FFileNo'];
     E_FJobPlace.Text:= mdata2['FJobPlace'];
     E_FAdvancePercent.Value:=mdata2['FAdvancePercent'];
     E_FDeliveryDateTxt.Text:=mdata2['FDeliveryDateTxt'];
     E_FWorkItemRemark.Text:=mdata2['FWorkItemRemark'];
     E_FIsdel.EditValue:=mdata2['FIsdel'];
     If mdata2['FIsDel']=True then
        L_Caption.Caption:='福建龙净环保股份有限公司生产任务单(作废)'
     else
        L_Caption.Caption:='福建龙净环保股份有限公司生产任务单';

   end;
   Panel7.Visible:=True;
end;

procedure TFrm_AgentBalance.SelPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  PC_2.ActivePage:=TS_WorkList;
end;

procedure TFrm_AgentBalance.TB_DownClick(Sender: TObject);
Var i:Integer;
begin
  If  TB_Down.Caption='取消设置' then
  begin
    TB_Down.Caption:='设置';
    cxGV1.OptionsData.Editing:=False;
    cxGv1.OptionsView.GroupByBox:=False;
    for i:=0 to cxGv1.ColumnCount-1 do
    begin
      cxGv1.Columns[i].Options.Filtering:=False;
      cxGv1.Columns[i].Options.Editing:=False;
      cxGv1.Columns[i].Options.Sorting:=False;
    end;
  end
  else
  begin
    TB_Down.Caption:='取消设置';
    cxGV1.OptionsData.Editing:=True;
    cxGv1.OptionsView.GroupByBox:=True;
    for i:=0 to cxGv1.ColumnCount-1 do
    begin
      cxGv1.Columns[i].Options.Filtering:=True;
      cxGv1.Columns[i].Options.Editing:=True;
      cxGv1.Columns[i].Options.Sorting:=True;
    end;
  end;


end;

procedure TFrm_AgentBalance.TB_EXITClick(Sender: TObject);
begin
  inherited;
  self.Close;
end;

procedure TFrm_AgentBalance.cxGV2CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);

begin
  inherited;
  if cxGV2.Controller.FocusedRowIndex=AViewInfo.RecordViewInfo.Index  then  //是否是选中行
     else
  if StrToFloat(AViewInfo.GridRecord.DisplayTexts[SumFBalanceQry_2.Index])>0 then    //设置行颜色
  begin
    ACanvas.Canvas.brush.Color := clInactiveCaptionText;
    ACanvas.FillRect(AViewInfo.Bounds);
  end;
end;

procedure TFrm_AgentBalance.MyTreeView_QryExpanding(Sender: TObject;
  Node: TTreeNode; var AllowExpansion: Boolean);
var
  P :PTree;
  qry:TADOquery;

begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.EnableBCD:=False;//小数位数>4
  If (Node = nil) or
     (PTree(Node.Data).Flag <> cNoLoadFlag) or   // 1.加载标志
     (not Node.HasChildren) or                   // 2.未有子
     (Node.Count>0) then                         // 3.已有子节点
     Exit;

//  qry.SQL.Text:='Select FNumber, FParentNumber,FName,Isleaf,FIsAudit from VT_BalanceList '
//               +'where FBalanceStatus>=2 and FParentNumber= '''
  qry.SQL.Text:='Select FNumber, FParentNumber,FName,Isleaf,FIsAudit from VT_BalanceList with(nolock) '
               +'where FParentNumber= '''
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
    P.IsAudit := qry.FieldByName('FIsAudit').Value;
    P.Flag := cNoLoadFlag;                            // 新节点，未加载标志
    with MyTreeView_qry.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('Isleaf').value;
    end;
    qry.Next;
  end;


end;

procedure TFrm_AgentBalance.MyTreeView_QryChange(Sender: TObject;
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
    ListItemFNumber:=trim(PTree(Node.Data).FNumber);
    P_Isleaf:=PTree(Node.Data).Isleaf;

    try
      qry.SQL.Text:='select distinct FDepartmentNum,FBalanceID,FBalanceNum,FBalanceDate,FAgentID,FAgentName,FBalanceStatus,FBalanceStatusNotes,'
                   +'FBalanceWriteID,FBalanceWrite,FBalanceWriteDate,FDepartmentID,FDepartmentName,'''' as FWorkItemNum,FInvoice,FInvoiceDate  from V_BalanceList with(nolock) '
                   +' where FDepartmentName+'';''+cast(FBalanceStatus as varchar(2))+'';''+cast(FBalanceYear as varchar(4))+'';''+cast(FBalanceMonth as varchar(2))+'';''+FBalanceNum +'';'' like :ListItemFNumber';
      qry.Parameters.FindParam('ListItemFNumber').value:='%'+ListItemFNumber+'%';
      qry.Open;
    finally
       ;
    end;
    mdata_M3.CopyFromDataSet(qry);
    mdata_M3.Open;
    mdata_M3.First;
    If MyItemList(qry,Mdata3,'V_BalanceList','FDepartmentName+'';''+cast(FBalanceStatus as varchar(2))+'';''+cast(FBalanceYear as varchar(4))+'';''+cast(FBalanceMonth as varchar(2))+'';''+FBalanceNum +'';''',ListItemFNumber,'FFullNumber,FBalanceListNum') then

  end;
end;

procedure TFrm_AgentBalance.TB_Ref6Click(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
//  If not TreeVeiwListUserID(qry,MyTreeView_qry,'VT_BalanceList',UserFDepartmentID) then
  If not TreeVeiwListWhere(qry,MyTreeView_qry,'VT_BalanceList',' and FDepartmentID='+IntToStr(UserFDepartmentID) ) then
  begin
    Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;

end;

procedure TFrm_AgentBalance.TB_Down3Click(Sender: TObject);
Var i:Integer;
begin
  If  TB_Down3.Caption='取消设置' then
  begin
    TB_Down3.Caption:='设置';
    cxGV_3.OptionsData.Editing:=False;
    cxGv_3.OptionsView.GroupByBox:=False;
    for i:=0 to cxGv_3.ColumnCount-1 do
    begin
      cxGv_3.Columns[i].Options.Filtering:=False;
      cxGv_3.Columns[i].Options.Editing:=False;
      cxGv_3.Columns[i].Options.Sorting:=False;
    end;
  end
  else
  begin
    TB_Down3.Caption:='取消设置';
    cxGv_3.OptionsData.Editing:=True;
    cxGv_3.OptionsView.GroupByBox:=True;
    for i:=0 to cxGv_3.ColumnCount-1 do
    begin
      cxGv_3.Columns[i].Options.Filtering:=True;
      cxGv_3.Columns[i].Options.Editing:=True;
      cxGv_3.Columns[i].Options.Sorting:=True;
    end;
  end;

end;

procedure TFrm_AgentBalance.TB_Out6Click(Sender: TObject);
begin
  inherited;
  ExportToExcel(cxGrid3,True,TRue);
end;

procedure TFrm_AgentBalance.FAgentName_M3PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  mdata_M3.Edit;
  mdata_M3.Post;
  try
    qry.SQL.Text:='Select * from VT_AgentItem with(nolock) where FDepartmentID=:FDepartmentID and FAgentName like :FAgentName';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Parameters.FindParam('FAgentName').value:='%'+Trim(mdata_M3['FAgentName'])+'%';
    qry.Open;
  finally
     ;
  end;
  If qry.RecordCount=1 then
  begin
    mdata_M3.Edit;
    mdata_M3['FAgentName']:=qry.FieldByName('FAgentName').AsString;
    mdata_M3['FAgentID']:=qry.FieldByName('FAgentID').AsString;
    mdata_M3.Post;
  end
  else
  begin
    selValue:=select('选择生产单位','FNumber','FParentNumber','FNumber','FName',qry);
    If (Length(selValue)>0) and (qry.FieldByName('FDetail').Value<>0) then
    begin
      mdata_M3.Edit;
      mdata_M3['FAgentName']:=qry.FieldByName('FAgentName').AsString;
      mdata_M3['FAgentID']:=qry.FieldByName('FAgentID').AsString;
      mdata_M3.Post;
    end
    else
      application.MessageBox('请选择明细！','系统提示',MB_ICONINFORMATION);

  end;
  qry.Free;

end;

procedure TFrm_AgentBalance.FWorkItemNum_M3PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  mdata_M3.Edit;
  mdata_M3.Post;
  try
    qry.SQL.Text:='Select distinct FWorkItemNum,FAgentName from V_WorkList with(nolock) where FDepartmentID=:FDepartmentID and FAgentID=:FAgentID and FWorkItemNum like :FWorkItemNum order by FWorkItemNum';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Parameters.FindParam('FAgentID').value:=StrToInt(Trim(mdata_M3['FAgentID']));
    qry.Parameters.FindParam('FWorkItemNum').value:='%'+Trim(mdata_M3['FWorkItemNum'])+'%';
    qry.Open;
  finally
     ;
  end;
  If qry.RecordCount=1 then
  begin
    mdata_M3.Edit;
    mdata_M3['FWorkItemNum']:=qry.FieldByName('FWorkItemNum').AsString;
    E_FWorkItemNum.Text:=qry.FieldByName('FWorkItemNum').AsString;
    mdata_M3.Post;
  end
  else
  begin
    If qry.RecordCount<1 then
    begin
      application.MessageBox('此任务单不是该结算用户的！请重新输入','系统提示',MB_ICONERROR);
      Exit;
    end;

    selValue:=select('选择任务单号','FWorkItemNum','FWorkItemNum','FWorkItemNum','FWorkItemNum;FAgentName',qry);
    If (Length(selValue)>0) then
    begin
      mdata_M3.Edit;
      mdata_M3['FWorkItemNum']:=qry.FieldByName('FWorkItemNum').AsString;
      E_FWorkItemNum.Text:=qry.FieldByName('FWorkItemNum').AsString;
      mdata_M3.Post;
    end
    else
      application.MessageBox('请选择明细！','系统提示',MB_ICONINFORMATION);
  end;

  PC_2.ActivePage:=TS_WorkList;
  TB_FWorkItemNum.Click;

end;

procedure TFrm_AgentBalance.FAgentName_MPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  mdata_M.Edit;
  mdata_M.Post;

  try
    qry.SQL.Text:='Select * from VT_AgentItem with(nolock) where FDepartmentID=:FDepartmentID and FAgentName like :FAgentName';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Parameters.FindParam('FAgentName').value:='%'+Trim(mdata_M['FAgentName'])+'%';
    qry.Open;
  finally
     ;
  end;
  If qry.RecordCount=1 then
  begin
    mdata_M.Edit;
    mdata_M['FAgentName']:=qry.FieldByName('FAgentName').AsString;
    mdata_M['FAgentID']:=qry.FieldByName('FAgentID').AsString;
    mdata_M.Post;
  end
  else
  begin
    selValue:=select('选择生产单位','FNumber','FParentNumber','FNumber','FName',qry);
    If (Length(selValue)>0) and (qry.FieldByName('FDetail').Value<>0) then
    begin
      mdata_M.Edit;
      mdata_M['FAgentName']:=qry.FieldByName('FAgentName').AsString;
      mdata_M['FAgentID']:=qry.FieldByName('FAgentID').AsString;
      mdata_M.Post;
    end
    else
      application.MessageBox('请选择明细！','系统提示',MB_ICONINFORMATION);

  end;
  qry.Free;


end;

procedure TFrm_AgentBalance.FWorkItemNum_MPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  mdata_M.Edit;
  mdata_M.Post;
  try
    qry.SQL.Text:='Select distinct FWorkItemNum,FBranchItemNumber,FAgentName,FAgentID,FItemID,FTaxRate from V_WorkList with(nolock) '
                 +' where FIsDelList=0 and FDepartmentID=:FDepartmentID and FAgentID=:FAgentID '
                 +' and FWorkItemNum like :FWorkItemNum and '
                 +'FWorkListID not in (select distinct FWorkListID from V_BalanceList with(nolock) '
                 +'where FDepartmentID=:FDepartmentID1 and FAgentID=:FAgentID1) '
                 +' order by FWorkItemNum';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Parameters.FindParam('FAgentID').value:=StrToInt(Trim(mdata_M['FAgentID']));
    qry.Parameters.FindParam('FWorkItemNum').value:='%'+Trim(mdata_M['FWorkItemNum'])+'%';
    qry.Parameters.FindParam('FDepartmentID1').value:=UserFDepartmentID;
    qry.Parameters.FindParam('FAgentID1').value:=StrToInt(Trim(mdata_M['FAgentID']));

    qry.Open;
  finally
     ;
  end;
  If qry.RecordCount=1 then
  begin
    mdata_M.Edit;
    mdata_M['FWorkItemNum']:=qry.FieldByName('FWorkItemNum').AsString;
    mdata_M['FAgentID']:=qry.FieldByName('FAgentID').AsString;
    mdata_M['FItemID']:=qry.FieldByName('FItemID').AsString;
    mdata_M['FTaxRate']:=qry.FieldByName('FTaxRate').Value;
    E_FWorkItemNum.Text:=qry.FieldByName('FWorkItemNum').AsString;
    mdata_M.Post;
    PC_2.ActivePage:=TS_WorkList;
    TB_FWorkItemNum.Click;
  end
  else
  begin
    If qry.RecordCount<1 then
    begin
      application.MessageBox('此任务单无应结算数据！请重新输入','系统提示',MB_ICONERROR);
      Exit;
    end;

    selValue:=select('选择任务单号','FWorkItemNum','FWorkItemNum','FWorkItemNum','FWorkItemNum;FBranchItemNumber;FAgentName',qry);
    If (Length(selValue)>0) then
    begin
      mdata_M.Edit;
      mdata_M['FWorkItemNum']:=qry.FieldByName('FWorkItemNum').AsString;
      mdata_M['FAgentID']:=qry.FieldByName('FAgentID').AsString;
      mdata_M['FItemID']:=qry.FieldByName('FItemID').AsString;
      mdata_M['FTaxRate']:=qry.FieldByName('FTaxRate').Value;
      E_FWorkItemNum.Text:=qry.FieldByName('FWorkItemNum').AsString;
      mdata_M.Post;
    end
    else
      application.MessageBox('请选择明细！','系统提示',MB_ICONINFORMATION);
    PC_2.ActivePage:=TS_WorkList;
    TB_FWorkItemNum.Click;
  end;
end;

procedure TFrm_AgentBalance.Act_StatusExecute(Sender: TObject);
begin
  inherited;
  Case mdata_M['FBalanceStatus'] of
    0:       //填单
    begin
      If mdata_M['FBalanceWriteID']=UserNumID then  //操作者为本人
      begin
        TB_Del.Visible:=mdlData.PermissionCheckRights(TFrm_AgentBalance.ClassName,'删除');
        N_Del.Visible:=mdlData.PermissionCheckRights(TFrm_AgentBalance.ClassName,'删除');
        TB_Edit.Visible:=mdlData.PermissionCheckRights(TFrm_AgentBalance.ClassName,'修改');
        N_Edit.Visible:=mdlData.PermissionCheckRights(TFrm_AgentBalance.ClassName,'修改');
        TB_Submit.Visible:=mdlData.PermissionCheckRights(TFrm_AgentBalance.ClassName,'提交');
        N_Submit.Visible:=mdlData.PermissionCheckRights(TFrm_AgentBalance.ClassName,'提交');
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
      //TB_PushDown.Visible:=False;
      //N_PushDown.Visible:=False;
    end;
  end;
  Case mdata_M['FBalanceStatus'] of
    1:       //提交
    begin
      If mdata_M['FBalanceWriteID']=UserNumID then  //提交者为本人
      begin
        TB_Submit.Visible:=mdlData.PermissionCheckRights(TFrm_AgentBalance.ClassName,'提交');
        N_Submit.Visible:=mdlData.PermissionCheckRights(TFrm_AgentBalance.ClassName,'提交');
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
      TB_Check.Visible:=mdlData.PermissionCheckRights(TFrm_AgentBalance.ClassName,'校对');
      N_Check.Visible:=mdlData.PermissionCheckRights(TFrm_AgentBalance.ClassName,'校对');
      TB_Check.Caption:='校对';
      N_Check.Caption:='校对';
      TB_Audit.Visible:=False;
      N_Audit.Visible:=False;
     // TB_PushDown.Visible:=False;
     // N_PushDown.Visible:=False;
    end;
  end;

  Case mdata_M['FBalanceStatus'] of
    2:           //校对
    begin
      TB_Check.Visible:=mdlData.PermissionCheckRights(TFrm_AgentBalance.ClassName,'校对');
      N_Check.Visible:=mdlData.PermissionCheckRights(TFrm_AgentBalance.ClassName,'校对');
      TB_Check.Caption:='反校对';
      N_Check.Caption:='反校对';
      TB_Del.Visible:=False;
      N_Del.Visible:=False;
      TB_Edit.Visible:=False;
      N_Edit.Visible:=False;
      TB_Submit.Visible:=False;
      N_Submit.Visible:=False;
      TB_Audit.Visible:=mdlData.PermissionCheckRights(TFrm_AgentBalance.ClassName,'审核');
      N_Audit.Visible:=mdlData.PermissionCheckRights(TFrm_AgentBalance.ClassName,'审核');
      TB_Audit.Caption:='审核';
      N_Audit.Caption:='审核';
      //TB_PushDown.Visible:=False;
      //N_PushDown.Visible:=False;
    end;
  end;
  Case mdata_M['FBalanceStatus'] of
    3:           //审核
    begin
      TB_Audit.Visible:=mdlData.PermissionCheckRights(TFrm_AgentBalance.ClassName,'审核');
      N_Audit.Visible:=mdlData.PermissionCheckRights(TFrm_AgentBalance.ClassName,'审核');
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
     // TB_PushDown.Visible:=mdlData.PermissionCheckRights(TFrm_AgentBalance.ClassName,'下推');
     // N_PushDown.Visible:=mdlData.PermissionCheckRights(TFrm_AgentBalance.ClassName,'下推');
     // TB_PushDown.Caption:='下推';
     // N_PushDown.Caption:='下推';
    end;
  end;
 { Case mdata_M['FBalanceStatus'] of
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
      TB_PushDown.Visible:=mdlData.PermissionCheckRights(TFrm_AgentBalance.ClassName,'下推');
      N_PushDown.Visible:=mdlData.PermissionCheckRights(TFrm_AgentBalance.ClassName,'下推');
      TB_PushDown.Caption:='反下推';
      N_PushDown.Caption:='反下推';
    end;
  end;  }

end;

procedure TFrm_AgentBalance.Act_RefExecute(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If not TreeVeiwListWhere(qry,MyTreeView1,'VT_BalanceList',' and FDepartmentID='+IntToStr(UserFDepartmentID) ) then
  begin
    Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;
end;

procedure TFrm_AgentBalance.Act_CheckExecute(Sender: TObject);
var
 qry:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  P_List :=mdata_M['FBalanceNum'];
  If (TB_Check.Caption='校对') or (N_Check.Caption='校对') then
  begin
    If application.MessageBox(Pchar('警告：是否校对结算单号为：【'+P_List+'】的单据？'+chr(13)+chr(13)
                                   +'校对后的数据不允许修改和删除，确定要校对本单据吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      try
        qry.SQL.Text:='Update T_BalanceItem Set FBalanceStatus=2,FBalanceCheckID=:FBalanceCheckID,FBalanceCheckDate=:FBalanceCheckDate  where FBalanceID=:FBalanceID';
        qry.Parameters.FindParam('FBalanceCheckID').value:= UserNumID;
        qry.Parameters.FindParam('FBalanceCheckDate').value:= now();
        qry.Parameters.FindParam('FBalanceID').value:=mdata_M['FBalanceID'];
        qry.ExecSQL;
      finally
         ;
      end;
      mdata_M.Edit;
      mdata_M['FBalanceStatus']:=2;
      mdata_M['FBalanceStatusNotes']:='校对';
      mdata_M['FBalanceCheckID']:=UserNumID;
      mdata_M['FBalanceCheck']:=UserNum;
      mdata_M['FBalanceCheckDate']:=now();
      mdata_M.Post;
      TB_Check.Caption:='反校对';
      Act_Status.Execute;  //权限设置
      application.MessageBox('校对完毕！','系统提示',MB_ICONINFORMATION);
    end;
    Exit;
  end;
  If (TB_Check.Caption='反校对') or (N_Check.Caption='反校对') then
  begin
    If application.MessageBox(Pchar('警告：是否反校对结算单号为：【'+P_List+'】的单据？'+chr(13)+chr(13)
                                   +'反校对后的数据不允许修改和删除，确定要反校对本单据吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      try
        qry.SQL.Text:='Update T_BalanceItem Set FBalanceStatus=1,FBalanceCheckID=:FBalanceCheckID,FBalanceCheckDate=:FBalanceCheckDate  where FBalanceID=:FBalanceID';
        qry.Parameters.FindParam('FBalanceCheckID').value:= UserNumID;
        qry.Parameters.FindParam('FBalanceCheckDate').value:= Null;
        qry.Parameters.FindParam('FBalanceID').value:= mdata_M['FBalanceID'];
        qry.ExecSQL;
      finally
         ;
      end;
      mdata_M.Edit;
      mdata_M['FBalanceStatus']:=1;
      mdata_M['FBalanceStatusNotes']:='提交';
      mdata_M['FBalanceCheckID']:=UserNumID;
      mdata_M['FBalanceCheck']:='';
      mdata_M['FBalanceCheckDate']:=Null;
      mdata_M.Post;
      TB_Check.Caption:='校对';
      Act_Status.Execute;  //权限设置
      application.MessageBox('反校对完毕！','系统提示',MB_ICONINFORMATION);
    end;
    Exit;
  end;

  Act_Ref.Execute;

end;

procedure TFrm_AgentBalance.Act_AuditExecute(Sender: TObject);
var
 qry:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  P_List :=mdata_M['FBalanceNum'];
  If (TB_Audit.Caption='审核') or (N_Audit.Caption='审核') then
  begin
    If application.MessageBox(Pchar('警告：是否审核结算单号为：【'+P_List+'】的单据？'+chr(13)+chr(13)
                                   +'审核后的数据不允许修改和删除，确定要审核本单据吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      try
        qry.SQL.Text:='Update T_BalanceItem Set FBalanceStatus=3,FBalanceAuditID=:FBalanceAuditID,FBalanceAuditDate=:FBalanceAuditDate  where FBalanceID=:FBalanceID';
        qry.Parameters.FindParam('FBalanceAuditID').value:= UserNumID;
        qry.Parameters.FindParam('FBalanceAuditDate').value:= now();
        qry.Parameters.FindParam('FBalanceID').value:=mdata_M['FBalanceID'];
        qry.ExecSQL;
      finally
         ;
      end;
      mdata_M.Edit;
      mdata_M['FBalanceStatus']:=3;
      mdata_M['FBalanceStatusNotes']:='审核';
      mdata_M['FBalanceAuditID']:=UserNumID;
      mdata_M['FBalanceAudit']:=UserNum;
      mdata_M['FBalanceAuditDate']:=now();
      mdata_M.Post;
      TB_Audit.Caption:='反审核';
      Act_Status.Execute;  //权限设置
      application.MessageBox('审核完毕！','系统提示',MB_ICONINFORMATION);
    end;
    Exit;
  end;
  If (TB_Audit.Caption='反审核') or (N_Audit.Caption='反审核') then
  begin
    If application.MessageBox(Pchar('警告：是否反审核结算单号为：【'+P_List+'】的单据？'+chr(13)+chr(13)
                                   +'反审核后的数据不允许修改和删除，确定要反审核本单据吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      try
        qry.SQL.Text:='Update T_BalanceItem Set FBalanceStatus=2,FBalanceAuditID=:FBalanceAuditID,FBalanceAuditDate=:FBalanceAuditDate  where FBalanceID=:FBalanceID';
        qry.Parameters.FindParam('FBalanceAuditID').value:= UserNumID;
        qry.Parameters.FindParam('FBalanceAuditDate').value:=Null;
        qry.Parameters.FindParam('FBalanceID').value:= mdata_M['FBalanceID'];
        qry.ExecSQL;
      finally
         ;
      end;
      mdata_M.Edit;
      mdata_M['FBalanceStatus']:=2;
      mdata_M['FBalanceStatusNotes']:='校对';
      mdata_M['FBalanceAuditID']:=UserNumID;
      mdata_M['FBalanceAudit']:='';
      mdata_M['FBalanceAuditDate']:=Null;
      mdata_M.Post;
      TB_Audit.Caption:='审核';
      Act_Status.Execute;  //权限设置
      application.MessageBox('反审核完毕！','系统提示',MB_ICONINFORMATION);
    end;
    Exit;
  end;
  Act_Ref.Execute;


end;

procedure TFrm_AgentBalance.Act_AppExecute(Sender: TObject);
var P_FBalanceNum:String;
    i:Integer;
    qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.EnableBCD:=False;//小数位数>4
  P_state :=0;     //新增
  mData_M.Close;
  try
    qry.SQL.Text:='Select * from V_BalanceList with(nolock) where FBalanceID=:FBalanceID';
    qry.Parameters.FindParam('FBalanceID').value:= 0;
    qry.Open;
  finally
    ;
  end;
  mData_M.CopyFromDataSet(qry);
  mData_M.Open;
  mData1.CopyFromDataSet(qry);

  Mdata_M.Edit;
  Mdata_M['FBalanceDate']:=date();
  Mdata_M['FBalanceStatus']:=0;//制单标识
  mData_M['FBalanceID']:=0;
  mdata_M['FAgentName']:='';
  mdata_M['FAgentID']:=0;
  mdata_M['FWorkItemNum']:='';
  mdata_M['FDepartmentNum']:=UserFDepartmentNum;
  mdata_M['FInvoice']:='发票未收';
  mdata_M['FInvoiceDate']:='1900-01-01';
  mdata_M['FBalanceWriteID']:=UserNumID;
  mdata_M['FBalanceWrite']:=UserNum;
  mdata_M['FBalanceWriteDate']:=date();
  Mdata_M.Post;

  Self.SelMaxNum;//取最大号
  Self.Set_Open;
  mdata1.Close;
  mdata1.Open;

end;

procedure TFrm_AgentBalance.Act_EditExecute(Sender: TObject);
var
 qry:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.EnableBCD:=False;//小数位数>4
  P_state :=1;
  try
    qry.SQL.Text:='select distinct FDepartmentNum,FBalanceID,FBalanceNum,FBalanceDate,FAgentID,FAgentName,FBalanceStatus,FBalanceStatusNotes,'
                +'FBalanceWriteID,FBalanceWrite,FBalanceWriteDate,FBalanceSubmitDate,FBalanceCheckID,FBalanceCheck,FBalanceCheckDate,'
                +'FBalanceAuditID,FBalanceAudit,FBalanceAuditDate,'
                +'FDepartmentID,FDepartmentName,''             '' as FWorkItemNum,FInvoice,FInvoiceDate  from V_BalanceList with(nolock) '
               +' where FBalanceID=:FBalanceID ';

    qry.Parameters.FindParam('FBalanceID').value:= mData_M['FBalanceID'];
    qry.Open;
  finally
    ;
  end;
  mData_M.CopyFromDataSet(qry);
  mData_M.Open;
  //Act_SetOpen.Execute;
  Self.Set_Open;

{  If (mdata_M.RecordCount<1) then
    Exit;
  Act_SetOpen.Execute;

  P_state :=1;
  If (mdata1.RecordCount<1) then
    Exit;


    }
{  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Select distinct FBalanceNum from V_BalanceList where FFullNumber like :FFullNumber';
    qry.Parameters.FindParam('FFullNumber').Value:=ListItemFNumber1+'%';
    qry.Open;
  finally
     ;
  end;
  if qry.RecordCount>1 then
  begin
    application.MessageBox('只能修改单张结算单！请重新选择!','系统提示',MB_ICONINFORMATION);
    Exit;
  end;
 }


end;

procedure TFrm_AgentBalance.Act_DelExecute(Sender: TObject);
var
  qry:TADOQuery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If (mdata_M.RecordCount<1) then
    Exit;

  If application.MessageBox(Pchar('警告：是否删除结算单号为：【'+Trim(Mdata_M['FBalanceNum'])+'】的信息？'+chr(13)+chr(13)
                           +'删除数据操作将不可恢复，确定要删除本单据吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
  If application.MessageBox(Pchar('再次警告：是否删除结算单号为：【'+Trim(Mdata_M['FBalanceNum'])+'】的信息？'+chr(13)+chr(13)
                           +'删除数据操作将不可恢复，确定要删除本单据吗？'),'再次警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then

  begin
    //单据删除
    If not DelRd then
    begin
      application.MessageBox('删除数据失败！','系统提示',MB_ICONINFORMATION);
      mdlData.conn.RollbackTrans;
      Exit;
    end;
    mdata_M.Edit;
    mdata_M.Delete;
  end;
  mdata1.Close;
  qry.Free;
 // TB_ref.Click;


end;

procedure TFrm_AgentBalance.Act_OutExecute(Sender: TObject);
begin
  inherited;
  ExportToExcel(cxGrid1,True,TRue);
end;

procedure TFrm_AgentBalance.Act_PrintExecute(Sender: TObject);
begin
  inherited;
  FrDBDataSet.DataSet:=mdata1;
 // FrReport.LoadFromFile(ExtractFileDir(Application.ExeName)+'\Report_DesignBOM_BalanceItem.frf');

  If Trim(Mdata_M['FDepartmentNum'])='SGB' then
    FrReport.LoadFromFile(ExtractFileDir(Application.ExeName)+'\Report_DesignBOM_BalanceItem.frf');
  If (Trim(Mdata_M['FDepartmentNum'])='LKDD') then
    FrReport.LoadFromFile(ExtractFileDir(Application.ExeName)+'\Report_DesignBOM_BalanceItem_LkDD.frf');

   If Trim(Mdata_M['FDepartmentNum'])='LKDCC' then
    FrReport.LoadFromFile(ExtractFileDir(Application.ExeName)+'\Report_DesignBOM_BalanceItem_LkDCC.frf');

  FrReport.ShowReport;

end;

procedure TFrm_AgentBalance.TB_FInvoiceClick(Sender: TObject);
begin
  inherited;
  If (mdata_M.RecordCount<1) then
    Exit;
  P_List :=mdata_M['FBalanceNum'];
  If application.MessageBox(Pchar('警告：是否对结算单号为：【'+P_List+'】的单据进行核销？'+chr(13)+chr(13)
                                   +'核销后的数据不允许修改和删除，确定要核销本单据吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then

  cxGV1.OptionsData.Editing:=True;
  FInvoice_M.Options.Editing:=True;
  FInvoiceDate_M.Options.Editing:=True;


end;

procedure TFrm_AgentBalance.TB_FInvoice_SaveClick(Sender: TObject);
var
  qry:TADOQuery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  Mdata_M.Edit;
  Mdata_M.Post;
  P_List :=mdata_M['FBalanceNum'];
  If application.MessageBox(Pchar('警告：是否对结算单号为：【'+P_List+'】的单据进行核销？'+chr(13)+chr(13)
                                   +'核销后的数据不允许修改和删除，确定要核销本单据吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then

  try
    qry.SQL.Text:='Update T_BalanceItem Set FInvoice=:FInvoice,FInvoiceDate=:FInvoiceDate  where FBalanceID=:FBalanceID';
    qry.Parameters.FindParam('FInvoice').value:= mdata_M['FInvoice'];
    qry.Parameters.FindParam('FInvoiceDate').value:= mdata_M['FInvoiceDate'];
    qry.Parameters.FindParam('FBalanceID').value:=mdata_M['FBalanceID'];
    qry.ExecSQL;
  finally
     ;
  end;
  cxGV1.OptionsData.Editing:=False;
end;

procedure TFrm_AgentBalance.Act_SubmitExecute(Sender: TObject);
var
 qry:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  P_List :=mdata_M['FBalanceNum'];
  If (TB_Submit.Caption='提交') or (N_Submit.Caption='提交') then
  begin
    If application.MessageBox(Pchar('警告：是否提交结算单号为：【'+P_List+'】的单据？'+chr(13)+chr(13)
                                   +'提交后的数据不允许修改和删除，确定要提交本单据吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      try
        qry.SQL.Text:='Update T_BalanceItem Set FBalanceStatus=1,FBalanceSubmitDate=:FBalanceSubmitDate  where FBalanceID=:FBalanceID';
        qry.Parameters.FindParam('FBalanceSubmitDate').value:= now();
        qry.Parameters.FindParam('FBalanceID').value:=mdata_M['FBalanceID'];
        qry.ExecSQL;
      finally
         ;
      end;
      mdata_M.Edit;
      mdata_M['FBalanceStatus']:=1;
      mdata_M['FBalanceStatusNotes']:='提交';
      mdata_M['FBalanceSubmitDate']:=now();
      mdata_M.Post;
      TB_Submit.Caption:='反提交';
      Act_Status.Execute;  //权限设置
      application.MessageBox('提交完毕！','系统提示',MB_ICONINFORMATION);    end;
    Exit;
  end;
  If (TB_Submit.Caption='反提交') or (N_Submit.Caption='反提交') then
  begin
    If application.MessageBox(Pchar('警告：是否反提交结算单号为：【'+P_List+'】的单据？'+chr(13)+chr(13)
                                   +'反提交后的数据不允许修改和删除，确定要反提交本单据吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      try
        qry.SQL.Text:='Update T_BalanceItem Set FBalanceStatus=0,FBalanceSubmitDate=:FBalanceSubmitDate  where FBalanceID=:FBalanceID';
        qry.Parameters.FindParam('FBalanceSubmitDate').value:= Null;
        qry.Parameters.FindParam('FBalanceID').value:= mdata_M['FBalanceID'];
        qry.ExecSQL;
      finally
         ;
      end;
      mdata_M.Edit;
      mdata_M['FBalanceStatus']:=0;
      mdata_M['FBalanceStatusNotes']:='填单';
      mdata_M['FBalanceSubmitDate']:=Null;
      mdata_M.Post;
      TB_Submit.Caption:='提交';
      Act_Status.Execute;  //权限设置
      application.MessageBox('反提交完毕！','系统提示',MB_ICONINFORMATION);
    end;
    Exit;
  end;
  Act_Ref.Execute;

end;

procedure TFrm_AgentBalance.cxGV_MFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
var qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  If  P_state=2 then   //不在新增修改状态
  begin
    If (mData_M['FBalanceID']<>0) and (mData_M['FBalanceID']<>Null) then
    begin
      If MyItemListID(qry,Mdata1,'V_BalanceList',' FBalanceID='+IntToStr(Mdata_M['FBalanceID']),'FFullNumber',) then

      {If MyItemList(qry,Mdata1,'V_BalanceList','cast(FBalanceID as varchar(20))',
                    Mdata_M['FBalanceID'],'FBalanceNum,FBalanceListNum') then }

       Act_Status.Execute  //权限设置
    end;
  end;

end;

procedure TFrm_AgentBalance.cxGV_M3FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
var qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If (mData_M['FBalanceID']<>0) and (mData_M['FBalanceID']<>Null) then
  begin
    If MyItemList(qry,Mdata1,'V_BalanceList','cast(FBalanceID as varchar(20))',
                  Mdata_M['FBalanceID'],'FBalanceNum,FBalanceListNum') then

  end;
end;

procedure TFrm_AgentBalance.ToolButton2Click(Sender: TObject);
begin
  inherited;
  PC_2.ActivePage:=TS_BalanceList;
end;

procedure TFrm_AgentBalance.TB_AgentBalanceClick(Sender: TObject);
var
  Query_Sp:TADOStoredProc;
  i,k,ReNum,R_Count,L:Integer;
  ExcelApp,MyWorkBook,vLastSheet: Variant;
  filepath,savefilepath,copystart,copyend,copystart1:string;
  qry,qry1:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry1:=TAdoQuery.Create(self);
  qry1.ConnectionString:=mdlData.ReadConnStr;
  qry.EnableBCD:=False;//小数位数>4
  qry1.EnableBCD:=False;//小数位数>4

  If  mdata_M.RecordCount>1 then
  begin
    application.MessageBox('请选择单条记录！','系统提示',MB_ICONINFORMATION);
    Exit;
  end;

  P_List:=mdata_M['FBalanceNum'];

  filepath:=Extractfilepath(application.ExeName)+'电袋外协结算明细表模版.xls';
  if (mdata_M.Active) and (mdata_M.recordcount>0) then
  Begin
    SaveDialog1.FileName:='电袋外协结算('+P_List+')';
    SaveDialog1.Filter:='.xls';
    SaveDialog1.Execute;

    if (mdata_M.FieldByName('FBalanceNum').AsString<>'') Or (mdata_M.FieldByName('FBalanceNum').AsString<>Null) then
        savefilepath:=SaveDialog1.FileName+'.xls';

    if FileExists(savefilepath) then
    begin
      DeleteFile(savefilepath) ;
    end;
    stbMsg.Caption:='提示信息：正在导出电袋外协结算明细表:'+'【'+mdata_M.FieldByName('FBalanceNum').AsString+'】';
    stbBar.Refresh;

    ExcelApp:= CreateOleObject('Excel.Application' );
    ExcelApp.Visible:=False;  //工作表显示

    ExcelApp.DisplayAlerts:=False;                  //不显示提示框
    MyWorkBook:=ExcelApp.WorkBooks.Open( filepath );   //打开模版

    try
      qry.SQL.Text:='select distinct FBalanceNum from  V_BalanceList with(nolock) '
                  +' where FDepartmentName+'';''+cast(FBalanceStatus as varchar(2))+'';''+cast(FBalanceYear as varchar(4))+'';''+cast(FBalanceMonth as varchar(2))+'';''+FBalanceNum +'';'' like :ListItemFNumber ';
      qry.Parameters.FindParam('ListItemFNumber').value:= ListItemFNumber+'%';
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
       qry1.SQL.Text:='select * from V_BalanceList where FDepartmentName+'';''+cast(FBalanceStatus as varchar(2))+'';''+cast(FBalanceYear as varchar(4))+'';''+cast(FBalanceMonth as varchar(2))+'';''+FBalanceNum +'';'' like :ListItemFNumber order by FFullNumber,FBalanceListNum ';
        qry1.Parameters.FindParam('ListItemFNumber').value:= ListItemFNumber+'%';
       qry1.Open;
     finally
       ;
     end;
     if qry1.RecordCount>0 then
     begin
       mdata1.Close;
       mdata1.CopyFromDataSet(qry1);
     end;
     vLastSheet:=MyWorkBook.Sheets[MyWorkBook.Sheets.Count];
     MyWorkBook.Sheets[1].Copy(EmptyParam,vLastSheet);
     MyWorkBook.WorkSheets[k].Name:=IntToStr(k)+Mdata1['FBalanceNum'];
     MyWorkBook.WorkSheets[k].Activate;

      //标题
      if (MData1['FWorkData']='电袋事业部') or (MData1['FWorkData']='电袋与管带事业部') then
         MyWorkBook.WorkSheets[k].Cells[1,1].Value:=AnsiReplaceStr(MyWorkBook.WorkSheets[k].Cells[1,1].Value,'A','福建龙净环保股份有限公司'); //公司名称
      if (MData1['FWorkData']='电袋事业部(厦门)') or  (MData1['FWorkData']='电袋与管带事业部(厦门)') then
         MyWorkBook.WorkSheets[k].Cells[1,1].Value:=AnsiReplaceStr(MyWorkBook.WorkSheets[k].Cells[1,1].Value,'A','厦门龙净环保技术有限公司'); //公司名称
      if (MData1['FWorkData']='电袋与管带事业部(智能)') then
         MyWorkBook.WorkSheets[k].Cells[1,1].Value:=AnsiReplaceStr(MyWorkBook.WorkSheets[k].Cells[1,1].Value,'A','福建龙净环保智能输送工程有限公司'); //公司名称

      if FloatToStr(mdata1['FTaxRate']*100)+'%'='11%' then
         MyWorkBook.WorkSheets[k].Cells[2,1].Value := MData1['FWorkData']+'除尘器设备运输结算明细表'
      else
         MyWorkBook.WorkSheets[k].Cells[2,1].Value := MData1['FWorkData']+'除尘器本体外协加工结算明细表';


      if FloatToStr(mdata1['FTaxRate']*100)+'%'='11%' then
         MyWorkBook.WorkSheets[k].Cells[4,1].Value := '承运单位：'
      else
         MyWorkBook.WorkSheets[k].Cells[4,1].Value := '生产单位：';

      MyWorkBook.WorkSheets[k].Cells[4,3].Value := Trim(mdata1.FieldByName('FAgentName').AsString);
      MyWorkBook.WorkSheets[k].Cells[4,11].Value := Trim(mdata1.FieldByName('FBranchFileNo').AsString);
      MyWorkBook.WorkSheets[k].Cells[4,15].Value := Trim(mdata1.FieldByName('FDepartmentNum').AsString)+' '+Trim(mdata1.FieldByName('FBalanceNum').AsString);

      MyWorkBook.WorkSheets[k].Cells[5,3].Value := Trim(mdata1.FieldByName('FClientFullName').AsString);
      MyWorkBook.WorkSheets[k].Cells[5,11].Value := Trim(mdata1.FieldByName('FBranchItemNumber').AsString);
      MyWorkBook.WorkSheets[k].Cells[5,15].Value :=FloatToStr(mdata1['FTaxRate']*100)+'%';


      //循环行开始
      i:=7;

       //工作薄名称
      MyWorkBook.WorkSheets[k].Name:=mdata1.FieldByName('FBalanceNum').AsString;
      copystart:='A'+IntToStr(i);
      if mdata1.recordcount>0 then
      Begin
        copystart:='A'+IntToStr(i);
        copystart1:='A'+IntToStr(i+1);
        copyend:='Q'+IntToStr(i);  //区域
        If ((mdata1.RecordCount+3) mod 16)>0 then
        begin
          ReNum:=mdata1.RecordCount+(16-((mdata1.RecordCount+2) mod 16))-1;
          L:=mdata1.RecordCount+(16-((mdata1.RecordCount+2) mod 16))-1;
        end
        else
        begin
          ReNum:=mdata1.RecordCount-1;
          L:=mdata1.RecordCount-1;
        end;
        while ReNum>0 do
        Begin
          ExcelApp.ActiveSheet.Range[copystart+':'+copyend].Copy;
          ExcelApp.ActiveSheet.Rows[i+1].Insert;
          ExcelApp.ActiveSheet.Range[copystart1].PasteSpecial;
          Renum:=Renum-1;
        end;
       //合计制单、审核栏
        MyWorkBook.WorkSheets[k].Cells[i+L+1,8].Value := '=SUM(H7:H'+IntToStr(i+L)+')'; //
        MyWorkBook.WorkSheets[k].Cells[i+L+1,10].Value := '=SUM(J7:J'+IntToStr(i+L)+')'; //
        MyWorkBook.WorkSheets[k].Cells[i+L+1,11].Value := '=SUM(K7:K'+IntToStr(i+L)+')'; //
        MyWorkBook.WorkSheets[k].Cells[i+L+1,12].Value := '=SUM(L7:L'+IntToStr(i+L)+')'; //
        MyWorkBook.WorkSheets[k].Cells[i+L+1,13].Value := '=round(SUM(L7:L'+IntToStr(i+L)+')/(1+O5),2)';     //20150806修改
      // MyWorkBook.WorkSheets[k].Cells[i+L+1,13].Value := '=SUM(M7:M'+IntToStr(i+L)+')'; //

          //制单、审核栏
        MyWorkBook.WorkSheets[k].Cells[i+L+2,3].Value:=mdata1.FieldByName('FBalanceWrite').AsString; //制单
        if MData1['FAgentName']='厦门龙净环保物料输送科技有限公司' then
           MyWorkBook.WorkSheets[k].Cells[i+L+2,5].Value:='市场部：'
        else
           MyWorkBook.WorkSheets[k].Cells[i+L+2,5].Value:='质量：';
        if MData1['FAgentName']='厦门龙净环保物料输送科技有限公司' then
           MyWorkBook.WorkSheets[k].Cells[i+L+2,7].Value:='工程部：'
        else
           MyWorkBook.WorkSheets[k].Cells[i+L+2,7].Value:='核对：';

        if MData1['FSysTem']='体系内' then
        begin
           MyWorkBook.WorkSheets[k].Cells[i+L+2,13].Value:='财务审核：';
           MyWorkBook.WorkSheets[k].Cells[i+L+2,15].Value:='分管领导审核：';
        end
        else
        begin
           MyWorkBook.WorkSheets[k].Cells[i+L+2,13].Value:='';
           MyWorkBook.WorkSheets[k].Cells[i+L+2,15].Value:='';
        end;
        //MyWorkBook.WorkSheets[k].Cells[i+L+3,9].Value:=datetostr(date());

        mdata1.first;
        while not mdata1.eof do
        Begin
         // MyWorkBook.WorkSheets[k].Cells[i,1].Value := i-6;
          MyWorkBook.WorkSheets[k].Cells[i,1].Value :=mdata1.FieldByName('FBalanceListNum').AsString;
          if mdata1.FieldByName('FBalanceModel').AsString='' then
             MyWorkBook.WorkSheets[k].Cells[i,2].Value := mdata1.FieldByName('FBalanceName').AsString
          else
             MyWorkBook.WorkSheets[k].Cells[i,2].Value := mdata1.FieldByName('FBalanceName').AsString+'['+mdata1.FieldByName('FBalanceModel').AsString+']';

          MyWorkBook.WorkSheets[k].Cells[i,6].Value := mdata1.FieldByName('FMaterialDate').AsString;
          MyWorkBook.WorkSheets[k].Cells[i,7].Value := mdata1.FieldByName('FUnitName').AsString;
          MyWorkBook.WorkSheets[k].Cells[i,8].Value := mdata1.FieldByName('FBalanceQry').AsString;
          MyWorkBook.WorkSheets[k].Cells[i,9].Value := mdata1.FieldByName('FBalancePrice').AsString;
          MyWorkBook.WorkSheets[k].Cells[i,10].Value := mdata1.FieldByName('FBalanceAmount').AsString;
          If mdata1['FQualityAmount']=0 then
             MyWorkBook.WorkSheets[k].Cells[i,11].Value := ''
          else
            MyWorkBook.WorkSheets[k].Cells[i,11].Value := mdata1.FieldByName('FQualityAmount').AsString;
          MyWorkBook.WorkSheets[k].Cells[i,12].Value :=mdata1.FieldByName('FRealAmount').AsString;
          MyWorkBook.WorkSheets[k].Cells[i,13].Value := mdata1.FieldByName('FBalanceTaxAmount').AsString;
          MyWorkBook.WorkSheets[k].Cells[i,14].Value := mdata1.FieldByName('FWorkItemNum').AsString;
          MyWorkBook.WorkSheets[k].Cells[i,15].Value := mdata1.FieldByName('FBalanceRemark').AsString;
          mdata1.next;
          i:=i+1;
        End;
      end;
      qry.Next ;
      ExcelApp.Visible:=True;
      MyWorkBook.WorkSheets[k].PrintPreview;  //打印
      ExcelApp.Visible:=False;
      k:=k+1;
    end;
    MyWorkBook.WorkSheets[1].delete; //删除模版
    stbMsg.Caption:='提示信息：电袋外协结算明细表:'+'【'+mdata1.FieldByName('FBalanceNum').AsString+'】的信息导出完成!';
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
procedure TFrm_AgentBalance.ToolButton1Click(Sender: TObject);
var
  Query_Sp:TADOStoredProc;
  i,k,ReNum,R_Count,L:Integer;
  ExcelApp,MyWorkBook,vLastSheet: Variant;
  filepath,savefilepath,copystart,copyend,copystart1:string;
  qry,qry1:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry1:=TAdoQuery.Create(self);
  qry1.ConnectionString:=mdlData.ReadConnStr;
  qry.EnableBCD:=False;//小数位数>4
  qry1.EnableBCD:=False;//小数位数>4

  If  mdata_M.RecordCount>1 then
  begin
    application.MessageBox('请选择单条记录！','系统提示',MB_ICONINFORMATION);
    Exit;
  end;

  P_List:=mdata_M['FBalanceNum'];

  filepath:=Extractfilepath(application.ExeName)+'电袋外协结算明细表2018模版.xls';
  if (mdata_M.Active) and (mdata_M.recordcount>0) then
  Begin
    SaveDialog1.FileName:='电袋外协结算('+P_List+')';
    SaveDialog1.Filter:='.xls';
    SaveDialog1.Execute;

    if (mdata_M.FieldByName('FBalanceNum').AsString<>'') Or (mdata_M.FieldByName('FBalanceNum').AsString<>Null) then
        savefilepath:=SaveDialog1.FileName+'.xls';

    if FileExists(savefilepath) then
    begin
      DeleteFile(savefilepath) ;
    end;
    stbMsg.Caption:='提示信息：正在导出电袋外协结算明细表:'+'【'+mdata_M.FieldByName('FBalanceNum').AsString+'】';
    stbBar.Refresh;

    ExcelApp:= CreateOleObject('Excel.Application' );
    ExcelApp.Visible:=False;  //工作表显示

    ExcelApp.DisplayAlerts:=False;                  //不显示提示框
    MyWorkBook:=ExcelApp.WorkBooks.Open( filepath );   //打开模版

    try
      qry.SQL.Text:='select distinct FBalanceNum from  V_BalanceList with(nolock) '
                  +' where FDepartmentName+'';''+cast(FBalanceStatus as varchar(2))+'';''+cast(FBalanceYear as varchar(4))+'';''+cast(FBalanceMonth as varchar(2))+'';''+FBalanceNum +'';'' like :ListItemFNumber ';
      qry.Parameters.FindParam('ListItemFNumber').value:= ListItemFNumber+'%';
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
     {  qry1.SQL.Text:='Select FAgentName,FBranchFileNo,FDepartmentNum,FBalanceNum,FClientFullName,FBranchItemNumber,FTaxRate,FBalanceWrite,FWorkData,FSysTem, '
                     +'FBalanceListNum,FBalanceName,FBalanceModel,FMaterialDate,FUnitName,FBalanceQry,FBalanceBasePrice,FWorkItemPrice,FBalanceWorkAdjust,FBalanceAdjust,'
                     +'FBalancePrice,FBalanceAmount,FQualityAmount,FRealAmount, '
                     +'FBalanceTaxAmount,FWorkItemNum,FBalanceRemark,FProductClass from V_BalanceList '
                     +'where FDepartmentName+'';''+cast(FBalanceStatus as varchar(2))+'';''+cast(FBalanceYear as varchar(4))+'';''+cast(FBalanceMonth as varchar(2))+'';''+FBalanceNum +'';'' like :ListItemFNumber2 order by FFullNumber,FBalanceListNum ';
      }
       qry1.SQL.Text:='Select * from ('
                     +'Select FAgentName,FBranchFileNo,FDepartmentNum,FBalanceNum,FClientFullName,FBranchItemNumber,FTaxRate,FBalanceWrite,FWorkData,FSysTem,'
                     +'FBalanceListNum,FBalanceListNum as dyxh,FBalanceName,FBalanceModel,FMaterialDate,FUnitName,FBalanceQry,FBalanceBasePrice,FWorkItemPrice,FBalanceWorkAdjust,FBalanceAdjust,'
                     +'FBalancePrice,FBalanceAmount,FQualityAmount,FRealAmount, FBalanceTaxAmount,'
                     +'FWorkItemNum,FBalanceRemark,(case FProductClass when ''运输费'' then ''运输费'' else ''产品'' end ) as FProductClass from V_BalanceList '
                     +'where FDepartmentName+'';''+cast(FBalanceStatus as varchar(2))+'';''+cast(FBalanceYear as varchar(4))+'';''+cast(FBalanceMonth as varchar(2))+'';''+FBalanceNum +'';'' like '''+ListItemFNumber+'%'' '
                     +'union '
                     +'select '''' as FAgentName,'''' as FBranchFileNo,'''' as FDepartmentNum,FBalanceNum,'''' as FClientFullName,'''' as FBranchItemNumber,0 as FTaxRate,'''' as FBalanceWrite,'''' as FWorkData,'''' as FSysTem, '
                     +''''' as FBalanceListNum,999 as dyxh,(case FProductClass when ''运输费'' then ''运输费'' else ''产品'' end )+''小计'' as FBalanceName,'''' as FBalanceModel,'''' as FMaterialDate,'''' as FUnitName, '
                     +' 0 as FBalanceQry,0 as FBalanceBasePrice,0 as FWorkItemPrice,0 as FBalanceWorkAdjust,0 as FBalanceAdjust,0 as FBalancePrice,'
                     +'sum(FBalanceAmount) as FBalanceAmount,sum(FQualityAmount) as FQualityAmount,sum(FRealAmount) as FRealAmount, '
                     +'round(sum(FRealAmount)/(1+FTaxRate),2) as FBalanceTaxAmount,'''' as FWorkItemNum,'''' as FBalanceRemark,  '
                     +'(case FProductClass when ''运输费'' then ''运输费'' else ''产品'' end ) as FProductClass from  V_BalanceList '
                     +'where FDepartmentName+'';''+cast(FBalanceStatus as varchar(2))+'';''+cast(FBalanceYear as varchar(4))+'';''+cast(FBalanceMonth as varchar(2))+'';''+FBalanceNum +'';'' like '''+ListItemFNumber+'%'' '
                     +'group by FBalanceNum,(case FProductClass when ''运输费'' then ''运输费'' else ''产品'' end ),FTaxRate ) as t '
                     +'order by FProductClass,dyxh ' ;

       qry1.Open;
     finally
       ;
     end;
     if qry1.RecordCount>0 then
     begin
       mdata1.Close;
       mdata1.CopyFromDataSet(qry1);
     end;
     mdata1.First;
     qry1.First;
     vLastSheet:=MyWorkBook.Sheets[MyWorkBook.Sheets.Count];
     MyWorkBook.Sheets[1].Copy(EmptyParam,vLastSheet);
     MyWorkBook.WorkSheets[k].Name:=IntToStr(k)+qry.FieldByName('FBalanceNum').AsString ;
     MyWorkBook.WorkSheets[k].Activate;

      //标题
       if (qry1['FWorkData']='电袋事业部') or (qry1['FWorkData']='电袋与管带事业部') then
         MyWorkBook.WorkSheets[k].Cells[1,1].Value:=AnsiReplaceStr(MyWorkBook.WorkSheets[k].Cells[1,1].Value,'B','福建龙净环保股份有限公司'); //公司名称
      if (qry1['FWorkData']='电袋事业部(厦门)') or (qry1['FWorkData']='电袋与管带事业部(厦门)') then
         MyWorkBook.WorkSheets[k].Cells[1,1].Value:=AnsiReplaceStr(MyWorkBook.WorkSheets[k].Cells[1,1].Value,'B','厦门龙净环保技术有限公司'); //公司名称
      if (qry1['FWorkData']='电袋与管带事业部(智能)') then
         MyWorkBook.WorkSheets[k].Cells[1,1].Value:=AnsiReplaceStr(MyWorkBook.WorkSheets[k].Cells[1,1].Value,'B','福建龙净环保智能输送工程有限公司'); //公司名称

      if FloatToStr(qry1['FTaxRate']*100)+'%'='11%' then
         MyWorkBook.WorkSheets[k].Cells[2,1].Value :=qry1['FWorkData']+ '电袋事业部设备运输结算明细表'
      else
         MyWorkBook.WorkSheets[k].Cells[2,1].Value :=qry1['FWorkData']+ '电袋事业部外协加工结算明细表';


      if FloatToStr(qry1['FTaxRate']*100)+'%'='11%' then
         MyWorkBook.WorkSheets[k].Cells[4,1].Value := '承运单位：'
      else
         MyWorkBook.WorkSheets[k].Cells[4,1].Value := '生产单位：';

      MyWorkBook.WorkSheets[k].Cells[4,3].Value := Trim(qry1.FieldByName('FAgentName').AsString);
      MyWorkBook.WorkSheets[k].Cells[4,11].Value := Trim(qry1.FieldByName('FBranchFileNo').AsString);
      MyWorkBook.WorkSheets[k].Cells[4,15].Value := Trim(qry1.FieldByName('FDepartmentNum').AsString)+' '+Trim(qry1.FieldByName('FBalanceNum').AsString);

      MyWorkBook.WorkSheets[k].Cells[5,3].Value := Trim(qry1.FieldByName('FClientFullName').AsString);
      MyWorkBook.WorkSheets[k].Cells[5,11].Value := Trim(qry1.FieldByName('FBranchItemNumber').AsString);
      MyWorkBook.WorkSheets[k].Cells[5,15].Value :=FloatToStr(qry1['FTaxRate']*100)+'%';


      //循环行开始
      i:=7;

       //工作薄名称
      MyWorkBook.WorkSheets[k].Name:=qry.FieldByName('FBalanceNum').AsString;
      copystart:='A'+IntToStr(i);
      if qry1.recordcount>0 then
      Begin
        copystart:='A'+IntToStr(i);
        copystart1:='A'+IntToStr(i+1);
        copyend:='Q'+IntToStr(i);  //区域
        If ((qry1.RecordCount+3) mod 16)>0 then
        begin
          ReNum:=qry1.RecordCount+(16-((qry1.RecordCount+2) mod 16))-1;
          L:=qry1.RecordCount+(16-((qry1.RecordCount+2) mod 16))-1;
        end
        else
        begin
          ReNum:=qry1.RecordCount-1;
          L:=mdata1.RecordCount-1;
        end;
        while ReNum>0 do
        Begin
          ExcelApp.ActiveSheet.Range[copystart+':'+copyend].Copy;
          ExcelApp.ActiveSheet.Rows[i+1].Insert;
          ExcelApp.ActiveSheet.Range[copystart1].PasteSpecial;
          Renum:=Renum-1;
        end;
       //合计制单、审核栏
       { MyWorkBook.WorkSheets[k].Cells[i+L+1,8].Value := '=SUM(H7:H'+IntToStr(i+L)+')'; //
        MyWorkBook.WorkSheets[k].Cells[i+L+1,10].Value := '=SUM(J7:J'+IntToStr(i+L)+')'; //
        MyWorkBook.WorkSheets[k].Cells[i+L+1,11].Value := '=SUM(K7:K'+IntToStr(i+L)+')'; //
        MyWorkBook.WorkSheets[k].Cells[i+L+1,12].Value := '=SUM(L7:L'+IntToStr(i+L)+')'; //
        MyWorkBook.WorkSheets[k].Cells[i+L+1,13].Value := '=round(SUM(L7:L'+IntToStr(i+L)+')/(1+O5),2)';     //20150806修改
        }
        MyWorkBook.WorkSheets[k].Cells[i+L+1,8].Value := '=SUMIF(G7:G'+IntToStr(i+L)+',"kg",H7:H'+IntToStr(i+L)+')'; //总计


        MyWorkBook.WorkSheets[k].Cells[i+L+1,10].Value := '=IFERROR(VLOOKUP("产品小计",B:M,9,FALSE),0)+IFERROR(VLOOKUP("运输费小计",B:M,9,FALSE),0)'; //
        MyWorkBook.WorkSheets[k].Cells[i+L+1,11].Value := '=IFERROR(VLOOKUP("产品小计",B:M,10,FALSE),0)+IFERROR(VLOOKUP("运输费小计",B:M,10,FALSE),0)'; //
        MyWorkBook.WorkSheets[k].Cells[i+L+1,12].Value := '=IFERROR(VLOOKUP("产品小计",B:M,11,FALSE),0)+IFERROR(VLOOKUP("运输费小计",B:M,11,FALSE),0)'; //

        MyWorkBook.WorkSheets[k].Cells[i+L+1,13].Value := '=round(L'+IntToStr(i+L+1)+'/(1+O5),2)';   //20150806修改

        //  MyWorkBook.WorkSheets[k].Cells[i+L+1,13].Value := '=round(VLOOKUP("产品小计",B:M,11,FALSE)+VLOOKUP("运输费小计",B:M,11,FALSE))/(1+O5),2)';     //20150806修改

                                                               // =SUMIF(G7:G28,"kg",H7:H29)


          //制单、审核栏
        MyWorkBook.WorkSheets[k].Cells[i+L+2,3].Value:=qry1.FieldByName('FBalanceWrite').AsString; //制单
        if qry1['FAgentName']='厦门龙净环保物料输送科技有限公司' then
           MyWorkBook.WorkSheets[k].Cells[i+L+2,5].Value:='市场部：'
        else
           MyWorkBook.WorkSheets[k].Cells[i+L+2,5].Value:='质量：';
        if qry1['FAgentName']='厦门龙净环保物料输送科技有限公司' then
           MyWorkBook.WorkSheets[k].Cells[i+L+2,7].Value:='工程部：'
        else
           MyWorkBook.WorkSheets[k].Cells[i+L+2,7].Value:='核对：';

        if qry1['FSysTem']='体系内' then
        begin
           MyWorkBook.WorkSheets[k].Cells[i+L+2,13].Value:='财务审核：';
           MyWorkBook.WorkSheets[k].Cells[i+L+2,15].Value:='分管领导审核：';
        end
        else
        begin
           MyWorkBook.WorkSheets[k].Cells[i+L+2,13].Value:='';
           MyWorkBook.WorkSheets[k].Cells[i+L+2,15].Value:='';
        end;
        //MyWorkBook.WorkSheets[k].Cells[i+L+3,9].Value:=datetostr(date());

        qry1.first;
        while not qry1.eof do
        Begin
         // MyWorkBook.WorkSheets[k].Cells[i,1].Value := i-6;
          MyWorkBook.WorkSheets[k].Cells[i,1].Value :=qry1.FieldByName('FBalanceListNum').AsString;
          if qry1.FieldByName('FBalanceModel').AsString='' then
             MyWorkBook.WorkSheets[k].Cells[i,2].Value := qry1.FieldByName('FBalanceName').AsString
          else
             MyWorkBook.WorkSheets[k].Cells[i,2].Value := qry1.FieldByName('FBalanceName').AsString+'['+qry1.FieldByName('FBalanceModel').AsString+']';

          MyWorkBook.WorkSheets[k].Cells[i,6].Value := qry1.FieldByName('FMaterialDate').AsString;
          MyWorkBook.WorkSheets[k].Cells[i,7].Value := qry1.FieldByName('FUnitName').AsString;
          MyWorkBook.WorkSheets[k].Cells[i,8].Value := qry1.FieldByName('FBalanceQry').AsString;
          MyWorkBook.WorkSheets[k].Cells[i,9].Value := qry1.FieldByName('FBalancePrice').AsString;
          MyWorkBook.WorkSheets[k].Cells[i,10].Value := qry1.FieldByName('FBalanceAmount').AsString;
          If qry1['FQualityAmount']=0 then
             MyWorkBook.WorkSheets[k].Cells[i,11].Value := ''
          else
            MyWorkBook.WorkSheets[k].Cells[i,11].Value := qry1.FieldByName('FQualityAmount').AsString;
          MyWorkBook.WorkSheets[k].Cells[i,12].Value :=qry1.FieldByName('FRealAmount').AsString;
          MyWorkBook.WorkSheets[k].Cells[i,13].Value := qry1.FieldByName('FBalanceTaxAmount').AsString;
          MyWorkBook.WorkSheets[k].Cells[i,14].Value := qry1.FieldByName('FWorkItemNum').AsString;
          MyWorkBook.WorkSheets[k].Cells[i,15].Value := qry1.FieldByName('FBalanceRemark').AsString;
          qry1.next;
          i:=i+1;
        End;
      end;
      qry.Next ;
      ExcelApp.Visible:=True;
      MyWorkBook.WorkSheets[k].PrintPreview;  //打印
      ExcelApp.Visible:=False;
      k:=k+1;
    end;
    MyWorkBook.WorkSheets[1].delete; //删除模版
    stbMsg.Caption:='提示信息：电袋外协结算明细表:'+'【'+qry1.FieldByName('FBalanceNum').AsString+'】的信息导出完成!';
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

procedure TFrm_AgentBalance.Act_MaxID_ListExecute(Sender: TObject);
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
      value:='T_BalanceList';
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
    P_MaxID_List:=proc.Parameters.FindParam('@FInterID').Value;
    proc.Free;
  finally
     ;
  end;


end;

procedure TFrm_AgentBalance.Act_MaxIDExecute(Sender: TObject);
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
      value:='T_BalanceItem';
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

end.
