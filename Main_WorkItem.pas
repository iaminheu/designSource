unit Main_WorkItem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FrmGridBass, ExtCtrls, StdCtrls, DsFancyButton, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  dxmdaset, cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid,
  cxTextEdit, cxDropDownEdit, cxCalendar, cxMaskEdit, cxContainer, cxLabel,
  cxDBLookupComboBox, ADODB, cxButtonEdit, Grids, DBGrids, ComCtrls,Comobj, RzShellDialogs,
  ToolWin, ImgList, FR_DSet, FR_DBSet, FR_Class, cxRadioGroup, Buttons,
  cxGroupBox, cxCheckBox, cxCurrencyEdit, RzPanel, RzSplit, RzTabs,IniFiles,
  TFlatPanelUnit, cxLookAndFeelPainters, cxButtons, cxTimeEdit, jpeg,
  cxGridBandedTableView, ActnList, cxDBEdit,Excel97,StrUtils, cxBlobEdit;

type
  TFrm_WorkItem = class(TFrm_GridBass)
    MData: TdxMemData;
    DS_Mdata: TDataSource;
    ImageList: TImageList;
    frReport: TfrReport;
    frDBDataSet: TfrDBDataSet;
    PC_2: TRzPageControl;
    TS_Edit: TRzTabSheet;
    TS_Brow: TRzTabSheet;
    PanelBkGnd: TPanel;
    MDataFParentNumber: TStringField;
    MDataFNumber: TStringField;
    MDataFBalanceName: TStringField;
    MDataFBalanceModel: TStringField;
    MDataFUnitName: TStringField;
    MDataFWorkPrice: TCurrencyField;
    MDataFRemark: TStringField;
    MDataFWorkID: TIntegerField;
    MDataFBalanceID: TIntegerField;
    MDataFItemID: TIntegerField;
    MDataFPactNo: TStringField;
    MDataFClientshortName: TStringField;
    MDataFMaterialDate: TStringField;
    MDataFBalancePrice: TStringField;
    MDataFBalancePriceID: TIntegerField;
    MDataFAgentBalanceNum: TStringField;
    MDataFAgentBalancePactNum: TStringField;
    MDataFAgentBalanceDate: TDateTimeField;
    MDataFAgentID: TStringField;
    MDataFAgentBalanceItemID: TStringField;
    MDataFBalanceQry: TStringField;
    MDataFAdvanceQry: TStringField;
    MDataFQualityQry: TStringField;
    MDataFWorkItemListRemark: TStringField;
    MDataFWorkItemListNum: TIntegerField;
    MDataFWorkListNum: TIntegerField;
    MDataFWorkListRemark: TStringField;
    MDataFDeliveryDate: TDateField;
    MDataFEstimateAmount: TCurrencyField;
    MDataFAdvanceAmount: TCurrencyField;
    MDataFPrice: TFloatField;
    MDataFWeight: TFloatField;
    MDataFQry: TFloatField;
    MDataFE05: TStringField;
    MDataFSollWeight: TFloatField;
    MDataFSingleWeight: TFloatField;
    MDataFLength: TIntegerField;
    MDataFKm: TIntegerField;
    MDataFOutPrice: TFloatField;
    RzSizePanel1: TRzSizePanel;
    MyTreeView: TTreeView;
    Panel3: TPanel;
    cxGrid: TcxGrid;
    cxGV: TcxGridDBTableView;
    FWorkListNum: TcxGridDBColumn;
    FBalanceName: TcxGridDBColumn;
    FBalanceModel: TcxGridDBColumn;
    FUnitName: TcxGridDBColumn;
    FSollWeight: TcxGridDBColumn;
    Sel: TcxGridDBColumn;
    FLength: TcxGridDBColumn;
    FQry: TcxGridDBColumn;
    FEstimateQry: TcxGridDBColumn;
    FBalanceBasePrice: TcxGridDBColumn;
    FOutPrice: TcxGridDBColumn;
    FBalancePrice: TcxGridDBColumn;
    FEstimateAmount: TcxGridDBColumn;
    SumFBalanceQry: TcxGridDBColumn;
    SumFBalanceAmount: TcxGridDBColumn;
    FDeliveryDateTxt: TcxGridDBColumn;
    FWorkListRemark: TcxGridDBColumn;
    FRemark: TcxGridDBColumn;
    FBalanceID: TcxGridDBColumn;
    FBalancePriceID: TcxGridDBColumn;
    FItemID: TcxGridDBColumn;
    FWorkListID: TcxGridDBColumn;
    FWorkItemNum: TcxGridDBColumn;
    FMaterialDate: TcxGridDBColumn;
    cxGL: TcxGridLevel;
    Panel2: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label7: TLabel;
    Label15: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    SB_1: TSpeedButton;
    Label16: TLabel;
    Label17: TLabel;
    Label11: TLabel;
    E_FAgentNameQry: TcxButtonEdit;
    E_FAgentID: TcxButtonEdit;
    E_FClientFullName: TcxButtonEdit;
    E_FWorkItemDate: TcxDateEdit;
    E_FDeliveryPlace: TcxButtonEdit;
    E_FJobPlace: TcxButtonEdit;
    E_FMaterialDate: TcxButtonEdit;
    E_FWorkItemID: TcxTextEdit;
    E_FItemId: TcxTextEdit;
    E_FJobMode: TcxButtonEdit;
    E_FAdvancePercent: TcxCurrencyEdit;
    E_FDeliveryDate: TcxDateEdit;
    E_FDepartmentNum: TcxTextEdit;
    E_FE05: TcxButtonEdit;
    E_FWorkData: TcxButtonEdit;
    E_FWorkItemRemark: TcxButtonEdit;
    E_FIsdel: TcxCheckBox;
    E_FDeliveryDateTxt: TcxButtonEdit;
    E_FWorkItemNum: TcxMaskEdit;
    E_FItemQry: TcxCurrencyEdit;
    Panel_button: TPanel;
    Bevel_button: TBevel;
    OKBtn: TcxButton;
    CancelBtn: TcxButton;
    mData2: TdxMemData;
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
    StringField10: TStringField;
    IntegerField4: TIntegerField;
    StringField11: TStringField;
    StringField12: TStringField;
    DateTimeField1: TDateTimeField;
    StringField13: TStringField;
    StringField14: TStringField;
    StringField15: TStringField;
    StringField16: TStringField;
    StringField17: TStringField;
    StringField18: TStringField;
    StringField19: TStringField;
    IntegerField5: TIntegerField;
    IntegerField6: TIntegerField;
    StringField20: TStringField;
    DateField1: TDateField;
    CurrencyField2: TCurrencyField;
    CurrencyField3: TCurrencyField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    StringField21: TStringField;
    FloatField4: TFloatField;
    FloatField5: TFloatField;
    IntegerField7: TIntegerField;
    IntegerField8: TIntegerField;
    FloatField6: TFloatField;
    DS_Mdata2: TDataSource;
    Panel1: TPanel;
    ToolBar1: TToolBar;
    TB_App: TToolButton;
    TB_Edit: TToolButton;
    TB_Del: TToolButton;
    TB_zf: TToolButton;
    TB_Ref: TToolButton;
    TB_Out: TToolButton;
    ToolButton5: TToolButton;
    TB_Down: TToolButton;
    TB_Prin_xls: TToolButton;
    TB_Prin: TToolButton;
    ToolButton2: TToolButton;
    TB_EXIT: TToolButton;
    L_Caption: TLabel;
    Panel4: TPanel;
    RzSizePanel2: TRzSizePanel;
    Panel5: TPanel;
    ToolBar2: TToolBar;
    TB_Ref2: TToolButton;
    TB_Out2: TToolButton;
    ToolButton11: TToolButton;
    TB_Down2: TToolButton;
    ToolButton16: TToolButton;
    ToolButton17: TToolButton;
    TB_EditOne: TToolButton;
    FBalanceProductName: TcxGridDBColumn;
    TS_Price: TRzTabSheet;
    RzSizePanel3: TRzSizePanel;
    MyTreeView3: TTreeView;
    cxGrid3: TcxGrid;
    cxGV3: TcxGridDBTableView;
    FBalanceName_3: TcxGridDBColumn;
    FBalanceModel_3: TcxGridDBColumn;
    FUnitName_3: TcxGridDBColumn;
    FSollWeight_3: TcxGridDBColumn;
    FMaterialPrice: TcxGridDBColumn;
    FWorkPrice: TcxGridDBColumn;
    FBalanceBasePrice_3: TcxGridDBColumn;
    FRemark_3: TcxGridDBColumn;
    FMaterialDate_3: TcxGridDBColumn;
    FBalancePriceID_3: TcxGridDBColumn;
    cxGL3: TcxGridLevel;
    ToolBar3: TToolBar;
    ToolButton6: TToolButton;
    DS_Mdata3: TDataSource;
    mData3: TdxMemData;
    ToolButton7: TToolButton;
    PSel: TcxGridDBColumn;
    FBalanceAdjust: TcxGridDBColumn;
    TB_Audit: TToolButton;
    MDataFBalanceBasePrice: TFloatField;
    FWorkResizePrice: TcxGridDBColumn;
    FWorkOutPrice: TcxGridDBColumn;
    MDataFWorkResizePrice: TFloatField;
    MDataFWorkOutPrice: TFloatField;
    FBalanceWorkAdjust: TcxGridDBColumn;
    FWorkResizePrice_3: TcxGridDBColumn;
    E_FProductName: TcxTextEdit;
    ToolButton9: TToolButton;
    TB_Ref3: TToolButton;
    TB_DelOne: TToolButton;
    FWorkDate: TcxGridDBColumn;
    MDataFDeliveryDateTxt: TStringField;
    Label18: TLabel;
    E_FWorkStatus: TcxTextEdit;
    TB_Check: TToolButton;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    E_FPriceDateID: TcxTextEdit;
    FNumber_3: TcxGridDBColumn;
    FProductName_3: TcxGridDBColumn;
    E_FSystem: TcxButtonEdit;
    E_FBidDate: TcxDateEdit;
    Label23: TLabel;
    MDataFEstimateQry: TFloatField;
    FNumber1: TcxGridDBColumn;
    FWorkItemPrice: TcxGridDBColumn;
    TB_Submit: TToolButton;
    actionList: TActionList;
    Act_App: TAction;
    Act_Parts: TAction;
    Act_Edit: TAction;
    Act_Del: TAction;
    Act_Out: TAction;
    Act_cldy: TAction;
    Act_Save: TAction;
    Act_Submit: TAction;
    Act_Check: TAction;
    Act_Audit: TAction;
    Act_PushDown: TAction;
    TB_PushDown: TToolButton;
    Act_Accept: TAction;
    Act_FeedBack: TAction;
    E_FStatusNotes: TcxDBTextEdit;
    MDataFBranchFileNo: TStringField;
    E_FItemNumber: TcxButtonEdit;
    E_FBranchFileNo: TcxButtonEdit;
    E_FItemModel: TcxTextEdit;
    E_FWorkWrite: TcxTextEdit;
    E_FWorkCheck: TcxTextEdit;
    E_FWorkAudit: TcxTextEdit;
    E_FWorkAccept: TcxTextEdit;
    E_FWorkAcceptDate: TcxDateEdit;
    E_FWorkAuditDate: TcxDateEdit;
    E_FWorkCheckDate: TcxDateEdit;
    E_FWorkWriteDate: TcxDateEdit;
    MDataFStatusNotes: TStringField;
    MDataFWorkStatus: TIntegerField;
    FProductClass: TcxGridDBColumn;
    PC2_1: TPageControl;
    TS_WorkNum: TTabSheet;
    TBar_Sel: TToolBar;
    TB_WorkNum: TcxButton;
    TS_Agent: TTabSheet;
    MyTreeView_Agent: TTreeView;
    ToolBar5: TToolBar;
    TB_Agent: TcxButton;
    TS_Item: TTabSheet;
    MyTreeView_Item: TTreeView;
    ToolBar6: TToolBar;
    TB_Item: TcxButton;
    MyTreeView_WorkNum: TTreeView;
    cxGrid5: TcxGrid;
    cxGV5: TcxGridDBTableView;
    FIsDel: TcxGridDBColumn;
    FClientshortName_5: TcxGridDBColumn;
    FBranchFileNo_5: TcxGridDBColumn;
    FBranchItemNumber_5: TcxGridDBColumn;
    FWorkItemNum_5: TcxGridDBColumn;
    FBalanceProductName_5: TcxGridDBColumn;
    FNumber_5: TcxGridDBColumn;
    FBalanceName_5: TcxGridDBColumn;
    FBalanceModel_5: TcxGridDBColumn;
    FUnitName_5: TcxGridDBColumn;
    FInvoice_5: TcxGridDBColumn;
    FInvoiceDate_5: TcxGridDBColumn;
    FMaterialDate_5: TcxGridDBColumn;
    FQry_5: TcxGridDBColumn;
    FBalanceBasePrice_5: TcxGridDBColumn;
    FOutPrice_5: TcxGridDBColumn;
    FWorkOutPrice_5: TcxGridDBColumn;
    FBalanceAdjust_5: TcxGridDBColumn;
    FBalancePrice_5: TcxGridDBColumn;
    FEstimateQry_5: TcxGridDBColumn;
    FEstimateAmount_5: TcxGridDBColumn;
    SumFBalanceQry_5: TcxGridDBColumn;
    SumFBalanceAmount_5: TcxGridDBColumn;
    FWorkListRemark_5: TcxGridDBColumn;
    FDeliveryPlace_5: TcxGridDBColumn;
    FJobPlace_5: TcxGridDBColumn;
    FAgentName_5: TcxGridDBColumn;
    FAdvanceQry_5: TcxGridDBColumn;
    FQualityQry_5: TcxGridDBColumn;
    FBalanceNum_5: TcxGridDBColumn;
    FBalanceRemark_5: TcxGridDBColumn;
    FRemark_5: TcxGridDBColumn;
    FProductClass_5: TcxGridDBColumn;
    FProductSort_5: TcxGridDBColumn;
    FWorkItemRemark_5: TcxGridDBColumn;
    FWorkData_5: TcxGridDBColumn;
    FSysTem_5: TcxGridDBColumn;
    FJobSort_5: TcxGridDBColumn;
    FBalancePriceID_5: TcxGridDBColumn;
    FWorkListID_5: TcxGridDBColumn;
    cxGL5: TcxGridLevel;
    MData5: TdxMemData;
    StringField22: TStringField;
    StringField23: TStringField;
    StringField24: TStringField;
    StringField25: TStringField;
    StringField26: TStringField;
    CurrencyField4: TCurrencyField;
    StringField27: TStringField;
    IntegerField9: TIntegerField;
    IntegerField10: TIntegerField;
    IntegerField11: TIntegerField;
    StringField28: TStringField;
    StringField29: TStringField;
    StringField30: TStringField;
    IntegerField12: TIntegerField;
    StringField31: TStringField;
    StringField32: TStringField;
    DateTimeField2: TDateTimeField;
    StringField33: TStringField;
    StringField34: TStringField;
    StringField35: TStringField;
    StringField36: TStringField;
    StringField37: TStringField;
    FloatField7: TFloatField;
    FloatField8: TFloatField;
    IntegerField13: TIntegerField;
    BCDField1: TBCDField;
    BCDField2: TBCDField;
    FloatField9: TFloatField;
    FloatField10: TFloatField;
    DS_Mdata5: TDataSource;
    Button1: TButton;
    StatusBar1: TStatusBar;
    TB_WorkItem: TToolButton;
    SaveDialog1: TSaveDialog;
    FDeliveryDateTxt_5: TcxGridDBColumn;
    FIsDelList: TcxGridDBColumn;
    TB_FIsDelList: TToolButton;
    Act_FIsDelList: TAction;
    FIsDelList_5: TcxGridDBColumn;
    TB_BOMRight: TToolButton;
    ToolButton1: TToolButton;
    Panel23: TPanel;
    Bevel6: TBevel;
    Label24: TLabel;
    E_Locate: TcxButtonEdit;
    Act_MaxID_List: TAction;
    Act_MaxID: TAction;
    procedure FormResize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TB_EXITClick(Sender: TObject);
    procedure TB_DownClick(Sender: TObject);
    procedure MyTreeViewChange(Sender: TObject; Node: TTreeNode);
    procedure MyTreeViewExpanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure TB_RefClick(Sender: TObject);
    procedure OKBtnClick(Sender: TObject);
    procedure TB_AppClick(Sender: TObject);
    procedure TB_EditClick(Sender: TObject);
    procedure TB_DelClick(Sender: TObject);
    procedure CancelBtnClick(Sender: TObject);
    procedure TB_OutClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure E_FWorkMaxNumIDPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure Sel_ItemPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure Sel_PricePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure E_FDeliveryPlacePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure E_FJobPlacePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure Set_Open;
    procedure Set_Close;
    procedure TB_PrinClick(Sender: TObject);
    procedure E_FE05PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure SB_1Click(Sender: TObject);
    procedure MDataBeforePost(DataSet: TDataSet);
    procedure E_FWorkDataPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FWorkListRemarkPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure TB_zfClick(Sender: TObject);
    procedure E_FWorkItemRemarkPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure E_FDeliveryDateTxtDblClick(Sender: TObject);
    procedure E_FWorkItemNumDblClick(Sender: TObject);
    procedure E_FDeliveryDateTxtPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure E_FDeliveryDatePropertiesChange(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure TB_Prin_xlsClick(Sender: TObject);
    procedure MyTreeView_WorkNumExpanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure MyTreeView_WorkNumChange(Sender: TObject; Node: TTreeNode);
    procedure TB_Ref2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TB_EditOneClick(Sender: TObject);
    procedure MyTreeView3Expanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure MyTreeView3Change(Sender: TObject; Node: TTreeNode);
    procedure ToolButton7Click(Sender: TObject);
    procedure PSelPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure E_FMaterialDatePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure ToolButton9Click(Sender: TObject);
    procedure TB_Ref3Click(Sender: TObject);
    procedure TB_DelOneClick(Sender: TObject);
    procedure cxGVCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);

    procedure Set_Status;
    procedure TB_PushDownClick(Sender: TObject);
    procedure Act_AuditExecute(Sender: TObject);
    procedure Act_CheckExecute(Sender: TObject);
    procedure Act_SubmitExecute(Sender: TObject);
    procedure cxButtonEdit2PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure MyTreeView_AgentExpanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure MyTreeView_AgentChange(Sender: TObject; Node: TTreeNode);
    procedure TB_WorkNumClick(Sender: TObject);
    procedure TB_AgentClick(Sender: TObject);
    procedure TB_WorkItemClick(Sender: TObject);
    procedure Act_FIsDelListExecute(Sender: TObject);
    procedure cxGVFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure TB_BOMRightClick(Sender: TObject);
    procedure TB_ItemClick(Sender: TObject);
    procedure MyTreeView_ItemExpanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure MyTreeView_ItemChange(Sender: TObject; Node: TTreeNode);
    procedure ToolButton1Click(Sender: TObject);
    procedure E_LocatePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure Act_MaxID_ListExecute(Sender: TObject);
    procedure Act_MaxIDExecute(Sender: TObject);
  private
    ListItemFNumber,P_th:String;
    P_i:boolean;

    { Private declarations }
    function AddMain:bool;
    function AddList:bool;
    function AddRd:bool;
    function BalanceAddRd:bool;

    function EditRd:bool;
    function DelRd:bool;
    function ZFRd:bool;
    function EditMain:bool;
    function EditList:bool;
    function EditAddRd:bool;


  public
    P_state,P_Isleaf,P_MaxID,P_MaxID_List:integer;
    { Public declarations }
  end;

