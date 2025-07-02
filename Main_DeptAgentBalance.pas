unit Main_DeptAgentBalance;

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
  TFrm_DeptAgentBalance = class(TFrm_GridBass)
    MData2: TdxMemData;
    DS_Mdata2: TDataSource;
    ImageList: TImageList;
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
    Image2: TImage;
    Label22: TLabel;
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
    ToolButton9: TToolButton;
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
    MData2FWeight: TFloatField;
    FWorkItemNum2: TcxGridDBColumn;
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
    MData1FBalanceAdjust: TFloatField;
    MData3FOutPrice: TFloatField;
    MData3FBalancePrice: TFloatField;
    MData3FBalanceAdjust: TFloatField;
    MData4: TdxMemData;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    DS_Mdata4: TDataSource;
    TB_sh: TToolButton;
    Panel_First: TPanel;
    Bevel3: TBevel;
    Label7: TLabel;
    E_FDeptBalanceNum: TcxTextEdit;
    Label6: TLabel;
    E_FDeptBalanceDate: TcxDateEdit;
    E_FClientFullName: TcxButtonEdit;
    Label20: TLabel;
    Label21: TLabel;
    SpeedButton1: TSpeedButton;
    MData1FRealAmount: TCurrencyField;
    cxGrid1: TcxGrid;
    cxGV1: TcxGridDBTableView;
    FDeptBalanceListNum: TcxGridDBColumn;
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
    SumFBalanceQry: TcxGridDBColumn;
    SumFBalanceAmount: TcxGridDBColumn;
    FAdvanceAmount: TcxGridDBColumn;
    FDeptQualityAmount: TcxGridDBColumn;
    FDeptRealAmount: TcxGridDBColumn;
    FDeptBalanceRemark: TcxGridDBColumn;
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
    FNumber: TcxGridDBColumn;
    FPartsCode_1: TcxGridDBColumn;
    frReport3: TfrReport;
    frDBDataSet3: TfrDBDataSet;
    frReport4: TfrReport;
    frDBDataSet4: TfrDBDataSet;
    DS_Mdata5: TDataSource;
    MData5: TdxMemData;
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
    Label26: TLabel;
    E_FDeptBalanceItemID: TcxTextEdit;
    E_FDeptBalanceStatus: TcxTextEdit;
    TB_Rxd: TToolButton;
    FWorkOutPrice_0: TcxGridDBColumn;
    FBalanceWorkAdjust: TcxGridDBColumn;
    FWorkOutPrice_2: TcxGridDBColumn;
    MData1FWorkOutPrice: TFloatField;
    MData1FBalanceWorkAdjust: TFloatField;
    TB_EXIT: TToolButton;
    FBalanceYear: TcxGridDBColumn;
    FBalanceMonth: TcxGridDBColumn;
    FBalanceDay: TcxGridDBColumn;
    TS_Qry: TRzTabSheet;
    Panel1: TPanel;
    RzSizePanel5: TRzSizePanel;
    MyTreeView6: TTreeView;
    Panel14: TPanel;
    Panel15: TPanel;
    Bevel4: TBevel;
    Panel16: TPanel;
    Image4: TImage;
    Label25: TLabel;
    ToolBar1: TToolBar;
    TB_Ref6: TToolButton;
    TB_Out6: TToolButton;
    TB_Down6: TToolButton;
    TB_Prin6: TToolButton;
    ToolButton13: TToolButton;
    cxButtonEdit1: TcxButtonEdit;
    Panel_First6: TPanel;
    Bevel5: TBevel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label31: TLabel;
    E_FBalanceNum6: TcxTextEdit;
    E_FBalanceID6: TcxButtonEdit;
    E_FBalanceDate6: TcxDateEdit;
    E_FAgentName6: TcxButtonEdit;
    E_FBalanceStatus6: TcxTextEdit;
    E_FStatusNotes6: TcxTextEdit;
    cxGrid6: TcxGrid;
    cxGV6: TcxGridDBTableView;
    FBalanceListNum6: TcxGridDBColumn;
    FBalanceName6: TcxGridDBColumn;
    FBalanceModel6: TcxGridDBColumn;
    FUnitName6: TcxGridDBColumn;
    FMaterialDate6: TcxGridDBColumn;
    FSollWeight6: TcxGridDBColumn;
    FLength6: TcxGridDBColumn;
    FQry6: TcxGridDBColumn;
    FBalanceBasePrice6: TcxGridDBColumn;
    FWorkOutPrice6: TcxGridDBColumn;
    FOutPrice6: TcxGridDBColumn;
    FEstimateQry6: TcxGridDBColumn;
    FEstimateAmount6: TcxGridDBColumn;
    FBalanceWorkAdjust6: TcxGridDBColumn;
    FBalanceAdjust6: TcxGridDBColumn;
    FBalancePrice6: TcxGridDBColumn;
    FBalanceQry6: TcxGridDBColumn;
    FBalanceAmount6: TcxGridDBColumn;
    FAdvanceAmount6: TcxGridDBColumn;
    FQualityAmount6: TcxGridDBColumn;
    FRealAmount6: TcxGridDBColumn;
    FBalanceRemark6: TcxGridDBColumn;
    FBranchItemNumber6: TcxGridDBColumn;
    FBalanceYear6: TcxGridDBColumn;
    FBalanceMonth6: TcxGridDBColumn;
    FBalanceDay6: TcxGridDBColumn;
    FBalanceNum6: TcxGridDBColumn;
    FWorkItemNum6: TcxGridDBColumn;
    FWorkListID6: TcxGridDBColumn;
    FWorkData6: TcxGridDBColumn;
    FAgentName6: TcxGridDBColumn;
    FClientshortName6: TcxGridDBColumn;
    FBranchFileNo6: TcxGridDBColumn;
    FBalancePriceID6: TcxGridDBColumn;
    FProductClass6: TcxGridDBColumn;
    FNumber6: TcxGridDBColumn;
    FPartsCode6: TcxGridDBColumn;
    cxGL6: TcxGridLevel;
    DS_Mdata6: TDataSource;
    MData6: TdxMemData;
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
    FProductSort6: TcxGridDBColumn;
    FJobSort: TcxGridDBColumn;
    Label14: TLabel;
    ToolButton1: TToolButton;
    Label10: TLabel;
    E_FMaterialDate1: TcxButtonEdit;
    E_FBranchFileNo: TcxButtonEdit;
    E_FItemId: TcxTextEdit;
    E_FItemNumber: TcxButtonEdit;
    Label1: TLabel;
    E_FMaterialDate: TcxButtonEdit;
    E_FPriceDateID: TcxTextEdit;
    FDeptBalancePriceID: TcxGridDBColumn;
    FDeptMaterialDate: TcxGridDBColumn;
    FWorkDeptResizePrice: TcxGridDBColumn;
    FDeptPrice: TcxGridDBColumn;
    FBalanceID: TcxGridDBColumn;
    FDeptBalanceQry: TcxGridDBColumn;
    procedure FormResize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
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
    procedure Set_MaxNum;
    procedure TB_PrinClick(Sender: TObject);
    procedure frReportBeginBand(Band: TfrBand);
    procedure frReportGetValue(const ParName: String;
      var ParValue: Variant);
    procedure MyTreeView2Change(Sender: TObject; Node: TTreeNode);
    procedure MyTreeView2Expanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure TB_Ref2Click(Sender: TObject);
    procedure ToolButton9Click(Sender: TObject);
    procedure TB_Down2Click(Sender: TObject);
    procedure MData1BeforePost(DataSet: TDataSet);
    procedure WorkBOMSelPropertiesChange(Sender: TObject);
    procedure SelPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure TB_DownClick(Sender: TObject);
    procedure TB_OutClick(Sender: TObject);
    procedure TB_shClick(Sender: TObject);
    procedure TB_RxdClick(Sender: TObject);
    procedure TB_EXITClick(Sender: TObject);
    procedure cxGV2CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure MyTreeView6Expanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure MyTreeView6Change(Sender: TObject; Node: TTreeNode);
    procedure TB_Ref6Click(Sender: TObject);
    procedure TB_Down6Click(Sender: TObject);
    procedure TB_Out6Click(Sender: TObject);
    procedure E_FMaterialDatePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure E_FItemNumberPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FDeptMaterialDatePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private

    { Private declarations }
    function AddMain:bool;
    function AddList:bool;
    function AddRd:bool;
    function EditRd:bool;
    function DelRd:bool;
    function EditMain:bool;
    function EditWorkList:bool;



  public
    P_i:boolean;
    P_Isleaf,P_IsAudit,P_MaxNum:Integer;

    { Public declarations }
  end;

