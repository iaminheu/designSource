unit Main_PackStock;

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
  TFlatPanelUnit, cxLookAndFeelPainters, cxButtons, cxTimeEdit, jpeg,
  cxCheckComboBox, RzEdit, RzLabel, cxSpinEdit, cxGridBandedTableView,
  cxGridDBBandedTableView, frOLEExl, ActnList, Menus, Comobj,RzStatus;

type
  TFrm_PackStock = class(TFrm_GridBass)
    ImageList: TImageList;
    frReport: TfrReport;
    frDBDataSet: TfrDBDataSet;
    PC_Main: TRzPageControl;
    TS_StockList: TRzTabSheet;
    Panel3: TPanel;
    MData_SLIst: TdxMemData;
    MData_SLIstth1: TStringField;
    MData_SLIstmc1: TStringField;
    MData_SLIstgg1: TStringField;
    MData_SLIstSelRemark_1: TStringField;
    MData_SLIstssth1: TStringField;
    MData_SLIstFK3Number_1: TStringField;
    MData_SLIstFName1: TStringField;
    MData_SLIstFModel1: TStringField;
    MData_SLIstunitName1: TStringField;
    MData_SLIstjs1: TStringField;
    MData_SLIstFSumQry1: TFloatField;
    MData_SLIstFQry1: TFloatField;
    MData_SLIstFSuttle1: TFloatField;
    MData_SLIstFNumber1: TStringField;
    MData_SLIstFParentNumber1: TStringField;
    MData_SLIstFFullNumber1: TStringField;
    DS_Mdata_SLIst: TDataSource;
    MData_SLIstNum: TStringField;
    MData_SLIstabc: TStringField;
    MData_SLIstFFStockInListRemark: TStringField;
    MData_SLIstFCode: TStringField;
    MData_SLIstFStockInListID: TIntegerField;
    MData_SLIstFInSumSuttle: TFloatField;
    MData_SLIstFInQry: TFloatField;
    MData_SLIstFInSumQry: TFloatField;
    RzSizePanel1: TRzSizePanel;
    MyTreeView_SList: TTreeView;
    Panel11: TPanel;
    RzSizePanel6: TRzSizePanel;
    RzLabel9: TRzLabel;
    ToolBar5: TToolBar;
    TB_Ref3: TToolButton;
    TB_Out3: TToolButton;
    TB_Down3: TToolButton;
    TB_Prin3: TToolButton;
    TB_Exit3: TToolButton;
    RSP_StockIn: TRzPanel;
    RSP_List: TPageControl;
    TabSheet3: TTabSheet;
    cxGrid_SLIst: TcxGrid;
    cxGV_SLIst: TcxGridDBTableView;
    Num_3: TcxGridDBColumn;
    xh_3: TcxGridDBColumn;
    th_3: TcxGridDBColumn;
    mc_3: TcxGridDBColumn;
    gg_3: TcxGridDBColumn;
    mcgg_3: TcxGridDBColumn;
    SelRemark_3: TcxGridDBColumn;
    FSumQry_3: TcxGridDBColumn;
    FSumPackQry_3: TcxGridDBColumn;
    FSuttle_3: TcxGridDBColumn;
    FSumSuttle_3: TcxGridDBColumn;
    FStockListRemark_3: TcxGridDBColumn;
    FFullNumber_3: TcxGridDBColumn;
    ssFullNumber_3: TcxGridDBColumn;
    FStockInListID_3: TcxGridDBColumn;
    FPartsNumber_3: TcxGridDBColumn;
    FPartsCode_3: TcxGridDBColumn;
    FWorkParts_3: TcxGridDBColumn;
    FK3ItemID_3: TcxGridDBColumn;
    cxGL_SLIst: TcxGridLevel;
    RSP_Item: TRzSizePanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    cxGrid_SItem: TcxGrid;
    cxGV_SItem: TcxGridDBTableView;
    FBranchItemNumber_M3: TcxGridDBColumn;
    FPartsCode_M3: TcxGridDBColumn;
    FWorkPartsNum_M3: TcxGridDBColumn;
    FWorkParts_M3: TcxGridDBColumn;
    FPartsName_M3: TcxGridDBColumn;
    FStockStatusNotes_M3: TcxGridDBColumn;
    FStockStatus_M3: TcxGridDBColumn;
    FStockWrite_M3: TcxGridDBColumn;
    FItemNumber_M3: TcxGridDBColumn;
    FBranchFileNo_M3: TcxGridDBColumn;
    FStockWriteDate_M3: TcxGridDBColumn;
    FFileNo_M3: TcxGridDBColumn;
    FClientFullName_M3: TcxGridDBColumn;
    FStockItemID_M3: TcxGridDBColumn;
    FStockSubmitDate_M3: TcxGridDBColumn;
    FItemId_M3: TcxGridDBColumn;
    FItemModel_M3: TcxGridDBColumn;
    FProductID_M3: TcxGridDBColumn;
    FStockCheck_M3: TcxGridDBColumn;
    FStockCheckDate_M3: TcxGridDBColumn;
    FFactureID_M3: TcxGridDBColumn;
    FFactureName_M3: TcxGridDBColumn;
    cxGL_SItem: TcxGridLevel;
    DS_Mdata_SItem: TDataSource;
    MData_SItem: TdxMemData;
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
    dw_3: TcxGridDBColumn;
    TS_PackStock: TRzTabSheet;
    RzSizePanel2: TRzSizePanel;
    MyTreeView: TTreeView;
    Panel1: TPanel;
    Panel2: TPanel;
    ToolBar1: TToolBar;
    TB_Ref: TToolButton;
    TB_Out: TToolButton;
    TB_Down: TToolButton;
    TB_Prin: TToolButton;
    TB_Exit: TToolButton;
    DS_Mdata: TDataSource;
    DS_Mdata_M: TDataSource;
    MData_M: TdxMemData;
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
    MData: TdxMemData;
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
    TB_Edit_M: TToolButton;
    DS_Mdata1: TDataSource;
    MData1: TdxMemData;
    StringField69: TStringField;
    StringField70: TStringField;
    StringField71: TStringField;
    StringField72: TStringField;
    StringField73: TStringField;
    StringField74: TStringField;
    StringField75: TStringField;
    StringField76: TStringField;
    StringField77: TStringField;
    StringField78: TStringField;
    StringField79: TStringField;
    FloatField25: TFloatField;
    FloatField26: TFloatField;
    FloatField27: TFloatField;
    StringField80: TStringField;
    StringField81: TStringField;
    StringField82: TStringField;
    StringField83: TStringField;
    StringField84: TStringField;
    StringField85: TStringField;
    IntegerField5: TIntegerField;
    FloatField28: TFloatField;
    FloatField29: TFloatField;
    FloatField30: TFloatField;
    TS_PackItem: TRzTabSheet;
    TB_Update: TToolButton;
    TB_StockPack: TToolButton;
    RzSizePanel9: TRzSizePanel;
    Panel7: TPanel;
    Panel8: TPanel;
    ToolBar_M2: TToolBar;
    TB_Ref2: TToolButton;
    TB_Edit_M2: TToolButton;
    TB_PackListXLS: TToolButton;
    ToolButton15: TToolButton;
    TB_PackItem: TToolButton;
    TB_PackItemFirst: TToolButton;
    TB_Out2: TToolButton;
    TB_Down2: TToolButton;
    ToolButton18: TToolButton;
    ToolButton11: TToolButton;
    MData_PItem: TdxMemData;
    StringField86: TStringField;
    StringField87: TStringField;
    StringField88: TStringField;
    StringField89: TStringField;
    StringField90: TStringField;
    StringField91: TStringField;
    StringField92: TStringField;
    StringField93: TStringField;
    StringField94: TStringField;
    StringField95: TStringField;
    StringField96: TStringField;
    FloatField31: TFloatField;
    FloatField32: TFloatField;
    FloatField33: TFloatField;
    StringField97: TStringField;
    StringField98: TStringField;
    StringField99: TStringField;
    StringField100: TStringField;
    StringField101: TStringField;
    StringField102: TStringField;
    IntegerField6: TIntegerField;
    FloatField34: TFloatField;
    FloatField35: TFloatField;
    FloatField36: TFloatField;
    DS_Mdata_PItem: TDataSource;
    TB_IMP_PackItem: TToolButton;
    DS_Mdata_PList: TDataSource;
    MData_PList: TdxMemData;
    StringField103: TStringField;
    StringField104: TStringField;
    StringField105: TStringField;
    StringField106: TStringField;
    StringField107: TStringField;
    StringField108: TStringField;
    StringField109: TStringField;
    StringField110: TStringField;
    StringField111: TStringField;
    StringField112: TStringField;
    StringField113: TStringField;
    FloatField37: TFloatField;
    FloatField38: TFloatField;
    FloatField39: TFloatField;
    StringField114: TStringField;
    StringField115: TStringField;
    StringField116: TStringField;
    StringField117: TStringField;
    StringField118: TStringField;
    StringField119: TStringField;
    IntegerField7: TIntegerField;
    FloatField40: TFloatField;
    FloatField41: TFloatField;
    FloatField42: TFloatField;
    TB_Del: TToolButton;
    TB_ReNoRef: TToolButton;
    TB_PackList: TToolButton;
    Panel_button2: TPanel;
    Bevel2: TBevel;
    L_FPackNum1: TLabel;
    L_FPackNum2: TLabel;
    OKBtn2: TcxButton;
    CancelBtn2: TcxButton;
    Panel4: TPanel;
    RzSizePanel5: TRzSizePanel;
    PageControl6: TPageControl;
    TabSheet10: TTabSheet;
    cxGrid_PList: TcxGrid;
    cxGV_PList: TcxGridDBTableView;
    FListNum2: TcxGridDBColumn;
    xh_2: TcxGridDBColumn;
    th_2: TcxGridDBColumn;
    mcgg_2: TcxGridDBColumn;
    mc_2: TcxGridDBColumn;
    gg_2: TcxGridDBColumn;
    SelRemark_2: TcxGridDBColumn;
    dw_2: TcxGridDBColumn;
    FSumQry_2: TcxGridDBColumn;
    FPackQry_2: TcxGridDBColumn;
    FPackNo_22: TcxGridDBColumn;
    FSuttle_2: TcxGridDBColumn;
    FSumSuttle_2: TcxGridDBColumn;
    FStockListRemark_2: TcxGridDBColumn;
    FFullNumber_2: TcxGridDBColumn;
    ssFullNumber_2: TcxGridDBColumn;
    FPackStockListID_2: TcxGridDBColumn;
    FPartsNumber_2: TcxGridDBColumn;
    FPartsCode_2: TcxGridDBColumn;
    FWorkParts_2: TcxGridDBColumn;
    FPackItemID_22: TcxGridDBColumn;
    cxGL_PList: TcxGridLevel;
    PageControl7: TPageControl;
    TabSheet11: TTabSheet;
    cxGrid_PItem: TcxGrid;
    cxGV1: TcxGridDBTableView;
    cxGV_PItem: TcxGridDBBandedTableView;
    FPackNum_2: TcxGridDBBandedColumn;
    FPackClass_2: TcxGridDBBandedColumn;
    FPackNo_2: TcxGridDBBandedColumn;
    FPackNumber_2: TcxGridDBBandedColumn;
    FPackName_2: TcxGridDBBandedColumn;
    FPackMode_2: TcxGridDBBandedColumn;
    FGross: TcxGridDBBandedColumn;
    FNet: TcxGridDBBandedColumn;
    FLength: TcxGridDBBandedColumn;
    FWidth: TcxGridDBBandedColumn;
    FHigh: TcxGridDBBandedColumn;
    FV: TcxGridDBBandedColumn;
    FSteel: TcxGridDBBandedColumn;
    FWood: TcxGridDBBandedColumn;
    FPlastic: TcxGridDBBandedColumn;
    FAsphalt: TcxGridDBBandedColumn;
    FColorbar: TcxGridDBBandedColumn;
    FPlace: TcxGridDBBandedColumn;
    FPackItemID_2: TcxGridDBBandedColumn;
    FItemID_2: TcxGridDBBandedColumn;
    FBranchItemNumber_2: TcxGridDBBandedColumn;
    cxGL_PItem: TcxGridLevel;
    MyTreeView_Pack: TTreeView;
    frDBDataSet1: TfrDBDataSet;
    frReport1: TfrReport;
    Panel5: TPanel;
    RzSizePanel4: TRzSizePanel;
    frOLEExcelExport1: TfrOLEExcelExport;
    PageControl3: TPageControl;
    TabSheet5: TTabSheet;
    cxGrid_M: TcxGrid;
    cxGV_M: TcxGridDBTableView;
    FBranchItemNumber_M: TcxGridDBColumn;
    FPartsCode_M: TcxGridDBColumn;
    FWorkPartsNum_M: TcxGridDBColumn;
    FWorkParts_M: TcxGridDBColumn;
    FPartsName_M: TcxGridDBColumn;
    FPackStockStatusNotes_M: TcxGridDBColumn;
    FPackStockStatus_M: TcxGridDBColumn;
    FFactureName_M: TcxGridDBColumn;
    FItemNumber_M: TcxGridDBColumn;
    FBranchFileNo_M: TcxGridDBColumn;
    FFileNo_M: TcxGridDBColumn;
    FClientFullName_M: TcxGridDBColumn;
    FPackStockItemID_M: TcxGridDBColumn;
    FPackStockSubmitDate_M: TcxGridDBColumn;
    FItemId_M: TcxGridDBColumn;
    FItemModel_M: TcxGridDBColumn;
    FProductID_M: TcxGridDBColumn;
    FPackStockSubmit_M: TcxGridDBColumn;
    FFactureID_M: TcxGridDBColumn;
    cxGL_M: TcxGridLevel;
    PageControl2: TPageControl;
    TabSheet4: TTabSheet;
    cxGrid: TcxGrid;
    cxGV: TcxGridDBTableView;
    FPackNum: TcxGridDBColumn;
    Num: TcxGridDBColumn;
    xh: TcxGridDBColumn;
    th: TcxGridDBColumn;
    mcgg: TcxGridDBColumn;
    mc: TcxGridDBColumn;
    gg: TcxGridDBColumn;
    SelRemark: TcxGridDBColumn;
    dw: TcxGridDBColumn;
    FSumQry: TcxGridDBColumn;
    FPackQry: TcxGridDBColumn;
    FPackClass: TcxGridDBColumn;
    FPackNo: TcxGridDBColumn;
    FSuttle: TcxGridDBColumn;
    FSumSuttle: TcxGridDBColumn;
    FStockListRemark: TcxGridDBColumn;
    FFullNumber: TcxGridDBColumn;
    ssFullNumber: TcxGridDBColumn;
    FPackStockListID: TcxGridDBColumn;
    FPartsNumber: TcxGridDBColumn;
    FPartsCode: TcxGridDBColumn;
    FWorkParts: TcxGridDBColumn;
    FPackItemID: TcxGridDBColumn;
    cxGL: TcxGridLevel;
    Panel_button: TPanel;
    Bevel_button: TBevel;
    OKBtn_M: TcxButton;
    CancelBtn_M: TcxButton;
    actionList: TActionList;
    ActApp: TAction;
    Act_SetOpen_M: TAction;
    Act_IMP_PackItem: TAction;
    Act_SetClose_M: TAction;
    ActPartsSort: TAction;
    Act_Weigth: TAction;
    ActWorkBOM: TAction;
    ActTake: TAction;
    Act_SetClose_M2: TAction;
    ActAudit: TAction;
    ActProcessSort: TAction;
    Act_Number: TAction;
    FPackStockWriteID: TcxGridDBColumn;
    FPackStockWrite: TcxGridDBColumn;
    FPackStockWriteDate: TcxGridDBColumn;
    E_FPackNum1: TcxButtonEdit;
    E_FPackNum2: TcxButtonEdit;
    FPackLIstRemark: TcxGridDBColumn;
    FPackLIstRemark_2: TcxGridDBColumn;
    TB_PackDraft: TToolButton;
    FListNum_2: TcxGridDBBandedColumn;
    E_n: TcxSpinEdit;
    Label24: TLabel;
    Label1: TLabel;
    E_L: TcxSpinEdit;
    L_FPackNo: TLabel;
    E_FPackNo: TcxSpinEdit;
    IsEdit: TcxGridDBColumn;
    IsSel: TcxGridDBColumn;
    IsEdit_2: TcxGridDBColumn;
    ToolBar_2: TToolBar;
    OKBtn_2: TToolButton;
    TB_Edit2: TToolButton;
    CancelBtn_2: TToolButton;
    FPackClass_22: TcxGridDBColumn;
    FPackStockItemID: TcxGridDBColumn;
    ToolBar: TToolBar;
    TB_Edit: TToolButton;
    OKBtn: TToolButton;
    CancelBtn: TToolButton;
    PopupMenu_M2: TPopupMenu;
    N1: TMenuItem;
    PopupMenu1: TPopupMenu;
    Act_SetOpen_M2: TAction;
    ActPackMX: TAction;
    Act_App: TAction;
    Act_Next: TAction;
    Act_Add: TAction;
    Act_Sel: TAction;
    PopupMenu: TPopupMenu;
    N_Same: TMenuItem;
    N_Next: TMenuItem;
    N_Cut: TMenuItem;
    N5: TMenuItem;
    TB_Pack_SG: TToolButton;
    SaveDialog1: TSaveDialog;
    Panel6: TPanel;
    Bevel1: TBevel;
    stbBar: TRzStatusBar;
    RzClockStatus1: TRzClockStatus;
    RzKeyStatus1: TRzKeyStatus;
    RzKeyStatus2: TRzKeyStatus;
    RzKeyStatus3: TRzKeyStatus;
    stbMsg: TRzFieldStatus;
    TB_PackDraftXls: TToolButton;
    TB_Submit: TToolButton;
    Act_Status: TAction;
    TB_Audit: TToolButton;
    Act_Status_M: TAction;
    N6: TMenuItem;
    IsEdit_M2: TcxGridDBBandedColumn;
    TB_PackItemXLS: TToolButton;
    FFactureName_3: TcxGridDBColumn;
    Act_SetOpen_Tree2: TAction;
    Act_SetClose_Tree2: TAction;
    FPackStockStatus: TcxGridDBColumn;
    Act_SetOpen_2: TAction;
    Act_SetClose_2: TAction;
    Act_SetOpen: TAction;
    Act_SetClose: TAction;
    FPackDetail_3: TcxGridDBColumn;
    TB_Auto: TSpeedButton;
    FPackSubmit: TcxGridDBBandedColumn;
    FPackSubmitDate: TcxGridDBBandedColumn;
    FPackAudit: TcxGridDBBandedColumn;
    FPackAuditDate: TcxGridDBBandedColumn;
    FPackStatus: TcxGridDBBandedColumn;
    FPackStatusNotes: TcxGridDBBandedColumn;
    FPackWrite: TcxGridDBBandedColumn;
    FPackWriteDate: TcxGridDBBandedColumn;
    procedure FormResize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure MyTreeView_SListExpanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure MyTreeView_SListChange(Sender: TObject; Node: TTreeNode);
    procedure frReportBeginBand(Band: TfrBand);
    procedure TB_Ref3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TB_Out3Click(Sender: TObject);
    procedure TB_Exit3Click(Sender: TObject);
    procedure TB_Prin3Click(Sender: TObject);
    procedure cxGV_SItemFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure cxGV_SLIstCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure FFactureName_MPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure TB_RefClick(Sender: TObject);
    procedure MyTreeViewExpanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure MyTreeViewChange(Sender: TObject; Node: TTreeNode);
    procedure cxGV_MFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure AddPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure TB_Edit_MClick(Sender: TObject);
    procedure OKBtn_MClick(Sender: TObject);
    procedure CancelBtn_MClick(Sender: TObject);
    procedure TB_UpdateClick(Sender: TObject);
    procedure TB_StockPackClick(Sender: TObject);
    procedure TB_Ref2Click(Sender: TObject);
    procedure MyTreeView_PackExpanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure MyTreeView_PackChange(Sender: TObject; Node: TTreeNode);
    procedure TB_Edit_M2Click(Sender: TObject);
    procedure MData_PItemBeforePost(DataSet: TDataSet);
    procedure CancelBtn2Click(Sender: TObject);
    procedure OKBtn2Click(Sender: TObject);
    procedure TB_IMP_PackItemClick(Sender: TObject);
    procedure cxGV_PItemFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure FPackClassHeaderClick(Sender: TObject);
    procedure TB_DelClick(Sender: TObject);
    procedure TB_ReNoRefClick(Sender: TObject);
    procedure TB_PackItemClick(Sender: TObject);
    procedure TB_PackListClick(Sender: TObject);
    procedure frReport1BeginBand(Band: TfrBand);
    procedure FPlaceHeaderClick(Sender: TObject);
    procedure FPackMode_2HeaderClick(Sender: TObject);
    procedure TB_PackItemFirstClick(Sender: TObject);
    procedure E_FPackNo1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure E_FPackNum2PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxGV_PListDblClick(Sender: TObject);
    procedure FPackNumber_2HeaderClick(Sender: TObject);
    procedure cxGV_PItemDblClick(Sender: TObject);
    procedure TB_PackDraftClick(Sender: TObject);
    procedure TB_Out2Click(Sender: TObject);
    procedure TB_Down2Click(Sender: TObject);
    procedure TB_DownClick(Sender: TObject);
    procedure cxGVDblClick(Sender: TObject);
    procedure APPPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure NextPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure Act_SetOpen_M2Execute(Sender: TObject);
    procedure Act_SetClose_M2Execute(Sender: TObject);
    procedure Act_SetOpen_MExecute(Sender: TObject);
    procedure Act_SetClose_MExecute(Sender: TObject);
    procedure TB_PackListXLSClick(Sender: TObject);
    procedure MDataAfterEdit(DataSet: TDataSet);
    procedure TB_Edit2Click(Sender: TObject);
    procedure OKBtn_2Click(Sender: TObject);
    procedure Act_IMP_PackItemExecute(Sender: TObject);
    procedure CancelBtn_2Click(Sender: TObject);
    procedure SelPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure TB_PrinClick(Sender: TObject);
    procedure TB_EditClick(Sender: TObject);
    procedure CancelBtnClick(Sender: TObject);
    procedure OKBtnClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ActPackMXExecute(Sender: TObject);
    procedure Act_AppExecute(Sender: TObject);
    procedure Act_NextExecute(Sender: TObject);
    procedure Act_AddExecute(Sender: TObject);
    procedure Act_SelExecute(Sender: TObject);
    procedure TB_Pack_SGClick(Sender: TObject);
    procedure TB_PackDraftXlsClick(Sender: TObject);
    procedure TB_SubmitClick(Sender: TObject);
    procedure Act_StatusExecute(Sender: TObject);
    procedure Act_Status_MExecute(Sender: TObject);
    procedure cxGVCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure N6Click(Sender: TObject);
    procedure TB_PackItemXLSClick(Sender: TObject);
    procedure Act_SetClose_Tree2Execute(Sender: TObject);
    procedure Act_SetOpen_Tree2Execute(Sender: TObject);
    procedure E_nPropertiesChange(Sender: TObject);
    procedure Act_SetOpen_2Execute(Sender: TObject);
    procedure Act_SetClose_2Execute(Sender: TObject);
    procedure Act_SetOpenExecute(Sender: TObject);
    procedure Act_SetCloseExecute(Sender: TObject);
    procedure TB_AutoClick(Sender: TObject);
    procedure FPackNumber_2PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FPlacePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);

  private
   { Private declarations }
    function EditRd:bool;
    function DelRd:bool;
    function AddRd:bool;
    function DelRdPackItem:bool;

  public
    P_Isleaf,P_Status,P_state,P_state2,P_stateApp,P_IsAudit:integer;
    P_List,P_th1,P_th2,P_th3,P_th4,P_th5:String;
    //ListItemFParentNumber,ListItemFNumber1,ListItemFNumber2,ListItemFNumber3,ListItemFNumber4,ListItemFNumber5:String;
    P_FItemNo,P_Retinf:string;
    P_i:boolean;
    P_Move:integer;
    P_FProductID:integer;
   { Public declarations }
  end;