var
  Frm_WorkItem: TFrm_WorkItem;


implementation

uses FRMDATA, FrmWorkMain, COMMON, FrmSelect, ProgBar, PROGRASS;

{$R *.dfm}
procedure TFrm_WorkItem.Set_Status;
begin
  Case mdata['FWorkStatus'] of
    0:       //填单
    begin
      If mdata['FWorkWriteID']=UserNumID then  //操作者为本人
      begin
        TB_Edit.Visible:=mdlData.PermissionCheckRights(TFrm_WorkItem.ClassName,'修改');
        TB_Del.Visible:=mdlData.PermissionCheckRights(TFrm_WorkItem.ClassName,'删除');
        TB_Submit.Visible:=mdlData.PermissionCheckRights(TFrm_WorkItem.ClassName,'提交');
        TB_Submit.Caption:='提交';
      end
      else
      begin
        TB_Edit.Visible:=False;
        TB_Del.Visible:=False;
        TB_Submit.Visible:=False;
      end;
      TB_Check.Visible:=False;
      TB_Audit.Visible:=False;
      TB_PushDown.Visible:=False;
    end;
  end;
  Case mdata['FWorkStatus'] of
    1:       //提交
    begin
      If mdata['FWorkWriteID']=UserNumID then  //提交者为本人
      begin
        TB_Submit.Visible:=mdlData.PermissionCheckRights(TFrm_WorkItem.ClassName,'提交');
        TB_Submit.Caption:='反提交';
      end
      else
      begin
        TB_Submit.Visible:=False;
      end;
      TB_Edit.Visible:=False;
      TB_Del.Visible:=False;
      TB_Check.Visible:=mdlData.PermissionCheckRights(TFrm_WorkItem.ClassName,'校对');
      TB_Check.Caption:='校对';
      TB_Audit.Visible:=False;
      TB_PushDown.Enabled:=False;
      TB_FIsDelList.Visible:=False;
    end;
  end;

  Case mdata['FWorkStatus'] of
    2:           //校对
    begin
      If mdata['FWorkCheckID']=UserNumID then  //校对者为本人
      begin
        TB_Check.Visible:=mdlData.PermissionCheckRights(TFrm_WorkItem.ClassName,'校对');
        TB_Check.Caption:='反校对';
      end
      else
      begin
        TB_Check.Visible:=False;
      end;
      TB_Edit.Visible:=False;
      TB_Del.Visible:=False;
      TB_Submit.Visible:=False;
      TB_Audit.Visible:=mdlData.PermissionCheckRights(TFrm_WorkItem.ClassName,'审核');
      TB_Audit.Caption:='审核';
      TB_PushDown.Visible:=False;
    end;
  end;
  Case mdata['FWorkStatus'] of
    3:           //审核
    begin
      If mdata['FWorkAuditID']=UserNumID then  //审核者为本人
      begin
        TB_Audit.Visible:=mdlData.PermissionCheckRights(TFrm_WorkItem.ClassName,'审核');
        TB_Audit.Caption:='反审核';
      end
      else
      begin
        TB_Audit.Visible:=False;
      end;
      TB_Edit.Visible:=False;
      TB_Del.Visible:=False;
      TB_Submit.Visible:=False;
      TB_Check.Visible:=False;
      TB_PushDown.Visible:=mdlData.PermissionCheckRights(TFrm_WorkItem.ClassName,'下推');
      TB_PushDown.Caption:='下推';
    end;
  end;
  Case mdata['FWorkStatus'] of
    4:        //下推
    begin
      TB_Edit.Visible:=False;
      TB_Del.Visible:=False;
      TB_Submit.Visible:=False;
      TB_Check.Visible:=False;
      TB_Audit.Visible:=False;
      TB_PushDown.Visible:=mdlData.PermissionCheckRights(TFrm_WorkItem.ClassName,'下推');
      TB_PushDown.Caption:='下推';
    end;
  end;
end;



procedure TFrm_WorkItem.Set_Open;
begin
  TB_Ref.Visible:=False;
  TB_App.Visible:=False;
  TB_Edit.Visible:=False;
  TB_Del.Visible:=False;
  //TB_EditOne.Visible:=False;
  TB_Audit.Visible:=False;
  MyTreeView.Enabled:=False;

  OKBtn.Visible:=True;
  CancelBtn.Visible:=True;
  cxGV.OptionsData.Editing:=True;

  E_FBranchFileNo.Enabled:=True;
  E_FItemNumber.Enabled:=True;
  E_FAdvancePercent.Enabled:=True;
  E_FWorkItemNum.Enabled:=True;
  E_FWorkItemDate.Enabled:=True;
  E_FDeliveryPlace.Enabled:=True;
  E_FDeliveryDate.Enabled:=True;
  E_FBidDate.Enabled:=True;
  E_FAgentNameQry.Enabled:=True;
  E_FMaterialDate.Enabled:=True;
  E_FJobMode.Enabled:=True;
  E_FE05.Enabled:=True;
  E_FIsdel.Enabled:=True;
  
  SB_1.Enabled:=True;
  E_FWorkItemRemark.Enabled:=True;
  E_FDeliveryDateTxt.Enabled:=True;

  FWorkListNum.Options.Editing:=False;
  FBalanceName.Options.Editing:=False;
  FBalanceModel.Options.Editing:=False;
  FUnitName.Options.Editing:=False;
  FSollWeight.Options.Editing:=False;


  FWorkResizePrice.Options.Editing:=False;
  FBalanceBasePrice.Options.Editing:=False;
  FBalanceWorkAdjust.Options.Editing:=False;
  FBalanceAdjust.Options.Editing:=False;
  FBalancePrice.Options.Editing:=False;
  SumFBalanceQry.Options.Editing:=False;
  SumFBalanceAmount.Options.Editing:=False;
  FRemark.Options.Editing:=False;
  FWorkItemNum.Options.Editing:=False;
  FMaterialDate.Options.Editing:=False;
  FBalanceID.Options.Editing:=False;
  FBalancePriceID.Options.Editing:=False;
  FItemID.Options.Editing:=False;
  FWorkListID.Options.Editing:=False;
  FBalanceProductName.Options.Editing:=False;

  cxGV.NavigatorButtons.Delete.Enabled:=True;
  cxGV.NavigatorButtons.Insert.Enabled:=True;

  cxGV.OptionsData.Deleting:=True;
  cxGV.OptionsData.Appending:=True;
  cxGV.OptionsData.Inserting:=True;


end;

procedure TFrm_WorkItem.Set_Close;
begin
  TB_Ref.Visible:=True;
  TB_App.Visible:=True;
  TB_Edit.Visible:=True;
  TB_Del.Visible:=True;
  //TB_EditOne.Visible:=True;
  TB_Audit.Visible:=True;
  MyTreeView.Enabled:=True;

  OKBtn.Visible:=False;
  CancelBtn.Visible:=False;
  cxGV.OptionsData.Editing:=False;

  E_FDeliveryDateTxt.Enabled:=False;
  E_FAdvancePercent.Enabled:=False;
  E_FWorkItemNum.Enabled:=False;
  E_FWorkItemDate.Enabled:=False;
  E_FBranchFileNo.Enabled:=False;
  E_FItemNumber.Enabled:=False;
  E_FDeliveryPlace.Enabled:=False;
  E_FDeliveryDate.Enabled:=False;
  E_FBidDate.Enabled:=False;
  E_FAgentNameQry.Enabled:=False;
  E_FMaterialDate.Enabled:=False;
  E_FMaterialDate.Enabled:=False;
  E_FJobMode.Enabled:=False;
 //E_FJobPlace.Enabled:=False;
  E_FE05.Enabled:=False;
  SB_1.Enabled:=False;
  E_FWorkItemRemark.Enabled:=False;
 // E_FWorkData.Enabled:=False;
  E_FIsdel.Enabled:=False;

  cxGV.OptionsData.Deleting:=False;
  cxGV.OptionsData.Appending:=False;
  cxGV.OptionsData.Inserting:=False;
  cxGV.NavigatorButtons.Delete.Enabled:=False;
  cxGV.NavigatorButtons.Insert.Enabled:=False;


end;


function TFrm_WorkItem.DelRd: bool;
var
 qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Delete from T_WorkItem where FWorkItemID=:FWorkItemID';
    qry.Parameters.FindParam('FWorkItemID').value:=StrToInt(Trim(E_FWorkItemID.Text));
    result:=qry.ExecSQL>=1;
  finally
    qry.Free;
  end;
end;

function TFrm_WorkItem.ZFRd: bool;
var
 qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Update T_WorkItem set FIsDel=1 where FWorkItemID=:FWorkItemID';
    qry.Parameters.FindParam('FWorkItemID').value:=StrToInt(Trim(E_FWorkItemID.Text));
    result:=qry.ExecSQL>=1;
  finally
    qry.Free;
  end;
end;

function TFrm_WorkItem.EditMain: bool;
var
 qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Update T_WorkItem Set FWorkUserNum=:FWorkUserNum,FWorkUserNumDate=:FWorkUserNumDate,FWorkItemNum=:FWorkItemNum, '
                 +'FItemId=:FItemId, FBidDate=:FBidDate,FDeliveryPlace=:FDeliveryPlace,'
                 +'FJobPlace=:FJobPlace,FJobMode=:FJobMode,FE05=:FE05,FAgentID=:FAgentID,FWorkItemDate=:FWorkItemDate,'
                 +'FAdvancePercent=:FAdvancePercent,FWorkData=:FWorkData,FIsDel=:FIsDel where FWorkItemID=:FWorkItemID';
   with qry.Parameters do
   begin
     FindParam('FWorkUserNum').value:=UserNum;
     FindParam('FWorkUserNumDate').value:=date();
     FindParam('FWorkItemNum').value:=Trim(E_FWorkItemNum.Text);
     FindParam('FItemId').value:=STrToInt(Trim(E_FItemId.Text));
     FindParam('FBidDate').value:=E_FBidDate.Date;
     FindParam('FDeliveryPlace').value:=Trim(E_FDeliveryPlace.Text);
     FindParam('FJobPlace').value:=Trim(E_FJobPlace.Text);
     FindParam('FJobMode').value:=Trim(E_FJobMode.Text);
     FindParam('FE05').value:=Trim(E_FE05.Text);
     FindParam('FAgentID').value:=STrToInt(Trim(E_FAgentID.Text));
     FindParam('FWorkItemDate').value:=E_FWorkItemDate.Date;
     FindParam('FAdvancePercent').value:=STrToFloat(Trim(E_FAdvancePercent.Text));
     FindParam('FWorkData').value:=Trim(E_FWorkData.Text);
     FindParam('FIsDel').value:=E_FIsDel.Checked;
     FindParam('FWorkItemID').value:=STrToInt(Trim(E_FWorkItemID.Text));
   end;
     result:=qry.ExecSQL>=1;
   finally
     qry.Free;
   end;

end;


function TFrm_WorkItem.AddMain: bool;
var
 qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.EnableBCD:=False;//小数位数>4
  try
    qry.SQL.Text:='Insert into T_WorkItem(FWorkItemID,FWorkStatus,FDepartmentID,FWorkWriteID,FWorkWriteDate,FWorkItemNum, FItemId,FBidDate, '
                 +'FDeliveryPlace, FJobPlace,FJobMode,FE05,FAgentID,FWorkItemDate,FAdvancePercent,FWorkItemRemark,FIsdel) '
                 +'values(:FWorkItemID,:FWorkStatus,:FDepartmentID,:FWorkWriteID,:FWorkWriteDate,:FWorkItemNum, :FItemId, :FBidDate,'
                 +':FDeliveryPlace, :FJobPlace,:FJobMode,:FE05,:FAgentID,:FWorkItemDate,:FAdvancePercent,:FWorkItemRemark,:FIsdel)';
   with qry.Parameters do
   begin
     Act_MaxID.Execute;//取ID
     FindParam('FWorkItemID').value:=P_MaxID;
     FindParam('FWorkStatus').value:=0;
     FindParam('FDepartmentID').value:=UserFDepartmentID;
     FindParam('FWorkWriteID').value:=UserNumID;
     FindParam('FWorkWriteDate').value:=date();
     FindParam('FWorkItemNum').value:=Trim(E_FWorkItemNum.Text);
     FindParam('FItemId').value:=STrToInt(Trim(E_FItemId.Text));
     FindParam('FBidDate').value:=E_FBidDate.Date;
     FindParam('FDeliveryPlace').value:=Trim(E_FDeliveryPlace.Text);
     FindParam('FJobPlace').value:=Trim(E_FJobPlace.Text);
     FindParam('FJobMode').value:=Trim(E_FJobMode.Text);
     FindParam('FE05').value:=Trim(E_FE05.Text);
     FindParam('FAgentID').value:=STrToInt(Trim(E_FAgentID.Text));
     FindParam('FWorkItemDate').value:=E_FWorkItemDate.Date;
     FindParam('FAdvancePercent').value:=E_FAdvancePercent.Value;
     FindParam('FWorkItemRemark').value:=Trim(E_FWorkItemRemark.Text);
     FindParam('FIsdel').value:=E_FIsdel.EditValue;
   end;
     result:=qry.ExecSQL>=1;
   finally
     qry.Free;
   end;

end;