var
  Frm_DeptAgentBalance: TFrm_DeptAgentBalance;


implementation

uses FRMDATA,{ FRMMAIN,} COMMON, FrmSelect, ProgBar, PROGRASS;

{$R *.dfm}
procedure TFrm_DeptAgentBalance.Set_MaxNum;
var
  proc:TADOStoredProc;
begin
{  proc:=TADOStoredProc.Create(self);
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
      value:=E_FDeptBalanceDate.Date;
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
  }
end;



procedure TFrm_DeptAgentBalance.Set_Open;
begin
  TB_Ref.Visible:=False;
  TB_App.Visible:=False;
  TB_Edit.Visible:=False;
  TB_Del.Visible:=False;
  MyTreeView1.Enabled:=False;

  OKBtn.Visible:=True;
  CancelBtn.Visible:=True;
  cxGV1.OptionsData.Editing:=True;

  E_FDeptBalanceNum.Enabled:=True;
  E_FDeptBalanceDate.Enabled:=True;
  Sel.Options.Editing:=True;
  SumFBalanceQry.Options.Editing:=True;
  FAdvanceAmount.Options.Editing:=True;
 //FDeptQualityAmount.Options.Editing:=True;
  FBalanceWorkAdjust.Options.Editing:=True;
  FBalanceAdjust.Options.Editing:=True;
  FDeptBalanceRemark.Options.Editing:=True;
end;

procedure TFrm_DeptAgentBalance.Set_Close;
begin
  TB_Ref.Visible:=True;
  TB_App.Visible:=True;
  TB_Edit.Visible:=True;
  TB_Del.Visible:=True;
  MyTreeView1.Enabled:=True;

  OKBtn.Visible:=False;
  CancelBtn.Visible:=False;
  cxGV1.OptionsData.Editing:=False;


  E_FDeptBalanceNum.Enabled:=False;
  E_FDeptBalanceDate.Enabled:=False;
end;


