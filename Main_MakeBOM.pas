unit Main_MakeBOM;

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
  TFlatPanelUnit,Comobj, cxLookAndFeelPainters, cxButtons, cxTimeEdit, jpeg,
  cxCheckComboBox, RzEdit, RzLabel, cxSpinEdit, RzRadGrp, cxImage, DBCtrls,
  RzStatus, ActnList, Menus;

type
  TFrm_MakeBOM = class(TFrm_GridBass)
    ImageList: TImageList;
    frReport: TfrReport;
    frDBDataSet: TfrDBDataSet;
    PC_Main: TRzPageControl;
    TS_WorkBOM: TRzTabSheet;
    PanelBkGnd: TPanel;
    Panel2: TPanel;
    MData_MBOM: TdxMemData;
    MData_MBOMth1: TStringField;
    MData_MBOMmc1: TStringField;
    MData_MBOMgg1: TStringField;
    MData_MBOMSelRemark_1: TStringField;
    MData_MBOMssth1: TStringField;
    MData_MBOMFK3Number_1: TStringField;
    MData_MBOMFName1: TStringField;
    MData_MBOMFModel1: TStringField;
    MData_MBOMunitName1: TStringField;
    MData_MBOMjs1: TStringField;
    MData_MBOMFSumQry1: TFloatField;
    MData_MBOMFQry1: TFloatField;
    MData_MBOMFSuttle1: TFloatField;
    MData_MBOMFNumber1: TStringField;
    MData_MBOMFParentNumber1: TStringField;
    MData_MBOMFFullNumber1: TStringField;
    DS_Mdata_MBOM: TDataSource;
    MData_MBOMNum: TStringField;
    MData_MBOMabc: TStringField;
    MData_MBOMFFStockInListRemark: TStringField;
    MData_MBOMFCode: TStringField;
    MData_MBOMFStockInListID: TIntegerField;
    MData_MBOMFInSumSuttle: TFloatField;
    MData_MBOMFInQry: TFloatField;
    MData_MBOMFInSumQry: TFloatField;
    TS_DesignBOM: TRzTabSheet;
    DS_Mdata_MList: TDataSource;
    MData_MList: TdxMemData;
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
    RzSizePanel2: TRzSizePanel;
    MyTreeView_DBOM: TTreeView;
    Panel6: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    ToolBar2: TToolBar;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    ToolBar3: TToolBar;
    TB_Edit_DBOM: TToolButton;
    TB_Save_DBOM: TToolButton;
    TB_Ref_DBOM: TToolButton;
    ToolButton15: TToolButton;
    ToolButton18: TToolButton;
    TB_MakeBOM: TToolButton;
    ToolBar1: TToolBar;
    TB_Ref_MBOM: TToolButton;
    MData_DBOM: TdxMemData;
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
    DS_Mdata_DBOM: TDataSource;
    MData_DBOMFItemListID: TIntegerField;
    RzSizePanel4: TRzSizePanel;
    MyTreeView_MBOM: TTreeView;
    TB_PartsSort: TToolButton;
    TB_Exit: TToolButton;
    ToolButton2: TToolButton;
    PC_DBOM: TRzPageControl;
    TS_DBOM: TRzTabSheet;
    SaveDialog1: TSaveDialog;
    TB_MakeItem: TToolButton;
    T_Process: TADOTable;
    DS_Process: TDataSource;
    cxGrid_DBOM: TcxGrid;
    cxGV_DBOM: TcxGridDBTableView;
    FCode_1: TcxGridDBColumn;
    th_1: TcxGridDBColumn;
    mc_1: TcxGridDBColumn;
    gg_1: TcxGridDBColumn;
    FPartsSort: TcxGridDBColumn;
    FWorkParts: TcxGridDBColumn;
    FManageParts: TcxGridDBColumn;
    FMakeParts: TcxGridDBColumn;
    FName_1: TcxGridDBColumn;
    FModel_1: TcxGridDBColumn;
    FQry_1: TcxGridDBColumn;
    FSuttle_1: TcxGridDBColumn;
    FSumQry_1: TcxGridDBColumn;
    FSumSuttle_1: TcxGridDBColumn;
    ssth_1: TcxGridDBColumn;
    y_FSuttle: TcxGridDBColumn;
    c_FSuttle: TcxGridDBColumn;
    FMaterialRate: TcxGridDBColumn;
    FNumber: TcxGridDBColumn;
    UnitName_1: TcxGridDBColumn;
    y_FNumber: TcxGridDBColumn;
    y_FModel: TcxGridDBColumn;
    FPriceQry: TcxGridDBColumn;
    FUse: TcxGridDBColumn;
    FRation: TcxGridDBColumn;
    y_FRation: TcxGridDBColumn;
    FFullNumber_1: TcxGridDBColumn;
    ssFullNumber_1: TcxGridDBColumn;
    Remark_1: TcxGridDBColumn;
    FFullName_1: TcxGridDBColumn;
    FItemNumber: TcxGridDBColumn;
    FPartsCode: TcxGridDBColumn;
    cxGL_DBOM: TcxGridLevel;
    TB_Del_MBOM: TToolButton;
    ToolButton5: TToolButton;
    actionList: TActionList;
    Act_PC_MakeList: TAction;
    Act_PC_MakeBOM: TAction;
    Act_PC_DBOM: TAction;
    Act_Status: TAction;
    ActProcessSort: TAction;
    ToolButton6: TToolButton;
    stbBar: TRzStatusBar;
    RzClockStatus1: TRzClockStatus;
    RzKeyStatus1: TRzKeyStatus;
    RzKeyStatus2: TRzKeyStatus;
    RzKeyStatus3: TRzKeyStatus;
    stbMsg: TRzFieldStatus;
    TS_MakeBOM: TRzTabSheet;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    ToolBar4: TToolBar;
    TB_Ref_MList: TToolButton;
    TB_Edit_MList: TToolButton;
    TB_Save_MList: TToolButton;
    TB_Del_MList: TToolButton;
    TB_MakeList: TToolButton;
    TB_MakeCut: TToolButton;
    ToolButton19: TToolButton;
    RzPanel1: TRzPanel;
    PC_MakeList: TPageControl;
    TS_MakeList: TTabSheet;
    RzSizePanel1: TRzSizePanel;
    PageControl3: TPageControl;
    TabSheet5: TTabSheet;
    RzSizePanel3: TRzSizePanel;
    MyTreeView_MList: TTreeView;
    cxGrid_MItem: TcxGrid;
    cxGV_MItem: TcxGridDBTableView;
    FPartsCode_M2: TcxGridDBColumn;
    FMakeParts_M2: TcxGridDBColumn;
    FPartsName_M2: TcxGridDBColumn;
    FMakeStatusNotes_M2: TcxGridDBColumn;
    FMakeStatus_M2: TcxGridDBColumn;
    FMakeItemDate_M2: TcxGridDBColumn;
    FMakeSubmit_M2: TcxGridDBColumn;
    FMakeWriteDate_M2: TcxGridDBColumn;
    FItemNumber_M2: TcxGridDBColumn;
    FBranchFileNo_M2: TcxGridDBColumn;
    FFileNo_M2: TcxGridDBColumn;
    FMakePartsCode_M2: TcxGridDBColumn;
    FClientFullName_M2: TcxGridDBColumn;
    FItemListID_M2: TcxGridDBColumn;
    FMakeAuditDate_M2: TcxGridDBColumn;
    FMakeItemID_M2: TcxGridDBColumn;
    FItemModel_M2: TcxGridDBColumn;
    FProductID_M2: TcxGridDBColumn;
    FMakeAudit_M2: TcxGridDBColumn;
    FColdWorkDate_M2: TcxGridDBColumn;
    cxGL_MItem: TcxGridLevel;
    cxGrid_MList: TcxGrid;
    cxGV_MList: TcxGridDBTableView;
    FCode_2: TcxGridDBColumn;
    th_2: TcxGridDBColumn;
    mc_2: TcxGridDBColumn;
    gg_2: TcxGridDBColumn;
    FName_2: TcxGridDBColumn;
    FModel_2: TcxGridDBColumn;
    FQry_2: TcxGridDBColumn;
    FSumQry_2: TcxGridDBColumn;
    FSuttle_2: TcxGridDBColumn;
    FSumSuttle_2: TcxGridDBColumn;
    long_2: TcxGridDBColumn;
    width_2: TcxGridDBColumn;
    model_2: TcxGridDBColumn;
    FProcess_MList: TcxGridDBColumn;
    ssth_2: TcxGridDBColumn;
    UnitName_2: TcxGridDBColumn;
    FFullNumber_2: TcxGridDBColumn;
    ssFullNumber_2: TcxGridDBColumn;
    FMakeListRemark_2: TcxGridDBColumn;
    js_2: TcxGridDBColumn;
    FPartsNumber_2: TcxGridDBColumn;
    FMakeParts_2: TcxGridDBColumn;
    cxGL_MList: TcxGridLevel;
    TS_Process: TRzTabSheet;
    FWorkShop_M2: TcxGridDBColumn;
    MData_MItem: TdxMemData;
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
    DS_Mdata_MItem: TDataSource;
    Panel10: TPanel;
    FAgentID_M2: TcxGridDBColumn;
    cxGrid3: TcxGrid;
    cxGV3: TcxGridDBTableView;
    th_3: TcxGridDBColumn;
    mc_3: TcxGridDBColumn;
    gg_3: TcxGridDBColumn;
    FName_3: TcxGridDBColumn;
    FModel_3: TcxGridDBColumn;
    FSuttle_3: TcxGridDBColumn;
    long_3: TcxGridDBColumn;
    width_3: TcxGridDBColumn;
    model_3: TcxGridDBColumn;
    FProcess_3: TcxGridDBColumn;
    cxGL3: TcxGridLevel;
    TB_Submit: TToolButton;
    TB_Audit: TToolButton;
    FMakeSubmitDate_M2: TcxGridDBColumn;
    TB_Cancel_MList: TToolButton;
    Panel11: TPanel;
    Label26: TLabel;
    E_FBranchFileNo: TcxButtonEdit;
    Act_Status_M: TAction;
    TS_DBOM_Sum: TRzTabSheet;
    cxGrid_DBOM_Sum: TcxGrid;
    cxGV_DBOM_Sum: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    FParts_1: TcxGridDBColumn;
    FNumber_1: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    FManageParts_1: TcxGridDBColumn;
    FWorkParts_1: TcxGridDBColumn;
    FPartsSort_1: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    y_FSuttle_1: TcxGridDBColumn;
    c_FSuttle_1: TcxGridDBColumn;
    FMaterialRate_1: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    y_FNumber_1: TcxGridDBColumn;
    y_FModel_1: TcxGridDBColumn;
    FPriceQry_1: TcxGridDBColumn;
    FUse_1: TcxGridDBColumn;
    FRation_1: TcxGridDBColumn;
    y_FRation_1: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridDBColumn15: TcxGridDBColumn;
    cxGridDBColumn16: TcxGridDBColumn;
    cxGL_DBOM_Sum: TcxGridLevel;
    MData_DBOM_Sum: TdxMemData;
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
    StringField46: TStringField;
    StringField47: TStringField;
    StringField48: TStringField;
    StringField49: TStringField;
    StringField50: TStringField;
    StringField51: TStringField;
    StringField69: TStringField;
    DS_Mdata_DBOM_Sum: TDataSource;
    FDesignRemark_2: TcxGridDBColumn;
    FDesignRemark_1: TcxGridDBColumn;
    Act_Parts: TAction;
    IsEdit_2: TcxGridDBColumn;
    IsEdit_M2: TcxGridDBColumn;
    TS_MakeList_Pick: TTabSheet;
    cxGrid_MList_Pick: TcxGrid;
    cxGV_MList_Pick: TcxGridDBTableView;
    FStockNumber_Pick: TcxGridDBColumn;
    FStockName_Pick: TcxGridDBColumn;
    FStockModel_Pick: TcxGridDBColumn;
    FSumPriceQry_Pick: TcxGridDBColumn;
    FBranchItemNumber_Pick: TcxGridDBColumn;
    FParts_Pick: TcxGridDBColumn;
    FStockUnitName_Pick: TcxGridDBColumn;
    FFileNo_Pick: TcxGridDBColumn;
    FClientShortName_Pick: TcxGridDBColumn;
    cxGL_MList_Pick: TcxGridLevel;
    Act_MakeList_Sum: TAction;
    MData_MList_Pick: TdxMemData;
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
    StringField80: TStringField;
    StringField81: TStringField;
    StringField82: TStringField;
    StringField83: TStringField;
    StringField84: TStringField;
    StringField85: TStringField;
    StringField86: TStringField;
    StringField87: TStringField;
    DS_Mdata_MList_Pick: TDataSource;
    Panel1: TPanel;
    Bevel1: TBevel;
    CB_Print: TcxCheckBox;
    CB_Parts: TcxComboBox;
    CB_Sum: TcxComboBox;
    TB_MakePick: TToolButton;
    PC_MakeBOM: TRzPageControl;
    TS_MakeBOM_MX: TRzTabSheet;
    TS_MakeBOM_Sum: TRzTabSheet;
    cxGrid_MBOM_Sum: TcxGrid;
    cxGV_MBOM_Sum: TcxGridDBTableView;
    FCode_Sum: TcxGridDBColumn;
    th_Sum: TcxGridDBColumn;
    mc_Sum: TcxGridDBColumn;
    gg_Sum: TcxGridDBColumn;
    FParts_Sum: TcxGridDBColumn;
    FNumber_Sum: TcxGridDBColumn;
    FName_Sum: TcxGridDBColumn;
    FModel_Sum: TcxGridDBColumn;
    FSumQry_Sum: TcxGridDBColumn;
    FSuttle_Sum: TcxGridDBColumn;
    ssth_Sum: TcxGridDBColumn;
    FQry_Sum: TcxGridDBColumn;
    FPartsSort_Sum: TcxGridDBColumn;
    FSumSuttle_Sum: TcxGridDBColumn;
    y_FSuttle_Sum: TcxGridDBColumn;
    c_FSuttle_Sum: TcxGridDBColumn;
    FMaterialRate_Sum: TcxGridDBColumn;
    UnitName_Sum: TcxGridDBColumn;
    y_FNumber_Sum: TcxGridDBColumn;
    y_FModel_Sum: TcxGridDBColumn;
    FPriceQry_Sum: TcxGridDBColumn;
    FUse_Sum: TcxGridDBColumn;
    FRation_Sum: TcxGridDBColumn;
    y_FRation_Sum: TcxGridDBColumn;
    FFullNumber_Sum: TcxGridDBColumn;
    ssFullNumber_Sum: TcxGridDBColumn;
    cxGL_MBOM_Sum: TcxGridLevel;
    cxGrid_MBOM: TcxGrid;
    cxGV_MBOM: TcxGridDBTableView;
    Num: TcxGridDBColumn;
    FCode: TcxGridDBColumn;
    th: TcxGridDBColumn;
    mc: TcxGridDBColumn;
    gg: TcxGridDBColumn;
    FName: TcxGridDBColumn;
    FModel: TcxGridDBColumn;
    FQry: TcxGridDBColumn;
    FSumQry: TcxGridDBColumn;
    FSuttle: TcxGridDBColumn;
    FSumSuttle: TcxGridDBColumn;
    model: TcxGridDBColumn;
    FProcess: TcxGridDBColumn;
    long: TcxGridDBColumn;
    width: TcxGridDBColumn;
    FProductID: TcxGridDBColumn;
    ssth: TcxGridDBColumn;
    UnitName: TcxGridDBColumn;
    FFullNumber: TcxGridDBColumn;
    ssFullNumber: TcxGridDBColumn;
    FDesignRemark: TcxGridDBColumn;
    js: TcxGridDBColumn;
    FMakeBOMID: TcxGridDBColumn;
    FPartsNumber: TcxGridDBColumn;
    FFullName: TcxGridDBColumn;
    cxGL_MBOM: TcxGridLevel;
    Panel12: TPanel;
    Bevel2: TBevel;
    cxCheckBox1: TcxCheckBox;
    CB_Parts_MBOM: TcxComboBox;
    CB_Switch_MBOM: TcxComboBox;
    Act_MakeBOM_Sum: TAction;
    DS_Mdata_MBOM_Sum: TDataSource;
    MData_MBOM_Sum: TdxMemData;
    StringField88: TStringField;
    StringField89: TStringField;
    StringField90: TStringField;
    StringField91: TStringField;
    StringField92: TStringField;
    StringField93: TStringField;
    StringField94: TStringField;
    StringField95: TStringField;
    StringField96: TStringField;
    StringField97: TStringField;
    StringField98: TStringField;
    StringField99: TStringField;
    StringField100: TStringField;
    StringField101: TStringField;
    StringField102: TStringField;
    StringField103: TStringField;
    StringField104: TStringField;
    StringField105: TStringField;
    Act_MakeBOM_Switch: TAction;
    CB_Type_MBOM: TcxComboBox;
    ToolButton3: TToolButton;
    TS_MakeList_Cut: TTabSheet;
    DS_Mdata_MList_Cut: TDataSource;
    MData_MList_Cut: TdxMemData;
    StringField106: TStringField;
    StringField107: TStringField;
    StringField108: TStringField;
    StringField109: TStringField;
    StringField110: TStringField;
    StringField111: TStringField;
    StringField112: TStringField;
    StringField113: TStringField;
    StringField114: TStringField;
    StringField115: TStringField;
    StringField116: TStringField;
    StringField117: TStringField;
    FloatField13: TFloatField;
    FloatField14: TFloatField;
    FloatField15: TFloatField;
    StringField118: TStringField;
    StringField119: TStringField;
    StringField120: TStringField;
    StringField121: TStringField;
    StringField122: TStringField;
    IntegerField3: TIntegerField;
    FloatField16: TFloatField;
    FloatField17: TFloatField;
    FloatField18: TFloatField;
    cxGrid_MList_Cut: TcxGrid;
    cxGV_MList_Cut: TcxGridDBTableView;
    FCode_Cut: TcxGridDBColumn;
    th_Cut: TcxGridDBColumn;
    mc_Cut: TcxGridDBColumn;
    gg_Cut: TcxGridDBColumn;
    FStockNumber_Cut: TcxGridDBColumn;
    FName_Cut: TcxGridDBColumn;
    FModel_Cut: TcxGridDBColumn;
    FStockUnitName_Cut: TcxGridDBColumn;
    FQry_Cut: TcxGridDBColumn;
    FSumQry_Cut: TcxGridDBColumn;
    FSuttle_Cut: TcxGridDBColumn;
    model_Cut: TcxGridDBColumn;
    FProcess_Cut: TcxGridDBColumn;
    FSumSuttle_Cut: TcxGridDBColumn;
    FMakeListRemark_Cut: TcxGridDBColumn;
    long_Cut: TcxGridDBColumn;
    width_Cut: TcxGridDBColumn;
    FDesignRemark_Cut: TcxGridDBColumn;
    js_Cut: TcxGridDBColumn;
    FPartsNumber_Cut: TcxGridDBColumn;
    FMakeParts_Cut: TcxGridDBColumn;
    cxGL_MList_Cut: TcxGridLevel;
    Act_PartsSort: TAction;
    Act_DBOM_Switch: TAction;
    FTeamName_M2: TcxGridDBColumn;
    FTeamID_M2: TcxGridDBColumn;
    PM: TPopupMenu;
    N_Set: TMenuItem;
    N_Edit: TMenuItem;
    N_Filter: TMenuItem;
    N_Sort: TMenuItem;
    N_Group: TMenuItem;
    N_Out: TMenuItem;
    Act_Menu: TAction;
    Act_Menu_Set: TAction;
    TB_Process: TToolButton;
    Act_Process_BOM: TAction;
    TS_Process_BOM: TRzTabSheet;
    DS_Process_BOM: TDataSource;
    Mdata_Process_BOM: TdxMemData;
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
    StringField134: TStringField;
    StringField135: TStringField;
    StringField136: TStringField;
    StringField137: TStringField;
    StringField138: TStringField;
    StringField139: TStringField;
    StringField140: TStringField;
    RzSizePanel5: TRzSizePanel;
    TreeView1: TTreeView;
    Panel13: TPanel;
    Panel14: TPanel;
    Panel15: TPanel;
    ToolBar5: TToolBar;
    TB_Ref_Process_BOM: TToolButton;
    ToolButton12: TToolButton;
    Panel16: TPanel;
    RzPageControl1: TRzPageControl;
    RzTabSheet1: TRzTabSheet;
    cxGrid_Process_BOM: TcxGrid;
    cxGV_Process_BOM: TcxGridDBTableView;
    cxGridDBColumn47: TcxGridDBColumn;
    cxGridDBColumn48: TcxGridDBColumn;
    FFullNumber_Procedd_BPM: TcxGridDBColumn;
    cxGridDBColumn55: TcxGridDBColumn;
    cxGridDBColumn56: TcxGridDBColumn;
    cxGL_Process_BOM: TcxGridLevel;
    FStuffType_Pick: TcxGridDBColumn;
    TB_MakePick_K3: TToolButton;
    FReportNum_Pick: TcxGridDBColumn;
    FAgentName_Pick: TcxGridDBColumn;
    TB_PushDown: TToolButton;
    Act_MakeList_K3: TAction;
    FIsImpK3_MItem: TcxGridDBColumn;
    FImpK3Date_MItem: TcxGridDBColumn;
    FImpK3BillNum_MItem: TcxGridDBColumn;
    FMakePushDown_MItem: TcxGridDBColumn;
    FMakePushDownDate_MItem: TcxGridDBColumn;
    LYL: TcxGridDBColumn;
    ToolButton1: TToolButton;
    Act_lyl: TAction;
    long_Pick: TcxGridDBColumn;
    FWorkPartsNum_1: TcxGridDBColumn;
    Act_MakeList: TAction;
    Act_MakeListOne: TAction;
    Act_MakeCut: TAction;
    Act_MakeCutOne: TAction;
    Action3: TAction;
    Action4: TAction;
    FManagePartsNum_1: TcxGridDBColumn;
    FNumber_MList: TcxGridDBColumn;
    FStockNumber_MList: TcxGridDBColumn;
    FStockName_MList: TcxGridDBColumn;
    FStockModel_MList: TcxGridDBColumn;
    FStockUnitName_MList: TcxGridDBColumn;
    ToolButton4: TToolButton;
    Act_ErSatz: TAction;
    FStockName_Cut: TcxGridDBColumn;
    LYL_Cut: TcxGridDBColumn;
    FStockModel_Cut: TcxGridDBColumn;
    FSize_2: TcxGridDBColumn;
    FMakeWrite_M2: TcxGridDBColumn;
    Label1: TLabel;
    E_FInputStartDate: TcxButtonEdit;
    ToolButton7: TToolButton;
    TB_Edit_gg: TToolButton;
    TB_Save_gg: TToolButton;
    Code: TcxGridDBColumn;
    cxGV_DBOMDBColumn1: TcxGridDBColumn;
    TS_K3: TRzTabSheet;
    ToolBar6: TToolBar;
    RB_Ref2: TToolButton;
    ToolButton14: TToolButton;
    ToolButton10: TToolButton;
    cxGrid_BOMK3: TcxGrid;
    cxGV_BOMK3: TcxGridDBTableView;
    FNumber2: TcxGridDBColumn;
    FName2: TcxGridDBColumn;
    FModel2: TcxGridDBColumn;
    UnitName2: TcxGridDBColumn;
    FSize: TcxGridDBColumn;
    FK3Suttle_1: TcxGridDBColumn;
    FK3Ration_2: TcxGridDBColumn;
    K3ISOut: TcxGridDBColumn;
    FItemId: TcxGridDBColumn;
    FK3ID: TcxGridDBColumn;
    FL_2: TcxGridDBColumn;
    FXS_2: TcxGridDBColumn;
    FCY_2: TcxGridDBColumn;
    Fk3_Join_BOMK3: TcxGridDBColumn;
    cxGL_BOMK3: TcxGridLevel;
    Panel17: TPanel;
    Bevel4: TBevel;
    Label11: TLabel;
    E_Locate2: TcxButtonEdit;
    ToolButton11: TToolButton;
    Mdata_BOMK3: TdxMemData;
    DS_Mdata_BOMK3: TDataSource;
    FNumber_Cut: TcxGridDBColumn;
    FESP3003_M2: TcxGridDBColumn;
    FESP3003ID_M2: TcxGridDBColumn;
    Panel18: TPanel;
    Label2: TLabel;
    E_Locate: TcxButtonEdit;
    RzSP_PTitem: TRzSizePanel;
    cxGrid_PTList: TcxGrid;
    cxGV_PTList: TcxGridDBTableView;
    FDesignChangeNum_PTList: TcxGridDBColumn;
    FDesignChangeDate_PTList: TcxGridDBColumn;
    FPartsNumber_PTList: TcxGridDBColumn;
    FPartsName_PTList: TcxGridDBColumn;
    FDesignChangeContent_PTList: TcxGridDBColumn;
    FDesignChangeCause_PTList: TcxGridDBColumn;
    FItemListID_PTList: TcxGridDBColumn;
    FDesignChangeListID_PTList: TcxGridDBColumn;
    cxGV_PTListDBColumn4: TcxGridDBColumn;
    cxGV_PTListDBColumn5: TcxGridDBColumn;
    cxGL_PTList: TcxGridLevel;
    MData_PTList: TdxMemData;
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
    StringField151: TStringField;
    FloatField37: TFloatField;
    FloatField38: TFloatField;
    FloatField39: TFloatField;
    StringField152: TStringField;
    StringField153: TStringField;
    StringField154: TStringField;
    StringField155: TStringField;
    StringField156: TStringField;
    StringField157: TStringField;
    IntegerField13: TIntegerField;
    FloatField40: TFloatField;
    FloatField41: TFloatField;
    FloatField42: TFloatField;
    DS_Mdata_PTList: TDataSource;
    FItemNoID: TcxGridDBColumn;
    procedure FormResize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Set_Open2;
    procedure Set_Close2;
    procedure MyTreeView_DBOMExpanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure MyTreeView_MBOMExpanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure MyTreeView_DBOMChange(Sender: TObject; Node: TTreeNode);
    procedure MyTreeView_MBOMChange(Sender: TObject; Node: TTreeNode);
    procedure TB_Ref_DBOMClick(Sender: TObject);
    procedure TB_Edit_DBOMClick(Sender: TObject);
    procedure TB_Save_DBOMClick(Sender: TObject);
    procedure TB_MakeBOMClick(Sender: TObject);
    procedure TB_Ref_MBOMClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TB_PartsSortClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure MData_DBOMAfterEdit(DataSet: TDataSet);
    procedure FProcessPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure SelPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure E_FBranchFileNo1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure TB_Del_MBOMClick(Sender: TObject);
    function DelRdMakeBOM:bool;
    function DelRdMakeItem:bool;
    procedure ToolButton5Click(Sender: TObject);
    procedure ActProcessSortExecute(Sender: TObject);
    procedure ToolButton6Click(Sender: TObject);
    procedure MyTreeView_MListExpanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure MyTreeView_MListChange(Sender: TObject; Node: TTreeNode);
    procedure TB_Ref_MListClick(Sender: TObject);
    procedure TB_MakeItemClick(Sender: TObject);
    procedure TB_Edit_MListClick(Sender: TObject);
    procedure TB_Save_MListClick(Sender: TObject);
    procedure TB_Del_MListClick(Sender: TObject);
    procedure TB_SubmitClick(Sender: TObject);
    procedure Act_StatusExecute(Sender: TObject);
    procedure TB_AuditClick(Sender: TObject);
    procedure MData_MItemAfterEdit(DataSet: TDataSet);
    procedure TB_Cancel_MListClick(Sender: TObject);
    procedure cxGV_MItemFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure Act_Status_MExecute(Sender: TObject);
    procedure FPartsSortPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure Act_PartsExecute(Sender: TObject);
    procedure MData_MBOMAfterEdit(DataSet: TDataSet);
    procedure MData_MListAfterEdit(DataSet: TDataSet);
    procedure Act_MakeList_SumExecute(Sender: TObject);
    procedure CB_PartsPropertiesChange(Sender: TObject);
    procedure TB_MakePickClick(Sender: TObject);
    procedure Act_MakeBOM_SumExecute(Sender: TObject);
    procedure CB_Parts_MBOMPropertiesChange(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure Act_MakeBOM_SwitchExecute(Sender: TObject);
    procedure CB_Type_MBOMPropertiesChange(Sender: TObject);
    procedure CB_Switch_MBOMPropertiesChange(Sender: TObject);
    procedure Act_PC_MakeListExecute(Sender: TObject);
    procedure PC_MakeListChange(Sender: TObject);
    procedure Act_PC_MakeBOMExecute(Sender: TObject);
    procedure PC_MakeBOMChange(Sender: TObject);
    procedure Act_PC_DBOMExecute(Sender: TObject);
    procedure PC_DBOMChange(Sender: TObject);
    procedure Act_PartsSortExecute(Sender: TObject);
    procedure Act_DBOM_SwitchExecute(Sender: TObject);
    procedure FProcess_2PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FTeamName_M2PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure Act_MenuExecute(Sender: TObject);
    procedure N_SetClick(Sender: TObject);
    procedure N_EditClick(Sender: TObject);
    procedure N_FilterClick(Sender: TObject);
    procedure N_SortClick(Sender: TObject);
    procedure N_GroupClick(Sender: TObject);
    procedure N_OutClick(Sender: TObject);
    procedure Act_Menu_SetExecute(Sender: TObject);
    procedure cxGrid_DBOMContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure cxGrid_DBOM_SumContextPopup(Sender: TObject;
      MousePos: TPoint; var Handled: Boolean);
    procedure cxGrid_MBOMContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure cxGrid_MBOM_SumContextPopup(Sender: TObject;
      MousePos: TPoint; var Handled: Boolean);
    procedure cxGrid_MListContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure cxGrid_MList_CutContextPopup(Sender: TObject;
      MousePos: TPoint; var Handled: Boolean);
    procedure cxGrid_MList_PickContextPopup(Sender: TObject;
      MousePos: TPoint; var Handled: Boolean);
    procedure cxGrid_MItemContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure TB_ProcessClick(Sender: TObject);
    procedure Act_Process_BOMExecute(Sender: TObject);
    procedure TB_Ref_Process_BOMClick(Sender: TObject);
    procedure TB_MakePick_K3Click(Sender: TObject);
    procedure Act_MakeList_K3Execute(Sender: TObject);
    procedure TB_PushDownClick(Sender: TObject);
    procedure Act_lylExecute(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure Act_MakeListExecute(Sender: TObject);
    procedure Act_MakeListOneExecute(Sender: TObject);
    procedure Act_MakeCutExecute(Sender: TObject);
    procedure Act_ErSatzExecute(Sender: TObject);
    procedure ToolButton7Click(Sender: TObject);
    procedure TB_Edit_ggClick(Sender: TObject);
    procedure TB_Save_ggClick(Sender: TObject);
    procedure RB_Ref2Click(Sender: TObject);
    procedure ToolButton11Click(Sender: TObject);
    procedure ToolButton14Click(Sender: TObject);
    procedure E_Locate2PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxGV_MListCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure FESP3003_M2PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure E_LocatePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);

  private
   { Private declarations }
    function DelRdWorkBOM:bool;



  public
    P_Sort,P_List,P_FItemNo:String;
    P_Type,P_Parts,P_FScenarioNum:String;
    P_i:boolean;
    GV,Gr,Gm,Mn:string;

   // P_FProductID,P_FProductID_BOM:integer;
   { Public declarations }
  end;

var
  Frm_MakeBOM: TFrm_MakeBOM;


implementation

uses FRMDATA,  COMMON, FrmSelect, ProgBar, PROGRASS;




{$R *.dfm}

function TFrm_MakeBOM.DelRdMakeBOM: bool;
var
 qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Delete from T_MakeBOM where FFullNumber like :FFullNumber';
    qry.Parameters.FindParam('FFullNumber').value:=ListFNumber_MBOM+'%';
    result:=qry.ExecSQL>=1;
  finally
    qry.Free;
  end;
end;

function TFrm_MakeBOM.DelRdMakeItem: bool;
var
 qry: TADOQuery;
begin
   qry:=TADOQuery.Create(Self);
   qry.ConnectionString:=mdlData.ReadConnStr;
   Mdata_MItem.DisableControls;
   Mdata_MItem.First;
    while not Mdata_MItem.EoF do
    begin
      try
        qry.SQL.Text:='delete from T_MakeItem where FMakeItemID=:FMakeItemID';
        qry.Parameters.FindParam('FMakeItemID').value:=Mdata_MItem['FMakeItemID'];
        result:=qry.ExecSQL>=1;
      finally
        ;
      end;
      Mdata_MItem.next;
    end;
    Mdata_MItem.EnableControls;
    qry.Free;
end;



procedure TFrm_MakeBOM.Set_Open2;
begin
  cxGV_MList.OptionsData.Editing:=True;
   P_i:=True;

end;

procedure TFrm_MakeBOM.Set_Close2;
begin

  TB_Ref_MList.Enabled:=True;



end;



function TFrm_MakeBOM.DelRdWorkBOM: bool;
var
 qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  try
    qry.SQL.Text:='Delete from T_WorkBOM where FFullNumber like :FFullNumber';
    qry.Parameters.FindParam('FFullNumber').value:=ListFNumber_MList+'%';
    result:=qry.ExecSQL>=1;
  finally
    qry.Free;
  end;
end;




procedure TFrm_MakeBOM.FormResize(Sender: TObject);
begin
  inherited;
  Self.Caption:=UserFDepartmentName+'BOM';
end;

procedure TFrm_MakeBOM.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=cafree;
  Frm_MakeBOM:=nil;
end;

procedure TFrm_MakeBOM.MyTreeView_DBOMExpanding(Sender: TObject;
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
               +'Isleaf from VT_DesignBOM_Right_Dep with(nolock) where FParentNumber= '''
               +PTree(Node.Data).ID+''' and FAgentID='+IntToStr(UserFDepartmentID)+' order by FNumber';
  qry.open;
  PTree(Node.Data).Flag := cLoadFlag;                  // 设置已加载标志
  while not qry.Eof do
  begin
    New(P);
    P.ID := qry.FieldByName('FNumber').AsString;
    P.ParentID := qry.FieldByName('FParentNumber').AsString;
    P.FNumber:=qry.FieldByName('FFullNumber').AsString;
    P.FParentNumber:=qry.FieldByName('FParentNumber').AsString;
    P.Caption := qry.FieldByName('FName').AsString;
   // P.FProductID := qry.FieldByName('FProductID').Value;
    P.Isleaf := qry.FieldByName('Isleaf').Value;
    P.Flag := cNoLoadFlag;                            // 新节点，未加载标志
    with MyTreeView_DBOM.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('Isleaf').value;
    end;
    qry.Next;
  end;


end;

procedure TFrm_MakeBOM.MyTreeView_MBOMExpanding(Sender: TObject;
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
  qry.SQL.Text:='Select * from VT_MakeBOM with(nolock) where FParentNumber= '''
               +PTree(Node.Data).ID+''' and FAgentID='+IntToStr(UserFDepartmentID)+' order by FBranchItemNumber,FFullNumber';
  qry.open;

  PTree(Node.Data).Flag := cLoadFlag;                  // 设置已加载标志
  while not qry.Eof do
  begin
    New(P);
    P.ID := qry.FieldByName('FNumber').AsString;
    P.ParentID := qry.FieldByName('FParentNumber').AsString;
    P.FNumber:=qry.FieldByName('FFullNumber').AsString;
    P.Caption := qry.FieldByName('FName').AsString;
    P.Isleaf := qry.FieldByName('Isleaf').Value;
    P.Flag := cNoLoadFlag;                            // 新节点，未加载标志
    with MyTreeView_MBOM.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('Isleaf').value;
    end;
    qry.Next;
  end;
end;

procedure TFrm_MakeBOM.MyTreeView_DBOMChange(Sender: TObject; Node: TTreeNode);
var
  qry:TADOquery;
  s1,s2:Ttime;
  a:string;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  If Node = nil then Exit;

  Mdata_DBOM.DisableControls;
  cxGV_DBOM.DataController.DataModeController.GridMode:=True;
  cxGV_DBOM.DataController.DataModeController.SmartRefresh:=True;

  with PTree(Node.Data)^ do
  begin
    ListFNumber_DBOM:=trim(PTree(Node.Data).FNumber);
    P_th_DBOM:=PTree(Node.Data).Caption;
    P_Isleaf_DBOM:=PTree(Node.Data).Isleaf;
    If P_Isleaf_DBOM>0 then
    begin
      ShowPrograss('正在提取数据'+P_th_DBOM+'定额数据，请稍候……',self);
      s1:=now();
      Act_PC_DBOM.Execute;
      s2:=now();
      a:=FormatDateTime('hh:mm:ss',s2-s1);
      Messagedlg('提示信息：提取设计定额完成！所用时间：【'+a+'】',mtInformation,[mbok],0);
    end;

  end;

  mdata_DBOM.EnableControls;
  cxGV_DBOM.DataController.DataModeController.GridMode:=False;
  cxGV_DBOM.DataController.DataModeController.SmartRefresh:=False;



end;

procedure TFrm_MakeBOM.MyTreeView_MBOMChange(Sender: TObject; Node: TTreeNode);
var
  qry:TADOquery;
  s1,s2:Ttime;
  a:string;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If Node = nil then Exit;
  with PTree(Node.Data)^ do
  begin
    ListFNumber_MBOM:=trim(PTree(Node.Data).FNumber);
    P_th1:=PTree(Node.Data).Caption;
    P_Isleaf_MBOM:=PTree(Node.Data).Isleaf ;
    MData_DBOM.DisableControls;
    cxGV_DBOM.DataController.DataModeController.GridMode:=True;
    cxGV_DBOM.DataController.DataModeController.SmartRefresh:=True;
     If PTree(Node.Data).Isleaf>0 then
    begin
      DS_Mdata_MBOM.DataSet:=Mdata_MBOM;
      ShowPrograss('正在提取生产BOM'+P_th1+'定额数据，请稍候……',self);
      s1:=now();
      If not MyItemListwhere(qry,Mdata_MBOM,'V_MakeBOM','FFullNumber',ListFNumber_MBOM,' and FAgentID='+IntToStr(UserFDepartmentID),'FFullNumber',) then
      begin
        //cxGvColumn(cxGv_WBOM,Mdata_WBOM);
        mdata_MBOM.First;
      end;
      s2:=now();
      a:=FormatDateTime('hh:mm:ss',s2-s1);
      Messagedlg('提示信息：提取生产BOM完成！所用时间：【'+a+'】',mtInformation,[mbok],0);
    end;

{    If P_Isleaf_MBOM>0 then
    begin
      cxGv_MBOM.DataController.DataSource:=DS_Mdata_MBOM;
      ShowPrograss('正在提取生产BOM数据'+P_th1+'定额数据，请稍候……',self);
      s1:=now();
      Act_PC_MakeBOM.Execute;
      s2:=now();
      a:=FormatDateTime('hh:mm:ss',s2-s1);
      Messagedlg('提示信息：提取生产BOM定额完成！所用时间：【'+a+'】',mtInformation,[mbok],0);
    end;
      }
      MData_DBOM.EnableControls;
      cxGV_DBOM.DataController.DataModeController.GridMode:=False;
      cxGV_DBOM.DataController.DataModeController.SmartRefresh:=False;
    end;
  end;

procedure TFrm_MakeBOM.PC_MakeBOMChange(Sender: TObject);
begin
  inherited;
  Act_PC_MakeBOM.Execute;
end;

procedure TFrm_MakeBOM.TB_Ref_DBOMClick(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If not TreeVeiwListWhere(qry,MyTreeView_DBOM,'VT_DesignBOM_Right_Dep',' and FAgentID='+IntToStr(UserFDepartmentID) ) then
     Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
end;

procedure TFrm_MakeBOM.TB_Edit_DBOMClick(Sender: TObject);
begin
  inherited;
  cxGV_DBOM.OptionsData.Editing:=True;
  FPartsSort.Options.Editing:=True;
  TB_Edit_DBOM.Enabled:=False;
end;

procedure TFrm_MakeBOM.TB_Save_DBOMClick(Sender: TObject);
var
  IsEdit:bool;
  qry: TADOQuery;
  I_index:integer;
begin
  I_index:=mData_MBOM.RecNo ;
  Mdata_DBOM.Edit;
  Mdata_DBOM.Post;
  If ShowMsg('是否对已修改部件类别进行批量更新？','提示') then
  begin
    with mdata_DBOM do
    begin
      mData_DBOM.DisableControls;
      First;
      qry:=TADOQuery.Create(Self);
      qry.ConnectionString:=mdlData.ReadConnStr;
      try
        qry.SQL.Text:='Update T_DesignBOM_Structure set FPartsSort=:FPartsSort where FFullNumber=:FFullNumber';
        while not mdata_DBOM.EoF do
        begin
          IsEdit:=mData_DBOM.FieldByName('IsEdit').AsBoolean;
          If IsEdit then
          begin
            qry.Parameters[0].Value:=mData_DBOM['FPartsSort'];
            qry.Parameters[1].Value:=mData_DBOM['FFullNumber'];
            qry.ExecSQL;
          end;
          next;
        end;
      finally
        ;
      end;
    end;
    mData_DBOM.EnableControls;
  end;

  If (I_index<mData_DBOM.RecordCount) and (I_index<>-1) then
     mData_DBOM.RecNo :=I_index
  else
     mData_DBOM.Last;
 

  TB_Save_DBOM.Visible:=False;
  TB_Edit_DBOM.Enabled:=True;


end;

procedure TFrm_MakeBOM.TB_MakeBOMClick(Sender: TObject);
var
  proc:TADOStoredProc;
  s1,s2:Ttime;
  a,p_FItemNo:string;
  P_Retinf:String;
  qry: TADOQuery;
begin
  proc:=TADOStoredProc.Create(self);
  proc.ConnectionString:=mdlData.ReadConnStr;
  proc.CommandTimeout:=500;

  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  try
    qry.SQL.Text:='select FItemNo from V_FileItem with(nolock) where FBranchFileNo=:FBranchFileNo ';
    qry.Parameters.FindParam('FBranchFileNo').value:=Trim(E_FBranchFileNo.Text);
    qry.Open;
  finally
    ;
  end;
  If qry.RecordCount>0 then
    p_FItemNo:=qry.fieldByname('FItemNo').Value
  else
    Exit;
 
  try                                 
    qry.SQL.Text:='select * from V_MakeBOM with(nolock) where FAgentID=:FAgentID and FFullNumber like :FFullNumber order by FFullNumber ';
    qry.Parameters.FindParam('FAgentID').value:=UserFDepartmentID;
    qry.Parameters.FindParam('FFullNumber').value:=p_FItemNo+'.'+mdata_DBOM['FPartsCode']+'%';
    qry.Open;
  finally
    ;
  end;
  If qry.RecordCount>0 then
  begin
    Messagedlg('生产BOM'+P_th_DBOM+'已经导入，请不要重复导入！',mtInformation,[mbok],0);
    Exit;
  end;

  If ShowMsg('是否将图号【'+P_th_DBOM+'】导入生产BOM？','提示') then
  begin
    s1:=now();
    try
      proc.ProcedureName:='P_Imp_MakeBOM;1';
      with proc.Parameters.AddParameter do
      begin
        DataType := ftString;
        Direction := pdinput;
        size:=20;
        name := '@FFullNumber';
        value:=ListFNumber_DBOM;
      end;

      with proc.Parameters.AddParameter do
      begin
        DataType := ftString;
        Direction := pdinput;
        size:=20;
        name := '@FBranchFileNo';
        value:=Trim(E_FBranchFileNo.Text);
      end;

      with proc.Parameters.AddParameter do
      begin
        DataType := ftInteger;
        Direction := pdinput;
        name := '@UserFAgentID';
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
      If  P_Retinf<>'' then
      begin
        s2:=now();
        a:=FormatDateTime('hh:mm:ss',s2-s1);
        Messagedlg('生产BOM已经成功生成！所用时间：【'+a+'】',mtInformation,[mbok],0);
        Messagedlg(P_Retinf,mtInformation,[mbok],0);
        mdata_DBOM.Close;
        mdata_DBOM.CopyFromDataSet(proc);
        Mdata_DBOM.Active:=True;
        cxGvColumn(cxGv_DBOM,mdata_DBOM);
        ActProcessSortExecute(Sender);
       // Self.TB_Ref_MBOM.Click;
        //PC_Main.ActivePage:=TS_WorkBOM;
        Exit;
      end
      else
      begin
        mdata_DBOM.Close;
        mdata_DBOM.CopyFromDataSet(proc);
        Mdata_DBOM.Active:=True;
        cxGvColumn(cxGv_DBOM,mdata_DBOM);
      end;
      finally
        ;
    end;
  end;

  proc.Free;


end;

procedure TFrm_MakeBOM.TB_Ref_MBOMClick(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If not TreeVeiwListWhere(qry,MyTreeView_MBOM,'VT_MakeBOM',' and FAgentID='+IntToStr(UserFDepartmentID) ) then
  begin
    Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;

end;

procedure TFrm_MakeBOM.FormShow(Sender: TObject);
begin
  inherited;
  TB_Ref_DBOM.Click;
  TB_Ref_MBOM.Click;
  TB_Ref_MList.Click;

end;

procedure TFrm_MakeBOM.TB_PartsSortClick(Sender: TObject);
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

  If mData_DBOM.RecordCount<=0 then
     Exit;
  I_index:=mdata_DBOM.RecNo ;
  s1:=now();

  If ShowMsg('是否对【'+P_th_DBOM+'】此图号进行部件类别自动划分?','提示') then
  begin
    try
      stbMsg.Caption:='提示信息：正在对【'+P_th_DBOM+'】设计BOM进行部件划分，请稍候……';
      stbBar.Refresh;

      Act_PartsSort.Execute;
      If not MyItemList(qry,Mdata_DBOM,'V_DesignBOM_Structure','FFullNumber',ListFNumber_DBOM,'FFullNumber') then
      begin
        mdata_DBOM.Open;
      end;
      S2:=now();
      b:=FormatDateTime('hh:mm:ss',s2-s1);
      Messagedlg(''+a+''+'设计BOM部件划分完毕！所用时间：【'+b+'】',mtInformation,[mbok],0);
    finally
       ;
    end;
  end;
  If (I_index<mdata_DBOM.RecordCount) and (I_index<>-1) then
     mdata_DBOM.RecNo :=I_index
  else
     mdata_DBOM.Last;

end;

procedure TFrm_MakeBOM.FormCreate(Sender: TObject);
begin
  inherited;
  //P_Sort:='材料汇总';
  P_Sort:='领料单';
  P_Parts:='FMakeParts';
  P_Type:='材料汇总';
  TB_PartsSort.Enabled:= mdlData.PermissionCheckRights(TFrm_MakeBOM.ClassName,'新增');
  TB_Edit_DBOM.Enabled:= mdlData.PermissionCheckRights(TFrm_MakeBOM.ClassName,'新增');
  TB_Process.Visible:=mdlData.PermissionCheckRights(TFrm_MakeBOM.ClassName,'新增');
  TB_Del_MBOM.Enabled:= mdlData.PermissionCheckRights(TFrm_MakeBOM.ClassName,'删除');
  TB_MakeItem.Enabled:= mdlData.PermissionCheckRights(TFrm_MakeBOM.ClassName,'新增');

  P_state:=2;
end;

procedure TFrm_MakeBOM.MData_DBOMAfterEdit(DataSet: TDataSet);
begin
  inherited;
  DataSet['IsEdit']:=True;
  TB_Save_DBOM.Visible:=True;
  TB_Save_gg.Visible:=True;

end;

procedure TFrm_MakeBOM.FProcessPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='select distinct FProcess from T_Public with(nolock) where FK3ID=:FK3ID order by FProcess ';
    qry.Parameters.FindParam('FK3ID').value:=UserFK3ID;
    qry.Open;
  finally
   ;
  end;

  selValue:=select('选择生产工艺','FProcess','FProcess','FProcess','FProcess',qry);
  If (Length(selValue)>0) then
  begin
    mdata_MList.Edit;
    mdata_MList['FProcess']:=qry.FieldByName('FProcess').Value;
    mdata_MList.Post;
  end;


end;

procedure TFrm_MakeBOM.SelPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='select * from T_ProcessPricture  with(nolock)';
    qry.Open;
  finally
   ;
  end;

  selValue:=select('选择生产工艺图片','FProcessPicture','FProcessPicture','FProcessPicture','FProcessPicture',qry);
  If (Length(selValue)>0) then
  begin
    mdata_MList.Edit;
    mdata_MList['FProcessID']:=qry.FieldByName('FProcessID').Value;
    mdata_MList['FProcessPicture']:=qry.FieldByName('FProcessPicture').Value;
    mdata_MList.Post;
  end;

end;

procedure TFrm_MakeBOM.E_FBranchFileNo1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='select * from VT_FileItem with(nolock) where FItemNumber=:FItemNumber order by FItemNumber ';
    qry.Parameters.FindParam('FItemNumber').value:=Trim(mdata_DBOM['FItemNumber']);
    qry.Open;
  finally
    ;
  end;
  selValue:=select('选择档案号','FNumber','FParentNumber','FNumber','FName',qry);
  If (Length(selValue)>0) then
  begin
    E_FBranchFileNo.Text:=qry.FieldByName('FBranchFileNo').Value;
  end;
  If (E_FBranchFileNo.Text<>'')  then
     TB_MakeBOM.Enabled:=True
  else
    TB_MakeBOM.Enabled:=False;


end;

procedure TFrm_MakeBOM.TB_Del_MBOMClick(Sender: TObject);
var
  qry:TADOQuery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If  ListFNumber_MBOM='' then
  begin
    Application.MessageBox(PChar('请选择明细！'), '错误', MB_OK +MB_ICONSTOP);
    Exit;
  end;

  If application.MessageBox(Pchar('警告：是否删除图号为：【'+P_th1+'】的生产BOM信息？'+chr(13)+chr(13)
                                 +'删除数据操作将不可恢复，确定要删除吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
  If application.MessageBox(Pchar('再次警告：是否删除图号为：【'+P_th1+'】的生产BOM信息？'+chr(13)+chr(13)
                                 +'删除数据操作将不可恢复，确定要删除吗？'),'再次警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then

  mdlData.conn.BeginTrans;
  begin
    //单据删除
    If not DelRdMakeBOM then
    begin
      application.MessageBox('删除单据失败！','系统提示',MB_ICONINFORMATION);
      mdlData.conn.RollbackTrans;
      Exit;
    end;
    mdlData.conn.CommitTrans;
  end;
 //  Self.TB_Ref_MBOM.Click;
  qry.Free;


end;

procedure TFrm_MakeBOM.ToolButton5Click(Sender: TObject);
var
  qry: TADOQuery;
  I_index:integer;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  stbMsg.Caption:='提示信息：正在更新【'+P_th_DBOM+'】设计定额数据，请稍候……';
  stbBar.Refresh;

  I_index:=mData_DBOM.RecNo ;

  Mdata_DBOM.DisableControls;
  cxGV_DBOM.DataController.DataModeController.GridMode:=True;
  cxGV_DBOM.DataController.DataModeController.SmartRefresh:=True;
  try
    qry.SQL.Text:='select ConVert(bit,0),* from V_DesignBOM_Structure with(nolock) where FFullNumber like :FFullNumber order by FFullNumber ';
    qry.Parameters.FindParam('FFullNumber').value:=ListFNumber_DBOM+'%';
    qry.Open;
  finally
    ;
  end;
  mdata_DBOM.CopyFromDataSet(qry);
  mdata_DBOM.Open;
  cxGvColumn(cxGv_DBOM,Mdata_DBOM);

  If (I_index<mData_DBOM.RecordCount) and (I_index<>-1) then
     mData_DBOM.RecNo :=I_index
  else
     mData_DBOM.Last;

  mdata_DBOM.EnableControls;
  cxGV_DBOM.DataController.DataModeController.GridMode:=False;
  cxGV_DBOM.DataController.DataModeController.SmartRefresh:=False;


end;

procedure TFrm_MakeBOM.ActProcessSortExecute(Sender: TObject);
var
  proc:TADOStoredProc;
begin
  proc:=TADOStoredProc.Create(self);
  proc.ConnectionString:=mdlData.ReadConnStr;
  proc.CommandTimeout:=500;
  try
    proc.ProcedureName:='[P_MakeBOM_PartsSort];1';
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=50;
      name := '@TableName';
      value:='T_MakeBOM';
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=50;
      name := '@ViewName';
      value:='V_MakeBOM';
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=50;
      name := '@FFullNumber';
      value:=ListFNumber_MBOM;
    end;
    proc.ExecProc;
  finally
     ;
  end;
  Proc.Free;


end;

procedure TFrm_MakeBOM.ToolButton6Click(Sender: TObject);
var
  qry:TADOquery;
  proc:TADOStoredProc;
  s1,s2:Ttime;
  a,b:string;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  proc:=TADOStoredProc.Create(self);
  proc.ConnectionString:=mdlData.ReadConnStr;
  proc.CommandTimeout:=500;

  s1:=now();

 If ShowMsg('是否对【'+P_th1+'】进行生产工艺自动划分?','提示') then
  begin
    try
      ShowPrograss('正在对'+P_th1+'生产作业表的生产工艺划分，请稍候……',self);
      ActProcessSortExecute(Sender);

      If not MyItemList(qry,Mdata_MBOM,'V_MakeBOM','FFullNumber',ListFNumber_MBOM,'FFullNumber') then
      begin
        mdata_MBOM.Open;
      end;
      S2:=now();
      b:=FormatDateTime('hh:mm:ss',s2-s1);
      Messagedlg(''+P_th1+''+'生产作业表的生产工艺划分完毕！所用时间：【'+b+'】',mtInformation,[mbok],0);
    finally
       ;
    end;
  end;
      

end;

procedure TFrm_MakeBOM.MyTreeView_MListExpanding(Sender: TObject;
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
  qry.SQL.Text:='Select * from VT_MakeList with(nolock) where FParentNumber= '''
               +PTree(Node.Data).ID+''' and FAgentID='+IntToStr(UserFDepartmentID)
               +' order by FBranchItemNumber';
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
    with MyTreeView_MList.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('Isleaf').value;
    end;
    qry.Next;
  end;


end;

procedure TFrm_MakeBOM.MyTreeView_MListChange(Sender: TObject; Node: TTreeNode);
var
  qry:TADOquery;
  s1,s2:Ttime;
  a:string;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If Node = nil then Exit;
  with PTree(Node.Data)^ do
  begin
    ListFNumber_MList:=trim(PTree(Node.Data).FNumber);
    P_th_MList:=PTree(Node.Data).Caption;
    P_Isleaf_MList:=PTree(Node.Data).Isleaf;
    P_List_MList:=PTree(Node.Data).Caption;

    Mdata_MList.DisableControls;
    cxGV_MList.DataController.DataModeController.GridMode:=True;
    cxGV_MList.DataController.DataModeController.SmartRefresh:=True;

    If P_Isleaf_MList>0 then
    begin
      ShowPrograss('正在提取《生产作业表》数据'+P_th1+'定额数据，请稍候……',self);
      s1:=now();
      Act_PC_MakeList.Execute;//页选
      s2:=now();
      a:=FormatDateTime('hh:mm:ss',s2-s1);
      Messagedlg('提示信息：提取《生产作业表》完成！所用时间：【'+a+'】',mtInformation,[mbok],0);
    end;

    mdata_MList.EnableControls;
    cxGV_MList.DataController.DataModeController.GridMode:=False;
    cxGV_MList.DataController.DataModeController.SmartRefresh:=False;
  end;
end;

procedure TFrm_MakeBOM.TB_Ref_MListClick(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='delete from T_MakeItem  where FMakeItemID in (select distinct FMakeItemID  from V_MakeItem with(nolock) where FItemNo is null)';
    qry.ExecSQL;
  finally
    ;
  end;

  If not TreeVeiwListWhere(qry,MyTreeView_MList,'VT_MakeList',' and FAgentID='+IntToStr(UserFDepartmentID) ) then
  begin
    Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;


end;

procedure TFrm_MakeBOM.TB_MakeItemClick(Sender: TObject);
var
  proc:TADOStoredProc;
  s1,s2:Ttime;
  a,b:string;
  P_Retinf:String;
  qry: TADOQuery;
begin
  proc:=TADOStoredProc.Create(self);
  proc.ConnectionString:=mdlData.ReadConnStr;
  proc.CommandTimeout:=500;
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='select * from V_MakeItem with(nolock) where FAgentID=:FAgentID and FMakePartsCode like :FMakePartsCode order by FMakePartsCode ';
    qry.Parameters.FindParam('FAgentID').value:=UserFDepartmentID;
    //qry.Parameters.FindParam('FMakePartsCode').value:=MData_MBOM['FItemNo']+Copy(ListFNumber_MBOM,length(MData_MBOM['FItemNo'])+1,length(ListFNumber_MBOM)-length(MData_MBOM['FItemNo']))+'%';
    qry.Parameters.FindParam('FMakePartsCode').value:=P_FItemNo+Copy(ListFNumber_MBOM,length(P_FItemNo)+1,length(ListFNumber_MBOM)-length(P_FItemNo))+'%';
    qry.Open;
  finally
    ;
  end;
  If qry.RecordCount>0 then
  begin
    Messagedlg('生产作业表'+P_th1+'已经导入，请不要重复导入！',mtInformation,[mbok],0);
    Exit;
  end;

   //生产工艺
  ActProcessSortExecute(Sender);

  If ShowMsg('是否将图号【'+P_th1+'】导入生产作业表？','提示') then
  begin
    s1:=now();
    try
      proc.ProcedureName:='P_MakeItem;1';
      with proc.Parameters.AddParameter do
      begin
        DataType := ftString;
        Direction := pdinput;
        size:=20;
        name := '@FFullNumber';
        value:=ListFNumber_MBOM;
      end;
      with proc.Parameters.AddParameter do
      begin
        DataType := ftInteger;
        Direction := pdinput;
        name := '@UserFAgentID';
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
      If  P_Retinf<>'' then
      begin
        s2:=now();
        a:=FormatDateTime('hh:mm:ss',s2-s1);
        Messagedlg('生产作业表已经成功生成！所用时间：【'+a+'】',mtInformation,[mbok],0);
        Messagedlg(P_Retinf,mtInformation,[mbok],0);
        mdata_MBOM.Close;
       // Self.TB_Ref_MList.Click;
       // PC_Main.ActivePage:=TS_MakeBOM;
        Exit;
      end
      else
      begin
        mdata_MBOM.Close;
        mdata_MBOM.CopyFromDataSet(proc);
        Mdata_MBOM.Active:=True;
        cxGvColumn(cxGv_MBOM,mdata_MBOM);
      end;
      finally
        ;
    end;
  end;
  proc.Free;




end;

procedure TFrm_MakeBOM.TB_Edit_MListClick(Sender: TObject);
begin
  inherited;
  P_state:=1;
  TB_Edit_MList.Enabled:=False;
  TB_Del_MList.Enabled:=False;
  TB_Ref_MList.Enabled:=False;
  TB_Submit.Enabled:=False;
  MyTreeView_MBOM.Enabled:=False;

  cxGV_MItem.OptionsData.Editing:=True;
  FTeamName_M2.Options.Editing:=True;
  FColdWorkDate_M2.Options.Editing:=True;
  FESP3003_M2.Options.Editing:=True;

  cxGV_MList.OptionsData.Editing:=True;
  TB_Save_MList.Visible:=True;
  TB_Cancel_MList.Visible:=True;
end;

procedure TFrm_MakeBOM.TB_Save_MListClick(Sender: TObject);
var
  IsEdit,IsEdit2:bool;
  qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  Mdata_MItem.Edit;
  Mdata_MItem.Post;
  Mdata_MList.Edit;


  Mdata_MList.Post;

  If ShowMsg('是否对保存修改数据？','提示') then
  begin
    //主表保存
    Mdata_MItem.DisableControls;
    Mdata_MItem.First;
    try
      qry.SQL.Text:='Update T_MakeItem set FTeamID=:FTeamID,FColdWorkDate=:FColdWorkDate,FESP3003ID=:FESP3003ID where FMakeItemID=:FMakeItemID';
    while not Mdata_MItem.EoF do
    begin
      IsEdit:=Mdata_MItem.FieldByName('IsEdit').AsBoolean;
      If IsEdit then
      begin
        qry.Parameters.FindParam('FTeamID').value:=Mdata_MItem['FTeamID'];
        qry.Parameters.FindParam('FColdWorkDate').value:=Mdata_MItem['FColdWorkDate'];
        qry.Parameters.FindParam('FESP3003ID').value:=Mdata_MItem['FESP3003ID'];
        qry.Parameters.FindParam('FMakeItemID').value:=Mdata_MItem['FMakeItemID'];
        qry.ExecSQL;
      end;
      Mdata_MItem.next;
    end;
    finally
      ;
    end;
    If Mdata_MItem['FESP3003ID']<>0 then
    begin
      try
        qry.SQL.Text:='Update T_MakeItem Set FESP3003ID=:FESP3003ID Where FAgentID=:FAgentID '
                     +' and FItemListID in (select FItemListID from T_FileItem where FItemListID=:FItemListID)';
        qry.Parameters.FindParam('FESP3003ID').value:=Mdata_MItem['FESP3003ID'];
        qry.Parameters.FindParam('FAgentID').value:=Mdata_MItem['FAgentID'];
        qry.Parameters.FindParam('FItemListID').value:=Mdata_MItem['FItemListID'];
        qry.ExecSQL;
      finally
        ;
      end;
    end;

    Mdata_MItem.EnableControls;
    //附表保存
    Mdata_MList.DisableControls;
    Mdata_MList.First;
    try
      qry.SQL.Text:='Update T_MakeList set th=:th,mc=:mc,gg=:gg,FQry=:FQry,FSumQry=:FSumQry,FSuttle=:FSuttle,FName=:FName,FModel=:FModel,Long=:Long,Width=:Width,'
                   +'Model=:Model,FProcess=:FProcess,FMakeListRemark=:FMakeListRemark '
                   +' where FMakeListID=:FMakeListID';
      while not Mdata_MList.EoF do
      begin
        IsEdit2:=Mdata_MList.FieldByName('IsEdit').AsBoolean;
        If IsEdit2 then
        begin
          qry.Parameters.FindParam('th').value:=Mdata_MList['th'];
          qry.Parameters.FindParam('mc').value:=Mdata_MList['mc'];
          qry.Parameters.FindParam('gg').value:=Mdata_MList['gg'];
          qry.Parameters.FindParam('FQry').value:=Mdata_MList['FQry'];
          qry.Parameters.FindParam('FSumQry').value:=Mdata_MList['FSumQry'];
          qry.Parameters.FindParam('FSuttle').value:=Mdata_MList['FSuttle'];
          qry.Parameters.FindParam('FName').value:=Mdata_MList['FName'];
          qry.Parameters.FindParam('FModel').value:=Mdata_MList['FModel'];
          qry.Parameters.FindParam('Long').value:=Mdata_MList['Long'];
          qry.Parameters.FindParam('Width').value:=Mdata_MList['Width'];
          qry.Parameters.FindParam('Model').value:=Mdata_MList['Model'];
          qry.Parameters.FindParam('FProcess').value:=Mdata_MList['FProcess'];
          qry.Parameters.FindParam('FMakeListRemark').value:=Mdata_MList['FMakeListRemark'];
          qry.Parameters.FindParam('FMakeListID').value:=Mdata_MList['FMakeListID'];
          qry.ExecSQL;
        end;
        Mdata_MList.next;
      end;
    finally
      ;
    end;
    Mdata_MList.EnableControls;
  end;

  cxGV_MItem.OptionsData.Editing:=False;
  cxGV_MList.OptionsData.Editing:=False;
  TB_Edit_MList.Enabled:=True;
  TB_Del_MList.Enabled:=True;
  TB_Ref_MList.Enabled:=True;
  MyTreeView_MBOM.Enabled:=True;
  TB_Save_MList.Visible:=False;

  TB_Edit_MList.Enabled:=True;
  TB_Submit.Enabled:=True;
 
   P_state:=2;

end;

procedure TFrm_MakeBOM.TB_Del_MListClick(Sender: TObject);
var
  qry:TADOQuery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If  ListFNumber_MList='' then
  begin
    Application.MessageBox(PChar('请选择明细！'), '错误', MB_OK +MB_ICONSTOP);
    Exit;
  end;

  If application.MessageBox(Pchar('警告：是否删除图号为：【'+P_th_MList+'】的生产作业表信息？'+chr(13)+chr(13)
                                 +'删除数据操作将不可恢复，确定要删除吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
  If application.MessageBox(Pchar('再次警告：是否删除图号为：【'+P_th_MList+'】的生产作业表信息？'+chr(13)+chr(13)
                                 +'删除数据操作将不可恢复，确定要删除吗？'),'再次警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then

  mdlData.conn.BeginTrans;
  begin
    //单据删除
    If not DelRdMakeItem then
    begin
      application.MessageBox('删除单据失败！','系统提示',MB_ICONINFORMATION);
      mdlData.conn.RollbackTrans;
      Exit;
    end;
    mdlData.conn.CommitTrans;
  end;
 // Self.TB_Ref_MList.Click;
  qry.Free;


end;

procedure TFrm_MakeBOM.TB_SubmitClick(Sender: TObject);
var
 qry,qryDate:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qryDate:=TAdoQuery.Create(self);
  qryDate.ConnectionString:=mdlData.ReadConnStr;
  P_state:=3;
  If (TB_Submit.Caption='提交') then
  begin
    If application.MessageBox(Pchar('警告：是否提交生产作业表为：【'+P_List_MList+'】的单据？'+chr(13)+chr(13)
                                   +'提交后的数据不允许修改和删除，确定要提交本单据吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      Mdata_MItem.First;
      while not Mdata_MItem.eof do
      begin
        try
          qry.SQL.Text:='Update T_MakeItem Set FMakeStatus=1,FMakeSubmitID=:FMakeSubmitID,FMakeSubmitDate=:FMakeSubmitDate  where FMakeItemID=:FMakeItemID';
          qry.Parameters.FindParam('FMakeSubmitID').value:= UserNumID;
          qry.Parameters.FindParam('FMakeSubmitDate').value:= S_SyStemDate(qryDate);
          qry.Parameters.FindParam('FMakeItemID').value:=Mdata_MItem['FMakeItemID'];
          qry.ExecSQL;
        finally
          ;
        end;
        Mdata_MItem.Edit;
        Mdata_MItem['FMakeStatus']:=1;
        Mdata_MItem['FMakeStatusNotes']:='提交';
        Mdata_MItem['FMakeSubmitDate']:=S_SyStemDate(qryDate);
        Mdata_MItem.Post;
        Mdata_MItem.Next;
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
    If application.MessageBox(Pchar('警告：是否反提交生产作业表为：【'+P_List_MList+'】的单据？'+chr(13)+chr(13)
                                   +'反提交后的数据不允许修改和删除，确定要反提交本单据吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      Mdata_MItem.First;
      while not Mdata_MItem.eof do
      begin
        try
          qry.SQL.Text:='Update T_MakeItem Set FMakeStatus=0,FMakeSubmitID=0,FMakeSubmitDate=:FMakeSubmitDate where FMakeItemID=:FMakeItemID';
          qry.Parameters.FindParam('FMakeSubmitDate').value:= Null;
          qry.Parameters.FindParam('FMakeItemID').value:= Mdata_MItem['FMakeItemID'];
          qry.ExecSQL;
        finally
          ;
        end;
        Mdata_MItem.Edit;
        Mdata_MItem['FMakeStatus']:=0;
        Mdata_MItem['FMakeStatusNotes']:='提交';
        Mdata_MItem['FMakeSubmitDate']:=Null;
        Mdata_MItem.Post;
        Mdata_MItem.Next;
      end;
      TB_Submit.Caption:='提交';
      Act_Status.Execute;  //权限设置
      application.MessageBox('反提交完毕！','系统提示',MB_ICONINFORMATION);
    end;
    P_state:=2;
    Exit;
  end;




  {
  P_List :='【'+mdata_M2['FMakePartsCode']+'】【'+mdata_M2['FMakeParts']+'】';
  If (TB_Submit.Caption='提交') then
  begin
    If application.MessageBox(Pchar('警告：是否提交生产作业表为：【'+P_List+'】的单据？'+chr(13)+chr(13)
                                   +'提交后的数据不允许修改和删除，确定要提交本单据吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      try
        qry.SQL.Text:='Update T_MakeItem Set FMakeStatus=1,FMakeSubmitID=:FMakeSubmitID,FMakeSubmitDate=:FMakeSubmitDate  where FMakeItemID=:FMakeItemID';
        qry.Parameters.FindParam('FMakeSubmitID').value:= UserNumID;
        qry.Parameters.FindParam('FMakeSubmitDate').value:= now();
        qry.Parameters.FindParam('FMakeItemID').value:=mdata_M2['FMakeItemID'];
        qry.ExecSQL;
      finally
         ;
      end;
      mdata_M2.Edit;
      mdata_M2['FMakeStatus']:=1;
      mdata_M2['FMakeStatusNotes']:='提交';
      mdata_M2['FMakeSubmitDate']:=now();
      mdata_M2.Post;
      TB_Submit.Caption:='反提交';
      Act_Status.Execute;  //权限设置
      application.MessageBox('提交完毕！','系统提示',MB_ICONINFORMATION);    end;
    Exit;
  end;
  If (TB_Submit.Caption='反提交')  then
  begin
    If application.MessageBox(Pchar('警告：是否反提交生产作业单为：【'+P_List+'】的单据？'+chr(13)+chr(13)
                                   +'反提交后的数据不允许修改和删除，确定要反提交本单据吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      try
        qry.SQL.Text:='Update T_MakeItem Set FMakeStatus=0,FMakeSubmitID=0,FMakeSubmitDate=:FMakeSubmitDate where FMakeItemID=:FMakeItemID';
        qry.Parameters.FindParam('FMakeSubmitDate').value:= '1900-01-01';
        qry.Parameters.FindParam('FMakeItemID').value:= mdata_M2['FMakeItemID'];
        qry.ExecSQL;
      finally
         ;
      end;
      mdata_M2.Edit;
      mdata_M2['FMakeStatus']:=0;
      mdata_M2['FMakeStatusNotes']:='提交';
      mdata_M2['FMakeSubmitDate']:='1900-01-01';
      mdata_M2.Post;
      TB_Submit.Caption:='提交';
      Act_Status.Execute;  //权限设置
      application.MessageBox('反提交完毕！','系统提示',MB_ICONINFORMATION);
    end;
    Exit;
  end;
//  Act_Ref_Date.Execute;
    }

end;

procedure TFrm_MakeBOM.Act_StatusExecute(Sender: TObject);
begin
  Case Mdata_MItem['FMakeStatus'] of
    0:       //填单
    begin
      TB_Del_MList.Visible:=mdlData.PermissionCheckRights(TFrm_MakeBOM.ClassName,'删除');
      TB_Edit_MList.Visible:=mdlData.PermissionCheckRights(TFrm_MakeBOM.ClassName,'修改');
      TB_Submit.Visible:=mdlData.PermissionCheckRights(TFrm_MakeBOM.ClassName,'提交');
      TB_Submit.Caption:='提交';
      TB_Audit.Visible:=False;
    end;
  end;
  Case Mdata_MItem['FMakeStatus'] of
    1:       //提交
    begin

      If Mdata_MItem['FMakeSubmitID']=UserNumID then  //提交者为本人
      begin
        TB_Submit.Visible:=mdlData.PermissionCheckRights(TFrm_MakeBOM.ClassName,'提交');
        TB_Submit.Caption:='反提交';
      end
      else
      begin
        TB_Submit.Visible:=False;
      end;
      TB_Audit.Caption:='审核';
      TB_Audit.Visible:=mdlData.PermissionCheckRights(TFrm_MakeBOM.ClassName,'审核');

      TB_Del_MList.Visible:=False;
      TB_Edit_MList.Visible:=False;
     end;
  end;
  Case Mdata_MItem['FMakeStatus'] of
    3:           //审核
    begin
      TB_Audit.Visible:=mdlData.PermissionCheckRights(TFrm_MakeBOM.ClassName,'审核');
      TB_Audit.Caption:='反审核';
      TB_Del_MList.Visible:=False;
      TB_Edit_MList.Visible:=False;
      TB_Submit.Visible:=False;
    end;
  end;



end;

procedure TFrm_MakeBOM.TB_AuditClick(Sender: TObject);
var
 qry,qryDate:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qryDate:=TAdoQuery.Create(self);
  qryDate.ConnectionString:=mdlData.ReadConnStr;
  P_state:=3;
  If (TB_Audit.Caption='审核') then
  begin
    If application.MessageBox(Pchar('系统提示：是否审核生产作业为：【'+P_List_MList+'】的单据？'+chr(13)+chr(13)
                                   +'审核后的数据不允许修改和删除，确定要审核本单据吗？'),'系统提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      Mdata_MItem.First;
      while not Mdata_MItem.eof do
      begin
        try
          qry.SQL.Text:='Update T_MakeItem Set FMakeStatus=3,FMakeAuditID=:FMakeAuditID,FMakeAuditDate=:FMakeAuditDate  where FMakeItemID=:FMakeItemID';
          qry.Parameters.FindParam('FMakeAuditID').value:= UserNumID;
          qry.Parameters.FindParam('FMakeAuditDate').value:= S_SyStemDate(qryDate);
          qry.Parameters.FindParam('FMakeItemID').value:=Mdata_MItem['FMakeItemID'];
          qry.ExecSQL;
        finally
          ;
        end;
        Mdata_MItem.Edit;
        Mdata_MItem['FMakeStatus']:=3;
        Mdata_MItem['FMakeStatusNotes']:='审核';
        Mdata_MItem['FMakeAuditDate']:=now();
        Mdata_MItem.Post;
        Mdata_MItem.Next;
      end;
      TB_Audit.Caption:='反审核';
      Act_Status.Execute;  //权限设置
      application.MessageBox('审核完毕！','系统提示',MB_ICONINFORMATION);
    end;
    P_state:=2;
    Exit;
  end;
  If (TB_Audit.Caption='反审核')  then
  begin
    If application.MessageBox(Pchar('系统提示：是否反审核生产作业为：【'+P_List_MList+'】的单据？'+chr(13)+chr(13)
                                   +'反审核后的数据不允许修改和删除，确定要反审核本单据吗？'),'系统提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      Mdata_MItem.First;
      while not Mdata_MItem.eof do
      begin
        try
          qry.SQL.Text:='Update T_MakeItem Set FMakeStatus=1,FMakeAuditID=0,FMakeAuditDate=:FMakeAuditDate where FMakeItemID=:FMakeItemID';
          qry.Parameters.FindParam('FMakeAuditDate').value:= Null;
          qry.Parameters.FindParam('FMakeItemID').value:= Mdata_MItem['FMakeItemID'];
          qry.ExecSQL;
        finally
          ;
        end;
        Mdata_MItem.Edit;
        Mdata_MItem['FMakeStatus']:=1;
        Mdata_MItem['FMakeStatusNotes']:='审核';
        Mdata_MItem['FMakeAuditDate']:=Null;
        Mdata_MItem.Post;
        Mdata_MItem.Next;
      end;
      TB_Audit.Caption:='审核';
      Act_Status.Execute;  //权限设置
      application.MessageBox('反审核完毕！','系统提示',MB_ICONINFORMATION);
    end;
    P_state:=2;
    Exit;
  end;





  {P_List :='【'+mdata_M2['FMakePartsCode']+'】【'+mdata_M2['FMakeParts']+'】';
  If (TB_Audit.Caption='审核') then
  begin
    If application.MessageBox(Pchar('警告：是否审核生产作业表为：【'+P_List+'】的单据？'+chr(13)+chr(13)
                                   +'审核后的数据不允许修改和删除，确定要审核本单据吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      try
        qry.SQL.Text:='Update T_MakeItem Set FMakeStatus=3,FMakeAuditID=:FMakeAuditID,FMakeAuditDate=:FMakeAuditDate  where FMakeItemID=:FMakeItemID';
        qry.Parameters.FindParam('FMakeAuditID').value:= UserNumID;
        qry.Parameters.FindParam('FMakeAuditDate').value:= now();
        qry.Parameters.FindParam('FMakeItemID').value:=mdata_M2['FMakeItemID'];
        qry.ExecSQL;
      finally
         ;
      end;
      mdata_M2.Edit;
      mdata_M2['FMakeStatus']:=3;
      mdata_M2['FMakeStatusNotes']:='审核';
      mdata_M2['FMakeAuditDate']:=now();
      mdata_M2.Post;
      TB_Audit.Caption:='反审核';
      Act_Status.Execute;  //权限设置
      application.MessageBox('审核完毕！','系统提示',MB_ICONINFORMATION);    end;
    Exit;
  end;
  If (TB_Audit.Caption='反审核')  then
  begin
    If application.MessageBox(Pchar('警告：是否反审核生产作业单为：【'+P_List+'】的单据？'+chr(13)+chr(13)
                                   +'反审核后的数据不允许修改和删除，确定要反审核本单据吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      try
        qry.SQL.Text:='Update T_MakeItem Set FMakeStatus=1,FMakeAuditID=0,FMakeAuditDate=:FMakeAuditDate where FMakeItemID=:FMakeItemID';
        qry.Parameters.FindParam('FMakeAuditDate').value:= '1900-01-01';
        qry.Parameters.FindParam('FMakeItemID').value:= mdata_M2['FMakeItemID'];
        qry.ExecSQL;
      finally
         ;
      end;
      mdata_M2.Edit;
      mdata_M2['FMakeStatus']:=1;
      mdata_M2['FMakeStatusNotes']:='审核';
      mdata_M2['FMakeAuditDate']:='1900-01-01';
      mdata_M2.Post;
      TB_Audit.Caption:='审核';
      Act_Status.Execute;  //权限设置
      application.MessageBox('反审核完毕！','系统提示',MB_ICONINFORMATION);
    end;
    Exit;
  end;
//  Act_Ref_Date.Execute;
   }

end;

procedure TFrm_MakeBOM.MData_MItemAfterEdit(DataSet: TDataSet);
begin
  inherited;
  DataSet['IsEdit']:=True;
  TB_Save_MList.Visible:=True;
end;

procedure TFrm_MakeBOM.TB_Cancel_MListClick(Sender: TObject);
begin
  inherited;
  TB_Edit_MList.Enabled:=True;
  TB_Del_MList.Enabled:=True;
  TB_Ref_MList.Enabled:=True;
  TB_Submit.Enabled:=True;
  MyTreeView_MBOM.Enabled:=True;

  cxGV_MItem.OptionsData.Editing:=False;
  FWorkShop_M2.Options.Editing:=False;
  FColdWorkDate_M2.Options.Editing:=False;
  cxGV_MList.OptionsData.Editing:=False;
  TB_Save_MList.Visible:=False;
  TB_Cancel_MList.Visible:=False;

end;

procedure TFrm_MakeBOM.cxGV_MItemFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
var qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  if P_state =2 then  //不在新增、修改状态
  begin
    If PC_MakeList.ActivePage=TS_MakeList then
    begin
      If (Mdata_MItem['FMakeItemID']<>0) and (Mdata_MItem['FMakeItemID']<>null) then
      begin
        If MyItemListID(qry,Mdata_MList,'V_MakeList',' FMakeItemID='+IntToStr(Mdata_MItem['FMakeItemID']),'FFullNumber',) then
        begin
          cxGvColumn(cxGv_MList,Mdata_MList);
        end;
        P_List:='('+Mdata_MItem['FMakePartsCode']+')('+Mdata_MItem['FMakeParts']+')';
        //Act_Status.Execute;  //权限设置
      end;
    end;
    If PC_MakeList.ActivePage=TS_MakeList_Cut then
    begin
      If (Mdata_MItem['FMakeItemID']<>0) and (Mdata_MItem['FMakeItemID']<>null) then
      begin
       If MyItemListFieldWhere(qry,Mdata_MList_Cut,' FCode,th,mc,gg,FNumber,FName,FModel,UnitName,FSize,FStockNumber,FStockName,FStockModel,FStockUnitName,lyl,FQry,FSuttle,FSumSuttle,Long,Width,Model,FProcess,FMakeListRemark,FMakeParts ','V_MakeList','FMakeListNumber',ListFNumber_MList,' and (FCode=''★★'' or  FName<>'''')  and FAgentID='+IntToStr(UserFDepartmentID)+' and FMakeItemID='+IntToStr(Mdata_MItem['FMakeItemID']),'FMakeParts,FNumber',) then
        begin
           cxGvColumn(cxGv_MList_Cut,Mdata_MList_Cut);
        end;
        P_List:='('+Mdata_MItem['FMakePartsCode']+')('+Mdata_MItem['FMakeParts']+')';
        //Act_Status.Execute;  //权限设置
      end;
    end;
  end;
  
end;

procedure TFrm_MakeBOM.Act_Status_MExecute(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Select distinct FMakeStatus from V_MakeItem with(nolock) where FAgentID=:FAgentID and FMakeListNumber like :FMakeListNumber';
    qry.Parameters.FindParam('FAgentID').value:= UserFDepartmentID;
    qry.Parameters.FindParam('FMakeListNumber').value:=ListFNumber_MList+'%';
    qry.Open;
  finally
    ;
  end;
  If qry.RecordCount=1 then
  begin
    If qry.FieldByName('FMakeStatus').Value=0 then
    begin
       TB_Edit_MList.Visible:=mdlData.PermissionCheckRights(TFrm_MakeBOM.ClassName,'修改');
       TB_Del_MList.Visible:=mdlData.PermissionCheckRights(TFrm_MakeBOM.ClassName,'删除');
       TB_Submit.Visible:=mdlData.PermissionCheckRights(TFrm_MakeBOM.ClassName,'提交');
       TB_Audit.Visible:=False;
       TB_PushDown.Visible:=False;
    end;
    If qry.FieldByName('FMakeStatus').Value=1 then
    begin
       TB_Del_MList.Visible:=False;
       TB_Edit_MList.Visible:=False;
       TB_Submit.Visible:=mdlData.PermissionCheckRights(TFrm_MakeBOM.ClassName,'提交');
       TB_Audit.Visible:=False;
       TB_PushDown.Visible:=False;
    end;
    If qry.FieldByName('FMakeStatus').Value=3 then
    begin
       TB_Del_MList.Visible:=False;
       TB_Edit_MList.Visible:=False;
       TB_Submit.Visible:=False;
       TB_Audit.Visible:=mdlData.PermissionCheckRights(TFrm_MakeBOM.ClassName,'审核');
       TB_PushDown.Visible:=mdlData.PermissionCheckRights(TFrm_MakeBOM.ClassName,'下推');
    end;
    If qry.FieldByName('FMakeStatus').Value=4 then
    begin
       TB_Del_MList.Visible:=False;
       TB_Edit_MList.Visible:=False;
       TB_Submit.Visible:=False;
       TB_Audit.Visible:=False;
       TB_PushDown.Visible:=False;
    end;
  end
  else
  begin
    TB_Del_MList.Visible:=False;
    TB_Edit_MList.Visible:=False;
    TB_Submit.Visible:=False;
    TB_Audit.Visible:=False;
  end;

end;

procedure TFrm_MakeBOM.FPartsSortPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='select distinct FPartsSort from T_PartsSort with(nolock) where FProductID=:FProductID and FPartsCode=:FPartsCode order by FPartsSort ';
    qry.Parameters.FindParam('FProductID').value:=mdata_DBOM['FProductID'];
    qry.Parameters.FindParam('FPartsCode').value:=mdata_DBOM['FPartsCode'];
    qry.Open;
  finally
   ;
  end;

  selValue:=select('选择部件类别','FPartsSort','FPartsSort','FPartsSort','FPartsSort',qry);
  If (Length(selValue)>0) then
  begin
    mdata_DBOM.Edit;
    mdata_DBOM['FPartsSort']:=qry.FieldByName('FPartsSort').Value;
    mdata_DBOM.Post;
  end;



end;

procedure TFrm_MakeBOM.Act_PartsExecute(Sender: TObject);
var
  proc:TADOStoredProc;
begin
  proc:=TADOStoredProc.Create(self);
  proc.ConnectionString:=mdlData.ReadConnStr;
  proc.CommandTimeout:=500;
 // P_Sort:='材料汇总';
  P_Sort:='领料单';

  P_Parts:='FMakeParts';      //生产类别
  ShowPrograss('正在按生产类别汇总'+P_th+'定额数据，请稍候……',self);
  try
    proc.ProcedureName:='P_DesignBOM_SUM;1';
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=50;
      name := '@FFullNumber';
      value:=ListFNumber_DBOM;
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
    mdata_DBOM_Sum.CopyFromDataSet(proc);
    cxGvColumn(cxGv_DBOM_Sum,Mdata_DBOM_Sum);
  finally
     ;
  end;
//  PC_2.ActivePage:=TS_Sort;
 // cxGrid4.SetFocus;
  Proc.Free;


end;

procedure TFrm_MakeBOM.MData_MBOMAfterEdit(DataSet: TDataSet);
begin
  inherited;
  DataSet['IsEdit']:=True;
//  TB_Save.Visible:=True;

end;

procedure TFrm_MakeBOM.MData_MListAfterEdit(DataSet: TDataSet);
begin
  inherited;
  DataSet['IsEdit']:=True;
end;

procedure TFrm_MakeBOM.Act_MakeList_SumExecute(Sender: TObject);
var
  proc:TADOStoredProc;
begin
  proc:=TADOStoredProc.Create(self);
  proc.ConnectionString:=mdlData.ReadConnStr;
  proc.CommandTimeout:=500;
  If ListFNumber_MList='' then
     Exit;
  ShowPrograss('正在按生产类别汇总'+P_th+'定额数据，请稍候……',self);
  try
    proc.ProcedureName:='P_MakeList_Sum;1';
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=255;
      name := '@FFullNumber';
      value:=ListFNumber_MList;
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftInteger;
      Direction := pdinput;
      size:=50;
      name := '@FAgentID';
      value:=UserFDepartmentID;
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
    mdata_MList_Pick.CopyFromDataSet(proc);
    cxGvColumn(cxGv_MList_Pick,Mdata_MList_Pick);
  finally
     ;
  end;
  Proc.Free;


end;

procedure TFrm_MakeBOM.CB_PartsPropertiesChange(Sender: TObject);
begin
  inherited;
  If CB_Parts.Text='项目' then
    P_Parts:='FItemNumber';
  If CB_Parts.Text='部件' then
    P_Parts:='FPartsNumber';
  If CB_Parts.Text='生产类别' then
    P_Parts:='FMakeParts';

end;

procedure TFrm_MakeBOM.TB_MakePickClick(Sender: TObject);
var
  i,k,s,ReNum,R_Count,L:Integer;
  ExcelApp,MyWorkBook,vLastSheet: Variant;
  filepath,savefilepath,copystart,copyend,copystart1,p1:string;
  qry,qry1:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry1:=TAdoQuery.Create(self);
  qry1.ConnectionString:=mdlData.ReadConnStr;

  filepath:=Extractfilepath(application.ExeName)+'生产领料表模版.xls';
  if (mdata_MList_Pick.Active) and (mdata_MList_Pick.recordcount>0) then
  Begin
    SaveDialog1.FileName:='生产领料表'+P_List_MList;
    SaveDialog1.Filter:='.xls';
    SaveDialog1.Execute;

    if (mdata_MList_Pick.FieldByName('FBranchItemNumber').AsString<>'') Or (mdata_MList_Pick.FieldByName('FBranchItemNumber').AsString<>Null) then
        savefilepath:=SaveDialog1.FileName+'.xls';

    if FileExists(savefilepath) then
    begin
      DeleteFile(savefilepath) ;
    end;
    stbMsg.Caption:='提示信息：正在导出生产领料表:'+'【'+P_List_MList+'】';
    stbBar.Refresh;

    ExcelApp:= CreateOleObject('Excel.Application' );
    ExcelApp.Visible:=False;  //工作表显示

    ExcelApp.DisplayAlerts:=False;                  //不显示提示框
    MyWorkBook:=ExcelApp.WorkBooks.Open( filepath );   //打开模版

    try
      qry.SQL.Text:='select distinct '+P_Parts+' as FParts from  V_MakeList where FAgentID=:FAgentID and FMakeListNumber like '''+ListFNumber_MList+'%''';
      qry.Parameters.FindParam('FAgentID').value:= UserFDepartmentID;
     // qry.Parameters.FindParam('FMakeListNumber').value:= ListFNumber_MList+'%';
      qry.Open;
    finally
      ;
    end;

    If qry.RecordCount>0 then
       k:=2
    else
       Exit;
   qry.First;
    p1:= qry.FieldByName('FParts').AsString;
   while not qry.eof do
   begin
     try
        qry1.SQL.Text:='select * from ('
               +'Select FMakeParts as FParts,FItemID,FStuffType,FNumber,FName,FModel,UnitName,sum(FSumPriceQry) as FSumPriceQry,sum(long) as long ,0 as ISleaf, '
               +'FFileNo,FBranchItemNumber,FClientShortName,FWorkShop,FTeamName from V_MakeList with(nolock) where FAgentID='+inttostr(UserFDepartmentID)
               +' and FName<>'''' and FMakeListNumber like '''+ListFNumber_MList
               +'%'' and FMakeParts='''+p1+'''  group by FMakeParts,FItemID,FStuffType,FNumber,FName,FModel,UnitName,FFileNo,FBranchItemNumber,FClientShortName,FWorkShop,FTeamName  '
               +'union '
               +'Select FMakeParts as FParts,0 as FItemID,'''' as FStuffType,''重量小计'' as FNumber,''【小计】'' as FName,'''' as FModel,'''' as UnitName,sum(FSumPriceQry) as FSumPriceQry,sum(long) as long ,1 as ISleaf, '
               +'FFileNo,FBranchItemNumber,FClientShortName,FWorkShop,FTeamName from V_MakeList with(nolock) where UnitName=''kg'' and FAgentID='+inttostr(UserFDepartmentID)+' and FName<>''''  and FMakeListNumber like '''+ListFNumber_MList+'%'' and FMakeParts='''+p1+''' group by FMakeParts,FFileNo,FBranchItemNumber,FClientShortName,FWorkShop,FTeamName '
               +') as a order by FParts,FNumber,ISleaf ';
       qry1.Open;
     finally
       ;
     end;
     if qry1.RecordCount>0 then
     begin
       mdata_MList_Pick.Close;
       mdata_MList_Pick.CopyFromDataSet(qry1);
     end
     else
       Exit;


     vLastSheet:=MyWorkBook.Sheets[MyWorkBook.Sheets.Count];
     MyWorkBook.Sheets[1].Copy(EmptyParam,vLastSheet);
     MyWorkBook.WorkSheets[k].Name:=IntToStr(k)+qry.FieldByName('FParts').AsString;

     MyWorkBook.WorkSheets[k].Cells[1,1].Value:=AnsiReplaceStr(MyWorkBook.WorkSheets[k].Cells[1,1].Value,'A',UserFDepartmentName); //公司名称

     MyWorkBook.WorkSheets[k].Cells[4,3].Value := Trim(mdata_MList_Pick.FieldByName('FFileNo').AsString); //档 案 号
     MyWorkBook.WorkSheets[k].Cells[4,8].Value := Trim(mdata_MList_Pick.FieldByName('FBranchItemNumber').AsString); //图 号
     MyWorkBook.WorkSheets[k].Cells[5,3].Value := Trim(mdata_MList_Pick.FieldByName('FClientshortName').AsString); //项目名称
     MyWorkBook.WorkSheets[k].Cells[6,3].Value :=qry.FieldByName('FParts').AsString; //部件
     MyWorkBook.WorkSheets[k].Cells[6,8].Value := Trim(mdata_MList_Pick.FieldByName('FWorkShop').AsString)+'  '+Trim(mdata_MList_Pick.FieldByName('FTeamName').AsString); //车间

      //循环行开始
      i:=8;

       //工作薄名称
      MyWorkBook.WorkSheets[k].Name:=qry.FieldByName('FParts').AsString;
      copystart:='A'+IntToStr(i);
      if mdata_MList_Pick.recordcount>0 then
      Begin
        if mdata_MList_Pick.recordcount>1 then
        Begin
          copystart:='A'+IntToStr(i);
          copystart1:='A'+IntToStr(i+1);
          copyend:='I'+IntToStr(i);  //区域
          ReNum:=mdata_MList_Pick.recordcount-1+(25-((mdata_MList_Pick.RecordCount+1) mod 25));;
          L:=mdata_MList_Pick.recordcount-1+(25-((mdata_MList_Pick.RecordCount+1) mod 25));;
          while ReNum>0 do
          Begin
            ExcelApp.ActiveSheet.Range[copystart+':'+copyend].Copy;
            ExcelApp.ActiveSheet.Rows[i+1].Insert;
            ExcelApp.ActiveSheet.Range[copystart1].PasteSpecial;
            Renum:=Renum-1;
          end;
          //制单、审核栏
          //MyWorkBook.WorkSheets[k].Cells[i+L+1,3].Value:=mdata5.FieldByName('FMakeAudit').AsString; //校对
          //MyWorkBook.WorkSheets[k].Cells[i+L+1,9].Value:=mdata5.FieldByName('FMakeSubmit').AsString; //制单
        end
        else
        Begin
          R_Count:=mdata_MList_Pick.recordcount;
        end;
        mdata_MList_Pick.first;
        s:=1;
        while not mdata_MList_Pick.eof do
        Begin
          MyWorkBook.WorkSheets[k].Cells[i,1].Value := s;
          MyWorkBook.WorkSheets[k].Cells[i,2].Value := mdata_MList_Pick.FieldByName('FNumber').AsString;
          MyWorkBook.WorkSheets[k].Cells[i,4].Value := mdata_MList_Pick.FieldByName('FName').AsString;
          MyWorkBook.WorkSheets[k].Cells[i,5].Value := mdata_MList_Pick.FieldByName('FModel').AsString;
          MyWorkBook.WorkSheets[k].Cells[i,6].Value := mdata_MList_Pick.FieldByName('UnitName').AsString;
          MyWorkBook.WorkSheets[k].Cells[i,7].Value := mdata_MList_Pick.FieldByName('FSumPriceQry').AsString;
          If (mdata_MList_Pick['FStuffType']='型材') or (mdata_MList_Pick['FStuffType']='管材') then
             MyWorkBook.WorkSheets[k].Cells[i,8].Value := 'L='+mdata_MList_Pick.FieldByName('long').AsString;
          mdata_MList_Pick.next;
          s:=s+1;
          i:=i+1;
        End;
      end;
      qry.Next ;
      ExcelApp.Visible:=False;
      //MyWorkBook.WorkSheets[k].PrintPreview;  //打印
      k:=k+1;
    end;
    MyWorkBook.WorkSheets[1].delete; //删除模版
    stbMsg.Caption:='提示信息：生产领料表:'+'【'+P_List+'】的信息导出完成!';
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

procedure TFrm_MakeBOM.Act_MakeBOM_SumExecute(Sender: TObject);
var
  proc:TADOStoredProc;
begin
  proc:=TADOStoredProc.Create(self);
  proc.ConnectionString:=mdlData.ReadConnStr;
  proc.CommandTimeout:=500;
  If ListFNumber_MBOM='' then
     Exit;
  try
    proc.ProcedureName:='P_MakeBOM_SUM;1';
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
      Direction := pdinput;
      size:=50;
      name := '@FFullNumber';
      value:=ListFNumber_MBOM;
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=50;
      name := '@FPartsSort';         //汇总部件
      value:=P_Parts;
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=50;
      name := '@Sort';
      value:=P_Sort;           //汇总类别
    end;
    proc.Open;
    MData_MBOM_Sum.CopyFromDataSet(proc);
    cxGvColumn(cxGv_MBOM_Sum,MData_MBOM_Sum);
  finally
     ;
  end;
  proc.Free;

end;

procedure TFrm_MakeBOM.CB_Parts_MBOMPropertiesChange(Sender: TObject);
begin
  inherited;
  If CB_Parts_MBOM.Text='项目' then
    P_Parts:='FItemNumber';
  If CB_Parts_MBOM.Text='部件' then
    P_Parts:='FPartsNumber';
  If CB_Parts_MBOM.Text='生产类别' then
    P_Parts:='FMakeParts';
  If (P_Isleaf_DBOM>0) and (PC_MakeBOM.ActivePage=TS_MakeBOM_Sum) then
     Act_MakeBOM_Switch.Execute;

end;

procedure TFrm_MakeBOM.ToolButton3Click(Sender: TObject);
var
  i,k,s,ReNum,R_Count:Integer;
  ExcelApp,MyWorkBook,vLastSheet: Variant;
  filepath,savefilepath,copystart,copyend,copystart1:string;
  qry,qry1:TADOquery;
begin
  inherited;
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry1:=TAdoQuery.Create(self);
  qry1.ConnectionString:=mdlData.ReadConnStr;


    If (P_Isleaf_MBOM>0) and (PC_MakeBOM.ActivePage=TS_MakeBOM_Sum) then
    begin
      P_Type:='材料汇总';
      stbMsg.Caption:='提示信息：明细清单按:【'+P_th1+'】【'+CB_Switch_MBOM.Text+'】材料代用方案!';
      stbBar.Refresh;
      Act_MakeBOM_Switch.Execute;
    end;

  If mdata_MBOM_Sum.RecordCount=0 then
     Exit;



  filepath:=Extractfilepath(application.ExeName)+'生产采购表模版.xls';
  if (mdata_MBOM_Sum.Active) and (mdata_MBOM_Sum.recordcount>0) then
  Begin
    SaveDialog1.FileName:='生产采购表'+mdata_MBOM_Sum['FItemNumber'];
    SaveDialog1.Filter:='.xls';
    SaveDialog1.Execute;

    if (mdata_MBOM_Sum.FieldByName('FItemNumber').AsString<>'') Or (mdata_MBOM_Sum.FieldByName('FItemNumber').AsString<>Null) then
        savefilepath:=SaveDialog1.FileName+'.xls';

    if FileExists(savefilepath) then
    begin
      DeleteFile(savefilepath) ;
    end;
    stbMsg.Caption:='提示信息：正在导出生产采购表:'+'【'+P_th1+'】';
    stbBar.Refresh;

    ExcelApp:= CreateOleObject('Excel.Application' );
    ExcelApp.DisplayAlerts:=False;                  //不显示提示框
    MyWorkBook:=ExcelApp.WorkBooks.Open( filepath );   //打开模版
    //ExcelApp.Visible:=True;
    k:=2;
    vLastSheet:=MyWorkBook.Sheets[MyWorkBook.Sheets.Count];
    MyWorkBook.Sheets[1].Copy(EmptyParam,vLastSheet);
    MyWorkBook.WorkSheets[k].Name:=IntToStr(k)+mdata_MBOM_Sum['FItemNumber'];
    MyWorkBook.WorkSheets[k].Activate;

      //标题
    MyWorkBook.WorkSheets[k].Cells[1,1].Value:=AnsiReplaceStr(MyWorkBook.WorkSheets[k].Cells[1,1].Value,'A',UserFDepartmentName); //公司名称

    //MyWorkBook.WorkSheets[k].Cells[4,3].Value := Trim(mdata_MBOM_Sum.FieldByName('FFileNo').AsString); //档 案 号
    MyWorkBook.WorkSheets[k].Cells[4,7].Value := Trim(mdata_MBOM_Sum.FieldByName('FItemNumber').AsString); //图 号
    MyWorkBook.WorkSheets[k].Cells[5,3].Value := Trim(mdata_MBOM_Sum.FieldByName('FClientFullName').AsString); //项目名称
    MyWorkBook.WorkSheets[k].Cells[6,3].Value := P_th1;

      //循环行开始
    i:=8;

       //工作薄名称
    MyWorkBook.WorkSheets[k].Name:=mdata_MBOM_Sum.FieldByName('FItemNumber').AsString;
    copystart:='A'+IntToStr(i);
    if mdata_MBOM_Sum.recordcount>0 then
    Begin
      if mdata_MBOM_Sum.recordcount>1 then
      Begin
        copystart:='A'+IntToStr(i);
        copystart1:='A'+IntToStr(i+1);
        copyend:='G'+IntToStr(i);  //区域
        ReNum:=mdata_MBOM_Sum.recordcount-1;
       { L:=mdata1.recordcount-1+(30-((mdata1.RecordCount+1) mod 30));}
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
        R_Count:=mdata_MBOM_Sum.recordcount;
      end;
      mdata_MBOM_Sum.first;
      s:=1;
      while not mdata_MBOM_Sum.eof do
      Begin
        MyWorkBook.WorkSheets[k].Cells[i,1].Value := s;
        MyWorkBook.WorkSheets[k].Cells[i,2].Value := mdata_MBOM_Sum.FieldByName('FNumber').AsString;
        MyWorkBook.WorkSheets[k].Cells[i,4].Value := mdata_MBOM_Sum.FieldByName('FName').AsString;
        MyWorkBook.WorkSheets[k].Cells[i,5].Value := mdata_MBOM_Sum.FieldByName('FModel').AsString;
        MyWorkBook.WorkSheets[k].Cells[i,6].Value := mdata_MBOM_Sum.FieldByName('FSuttle').AsString;
        mdata_MBOM_Sum.next;
        s:=s+1;
        i:=i+1;
      End;
      ExcelApp.Visible:=True;
      MyWorkBook.WorkSheets[k].PrintPreview;  //打印
      k:=k+1;
    end;
    MyWorkBook.WorkSheets[1].delete; //删除模版
    stbMsg.Caption:='提示信息：生产采购表:'+'【'+P_th1+'】的信息导出完成!';
    stbBar.Refresh;
    MyWorkBook.saveas(savefilepath);
    MyWorkBook.Close;
    ExcelApp.Quit;
    ExcelApp:=Unassigned;
  end;



end;

procedure TFrm_MakeBOM.Act_MakeBOM_SwitchExecute(Sender: TObject);
var
  proc:TADOStoredProc;
begin
  proc:=TADOStoredProc.Create(self);
  proc.ConnectionString:=mdlData.ReadConnStr;
  proc.CommandTimeout:=500;

  If ListFNumber_MBOM='' then
     Exit;

  try
    proc.ProcedureName:='P_BOM_Switch;1';
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=50;
      name := '@FFullNumber';
      value:=ListFNumber_MBOM;
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
      Direction := pdinput;
      size:=50;
      name := '@TableName';
      value:='V_MakeBOM';
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=50;
      name := '@FScenarioNum';
      value:=P_Type;
      //value:=CB_Switch_MBOM.Text;
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=50;
      name := '@type';
      value:=CB_Type_MBOM.Text;
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
    MData_MBOM_Sum.CopyFromDataSet(proc);
    cxGvColumn(cxGv_MBOM_Sum,MData_MBOM_Sum);
    MData_MBOM_Sum.First;
  finally
     ;
  end;
  Proc.Free;

end;

procedure TFrm_MakeBOM.CB_Type_MBOMPropertiesChange(Sender: TObject);
begin
  inherited;
  If (P_Isleaf_MBOM>0) and (PC_MakeBOM.ActivePage=TS_MakeBOM_Sum) then
     Act_MakeBOM_Switch.Execute;

end;

procedure TFrm_MakeBOM.CB_Switch_MBOMPropertiesChange(Sender: TObject);
begin
  inherited;
  If (P_Isleaf_MBOM>0) and (PC_MakeBOM.ActivePage=TS_MakeBOM_Sum) then
     Act_MakeBOM_Switch.Execute;

end;

procedure TFrm_MakeBOM.Act_PC_MakeListExecute(Sender: TObject);
var
  qry:TADOquery;
  s1,s2:Ttime;
  a:string;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  //stbMsg.Caption:='提示信息：正在提取【'+P_th_MList+'】数据，请稍候……';
  //stbBar.Refresh;
  If P_Isleaf_MList>0 then  //显示主表
  begin
    //  If MyItemListwhere(qry,MData_MItem,'V_MakeItem','FMakePartsCode',ListFNumber_MList,' and FAgentID='+IntToStr(UserFDepartmentID),'FMakePartsCode') then
    If MyItemListwhere(qry,MData_MItem,'V_MakeItem','FMakeListNumber',ListFNumber_MList,' and FAgentID='+IntToStr(UserFDepartmentID),'FMakeListNumber') then
    begin
      cxGvColumn(cxGv_MItem,Mdata_MItem);
    end;
  end
  else
  begin
    Mdata_MItem.Close;
    Mdata_MList.Close;
    Mdata_MList_Cut.Close;
    Mdata_MList_Pick.Close;
  end;

 // s1:=now();

  Case P_Isleaf_MList of
    1:
    begin
      P_List :='('+Mdata_MItem['FBranchItemNumber']+')('+Mdata_MItem['FClientshortName']+')';
      If PC_MakeList.ActivePage=TS_MakeList then
      begin
        Act_Status_M.Execute;  //权限设置多行
        TB_Edit_MList.Visible:=False;
        TB_Del_MList.Visible:=True;
        TB_MakeList.Visible:=False;
        TB_MakeCut.Visible:=False;
        TB_MakePick.Visible:=False;
        TB_MakePick_K3.Visible:=False;
      end;
      If PC_MakeList.ActivePage=TS_MakeList_Cut then
      begin
        If MyItemListFieldWhere(qry,Mdata_MList_Cut,' FCode,th,mc,gg,FNumber,FName,FModel,UnitName,FSize,FStockNumber,FStockName,FStockModel,FStockUnitName,lyl,FQry,FSumQry,FSuttle,Long,Width,Model,FProcess,FMakeListRemark,FMakeParts ','V_MakeList','FMakeListNumber',ListFNumber_MList,' and (FCode=''★★'' or  FName<>'''')  and FAgentID='+IntToStr(UserFDepartmentID),'FMakeParts,FNumber,FStockNumber',) then
        begin
          cxGvColumn(cxGv_MList_Cut,Mdata_MList_Cut);
        end
        else
          Mdata_MList_Cut.Close;
        TB_Edit_MList.Visible:=False;
        TB_Del_MList.Visible:=False;
        TB_MakeList.Visible:=False;
        TB_MakeCut.Visible:=False;
        TB_MakePick.Visible:=False;
        TB_MakePick_K3.Visible:=False;
      end;
      If PC_MakeList.ActivePage=TS_MakeList_Pick then
      begin
        Act_MakeList_Sum.Execute;
        TB_Edit_MList.Visible:=False;
        TB_Del_MList.Visible:=False;
        TB_MakeList.Visible:=False;
        TB_MakeCut.Visible:=False;
        TB_MakePick.Visible:=False;
        TB_MakePick_K3.Visible:=False;
      end;
    end;
  end;
  Case P_Isleaf_MList of
    2:
    begin
      P_List :='('+Mdata_MItem['FPartsCode']+')('+Mdata_MItem['FPartsName']+')';
      If PC_MakeList.ActivePage=TS_MakeList then
      begin
        Act_Status_M.Execute;  //权限设置多行
        TB_Edit_MList.Visible:=False;
        TB_Del_MList.Visible:=True;
        TB_MakeList.Visible:=mdlData.PermissionCheckRights(TFrm_MakeBOM.ClassName,'打印');
        TB_MakeCut.Visible:=False;
        TB_MakePick.Visible:=False;
        TB_MakePick_K3.Visible:=False;
      end;
      If PC_MakeList.ActivePage=TS_MakeList_Cut then
      begin
        If MyItemListFieldWhere(qry,Mdata_MList_Cut,' FCode,th,mc,gg,FNumber,FName,FModel,UnitName,FSize,FStockNumber,FStockName,FStockModel,FStockUnitName,lyl,FQry,FSumQry,FSuttle,FSumSuttle,Long,Width,Model,FProcess,FMakeListRemark,FMakeParts ','V_MakeList','FMakeListNumber',ListFNumber_MList,' and (FCode=''★★'' or  FName<>'''')  and FAgentID='+IntToStr(UserFDepartmentID),'FMakeParts,FNumber,FStockNumber',) then
        begin
          cxGvColumn(cxGv_MList_Cut,Mdata_MList_Cut);
        end
        else
          Mdata_MList_Cut.Close;
        TB_Edit_MList.Visible:=False;
        TB_Del_MList.Visible:=False;
        TB_MakeList.Visible:=False;
        TB_MakeCut.Visible:=mdlData.PermissionCheckRights(TFrm_MakeBOM.ClassName,'打印');
        TB_MakePick.Visible:=False;
        TB_MakePick_K3.Visible:=False;
     end;
      If PC_MakeList.ActivePage=TS_MakeList_Pick then
      begin
        Act_MakeList_Sum.Execute;
        TB_Edit_MList.Visible:=False;
        TB_Del_MList.Visible:=False;
        TB_MakeList.Visible:=False;
        TB_MakeCut.Visible:=False;
        TB_MakePick.Visible:=mdlData.PermissionCheckRights(TFrm_MakeBOM.ClassName,'打印');
        TB_MakePick_K3.Visible:=mdlData.PermissionCheckRights(TFrm_MakeBOM.ClassName,'打印');
      end;
    end;
  end;
  Case P_Isleaf_MList of
    3:
    begin
      P_List:='('+Mdata_MItem['FMakePartsCode']+')('+Mdata_MItem['FMakeParts']+')';
      If PC_MakeList.ActivePage=TS_MakeList then
      begin
        Act_Status.Execute;  //权限设置
        TB_MakeList.Visible:=mdlData.PermissionCheckRights(TFrm_MakeBOM.ClassName,'打印');
        TB_MakeCut.Visible:=True;
        TB_MakePick.Visible:=False;
        TB_MakePick_K3.Visible:=False;
      end;
      If PC_MakeList.ActivePage=TS_MakeList_Cut then
      begin
        If MyItemListFieldWhere(qry,Mdata_MList_Cut,' FCode,th,mc,gg,FNumber,FName,FModel,UnitName,FStockNumber,FStockName,FStockModel,FStockUnitName,lyl,FSize,FQry,FSumQry,FSuttle,FSumSuttle,Long,Width,Model,FProcess,FMakeListRemark,FMakeParts ','V_MakeList','FMakeListNumber',ListFNumber_MList,' and (FCode=''★★'' or  FName<>'''')  and FAgentID='+IntToStr(UserFDepartmentID),'FMakeParts,FNumber,FStockNumber',) then
        begin
          cxGvColumn(cxGv_MList_Cut,Mdata_MList_Cut);
        end
        else
          Mdata_MList_Cut.Close;
        TB_MakeList.Visible:=False;
        TB_MakeCut.Visible:=mdlData.PermissionCheckRights(TFrm_MakeBOM.ClassName,'打印');
        TB_MakePick.Visible:=False;
        TB_MakePick_K3.Visible:=False;
      end;
      If PC_MakeList.ActivePage=TS_MakeList_Pick then
      begin
        Act_MakeList_Sum.Execute;
        TB_MakeList.Visible:=False;
        TB_MakeCut.Visible:=False;
        TB_MakePick.Visible:=mdlData.PermissionCheckRights(TFrm_MakeBOM.ClassName,'打印');
        TB_MakePick_K3.Visible:=mdlData.PermissionCheckRights(TFrm_MakeBOM.ClassName,'打印');
      end;
    end;
  end;
  //s2:=now();
  //a:=FormatDateTime('hh:mm:ss',s2-s1);
  //stbMsg.Caption:='提示信息：数据提取完成！所用时间：'+'【'+a+'】';
  //stbBar.Refresh;
end;

procedure TFrm_MakeBOM.PC_MakeListChange(Sender: TObject);
begin
  inherited;
  Act_PC_MakeList.Execute;//页选
end;

procedure TFrm_MakeBOM.Act_PC_MakeBOMExecute(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If (P_Isleaf_MBOM>0) and (PC_MakeBOM.ActivePage=TS_MakeBOM_Sum) then
  begin
    P_Type:='明细清单';
    stbMsg.Caption:='提示信息：明细清单按:【'+P_th1+'】【'+CB_Switch_MBOM.Text+'】材料代用方案!';
    stbBar.Refresh;
    Act_MakeBOM_Switch.Execute;
  end;

  If PC_MakeBOM.ActivePage=TS_MakeBOM_Mx then
  begin
    Case P_Isleaf_MBOM of
      0:
      begin
        TB_Del_MBOM.Enabled:=False;
      end;
      1:
      begin
        If MyItemListFieldWhere(qry,Mdata_MBOM,' FCode,th,mc,gg,FQry,FSuttle,FSumSuttle,FFullNumber ','V_MakeBOM','FFullNumber',ListFNumber_MBOM,' and FAgentID='+IntToStr(UserFDepartmentID)+' and js<=2 ','FFullNumber') then
        begin
          //cxGvColumn(cxGv_MBOM,Mdata_MBOM);
          mdata_MBOM.First;
          cxGrid_MBOM.SetFocus;
        end;
        TB_Del_MBOM.Enabled:= False;
        TB_MakeItem.Enabled:=False;
      end;
      2:
      begin
        If MyItemListFieldWhere(qry,Mdata_MBOM,' FCode,th,mc,gg,FQry,FSuttle,FSumSuttle,FFullNumber ','V_MakeBOM','FFullNumber',ListFNumber_MBOM,' and FAgentID='+IntToStr(UserFDepartmentID)+' and js<=3 ','FFullNumber') then
        begin
          //cxGvColumn(cxGv_MBOM,Mdata_MBOM);
          mdata_MBOM.First;
        end;
       TB_Del_MBOM.Enabled:= mdlData.PermissionCheckRights(TFrm_MakeBOM.ClassName,'删除');
       TB_MakeItem.Enabled:= mdlData.PermissionCheckRights(TFrm_MakeBOM.ClassName,'新增');
      end;
      3:
      begin
        If MyItemListFieldWhere(qry,Mdata_MBOM,' * ','V_MakeBOM','FFullNumber',ListFNumber_MBOM,' and FAgentID='+IntToStr(UserFDepartmentID)+'  ','FFullNumber') then
        begin
          //cxGvColumn(cxGv_MBOM,Mdata_MBOM);
          mdata_MBOM.First;
        end;
        TB_Del_MBOM.Enabled:= mdlData.PermissionCheckRights(TFrm_MakeBOM.ClassName,'删除');
        TB_MakeItem.Enabled:= mdlData.PermissionCheckRights(TFrm_MakeBOM.ClassName,'新增');
      end;
    end;
  end;
end;

procedure TFrm_MakeBOM.Act_PC_DBOMExecute(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If PC_DBOM.ActivePage=TS_DBOM_Sum then
     Act_DBOM_Switch.Execute;
  If PC_DBOM.ActivePage=TS_DBOM then
  begin
   stbMsg.Caption:='提示信息：正在提取数据【'+P_th_DBOM+'】设计定额数据，请稍候……';
   stbBar.Refresh;
   Case P_Isleaf_DBOM of
      1:
      begin
        If MyItemListFieldWhere(qry,Mdata_DBOM,' FCode,th,mc,gg,FQry,FSuttle,FSumSuttle,FItemNoID,FFullNumber ','V_DesignBOM_Structure','FFullNumber',ListFNumber_DBOM,' and js<=2 ','FFullNumber') then
        begin
          //cxGvColumn(cxGv_DBOM,Mdata_DBOM);
          mdata_DBOM.Last;
          If (Mdata_DBOM['FItemNoID']<>0) and (Mdata_DBOM['FItemNoID']<>Null) then
          begin
            If MyItemListID(qry,Mdata_PTList,'V_DesignChangeList','FItemID='+IntToStr(Mdata_DBOM['FItemNoID'] ),'FpartsCode',) then
            If Mdata_PTList.RecordCount>0 then
               RzSP_PTitem.Visible:=True
            else
               RzSP_PTitem.Visible:=False;
          end;
          cxGrid_DBOM.SetFocus;
        end;
      end;
    end;
    Case P_Isleaf_DBOM of
      2:
      begin
        If MyItemList(qry,Mdata_DBOM,'V_DesignBOM_Structure','FFullNumber',ListFNumber_DBOM,'FFullNumber') then
        //If MyItemListFieldWhere(qry,Mdata_DBOM,' *  ','V_DesignBOM_Structure','FFullNumber',ListFNumber_DBOM,'','FFullNumber') then
        begin
         // cxGvColumn(cxGv_DBOM,Mdata_DBOM);
          mdata_DBOM.First;
          If (Mdata_DBOM['FItemListId']<>0) and (Mdata_DBOM['FItemListId']<>Null) then
          begin
            If MyItemListID(qry,Mdata_PTList,'V_DesignChangeList','FItemListId='+IntToStr(Mdata_DBOM['FItemListId']),'',) then
            If Mdata_PTList.RecordCount>0 then
               RzSP_PTitem.Visible:=True
            else
               RzSP_PTitem.Visible:=False;
          end;
          cxGrid_DBOM.SetFocus;
        end;
        try
          qry.SQL.Text:='Select Min(FInputStartDate) as FInputStartDate from V_ItemList where FFullNumber like :FFullNumber ';
          qry.Parameters.FindParam('FFullNumber').value:=ListFNumber_DBOM+'%';
          qry.open;
        finally
          ;
        end;
        If (qry.RecordCount>0) and (qry.FieldByName('FInputStartDate').AsString<>'') then
        begin
          E_FInputStartDate.Text:=qry.FieldByName('FInputStartDate').AsString;
          stbMsg.Caption:='提示信息：设计定额【'+P_th_DBOM+'】导入最早日期：'+'【'+qry.FieldByName('FInputStartDate').AsString+'】';
          stbBar.Refresh;
        end;
        //是否审核
        try
          qry.SQL.Text:='select FSortStatus from T_ItemList where FFullNumber like :FFullNumber and FSortStatus>0';
          qry.Parameters.FindParam('FFullNumber').value:=ListFNumber_DBOM+'%';
          qry.open;
        finally
          ;
        end;
        If qry.RecordCount>0 then
        begin
           TB_PartsSort.Enabled:=False;
           TB_Edit_DBOM.Enabled:=False;
        end
        else
        begin
           TB_PartsSort.Enabled:=mdlData.PermissionCheckRights(TFrm_MakeBOM.ClassName,'新增');
           TB_Edit_DBOM.Enabled:=mdlData.PermissionCheckRights(TFrm_MakeBOM.ClassName,'新增');
        end;
        //分档案号
        try
          qry.SQL.Text:='select FItemNumber,FItemNo,FBranchFileNo from V_FileItem where FItemNumber=:FItemNumber order by FItemNumber ';
          qry.Parameters.FindParam('FItemNumber').value:=mdata_DBOM['FItemNumber'];
          qry.Open;
        finally
          ;
        end;
        If qry.RecordCount=1 then
        begin
          E_FBranchFileNo.Enabled:=False;
          E_FBranchFileNo.Text:=qry.FieldByName('FBranchFileNo').Value;
          P_FItemNo:=qry.FieldByName('FItemNo').Value;
        end
        else
        begin
          E_FBranchFileNo.Enabled:=True;
          E_FBranchFileNo.Text:='';
        end;
      end;
    end;
    If (E_FBranchFileNo.Text<>'') then
       TB_MakeBOM.Enabled:= mdlData.PermissionCheckRights(TFrm_MakeBOM.ClassName,'新增')

    else
       TB_MakeBOM.Enabled:=False;

  end;

end;

procedure TFrm_MakeBOM.PC_DBOMChange(Sender: TObject);
begin
  inherited;
  If P_Isleaf_DBOM>0 then
     Act_PC_DBOM.Execute;

end;

procedure TFrm_MakeBOM.Act_PartsSortExecute(Sender: TObject);
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
      value:=ListFNumber_DBOM;
    end;
    proc.ExecProc;
  finally
     ;
  end;
  Proc.Free;


end;
procedure TFrm_MakeBOM.Act_DBOM_SwitchExecute(Sender: TObject);
var
  proc:TADOStoredProc;
begin
  proc:=TADOStoredProc.Create(self);
  proc.ConnectionString:=mdlData.ReadConnStr;
  proc.CommandTimeout:=500;

  If ListFNumber_DBOM='' then
     Exit;

  P_Type:='材料汇总';
  P_Parts:='FMakeParts';
  P_FScenarioNum:='降耗指令(98)';
  try
    proc.ProcedureName:='P_BOM_Switch;1';
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=50;
      name := '@FFullNumber';
      value:=ListFNumber_DBOM;
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
      Direction := pdinput;
      size:=50;
      name := '@TableName';
      value:='V_DesignBOM_Structure';
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=50;
      name := '@FScenarioNum';
      value:=P_FScenarioNum;
      //value:=CB_Switch_MBOM.Text;
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=50;
      name := '@type';
      value:=P_type;
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
    MData_DBOM_Sum.CopyFromDataSet(proc);
    cxGvColumn(cxGv_DBOM_Sum,MData_DBOM_Sum);
    MData_DBOM_Sum.First;
  finally
     ;
  end;
  Proc.Free;


end;

procedure TFrm_MakeBOM.FProcess_2PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  mdata_MList.Edit;
  mdata_MList.Post;
  try
    qry.SQL.Text:='select distinct FProcess from T_MakeList with(nolock) where FAgentID=:FAgentID and FProcess like :FProcess order by FProcess ';
    qry.Parameters.FindParam('FAgentID').value:=UserFDepartmentID;
    qry.Parameters.FindParam('FProcess').value:='%'+mdata_MList['FProcess']+'%';
    qry.Open;
  finally
   ;
  end;

  selValue:=select('选择生产工艺','FProcess','FProcess','FProcess','FProcess',qry);
  If (Length(selValue)>0) then
  begin
    mdata_MList.Edit;
    mdata_MList['FProcess']:=qry.FieldByName('FProcess').Value;
    mdata_MList.Post;
  end;

end;

procedure TFrm_MakeBOM.FTeamName_M2PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
    MData_MItem.Edit;
    MData_MItem.Post;
  try
    qry.SQL.Text:='select * from T_Team with(nolock) where FDepartmentID=:FDepartmentID and FTeamName like :FTeamName order by FWorkShop,FTeamName ';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Parameters.FindParam('FTeamName').value:='%'+MData_MItem['FTeamName']+'%';
    qry.Open;
  finally
   ;
  end;

  selValue:=select('选择送检班组','FTeamName','FWorkShop','FTeamName','FWorkShop;FTeamName',qry);
  If (Length(selValue)>0) then
  begin
    MData_MItem.Edit;
    MData_MItem['FTeamID']:=qry.FieldByName('FTeamID').Value;
    MData_MItem['FTeamName']:=qry.FieldByName('FTeamName').Value;
    MData_MItem['FWorkShop']:=qry.FieldByName('FWorkShop').Value;
    MData_MItem.Post;
  end;


end;

procedure TFrm_MakeBOM.Act_MenuExecute(Sender: TObject);
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

procedure TFrm_MakeBOM.N_SetClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_MakeBOM.N_EditClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_MakeBOM.N_FilterClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_MakeBOM.N_SortClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_MakeBOM.N_GroupClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_MakeBOM.N_OutClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_MakeBOM.Act_Menu_SetExecute(Sender: TObject);
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

procedure TFrm_MakeBOM.cxGrid_DBOMContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
    GV:='cxGV_DBOM';
    Gm:='mdata_DBOM';
    Gr:='cxGrid_DBOM';
    Act_Menu_Set.Execute;

end;

procedure TFrm_MakeBOM.cxGrid_DBOM_SumContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
    GV:='cxGV_DBOM_Sum';
    Gm:='mdata_DBOM_Sum';
    Gr:='cxGrid_DBOM_Sum';
    Act_Menu_Set.Execute;

end;

procedure TFrm_MakeBOM.cxGrid_MBOMContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
    GV:='cxGV_MBOM';
    Gm:='mdata_MBOM';
    Gr:='cxGrid_MBOM';
    Act_Menu_Set.Execute;

end;

procedure TFrm_MakeBOM.cxGrid_MBOM_SumContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
    GV:='cxGV_MBOM_Sum';
    Gm:='mdata_MBOM_Sum';
    Gr:='cxGrid_MBOM_Sum';
    Act_Menu_Set.Execute;

end;

procedure TFrm_MakeBOM.cxGrid_MListContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
    GV:='cxGV_MList';
    Gm:='mdata_MList';
    Gr:='cxGrid_MList';
    Act_Menu_Set.Execute;

end;

procedure TFrm_MakeBOM.cxGrid_MList_CutContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
    GV:='cxGV_MList_Cut';
    Gm:='mdata_MList_Cut';
    Gr:='cxGrid_MList_Cut';

end;

procedure TFrm_MakeBOM.cxGrid_MList_PickContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
    GV:='cxGV_MList_Pick';
    Gm:='mdata_MList_Pick';
    Gr:='cxGrid_MList_Pick';
    Act_Menu_Set.Execute;

end;

procedure TFrm_MakeBOM.cxGrid_MItemContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
    GV:='cxGV_MItem';
    Gm:='mdata_MItem';
    Gr:='cxGrid_MItem';
    Act_Menu_Set.Execute;

end;

procedure TFrm_MakeBOM.TB_ProcessClick(Sender: TObject);
begin
  If application.MessageBox(Pchar('提示：是否备份生产工艺？'+chr(13)+chr(13)
                                 +'确定要备份生产工艺吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
  begin
    Act_Process_BOM.Execute;
    application.MessageBox('备份生产工艺完毕！','系统提示',MB_ICONINFORMATION);
  end;
end;

procedure TFrm_MakeBOM.Act_Process_BOMExecute(Sender: TObject);
var
  proc:TADOStoredProc;

begin
  proc:=TADOStoredProc.Create(self);
  proc.ConnectionString:=mdlData.ReadConnStr;
  proc.CommandTimeout:=500;
  try
    proc.ProcedureName:='P_Imp_Process_BOM;1';
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=200;
      name := '@FFullNumber';
      value:=ListFNumber_MList;
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftInteger;
      Direction := pdinput;
      size:=50;
      name := '@FDepartmentID';
      value:=UserFDepartmentID;
    end;
    proc.ExecProc;
  finally
     ;
  end;
  Proc.Free;


end;

procedure TFrm_MakeBOM.TB_Ref_Process_BOMClick(Sender: TObject);
var
 qry:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Select * from T_Process_BOM with(nolock)  order by FFullNumber';
    qry.Open;
  finally
    ;
  end;
  Mdata_Process_BOM.CopyFromDataSet(qry);
  Mdata_Process_BOM.Active;
  Mdata_Process_BOM.Open;
end;

procedure TFrm_MakeBOM.TB_MakePick_K3Click(Sender: TObject);
begin
  inherited;
  If MData_MList_Pick.RecordCount>0 then
  begin
    frDBDataSet.DataSet:=MData_MList_Pick;
    MData_MList_Pick.First;
    FrReport.LoadFromFile(ExtractFileDir(Application.ExeName)+'\Report_DesignBOM_Credit.frf');
    FrReport.ShowReport;
  end
  else
    Application.MessageBox(PChar('没有需要打印的数据！'), '错误', MB_OK +MB_ICONSTOP);

end;

procedure TFrm_MakeBOM.Act_MakeList_K3Execute(Sender: TObject);
var
  proc:TADOStoredProc;
  P_Retinf:String;
  qry:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  proc:=TADOStoredProc.Create(self);
  proc.ConnectionString:=mdlData.ReadConnStr;
  proc.CommandTimeout:=500;

 { if mdata_M2['FFileLB']='XQ' then
      proc.ConnectionString:='Provider=SQLOLEDB.1;Password=2237551;Persist Security Info=True;User ID=sa;'
                            +'Initial Catalog=AIS20140114102418;Data Source=192.168.111.102';
  }
  {if UserFDepartmentID=14 then //天津
      proc.ConnectionString:='Provider=SQLOLEDB.1;Password=2237551;Persist Security Info=True;User ID=sa;'
                            +'Initial Catalog=AIS20110624165531;Data Source=192.168.111.8'; }
  if UserFDepartmentID=11 then //龙岩
      proc.ConnectionString:='Provider=SQLOLEDB.1;Password=Lk05972237551@;Persist Security Info=True;User ID=sa;'
                            +'Initial Catalog=AIS20130110110412;Data Source=192.168.111.108';

  If application.MessageBox(Pchar('提示：是否下推：【'+ListFNumber_MList+'】的单据至K3生产领料单？'+chr(13)+chr(13)
                                 +'确定要下推至K3本单据吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
  begin
    try
      proc.ProcedureName:='Sp_BomToIcStockBill_24_Zsa;1';
      with proc.Parameters.AddParameter do
      begin
        DataType := ftString;
        Direction := pdinput;
        size:=255;
        name := '@PartNumber';
        value:=ListFNumber_MList;
      end;
      with proc.Parameters.AddParameter do
      begin
        DataType := ftInteger;
        Direction := pdinput;
        size:=50;
        name := '@FSCCbId';
        value:=MData_MItem['FESP3003ID'];
      end;
      with proc.Parameters.AddParameter do
      begin
        DataType := ftString;
        Direction := pdoutput;
        size:=800;
        name := '@ReturnInf';
        value:='';
      end;
      proc.ExecProc;
      P_Retinf:=proc.Parameters.FindParam('@ReturnInf').Value;
      Messagedlg(P_Retinf,mtInformation,[mbok],0);
      If  P_Retinf='已成功生成K3生产领料单！' then
      begin
        try
          qry.SQL.Text:='Update T_MakeItem Set FMakeStatus=4,FMakePushDownID=:FMakePushDownID,FMakePushDownDate=getdate()  where FMakeItemID=:FMakeItemID';
          qry.Parameters.FindParam('FMakePushDownID').value:= UserNumID;
          qry.Parameters.FindParam('FMakeItemID').value:=Mdata_MItem['FMakeItemID'];
          qry.ExecSQL;
        finally
          ;
        end;
        Mdata_MItem.Edit;
        Mdata_MItem['FMakeStatus']:=4;
        Mdata_MItem['FMakeStatusNotes']:='下推';
        Mdata_MItem['FMakePushDownDate']:=now();
        Mdata_MItem.Post;
      end;
    finally
      ;
    end;

  end;



end;

procedure TFrm_MakeBOM.TB_PushDownClick(Sender: TObject);
var
 qry,qryDate:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qryDate:=TAdoQuery.Create(self);
  qryDate.ConnectionString:=mdlData.ReadConnStr;
  P_state:=3;
  If (TB_PushDown.Caption='下推K3') then
  begin
    If application.MessageBox(Pchar('系统提示：是否下推生产作业为：【'+P_List_MList+'】的单据？'+chr(13)+chr(13)
                                   +'下推后的数据不允许修改和删除，确定要下推本单据吗？'),'系统提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      Act_MakeList_K3.Execute;   //下推K3
      Act_Status.Execute;   //权限设置
    end;
    P_state:=2;
    Exit;
  end;
end;

procedure TFrm_MakeBOM.Act_lylExecute(Sender: TObject);
var
  proc:TADOStoredProc;

begin
  proc:=TADOStoredProc.Create(self);
  proc.ConnectionString:=mdlData.ReadConnStr;
  proc.CommandTimeout:=500;

  try
    proc.ProcedureName:='P_LYL;1';
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=50;
      name := '@FLylScheme';
      value:='2015';
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=200;
      name := '@FFullNumber';
      value:=ListFNumber_MList;
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftInteger;
      Direction := pdinput;
      size:=50;
      name := '@FDepartmentID';
      value:=UserFDepartmentID;
    end;
    proc.ExecProc;
  finally
     ;
  end;
  Proc.Free;

  application.MessageBox('材料利用率计算完毕！','系统提示',MB_ICONINFORMATION);



end;

procedure TFrm_MakeBOM.ToolButton1Click(Sender: TObject);
begin
  inherited;
  act_lyl.Execute;
end;

procedure TFrm_MakeBOM.Act_MakeListExecute(Sender: TObject);
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
  qry.CommandTimeout:=1000;
  qry1.CommandTimeout:=1000;

  filepath:=Extractfilepath(application.ExeName)+'生产作业表模版.xls';
  if (Mdata_MList.Active) and (Mdata_MList.recordcount>0) then
  Begin
    SaveDialog1.FileName:='生产作业表'+P_List_MList;
    SaveDialog1.Filter:='.xls';
    SaveDialog1.Execute;

    if (Mdata_MList.FieldByName('FBranchItemNumber').AsString<>'') Or (Mdata_MList.FieldByName('FMakeParts').AsString<>Null) then
        savefilepath:=SaveDialog1.FileName+'.xls';

    if FileExists(savefilepath) then
    begin
      DeleteFile(savefilepath) ;
    end;
    stbMsg.Caption:='提示信息：正在导出生产作业表:'+'【'+Mdata_MList.FieldByName('FMakeParts').AsString+'】';
    stbBar.Refresh;

    ExcelApp:= CreateOleObject('Excel.Application' );
    ExcelApp.Visible:=False;  //工作表显示

    ExcelApp.DisplayAlerts:=False;                  //不显示提示框
    MyWorkBook:=ExcelApp.WorkBooks.Open( filepath );   //打开模版
    try
      qry.SQL.Text:='select distinct FMakeParts,FMakePartsCode from  V_MakeList with(nolock) where FAgentID=:FAgentID '
                   +' and FMakeListNumber like '''+ListFNumber_MList+'%''';
      qry.Parameters.FindParam('FAgentID').value:= UserFDepartmentID;
      //qry.Parameters.FindParam('FMakeListNumber').value:= ListFNumber_MList+'%';
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
       //qry1.SQL.Text:='select * from V_MakeList with(nolock) where FAgentID=:FAgentID and FMakeListNumber like '''+ListFNumber_MList+'%'' and FMakeParts=:FMakeParts order by FFullNumber';
       qry1.SQL.Text:='select * from V_MakeList with(nolock) where FAgentID=:FAgentID and FMakeListNumber like :FMakeListNumber and FMakeParts=:FMakeParts order by FFullNumber ';
       qry1.Parameters.FindParam('FAgentID').value:= UserFDepartmentID;
       qry1.Parameters.FindParam('FMakeListNumber').value:= ListFNumber_MList+'%';
       qry1.Parameters.FindParam('FMakeParts').value:= qry.FieldByName('FMakeParts').Value;
       qry1.Open;
     finally
       ;
     end;
     if qry1.RecordCount>0 then
     begin
       mdata_MList.Close;
       mdata_MList.CopyFromDataSet(qry1);
     end;
     vLastSheet:=MyWorkBook.Sheets[MyWorkBook.Sheets.Count];
     MyWorkBook.Sheets[1].Copy(EmptyParam,vLastSheet);
     MyWorkBook.WorkSheets[k].Name:=IntToStr(k)+Mdata_MList['FMakeParts'];
     MyWorkBook.WorkSheets[k].Activate;

      //标题
      MyWorkBook.WorkSheets[k].Cells[1,1].Value:=AnsiReplaceStr(MyWorkBook.WorkSheets[k].Cells[1,1].Value,'A',UserFDepartmentName); //公司名称

      MyWorkBook.WorkSheets[k].Cells[3,8].Value := Trim(Mdata_MList.FieldByName('FMakeNum').AsString); //编目号
      MyWorkBook.WorkSheets[k].Cells[4,3].Value := Trim(Mdata_MList.FieldByName('FFileNo').AsString); //档 案 号
      MyWorkBook.WorkSheets[k].Cells[4,8].Value := Trim(Mdata_MList.FieldByName('FItemNumber').AsString); //图 号
      MyWorkBook.WorkSheets[k].Cells[5,3].Value := Trim(Mdata_MList.FieldByName('FClientFullName').AsString); //项目名称
      MyWorkBook.WorkSheets[k].Cells[6,3].Value := Trim(Mdata_MList.FieldByName('FItemModel').AsString); //规格型号
      MyWorkBook.WorkSheets[k].Cells[6,8].Value := Trim(Mdata_MList.FieldByName('FDepartmentName').AsString); //项目部门
      MyWorkBook.WorkSheets[k].Cells[7,3].Value := Trim(Mdata_MList.FieldByName('FMakeParts').AsString); //部件
      MyWorkBook.WorkSheets[k].Cells[8,3].Value := Trim(Mdata_MList.FieldByName('FWorkShop').AsString); //车间
      MyWorkBook.WorkSheets[k].Cells[8,8].Value := Trim(Mdata_MList.FieldByName('FColdWorkDate').AsString); //日期


      //循环行开始
      i:=10;

       //工作薄名称
      MyWorkBook.WorkSheets[k].Name:=Mdata_MList.FieldByName('FMakeParts').AsString;
      copystart:='A'+IntToStr(i);
      if Mdata_MList.recordcount>0 then
      Begin
        if Mdata_MList.recordcount>1 then
        Begin
          copystart:='A'+IntToStr(i);
          copystart1:='A'+IntToStr(i+1);
          copyend:='k'+IntToStr(i);  //区域
          ReNum:=Mdata_MList.recordcount-1+(25-((Mdata_MList.RecordCount+1) mod 25));;
          L:=Mdata_MList.recordcount-1+(25-((Mdata_MList.RecordCount+1) mod 25));;
          while ReNum>0 do
          Begin
            ExcelApp.ActiveSheet.Range[copystart+':'+copyend].Copy;
            ExcelApp.ActiveSheet.Rows[i+1].Insert;
            ExcelApp.ActiveSheet.Range[copystart1].PasteSpecial;
            Renum:=Renum-1;
          end;
          //制单、审核栏
          MyWorkBook.WorkSheets[k].Cells[i+L+1,3].Value:=Mdata_MList.FieldByName('FMakeAudit').AsString; //校对
          MyWorkBook.WorkSheets[k].Cells[i+L+1,9].Value:=Mdata_MList.FieldByName('FMakeSubmit').AsString; //制单
        end
        else
        Begin
          R_Count:=Mdata_MList.recordcount;
        end;
        Mdata_MList.first;
        while not Mdata_MList.eof do
        Begin
          MyWorkBook.WorkSheets[k].Cells[i,1].Value := Mdata_MList.FieldByName('FCode').AsString; //类别
          MyWorkBook.WorkSheets[k].Cells[i,2].Value := Mdata_MList.FieldByName('th').AsString; //图号
          MyWorkBook.WorkSheets[k].Cells[i,4].Value := Mdata_MList.FieldByName('mc').AsString; //名称
          MyWorkBook.WorkSheets[k].Cells[i,5].Value := Mdata_MList.FieldByName('FName').AsString+Mdata_MList.FieldByName('FModel').AsString; //材料名称及规格
          MyWorkBook.WorkSheets[k].Cells[i,6].Value := Mdata_MList.FieldByName('FSumQry').AsString; //数量
          MyWorkBook.WorkSheets[k].Cells[i,7].Value := Mdata_MList.FieldByName('FSuttle').AsString; //净重量
          MyWorkBook.WorkSheets[k].Cells[i,8].Value := Mdata_MList.FieldByName('long').AsString;
          MyWorkBook.WorkSheets[k].Cells[i,9].Value := Mdata_MList.FieldByName('width').AsString;
          MyWorkBook.WorkSheets[k].Cells[i,10].Value :=' '+Mdata_MList.FieldByName('Model').AsString+Mdata_MList.FieldByName('FProcess').AsString;
          MyWorkBook.WorkSheets[k].Cells[i,11].Value := Mdata_MList.FieldByName('lyl').AsString;
          Mdata_MList.next;
          i:=i+1;
        End;
      end;
      qry.Next ;
      ExcelApp.Visible:=False;
     // MyWorkBook.WorkSheets[k].PrintPreview;  //打印
      k:=k+1;
    end;
    MyWorkBook.WorkSheets[1].delete; //删除模版
    Application.MessageBox('生产作业表信息导出完成！','系统提示',MB_ICONINFORMATION);
    stbMsg.Caption:='提示信息：生产作业表:'+'【'+Mdata_MList.FieldByName('FMakeParts').AsString+'】的信息导出完成!';
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

procedure TFrm_MakeBOM.Act_MakeListOneExecute(Sender: TObject);
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

  filepath:=Extractfilepath(application.ExeName)+'生产作业表模版.xls';
  if (Mdata_MList.Active) and (Mdata_MList.recordcount>0) then
  Begin
    SaveDialog1.FileName:='生产作业表'+P_List_MList;
    SaveDialog1.Filter:='.xls';
    SaveDialog1.Execute;

    if (Mdata_MList.FieldByName('FBranchItemNumber').AsString<>'') Or (Mdata_MList.FieldByName('FMakeParts').AsString<>Null) then
        savefilepath:=SaveDialog1.FileName+'.xls';

    if FileExists(savefilepath) then
    begin
      DeleteFile(savefilepath) ;
    end;
    stbMsg.Caption:='提示信息：正在导出生产作业表:'+'【'+Mdata_MList.FieldByName('FMakeParts').AsString+'】';
    stbBar.Refresh;

    ExcelApp:= CreateOleObject('Excel.Application' );
    ExcelApp.Visible:=False;  //工作表显示

    ExcelApp.DisplayAlerts:=False;                  //不显示提示框
    MyWorkBook:=ExcelApp.WorkBooks.Open( filepath );   //打开模版

    If Mdata_MList.RecordCount>0 then
       k:=2
    else
       Exit;

   Mdata_MList.First;
   while not Mdata_MList.eof do
   begin

     vLastSheet:=MyWorkBook.Sheets[MyWorkBook.Sheets.Count];
     MyWorkBook.Sheets[1].Copy(EmptyParam,vLastSheet);
     MyWorkBook.WorkSheets[k].Name:=IntToStr(k)+Mdata_MList['FMakeParts'];
     MyWorkBook.WorkSheets[k].Activate;

      //标题
      MyWorkBook.WorkSheets[k].Cells[1,1].Value:=AnsiReplaceStr(MyWorkBook.WorkSheets[k].Cells[1,1].Value,'A',UserFDepartmentName); //公司名称

      MyWorkBook.WorkSheets[k].Cells[3,8].Value := Trim(Mdata_MList.FieldByName('FMakeNum').AsString); //编目号
      MyWorkBook.WorkSheets[k].Cells[4,3].Value := Trim(Mdata_MList.FieldByName('FFileNo').AsString); //档 案 号
      MyWorkBook.WorkSheets[k].Cells[4,8].Value := Trim(Mdata_MList.FieldByName('FItemNumber').AsString); //图 号
      MyWorkBook.WorkSheets[k].Cells[5,3].Value := Trim(Mdata_MList.FieldByName('FClientFullName').AsString); //项目名称
      MyWorkBook.WorkSheets[k].Cells[6,3].Value := Trim(Mdata_MList.FieldByName('FItemModel').AsString); //规格型号
      MyWorkBook.WorkSheets[k].Cells[6,8].Value := Trim(Mdata_MList.FieldByName('FDepartmentName').AsString); //项目部门
      MyWorkBook.WorkSheets[k].Cells[7,3].Value := Trim(Mdata_MList.FieldByName('FMakeParts').AsString); //部件
      MyWorkBook.WorkSheets[k].Cells[8,3].Value := Trim(Mdata_MList.FieldByName('FWorkShop').AsString); //车间
      MyWorkBook.WorkSheets[k].Cells[8,8].Value := Trim(Mdata_MList.FieldByName('FColdWorkDate').AsString); //日期


      //循环行开始
      i:=10;

       //工作薄名称
      MyWorkBook.WorkSheets[k].Name:=Mdata_MList.FieldByName('FMakeParts').AsString;
      copystart:='A'+IntToStr(i);
      if Mdata_MList.recordcount>0 then
      Begin
        if Mdata_MList.recordcount>1 then
        Begin
          copystart:='A'+IntToStr(i);
          copystart1:='A'+IntToStr(i+1);
          copyend:='k'+IntToStr(i);  //区域
          ReNum:=Mdata_MList.recordcount-1+(25-((Mdata_MList.RecordCount+1) mod 25));;
          L:=Mdata_MList.recordcount-1+(25-((Mdata_MList.RecordCount+1) mod 25));;
          while ReNum>0 do
          Begin
            ExcelApp.ActiveSheet.Range[copystart+':'+copyend].Copy;
            ExcelApp.ActiveSheet.Rows[i+1].Insert;
            ExcelApp.ActiveSheet.Range[copystart1].PasteSpecial;
            Renum:=Renum-1;
          end;
          //制单、审核栏
          MyWorkBook.WorkSheets[k].Cells[i+L+1,3].Value:=Mdata_MList.FieldByName('FMakeAudit').AsString; //校对
          MyWorkBook.WorkSheets[k].Cells[i+L+1,9].Value:=Mdata_MList.FieldByName('FMakeSubmit').AsString; //制单
        end
        else
        Begin
          R_Count:=Mdata_MList.recordcount;
        end;
        Mdata_MList.first;
        while not Mdata_MList.eof do
        Begin
          MyWorkBook.WorkSheets[k].Cells[i,1].Value := Mdata_MList.FieldByName('FCode').AsString; //类别
          MyWorkBook.WorkSheets[k].Cells[i,2].Value := Mdata_MList.FieldByName('th').AsString; //图号
          MyWorkBook.WorkSheets[k].Cells[i,4].Value := Mdata_MList.FieldByName('mc').AsString; //名称
          MyWorkBook.WorkSheets[k].Cells[i,5].Value := Mdata_MList.FieldByName('FName').AsString+Mdata_MList.FieldByName('FModel').AsString; //材料名称及规格
          MyWorkBook.WorkSheets[k].Cells[i,6].Value := Mdata_MList.FieldByName('FSumQry').AsString; //数量
          MyWorkBook.WorkSheets[k].Cells[i,7].Value := Mdata_MList.FieldByName('FSuttle').AsString; //净重量
          MyWorkBook.WorkSheets[k].Cells[i,8].Value := Mdata_MList.FieldByName('long').Value;
          MyWorkBook.WorkSheets[k].Cells[i,9].Value := Mdata_MList.FieldByName('width').Value;
          MyWorkBook.WorkSheets[k].Cells[i,10].Value :=' '+Mdata_MList.FieldByName('Model').AsString+Mdata_MList.FieldByName('FProcess').AsString;
          MyWorkBook.WorkSheets[k].Cells[i,11].Value := Mdata_MList.FieldByName('lyl').Value;
          Mdata_MList.next;
          i:=i+1;
        End;
      end;
      Mdata_MList.Next ;
      ExcelApp.Visible:=False;
      //MyWorkBook.WorkSheets[k].PrintPreview;  //打印
      k:=k+1;
    end;
    MyWorkBook.WorkSheets[1].delete; //删除模版
    stbMsg.Caption:='提示信息：生产作业表:'+'【'+Mdata_MList.FieldByName('FMakeParts').AsString+'】的信息导出完成!';
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

procedure TFrm_MakeBOM.Act_MakeCutExecute(Sender: TObject);
var
  i,k,ReNum,R_Count,L:Integer;
  ExcelApp,MyWorkBook,vLastSheet: Variant;
  filepath,savefilepath,copystart,copyend,copystart1:string;
  qry,qry1:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry1:=TAdoQuery.Create(self);
  qry1.ConnectionString:=mdlData.ReadConnStr;

  filepath:=Extractfilepath(application.ExeName)+'生产下料表模版.xls';
  if (MData_MList_Cut.Active) and (MData_MList_Cut.recordcount>0) then
  Begin
    SaveDialog1.FileName:='生产下料表'+P_List_MList;
    SaveDialog1.Filter:='.xls';
    SaveDialog1.Execute;

    if (MData_MItem.FieldByName('FMakeParts').AsString<>'') Or (MData_MItem.FieldByName('FMakeParts').AsString<>Null) then
        savefilepath:=SaveDialog1.FileName+'.xls';

    if FileExists(savefilepath) then
    begin
      DeleteFile(savefilepath) ;
    end;
    stbMsg.Caption:='提示信息：正在导出生产下料表:'+'【'+MData_MItem.FieldByName('FMakeParts').AsString+'】';
    stbBar.Refresh;

    ExcelApp:= CreateOleObject('Excel.Application' );
    ExcelApp.Visible:=False;

    ExcelApp.DisplayAlerts:=False;                  //不显示提示框
    MyWorkBook:=ExcelApp.WorkBooks.Open( filepath );   //打开模版
    try
      qry.SQL.Text:='select distinct FMakeParts,FMakePartsCode from  V_MakeList with(nolock) where FAgentID=:FAgentID and '
                   +'FMakeListNumber like '''+ListFNumber_MList+'%''' ;
      qry.Parameters.FindParam('FAgentID').value:= UserFDepartmentID;
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
       qry1.SQL.Text:='select * from  V_MakeList with(nolock) where  FCode=''★★'' and  FAgentID=:FAgentID1 and FMakeListNumber like '''+ListFNumber_MList+'%'' '
                     +'and FMakeParts=:FMakeParts1 and FMakePartsCode=:FMakePartsCode1 '
                     +' union '
                     +'select * from  V_MakeList with(nolock) where  FName<>'''' and  FAgentID=:FAgentID2 and FMakeListNumber like '''+ListFNumber_MList+'%''  '
                     +'and FMakeParts=:FMakeParts2 and FMakePartsCode=:FMakePartsCode2 order by FNumber';

       qry1.Parameters.FindParam('FAgentID1').value:= UserFDepartmentID;
       qry1.Parameters.FindParam('FMakeParts1').value:= qry.FieldByName('FMakeParts').Value;
       qry1.Parameters.FindParam('FMakePartsCode1').value:= qry.FieldByName('FMakePartsCode').Value;
       qry1.Parameters.FindParam('FAgentID2').value:= UserFDepartmentID;
       qry1.Parameters.FindParam('FMakeParts2').value:= qry.FieldByName('FMakeParts').Value;
       qry1.Parameters.FindParam('FMakePartsCode2').value:= qry.FieldByName('FMakePartsCode').Value;
       qry1.Open;
     finally
       ;
     end;
     if qry1.RecordCount>0 then
     begin
       MData_MList_Cut.Close;
       MData_MList_Cut.CopyFromDataSet(qry1);
     end;
     vLastSheet:=MyWorkBook.Sheets[MyWorkBook.Sheets.Count];
     MyWorkBook.Sheets[1].Copy(EmptyParam,vLastSheet);
     MyWorkBook.WorkSheets[k].Name:=IntToStr(k)+MData_MItem['FMakeParts'];
     MyWorkBook.WorkSheets[k].Activate;

      //标题
      MyWorkBook.WorkSheets[k].Cells[1,1].Value:=AnsiReplaceStr(MyWorkBook.WorkSheets[k].Cells[1,1].Value,'A',UserFDepartmentName); //公司名称

      MyWorkBook.WorkSheets[k].Cells[3,8].Value := Trim(MData_MItem.FieldByName('FMakeNum').AsString); //编目号
      MyWorkBook.WorkSheets[k].Cells[4,3].Value := Trim(MData_MItem.FieldByName('FFileNo').AsString); //档 案 号
      MyWorkBook.WorkSheets[k].Cells[4,8].Value := Trim(MData_MItem.FieldByName('FItemNumber').AsString); //图 号
      MyWorkBook.WorkSheets[k].Cells[5,3].Value := Trim(MData_MItem.FieldByName('FClientFullName').AsString); //项目名称
      MyWorkBook.WorkSheets[k].Cells[6,3].Value := Trim(MData_MItem.FieldByName('FItemModel').AsString); //规格型号
      MyWorkBook.WorkSheets[k].Cells[6,8].Value := Trim(MData_MItem.FieldByName('FDepartmentName').AsString); //项目部门
      MyWorkBook.WorkSheets[k].Cells[7,3].Value := Trim(MData_MItem.FieldByName('FMakeParts').AsString); //部件
      MyWorkBook.WorkSheets[k].Cells[8,3].Value := Trim(MData_MItem.FieldByName('FWorkShop').AsString); //车间
      MyWorkBook.WorkSheets[k].Cells[8,8].Value := Trim(MData_MItem.FieldByName('FColdWorkDate').AsString); //日期

      //循环行开始
      i:=10;

       //工作薄名称
      MyWorkBook.WorkSheets[k].Name:=MData_MItem.FieldByName('FMakeParts').AsString;
      copystart:='A'+IntToStr(i);
      if MData_MList_Cut.recordcount>0 then
      Begin
        if MData_MList_Cut.recordcount>1 then
        Begin
          copystart:='A'+IntToStr(i);
          copystart1:='A'+IntToStr(i+1);
          copyend:='J'+IntToStr(i);  //区域
          ReNum:=MData_MList_Cut.recordcount-1+(32-((MData_MList_Cut.RecordCount+1) mod 32));;
          L:=MData_MList_Cut.recordcount-1+(32-((MData_MList_Cut.RecordCount+1) mod 32));;
          while ReNum>0 do
          Begin
            ExcelApp.ActiveSheet.Range[copystart+':'+copyend].Copy;
            ExcelApp.ActiveSheet.Rows[i+1].Insert;
            ExcelApp.ActiveSheet.Range[copystart1].PasteSpecial;
            Renum:=Renum-1;
          end;
          //制单、审核栏
          MyWorkBook.WorkSheets[k].Cells[i+L+1,3].Value:=MData_MItem.FieldByName('FMakeAudit').AsString; //校对
          MyWorkBook.WorkSheets[k].Cells[i+L+1,9].Value:=MData_MItem.FieldByName('FMakeSubmit').AsString; //制单
        end
        else
        Begin
          R_Count:=MData_MList_Cut.recordcount;
        end;
        MData_MList_Cut.first;
        while not MData_MList_Cut.eof do
        Begin
          MyWorkBook.WorkSheets[k].Cells[i,1].Value := MData_MList_Cut.FieldByName('FCode').AsString; //类别
          MyWorkBook.WorkSheets[k].Cells[i,2].Value := MData_MList_Cut.FieldByName('th').AsString; //图号
          MyWorkBook.WorkSheets[k].Cells[i,4].Value := MData_MList_Cut.FieldByName('mc').AsString; //名称
          MyWorkBook.WorkSheets[k].Cells[i,5].Value := MData_MList_Cut.FieldByName('FName').AsString+MData_MList_Cut.FieldByName('FModel').AsString; //材料名称及规格
          MyWorkBook.WorkSheets[k].Cells[i,6].Value := MData_MList_Cut.FieldByName('FSumQry').AsString; //数量
          MyWorkBook.WorkSheets[k].Cells[i,7].Value := MData_MList_Cut.FieldByName('FSuttle').AsString; //净重量
          MyWorkBook.WorkSheets[k].Cells[i,8].Value := MData_MList_Cut.FieldByName('long').AsString;
          MyWorkBook.WorkSheets[k].Cells[i,9].Value := MData_MList_Cut.FieldByName('width').AsString;
          MyWorkBook.WorkSheets[k].Cells[i,10].Value :=' '+MData_MList_Cut.FieldByName('Model').AsString+MData_MList_Cut.FieldByName('FProcess').AsString;
          MyWorkBook.WorkSheets[k].Cells[i,11].Value := MData_MList_Cut.FieldByName('lyl').AsString;
          MData_MList_Cut.next;
          i:=i+1;
        End;
      end;
      qry.Next ;
      ExcelApp.Visible:=False;  //工作表显示
     // MyWorkBook.WorkSheets[k].PrintPreview;  //打印
      k:=k+1;

    end;
    MyWorkBook.WorkSheets[1].delete; //删除模版
    stbMsg.Caption:='提示信息：生产下料表:'+'【'+MData_MItem.FieldByName('FMakeParts').AsString+'】的信息导出完成!';
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

procedure TFrm_MakeBOM.Act_ErSatzExecute(Sender: TObject);
var
  proc:TADOStoredProc;

begin
  proc:=TADOStoredProc.Create(self);
  proc.ConnectionString:=mdlData.ReadConnStr;
  proc.CommandTimeout:=500;

  try
    proc.ProcedureName:='P_ErSatz;1';
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=50;
      name := '@FErSatzScheme';
      value:='2016';
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=200;
      name := '@FFullNumber';
      value:=ListFNumber_MList;
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftInteger;
      Direction := pdinput;
      size:=50;
      name := '@FDepartmentID';
      value:=UserFDepartmentID;
    end;
    proc.ExecProc;
  finally
     ;
  end;
  Proc.Free;
   application.MessageBox('材料代用计算完毕！','系统提示',MB_ICONINFORMATION);


end;

procedure TFrm_MakeBOM.ToolButton7Click(Sender: TObject);
var qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  if P_state =2 then  //不在新增、修改状态
  begin
    If PC_MakeList.ActivePage=TS_MakeList then
    begin
      If (Mdata_MItem['FMakeItemID']<>0) and (Mdata_MItem['FMakeItemID']<>null) then
      begin
        If MyItemListID(qry,Mdata_MList,'V_MakeList',' FMakeItemID='+IntToStr(Mdata_MItem['FMakeItemID']),'FFullNumber',) then
        begin
         // cxGvColumn(cxGv_MList,Mdata_MList);
        end;
        P_List:='('+Mdata_MItem['FMakePartsCode']+')('+Mdata_MItem['FMakeParts']+')';
        //Act_Status.Execute;  //权限设置
      end;
    end;
    If PC_MakeList.ActivePage=TS_MakeList_Cut then
    begin
      If (Mdata_MItem['FMakeItemID']<>0) and (Mdata_MItem['FMakeItemID']<>null) then
      begin
       If MyItemListFieldWhere(qry,Mdata_MList_Cut,' FCode,th,mc,gg,FNumber,FName,FModel,UnitName,FSize,FStockName,FStockModel,FStockUnitName,lyl,FQry,FSuttle,FSumSuttle,Long,Width,Model,FProcess,FMakeListRemark,FMakeParts ','V_MakeList','FMakeListNumber',ListFNumber_MList,' and (FCode=''★★'' or  FName<>'''')  and FAgentID='+IntToStr(UserFDepartmentID)+' and FMakeItemID='+IntToStr(Mdata_MItem['FMakeItemID']),'FMakeParts,FNumber',) then
        begin
           cxGvColumn(cxGv_MList_Cut,Mdata_MList_Cut);
        end;
        P_List:='('+Mdata_MItem['FMakePartsCode']+')('+Mdata_MItem['FMakeParts']+')';
        //Act_Status.Execute;  //权限设置
      end;
    end;
  end;

// Act_PC_MakeList.Execute;//页选
end;

procedure TFrm_MakeBOM.TB_Edit_ggClick(Sender: TObject);
begin
  inherited;
  cxGV_DBOM.OptionsData.Editing:=True;
  gg.Options.Editing:=True;
  TB_Edit_gg.Enabled:=False;

end;

procedure TFrm_MakeBOM.TB_Save_ggClick(Sender: TObject);
var
  IsEdit:bool;
  qry: TADOQuery;
  I_index:integer;
begin
  I_index:=mData_MBOM.RecNo ;
  Mdata_DBOM.Edit;
  Mdata_DBOM.Post;
  If ShowMsg('是否保存修改后的规格？','提示') then
  begin
    with mdata_DBOM do
    begin
      mData_DBOM.DisableControls;
      First;
      qry:=TADOQuery.Create(Self);
      qry.ConnectionString:=mdlData.ReadConnStr;
      try
        qry.SQL.Text:='Update T_Public set gg=:gg where ID=:ID';
        while not mdata_DBOM.EoF do
        begin
          IsEdit:=mData_DBOM.FieldByName('IsEdit').AsBoolean;
          If IsEdit then
          begin
            qry.Parameters[0].Value:=mData_DBOM['gg'];
            qry.Parameters[1].Value:=mData_DBOM['Code'];
            qry.ExecSQL;
          end;
          next;
        end;
      finally
        ;
      end;
    end;
    mData_DBOM.EnableControls;
  end;

  If (I_index<mData_DBOM.RecordCount) and (I_index<>-1) then
     mData_DBOM.RecNo :=I_index
  else
     mData_DBOM.Last;
 

  TB_Save_gg.Visible:=False;
  TB_Edit_gg.Enabled:=True;


end;

procedure TFrm_MakeBOM.RB_Ref2Click(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.CommandTimeout:=500;
  If PC_Main.ActivePage=TS_K3 then
  begin
   try
      qry.SQL.Text:='Select * from T_K3Item with(nolock) where FK3ID='+IntToStr(UserFK3ID);
      qry.Open;
    finally
       ;
    end;
    mdata_BOMK3.CopyFromDataSet(qry);
    cxGvColumn(cxGv_BOMK3,Mdata_BOMK3);

    mdata_BOMK3.Open;
    mdata_BOMK3.First;
  end;
  qry.Free;
end;

procedure TFrm_MakeBOM.ToolButton11Click(Sender: TObject);
var  proc:TADOStoredProc;
    qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.CommandTimeout:=500;

  proc:=TADOStoredProc.Create(self);
  proc.ConnectionString:=mdlData.ReadConnStr;
  proc.CommandTimeout:=500;

  try
    proc.ProcedureName:='UpdataK3ItemId;1';
    proc.ExecProc;
  finally
     ;
  end;
  mdata_BOMK3.Close;
  try
    qry.SQL.Text:='Select * from T_K3Item with(nolock) where FK3ID='+IntToStr(UserFK3ID);
    qry.Open;
  finally
     ;
  end;
  mdata_BOMK3.CopyFromDataSet(qry);
  mdata_BOMK3.Open;
  mdata_BOMK3.First;
  Messagedlg('K3材料库视图更新完毕！',mtInformation,[mbok],0);


end;

procedure TFrm_MakeBOM.ToolButton14Click(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.CommandTimeout:=500;
  If PC_Main.ActivePage=TS_K3 then
  begin
   try
      qry.SQL.Text:='Select distinct FTxtItemID as FItemID,FTxtName  as FName,FTxtModel as FModel from V_Public '
                   +' where FItemID=0 and FTxtItemID<>0 and FK3ID='+IntToStr(UserFK3ID);
      qry.Open;
    finally
       ;
    end;
    mdata_BOMK3.CopyFromDataSet(qry);
    cxGvColumn(cxGv_BOMK3,Mdata_BOMK3);

    mdata_BOMK3.Open;
    mdata_BOMK3.First;
  end;
  qry.Free;

end;

procedure TFrm_MakeBOM.E_Locate2PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.CommandTimeout:=800;

  If PC_Main.ActivePage=TS_K3 then
  begin
   try
      qry.SQL.Text:='Select * from T_K3Item  with(nolock) where FNumber+FName+FModel like :Locate and FK3ID='+IntToStr(UserFK3ID);
      qry.Parameters.FindParam('Locate').value:='%'+Trim(E_Locate2.Text)+'%';
      qry.Open;
    finally
       ;
    end;
    mdata_BOMK3.CopyFromDataSet(qry);
    cxGvColumn(cxGv_BOMK3,Mdata_BOMK3);
    mdata_BOMK3.Open;
    mdata_BOMK3.First;
  end;

end;

procedure TFrm_MakeBOM.cxGV_MListCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  If (AViewInfo.GridRecord.DisplayTexts[FModel_2.Index]=AViewInfo.GridRecord.DisplayTexts[FStockModel_MList.Index])
     and (AViewInfo.GridRecord.DisplayTexts[FModel_2.Index]<>'')  then
  begin
    ACanvas.Canvas.Font.Color:=clBlue; //字体颜色
    ACanvas.FillRect(AViewInfo.Bounds);
  end;
  If (AViewInfo.GridRecord.DisplayTexts[FModel_2.Index]<>AViewInfo.GridRecord.DisplayTexts[FStockModel_MList.Index]) then
  begin
    ACanvas.Canvas.Font.Color:=clgreen; //字体颜色
    ACanvas.FillRect(AViewInfo.Bounds);
  end;


end;

procedure TFrm_MakeBOM.FESP3003_M2PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  MData_MItem.Edit;
  MData_MItem.Post;
  If MData_MItem['FESP3003']=Null then
  begin
    MData_MItem.Edit;
    MData_MItem['FESP3003']:='';
    MData_MItem.Post;
  end;
  try
    qry.SQL.Text:='select * from Zsi_K3_FItemClassId_3003 with(nolock) where FAgentID=:FAgentID and FName like :FName ';
    qry.Parameters.FindParam('FAgentID').value:=UserFDepartmentID;
    If MData_MItem['FESP3003']<>'' then
       qry.Parameters.FindParam('FName').value:='%'+MData_MItem['FESP3003']+'%'
    else
       qry.Parameters.FindParam('FName').value:='%'+MData_MItem['FFileNo']+'%';
    qry.Open;
  finally
   ;
  end;

  selValue:=select('选择本体生产成本对象','FNumber','FParentNumber','FNumber','FNumber;FName',qry);
  If (Length(selValue)>0) then
  begin
    MData_MItem.Edit;
    MData_MItem['FESP3003ID']:=qry.FieldByName('FItemID').Value;
    MData_MItem['FESP3003']:=qry.FieldByName('FName').Value;
    MData_MItem.Post;
  end;

end;

procedure TFrm_MakeBOM.E_LocatePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var selValue,P_FFullNumber : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='select * from VT_DesignBOM_Right_Dep with(nolock) where FAgentID=:FAgentID and '
                 +'FItemNumber like :FItemNumber  order by FItemNumber ';
                 //+'(FItemNumber like :FItemNumber or FPartsNumber like :FPartsNumber) order by FItemNumber ';
    qry.Parameters.FindParam('FAgentID').value:=UserFDepartmentID;
    qry.Parameters.FindParam('FItemNumber').value:=Trim(E_Locate.Text)+'%';
  //  qry.Parameters.FindParam('FPartsNumber').value:=Trim(E_Locate.Text)+'%';
    qry.Open;
  finally
    ;
  end;
  selValue:=select('选择图号','FNumber','FParentNumber','FNumber','FName',qry);
  If (Length(selValue)>0) then
  begin
    P_FFullNumber:=Trim(qry.FieldByName('FFullNumber').Value);
   // E_Locate.Text:=Trim(qry.FieldByName('FFullNumber').Value);
  end;

  try
    qry.SQL.Text:='Select * from V_DesignBOM_Structure with(nolock) where FFullNumber like :FFullNumber '
                 +'order by FFullNumber ';
    qry.Parameters.FindParam('FFullNumber').Value:=P_FFullNumber+'%';
    qry.Open;
  finally
     ;
  end;
  MData_DBOM.CopyFromDataSet(qry);
  MData_DBOM.Active:=True;
  MData_DBOM.First;


end;

end.


