unit Main_StockIn;

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
  cxCheckComboBox, RzEdit, RzLabel,Comobj, cxSpinEdit, ActnList, Menus, cxCalc;

type
  TFrm_StockIn = class(TFrm_GridBass)
    MData3: TdxMemData;
    DS_Mdata3: TDataSource;
    ImageList: TImageList;
    frReport: TfrReport;
    frDBDataSet: TfrDBDataSet;
    PC_2: TRzPageControl;
    TS_WorkBOM: TRzTabSheet;
    TS_StockIn: TRzTabSheet;
    ADOQuery: TADOQuery;
    ADOStoredProc1: TADOStoredProc;
    PanelBkGnd: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    MData1: TdxMemData;
    MData1th1: TStringField;
    MData1mc1: TStringField;
    MData1gg1: TStringField;
    MData1SelRemark_1: TStringField;
    MData1ssth1: TStringField;
    MData1FK3Number_1: TStringField;
    MData1FName1: TStringField;
    MData1FModel1: TStringField;
    MData1unitName1: TStringField;
    MData1js1: TStringField;
    MData1FSumQry1: TFloatField;
    MData1FQry1: TFloatField;
    MData1FSuttle1: TFloatField;
    MData1FNumber1: TStringField;
    MData1FParentNumber1: TStringField;
    MData1FFullNumber1: TStringField;
    DS_Mdata1: TDataSource;
    MData1Num: TStringField;
    MData1abc: TStringField;
    MData1FFStockInListRemark: TStringField;
    MData1FCode: TStringField;
    MData1FStockInListID: TIntegerField;
    MData1FInSumSuttle: TFloatField;
    MData1FInQry: TFloatField;
    MData1FInSumQry: TFloatField;
    DS_Mdata2: TDataSource;
    MData2: TdxMemData;
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
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    StringField12: TStringField;
    StringField13: TStringField;
    StringField14: TStringField;
    StringField15: TStringField;
    StringField16: TStringField;
    StringField17: TStringField;
    IntegerField1: TIntegerField;
    FloatField4: TFloatField;
    FloatField5: TFloatField;
    FloatField6: TFloatField;
    Panel7: TPanel;
    cxGrid2: TcxGrid;
    cxGV2: TcxGridDBTableView;
    FCode: TcxGridDBColumn;
    th: TcxGridDBColumn;
    mc: TcxGridDBColumn;
    gg: TcxGridDBColumn;
    ssth: TcxGridDBColumn;
    Sel: TcxGridDBColumn;
    IsSel: TcxGridDBColumn;
    FQry: TcxGridDBColumn;
    FSuttle: TcxGridDBColumn;
    FSumQry: TcxGridDBColumn;
    FSumSuttle: TcxGridDBColumn;
    FK3Number: TcxGridDBColumn;
    FName: TcxGridDBColumn;
    FModel: TcxGridDBColumn;
    UnitName: TcxGridDBColumn;
    FFullNumber: TcxGridDBColumn;
    ssFullNumber: TcxGridDBColumn;
    Remark: TcxGridDBColumn;
    js: TcxGridDBColumn;
    FWorkBOMID: TcxGridDBColumn;
    cxGL2: TcxGridLevel;
    Panel4: TPanel;
    Bevel1: TBevel;
    SelCancelBtn: TcxButton;
    SelBtn: TcxButton;
    RzSizePanel1: TRzSizePanel;
    MyTreeView3: TTreeView;
    Panel_button: TPanel;
    Bevel_button: TBevel;
    OKBtn: TcxButton;
    CancelBtn: TcxButton;
    Panel11: TPanel;
    Label9: TLabel;
    Image2: TImage;
    Label1: TLabel;
    ToolBar1: TToolBar;
    TB_Del2: TToolButton;
    TB_Ref2: TToolButton;
    TB_Out2: TToolButton;
    TB_Down2: TToolButton;
    FPartsNumber_2: TcxGridDBColumn;
    FWorkParts_2: TcxGridDBColumn;
    MData: TdxMemData;
    StringField18: TStringField;
    StringField19: TStringField;
    StringField20: TStringField;
    StringField21: TStringField;
    StringField22: TStringField;
    StringField23: TStringField;
    StringField24: TStringField;
    StringField25: TStringField;
    StringField26: TStringField;
    StringField27: TStringField;
    StringField28: TStringField;
    FloatField7: TFloatField;
    FloatField8: TFloatField;
    FloatField9: TFloatField;
    StringField29: TStringField;
    StringField30: TStringField;
    StringField31: TStringField;
    StringField32: TStringField;
    StringField33: TStringField;
    StringField34: TStringField;
    IntegerField2: TIntegerField;
    FloatField10: TFloatField;
    FloatField11: TFloatField;
    FloatField12: TFloatField;
    DS_Mdata: TDataSource;
    MData3Num: TStringField;
    MData3th: TStringField;
    MData3mc: TStringField;
    MData3gg: TStringField;
    MData3SelRemark: TStringField;
    MData3FFullNumber: TStringField;
    MData3ssFullNumber: TStringField;
    MData3FQry: TIntegerField;
    MData3FSuttle: TFloatField;
    MData3FSumQry: TIntegerField;
    MData3FSumSuttle: TFloatField;
    MData3FK3Number: TStringField;
    MData3FName: TStringField;
    MData3FModel: TStringField;
    MData3UnitName: TStringField;
    MData3FFStockInListRemark: TStringField;
    MData3js: TIntegerField;
    MData3FStockInListID: TIntegerField;
    MData3FPartsNumber: TStringField;
    MData3FWorkParts: TStringField;
    MData3FK3ItemID: TIntegerField;
    MDataFItemListID: TIntegerField;
    MData3FItemListID: TIntegerField;
    RzSizePanel4: TRzSizePanel;
    MyTreeView2: TTreeView;
    MData4: TdxMemData;
    StringField35: TStringField;
    StringField36: TStringField;
    StringField37: TStringField;
    StringField38: TStringField;
    StringField39: TStringField;
    StringField40: TStringField;
    StringField41: TStringField;
    StringField42: TStringField;
    StringField43: TStringField;
    StringField44: TStringField;
    StringField45: TStringField;
    FloatField13: TFloatField;
    FloatField14: TFloatField;
    FloatField15: TFloatField;
    StringField46: TStringField;
    StringField47: TStringField;
    StringField48: TStringField;
    StringField49: TStringField;
    StringField50: TStringField;
    StringField51: TStringField;
    IntegerField3: TIntegerField;
    FloatField16: TFloatField;
    FloatField17: TFloatField;
    FloatField18: TFloatField;
    DS_Mdata4: TDataSource;
    E_FItemNumber: TcxButtonEdit;
    E_FItemNo: TcxTextEdit;
    Num2: TcxGridDBColumn;
    MData3FPartsCode: TStringField;
    MData3xh: TIntegerField;
    RzSizePanel6: TRzSizePanel;
    RzLabel9: TRzLabel;
    MData3ss: TIntegerField;
    Label12: TLabel;
    E_n: TcxSpinEdit;
    SB_n: TSpeedButton;
    Panel_Edit: TPanel;
    Label13: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    E_FSumQry: TcxCurrencyEdit;
    E_FSuttle: TcxCurrencyEdit;
    E_FSumSuttle: TcxCurrencyEdit;
    TB_Save3: TcxButton;
    E_FStockInListRemark: TcxTextEdit;
    E_gg: TcxButtonEdit;
    E_th: TcxButtonEdit;
    E_mc: TcxButtonEdit;
    RzLabel1: TRzLabel;
    MData3abc: TStringField;
    E_FBranchItemNumber: TcxButtonEdit;
    MData3FUnitName: TStringField;
    TB_PrintWorkBOM: TToolButton;
    frDBDataSet2: TfrDBDataSet;
    frReport2: TfrReport;
    ToolButton31: TToolButton;
    ToolButton32: TToolButton;
    ToolBar5: TToolBar;
    TB_App3: TToolButton;
    TB_add3: TToolButton;
    TB_Edit3: TToolButton;
    TB_Del3: TToolButton;
    TB_Ref3: TToolButton;
    TB_Auto: TToolButton;
    TB_Stock: TToolButton;
    TB_Out: TToolButton;
    TB_Down3: TToolButton;
    TB_Prin: TToolButton;
    ToolButton30: TToolButton;
    ToolButton34: TToolButton;
    TB_Exit3: TToolButton;
    TB_Print_First: TToolButton;
    MData2FStockInUserNum: TStringField;
    MData2FStockInUserNumDate: TDateField;
    MData_M3: TdxMemData;
    StringField52: TStringField;
    StringField53: TStringField;
    StringField54: TStringField;
    StringField55: TStringField;
    StringField56: TStringField;
    StringField57: TStringField;
    StringField58: TStringField;
    IntegerField4: TIntegerField;
    FloatField19: TFloatField;
    IntegerField5: TIntegerField;
    FloatField20: TFloatField;
    StringField59: TStringField;
    StringField60: TStringField;
    StringField61: TStringField;
    StringField62: TStringField;
    StringField63: TStringField;
    IntegerField6: TIntegerField;
    IntegerField7: TIntegerField;
    StringField64: TStringField;
    StringField65: TStringField;
    IntegerField8: TIntegerField;
    IntegerField9: TIntegerField;
    StringField66: TStringField;
    IntegerField10: TIntegerField;
    IntegerField11: TIntegerField;
    StringField67: TStringField;
    StringField68: TStringField;
    DS_Mdata_M3: TDataSource;
    TB_APP_3: TToolButton;
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
    Act_Ref_Date: TAction;
    Act_Status: TAction;
    Act_Ref_Agent: TAction;
    Act_Ref_Write: TAction;
    Act_Ref_Item: TAction;
    Act_Ref_SysTem: TAction;
    TB_Submit: TToolButton;
    TB_Check: TToolButton;
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
    RSP_StockIn: TRzPanel;
    RSP_List: TPageControl;
    TabSheet3: TTabSheet;
    cxGrid3: TcxGrid;
    cxGV3: TcxGridDBTableView;
    Num_3: TcxGridDBColumn;
    xh_3: TcxGridDBColumn;
    th_3: TcxGridDBColumn;
    abc_3: TcxGridDBColumn;
    mc_3: TcxGridDBColumn;
    gg_3: TcxGridDBColumn;
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
    FStockInListID_3: TcxGridDBColumn;
    FPartsNumber_3: TcxGridDBColumn;
    FPartsCode_3: TcxGridDBColumn;
    FWorkParts_3: TcxGridDBColumn;
    FK3ItemID_3: TcxGridDBColumn;
    cxGL3: TcxGridLevel;
    RSP_Item: TRzSizePanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    cxGrid_M3: TcxGrid;
    cxGV_M3: TcxGridDBTableView;
    FBranchItemNumber_M3: TcxGridDBColumn;
    FPartsCode_M3: TcxGridDBColumn;
    FWorkPartsNum_M3: TcxGridDBColumn;
    FWorkParts_M3: TcxGridDBColumn;
    FPartsName_M3: TcxGridDBColumn;
    FStockInStatusNotes_M: TcxGridDBColumn;
    FStockInStatus_M: TcxGridDBColumn;
    FStockInItemDate_M3: TcxGridDBColumn;
    FStockInWrite_M3: TcxGridDBColumn;
    FItemNumber_M3: TcxGridDBColumn;
    FBranchFileNo_M3: TcxGridDBColumn;
    FStockInWriteDate_M3: TcxGridDBColumn;
    FFileNo_M3: TcxGridDBColumn;
    FClientFullName_M3: TcxGridDBColumn;
    FStockInItemID_M3: TcxGridDBColumn;
    FStockInUserNum_M3: TcxGridDBColumn;
    FStockInSubmitDate_M: TcxGridDBColumn;
    FStockInUserNumDate_M3: TcxGridDBColumn;
    FItemId_M3: TcxGridDBColumn;
    FItemModel_M3: TcxGridDBColumn;
    FProductID_M3: TcxGridDBColumn;
    FStockInCheck_M: TcxGridDBColumn;
    FStockInCheckDate_M: TcxGridDBColumn;
    cxGL_M3: TcxGridLevel;
    mcgg_3: TcxGridDBColumn;
    FStockInItemID_3: TcxGridDBColumn;
    Label2: TLabel;
    E_FItemNumber_Copy: TcxButtonEdit;
    E_FItemIDCopy: TcxTextEdit;
    E_FItemNoCopy: TcxTextEdit;
    TB_Copy: TToolButton;
    TB_Print_ML: TToolButton;
    dw_3: TcxGridDBColumn;
    TB_Del_One: TToolButton;
    FItemNumber_3: TcxGridDBColumn;
    FClientFullName_3: TcxGridDBColumn;
    FBranchFileNo_3: TcxGridDBColumn;
    ToolButton2: TToolButton;
    StatusBar1: TStatusBar;
    SaveDialog1: TSaveDialog;
    FFullNumber_M3: TcxGridDBColumn;
    WorkFFullNumber: TcxGridDBColumn;
    MData3WorkFFullNumber: TStringField;
    procedure FormResize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure OKBtnClick(Sender: TObject);
    procedure TB_Del2Click(Sender: TObject);
    procedure CancelBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Set_Open2;
    procedure Set_Close2;
    procedure Set_Open3;
    procedure Set_Close3;
    procedure SumWeight;
    procedure SelBtnClick(Sender: TObject);
    procedure SelPropertiesChange(Sender: TObject);
    procedure NumPropertiesCloseUp(Sender: TObject);
    procedure MyTreeView2Expanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure MyTreeView3Expanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure MyTreeView2Change(Sender: TObject; Node: TTreeNode);
    procedure MyTreeView3Change(Sender: TObject; Node: TTreeNode);
    procedure ToolButton1Click(Sender: TObject);
    procedure TB_Out2Click(Sender: TObject);
    procedure TB_Ref2Click(Sender: TObject);
    procedure frReportBeginBand(Band: TfrBand);
    procedure TB_Ref3Click(Sender: TObject);
    procedure TB_Down2Click(Sender: TObject);
    procedure TB_Down3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TB_Edit3Click(Sender: TObject);
    procedure TB_Del3Click(Sender: TObject);
    procedure TB_OutClick(Sender: TObject);
    procedure TB_App3Click(Sender: TObject);
    procedure E_FItemNumberPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxGV3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MData3BeforePost(DataSet: TDataSet);
    procedure TB_Save3Click(Sender: TObject);
    procedure cxGV3CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure E_ABCKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure E_FSumQryKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure E_SelRemarkKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure E_FSuttleKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure E_FStockInListRemarkKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure E_FSumQryExit(Sender: TObject);
    procedure E_thKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure E_ggKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure E_thPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure E_mcKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure E_mcPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure E_thExit(Sender: TObject);
    procedure E_ggPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure E_ggExit(Sender: TObject);
    procedure SelRemarkPropertiesCloseUp(Sender: TObject);
    procedure SB_nClick(Sender: TObject);
    procedure abcPropertiesChange(Sender: TObject);
    procedure th_1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure TB_StockClick(Sender: TObject);
    procedure FStockInListRemarkPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure TB_AutoClick(Sender: TObject);
    procedure E_thFocusChanged(Sender: TObject);
    procedure ToolButton30Click(Sender: TObject);
    procedure TB_PrintWorkBOMClick(Sender: TObject);
    procedure ToolButton31Click(Sender: TObject);
    procedure ToolButton32Click(Sender: TObject);
    procedure ToolButton34Click(Sender: TObject);
    procedure TB_Exit3Click(Sender: TObject);
    procedure E_FItemNumber2PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure TB_Print_FirstClick(Sender: TObject);
    procedure TB_APP_3Click(Sender: TObject);
    procedure Act_Set_MaxIDExecute(Sender: TObject);
    procedure FBranchItemNumber_M3PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure Act_SubmitExecute(Sender: TObject);
    procedure Act_StatusExecute(Sender: TObject);
    procedure E_FItemNumber_CopyPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure TB_CopyClick(Sender: TObject);
    procedure cxGV_M3FocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure cxGV_M3CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure TB_Print_MLClick(Sender: TObject);
    procedure TB_Del_OneClick(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure PC_2Change(Sender: TObject);

  private
   { Private declarations }
    function AddMain:bool;
    function AddMainCopy:bool;
    function EditList:bool;
    function AddList:bool;
    function AddListCopy:bool;
    function AddRd:bool;
    function AddRdCopy:bool;
    function EditRd:bool;
    function DelRd:bool;
    function DelListRd:bool;
    function DelRdWorkBOM:bool;
    function EditMain:bool;
    function EditAddRd:bool;
    procedure PartsSort;



  public
    P_state,P_state2,P_stateApp,P_IsAudit,P_Isleaf,P_MaxID:integer;
    P_th1,P_th2,P_th3,P_th4,P_th5,P_List:String;
    ListItemFParentNumber,ListItemFNumber1,ListItemFNumber2,ListItemFNumber3,ListItemFNumber4,ListItemFNumber5:String;
    P_i:boolean;

    P_FProductID:integer;
   { Public declarations }
  end;

var
  Frm_StockIn: TFrm_StockIn;


implementation

uses FRMDATA,  COMMON, FrmSelect, ProgBar, PROGRASS;




{$R *.dfm}
procedure TFrm_StockIn.PartsSort;
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
      value:=ListItemFNumber1;
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
      value:=P_FProductID;
    end;
    proc.ExecProc;
  finally
     ;
  end;
  Proc.Free;
end;

procedure TFrm_StockIn.SumWeight;
var
  proc:TADOStoredProc;
  qry: TADOQuery;
begin
  proc:=TADOStoredProc.Create(self);
  proc.ConnectionString:=mdlData.ReadConnStr;
  proc.CommandTimeout:=500;

  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  try
    //proc.ProcedureName:='P_Sum_Weight;1';
    proc.ProcedureName:='P_StockIn_Weight;1';
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=20;
      name := '@FFullNumber';
      value:=mdata_M3['FFullNumber'];
    end;
    proc.Open;
  finally
     ;
  end;
  mdata3.CopyFromDataSet(proc);
  mdata3.Open;
  cxGvColumn(cxGv3,Mdata3);

end;

procedure TFrm_StockIn.Set_Open2;
var i:Integer;
begin


//  SelBtn.Visible:=True;
//  SelCancelBtn.Visible:=True;

  cxGV2.OptionsData.Editing:=True;
  Sel.Options.Editing:=True;
  IsSel.Options.Editing:=False;
  IsSel.Options.Filtering:=True;
  FCode.Options.Filtering:=True;
  xh_3.Options.Editing:=True;

  TB_Down3.Caption:='设置';
  P_i:=True;

end;

procedure TFrm_StockIn.Set_Close2;
begin
  TB_Del2.Visible:=True;
  TB_Ref2.Enabled:=True;

//  SelBtn.Visible:=False;
// SelCancelBtn.Visible:=False;

  Sel.Options.Editing:=False;
  IsSel.Options.Editing:=False;
  IsSel.Options.Filtering:=False;
  FCode.Options.Filtering:=False;

end;

procedure TFrm_StockIn.Set_Open3;
begin
 // TB_Add3.Enabled:=False;
  //TB_App3.Enabled:=False;
  TB_Edit3.Enabled:=False;
  TB_Del3.Enabled:=False;
  TB_Ref3.Enabled:=False;
  TB_Auto.Enabled:=False;
  TB_Copy.Enabled:=False;
  TB_Submit.Enabled:=False;


  MyTreeView3.Enabled:=False;
  TB_Stock.Enabled:=True;


  OKBtn.Visible:=True;
  CancelBtn.Visible:=True;

  cxGV3.OptionsData.Editing:=True;

  xh_3.Options.Editing:=True;
  cxGV_M3.OptionsData.Editing:=True;
  FBranchItemNumber_M3.Options.Editing:=True;

  Num_3.Options.Editing:=False;
  FSumSuttle_3.Options.Editing:=False;
  FFullNumber_3.Options.Editing:=False;
  ssFullNumber_3.Options.Editing:=False;
  FK3Number_3.Options.Editing:=False;
  UnitName_3.Options.Editing:=False;

 // E_FItemNumber.Enabled:=True;
  E_th.Enabled:=True;
  E_mc.Enabled:=True;
  E_gg.Enabled:=True;
  E_FSumQry.Enabled:=True;
  E_FSuttle.Enabled:=True;
  E_FStockInListRemark.Enabled:=True;
  E_n.Enabled:=True;
  SB_n.Enabled:=True;
  Panel_Edit.Visible:=True;
end;

procedure TFrm_StockIn.Set_Close3;
begin
  //TB_App3.Enabled:=True;
 // TB_Add3.Enabled:=True;
  TB_Edit3.Enabled:=True;
  TB_Del3.Enabled:=True;
  TB_Ref3.Enabled:=True;
  TB_Copy.Enabled:=True;
  TB_Submit.Enabled:=True;

  MyTreeView3.Enabled:=True;
  TB_Auto.Enabled:=True;
  TB_Stock.Enabled:=False;



  E_th.Enabled:=False;
  E_mc.Enabled:=False;
  E_gg.Enabled:=False;
  E_FSumQry.Enabled:=False;
  E_FSuttle.Enabled:=False;
  E_FStockInListRemark.Enabled:=False;
  E_FItemNumber.Enabled:=False;
  cxGV3.OptionsData.Editing:=False;

  OKBtn.Visible:=False;
  CancelBtn.Visible:=False;
  Panel_Edit.Visible:=False;
  E_n.Enabled:=False;
  SB_n.Enabled:=False;

end;

function TFrm_StockIn.DelListRd: bool;
var
 qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Delete from T_StockInList where FFullNumber like :FFullNumber';
    qry.Parameters.FindParam('FFullNumber').value:=ListItemFNumber3+'%';
    result:=qry.ExecSQL>=0;
  finally
    ;
  end;
end;

function TFrm_StockIn.DelRd: bool;
var
 qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
   // qry.SQL.Text:='Delete from T_StockInList where FFullNumber like :FFullNumber';
   // qry.Parameters.FindParam('FFullNumber').value:=ListItemFNumber3+'%';
    qry.SQL.Text:='Delete from T_StockInItem where FStockInItemID=:FStockInItemID';
    qry.Parameters.FindParam('FStockInItemID').value:=mdata_M3['FStockInItemID'];
    result:=qry.ExecSQL>=0;
  finally
    ;
  end;
end;

function TFrm_StockIn.DelRdWorkBOM: bool;
var
 qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  try
    qry.SQL.Text:='Delete from T_WorkBOM where FFullNumber like :FFullNumber';
    qry.Parameters.FindParam('FFullNumber').value:=ListItemFNumber2+'%';
    result:=qry.ExecSQL>=1;
  finally
    qry.Free;
  end;
end;


function TFrm_StockIn.EditMain: bool;
var
 qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  //主表修改
{  try
    qry.SQL.Text:='Update T_StockInItem Set FStockInItemDate=:FStockInItemDate where FDepartmentID=:FDepartmentID and FItemID=:FItemID';
    with qry.Parameters do
    begin
      FindParam('FStockInItemDate').value:=E_FStockInItemDate.Date;
      FindParam('FDepartmentID').value:=UserFDepartmentID;
      FindParam('FItemID').value:=StrToInt(Trim(E_FItemID.Text));
    end;
    Result:=qry.ExecSQL>=1;
  finally
    ;
  end;
      }
end;


function TFrm_StockIn.AddMain: bool;
var
 qry,qry1: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry1:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry1.ConnectionString:=mdlData.ReadConnStr;
  Act_Set_MaxID.Execute;    //取ID
  Mdata_M3.Edit;
  Mdata_M3['FStockInItemID']:=P_MaxID;;
  Mdata_M3.post;

     try
      qry.SQL.Text:='Insert into T_StockInItem(FStockInItemID,FItemID,FStockInItemDate,FPartsCode,FWorkPartsNum,FWorkParts,FDepartmentID,FStockInStatus,FStockInWriteID,FStockInWriteDate) '
                   +'values(:FStockInItemID,:FItemID,:FStockInItemDate,:FPartsCode,:FWorkPartsNum,:FWorkParts,:FDepartmentID,:FStockInStatus,:FStockInWriteID,:FStockInWriteDate)';
      with qry.Parameters do
      begin
        FindParam('FStockInItemID').value:=P_MaxID;
        FindParam('FItemID').value:=mdata_M3['FItemID'];
        FindParam('FStockInItemDate').Value:=mdata_M3['FStockInItemDate'];
        FindParam('FPartsCode').value:=mdata_M3['FPartsCode'];
        FindParam('FWorkPartsNum').value:=mdata_M3['FWorkPartsNum'];
        FindParam('FWorkParts').value:=mdata_M3['FWorkParts'];
        FindParam('FDepartmentID').Value:=UserFDepartmentID;
        FindParam('FStockInStatus').Value:=0;
        FindParam('FStockInWriteID').Value:=UserNumID;
        FindParam('FStockInWriteDate').Value:=date();
      end;
      result:=qry.ExecSQL>=1;
    finally
      ;
    end;
    mdata_M3.Edit;
    mdata_M3['FStockInItemID']:=P_MaxID;
    mdata_M3.Post; 
    qry.Free;
end;
function TFrm_StockIn.AddMainCopy: bool;
begin
end;

function TFrm_StockIn.EditList: bool;
var
  qry,qry1: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
{
  result:=False;

  If mData3.RecordCount<=0 then
  begin
    result:=True;
    Exit;
  end;

  try
     qry.SQL.Text:='Update T_StockInList set FStockInItemID=:FStockInItemID,Num=:Num,xh=:xh,th=:th,mc=:mc,gg=:gg,FSumQry=:FSumQry,FPartsNumber=:FPartsNumber,'
                  +'FWorkParts=:FWorkParts,SelRemark=:SelRemark,FSuttle=:FSuttle,FSumSuttle=:FSumSuttle,FStockInListRemark=:FStockInListRemark,'
                  +'FFullNumber=:FFullNumber,ssFullNumber=:ssFullNumber,FK3ItemID=:FK3ItemID,FPartsCode=:FPartsCode where FStockInListID=:FStockInListID';
     qry.Parameters.FindParam('FStockInItemID').value:=StrToInt(Trim(E_FStockInItemID.Text));
     qry.Parameters.FindParam('Num').value:=mdata3['Num'];
     qry.Parameters.FindParam('xh').value:=mdata3['xh'];
     qry.Parameters.FindParam('th').value:=Trim(E_th.Text);
     qry.Parameters.FindParam('mc').value:=Trim(E_mc.Text);
     qry.Parameters.FindParam('gg').value:=Trim(E_gg.Text);
     qry.Parameters.FindParam('FSumQry').value:=E_FSumQry.Value;
     qry.Parameters.FindParam('FPartsNumber').value:=mdata3['FPartsNumber'];
     qry.Parameters.FindParam('FWorkParts').value:=mdata3['FWorkParts'];
     qry.Parameters.FindParam('SelRemark').value:=mdata3['SelRemark'];
     qry.Parameters.FindParam('FSuttle').value:=E_FSuttle.Value;
     qry.Parameters.FindParam('FSumSuttle').value:=E_FSumSuttle.Value;
     qry.Parameters.FindParam('FStockInListRemark').value:=Trim(E_FStockInListRemark.Text);
     qry.Parameters.FindParam('FFullNumber').value:=mdata3['FFullNumber'];
     qry.Parameters.FindParam('ssFullNumber').value:=mdata3['ssFullNumber'];
     qry.Parameters.FindParam('FK3ItemID').value:=mdata3['FK3ItemID'];
     qry.Parameters.FindParam('FPartsCode').value:=mdata3['FPartsCode'];
     qry.Parameters.FindParam('FStockInListID').value:=mdata3['FStockInListID'];
     result:=qry.ExecSQL>=1;
   finally
     qry.Free;
   end;   }
end;

function TFrm_StockIn.AddList: bool;
var
  qry,qry1: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry1:=TADOQuery.Create(Self);
  qry1.ConnectionString:=mdlData.ReadConnStr;
  result:=False;

  If mData3.RecordCount<=0 then
  begin
    result:=True;
    Exit;
  end;

  try
     qry.SQL.Text:='Insert into T_StockInList(FStockInItemID,Num,xh,th,mc,gg,FSumQry,FPartsNumber,FWorkParts,'
                  +'SelRemark,FSuttle,FSumSuttle,FStockInListRemark,FFullNumber,ssFullNumber,FK3ItemID,FPartsCode) '
                  +'values(:FStockInItemID,:Num,:xh,:th,:mc,:gg,:FSumQry,:FPartsNumber,:FWorkParts,'
                  +':SelRemark,:FSuttle,:FSumSuttle,:FStockInListRemark,:FFullNumber,:ssFullNumber,:FK3ItemID,:FPartsCode)';
     mData3.First;
     while not mData3.eof do
     begin
       If  (mData3['mc']<>'') and (mData3['FSumQry']<>0) and (mData3['FFullNumber']<>'')  and (mData3['ssFullNumber']<>'') then
       begin
         If qry.Active then qry.Close;
         with qry.Parameters do
         begin
           FindParam('FStockInItemID').value:=P_MaxID;
           FindParam('Num').value:=mdata3['Num'];
           FindParam('xh').value:=mdata3['xh'];
           FindParam('th').value:=mdata3['th'];
           FindParam('mc').value:=mdata3['mc'];
           FindParam('gg').value:=mdata3['gg'];
           FindParam('FSumQry').value:=mdata3['FSumQry'];
           FindParam('FPartsNumber').value:=mdata3['FPartsNumber'];
           FindParam('FWorkParts').value:=mdata3['FWorkParts'];
           FindParam('SelRemark').value:=mdata3['SelRemark'];
           FindParam('FSuttle').value:=mdata3['FSuttle'];
           FindParam('FSumSuttle').value:=mdata3['FSumSuttle'];
           FindParam('FStockInListRemark').value:=mdata3['FStockInListRemark'];
           FindParam('FFullNumber').value:=mdata3['FFullNumber'];
           FindParam('ssFullNumber').value:=mdata3['ssFullNumber'];
           FindParam('FK3ItemID').value:=mdata3['FK3ItemID'];
           FindParam('FPartsCode').value:=mdata3['FPartsCode'];
         end;
         result:=qry.ExecSQL>=1;
         if not result then break;
       end;
       mData3.Next;
     end;
   finally
     qry.Free;
   end;
end;

function TFrm_StockIn.AddListCopy: bool;
begin
end;


function TFrm_StockIn.AddRd: bool;
var
 qry:TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  result:=False;

  If mData3.RecordCount<=0 then
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
       {Mdata_M3.Edit;
        Mdata_M3['FStockInItemID']:=P_MaxID;;
        Mdata_M3.post;}
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

function TFrm_StockIn.AddRdCopy: bool;
var
 qry:TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  result:=False;

  If mData4.RecordCount<=0 then
  begin
    result:=True;
    Exit;
  end;

  mdlData.conn.BeginTrans;
  try
    if AddMainCopy then  //1   主表新增
    begin
      result:=True;
      if AddListCopy then //2    明细表新增
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

function TFrm_StockIn.EditRd:bool;
var
 qry:TADOQuery;

begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  result:=False;

  If mData3.RecordCount<=0 then
  begin
    result:=True;
    Exit;
  end;
  mData3.Open;
  mData3.Edit;
  mData3.Post;

  mdlData.conn.BeginTrans;
  try
    //if EditMain then  //1  主表修改
    if DelRd then  //1  主表删除
    begin
      result:=True;
      //if DelListRd then //2  附表删除
      if AddMain then //2  主表新增
      begin
        result:=True;
        if AddList then //3  附表新增
        begin
         { Mdata_M3.Edit;
          Mdata_M3['FStockInItemID']:=P_MaxID;;
          Mdata_M3.post; }
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

function TFrm_StockIn.EditAddRd:bool;
var
 qry:TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  result:=False;

  If mData3.RecordCount<=0 then
  begin
    result:=True;
    Exit;
  end;

  mData3.Edit;
  mData3.Post;

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

procedure TFrm_StockIn.FormResize(Sender: TObject);
begin
  inherited;
  Self.Caption:=UserFDepartmentName+'入库清单';
end;

procedure TFrm_StockIn.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=cafree;
  Frm_StockIn:=nil;
end;

procedure TFrm_StockIn.OKBtnClick(Sender: TObject);
var qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  mData3.Edit;
  mData3.Post;


  If mData3.RecordCount<=0 then
  begin
    application.MessageBox('附表记录不能为空！','系统提示',MB_ICONWARNING);
    Exit;
  end;

  If P_state=0 then
  begin
    If application.MessageBox('是否要保存添加的数据？','提示',MB_ICONINFORMATION+MB_YESNO)<>6 then
       Exit;
    If AddRd then //增加数据
    begin
      Self.SumWeight;
      If application.MessageBox('录入数据已保存,还要继续录入吗？','提示',MB_ICONINFORMATION+MB_YESNO)=6 then
      begin
        If P_stateApp=0 then
           TB_App3.Click;
        If P_stateApp=1 then
        begin
           TB_App_3.Click;
        end
           //TB_add3.Click;
      end
      else
      begin
        Self.SumWeight;
        CancelBtn.Click;
      end;
    end
    else
    begin
      application.MessageBox('入库清单记录保存失败！','系统提示',MB_ICONWARNING);
      CancelBtn.Click;
    end;
  end;

  If P_state=1 then //修改数据
  begin
    If application.MessageBox('是否要保存入库清单记录？','提示',MB_ICONINFORMATION+MB_YESNO)<>6 then
       Exit;
    If EditRd then   //修改数据
    begin
      Self.SumWeight;
      application.MessageBox('入库清单记录已保存','系统提示',MB_ICONINFORMATION);
      inherited;
    end
    else
      application.MessageBox('入库清单记录保存失败！','系统提示',MB_ICONWARNING);
   // Self.SumWeight;
    CancelBtn.Click;
  end;

end;



procedure TFrm_StockIn.TB_Del2Click(Sender: TObject);
var
  qry:TADOQuery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  If application.MessageBox(Pchar('警告：是否删除图号为：【'+P_th2+'】的生产BOM信息？'+chr(13)+chr(13)
                                 +'删除数据操作将不可恢复，确定要删除吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
  If application.MessageBox(Pchar('再次警告：是否删除图号为：【'+P_th2+'】的生产BOM信息？'+chr(13)+chr(13)
                                 +'删除数据操作将不可恢复，确定要删除吗？'),'再次警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then

  mdlData.conn.BeginTrans;
  begin
    //单据删除
    If not DelRdWorkBOM then
    begin
      application.MessageBox('删除单据失败！','系统提示',MB_ICONINFORMATION);
      mdlData.conn.RollbackTrans;
      Exit;
    end;
    mdlData.conn.CommitTrans;
  end;
  mdata3.Close;
  Self.TB_Ref2.Click;
  qry.Free;


end;

procedure TFrm_StockIn.CancelBtnClick(Sender: TObject);
var  I_index:integer;
begin
  inherited;
  P_state :=2;  //退出新增、修改状态
  Self.Set_Close2;
  Self.Set_Close3;
 { If mdata3.RecordCount>0 then
  begin
    I_index:=mData3.RecNo;
    If (I_index<mData3.RecordCount) and (I_index<>-1) then
       mData3.RecNo :=I_index
    else
       mData3.Last;
  end; }
  PC_2.ActivePage:=TS_StockIn;    
end;

procedure TFrm_StockIn.FormCreate(Sender: TObject);
begin
  inherited;
 // TB_App3.Visible:= mdlData.CheckFrmRights(TFrm_StockIn.ClassName,'新增');
 // TB_Add3.Visible:= mdlData.CheckFrmRights(TFrm_StockIn.ClassName,'新增');
  TB_Edit3.Visible:= mdlData.CheckFrmRights(TFrm_StockIn.ClassName,'修改');
  TB_Auto.Visible:= mdlData.CheckFrmRights(TFrm_StockIn.ClassName,'修改');

  TB_Del3.Visible:= mdlData.CheckFrmRights(TFrm_StockIn.ClassName,'删除');
  TB_Del_One.Visible:= mdlData.CheckFrmRights(TFrm_StockIn.ClassName,'删除');
  TB_Prin.Visible:= mdlData.CheckFrmRights(TFrm_StockIn.ClassName,'打印');
  TB_out.Visible:= mdlData.CheckFrmRights(TFrm_StockIn.ClassName,'导出');
  TB_Copy.Visible:= mdlData.CheckFrmRights(TFrm_StockIn.ClassName,'修改');
  P_state :=2;//不在新增、修改状态
end;

procedure TFrm_StockIn.SelBtnClick(Sender: TObject);
Var
  qry: TADOQuery;
  proc:TADOStoredProc;
  i:Integer;
    //s1,s2:Ttime;
    b:string;

begin
  inherited;
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  proc:=TADOStoredProc.Create(self);
  proc.ConnectionString:=mdlData.ReadConnStr;
  proc.CommandTimeout:=500;

  try
    proc.ProcedureName:='P_StockIN;1';
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=20;
      name := '@ListItemFNumber';
      value:=ListItemFNumber;
    end;
    proc.Open;
  finally
    ;
  end;
  mdata.Close;
  mdata.CopyFromDataSet(proc);
  mdata.Open;
  mData.First;
  mData3.Open;
  mData3.Edit;

  i:=mdata3.RecordCount;
  while not mData.eof do
  begin
    mData3.Append;
    mdata3['Num']:=mdata['Num'];
    If mdata3['Num']='★★' then
       mdata3['xh']:=0
    else
    begin
      mdata3['xh']:=i;
    end;
    mdata3['th']:=mdata['th'];
    mdata3['mc']:=mdata['mc'];
    mdata3['gg']:=mdata['gg'];
    mdata3['FSumQry']:=mdata['FSumQry'];
    mdata3['FPartsNumber']:=mdata['FPartsNumber'];
    mdata3['FWorkParts']:=mdata['FWorkParts'];
    mdata3['SelRemark']:=mdata['SelRemark'];
    mdata3['dw']:='件';
    mdata3['FSuttle']:=mdata['FSuttle'];
    mdata3['FSumSuttle']:=mdata['FSumSuttle'];
    mdata3['FStockInListRemark']:=mdata['FStockInListRemark'];
   // mdata3['FFullNumber']:=Trim(E_FitemNo.Text)+Copy(mdata['FFullNumber'],5,length(mdata['FFullNumber']));
   // mdata3['ssFullNumber']:=Trim(E_FitemNo.Text)+Copy(mdata['ssFullNumber'],5,length(mdata['ssFullNumber']));
    mdata3['FFullNumber']:=mdata_M3['FitemNo']+Copy(mdata['FFullNumber'],5,length(mdata['FFullNumber']));
    mdata3['ssFullNumber']:=mdata_M3['FitemNo']+Copy(mdata['ssFullNumber'],5,length(mdata['ssFullNumber']));

    mdata3['FPartsCode']:=mdata['FPartsCode'];
    mdata3['FK3ItemID']:=mdata['FK3ItemID'];
    mdata3['FK3Number']:=mdata['FK3Number'];
    mdata3['FName']:=mdata['FName'];
    mdata3['FModel']:=mdata['FModel'];
    mData3.Post;
    mData.Next;
    i:=i+1;
  end;


 //删除选择标记
  try
    qry.SQL.Text:='Update T_WorkBOM set Sel=0 ';
    qry.ExecSQL;
  finally
    ;
  end;

      If not MyItemList(qry,Mdata2,'V_WorkBOM','FFullNumber',ListItemFNumber,'FFullNumber') then
      begin
        mdata2.Open;
        cxGvColumn(cxGv2,Mdata2);
      end;


  
  //判断是否存在
  try
    qry.SQL.Text:='Select * from V_StockInList where FDepartmentID=:FDepartmentID and FFullNumber like :FFullNumber';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Parameters.FindParam('FFullNumber').value:=ListItemFNumber+'%';
    qry.Open;
  finally
    ;
  end;
  If qry.RecordCount>0 then
    P_state2:=1    //  修改主表
  else
    P_state2:=0;   //  新增主表


  PC_2.ActivePage:=TS_StockIn;
  TB_Edit3.Enabled:=False;
  TB_Del3.Enabled:=False;
  TB_Ref3.Enabled:=False;
  Self.Set_Open3;


end;
procedure TFrm_StockIn.SelPropertiesChange(Sender: TObject);
Var
  qry: TADOQuery;
  i:Integer;
begin
  inherited;
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  mdata2.Edit;
  mdata2.Post;
  If mdata2['Sel']=True then
  begin
    try
      qry.SQL.Text:='Update T_WorkBOM set IsSel=1,Sel=1 where FWorkBOMID=:FWorkBOMID';
      qry.Parameters.FindParam('FWorkBOMID').Value:=mdata2['FWorkBOMID'];
      qry.ExecSQL;
      mdata2.Edit;
      mdata2['IsSel']:=True;
      mdata2.Post;
    finally
       ;
    end;
  end
  else
  begin
    mdata2.Edit;
    mdata2['IsSel']:=False;
    mdata2['Sel']:=False;
    mdata2.Post;
    try
      qry.SQL.Text:='Update T_WorkBOM set IsSel=0,Sel=0 where FWorkBOMID=:FWorkBOMID';
      qry.Parameters.FindParam('FWorkBOMID').Value:=mdata2['FWorkBOMID'];
      qry.ExecSQL;
    finally
       ;
    end;
  end;


end;

procedure TFrm_StockIn.NumPropertiesCloseUp(Sender: TObject);
Var i:integer;
begin
  inherited;
  mdata3.Edit;
  mdata3.Post;
  mdata3.Edit;

  If pos('(',mdata3['Num'])=0 then
  begin
    If StrToInt(mdata3['Num'])>0 then
    begin
      i:=StrToInt(mdata3['Num']);
      mdata3['FFullNumber']:=mdata3['ssFullNumber']+'.'+Format('%.4d',[i]);
    end
    else
      mdata3['FFullNumber']:=mdata3['FullNumber'];
  end
  else
  begin
    i:=StrToInt(Copy(mdata3['Num'],pos('(',mdata3['Num'])+1,(pos(')',mdata3['Num'])-pos('(',mdata3['Num'])-1)));
    mdata3['FFullNumber']:=mdata3['ssFullNumber']+'.'+Format('%.4d',[i]);
  end;

end;

procedure TFrm_StockIn.MyTreeView2Expanding(Sender: TObject;
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
     //qry.SQL.Text:='Select * from VT_WorkBOM where FParentNumber= '''
     qry.SQL.Text:='Select * from VT_StockIn_WorkBOM where FParentNumber= '''
              +PTree(Node.Data).ID+''' and FDepartmentID=:FDepartmentID order by FFullNumber';
     qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;

    //qry.SQL.Text:='Select * from VT_StockIn_WorkBOM where FParentNumber= '''

 { qry.SQL.Text:='Select FNumber, FParentNumber,FName,FItemNumber,FProductID,'
               +'Isleaf from VT_WorkBOM where (FItemNumber='''' or FItemNumber like '''+Trim(E_FItemNumber.Text)+'%'') and FParentNumber= '''
               +PTree(Node.Data).ID+''' order by FItemNumber';
                 }
  qry.open;

  PTree(Node.Data).Flag := cLoadFlag;                  // 设置已加载标志
  while not qry.Eof do
  begin
    New(P);
    P.ID := qry.FieldByName('FNumber').AsString;
    P.FFullNumber := qry.FieldByName('FFullNumber').AsString;
    P.ParentID := qry.FieldByName('FParentNumber').AsString;
    P.FNumber:=qry.FieldByName('FNumber').AsString;
    P.Caption := qry.FieldByName('FName').AsString;
    P.FProductID:=qry.FieldByName('FProductID').Value;
    P.Isleaf := qry.FieldByName('Isleaf').Value;
    P.Flag := cNoLoadFlag;                            // 新节点，未加载标志
    with MyTreeView2.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('Isleaf').value;
    end;
    qry.Next;
  end;
end;

procedure TFrm_StockIn.MyTreeView3Expanding(Sender: TObject;
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

  qry.SQL.Text:='Select FNumber, FParentNumber,FName,FItemNumber,'
               +'Isleaf from VT_StockIn where FParentNumber= '''
               +PTree(Node.Data).ID+''' and FDepartmentID=:FDepartmentID order by FItemNumber,FNumber';
  qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
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
   //P.IsAudit := qry.FieldByName('IsAudit').Value;
    P.Flag := cNoLoadFlag;                            // 新节点，未加载标志
    with MyTreeView3.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('Isleaf').value;
    end;
    qry.Next;
  end;

end;

procedure TFrm_StockIn.MyTreeView2Change(Sender: TObject; Node: TTreeNode);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If Node = nil then Exit;
  with PTree(Node.Data)^ do
  begin
    //ListItemFNumber:=trim(PTree(Node.Data).FNumber);
    ListItemFNumber:=trim(PTree(Node.Data).FFullNumber);
    P_th2:=PTree(Node.Data).Caption;
    P_FProductID:=PTree(Node.Data).FProductID;
    If PTree(Node.Data).Isleaf=1 then
    begin
      If not MyItemList(qry,Mdata2,'V_WorkBOM','FFullNumber',ListItemFNumber,'FFullNumber') then
      begin
       // mdata2.Open;
      //  cxGvColumn(cxGv2,Mdata2);
      end;
      SelBtn.Visible:=True;
      SelCancelBtn.Visible:=True;
      If mdata2.RecordCount>0 then
      begin
       { E_FClientFullName.Text:=mdata2['FClientFullName'];
        E_FItemId.Text:=mdata2['FItemId'];
        E_FFileNo.Text:=mdata2['FFileNo'];
        E_FItemNumber.Text:=mdata2['FItemNumber'];
        E_FItemModel.Text:=mdata2['FItemModel'];  }
      end;
    end
    else
    begin
      SelBtn.Visible:=False;
      SelCancelBtn.Visible:=False;
      mdata2.Close;
    end;
 end;

end;

procedure TFrm_StockIn.MyTreeView3Change(Sender: TObject; Node: TTreeNode);
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
       If MyItemList(qry,Mdata_M3,'V_StockInItem','FFullNumber',ListItemFNumber,'FFullNumber') then
       If MyItemList(qry,Mdata3,'V_StockInList','FFullNumber',ListItemFNumber,'FFullNumber') then
    end
    else
    begin
      Mdata_M3.Close;
      mdata3.Close;
    end;
  end;
   If (P_Isleaf=1) and (mdata_M3.RecordCount>0) then
     Act_Status.Execute  //权限设置
  else
  begin
    TB_Edit3.Visible:=False;
    TB_Del3.Visible:=False;
    TB_Submit.Visible:=False;
    N_Submit.Visible:=False;
    TB_Check.Visible:=False;
    N_Check.Visible:=False;
    TB_Auto.Visible:=False;

   { TB_Audit.Visible:=False;
    N_Audit.Visible:=False;
    TB_PushDown.Visible:=False;
    N_PushDown.Visible:=False;  }
  end;
  mcgg_3.Visible:=False; 
end;

procedure TFrm_StockIn.ToolButton1Click(Sender: TObject);
var
  proc:TADOStoredProc;
begin
  proc:=TADOStoredProc.Create(self);
  proc.ConnectionString:=mdlData.ReadConnStr;
  proc.CommandTimeout:=500;

  try
    //proc.ProcedureName:='P_Sum_Weight;1';
    proc.ProcedureName:='P_StockIn_Weight;1';
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=50;
      name := '@ListItemFNumber';
      value:=ListItemFNumber;
    end;
    proc.Open;
    mdata3.Close;
    mdata3.CopyFromDataSet(proc);
    Mdata3.Active:=True;
  finally
     ;
  end;

  If mdata3.RecordCount>0 then
  begin
    mdata3.SortedField:='FFullNumber';
    FrReport.LoadFromFile(ExtractFileDir(Application.ExeName)+'\Report_DesignBOM_StockIn.frf');
    FrReport.ShowReport;
  end
  else
    Application.MessageBox(PChar('没有需要打印的数据！'), '错误', MB_OK +MB_ICONSTOP);

  mdata3.SortedField:='';

end;

procedure TFrm_StockIn.TB_Out2Click(Sender: TObject);
begin
  inherited;
  If mdata2.RecordCount>0 then
     ExportToExcel(cxGrid2,True,TRue)
  else
     Application.MessageBox(PChar('没有需要导出的数据！'), '错误', MB_OK +MB_ICONSTOP);

end;

procedure TFrm_StockIn.TB_Ref2Click(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If not TreeVeiwListUserID(qry,MyTreeView2,'VT_StockIn_WorkBOM',UserFDepartmentID) then
  //If not TreeVeiwListUserID(qry,MyTreeView2,'VT_WorkBOM',UserFDepartmentID) then
  begin
    Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;



end;

procedure TFrm_StockIn.frReportBeginBand(Band: TfrBand);
begin
  inherited;
   if Band.Name='dtFooter' then
  begin
    If ((mdata3.RecordCount+1) mod 25)>0 then
      frReport.Dictionary.Variables['n']:=25-((mdata3.RecordCount+1) mod 25)
    else
      frReport.Dictionary.Variables['n']:=0;
  end;

end;

procedure TFrm_StockIn.TB_Ref3Click(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
   If not TreeVeiwListUserID(qry,MyTreeView3,'VT_StockIn',UserFDepartmentID) then
  begin
    Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;

end;

procedure TFrm_StockIn.TB_Down2Click(Sender: TObject);
Var i:Integer;
begin
  If P_i then
  begin
    TB_Down2.Caption:='取消设置';
    cxGV2.OptionsData.Editing:=False;
    cxGv2.OptionsView.GroupByBox:=False;
    for i:=0 to cxGv2.ColumnCount-1 do
    begin
      cxGv2.Columns[i].Options.Filtering:=False;
      cxGv2.Columns[i].Options.Editing:=False;
      cxGv2.Columns[i].Options.Sorting:=False;
    end;
    P_i:=False;
  end
  else
  begin
    TB_Down2.Caption:='设置';
    cxGV2.OptionsData.Editing:=True;
    cxGv2.OptionsView.GroupByBox:=True;
    for i:=0 to cxGv2.ColumnCount-1 do
    begin
      cxGv2.Columns[i].Options.Filtering:=True;
      cxGv2.Columns[i].Options.Editing:=True;
      cxGv2.Columns[i].Options.Sorting:=True;
    end;
    P_i:=True;
  end;

end;

procedure TFrm_StockIn.TB_Down3Click(Sender: TObject);
Var i:Integer;
begin
  If P_i then
  begin
    TB_Down3.Caption:='取消设置';
    cxGV3.OptionsData.Editing:=False;
    cxGV_M3.OptionsData.Editing:=False;
    cxGv3.OptionsView.GroupByBox:=False;
    cxGv_M3.OptionsView.GroupByBox:=False;
    for i:=0 to cxGv3.ColumnCount-1 do
    begin
      cxGv3.Columns[i].Options.Filtering:=False;
      cxGv3.Columns[i].Options.Editing:=False;
      cxGv3.Columns[i].Options.Sorting:=False;
    end;
    for i:=0 to cxGv_M3.ColumnCount-1 do
    begin
      cxGv_M3.Columns[i].Options.Filtering:=False;
      cxGv_M3.Columns[i].Options.Editing:=False;
      cxGv_M3.Columns[i].Options.Sorting:=False;
    end;
    P_i:=False;
  end
  else
  begin
    TB_Down3.Caption:='设置';
    cxGV3.OptionsData.Editing:=True;
    cxGV_M3.OptionsData.Editing:=True;
    cxGv3.OptionsView.GroupByBox:=True;
    cxGv_M3.OptionsView.GroupByBox:=True;
    for i:=0 to cxGv3.ColumnCount-1 do
    begin
      cxGv3.Columns[i].Options.Filtering:=True;
      cxGv3.Columns[i].Options.Editing:=True;
      cxGv3.Columns[i].Options.Sorting:=True;
    end;
    for i:=0 to cxGv_M3.ColumnCount-1 do
    begin
      cxGv_M3.Columns[i].Options.Filtering:=True;
      cxGv_M3.Columns[i].Options.Editing:=True;
      cxGv_M3.Columns[i].Options.Sorting:=True;
    end;
    P_i:=True;
  end;

end;

procedure TFrm_StockIn.FormShow(Sender: TObject);
begin
  inherited;
  TB_Ref2.Click;
  TB_Ref3.Click;
end;

procedure TFrm_StockIn.TB_Edit3Click(Sender: TObject);
begin
  If cxGV3.DataController.Summary.FooterSummaryValues[1]<>cxGV3.DataController.Summary.FooterSummaryValues[2] then
  begin
    application.MessageBox('此<入库清单>已生成<包装清单>只能修改单条记录！','系统提示',MB_ICONINFORMATION);
    P_state:=2;//单记录修改
    //TB_Add3.Enabled:=False;
    //TB_App3.Enabled:=False;
    TB_Edit3.Enabled:=False;
    TB_Del3.Enabled:=False;
    TB_Ref3.Enabled:=False;
    MyTreeView3.Enabled:=False;

    E_FItemNumber.Enabled:=True;
    E_th.Enabled:=True;
    E_mc.Enabled:=True;
    E_gg.Enabled:=True;
    E_FSumQry.Enabled:=True;
    E_FSuttle.Enabled:=True;
    E_FStockInListRemark.Enabled:=True;
    Panel_Edit.Visible:=True;
    CancelBtn.Visible:=True;
  end
  else
  begin
    P_state:=1;
    Self.Set_Open2;
    Self.Set_Open3;
    PC_2.ActivePage:=TS_StockIn;
  end;
end;

procedure TFrm_StockIn.TB_Del3Click(Sender: TObject);
var
  qry:TADOQuery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
    P_List :='【'+mdata_M3['FBranchItemNumber']+'】【'+mdata_M3['FPartsCode']+'】【'+mdata_M3['FWorkParts']+'】';

  If mdata3.RecordCount<1 then
     Exit;
  If P_IsAudit=1 then
  begin
    application.MessageBox('此生产入库单已审核无法删除！','系统提示',MB_ICONINFORMATION);
    Exit;
  end;

  If application.MessageBox(Pchar('警告：是否删除图号为：【'+P_List+'】的入库单信息？'+chr(13)+chr(13)
                                 +'删除数据操作将不可恢复，确定要删除吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
  If application.MessageBox(Pchar('再次警告：是否删除图号为：【'+P_List+'】的入库单信息？'+chr(13)+chr(13)
                                 +'删除数据操作将不可恢复，确定要删除吗？'),'再次警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then


  begin
  //单据删除
    If not DelRd then
    begin
      application.MessageBox('删除单据失败！','系统提示',MB_ICONINFORMATION);
      Exit;
    end;
    mdata_M3.Edit;
    mdata_M3.Delete;
  end;

  mdata3.Close;
 // Self.TB_Ref3.Click;
end;

procedure TFrm_StockIn.TB_OutClick(Sender: TObject);
Var i:Integer;
begin
  inherited;
  for i:=0 to cxGv3.ColumnCount-1 do
  begin
    cxGv3.Columns[i].Visible:=False;
  end;

  Num_3.Visible:=True;
  th_3.Visible:=True;
  mcgg_3.Visible:=True;
  FSumQry_3.Visible:=True;
  FSuttle_3.Visible:=True;
  FSumSuttle_3.Visible:=True;
  FStockInListRemark_3.Visible:=True;

  If mdata3.RecordCount>0 then
     ExportToExcel(cxGrid3,True,TRue)
  else
     Application.MessageBox(PChar('没有需要导出的数据！'), '错误', MB_OK +MB_ICONSTOP);
  for i:=0 to cxGv3.ColumnCount-1 do
  begin
    cxGv3.Columns[i].Visible:=True;
  end;
  mcgg_3.Visible:=False;

end;

procedure TFrm_StockIn.TB_App3Click(Sender: TObject);
begin
  P_state:=0;
  P_stateApp:=0;//手动增加
  If mdata3.Active then mdata3.Close;
  mdata3.Open;
  Self.Set_Open3;
 // If (P_state =0) and (Trim(E_FStockInItemDate.Text)='') then
 //    E_FStockInItemDate.Date:=date();


end;

procedure TFrm_StockIn.E_FItemNumberPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var selValue : string;
    qry,qry1: TADOQuery;
    i:Integer;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry1:=TADOQuery.Create(self);
  qry1.ConnectionString:=mdlData.ReadConnStr;
{   try
     qry.SQL.Text:='select * from V_FileItem where FDepartmentID=:FDepartmentID and FBranchItemNumber like :FBranchItemNumber';
     qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
     qry.Parameters.FindParam('FBranchItemNumber').value:='%'+Trim(E_FItemNumber.Text)+'%';
     qry.Open;
   finally
      ;
   end;
   If qry.RecordCount=0 then
   begin
     try
       qry.SQL.Text:='select * from VT_FileItem where FDepartmentID=:FDepartmentID and FBranchItemNumber like :FBranchItemNumber';
       qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
       qry.Parameters.FindParam('FBranchItemNumber').value:='%'+Trim(E_FItemNumber.Text)+'%';
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
         E_FClientFullName.Text:=qry1.FieldByName('FClientFullName').AsString;
         E_FItemNumber.Text:=qry1.FieldByName('FItemNumber').AsString;
         E_FBranchItemNumber.Text:=qry1.FieldByName('FBranchItemNumber').AsString;
         E_FFileNo.Text:=qry1.FieldByName('FFileNo').AsString;
         E_FItemNo.Text:=qry1.FieldByName('FItemNo').AsString;
         E_FProductID.Text:=qry1.FieldByName('FProductID').Value;
       end;
     end
     else
       application.MessageBox('请选择明细！','系统提示',MB_ICONINFORMATION);
   end;

   If qry.RecordCount=1 then
   begin
     E_FItemID.Text:=qry.FieldByName('FItemID').Value;
     E_FClientFullName.Text:=qry.FieldByName('FClientFullName').AsString;
     E_FItemNumber.Text:=qry.FieldByName('FItemNumber').AsString;
     E_FBranchItemNumber.Text:=qry.FieldByName('FBranchItemNumber').AsString;
     E_FFileNo.Text:=qry.FieldByName('FFileNo').AsString;
     E_FItemNo.Text:=qry.FieldByName('FItemNo').AsString;
     E_FProductID.Text:=qry.FieldByName('FProductID').Value;
   end
   else
   begin
     try
       qry.SQL.Text:='select * from VT_FileItem where FDepartmentID=:FDepartmentID and FBranchItemNumber like :FBranchItemNumber';
       qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
       qry.Parameters.FindParam('FBranchItemNumber').value:='%'+Trim(E_FItemNumber.Text)+'%';
       qry.Open;
     finally
       ;
     end;

     selValue:=select('选择档案号','FNumber','FParentNumber','FNumber','FName',qry);
     If (Length(selValue)>0) and (qry.FieldByName('FDetail').Value<>0) then
    //selValue:=select('选择档案信息','FBranchItemNumber','FItemNumber','FBranchItemNumber','FBranchItemNumber;FClientShortName',qry);
    //If (Length(selValue)>0) then
    begin
      E_FItemID.Text:=qry.FieldByName('FItemID').Value;
      E_FClientFullName.Text:=qry.FieldByName('FClientFullName').AsString;
      E_FItemNumber.Text:=qry.FieldByName('FItemNumber').AsString;
      E_FBranchItemNumber.Text:=qry.FieldByName('FBranchItemNumber').AsString;
      E_FFileNo.Text:=qry.FieldByName('FFileNo').AsString;
      E_FItemNo.Text:=qry.FieldByName('FItemNo').AsString;
      E_FProductID.Text:=qry.FieldByName('FProductID').Value;
    end;
  end;

  If P_stateApp=1 then //选择增加
  begin
    //PC_2.ActivePage:=TS_WorkBOM;
    //TB_Ref2.Click;
    Exit;
  end;

  If mData3.Active then mData3.Close;
  mData3.Open;
  mdata3.Edit;
  mdata3.Append;
  mdata3['Num']:='★★';
  mdata3['xh']:=0;
  mdata3['FSumQry']:=1;
  mdata3.SortedField:='';

    try
      qry.SQL.Text:='select * from VT_StockInParts where FProductID=:FProductID order by FPartsCode,FWorkPartsNum ';
      qry.Parameters.FindParam('FProductID').value:=StrToInt(Trim(E_FProductID.Text));
      qry.Open;
    finally
       ;
    end;
    selValue:=select('选择部件名称','FNumber','FParentNumber','FNumber','FSelNumber;FName',qry);
    If (Length(selValue)>0) then
    begin
      mdata3.Edit;
      mdata3['FSumQry']:=1;
      mdata3['th']:=Trim(E_FItemNumber.Text)+'.'+IntToStr(StrToInt(qry.FieldByName('FPartsCode').AsString))+'【'+qry.FieldByName('FWorkParts').AsString+'】';
      mdata3['mc']:=qry.FieldByName('FWorkParts').AsString;
      mdata3['FPartsNumber']:=Trim(E_FItemNumber.Text)+'.'+IntToStr(StrToInt(qry.FieldByName('FPartsCode').AsString));
      mdata3['FFullNumber']:=Trim(E_FItemNo.Text)+'.'+qry.FieldByName('FSelNumber').AsString;
      ListItemFNumber3:=Trim(E_FItemNo.Text)+'.'+qry.FieldByName('FSelNumber').AsString;
      mdata3['ssFullNumber']:=Trim(E_FItemNo.Text)+'.'+qry.FieldByName('FPartsCode').AsString;
      mdata3['FWorkParts']:=qry.FieldByName('FWorkParts').AsString;
      mdata3['FPartsCode']:=qry.FieldByName('FPartsCode').AsString;
      mdata3['FSumQry']:=1;
      mdata3['FSuttle']:=0.000;
      mdata3['FSumSuttle']:=0.0000;
      mdata3['gg']:='';
      mdata3['SelRemark']:='';
      mdata3['FStockInListRemark']:='';
      mdata3.Post;
      for i:=1 to 50 do
      begin
        mdata3.Append;
        if i=0 then
        begin
          mdata3['Num']:='★★';
          mdata3['xh']:=0;
          mdata3['FSumQry']:=1;
        end
        else
        begin
          mdata3['Num']:=i;
          mdata3['xh']:=i;
        end;
        mdata3['th']:='';
        mdata3['mc']:='';
        mdata3['gg']:='';
        mdata3['SelRemark']:='';
        mdata3['FFullNumber']:=Trim(E_FItemNo.Text)+'.'+qry.FieldByName('FSelNumber').AsString+'.'+Format('%.3d',[i]);
        mdata3['ssFullNumber']:=Trim(E_FItemNo.Text)+'.'+qry.FieldByName('FSelNumber').AsString;
        mdata3['FPartsNumber']:=Trim(E_FItemNumber.Text)+'.'+IntToStr(StrToInt(qry.FieldByName('FPartsCode').AsString));
        mdata3['FWorkParts']:=qry.FieldByName('FWorkParts').AsString;
        mdata3['FPartsCode']:=qry.FieldByName('FPartsCode').AsString;
        mdata3['FSumQry']:=0;
        mdata3['FSuttle']:=0.000;
        mdata3['FSumSuttle']:=0.0000;
        mdata3['FK3Number']:='';
        mdata3['FName']:='';
        mdata3['FModel']:='';
        mdata3['UnitName']:='';
        mdata3['FStockInListRemark']:='';
        mdata3.Post;
        mdata3.First;
      end;
      mdata3.First;
      mdata3.Next;
      E_th.SetFocus;
    end
    else
      application.MessageBox('请选择明细！','系统提示',MB_ICONINFORMATION);

  qry.Free;
           }
end;

procedure TFrm_StockIn.cxGV3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  cxGV3.OptionsData.Editing:=False;
  if Key=13   then
     Key:=40;     //往右是39往下是40
  cxGV3.OptionsData.Editing:=True;

end;

procedure TFrm_StockIn.MData3BeforePost(DataSet: TDataSet);
Var i:Integer;
begin
  inherited;
  If DataSet['FSuttle']=null then DataSet['FSuttle']:=0;
  If DataSet['FSumQry']=null then DataSet['FSumQry']:=0;

  DataSet['FSumSuttle']:=round(DataSet['FSumQry']*DataSet['FSuttle']*10000)/10000;
  i:=strToInt(DataSet['xh']);
  If DataSet['xh']=0 then
     DataSet['Num']:='★★'
  else
  begin
    DataSet['FFullNumber']:=DataSet['ssFullNumber']+'.'+Format('%.3d',[i]);
    If Length(DataSet['FFullNumber'])=16 then
       DataSet['Num']:=IntToStr(i);
    If Length(DataSet['FFullNumber'])=20 then
       DataSet['Num']:='('+IntToStr(i)+')';
    If Length(DataSet['FFullNumber'])=24 then
       DataSet['Num']:='['+IntToStr(i)+']';
  end;
  If DataSet['Num']='[1]' then DataSet['Num']:='①';
  If DataSet['Num']='[2]' then DataSet['Num']:='②';
  If DataSet['Num']='[3]' then DataSet['Num']:='③';
  If DataSet['Num']='[4]' then DataSet['Num']:='④';
  If DataSet['Num']='[5]' then DataSet['Num']:='⑤';
  If DataSet['Num']='[6]' then DataSet['Num']:='⑥';
  If DataSet['Num']='[7]' then DataSet['Num']:='⑦';
  If DataSet['Num']='[8]' then DataSet['Num']:='⑧';
  If DataSet['Num']='[9]' then DataSet['Num']:='⑨';
  If DataSet['Num']='[10]' then DataSet['Num']:='⑩';

end;

procedure TFrm_StockIn.TB_Save3Click(Sender: TObject);
begin
  mdata3.Edit;
  mdata3['th']:=Trim(E_th.Text);
  mdata3['mc']:=Trim(E_mc.Text);
  mdata3['gg']:=Trim(E_gg.Text);
  mdata3['FSumQry']:=E_FSumQry.Value;
  mdata3['FSuttle']:=E_FSuttle.Value;
  mdata3['FStockInListRemark']:=Trim(E_FStockInListRemark.Text);
  mdata3.Post;

  If P_state=2 then //单记录修改
  begin
    If mdata3['FSumQry']<>mdata3['FPackQry'] then
    begin
      application.MessageBox('<入库清单>已生成<包装清单>无法修改！','系统提示',MB_ICONINFORMATION);
      CancelBtn.Click;
      Exit;
    end;
    If application.MessageBox('是否要保存入库清单记录？','提示',MB_ICONINFORMATION+MB_YESNO)<>6 then
       Exit;
    If EditList then   //修改单记录
    begin
      application.MessageBox('入库清单记录已保存','系统提示',MB_ICONINFORMATION);
      inherited;
    end
    else
      application.MessageBox('入库清单记录保存失败！','系统提示',MB_ICONWARNING);
    CancelBtn.Click;
  end
  else
  begin
    mdata3.Next;
    E_th.SetFocus;
  end;

end;

procedure TFrm_StockIn.cxGV3CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
 { If mdata3.RecordCount>0 then
  begin
    E_th.Text:=mdata3['th'];
    E_mc.Text:=mdata3['mc'];
    E_gg.Text:=mdata3['gg'];
    E_FStockInListRemark.Text:=mdata3['FStockInListRemark'];
    E_FSumQry.Value:=mdata3['FSumQry'];
    E_FSuttle.Value:=mdata3['FSuttle'];
  end;
  If (P_state=2) then
  begin
    If (mdata3['FSumQry']<>mdata3['FPackQry']) then//单记录修改
       Panel_Edit.Visible:=False
    else
       Panel_Edit.Visible:=True;
  end;
   }
end;

procedure TFrm_StockIn.E_ABCKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key=13) or (key=40) then { 判断是按执行键}
     E_mc.SetFocus;

end;

procedure TFrm_StockIn.E_FSumQryKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key=13) or (key=40) then { 判断是按执行键}
     E_FSuttle.SetFocus;

end;

procedure TFrm_StockIn.E_SelRemarkKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key=13) or (key=40) then { 判断是按执行键}
     E_FSumQry.SetFocus;

end;

procedure TFrm_StockIn.E_FSuttleKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key=13) or (key=40) then { 判断是按执行键}
     E_FStockInListRemark.SetFocus;

end;

procedure TFrm_StockIn.E_FStockInListRemarkKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key=13) or (key=40) then { 判断是按执行键}
     TB_Save3.SetFocus;


end;

procedure TFrm_StockIn.E_FSumQryExit(Sender: TObject);
begin
  inherited;
  E_FSumSuttle.EditValue:=Round(E_FSumQry.EditValue*E_FSuttle.EditValue*10000)/10000;

end;

procedure TFrm_StockIn.E_thKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
//  if (key=13) or (key=40) then { 判断是按执行键}
//  Begin
//    key:=0;
//    perform(WM_NEXTDLGCTL,0,0);{移动到下一个控件}
//  end;}
  if (key=13) or (key=40) then { 判断是按执行键}
     E_mc.SetFocus;

end;

procedure TFrm_StockIn.E_ggKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key=13) or (key=40) then { 判断是按执行键}
     E_FSumQry.SetFocus;

end;

procedure TFrm_StockIn.E_thPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Select distinct th,mc,gg,FSuttle from V_StockInList where FDepartmentID=:FDepartmentID and th like :th order by th,mc,gg';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Parameters.FindParam('th').value:='%'+Trim(E_th.Text)+'%';
    qry.Open;
  finally
     ;
  end;
  If qry.RecordCount<1 then
     Exit;

  If qry.RecordCount=1 then
  begin
    E_th.EditValue:=qry.FieldByName('th').AsString;
    E_mc.EditValue:=qry.FieldByName('mc').AsString;
    E_gg.EditValue:=qry.FieldByName('gg').AsString;
    E_FSuttle.EditValue:=qry.FieldByName('FSuttle').Value;
    E_FSumQry.SetFocus;
  end
  else
  begin
    selValue:=select('选择图号','th','th','th','th;mc;gg',qry);
    If (Length(selValue)>0) then
    begin
    E_th.EditValue:=qry.FieldByName('th').AsString;
    E_mc.EditValue:=qry.FieldByName('mc').AsString;
    E_gg.EditValue:=qry.FieldByName('gg').AsString;
    E_FSuttle.EditValue:=qry.FieldByName('FSuttle').Value;
    end
    else
      application.MessageBox('请选择明细！','系统提示',MB_ICONINFORMATION);

  end;
  qry.Free;


end;

procedure TFrm_StockIn.E_mcKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key=13) or (key=40) then { 判断是按执行键}
     E_gg.SetFocus;

end;

procedure TFrm_StockIn.E_mcPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Select * from V_StockInList where FDepartmentID=:FDepartmentID and th=:th and mc like :mc order by mc';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Parameters.FindParam('th').value:=Trim(E_th.Text);
    qry.Parameters.FindParam('mc').value:='%'+Trim(E_mc.Text)+'%';
    qry.Open;
  finally
     ;
  end;
  If qry.RecordCount=1 then
  begin
    E_mc.EditValue:=qry.FieldByName('mc').AsString;
    E_FSumQry.SetFocus;
  end
  else
  begin
    selValue:=select('选择名称','mc','mc','mc','mc',qry);
    If (Length(selValue)>0) then
    begin
    E_mc.EditValue:=qry.FieldByName('mc').AsString;
    end
    else
      application.MessageBox('请选择明细！','系统提示',MB_ICONINFORMATION);

  end;
  qry.Free;

end;

procedure TFrm_StockIn.E_thExit(Sender: TObject);
var  qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Select distinct th,mc,gg,FSuttle from V_StockInList where FDepartmentID=:FDepartmentID and th=:th and th not like ''GB/T%'' order by th,mc,gg';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Parameters.FindParam('th').value:=Trim(E_th.Text);
    qry.Open;
  finally
     ;
  end;
  If qry.RecordCount=1 then
  begin
    E_mc.EditValue:=qry.FieldByName('mc').AsString;
    E_gg.EditValue:=qry.FieldByName('gg').AsString;
    E_FSuttle.EditValue:=qry.FieldByName('FSuttle').Value;
    E_FSumQry.SetFocus;
  end;
  If Copy(Trim(E_th.Text),1,4)='GB/T' then
  begin
    try
      qry.SQL.Text:='Select distinct th,mc from V_StockInList where FDepartmentID=:FDepartmentID and th=:th order by th,mc';
      qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
      qry.Parameters.FindParam('th').value:=Trim(E_th.Text);
      qry.Open;
    finally
       ;
    end;
    If qry.RecordCount=1 then
    begin
      E_mc.EditValue:=qry.FieldByName('mc').AsString;
      E_gg.SetFocus;
    end;
  end;

  qry.Free;

end;

procedure TFrm_StockIn.E_ggPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Select distinct gg from V_StockInList where FDepartmentID=:FDepartmentID and gg like :gg order by gg';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Parameters.FindParam('gg').value:='%'+Trim(E_gg.Text)+'%';
    qry.Open;
  finally
     ;
  end;
  If qry.RecordCount>0 then
  begin
    selValue:=select('选择规格','gg','gg','gg','gg',qry);
    If (Length(selValue)>0) then
       E_gg.EditValue:=qry.FieldByName('gg').AsString
    else
      application.MessageBox('请选择明细！','系统提示',MB_ICONINFORMATION);
  end;
  qry.Free;


end;

procedure TFrm_StockIn.E_ggExit(Sender: TObject);
var  qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Select distinct th,mc,gg,FSuttle from V_StockInList '
                 +'where FDepartmentID=:FDepartmentID and th=:th and mc=:mc and gg=:gg order by th,mc,gg';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Parameters.FindParam('th').value:=Trim(E_th.Text);
    qry.Parameters.FindParam('mc').value:=Trim(E_mc.Text);
    qry.Parameters.FindParam('gg').value:=Trim(E_gg.Text);
    qry.Open;
  finally
     ;
  end;
  If qry.RecordCount=1 then
  begin
    E_FSuttle.EditValue:=qry.FieldByName('FSuttle').Value;
    E_FSuttle.SetFocus;
  end
  else
    E_FSumQry.SetFocus;


  qry.Free;

end;

procedure TFrm_StockIn.SelRemarkPropertiesCloseUp(Sender: TObject);
var p01,p02,p03,p05,p06,p07,p10,p11,p12:string;
    p09,p04,i,j,P_xh:Integer;
    I_index:integer;
begin
  inherited;
  mdata3.Edit;
  mdata3.Post;
  I_index:=mData3.RecNo ;
  p01:=mdata3['Num'];
  p02:=mdata3['th'];
  p05:=mdata3['mc'];
  p06:=mdata3['FFullNumber'];
  p07:=mdata3['ssFullNumber'];
  p09:=mdata3['FSumQry'];
  p10:=mdata3['FPartsnumber'];
  p11:=mdata3['FPartsCode'];
  p12:=mdata3['FWorkParts'];

  mdata3.Edit;
  mdata3['FSumQry']:=1;//本级数量设为1
  mdata3['SelRemark']:='(按以下入库)';
  mdata3.Post;
  j:=StrToInt(Trim(E_n.Value));
  mdata3.Edit;

  P_xh:=0;
  If mdata3['SelRemark']='(按以下入库)' then
  begin
    p07:=mdata3['FFullNumber'];
    mdata3.First;
    while not mdata3.Eof do
    begin
      If mdata3['ssFullNumber']=p07 then
         p_xh:=mdata3['xh'];
      mdata3.Next;
    end;
  end;

  for i:=P_xh+1 to P_xh+j do
  begin
    mdata3.Append;
    mdata3['th']:=p02;
    mdata3['xh']:=i;
    mdata3['mc']:=p05;
    mdata3['gg']:='';
    mdata3['FStockInListRemark']:='';
    mdata3['FPartsnumber']:=p10;
    mdata3['FPartsCode']:=p11;
    mdata3['FWorkParts']:=p12;

    mdata3['FSumQry']:=p09;
    mdata3['ssFullNumber']:=p06;
    mdata3['FSuttle']:=0.000;
    mdata3['FSumSuttle']:=0.0000;

    mdata3['FFullNumber']:=p06+'.'+Format('%.3d',[i]);
    mdata3['Num']:='['+IntToStr(i)+']';

    mdata3.Post;
    j:=j+1;
  end;
  E_n.EditValue:=0;
  If (I_index<mData3.RecordCount) and (I_index<>-1) then
     mData3.RecNo :=I_index
  else
     mData3.Last;

end;

procedure TFrm_StockIn.SB_nClick(Sender: TObject);
Var i,j,n:Integer;
    P_FFullNumber,P_FPartsCode,P_FWorkParts,P_FPartsNumber:String;
begin
  inherited;
  mdata3.SortedField:='FFullNumber';
  mdata3.Last;
  P_FFullNumber:=mdata3['ssFullNumber'];
  P_FPartsCode:=mdata3['FPartsCode'];
  P_FWorkParts:=mdata3['FWorkParts'];
  P_FPartsNumber:=mdata3['FPartsNumber'];
  j:=StrToInt(mdata3['xh'])+1;

  n:=StrToInt(Trim(E_n.Value));
  for i:=1 to n do
  begin
    mdata3.Append;
    mdata3['Num']:=j;
    mdata3['xh']:=j;
    mdata3['th']:='';
    mdata3['mc']:='';
    mdata3['gg']:='';
    mdata3['SelRemark']:='';
    mdata3['FFullNumber']:=P_FFullNumber+'.'+Format('%.3d',[j]);
    mdata3['ssFullNumber']:=P_FFullNumber;
    mdata3['FPartsNumber']:=P_FPartsNumber;
    mdata3['FWorkParts']:=P_FWorkParts;
    mdata3['FPartsCode']:=P_FPartsCode;
    mdata3['FSumQry']:=0;
    mdata3['FSuttle']:=0.000;
    mdata3['FSumSuttle']:=0.0000;
    mdata3['FK3Number']:='';
    mdata3['FName']:='';
    mdata3['FModel']:='';
    mdata3['UnitName']:='';
    mdata3['FStockInListRemark']:='';
    mdata3.Post;
    mdata3.First;
    j:=j+1;
    n:=n+1;
  end;
  E_n.EditValue:=0;

end;

procedure TFrm_StockIn.abcPropertiesChange(Sender: TObject);

begin
  inherited;
  mdata3.Edit;
  mdata3.Post;

  mdata3.Edit;
  If (pos('(A)',mdata3['th'])<>0) or ((pos('(B)',mdata3['th'])<>0)) or (pos('(C)',mdata3['th'])<>0) or
     (pos('(D)',mdata3['th'])<>0) or ((pos('(E)',mdata3['th'])<>0)) or (pos('(F)',mdata3['th'])<>0) or
     (pos('(G)',mdata3['th'])<>0) or ((pos('(H)',mdata3['th'])<>0)) or (pos('(J)',mdata3['th'])<>0) 
     then
    mdata3['th']:=copy(mdata3['th'],1,pos('(',mdata3['th'])-1)+mdata3['abc']
  else
    mdata3['th']:=mdata3['th']+ mdata3['abc'];
  mdata3.Post;

end;

procedure TFrm_StockIn.th_1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var   qry: TADOQuery;
begin
  inherited;
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  ListItemFNumber:=mdata_M3['WorkFFullNumber'];
  try
    qry.SQL.Text:='Select * from V_WorkBOM where FFullNumber like :FFullNumber order by FFullNumber';
    //qry.Parameters.FindParam('FFullNumber').value:= mdata_M3['WorkFFullNumber']+'%';
    qry.Parameters.FindParam('FFullNumber').value:=ListItemFNumber+'%';
    qry.Open;
  finally
    ;
  end;
  if qry.RecordCount>0 then
  begin
    mdata2.Active:=True;
    mdata2.CopyFromDataSet(qry);
    mdata2.First;
  end;
  TS_WorkBOM.TabEnabled:=True;
  PC_2.ActivePage:=TS_WorkBOM;

  SelBtn.Visible:=True;
  SelCancelBtn.Visible:=True;


end;

procedure TFrm_StockIn.TB_StockClick(Sender: TObject);
Var i,j,h:Integer;
    P_FFullNumber,a:String;
    I_index:integer;
begin
  inherited;
  mdata3.Edit;
  mdata3.Post;
  h:=cxGV3.DataController.Controller.SelectedRecordCount;
  for i:=0 to cxGV3.DataController.Controller.SelectedRecordCount-1 do
  begin
    j:=cxGV3.DataController.GetSelectedRowIndex(i);
    If (cxGV3.DataController.GetValue(J,7)='(按以下入库)') or (i=0) then
      P_FFullNumber:=cxGV3.DataController.GetValue(J,14)        //FFullNumber
    else
    begin
      mData3.RecNo :=j+1;
      a:=mdata3['FFullNumber'];
      mdata3.Edit;
      mdata3['ssFullNumber']:=P_FFullNumber;
      mdata3['xh']:=i;
      mdata3.Post;
    end;
  end;
  P_FFullNumber:='';
  E_n.EditValue:=0;

  If P_state=1 then //修改数据
  begin
    If EditRd then   //修改数据
     //  Self.SumWeight;
  end;

end;

procedure TFrm_StockIn.FStockInListRemarkPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  mdata3.Edit;
  mdata3.Post;
  try
    qry.SQL.Text:='select distinct FStockInListRemark from T_StockInListRemark where FDepartmentID=:FDepartmentID and FStockInListRemark like :FStockInListRemark order by FStockInListRemark ';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Parameters.FindParam('FStockInListRemark').value:='%'+mdata3['FStockInListRemark']+'%';
    qry.Open;
  finally
     ;
  end;

  selValue:=select('选择备注','FStockInListRemark','FStockInListRemark','FStockInListRemark','FStockInListRemark',qry);
  If (Length(selValue)>0) then
  begin
    mdata3.Edit;
    mdata3['FStockInListRemark']:=qry.FieldByName('FStockInListRemark').Value;
   // FStockInListRemark_3.EditValue:=qry.FieldByName('FStockInListRemark').Value;
    mdata3.Post;
  end;
end;

procedure TFrm_StockIn.TB_AutoClick(Sender: TObject);
var
  proc:TADOStoredProc;
begin
  P_List :='【'+mdata_M3['FBranchItemNumber']+'】【'+mdata_M3['FPartsCode']+'】【'+mdata_M3['FWorkParts']+'】';
  If application.MessageBox(Pchar('警告：是否自动编号：【'+P_List+'】的入库单信息？'+chr(13)+chr(13)
                                 +'自动编号数据操作将不可恢复，确定要自动编号吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
  proc:=TADOStoredProc.Create(self);
  proc.ConnectionString:=mdlData.ReadConnStr;
  proc.CommandTimeout:=500;

  try
    proc.ProcedureName:='P_Stock_AutoNum;1';
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=50;
      name := '@ListItemFNumber';
      value:=ListItemFNumber;
    end;
    proc.Open;
    mdata3.Close;
    mdata3.CopyFromDataSet(proc);
    Mdata3.Active:=True;
    DS_Mdata3.DataSet:=Mdata3;
    cxGV3.DataController.DataSource:=DS_Mdata3;
    cxGvColumn(cxGv3,mdata3);
  finally
     ;
  end;
end;

procedure TFrm_StockIn.E_thFocusChanged(Sender: TObject);
begin
  inherited;
  mdata3.Edit;
  mdata3['th']:=Trim(E_th.Text);
  mdata3['mc']:=Trim(E_mc.Text);
  mdata3['gg']:=Trim(E_gg.Text);
  mdata3['FSumQry']:=E_FSumQry.Value;
  mdata3['FSuttle']:=E_FSuttle.Value;
  mdata3['FStockInListRemark']:=Trim(E_FStockInListRemark.Text);
  mdata3.Post;
end;

procedure TFrm_StockIn.ToolButton30Click(Sender: TObject);
Var
  qry: TADOQuery;
begin
  inherited;
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  mdata2.First;
  while not mData2.eof do
  begin
    mData2.Edit;
    If (mdata2['FCode']='★★') or (mdata2['FCode']='◆◆') or (mdata2['FCode']='□□') then
    begin
      try
        qry.SQL.Text:='Update T_WorkBOM set IsSel=1,Sel=1 where FWorkBOMID=:FWorkBOMID';
        qry.Parameters.FindParam('FWorkBOMID').Value:=mdata2['FWorkBOMID'];
        qry.ExecSQL;
        mdata2.Edit;
        mdata2['Sel']:=True;
        mdata2['IsSel']:=True;
        mdata2.Post;
      finally
         ;
      end;
    end;
    mData2.Next;
  end;


end;

procedure TFrm_StockIn.TB_PrintWorkBOMClick(Sender: TObject);
begin
  inherited;
  If mdata2.RecordCount>0 then
  begin
    mdata2.SortedField:='FFullNumber';
   // FrReport.Dataset:=frDBDataSet;
    //frDBDataSet.DataSource.DataSet:=mdata2;
    FrReport2.LoadFromFile(ExtractFileDir(Application.ExeName)+'\Report_DesignBOM_WorkBOM.frf');
    FrReport2.ShowReport;
  end
  else
    Application.MessageBox(PChar('没有需要打印的数据！'), '错误', MB_OK +MB_ICONSTOP);

end;

procedure TFrm_StockIn.ToolButton31Click(Sender: TObject);
Var
  qry: TADOQuery;
  P_Sel:String;
begin
  inherited;
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  P_Sel:=mdata2['FCode'];
  mdata2.First;
  while not mData2.eof do
  begin
    mData2.Edit;
    If mdata2['FCode']=P_Sel then
    begin
      try
        qry.SQL.Text:='Update T_WorkBOM set IsSel=1,Sel=1 where FWorkBOMID=:FWorkBOMID';
        qry.Parameters.FindParam('FWorkBOMID').Value:=mdata2['FWorkBOMID'];
        qry.ExecSQL;
        mdata2.Edit;
        mdata2['Sel']:=True;
        mdata2['IsSel']:=True;
        mdata2.Post;
      finally
         ;
      end;
    end;
    mData2.Next;
  end;

end;

procedure TFrm_StockIn.ToolButton32Click(Sender: TObject);
Var  qry: TADOQuery;
    P_Sel:String;
begin
  inherited;
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  P_Sel:=mdata2['FCode'];
  mdata2.First;
  while not mData2.eof do
  begin
    mData2.Edit;
    If mdata2['FCode']=P_Sel then
    begin
      try
        qry.SQL.Text:='Update T_WorkBOM set IsSel=0,Sel=0 where FWorkBOMID=:FWorkBOMID';
        qry.Parameters.FindParam('FWorkBOMID').Value:=mdata2['FWorkBOMID'];
        qry.ExecSQL;
        mdata2.Edit;
        mdata2['Sel']:=False;
        mdata2['IsSel']:=False;
        mdata2.Post;
      finally
         ;
      end;
    end;
    mData2.Next;
  end;


end;

procedure TFrm_StockIn.ToolButton34Click(Sender: TObject);
Var  qry: TADOQuery;
begin
  inherited;
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  mdata2.First;
  while not mData2.eof do
  begin
    mData2.Edit;
    If (mdata2['FCode']='★★') or (mdata2['FCode']='◆◆') or (mdata2['FCode']='□□') then
    begin
      try
        qry.SQL.Text:='Update T_WorkBOM set IsSel=0,Sel=0 where FWorkBOMID=:FWorkBOMID';
        qry.Parameters.FindParam('FWorkBOMID').Value:=mdata2['FWorkBOMID'];
        qry.ExecSQL;
        mdata2.Edit;
        mdata2['Sel']:=False;
        mdata2['IsSel']:=False;
        mdata2.Post;
      finally
         ;
      end;
    end;
    mData2.Next;
  end;


end;

procedure TFrm_StockIn.TB_Exit3Click(Sender: TObject);
begin
  inherited;
  Self.Close;
end;

procedure TFrm_StockIn.E_FItemNumber2PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var selValue : string;
    qry,qry1: TADOQuery;
    i:Integer;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry1:=TADOQuery.Create(self);
  qry1.ConnectionString:=mdlData.ReadConnStr;
 {  try
     qry.SQL.Text:='select * from VT_FileItem where FDepartmentID=:FDepartmentID and FBranchItemNumber like :FBranchItemNumber';
     qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
     qry.Parameters.FindParam('FBranchItemNumber').value:='%'+Trim(E_FItemNumber2.Text)+'%';
     qry.Open;
   finally
      ;
   end;
   If qry.RecordCount>0 then
   begin
     try
       qry.SQL.Text:='select * from VT_FileItem where FDepartmentID=:FDepartmentID and FBranchItemNumber like :FBranchItemNumber';
       qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
       qry.Parameters.FindParam('FBranchItemNumber').value:='%'+Trim(E_FItemNumber2.Text)+'%';
      qry.Open;
     finally
       ;
     end;

     selValue:=select('选择档案号','FNumber','FParentNumber','FNumber','FName',qry);
     If (Length(selValue)>0) and (qry.FieldByName('FDetail').Value<>0) then
     begin
       E_FItemID.Text:=qry.FieldByName('FItemID').Value;
       try
         qry1.SQL.Text:='select * from V_FileItem where FDepartmentID=:FDepartmentID and  FItemID=:FItemID';
         qry1.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
         qry1.Parameters.FindParam('FItemID').value:=qry.FieldByName('FItemID').Value;
         qry1.Open;
       finally
          ;
       end;
       If qry1.RecordCount>0 then
       begin
         E_FClientFullName2.Text:=qry1.FieldByName('FClientFullName').AsString;
         E_FItemNumber2.Text:=qry1.FieldByName('FItemNumber').AsString;
         E_FBranchItemNumber2.Text:=qry1.FieldByName('FBranchItemNumber').AsString;
         E_FBranchFileNo2.Text:=qry1.FieldByName('FBranchFileNo').AsString;
         E_FItemNo2.Text:=qry1.FieldByName('FItemNo').AsString;
         E_FItemId2.Text:=qry1.FieldByName('FItemId').AsString;
         E_FItemModel2.Text:=qry1.FieldByName('FItemModel').AsString;
       end;
       If Trim(E_FItemId2.Text)<>'' then
         TB_Copy.Enabled:=True;
     end
     else
       application.MessageBox('请选择明细！','系统提示',MB_ICONINFORMATION);
   end;
    }
end;

procedure TFrm_StockIn.TB_Print_FirstClick(Sender: TObject);
begin
   If mdata3.RecordCount>0 then
  begin
    mdata3.SortedField:='FFullNumber';
    FrReport.LoadFromFile(ExtractFileDir(Application.ExeName)+'\Report_DesignBOM_StockIn_First.frf');
    FrReport.ShowReport;
  end
  else
    Application.MessageBox(PChar('没有需要打印的数据！'), '错误', MB_OK +MB_ICONSTOP);
 
end;

procedure TFrm_StockIn.TB_APP_3Click(Sender: TObject);
var
 i:Integer;
 qry:TADOquery;
begin
   qry:=TADOQuery.Create(self);
   qry.ConnectionString:=mdlData.ReadConnStr;
   P_state :=0;     //新增

   L_title.Caption:='入库清单信息新增';
   P_stateApp:=1;//选择增加
   TS_WorkBOM.TabEnabled:=True;

   Self.Set_Open2;
   Self.Set_Open3;
   mdata3.Close;
   mdata3.Open;
   mdata3.Edit;

   try
     qry.SQL.Text:='Select *,FFullNumber  as WorkFFullNumber from V_StockInList where FStockInItemID=:FStockInItemID';
     qry.Parameters.FindParam('FStockInItemID').value:= 0;
     qry.Open;
   finally
     ;
   end;

   mData_M3.CopyFromDataSet(qry);
   mData_M3.Open;
   mData_M3.Edit;
   mData_M3.Append;
   mData3.CopyFromDataSet(qry);

   mData_M3.Open;
   mData_M3.Edit;
   Mdata_M3['FStockInItemID']:=0;
   mData_M3['FStockInItemDate']:=date();
   Mdata_M3['FStockInStatus']:=0;
   Mdata_M3['FStockInStatusNotes']:='填单';
   Mdata_M3['FStockInWrite']:=UserNum;
   Mdata_M3['FStockInWriteDate']:=date();
   mData_M3.Post;

end;

procedure TFrm_StockIn.Act_Set_MaxIDExecute(Sender: TObject);
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
      value:='T_StockInItem';
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

procedure TFrm_StockIn.FBranchItemNumber_M3PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
   qry:=TADOQuery.Create(Self);
   qry.ConnectionString:=mdlData.ReadConnStr;
   try
     qry.SQL.Text:='select * from VT_StockIn_WorkBOM '
                  + ' where Cast(FItemID as Varchar(10))+FPartsCode+FWorkParts  '
                  + ' not in (select Cast(FItemID as Varchar(10))+FPartsCode+FWorkParts from T_StockInItem) '
                  +' and FDepartmentID=:FDepartmentID order by FNumber';
     qry.Parameters.FindParam('FDepartmentID').value:= UserFDepartmentID;
     qry.Open;
   finally
     ;
   end;
   selValue:=select('请项目名称','FNumber','FParentNumber','FNumber','FName',qry);
   If (Length(selValue)>0) and (qry.FieldByName('Isleaf').Value<>0) then
   begin
     mdata_M3.Edit;
     mdata_M3['FBranchItemNumber']:=qry.FieldByName('FBranchItemNumber').Value;
     mdata_M3['FPartsCode']:=qry.FieldByName('FPartsCode').Value;
     mdata_M3['FWorkPartsNum']:=qry.FieldByName('FWorkPartsNum').Value;
     mdata_M3['FWorkParts']:=qry.FieldByName('FWorkParts').Value;
     mdata_M3['WorkFFullNumber']:=qry.FieldByName('FFullNumber').Value;
     //ListItemFNumber:=qry.FieldByName('FFullNumber').Value;
     ListItemFNumber:=Trim(qry.FieldByName('FFullNumber').asstring);
     mdata_M3.Post;
   end
   else
   begin
     application.MessageBox('请选择明细！','系统提示',MB_ICONINFORMATION);
     Exit;
   end;

   try
     qry.SQL.Text:='Select * from V_FileItem where FDepartmentID=:FDepartmentID and FBranchItemNumber=:FBranchItemNumber';
     qry.Parameters.FindParam('FDepartmentID').value:= UserFDepartmentID;
     qry.Parameters.FindParam('FBranchItemNumber').value:= mdata_M3['FBranchItemNumber'];
     qry.Open;
   finally
     ;
   end;
   mdata_M3.Edit;
   If qry.RecordCount>0 then
   begin
      mdata_M3['FItemNo']:=qry.FieldByName('FItemNo').Value;
      mdata_M3['FBranchFileNo']:=qry.FieldByName('FBranchFileNo').Value;
      mdata_M3['FClientFullName']:=qry.FieldByName('FClientFullName').Value;
      mdata_M3['FItemNumber']:=qry.FieldByName('FItemNumber').Value;
      mdata_M3['FItemId']:=qry.FieldByName('FItemId').Value;
      mdata_M3['WorkFFullNumber']:=ListItemFNumber;
      mdata_M3['FFullNumber']:=qry.FieldByName('FItemNo').Value+'.'+mdata_M3['FPartsCode']+'.'+mdata_M3['FWorkPartsNum'];

      //ListItemFNumber:=qry.FieldByName('FItemNo').Value+'.'+mdata_M3['FPartsCode']+'.'+mdata_M3['FWorkPartsNum'];
   end
   else
   begin
      mdata_M3['FItemNo']:='';
      mdata_M3['FBranchFileNo']:='';
      mdata_M3['FClientFullName']:='';
      mdata_M3['FItemNumber']:='';
      mdata_M3['FItemId']:=0;
   end;
   mdata_M3.Post;
   TS_WorkBOM.TabEnabled:=True;
   PC_2.ActivePage:=TS_WorkBOM;
   SelBtn.Visible:=True;
   SelCancelBtn.Visible:=True;
   TB_Ref2.Click;
   try
     qry.SQL.Text:='Select * from V_WorkBOM where FFullNumber like :FFullNumber order by FFullNumber';
     qry.Parameters.FindParam('FFullNumber').value:= ListItemFNumber+'%';
     qry.Open;
   finally
     ;
   end;
   if qry.RecordCount>0 then
   begin
     mdata2.Active:=True;
     mdata2.CopyFromDataSet(qry);
     mdata2.First;
   end;


end;

procedure TFrm_StockIn.Act_SubmitExecute(Sender: TObject);
var
 qry:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  P_List :='【'+mdata_M3['FBranchItemNumber']+'】【'+mdata_M3['FPartsCode']+'】【'+mdata_M3['FWorkParts']+'】';
  If (TB_Submit.Caption='提交') or (N_Submit.Caption='提交') then
  begin
    If application.MessageBox(Pchar('警告：是否提交入库清单为：【'+P_List+'】的单据？'+chr(13)+chr(13)
                                   +'提交后的数据不允许修改和删除，确定要提交本单据吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      try
        qry.SQL.Text:='Update T_StockInItem Set FStockInStatus=1,FStockInSubmitDate=:FStockInSubmitDate  where FStockInItemID=:FStockInItemID';
        qry.Parameters.FindParam('FStockInSubmitDate').value:= now();
        qry.Parameters.FindParam('FStockInItemID').value:=mdata_M3['FStockInItemID'];
        qry.ExecSQL;
      finally
         ;
      end;
      mdata_M3.Edit;
      mdata_M3['FStockInStatus']:=1;
      mdata_M3['FStockInStatusNotes']:='提交';
      mdata_M3['FStockInSubmitDate']:=now();
      mdata_M3.Post;
      TB_Submit.Caption:='反提交';
      Act_Status.Execute;  //权限设置
      application.MessageBox('提交完毕！','系统提示',MB_ICONINFORMATION);    end;
    Exit;
  end;
  If (TB_Submit.Caption='反提交') or (N_Submit.Caption='反提交') then
  begin
    If application.MessageBox(Pchar('警告：是否反提交入库清单为：【'+P_List+'】的单据？'+chr(13)+chr(13)
                                   +'反提交后的数据不允许修改和删除，确定要反提交本单据吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      try
        qry.SQL.Text:='Update T_StockInItem Set FStockInStatus=0,FStockInSubmitDate=:FStockInSubmitDate  where FStockInItemID=:FStockInItemID';
        qry.Parameters.FindParam('FStockInSubmitDate').value:= '1900-01-01';
        qry.Parameters.FindParam('FStockInItemID').value:= mdata_M3['FStockInItemID'];
        qry.ExecSQL;
      finally
         ;
      end;
      mdata_M3.Edit;
      mdata_M3['FStockInStatus']:=0;
      mdata_M3['FStockInStatusNotes']:='填单';
      mdata_M3['FStockInSubmitDate']:='1900-01-01';
      mdata_M3.Post;
      TB_Submit.Caption:='提交';
      Act_Status.Execute;  //权限设置
      application.MessageBox('反提交完毕！','系统提示',MB_ICONINFORMATION);
    end;
    Exit;
  end;
//  Act_Ref_Date.Execute;
 // Act_Ref_Write.Execute;


end;

procedure TFrm_StockIn.Act_StatusExecute(Sender: TObject);
begin
  Case mdata_M3['FStockInStatus'] of
    0:       //填单
    begin
      If mdata_M3['FStockInWriteID']=UserNumID then  //操作者为本人
      begin
        TB_Del3.Visible:=mdlData.CheckFrmRights(TFrm_StockIn.ClassName,'删除');
        TB_Del_One.Visible:=mdlData.CheckFrmRights(TFrm_StockIn.ClassName,'删除');
        N_Del.Visible:=mdlData.CheckFrmRights(TFrm_StockIn.ClassName,'删除');
        TB_Edit3.Visible:=mdlData.CheckFrmRights(TFrm_StockIn.ClassName,'修改');
        N_Edit.Visible:=mdlData.CheckFrmRights(TFrm_StockIn.ClassName,'修改');
        TB_Auto.Visible:=mdlData.CheckFrmRights(TFrm_StockIn.ClassName,'修改');
        TB_Submit.Visible:=mdlData.CheckFrmRights(TFrm_StockIn.ClassName,'提交');
        N_Submit.Visible:=mdlData.CheckFrmRights(TFrm_StockIn.ClassName,'提交');
        TB_Submit.Caption:='提交';
        N_Submit.Caption:='提交';
      end
      else
      begin
        TB_Del3.Visible:=False;
        TB_Del_One.Visible:=False;
        N_Del.Visible:=False;
        TB_Edit3.Visible:=False;
        N_Edit.Visible:=False;
        TB_Auto.Visible:=False;
        TB_Submit.Visible:=False;
        N_Submit.Visible:=False;
      end;
     { TB_Check.Visible:=False;
      N_Check.Visible:=False;
      TB_Audit.Visible:=False;
      N_Audit.Visible:=False;
      TB_PushDown.Visible:=False;
      N_PushDown.Visible:=False; }
    end;
  end;
  Case mdata_M3['FStockInStatus'] of
    1:       //提交
    begin
      If mdata_M3['FStockInWriteID']=UserNumID then  //提交者为本人
      begin
        TB_Submit.Visible:=mdlData.CheckFrmRights(TFrm_StockIn.ClassName,'提交');
        N_Submit.Visible:=mdlData.CheckFrmRights(TFrm_StockIn.ClassName,'提交');
        TB_Submit.Caption:='反提交';
        N_Submit.Caption:='反提交';
      end
      else
      begin
        TB_Submit.Visible:=False;
        N_Submit.Visible:=False;
      end;
      TB_Del3.Visible:=False;
      TB_Del_One.Visible:=False;
      N_Del.Visible:=False;
      TB_Edit3.Visible:=False;
      N_Edit.Visible:=False;
      TB_Auto.Visible:=False;
     { TB_Check.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake_PlanTender.ClassName,'校对');
      N_Check.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake_PlanTender.ClassName,'校对');
      TB_Check.Caption:='校对';
      N_Check.Caption:='校对';
      TB_Audit.Visible:=False;
      N_Audit.Visible:=False;
      TB_PushDown.Visible:=False;
      N_PushDown.Visible:=False; }
    end;
  end;
{
  Case mdata_M['FPlanTenderStatus'] of
    2:           //校对
    begin
      TB_Check.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake_PlanTender.ClassName,'校对');
      N_Check.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake_PlanTender.ClassName,'校对');
      TB_Check.Caption:='反校对';
      N_Check.Caption:='反校对';
      TB_Del.Visible:=False;
      N_Del.Visible:=False;
      TB_Edit.Visible:=False;
      N_Edit.Visible:=False;
      TB_Submit.Visible:=False;
      N_Submit.Visible:=False;
      TB_Audit.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake_PlanTender.ClassName,'审核');
      N_Audit.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake_PlanTender.ClassName,'审核');
      TB_Audit.Caption:='审核';
      N_Audit.Caption:='审核';
      TB_PushDown.Visible:=False;
      N_PushDown.Visible:=False;
    end;
  end;
  Case mdata_M['FPlanTenderStatus'] of
    3:           //审核
    begin
      TB_Audit.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake_PlanTender.ClassName,'审核');
      N_Audit.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake_PlanTender.ClassName,'审核');
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
      TB_PushDown.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake_PlanTender.ClassName,'下推');
      N_PushDown.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake_PlanTender.ClassName,'下推');
      TB_PushDown.Caption:='下推';
      N_PushDown.Caption:='下推';
    end;
  end;
  Case mdata_M['FPlanTenderStatus'] of
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
      TB_PushDown.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake_PlanTender.ClassName,'下推');
      N_PushDown.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake_PlanTender.ClassName,'下推');
      TB_PushDown.Caption:='反下推';
      N_PushDown.Caption:='反下推';
    end;
  end;

    }
end;

procedure TFrm_StockIn.E_FItemNumber_CopyPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry,qry1: TADOQuery;
begin
   qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
   qry1:=TADOQuery.Create(self);
  qry1.ConnectionString:=mdlData.ReadConnStr;
   try
     qry.SQL.Text:='select * from V_FileItem where FDepartmentID=:FDepartmentID and FItemNumber=:FItemNumber order by FItemNumber ';
     qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
     qry.Parameters.FindParam('FItemNumber').value:=Trim(E_FItemNumber_Copy.Text);
     qry.Open;
   finally
      ;
   end;
   If qry.RecordCount=0 then
   begin
     try
       qry.SQL.Text:='select * from VT_FileItem where FDepartmentID=:FDepartmentID';
       qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
       qry.Open;
     finally
       ;
     end;

     selValue:=select('选择档案号','FNumber','FParentNumber','FNumber','FName',qry);
     If (Length(selValue)>0) and (qry.FieldByName('FDetail').Value<>0) then
     begin
       E_FItemIDCopy.Text:=qry.FieldByName('FItemID').Value;
       try
         qry1.SQL.Text:='select * from V_FileItem where FDepartmentID=:FDepartmentID and FItemID=:FItemID';
         qry1.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
         qry1.Parameters.FindParam('FItemID').value:=qry.FieldByName('FItemID').Value;
         qry1.Open;
       finally
          ;
       end;
       If qry1.RecordCount>0 then
       begin
         E_FItemNumber_Copy.Text:=qry1.FieldByName('FBranchItemNumber').Value;
         E_FItemIDCopy.Text:=qry1.FieldByName('FItemID').Value;
         E_FItemNoCopy.Text:=qry1.FieldByName('FItemNo').AsString;
         end;
     end
     else
       application.MessageBox('请选择明细！','系统提示',MB_ICONINFORMATION);
     Exit;
   end;

   If qry.RecordCount=1 then
   begin
     E_FItemNumber_Copy.Text:=qry.FieldByName('FBranchItemNumber').Value;
     E_FItemIDCopy.Text:=qry.FieldByName('FItemID').Value;
     E_FItemNoCopy.Text:=qry.FieldByName('FItemNo').Value;
     Exit;
   end
   else
   begin
    selValue:=select('选择档案信息','FBranchItemNumber','FItemNumber','FBranchItemNumber','FBranchItemNumber;FClientShortName',qry);
    If (Length(selValue)>0) then
    begin
      E_FItemNumber_Copy.Text:=qry.FieldByName('FBranchItemNumber').Value;
      E_FItemIDCopy.Text:=qry.FieldByName('FItemID').Value;
      E_FItemNoCopy.Text:=qry.FieldByName('FItemNo').Value;
    end;
    Exit;
  end;
end;

procedure TFrm_StockIn.TB_CopyClick(Sender: TObject);
var
  proc:TADOStoredProc;
  P_Retinf:String;

begin
  If (E_FItemIDCopy.Text=Null) or (Trim(E_FItemIDCopy.Text)='') or (Trim(E_FItemNumber_Copy.Text)='') then
  begin
    application.MessageBox('关键字不能为空！请重新输入','系统提示',MB_ICONERROR);
    Exit;
  end;

  P_List :='【'+mdata_M3['FBranchItemNumber']+'】至【'+E_FItemNumber_Copy.Text+'】';
  If application.MessageBox(Pchar('警告：是否复制编号：【'+P_List+'】的入库单信息？'+chr(13)+chr(13)
                                 +'复制数据操作将不可恢复，确定要复制吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
  proc:=TADOStoredProc.Create(self);
  proc.ConnectionString:=mdlData.ReadConnStr;
  proc.CommandTimeout:=500;

  try
    proc.ProcedureName:='P_StockIn_Copy;1';
    with proc.Parameters.AddParameter do
    begin
      DataType := ftInteger;
      Direction := pdinput;
      name := '@FItemID';
      value:=mdata3['FItemID'];
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
      DataType := ftInteger;
      Direction := pdinput;
      name := '@FItemIDCopy';
      value:=StrToInt(E_FItemIDCopy.Text);
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftInteger;
      Direction := pdinput;
      name := '@FStockInWriteID';
      value:=UserNumID;
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftInteger;
      Direction := pdinput;
      name := '@FDepartmentID';
      value:=UserFDepartmentID;
    end;

    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdoutput;
      size:=255;
      name := '@Retinf';
      value:='';
    end;
    proc.ExecProc;
    P_Retinf:=proc.Parameters.FindParam('@Retinf').Value;
    Messagedlg(P_Retinf,mtInformation,[mbok],0);

  finally
     ;
  end;


end;

procedure TFrm_StockIn.cxGV_M3FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
var qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  if P_state =2 then  //不在新增、修改状态
  begin
    If (mData_M3['FStockInItemID']<>0) and (mData_M3['FStockInItemID']<>null) then
    begin
      If MyItemListID(qry,Mdata3,'V_StockInList',' FStockInItemID='+IntToStr(Mdata_M3['FStockInItemID']),'FFullNumber',) then
     Act_Status.Execute  //权限设置
    end;
  end;     
end;

procedure TFrm_StockIn.cxGV_M3CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var qry: TADOQuery;
begin
{  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If (mData_M3['FStockInItemID']<>0) and (mData_M3['FStockInItemID']<>null) then
  begin
    If MyItemList(qry,Mdata3,'V_StockInList','cast(FStockInItemID as varchar(20))',
                  Mdata_M3['FStockInItemID'],'FFullNumber') then

   Act_Status.Execute  //权限设置
  end;

  }
end;

procedure TFrm_StockIn.TB_Print_MLClick(Sender: TObject);
var
   qry:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  try
    qry.SQL.Text:='select ''○○'' as Num,'
                 +'(case cast(FPartsCode as numeric(18,0)) when 0 then 1 else cast(FPartsCode as numeric(18,0)) end) as xh,'
                 +'FPartsNumber as th,FPartsCode,FPartsName as mc,''  '' gg,FItemListQry as FSumQry,sum(FSuttle) as FSuttle,sum(FItemListQry*FSumSuttle) as FSumSuttle,'
                 +'''      '' as FStockInListRemark,''  '' as SelRemark ,FClientFullName,FBranchItemNumber as FPartsNumber,FBranchFileNo,FItemModel,FPartsCode,FPartsName,'' '' as FFullNumber,'' '' ssFullNumber '
                 +' from V_StockInList where Num=''★★'' and FItemID=:FItemID  '
                 +' group by Num,FPartsNumber,FPartsCode,FPartsName,FItemListQry,FClientFullName,FBranchItemNumber,FBranchFileNo ,FItemModel,FPartsCode,FPartsName '
                 +' order by FBranchItemNumber,FPartsCode ';
    qry.Parameters.FindParam('FItemID').value:=Mdata_M3['FItemID'];
    qry.Open;
  finally
     ;
  end;
  mdata3.Close;
  mdata3.CopyFromDataSet(qry);
  Mdata3.Active:=True;
  If mdata3.RecordCount>0 then
  begin
    mdata3.SortedField:='FPartsCode';
    FrReport.LoadFromFile(ExtractFileDir(Application.ExeName)+'\Report_DesignBOM_StockIn.frf');
    FrReport.ShowReport;
  end
  else
    Application.MessageBox(PChar('没有需要打印的数据！'), '错误', MB_OK +MB_ICONSTOP);

  mdata3.SortedField:='';

end;

procedure TFrm_StockIn.TB_Del_OneClick(Sender: TObject);
var
  qry:TADOQuery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  P_List :='【'+Mdata3['th']+'】';

  If application.MessageBox(Pchar('警告：是否删除图号为：【'+P_List+'】的入库单信息？'+chr(13)+chr(13)
                                 +'删除数据操作将不可恢复，确定要删除吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
  If application.MessageBox(Pchar('再次警告：是否删除图号为：【'+P_List+'】的入库单信息？'+chr(13)+chr(13)
                                 +'删除数据操作将不可恢复，确定要删除吗？'),'再次警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
  try
    qry.SQL.Text:='Delete from T_StockInList where FStockInListID=:FStockInListID';
    qry.Parameters.FindParam('FStockInListID').value:=Mdata3['FStockInListID'];
    qry.ExecSQL;
  finally
    ;
  end;


end;

procedure TFrm_StockIn.ToolButton2Click(Sender: TObject);
var
  Query_Sp:TADOStoredProc;
  i,k,s,ReNum,ReNumLoop,R_Count:Integer;
  ExcelApp,MyWorkBook,mysheet: Variant;
  filepath,savefilepath,Sqlstr,copystart,copyend,copystart1,aa,rs:string;
  ListQry:Tadoquery;
begin
  filepath:=Extractfilepath(application.ExeName)+'入库清单模版.xls';
  if (Mdata3.Active) and (Mdata3.recordcount>0) then
  Begin
    SaveDialog1.FileName:='入库清单('+Mdata3.FieldByName('FBranchItemNumber').AsString+')'+Mdata3.FieldByName('FPartsNumber').AsString;
    SaveDialog1.Filter:='.xls';
    SaveDialog1.Execute;

    if (Mdata3.FieldByName('FPartsNumber').AsString<>'') Or (Mdata3.FieldByName('FPartsNumber').AsString<>Null) then
        savefilepath:=SaveDialog1.FileName+'.xls';

    if FileExists(savefilepath) then
    begin
      DeleteFile(savefilepath) ;
    end;

    StatusBar1.Panels[5].text:='正在导出入库清单:'+Mdata3.FieldByName('FPartsNumber').AsString+'的信息..请稍等!!';
    ExcelApp:= CreateOleObject('Excel.Application' );
    MyWorkBook:=ExcelApp.WorkBooks.Open( filepath );
    //ExcelApp.Visible:=True;
    MyWorkBook.WorkSheets[1].Cells[3,3].Value := Mdata3.FieldByName('FPartsNumber').AsString; //档 案 号
    MyWorkBook.WorkSheets[1].Cells[3,5].Value := Mdata3.FieldByName('FClientFullName').AsString+'  '+Mdata3.FieldByName('FItemModel').AsString; //项目名称
    i:=6;
    MyWorkBook.WorkSheets[1].Name:=Mdata3.FieldByName('FPartsNumber').AsString;

    StatusBar1.Panels[5].text:='正在导出入库清单:'+Mdata3.FieldByName('FPartsNumber').AsString+'的明细信息..请稍等!!';
    copystart:='A'+IntToStr(i);
    if Mdata3.recordcount>0 then
    Begin
      if Mdata3.recordcount>1 then
      Begin
        copystart:='A'+IntToStr(i);
        copystart1:='A'+IntToStr(i+1);
        copyend:='L'+IntToStr(i);
        ReNum:=Mdata3.recordcount-1+(25-((mdata3.RecordCount+1) mod 25));
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
        R_Count:=Mdata3.recordcount;
      end;
      Mdata3.first;
      K:=0 ;
      while not Mdata3.eof do
      Begin
        //MyWorkBook.WorkSheets[1].Cells[i,1].Value := inttostr(K+1); //序号
        MyWorkBook.WorkSheets[1].Cells[i,1].Value := Mdata3.FieldByName('Num').AsString; //部件名称 +规格
        if  Mdata3.FieldByName('Num').AsString='★★' then
        begin
          rs:='A'+IntToStr(i)+':L'+IntToStr(i);
          MyWorkBook.worksheets[1].range[rs].font.bold:=True;
        //  MyWorkBook.worksheets[1].Rows(i).font.bold:=True;
        end;
        MyWorkBook.WorkSheets[1].Cells[i,2].Value := Mdata3.FieldByName('th').AsString; //部件名称 +规格
        MyWorkBook.WorkSheets[1].Cells[i,4].Value := Mdata3.FieldByName('mc').AsString+Mdata3.FieldByName('SelRemark').AsString+' '+Mdata3.FieldByName('gg').AsString; //单位
        MyWorkBook.WorkSheets[1].Cells[i,6].Value := Mdata3.FieldByName('FSumQry').AsString; //单价
        MyWorkBook.WorkSheets[1].Cells[i,7].Value := Mdata3.FieldByName('FSuttle').AsString; //金  额
        MyWorkBook.WorkSheets[1].Cells[i,8].Value := Mdata3.FieldByName('FSumSuttle').AsString; //交货期
        MyWorkBook.WorkSheets[1].Cells[i,12].Value := Mdata3.FieldByName('FStockInListRemark').AsString; //备注
        Mdata3.next;
        i:=i+1;
        k:=k+1;
      End;
      {MyWorkBook.WorkSheets[1].Cells[i,8].Value := '=SUM(h9:h'+IntToStr(i-1)+')'; //合计重量
      MyWorkBook.WorkSheets[1].Cells[i+2,2].Value:=AnsiReplaceStr(MyWorkBook.WorkSheets[1].Cells[i+2,2].Value,'A',Mdata.FieldByName('FMaterialDate').AsString); //单价执行日期
      MyWorkBook.WorkSheets[1].Cells[i+3,2].Value:=AnsiReplaceStr(MyWorkBook.WorkSheets[1].Cells[i+3,2].Value,'A',Mdata.FieldByName('FMaterialDate').AsString); //单价执行日期
      MyWorkBook.WorkSheets[1].Cells[i+3,2].Value:=AnsiReplaceStr(MyWorkBook.WorkSheets[1].Cells[i+3,2].Value,'B',Mdata.FieldByName('FAdvancePercent').AsString); //预付款
      MyWorkBook.WorkSheets[1].Cells[i+5,4].Value:=AnsiReplaceStr(MyWorkBook.WorkSheets[1].Cells[i+5,4].Value,'C',Mdata.FieldByName('FE05').AsString); //补充说明
       }
    end;

    StatusBar1.Panels[5].text:='入库清单:'+Mdata3.FieldByName('FPartsNumber').AsString+'的信息导出完成!!';
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

procedure TFrm_StockIn.PC_2Change(Sender: TObject);
begin
  inherited;
{  If PC_2.ActivePage=TS_WorkBOM then
     TB_Ref2.Click;
  If PC_2.ActivePage=TS_StockIn then
     TB_Ref3.Click;
 }
end;

end.
