unit Main_AgentBalanceTxd;

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
  cxGridBandedTableView, cxGridDBBandedTableView;

type
  TFrm_AgentBalanceTxd = class(TFrm_GridBass)
    MData2: TdxMemData;
    DS_Mdata2: TDataSource;
    ImageList: TImageList;
    Panel1: TPanel;
    frReport: TfrReport;
    frDBDataSet: TfrDBDataSet;
    ADOQuery: TADOQuery;
    DS_Mdata1: TDataSource;
    MData2FParentNumber: TStringField;
    MData2FNumber: TStringField;
    MData2FBalanceName: TStringField;
    MData2FBalanceModel: TStringField;
    MData2FUnitName: TStringField;
    MData2FWorkPrice: TCurrencyField;
    MData2FRemark: TStringField;
    MData2FWorkID: TIntegerField;
    MData2FBalanceID: TIntegerField;
    MData2FItemID: TIntegerField;
    MData2FPactNo: TStringField;
    MData2FClientshortName: TStringField;
    MData2FMaterialDate: TStringField;
    MData2FBalancePriceID: TIntegerField;
    MData2FAgentBalanceNum: TStringField;
    MData2FAgentBalancePactNum: TStringField;
    MData2FAgentBalanceDate: TDateTimeField;
    MData2FAgentID: TStringField;
    MData2FAgentBalanceItemID: TStringField;
    MData2FBalanceQry: TStringField;
    MData2FAdvanceQry: TStringField;
    MData2FQualityQry: TStringField;
    ToolBar1: TToolBar;
    TB_EXIT: TToolButton;
    PC_2: TRzPageControl;
    TS_BalanceList: TRzTabSheet;
    PanelBkGnd: TPanel;
    RzSizePanel1: TRzSizePanel;
    MyTreeView1: TTreeView;
    Panel3: TPanel;
    Panel_button: TPanel;
    Bevel_button: TBevel;
    OKBtn: TcxButton;
    CancelBtn: TcxButton;
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
    Label5: TLabel;
    Label17: TLabel;
    Label16: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label15: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label1: TLabel;
    ToolBar2: TToolBar;
    ToolButton9: TToolButton;
    TB_Ref2: TToolButton;
    ToolButton8: TToolButton;
    E_FDepartmentNum: TcxTextEdit;
    E_FWorkItemNum: TcxMaskEdit;
    E_FWorkData: TcxButtonEdit;
    E_FWorkItemID: TcxTextEdit;
    E_FWorkItemDate: TcxDateEdit;
    E_FIsdel: TcxCheckBox;
    E_FWorkItemRemark: TcxButtonEdit;
    E_FClientFullName: TcxButtonEdit;
    E_FItemId: TcxTextEdit;
    E_FItemModel: TcxTextEdit;
    E_FItemNumber: TcxButtonEdit;
    E_FDeliveryPlace: TcxButtonEdit;
    E_FAgentName: TcxButtonEdit;
    E_FAgentID: TcxButtonEdit;
    E_FFileNo: TcxTextEdit;
    E_FJobPlace: TcxButtonEdit;
    E_FMaterialDate: TcxButtonEdit;
    E_FAdvancePercent: TcxCurrencyEdit;
    E_FDeliveryDate: TcxDateEdit;
    E_FDeliveryDateTxt: TcxButtonEdit;
    E_FE05: TcxButtonEdit;
    E_FJobMode: TcxButtonEdit;
    TS_Edit: TRzTabSheet;
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
    MData2FWeight: TFloatField;
    FWorkItemNum2: TcxGridDBColumn;
    TB_FWorkItemNum: TSpeedButton;
    E_FAgentID1: TcxButtonEdit;
    MData1: TdxMemData;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    CurrencyField1: TCurrencyField;
    StringField6: TStringField;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    IntegerField4: TIntegerField;
    StringField11: TStringField;
    StringField12: TStringField;
    DateTimeField1: TDateTimeField;
    StringField13: TStringField;
    StringField14: TStringField;
    StringField16: TStringField;
    StringField17: TStringField;
    MData1FWorkListNum: TIntegerField;
    MData1FEstimateQry: TFloatField;
    MData1FEstimateAmount: TFloatField;
    MData1FLength: TIntegerField;
    MData1FQry: TFloatField;
    MData1FSingleWeight: TFloatField;
    MData1FItemNumber: TStringField;
    MData1FAdvanceAmount: TFloatField;
    MData1FBalanceRemark: TStringField;
    MData1FQualityAmount: TFloatField;
    MData1FWeight: TFloatField;
    MData1FBalanceWeight: TFloatField;
    MData1FBalancePiece: TFloatField;
    MData1FSollWeight: TFloatField;
    MData2FBalanceAmount: TFloatField;
    MData2FWorkListID: TIntegerField;
    MData1FWorkListID: TFloatField;
    Panel7: TPanel;
    RzSizePanel3: TRzSizePanel;
    MyTreeView3: TTreeView;
    Panel8: TPanel;
    Panel9: TPanel;
    Bevel2: TBevel;
    Panel11: TPanel;
    ToolBar4: TToolBar;
    TB_Ref3: TToolButton;
    TB_Out3: TToolButton;
    TB_Down3: TToolButton;
    DS_Mdata3: TDataSource;
    MData3: TdxMemData;
    MData1FBalanceAmount: TCurrencyField;
    MData1FBalanceQry: TBCDField;
    MData2FOutPrice: TBCDField;
    MData1FOutPrice: TBCDField;
    MData2FPrice: TBCDField;
    MData1FPrice: TBCDField;
    MData1FBalancePrice: TFloatField;
    MData1FBalanceBasePrice: TFloatField;
    MData1FBranchItemNumber: TStringField;
    MData1FBalanceListNum: TAutoIncField;
    MData2FBalanceBasePrice: TFloatField;
    MData2FBalancePrice: TFloatField;
    TB_Prin3: TToolButton;
    frReport3: TfrReport;
    frDBDataSet3: TfrDBDataSet;
    MData1FBalanceAdjust: TFloatField;
    Label14: TLabel;
    E_FBranchItemNumber: TcxButtonEdit;
    Label24: TLabel;
    E_FBranchFileNo: TcxButtonEdit;
    E_FItemId1: TcxTextEdit;
    MData3FOutPrice: TFloatField;
    MData3FBalancePrice: TFloatField;
    MData3FBalanceAdjust: TFloatField;
    PC_Qry: TRzPageControl;
    TS_Balance: TRzTabSheet;
    TS_Work: TRzTabSheet;
    cxGrid3: TcxGrid;
    cxGV3: TcxGridDBBandedTableView;
    FProductClass_3: TcxGridDBBandedColumn;
    FBalanceName_3: TcxGridDBBandedColumn;
    FBalanceModel_3: TcxGridDBBandedColumn;
    FUnitName_3: TcxGridDBBandedColumn;
    FMaterialDate_3: TcxGridDBBandedColumn;
    FBalanceLocalQry_3: TcxGridDBBandedColumn;
    FBalanceOutQry_3: TcxGridDBBandedColumn;
    FMaterialPrice_3: TcxGridDBBandedColumn;
    FWorkPrice_3: TcxGridDBBandedColumn;
    FOutPrice_3: TcxGridDBBandedColumn;
    FBalanceAdjust_3: TcxGridDBBandedColumn;
    FBalancePrice_3: TcxGridDBBandedColumn;
    FMaterialAmount_3: TcxGridDBBandedColumn;
    FWorkAmount_3: TcxGridDBBandedColumn;
    FAdjustAmount_3: TcxGridDBBandedColumn;
    FOutAmount_3: TcxGridDBBandedColumn;
    FBalanceAmount_3: TcxGridDBBandedColumn;
    FQualityAmount_3: TcxGridDBBandedColumn;
    FRealAmount_3: TcxGridDBBandedColumn;
    FAgentName_3: TcxGridDBBandedColumn;
    FBranchItemNumber_3: TcxGridDBBandedColumn;
    FBranchFileNo_3: TcxGridDBBandedColumn;
    FClientShortName_3: TcxGridDBBandedColumn;
    FitemQry_3: TcxGridDBBandedColumn;
    FWorkData_3: TcxGridDBBandedColumn;
    FWorkItemNum_3: TcxGridDBBandedColumn;
    FBalanceDate: TcxGridDBBandedColumn;
    FWorkItemDate: TcxGridDBBandedColumn;
    FBalanceNum_3: TcxGridDBBandedColumn;
    cxGL3: TcxGridLevel;
    cxGrid4: TcxGrid;
    cxGV4: TcxGridDBTableView;
    FBalanceListNum_4: TcxGridDBColumn;
    FBalanceName_4: TcxGridDBColumn;
    FBalanceModel_4: TcxGridDBColumn;
    FUnitName_4: TcxGridDBColumn;
    FMaterialDate_4: TcxGridDBColumn;
    FSollWeight_4: TcxGridDBColumn;
    FLength_4: TcxGridDBColumn;
    FSingleWeight_4: TcxGridDBColumn;
    FQry_4: TcxGridDBColumn;
    FBalanceBasePrice_4: TcxGridDBColumn;
    FOutPrice_4: TcxGridDBColumn;
    FEstimateQry_4: TcxGridDBColumn;
    FEstimateAmount_4: TcxGridDBColumn;
    FBalanceAdjust_4: TcxGridDBColumn;
    FBalancePrice_4: TcxGridDBColumn;
    SumFBalanceQry_4: TcxGridDBColumn;
    SumFBalanceAmount_4: TcxGridDBColumn;
    FAdvanceAmount_4: TcxGridDBColumn;
    SumFQualityAmount_4: TcxGridDBColumn;
    FRealAmount_4: TcxGridDBColumn;
    FBalanceRemark_4: TcxGridDBColumn;
    FBranchItemNumber_4: TcxGridDBColumn;
    FBalanceNum_4: TcxGridDBColumn;
    FWorkItemNum_4: TcxGridDBColumn;
    FWorkListID_4: TcxGridDBColumn;
    FWorkData_4: TcxGridDBColumn;
    FAgentName_4: TcxGridDBColumn;
    FBalanceWeight_4: TcxGridDBColumn;
    FBalancePiece_4: TcxGridDBColumn;
    FClientshortName_4: TcxGridDBColumn;
    FBranchFileNo_4: TcxGridDBColumn;
    FBalancePriceID_4: TcxGridDBColumn;
    cxGL4: TcxGridLevel;
    MData4: TdxMemData;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    DS_Mdata4: TDataSource;
    FProductClass_4: TcxGridDBColumn;
    FJobPlace_4: TcxGridDBColumn;
    frDBDataSet4: TfrDBDataSet;
    frReport4: TfrReport;
    TB_sh: TToolButton;
    Panel_First: TPanel;
    Bevel3: TBevel;
    Label7: TLabel;
    E_FBalanceNum: TcxTextEdit;
    E_FBalanceID: TcxButtonEdit;
    Label6: TLabel;
    E_FBalanceDate: TcxDateEdit;
    E_FAgentName1: TcxButtonEdit;
    Label20: TLabel;
    Label21: TLabel;
    E_FWorkItemNum1: TcxMaskEdit;
    SpeedButton1: TSpeedButton;
    MData1FRealAmount: TCurrencyField;
    TS_Agent: TRzTabSheet;
    Panel12: TPanel;
    RzSizePanel4: TRzSizePanel;
    MyTreeView5: TTreeView;
    Panel13: TPanel;
    cxGrid5: TcxGrid;
    cxGV5: TcxGridDBTableView;
    FIsDel: TcxGridDBColumn;
    FWorkItemNum_Brow: TcxGridDBColumn;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    FBalanceProductName_1: TcxGridDBColumn;
    FNumber: TcxGridDBColumn;
    FBalanceName1: TcxGridDBColumn;
    FBalanceModel1: TcxGridDBColumn;
    FUnitName1: TcxGridDBColumn;
    FMaterialDate1: TcxGridDBColumn;
    FQry_1: TcxGridDBColumn;
    FBalanceBasePrice1: TcxGridDBColumn;
    FOutPrice1: TcxGridDBColumn;
    FBalanceAdjust_1: TcxGridDBColumn;
    FBalancePrice1: TcxGridDBColumn;
    FEstimateQry1: TcxGridDBColumn;
    FEstimateAmount1: TcxGridDBColumn;
    SumFBalanceQry_1: TcxGridDBColumn;
    SumFBalanceAmount_1: TcxGridDBColumn;
    FWorkListRemark1: TcxGridDBColumn;
    FDeliveryPlace: TcxGridDBColumn;
    FJobPlace: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    FAdvanceQry1: TcxGridDBColumn;
    FQualityQry1: TcxGridDBColumn;
    FRemark1: TcxGridDBColumn;
    FWorkItemRemark: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    FIsSysTem: TcxGridDBColumn;
    FJobSort: TcxGridDBColumn;
    FBalancePriceID1: TcxGridDBColumn;
    FWorkListID_1: TcxGridDBColumn;
    cxGL5: TcxGridLevel;
    ToolBar5: TToolBar;
    TB_Ref5: TToolButton;
    TB_Out2: TToolButton;
    ToolButton11: TToolButton;
    TB_Down5: TToolButton;
    ToolButton16: TToolButton;
    MData5: TdxMemData;
    DS_Mdata5: TDataSource;
    cxGrid1: TcxGrid;
    cxGV1: TcxGridDBTableView;
    FBalanceListNum: TcxGridDBColumn;
    FBalanceName: TcxGridDBColumn;
    FBalanceModel: TcxGridDBColumn;
    FUnitName: TcxGridDBColumn;
    FMaterialDate: TcxGridDBColumn;
    FSollWeight: TcxGridDBColumn;
    FLength: TcxGridDBColumn;
    FQry: TcxGridDBColumn;
    FBalanceBasePrice: TcxGridDBColumn;
    FOutPrice: TcxGridDBColumn;
    FEstimateQry: TcxGridDBColumn;
    FEstimateAmount: TcxGridDBColumn;
    Sel: TcxGridDBColumn;
    FBalanceAdjust: TcxGridDBColumn;
    FBalancePrice: TcxGridDBColumn;
    FBalanceQry: TcxGridDBColumn;
    FBalanceAmount: TcxGridDBColumn;
    FAdvanceAmount: TcxGridDBColumn;
    FQualityAmount: TcxGridDBColumn;
    FRealAmount: TcxGridDBColumn;
    FBalanceRemark: TcxGridDBColumn;
    FBranchItemNumber: TcxGridDBColumn;
    FBalanceNum: TcxGridDBColumn;
    FWorkItemNum: TcxGridDBColumn;
    FWorkListID: TcxGridDBColumn;
    FWorkData: TcxGridDBColumn;
    FAgentName: TcxGridDBColumn;
    FClientShortName: TcxGridDBColumn;
    FBranchFileNo: TcxGridDBColumn;
    FBalancePriceID: TcxGridDBColumn;
    FProductClass: TcxGridDBColumn;
    cxGL1: TcxGridLevel;
    TB_Prin4: TToolButton;
    E_FBalanceTxdNum: TcxTextEdit;
    Label25: TLabel;
    Label26: TLabel;
    E_FBalanceStatus: TcxTextEdit;
    MData1FBalanceTxdNum: TStringField;
    TB_Rxd: TToolButton;
    E_FStatusNotes: TcxTextEdit;
    Label22: TLabel;
    L_Caption: TLabel;
    Label23: TLabel;
    procedure FormResize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TB_EXITClick(Sender: TObject);
    procedure MyTreeView1Change(Sender: TObject; Node: TTreeNode);
    procedure MyTreeView1Expanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure TB_RefClick(Sender: TObject);
    procedure OKBtnClick(Sender: TObject);
    procedure TB_AppClick(Sender: TObject);
    procedure TB_EditClick(Sender: TObject);
    procedure TB_DelClick(Sender: TObject);
    procedure CancelBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Set_Open;
    procedure Set_Close;
    procedure TB_PrinClick(Sender: TObject);
    procedure frReportBeginBand(Band: TfrBand);
    procedure frReportGetValue(const ParName: String;
      var ParValue: Variant);
    procedure MyTreeView2Change(Sender: TObject; Node: TTreeNode);
    procedure MyTreeView2Expanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure TB_Ref2Click(Sender: TObject);
    procedure ToolButton9Click(Sender: TObject);
    procedure ToolButton8Click(Sender: TObject);
    procedure MData1BeforePost(DataSet: TDataSet);
    procedure WorkBOMSelPropertiesChange(Sender: TObject);
    procedure TB_FWorkItemNumClick(Sender: TObject);
    procedure E_FAgentName1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure SelPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure SpeedButton1Click(Sender: TObject);
    procedure TB_Ref3Click(Sender: TObject);
    procedure MyTreeView3Change(Sender: TObject; Node: TTreeNode);
    procedure MyTreeView3Expanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure TB_DownClick(Sender: TObject);
    procedure TB_Down3Click(Sender: TObject);
    procedure TB_Out3Click(Sender: TObject);
    procedure TB_OutClick(Sender: TObject);
    procedure TB_Prin3Click(Sender: TObject);
    procedure frReport3BeginBand(Band: TfrBand);
    procedure E_FBranchFileNoPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure TB_shClick(Sender: TObject);
    procedure VT_BalanceAgentName(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure TB_Ref5Click(Sender: TObject);
    procedure MyTreeView5Change(Sender: TObject; Node: TTreeNode);
    procedure TB_Down5Click(Sender: TObject);
    procedure TB_Out2Click(Sender: TObject);
    procedure TB_Prin4Click(Sender: TObject);
    procedure TB_RxdClick(Sender: TObject);
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
    P_Isleaf,P_IsAudit:Integer;

    { Public declarations }
  end;

var
  Frm_AgentBalanceTxd: TFrm_AgentBalanceTxd;


implementation

uses FRMDATA,{ FRMMAIN,} COMMON, FrmSelect, ProgBar, PROGRASS;

{$R *.dfm}
procedure TFrm_AgentBalanceTxd.Set_Open;
begin
  TB_Ref.Visible:=False;
  TB_App.Visible:=False;
  TB_Edit.Visible:=False;
  TB_Del.Visible:=False;
  MyTreeView1.Enabled:=False;

  OKBtn.Visible:=True;
  CancelBtn.Visible:=True;
  cxGV1.OptionsData.Editing:=True;
  
  E_FWorkItemNum1.Enabled:=True;
  E_FBalanceNum.Enabled:=True;
  E_FWorkItemNum.Enabled:=True;
  TB_FWorkItemNum.Enabled:=True;
  E_FBalanceDate.Enabled:=True;
  Sel.Options.Editing:=True;
  FBalanceQry.Options.Editing:=True;
  FAdvanceAmount.Options.Editing:=True;
  FQualityAmount.Options.Editing:=True;
  FBalanceAdjust.Options.Editing:=True;
  FBalanceAdjust.Options.Editing:=True;
  FBalanceRemark.Options.Editing:=True;
end;

procedure TFrm_AgentBalanceTxd.Set_Close;
begin
  TB_Ref.Visible:=True;
  TB_App.Visible:=True;
  TB_Edit.Visible:=True;
  TB_Del.Visible:=True;
  MyTreeView1.Enabled:=True;

  OKBtn.Visible:=False;
  CancelBtn.Visible:=False;
  cxGV1.OptionsData.Editing:=False;


  E_FWorkItemNum1.Enabled:=False;
  E_FBalanceNum.Enabled:=False;
  E_FWorkItemNum.Enabled:=False;
  E_FBalanceDate.Enabled:=False;
  TB_FWorkItemNum.Enabled:=False;
end;


function TFrm_AgentBalanceTxd.DelRd: bool;
var
 qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Delete from T_BalanceItem where FBalanceID=:FBalanceID';
    qry.Parameters.FindParam('FBalanceID').value:=StrToInt(Trim(E_FBalanceID.Text));
    result:=qry.ExecSQL>=1;
  finally
    qry.Free;
  end;
end;



function TFrm_AgentBalanceTxd.AddMain: bool;
var
 qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Insert into T_BalanceItem(FBalanceNum,FBalanceTxdNum,FBalanceDate,FBalanceStatus) '
                 +'values(:FBalanceNum,:FBalanceTxdNum, :FBalanceDate,:FBalanceStatus)';
   with qry.Parameters do
   begin
     FindParam('FBalanceNum').value:=Trim(E_FBalanceNum.Text);
     FindParam('FBalanceTxdNum').value:=Trim(E_FBalanceTxdNum.Text);
     FindParam('FBalanceDate').value:=E_FBalanceDate.Date;
     FindParam('FBalanceStatus').value:=0;         //未提交未审核标识
   end;
     result:=qry.ExecSQL>=1;
   finally
     qry.Free;
   end;

end;

function TFrm_AgentBalanceTxd.EditMain: bool;
var
 qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Update T_BalanceItem Set FBalanceNum=:FBalanceNum,FBalanceTxdNum=:FBalanceTxdNum,'
                 +'FBalanceDate=:FBalanceDate,FBalanceStatus=:FBalanceStatus where FBalanceID=:FBalanceID';
    with qry.Parameters do
    begin
      FindParam('FBalanceNum').value:=Trim(E_FBalanceNum.Text);
      FindParam('FBalanceTxdNum').value:=Trim(E_FBalanceTxdNum.Text);
      FindParam('FBalanceDate').value:=E_FBalanceDate.Date;
      FindParam('FBalanceStatus').value:=E_FBalanceStatus.EditValue; //未提交未审核标识
      FindParam('FBalanceID').value:=Trim(E_FBalanceID.Text);
    end;
    result:=qry.ExecSQL>=1;
  finally
    qry.Free;
  end;

end;


function TFrm_AgentBalanceTxd.AddList: bool;
var
  qry,qry1: TADOQuery;
  i: integer;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.EnableBCD:=False;//小数位数>4

  qry1:=TADOQuery.Create(Self);
  qry1.ConnectionString:=mdlData.ReadConnStr;
  result:=False;

  If mData1.RecordCount<=0 then
  begin
    result:=True;
    Exit;
  end;

  try
    qry1.SQL.Text:='select * from V_BalanceItem where FBalanceNum=:FBalanceNum';
    qry1.Parameters.FindParam('FBalanceNum').value:=Trim(E_FBalanceNum.Text);
    qry1.Open;
  finally
    ;
  end;
  If qry1.RecordCount>0 then
     E_FBalanceID.Text:=IntTostr(qry1.FieldByName('FBalanceID').value);

  try
    qry.SQL.Text:='Insert into T_BalanceList(FBalanceID, FBalanceListNum, FWorkListID, FBalanceQry,FBalanceAdjust,FQualityAmount,FBalanceRemark) '
                 +'values(:FBalanceID, :FBalanceListNum,:FWorkListID, :FBalanceQry,:FBalanceAdjust,:FQualityAmount,:FBalanceRemark)';
    mData1.First;
    i:=1;
    while not mData1.eof do
     begin
       If ((mData1['FBalanceQry']<>0) and (mData1['FBalanceQry']<>Null)) then
       begin
         If qry.Active then qry.Close;
         with qry.Parameters do
         begin
           FindParam('FBalanceID').value:= qry1.FieldByName('FBalanceID').value;
           FindParam('FBalanceListNum').value:=i;
           FindParam('FWorkListID').value:=mdata1['FWorkListID'];
           FindParam('FBalanceQry').value:=mdata1['FBalanceQry'];
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


function TFrm_AgentBalanceTxd.AddRd: bool;
var
 qry:TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
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


function TFrm_AgentBalanceTxd.EditRd:bool;
var
 qry:TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
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


procedure TFrm_AgentBalanceTxd.FormResize(Sender: TObject);
begin
  inherited;
  L_title.Caption:='子公司预结算';
  Self.Caption:='子公司预结算';
end;

procedure TFrm_AgentBalanceTxd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=cafree;
  Frm_AgentBalanceTxd:=nil;
end;

procedure TFrm_AgentBalanceTxd.TB_EXITClick(Sender: TObject);
begin
  inherited;
  self.Close;
end;

procedure TFrm_AgentBalanceTxd.MyTreeView1Change(Sender: TObject; Node: TTreeNode);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.EnableBCD:=False;//小数位数>4

  If Node = nil then Exit;
  with PTree(Node.Data)^ do
  begin
    ListItemFNumber1:=PTree(Node.Data).FNumber1;
    P_th1:=PTree(Node.Data).Caption;
    P_Isleaf:=PTree(Node.Data).Isleaf;
    P_IsAudit:=PTree(Node.Data).IsAudit;

    If not MyItemList(qry,Mdata1,'V_BalanceList','FFullTxdNumber',ListItemFNumber1,'FFullTxdNumber') then
    begin
      mdata1.Open;
    end;
    If mdata1.RecordCount>0 then
    begin
      E_FBalanceNum.Text:= mdata1['FBalanceNum'];
      E_FBalanceTxdNum.Text:= mdata1['FBalanceTxdNum'];
      E_FBalanceDate.Text:= mdata1['FBalanceDate'];
      E_FBalanceID.Text:= mdata1['FBalanceID'];
      E_FBalanceStatus.EditValue:= mdata1['FBalanceStatus'];
      E_FStatusNotes.Text:= mdata1['FStatusNotes'];
      E_FAgentName1.Text:= mdata1['FAgentName'];
    end
  end;
  If P_Isleaf=1 then
  begin
    Panel_First.Visible:=True;
    try
      qry.SQL.Text:='Select distinct FBalanceStatus from V_BalanceList where FFullNumber like :FFullNumber ';
      qry.Parameters.FindParam('FFullNumber').Value:=ListItemFNumber1+'%';
      qry.Open;
    finally
       ;
    end;
    If qry.RecordCount<=0  then
       Exit;

    If qry.FieldByName('FBalanceStatus').Value=0 then
    begin
      TB_Edit.Enabled:=True;
      TB_Del.Enabled:=True;
      TB_Sh.Caption:='提交';
      TB_Rxd.Caption:='接收';
      TB_Sh.Enabled:=True;
      TB_Rxd.Enabled:=False;
    end;
    If qry.FieldByName('FBalanceStatus').Value=1 then
    begin
      TB_Edit.Enabled:=False;
      TB_Del.Enabled:=False;
      TB_Sh.Caption:='取消提交';
      TB_Rxd.Caption:='接收';
      TB_Sh.Enabled:=True;
      TB_Rxd.Enabled:=False;
    end;
    If qry.FieldByName('FBalanceStatus').Value>=2 then
    begin
      TB_Edit.Enabled:=False;
      TB_Del.Enabled:=False;
      TB_Sh.Caption:='提交';
      TB_Rxd.Caption:='接收';
      TB_Sh.Enabled:=False;
      TB_Rxd.Enabled:=False;
    end;
  end
  else
  begin
    TB_Edit.Enabled:=False;
    TB_Del.Enabled:=False;
  end;

end;

procedure TFrm_AgentBalanceTxd.MyTreeView1Expanding(Sender: TObject;
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

  qry.SQL.Text:='Select FNumber, FParentNumber,FName,Isleaf,FIsAudit from VT_BranchBalanceListTxd '
               +'where FParentNumber= '''
               +PTree(Node.Data).ID+''' order by FNumber';
  qry.open;

  PTree(Node.Data).Flag := cLoadFlag;                  // 设置已加载标志
  while not qry.Eof do
  begin
    New(P);
    P.ID := qry.FieldByName('FNumber').AsString;
    P.ParentID := qry.FieldByName('FParentNumber').AsString;
    P.FNumber1:=qry.FieldByName('FNumber').AsString;
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

procedure TFrm_AgentBalanceTxd.TB_RefClick(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If not TreeVeiwListWhere(qry,MyTreeView1,'VT_BranchBalanceListTxd',' and FAgentId='+IntToStr(UserFAgentID) ) then
  begin
    Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;

end;

procedure TFrm_AgentBalanceTxd.OKBtnClick(Sender: TObject);
var qry: TADOQuery;
    P_FBalanceTxdNum:String;
begin
  cxGV1.OptionsData.Editing:=True;
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  mData1.Edit;
  mData1.Post;

  If (Trim(E_FBalanceTxdNum.Text)='') then
  begin
    application.MessageBox('关键字不能为空！请重新输入','系统提示',MB_ICONERROR);
    Exit;
  end;


  If P_state =0 then
  begin
    try
      qry.SQL.Text:='select max(FBalanceTxdNum) as FMaxBalanceTxdNum,cast(FBalanceYear as varchar(4))+cast(FBalanceMonth as varchar(2)) as yymm  from V_BalanceList '
                   +'where FDepartmentID=:FDepartmentID and FAgentId=:FAgentId and cast(FBalanceYear as varchar(4))+cast(FBalanceMonth as varchar(2))=:yymm '
                   +'group by cast(FBalanceYear as varchar(4))+cast(FBalanceMonth as varchar(2))';
      qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
      qry.Parameters.FindParam('FAgentId').value:=UserFAgentID;
      qry.Parameters.FindParam('yymm').value:=Copy(ForMatDateTime('yyyymmdd',(E_FBalanceDate.Date)),1,6);
      qry.Open;
    finally
       ;
    end;
    If qry.RecordCount=1 then
       P_FBalanceTxdNum:=Format('%.3d',[(StrToInt(qry.FieldByName('FMaxBalanceTxdNum').Value)+1)])
    else
       P_FBalanceTxdNum:=ForMatDateTime('yyyymm',(E_FBalanceDate.Date))+'001';

   E_FBalanceStatus.EditValue:=0;//未提交未审核标识

    try
      qry.SQL.Text:='Select * from V_BalanceList where FBalanceTxdNum=:FBalanceTxdNum '
                   +'and FDepartmentNum=:FDepartmentNum and FAgentId=:FAgentId';
      qry.Parameters.FindParam('FBalanceTxdNum').Value:=Trim(E_FBalanceTxdNum.Text);
      qry.Parameters.FindParam('FDepartmentNum').Value:=UserFDepartmentNum;
      qry.Parameters.FindParam('FAgentId').value:=UserFAgentID;
      qry.Open;
      If qry.RecordCount>0 then
      begin
         If application.MessageBox('此预结单号已存在,是否系统自动取号吗？','提示',MB_ICONINFORMATION+MB_YESNO)=6 then
         begin
           E_FBalanceTxdNum.Text:=P_FBalanceTxdNum;
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



procedure TFrm_AgentBalanceTxd.TB_AppClick(Sender: TObject);
var qry: TADOQuery;
    P_FBalanceNum:String;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  P_state :=0;
  E_FBalanceDate.Date:=date();
  E_FBalanceStatus.EditValue:=0;//未提交未审核标识
  try
    qry.SQL.Text:='select max(FBalanceTxdNum) as FMaxBalanceTxdNum,cast(FBalanceYear as varchar(4))+cast(FBalanceMonth as varchar(2)) as yymm  from V_BalanceList '
                 +'where FDepartmentID=:FDepartmentID and FAgentId=:FAgentId and cast(FBalanceYear as varchar(4))+cast(FBalanceMonth as varchar(2))=:yymm '
                 +'group by cast(FBalanceYear as varchar(4))+cast(FBalanceMonth as varchar(2))';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Parameters.FindParam('FAgentId').value:=UserFAgentID;
    qry.Parameters.FindParam('yymm').value:=Copy(ForMatDateTime('yyyymmdd',(E_FBalanceDate.Date)),1,6);
    qry.Open;
  finally
     ;
  end;
  If qry.RecordCount=1 then
     E_FBalanceTxdNum.Text:=Format('%.3d',[(StrToInt(qry.FieldByName('FMaxBalanceTxdNum').Value)+1)])
  else
     E_FBalanceTxdNum.Text:=ForMatDateTime('yyyymm',(E_FBalanceDate.Date))+'001';


  Self.Set_Open;
  mdata1.Close;
  mdata1.Open;
  E_FWorkItemNum1.SetFocus;
end;

procedure TFrm_AgentBalanceTxd.TB_EditClick(Sender: TObject);
var
 qry:TADOquery;
begin
  P_state :=1;
  If (mdata1.RecordCount<1) then
    Exit;

  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Select distinct FBalanceID from V_BalanceList where FFullNumber like :FFullNumber';
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
  Self.Set_Open;

end;

procedure TFrm_AgentBalanceTxd.TB_DelClick(Sender: TObject);
var
  qry:TADOQuery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If (mdata1.RecordCount<1) then
    Exit;

  If application.MessageBox(Pchar('警告：是否删除预结算单号为：【'+Trim(E_FBalanceTxdNum.Text)+'】的信息？'+chr(13)+chr(13)
                           +'删除数据操作将不可恢复，确定要删除本单据吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
  If application.MessageBox(Pchar('再次警告：是否删除预结算单号为：【'+Trim(E_FBalanceTxdNum.Text)+'】的信息？'+chr(13)+chr(13)
                           +'删除数据操作将不可恢复，确定要删除本单据吗？'),'再次警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then

  begin
    //单据删除
    If not DelRd then
    begin
      application.MessageBox('删除数据失败！','系统提示',MB_ICONINFORMATION);
      mdlData.conn.RollbackTrans;
      Exit;
    end;
  end;
  mdata1.Close;
  qry.Free;
 // TB_ref.Click;

end;

procedure TFrm_AgentBalanceTxd.CancelBtnClick(Sender: TObject);
begin
  inherited;
  Self.Set_Close;
end;

procedure TFrm_AgentBalanceTxd.FormCreate(Sender: TObject);
begin
  inherited;
  TB_App.Enabled:= mdlData.CheckFrmRights(TFrm_AgentBalanceTxd.ClassName,'新增');
  TB_Edit.Enabled:= mdlData.CheckFrmRights(TFrm_AgentBalanceTxd.ClassName,'修改');
  TB_Del.Enabled:= mdlData.CheckFrmRights(TFrm_AgentBalanceTxd.ClassName,'删除');
  TB_Prin.Enabled:= mdlData.CheckFrmRights(TFrm_AgentBalanceTxd.ClassName,'打印');
  TB_Out.Enabled:= mdlData.CheckFrmRights(TFrm_AgentBalanceTxd.ClassName,'导出');
  TB_Prin3.Enabled:= mdlData.CheckFrmRights(TFrm_AgentBalanceTxd.ClassName,'查看');
  TB_Out3.Enabled:= mdlData.CheckFrmRights(TFrm_AgentBalanceTxd.ClassName,'查看');
  TB_Sh.Enabled:= mdlData.CheckFrmRights(TFrm_AgentBalanceTxd.ClassName,'审核');
end;

procedure TFrm_AgentBalanceTxd.FormShow(Sender: TObject);
begin
  TB_Ref.Click;
  TB_Ref3.Click;
  TB_Ref5.Click;
end;

procedure TFrm_AgentBalanceTxd.TB_PrinClick(Sender: TObject);
begin
  inherited;
  FrReport.LoadFromFile(ExtractFileDir(Application.ExeName)+'\Report_DesignBOM_BalanceItem.frf');
  FrReport.ShowReport;

end;

procedure TFrm_AgentBalanceTxd.frReportBeginBand(Band: TfrBand);
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

procedure TFrm_AgentBalanceTxd.frReportGetValue(const ParName: String;
  var ParValue: Variant);
begin
  inherited;
  If ParName='UserName' then
    ParValue:=UserName;

end;

procedure TFrm_AgentBalanceTxd.MyTreeView2Change(Sender: TObject;
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
      Panel6.Visible:=True;
      If MyItemList(qry,Mdata2,'V_WorkList','FBrabchFFullNumber',ListItemFNumber2,'FBrabchFFullNumber') then
      begin
        mdata2.Open;
        cxGvColumn(cxGv2,Mdata2);
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
      Panel6.Visible:=False;
    end;

  end;
  qry.Free;
end;

procedure TFrm_AgentBalanceTxd.MyTreeView2Expanding(Sender: TObject;
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
               +'Isleaf from VT_BranchWorkList where FParentNumber= '''
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

procedure TFrm_AgentBalanceTxd.TB_Ref2Click(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If not TreeVeiwListWhere(qry,MyTreeView2,'VT_BranchWorkList',' and FAgentId='+IntToStr(UserFAgentID) ) then
  begin
    Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;

end;

procedure TFrm_AgentBalanceTxd.ToolButton9Click(Sender: TObject);
var  i,j: integer;
begin
  inherited;
  mData2.Edit;
  mData2.Post;
  mdata1.Open;
 // If mdata1.RecordCount>0 then
  begin
    mData2.Last;
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
      mdata1['FOutPrice']:=cxGV2.DataController.GetValue(J,11);  //贴补单价
      mdata1['FBalancePrice']:=cxGV2.DataController.GetValue(J,12);       //结算单价
      mdata1['FEstimateAmount']:=cxGV2.DataController.GetValue(J,13);
      mdata1['FBalanceQry']:=cxGV2.DataController.GetValue(J,14);
      mdata1['FBalanceAmount']:=cxGV2.DataController.GetValue(J,15);
      mdata1['FBranchItemNumber']:=cxGV2.DataController.GetValue(J,19);
      mdata1['FWorkListID']:=cxGV2.DataController.GetValue(J,22);

      mdata1['FQualityAmount']:=0.00;
      mdata1['FRealAmount']:=0.00;
      mdata1['FBalanceAdjust']:=0.00000;
      mdata1['FPrice']:=0.00000;
      mdata1['FBalanceQry']:=0.00000;
      mdata1.Post;
    end;
  end;
  E_FAgentName1.Text:=Trim(E_FAgentName.Text);
  PC_2.ActivePage:=TS_BalanceList;

end;

procedure TFrm_AgentBalanceTxd.ToolButton8Click(Sender: TObject);
var  i: integer;
begin
  inherited;
  cxGV2.OptionsData.Editing:=True;

  for i:=0 to cxGv2.ColumnCount-1 do
  begin
    cxGv2.Columns[i].Options.Filtering:=True;
    cxGv2.Columns[i].Options.Editing:=True;
    cxGv2.Columns[i].Options.Sorting:=True;
  end;

end;

procedure TFrm_AgentBalanceTxd.MData1BeforePost(DataSet: TDataSet);
begin
  inherited;
  If DataSet['FBalanceBasePrice']=Null then
     DataSet['FBalanceBasePrice']:=0;
  DataSet['FBalancePrice']:=DataSet['FBalanceBasePrice']+DataSet['FOutPrice']+DataSet['FBalanceAdjust'];

  DataSet['FBalanceAmount']:=round(DataSet['FBalanceQry']*DataSet['FBalancePrice']*100)/100;

  DataSet['FRealAmount'] :=DataSet['FBalanceAmount']-DataSet['FQualityAmount'];

end;

procedure TFrm_AgentBalanceTxd.WorkBOMSelPropertiesChange(Sender: TObject);
begin
  inherited;
  mdata2.Edit;
  mdata2.Post;
end;

procedure TFrm_AgentBalanceTxd.TB_FWorkItemNumClick(Sender: TObject);
var qry: TADOQuery;
begin
   qry:=TADOQuery.Create(self);
   qry.ConnectionString:=mdlData.ReadConnStr;
   qry.EnableBCD:=False;//小数位数>4
     try
     qry.SQL.Text:='select *  from V_WorkList where SumFBalanceQry=0 and FWorkItemNum=:FWorkItemNum and FDepartmentID=:FDepartmentID';
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

end;

procedure TFrm_AgentBalanceTxd.E_FAgentName1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Select * from VT_AgentItem where FDepartmentID=:FDepartmentID and FAgentName like :FAgentName';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Parameters.FindParam('FAgentName').value:='%'+Trim(E_FAgentName1.Text)+'%';
    qry.Open;
  finally
     ;
  end;
  If qry.RecordCount=1 then
  begin
    E_FAgentName1.EditValue:=qry.FieldByName('FAgentName').AsString;
    E_FAgentID1.EditValue:=qry.FieldByName('FAgentID').AsString;
  end
  else
  begin
    selValue:=select('选择生产单位','FNumber','FParentNumber','FNumber','FName',qry);
    If (Length(selValue)>0) and (qry.FieldByName('FDetail').Value<>0) then
    begin
      E_FAgentName1.EditValue:=qry.FieldByName('FAgentName').AsString;
      E_FAgentID1.EditValue:=qry.FieldByName('FAgentID').AsString;
    end
    else
      application.MessageBox('请选择明细！','系统提示',MB_ICONINFORMATION);

  end;
  qry.Free;

end;

procedure TFrm_AgentBalanceTxd.SelPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  PC_2.ActivePage:=TS_WorkList;
  
end;

procedure TFrm_AgentBalanceTxd.SpeedButton1Click(Sender: TObject);
var qry: TADOQuery;
begin
   qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
   qry.EnableBCD:=False;//小数位数>4
     try
     qry.SQL.Text:='select *  from V_WorkList where SumFBalanceQry=0 and FWorkItemNum=:FWorkItemNum and FDepartmentID=:FDepartmentID';
     qry.Parameters.FindParam('FWorkItemNum').value:=Trim(E_FWorkItemNum1.Text);
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
     PC_2.ActivePage:=TS_WorkList;

end;

procedure TFrm_AgentBalanceTxd.TB_Ref3Click(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If not TreeVeiwListUserID(qry,MyTreeView3,'VT_BalanceItem',UserFDepartmentID) then
  //If not TreeVeiwListWhere(qry,MyTreeView3,'VT_BalanceItem',' and FAgentId='+IntToStr(UserFAgentID) ) then
  begin
    Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;




{  If not TreeVeiwList(qry,MyTreeView3,'VT_BalanceItem') then
  begin
    Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;
  }
end;

procedure TFrm_AgentBalanceTxd.MyTreeView3Change(Sender: TObject;
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
    ListItemFNumber3:=PTree(Node.Data).FNumber3;
    P_th3:=PTree(Node.Data).Caption;

    If PTree(Node.Data).Isleaf=1 then
    begin
      If not MyItemList(qry,Mdata3,'V_BalanceList','FFullItemNumber',ListItemFNumber3,'FFullItemNumber,FNumber') then
      begin
        mdata3.Open;
      end;
      If not MyItemList(qry,Mdata4,'V_WorkList','FFullItemNumber',ListItemFNumber3,'FFullItemNumber,FProductClass desc') then
      begin
        mdata4.Open;
      end;
    end
    else
    begin
      mdata3.Close;
      mdata4.Close;
    end;

  end;



end;

procedure TFrm_AgentBalanceTxd.MyTreeView3Expanding(Sender: TObject;
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
  qry.SQL.Text:='Select FProductId,FNumber, FParentNumber,FName,'
               +'Isleaf from VT_BalanceItem where FParentNumber= '''
               +PTree(Node.Data).ID+''' order by FNumber';


  qry.open;

  PTree(Node.Data).Flag := cLoadFlag;                  // 设置已加载标志
  while not qry.Eof do
  begin
    New(P);
    P.ID := qry.FieldByName('FNumber').AsString;
    P.ParentID := qry.FieldByName('FParentNumber').AsString;
    P.FNumber3:=qry.FieldByName('FNumber').AsString;
    P.Caption := qry.FieldByName('FName').AsString;
    P.Flag := cNoLoadFlag;                            // 新节点，未加载标志
    P.Isleaf:=qry.fieldbyname('Isleaf').value;
    with MyTreeView3.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('Isleaf').value;
    end;
    qry.Next;
  end;

end;

procedure TFrm_AgentBalanceTxd.TB_DownClick(Sender: TObject);
var  i: integer;
begin
  inherited;
  cxGV1.OptionsData.Editing:=True;
  cxGv1.OptionsView.GroupByBox:=True;
  for i:=0 to cxGv1.ColumnCount-1 do
  begin
    cxGv1.Columns[i].Options.Filtering:=True;
    cxGv1.Columns[i].Options.Editing:=True;
    cxGv1.Columns[i].Options.Sorting:=True;

  end;

end;

procedure TFrm_AgentBalanceTxd.TB_Down3Click(Sender: TObject);
var  i: integer;
begin
  inherited;
  cxGV3.OptionsData.Editing:=True;
  cxGv3.OptionsView.GroupByBox:=True;
  for i:=0 to cxGv3.ColumnCount-1 do
  begin
    cxGv3.Columns[i].Options.Filtering:=True;
    cxGv3.Columns[i].Options.Editing:=True;
    cxGv3.Columns[i].Options.Sorting:=True;
  end;

  cxGV4.OptionsData.Editing:=True;
  for i:=0 to cxGv4.ColumnCount-1 do
  begin
    cxGv4.Columns[i].Options.Filtering:=True;
    cxGv4.Columns[i].Options.Editing:=True;
    cxGv4.Columns[i].Options.Sorting:=True;
  end;

end;

procedure TFrm_AgentBalanceTxd.TB_Out3Click(Sender: TObject);
begin
  inherited;
  If PC_Qry.ActivePage=TS_Balance then
     ExportToExcel(cxGrid3,True,True);
  If PC_Qry.ActivePage=TS_Work then
     ExportToExcel(cxGrid4,True,True);
end;

procedure TFrm_AgentBalanceTxd.TB_OutClick(Sender: TObject);
begin
  inherited;
  ExportToExcel(cxGrid1,True,TRue);
end;

procedure TFrm_AgentBalanceTxd.TB_Prin3Click(Sender: TObject);
begin
  inherited;
  If PC_Qry.ActivePage=TS_Balance then
  begin
    frDBDataSet3.Dataset:=MData3;
    FrReport3.LoadFromFile(ExtractFileDir(Application.ExeName)+'\Report_DesignBOM_BalanceQry.frf');
    FrReport3.ShowReport;
  end;
  If PC_Qry.ActivePage=TS_Work then
  begin
    frDBDataSet4.Dataset:=MData4;
    FrReport4.LoadFromFile(ExtractFileDir(Application.ExeName)+'\Report_DesignBOM_BalanceWorkQry.frf');
    FrReport4.ShowReport;
  end;

end;

procedure TFrm_AgentBalanceTxd.frReport3BeginBand(Band: TfrBand);
begin
  inherited;
   if Band.Name='dtFooter' then
  begin
    If (mdata3.RecordCount mod 20)>0 then
      frReport3.Dictionary.Variables['n']:=20-(mdata3.RecordCount mod 20)-3
    else
      frReport3.Dictionary.Variables['n']:=0;
  end;

end;

procedure TFrm_AgentBalanceTxd.E_FBranchFileNoPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Select * from T_FileItem where FDepartmentID=:FDepartmentID and FBranchFileNo like :FBranchFileNo order by FBranchFileNo';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Parameters.FindParam('FBranchFileNo').value:='%'+Trim(E_FBranchFileNo.Text)+'%';
    qry.Open;
  finally
     ;
  end;
  If qry.RecordCount=1 then
  begin
      E_FBranchFileNo.Text:=qry.FieldByName('FBranchFileNo').Value;
      E_FBranchItemNumber.Text:=qry.FieldByName('FBranchItemNumber').AsString;
      E_FItemId1.Text:=qry.FieldByName('FItemId').AsString;
  end
  else
  begin
    selValue:=select('选择分档案号','FBranchFileNo','FBranchFileNo','FBranchFileNo','FBranchFileNo;FBranchItemNumber;FClientShortName',qry);
    If (Length(selValue)>0) then
    begin
      E_FBranchFileNo.Text:=qry.FieldByName('FBranchFileNo').Value;
      E_FBranchItemNumber.Text:=qry.FieldByName('FBranchItemNumber').AsString;
      E_FItemId1.Text:=qry.FieldByName('FItemId').AsString;
    end
    else
      application.MessageBox('请选择明细！','系统提示',MB_ICONINFORMATION);
  end;

  try
    qry.SQL.Text:='Select * from VT_FileItem where FItemId=:FItemId';
    qry.Parameters.FindParam('FItemId').value:=StrToInt(Trim(E_FItemId1.Text));
    qry.Open;
  finally
     ;
  end;
  If qry.RecordCount>0 then
  begin
     ListItemFNumber3:=qry.FieldByName('FNumber').Value;
     If not MyItemList(qry,Mdata3,'V_BalanceList','FFullItemNumber',ListItemFNumber3,'FFullItemNumber,FNumber') then
     begin
        mdata3.Open;
     end;
     If not MyItemList(qry,Mdata4,'V_WorkList','FFullItemNumber',ListItemFNumber3,'FFullItemNumber,FProductClass dese') then
     begin
        mdata4.Open;
     end;

  end;

  qry.Free;

end;

procedure TFrm_AgentBalanceTxd.TB_shClick(Sender: TObject);
var
 qry,qry1:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry1:=TAdoQuery.Create(self);
  qry1.ConnectionString:=mdlData.ReadConnStr;
  If application.MessageBox(Pchar('警告：是否提交预结单号为：【'+ListItemFNumber1+'】的单据？'+chr(13)+chr(13)
                                 +'提交后的数据不允许修改和删除，确定要提交本单据吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
  begin
    try
      qry1.SQL.Text:='Select distinct FBalanceID from V_BalanceList where FFullNumber like :FFullNumber';
      qry1.Parameters.FindParam('FFullNumber').Value:=ListItemFNumber1+'%';
      qry1.Open;
    finally
       ;
    end;
    If  qry1.RecordCount<1 then
        Exit;
    try
      qry.SQL.Text:='Update T_BalanceItem Set FBalanceStatus=1 where FBalanceID=:FBalanceID';
      qry1.First;
      while not qry1.eof do
      begin
        qry.Parameters.FindParam('FBalanceID').value:= qry1.FieldByName('FBalanceID').value;
        qry.ExecSQL;
        qry1.Next;
      end;
    finally
       ;
    end;
    E_FBalanceStatus.EditValue:=1;
    application.MessageBox('提交完毕！','系统提示',MB_ICONINFORMATION);
  end;
  //单记录取消提交
  If E_FBalanceStatus.EditValue=1 then
  begin
    If application.MessageBox(Pchar('警告：是否取消提交预结单号为：【'+Trim(E_FBalanceTxdNum.Text)+'】的单据？'+chr(13)+chr(13)
                                   +'提交审核后的数据允许修改和删除，确定要取消提交本单据吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    try
      qry.SQL.Text:='Update T_BalanceItem Set FBalanceStatus=0 where FBalanceID=:FBalanceID';
      qry.Parameters.FindParam('FBalanceID').Value:=StrToInt(Trim(E_FBalanceID.Text));
      qry.ExecSQL;
    finally
       ;
    end;
    E_FBalanceStatus.EditValue:=0;
    application.MessageBox('取消提交完毕！','系统提示',MB_ICONINFORMATION);
  end;
  TB_ref.Click;
end;

procedure TFrm_AgentBalanceTxd.VT_BalanceAgentName(Sender: TObject;
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
               +'Isleaf from VT_WorkAgent where FParentNumber= '''
               +PTree(Node.Data).ID+''' order by FNumber';
  qry.open;

  PTree(Node.Data).Flag := cLoadFlag;                  // 设置已加载标志
  while not qry.Eof do
  begin
    New(P);
    P.ID := qry.FieldByName('FNumber').AsString;
    P.ParentID := qry.FieldByName('FParentNumber').AsString;
    P.FNumber5:=qry.FieldByName('FNumber').AsString;
    P.Caption := qry.FieldByName('FName').AsString;
    P.Isleaf := qry.FieldByName('Isleaf').Value;
    P.Flag := cNoLoadFlag;                            // 新节点，未加载标志
    with MyTreeView5.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('Isleaf').value;
    end;
    qry.Next;
  end;

end;

procedure TFrm_AgentBalanceTxd.TB_Ref5Click(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If not TreeVeiwListUserID(qry,MyTreeView5,'VT_WorkAgent',UserFDepartmentID) then
  begin
    Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;

end;

procedure TFrm_AgentBalanceTxd.MyTreeView5Change(Sender: TObject;
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
    ListItemFNumber5:=PTree(Node.Data).FNumber5;
    P_th3:=PTree(Node.Data).Caption;

    If PTree(Node.Data).Isleaf=1 then
    begin
      If not MyItemList(qry,Mdata5,'V_WorkList','FAgentBrabchItem',ListItemFNumber5,'FAgentBrabchItem') then
      begin
        mdata5.Open;
        cxGV5.DataController.DataSource.DataSet:=mdata5;
      end;
    end;

  end;

end;

procedure TFrm_AgentBalanceTxd.TB_Down5Click(Sender: TObject);
var  i: integer;
begin
  inherited;
  cxGV5.OptionsData.Editing:=True;

  for i:=0 to cxGv5.ColumnCount-1 do
  begin
    cxGv5.Columns[i].Options.Filtering:=True;
    cxGv5.Columns[i].Options.Editing:=True;
    cxGv5.Columns[i].Options.Sorting:=True;
  end;


end;

procedure TFrm_AgentBalanceTxd.TB_Out2Click(Sender: TObject);
begin
  inherited;
  ExportToExcel(cxGrid5,True,TRue);

end;

procedure TFrm_AgentBalanceTxd.TB_Prin4Click(Sender: TObject);
begin
  inherited;
  frDBDataSet.DataSet:=mdata5;
  FrReport.LoadFromFile(ExtractFileDir(Application.ExeName)+'\Report_DesignBOM_AgentWork.frf');
  FrReport.ShowReport;
end;

procedure TFrm_AgentBalanceTxd.TB_RxdClick(Sender: TObject);
var
 qry,qry1:TADOquery;

begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry1:=TAdoQuery.Create(self);
  qry1.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='select max(FBalanceNum) as FMaxBalanceNum,cast(FBalanceYear as varchar(4))+cast(FBalanceMonth as varchar(2)) as yymm  from V_BalanceList '
                 +'where FDepartmentID=:FDepartmentID and cast(FBalanceYear as varchar(4))+cast(FBalanceMonth as varchar(2))=:yymm '
                 +'group by cast(FBalanceYear as varchar(4))+cast(FBalanceMonth as varchar(2))';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Parameters.FindParam('yymm').value:=Copy(ForMatDateTime('yyyymmdd',(E_FBalanceDate.Date)),1,6);
    qry.Open;
  finally
     ;
  end;
  If qry.RecordCount=1 then
     E_FBalanceNum.Text:=Format('%.3d',[(StrToInt(qry.FieldByName('FMaxBalanceNum').Value)+1)])
  else
     E_FBalanceNum.Text:=ForMatDateTime('yyyymm',(E_FBalanceDate.Date))+'001';


  
  If application.MessageBox(Pchar('警告：是否接受预结单号为：【'+ListItemFNumber1+'】的单据？'+chr(13)+chr(13)
                                 +'接受后的数据不允许修改和删除，确定要接受本单据吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
  begin
    try
      qry1.SQL.Text:='Select distinct FBalanceID from V_BalanceList where FFullNumber like :FFullNumber';
      qry1.Parameters.FindParam('FFullNumber').Value:=ListItemFNumber1+'%';
      qry1.Open;
    finally
       ;
    end;
    If  qry1.RecordCount<1 then
        Exit;
    try
      qry.SQL.Text:='Update T_BalanceItem Set FBalanceStatus=2,FBalanceNum=:FBalanceNum,FBalanceDate:=FBalanceDate where FBalanceID=:FBalanceID';
      qry.Parameters.FindParam('FBalanceDate').value:=E_FBalanceDate.Date;
      qry.Parameters.FindParam('FBalanceNum').value:=E_FBalanceNum.EditValue;
      qry1.First;
      while not qry1.eof do
      begin
        qry.Parameters.FindParam('FBalanceID').value:= qry1.FieldByName('FBalanceID').value;
        qry.ExecSQL;
        qry1.Next;
      end;
    finally
       ;
    end;
    E_FBalanceStatus.EditValue:=2;
    application.MessageBox('接受完毕！','系统提示',MB_ICONINFORMATION);
  end;
  //单记录取消接受
  If E_FBalanceStatus.EditValue=2 then
  begin
    If application.MessageBox(Pchar('警告：是否取消接受预结单号为：【'+Trim(E_FBalanceTxdNum.Text)+'】的单据？'+chr(13)+chr(13)
                                   +'提交接受后的数据允许修改和删除，确定要取消接受本单据吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    try
      qry.SQL.Text:='Update T_BalanceItem Set FBalanceStatus=1 where FBalanceID=:FBalanceID';
      qry.Parameters.FindParam('FBalanceID').Value:=StrToInt(Trim(E_FBalanceID.Text));
      qry.ExecSQL;
    finally
       ;
    end;
    E_FBalanceStatus.EditValue:=1;
    application.MessageBox('取消接受完毕！','系统提示',MB_ICONINFORMATION);
  end;
  TB_ref.Click;

end;

end.