function TFrm_WorkItem.AddList: bool;
var
  qry,qry1: TADOQuery;
  i:Integer;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry1:=TADOQuery.Create(Self);
  qry1.ConnectionString:=mdlData.ReadConnStr;
  qry.EnableBCD:=False;//小数位数>4
  qry1.EnableBCD:=False;//小数位数>4

  result:=False;

  If mData.RecordCount<=0 then
  begin
    result:=True;
    Exit;
  end;

  try
    qry1.SQL.Text:='select * from V_WorkItem with(nolock) where FDepartmentID=:FDepartmentID and FWorkItemNum=:FWorkItemNum';
    qry1.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry1.Parameters.FindParam('FWorkItemNum').value:=Trim(E_FWorkItemNum.Text);
    qry1.Open;
  finally
    ;
  end;
  if qry1.RecordCount>0 then
     E_FWorkItemID.Text:=IntToStr(qry1.FieldByName('FWorkItemID').value);

  try
    qry.SQL.Text:='Insert into T_WorkList(FWorkListID,FWorkItemID, FWorkListNum,FBalancePriceID,FLength,FQry,FSingleWeight,FEstimateQry,FWorkOutPrice,FOutPrice,FWorkListRemark,FDeliveryDateTxt) '
                 +'values(:FWorkListID,:FWorkItemID, :FWorkListNum,:FBalancePriceID,:FLength,:FQry,:FSingleWeight,:FEstimateQry,:FWorkOutPrice,:FOutPrice,:FWorkListRemark,:FDeliveryDateTxt)';
    i:=1;
    mdata.Edit;
    mdata.Post;
    mdata.First;
    while not mData.eof do
    begin
      If (mData['FBalancePriceID']<>0) and (mData['FBalancePriceID']<>Null) and (mData['FEstimateQry']<>0) then
      //If (mData['FBalancePriceID']<>0) and (mData['FBalancePriceID']<>Null) then
      begin
       qry.Parameters.ParamByName('FWorkOutPrice').DataType:=ftfloat;
       qry.Parameters.ParamByName('FOutPrice').DataType:=ftfloat;

        If qry.Active then qry.Close;
        with qry.Parameters do
        begin
           Act_MaxID_List.Execute;//取ID
           FindParam('FWorkListID').value:=P_MaxID_List;
           If P_state=0 then  //新增
              FindParam('FWorkItemID').value:=P_MaxID;
           If P_state=1 then  //修改
              FindParam('FWorkItemID').value:=MData['FWorkItemID'];

          FindParam('FWorkItemID').value:= qry1.FieldByName('FWorkItemID').value;
          FindParam('FWorkListNum').value:=i;
          FindParam('FBalancePriceID').value:=mdata['FBalancePriceID'];
          FindParam('FLength').value:=mdata['FLength'];
          FindParam('FQry').value:=mdata['FQry'];
          FindParam('FSingleWeight').value:=mdata['FSingleWeight'];
          FindParam('FEstimateQry').value:=mdata['FEstimateQry'];
          FindParam('FWorkOutPrice').value:=mdata['FWorkOutPrice'];
          FindParam('FOutPrice').value:=mdata['FOutPrice'];
          FindParam('FWorkListRemark').value:=mdata['FWorkListRemark'];
          If (mdata['FDeliveryDateTxt']=null) then
             FindParam('FDeliveryDateTxt').value:=E_FDeliveryDateTxt.Text
          else
            FindParam('FDeliveryDateTxt').value:=mdata['FDeliveryDateTxt'];
        end;
        result:=qry.ExecSQL>=1;
        if not result then break;
      end;
      mData.Next;
      i:=i+1;
    end;
  finally
    qry.Free;
  end;
end;

function TFrm_WorkItem.EditList: bool;
var
  qry,qry1: TADOQuery;
  i:Integer;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.EnableBCD:=False;//小数位数>4

  result:=False;
  mdata.Edit;
  mdata.Post;
  mdata.First;
  try
    qry.Parameters.ParamByName('FWorkOutPrice').DataType:=ftfloat;
    qry.Parameters.ParamByName('FOutPrice').DataType:=ftfloat;
    qry.SQL.Text:='Update T_WorkList set FWorkItemID=:FWorkItemID, FWorkListNum=:FWorkListNum,FBalancePriceID=:FBalancePriceID,FLength=:FLength,'
                 +'FQry=:FQry,FSingleWeight=:FSingleWeight,FEstimateQry=:FEstimateQry,FWorkOutPrice=:FWorkOutPrice,FOutPrice=:FOutPrice,FWorkListRemark=:FWorkListRemark,'
                 +'FDeliveryDateTxt=:FDeliveryDateTxt where FWorkListID=:FWorkListID';
    while not mData.eof do
    begin
      qry.Parameters.FindParam('FWorkItemID').value:= StrToInt(Trim(E_FWorkItemID.Text));
      qry.Parameters.FindParam('FWorkListNum').value:=mdata['FWorkListNum'];
      qry.Parameters.FindParam('FBalancePriceID').value:=mdata['FBalancePriceID'];
      qry.Parameters.FindParam('FLength').value:=mdata['FLength'];
      qry.Parameters.FindParam('FQry').value:=mdata['FQry'];
      qry.Parameters.FindParam('FSingleWeight').value:=mdata['FSingleWeight'];
      qry.Parameters.FindParam('FEstimateQry').value:=mdata['FEstimateQry'];
      qry.Parameters.ParamByName('FWorkOutPrice').DataType:=ftfloat;

      qry.Parameters.FindParam('FWorkOutPrice').value:=mdata['FWorkOutPrice'];
      qry.Parameters.FindParam('FOutPrice').value:=mdata['FOutPrice'];
      qry.Parameters.FindParam('FWorkListRemark').value:=mdata['FWorkListRemark'];
      qry.Parameters.FindParam('FDeliveryDateTxt').value:=mdata['FDeliveryDateTxt'];
      qry.Parameters.FindParam('FWorkListID').value:=mdata['FWorkListID'];
      result:=qry.ExecSQL>=1;
      mData.Next;
    end;
    finally
      ;
    end;
  qry.Free;

end;

function TFrm_WorkItem.AddRd: bool;
var
 qry:TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.EnableBCD:=False;//小数位数>4
  result:=False;

  If mData.RecordCount<=0 then
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


function TFrm_WorkItem.EditRd:bool;
var
 qry:TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.EnableBCD:=False;//小数位数>4
  result:=False;

  If mData.RecordCount<=0 then
  begin
    result:=True;
    Exit;
  end;

  mData.Edit;
  mData.Post;

  mdlData.conn.BeginTrans;
  try
    if EditMain then  //1   主表修改
    begin
      result:=True;
      if EditList then //2    明细表修改
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

function TFrm_WorkItem.BalanceAddRd:bool;
var
 qry:TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.EnableBCD:=False;//小数位数>4
  result:=False;

  If mData.RecordCount<=0 then
  begin
    result:=True;
    Exit;
  end;

  mData.Edit;
  mData.Post;

  mdlData.conn.BeginTrans;
  try
    if EditMain then  //1   主表修改
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


function TFrm_WorkItem.EditAddRd:bool;
var
 qry:TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.CommandTimeout:=500;
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.EnableBCD:=False;//小数位数>4
  result:=False;

  If mData.RecordCount<=0 then
  begin
    result:=True;
    Exit;
  end;

  mData.Edit;
  mData.Post;

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

procedure TFrm_WorkItem.FormResize(Sender: TObject);
begin
  inherited;
  L_title.Caption:=UserFDepartmentName+'生产任务单';
  Self.Caption:=UserFDepartmentName+'生产任务单';
end;

procedure TFrm_WorkItem.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=cafree;
  Frm_WorkItem:=nil;
end;

procedure TFrm_WorkItem.TB_EXITClick(Sender: TObject);
begin
  inherited;
  self.Close;
end;

procedure TFrm_WorkItem.TB_DownClick(Sender: TObject);
Var i:Integer;
begin
  If (TB_Down.Caption='取消设置') and (TB_Down2.Caption='取消设置') then
  begin
    TB_Down.Caption:='设置';
    TB_Down2.Caption:='设置';
    cxGV.OptionsData.Editing:=False;
    cxGv.OptionsView.GroupByBox:=False;
    cxGV5.OptionsData.Editing:=False;
    cxGV5.OptionsView.GroupByBox:=False;
    for i:=0 to cxGv.ColumnCount-1 do
    begin
      cxGv.Columns[i].Options.Filtering:=False;
      cxGv.Columns[i].Options.Editing:=False;
      cxGv.Columns[i].Options.Sorting:=False;
    end;
    for i:=0 to cxGV5.ColumnCount-1 do
    begin
      cxGV5.Columns[i].Options.Filtering:=False;
      cxGV5.Columns[i].Options.Editing:=False;
      cxGV5.Columns[i].Options.Sorting:=False;
    end;
  end
  else
  begin
    TB_Down.Caption:='取消设置';
    TB_Down2.Caption:='取消设置';
    cxGV.OptionsData.Editing:=True;
    cxGv.OptionsView.GroupByBox:=True;
    cxGV5.OptionsData.Editing:=True;
    cxGV5.OptionsView.GroupByBox:=True;

    for i:=0 to cxGv.ColumnCount-1 do
    begin
      cxGv.Columns[i].Options.Filtering:=True;
      cxGv.Columns[i].Options.Editing:=True;
      cxGv.Columns[i].Options.Sorting:=True;
    end;
    for i:=0 to cxGV5.ColumnCount-1 do
    begin
      cxGV5.Columns[i].Options.Filtering:=True;
      cxGV5.Columns[i].Options.Editing:=True;
      cxGV5.Columns[i].Options.Sorting:=True;
    end;
  end;
end;

procedure TFrm_WorkItem.MyTreeViewChange(Sender: TObject; Node: TTreeNode);
var
  qry,qry1:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.EnableBCD:=False;//小数位数>4
  qry1:=TADOQuery.Create(self);
  qry1.ConnectionString:=mdlData.ReadConnStr;
  qry1.EnableBCD:=False;//小数位数>4


  If Node = nil then Exit;
  with PTree(Node.Data)^ do
  begin
    ListItemFNumber:=PTree(Node.Data).FNumber;
    P_th:=PTree(Node.Data).Caption;
    P_Isleaf:=PTree(Node.Data).Isleaf;
    If PTree(Node.Data).Isleaf=1 then
    begin
      If not MyItemList(qry,Mdata,'V_WorkList','FFullNumber',ListItemFNumber,'FNumber') then
         mdata.Close;
    end
    else
    begin
      mdata.Close;
      Exit;
    end;
    If mdata.RecordCount>0 then
    begin
      P_FWorkItemNum:= mdata['FWorkItemNum'];
      P_FWorkItemID:= mdata['FWorkItemID'];
      E_FWorkStatus.EditValue:= mdata['FWorkStatus'];
      E_FStatusNotes.Text:= mdata['FStatusNotes'];
      E_FWorkItemDate.Date:= mdata['FWorkItemDate'];
      E_FWorkData.Text:= mdata['FWorkData'];
      E_FDepartmentNum.Text:= mdata['FDepartmentNum'];
      E_FWorkItemNum.Text:= mdata['FWorkItemNum'];
      E_FItemQry.Text:= mdata['FItemQry'];
      E_FWorkItemID.Text:= mdata['FWorkItemID'];
      E_FClientFullName.Text:= mdata['FClientFullName'];
      E_FItemId.Text:= mdata['FItemId'];
      E_FDeliveryPlace.Text:= mdata['FDeliveryPlace'];
      E_FAgentNameQry.Text:= mdata['FAgentNameQry'];
      E_FAgentID.Text:= mdata['FAgentID'];
      E_FSystem.Text:= mdata['FSystem'];
      E_FE05.Text:= mdata['FE05'];
      E_FMaterialDate.Text:= mdata['FMaterialDate'];
      E_FPriceDateID.Text:= mdata['FPriceDateID'];
      E_FJobMode.Text:= mdata['FJobMode'];
      E_FItemModel.Text:= mdata['FItemModel'];
      E_FItemNumber.Text:= mdata['FItemNumber'];
      E_FProductName.Text:=mdata['FProductName'];
      E_FBranchFileNo.Text:= mdata['FBranchFileNo'];
      E_FJobPlace.Text:= mdata['FJobPlace'];
      E_FAdvancePercent.Value:=mdata['FAdvancePercent'];
      E_FDeliveryDateTxt.Text:=mdata['FDeliveryDateTxt'];
      E_FBidDate.Date:=mdata['FBidDate'];
      E_FWorkItemRemark.Text:=mdata['FWorkItemRemark'];
      E_FIsdel.EditValue:=mdata['FIsdel'];

      E_FWorkWrite.EditValue:=mdata['FWorkWrite'];
      E_FWorkWriteDate.Date:=mdata['FWorkWriteDate'];

      E_FWorkCheck.EditValue:=mdata['FWorkCheck'];
      E_FWorkCheckdate.Date:=mdata['FWorkCheckDate'];

      E_FWorkAudit.EditValue:=mdata['FWorkAudit'];
      E_FWorkAuditDate.Date:=mdata['FWorkAuditDate'];

      E_FWorkAccept.EditValue:=mdata['FWorkAccept'];
      E_FWorkAcceptDate.Date:=mdata['FWorkAcceptDate'];


      ListItemFNumber3:=mdata['FDepartmentName']+';'+mdata['FBalanceProductName']+';'+mdata['FMaterialDate']+';';

      If mdata['FIsDel']=True then
         L_Caption.Caption:=UserFDepartmentName+'生产任务单(作废)'
      else
         L_Caption.Caption:=UserFDepartmentName+'生产任务单';

  end;
  If PTree(Node.Data).Isleaf=1 then
     Panel2.Visible:=True
  else
     Panel2.Visible:=False;
  If PTree(Node.Data).Isleaf=1 then
     Self.Set_Status;  //权限设置
  end;



  //是否已经结算
{  try
    qry.SQL.Text:='select distinct FWorkItemID from V_WorkList where  FDepartmentID=:FDepartmentID and FFullNumber like :FFullNumber';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Parameters.FindParam('FFullNumber').value:=ListItemFNumber;
    qry.Open;
  finally
     ;
  end;
  If Qry.RecordCount=1 then
  begin
    try
      qry1.SQL.Text:='select * from V_BalanceList where FWorkItemID=:FWorkItemID';
      qry1.Parameters.FindParam('FWorkItemID').value:=qry.fieldbyname('FWorkItemID').value;;
      qry1.Open;
    finally
       ;
    end;
    If qry1.RecordCount>0 then
    begin
      TB_Del.Enabled:=False;
      TB_Zf.Enabled:=False;
      TB_EditOne.Enabled:=True;
    end
    else
    begin
      TB_Del.Enabled:= mdlData.PermissionCheckRights(TFrm_WorkItem.ClassName,'删除');
      TB_ZF.Enabled:= mdlData.PermissionCheckRights(TFrm_WorkItem.ClassName,'删除');
      TB_Audit.Enabled:= mdlData.PermissionCheckRights(TFrm_WorkItem.ClassName,'审核');
      TB_EditOne.Enabled:=False;
    end;
  end
  else
  begin
    cxGV.OptionsData.Deleting:=True;
    cxGV.OptionsData.Appending:=True;
    cxGV.NavigatorButtons.Delete.Visible:=True;
    cxGV.NavigatorButtons.Insert.Visible:=True;

    TB_Del.Enabled:= mdlData.PermissionCheckRights(TFrm_WorkItem.ClassName,'删除');
    TB_Edit.Enabled:= mdlData.PermissionCheckRights(TFrm_WorkItem.ClassName,'修改');
    TB_ZF.Enabled:= mdlData.PermissionCheckRights(TFrm_WorkItem.ClassName,'删除');
    TB_Audit.Enabled:= mdlData.PermissionCheckRights(TFrm_WorkItem.ClassName,'审核');
  end;
  }

 end;