var
  Frm_PackStock: TFrm_PackStock;
   HotKey:Integer;

implementation

uses FRMDATA,  COMMON, FrmSelect, ProgBar, PROGRASS;




{$R *.dfm}


function TFrm_PackStock.DelRdPackItem: bool;
var
 qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Delete from T_PackStockItem where FPackStockItemID=:FPackStockItemID';
    qry.Parameters.FindParam('FPackStockItemID').value:=mdata_M['FPackStockItemID'];
    result:=qry.ExecSQL>=0;
  finally
    ;
  end;
  qry.Free;
end;

function TFrm_PackStock.DelRd: bool;
var
 qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
 // mdata_M.First;
  //while not mdata_M.eof do
  //begin
    try
      qry.SQL.Text:='Delete from T_PackStockList where FPackStockItemID=:FPackStockItemID';
      qry.Parameters.FindParam('FPackStockItemID').value:=mdata_M['FPackStockItemID'];
      result:=qry.ExecSQL>=0;
    finally
      ;
    end;
    //mdata_M.Next;
  //end;
  qry.Free;
end;

function TFrm_PackStock.AddRd: bool;
var
  qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  result:=False;

  If mData.RecordCount<=0 then
  begin
    result:=True;
    Exit;
  end;

  try
     qry.SQL.Text:='Insert into T_PackStockList(FPackStockItemID,Num,th,mc,gg,FSumQry,FPackQry,FPackClass,FPackNo,SelReMark,FSuttle,FFullNumber,ssFullNumber,FStockListReMark,FPackLIstRemark) '
                  +'values(:FPackStockItemID,:Num,:th,:mc,:gg,:FSumQry,:FPackQry,:FPackClass,:FPackNo,:SelReMark,:FSuttle,:FFullNumber,:ssFullNumber,:FStockListReMark,:FPackLIstRemark)';
     mData.First;
     while not mData.eof do
     begin
      // If  (mData['Num']<>'★★') and (mData['SelReMark']<>'(按以下入库)') then
       begin
         If qry.Active then qry.Close;
         with qry.Parameters do
         begin
           FindParam('FPackStockItemID').value:=mdata['FPackStockItemID'];
           FindParam('Num').value:=mdata['Num'];
           FindParam('th').value:=mdata['th'];
           FindParam('mc').value:=mdata['mc'];
           FindParam('gg').value:=mdata['gg'];
           FindParam('FSumQry').value:=mdata['FSumQry'];
           FindParam('FPackQry').value:=mdata['FPackQry'];
           If (mData['Num']='★★') or (mData['SelReMark']='(按以下入库)') then
           begin
              FindParam('FPackClass').value:='';
              FindParam('FPackNo').value:=0;
           end
           else
           begin
              FindParam('FPackClass').value:=mdata['FPackClass'];
              FindParam('FPackNo').value:=mdata['FPackNo'];
           end;
           FindParam('SelRemark').value:=mdata['SelRemark'];
           FindParam('FSuttle').value:=mdata['FSuttle'];
           FindParam('FStockListRemark').value:=mdata['FStockListRemark'];
           FindParam('FFullNumber').value:=mdata['FFullNumber'];
           FindParam('ssFullNumber').value:=mdata['ssFullNumber'];
           FindParam('FStockListReMark').value:=mdata['FStockListReMark'];
           FindParam('FPackLIstRemark').value:=mdata['FPackLIstRemark'];
         end;
         result:=qry.ExecSQL>=1;
         if not result then break;
       end;
       mData.Next;
     end;
   finally
     qry.Free;
   end;
end;

function TFrm_PackStock.EditRd:bool;
var
 qry:TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  mdlData.conn.BeginTrans;
  try
    if DelRd then  //1  数据删除
    begin
      result:=True;
      if AddRd then //2  数据新增
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

end;

procedure TFrm_PackStock.FormResize(Sender: TObject);
begin
  inherited;
  Self.Caption:=UserFDepartmentName+'包装入库清单';
end;

procedure TFrm_PackStock.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=cafree;
  Frm_PackStock:=nil;
end;

procedure TFrm_PackStock.FormCreate(Sender: TObject);
begin
  inherited;
  //E_FFactureName.Visible:= mdlData.CheckFrmRights(TFrm_StockInQry.ClassName,'新增');
  {TB_Add3.Enabled:= mdlData.CheckFrmRights(TFrm_StockInQry.ClassName,'新增');
  TB_Edit3.Enabled:= mdlData.CheckFrmRights(TFrm_StockInQry.ClassName,'修改');
  TB_Auto.Enabled:= mdlData.CheckFrmRights(TFrm_StockInQry.ClassName,'修改');

  TB_Del3.Enabled:= mdlData.CheckFrmRights(TFrm_StockInQry.ClassName,'删除');
  TB_Prin.Enabled:= mdlData.CheckFrmRights(TFrm_StockInQry.ClassName,'打印');
  TB_Audit.Enabled:= mdlData.CheckFrmRights(TFrm_StockInQry.ClassName,'审核');
  TB_out.Enabled:= mdlData.CheckFrmRights(TFrm_StockInQry.ClassName,'导出');
   }
   P_Move:=1;
   P_state:=2;//不在编辑状态
   HotKey:=GlobalAddAtom('HotKey');
   RegisterHotKey(handle,HotKey,mod_control,13);

end;