function TFrm_DeptAgentBalance.DelRd: bool;
var
 qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Delete from T_DeptBalanceItem where FDeptBalanceItemID=:FDeptBalanceItemID';
    qry.Parameters.FindParam('FDeptBalanceItemID').value:=StrToInt(Trim(E_FDeptBalanceItemID.Text));
    result:=qry.ExecSQL>=1;
  finally
    qry.Free;
  end;
end;



function TFrm_DeptAgentBalance.AddMain: bool;
var
 qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Insert into T_DeptBalanceItem(FDeptBalanceNum, FDeptBalanceDate,FDeptBalanceStatus) '
                 +'values(:FDeptBalanceNum, :FDeptBalanceDate,:FDeptBalanceStatus)';
   with qry.Parameters do
   begin
     FindParam('FDeptBalanceNum').value:=StrToInt(Trim(E_FDeptBalanceNum.Text));
     FindParam('FDeptBalanceDate').value:=E_FDeptBalanceDate.Date;
     FindParam('FDeptBalanceStatus').value:=StrToInt(E_FDeptBalanceStatus.EditValue);         //未审核标识
   end;
     result:=qry.ExecSQL>=1;
   finally
     qry.Free;
   end;

end;

function TFrm_DeptAgentBalance.EditMain: bool;
var
 qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Update T_DeptBalanceItem Set FDeptBalanceNum=:FDeptBalanceNum, FDeptBalanceDate=:FDeptBalanceDate,'
                 +'FDeptBalanceStatus=:FDeptBalanceStatus where  FDeptBalanceItemID=:FDeptBalanceItemID';
    with qry.Parameters do
    begin
      FindParam('FDeptBalanceNum').value:=Trim(E_FDeptBalanceNum.Text);
      FindParam('FDeptBalanceDate').value:=E_FDeptBalanceDate.Date;
      FindParam('FDeptBalanceStatus').value:=E_FDeptBalanceStatus.EditValue; //未审核制单标识
      FindParam('FDeptBalanceItemID').value:=Trim(E_FDeptBalanceItemID.Text);
    end;
    result:=qry.ExecSQL>=1;
  finally
    qry.Free;
  end;

end;
function TFrm_DeptAgentBalance.EditWorkList: bool;
var
  qry: TADOQuery;
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

  try
    qry.SQL.Text:='Update T_workList Set FDeptBalancePriceID=:FDeptBalancePriceID '
                 +'where FWorkListID=:FWorkListID ';
    mData1.First;
     while not mData1.eof do
     begin
       If qry.Active then qry.Close;
       qry.Parameters.FindParam('FDeptBalancePriceID').value:=mdata1['FDeptBalancePriceID'];
       qry.Parameters.FindParam('FWorkListID').value:=mdata1['FWorkListID'];
       result:=qry.ExecSQL>=1;
       if not result then break;
       mData1.Next;
     end;
   finally
     qry.Free;
   end;
end;



function TFrm_DeptAgentBalance.AddList: bool;
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
    qry1.SQL.Text:='select * from V_DeptBalanceItem where FDeptBalanceNum=:FDeptBalanceNum';
    qry1.Parameters.FindParam('FDeptBalanceNum').value:=StrToInt(Trim(E_FDeptBalanceNum.Text));
    qry1.Open;
  finally
    ;
  end;
  If qry1.RecordCount>0 then
     E_FDeptBalanceItemID.Text:=IntTostr(qry1.FieldByName('FDeptBalanceItemID').value);

  try
    qry.SQL.Text:='Insert into T_DeptBalanceList(FDeptBalanceItemID, FDeptBalanceListNum, FWorkListID, FDeptBalanceQry,FDeptQualityAmount,FDeptBalanceRemark) '
                 +'values(:FDeptBalanceItemID, :FDeptBalanceListNum,:FWorkListID, :FDeptBalanceQry,:FDeptQualityAmount,:FDeptBalanceRemark)';
    mData1.First;
    i:=1;
    while not mData1.eof do
     begin
     //  If ((mData1['FBalanceQry']<>0) and (mData1['FBalanceQry']<>Null)) or ((mData1['FBalancePiece']<>0) and (mData1['FBalancePiece']<>Null)) then
       If ((mData1['FDeptBalanceQry']<>0) and (mData1['FDeptBalanceQry']<>Null)) then
       begin
         If qry.Active then qry.Close;
         with qry.Parameters do
         begin
           FindParam('FDeptBalanceItemID').value:= qry1.FieldByName('FDeptBalanceItemID').value;
           FindParam('FDeptBalanceListNum').value:=i;
           FindParam('FWorkListID').value:=mdata1['FWorkListID'];
           FindParam('FDeptBalanceQry').value:=mdata1['FDeptBalanceQry'];
          // FindParam('FDeptBalanceWorkAdjust').value:=mdata1['FDeptBalanceWorkAdjust'];
          // FindParam('FDeptBalanceAdjust').value:=mdata1['FDeptBalanceAdjust'];
           FindParam('FDeptQualityAmount').value:=mdata1['FDeptQualityAmount'];
           FindParam('FDeptBalanceRemark').value:=mdata1['FDeptBalanceRemark'];
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


function TFrm_DeptAgentBalance.AddRd: bool;
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

    if EditWorkList then  //1   任务单修改
    begin
      if AddMain then  //2   主表新增
      begin
        result:=True;
        if AddList then //3    明细表新增
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


function TFrm_DeptAgentBalance.EditRd:bool;
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