procedure TFrm_WorkItem.MyTreeViewExpanding(Sender: TObject;
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
               +'Isleaf from VT_WorkList with(nolock) where FParentNumber= '''
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
    with MyTreeView.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('Isleaf').value;
    end;
    qry.Next;
  end;
end;

procedure TFrm_WorkItem.TB_RefClick(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If UserFDepartmentsort=1 then //事业部
  begin
     If not TreeVeiwListWhere(qry,MyTreeView,'VT_WorkList',' and  FDepartmentID='+IntToStr(UserFDepartmentID)) then
        Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;
  If UserFDepartmentsort=2 then   //子公司
  begin
    If not TreeVeiwListWhere(qry,MyTreeView,'VT_WorkList',' and  FDepartmentID='+IntToStr(UserFDepartmentID)) then
      Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;
  If UserFDepartmentsort=3 then   //公共平台
  begin
    If not TreeVeiwListWhere(qry,MyTreeView,'VT_WorkList',' ') then
    Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;


{  If not TreeVeiwListWhere(qry,MyTreeView,'VT_WorkList',' and FDepartmentID='+IntToStr(UserFDepartmentID) ) then
  begin
    Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;
  }
end;

procedure TFrm_WorkItem.OKBtnClick(Sender: TObject);
var qry,qry1: TADOQuery;
    P_FWorkItemNum:string;
    y:boolean;
begin
  cxGV.OptionsData.Editing:=True;
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.EnableBCD:=False;//小数位数>4

  mData.Edit;
  mData.Post;

  If (StrToInt(Trim(E_FAgentID.Text))=0) or (Trim(E_FWorkItemNum.Text)='')
     or (StrToInt(Trim(E_FPriceDateID.Text))=0) or (StrToInt(Trim(E_FItemID.Text))=0)
     or (Trim(E_FDeliveryPlace.Text)='') then
  begin
    application.MessageBox('关键字不能为空！请重新输入','系统提示',MB_ICONERROR);
    Exit;
  end;

   //附表是否为空

  y:=False;
  mData.First;
  while not mData.eof do
  begin
     If (mData['FBalancePriceID']<>0) and (mData['FEstimateQry']<>0) then
         y:=True;
     mData.Next;
  end;
  if y=False then
  begin
    application.MessageBox('生产任务单不能为空，请修改记录!','系统提示',MB_ICONINFORMATION);
    Exit;
  end;


  If P_state =0 then
  begin
    try
      qry.SQL.Text:='select max(FWorkItemNum) as FMaxWorkItemNum,cast(FWorkYear as varchar(4))+substring(FWorkItemNum,5,2) as yymm  from V_WorkList with(nolock) '
                   +'where FDepartmentID=:FDepartmentID and cast(FWorkYear as varchar(4))+substring(FWorkItemNum,5,2)=:yymm '
                   +'group by cast(FWorkYear as varchar(4))+substring(FWorkItemNum,5,2)';
      qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
      qry.Parameters.FindParam('yymm').value:=Copy(ForMatDateTime('yyyymmdd',(E_FWorkItemDate.Date)),1,6);
      qry.Open;
    finally
       ;
    end;
    E_FDepartmentNum.Text:=UserFDepartmentNum;
    If qry.RecordCount=1 then
       P_FWorkItemNum:=Format('%.3d',[(StrToInt(qry.FieldByName('FMaxWorkItemNum').Value)+1)])
    else
       P_FWorkItemNum:=ForMatDateTime('yyyymm',(E_FWorkItemDate.Date))+'001';

    try
      qry.SQL.Text:='Select * from V_WorkList with(nolock) where FWorkItemNum=:FWorkItemNum and FDepartmentID=:FDepartmentID';
      qry.Parameters.FindParam('FWorkItemNum').Value:=Trim(E_FWorkItemNum.Text);
      qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
      qry.Open;
      If qry.RecordCount>0 then
      begin
        If application.MessageBox('此任务单号已存在,是否系统自动取号吗？','提示',MB_ICONINFORMATION+MB_YESNO)=6 then
        begin
          E_FWorkItemNum.Text:=P_FWorkItemNum;
        end
        else
          Exit;
      end;
    finally
       ;
    end;
  end;

  If P_state=0 then    //新增数据
  begin
    If application.MessageBox('是否要保存添加的数据？','提示',MB_ICONINFORMATION+MB_YESNO)<>6 then
       Exit;
    If AddRd then //增加数据
    begin
      If ShowMsg('是否打印?','提示') then
      begin
        ListItemFNumber:=UserFDepartmentName+';'+Trim(E_FWorkStatus.Text)+';'+Copy(ForMatDateTime('yyyymmdd',(E_FWorkItemDate.Date)),1,4)+';'+copy(Trim(E_FWorkItemNum.Text),5,2)+';'+Trim(E_FWorkItemNum.Text)+';';
        TB_Prin.Click;
      end;
      If application.MessageBox('录入数据已保存,还要继续录入吗？','提示',MB_ICONINFORMATION+MB_YESNO)=6 then
      begin
        mdata.Close;
        TB_App.Click ;
      end
      else
      begin
        inherited;
        E_FWorkItemDate.Enabled:=False;
        E_FClientFullName.Enabled:=False;
        E_FDeliveryPlace.Enabled:=False;
        E_FAgentNameQry.Enabled:=False;
        E_FMaterialDate.Enabled:=False;
        E_FMaterialDate.Enabled:=False;
        E_FJobMode.Enabled:=False;
        E_FJobPlace.Enabled:=False;
        CancelBtn.Click;
      end;
       Self.Set_Status;  //权限设置
    end;
  end;


  If P_state=1 then //修改数据
  begin
    If application.MessageBox('是否要保存所作修改？','提示',MB_ICONINFORMATION+MB_YESNO)<>6 then
       Exit;

    try
      qry.SQL.Text:='Select * from V_BalanceList with(nolock) where FWorkItemID=:FWorkItemID';
      qry.Parameters.FindParam('FWorkItemID').Value:=StrToInt(Trim(E_FWorkItemID.Text));
      qry.Open;
      If (qry.RecordCount>0)  then
      begin
       //application.MessageBox('此任务单部件已结算！只允许修改未结算记录,不允许增加、删除记录。','系统提示',MB_ICONERROR);

        If EditRd then   //修改数据
        begin
          application.MessageBox('修改记录已保存','系统提示',MB_ICONINFORMATION);
          If ShowMsg('是否打印?','提示') then
             TB_Prin.Click;
        end
        else
          application.MessageBox('修改记录保存失败！','系统提示',MB_ICONWARNING);
      end
      else
      begin
        If EditAddRd then   //新增修改数据
        begin
          application.MessageBox('修改记录已保存','系统提示',MB_ICONINFORMATION);
          If ShowMsg('是否打印?','提示') then
             TB_Prin.Click;
        end
        else
          application.MessageBox('修改记录保存失败！','系统提示',MB_ICONWARNING);
      end;
    finally
       ;
    end;
    CancelBtn.Click;
  end;

  If P_state=2 then  //已结算单据新增
  begin
    If application.MessageBox('是否要保存已结算单据的数据新增？','提示',MB_ICONINFORMATION+MB_YESNO)<>6 then
       Exit;
    If BalanceAddRd then //增加已结算数据
    begin
      If ShowMsg('是否打印?','提示') then
      begin
        ListItemFNumber:=UserFDepartmentName+';'+Copy(ForMatDateTime('yyyymmdd',(E_FWorkItemDate.Date)),1,4)+';'+copy(Trim(E_FWorkItemNum.Text),5,2)+';'+Trim(E_FWorkItemNum.Text)+';';
        TB_Prin.Click;
      end;
    end;
    CancelBtn.Click;
  end;
  qry.Free;
end;



procedure TFrm_WorkItem.TB_AppClick(Sender: TObject);
var
 i:Integer;
 qry:TADOquery;

begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.EnableBCD:=False;//小数位数>4

  P_state :=0;  //新增
  E_FWorkStatus.EditValue:=0;
  E_FWorkWrite.Text:=UserNum;
  E_FWorkWriteDate.Date:=date();
  E_FWorkCheck.Text:='';
  E_FWorkCheckDate.Date:=StrToDate('1900-01-01');
  E_FWorkAudit.Text:='';
  E_FWorkAuditDate.Date:=StrToDate('1900-01-01');
  E_FWorkAccept.Text:='';
  E_FWorkAcceptDate.Date:=StrToDate('1900-01-01');

  L_Caption.Caption:=UserFDepartmentName+'生产任务单';
  Self.Set_Open;
  Panel2.Visible:=True;

  //If (P_state =0) and (Trim(E_FWorkItemDate.Text)='') then
  If (P_state =0) then
  begin
    E_FWorkItemDate.Date:=date();
    E_FBidDate.Date:=date();
  end;
  try
    qry.SQL.Text:='select max(FWorkItemNum) as FMaxWorkItemNum,cast(FWorkYear as varchar(4))+substring(FWorkItemNum,5,2) as yymm  from V_WorkList with(nolock) '
                 +'where FDepartmentID=:FDepartmentID and cast(FWorkYear as varchar(4))+substring(FWorkItemNum,5,2)=:yymm '
                 +'group by cast(FWorkYear as varchar(4))+substring(FWorkItemNum,5,2)';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Parameters.FindParam('yymm').value:=Copy(ForMatDateTime('yyyymmdd',(E_FWorkItemDate.Date)),1,6);
    qry.Open;
  finally
     ;
  end;
  E_FDepartmentNum.Text:=UserFDepartmentNum;
  If qry.RecordCount=1 then
     E_FWorkItemNum.Text:=Format('%.3d',[(StrToInt(qry.FieldByName('FMaxWorkItemNum').Value)+1)])
  else
     E_FWorkItemNum.Text:=ForMatDateTime('yyyymm',(E_FWorkItemDate.Date))+'001';

  E_FWorkItemID.Text:='';
 // E_FMaterialDate.Text:='';
 // E_FPriceDateID.Text:='';

  try
    qry.SQL.Text:='Select * from V_WorkList with(nolock) where FWorkItemID=:FWorkItemID';
    qry.Parameters.FindParam('FWorkItemID').value:= 0;
    qry.Open;
  finally
    ;
  end;
  mdata.CopyFromDataSet(qry);
  mdata.Open;

  If mData.Active then mData.Close;
  mData.Open;
  mdata.Edit;
  mdata.First;
  for i:=1 to 30 do
  begin
    mdata.Append;
    mdata['FWorkListNum']:=i;
    mdata['FQry']:=0;
    mdata['FEstimateQry']:=0.0000;
    mdata['FBalancePrice']:=0.000000;
    mdata['FBalanceBasePrice']:=0.000000;
    mdata['FWorkResizePrice']:=0.000000;
    mdata['FWorkOutPrice']:=0.000000;
    mdata['FOutPrice']:=0.000000;
    mdata['FPrice']:=0.000000;
    mdata['FEstimateAmount']:=0.00;
    mdata['FSollWeight']:=0.0000;
    mdata['FSingleWeight']:=0.0000;
    mdata['FLength']:=0;
    mdata['FBalancePriceID']:=0;
    mdata['FDeliveryDateTxt']:='';
    mdata['FStatusNotes']:='';
    mdata.Post;
  end;
  mdata.First;

end;

procedure TFrm_WorkItem.TB_EditClick(Sender: TObject);
var
  qry,qry1:TADOQuery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.EnableBCD:=False;//小数位数>4
  qry1:=TAdoQuery.Create(self);
  qry1.ConnectionString:=mdlData.ReadConnStr;
  qry1.EnableBCD:=False;//小数位数>4
  P_state :=1;
  L_Caption.Caption:=UserFDepartmentName+'生产任务单修改';
  Self.Set_Open;
  try
    qry.SQL.Text:='Select * from V_BalanceList with(nolock) where FWorkItemID=:FWorkItemID';
    qry.Parameters.FindParam('FWorkItemID').Value:=StrToInt(Trim(E_FWorkItemID.Text));
    qry.Open;
  finally
    ;
  end;
  If (qry.RecordCount>0)  then
  begin
    application.MessageBox('此任务单部件已结算！只允许修改未结算记录,不允许增加、删除记录。','系统提示',MB_ICONERROR);
    qry1.SQL.Text:='Select * from V_WorkList where FWorkItemID=:FWorkItemID and SumFBalanceQry=0';
    qry1.Parameters.FindParam('FWorkItemID').Value:=StrToInt(Trim(E_FWorkItemID.Text));
    qry1.Open;
    mdata.CopyFromDataSet(qry1);
    mdata.Open;
    E_FDeliveryDateTxt.Enabled:=False;
    E_FAdvancePercent.Enabled:=False;
    E_FWorkItemNum.Enabled:=False;
    E_FWorkItemDate.Enabled:=False;
    E_FBranchFileNo.Enabled:=False;
    E_FItemNumber.Enabled:=False;
    E_FDeliveryPlace.Enabled:=False;
    E_FDeliveryDate.Enabled:=False;
    E_FAgentNameQry.Enabled:=False;
    E_FMaterialDate.Enabled:=False;
    E_FMaterialDate.Enabled:=False;
    E_FJobMode.Enabled:=False;
    E_FJobPlace.Enabled:=False;
    E_FE05.Enabled:=False;
    SB_1.Enabled:=False;
    E_FWorkItemRemark.Enabled:=False;
    //E_FWorkData.Enabled:=False;
    E_FIsdel.Enabled:=False;
    //cxGV.NavigatorButtons.Delete.Enabled:=False;
    cxGV.NavigatorButtons.Insert.Enabled:=False;
   // cxGV.OptionsData.Deleting:=False;
    cxGV.OptionsData.Appending:=False;
    cxGV.OptionsData.Inserting:=False;
 end;
 TB_EditOne.Enabled:=False;


end;

procedure TFrm_WorkItem.TB_DelClick(Sender: TObject);
var
  qry,qry1:TADOQuery;

begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry1:=TAdoQuery.Create(self);
  qry1.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Select distinct FWorkItemNum from V_WorkList with(nolock) where FDepartmentID=:FDepartmentID and FFullNumber like :FFullNumber';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Parameters.FindParam('FFullNumber').value:=ListItemFNumber+'%';
    qry.Open;
  finally
     ;
  end;

  If (qry.RecordCount>1) then
  begin
    application.MessageBox('只允许删除单个任务！请重新选择!','系统提示',MB_ICONINFORMATION);
    Exit;
  end;

  If application.MessageBox(Pchar('警告：是否删除任务单号为：【'+Trim(E_FWorkItemNum.Text)+'】的信息？'+chr(13)+chr(13)
                           +'删除数据操作将不可恢复，确定要删除本单据吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
  If application.MessageBox(Pchar('再次警告：是否删除任务单号为：【'+Trim(E_FWorkItemNum.Text)+'】的信息？'+chr(13)+chr(13)
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
  mdata.Close;
  qry.Free;
  TB_ref.Click;

end;

procedure TFrm_WorkItem.CancelBtnClick(Sender: TObject);
begin
  inherited;
  Self.Set_Close;
end;

procedure TFrm_WorkItem.TB_OutClick(Sender: TObject);
begin
  inherited;
  If PC_2.ActivePage=TS_Edit then
    ExportToExcel(cxGrid,True,True);
  If PC_2.ActivePage=TS_Brow then
    ExportToExcel(cxGrid5,True,True);

end;

procedure TFrm_WorkItem.FormCreate(Sender: TObject);
var AFirstColumnStyle: TcxStyle;
begin
  inherited;
  //列颜色
  AFirstColumnStyle := TcxStyle.Create(Self);
  AFirstColumnStyle.Color := clMenu;

  AFirstColumnStyle.TextColor := clBlue;


  cxGV.Columns[1].Styles.Content := AFirstColumnStyle;
  cxGV.Columns[7].Styles.Content := AFirstColumnStyle;
  cxGV.Columns[9].Styles.Content := AFirstColumnStyle;
  cxGV.Columns[11].Styles.Content := AFirstColumnStyle;
  cxGV.Columns[12].Styles.Content := AFirstColumnStyle;


  TB_App.Visible:= mdlData.PermissionCheckRights(TFrm_WorkItem.ClassName,'新增');
  TB_Prin.Enabled:= mdlData.PermissionCheckRights(TFrm_WorkItem.ClassName,'打印');
  TB_Out.Enabled:= mdlData.PermissionCheckRights(TFrm_WorkItem.ClassName,'导出');
  TB_Out2.Enabled:= mdlData.PermissionCheckRights(TFrm_WorkItem.ClassName,'导出');
  TB_Prin_xls.Enabled:= mdlData.PermissionCheckRights(TFrm_WorkItem.ClassName,'打印');
  TB_FIsDelList.Visible:=mdlData.PermissionCheckRights(TFrm_WorkItem.ClassName,'校对');
  TB_WorkItem.Visible:=mdlData.PermissionCheckRights(TFrm_WorkItem.ClassName,'校对');

end;

procedure TFrm_WorkItem.E_FWorkMaxNumIDPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Select * from VT_AgentItem with(nolock) where FDepartmentID=:FDepartmentID and FAgentName like :FAgentName';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Parameters.FindParam('FAgentName').value:='%'+Trim(E_FAgentNameQry.Text)+'%';
    qry.Open;
  finally
     ;
  end;
  If qry.RecordCount=1 then
  begin
    E_FAgentNameQry.EditValue:=qry.FieldByName('FAgentName').AsString;
    E_FAgentID.EditValue:=qry.FieldByName('FAgentID').AsString;
  end
  else
  begin
    selValue:=select('选择生产单位','FNumber','FParentNumber','FNumber','FName',qry);
    If (Length(selValue)>0) and (qry.FieldByName('FDetail').Value<>0) then
    begin
      E_FAgentNameQry.EditValue:=qry.FieldByName('FAgentName').AsString;
      E_FAgentID.EditValue:=qry.FieldByName('FAgentID').AsString;
      E_FSystem.EditValue:=qry.FieldByName('FSystem').AsString;
    end
    else
    begin
      application.MessageBox('请选择明细！','系统提示',MB_ICONINFORMATION);
      Exit
    end;
  end;
  try
    qry.SQL.Text:='Select * from V_AgentItem with(nolock) where FAgentID=:FAgentID';
    qry.Parameters.FindParam('FAgentID').value:=E_FAgentID.EditValue;
    qry.Open;
  finally
     ;
  end;
  If qry.RecordCount>0 then
     E_FJobPlace.EditValue:=qry.FieldByName('FJobPlace').AsString;

  qry.Free;

end;

procedure TFrm_WorkItem.Sel_ItemPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
    qry:=TADOQuery.Create(self);
    qry.ConnectionString:=mdlData.ReadConnStr;
    try
      qry.SQL.Text:='select * from VT_Item with(nolock) where FProductID=1';
      qry.Open;
    finally
       ;
    end;

    selValue:=select('选择项目明细','FNumber','FParentNumber','FNumber','Fname',qry);
    If (Length(selValue)>0) and (qry.FieldByName('FDetail').Value<>0) then
    begin
      mdata.Edit;
      mdata['FItemID']:=qry.FieldByName('FItemID').Value;
      mdata['FPactNo']:=qry.FieldByName('FPactNo').AsString;
      mdata['FClientshortName']:=qry.FieldByName('FClientshortName').AsString;
      mdata.Post;
    end
    else
      application.MessageBox('请选择明细！','系统提示',MB_ICONINFORMATION);

    qry.Free;

end;

procedure TFrm_WorkItem.Sel_PricePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
    qry:=TADOQuery.Create(self);
    qry.ConnectionString:=mdlData.ReadConnStr;
    try
      qry.SQL.Text:='select * from VT_BalancePrice with(nolock) where FDepartmentID=:FDepartmentID and (FMaterialDate='''' or (FMaterialDate=:FMaterialDate))';
      qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
      qry.Parameters.FindParam('FMaterialDate').value:=Trim(E_FMaterialDate.Text);
      qry.Open;
    finally
       ;
    end;


    selValue:=select('选择结算部件','FNumber','FParentNumber','FNumber','Fname',qry);
    If (Length(selValue)>0) and (qry.FieldByName('FDetail').Value<>0) then
    begin
      mdata.Edit;
      mdata['FBalanceName']:=qry.FieldByName('FBalanceName').AsString;
      mdata['FBalanceModel']:=qry.FieldByName('FBalanceModel').AsString;
      mdata['FUnitName']:=qry.FieldByName('FUnitName').AsString;
      mdata['FSollWeight']:=qry.FieldByName('FSollWeight').Value;
      mdata['FBalancePriceID']:=qry.FieldByName('FBalancePriceID').Value;
      mdata['FMaterialDate']:=qry.FieldByName('FMaterialDate').Value;
      mdata['FWorkResizePrice']:=qry.FieldByName('FWorkResizePrice').Value;
      mdata['FBalanceBasePrice']:=qry.FieldByName('FBalanceBasePrice').Value;


     // mdata['FBalancePrice']:=qry.FieldByName('FBalancePrice').Value;
      mdata['FQry']:=0;
      mdata['FEstimateQry']:=0;
      mdata['FWorkOutPrice']:=0;
      mdata['FOutPrice']:=0;
      mdata['FPrice']:=0;

      mdata['FEstimateAmount']:=0.0000;
      mdata['FSingleWeight']:=0.0000;
      mdata.Post;

    end
    else
      application.MessageBox('请选择明细！','系统提示',MB_ICONINFORMATION);

    qry.Free;

end;

procedure TFrm_WorkItem.E_FDeliveryPlacePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
    qry:=TADOQuery.Create(self);
    qry.ConnectionString:=mdlData.ReadConnStr;
    try
      qry.SQL.Text:='select FDeliveryPlace from V_WorkList with(nolock) where FDepartmentID=:FDepartmentID order by FDeliveryPlace ';
      qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
      qry.Open;
    finally
       ;
    end;

    selValue:=select('选择交货地点','FDeliveryPlace','FDeliveryPlace','FDeliveryPlace','FDeliveryPlace',qry);
    If (Length(selValue)>0) then
    begin
      E_FDeliveryPlace.Text:=qry.FieldByName('FDeliveryPlace').Value;
    end;

end;

procedure TFrm_WorkItem.E_FJobPlacePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
    qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
    try
      qry.SQL.Text:='select FJobPlace from V_WorkList with(nolock) where FDepartmentID=:FDepartmentID order by FJobPlace ';
      qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
      qry.Open;
    finally
       ;
    end;

    selValue:=select('选择加工地点','FJobPlace','FJobPlace','FJobPlace','FJobPlace',qry);
    If (Length(selValue)>0) then
    begin
      E_FJobPlace.Text:=qry.FieldByName('FJobPlace').Value;
    end;

end;

procedure TFrm_WorkItem.TB_PrinClick(Sender: TObject);
var qry: TADOQuery;
begin
  inherited;
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.EnableBCD:=False;//小数位数>4
  try
    qry.SQL.Text:='select * from V_WorkList with(nolock) where  FDepartmentID=:FDepartmentID and FFullNumber like :FFullNumber order by FFullNumber,FNumber';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Parameters.FindParam('FFullNumber').value:=ListItemFNumber+'%';
    qry.Open;
  finally
     ;
  end;
  mdata.CopyFromDataSet(qry);
  mdata.Open;

  frDBDataSet.DataSource:=DS_mdata;
  If Trim(E_FDepartmentNum.Text)='SGB' then
    FrReport.LoadFromFile(ExtractFileDir(Application.ExeName)+'\Report_DesignBOM_WorkItemA4.frf');
  If Trim(E_FDepartmentNum.Text)='LKDCC' then
    FrReport.LoadFromFile(ExtractFileDir(Application.ExeName)+'\Report_DesignBOM_WorkItem_LKDCC.frf');
  If (Trim(E_FDepartmentNum.Text)='LKDD') then
  begin
     If mdata['FTaxRate']=0.11 then
        FrReport.LoadFromFile(ExtractFileDir(Application.ExeName)+'\Report_DesignBOM_WorkItem_LkDD_YS.frf')
     else
       FrReport.LoadFromFile(ExtractFileDir(Application.ExeName)+'\Report_DesignBOM_WorkItem_LkDD.frf');
  end;     
 FrReport.ShowReport;

end;

procedure TFrm_WorkItem.E_FE05PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
    qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
    try
      qry.SQL.Text:='select FE05 from V_WorkList with(nolock) where FDepartmentID=:FDepartmentID order by FE05 ';
      qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
      qry.Open;
    finally
       ;
    end;

    selValue:=select('选择第五项补充说明','FE05','FE05','FE05','FE05',qry);
    If (Length(selValue)>0) then
    begin
      E_FE05.Text:=qry.FieldByName('FE05').Value;
    end;

end;

procedure TFrm_WorkItem.SB_1Click(Sender: TObject);
var  qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If Trim(E_FAgentNameQry.Text)='' {or Trim(E_FMaterialDate.Text)=''} then
  begin
    application.MessageBox('生产单位和执行日期不能为空！请重新输入','系统提示',MB_ICONERROR);
    Exit;
  end;
  try
    qry.SQL.Text:='select Top 100 percent 0 as FWorkListNum,FBalanceName,FBalanceModel,FSollWeight,FMaterialDate,FUnitName,FRemark,FBalancePriceID,'
                 +'0 as FQry,0 as FEstimateQry,0 as FWorkOutPrice,0 as FOutPrice,0 as FWorkResizePrice,0 as FTransportPrice,0 as FPrice,0 as FEstimateAmount,0.0000 as FSingleWeight,'
                 +'0 as FLength,'''' as FDeliveryDateTxt,'''' as FWorkListRemark,* from V_BalancePrice with(nolock) '
                 +'where FMaterialDate='''+Trim(E_FMaterialDate.Text)+''''
                 +' and FNumber in (select distinct Top 100 percent FNumber from V_WorkList with(nolock) where FAgentID=:FAgentID and FDepartmentID=:FDepartmentID order by FNumber) order by FNumber';
    qry.Parameters.FindParam('FAgentID').value:=StrToInt(Trim(E_FAgentID.Text));
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Open;
  finally
    ;
  end;
  If qry.RecordCount>0 then
  begin
    Mdata.Close;
    MData.CopyFromDataSet(qry);
    Mdata.Open;
    Mdata.First;
  end
  else
    Mdata.Close;


end;

procedure TFrm_WorkItem.MDataBeforePost(DataSet: TDataSet);
begin
  inherited;
  If (DataSet['FSollWeight']<>0) then
  begin
    DataSet['FSingleWeight']:=0;
  end;

  If (DataSet['FSollWeight']=0) and (DataSet['FSingleWeight']=0) then
  begin
    DataSet['FQry']:=0;
  end;

  If DataSet['FQry']=0 then
    DataSet['FSingleWeight']:=0;

  //估算数量=理计单重*长度*件数
  If (DataSet['FSollWeight']<>0) and (DataSet['FLength']<>0) and (DataSet['FQry']<>0) then
     DataSet['FEstimateQry']:=round(DataSet['FSollWeight']*(DataSet['FLength']/1000)*DataSet['FQry']*10000)/10000;

  //估算数量=单件重量*件数
  If (DataSet['FQry']<>0) and (DataSet['FSingleWeight']<>0) and (DataSet['FLength']=0) then
      DataSet['FEstimateQry']:=round(DataSet['FSingleWeight']*DataSet['FQry']*10000)/10000;

  //估算数量=单件重量*件数
  If (DataSet['FQry']<>0) and (DataSet['FSollWeight']<>0) and (DataSet['FLength']=0) then
      DataSet['FEstimateQry']:=round(DataSet['FSollWeight']*DataSet['FQry']*10000)/10000;

  DataSet['FBalancePrice']:=DataSet['FBalanceBasePrice']+DataSet['FWorkOutPrice']+DataSet['FOutPrice'];
  DataSet['FEstimateAmount']:=round(DataSet['FEstimateQry']*DataSet['FBalancePrice']*100)/100;


end;

procedure TFrm_WorkItem.E_FWorkDataPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
    qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
    try
      qry.SQL.Text:='select FWorkData from V_WorkList with(nolock) where FDepartmentID=:FDepartmentID order by FWorkData ';
      qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
      qry.Open;
    finally
       ;
    end;

    selValue:=select('选择委托加工部门','FWorkData','FWorkData','FWorkData','FWorkData',qry);
    If (Length(selValue)>0) then
    begin
      E_FWorkData.Text:=qry.FieldByName('FWorkData').Value;
    end;

end;

procedure TFrm_WorkItem.FWorkListRemarkPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
    qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
    try
      qry.SQL.Text:='select FWorkListRemark from V_WorkList with(nolock) where FDepartmentID=:FDepartmentID order by FWorkListRemark ';
      qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
      qry.Open;
    finally
       ;
    end;

    selValue:=select('选择任务单备注','FWorkListRemark','FWorkListRemark','FWorkListRemark','FWorkListRemark',qry);
    If (Length(selValue)>0) then
    begin
      mdata.Edit;
      mdata['FWorkListRemark']:=qry.FieldByName('FWorkListRemark').Value;
      mdata.Post;
    end;


end;

procedure TFrm_WorkItem.TB_zfClick(Sender: TObject);
var
  qry:TADOQuery;

begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Select distinct FWorkItemNum from V_WorkList with(nolock) where FDepartmentID=:FDepartmentID and FFullNumber like :FFullNumber';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Parameters.FindParam('FFullNumber').value:=ListItemFNumber+'%';
    qry.Open;
  finally
     ;
  end;

  If (qry.RecordCount>1) then
  begin
    application.MessageBox('只允许作废单个任务！请重新选择!','系统提示',MB_ICONINFORMATION);
    Exit;
  end;

  If application.MessageBox(Pchar('警告：是否作废删除任务单号为：【'+Trim(E_FWorkItemNum.Text)+'】的信息？'+chr(13)+chr(13)
                           +'作废数据操作将不汇总，确定要作废本单据吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
  If application.MessageBox(Pchar('再次警告：是否作废任务单号为：【'+Trim(E_FWorkItemNum.Text)+'】的信息？'+chr(13)+chr(13)
                           +'作废数据操作将不汇总，确定要作废本单据吗？'),'再次警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then

  begin
    //单据作废
  If not ZFRd then
  begin
    application.MessageBox('作废单据失败！','系统提示',MB_ICONINFORMATION);
    mdlData.conn.RollbackTrans;
    Exit;
  end;
  end;
  mdata.Close;
  qry.Free;
  TB_ref.Click;
end;

procedure TFrm_WorkItem.E_FWorkItemRemarkPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
    qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
    try
      qry.SQL.Text:='select FWorkItemRemark from V_WorkList with(nolock) where FDepartmentID=:FDepartmentID  order by FWorkItemRemark ';
      qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
      qry.Open;
    finally
       ;
    end;

    selValue:=select('选择任务信息','FWorkItemRemark','FWorkItemRemark','FWorkItemRemark','FWorkItemRemark',qry);
    If (Length(selValue)>0) then
    begin
      E_FWorkItemRemark.Text:=qry.FieldByName('FWorkItemRemark').Value;
    end;

end;

procedure TFrm_WorkItem.E_FDeliveryDateTxtDblClick(Sender: TObject);
begin
  inherited;
  mdata.Edit;
  mData.First;
  while not mData.eof do
  begin
    mdata.Edit;
   // mData['FDeliveryDate']:=E_FDeliveryDate.date;
    mData['FDeliveryDateTxt']:=Trim(E_FDeliveryDateTxt.Text);
    mdata.Post;
    mData.Next;
  end;
end;

procedure TFrm_WorkItem.E_FWorkItemNumDblClick(Sender: TObject);
var qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='select max(FWorkItemNum) as FMaxWorkItemNum,cast(FWorkYear as varchar(4))+substring(FWorkItemNum,5,2) as yymm  from V_WorkList with(nolock) '
                 +'where FDepartmentID=:FDepartmentID and cast(FWorkYear as varchar(4))+substring(FWorkItemNum,5,2)=:yymm '
                 +'group by cast(FWorkYear as varchar(4))+substring(FWorkItemNum,5,2)';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Parameters.FindParam('yymm').value:=Copy(ForMatDateTime('yyyymmdd',(E_FWorkItemDate.Date)),1,6);
    qry.Open;
  finally
     ;
  end;
  E_FDepartmentNum.Text:=UserFDepartmentNum;
  If qry.RecordCount=1 then
     E_FWorkItemNum.Text:=Format('%.3d',[(StrToInt(qry.FieldByName('FMaxWorkItemNum').Value)+1)])
  else
     E_FWorkItemNum.Text:=ForMatDateTime('yyyymm',(E_FWorkItemDate.Date))+'001';
end;

procedure TFrm_WorkItem.E_FDeliveryDateTxtPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  E_FDeliveryDate.Visible:=True;
end;

procedure TFrm_WorkItem.E_FDeliveryDatePropertiesChange(Sender: TObject);
begin
  inherited;
  E_FDeliveryDateTxt.Text:=FormatDateTime('yyyy-mm-dd',E_FDeliveryDate.date);
  E_FDeliveryDate.Visible:=False;
  E_FDeliveryDateTxt.SetFocus;
end;

procedure TFrm_WorkItem.ToolButton2Click(Sender: TObject);
var qry: TADOQuery;
begin
  inherited;
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='select * from V_WorkList with(nolock) where FDepartmentID=:FDepartmentID and FFullNumber like :FFullNumber order by FFullNumber,FWorkListNum';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Parameters.FindParam('FFullNumber').value:=ListItemFNumber+'%';
    qry.Open;
  finally
     ;
  end;
  mdata.CopyFromDataSet(qry);
  mdata.Open;
  FrReport.LoadFromFile(ExtractFileDir(Application.ExeName)+'\Report_DesignBOM_WorkItemLD.frf');
  FrReport.ShowReport;


end;

procedure TFrm_WorkItem.TB_Prin_xlsClick(Sender: TObject);
var
  Query_Sp:TADOStoredProc;
  i,k,s,ReNum,ReNumLoop,R_Count:Integer;
  ExcelApp,MyWorkBook,mysheet: Variant;
  filepath,savefilepath,Sqlstr,copystart,copyend,copystart1,aa:string;
  ListQry:Tadoquery;
begin

  filepath:=Extractfilepath(application.ExeName)+'生产任务模版.xls';
  if (Mdata.Active) and (Mdata.recordcount>0) then
  Begin
    SaveDialog1.FileName:='生产任务单'+Mdata.FieldByName('FWorkItemNum').AsString;
    SaveDialog1.Filter:='.xls';
    SaveDialog1.Execute;

    if (Mdata.FieldByName('FWorkItemNum').AsString<>'') Or (Mdata.FieldByName('FWorkItemNum').AsString<>Null) then
        savefilepath:=SaveDialog1.FileName+'.xls';

    if FileExists(savefilepath) then
    begin
      DeleteFile(savefilepath) ;
    end;

    StatusBar1.Panels[5].text:='正在导出生产任务单:'+Mdata.FieldByName('FWorkItemNum').AsString+'的信息..请稍等!!';
    ExcelApp:= CreateOleObject('Excel.Application' );
    MyWorkBook:=ExcelApp.WorkBooks.Open( filepath );
    //ExcelApp.Visible:=True;
    MyWorkBook.WorkSheets[1].Cells[3,3].Value := Mdata.FieldByName('FClientFullName').AsString; //项目名称
    MyWorkBook.WorkSheets[1].Cells[4,3].Value := Mdata.FieldByName('FWorkItemNum').AsString; //任务单号
    MyWorkBook.WorkSheets[1].Cells[5,3].Value := Mdata.FieldByName('FDeliveryPlace').AsString; //交货地点
    MyWorkBook.WorkSheets[1].Cells[6,3].Value := Mdata.FieldByName('FJobPlace').AsString; //加工地点

    MyWorkBook.WorkSheets[1].Cells[4,7].Value := Mdata.FieldByName('FItemNumber').AsString; //图号
    MyWorkBook.WorkSheets[1].Cells[5,7].Value := Mdata.FieldByName('FItemModel').AsString; //规格型号
    MyWorkBook.WorkSheets[1].Cells[6,7].Value := Mdata.FieldByName('FFileNo').AsString; //档 案 号

    MyWorkBook.WorkSheets[1].Cells[4,10].Value := Mdata.FieldByName('FFactoryNum').AsString; //出厂编号
    MyWorkBook.WorkSheets[1].Cells[5,10].Value := Mdata.FieldByName('FItemQry').AsString; //台套数
    i:=9;
    MyWorkBook.WorkSheets[1].Name:=Mdata.FieldByName('FWorkItemNum').AsString;

    StatusBar1.Panels[5].text:='正在导出生产任务单:'+Mdata.FieldByName('FWorkItemNum').AsString+'的明细信息..请稍等!!';
    copystart:='A'+IntToStr(i);
    if Mdata.recordcount>0 then
    Begin
      if Mdata.recordcount>1 then
      Begin
        copystart:='A'+IntToStr(i);
        copystart1:='A'+IntToStr(i+1);
        copyend:='J'+IntToStr(i);
        ReNum:=Mdata.recordcount-1;
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
        R_Count:=Mdata.recordcount;
      end;
      Mdata.first;
      K:=0 ;
      while not Mdata.eof do
      Begin
        MyWorkBook.WorkSheets[1].Cells[i,1].Value := inttostr(K+1); //序号
        MyWorkBook.WorkSheets[1].Cells[i,2].Value := Mdata.FieldByName('FBalanceName').AsString+'  '+Mdata.FieldByName('FBalanceModel').AsString; //部件名称 +规格
        MyWorkBook.WorkSheets[1].Cells[i,5].Value := Mdata.FieldByName('FUnitName').AsString; //单位
        MyWorkBook.WorkSheets[1].Cells[i,6].Value := Mdata.FieldByName('FEstimateQry').AsString; //单台估重
        MyWorkBook.WorkSheets[1].Cells[i,7].Value := Mdata.FieldByName('FWorkItemPrice').AsString; //单价
        MyWorkBook.WorkSheets[1].Cells[i,8].Value := Mdata.FieldByName('FEstimateAmount').AsString; //金  额
        MyWorkBook.WorkSheets[1].Cells[i,9].Value := Mdata.FieldByName('FDeliveryDateTxt').AsString; //交货期
        MyWorkBook.WorkSheets[1].Cells[i,10].Value := Mdata.FieldByName('FWorkListRemark').AsString; //备注
        Mdata.next;
        i:=i+1;
        k:=k+1;
      End;
      MyWorkBook.WorkSheets[1].Cells[i,8].Value := '=SUM(h9:h'+IntToStr(i-1)+')'; //合计重量
      MyWorkBook.WorkSheets[1].Cells[i+2,2].Value:=AnsiReplaceStr(MyWorkBook.WorkSheets[1].Cells[i+2,2].Value,'A',Mdata.FieldByName('FMaterialDate').AsString); //单价执行日期
      MyWorkBook.WorkSheets[1].Cells[i+3,2].Value:=AnsiReplaceStr(MyWorkBook.WorkSheets[1].Cells[i+3,2].Value,'A',Mdata.FieldByName('FMaterialDate').AsString); //单价执行日期
      MyWorkBook.WorkSheets[1].Cells[i+3,2].Value:=AnsiReplaceStr(MyWorkBook.WorkSheets[1].Cells[i+3,2].Value,'B',Mdata.FieldByName('FAdvancePercent').AsString); //预付款
      MyWorkBook.WorkSheets[1].Cells[i+5,4].Value:=AnsiReplaceStr(MyWorkBook.WorkSheets[1].Cells[i+5,4].Value,'C',Mdata.FieldByName('FE05').AsString); //补充说明

    end;

    StatusBar1.Panels[5].text:='生产任务单:'+Mdata.FieldByName('FWorkItemNum').AsString+'的信息导出完成!!';
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

procedure TFrm_WorkItem.MyTreeView_WorkNumExpanding(Sender: TObject;
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
               +'Isleaf from VT_WorkList with(nolock) where FParentNumber= '''
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
    with MyTreeView_WorkNum.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('Isleaf').value;
    end;
    qry.Next;
  end;


end;

procedure TFrm_WorkItem.MyTreeView_WorkNumChange(Sender: TObject;
  Node: TTreeNode);
var
  qry,qry1:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.EnableBCD:=False;//小数位数>4
  If Node = nil then Exit;
  with PTree(Node.Data)^ do
  begin
    ListItemFNumber2:=PTree(Node.Data).FNumber;
    //If not MyItemList(qry,Mdata2,'V_WorkItem','FFullNumber',ListItemFNumber2,'FFullNumber') then
    //If not MyItemList(qry,Mdata3,'V_WorkList','FFullNumber',ListItemFNumber2,'FFullNumber') then
    If MyItemList(qry,Mdata5,'V_WorkItem','FDepartmentName+'';''+cast(FWorkStatus as varchar(2))+'';''+cast(FWorkYear as varchar(4))+'';''+substring(FWorkItemNum,5,2)+'';''+FWorkItemNum+'';''',ListItemFNumber2,'') then
    If MyItemList(qry,Mdata5,'V_WorkList','FDepartmentName+'';''+cast(FWorkStatus as varchar(2))+'';''+cast(FWorkYear as varchar(4))+'';''+substring(FWorkItemNum,5,2)+'';''+FWorkItemNum+'';''',ListItemFNumber2,'') then
  end;
end;

procedure TFrm_WorkItem.TB_Ref2Click(Sender: TObject);
var
  qry:TADOquery;
  myNode:ptree;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If UserFDepartmentsort=1 then //事业部
  begin
     If not TreeVeiwListWhere(qry,MyTreeView,'VT_WorkList',' and  FDepartmentID='+IntToStr(UserFDepartmentID)) then
        Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;
  If UserFDepartmentsort=2 then   //子公司
  begin
    If not TreeVeiwListWhere(qry,MyTreeView,'VT_WorkList',' and  FDepartmentID='+IntToStr(UserFDepartmentID)) then
      Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;
  If UserFDepartmentsort=3 then   //公共平台
  begin
    If not TreeVeiwListWhere(qry,MyTreeView,'VT_WorkList',' ') then
    Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;


{  If not TreeVeiwListWhere(qry,MyTreeView_WorkNum,'VT_WorkList',' and FDepartmentID='+IntToStr(UserFDepartmentID) ) then
  begin
    Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;  }
end;

procedure TFrm_WorkItem.FormShow(Sender: TObject);
begin
  inherited;
  TB_Ref.Click;
  TB_Ref2.Click;
end;

procedure TFrm_WorkItem.TB_EditOneClick(Sender: TObject);
Var i:Integer;
begin
  P_state :=2;
  L_Caption.Caption:=UserFDepartmentName+'生产任务单(已结算数据新增)';
  Self.Set_Open;

  If mData.Active then mData.Close;
  mData.Open;
  mdata.Edit;
  for i:=1 to 25 do
  begin
    mdata.Append;
    mdata['FWorkListNum']:=i;
    mdata['FQry']:=0;
    mdata['FEstimateQry']:=0;
    mdata['FBalancePrice']:=0;
    mdata['FBalanceBasePrice']:=0;
    mdata['FWorkResizePrice']:=0;
    mdata['FWorkOutPrice']:=0.000000;
    mdata['FOutPrice']:=0.000000;
    mdata['FPrice']:=0;
    mdata['FEstimateAmount']:=0.0000;
    mdata['FSollWeight']:=0.0000;
    mdata['FSingleWeight']:=0.0000;
    mdata['FLength']:=0;
    mdata['FBalancePriceID']:=0;
    mdata.Post;
    mdata.First;
  end;
  E_FDeliveryDateTxt.Enabled:=False;
  E_FAdvancePercent.Enabled:=False;
  E_FWorkItemNum.Enabled:=False;
  E_FWorkItemDate.Enabled:=False;
  E_FBranchFileNo.Enabled:=False;
  E_FItemNumber.Enabled:=False;
  E_FDeliveryPlace.Enabled:=False;
  E_FDeliveryDate.Enabled:=False;
  E_FAgentNameQry.Enabled:=False;
  E_FMaterialDate.Enabled:=False;
  E_FJobMode.Enabled:=False;
  E_FJobPlace.Enabled:=False;
  E_FE05.Enabled:=False;
  SB_1.Enabled:=False;
  E_FWorkItemRemark.Enabled:=False;
  E_FWorkData.Enabled:=False;
  E_FIsdel.Enabled:=False;
  TB_Edit.Enabled:=False;
  TB_EditOne.Enabled:=False;
end;

procedure TFrm_WorkItem.MyTreeView3Expanding(Sender: TObject;
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
               +'Isleaf from (select * from VT_BalancePrice with(nolock) where FDepartmentID='+IntToStr(UserFDepartmentID)+' and (FMaterialDate='''' or (FMaterialDate='''+Trim(E_FMaterialDate.Text)+'''))) as a  where FParentNumber= '''
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
    with MyTreeView3.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('Isleaf').value;
    end;
    qry.Next;
  end;



end;

procedure TFrm_WorkItem.MyTreeView3Change(Sender: TObject;
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
    ListItemFNumber3:=PTree(Node.Data).FNumber;
    If not MyItemList(qry,Mdata3,'V_BalancePrice','FFullNumber',ListItemFNumber3,'FFullNumber') then
    begin
      mdata3.Open;
     // cxGvColumn(cxGv3,Mdata3);
    end;
  end;


end;

procedure TFrm_WorkItem.ToolButton7Click(Sender: TObject);
var  i,j,n: integer;
begin
  inherited;
  mdata3.Open;
  mData3.Edit;
  mdata.Edit;

  mData.First;

  for i:=0 to cxGV3.DataController.Controller.SelectedRecordCount-1 do
  begin
    j:=cxGV3.DataController.GetSelectedRowIndex(i);
    If (P_state=0) or (P_state=2) then //新增    //已结算数据新增
    begin
      mdata.Edit;
      mdata.Last;     //指针相反
      while mdata['FBalancePriceID']<>0 do
      begin
        mdata.Prior;
        //mdata.Next;
      end;
    end;
    If  P_state=1 then //修改
    begin
      mdata.Last;
      n:=mdata['FWorkListNum'];
      mdata.Append;
    end;

    mdata.Edit;
    If  P_state=1 then
      mdata['FWorkListNum']:=n+1;

    mdata['FWorkStatus']:=0;
    mdata['FNumber']:=cxGV3.DataController.GetValue(J,1);
    mdata['FBalanceName']:=cxGV3.DataController.GetValue(J,2);
    mdata['FBalanceModel']:=cxGV3.DataController.GetValue(J,3);
    mdata['FUnitName']:=cxGV3.DataController.GetValue(J,4);
    mdata['FSollWeight']:=cxGV3.DataController.GetValue(J,5);
    mdata['FBalanceBasePrice']:=cxGV3.DataController.GetValue(J,6);
    mdata['FWorkResizePrice']:=cxGV3.DataController.GetValue(J,8);
    mdata['FMaterialDate']:=cxGV3.DataController.GetValue(J,11);
    mdata['FBalancePriceID']:=cxGV3.DataController.GetValue(J,12);
    mdata['FQry']:=0;
    mdata['FEstimateQry']:=0;
    mdata['FWorkOutPrice']:=0;
    mdata['FOutPrice']:=0;
    mdata['FPrice']:=0;
    mdata['FEstimateAmount']:=0.0000;
    mdata['FSingleWeight']:=0.0000;
    mdata.Post;
  end;
  PC_2.ActivePage:=TS_Edit;
  TS_Price.TabEnabled:=False;
  TS_Brow.TabEnabled:=True;
end;

procedure TFrm_WorkItem.PSelPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);

var qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  If Trim(E_FPriceDateID.Text)=''  then
  begin
    application.MessageBox('关键字不能为空！请重新输入','系统提示',MB_ICONERROR);
    E_FMaterialDate.SetFocus;
    Exit;
  end;
  try
    qry.SQL.Text:='select * from VT_SelBalancePrice with(nolock) where  FDepartmentID=:FDepartmentID and FPriceDateID=:FPriceDateID ';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Parameters.FindParam('FPriceDateID').value:=StrToInt(Trim(E_FPriceDateID.Text));
    qry.Open;
  finally
     ;
  end;
  ListItemFNumber3:= qry.FieldByName('FNumber').AsString;
//  If not MyItemList(qry,Mdata3,'V_BalancePrice','FDepartmentName+'';''+ FAgentDate+'';'' + FPartsCode +'';''+ FNumber+'';''',ListItemFNumber3,'FAgentDate,FPartsCode,FNumber') then
  If not MyItemList(qry,Mdata3,'V_BalancePrice','FDepartmentName+'';''+FAgentYear+'';''+FAgentMonth+'';''+FMaterialDate+'';''',ListItemFNumber3,'FNumber') then
  begin
    mdata3.Open;
    mdata3.First;
  end;

  TS_Price.TabEnabled:=True;
  PC_2.ActivePage:=TS_Price;
  TS_Brow.TabEnabled:=False;



end;

procedure TFrm_WorkItem.E_FMaterialDatePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry,qry1: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry1:=TADOQuery.Create(self);
  qry1.ConnectionString:=mdlData.ReadConnStr;

  try
    qry.SQL.Text:='select * from VT_SelBalancePrice with(nolock) where  FDepartmentID=:FDepartmentID ';
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
  ListItemFNumber3:= qry.FieldByName('FNumber').AsString;
//  If not MyItemList(qry,Mdata3,'V_BalancePrice','FSelFullNumber',ListItemFNumber3,'FSelFullNumber') then
  If not MyItemList(qry,Mdata3,'V_BalancePrice','FDepartmentName+'';''+FAgentYear+'';''+FAgentMonth+'';''+FMaterialDate+'';''',ListItemFNumber3,'FNumber') then

  begin
    mdata3.Open;
    mdata3.First;
  end;

  qry.Free;


end;

procedure TFrm_WorkItem.ToolButton9Click(Sender: TObject);
begin
  inherited;
  TS_Price.TabEnabled:=False;
  TS_Brow.TabEnabled:=True;
  PC_2.ActivePage:=TS_Edit;

end;

procedure TFrm_WorkItem.TB_Ref3Click(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If not TreeVeiwListWhere(qry,MyTreeView3,'VT_BalancePrice',' and FDepartmentID='+IntToStr(UserFDepartmentID) ) then
  begin
    Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;

end;

procedure TFrm_WorkItem.TB_DelOneClick(Sender: TObject);
var
 qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Select * from V_WorkList with(nolock) where FWorkListID=:FWorkListID and SumFBalanceQry>0';
    qry.Parameters.FindParam('FWorkListID').value:=mdata['FWorkListID'];
    qry.Open;
  finally
     ;
  end;

  If (qry.RecordCount>0) then
  begin
    application.MessageBox('此数据已经结算,不允许删除！请重新选择!','系统提示',MB_ICONINFORMATION);
    Exit;
  end;

  If application.MessageBox(Pchar('警告：是否删除任务单号为：【'+Trim(E_FWorkItemNum.Text)+'】【'+Trim(Mdata['FBalanceName'])+'】【'+Trim(Mdata['FBalanceModel'])+'】的信息？'+chr(13)+chr(13)
                           +'删除数据操作将不可恢复，确定要删除本单据吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
  If application.MessageBox(Pchar('再次警告：是否删除任务单号为：【'+Trim(E_FWorkItemNum.Text)+'】【'+Trim(Mdata['FBalanceName'])+'】【'+Trim(Mdata['FBalanceModel'])+'】的信息？'+chr(13)+chr(13)
                           +'删除数据操作将不可恢复，确定要删除本单据吗？'),'再次警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then

  try
    qry.SQL.Text:='Delete from T_WorkList where FWorkListID=:FWorkListID';
    qry.Parameters.FindParam('FWorkListID').value:=mdata['FWorkListID'];
    qry.ExecSQL;
  finally
    qry.Free;
  end;

end;

procedure TFrm_WorkItem.cxGVCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  inherited;
  if cxGV.Controller.FocusedRowIndex=AViewInfo.RecordViewInfo.Index  then  //是否是选中行
     else
  if StrToFloat(AViewInfo.GridRecord.DisplayTexts[SumFBalanceQry.Index])>0 then    //设置行颜色
  begin
   // ACanvas.Canvas.brush.Color := clInactiveCaptionText;
    ACanvas.Canvas.Font.Color:=clBlue; //字体颜色
    ACanvas.FillRect(AViewInfo.Bounds);
  end;
end;

procedure TFrm_WorkItem.TB_PushDownClick(Sender: TObject);
var
 qry:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If TB_PushDown.Caption='下推' then
  begin
    If application.MessageBox(Pchar('警告：是否下推任务单号为：【'+ListItemFNumber+'】的单据？'+chr(13)+chr(13)
                                   +'下推后的数据不允许修改和删除，确定要下推本单据吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      try
        qry.SQL.Text:='Update T_WorkItem Set FWorkStatus=4  where FWorkItemID=:FWorkItemID';
        qry.Parameters.FindParam('FWorkItemID').value:= mdata['FWorkItemID'];
        qry.ExecSQL;
      finally
         ;
      end;
      application.MessageBox('下推完毕！','系统提示',MB_ICONINFORMATION);
    end;
    TB_PushDown.Visible:=False;
  end;
  If TB_PushDown.Caption='反下推' then
  begin
    If application.MessageBox(Pchar('警告：是否反下推任务单号为：【'+ListItemFNumber+'】的单据？'+chr(13)+chr(13)
                                   +'反下推后的数据不允许修改和删除，确定要反下推本单据吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      try
        qry.SQL.Text:='Update T_WorkItem Set FWorkStatus=3 where FWorkItemID=:FWorkItemID';
        qry.Parameters.FindParam('FWorkItemID').value:= mdata['FWorkItemID'];
        qry.ExecSQL;
      finally
         ;
      end;
      application.MessageBox('反下推完毕！','系统提示',MB_ICONINFORMATION);
    end;
    TB_PushDown.Visible:=False;
  end;
end;

procedure TFrm_WorkItem.Act_AuditExecute(Sender: TObject);
var
 qry:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If TB_Audit.Caption='审核' then
  begin
    If application.MessageBox(Pchar('警告：是否审核任务单号为：【'+ListItemFNumber+'】的单据？'+chr(13)+chr(13)
                                   +'审核后的数据不允许修改和删除，确定要审核本单据吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      try
        qry.SQL.Text:='Update T_WorkItem Set FWorkStatus=3,FWorkAuditID=:FWorkAuditID,FWorkAuditDate=:FWorkAuditDate  where FWorkItemID=:FWorkItemID';
        qry.Parameters.FindParam('FWorkAuditID').value:= UserNumID;
        qry.Parameters.FindParam('FWorkAuditDate').value:= date();
        qry.Parameters.FindParam('FWorkItemID').value:= mdata['FWorkItemID'];
        qry.ExecSQL;
      finally
         ;
      end;
      application.MessageBox('审核完毕！','系统提示',MB_ICONINFORMATION);
    end;
    TB_Audit.Visible:=False;
  end;
  If TB_Audit.Caption='反审核' then
  begin
    If application.MessageBox(Pchar('警告：是否反审核任务单号为：【'+ListItemFNumber+'】的单据？'+chr(13)+chr(13)
                                   +'反审核后的数据不允许修改和删除，确定要反审核本单据吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      try
        qry.SQL.Text:='Update T_WorkItem Set FWorkStatus=2,FWorkAuditID=:FWorkAuditID,FWorkAuditDate=:FWorkAuditDate  where FWorkItemID=:FWorkItemID';
        qry.Parameters.FindParam('FWorkAuditID').value:= 0;
        qry.Parameters.FindParam('FWorkAuditDate').value:= date();
        qry.Parameters.FindParam('FWorkItemID').value:= mdata['FWorkItemID'];
        qry.ExecSQL;
      finally
         ;
      end;
      application.MessageBox('反审核完毕！','系统提示',MB_ICONINFORMATION);
    end;
    TB_Audit.Visible:=False;
  end;
end;

procedure TFrm_WorkItem.Act_CheckExecute(Sender: TObject);
var
 qry:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  If TB_Check.Caption='校对' then
  begin
    If application.MessageBox(Pchar('警告：是否校对任务单号为：【'+ListItemFNumber+'】的单据？'+chr(13)+chr(13)
                                   +'校对后的数据不允许收回，确定要下达本任务吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      try
        qry.SQL.Text:='Update T_WorkItem Set FWorkStatus=2,FWorkCheckID=:FWorkCheckID,FWorkCheckDate=:FWorkCheckDate where FWorkItemID=:FWorkItemID';
        qry.Parameters.FindParam('FWorkCheckID').value:= UserNumID;
        qry.Parameters.FindParam('FWorkCheckDate').value:= Date();
        qry.Parameters.FindParam('FWorkItemID').value:= mdata['FWorkItemID'];
        qry.ExecSQL;
      finally
         ;
      end;
      application.MessageBox('校对完毕！','系统提示',MB_ICONINFORMATION);
      TB_Check.Visible:=False;
    end;
  end;
  If TB_Check.Caption='反校对' then
  begin
    If application.MessageBox(Pchar('警告：是否反校对任务单号为：【'+ListItemFNumber+'】的单据？'+chr(13)+chr(13)
                                   +'反校对后的数据不允许收回，确定要反校对本任务吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      try
        qry.SQL.Text:='Update T_WorkItem Set FWorkStatus=1,FWorkCheckID=:FWorkCheckID,FWorkCheckDate=:FWorkCheckDate where FWorkItemID=:FWorkItemID';
        qry.Parameters.FindParam('FWorkCheckID').value:=0;
        qry.Parameters.FindParam('FWorkCheckDate').value:= Date();
        qry.Parameters.FindParam('FWorkItemID').value:= mdata['FWorkItemID'];
        qry.ExecSQL;
      finally
         ;
      end;
      application.MessageBox('反校对完毕！','系统提示',MB_ICONINFORMATION);
      TB_Check.Visible:=False;
    end;
  end;



end;

procedure TFrm_WorkItem.Act_SubmitExecute(Sender: TObject);
var
 qry:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If TB_Submit.Caption='提交' then
  begin
    If application.MessageBox(Pchar('警告：是否提交任务单号为：【'+ListItemFNumber+'】的单据？'+chr(13)+chr(13)
                                   +'提交后的数据不允许收回，确定要提交本任务吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      try
        qry.SQL.Text:='Update T_WorkItem Set FWorkStatus=1 where FWorkItemID=:FWorkItemID';
        qry.Parameters.FindParam('FWorkItemID').value:= mdata['FWorkItemID'];
        qry.ExecSQL;
      finally
         ;
      end;
      application.MessageBox('提交完毕！','系统提示',MB_ICONINFORMATION);
      TB_Submit.Visible:=False;
    end;
  end;
  If TB_Submit.Caption='反提交' then
  begin
    If application.MessageBox(Pchar('警告：是否反提交务单号为：【'+ListItemFNumber+'】的单据？'+chr(13)+chr(13)
                                   +'反提交后的数据不允许收回，确定要反提交本任务吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      try
        qry.SQL.Text:='Update T_WorkItem Set FWorkStatus=0 where FWorkItemID=:FWorkItemID';
        qry.Parameters.FindParam('FWorkItemID').value:= mdata['FWorkItemID'];
        qry.ExecSQL;
      finally
         ;
      end;
      application.MessageBox('反提交完毕！','系统提示',MB_ICONINFORMATION);
      TB_Submit.Visible:=False;
    end;
  end;

end;

procedure TFrm_WorkItem.cxButtonEdit2PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var selValue : string;
    qry,qry1: TADOQuery;
begin
   qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
   qry1:=TADOQuery.Create(self);
  qry1.ConnectionString:=mdlData.ReadConnStr;
   try
     qry.SQL.Text:='select * from V_FileItem with(nolock) where FDepartmentID=:FDepartmentID and FItemNumber=:FItemNumber order by FItemNumber ';
     qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
     qry.Parameters.FindParam('FItemNumber').value:=Trim(E_FItemNumber.Text);
     qry.Open;
   finally
      ;
   end;
   If qry.RecordCount=0 then
   begin
     try
       qry.SQL.Text:='select * from VT_FileItem with(nolock) where FDepartmentID=:FDepartmentID';
       qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
       qry.Open;
     finally
       ;
     end;

     selValue:=select('选择档案号','FNumber','FParentNumber','FNumber','FName',qry);
     If (Length(selValue)>0) and (qry.FieldByName('FDetail').Value<>0) then
     begin
       E_FItemID.Text:=qry.FieldByName('FItemID').Value;
       try
         qry1.SQL.Text:='select * from V_FileItem with(nolock) where FDepartmentID=:FDepartmentID and FItemID=:FItemID';
         qry1.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
         qry1.Parameters.FindParam('FItemID').value:=qry.FieldByName('FItemID').Value;
         qry1.Open;
       finally
          ;
       end;
       If qry1.RecordCount>0 then
       begin
         E_FBranchFileNo.Text:=qry1.FieldByName('FBranchFileNo').Value;
         E_FClientFullName.Text:=qry1.FieldByName('FClientFullName').AsString;
         E_FItemModel.Text:=qry1.FieldByName('FItemModel').AsString;
         E_FItemNumber.Text:=qry1.FieldByName('FItemNumber').AsString;
         E_FItemQry.Text:=qry1.FieldByName('FItemQry').Value;
         E_FWorkData.Text:=qry1.FieldByName('FWorkData').AsString;
         E_FProductName.Text:=qry1.FieldByName('FProductName').AsString;
         E_FWorkData.Text:=qry1.FieldByName('FWorkData').AsString;
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
     E_FItemModel.Text:=qry.FieldByName('FItemModel').AsString;
     E_FItemNumber.Text:=qry.FieldByName('FItemNumber').AsString;
     E_FItemQry.Text:=qry.FieldByName('FItemQry').Value;
     E_FWorkData.Text:=qry.FieldByName('FWorkData').AsString;
     E_FProductName.Text:=qry.FieldByName('FProductName').AsString;
     E_FWorkData.Text:=qry.FieldByName('FWorkData').AsString;
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
      E_FItemModel.Text:=qry.FieldByName('FItemModel').AsString;
      E_FItemNumber.Text:=qry.FieldByName('FItemNumber').AsString;
      E_FItemQry.Text:=qry.FieldByName('FItemQry').Value;
      E_FWorkData.Text:=qry.FieldByName('FWorkData').AsString;
      E_FProductName.Text:=qry.FieldByName('FProductName').AsString;
      E_FWorkData.Text:=qry.FieldByName('FWorkData').AsString;
    end;
    Exit;
  end;



end;

procedure TFrm_WorkItem.MyTreeView_AgentExpanding(Sender: TObject;
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
               +'Isleaf from VT_WorkAgent with(nolock) where FParentNumber= '''
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
    with MyTreeView_Agent.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('Isleaf').value;
    end;
    qry.Next;
  end;


end;

procedure TFrm_WorkItem.MyTreeView_AgentChange(Sender: TObject;
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

    If PTree(Node.Data).Isleaf=1 then
    begin
      If not MyItemList(qry,Mdata5,
                        'V_WorkList',
                        'FDepartmentName+'';''+FSysTem+'';''+FAgentName+'';''+cast(FWorkYear as varchar(4))+'';''+cast(FWorkMonth as varchar(2))+'';''+FWorkItemNum+'';''',
                        ListItemFNumber5,'FDepartmentName+'';''+FSysTem+'';''+FAgentName+'';''+cast(FWorkYear as varchar(4))+'';''+cast(FWorkMonth as varchar(2))+'';''+FWorkItemNum+'';''') then
      begin
       // mdata5.Open;
        cxGV5.DataController.DataSource.DataSet:=mdata5;
      end;
    end;

  end;

end;

procedure TFrm_WorkItem.TB_WorkNumClick(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If not TreeVeiwListWhere(qry,MyTreeView_WorkNum,'VT_WorkList',' and FDepartmentID='+IntToStr(UserFDepartmentID) ) then
  begin
    Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;

end;

procedure TFrm_WorkItem.TB_AgentClick(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If not TreeVeiwListUserID(qry,MyTreeView_Agent,'VT_WorkAgent',UserFDepartmentID) then
  begin
    Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;

end;

procedure TFrm_WorkItem.TB_WorkItemClick(Sender: TObject);
var
  Query_Sp:TADOStoredProc;
  i,k,s,ReNum,ReNumLoop,R_Count:Integer;
  ExcelApp,MyWorkBook,mysheet: Variant;
  filepath,savefilepath,Sqlstr,copystart,copyend,copystart1,aa:string;
  ListQry:Tadoquery;
begin
  filepath:=Extractfilepath(application.ExeName)+'生产任务模版.xls';
  if (Mdata.Active) and (Mdata.recordcount>0) then
  Begin
    if (Mdata.FieldByName('FWorkItemNum').AsString<>'') Or (Mdata.FieldByName('FWorkItemNum').AsString<>Null) then
    Begin
      if not DirectoryExists(Extractfilepath(application.ExeName)+Mdata.FieldByName('FWorkItemNum').AsString) then
      Begin
        if Not CreateDir(Extractfilepath(application.ExeName)+Mdata.FieldByName('FWorkItemNum').AsString) then
        Begin
          Application.MessageBox(PChar('创建数据保存目录'+Extractfilepath(application.ExeName)+Mdata.FieldByName('FWorkItemNum').AsString+'失败!'), '系统错误', MB_OK +MB_ICONSTOP);
          exit;
        End;
      End;
      savefilepath:=Extractfilepath(application.ExeName)+Mdata.FieldByName('FWorkItemNum').AsString+'\'+Mdata.FieldByName('FWorkItemNum').AsString+'.xls';
    end
    else
    BEGIN
      savefilepath:=Extractfilepath(application.ExeName)+'OutData\'+mdata.FieldByName('FWorkItemNum').AsString+'.xls';
    END;
    if FileExists(savefilepath) then
    begin
      DeleteFile(savefilepath) ;
    end;

    StatusBar1.Panels[5].text:='正在导出生产任务:'+Mdata.FieldByName('FWorkItemNum').AsString+'的信息..请稍等!!';
    ExcelApp:= CreateOleObject('Excel.Application' );
    MyWorkBook:=ExcelApp.WorkBooks.Open( filepath );
    //ExcelApp.Visible:=True;
    MyWorkBook.WorkSheets[1].Cells[3,3].Value := Mdata.FieldByName('FClientFullName').AsString; //项目名称
    MyWorkBook.WorkSheets[1].Cells[4,3].Value := Mdata.FieldByName('FWorkItemNum').AsString; //任务单号
    MyWorkBook.WorkSheets[1].Cells[5,3].Value := Mdata.FieldByName('FDeliveryPlace').AsString; //交货地点
    MyWorkBook.WorkSheets[1].Cells[6,3].Value := Mdata.FieldByName('FJobPlace').AsString; //加工地点

    MyWorkBook.WorkSheets[1].Cells[4,7].Value := Mdata.FieldByName('FItemNumber').AsString; //图号
    MyWorkBook.WorkSheets[1].Cells[5,7].Value := Mdata.FieldByName('FItemModel').AsString; //规格型号
    MyWorkBook.WorkSheets[1].Cells[6,7].Value := Mdata.FieldByName('FFileNo').AsString; //档 案 号

    MyWorkBook.WorkSheets[1].Cells[4,10].Value := Mdata.FieldByName('FFactoryNum').AsString; //出厂编号
    MyWorkBook.WorkSheets[1].Cells[5,10].Value := Mdata.FieldByName('FItemQry').AsString; //台套数
    i:=9;
    MyWorkBook.WorkSheets[1].Name:=Mdata.FieldByName('FWorkItemNum').AsString;

    StatusBar1.Panels[5].text:='正在导出生产任务单:'+Mdata.FieldByName('FWorkItemNum').AsString+'的明细信息..请稍等!!';
    copystart:='A'+IntToStr(i);
    if Mdata.recordcount>0 then
    Begin
      if Mdata.recordcount>1 then
      Begin
        copystart:='A'+IntToStr(i);
        copystart1:='A'+IntToStr(i+1);
        copyend:='J'+IntToStr(i);
        ReNum:=Mdata.recordcount-1;
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
        R_Count:=Mdata.recordcount;
      end;
      Mdata.first;
      K:=0 ;
      while not Mdata.eof do
      Begin
        MyWorkBook.WorkSheets[1].Cells[i,1].Value := inttostr(K+1); //序号
        MyWorkBook.WorkSheets[1].Cells[i,2].Value := Mdata.FieldByName('FBalanceName').AsString+'  '+Mdata.FieldByName('FBalanceModel').AsString; //部件名称 +规格
        MyWorkBook.WorkSheets[1].Cells[i,5].Value := Mdata.FieldByName('FUnitName').AsString; //单位
        MyWorkBook.WorkSheets[1].Cells[i,6].Value := Mdata.FieldByName('FEstimateQry').AsString; //单台估重
        MyWorkBook.WorkSheets[1].Cells[i,7].Value := Mdata.FieldByName('FWorkItemPrice').AsString; //单价
        MyWorkBook.WorkSheets[1].Cells[i,8].Value := Mdata.FieldByName('FEstimateAmount').AsString; //金  额
        MyWorkBook.WorkSheets[1].Cells[i,9].Value := Mdata.FieldByName('FDeliveryDate').AsString; //交货期
        MyWorkBook.WorkSheets[1].Cells[i,10].Value := Mdata.FieldByName('FWorkListRemark').AsString; //备注
        Mdata.next;
        i:=i+1;
        k:=k+1;
      End;
      MyWorkBook.WorkSheets[1].Cells[i,8].Value := '=SUM(h9:h'+IntToStr(i-1)+')'; //合计重量
     // MyWorkBook.WorkSheets[1].Cells[i+2,2].Value:=AnsiReplaceStr(MyWorkBook.WorkSheets[1].Cells[i+5,2].Value,'A',Mdata.FieldByName('FMaterialDate').AsString); //单价执行日期
      MyWorkBook.WorkSheets[1].Cells[i+3,2].Value:=AnsiReplaceStr(MyWorkBook.WorkSheets[1].Cells[i+5,2].Value,'A',Mdata.FieldByName('FMaterialDate').AsString); //单价执行日期
      MyWorkBook.WorkSheets[1].Cells[i+3,2].Value:=AnsiReplaceStr(MyWorkBook.WorkSheets[1].Cells[i+5,2].Value,'B',Mdata.FieldByName('FAdvancePercent').AsString); //预付款
      MyWorkBook.WorkSheets[1].Cells[i+5,4].Value:=AnsiReplaceStr(MyWorkBook.WorkSheets[1].Cells[i+6,4].Value,'C',Mdata.FieldByName('FE05').AsString); //补充说明

    end;

    StatusBar1.Panels[5].text:='生产任务单:'+Mdata.FieldByName('FWorkItemNum').AsString+'的信息导出完成!!';
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

procedure TFrm_WorkItem.Act_FIsDelListExecute(Sender: TObject);
var
 qry:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  If TB_FIsDelList.Caption='行作废' then
  begin
    If application.MessageBox(Pchar('警告：是否作废任务单号为：【'+ListItemFNumber+'】的单据？'+chr(13)+chr(13)
                                   +'确定要作废本行任务信息吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      try
        qry.SQL.Text:='Update T_WorkList Set FIsDelList=1 where FWorkListID=:FWorkListID';
        qry.Parameters.FindParam('FWorkListID').value:= mdata['FWorkListID'];
        qry.ExecSQL;
      finally
         ;
      end;
      mdata.Edit;
      mdata['FIsDelList']:=True;
      mdata.Post;
      application.MessageBox('行作废完毕！','系统提示',MB_ICONINFORMATION);
      TB_FIsDelList.Caption:='反行作废';
    end;
    Exit;
  end;
  If TB_FIsDelList.Caption='反行作废' then
  begin
    If application.MessageBox(Pchar('警告：是否反作废任务单号为：【'+ListItemFNumber+'】的单据？'+chr(13)+chr(13)
                                   +'确定要反作废本行任务吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      try
        qry.SQL.Text:='Update T_WorkList Set FIsDelList=0 where FWorkListID=:FWorkListID';
        qry.Parameters.FindParam('FWorkListID').value:= mdata['FWorkListID'];
        qry.ExecSQL;
      finally
         ;
      end;
      mdata.Edit;
      mdata['FIsDelList']:=False;
      mdata.Post;
      application.MessageBox('反作废完毕！','系统提示',MB_ICONINFORMATION);
       TB_FIsDelList.Caption:='行作废';
    end;
    Exit;
  end;
end;

procedure TFrm_WorkItem.cxGVFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;
  If mdata['FIsDelList']=True then
    TB_FIsDelList.Caption:='反行作废'
  else
    TB_FIsDelList.Caption:='行作废';

end;

procedure TFrm_WorkItem.TB_BOMRightClick(Sender: TObject);
var
  proc:TADOStoredProc;
  P_Retinf:String;

begin
  proc:=TADOStoredProc.Create(self);
  proc.ConnectionString:=mdlData.ReadConnStr;
  proc.CommandTimeout:=500;

  try
    proc.ProcedureName:='P_Imp_Right;1';
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
      size:=200;
      name := '@FFullNumber';
      value:=ListItemFNumber5;
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
  finally
     ;
  end;
    //cxGV5.DataController.DataSource.DataSet:=proc;
      //mdata5.CopyFromDataSet(proc);
{      exit;
    P_Retinf:=proc.Parameters.FindParam('@Retinf').Value;
    If  P_Retinf<>'' then
    begin
      Messagedlg(P_Retinf,mtInformation,[mbok],0);
      mdata5.Close;

      DS_Mdata5.DataSet:=Mdata5;
      cxGV5.DataController.DataSource:=DS_Mdata5;

      mdata5.CopyFromDataSet(proc);
      Mdata5.Active:=True;
      cxGvColumn(cxGv5,mdata5);
      Exit;
    end
    else
    begin
      application.MessageBox('设计定额权限设置完成','系统提示',MB_ICONINFORMATION);
     // mdata5.Close;
      mdata5.CopyFromDataSet(proc);
      Mdata5.Active:=True;
      //DS_Mdata5.DataSet:=Mdata5;
      //cxGV5.DataController.DataSource:=DS_Mdata5;
      //cxGvColumn(cxGv5,mdata5);
    end;
  finally
     ;
  end;
  proc.Free;

       }


end;

procedure TFrm_WorkItem.TB_ItemClick(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If not TreeVeiwListUserID(qry,MyTreeView_Item,'VT_BalanceWorkItem',UserFDepartmentID) then
  begin
    Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;
end;

procedure TFrm_WorkItem.MyTreeView_ItemExpanding(Sender: TObject;
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
               +'Isleaf from VT_BalanceWorkItem where FParentNumber= '''
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
    P.Flag := cNoLoadFlag;                            // 新节点，未加载标志
    P.Isleaf:=qry.fieldbyname('Isleaf').value;
    with MyTreeView_Item.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('Isleaf').value;
    end;
    qry.Next;
  end;

end;

procedure TFrm_WorkItem.MyTreeView_ItemChange(Sender: TObject;
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
    ListItemFNumber:=PTree(Node.Data).FNumber;
    If PTree(Node.Data).Isleaf=1 then
    begin
      If not MyItemList(qry,Mdata5,'V_WorkList','FDepartmentName+'';''+FProductName+'';''+FItemLb+'';''+FBranchItemNumber+'';''+FAgentName+'';''',ListItemFNumber,'FBranchItemNumber,FProductClass,FNumber') then
      begin
       // mdata4.Open;
      end;
    end
    else
      mdata5.Close;

  end;


end;

procedure TFrm_WorkItem.ToolButton1Click(Sender: TObject);
var
  Query_Sp:TADOStoredProc;
  i,k,s,ReNum,ReNumLoop,R_Count:Integer;
  ExcelApp,MyWorkBook,mysheet: Variant;
  filepath,savefilepath,Sqlstr,copystart,copyend,copystart1,aa:string;
  ListQry:Tadoquery;
begin
  filepath:=Extractfilepath(application.ExeName)+'运输分包任务单模版.xls';
  if (Mdata.Active) and (Mdata.recordcount>0) then
  Begin
    SaveDialog1.FileName:='运输分包任务单'+Mdata.FieldByName('FDepartmentNum').AsString+Mdata.FieldByName('FWorkItemNum').AsString;
    SaveDialog1.Filter:='.xls';
    SaveDialog1.Execute;

    if (Mdata.FieldByName('FWorkItemNum').AsString<>'') Or (Mdata.FieldByName('FWorkItemNum').AsString<>Null) then
        savefilepath:=SaveDialog1.FileName+'.xls';

    if FileExists(savefilepath) then
    begin
      DeleteFile(savefilepath) ;
    end;

    StatusBar1.Panels[5].text:='正在导出运输分包任务单:'+Mdata.FieldByName('FDepartmentNum').AsString+Mdata.FieldByName('FWorkItemNum').AsString+'的信息..请稍等!!';
    ExcelApp:= CreateOleObject('Excel.Application' );
    MyWorkBook:=ExcelApp.WorkBooks.Open( filepath );
    //ExcelApp.Visible:=True;
    MyWorkBook.WorkSheets[1].Cells[1,1].Value := AnsiReplaceStr(MyWorkBook.WorkSheets[1].Cells[1,1].Value,'A',Mdata.FieldByName('FWorkData').AsString); 
    MyWorkBook.WorkSheets[1].Cells[3,3].Value := Mdata.FieldByName('FClientFullName').AsString; //项目名称
    MyWorkBook.WorkSheets[1].Cells[4,3].Value := Mdata.FieldByName('FDepartmentNum').AsString+Mdata.FieldByName('FWorkItemNum').AsString; //任务单号
    MyWorkBook.WorkSheets[1].Cells[5,3].Value := Mdata.FieldByName('FDeliveryPlace').AsString; //交货地点
    MyWorkBook.WorkSheets[1].Cells[6,3].Value := Mdata.FieldByName('FJobPlace').AsString; //加工地点
    MyWorkBook.WorkSheets[1].Cells[4,7].Value := Mdata.FieldByName('FItemNumber').AsString; //图号
    MyWorkBook.WorkSheets[1].Cells[6,7].Value := Mdata.FieldByName('FFileNo').AsString; //档 案 号

    i:=9;
    MyWorkBook.WorkSheets[1].Name:=Mdata.FieldByName('FDepartmentNum').AsString+Mdata.FieldByName('FWorkItemNum').AsString;

    StatusBar1.Panels[5].text:='正在导出运输分包任务单:'+Mdata.FieldByName('FDepartmentNum').AsString+Mdata.FieldByName('FWorkItemNum').AsString+'的明细信息..请稍等!!';
    copystart:='A'+IntToStr(i);
    if Mdata.recordcount>0 then
    Begin
      if Mdata.recordcount>1 then
      Begin
        copystart:='A'+IntToStr(i);
        copystart1:='A'+IntToStr(i+1);
        copyend:='J'+IntToStr(i);
        ReNum:=Mdata.recordcount-1;
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
        R_Count:=Mdata.recordcount;
      end;
      Mdata.first;
      K:=0 ;
      while not Mdata.eof do
      Begin
        MyWorkBook.WorkSheets[1].Cells[i,1].Value := inttostr(K+1); //序号
        MyWorkBook.WorkSheets[1].Cells[i,2].Value := Mdata.FieldByName('FBalanceName').AsString+'  '+Mdata.FieldByName('FBalanceModel').AsString; //部件名称 +规格
        MyWorkBook.WorkSheets[1].Cells[i,5].Value := Mdata.FieldByName('FUnitName').AsString; //单位
        MyWorkBook.WorkSheets[1].Cells[i,6].Value := Mdata.FieldByName('FEstimateQry').AsString; //单台估重
        MyWorkBook.WorkSheets[1].Cells[i,7].Value := Mdata.FieldByName('FWorkItemPrice').AsString; //单价
        MyWorkBook.WorkSheets[1].Cells[i,8].Value := Mdata.FieldByName('FEstimateAmount').AsString; //金  额
        MyWorkBook.WorkSheets[1].Cells[i,9].Value := Mdata.FieldByName('FDeliveryDateTxt').AsString; //交货期
        MyWorkBook.WorkSheets[1].Cells[i,10].Value := Mdata.FieldByName('FWorkListRemark').AsString; //备注
        Mdata.next;
        i:=i+1;
        k:=k+1;
      End;
      MyWorkBook.WorkSheets[1].Cells[i,8].Value := '=SUM(h9:h'+IntToStr(i-1)+')'; //合计重量
      MyWorkBook.WorkSheets[1].Cells[i+1,3].Value := Mdata.FieldByName('FWorkAudit').AsString;
      MyWorkBook.WorkSheets[1].Cells[i+1,7].Value := Mdata.FieldByName('FWorkCheck').AsString;
      MyWorkBook.WorkSheets[1].Cells[i+1,10].Value := Mdata.FieldByName('FWorkWrite').AsString;

      MyWorkBook.WorkSheets[1].Cells[i+6,2].Value:=AnsiReplaceStr(MyWorkBook.WorkSheets[1].Cells[i+6,2].Value,'B',Mdata.FieldByName('FBidDate').AsString); //招议标日期
      MyWorkBook.WorkSheets[1].Cells[i+7,4].Value:=AnsiReplaceStr(MyWorkBook.WorkSheets[1].Cells[i+7,4].Value,'C',Mdata.FieldByName('FE05').AsString); //补充说明

     if (Mdata.FieldByName('FWorkData').AsString='电袋事业部(厦门)') or (Mdata.FieldByName('FWorkData').AsString='电袋与管带事业部(厦门)')  then
        MyWorkBook.WorkSheets[1].Cells[i+14,3].Value:= '厦门龙净环保技术有限公司'
     else
        MyWorkBook.WorkSheets[1].Cells[i+14,3].Value:= '福建龙净环保股份有限公司';

      MyWorkBook.WorkSheets[1].Cells[i+14,8].Value:= Mdata.FieldByName('FAgentName').AsString; //乙方

      MyWorkBook.WorkSheets[1].Cells[i+16,4].Value:= Mdata.FieldByName('FWorkItemDate').AsString; //日期

    end;

    StatusBar1.Panels[5].text:='运输分包任务单:'+Mdata.FieldByName('FDepartmentNum').AsString+Mdata.FieldByName('FWorkItemNum').AsString+'的信息导出完成!!';
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

procedure TFrm_WorkItem.E_LocatePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  try
    qry.SQL.Text:='Select * from V_WorkList with(nolock) where FDepartmentID=:FDepartmentID '
                       +'and FIsDel=0 and FIsDelList=0 and  (FWorkItemNum like :Locate1 or FBranchFileNo like :Locate2 '
                       +'or FClientshortName like :Locate3 or FBalanceName like :Locate4 '
                       +'or FBalanceModel like :Locate5 or FBranchItemNumber like :Locate6) ';
    qry.Parameters.FindParam('FDepartmentID').Value:=UserFDepartmentID;
    qry.Parameters.FindParam('Locate1').Value:='%'+Trim(E_Locate.Text)+'%';
    qry.Parameters.FindParam('Locate2').Value:='%'+Trim(E_Locate.Text)+'%';
    qry.Parameters.FindParam('Locate3').Value:='%'+Trim(E_Locate.Text)+'%';
    qry.Parameters.FindParam('Locate4').Value:='%'+Trim(E_Locate.Text)+'%';
    qry.Parameters.FindParam('Locate5').Value:='%'+Trim(E_Locate.Text)+'%';
    qry.Parameters.FindParam('Locate6').Value:='%'+Trim(E_Locate.Text)+'%';
    qry.Open;
  finally
     ;
  end;
  MData5.CopyFromDataSet(qry);
  MData5.Active:=True;


end;

procedure TFrm_WorkItem.Act_MaxID_ListExecute(Sender: TObject);
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
      value:='T_WorkList';
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

procedure TFrm_WorkItem.Act_MaxIDExecute(Sender: TObject);
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
      value:='T_WorkItem';
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