procedure TFrm_PackStock.MyTreeView_SListExpanding(Sender: TObject;
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
        qry.SQL.Text:='Select * from VT_Stock with(nolock) where FParentNumber= '''
                    +PTree(Node.Data).ID+''' order by FBranchItemNumber,FNumber';
     If UserFDepartmentsort=2 then   //子公司
     begin
        qry.SQL.Text:='Select * from VT_Stock_Dep with(nolock) where FParentNumber= '''
                     +PTree(Node.Data).ID+''' order by FBranchItemNumber,FNumber';
     end;


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
    If UserFDepartmentsort=2 then   //子公司
       P.Status:= qry.FieldByName('FFactureID').Value;
    P.Flag := cNoLoadFlag;                            // 新节点，未加载标志
    with MyTreeView_SList.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('Isleaf').value;
    end;
    qry.Next;
  end;


end;

procedure TFrm_PackStock.MyTreeView_SListChange(Sender: TObject; Node: TTreeNode);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If Node = nil then Exit;
  with PTree(Node.Data)^ do
  begin
    ListFNumber_SList:=trim(PTree(Node.Data).FNumber);
  //  P_Isleaf:=PTree(Node.Data).Isleaf;
    P_th:=PTree(Node.Data).Caption;
    P_Status:=PTree(Node.Data).Status;
    If PTree(Node.Data).Isleaf>=1 then
    begin
      TB_StockPack.Visible:=True;
      TB_Update.Visible:=True;
      If UserFDepartmentsort=1 then //事业部
      begin
        If MyItemListwhere(qry,Mdata_SItem,'V_StockItem','FFullNumber',ListFNumber_SList,' and FAgentID='+IntToStr(UserFDepartmentID),'FFullNumber') then
        If MyItemListwhere(qry,Mdata_SLIst,'V_StockList','FFullNumber',ListFNumber_SList,' and FAgentID='+IntToStr(UserFDepartmentID),'FFullNumber',) then
      end;
      If UserFDepartmentsort=2 then   //子公司
      begin
        If MyItemListwhere(qry,Mdata_SItem,'V_StockItem','cast(FFactureID as nvarchar(20))+'';''+FFullNumber',ListFNumber_SList,' and FFactureID='+IntToStr(P_Status),'FFullNumber',) then
        If MyItemListwhere(qry,Mdata_SLIst,'V_StockList','cast(FFactureID as nvarchar(20))+'';''+FFullNumber',ListFNumber_SList,' and FFactureID='+IntToStr(P_Status),'FFullNumber',) then
      end;
    end
    else
    begin
      TB_StockPack.Visible:=False;
      TB_Update.Visible:=False;
      Mdata_SItem.Close;
      Mdata_SLIst.Close;
    end;
    Case PTree(Node.Data).Isleaf of
      0:
      begin
        TB_Prin3.Visible:=False;
      end;
      1:
      begin
        If mdata_SItem.RecordCount>0 then
        begin
          TB_Prin3.Visible:=False;
          P_List :=mdata_SItem['FFactureName']+'('+mdata_SItem['FBranchItemNumber']+')('+mdata_SItem['FClientshortName']+')';
        end;
      end;
      2:
      begin
        If mdata_SItem.RecordCount>0 then
        begin
          P_List :=mdata_SItem['FFactureName']+'('+mdata_SItem['FBranchItemNumber']+')('+mdata_SItem['FPartsCode']+')('+mdata_SItem['FPartsName']+')';
          TB_Prin3.Visible:=mdlData.CheckFrmRights(TFrm_PackStock.ClassName,'打印');
        end;
      end;
      3:
      begin
        If mdata_SItem.RecordCount>0 then
        begin
          P_List :=mdata_SItem['FFactureName']+'('+mdata_SItem['FBranchItemNumber']+')('+mdata_SItem['FPartsName']+')('+mdata_SItem['FWorkPartsNum']+')('+mdata_SItem['FWorkParts']+')';
          TB_Prin3.Visible:=mdlData.CheckFrmRights(TFrm_PackStock.ClassName,'打印');
        end;
      end;
    end; //case
 end;
end;

procedure TFrm_PackStock.frReportBeginBand(Band: TfrBand);
begin
  inherited;
  If Band.Name='dtFooter' then
  begin
    If ((mdata_PItem.RecordCount+1) mod 25)>0 then
      frReport.Dictionary.Variables['n']:=25-((mdata_PItem.RecordCount+1) mod 25)
    else
      frReport.Dictionary.Variables['n']:=0;
  end;


end;

procedure TFrm_PackStock.TB_Ref3Click(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If UserFDepartmentsort=1 then //事业部
  begin
    If not TreeVeiwListWhere(qry,MyTreeView_SList,'VT_Stock',' and FDepartmentID='+IntToStr(UserFDepartmentID)+' and FAgentID='+IntToStr(UserFDepartmentID)) then
      Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;
  If UserFDepartmentsort=2 then   //子公司
  begin
    If not TreeVeiwListWhere(qry,MyTreeView_SList,'VT_Stock_Dep',' and (FFactureID='+IntToStr(UserFDepartmentID)+' or FDepartmentID='+IntToStr(UserFDepartmentID)+') ') then
    Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;

end;

procedure TFrm_PackStock.FormShow(Sender: TObject);
begin
  inherited;
  TB_Ref.Click;
  TB_Ref2.Click;
  TB_Ref3.Click;
end;

procedure TFrm_PackStock.TB_Out3Click(Sender: TObject);
Var i:Integer;
begin
  inherited;
  for i:=0 to cxGv_SLIst.ColumnCount-1 do
  begin
    cxGv_SLIst.Columns[i].Visible:=False;
  end;

  Num_3.Visible:=True;
  th_3.Visible:=True;
  mcgg_3.Visible:=True;
  dw_3.Visible:=True;
  FSumQry_3.Visible:=True;
  FSuttle_3.Visible:=True;
  FSumSuttle_3.Visible:=True;
  FStockListRemark_3.Visible:=True;

  If mdata_SLIst.RecordCount>0 then
     ExportToExcel(cxGrid_SLIst,True,TRue)
  else
     Application.MessageBox(PChar('没有需要导出的数据！'), '错误', MB_OK +MB_ICONSTOP);
  for i:=0 to cxGv_SLIst.ColumnCount-1 do
  begin
    cxGv_SLIst.Columns[i].Visible:=True;
  end;

  dw_3.Visible:=False;
  mcgg_3.Visible:=False;

end;

procedure TFrm_PackStock.TB_Exit3Click(Sender: TObject);
begin
  inherited;
  Self.Close;
end;

procedure TFrm_PackStock.TB_Prin3Click(Sender: TObject);

begin
   If mdata_SLIst.RecordCount>0 then
  begin
    frDBDataSet.Dataset:=mdata_SLIst;
    mdata_SLIst.SortedField:='FFullNumber';
    FrReport.LoadFromFile(ExtractFileDir(Application.ExeName)+'\Report_DesignBOM_Stock.frf');
    FrReport.ShowReport;
  end
  else
    Application.MessageBox(PChar('没有需要打印的数据！'), '错误', MB_OK +MB_ICONSTOP);

  mdata_SLIst.SortedField:='';
end;

procedure TFrm_PackStock.cxGV_SItemFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
var qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If (mdata_SItem['FStockItemID']<>0) and (mdata_SItem['FStockItemID']<>Null) then
  begin
    If MyItemListID(qry,mdata_SLIst,'V_StockList',' FStockItemID='+IntToStr(mdata_SItem['FStockItemID']),'FFullNumber',) then

   end;

end;

procedure TFrm_PackStock.cxGV_SLIstCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);

begin
  inherited;
  If cxGV_SList.Controller.FocusedRowIndex=AViewInfo.RecordViewInfo.Index  then  //是否是选中行
     else
  If ((StrToFloat(AViewInfo.GridRecord.DisplayTexts[FSumQry_3.Index])-StrToFloat(AViewInfo.GridRecord.DisplayTexts[FSumPackQry_3.Index]))<>0)
     and ((AViewInfo.GridRecord.DisplayTexts[Num_3.Index]<>'★★') and (AViewInfo.GridRecord.DisplayTexts[SelRemark_3.Index]<>'(按以下入库)')) then
  begin
    ACanvas.Canvas.brush.Color := clInactiveCaptionText;      //设置行颜色
    ACanvas.Canvas.Font.Color:=clBlue; //字体颜色
    ACanvas.FillRect(AViewInfo.Bounds);
  end;
  If (StrToFloat(AViewInfo.GridRecord.DisplayTexts[FSumQry_3.Index])<StrToFloat(AViewInfo.GridRecord.DisplayTexts[FSumPackQry_3.Index])) then
  begin
    ACanvas.Canvas.brush.Color := clRed  ;    //设置行颜色
    ACanvas.Canvas.Font.Color:=clRed; //字体颜色
    ACanvas.FillRect(AViewInfo.Bounds);
  end;

end;

procedure TFrm_PackStock.FFactureName_MPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='select distinct FDepartmentID,FDepartmentName from T_Department with(nolock) order by FDepartmentName';
    qry.Open;
  finally
     ;
  end;
  selValue:=select('请选择生产制作单位','FDepartmentName','FDepartmentName','FDepartmentName','FDepartmentName',qry);
  If Length(selValue)>0 then
  begin
    mdata_SList.Edit;
    mdata_SList['FFactureName']:=qry.FieldByName('FFactureName').Value;
    mdata_SList['FFactureID']:=qry.FieldByName('FFactureID').Value;
    mdata_SList.Post;
  end;

end;

procedure TFrm_PackStock.TB_RefClick(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  P_Isleaf:=0;
  If not TreeVeiwListWhere(qry,MyTreeView,'VT_PackStock',' and FBillDepartmentID='+IntToStr(UserFDepartmentID)) then
      Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);

{  If UserFDepartmentsort=1 then //事业部
  begin
    If not TreeVeiwListWhere(qry,MyTreeView,'VT_PackStock',' and FBillDepartmentID='+IntToStr(UserFDepartmentID)) then
      Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;
  If UserFDepartmentsort=2 then   //子公司
  begin
    If not TreeVeiwListWhere(qry,MyTreeView,'VT_PackStock',' and (FBillDepartmentID='+IntToStr(UserFDepartmentID)+' or FAgentID=FDepartmentID) ') then
    Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end; }
end;

procedure TFrm_PackStock.MyTreeViewExpanding(Sender: TObject;
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

  qry.SQL.Text:='Select * from VT_PackStock with(nolock) where FParentNumber= '''
               +PTree(Node.Data).ID+'''  and FBillDepartmentID=:FBillDepartmentID order by FBranchItemNumber,FNumber';
    qry.Parameters.FindParam('FBillDepartmentID').value:=UserFDepartmentID;

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

procedure TFrm_PackStock.MyTreeViewChange(Sender: TObject;
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
    P_th:=PTree(Node.Data).Caption;
    If PTree(Node.Data).Isleaf>=1 then
    begin
      If MyItemList(qry,Mdata_M,'V_PackStockItem','cast(FBIllDepartmentID as Varchar(20))+'';''+FFullNumber',IntToStr(UserFDepartmentID)+';'+ListItemFNumber,'FFullNumber') then
      If MyItemList(qry,Mdata,'V_PackStockList','cast(FBIllDepartmentID as Varchar(20))+'';''+FFullNumber',IntToStr(UserFDepartmentID)+';'+ListItemFNumber,'FFullNumber') then
    end
    else
    begin
      Mdata_M.Close;
      mdata.Close;
    end;
    Case PTree(Node.Data).Isleaf of
      0:
      begin
        Act_Status_M.Execute;  //权限设置多行
        TB_IMP_PackItem.Visible:=False;
        TB_Edit_M.Visible:=False;
        TB_Edit.Visible:=False;
        TB_Del.Visible:=False;
        ToolBar.Visible:=False;
      end;
      1:
      begin
        Act_Status_M.Execute;  //权限设置多行
        TB_IMP_PackItem.Visible:=mdlData.CheckFrmRights(TFrm_PackStock.ClassName,'修改');
      end;
      2:
      begin
        Act_Status_M.Execute;  //权限设置多行
        TB_IMP_PackItem.Visible:=False;
     end;
      3:
      begin
        Act_Status.Execute;;  //权限设置
        TB_IMP_PackItem.Visible:=False;
      end;
    end;//case
 end;
end;

procedure TFrm_PackStock.cxGV_MFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
var qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  If P_state =2 then  //不在新增、修改状态
  begin
    If (mData_M['FPackStockItemID']<>0) and (mData_M['FPackStockItemID']<>null) then
    begin
    If MyItemListID(qry,Mdata,'V_PackStockList',' FPackStockItemID='+IntToStr(Mdata_M['FPackStockItemID']),'FFullNumber',) then
      If mdata_M.RecordCount>0 then
      begin
       { TB_sczyb.Visible:=False;
        TB_scxlb.Visible:=False;
        TB_Execl.Visible:=False;  }
      end;
      P_List :='('+mdata_M['FPartsCode']+')('+mdata_M['FWorkParts']+')';
      Act_Status.Execute  //权限设置
    end;
  end;



end;

procedure TFrm_PackStock.AddPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);

begin
  inherited;
  Act_Add.Execute;
end;

procedure TFrm_PackStock.TB_Edit_MClick(Sender: TObject);
begin
  inherited;
  P_state :=1;     //修改
  Act_SetOpen_M.Execute;

 
end;

procedure TFrm_PackStock.OKBtn_MClick(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  If P_state=1 then //修改数据
  begin
    If application.MessageBox('是否要保存所作修改？','提示',MB_ICONINFORMATION+MB_YESNO)<>6 then
       Exit;
    If EditRd then   //修改数据
    begin
      application.MessageBox('修改记录已保存','系统提示',MB_ICONINFORMATION);
      inherited;
      CancelBtn_M.Click;
    end
    else
      application.MessageBox('修改记录保存失败！','系统提示',MB_ICONWARNING);
    If MyItemList(qry,Mdata,'V_PackStockList','FFullNumber',ListItemFNumber,'FFullNumber') then

  end;
end;

procedure TFrm_PackStock.CancelBtn_MClick(Sender: TObject);
begin
  inherited;
  Act_SetClose_M.Execute;

end;

procedure TFrm_PackStock.TB_UpdateClick(Sender: TObject);
var
  proc:TADOStoredProc;
  P_Retinf1:String;

begin
  proc:=TADOStoredProc.Create(self);
  proc.ConnectionString:=mdlData.ReadConnStr;
  proc.CommandTimeout:=500;

     try
      proc.ProcedureName:='P_Pack_PackQry;1';
      with proc.Parameters.AddParameter do
      begin
        DataType := ftString;
        Direction := pdinput;
        size:=20;
        name := '@FFullNumber';
        value:=ListFNumber_SList;
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
      P_Retinf1:=proc.Parameters.FindParam('@Retinf').Value;
      If  P_Retinf1<>'' then
          Messagedlg(P_Retinf1,mtInformation,[mbok],0);
    finally
        ;
    end;
  proc.Free;


end;

procedure TFrm_PackStock.TB_StockPackClick(Sender: TObject);
var
  proc:TADOStoredProc;
  P_Retinf1:String;
  qry: TADOQuery;

begin
  proc:=TADOStoredProc.Create(self);
  proc.ConnectionString:=mdlData.ReadConnStr;
  proc.CommandTimeout:=500;
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;


  If ShowMsg('是否将【'+P_th+'】下推行到包装清单？','提示') then
  begin
    try
      proc.ProcedureName:='P_Imp_PackStockList;1';
      with proc.Parameters.AddParameter do
      begin
        DataType := ftString;
        Direction := pdinput;
        size:=20;
        name := '@FFullNumber';
        value:=ListFNumber_SList;
      end;
      with proc.Parameters.AddParameter do
      begin
        DataType := ftInteger;
        Direction := pdinput;
        name := '@UserNumID';
        value:=UserNumID;
      end;
      with proc.Parameters.AddParameter do
      begin
        DataType := ftInteger;
        Direction := pdinput;
        name := '@FFactureID';
        value:=UserFDepartmentID;
      end;
      with proc.Parameters.AddParameter do
      begin
        DataType := ftInteger;
        Direction := pdinput;
        name := '@UserFDepartmentsort';
        value:=UserFDepartmentsort;
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
      P_Retinf1:=proc.Parameters.FindParam('@Retinf').Value;
      If  P_Retinf1<>'' then
      begin
        Messagedlg(P_Retinf1,mtInformation,[mbok],0);
        mdata.Close;
        DS_Mdata.DataSet:=Mdata;
        cxGV.DataController.DataSource:=DS_Mdata;
        mdata.CopyFromDataSet(proc);
        Mdata.Active:=True;
        cxGvColumn(cxGv,mdata);
        PC_Main.ActivePage:=TS_PackStock;
      end;
    finally
        ;
    end;
  end;
  proc.Free;

end;

procedure TFrm_PackStock.TB_Ref2Click(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If not TreeVeiwListWhere(qry,MyTreeView_Pack,'VT_Pack_Dep',' and FBillDepartmentID='+IntToStr(UserFDepartmentID)) then
      Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
end;

procedure TFrm_PackStock.MyTreeView_PackExpanding(Sender: TObject;
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
   qry.SQL.Text:='Select * from VT_Pack_Dep where FParentNumber= '''
               +PTree(Node.Data).ID+''' and FBillDepartmentID=:FBillDepartmentID  order by FBranchItemNumber,FNumber';
     qry.Parameters.FindParam('FBillDepartmentID').value:=UserFDepartmentID;

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
//    P.Status:= qry.FieldByName('FFactureID').Value;
    P.Flag := cNoLoadFlag;                            // 新节点，未加载标志
    with MyTreeView_Pack.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('Isleaf').value;
    end;
    qry.Next;
  end;



end;

procedure TFrm_PackStock.MyTreeView_PackChange(Sender: TObject;
  Node: TTreeNode);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If Node = nil then Exit;
  with PTree(Node.Data)^ do
  begin
    ListFNumber_Pack:=trim(PTree(Node.Data).FNumber);
    P_Isleaf_Pack:=PTree(Node.Data).Isleaf;
    P_List_Pack:=PTree(Node.Data).Caption;
    
    If PTree(Node.Data).Isleaf>0 then
    begin
      If MyItemList(qry,Mdata_PItem,'V_PackItem','FFullNumber',ListFNumber_Pack,'FFullNumber') then
      cxGvColumn(cxGv_PList,Mdata_PList);
      P_Move:=1;
    end
    else
    begin
      mdata_PItem.Close;
      mdata_PList.Close;
    end;

    Case PTree(Node.Data).Isleaf of
      0:
      begin
        Act_SetClose_Tree2.Execute;
      end;
      1:
      begin
        try
          qry.SQL.Text:='select min(FPackNum) as FPackNum1,max(FPackNum) as FPackNum2 from V_PackItem where FFileItemID=:FFileItemID and FpackNo<>0 and FPackClass=''B'' ';
          qry.Parameters.FindParam('FFileItemID').value:=mdata_PItem['FFileItemID'];
          qry.Open;
        finally
          ;
        end;
        if qry.RecordCount>0 then
        begin
          E_FPackNum1.Text:=qry.FieldByName('FPackNum1').AsString;
          E_FPackNum2.Text:=qry.FieldByName('FPackNum2').AsString;
        end;
        Act_SetOpen_Tree2.Execute;

      end;
      2:
      begin
        Act_SetOpen_Tree2.Execute;
      end;
    end;

  end;
end;

procedure TFrm_PackStock.TB_Edit_M2Click(Sender: TObject);
begin
  P_state :=1;     //修改
  Act_SetOpen_M2.Execute;

end;

procedure TFrm_PackStock.MData_PItemBeforePost(DataSet: TDataSet);
Var i:Integer;
begin
  inherited;
  i:=DataSet['FPackNo'];
  DataSet['FPackNo']:=Format('%.3d',[i]);
  DataSet['FGross']:=round((DataSet['FNet']+DataSet['FSteel']+DataSet['FWood']+DataSet['FPlastic']+DataSet['FAsphalt']+DataSet['FColorbar']));
  DataSet['FV']:=Round( DataSet['FLength']* DataSet['FWidth']* DataSet['FHigh']*100)/100000000;

end;

procedure TFrm_PackStock.CancelBtn2Click(Sender: TObject);
begin
  inherited;
  P_Move:=1;
  Act_SetClose_M2.Execute;

  {MyTreeView2.Enabled:=True;
  cxGV_M2.OptionsData.Editing:=False;
  //Panel_button2.Visible:=False;
  OKBtn2.Visible:=False;
  CancelBtn2.Visible:=False; }
end;

procedure TFrm_PackStock.OKBtn2Click(Sender: TObject);
var qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  If application.MessageBox(PChar('是否保存修改的数据？'),'提示',MB_ICONINFORMATION+MB_YESNO)<>6 then
     Exit;
  P_Move:=0;

  mdata_PItem.First;
  mdata_PItem.DisableControls;

  while not mdata_PItem.Eof do
  begin
    try
      qry.SQL.Text:='Update T_PackItem set FPackNo=:FPackNo,FPackClass=:FPackClass,FPackNumber=:FPackNumber,FPackName=:FPackName,FPackMode=:FPackMode,FLength=:FLength,FWidth=:FWidth,FHigh=:FHigh,'
                   +'FPlace=:FPlace,FSteel=:FSteel,FWood=:FWood,FPlastic=:FPlastic,FAsphalt=:FAsphalt,FColorbar=:FColorbar,FItemID=:FItemID,FPackUserNum=:FPackUserNum,FPackUserNumDate=:FPackUserNumDate '
                   +'where FPackItemID=:FPackItemID ';
      with qry.Parameters do
      begin
        FindParam('FPackNo').Value:=mdata_PItem['FPackNo'];
        FindParam('FPackClass').Value:=mdata_PItem['FPackClass'];
        FindParam('FPackNumber').Value:=mdata_PItem['FPackNumber'];
        FindParam('FPackName').Value:=mdata_PItem['FPackName'];
        FindParam('FPackMode').Value:=mdata_PItem['FPackMode'];
        FindParam('FLength').Value:=mdata_PItem['FLength'];
        FindParam('FWidth').Value:=mdata_PItem['FWidth'];
        FindParam('FHigh').Value:=mdata_PItem['FHigh'];
        FindParam('FPlace').Value:=mdata_PItem['FPlace'];
        FindParam('FSteel').Value:=mdata_PItem['FSteel'];
        FindParam('FWood').Value:=mdata_PItem['FWood'];
        FindParam('FPlastic').Value:=mdata_PItem['FPlastic'];
        FindParam('FAsphalt').Value:=mdata_PItem['FAsphalt'];
        FindParam('FColorbar').Value:=mdata_PItem['FColorbar'];
        FindParam('FItemID').value:=mdata_PItem['FItemID'];
        FindParam('FPackUserNum').value:=UserNum;
        FindParam('FPackUserNum').value:=Date();
        FindParam('FPackItemID').value:=mdata_PItem['FPackItemID'];
      end;
      qry.ExecSQL;
    finally
       ;
    end;
    mdata_PItem.Next;
  end;
  mdata_PItem.EnableControls;
  Act_SetClose_M2.Execute;

  P_Move:=1;
 // Self.Set_Close1;

end;

procedure TFrm_PackStock.TB_IMP_PackItemClick(Sender: TObject);
 var
  proc:TADOStoredProc;
  qry: TADOQuery;
begin
  If ShowMsg('是否将【'+P_th+'】下推行到包装清单？','提示') then
  begin
    P_FItemNo:=mdata_M['FItemNo'];
    Act_IMP_PackItem.Execute;
    Messagedlg(P_Retinf,mtInformation,[mbok],0);
    PC_main.ActivePage:=TS_PackItem;
  end;

end;

procedure TFrm_PackStock.cxGV_PItemFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
var qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If P_Move=1 then
  begin
    If (mdata_PItem['FFullNumber']<>'') and (mdata_PItem['FFullNumber']<>Null) and (mdata_PItem.RecordCount>0) then
    begin
      If MyItemList(qry,Mdata_PList,'V_PackList','cast(FDepartmentID as nvarchar(20))+'';''+FItemNo+'';''+FPackNum',mdata_PItem['FFullNumber'],'FFullNumber') then
    end;
  end;

end;

procedure TFrm_PackStock.FPackClassHeaderClick(Sender: TObject);
Var
  qry: TADOQuery;
  I_index:Integer;
  P_Sel:String;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  If mData.RecordCount<=0 then
    Exit;
  I_index:=mdata.RecNo ;

  mdata.Edit;
  mdata.Post;

  P_Sel:=mdata['FPackClass'];
  mdata.First;
  while not mdata.eof do
  begin
    If (mdata['FPackClass']='') and (mdata['FPackNo']<>0) then
    begin
      mdata.Edit;
      mdata['FPackClass']:=P_Sel;
      mdata.Post;
    end;
    mdata.Next;
  end;
  If (I_index<mdata.RecordCount) and (I_index<>-1) then
     mdata.RecNo :=I_index
  else
     mdata.Last;

end;

procedure TFrm_PackStock.TB_DelClick(Sender: TObject);
var
  qry:TADOQuery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If  ListItemFNumber='' then
  begin
    Application.MessageBox(PChar('请选择明细！'), '错误', MB_OK +MB_ICONSTOP);
    Exit;
  end;

  If application.MessageBox(Pchar('警告：是否删除图号为：【'+P_th+'】的包装清单信息？'+chr(13)+chr(13)
                                 +'删除数据操作将不可恢复，确定要删除吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
  If application.MessageBox(Pchar('再次警告：是否删除图号为：【'+P_th+'】的包装清单信息？'+chr(13)+chr(13)
                                 +'删除数据操作将不可恢复，确定要删除吗？'),'再次警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then

  mdlData.conn.BeginTrans;
  begin
    //单据删除
    If not DelRdPackItem then
    begin
      application.MessageBox('删除单据失败！','系统提示',MB_ICONINFORMATION);
      mdlData.conn.RollbackTrans;
      Exit;
    end;
    mdlData.conn.CommitTrans;
  end;
  mdata_M.Close;
  mdata.Close;
  qry.Free;
end;

procedure TFrm_PackStock.TB_ReNoRefClick(Sender: TObject);
var
  IsEdit:bool;
  qry: TADOQuery;
  I_index:integer;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  I_index:=mdata_PItem.RecNo ;
  ShowPrograss('正在提取'+P_th+'箱件清单数据，请稍候……',self);
  P_FItemNo:=mdata_PList['FItemNo'];
  Act_IMP_PackItem.Execute;
  If MyItemList(qry,mdata_PItem,'V_PackItem','FFullNumber',ListFNumber_Pack,'FFullNumber') then
  If (I_index<mdata_PItem.RecordCount) and (I_index<>-1) then
     mdata_PItem.RecNo :=I_index
  else
     mdata_PItem.Last;
  cxGrid_PItem.SetFocus;

end;

procedure TFrm_PackStock.TB_PackItemClick(Sender: TObject);
begin
  inherited;
  P_Move:=0;
  If mdata_PItem.RecordCount>0 then
  begin
    FrReport.LoadFromFile(ExtractFileDir(Application.ExeName)+'\Report_DesignBOM_PackItem.frf');
    FrReport.ShowReport;
  end
  else
    Application.MessageBox(PChar('没有需要打印的数据！'), '错误', MB_OK +MB_ICONSTOP);
  P_Move:=1;
end;

procedure TFrm_PackStock.TB_PackListClick(Sender: TObject);
var   qry: TADOQuery;
begin
  P_Move:=0;
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If (E_FPackNum1.Text='') and (E_FPackNum1.Text='') then
  try
    qry.SQL.Text:='select * from V_PackList where FPackNo<>0 and cast(FBillDepartmentID as nvarchar(20))+'';''+FItemNo+'';''+FPackNum like :FFullNumber order by FItemNumber,FPackNum,FListNum ';
    qry.Parameters.FindParam('FFullNumber').value:=ListFNumber_Pack+'%';
    qry.Open;
  finally
     ;
  end;
  If (E_FPackNum1.Text<>'') and (E_FPackNum2.Text<>'') then
  try
    qry.SQL.Text:='select * from V_PackList where cast(FBillDepartmentID as nvarchar(20))+'';''+FItemNo+'';''+FPackNum like :FFullNumber and FPackNum>=:FPackNum1 and FPackNum<=:FPackNum2 order by FItemNumber,FPackNum,FListNum ';
    qry.Parameters.FindParam('FFullNumber').value:=ListFNumber_Pack+'%';
    qry.Parameters.FindParam('FPackNum1').value:=Trim(E_FPackNum1.Text);
    qry.Parameters.FindParam('FPackNum2').value:=Trim(E_FPackNum2.Text);
    qry.Open;
  finally
     ;
  end;
  if qry.RecordCount>0 then
  begin
    mData_PList.CopyFromDataSet(qry);
    mData_PList.Open;
    mData_PList.First;
    mData_PList.SortedField:='FItemNumber;FPackNum';
  end;
  //frReport1.Dataset:=mdat2;
  If mData_PList.RecordCount>0 then
  begin
    frReport1.LoadFromFile(ExtractFileDir(Application.ExeName)+'\Report_DesignBOM_PackList.frf');
    frReport1.ShowReport;
  end
  else
    Application.MessageBox(PChar('没有需要打印的数据！'), '错误', MB_OK +MB_ICONSTOP);


  P_Move:=1;

end;

procedure TFrm_PackStock.frReport1BeginBand(Band: TfrBand);
begin
  inherited;
  If Band.Name='dtFooter1' then
  begin
    If (mData_PList['n'] mod 18)>0 then
      frReport1.Dictionary.Variables['n']:=18-(mData_PList['n'] mod 18)-2
    else
      frReport1.Dictionary.Variables['n']:=18-3;
  end;

end;

procedure TFrm_PackStock.FPlaceHeaderClick(Sender: TObject);
Var
  qry: TADOQuery;
  I_index:Integer;
  P_Sel:String;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  P_Move:=0;
  If mdata_PItem.RecordCount<=0 then
    Exit;
  I_index:=mdata_PItem.RecNo ;

  mdata_PItem.Edit;
  mdata_PItem.Post;

  P_Sel:=mdata_PItem['FPlace'];
  mdata_PItem.First;
  while not mdata_PItem.eof do
  begin
    If (mdata_PItem['FPlace']='') or (mdata_PItem['FPlace']=null)  then
    begin
      mdata_PItem.Edit;
      mdata_PItem['FPlace']:=P_Sel;
      mdata_PItem.Post;
    end;
    mdata_PItem.Next;
  end;
  If (I_index<mdata_PItem.RecordCount) and (I_index<>-1) then
     mdata_PItem.RecNo :=I_index
  else
     mdata_PItem.Last;
  P_Move:=1;
end;

procedure TFrm_PackStock.FPackMode_2HeaderClick(Sender: TObject);
Var
  qry: TADOQuery;
  I_index:Integer;
  P_Sel:String;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  P_Move:=0;

  If mdata_PItem.RecordCount<=0 then
    Exit;
  I_index:=mdata_PItem.RecNo ;

  mdata_PItem.Edit;
  mdata_PItem.Post;

  P_Sel:=mdata_PItem['FPackMode'];
  mdata_PItem.First;
  while not mdata_PItem.eof do
  begin
    If (mdata_PItem['FPackMode']='') or (mdata_PItem['FPackMode']=null)  then
    begin
      mdata_PItem.Edit;
      mdata_PItem['FPackMode']:=P_Sel;
      mdata_PItem.Post;
    end;
    mdata_PItem.Next;
  end;
  If (I_index<mdata_PItem.RecordCount) and (I_index<>-1) then
     mdata_PItem.RecNo :=I_index
  else
     mdata_PItem.Last;

  P_Move:=1;
end;

procedure TFrm_PackStock.TB_PackItemFirstClick(Sender: TObject);
begin
  inherited;
  P_Move:=0;
  If mdata_PItem.RecordCount>0 then
  begin
    FrReport.LoadFromFile(ExtractFileDir(Application.ExeName)+'\Report_DesignBOM_PackItemList_First.frf');
    FrReport.ShowReport;
  end
  else
    Application.MessageBox(PChar('没有需要打印的数据！'), '错误', MB_OK +MB_ICONSTOP);
  P_Move:=1;

end;

procedure TFrm_PackStock.E_FPackNo1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.CommandTimeout:=10000;
  If ListFNumber_Pack='' then
     Exit;
  try
    qry.SQL.Text:='Select distinct FPackNum from  V_PackItem where cast(FBillDepartmentID as nvarchar(20))+'';''+FItemNo+'';''+FPackNum like :FNumber order by FPackNum ';
    qry.Parameters.FindParam('FNumber').value:=ListFNumber_Pack+'%';;
    qry.Open;
  finally
     ;
  end;
  selValue:=select('请选择箱号','FPackNum','FPackNum','FPackNum','FPackNum',qry);
  If (Length(selValue)>0) then
  begin
    E_FPackNum2.Visible:=True;
    E_FPackNum2.Enabled:=True;
    E_FPackNum1.Text:=qry.FieldByName('FPackNum').AsString;
    E_FPackNum2.Text:=qry.FieldByName('FPackNum').AsString;
  end
  else
  begin
    Messagedlg('请选择明细！',mtInformation,[mbok],0);
    Exit;
  end ;
end;

procedure TFrm_PackStock.E_FPackNum2PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.CommandTimeout:=10000;
  If ListFNumber_Pack='' then
     Exit;
  try
    qry.SQL.Text:='Select distinct FPackNum from  V_PackItem where FPackNum>=:FPackNum and cast(FBillDepartmentID as nvarchar(20))+'';''+FItemNo+'';''+FPackNum like :FNumber order by FPackNum ';
    qry.Parameters.FindParam('FPackNum').value:=E_FPackNum1.Text;
    qry.Parameters.FindParam('FNumber').value:=ListFNumber_Pack+'%';;
    qry.Open;
  finally
     ;
  end;
  selValue:=select('请选择箱号','FPackNum','FPackNum','FPackNum','FPackNum',qry);
  If (Length(selValue)>0) then
  begin
    E_FPackNum2.Text:=qry.FieldByName('FPackNum').AsString;
  end
  else
  begin
    Messagedlg('请选择明细！',mtInformation,[mbok],0);
    Exit;
  end ;
end;

procedure TFrm_PackStock.cxGV_PListDblClick(Sender: TObject);
begin
  inherited;
  If P_state=1 then     //修改
  begin
    mdata_PItem.Edit;
    If mdata_PItem['FPackName']='' then
       mdata_PItem['FPackName']:=mData_PList['mc'];
    If mdata_PItem['FPackNumber']='' then
       mdata_PItem['FPackNumber']:='BZ('+mData_PList['FPartsNumber']+').';
    mdata_PItem.Post;
  end;
end;

procedure TFrm_PackStock.FPackNumber_2HeaderClick(Sender: TObject);
Var
  qry: TADOQuery;
  I_index:Integer;
  P_Sel:String;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  P_Move:=0;

  If mdata_PItem.RecordCount<=0 then
    Exit;
  I_index:=mdata_PItem.RecNo ;

  mdata_PItem.Edit;
  mdata_PItem.Post;

  P_Sel:=mdata_PItem['FPackNumber'];
  mdata_PItem.First;
  while not mdata_PItem.eof do
  begin
    If (mdata_PItem['FPackNumber']='') or (mdata_PItem['FPackNumber']=null)  then
    begin
      mdata_PItem.Edit;
      mdata_PItem['FPackNumber']:=P_Sel;
      mdata_PItem.Post;
    end;
    mdata_PItem.Next;
  end;
  If (I_index<mdata_PItem.RecordCount) and (I_index<>-1) then
     mdata_PItem.RecNo :=I_index
  else
     mdata_PItem.Last;

  P_Move:=1;


end;

procedure TFrm_PackStock.cxGV_PItemDblClick(Sender: TObject);
Var
  P_FLength,P_FWidth,P_FHigh:Integer;
  P_FSteel,P_FWood,P_FPlastic,P_FAsphalt,P_FColorbar:Real;
  P_FPackNumber,P_FPackName,P_FPackMode,P_FPlace:string;
begin
  inherited;
  P_Move:=0;
  If P_state=1 then     //修改
  begin
    mdata_PItem.Prior;


    P_FPackNumber:=mdata_PItem['FPackNumber'];
    P_FPackName:=mdata_PItem['FPackName'];

    P_FPackMode:=mdata_PItem['FPackMode'];
    P_FPlace:=mdata_PItem['FPlace'];

    P_FLength:=mdata_PItem['FLength'];
    P_FWidth:=mdata_PItem['FWidth'];
    P_FHigh:=mdata_PItem['FHigh'];

    P_FSteel:=mdata_PItem['FSteel'];
    P_FWood:=mdata_PItem['FWood'];
    P_FPlastic:=mdata_PItem['FPlastic'];
    P_FAsphalt:=mdata_PItem['FAsphalt'];
    P_FColorbar:=mdata_PItem['FColorbar'];

    mdata_PItem.Next;
    mdata_PItem.Edit;
    mdata_PItem['FPackNumber']:=P_FPackNumber;
    mdata_PItem['FPackName']:=P_FPackName;
    mdata_PItem['FPackMode']:=P_FPackMode;
    mdata_PItem['FPlace']:=P_FPlace;

    mdata_PItem['FLength']:=P_FLength;
    mdata_PItem['FWidth']:=P_FWidth;
    mdata_PItem['FHigh']:=P_FHigh;

    mdata_PItem['FSteel']:=P_FSteel;
    mdata_PItem['FWood']:=P_FWood;
    mdata_PItem['FPlastic']:=P_FPlastic;
    mdata_PItem['FAsphalt']:=P_FAsphalt;
    mdata_PItem['FColorbar']:=P_FColorbar;
    mdata_PItem.Post;
  end;
  P_Move:=1;

end;

procedure TFrm_PackStock.TB_PackDraftClick(Sender: TObject);
var   qry: TADOQuery;
begin
  P_Move:=0;
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='select * from V_PackDraft where FItemID=:FItemID and FPackNum>=:FPackNum1 and FPackNum<=:FPackNum2  order by FItemID,FPackNum,FListNum ';
    qry.Parameters.FindParam('FItemID').value:=mdata_PItem['FItemID'];
    qry.Parameters.FindParam('FPackNum1').value:=Trim(E_FPackNum1.Text);
    qry.Parameters.FindParam('FPackNum2').value:=Trim(E_FPackNum2.Text);
   qry.Open;
  finally
     ;
  end;
  //cxGvColumn(cxGV_M2,mdata_M2);
  mdata_PItem.CopyFromDataSet(qry);
  mdata_PItem.Active:=True;
  FPackClass_2.Visible:=False;
  FPackNo_2.Visible:=False;

  If mdata_PItem.RecordCount>0 then
  begin
    FrReport.LoadFromFile(ExtractFileDir(Application.ExeName)+'\Report_DesignBOM_PackDraft.frf');
    FrReport.ShowReport;
  end
  else
    Application.MessageBox(PChar('没有需要打印的数据！'), '错误', MB_OK +MB_ICONSTOP);



end;

procedure TFrm_PackStock.TB_Out2Click(Sender: TObject);
begin
  inherited;
  FPackNo_2.Visible:=True;
  If mdata_PItem.RecordCount>0 then
     ExportToExcel(cxGrid_PItem,True,TRue)

end;

procedure TFrm_PackStock.TB_Down2Click(Sender: TObject);
Var i:Integer;
begin
  If P_i then
  begin
    TB_Down2.Caption:='取消设置';
    cxGV_PItem.OptionsData.Editing:=False;
    cxGV_PItem.OptionsView.GroupByBox:=False;
    for i:=0 to cxGV_PItem.ColumnCount-1 do
    begin
      cxGV_PItem.Columns[i].Options.Filtering:=False;
      cxGV_PItem.Columns[i].Options.Editing:=False;
      cxGV_PItem.Columns[i].Options.Sorting:=False;
    end;
    P_i:=False;
  end
  else
  begin
    TB_Down2.Caption:='设置';
    cxGV_PItem.OptionsData.Editing:=True;
    cxGV_PItem.OptionsView.GroupByBox:=True;
    for i:=0 to cxGV_PItem.ColumnCount-1 do
    begin
      cxGV_PItem.Columns[i].Options.Filtering:=True;
      cxGV_PItem.Columns[i].Options.Editing:=True;
      cxGV_PItem.Columns[i].Options.Sorting:=True;
    end;
    P_i:=True;
  end;

end;

procedure TFrm_PackStock.TB_DownClick(Sender: TObject);
Var i:Integer;
begin
  If P_i then
  begin
    TB_Down.Caption:='取消设置';
    cxGV.OptionsData.Editing:=False;
    cxGV.OptionsView.GroupByBox:=False;
    for i:=0 to cxGV.ColumnCount-1 do
    begin
      cxGV.Columns[i].Options.Filtering:=False;
      cxGV.Columns[i].Options.Editing:=False;
      cxGV.Columns[i].Options.Sorting:=False;
    end;
    P_i:=False;
  end
  else
  begin
    TB_Down.Caption:='设置';
    cxGV.OptionsData.Editing:=True;
    cxGV.OptionsView.GroupByBox:=True;
    for i:=0 to cxGV.ColumnCount-1 do
    begin
      cxGV.Columns[i].Options.Filtering:=True;
      cxGV.Columns[i].Options.Editing:=True;
      cxGV.Columns[i].Options.Sorting:=True;
    end;
    P_i:=True;
  end;

end;

procedure TFrm_PackStock.cxGVDblClick(Sender: TObject);
Var
  P_FPackNo:Integer;
  P_FPackClass:string;
begin
  inherited;
  If P_state=1 then     //修改
  begin
    mdata.Prior;
    P_FPackClass:=mdata['FPackClass'];
    P_FPackNo:=mdata['FPackNo'];
    mdata.Next;
    mdata.Edit;
    mdata['FPackClass']:=P_FPackClass;
    mdata['FPackNo']:=P_FPackNo+1;
    mdata.Post;
  end;

end;

procedure TFrm_PackStock.APPPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  Act_App.Execute;
end;

procedure TFrm_PackStock.NextPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  Act_Next.Execute;


end;

procedure TFrm_PackStock.Act_SetOpen_M2Execute(Sender: TObject);
begin
  inherited;
  cxGV_PItem.OptionsData.Editing:=True;
  OKBtn2.Visible:=True;
  CancelBtn2.Visible:=True;

  MyTreeView_Pack.Enabled:=False;
  ToolBar_M2.Enabled:=False;

  TB_Edit2.Visible:=True;
  L_FPackNum1.Visible:=False;
  L_FPackNum2.Visible:=False;
  L_FPackNo.Visible:=False;
  E_FPackNum1.Visible:=False;
  E_FPackNum2.Visible:=False;
  E_FPackNo.Visible:=False;
  IsEdit_M2.Visible:=True;
  CxGrid_PItem.PopupMenu:=PopupMenu_M2;

end;

procedure TFrm_PackStock.Act_SetClose_M2Execute(Sender: TObject);
begin
  inherited;
  MyTreeView_Pack.Enabled:=True;
  ToolBar_M2.Enabled:=True;
  cxGV_PItem.OptionsData.Editing:=False;
  OKBtn2.Visible:=False;
  CancelBtn2.Visible:=False;
  TB_Edit2.Visible:=True;
  L_FPackNum1.Visible:=True;
  L_FPackNum2.Visible:=True;
  L_FPackNo.Visible:=True;
  E_FPackNum1.Visible:=True;
  E_FPackNum2.Visible:=True;
  E_FPackNo.Visible:=True;
  IsEdit_M2.Visible:=False;

  CxGrid_PItem.PopupMenu:=PopupMenu1;
end;

procedure TFrm_PackStock.Act_SetOpen_MExecute(Sender: TObject);
begin
  inherited;
  OKBtn_M.Visible:=True;
  CancelBtn_M.Visible:=True;

  MyTreeView.Enabled:=False;
  ToolBar1.Enabled:=False;
  Panel_button.Visible:=True;

  cxGV.OptionsData.Editing:=True;

  IsSel.Visible:=True;
  IsSel.Options.Editing:=True;

  mcgg.Visible:=False;

  mc.Visible:=True;
  gg.Visible:=True;
  th.Options.Editing:=True;
  mc.Options.Editing:=True;
  N_Cut.Visible:=True;

  FPackClass.Options.Editing:=True;
  FPackNo.Options.Editing:=True;
  FPackQry.Options.Editing:=True;
  FSuttle.Options.Editing:=True;
  FStockLIstRemark.Options.Editing:=True;
  FPackLIstRemark.Options.Editing:=True;

  CxGrid.PopupMenu:=PopupMenu;
end;

procedure TFrm_PackStock.Act_SetClose_MExecute(Sender: TObject);
begin
  inherited;
  MyTreeView.Enabled:=True;
  ToolBar1.Enabled:=True;
  cxGV.OptionsData.Editing:=False;
  OKBtn_M.Visible:=False;
  CancelBtn_M.Visible:=False;
  Panel_button.Visible:=False;
  mcgg.Visible:=True;

  mc.Visible:=False;
  gg.Visible:=False;

  CxGrid.PopupMenu:=PopupMenu1;
end;

procedure TFrm_PackStock.TB_PackListXLSClick(Sender: TObject);
var
  Query_Sp:TADOStoredProc;
  i,k,s,ReNum,ReNumLoop,R_Count,L:Integer;
  ExcelApp,MyWorkBook,mysheet,vLastSheet: Variant;
  filepath,savefilepath,Sqlstr,copystart,copyend,copystart1,aa:string;
  ListQry:Tadoquery;
  qry,qry1:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry1:=TAdoQuery.Create(self);
  qry1.ConnectionString:=mdlData.ReadConnStr;

  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If (E_FPackNum1.Text='') or (E_FPackNum2.Text='') then
  begin
    Application.MessageBox(PChar('请选择打印箱件起始号！'), '错误', MB_OK +MB_ICONSTOP);
    Exit;
  end;
  P_Move:=0;

  try
    qry.SQL.Text:='select * from V_PackDraft where FItemID=:FItemID and FPackNum>=:FPackNum1 and FPackNum<=:FPackNum2  order by FItemID,FPackNum,FListNum ';
    qry.Parameters.FindParam('FItemID').value:=mdata_PItem['FItemID'];
    qry.Parameters.FindParam('FPackNum1').value:=Trim(E_FPackNum1.Text);
    qry.Parameters.FindParam('FPackNum2').value:=Trim(E_FPackNum2.Text);
   qry.Open;
  finally
     ;
  end;
  mdata_PItem.CopyFromDataSet(qry);
  mdata_PItem.Active:=True;



  P_List_Pack:=mdata_PItem['FBranchItemNumber'];
  filepath:=Extractfilepath(application.ExeName)+'装箱清单模版.xls';
  if (mdata_PItem.Active) and (mdata_PItem.recordcount>0) then
  Begin
    SaveDialog1.FileName:='装箱清单'+P_List_Pack;
    SaveDialog1.Filter:='.xls';
    SaveDialog1.Execute;

    if (mdata_PItem.FieldByName('FBranchItemNumber').AsString<>'') Or (mdata_PItem.FieldByName('FBranchItemNumber').AsString<>Null) then
        savefilepath:=SaveDialog1.FileName+'.xls';

    if FileExists(savefilepath) then
    begin
      DeleteFile(savefilepath) ;
    end;
    stbMsg.Caption:='提示信息：正在导出生装箱清单:'+'【'+mdata_PItem.FieldByName('FBranchItemNumber').AsString+'】';
    stbBar.Refresh;

    ExcelApp:= CreateOleObject('Excel.Application' );
    ExcelApp.DisplayAlerts:=False;                  //不显示提示框
    MyWorkBook:=ExcelApp.WorkBooks.Open( filepath );   //打开模版
    //ExcelApp.Visible:=True;

    try
      qry.SQL.Text:='select distinct FBranchItemNumber  from V_PackDraft where FItemID=:FItemID and FPackNum>=:FPackNum1 and FPackNum<=:FPackNum2 order by FBranchItemNumber ';
      qry.Parameters.FindParam('FItemID').value:=mdata_PItem['FItemID'];
      qry.Parameters.FindParam('FPackNum1').value:=Trim(E_FPackNum1.Text);
      qry.Parameters.FindParam('FPackNum2').value:=Trim(E_FPackNum2.Text);
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
       qry1.SQL.Text:='select * from V_PackDraft where FItemID=:FItemID and FPackNum>=:FPackNum1 and FPackNum<=:FPackNum2 order by FBranchItemNumber,FPackNum,FListNum ';
       qry1.Parameters.FindParam('FItemID').value:=mdata_PItem['FItemID'];
       qry1.Parameters.FindParam('FPackNum1').value:=Trim(E_FPackNum1.Text);
       qry1.Parameters.FindParam('FPackNum2').value:=Trim(E_FPackNum2.Text);

       qry1.Open;
     finally
       ;
     end;
     if qry1.RecordCount>0 then
     begin
       mdata_PItem.Close;
       mdata_PItem.CopyFromDataSet(qry1);
     end;
     vLastSheet:=MyWorkBook.Sheets[MyWorkBook.Sheets.Count];
     MyWorkBook.Sheets[1].Copy(EmptyParam,vLastSheet);
     MyWorkBook.WorkSheets[k].Name:=IntToStr(k)+mdata_PItem['FBranchItemNumber'];
     MyWorkBook.WorkSheets[k].Activate;

      //标题
      MyWorkBook.WorkSheets[k].Cells[1,1].Value:=AnsiReplaceStr(MyWorkBook.WorkSheets[k].Cells[1,1].Value,'A',UserFDepartmentName); //公司名称

      MyWorkBook.WorkSheets[k].Cells[4,3].Value := Trim(mdata_PItem.FieldByName('FBranchItemNumber').AsString); //图号
      MyWorkBook.WorkSheets[k].Cells[5,3].Value := Trim(mdata_PItem.FieldByName('FClientFullName').AsString); //项目名称
      MyWorkBook.WorkSheets[k].Cells[4,14].Value := Trim(mdata_PItem.FieldByName('FItemModel').AsString); //型号
      MyWorkBook.WorkSheets[k].Cells[5,14].Value := Trim(mdata_PItem.FieldByName('FItemQry').AsString); //设备数量


      //循环行开始
      i:=8;

       //工作薄名称
      MyWorkBook.WorkSheets[k].Name:=mdata_PItem.FieldByName('FBranchItemNumber').AsString;
      copystart:='A'+IntToStr(i);
      if mdata_PItem.recordcount>0 then
      Begin
        if mdata_PItem.recordcount>1 then
        Begin
          copystart:='A'+IntToStr(i);
          copystart1:='A'+IntToStr(i+1);
          copyend:='N'+IntToStr(i);  //区域
          ReNum:=mdata_PItem.recordcount-1+(25-((mdata_PItem.RecordCount+1) mod 25));;
          L:=mdata_PItem.recordcount-1+(25-((mdata_PItem.RecordCount+1) mod 25));;
          while ReNum>0 do
          Begin
            ExcelApp.ActiveSheet.Range[copystart+':'+copyend].Copy;
            ExcelApp.ActiveSheet.Rows[i+1].Insert;
            ExcelApp.ActiveSheet.Range[copystart1].PasteSpecial;
            Renum:=Renum-1;
          end;
          //制单、审核栏
         { MyWorkBook.WorkSheets[k].Cells[i+L+1,3].Value:=Mdata2.FieldByName('FMakeAudit').AsString; //校对
          MyWorkBook.WorkSheets[k].Cells[i+L+1,9].Value:=Mdata2.FieldByName('FMakeSubmit').AsString; //制单
          }
        end
        else
        Begin
          R_Count:=mdata_PItem.recordcount;
        end;
        mdata_PItem.first;
        while not mdata_PItem.eof do
        Begin
          If mdata_PItem.FieldByName('FListNum').Value=0 then
             MyWorkBook.WorkSheets[k].Cells[i,1].Value := mdata_PItem.FieldByName('FPackNum').AsString //箱号
          else
             MyWorkBook.WorkSheets[k].Cells[i,1].Value := mdata_PItem.FieldByName('FListNum').AsString; //序号
          MyWorkBook.WorkSheets[k].Cells[i,2].Value := ' '+mdata_PItem.FieldByName('FPackNumber').AsString; //图号
          MyWorkBook.WorkSheets[k].Cells[i,4].Value := ' '+mdata_PItem.FieldByName('FPackName').AsString+'  '+mData_PList.FieldByName('gg').AsString; //名称+规格
          If mdata_PItem.FieldByName('FListNum').Value=0 then
             MyWorkBook.WorkSheets[k].Cells[i,5].Value :='箱'
          else
              MyWorkBook.WorkSheets[k].Cells[i,5].Value :='件';
          If mdata_PItem.FieldByName('FListNum').Value=0 then
             MyWorkBook.WorkSheets[k].Cells[i,6].Value := 1 //数量
          else
              MyWorkBook.WorkSheets[k].Cells[i,6].Value := mdata_PItem.FieldByName('FPackQry').AsString; //数量

          MyWorkBook.WorkSheets[k].Cells[i,7].Value := mdata_PItem.FieldByName('FPackMode').AsString; //包装方式
          MyWorkBook.WorkSheets[k].Cells[i,8].Value := mdata_PItem.FieldByName('FGross').AsString; //毛重
          MyWorkBook.WorkSheets[k].Cells[i,9].Value := mdata_PItem.FieldByName('FNet').AsString; //净重
          MyWorkBook.WorkSheets[k].Cells[i,10].Value := mdata_PItem.FieldByName('FLength').AsString; //长
          MyWorkBook.WorkSheets[k].Cells[i,11].Value := mdata_PItem.FieldByName('FWidth').AsString; //宽
          MyWorkBook.WorkSheets[k].Cells[i,12].Value := mdata_PItem.FieldByName('FHigh').AsString; //高
          MyWorkBook.WorkSheets[k].Cells[i,13].Value := mdata_PItem.FieldByName('FV').AsString; //体积
          MyWorkBook.WorkSheets[k].Cells[i,14].Value := mdata_PItem.FieldByName('FStockListRemark').AsString; //清单备注
          mdata_PItem.next;
          i:=i+1;
        End;
      end;
      qry.Next ;
      ExcelApp.Visible:=True;
      MyWorkBook.WorkSheets[k].PrintPreview;  //打印
      k:=k+1;
    end;
    MyWorkBook.WorkSheets[1].delete; //删除模版
    stbMsg.Caption:='提示信息：装箱清单:'+'【'+mdata_PItem.FieldByName('FBranchItemNumber').AsString+'】的信息导出完成!';
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

procedure TFrm_PackStock.MDataAfterEdit(DataSet: TDataSet);
begin
  inherited;
  DataSet['IsEdit']:=True;
end;

procedure TFrm_PackStock.TB_Edit2Click(Sender: TObject);
begin
  inherited;
  P_state:=1;
  Act_SetOpen_2.Execute;

end;

procedure TFrm_PackStock.OKBtn_2Click(Sender: TObject);
var
  IsEdit:bool;
  qry: TADOQuery;
  I_index:integer;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  mData_PList.Edit;
  mData_PList.Post;
  If ShowMsg('是否更新该箱的数据？！','提示') then
  begin
    mData_PList.DisableControls;
    mData_PList.First;
    try
      qry.SQL.Text:='Update T_PackStockList set FPackClass=:FPackClass,FPackNo=:FPackNo,FPackLIstRemark=:FPackLIstRemark where FPackStockListID=:FPackStockListID';
      while not mData_PList.EoF do
      begin
        qry.Parameters.FindParam('FPackClass').value:=mData_PList['FPackClass'];
        qry.Parameters.FindParam('FPackNo').value:=mData_PList['FPackNo'];
        qry.Parameters.FindParam('FPackLIstRemark').value:=mData_PList['FPackLIstRemark'];
        qry.Parameters.FindParam('FPackStockListID').value:=mData_PList['FPackStockListID'];
        qry.ExecSQL;
        mData_PList.next;
      end;
    finally
      ;
    end;
    mData_PList.EnableControls;
  end;

  CancelBtn_2.Click;


end;

procedure TFrm_PackStock.Act_IMP_PackItemExecute(Sender: TObject);
var
  proc:TADOStoredProc;
  qry: TADOQuery;
begin
  proc:=TADOStoredProc.Create(self);
  proc.ConnectionString:=mdlData.ReadConnStr;
  proc.CommandTimeout:=500;
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    proc.ProcedureName:='P_Imp_PackItem;1';
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=20;
      name := '@ListItemFNumber';
      value:=P_FItemNo;
      //value:=ListItemFNumber;
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftInteger;
      Direction := pdinput;
      name := '@FFactureID';
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
    proc.Open;
    P_Retinf:=proc.Parameters.FindParam('@Retinf').Value;
  finally
    ;
  end;
  proc.Free;
    { If  P_Retinf<>'' then
      begin
        Messagedlg(P_Retinf,mtInformation,[mbok],0);
        mdata_M2.Close;

        DS_Mdata_M2.DataSet:=Mdata_M2;
        cxGV_M2.DataController.DataSource:=DS_Mdata_M2;

        mdata_M2.CopyFromDataSet(proc);
        Mdata_M2.Active:=True;
        If ListFNumber_Pack<>'' then
        begin
          If MyItemList(qry,Mdata_M2,'V_PackItem','FFullNumber',ListFNumber_Pack,'FFullNumber') then
        end;
        PC_2.ActivePage:=TS_PackItem;
      end;}



end;

procedure TFrm_PackStock.CancelBtn_2Click(Sender: TObject);
begin
  inherited;
  Act_SetClose_2.Execute;

end;

procedure TFrm_PackStock.SelPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);

begin
  inherited;
    Act_Sel.Execute;

end;

procedure TFrm_PackStock.TB_PrinClick(Sender: TObject);
begin
  If mdata.RecordCount>0 then
  begin
    frDBDataSet.Dataset:=Mdata;
    mdata.SortedField:='FFullNumber';
    FrReport.LoadFromFile(ExtractFileDir(Application.ExeName)+'\Report_DesignBOM_PackStock.frf');
    FrReport.ShowReport;
  end
  else
    Application.MessageBox(PChar('没有需要打印的数据！'), '错误', MB_OK +MB_ICONSTOP);
  mdata.SortedField:='';
end;

procedure TFrm_PackStock.TB_EditClick(Sender: TObject);
begin
  inherited;
  P_state:=1;
  Act_SetOpen.Execute;

end;

procedure TFrm_PackStock.CancelBtnClick(Sender: TObject);
begin
  inherited;
  Act_SetClose.Execute;

end;

procedure TFrm_PackStock.OKBtnClick(Sender: TObject);
var
  IsEdit:bool;
  qry: TADOQuery;
  I_index:integer;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  Mdata.Edit;
  Mdata.Post;
  If ShowMsg('是否更新数据？！','提示') then
  begin
    mData.DisableControls;
    mData.First;
    try
      qry.SQL.Text:='Update T_PackStockList set FPackClass=:FPackClass,FPackNo=:FPackNo,FPackLIstRemark=:FPackLIstRemark where FPackStockListID=:FPackStockListID';
      while not mdata.EoF do
      begin
        qry.Parameters.FindParam('FPackClass').value:=mdata['FPackClass'];
        qry.Parameters.FindParam('FPackNo').value:=mdata['FPackNo'];
        qry.Parameters.FindParam('FPackLIstRemark').value:=mdata['FPackLIstRemark'];
        qry.Parameters.FindParam('FPackStockListID').value:=mdata['FPackStockListID'];
        qry.ExecSQL;
        mData.next;
      end;
    finally
      ;
    end;
    mData.EnableControls;
  end;
  CancelBtn.Click;

end;

procedure TFrm_PackStock.FormDestroy(Sender: TObject);
begin
  inherited;
UnRegisterHotKey(handle,HotKey);

end;

procedure TFrm_PackStock.ActPackMXExecute(Sender: TObject);
Var
  P_FLength,P_FWidth,P_FHigh:Integer;
  P_FSteel,P_FWood,P_FPlastic,P_FAsphalt,P_FColorbar:Real;
  P_FPackNumber,P_FPackName,P_FPackMode,P_FPlace,a:string;
  i,j,n: integer;

begin
  inherited;
  P_Move:=0;
  If P_state=1 then     //修改
  begin
    for i:=0 to 0 do
    begin
      j:=cxGV_PItem.DataController.GetSelectedRowIndex(i);
      P_FPackNumber:=cxGV_PItem.DataController.GetValue(j,4);
      P_FPackName:=cxGV_PItem.DataController.GetValue(j,5);
      P_FPackMode:=cxGV_PItem.DataController.GetValue(j,6);
      P_FLength:=cxGV_PItem.DataController.GetValue(j,9);
      P_FWidth:=cxGV_PItem.DataController.GetValue(j,10);
      P_FHigh:=cxGV_PItem.DataController.GetValue(j,11);
      P_FSteel:=cxGV_PItem.DataController.GetValue(j,13);
      P_FWood:=cxGV_PItem.DataController.GetValue(j,14);
      P_FPlastic:=cxGV_PItem.DataController.GetValue(j,15);
      P_FAsphalt:=cxGV_PItem.DataController.GetValue(j,16);
      P_FColorbar:=cxGV_PItem.DataController.GetValue(j,17);
      P_FPlace:=cxGV_PItem.DataController.GetValue(j,18);
    end;
    for i:=0 to cxGV_PItem.DataController.Controller.SelectedRecordCount-1 do
    begin
      j:=cxGV_PItem.DataController.GetSelectedRowIndex(i);
      mdata_PItem.Edit;
      cxGV_PItem.DataController.SetValue(J,4,P_FPackNumber);
      cxGV_PItem.DataController.SetValue(J,5,P_FPackName);
      cxGV_PItem.DataController.SetValue(J,6,P_FPackMode);
      cxGV_PItem.DataController.SetValue(J,9,P_FLength);
      cxGV_PItem.DataController.SetValue(J,10,P_FWidth);
      cxGV_PItem.DataController.SetValue(J,11,P_FHigh);
      cxGV_PItem.DataController.SetValue(J,13,P_FSteel);
      cxGV_PItem.DataController.SetValue(J,14,P_FWood);
      cxGV_PItem.DataController.SetValue(J,15,P_FPlastic);
      cxGV_PItem.DataController.SetValue(J,16,P_FAsphalt);
      cxGV_PItem.DataController.SetValue(J,17,P_FColorbar);
      cxGV_PItem.DataController.SetValue(J,18,P_FPlace);
      mdata_PItem.post;

    end;
  end;
  P_Move:=1;


end;

procedure TFrm_PackStock.Act_AppExecute(Sender: TObject);
var
  IsSel:bool;
  I_index:integer;
  P_FPackNo:Integer;
  P_FPackClass:string;
begin
  inherited;
  If P_state=1 then     //修改
  begin
    P_FPackClass:=mdata['FPackClass'];
    P_FPackNo:=mdata['FPackNo'];
    I_index:=Mdata.RecNo ;
    Mdata.Edit;
    Mdata.Post;
    mData.DisableControls;
    mData.First;
    while not mData.eof do
    begin
      IsSel:=mData.FieldByName('IsSel').AsBoolean;
      If IsSel then
      begin
        Mdata.Edit;
        Mdata['FPackClass']:=P_FPackClass;
        Mdata['FPackNo']:=P_FPackNo;
        Mdata['IsSel']:=0;
        Mdata.Post;
      end;
      mData.Next;
    end;
    mData.EnableControls;
    If (I_index<Mdata.RecordCount) and (I_index<>-1) then
        Mdata.RecNo :=I_index
    else
       Mdata.Last;
  end;


  {
  If P_state=1 then     //修改
  begin
    mdata.Prior;
    P_FPackClass:=mdata['FPackClass'];
    P_FPackNo:=mdata['FPackNo'];
    mdata.Next;
    mdata.Edit;
    mdata['FPackClass']:=P_FPackClass;
    mdata['FPackNo']:=P_FPackNo;
    mdata.Post;
  end;

 }


end;

procedure TFrm_PackStock.Act_NextExecute(Sender: TObject);
var
  IsSel:bool;
  I_index,i:integer;
  P_FPackNo:Integer;
  P_FPackClass:string;
begin
  inherited;
  If P_state=1 then     //修改
  begin
    P_FPackClass:=mdata['FPackClass'];
    P_FPackNo:=mdata['FPackNo'];
    I_index:=Mdata.RecNo ;
    Mdata.Edit;
    Mdata.Post;
    mData.DisableControls;
    mData.First;
    i:=0;
    while not mData.eof do
    begin
      IsSel:=mData.FieldByName('IsSel').AsBoolean;
      If IsSel then
      begin
        Mdata.Edit;
        Mdata['FPackClass']:=P_FPackClass;
        Mdata['FPackNo']:=P_FPackNo+i;
        Mdata['IsSel']:=0;
        Mdata.Post;
        i:=i+1;
     end;
      mData.Next;
    end;
    mData.EnableControls;
    If (I_index<Mdata.RecordCount) and (I_index<>-1) then
        Mdata.RecNo :=I_index
    else
       Mdata.Last;
  end;




  {
  If P_state=1 then     //修改
  begin
    mdata.Prior;
    P_FPackClass:=mdata['FPackClass'];
    P_FPackNo:=mdata['FPackNo'];
    mdata.Next;
    mdata.Edit;
    mdata['FPackClass']:=P_FPackClass;
    mdata['FPackNo']:=P_FPackNo+1;
    mdata.Post;
  end;
     }
end;

procedure TFrm_PackStock.Act_AddExecute(Sender: TObject);
  var p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11:String;
      s1,s2,s3,s4,s5,s6,i:Integer;
      n1,n2,n3,n4,n5:real;
begin
  inherited;
  mdata.Edit;
  mdata.Post;
  p2:= mdata['th'];
  p3:= mdata['mc'];
  p4:= mdata['gg'];
  p5:= mdata['FFullNumber'];
  p6:= mdata['ssFullNumber'];
  p8:= mdata['NUm'];
  p7:= mdata['FPackClass'];
  p9:= mdata['mcgg'];

  s5:= mdata['FPackStockItemID'];

  n1:= mdata['FSumQry'];
  n2:= mdata['FSuttle'];
  n3:= mdata['FSumSuttle'];
  n4:= mdata['FPackNo'];
  If mdata['FPackQry']<E_n.Value*E_L.Value then
  begin
     application.MessageBox('拆分的总数量大于包装数量，数量不够拆分！','系统提示',MB_ICONINFORMATION);
     Exit;
  end;
  mdata.Edit;
  mdata['FPackQry']:=mdata['FPackQry']-(E_n.Value-1)*E_L.Value;
  mdata.Post;

  for i:=1 to E_n.Value-1 do
  begin
    mdata.Edit;
    mdata.Next;
    mdata.Insert;

    mdata['th']:=p2;
    mdata['mc']:=p3;
    mdata['gg']:=p4;
    mdata['mcgg']:=p9;
    mdata['FFullNumber']:=p5;
    mdata['ssFullNumber']:=p6;
    mdata['FPackClass']:=p7 ;
    mdata['NUm']:=p8;

    mdata['FPackStockItemID']:=s5;
    mdata['FSumQry']:=0;
    mdata['dw']:='件';
    mdata['FPackClass']:=p7;
    mdata['FPackQry']:=E_L.Value;
    mdata['FSuttle']:=n2;
    mdata['FSumSuttle']:=n3;
    mdata['FPackNo']:=n4+i;

    mdata.Post;
  end;


end;

procedure TFrm_PackStock.Act_SelExecute(Sender: TObject);
Var
  i,j: integer;
begin
  inherited;
  If P_state=1 then     //修改
  begin
    for i:=0 to cxGV.DataController.Controller.SelectedRecordCount-1 do
    begin
      j:=cxGV.DataController.GetSelectedRowIndex(i);
     // mdata.Edit;
      cxGV.DataController.SetValue(J,0,True);
      //mdata.post;
    end;
  end;

end;

procedure TFrm_PackStock.TB_Pack_SGClick(Sender: TObject);
var
  Query_Sp:TADOStoredProc;
  i,k,s,ReNum,ReNumLoop,R_Count,L:Integer;
  ExcelApp,MyWorkBook,mysheet,vLastSheet: Variant;
  filepath,savefilepath,Sqlstr,copystart,copyend,copystart1,aa:string;
  ListQry:Tadoquery;
  qry,qry1:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry1:=TAdoQuery.Create(self);
  qry1.ConnectionString:=mdlData.ReadConnStr;
  If (E_FPackNum1.Text='') or (E_FPackNum2.Text='') then
  begin
    Application.MessageBox(PChar('请选择打印箱件起始号！'), '错误', MB_OK +MB_ICONSTOP);
    Exit;
  end;
  If (copy(E_FPackNum1.Text,1,1)<>'S') or (copy(E_FPackNum2.Text,1,1)<>'S') then
  begin
    Application.MessageBox(PChar('请选择散件箱件起始号！'), '错误', MB_OK +MB_ICONSTOP);
    Exit;
  end;

  P_List_Pack:=mData_PList['FBranchItemNumber'];
  filepath:=Extractfilepath(application.ExeName)+'散件装箱记录表模版.xls';
  if (mData_PList.Active) and (mData_PList.recordcount>0) then
  Begin
    SaveDialog1.FileName:='散件装箱记录表'+P_List_Pack;
    SaveDialog1.Filter:='.xls';
    SaveDialog1.Execute;

    if (mData_PList.FieldByName('FBranchItemNumber').AsString<>'') Or (mData_PList.FieldByName('FPackNum').AsString<>Null) then
        savefilepath:=SaveDialog1.FileName+'.xls';

    if FileExists(savefilepath) then
    begin
      DeleteFile(savefilepath) ;
    end;
    stbMsg.Caption:='提示信息：正在导出生散件装箱记录表:'+'【'+mData_PList.FieldByName('FBranchItemNumber').AsString+'】';
    stbBar.Refresh;

    ExcelApp:= CreateOleObject('Excel.Application' );
    ExcelApp.DisplayAlerts:=False;                  //不显示提示框
    MyWorkBook:=ExcelApp.WorkBooks.Open( filepath );   //打开模版
    //ExcelApp.Visible:=True;

    try
      qry.SQL.Text:='select distinct FBranchItemNumber,FPackNum  from V_PackList where cast(FBillDepartmentID as nvarchar(20))+'';''+FItemNo+'';''+FPackNum like :FFullNumber and FPackNum>=:FPackNum1 and FPackNum<=:FPackNum2 order by FBranchItemNumber,FPackNum ';
      qry.Parameters.FindParam('FFullNumber').value:=ListFNumber_Pack+'%';
      qry.Parameters.FindParam('FPackNum1').value:=Trim(E_FPackNum1.Text);
      qry.Parameters.FindParam('FPackNum2').value:=Trim(E_FPackNum2.Text);
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
       qry1.SQL.Text:='select * from V_PackList where cast(FBillDepartmentID as nvarchar(20))+'';''+FItemNo+'';''+FPackNum like :FFullNumber and FPackNum=:FPackNum order by FItemNumber,FPackNum,FListNum ';
       qry1.Parameters.FindParam('FFullNumber').value:=ListFNumber_Pack+'%';
       qry1.Parameters.FindParam('FPackNum').value:=qry.FieldByName('FPackNum').Value;

       qry1.Open;
     finally
       ;
     end;
     if qry1.RecordCount>0 then
     begin
       mData_PList.Close;
       mData_PList.CopyFromDataSet(qry1);
     end;
     vLastSheet:=MyWorkBook.Sheets[MyWorkBook.Sheets.Count];
     MyWorkBook.Sheets[1].Copy(EmptyParam,vLastSheet);
     MyWorkBook.WorkSheets[k].Name:=IntToStr(k)+mData_PList['FPackNum'];
     MyWorkBook.WorkSheets[k].Activate;

      //标题
      MyWorkBook.WorkSheets[k].Cells[2,1].Value:=AnsiReplaceStr(MyWorkBook.WorkSheets[k].Cells[2,1].Value,'A',UserFDepartmentName); //公司名称

      MyWorkBook.WorkSheets[k].Cells[3,3].Value := Trim(mData_PList.FieldByName('FBranchItemNumber').AsString); //图号
      MyWorkBook.WorkSheets[k].Cells[4,3].Value := Trim(mData_PList.FieldByName('FClientFullName').AsString); //项目名称
      MyWorkBook.WorkSheets[k].Cells[4,9].Value := Trim(mData_PList.FieldByName('FPackNum').AsString); //箱号


      //循环行开始
      i:=6;

       //工作薄名称
      MyWorkBook.WorkSheets[k].Name:=mData_PList.FieldByName('FPackNum').AsString;
      copystart:='A'+IntToStr(i);
      if mData_PList.recordcount>0 then
      Begin
        if mData_PList.recordcount>1 then
        Begin
          copystart:='A'+IntToStr(i);
          copystart1:='A'+IntToStr(i+1);
          copyend:='J'+IntToStr(i);  //区域
          ReNum:=mData_PList.recordcount-1+(30-((mData_PList.RecordCount+1) mod 30));;
          L:=mData_PList.recordcount-1+(30-((mData_PList.RecordCount+1) mod 30));;
          while ReNum>0 do
          Begin
            ExcelApp.ActiveSheet.Range[copystart+':'+copyend].Copy;
            ExcelApp.ActiveSheet.Rows[i+1].Insert;
            ExcelApp.ActiveSheet.Range[copystart1].PasteSpecial;
            Renum:=Renum-1;
          end;
          //制单、审核栏
         { MyWorkBook.WorkSheets[k].Cells[i+L+1,3].Value:=Mdata2.FieldByName('FMakeAudit').AsString; //校对
          MyWorkBook.WorkSheets[k].Cells[i+L+1,9].Value:=Mdata2.FieldByName('FMakeSubmit').AsString; //制单
          }
        end
        else
        Begin
          R_Count:=mData_PList.recordcount;
        end;
        mData_PList.first;
        while not mData_PList.eof do
        Begin
          MyWorkBook.WorkSheets[k].Cells[i,1].Value := mData_PList.FieldByName('FListNum').AsString; //序号
          MyWorkBook.WorkSheets[k].Cells[i,2].Value := ' '+mData_PList.FieldByName('th').AsString; //图号
          MyWorkBook.WorkSheets[k].Cells[i,4].Value := ' '+mData_PList.FieldByName('mc').AsString+'  '+mData_PList.FieldByName('gg').AsString; //名称+规格
          MyWorkBook.WorkSheets[k].Cells[i,5].Value := mData_PList.FieldByName('FPackQry').AsString; //数量
          MyWorkBook.WorkSheets[k].Cells[i,6].Value := mData_PList.FieldByName('FSuttle').AsString; //净重量
          MyWorkBook.WorkSheets[k].Cells[i,10].Value := mData_PList.FieldByName('FSumSuttle').AsString; //净合计
          mData_PList.next;
          i:=i+1;
        End;
      end;
      qry.Next ;
      ExcelApp.Visible:=True;
      MyWorkBook.WorkSheets[k].PrintPreview;  //打印
      k:=k+1;
    end;
    MyWorkBook.WorkSheets[1].delete; //删除模版
    stbMsg.Caption:='提示信息：散件装箱记录表:'+'【'+mData_PList.FieldByName('FPackNum').AsString+'】的信息导出完成!';
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

procedure TFrm_PackStock.TB_PackDraftXlsClick(Sender: TObject);
var
  Query_Sp:TADOStoredProc;
  i,k,s,ReNum,ReNumLoop,R_Count,L:Integer;
  ExcelApp,MyWorkBook,mysheet,vLastSheet: Variant;
  filepath,savefilepath,Sqlstr,copystart,copyend,copystart1,aa:string;
  ListQry:Tadoquery;
  qry,qry1:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry1:=TAdoQuery.Create(self);
  qry1.ConnectionString:=mdlData.ReadConnStr;

  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If (E_FPackNum1.Text='') or (E_FPackNum2.Text='') then
  begin
    Application.MessageBox(PChar('请选择打印箱件起始号！'), '错误', MB_OK +MB_ICONSTOP);
    Exit;
  end;
  P_Move:=0;

  try
    qry.SQL.Text:='select * from V_PackDraft where FItemID=:FItemID and FPackNum>=:FPackNum1 and FPackNum<=:FPackNum2  order by FItemID,FPackNum,FListNum ';
    qry.Parameters.FindParam('FItemID').value:=mdata_PItem['FItemID'];
    qry.Parameters.FindParam('FPackNum1').value:=Trim(E_FPackNum1.Text);
    qry.Parameters.FindParam('FPackNum2').value:=Trim(E_FPackNum2.Text);
   qry.Open;
  finally
     ;
  end;
  mdata_PItem.CopyFromDataSet(qry);
  mdata_PItem.Active:=True;



  P_List_Pack:=mdata_PItem['FBranchItemNumber'];
  filepath:=Extractfilepath(application.ExeName)+'包装底稿模版.xls';
  if (mdata_PItem.Active) and (mdata_PItem.recordcount>0) then
  Begin
    SaveDialog1.FileName:='包装底稿'+P_List_Pack;
    SaveDialog1.Filter:='.xls';
    SaveDialog1.Execute;

    if (mdata_PItem.FieldByName('FBranchItemNumber').AsString<>'') Or (mdata_PItem.FieldByName('FBranchItemNumber').AsString<>Null) then
        savefilepath:=SaveDialog1.FileName+'.xls';

    if FileExists(savefilepath) then
    begin
      DeleteFile(savefilepath) ;
    end;
    stbMsg.Caption:='提示信息：正在导出生包装底稿:'+'【'+mdata_PItem.FieldByName('FBranchItemNumber').AsString+'】';
    stbBar.Refresh;

    ExcelApp:= CreateOleObject('Excel.Application' );
    ExcelApp.DisplayAlerts:=False;                  //不显示提示框
    MyWorkBook:=ExcelApp.WorkBooks.Open( filepath );   //打开模版
    //ExcelApp.Visible:=True;

    try
      qry.SQL.Text:='select distinct FBranchItemNumber  from V_PackDraft where FItemID=:FItemID and FPackNum>=:FPackNum1 and FPackNum<=:FPackNum2 order by FBranchItemNumber ';
      qry.Parameters.FindParam('FItemID').value:=mdata_PItem['FItemID'];
      qry.Parameters.FindParam('FPackNum1').value:=Trim(E_FPackNum1.Text);
      qry.Parameters.FindParam('FPackNum2').value:=Trim(E_FPackNum2.Text);
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
       qry1.SQL.Text:='select * from V_PackDraft where FItemID=:FItemID and FPackNum>=:FPackNum1 and FPackNum<=:FPackNum2 order by FBranchItemNumber,FPackNum,FListNum ';
       qry1.Parameters.FindParam('FItemID').value:=mdata_PItem['FItemID'];
       qry1.Parameters.FindParam('FPackNum1').value:=Trim(E_FPackNum1.Text);
       qry1.Parameters.FindParam('FPackNum2').value:=Trim(E_FPackNum2.Text);

       qry1.Open;
     finally
       ;
     end;
     if qry1.RecordCount>0 then
     begin
       mdata_PItem.Close;
       mdata_PItem.CopyFromDataSet(qry1);
     end;
     vLastSheet:=MyWorkBook.Sheets[MyWorkBook.Sheets.Count];
     MyWorkBook.Sheets[1].Copy(EmptyParam,vLastSheet);
     MyWorkBook.WorkSheets[k].Name:=IntToStr(k)+mdata_PItem['FPackNum'];
     MyWorkBook.WorkSheets[k].Activate;

      //标题
      MyWorkBook.WorkSheets[k].Cells[1,1].Value:=AnsiReplaceStr(MyWorkBook.WorkSheets[k].Cells[1,1].Value,'A',UserFDepartmentName); //公司名称

      MyWorkBook.WorkSheets[k].Cells[2,3].Value := Trim(mdata_PItem.FieldByName('FBranchItemNumber').AsString); //图号
      MyWorkBook.WorkSheets[k].Cells[2,5].Value := Trim(mdata_PItem.FieldByName('FClientFullName').AsString); //项目名称


      //循环行开始
      i:=5;

       //工作薄名称
      MyWorkBook.WorkSheets[k].Name:=mdata_PItem.FieldByName('FBranchItemNumber').AsString;
      copystart:='A'+IntToStr(i);
      if mdata_PItem.recordcount>0 then
      Begin
        if mdata_PItem.recordcount>1 then
        Begin
          copystart:='A'+IntToStr(i);
          copystart1:='A'+IntToStr(i+1);
          copyend:='J'+IntToStr(i);  //区域
          ReNum:=mdata_PItem.recordcount-1+(30-((mdata_PItem.RecordCount+1) mod 30));;
          L:=mdata_PItem.recordcount-1+(30-((mdata_PItem.RecordCount+1) mod 30));;
          while ReNum>0 do
          Begin
            ExcelApp.ActiveSheet.Range[copystart+':'+copyend].Copy;
            ExcelApp.ActiveSheet.Rows[i+1].Insert;
            ExcelApp.ActiveSheet.Range[copystart1].PasteSpecial;
            Renum:=Renum-1;
          end;
          //制单、审核栏
         { MyWorkBook.WorkSheets[k].Cells[i+L+1,3].Value:=Mdata2.FieldByName('FMakeAudit').AsString; //校对
          MyWorkBook.WorkSheets[k].Cells[i+L+1,9].Value:=Mdata2.FieldByName('FMakeSubmit').AsString; //制单
          }
        end
        else
        Begin
          R_Count:=mdata_PItem.recordcount;
        end;
        mdata_PItem.first;
        while not mdata_PItem.eof do
        Begin
          MyWorkBook.WorkSheets[k].Cells[i,1].Value := mdata_PItem.FieldByName('FPackNum').AsString; //箱号
          MyWorkBook.WorkSheets[k].Cells[i,2].Value := mdata_PItem.FieldByName('FListNum').AsString; //序号
          MyWorkBook.WorkSheets[k].Cells[i,3].Value := ' '+mdata_PItem.FieldByName('FPackNumber').AsString; //图号
          MyWorkBook.WorkSheets[k].Cells[i,4].Value := ' '+mdata_PItem.FieldByName('FPackName').AsString+'  '+mData_PList.FieldByName('gg').AsString; //名称+规格
          MyWorkBook.WorkSheets[k].Cells[i,5].Value := mdata_PItem.FieldByName('FPackListReMark').AsString; //包装尺寸
          MyWorkBook.WorkSheets[k].Cells[i,6].Value := mdata_PItem.FieldByName('FStockListReMark').AsString; //清单备注
          MyWorkBook.WorkSheets[k].Cells[i,7].Value := mdata_PItem.FieldByName('FPackQry').AsString; //数量
          MyWorkBook.WorkSheets[k].Cells[i,8].Value := mdata_PItem.FieldByName('FPackMode').AsString; //包装方式
          MyWorkBook.WorkSheets[k].Cells[i,9].Value := mdata_PItem.FieldByName('FNet').AsString; //毛重
          MyWorkBook.WorkSheets[k].Cells[i,10].Value := mdata_PItem.FieldByName('FGross').AsString; //净重
          MyWorkBook.WorkSheets[k].Cells[i,11].Value := mdata_PItem.FieldByName('FLength').AsString; //长
          MyWorkBook.WorkSheets[k].Cells[i,12].Value := mdata_PItem.FieldByName('FWidth').AsString; //宽
          MyWorkBook.WorkSheets[k].Cells[i,13].Value := mdata_PItem.FieldByName('FHigh').AsString; //高
          MyWorkBook.WorkSheets[k].Cells[i,14].Value := mdata_PItem.FieldByName('FV').AsString; //体积

          mdata_PItem.next;
          i:=i+1;
        End;
      end;
      qry.Next ;
      ExcelApp.Visible:=True;
      MyWorkBook.WorkSheets[k].PrintPreview;  //打印
      k:=k+1;
    end;
    MyWorkBook.WorkSheets[1].delete; //删除模版
    stbMsg.Caption:='提示信息：包装底稿:'+'【'+mdata_PItem.FieldByName('FBranchItemNumber').AsString+'】的信息导出完成!';
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

procedure TFrm_PackStock.TB_SubmitClick(Sender: TObject);
var
 qry:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  mdata_M.Active:=True;
  P_List:=mdata_M['FWorkParts'];

  P_state:=3;
  If (TB_Submit.Caption='提交') then
  begin
    If application.MessageBox(Pchar('警告：是否提交包装清单为：【'+P_List+'】的单据？'+chr(13)+chr(13)
                                   +'提交后的数据不允许修改和删除，确定要提交本单据吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      mdata_M.First;
      while not mdata_M.eof do
      begin
        try
          qry.SQL.Text:='Update T_PackStockItem Set FPackStockStatus=1,FPackStockSubmitID=:FPackStockSubmitID,FPackStockSubmitDate=:FPackStockSubmitDate  where FPackStockItemID=:FPackStockItemID';
          qry.Parameters.FindParam('FPackStockSubmitID').value:= UserNumID;
          qry.Parameters.FindParam('FPackStockSubmitDate').value:= now();
          qry.Parameters.FindParam('FPackStockItemID').value:=mdata_M['FPackStockItemID'];
          qry.ExecSQL;
        finally
          ;
        end;
        mdata_M.Edit;
        mdata_M['FPackStockStatus']:=1;
        mdata_M['FPackStockStatusNotes']:='提交';
        mdata_M['FPackStockSubmitDate']:=now();
        mdata_M.Post;
        mdata_M.Next;
      end;
      TB_Submit.Caption:='反提交';
      Act_Status.Execute;  //权限设置
      application.MessageBox('提交完毕！','系统提示',MB_ICONINFORMATION);
    end;
    P_state:=2;
    Exit;
  end;
  If (TB_Submit.Caption='反提交')  then
  begin
    If application.MessageBox(Pchar('警告：是否反提交包装清单为：【'+P_List+'】的单据？'+chr(13)+chr(13)
                                   +'反提交后的数据不允许修改和删除，确定要反提交本单据吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      mdata_M.First;
      while not mdata_M.eof do
      begin
        try
          qry.SQL.Text:='Update T_PackStockItem Set FPackStockStatus=0,FPackStockSubmitID=0,FPackStockSubmitDate=:FPackStockSubmitDate where FPackStockItemID=:FPackStockItemID';
          qry.Parameters.FindParam('FPackStockSubmitDate').value:= Null;
          qry.Parameters.FindParam('FPackStockItemID').value:= mdata_M['FPackStockItemID'];
          qry.ExecSQL;
        finally
          ;
        end;
        mdata_M.Edit;
        mdata_M['FPackStockStatus']:=0;
        mdata_M['FPackStockStatusNotes']:='填单';
        mdata_M['FPackStockSubmitDate']:=Null;
        mdata_M.Post;
        mdata_M.Next;
      end;
      TB_Submit.Caption:='提交';
      Act_Status.Execute;  //权限设置
      application.MessageBox('反提交完毕！','系统提示',MB_ICONINFORMATION);
    end;
    P_state:=2;
    Exit;
  end;
end;

procedure TFrm_PackStock.Act_StatusExecute(Sender: TObject);
begin
  inherited;
  Case mdata_M['FPackStockStatus'] of
    0:       //填单
    begin
      If mdata_M['FPackStockWriteID']=UserNumID then  //制单者为本人
      begin
        TB_Edit_M.Visible:=mdlData.CheckFrmRights(TFrm_PackStock.ClassName,'修改');
        TB_Edit.Visible:=False;
        TB_Del.Visible:=mdlData.CheckFrmRights(TFrm_PackStock.ClassName,'删除');
        ToolBar.Visible:=mdlData.CheckFrmRights(TFrm_PackStock.ClassName,'修改');
        TB_Submit.Visible:=mdlData.CheckFrmRights(TFrm_PackStock.ClassName,'提交');
      end
      else
      begin
        TB_Del.Visible:=False;
        TB_Edit_M.Visible:=False;
        ToolBar.Visible:=False;
        TB_Submit.Visible:=False;
     end;
     TB_Submit.Caption:='提交';
     TB_Audit.Visible:=False;
    end;
  end;
  Case mdata_M['FPackStockStatus'] of
    1:       //提交
    begin
      If mdata_M['FPackStockSubmitID']=UserNumID then  //提交者为本人
      begin
        TB_Submit.Visible:=mdlData.CheckFrmRights(TFrm_PackStock.ClassName,'提交');
        TB_Submit.Caption:='反提交';
        ToolBar.Visible:=False;
      end
      else
      begin
        TB_Submit.Visible:=False;
      end;
      TB_Audit.Caption:='审核';
      TB_Audit.Visible:=mdlData.CheckFrmRights(TFrm_PackStock.ClassName,'审核');
      TB_Del.Visible:=False;
      TB_Edit_M.Visible:=False;
      TB_Edit.Visible:=False;
      ToolBar.Visible:=False;
     end;
  end;
  Case mdata_M['FPackStockStatus'] of
    3:           //审核
    begin
       If mdata_M['FPackStockAuditID']=UserNumID then  //审核者为本人
      begin
        TB_Audit.Visible:=mdlData.CheckFrmRights(TFrm_PackStock.ClassName,'审核');
        TB_Audit.Caption:='反审核';
        ToolBar.Visible:=False;
      end
      else
      begin
        TB_Audit.Visible:=False;
      end;
      TB_Audit.Visible:=mdlData.CheckFrmRights(TFrm_PackStock.ClassName,'审核');
      TB_Audit.Caption:='反审核';
      TB_Del.Visible:=False;
      TB_Edit_M.Visible:=False;
      TB_Edit.Visible:=False;
      TB_Submit.Visible:=False;
    end;
  end;

end;

procedure TFrm_PackStock.Act_Status_MExecute(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  TB_Edit_M.Visible:=False;
  TB_Edit.Visible:=False;
 // ToolBar.Visible :=False;
  TB_Del.Visible:=False;
  TB_Submit.Visible:=False;
  TB_Audit.Visible:=False;

  //填单者是本人
  try
    qry.SQL.Text:='Select distinct FPackStockStatus,FPackStockWriteID from V_PackStockItem where cast(FBIllDepartmentID as Varchar(20))+'';''+FFullNumber like :FFullNumber ';
//    qry.Parameters.FindParam('FPackStockWriteID').value:=UserNumID;
    qry.Parameters.FindParam('FFullNumber').value:=IntToStr(UserFDepartmentID)+';'+ListItemFNumber+'%';
    qry.Open;
  finally
    ;
  end;
  If (qry.RecordCount=1) and (qry.FieldByName('FPackStockStatus').AsInteger=0) and (qry.FieldByName('FPackStockWriteID').AsInteger=UserNumID) then
  begin
    TB_Edit_M.Visible:=False;
    ToolBar.Visible:=mdlData.CheckFrmRights(TFrm_PackStock.ClassName,'修改');
    TB_Edit.Visible:=mdlData.CheckFrmRights(TFrm_PackStock.ClassName,'修改');
    TB_Del.Visible:=False;
    TB_Submit.Visible:=mdlData.CheckFrmRights(TFrm_PackStock.ClassName,'提交');
    TB_Submit.Caption:='提交';
    Exit;
  end;

   //提交者是本人
  try
    qry.SQL.Text:='Select distinct FPackStockStatus,FPackStockSubmitID from V_PackStockItem where  cast(FBIllDepartmentID as Varchar(20))+'';''+FFullNumber like :FFullNumber ';
    //qry.Parameters.FindParam('FPackStockSubmitID').value:=UserNumID;
    qry.Parameters.FindParam('FFullNumber').value:=IntToStr(UserFDepartmentID)+';'+ListItemFNumber+'%';
    qry.Open;
  finally
    ;
  end;
  If (qry.RecordCount=1) and (qry.FieldByName('FPackStockStatus').AsInteger=1)  and (qry.FieldByName('FPackStockSubmitID').AsInteger=UserNumID) then
  begin
    TB_Submit.Visible:=mdlData.CheckFrmRights(TFrm_PackStock.ClassName,'提交');
    TB_Edit_M.Visible:=False;
    TB_Edit.Visible:=False;
    TB_Del.Visible:=False;
    ToolBar.Visible:=False;
    TB_Submit.Caption:='反提交';
    Exit;
  end;

  //审核者是本人
  try
    qry.SQL.Text:='Select distinct FPackStockStatus,FPackStockAuditID from V_PackStockItem where  cast(FBIllDepartmentID as Varchar(20))+'';''+FFullNumber like :FFullNumber ';
    //qry.Parameters.FindParam('FPackStockAuditID').value:=UserNumID;
    qry.Parameters.FindParam('FFullNumber').value:=IntToStr(UserFDepartmentID)+';'+ListItemFNumber+'%';
    qry.Open;
  finally
    ;
  end;
  If (qry.RecordCount=1) and (qry.FieldByName('FPackStockStatus').AsInteger=3) and (qry.FieldByName('FPackStockAuditID').AsInteger=UserNumID) then
  begin
    TB_Audit.Visible:=mdlData.CheckFrmRights(TFrm_PackStock.ClassName,'审核');
    TB_Submit.Visible:=False;
    TB_Edit_M.Visible:=False;
    TB_Edit.Visible:=False;
    TB_Del.Visible:=False;
    ToolBar.Visible:=False;
    TB_Submit.Caption:='反审核';
    Exit;
  end;

end;

procedure TFrm_PackStock.cxGVCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  inherited;

  If cxGV.Controller.FocusedRowIndex=AViewInfo.RecordViewInfo.Index  then  //是否是选中行
     else
  If (StrToFloat(AViewInfo.GridRecord.DisplayTexts[FPackNo.Index])<>0)
     or ((AViewInfo.GridRecord.DisplayTexts[Num.Index]='★★') or (AViewInfo.GridRecord.DisplayTexts[SelRemark.Index]='(按以下入库)')) then
  begin
    //ACanvas.Canvas.brush.Color := clInactiveCaptionText;     //设置行颜色
    ACanvas.Canvas.Font.Color:=clBlue; //字体颜色
    ACanvas.FillRect(AViewInfo.Bounds);
  end;

end;

procedure TFrm_PackStock.N6Click(Sender: TObject);
Var
  P_FLength,P_FWidth,P_FHigh:Integer;
  P_FSteel,P_FWood,P_FPlastic,P_FAsphalt,P_FColorbar:Real;
  P_FPackNumber,P_FPackName,P_FPackMode,P_FPlace,a:string;
  i,j,n,I_index: integer;
  IsSel:bool;
begin
  inherited;
  P_Move:=0;
  If P_state=1 then     //修改
  begin
    P_FPackNumber:=mdata_PItem['FPackNumber'];
    P_FPackName:=mdata_PItem['FPackName'];
    P_FPackMode:=mdata_PItem['FPackMode'];
    P_FLength:=mdata_PItem['FLength'];
    P_FWidth:=mdata_PItem['FWidth'];
    P_FHigh:=mdata_PItem['FHigh'];
    P_FSteel:=mdata_PItem['FSteel'];
    P_FWood:=mdata_PItem['FWood'];
    P_FPlastic:=mdata_PItem['FPlastic'];
    P_FAsphalt:=mdata_PItem['FAsphalt'];
    P_FColorbar:=mdata_PItem['FColorbar'];
    P_FPlace:=mdata_PItem['FPlace'];
    I_index:=mdata_PItem.RecNo ;
    mdata_PItem.Edit;
    mdata_PItem.Post;
    mdata_PItem.DisableControls;
    mdata_PItem.First;
    while not mdata_PItem.eof do
    begin
      IsSel:=mdata_PItem.FieldByName('IsEdit').AsBoolean;
      If IsSel then
      begin
        mdata_PItem.Edit;
        mdata_PItem['FPackNumber']:=P_FPackNumber;
        mdata_PItem['FPackName']:=P_FPackName;
        mdata_PItem['FPackMode']:=P_FPackMode;
        mdata_PItem['FLength']:=P_FLength;
        mdata_PItem['FWidth']:=P_FWidth;
        mdata_PItem['FHigh']:=P_FHigh;
        mdata_PItem['FSteel']:=P_FSteel;
        mdata_PItem['FWood']:=P_FWood;
        mdata_PItem['FPlastic']:=P_FPlastic;
        mdata_PItem['FAsphalt']:=P_FAsphalt;
        mdata_PItem['FColorbar']:=P_FColorbar;
        mdata_PItem['FPlace']:=P_FPlace;
        mdata_PItem['IsEdit']:=0;
        mdata_PItem.Post;
      end;
      mdata_PItem.Next;
    end;
    mdata_PItem.EnableControls;
    If (I_index<mdata_PItem.RecordCount) and (I_index<>-1) then
        mdata_PItem.RecNo :=I_index
    else
       mdata_PItem.Last;
  end;

  P_Move:=1;



end;

procedure TFrm_PackStock.TB_PackItemXLSClick(Sender: TObject);
var
  Query_Sp:TADOStoredProc;
  i,k,s,ReNum,ReNumLoop,R_Count,L:Integer;
  ExcelApp,MyWorkBook,mysheet,vLastSheet: Variant;
  filepath,savefilepath,Sqlstr,copystart,copyend,copystart1,aa:string;
  ListQry:Tadoquery;
  qry,qry1:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry1:=TAdoQuery.Create(self);
  qry1.ConnectionString:=mdlData.ReadConnStr;

  P_List_Pack:=mdata_PItem['FBranchItemNumber'];
  If (E_FPackNum1.Text='') or (E_FPackNum2.Text='') then
  begin
    Application.MessageBox(PChar('请选择打印箱件起始号！'), '错误', MB_OK +MB_ICONSTOP);
    Exit;
  end;
  P_Move:=0;

  try
    qry.SQL.Text:='select * from V_PackItem where FItemID=:FItemID and FPackNum>=:FPackNum1 and FPackNum<=:FPackNum2  order by FItemID,FPackNum ';
    qry.Parameters.FindParam('FItemID').value:=mdata_PItem['FItemID'];
    qry.Parameters.FindParam('FPackNum1').value:=Trim(E_FPackNum1.Text);
    qry.Parameters.FindParam('FPackNum2').value:=Trim(E_FPackNum2.Text);
   qry.Open;
  finally
     ;
  end;
  mdata_PItem.CopyFromDataSet(qry);
  mdata_PItem.Active:=True;

  filepath:=Extractfilepath(application.ExeName)+'箱件清单模版.xls';
  if (mdata_PItem.Active) and (mdata_PItem.recordcount>0) then
  Begin
    SaveDialog1.FileName:='箱件清单'+P_List_Pack;
    SaveDialog1.Filter:='.xls';
    SaveDialog1.Execute;

    if (mdata_PItem.FieldByName('FBranchItemNumber').AsString<>'') Or (mdata_PItem.FieldByName('FBranchItemNumber').AsString<>Null) then
        savefilepath:=SaveDialog1.FileName+'.xls';

    if FileExists(savefilepath) then
    begin
      DeleteFile(savefilepath) ;
    end;
    stbMsg.Caption:='提示信息：正在导出箱件清单:'+'【'+mdata_PItem.FieldByName('FBranchItemNumber').AsString+'】';
    stbBar.Refresh;

    ExcelApp:= CreateOleObject('Excel.Application' );
    ExcelApp.DisplayAlerts:=False;                  //不显示提示框
    MyWorkBook:=ExcelApp.WorkBooks.Open( filepath );   //打开模版
    //ExcelApp.Visible:=True;

    try
      qry.SQL.Text:='select distinct FBranchItemNumber  from V_PackItem where FFullNumber like :FFullNumber and FPackNum>=:FPackNum1 and FPackNum<=:FPackNum2 order by FBranchItemNumber ';
      qry.Parameters.FindParam('FFullNumber').value:=ListFNumber_Pack+'%';
      qry.Parameters.FindParam('FPackNum1').value:=Trim(E_FPackNum1.Text);
      qry.Parameters.FindParam('FPackNum2').value:=Trim(E_FPackNum2.Text);
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
       qry1.SQL.Text:='select * from V_PackItem where FFullNumber like :FFullNumber and FPackNum>=:FPackNum1 and FPackNum<=:FPackNum2 order by FBranchItemNumber,FPackNum ';
       qry1.Parameters.FindParam('FFullNumber').value:=ListFNumber_Pack+'%';
       qry1.Parameters.FindParam('FPackNum1').value:=Trim(E_FPackNum1.Text);
       qry1.Parameters.FindParam('FPackNum2').value:=Trim(E_FPackNum2.Text);
       qry1.Open;
     finally
       ;
     end;
     if qry1.RecordCount>0 then
     begin
       mdata_PItem.Close;
       mdata_PItem.CopyFromDataSet(qry1);
     end;
     vLastSheet:=MyWorkBook.Sheets[MyWorkBook.Sheets.Count];
     MyWorkBook.Sheets[1].Copy(EmptyParam,vLastSheet);
     MyWorkBook.WorkSheets[k].Name:=IntToStr(k)+mdata_PItem['FBranchItemNumber'];
     MyWorkBook.WorkSheets[k].Activate;

      //标题
    //  MyWorkBook.WorkSheets[k].Cells[2,1].Value:=AnsiReplaceStr(MyWorkBook.WorkSheets[k].Cells[2,1].Value,'A',UserFDepartmentName); //公司名称

      MyWorkBook.WorkSheets[k].Cells[3,3].Value := Trim(mdata_PItem.FieldByName('FBranchItemNumber').AsString); //图号
      MyWorkBook.WorkSheets[k].Cells[4,3].Value := Trim(mdata_PItem.FieldByName('FClientFullName').AsString); //项目名称
      MyWorkBook.WorkSheets[k].Cells[3,8].Value := Trim(mdata_PItem.FieldByName('FItemModel').AsString); //型号
      MyWorkBook.WorkSheets[k].Cells[4,8].Value := Trim(mdata_PItem.FieldByName('FItemQry').AsString); //设备数量


      //循环行开始
      i:=7;

       //工作薄名称
      MyWorkBook.WorkSheets[k].Name:=mdata_PItem.FieldByName('FBranchItemNumber').AsString;
      copystart:='A'+IntToStr(i);
      if mdata_PItem.recordcount>0 then
      Begin
        if mdata_PItem.recordcount>1 then
        Begin
          copystart:='A'+IntToStr(i);
          copystart1:='A'+IntToStr(i+1);
          copyend:='k'+IntToStr(i);  //右区域
          //ReNum:=Mdata_M2.recordcount-1+(25-((Mdata_M2.RecordCount+1) mod 25));
          //L:=Mdata_M2.recordcount-1+(25-((Mdata_M2.RecordCount+1) mod 25));
          If (mdata_PItem.recordcount mod 25)>0 then
          begin
             ReNum:=mdata_PItem.recordcount-1+(25-(mdata_PItem.RecordCount mod 25));
             L:=mdata_PItem.recordcount-1+(25-((mdata_PItem.RecordCount) mod 25));
         end
          else
          begin
            ReNum:=mdata_PItem.recordcount-1;
            L:=mdata_PItem.recordcount-1;
          end;


          while ReNum>0 do
          Begin
            ExcelApp.ActiveSheet.Range[copystart+':'+copyend].Copy;
            ExcelApp.ActiveSheet.Rows[i+1].Insert;
            ExcelApp.ActiveSheet.Range[copystart1].PasteSpecial;
            Renum:=Renum-1;
          end;
          //制单、审核栏
         { MyWorkBook.WorkSheets[k].Cells[i+L+1,3].Value:=Mdata2.FieldByName('FMakeAudit').AsString; //校对
          MyWorkBook.WorkSheets[k].Cells[i+L+1,9].Value:=Mdata2.FieldByName('FMakeSubmit').AsString; //制单
          }
        end
        else
        Begin
          R_Count:=mdata_PItem.recordcount;
        end;
        mdata_PItem.first;
        while not mdata_PItem.eof do
        Begin
          MyWorkBook.WorkSheets[k].Cells[i,1].Value := mdata_PItem.FieldByName('FPackNum').AsString; //箱件号
          MyWorkBook.WorkSheets[k].Cells[i,2].Value := ' '+mdata_PItem.FieldByName('FPackNumber').AsString; //箱件图号
          MyWorkBook.WorkSheets[k].Cells[i,4].Value := ' '+mdata_PItem.FieldByName('FPackName').AsString; //箱件名称
          MyWorkBook.WorkSheets[k].Cells[i,5].Value := mdata_PItem.FieldByName('FPackMode').AsString; //包装方式
          MyWorkBook.WorkSheets[k].Cells[i,6].Value := mdata_PItem.FieldByName('FGross').AsString; //毛重
          MyWorkBook.WorkSheets[k].Cells[i,7].Value := mdata_PItem.FieldByName('FNet').AsString; //净重
          MyWorkBook.WorkSheets[k].Cells[i,8].Value := mdata_PItem.FieldByName('FLength').AsString; //长
          MyWorkBook.WorkSheets[k].Cells[i,9].Value := mdata_PItem.FieldByName('FWidth').AsString; //宽
          MyWorkBook.WorkSheets[k].Cells[i,10].Value := mdata_PItem.FieldByName('FHigh').AsString; //高
          MyWorkBook.WorkSheets[k].Cells[i,11].Value := mdata_PItem.FieldByName('FV').AsString; //体积

         mdata_PItem.next;
          i:=i+1;
        End;
      end;
      qry.Next ;
      ExcelApp.Visible:=True;
      MyWorkBook.WorkSheets[k].PrintPreview;  //打印
      k:=k+1;
    end;
    MyWorkBook.WorkSheets[1].delete; //删除模版
    stbMsg.Caption:='提示信息：箱件清单:'+'【'+mdata_PItem.FieldByName('FBranchItemNumber').AsString+'】的信息导出完成!';
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

procedure TFrm_PackStock.Act_SetClose_Tree2Execute(Sender: TObject);
begin
  inherited;
  ToolBar_2.Visible:=False;
  TB_Edit_M2.Visible:=False;
  TB_Edit2.Visible:=False;
  TB_PackDraft.Visible:=False;
  TB_PackItem.Visible:=False;
  TB_PackList.Visible:=False;
  TB_PackItemFirst.Visible:=False;
  TB_PackItemXLS.Visible:=False;
  TB_PackListXLS.Visible:=False;
  TB_Pack_SG.Visible:=False;
  TB_Auto.Visible:=False;
  TB_PackDraftXls.Visible:=False;
  TB_Pack_SG.Visible:=False;
  TB_Out2.Visible:=False;
  L_FPackNum1.Visible:=False;
  L_FPackNum2.Visible:=False;
  L_FPackNo.Visible:=False;
  E_FPackNum1.Visible:=False;
  E_FPackNum2.Visible:=False;
  E_FPackNo.Visible:=False;

end;

procedure TFrm_PackStock.Act_SetOpen_Tree2Execute(Sender: TObject);
begin
  inherited;
  ToolBar_M2.Visible:=True;
  ToolBar_2.Visible:=True;
  TB_Edit_M2.Visible:=True;
  TB_Edit2.Visible:=True;
  TB_PackDraft.Visible:=True;
  TB_PackItemFirst.Visible:=True;
  TB_Auto.Visible:=True;
  TB_PackDraftXls.Visible:=True;
  TB_Pack_SG.Visible:=True;
  TB_PackItem.Visible:=True;
  TB_PackList.Visible:=True;
  TB_PackListXLS.Visible:=True;
  TB_PackItemXLS.Visible:=True;
  TB_Pack_SG.Visible:=True;
  TB_Out2.Visible:=True;
  L_FPackNum1.Visible:=True;
  L_FPackNum2.Visible:=True;
  L_FPackNo.Visible:=True;
  E_FPackNum1.Visible:=True;
  E_FPackNum2.Visible:=True;
  E_FPackNo.Visible:=True;

end;

procedure TFrm_PackStock.E_nPropertiesChange(Sender: TObject);
begin
  inherited;
  E_L.EditValue:=mdata['FSumQry']/E_n.EditValue;
end;

procedure TFrm_PackStock.Act_SetOpen_2Execute(Sender: TObject);
begin
  inherited;
  MyTreeView_Pack.Enabled:=False;
  ToolBar_M2.Enabled:=False;

  cxGV_PList.OptionsData.Editing:=True;

  TB_Edit2.Enabled:=False;
  OKBtn_2.Visible:=True;
  CancelBtn_2.Visible:=True;
  mcgg_2.Visible:=False;

  mc_2.Visible:=True;
  gg_2.Visible:=True;
  FPackClass_22.Options.Editing:=True;
  FPackNo_22.Options.Editing:=True;
  FPackLIstRemark_2.Options.Editing:=True;

end;

procedure TFrm_PackStock.Act_SetClose_2Execute(Sender: TObject);
begin
  inherited;
  TB_Edit2.Enabled:=True;
  OKBtn_2.Visible:=False;
  CancelBtn_2.Visible:=False;
  cxGV_PList.OptionsData.Editing:=False;
  ToolBar_M2.Enabled:=True;
  cxGV_PList.OptionsData.Editing:=True;
  MyTreeView_Pack.Enabled:=True;
  mcgg_2.Visible:=True;

  mc_2.Visible:=False;
  gg_2.Visible:=False;


end;

procedure TFrm_PackStock.Act_SetOpenExecute(Sender: TObject);
begin
  inherited;
  cxGV.OptionsData.Editing:=False;
  MyTreeView.Enabled:=False;


  //ToolBar4.Enabled:=False;
  TB_Edit.Enabled:=False;
  OKBtn.Visible:=True;
  CancelBtn.Visible:=True;
  cxGV.OptionsData.Editing:=True;

  IsSel.Visible:=True;
  IsSel.Options.Editing:=True;
  N_Cut.Visible:=False;
  mcgg.Visible:=False;

  mc.Visible:=True;
  gg.Visible:=True;
  FPackClass.Options.Editing:=True;
  FPackNo.Options.Editing:=True;
  FPackLIstRemark.Options.Editing:=True;
  CxGrid.PopupMenu:=PopupMenu;

end;

procedure TFrm_PackStock.Act_SetCloseExecute(Sender: TObject);
begin
  inherited;
  TB_Edit.Enabled:=True;
  OKBtn.Visible:=False;
  CancelBtn.Visible:=False;
  cxGV1.OptionsData.Editing:=False;
//  ToolBar4.Enabled:=True;
  cxGV.OptionsData.Editing:=True;
  MyTreeView.Enabled:=True;

  IsSel.Visible:=False;
  IsSel.Options.Editing:=False;
   CxGrid.PopupMenu:=PopupMenu1;

end;

procedure TFrm_PackStock.TB_AutoClick(Sender: TObject);
var
  proc:TADOStoredProc;
  P_Retinf:String;
  qry: TADOQuery;

begin
  proc:=TADOStoredProc.Create(self);
  proc.ConnectionString:=mdlData.ReadConnStr;
  proc.CommandTimeout:=500;
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If (E_FPackNum1.Text='') or (E_FPackNum2.Text='') then
  begin
    Application.MessageBox(PChar('请选择打印箱件起始号！'), '错误', MB_OK +MB_ICONSTOP);
    Exit;
  end;

  If ShowMsg('是否进行自动编箱号？','提示') then
  begin
    try
      proc.ProcedureName:='P_Pack_AutoNum;1';
      with proc.Parameters.AddParameter do
      begin
        DataType := ftInteger;
        Direction := pdinput;
        name := '@FItemID';
        value:=mdata_PItem['FItemID'];
      end;
      with proc.Parameters.AddParameter do
      begin
        DataType := ftInteger;
        Direction := pdinput;
        name := '@FPackNo';
        value:=E_FPackNo.Text;
      end;
      with proc.Parameters.AddParameter do
      begin
        DataType := ftString;
        Direction := pdinput;
        size:=20;
        name := '@FPackNum1';
        value:=E_FPackNum1.EditValue;
      end;
      with proc.Parameters.AddParameter do
      begin
        DataType := ftString;
        Direction := pdinput;
        size:=20;
        name := '@FPackNum2';
        value:=E_FPackNum2.EditValue;
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
      P_Retinf:=proc.Parameters.FindParam('@Retinf').Value;
      Messagedlg(P_Retinf,mtInformation,[mbok],0);
      If ListFNumber_Pack<>'' then
      begin
        If MyItemList(qry,mdata_PItem,'V_PackItem','FFullNumber',ListFNumber_Pack,'FFullNumber') then
      end;
  end;
  proc.Free;


end;

procedure TFrm_PackStock.FPackNumber_2PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var  qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  MData_PItem.Edit;
  MData_PItem.Post;
  try
    qry.SQL.Text:='select distinct FPackNumber,FPackMode,FLength,FWidth,FHigh,FSteel,FWood,FPlastic,FAsphalt,FColorbar from T_PackItem where FDepartmentID=:FDepartmentID and FPackNumber=:FPackNumber ';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Parameters.FindParam('FPackNumber').value:=MData_PItem['FPackNumber'];
    qry.Open;
  finally
   ;
  end;
  If qry.RecordCount=1 then
  begin
    MData_PItem.Edit;
    MData_PItem['FPackMode']:=qry.FieldByName('FPackMode').Value;
    MData_PItem['FLength']:=qry.FieldByName('FLength').Value;
    MData_PItem['FWidth']:=qry.FieldByName('FWidth').Value;
    MData_PItem['FHigh']:=qry.FieldByName('FHigh').Value;
    MData_PItem['FSteel']:=qry.FieldByName('FSteel').Value;
    MData_PItem['FWood']:=qry.FieldByName('FWood').Value;
    MData_PItem['FPlastic']:=qry.FieldByName('FPlastic').Value;
    MData_PItem['FAsphalt']:=qry.FieldByName('FAsphalt').Value;
    MData_PItem['FColorbar']:=qry.FieldByName('FColorbar').Value;
    MData_PItem.Post;
 end;


end;

procedure TFrm_PackStock.FPlacePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  mData_PItem.Edit;
  mData_PItem.Post;
  If mData_PItem['FPlace']=Null then
  begin
    mData_PItem.Edit;
    mData_PItem['FPlace']:='';
    mData_PItem.Post;
  end;
  try
    qry.SQL.Text:='select * from V_PackItem where FDepartmentID=:FDepartmentID ';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Open;
  finally
   ;
  end;

  selValue:=select('选择发货地点','FPlace','FPlace','FPlace','FPlace',qry);
  If (Length(selValue)>0) then
  begin
    mData_PItem.Edit;
    mData_PItem['FPlace']:=qry.FieldByName('FPlace').Value;
    mData_PItem.Post;
  end;

end;

end.