procedure TFrm_DeptAgentBalance.FormResize(Sender: TObject);
begin
  inherited;
  L_title.Caption:='事业部外协结算';
  Self.Caption:='事业部外协结算';
end;

procedure TFrm_DeptAgentBalance.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=cafree;
  Frm_DeptAgentBalance:=nil;
end;

procedure TFrm_DeptAgentBalance.MyTreeView1Change(Sender: TObject; Node: TTreeNode);
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

    If PTree(Node.Data).Isleaf=1 then
    begin
      If not MyItemList(qry,Mdata1,'V_DeptBalanceList','FWorkDataNum',ListItemFNumber1,'FWorkDataNum') then
      begin
       // mdata4.Open;
      end;
      E_FDeptBalanceItemID.Text:=mdata1['FDeptBalanceItemID'];
    end
    else
    begin
      mdata2.Close;
    end;
  end;
end;

procedure TFrm_DeptAgentBalance.MyTreeView1Expanding(Sender: TObject;
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
               +'Isleaf from VT_DeptBalanceListData where FParentNumber= '''
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
    P.Flag := cNoLoadFlag;                            // 新节点，未加载标志
    P.Isleaf:=qry.fieldbyname('Isleaf').value;
    with MyTreeView1.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('Isleaf').value;
    end;
    qry.Next;
  end;


end;

procedure TFrm_DeptAgentBalance.TB_RefClick(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If not TreeVeiwListUserID(qry,MyTreeView1,'VT_DeptBalanceListData',UserFDepartmentID) then
  begin
    Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;

end;

procedure TFrm_DeptAgentBalance.OKBtnClick(Sender: TObject);
var qry: TADOQuery;
    P_FBalanceNum:String;
begin
  cxGV1.OptionsData.Editing:=True;
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  mData1.Edit;
  mData1.Post;

  If (Trim(E_FDeptBalanceNum.Text)='') then
  begin
    application.MessageBox('关键字不能为空！请重新输入','系统提示',MB_ICONERROR);
    Exit;
  end;
{

  If P_state =0 then
  begin
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
       P_FBalanceNum:=Format('%.3d',[(StrToInt(qry.FieldByName('FMaxBalanceNum').Value)+1)])
    else
       P_FBalanceNum:=ForMatDateTime('yyyymm',(E_FBalanceDate.Date))+'001';

  //Self.Set_MaxNum;//取ID
  E_FDeptBalanceNum.Text:=ForMatDateTime('yyyymm',(E_FDeptBalanceDate.Date))+Format('%.3d',[P_MaxNum]);

   E_FDeptBalanceStatus.EditValue:=3;//未审核制单标识
    try
      qry.SQL.Text:='Select * from V_DeptBalanceList where FDeptBalanceNum=:FDeptBalanceNum and FDepartmentNum=:FDepartmentNum';
      qry.Parameters.FindParam('FDeptBalanceNum').Value:=Trim(E_FDeptBalanceNum.Text);
      qry.Parameters.FindParam('FDepartmentNum').Value:=UserFDepartmentNum;
      qry.Open;
      If qry.RecordCount>0 then
      begin
         If application.MessageBox('此结算单号已存在,是否系统自动取号吗？','提示',MB_ICONINFORMATION+MB_YESNO)=6 then
         begin
           E_FDeptBalanceNum.Text:=P_FBalanceNum;
         end
         else
           Exit;
      end;
    finally
       ;
    end;
  end;
   }
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



procedure TFrm_DeptAgentBalance.TB_AppClick(Sender: TObject);
var qry: TADOQuery;
    P_FBalanceNum:String;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  P_state :=0;
  E_FDeptBalanceDate.Date:=date();
  E_FDeptBalanceStatus.EditValue:=3;//未审核单标识
 { try
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
  }
  //Self.Set_MaxNum;//取ID
 // E_FDeptBalanceNum.Text:=ForMatDateTime('yyyymm',(E_FDeptBalanceDate.Date))+Format('%.3d',[P_MaxNum]);

  Self.Set_Open;
  mdata1.Close;
  mdata1.Open;
end;

procedure TFrm_DeptAgentBalance.TB_EditClick(Sender: TObject);
var
 qry:TADOquery;
begin
  P_state :=1;
  If (mdata1.RecordCount<1) then
    Exit;

  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Select distinct FDeptBalanceNum from V_DeptBalanceList where FFullNumber like :FFullNumber';
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

procedure TFrm_DeptAgentBalance.TB_DelClick(Sender: TObject);
var
  qry:TADOQuery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If (mdata1.RecordCount<1) then
    Exit;

  If application.MessageBox(Pchar('警告：是否删除结算单号为：【'+Trim(E_FDeptBalanceNum.Text)+'】的信息？'+chr(13)+chr(13)
                           +'删除数据操作将不可恢复，确定要删除本单据吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
  If application.MessageBox(Pchar('再次警告：是否删除结算单号为：【'+Trim(E_FDeptBalanceNum.Text)+'】的信息？'+chr(13)+chr(13)
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

procedure TFrm_DeptAgentBalance.CancelBtnClick(Sender: TObject);
begin
  inherited;
  Self.Set_Close;
end;

procedure TFrm_DeptAgentBalance.FormCreate(Sender: TObject);
begin
  inherited;
  TB_App.Enabled:= mdlData.CheckFrmRights(TFrm_DeptAgentBalance.ClassName,'新增');
  TB_Edit.Enabled:= mdlData.CheckFrmRights(TFrm_DeptAgentBalance.ClassName,'修改');
  TB_Del.Enabled:= mdlData.CheckFrmRights(TFrm_DeptAgentBalance.ClassName,'删除');
  TB_Prin.Enabled:= mdlData.CheckFrmRights(TFrm_DeptAgentBalance.ClassName,'打印');
  TB_Out.Enabled:= mdlData.CheckFrmRights(TFrm_DeptAgentBalance.ClassName,'导出');
  TB_Sh.Enabled:= mdlData.CheckFrmRights(TFrm_DeptAgentBalance.ClassName,'审核');
end;

procedure TFrm_DeptAgentBalance.FormShow(Sender: TObject);
begin
  TB_Ref.Click;
  TB_Ref6.Click;
end;

procedure TFrm_DeptAgentBalance.TB_PrinClick(Sender: TObject);
begin
  inherited;
  FrDBDataSet.DataSet:=mdata1;
  FrReport.LoadFromFile(ExtractFileDir(Application.ExeName)+'\Report_DesignBOM_BalanceItem.frf');
  FrReport.ShowReport;

end;

procedure TFrm_DeptAgentBalance.frReportBeginBand(Band: TfrBand);
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

procedure TFrm_DeptAgentBalance.frReportGetValue(const ParName: String;
  var ParValue: Variant);
begin
  inherited;
  If ParName='UserName' then
    ParValue:=UserName;

end;

procedure TFrm_DeptAgentBalance.MyTreeView2Change(Sender: TObject;
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
    P_th1:=PTree(Node.Data).Caption;

    If PTree(Node.Data).Isleaf=1 then
    begin
      If not MyItemList(qry,Mdata2,'V_WorkList','FWorkDataNum',ListItemFNumber2,'FWorkDataNum') then
      begin
       // mdata4.Open;
      end;
    end
    else
    begin
      mdata2.Close;
    end;
  end;
  //cxGvAutoMdata(cxGv1,mdata1);

end;

procedure TFrm_DeptAgentBalance.MyTreeView2Expanding(Sender: TObject;
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
               +'Isleaf from VT_WorkData where FParentNumber= '''
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
    P.Flag := cNoLoadFlag;                            // 新节点，未加载标志
    P.Isleaf:=qry.fieldbyname('Isleaf').value;
    with MyTreeView2.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('Isleaf').value;
    end;
    qry.Next;
  end;

end;

procedure TFrm_DeptAgentBalance.TB_Ref2Click(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If not TreeVeiwListUserID(qry,MyTreeView2,'VT_WorkData',UserFDepartmentID) then
  begin
    Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;

end;

procedure TFrm_DeptAgentBalance.ToolButton9Click(Sender: TObject);
var
  proc:TADOStoredProc;
begin
  proc:=TADOStoredProc.Create(self);
  proc.ConnectionString:=mdlData.ReadConnStr;
  proc.CommandTimeout:=500;
  If ListItemFNumber2='' then
  begin
    Application.MessageBox(PChar('请选择统计范围!'), '错误', MB_OK +MB_ICONSTOP);
    Exit;
  end;


  try
    proc.ProcedureName:='P_DeptBalanceList_Sel;1';
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=200;
      name := '@ListItemFNumber';
      value:=ListItemFNumber2;
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=20;
      name := '@FMaterialDate';
      value:=Trim(E_FMaterialDate.Text);
    end;

    proc.Open;
    cxGV2.DataController.DataSource.DataSet:=proc;
 //   cxGvAutoProc(cxGv2,proc);
    //proc.ExecProc;
{    mdata1.Close;
    mdata1.CopyFromDataSet(proc);
    Mdata1.Active:=True;
    DS_Mdata1.DataSet:=Mdata1;
    cxGV1.DataController.DataSource:=DS_Mdata1;
    cxGvColumn(cxGv1,mdata1);  }
  finally
     ;
  end;
end;

procedure TFrm_DeptAgentBalance.TB_Down2Click(Sender: TObject);
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

procedure TFrm_DeptAgentBalance.MData1BeforePost(DataSet: TDataSet);
begin
  inherited;
{  If DataSet['FBalanceBasePrice']=Null then
     DataSet['FBalanceBasePrice']:=0;
  DataSet['FBalancePrice']:=DataSet['FBalanceBasePrice']+DataSet['FWorkOutPrice']+DataSet['FOutPrice']+DataSet['FBalanceWorkAdjust']+DataSet['FBalanceAdjust'];

  DataSet['FBalanceAmount']:=round(DataSet['FBalanceQry']*DataSet['FBalancePrice']*100)/100;

  DataSet['FRealAmount'] :=DataSet['FBalanceAmount']-DataSet['FQualityAmount'];
}
end;

procedure TFrm_DeptAgentBalance.WorkBOMSelPropertiesChange(Sender: TObject);
begin
  inherited;
  mdata2.Edit;
  mdata2.Post;
end;

procedure TFrm_DeptAgentBalance.SelPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  PC_2.ActivePage:=TS_WorkList;

end;

procedure TFrm_DeptAgentBalance.TB_DownClick(Sender: TObject);
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

procedure TFrm_DeptAgentBalance.TB_OutClick(Sender: TObject);
begin
  inherited;
  ExportToExcel(cxGrid1,True,TRue);
end;

procedure TFrm_DeptAgentBalance.TB_shClick(Sender: TObject);
var
 qry,qry1:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry1:=TAdoQuery.Create(self);
  qry1.ConnectionString:=mdlData.ReadConnStr;
  If application.MessageBox(Pchar('警告：是否审核结算单号为：【'+ListItemFNumber1+'】的单据？'+chr(13)+chr(13)
                                 +'审核后的数据不允许修改和删除，确定要审核本单据吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
  begin
    try
      qry1.SQL.Text:='Select distinct FDeptBalanceItemID from V_DeptBalanceList where FFullNumber like :FFullNumber';
      qry1.Parameters.FindParam('FFullNumber').Value:=ListItemFNumber1+'%';
      qry1.Open;
    finally
       ;
    end;
    If  qry1.RecordCount<1 then
        Exit;
    try
      qry.SQL.Text:='Update T_DeptBalanceItem Set FIsAudit=1,FBalanceStatus=4 where FDeptBalanceItemID=:FDeptBalanceItemID';
      qry1.First;
      while not qry1.eof do
      begin
        qry.Parameters.FindParam('FDeptBalanceItemID').value:= qry1.FieldByName('FDeptBalanceItemID').value;
        qry.ExecSQL;
        qry1.Next;
      end;
    finally
       ;
    end;
    application.MessageBox('审核完毕！','系统提示',MB_ICONINFORMATION);
  end;
  //单记录取消审核
  If (P_Isleaf=1) and (P_IsAudit=1) then
  begin
    If application.MessageBox(Pchar('警告：是否取消审核结算单号为：【'+Trim(E_FDeptBalanceNum.Text)+'】的单据？'+chr(13)+chr(13)
                                   +'取消审核后的数据允许修改和删除，确定要取消审核本单据吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    try
      qry.SQL.Text:='Update T_DeptBalanceItem Set FIsAudit=0,FDeptBalanceStatus=3 where FDeptBalanceItemID=:FDeptBalanceItemID';
      qry.Parameters.FindParam('FDeptBalanceItemID').Value:=StrToInt(Trim(E_FDeptBalanceItemID.Text));
      qry.ExecSQL;
    finally
       ;
    end;
    application.MessageBox('取消审核完毕！','系统提示',MB_ICONINFORMATION);
  end;
  TB_ref.Click;
end;

procedure TFrm_DeptAgentBalance.TB_RxdClick(Sender: TObject);
var
 qry:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  //单记录取消接受
  If E_FDeptBalanceStatus.EditValue=2 then
  begin
    If application.MessageBox(Pchar('警告：是否取消接受预结单号为：【'+Trim(E_FDeptBalanceNum.Text)+'】的单据？'+chr(13)+chr(13)
                                   +'提交接受后的数据允许修改和删除，确定要取消接受本单据吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    try
      qry.SQL.Text:='Update T_DeptBalanceItem Set FDeptBalanceStatus=1 where FDeptBalanceItemID=:FDeptBalanceItemID';
      qry.Parameters.FindParam('FDeptBalanceItemID').Value:=StrToInt(Trim(E_FDeptBalanceItemID.Text));
      qry.ExecSQL;
    finally
       ;
    end;
    E_FDeptBalanceStatus.EditValue:=1;
    application.MessageBox('取消接受完毕！','系统提示',MB_ICONINFORMATION);
  end;
  TB_ref.Click;


end;

procedure TFrm_DeptAgentBalance.TB_EXITClick(Sender: TObject);
begin
  inherited;
  self.Close;
end;

procedure TFrm_DeptAgentBalance.cxGV2CustomDrawCell(
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

procedure TFrm_DeptAgentBalance.MyTreeView6Expanding(Sender: TObject;
  Node: TTreeNode; var AllowExpansion: Boolean);
var
  P :PTree;
  qry:TADOquery;

begin
{  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If (Node = nil) or
     (PTree(Node.Data).Flag <> cNoLoadFlag) or   // 1.加载标志
     (not Node.HasChildren) or                   // 2.未有子
     (Node.Count>0) then                         // 3.已有子节点
     Exit;

  qry.SQL.Text:='Select FNumber, FParentNumber,FName,Isleaf,FIsAudit from VT_BalanceList '
               +'where FBalanceStatus>=2 and FParentNumber= '''
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
    with MyTreeView6.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('Isleaf').value;
    end;
    qry.Next;
  end;

   }
end;

procedure TFrm_DeptAgentBalance.MyTreeView6Change(Sender: TObject;
  Node: TTreeNode);
var
  qry:TADOquery;
begin
{  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.EnableBCD:=False;//小数位数>4

  If Node = nil then Exit;
  with PTree(Node.Data)^ do
  begin
    ListItemFNumber6:=PTree(Node.Data).FNumber;
    If not MyItemList(qry,Mdata6,'V_BalanceList','FFullNumber',ListItemFNumber6,'FFullNumber,FBalanceListNum') then
    begin
      //mdata1.Open;
    end;
    If mdata6.RecordCount>0 then
    begin
      E_FBalanceNum6.Text:= mdata6['FBalanceNum'];
      E_FBalanceDate6.Text:= mdata6['FBalanceDate'];
      E_FBalanceID6.Text:= mdata6['FBalanceID'];
      E_FBalanceStatus6.EditValue:= mdata6['FBalanceStatus'];
      E_FStatusNotes6.Text:= mdata6['FStatusNotes'];
      E_FAgentName6.Text:= mdata6['FAgentName'];
    end
  end;
  If P_Isleaf=1 then
  begin
   Panel_First6.Visible:=True;
   try
      qry.SQL.Text:='Select distinct FBalanceStatus from V_BalanceList where FFullNumber like :FFullNumber ';
      qry.Parameters.FindParam('FFullNumber').Value:=ListItemFNumber6+'%';
      qry.Open;
    finally
       ;
    end;
    If qry.RecordCount<=0  then
       Exit;
   end
   else
      Panel_First6.Visible:=False;
   }

end;

procedure TFrm_DeptAgentBalance.TB_Ref6Click(Sender: TObject);
var
  qry:TADOquery;
begin
{  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If not TreeVeiwListUserID(qry,MyTreeView6,'VT_BalanceList',UserFDepartmentID) then
  begin
    Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;
       }
end;

procedure TFrm_DeptAgentBalance.TB_Down6Click(Sender: TObject);
Var i:Integer;
begin
  If  TB_Down6.Caption='取消设置' then
  begin
    TB_Down6.Caption:='设置';
    cxGV6.OptionsData.Editing:=False;
    cxGv6.OptionsView.GroupByBox:=False;
    for i:=0 to cxGv6.ColumnCount-1 do
    begin
      cxGv6.Columns[i].Options.Filtering:=False;
      cxGv6.Columns[i].Options.Editing:=False;
      cxGv6.Columns[i].Options.Sorting:=False;
    end;
  end
  else
  begin
    TB_Down6.Caption:='取消设置';
    cxGV6.OptionsData.Editing:=True;
    cxGv6.OptionsView.GroupByBox:=True;
    for i:=0 to cxGv6.ColumnCount-1 do
    begin
      cxGv6.Columns[i].Options.Filtering:=True;
      cxGv6.Columns[i].Options.Editing:=True;
      cxGv6.Columns[i].Options.Sorting:=True;
    end;
  end;

end;

procedure TFrm_DeptAgentBalance.TB_Out6Click(Sender: TObject);
begin
  inherited;
  ExportToExcel(cxGrid6,True,TRue);
end;

procedure TFrm_DeptAgentBalance.E_FMaterialDatePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  try
    qry.SQL.Text:='select * from VT_SelBalancePrice where  FDepartmentID=:FDepartmentID ';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Open;
  finally
     ;
  end;

  selValue:=select('选择执行单价','FNumber','FParentNumber','FNumber','FName',qry);
  If (Length(selValue)>0) and (qry.FieldByName('Isleaf').Value=1) then
  begin
    E_FMaterialDate.Text:=qry.FieldByName('FMaterialDate').Value;
    E_FPriceDateID.Text:=qry.FieldByName('FPriceDateID').Value;
  end
  else
  begin
    messagedlg('请选择明细！',mtInformation,[mbok],0);
    Exit;
  end;
{  ListItemFNumber3:= qry.FieldByName('FNumber').AsString;
  If not MyItemList(qry,Mdata3,'V_BalancePrice','FFullNumber',ListItemFNumber3,'FFullNumber') then
  begin
    mdata3.Open;
  end;
 }

  qry.Free;


end;

procedure TFrm_DeptAgentBalance.E_FItemNumberPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry,qry1: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry1:=TADOQuery.Create(self);
  qry1.ConnectionString:=mdlData.ReadConnStr;
   try
     qry.SQL.Text:='select * from V_FileItem where FItemNumber=:FItemNumber order by FItemNumber ';
     qry.Parameters.FindParam('FItemNumber').value:=Trim(E_FItemNumber.Text);
     qry.Open;
   finally
      ;
   end;
   If qry.RecordCount=0 then
   begin
     try
       qry.SQL.Text:='select * from VT_FileItem ';
       qry.Open;
     finally
       ;
     end;

     selValue:=select('选择档案号','FNumber','FParentNumber','FNumber','FName',qry);
     If (Length(selValue)>0) and (qry.FieldByName('FDetail').Value<>0) then
     begin
       E_FItemID.Text:=qry.FieldByName('FItemID').Value;
       try
         qry1.SQL.Text:='select * from V_FileItem where FItemID=:FItemID';
         qry1.Parameters.FindParam('FItemID').value:=qry.FieldByName('FItemID').Value;
         qry1.Open;
       finally
          ;
       end;
       If qry1.RecordCount>0 then
       begin
         E_FBranchFileNo.Text:=qry1.FieldByName('FBranchFileNo').Value;
         E_FClientFullName.Text:=qry1.FieldByName('FClientFullName').AsString;
         E_FItemNumber.Text:=qry1.FieldByName('FItemNumber').AsString;
         end;
     end
     else
       application.MessageBox('请选择明细！','系统提示',MB_ICONINFORMATION);
     Exit;
   end;

   If qry.RecordCount=1 then
   begin
     E_FItemID.Text:=qry.FieldByName('FItemID').Value;
     E_FBranchFileNo.Text:=qry.FieldByName('FBranchFileNo').Value;
     E_FClientFullName.Text:=qry.FieldByName('FClientFullName').AsString;
     E_FItemNumber.Text:=qry.FieldByName('FItemNumber').AsString;
     Exit;
   end
   else
   begin
    selValue:=select('选择档案信息','FBranchItemNumber','FItemNumber','FBranchItemNumber','FBranchItemNumber;FClientShortName',qry);
    If (Length(selValue)>0) then
    begin
      E_FItemID.Text:=qry.FieldByName('FItemID').Value;
      E_FBranchFileNo.Text:=qry.FieldByName('FBranchFileNo').Value;
      E_FClientFullName.Text:=qry.FieldByName('FClientFullName').AsString;
    //  E_FItemModel.Text:=qry.FieldByName('FItemModel').AsString;
     // E_FItemNumber.Text:=qry.FieldByName('FItemNumber').AsString;
     // E_FItemQry.Text:=qry.FieldByName('FItemQry').Value;
     // E_FWorkData.Text:=qry.FieldByName('FWorkData').AsString;
     // E_FProductName.Text:=qry.FieldByName('FProductName').AsString;
    end;
    Exit;
  end;

end;

procedure TFrm_DeptAgentBalance.SpeedButton1Click(Sender: TObject);
var  qry,qry1: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry1:=TADOQuery.Create(self);
  qry1.ConnectionString:=mdlData.ReadConnStr;
  try
    qry1.SQL.Text:='Select a.FBalanceID,b.FBalanceID as FDeptBalanceID,a.FBalancePriceID,isnull(b.FBalancePriceID,0) as FDeptBalancePriceID,'
                 +'a.FMaterialDate,b.FMaterialDate as FDeptMaterialDate,b.FWorkDeptResizePrice,'
                 +'b.FWorkDeptPrice,b.FDeptPrice,SumFBalanceQry as FDeptBalanceQry,0 as FDeptQualityAmount,'
                 +''''' as FDeptBalanceRemark,0 as FDeptBalanceListNum,a.* from '
                 +'(Select * from V_WorkList where FItemID=:FItemID) as a left outer join '
                 +'(Select FBalanceID,FBalancePriceID,FMaterialDate,FWorkDeptResizePrice,FWorkDeptPrice,FDeptPrice from V_BalancePrice where FPriceDateID=:FPriceDateID) as b on a.FBalanceID=b.FBalanceID where isnull(b.FBalancePriceID,0)=0';
    qry1.Parameters.FindParam('FItemID').value:=Trim(E_FItemID.Text);
    qry1.Parameters.FindParam('FPriceDateID').value:=Trim(E_FPriceDateID.Text);
    qry1.Open;
  finally
    ;
  end;
  If qry1.RecordCount>0 then
  begin
    application.MessageBox('事业部结算的执行日期有些没单价！请重新输入','系统提示',MB_ICONERROR);
    mdata1.CopyFromDataSet(qry1);
    mdata1.Open;
    Exit;
 end;

  try
    qry.SQL.Text:='Select a.FBalanceID,b.FBalanceID as FDeptBalanceID,a.FBalancePriceID,b.FBalancePriceID as FDeptBalancePriceID,'
                 +'a.FMaterialDate,b.FMaterialDate as FDeptMaterialDate,b.FWorkDeptResizePrice,'
                 +'b.FWorkDeptPrice,b.FDeptPrice,SumFBalanceQry as FDeptBalanceQry,0 as FDeptQualityAmount,'
                 +''''' as FDeptBalanceRemark,0 as FDeptBalanceListNum,a.* from '
                 +'(Select * from V_WorkList where FItemID=:FItemID) as a left outer join '
                 +'(Select FBalanceID,FBalancePriceID,FMaterialDate,FWorkDeptResizePrice,FWorkDeptPrice,FDeptPrice from V_BalancePrice where FPriceDateID=:FPriceDateID) as b on a.FBalanceID=b.FBalanceID ';
    qry.Parameters.FindParam('FItemID').value:=Trim(E_FItemID.Text);
    qry.Parameters.FindParam('FPriceDateID').value:=Trim(E_FPriceDateID.Text);
    qry.Open;
  finally
    ;
  end;
  mdata1.CopyFromDataSet(qry);
  mdata1.Open;
end;

procedure TFrm_DeptAgentBalance.FDeptMaterialDatePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry,qry1: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry1:=TADOQuery.Create(self);
  qry1.ConnectionString:=mdlData.ReadConnStr;

  try
    qry.SQL.Text:='select * from VT_SelBalancePrice where  FDepartmentID=:FDepartmentID ';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Open;
  finally
     ;
  end;

  selValue:=select('选择执行单价','FNumber','FParentNumber','FNumber','FName',qry);
  If (Length(selValue)>0) and (qry.FieldByName('Isleaf').Value=1) then
  begin
    mdata1.Edit;
    try
      qry1.SQL.Text:='select * from V_BalancePrice where  FDepartmentID=:FDepartmentID '
                   +'and FPriceDateID=:FPriceDateID and  FBalanceID=:FBalanceID';
      qry1.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
      qry1.Parameters.FindParam('FPriceDateID').value:=qry.FieldByName('FPriceDateID').Value;
      qry1.Parameters.FindParam('FBalanceID').value:=mdata1['FBalanceID'];
      qry1.Open;
    finally
       ;
    end;
    mdata1['FDeptMaterialDate']:=qry1.FieldByName('FMaterialDate').Value;
    mdata1['FDeptBalancePriceID']:=qry1.FieldByName('FBalancePriceID').Value;
    mdata1.Post;


  end
  else
  begin
    messagedlg('请选择明细！',mtInformation,[mbok],0);
    Exit;
  end;
  qry.Free;


end;

end.
