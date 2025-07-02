unit Main_DepBOMQry;

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
  RzStatus, ActnList, Menus, cxGridBandedTableView, cxGridDBBandedTableView;

type
  TFrm_DepBOMQry = class(TFrm_GridBass)
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
    TB_Ref_DBOM: TToolButton;
    ToolButton15: TToolButton;
    ToolButton18: TToolButton;
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
    TB_Exit: TToolButton;
    ToolButton2: TToolButton;
    PC_DBOM: TRzPageControl;
    TS_DBOM: TRzTabSheet;
    SaveDialog1: TSaveDialog;
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
    ToolButton5: TToolButton;
    actionList: TActionList;
    Act_PC_MakeList: TAction;
    Act_PC_MakeBOM: TAction;
    Act_PC_DBOM: TAction;
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
    cxGrid_MList_M: TcxGrid;
    cxGV_MList_M: TcxGridDBTableView;
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
    cxGL_MList_M: TcxGridLevel;
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
    FProcess_2: TcxGridDBColumn;
    ssth_2: TcxGridDBColumn;
    UnitName_2: TcxGridDBColumn;
    FFullNumber_2: TcxGridDBColumn;
    ssFullNumber_2: TcxGridDBColumn;
    FMakeListRemark_2: TcxGridDBColumn;
    js_2: TcxGridDBColumn;
    FPartsNumber_2: TcxGridDBColumn;
    FMakeParts_2: TcxGridDBColumn;
    cxGL_MList: TcxGridLevel;
    TS_StockBOM: TRzTabSheet;
    FWorkShop_M2: TcxGridDBColumn;
    MData_MList_M: TdxMemData;
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
    DS_Mdata_MList_M: TDataSource;
    Panel10: TPanel;
    FAgentID_M2: TcxGridDBColumn;
    FMakeSubmitDate_M2: TcxGridDBColumn;
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
    cxGridDBColumn41: TcxGridDBColumn;
    cxGridDBColumn42: TcxGridDBColumn;
    cxGridDBColumn43: TcxGridDBColumn;
    cxGridDBColumn44: TcxGridDBColumn;
    cxGridDBColumn45: TcxGridDBColumn;
    cxGridDBColumn46: TcxGridDBColumn;
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
    FNumber_Cut: TcxGridDBColumn;
    FName_Cut: TcxGridDBColumn;
    FModel_Cut: TcxGridDBColumn;
    UnitName_Cut: TcxGridDBColumn;
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
    Act_DBOM_Switch: TAction;
    TS_StockList: TRzTabSheet;
    RzSizePanel5: TRzSizePanel;
    MyTreeView_SBOM: TTreeView;
    Panel13: TPanel;
    Panel14: TPanel;
    Panel15: TPanel;
    ToolBar5: TToolBar;
    TB_Ref_SBOM: TToolButton;
    ToolButton6: TToolButton;
    Panel16: TPanel;
    RzSizePanel6: TRzSizePanel;
    MyTreeView_SList: TTreeView;
    Panel18: TPanel;
    Panel19: TPanel;
    Panel20: TPanel;
    ToolBar6: TToolBar;
    TB_Ref_SList: TToolButton;
    TB_Stock: TToolButton;
    TB_Stock_ML: TToolButton;
    ToolButton11: TToolButton;
    TB_Print_First: TToolButton;
    RzPanel2: TRzPanel;
    PC_StockItem: TRzSizePanel;
    PC_StockBOM: TRzPageControl;
    TS_StockBOM_Mx: TRzTabSheet;
    cxGrid_SBOM: TcxGrid;
    cxGV_SBOM: TcxGridDBTableView;
    cxGridDBColumn47: TcxGridDBColumn;
    cxGridDBColumn48: TcxGridDBColumn;
    cxGridDBColumn49: TcxGridDBColumn;
    cxGridDBColumn50: TcxGridDBColumn;
    cxGridDBColumn51: TcxGridDBColumn;
    cxGridDBColumn52: TcxGridDBColumn;
    cxGridDBColumn53: TcxGridDBColumn;
    cxGridDBColumn54: TcxGridDBColumn;
    cxGridDBColumn55: TcxGridDBColumn;
    cxGridDBColumn56: TcxGridDBColumn;
    cxGridDBColumn57: TcxGridDBColumn;
    cxGridDBColumn58: TcxGridDBColumn;
    cxGridDBColumn59: TcxGridDBColumn;
    cxGridDBColumn60: TcxGridDBColumn;
    cxGridDBColumn61: TcxGridDBColumn;
    cxGridDBColumn62: TcxGridDBColumn;
    cxGridDBColumn63: TcxGridDBColumn;
    cxGridDBColumn64: TcxGridDBColumn;
    cxGridDBColumn65: TcxGridDBColumn;
    cxGridDBColumn66: TcxGridDBColumn;
    cxGridDBColumn67: TcxGridDBColumn;
    cxGridDBColumn68: TcxGridDBColumn;
    cxGridDBColumn69: TcxGridDBColumn;
    cxGridDBColumn70: TcxGridDBColumn;
    cxGridDBColumn71: TcxGridDBColumn;
    cxGL_SBOM: TcxGridLevel;
    TS_StockBOM_Sum: TRzTabSheet;
    cxGrid_SBOM_Sum: TcxGrid;
    cxGV_SBOM_Sum: TcxGridDBTableView;
    cxGridDBColumn72: TcxGridDBColumn;
    cxGridDBColumn73: TcxGridDBColumn;
    cxGridDBColumn74: TcxGridDBColumn;
    cxGridDBColumn75: TcxGridDBColumn;
    cxGridDBColumn76: TcxGridDBColumn;
    cxGridDBColumn77: TcxGridDBColumn;
    cxGridDBColumn78: TcxGridDBColumn;
    cxGridDBColumn79: TcxGridDBColumn;
    cxGridDBColumn80: TcxGridDBColumn;
    cxGridDBColumn81: TcxGridDBColumn;
    cxGridDBColumn82: TcxGridDBColumn;
    cxGridDBColumn83: TcxGridDBColumn;
    cxGridDBColumn84: TcxGridDBColumn;
    cxGridDBColumn85: TcxGridDBColumn;
    cxGridDBColumn86: TcxGridDBColumn;
    cxGridDBColumn87: TcxGridDBColumn;
    cxGridDBColumn88: TcxGridDBColumn;
    cxGridDBColumn89: TcxGridDBColumn;
    cxGridDBColumn90: TcxGridDBColumn;
    cxGridDBColumn91: TcxGridDBColumn;
    cxGridDBColumn92: TcxGridDBColumn;
    cxGridDBColumn93: TcxGridDBColumn;
    cxGridDBColumn94: TcxGridDBColumn;
    cxGridDBColumn95: TcxGridDBColumn;
    cxGridDBColumn96: TcxGridDBColumn;
    cxGridDBColumn97: TcxGridDBColumn;
    cxGL_SBOM_Sum: TcxGridLevel;
    Panel17: TPanel;
    Bevel3: TBevel;
    CB_Parts_SBOM: TcxComboBox;
    CB_Switch_SBOM: TcxComboBox;
    CB_Type_SBOM: TcxComboBox;
    DS_Mdata_SBOM_Sum: TDataSource;
    MData_SBOM_Sum: TdxMemData;
    MData_SBOM: TdxMemData;
    DS_Mdata_SBOM: TDataSource;
    MData_SItem: TdxMemData;
    DS_Mdata_SItem: TDataSource;
    DS_Mdata_SList: TDataSource;
    Mdata_SList: TdxMemData;
    Act_PC_StockBOM: TAction;
    Act_StockBOM_Switch: TAction;
    Act_PC_STockLIst: TAction;
    cxGrid_SItem: TcxGrid;
    cxGV_SItem: TcxGridDBTableView;
    FBranchItemNumber_SItem: TcxGridDBColumn;
    FPartsCode_SItem: TcxGridDBColumn;
    FPartsName_SItem: TcxGridDBColumn;
    FWorkPartsNum_SItem: TcxGridDBColumn;
    FWorkParts_SItem: TcxGridDBColumn;
    FStockStatusNotes_SItem: TcxGridDBColumn;
    FStockStatus_SItem: TcxGridDBColumn;
    FStockWrite_SItem: TcxGridDBColumn;
    FStockWriteDate_SItem: TcxGridDBColumn;
    FStockSubmitDate_SItem: TcxGridDBColumn;
    FStockAudit_SItem: TcxGridDBColumn;
    FStockAuditDate_SItem: TcxGridDBColumn;
    FFullNumber_SItem: TcxGridDBColumn;
    FItemNumber_SItem: TcxGridDBColumn;
    FBranchFileNo_SItem: TcxGridDBColumn;
    FFileNo_SItem: TcxGridDBColumn;
    FClientFullName_SItem: TcxGridDBColumn;
    FItemModel_SItem: TcxGridDBColumn;
    FFactureName_SItem: TcxGridDBColumn;
    FStockNum_SItem: TcxGridDBColumn;
    FStockItemID_SItem: TcxGridDBColumn;
    FItemId_SItem: TcxGridDBColumn;
    WorkFFullNumberSItem: TcxGridDBColumn;
    FFactureID_SItem: TcxGridDBColumn;
    cxGL_SItem: TcxGridLevel;
    TB_PackQry: TToolButton;
    TB_CheckQry: TToolButton;
    PM: TPopupMenu;
    N_Edit: TMenuItem;
    N_Filter: TMenuItem;
    N_Sort: TMenuItem;
    N_Group: TMenuItem;
    N_Set: TMenuItem;
    N_Out: TMenuItem;
    Act_Menu: TAction;
    Act_Menu_Set: TAction;
    Act_PackQry: TAction;
    TS_PackItem: TRzTabSheet;
    RzSizePanel9: TRzSizePanel;
    MyTreeView_Pack: TTreeView;
    Panel25: TPanel;
    Panel26: TPanel;
    ToolBar_M2: TToolBar;
    TB_Ref2: TToolButton;
    TB_ReNoRef: TToolButton;
    TB_PackItem: TToolButton;
    TB_PackList: TToolButton;
    TB_PackItemFirst: TToolButton;
    TB_PackItemXLS: TToolButton;
    TB_PackListXLS: TToolButton;
    ToolButton1: TToolButton;
    TB_Out2: TToolButton;
    TB_Down2: TToolButton;
    ToolButton4: TToolButton;
    ToolButton7: TToolButton;
    Panel_button2: TPanel;
    Bevel4: TBevel;
    L_FPackNum1: TLabel;
    L_FPackNum2: TLabel;
    E_FPackNum1: TcxButtonEdit;
    E_FPackNum2: TcxButtonEdit;
    Panel27: TPanel;
    RzSizePanel7: TRzSizePanel;
    cxGrid_PList: TcxGrid;
    cxGV_PList: TcxGridDBTableView;
    cxGridDBColumn138: TcxGridDBColumn;
    FListNum2: TcxGridDBColumn;
    xh_2: TcxGridDBColumn;
    cxGridDBColumn139: TcxGridDBColumn;
    mcgg_2: TcxGridDBColumn;
    cxGridDBColumn140: TcxGridDBColumn;
    cxGridDBColumn141: TcxGridDBColumn;
    SelRemark_2: TcxGridDBColumn;
    FPackLIstRemark_2: TcxGridDBColumn;
    dw_2: TcxGridDBColumn;
    cxGridDBColumn142: TcxGridDBColumn;
    FPackQry_2: TcxGridDBColumn;
    FPackClass_22: TcxGridDBColumn;
    FPackNo_22: TcxGridDBColumn;
    cxGridDBColumn143: TcxGridDBColumn;
    cxGridDBColumn144: TcxGridDBColumn;
    FStockListRemark_2: TcxGridDBColumn;
    cxGridDBColumn145: TcxGridDBColumn;
    cxGridDBColumn146: TcxGridDBColumn;
    FPackItemID_22: TcxGridDBColumn;
    FPackStockListID_2: TcxGridDBColumn;
    cxGridDBColumn147: TcxGridDBColumn;
    FPartsCode_2: TcxGridDBColumn;
    FWorkParts_2: TcxGridDBColumn;
    cxGL_PList: TcxGridLevel;
    cxGrid_PItem: TcxGrid;
    cxGV1: TcxGridDBTableView;
    cxGV_PItem: TcxGridDBBandedTableView;
    FPackNum_2: TcxGridDBBandedColumn;
    FPackNumber_2: TcxGridDBBandedColumn;
    FPackName_2: TcxGridDBBandedColumn;
    FPackMode_2: TcxGridDBBandedColumn;
    FNet: TcxGridDBBandedColumn;
    FGross: TcxGridDBBandedColumn;
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
    FPackStatus: TcxGridDBBandedColumn;
    FPackStatusNotes: TcxGridDBBandedColumn;
    FPackWrite: TcxGridDBBandedColumn;
    FPackWriteDate: TcxGridDBBandedColumn;
    FPackSubmit: TcxGridDBBandedColumn;
    FPackSubmitDate: TcxGridDBBandedColumn;
    FPackAudit: TcxGridDBBandedColumn;
    FPackAuditDate: TcxGridDBBandedColumn;
    cxGL_PItem: TcxGridLevel;
    MData_PItem: TdxMemData;
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
    DS_Mdata_PItem: TDataSource;
    DS_Mdata_PList: TDataSource;
    MData_PList: TdxMemData;
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
    TB_Save: TToolButton;
    ToolButton10: TToolButton;
    Act_Weigth: TAction;
    cxGrid_SList: TcxGrid;
    cxGV_SList: TcxGridDBTableView;
    Num_SList: TcxGridDBColumn;
    th_SList: TcxGridDBColumn;
    mcgg_SList: TcxGridDBColumn;
    FSumQry_SList: TcxGridDBColumn;
    FSumCheckYesQry_SList: TcxGridDBColumn;
    FSuttle_SList: TcxGridDBColumn;
    FSumSuttle_SList: TcxGridDBColumn;
    FSumCheckYesSuttle_SList: TcxGridDBColumn;
    FListTeamName_SList: TcxGridDBColumn;
    FListWorkShop_SList: TcxGridDBColumn;
    FListTeamID_SList: TcxGridDBColumn;
    FStockListRemark_SList: TcxGridDBColumn;
    FCheckDetail_SList: TcxGridDBColumn;
    FFullNumber_SList: TcxGridDBColumn;
    ssFullNumber_SList: TcxGridDBColumn;
    FPartsNumber_SList: TcxGridDBColumn;
    FPartsCode_SList: TcxGridDBColumn;
    FWorkParts_SList: TcxGridDBColumn;
    FStockItemID_SList: TcxGridDBColumn;
    FStockListID_SList: TcxGridDBColumn;
    FBranchItemNumber_SList: TcxGridDBColumn;
    cxGL_SList: TcxGridLevel;
    SelRemark_SList: TcxGridDBColumn;
    Sel: TcxGridDBColumn;
    IsEdit_SItem: TcxGridDBColumn;
    IsEdit_SList: TcxGridDBColumn;
    TB_Edit: TToolButton;
    TB_ColdWork: TToolButton;
    Act_CheckQry: TAction;
    TB_CheckStock: TToolButton;
    FSumPackQry_SList: TcxGridDBColumn;
    FPackDetail_SList: TcxGridDBColumn;
    CB_Out: TcxCheckBox;
    CB_Print: TcxCheckBox;
    Panel11: TPanel;
    Bevel5: TBevel;
    CB_DBOM_Parts: TcxComboBox;
    RzRG_1: TRzRadioGroup;
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
    procedure TB_Ref_MBOMClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FProcessPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure SelPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    function DelRdMakeBOM:bool;
    function DelRdMakeItem:bool;
    procedure ToolButton5Click(Sender: TObject);
    procedure MyTreeView_MListExpanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure MyTreeView_MListChange(Sender: TObject; Node: TTreeNode);
    procedure TB_Ref_MListClick(Sender: TObject);
    procedure TB_MakeListClick(Sender: TObject);
    procedure TB_MakeCutClick(Sender: TObject);
    procedure FWorkShop_M2PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxGV_MList_MFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
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
    procedure Act_DBOM_SwitchExecute(Sender: TObject);
    procedure TB_Ref_SBOMClick(Sender: TObject);
    procedure MyTreeView_SBOMExpanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure MyTreeView_SBOMChange(Sender: TObject; Node: TTreeNode);
    procedure Act_PC_StockBOMExecute(Sender: TObject);
    procedure PC_StockBOMChange(Sender: TObject);
    procedure Act_StockBOM_SwitchExecute(Sender: TObject);
    procedure TB_Ref_SListClick(Sender: TObject);
    procedure MyTreeView_SListExpanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure MyTreeView_SListChange(Sender: TObject; Node: TTreeNode);
    procedure Act_PC_STockLIstExecute(Sender: TObject);
    procedure cxGV_SItemFocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure TB_StockClick(Sender: TObject);
    procedure TB_Stock_MLClick(Sender: TObject);
    procedure TB_CheckQryClick(Sender: TObject);
    procedure Act_MenuExecute(Sender: TObject);
    procedure Act_Menu_SetExecute(Sender: TObject);
    procedure N_EditClick(Sender: TObject);
    procedure N_FilterClick(Sender: TObject);
    procedure N_SortClick(Sender: TObject);
    procedure N_GroupClick(Sender: TObject);
    procedure N_SetClick(Sender: TObject);
    procedure N_OutClick(Sender: TObject);
    procedure cxGrid_SItemContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure cxGrid_SListContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
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
    procedure cxGrid_SBOMContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure cxGrid_SBOM_SumContextPopup(Sender: TObject;
      MousePos: TPoint; var Handled: Boolean);
    procedure cxGrid_MList_MContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure Act_PackQryExecute(Sender: TObject);
    procedure TB_PackQryClick(Sender: TObject);
    procedure TB_Ref2Click(Sender: TObject);
    procedure MyTreeView_PackExpanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure MyTreeView_PackChange(Sender: TObject; Node: TTreeNode);
    procedure cxGV_PItemFocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure TB_SaveClick(Sender: TObject);
    procedure ToolButton10Click(Sender: TObject);
    procedure Act_WeigthExecute(Sender: TObject);
    procedure cxGV_SListCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure FListTeamName_3PropertiesEditValueChanged(Sender: TObject);
    procedure FListTeamName_SListHeaderClick(Sender: TObject);
    procedure Mdata_SListAfterEdit(DataSet: TDataSet);
    procedure TB_EditClick(Sender: TObject);
    procedure cxGrid_SListExit(Sender: TObject);
    procedure TB_ColdWorkClick(Sender: TObject);
    procedure Act_CheckQryExecute(Sender: TObject);
    procedure TB_CheckStockClick(Sender: TObject);
    procedure cxComboBox1PropertiesChange(Sender: TObject);

  private
   { Private declarations }
    function DelRdWorkBOM:bool;

  public
    P_Sort,P_List,P_FItemNo:String;
    P_Type,P_Parts,P_FScenarioNum:String;
    P_i:boolean;
    P_FFactureID:Integer;

    P_s1,P_s2,P_s3,P_s4,P_s5:String;
    //GV,Gr,Gm,Mn:string;
   { Public declarations }
  end;

var
  Frm_DepBOMQry: TFrm_DepBOMQry;


implementation

uses FRMDATA,  COMMON, FrmSelect, ProgBar, PROGRASS;




{$R *.dfm}

function TFrm_DepBOMQry.DelRdMakeBOM: bool;
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

function TFrm_DepBOMQry.DelRdMakeItem: bool;
var
 qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Delete from T_MakeItem where FAgentID=:FAgentID and FMakePartsCode like :FMakePartsCode';
    qry.Parameters.FindParam('FAgentID').value:=UserFDepartmentID;
    qry.Parameters.FindParam('FMakePartsCode').value:=ListFNumber_MList+'%';
    result:=qry.ExecSQL>=1;
  finally
    qry.Free;
  end;
end;



procedure TFrm_DepBOMQry.Set_Open2;
begin
  cxGV_MList.OptionsData.Editing:=True;
   P_i:=True;
end;

procedure TFrm_DepBOMQry.Set_Close2;
begin
  TB_Ref_MList.Enabled:=True;
end;



function TFrm_DepBOMQry.DelRdWorkBOM: bool;
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


procedure TFrm_DepBOMQry.FormResize(Sender: TObject);
begin
  inherited;
  Self.Caption:=UserFDepartmentName+'子公司查询';
end;

procedure TFrm_DepBOMQry.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=cafree;
  Frm_DepBOMQry:=nil;
end;

procedure TFrm_DepBOMQry.MyTreeView_DBOMExpanding(Sender: TObject;
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

 { qry.SQL.Text:='Select FNumber, FParentNumber,FName,FItemNumber,FFullNumber,FProductID,'
               +'Isleaf from VT_DesignBOM where FParentNumber= '''
               +PTree(Node.Data).ID+''' order by FItemNumber'; }
  qry.SQL.Text:='Select FNumber,FParentNumber,FName,FFullNumber,'
               +'Isleaf from VT_DesignBOM_Right_Dep where FParentNumber= '''
               +PTree(Node.Data).ID+''' order by FNumber';
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

procedure TFrm_DepBOMQry.MyTreeView_MBOMExpanding(Sender: TObject;
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
  qry.SQL.Text:='Select FNumber,FParentNumber,FName,FBranchItemNumber,FFullNumber,'
               +'Isleaf from VT_MakeBOM where FParentNumber= '''
               +PTree(Node.Data).ID+''' order by FBranchItemNumber,FFullNumber';
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

procedure TFrm_DepBOMQry.MyTreeView_DBOMChange(Sender: TObject; Node: TTreeNode);
var
  qry:TADOquery;
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
      Act_PC_DBOM.Execute;
      If PC_DBOM.ActivePage=TS_DBOM_Sum then
         Act_DBOM_Switch.Execute;
    end;

  end;

  mdata_DBOM.EnableControls;
  cxGV_DBOM.DataController.DataModeController.GridMode:=False;
  cxGV_DBOM.DataController.DataModeController.SmartRefresh:=False;



end;

procedure TFrm_DepBOMQry.MyTreeView_MBOMChange(Sender: TObject; Node: TTreeNode);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If Node = nil then Exit;
  with PTree(Node.Data)^ do
  begin
    ListFNumber_MBOM:=trim(PTree(Node.Data).FNumber);
    P_th_MBOM:=PTree(Node.Data).Caption;
    P_Isleaf_MBOM:=PTree(Node.Data).Isleaf ;
    Act_PC_MakeBOM.Execute;
  end;
end;

procedure TFrm_DepBOMQry.PC_MakeBOMChange(Sender: TObject);
begin
  inherited;
  Act_PC_MakeBOM.Execute;
end;

procedure TFrm_DepBOMQry.TB_Ref_DBOMClick(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If not TreeVeiwListWhere(qry,MyTreeView_DBOM,'VT_DesignBOM_Right_Dep',' and FAgentID='+IntToStr(UserFDepartmentID) ) then
     Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);

  {
  If UserFDepartmentsort=1 then   //事业部
  begin
    If not TreeVeiwListUserID(qry,MyTreeView_DBOM,'VT_DesignBOM',UserFDepartmentID) then
      Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;
  If UserFDepartmentsort=2 then   //子公司
  begin
    If not TreeVeiwList(qry,MyTreeView_DBOM,'VT_DesignBOM', ) then
    Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end; }
end;

procedure TFrm_DepBOMQry.TB_Ref_MBOMClick(Sender: TObject);
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

procedure TFrm_DepBOMQry.FormShow(Sender: TObject);
begin
  inherited;
  TB_Ref_DBOM.Click;
  TB_Ref_MBOM.Click;
  TB_Ref_MList.Click;
  TB_Ref_SBOM.Click;
  TB_Ref_SList.Click;
end;

procedure TFrm_DepBOMQry.FormCreate(Sender: TObject);
var qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  P_Sort:='材料汇总';
  P_Parts:='FManageParts';
  P_Type:='部件汇总';

  TB_Edit.Enabled:= mdlData.PermissionCheckRights(TFrm_DepBOMQry.ClassName,'新增');

  TS_DesignBOM.TabEnabled:= mdlData.PermissionCheckRights(TFrm_DepBOMQry.ClassName,'提交');
  TS_WorkBOM.TabEnabled:= mdlData.PermissionCheckRights(TFrm_DepBOMQry.ClassName,'校对');
  TS_MakeBOM.TabEnabled:= mdlData.PermissionCheckRights(TFrm_DepBOMQry.ClassName,'审核');
  TS_StockBOM.TabEnabled:= mdlData.PermissionCheckRights(TFrm_DepBOMQry.ClassName,'下推');
  TS_StockList.TabEnabled:= mdlData.PermissionCheckRights(TFrm_DepBOMQry.ClassName,'接收');
  try
    qry.SQL.Text:='select dateadd(d,-day(getdate())+1,getdate()) as FirstDay ';
    qry.Open;
  finally
   ;
  end;
end;

procedure TFrm_DepBOMQry.FProcessPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='select distinct FProcess from T_Public where FK3ID=:FK3ID order by FProcess ';
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

procedure TFrm_DepBOMQry.SelPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='select * from T_Team where FDepartmentID=:FDepartmentID and FTeamName like :FTeamName order by FWorkShop,FTeamName ';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Parameters.FindParam('FTeamName').value:='%'+mdata_SList['FListTeamName']+'%';
    qry.Open;
  finally
   ;
  end;
  selValue:=select('选择送检班组','FTeamName','FWorkShop','FTeamName','FWorkShop;FTeamName',qry);
  If (Length(selValue)>0) then
  begin
    mdata_SList.Edit;
    mdata_SList['FListTeamName']:=qry.FieldByName('FTeamName').Value;
    mdata_SList['FListTeamID']:=qry.FieldByName('FTeamID').Value;
    mdata_SList['FListWorkShop']:=qry.FieldByName('FWorkShop').Value;
    mdata_SList.Post;
  end;


end;

procedure TFrm_DepBOMQry.ToolButton5Click(Sender: TObject);
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
    qry.SQL.Text:='select * from V_DesignBOM_Structure where FFullNumber like :FFullNumber order by FFullNumber ';
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

procedure TFrm_DepBOMQry.MyTreeView_MListExpanding(Sender: TObject;
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
  qry.SQL.Text:='Select * from VT_MakeList where FParentNumber= '''
               +PTree(Node.Data).ID+''' order by FBranchItemNumber';
  qry.open;

  PTree(Node.Data).Flag := cLoadFlag;                  // 设置已加载标志
  while not qry.Eof do
  begin
    New(P);
    P.ID := qry.FieldByName('FNumber').AsString;
    P.ParentID := qry.FieldByName('FParentNumber').AsString;
    P.FNumber:=qry.FieldByName('FNumber').AsString;
 //   P.FNumber:=qry.FieldByName('FFullNumber').AsString;
    P.Caption := qry.FieldByName('FName').AsString;
    P.Isleaf := qry.FieldByName('Isleaf').Value;
    P.Isleaf := qry.FieldByName('Isleaf').Value;
    P.Flag := cNoLoadFlag;                            // 新节点，未加载标志
    with MyTreeView_MList.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('Isleaf').value;
    end;
    qry.Next;
  end;


end;

procedure TFrm_DepBOMQry.MyTreeView_MListChange(Sender: TObject; Node: TTreeNode);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If Node = nil then Exit;
  with PTree(Node.Data)^ do
  begin
    ListFNumber_MList:=trim(PTree(Node.Data).FNumber);
    P_th_MList:=PTree(Node.Data).Caption;
    P_Isleaf_MList:=PTree(Node.Data).Isleaf;
    Mdata_MList.DisableControls;
    cxGV_MList.DataController.DataModeController.GridMode:=True;
    cxGV_MList.DataController.DataModeController.SmartRefresh:=True;
    Act_PC_MakeList.Execute;//页选

    mdata_MList.EnableControls;
    cxGV_MList.DataController.DataModeController.GridMode:=False;
    cxGV_MList.DataController.DataModeController.SmartRefresh:=False;

  end;
end;

procedure TFrm_DepBOMQry.TB_Ref_MListClick(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If not TreeVeiwListWhere(qry,MyTreeView_MList,'VT_MakeList',' and FAgentID='+IntToStr(UserFDepartmentID) ) then
  begin
    Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;

end;

procedure TFrm_DepBOMQry.TB_MakeListClick(Sender: TObject);
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
    If CB_Out.Checked=True then
    begin
      SaveDialog1.FileName:='生产作业表'+P_List;
      SaveDialog1.Filter:='.xls';
      SaveDialog1.Execute;

      if (Mdata_MList.FieldByName('FBranchItemNumber').AsString<>'') Or (Mdata_MList.FieldByName('FMakeParts').AsString<>Null) then
        savefilepath:=SaveDialog1.FileName+'.xls';

      if FileExists(savefilepath) then
      begin
        DeleteFile(savefilepath) ;
      end;
    end;
    stbMsg.Caption:='提示信息：正在导出生产作业表:'+'【'+Mdata_MList.FieldByName('FMakeParts').AsString+'】';
    stbBar.Refresh;

    ExcelApp:= CreateOleObject('Excel.Application' );
    ExcelApp.Visible:=False;  //工作表显示

    ExcelApp.DisplayAlerts:=False;                  //不显示提示框
    MyWorkBook:=ExcelApp.WorkBooks.Open( filepath );   //打开模版

    try
      qry.SQL.Text:='select distinct FMakeParts,FMakePartsCode from  V_MakeList where FAgentID=:FAgentID and FMakeListNumber like :FMakeListNumber';
      qry.Parameters.FindParam('FAgentID').value:= UserFDepartmentID;
      qry.Parameters.FindParam('FMakeListNumber').value:= ListFNumber_MList+'%';
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
       qry1.SQL.Text:='select * from V_MakeList where FAgentID=:FAgentID and FMakeListNumber like :FMakeListNumber and FMakeParts=:FMakeParts order by FFullNumber';
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
          copyend:='J'+IntToStr(i);  //区域
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
          Mdata_MList.next;
          i:=i+1;
        End;
      end;
      qry.Next ;
       ExcelApp.Visible:=False;
      If CB_Print.Checked=True then
      begin
        MyWorkBook.WorkSheets[k].PrintPreview;  //打印
      end;
      k:=k+1;
    end;
    MyWorkBook.WorkSheets[1].delete; //删除模版
    stbMsg.Caption:='提示信息：生产作业表:'+'【'+Mdata_MList.FieldByName('FMakeParts').AsString+'】的信息导出完成!';
    stbBar.Refresh;
    If CB_Out.Checked=True then
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

procedure TFrm_DepBOMQry.TB_MakeCutClick(Sender: TObject);
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
  if (Mdata_MList.Active) and (Mdata_MList.recordcount>0) then
  Begin
    If CB_Out.Checked=True then
    begin
      SaveDialog1.FileName:='生产下料表'+P_List;
      SaveDialog1.Filter:='.xls';
      SaveDialog1.Execute;

      if (Mdata_MList.FieldByName('FMakeParts').AsString<>'') Or (Mdata_MList.FieldByName('FMakeParts').AsString<>Null) then
           savefilepath:=SaveDialog1.FileName+'.xls';

      if FileExists(savefilepath) then
      begin
        DeleteFile(savefilepath) ;
      end;
    end;
    stbMsg.Caption:='提示信息：正在导出生产下料表:'+'【'+Mdata_MList.FieldByName('FMakeParts').AsString+'】';
    stbBar.Refresh;

    ExcelApp:= CreateOleObject('Excel.Application' );
    ExcelApp.Visible:=False;

    ExcelApp.DisplayAlerts:=False;                  //不显示提示框
    MyWorkBook:=ExcelApp.WorkBooks.Open( filepath );   //打开模版
    try
      qry.SQL.Text:='select distinct FMakeParts,FMakePartsCode from  V_MakeList where FAgentID=:FAgentID and '
                   +'FMakeListNumber like :FMakeListNumber ' ;
      qry.Parameters.FindParam('FAgentID').value:= UserFDepartmentID;
      qry.Parameters.FindParam('FMakeListNumber').value:= ListFNumber_MList+'%';
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
       qry1.SQL.Text:='select * from  V_MakeList where  FCode=''★★'' and  FAgentID=:FAgentID1 and FMakeListNumber like :FMakeListNumber1 '
                     +'and FMakeParts=:FMakeParts1 and FMakePartsCode=:FMakePartsCode1 '
                     +' union '
                     +'select * from  V_MakeList where  FName<>'''' and  FAgentID=:FAgentID2 and FMakeListNumber like :FMakeListNumber2  '
                     +'and FMakeParts=:FMakeParts2 and FMakePartsCode=:FMakePartsCode2 order by FNumber';

       qry1.Parameters.FindParam('FAgentID1').value:= UserFDepartmentID;
       qry1.Parameters.FindParam('FMakeListNumber1').value:= ListFNumber_MList+'%';
       qry1.Parameters.FindParam('FMakeParts1').value:= qry.FieldByName('FMakeParts').Value;
       qry1.Parameters.FindParam('FMakePartsCode1').value:= qry.FieldByName('FMakePartsCode').Value;
       qry1.Parameters.FindParam('FAgentID2').value:= UserFDepartmentID;
       qry1.Parameters.FindParam('FMakeListNumber2').value:= ListFNumber_MList+'%';
       qry1.Parameters.FindParam('FMakeParts2').value:= qry.FieldByName('FMakeParts').Value;
       qry1.Parameters.FindParam('FMakePartsCode2').value:= qry.FieldByName('FMakePartsCode').Value;
       qry1.Open;
     finally
       ;
     end;
     if qry1.RecordCount>0 then
     begin
       Mdata_MList.Close;
       Mdata_MList.CopyFromDataSet(qry1);
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
          copyend:='J'+IntToStr(i);  //区域
          ReNum:=Mdata_MList.recordcount-1+(32-((Mdata_MList.RecordCount+1) mod 32));;
          L:=Mdata_MList.recordcount-1+(32-((Mdata_MList.RecordCount+1) mod 32));;
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
          Mdata_MList.next;
          i:=i+1;
        End;
      end;
      qry.Next ;
      ExcelApp.Visible:=False;  //工作表显示
      If CB_Print.Checked=True then
         MyWorkBook.WorkSheets[k].PrintPreview;  //打印
      k:=k+1;

    end;
     MyWorkBook.WorkSheets[1].delete; //删除模版
    stbMsg.Caption:='提示信息：生产下料表:'+'【'+Mdata_MList.FieldByName('FMakeParts').AsString+'】的信息导出完成!';
    stbBar.Refresh;
    If CB_Out.Checked=True then
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

procedure TFrm_DepBOMQry.FWorkShop_M2PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='select distinct FWorkShop from V_MakeList where FAgentID=:FAgentID ';
    qry.Parameters.FindParam('FAgentID').value:=UserFDepartmentID;
    qry.Open;
  finally
   ;
  end;

  selValue:=select('选择生产班组','FWorkShop','FWorkShop','FWorkShop','FWorkShop',qry);
  If (Length(selValue)>0) then
  begin
    mdata_MList_M.Edit;
    mdata_MList_M['FWorkShop']:=qry.FieldByName('FWorkShop').Value;
    mdata_MList_M.Post;
  end;


end;

procedure TFrm_DepBOMQry.cxGV_MList_MFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
var qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
    If PC_MakeList.ActivePage=TS_MakeList then
    begin
      If (mData_MList_M['FMakeItemID']<>0) and (mData_MList_M['FMakeItemID']<>null) then
      begin
        If MyItemListID(qry,Mdata_MList,'V_MakeList',' FMakeItemID='+IntToStr(Mdata_MList_M['FMakeItemID']),'FFullNumber',) then
        begin
          cxGvColumn(cxGv_MList,Mdata_MList);
        end;
        P_List:='('+mdata_MList_M['FMakePartsCode']+')('+mdata_MList_M['FMakeParts']+')';
      end;
    end;
    If PC_MakeList.ActivePage=TS_MakeList_Cut then
    begin
      If (mData_MList_M['FMakeItemID']<>0) and (mData_MList_M['FMakeItemID']<>null) then
      begin
       If MyItemListFieldWhere(qry,Mdata_MList_Cut,' FCode,th,mc,gg,FNumber,FName,FModel,UnitName,FQry,FSuttle,FSumSuttle,Long,Width,Model,FProcess,FMakeListRemark,FMakeParts ','V_MakeList','FFullNumber',ListFNumber_MList,' and (FCode=''★★'' or  FName<>'''')  and FAgentID='+IntToStr(UserFDepartmentID)+' and FMakeItemID='+IntToStr(Mdata_MList_M['FMakeItemID']),'FMakeParts,FNumber',) then
        begin
          cxGvColumn(cxGv_MList_Cut,Mdata_MList_Cut);
        end;
        P_List:='('+mdata_MList_M['FMakePartsCode']+')('+mdata_MList_M['FMakeParts']+')';
      end;
    end;
    If PC_MakeList.ActivePage=TS_MakeList_Pick then
    begin
      If (mData_MList_M['FMakeItemID']<>0) and (mData_MList_M['FMakeItemID']<>null) then
      begin
        Act_MakeList_Sum.Execute;
        P_List:='('+mdata_MList_M['FMakePartsCode']+')('+mdata_MList_M['FMakeParts']+')';
      end;
    end;


end;

procedure TFrm_DepBOMQry.FPartsSortPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='select distinct FPartsSort from T_PartsSort where FProductID=:FProductID and FPartsCode=:FPartsCode order by FPartsSort ';
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

procedure TFrm_DepBOMQry.Act_PartsExecute(Sender: TObject);
var
  proc:TADOStoredProc;
begin
  proc:=TADOStoredProc.Create(self);
  proc.ConnectionString:=mdlData.ReadConnStr;
  proc.CommandTimeout:=500;
  P_Sort:='材料汇总';
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

procedure TFrm_DepBOMQry.MData_MBOMAfterEdit(DataSet: TDataSet);
begin
  inherited;
  DataSet['IsEdit']:=True;
//  TB_Save.Visible:=True;

end;

procedure TFrm_DepBOMQry.MData_MListAfterEdit(DataSet: TDataSet);
begin
  inherited;
  DataSet['IsEdit']:=True;
end;

procedure TFrm_DepBOMQry.Act_MakeList_SumExecute(Sender: TObject);
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
      size:=50;
      name := '@FFullNumber';
      value:=ListFNumber_MList;
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

procedure TFrm_DepBOMQry.CB_PartsPropertiesChange(Sender: TObject);
begin
  inherited;
  If CB_Parts.Text='项目' then
    P_Parts:='FItemNumber';
  If CB_Parts.Text='部件' then
    P_Parts:='FPartsNumber';
  If CB_Parts.Text='生产类别' then
    P_Parts:='FMakeParts';

end;

procedure TFrm_DepBOMQry.TB_MakePickClick(Sender: TObject);
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
    If CB_Out.Checked=True then
    begin
      SaveDialog1.FileName:='生产领料表'+P_List;
      SaveDialog1.Filter:='.xls';
      SaveDialog1.Execute;

      if (mdata_MList_Pick.FieldByName('FBranchItemNumber').AsString<>'') Or (mdata_MList_Pick.FieldByName('FBranchItemNumber').AsString<>Null) then
          savefilepath:=SaveDialog1.FileName+'.xls';

      if FileExists(savefilepath) then
      begin
        DeleteFile(savefilepath) ;
      end;
    end;
    stbMsg.Caption:='提示信息：正在导出生产领料表:'+'【'+P_List+'】';
    stbBar.Refresh;

    ExcelApp:= CreateOleObject('Excel.Application' );
    ExcelApp.Visible:=False;  //工作表显示

    ExcelApp.DisplayAlerts:=False;                  //不显示提示框
    MyWorkBook:=ExcelApp.WorkBooks.Open( filepath );   //打开模版

    try
      qry.SQL.Text:='select distinct '+P_Parts+' as FParts from  V_MakeList where FAgentID=:FAgentID and FMakeListNumber like :FMakeListNumber';
      qry.Parameters.FindParam('FAgentID').value:= UserFDepartmentID;
      qry.Parameters.FindParam('FMakeListNumber').value:= ListFNumber_MList+'%';
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
               +'Select FMakeParts as FParts,FItemID,FNumber,FName,FModel,UnitName,sum(FSuttle*FSumQry) as FSuttle,0 as ISleaf, '
               +'FFileNo,FBranchItemNumber,FClientFullName from V_MakeList where FAgentID='+inttostr(UserFDepartmentID)
               +' and FMakeListNumber like '''+ListFNumber_MList
               +'%'' and FMakeParts='''+p1+'''  group by FMakeParts,FItemID,FNumber,FName,FModel,UnitName,FFileNo,FBranchItemNumber,FClientFullName  '
               +'union '
               +'Select FMakeParts as FParts,0 as FItemID,''小计'' as FNumber,''【小计】'' as FName,'''' as FModel,''''as UnitName,sum(FSuttle*FSumQry) as FSuttle,1 as ISleaf, '
               +'FFileNo,FBranchItemNumber,FClientFullName from V_MakeList where FAgentID='+inttostr(UserFDepartmentID)+' and FMakeListNumber like '''+ListFNumber_MList+'%'' and FMakeParts='''+p1+''' group by FMakeParts,FFileNo,FBranchItemNumber,FClientFullName '
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
     MyWorkBook.WorkSheets[k].Cells[4,7].Value := Trim(mdata_MList_Pick.FieldByName('FBranchItemNumber').AsString); //图 号
     MyWorkBook.WorkSheets[k].Cells[5,3].Value := Trim(mdata_MList_Pick.FieldByName('FClientFullName').AsString); //项目名称
     MyWorkBook.WorkSheets[k].Cells[6,3].Value :=qry.FieldByName('FParts').AsString; //部件
    // MyWorkBook.WorkSheets[k].Cells[6,7].Value := Trim(mdata5.FieldByName('FWorkShop').AsString); //车间

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
          copyend:='G'+IntToStr(i);  //区域
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
          MyWorkBook.WorkSheets[k].Cells[i,6].Value := mdata_MList_Pick.FieldByName('FSuttle').AsString;
          mdata_MList_Pick.next;
          s:=s+1;
          i:=i+1;
        End;
      end;
      qry.Next ;
      ExcelApp.Visible:=False;
      If CB_Print.Checked=True then
        MyWorkBook.WorkSheets[k].PrintPreview;  //打印
      k:=k+1;
    end;
    MyWorkBook.WorkSheets[1].delete; //删除模版
    stbMsg.Caption:='提示信息：生产领料表:'+'【'+P_List+'】的信息导出完成!';
    stbBar.Refresh;
    If CB_Out.Checked=True then
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

procedure TFrm_DepBOMQry.Act_MakeBOM_SumExecute(Sender: TObject);
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

procedure TFrm_DepBOMQry.CB_Parts_MBOMPropertiesChange(Sender: TObject);
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

procedure TFrm_DepBOMQry.ToolButton3Click(Sender: TObject);
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

procedure TFrm_DepBOMQry.Act_MakeBOM_SwitchExecute(Sender: TObject);
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

procedure TFrm_DepBOMQry.CB_Type_MBOMPropertiesChange(Sender: TObject);
begin
  inherited;
  If (P_Isleaf_MBOM>0) and (PC_MakeBOM.ActivePage=TS_MakeBOM_Sum) then
     Act_MakeBOM_Switch.Execute;

end;

procedure TFrm_DepBOMQry.CB_Switch_MBOMPropertiesChange(Sender: TObject);
begin
  inherited;
  If (P_Isleaf_MBOM>0) and (PC_MakeBOM.ActivePage=TS_MakeBOM_Sum) then
     Act_MakeBOM_Switch.Execute;
end;

procedure TFrm_DepBOMQry.Act_PC_MakeListExecute(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
    If P_Isleaf_MList>0 then  //显示主表
    begin
      If MyItemListwhere(qry,Mdata_MList_M,'V_MakeItem','FMakeListNumber',ListFNumber_MList,' and FAgentID='+IntToStr(UserFDepartmentID),'FMakePartsCode') then
      begin
        cxGvColumn(cxGv_MList_M,Mdata_MList_M);
      end;
    end
    else
    begin
      Mdata_MList_M.Close;
      Mdata_MList.Close;
      Mdata_MList_Cut.Close;
      Mdata_MList_Pick.Close;
    end;


  Case P_Isleaf_MList of
    1:
    begin
      P_List :='('+mdata_MList_M['FBranchItemNumber']+')('+mdata_MList_M['FClientshortName']+')';
      If PC_MakeList.ActivePage=TS_MakeList then
      begin
        If MyItemListwhere(qry,Mdata_MList,'V_MakeList','FMakeListNumber',ListFNumber_MList,' and FAgentID='+IntToStr(UserFDepartmentID),'FMakeListNumber',) then
        begin
          cxGvColumn(cxGv_MList,Mdata_MList);
        end
        else
          Mdata_MList.Close;
        TB_MakeList.Visible:=False;
        TB_MakeCut.Visible:=False;
        TB_MakePick.Visible:=False;
      end;
      If PC_MakeList.ActivePage=TS_MakeList_Cut then
      begin
        If MyItemListFieldWhere(qry,Mdata_MList_Cut,' FCode,th,mc,gg,FNumber,FName,FModel,UnitName,FQry,FSuttle,Long,Width,Model,FProcess,FMakeListRemark,FMakeParts ','V_MakeList','FMakeListNumber',ListFNumber_MList,' and (FCode=''★★'' or  FName<>'''')  and FAgentID='+IntToStr(UserFDepartmentID),'FMakeParts,FNumber',) then
        begin
          cxGvColumn(cxGv_MList_Cut,Mdata_MList_Cut);
        end
        else
          Mdata_MList_Cut.Close;
        TB_MakeList.Visible:=False;
        TB_MakeCut.Visible:=False;
        TB_MakePick.Visible:=False;
      end;
      If PC_MakeList.ActivePage=TS_MakeList_Pick then
      begin
        Act_MakeList_Sum.Execute;
        TB_MakeList.Visible:=False;
        TB_MakeCut.Visible:=False;
        TB_MakePick.Visible:=False;
      end;
    end;
  end;
  Case P_Isleaf_MList of
    2:
    begin
      P_List :='('+mdata_MList_M['FPartsCode']+')('+mdata_MList_M['FPartsName']+')';
      If PC_MakeList.ActivePage=TS_MakeList then
      begin
        If MyItemListwhere(qry,Mdata_MList,'V_MakeList','FMakeListNumber',ListFNumber_MList,' and FAgentID='+IntToStr(UserFDepartmentID),'FFullNumber',) then
        begin
          cxGvColumn(cxGv_MList,Mdata_MList);
        end
        else
          Mdata_MList.Close;
        TB_MakeList.Visible:=mdlData.PermissionCheckRights(TFrm_DepBOMQry.ClassName,'打印');
        TB_MakeCut.Visible:=False;
        TB_MakePick.Visible:=False;
      end;
      If PC_MakeList.ActivePage=TS_MakeList_Cut then
      begin
        If MyItemListFieldWhere(qry,Mdata_MList_Cut,' FCode,th,mc,gg,FNumber,FName,FModel,UnitName,FQry,FSuttle,FSumSuttle,Long,Width,Model,FProcess,FMakeListRemark,FMakeParts ','V_MakeList','FMakeListNumber',ListFNumber_MList,' and (FCode=''★★'' or  FName<>'''')  and FAgentID='+IntToStr(UserFDepartmentID),'FMakeParts,FNumber',) then
        begin
          cxGvColumn(cxGv_MList_Cut,Mdata_MList_Cut);
        end
        else
          Mdata_MList_Cut.Close;
        TB_MakeList.Visible:=False;
        TB_MakeCut.Visible:=mdlData.PermissionCheckRights(TFrm_DepBOMQry.ClassName,'打印');
        TB_MakePick.Visible:=False;
      end;
      If PC_MakeList.ActivePage=TS_MakeList_Pick then
      begin
        Act_MakeList_Sum.Execute;
        TB_MakeList.Visible:=False;
        TB_MakeCut.Visible:=False;
        TB_MakePick.Visible:=mdlData.PermissionCheckRights(TFrm_DepBOMQry.ClassName,'打印');
      end;
    end;
  end;
  Case P_Isleaf_MList of
    3:
    begin
      P_List:='('+mdata_MList_M['FMakePartsCode']+')('+mdata_MList_M['FMakeParts']+')';
      If PC_MakeList.ActivePage=TS_MakeList then
      begin
        If MyItemListwhere(qry,Mdata_MList,'V_MakeList','FMakeListNumber',ListFNumber_MList,' and FAgentID='+IntToStr(UserFDepartmentID),'FFullNumber',) then
        begin
          cxGvColumn(cxGv_MList,Mdata_MList);
        end
        else
          Mdata_MList.Close;
        TB_MakeList.Visible:=mdlData.PermissionCheckRights(TFrm_DepBOMQry.ClassName,'打印');
        TB_MakeCut.Visible:=False;
        TB_MakePick.Visible:=False;
      end;
      If PC_MakeList.ActivePage=TS_MakeList_Cut then
      begin
        If MyItemListFieldWhere(qry,Mdata_MList_Cut,' FCode,th,mc,gg,FNumber,FName,FModel,UnitName,FQry,FSuttle,FSumSuttle,Long,Width,Model,FProcess,FMakeListRemark,FMakeParts ','V_MakeList','FMakeListNumber',ListFNumber_MList,' and (FCode=''★★'' or  FName<>'''')  and FAgentID='+IntToStr(UserFDepartmentID),'FMakeParts,FNumber',) then
        begin
          cxGvColumn(cxGv_MList_Cut,Mdata_MList_Cut);
        end
        else
          Mdata_MList_Cut.Close;
        TB_MakeList.Visible:=False;
        TB_MakeCut.Visible:=mdlData.PermissionCheckRights(TFrm_DepBOMQry.ClassName,'打印');
        TB_MakePick.Visible:=False;
      end;
      If PC_MakeList.ActivePage=TS_MakeList_Pick then
      begin
        Act_MakeList_Sum.Execute;
        TB_MakeList.Visible:=False;
        TB_MakeCut.Visible:=False;
        TB_MakePick.Visible:=mdlData.PermissionCheckRights(TFrm_DepBOMQry.ClassName,'打印');
      end;
    end;
  end;

end;

procedure TFrm_DepBOMQry.PC_MakeListChange(Sender: TObject);
begin
  inherited;
    Act_PC_MakeList.Execute;//页选

end;

procedure TFrm_DepBOMQry.Act_PC_MakeBOMExecute(Sender: TObject);
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
      end;
      1:
      begin
        If MyItemListFieldWhere(qry,Mdata_MBOM,'FCode,th,mc,gg,FQry,FSuttle,FSumSuttle,FFullNumber ','V_MakeBOM','FFullNumber',ListFNumber_MBOM,' and FAgentID='+IntToStr(UserFDepartmentID)+' and js<=2 ','FFullNumber') then
        begin
          cxGvColumn(cxGv_MBOM,Mdata_MBOM);
          mdata_MBOM.First;
          cxGrid_MBOM.SetFocus;
        end;
      end;
      2:
      begin
        If MyItemListFieldWhere(qry,Mdata_MBOM,' FCode,th,mc,gg,FQry,FSuttle,FSumSuttle,FFullNumber ','V_MakeBOM','FFullNumber',ListFNumber_MBOM,' and FAgentID='+IntToStr(UserFDepartmentID)+' and js<=3 ','FFullNumber') then
        begin
          cxGvColumn(cxGv_MBOM,Mdata_MBOM);
          mdata_MBOM.First;
        end;
      end;
      3:
      begin
        If MyItemListFieldWhere(qry,Mdata_MBOM,' * ','V_MakeBOM','FFullNumber',ListFNumber_MBOM,' and FAgentID='+IntToStr(UserFDepartmentID)+'  ','FFullNumber') then
        begin
          cxGvColumn(cxGv_MBOM,Mdata_MBOM);
          mdata_MBOM.First;
        end;
      end;
    end;
  end;
end;

procedure TFrm_DepBOMQry.Act_PC_DBOMExecute(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If PC_DBOM.ActivePage=TS_DBOM_Sum then
     Act_DBOM_Switch.Execute;
  If PC_DBOM.ActivePage=TS_DBOM then
  begin
   ShowPrograss('正在提取数据'+P_th_DBOM+'定额数据，请稍候……',self);

   stbMsg.Caption:='提示信息：正在提取数据【'+P_th_DBOM+'】设计定额数据，请稍候……';
   stbBar.Refresh;
   Case P_Isleaf_DBOM of
      0:
      begin
         mdata_DBOM.Close;
      end;
    end;
    Case P_Isleaf_DBOM of
     1:
      begin
        If MyItemListFieldWhere(qry,Mdata_DBOM,'FCode,th,mc,gg,FQry,FSuttle,FSumSuttle,FFullNumber ','V_DesignBOM_Structure','FFullNumber',ListFNumber_DBOM,' and js<=2 ','FFullNumber') then
        begin
          cxGvColumn(cxGv_DBOM,Mdata_DBOM);
          mdata_DBOM.First;
          cxGrid_DBOM.SetFocus;
        end;
      end;
    end;
    Case P_Isleaf_DBOM of
      2:
      begin
        If MyItemListFieldWhere(qry,Mdata_DBOM,' *  ','V_DesignBOM_Structure','FFullNumber',ListFNumber_DBOM,'','FFullNumber') then
        begin
          cxGvColumn(cxGv_DBOM,Mdata_DBOM);
          mdata_DBOM.First;
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
          stbMsg.Caption:='提示信息：设计定额【'+P_th_DBOM+'】导入最早日期：'+'【'+qry.FieldByName('FInputStartDate').AsString+'】';
          stbBar.Refresh;
        end;
     end;
   end;
 end;    
end;

procedure TFrm_DepBOMQry.PC_DBOMChange(Sender: TObject);
begin
  inherited;
  If P_Isleaf_DBOM>0 then
     Act_PC_DBOM.Execute;
end;

procedure TFrm_DepBOMQry.Act_DBOM_SwitchExecute(Sender: TObject);
var
  proc:TADOStoredProc;
begin
  proc:=TADOStoredProc.Create(self);
  proc.ConnectionString:=mdlData.ReadConnStr;
  proc.CommandTimeout:=500;

  If ListFNumber_DBOM='' then
     Exit;

  //P_Type:='材料汇总';
  //P_Parts:='FMakeParts';

  If RzRG_1.ItemIndex=0 then
     P_Type:='部件汇总';
  If RzRG_1.ItemIndex=1 then
     P_Type:='材料汇总';

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
  FParts_1.Caption:=CB_DBOM_Parts.Text;

end;

procedure TFrm_DepBOMQry.TB_Ref_SBOMClick(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If not TreeVeiwListWhere(qry,MyTreeView_SBOM,'VT_StockBOM',' and FAgentID='+IntToStr(UserFDepartmentID) ) then
  begin
    Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;



end;

procedure TFrm_DepBOMQry.MyTreeView_SBOMExpanding(Sender: TObject;
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
  qry.SQL.Text:='Select * from VT_StockBOM where FParentNumber= '''
               +PTree(Node.Data).ID+''' and FAgentID=:FAgentID order by FBranchItemNumber,FNumber';
  qry.Parameters.FindParam('FAgentID').value:=UserFDepartmentID;
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
    with MyTreeView_SBOM.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('Isleaf').value;
    end;
    qry.Next;
  end;

end;

procedure TFrm_DepBOMQry.MyTreeView_SBOMChange(Sender: TObject;
  Node: TTreeNode);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If Node = nil then Exit;
  with PTree(Node.Data)^ do
  begin
    ListFNumber_SBOM:=trim(PTree(Node.Data).FNumber);
    P_th_SBOM:=PTree(Node.Data).Caption;
    P_Isleaf_SBOM:=PTree(Node.Data).Isleaf ;

    Act_PC_StockBOM.Execute;

  end;


end;

procedure TFrm_DepBOMQry.Act_PC_StockBOMExecute(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If (P_Isleaf_SBOM>0) and (PC_StockBOM.ActivePage=TS_StockBOM_Sum) then
  begin
    P_Type:='明细清单';
    stbMsg.Caption:='提示信息：明细清单按:【'+P_th1+'】【'+CB_Switch_SBOM.Text+'】材料代用方案!';
    stbBar.Refresh;
    Act_StockBOM_Switch.Execute;
  end;

  If PC_StockBOM.ActivePage=TS_StockBOM_Mx then
  begin
    Case P_Isleaf_SBOM of
      0:
      begin
      end;
      1:
      begin
        If MyItemListFieldWhere(qry,Mdata_SBOM,'FCode,th,mc,gg,FQry,FSuttle,FSumSuttle,FFullNumber ','V_StockBOM','FFullNumber',ListFNumber_SBOM,' and FAgentID='+IntToStr(UserFDepartmentID)+' and js<=2 ','FFullNumber') then
        begin
          cxGvColumn(cxGv_SBOM,Mdata_SBOM);
          mdata_SBOM.First;
          cxGrid_SBOM.SetFocus;
        end;
      end;
      2:
      begin
        If MyItemListFieldWhere(qry,Mdata_SBOM,' FCode,th,mc,gg,FQry,FSuttle,FSumSuttle,FFullNumber ','V_StockBOM','FFullNumber',ListFNumber_SBOM,' and FAgentID='+IntToStr(UserFDepartmentID)+' and js<=3 ','FFullNumber') then
        begin
          cxGvColumn(cxGv_SBOM,Mdata_SBOM);
          mdata_SBOM.First;
        end;
      end;
      3:
      begin
        If MyItemListFieldWhere(qry,Mdata_SBOM,' * ','V_StockBOM','FFullNumber',ListFNumber_SBOM,' and FAgentID='+IntToStr(UserFDepartmentID)+'  ','FFullNumber') then
        begin
          cxGvColumn(cxGv_SBOM,Mdata_SBOM);
          mdata_SBOM.First;
        end;
      end;
    end;
  end;


end;

procedure TFrm_DepBOMQry.PC_StockBOMChange(Sender: TObject);
begin
  inherited;
  Act_PC_StockBOM.Execute;

end;

procedure TFrm_DepBOMQry.Act_StockBOM_SwitchExecute(Sender: TObject);
var
  proc:TADOStoredProc;
begin
  proc:=TADOStoredProc.Create(self);
  proc.ConnectionString:=mdlData.ReadConnStr;
  proc.CommandTimeout:=500;

  If ListFNumber_SBOM='' then
     Exit;

  try
    proc.ProcedureName:='P_BOM_Switch;1';
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=50;
      name := '@FFullNumber';
      value:=ListFNumber_SBOM;
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
      value:='V_StockBOM';
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
      value:=CB_Type_SBOM.Text;
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
    MData_SBOM_Sum.CopyFromDataSet(proc);
    cxGvColumn(cxGv_SBOM_Sum,MData_SBOM_Sum);
    MData_SBOM_Sum.First;
  finally
     ;
  end;
  Proc.Free;


end;

procedure TFrm_DepBOMQry.TB_Ref_SListClick(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If UserFDepartmentsort=1 then //事业部
  begin
    If not TreeVeiwListWhere(qry,MyTreeView_SList,'VT_Stock_Dep',' and FDepartmentID='+IntToStr(UserFDepartmentID)) then
      Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;
 If UserFDepartmentsort=2 then   //子公司
  begin
    If not TreeVeiwListWhere(qry,MyTreeView_SList,'VT_Stock_Dep',' and (FFactureID='+IntToStr(UserFDepartmentID)+' or FDepartmentID='+IntToStr(UserFDepartmentID)+') ') then
    Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;


end;

procedure TFrm_DepBOMQry.MyTreeView_SListExpanding(Sender: TObject;
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

  qry.SQL.Text:='Select * from VT_Stock_Dep where FParentNumber= '''
               +PTree(Node.Data).ID+''' order by FBranchItemNumber,FNumber';
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
    with MyTreeView_SList.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('Isleaf').value;
    end;
    qry.Next;
  end;


end;

procedure TFrm_DepBOMQry.MyTreeView_SListChange(Sender: TObject;
  Node: TTreeNode);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If Node = nil then Exit;
  with PTree(Node.Data)^ do
  begin
    ListFNumber_SList:=trim(PTree(Node.Data).FNumber);
    P_th_SList:=PTree(Node.Data).Caption;
    P_Isleaf_SList:=PTree(Node.Data).Isleaf;
   // P_FFactureID:= PTree(Node.Data).Status;

    Mdata_SList.DisableControls;
    cxGV_SList.DataController.DataModeController.GridMode:=True;
    cxGV_SList.DataController.DataModeController.SmartRefresh:=True;
    If PTree(Node.Data).Isleaf>0 then  //显示主表
    begin
      If MyItemListFieldWhere(qry,Mdata_SItem,' * ','V_StockItem','cast(FFactureID as nvarchar(20))+'';''+FFullNumber',ListFNumber_SList,' and FFactureID='+IntToStr(UserFDepartmentID),'FFullNumber',) then
      begin
        cxGvColumn(cxGv_SItem,Mdata_SItem);
      end;
    end
    else
    begin
      Mdata_SItem.Close;
      Mdata_SList.Close;
    end;
    Act_PC_StockList.Execute;//页选
  end;
  mdata_SList.EnableControls;
  cxGV_SList.DataController.DataModeController.GridMode:=False;
  cxGV_SList.DataController.DataModeController.SmartRefresh:=False;

end;

procedure TFrm_DepBOMQry.Act_PC_STockLIstExecute(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  Case P_Isleaf_SList of
    1:
    begin
      P_List :='('+mdata_SItem['FBranchItemNumber']+')('+mdata_SItem['FClientshortName']+')';
      //If MyItemListFieldWhere(qry,Mdata_SList,'Num,th,mcgg,FSumQry,FSumPackQry,FSuttle,FSumSuttle,FSumCheckYesSuttle,FSumCheckQry,FSumCheckYesQry,FSumCheckNoQry,FCheckQry,FCheckYesQry,FStockListRemark,FStockCheckNum,FCheckDetail,FBranchItemNumber,FPartsNumber,FListTeamID,FListTeamName,FListWorkShop,FStockListID ','V_StockList','cast(FFactureID as nvarchar(20))+'';''+FFullNumber',ListFNumber_SList,' and FFactureID='+IntToStr(UserFDepartmentID),'FFullNumber',) then
      If MyItemListFieldWhere(qry,Mdata_SList,' *,'''' as Sel  ','V_StockList','cast(FFactureID as nvarchar(20))+'';''+FFullNumber',ListFNumber_SList,' and FFactureID='+IntToStr(UserFDepartmentID),'FFullNumber',) then
      begin
        cxGvColumn(cxGv_SList,Mdata_SList);
      end
      else
        Mdata_SList.Close;
      TB_Stock.Visible:=False;
      TB_ColdWork.Visible:=False;
      TB_CheckStock.Visible:=False;
      TB_Stock_ML.Visible:=False;
    end;
  end;
  Case P_Isleaf_SList of
    2:
    begin
      P_List :='('+mdata_SItem['FBranchItemNumber']+')('+mdata_SItem['FPartsCode']+')('+mdata_SItem['FPartsName']+')';
      // If MyItemListFieldWhere(qry,Mdata_SList,'Num,th,mcgg,FSumQry,FSumPackQry,FSuttle,FSumSuttle,FSumCheckYesSuttle,FSumCheckQry,FSumCheckYesQry,FSumCheckNoQry,FCheckQry,FCheckYesQry,FStockListRemark,FStockCheckNum,FCheckDetail,FBranchItemNumber,FPartsNumber,FListTeamID,FListTeamName,FListWorkShop,FStockListID ','V_StockList','cast(FFactureID as nvarchar(20))+'';''+FFullNumber',ListFNumber_SList,' and FFactureID='+IntToStr(UserFDepartmentID),'FFullNumber',) then
      If MyItemListFieldWhere(qry,Mdata_SList,' *,'''' as Sel ','V_StockList','cast(FFactureID as nvarchar(20))+'';''+FFullNumber',ListFNumber_SList,' and FFactureID='+IntToStr(UserFDepartmentID),'FFullNumber',) then
      begin
        cxGvColumn(cxGv_SList,Mdata_SList);
      end
      else
        Mdata_SList.Close;
      TB_Stock.Visible:=mdlData.PermissionCheckRights(TFrm_DepBOMQry.ClassName,'打印');
      TB_ColdWork.Visible:=mdlData.PermissionCheckRights(TFrm_DepBOMQry.ClassName,'打印');
      TB_CheckStock.Visible:=mdlData.PermissionCheckRights(TFrm_DepBOMQry.ClassName,'打印');
      TB_Stock_ML.Visible:=mdlData.PermissionCheckRights(TFrm_DepBOMQry.ClassName,'打印');
    end;
  end;
  Case P_Isleaf_SList of
    3:
    begin
      P_List:='('+mdata_SItem['FBranchItemNumber']+')('+mdata_SItem['FWorkPartsNum']+')('+mdata_SItem['FWorkParts']+')';
      //If MyItemListFieldWhere(qry,Mdata_SList,'Num,th,mcgg,FSumQry,FSumPackQry,FSuttle,FSumSuttle,FSumCheckYesSuttle,FSumCheckQry,FSumCheckYesQry,FSumCheckNoQry,FCheckQry,FCheckYesQry,FStockListRemark,FStockCheckNum,FCheckDetail,FBranchItemNumber,FPartsNumber,FListTeamID,FListTeamName,FListWorkShop,FStockListID ','V_StockList','cast(FFactureID as nvarchar(20))+'';''+FFullNumber',ListFNumber_SList,' and FFactureID='+IntToStr(UserFDepartmentID),'FFullNumber',) then
      If MyItemListFieldWhere(qry,Mdata_SList,' * ,'''' as Sel ','V_StockList','cast(FFactureID as nvarchar(20))+'';''+FFullNumber',ListFNumber_SList,' and FFactureID='+IntToStr(UserFDepartmentID),'FFullNumber',) then
      begin
        cxGvColumn(cxGv_SList,Mdata_SList);
      end
      else
        Mdata_SList.Close;
      TB_Stock.Visible:=False;
      TB_ColdWork.Visible:=False;
      TB_CheckStock.Visible:=False;
      TB_Stock_ML.Visible:=mdlData.PermissionCheckRights(TFrm_DepBOMQry.ClassName,'打印');
    end;
  end;
end;

procedure TFrm_DepBOMQry.cxGV_SItemFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
var qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
    //If PC_MakeList.ActivePage=TS_MakeList then
    begin
      If (mData_SItem['FStockItemID']<>0) and (mData_SItem['FStockItemID']<>null) then
      begin
        If MyItemListID(qry,Mdata_SList,'V_StockList',' FStockItemID='+IntToStr(Mdata_SItem['FStockItemID']),'FFullNumber',) then
        begin
          cxGvColumn(cxGv_SList,Mdata_SList);
        end;
        P_List:='('+mdata_SItem['FWorkPartsNum']+')('+mdata_SItem['FWorkParts']+')';
      end;
    end;

end;

procedure TFrm_DepBOMQry.TB_StockClick(Sender: TObject);
var
  Query_Sp:TADOStoredProc;
  i,k,s,ReNum,ReNumLoop,R_Count,L:Integer;
  ExcelApp,MyWorkBook,mysheet,vLastSheet: Variant;
  filepath,savefilepath,Sqlstr,copystart,copyend,copystart1,aa,rs:string;
  ListQry:Tadoquery;
  qry,qry1:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry1:=TAdoQuery.Create(self);
  qry1.ConnectionString:=mdlData.ReadConnStr;

  filepath:=Extractfilepath(application.ExeName)+'入库清单模版.xls';
  if (Mdata_SList.Active) and (Mdata_SList.recordcount>0) then
  Begin
    If CB_Out.Checked=True then
    begin
      SaveDialog1.FileName:='入库清单'+P_List;
      SaveDialog1.Filter:='.xls';
      SaveDialog1.Execute;

      if (Mdata_SList.FieldByName('FBranchItemNumber').AsString<>'') Or (Mdata_SList.FieldByName('FPartsNumber').AsString<>Null) then
          savefilepath:=SaveDialog1.FileName+'.xls';

      if FileExists(savefilepath) then
      begin
        DeleteFile(savefilepath) ;
      end;
    end;
    stbMsg.Caption:='提示信息：正在导出入库清单:'+'【'+Mdata_SList.FieldByName('FPartsNumber').AsString+'】';
    stbBar.Refresh;

    ExcelApp:= CreateOleObject('Excel.Application' );
    ExcelApp.DisplayAlerts:=False;                  //不显示提示框
    MyWorkBook:=ExcelApp.WorkBooks.Open( filepath );   //打开模版
    //ExcelApp.Visible:=True;

    try
      qry.SQL.Text:='Select distinct FPartsName,FPartsCode from V_StockList where FFactureID=:FFactureID and cast(FFactureID as  varchar(20))+'';''+FFullNumber like :FFullNumber order by FPartsCode';
      qry.Parameters.FindParam('FFactureID').value:= UserFDepartmentID;
      qry.Parameters.FindParam('FFullNumber').value:= ListFNumber_SList+'%';
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
       qry1.SQL.Text:='select * from  V_StockList where FFactureID=:FFactureID and cast(FFactureID as  varchar(20))+'';''+FFullNumber like :FFullNumber and FPartsName=:FPartsName and FPartsCode=:FPartsCode order by FFullNumber';
       qry1.Parameters.FindParam('FFactureID').value:= UserFDepartmentID;
       qry1.Parameters.FindParam('FFullNumber').value:= ListFNumber_SList+'%';
       qry1.Parameters.FindParam('FPartsName').value:= qry.FieldByName('FPartsName').Value;
       qry1.Parameters.FindParam('FPartsCode').value:= qry.FieldByName('FPartsCode').Value;
       qry1.Open;
     finally
       ;
     end;
     if qry1.RecordCount>0 then
     begin
       Mdata_SList.Close;
       Mdata_SList.CopyFromDataSet(qry1);
     end;
     vLastSheet:=MyWorkBook.Sheets[MyWorkBook.Sheets.Count];
     MyWorkBook.Sheets[1].Copy(EmptyParam,vLastSheet);
     MyWorkBook.WorkSheets[k].Name:=IntToStr(k)+Mdata_SList['FPartsCode']+Mdata_SList['FPartsName'];
     MyWorkBook.WorkSheets[k].Activate;

      //标题
     MyWorkBook.WorkSheets[k].Cells[3,3].Value := Mdata_SList.FieldByName('FPartsNumber').AsString; //档 案 号
     MyWorkBook.WorkSheets[k].Cells[3,5].Value := Mdata_SList.FieldByName('FClientFullName').AsString+'  '+Mdata_SList.FieldByName('FItemModel').AsString; //项目名称

     //MyWorkBook.WorkSheets[k].Cells[1,1].Value:=AnsiReplaceStr(MyWorkBook.WorkSheets[k].Cells[1,1].Value,'A',UserFDepartmentName); //公司名称

       //循环行开始
      i:=6;

       //工作薄名称
      MyWorkBook.WorkSheets[k].Name:=Mdata_SList.FieldByName('FPartsCode').AsString+Mdata_SList.FieldByName('FPartsName').AsString;
      copystart:='A'+IntToStr(i);
      if Mdata_SList.recordcount>0 then
      Begin
        if Mdata_SList.recordcount>1 then
        Begin
          copystart:='A'+IntToStr(i);
          copystart1:='A'+IntToStr(i+1);
          copyend:='L'+IntToStr(i);  //区域
          ReNum:=Mdata_SList.recordcount-1+(25-((Mdata_SList.RecordCount+1) mod 25)); // 记录个数+空白个数
          L:=(25-((Mdata_SList.RecordCount+1) mod 25));//加空白个数
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
          R_Count:=Mdata_SList.recordcount;
        end;
        Mdata_SList.first;
        while not Mdata_SList.eof do
        Begin
           MyWorkBook.WorkSheets[k].Cells[i,1].Value := Mdata_SList.FieldByName('Num').AsString; //部件名称 +规格
          if  Mdata_SList.FieldByName('Num').AsString='★★' then  //黑体字
          begin
            rs:='A'+IntToStr(i)+':L'+IntToStr(i);
            MyWorkBook.worksheets[k].range[rs].font.bold:=True;
          end;
          MyWorkBook.WorkSheets[k].Cells[i,2].Value := Mdata_SList.FieldByName('th').AsString; //部件名称 +规格
          MyWorkBook.WorkSheets[k].Cells[i,4].Value := Mdata_SList.FieldByName('mc').AsString+Mdata_SList.FieldByName('SelRemark').AsString+' '+Mdata_SList.FieldByName('gg').AsString; //单位
          if  Mdata_SList.FieldByName('Num').AsString='★★' then
          begin
            MyWorkBook.WorkSheets[k].Cells[i,6].Value := ''; //单价
            MyWorkBook.WorkSheets[k].Cells[i,7].Value := ''; //净重
          end
          else
          begin
            MyWorkBook.WorkSheets[k].Cells[i,6].Value := Mdata_SList.FieldByName('FSumQry').AsString; //单价
            MyWorkBook.WorkSheets[k].Cells[i,7].Value := Mdata_SList.FieldByName('FSuttle').AsString; //净重
          end;
          MyWorkBook.WorkSheets[k].Cells[i,8].Value := Mdata_SList.FieldByName('FSumSuttle').AsString; //交货期
          MyWorkBook.WorkSheets[k].Cells[i,12].Value := Mdata_SList.FieldByName('FStockListRemark').AsString; //备注
          Mdata_SList.next;
          i:=i+1;
        End;
      end;
     //合计制单、审核栏
     MyWorkBook.WorkSheets[k].Cells[i+L,8].Value := '=SUMIF(A6:A'+IntToStr(i-1)+',"★★"'+',H6:H'+IntToStr(i-1)+')'; //净重合计

         // MyWorkBook.WorkSheets[k].Cells[i+L+1,3].Value:=Mdata3.FieldByName('FStockAudit').AsString; //校对
         // MyWorkBook.WorkSheets[k].Cells[i+L+1,9].Value:=Mdata3.FieldByName('FStockSubmit').AsString; //制单

      qry.Next ;
      If CB_Print.Checked=True then
      begin
        ExcelApp.Visible:=True;
        MyWorkBook.WorkSheets[k].PrintPreview;  //打印
      end;
      k:=k+1;

    end;
    MyWorkBook.WorkSheets[1].delete; //删除模版
    stbMsg.Caption:='提示信息：入库清单:'+'【'+Mdata_SList.FieldByName('FPartsName').AsString+'】的信息导出完成!';
    stbBar.Refresh;
    If CB_Out.Checked=True then
       MyWorkBook.saveas(savefilepath);

   // ExcelApp.Visible:=True;
   // MyWorkBook.WorkSheets[1].PrintPreview;

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

procedure TFrm_DepBOMQry.TB_Stock_MLClick(Sender: TObject);
var
  qry:TADOquery;
  Query_Sp:TADOStoredProc;
  i,k,s,ReNum,ReNumLoop,R_Count,L:Integer;
  ExcelApp,MyWorkBook,mysheet: Variant;
  filepath,savefilepath,Sqlstr,copystart,copyend,copystart1,aa,rs:string;
  ListQry:Tadoquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  try
    qry.SQL.Text:='select ''○○'' as Num,'
                 +'(case cast(FPartsCode as numeric(18,0)) when 0 then 1 else cast(FPartsCode as numeric(18,0)) end) as xh,'
                 +'FPartsNumber as th,FPartsCode,FPartsName as mc,''  '' gg,FItemListQry as FSumQry,sum(FSuttle) as FSuttle,sum(FItemListQry*FSumSuttle) as FSumSuttle,'
                 +'''      '' as FStockListRemark,''  '' as SelRemark ,FClientFullName,FBranchItemNumber as FPartsNumber,FBranchFileNo,FItemModel,FPartsCode,FPartsName,'' '' as FFullNumber,'' '' ssFullNumber '
                 +' from V_StockList where Num=''★★'' and FItemID=:FItemID  '
                 +' group by Num,FPartsNumber,FPartsCode,FPartsName,FItemListQry,FClientFullName,FBranchItemNumber,FBranchFileNo ,FItemModel,FPartsCode,FPartsName '
                 +' order by FBranchItemNumber,FPartsCode ';
    qry.Parameters.FindParam('FItemID').value:=Mdata_SItem['FItemID'];
    qry.Open;
  finally
     ;
  end;
  Mdata_SList.Close;
  Mdata_SList.CopyFromDataSet(qry);
  Mdata_SList.Active:=True;


  filepath:=Extractfilepath(application.ExeName)+'入库清单封面目录模版.xls';
  if (Mdata_SList.Active) and (Mdata_SList.recordcount>0) then
  Begin
    SaveDialog1.FileName:='入库清单封面目录('+Mdata_SItem.FieldByName('FBranchItemNumber').AsString+')' ;
    SaveDialog1.Filter:='.xls';
    SaveDialog1.Execute;

   If (Mdata_SItem.FieldByName('FBranchItemNumber').AsString<>'') Or (Mdata_SItem.FieldByName('FBranchItemNumber').AsString<>Null) then
        savefilepath:=SaveDialog1.FileName+'.xls';


    if FileExists(savefilepath) then
    begin
      DeleteFile(savefilepath) ;
    end;
    stbMsg.Caption:='提示信息：正在导出入库清单封面目录:'+'【'+Mdata_SItem.FieldByName('FBranchItemNumber').AsString+'】';
    stbBar.Refresh;

    ExcelApp:= CreateOleObject('Excel.Application' );
    MyWorkBook:=ExcelApp.WorkBooks.Open( filepath );

    MyWorkBook.WorkSheets[1].Name:='封面('+Mdata_SItem['FBranchItemNumber']+')';
    MyWorkBook.WorkSheets[1].Activate;

    MyWorkBook.WorkSheets[1].Cells[6,4].Value := Mdata_SItem['FClientFullName']; //用户全称
    MyWorkBook.WorkSheets[1].Cells[8,4].Value := Mdata_SItem['FItemModel']; //产品型号
    MyWorkBook.WorkSheets[1].Cells[10,4].Value := Mdata_SItem['FItemNumber']; //图号
    MyWorkBook.WorkSheets[1].Cells[12,4].Value := Mdata_SItem['FPactNo']; //合同号
    MyWorkBook.WorkSheets[1].Cells[14,4].Value := Mdata_SItem['FStockNum'];//编目号

    MyWorkBook.WorkSheets[2].Name:='目录('+Mdata_SItem['FBranchItemNumber']+')';
    MyWorkBook.WorkSheets[2].Activate;

    MyWorkBook.WorkSheets[2].Cells[3,3].Value := Mdata_SItem.FieldByName('FPartsNumber').AsString; //档 案 号
    MyWorkBook.WorkSheets[2].Cells[3,5].Value := Mdata_SItem.FieldByName('FClientFullName').AsString+'  '+Mdata_SItem.FieldByName('FItemModel').AsString; //项目名称
    i:=6;

    copystart:='A'+IntToStr(i);
    if Mdata_SList.recordcount>0 then
    Begin
      if Mdata_SList.recordcount>1 then
      Begin
        copystart:='A'+IntToStr(i);
        copystart1:='A'+IntToStr(i+1);
        copyend:='L'+IntToStr(i);
        ReNum:=Mdata_SList.recordcount-1+(25-((Mdata_SList.RecordCount+1) mod 25));
        L:=Mdata_SList.recordcount-1+(25-((Mdata_SList.RecordCount+1) mod 25));
        while ReNum>0 do
        Begin
          ExcelApp.ActiveSheet.Range[copystart+':'+copyend].Copy;
          ExcelApp.ActiveSheet.Rows[i+1].Insert;
          ExcelApp.ActiveSheet.Range[copystart1].PasteSpecial;
          Renum:=Renum-1;
        end;
        //合计制单、审核栏
        MyWorkBook.WorkSheets[2].Cells[i+L+1,7].Value := '=SUMIF(A6:A'+IntToStr(i-1)+',"○○"'+',G6:G'+IntToStr(i-1)+')'; //净重合计
      End
      else
      Begin
        R_Count:=Mdata_SList.recordcount;
      end;
      Mdata_SList.first;
      while not Mdata_SList.eof do
      Begin
        MyWorkBook.WorkSheets[2].Cells[i,1].Value := Mdata_SList.FieldByName('Num').AsString; //部件名称 +规格
        MyWorkBook.WorkSheets[2].Cells[i,2].Value := Mdata_SList.FieldByName('th').AsString; //部件名称 +规格
        MyWorkBook.WorkSheets[2].Cells[i,4].Value := Mdata_SList.FieldByName('mc').AsString+Mdata_SList.FieldByName('SelRemark').AsString+' '+Mdata_SList.FieldByName('gg').AsString; //单位
        MyWorkBook.WorkSheets[2].Cells[i,7].Value := Mdata_SList.FieldByName('FSuttle').AsString; //金  额
        Mdata_SList.next;
        i:=i+1;
      End;
    end;
    stbMsg.Caption:='提示信息：入库清单封面目录:'+'【'+Mdata_SItem.FieldByName('FBranchItemNumber').AsString+'】的信息导出完成!';
    stbBar.Refresh;
    MyWorkBook.saveas(savefilepath);

    ExcelApp.Visible:=True;
    MyWorkBook.WorkSheets[1].PrintPreview;
    MyWorkBook.WorkSheets[2].PrintPreview;

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

procedure TFrm_DepBOMQry.TB_CheckQryClick(Sender: TObject);
begin
  Act_CheckQry.Execute ;
  Act_PC_StockList.Execute;//页选
end;

procedure TFrm_DepBOMQry.Act_MenuExecute(Sender: TObject);
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

procedure TFrm_DepBOMQry.Act_Menu_SetExecute(Sender: TObject);
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

procedure TFrm_DepBOMQry.N_EditClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_DepBOMQry.N_FilterClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_DepBOMQry.N_SortClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_DepBOMQry.N_GroupClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_DepBOMQry.N_SetClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_DepBOMQry.N_OutClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_DepBOMQry.cxGrid_SItemContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
    GV:='cxGV_SItem';
    Gm:='mdata_SItem';
    Gr:='cxGrid_SItem';
    Act_Menu_Set.Execute;

end;

procedure TFrm_DepBOMQry.cxGrid_SListContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
    GV:='cxGV_SList';
    Gm:='mdata_SList';
    Gr:='cxGrid_SList';
    Act_Menu_Set.Execute;

end;

procedure TFrm_DepBOMQry.cxGrid_DBOMContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
    GV:='cxGV_DBOM';
    Gm:='mdata_DBOM';
    Gr:='cxGrid_DBOM';
    Act_Menu_Set.Execute;

end;

procedure TFrm_DepBOMQry.cxGrid_DBOM_SumContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
    GV:='cxGV_DBOM_Sum';
    Gm:='mdata_DBOM_Sum';
    Gr:='cxGrid_DBOM_Sum';
    Act_Menu_Set.Execute;

end;

procedure TFrm_DepBOMQry.cxGrid_MBOMContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
    GV:='cxGV_MBOM';
    Gm:='mdata_MBOM';
    Gr:='cxGrid_MBOM';
    Act_Menu_Set.Execute;

end;

procedure TFrm_DepBOMQry.cxGrid_MBOM_SumContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
    GV:='cxGV_MBOM_Sum';
    Gm:='mdata_MBOM_Sum';
    Gr:='cxGrid_MBOM_Sum';
    Act_Menu_Set.Execute;

end;

procedure TFrm_DepBOMQry.cxGrid_MListContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
    GV:='cxGV_MList';
    Gm:='mdata_MList';
    Gr:='cxGrid_MList';
    Act_Menu_Set.Execute;

end;

procedure TFrm_DepBOMQry.cxGrid_MList_CutContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
    GV:='cxGV_MList_Cut';
    Gm:='mdata_MList_Cut';
    Gr:='cxGrid_MList_Cut';
    Act_Menu_Set.Execute;

end;

procedure TFrm_DepBOMQry.cxGrid_MList_PickContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
    GV:='cxGV_MList_Pick';
    Gm:='mdata_MList_Pick';
    Gr:='cxGrid_MList_Pick';

end;

procedure TFrm_DepBOMQry.cxGrid_SBOMContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
    GV:='cxGV_SBOM';
    Gm:='mdata_SBOM';
    Gr:='cxGrid_SBOM';
    Act_Menu_Set.Execute;

end;

procedure TFrm_DepBOMQry.cxGrid_SBOM_SumContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
    GV:='cxGV_SBOM_Sum';
    Gm:='mdata_SBOM_Sum';
    Gr:='cxGrid_SBOM_Sum';
    Act_Menu_Set.Execute;

end;

procedure TFrm_DepBOMQry.cxGrid_MList_MContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
    GV:='cxGV_MList_M';
    Gm:='mdata_MList_M';
    Gr:='cxGrid_MList_M';
    Act_Menu_Set.Execute;

end;

procedure TFrm_DepBOMQry.Act_PackQryExecute(Sender: TObject);
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
    If P_Retinf1<>'' then
       Messagedlg(P_Retinf1,mtInformation,[mbok],0);
  finally
    ;
  end;
  proc.Free;

end;

procedure TFrm_DepBOMQry.TB_PackQryClick(Sender: TObject);
begin
  inherited;
  Act_PackQry.Execute;
  Act_PC_StockList.Execute;//页选
  
end;

procedure TFrm_DepBOMQry.TB_Ref2Click(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
 // If not TreeVeiwListWhere(qry,MyTreeView_Pack,'VT_Pack_Dep',' and FPackNo<>0 ') then
  If not TreeVeiwList(qry,MyTreeView_Pack,'VT_Pack', ) then
      Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);

end;

procedure TFrm_DepBOMQry.MyTreeView_PackExpanding(Sender: TObject;
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
     qry.SQL.Text:='Select * from VT_Pack where FParentNumber= '''
                  +PTree(Node.Data).ID+''' order by FBranchItemNumber,FNumber';
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
    with MyTreeView_Pack.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('Isleaf').value;
    end;
    qry.Next;
  end;


end;

procedure TFrm_DepBOMQry.MyTreeView_PackChange(Sender: TObject;
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
      If MyItemListFieldWhere(qry,Mdata_PItem,' *  ','V_PackItem','FFullNumber_Dep',ListFNumber_Pack,' and FPackNo<>0 ','FFullNumber_Dep') then
      //If MyItemList(qry,Mdata_PItem,'V_PackItem','FFullNumber',ListFNumber_Pack,'FFullNumber') then
      cxGvColumn(cxGv_PList,Mdata_PList);
    //  P_Move:=1;
    end
    else
    begin
      mdata_PItem.Close;
      mdata_PList.Close;
    end;
{
    Case PTree(Node.Data).Isleaf of
      0:
      begin
       // Act_SetClose_Tree2.Execute;
      end;
      1:
      begin
        try
          qry.SQL.Text:='select min(FPackNum) as FPackNum1,max(FPackNum) as FPackNum2 from V_PackItem where FItemID=:FItemID and FpackNo<>0 and FPackClass=''B'' ';
          qry.Parameters.FindParam('FItemID').value:=mdata_PItem['FItemID'];
          qry.Open;
        finally
          ;
        end;
        if qry.RecordCount>0 then
        begin
          E_FPackNum1.Text:=qry.FieldByName('FPackNum1').AsString;
          E_FPackNum2.Text:=qry.FieldByName('FPackNum2').AsString;
        end;
       // Act_SetOpen_Tree2.Execute;

      end;
      2:
      begin
        //Act_SetOpen_Tree2.Execute;
      end;
    end; //case
    }
  end;

  
end;

procedure TFrm_DepBOMQry.cxGV_PItemFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
var qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  //If P_Move=1 then
  begin
    If (mdata_PItem['FFullNumber_Dep']<>'') and (mdata_PItem['FFullNumber_Dep']<>Null) and (mdata_PItem.RecordCount>0) then
    begin
      If MyItemList(qry,Mdata_PList,'V_PackList','cast(FDepartmentID as nvarchar(20))+'';''+FItemNo+'';''+FPackNum',mdata_PItem['FFullNumber_Dep'],'FFullNumber') then
    end;
  end;

end;

procedure TFrm_DepBOMQry.TB_SaveClick(Sender: TObject);
var
 qry:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If application.MessageBox(Pchar('系统提示：是否对：【'+P_th_SList+'】的单据进行派工？'+chr(13)+chr(13)
                                 +'确定要对本单据进行派工吗？'),'系统提示',MB_ICONINFORMATION+MB_YESNO)=6 then
  begin
    mdata_SList.First;
    mdata_SList.DisableControls;
    mdata_SList.First;
    while not mdata_SList.eof do
    begin
      try
        qry.SQL.Text:='Update T_StockList Set FListTeamID=:FListTeamID where FStockListID=:FStockListID';
        If mdata_SList['FListTeamName']=''  then
           qry.Parameters.FindParam('FListTeamID').value:= 0
        else
          qry.Parameters.FindParam('FListTeamID').value:=mdata_SList['FListTeamID'];
        qry.Parameters.FindParam('FStockListID').value:=mdata_SList['FStockListID'];
        qry.ExecSQL;
      finally
       ;
      end;
      mdata_SList.Next;
    end;
    application.MessageBox('冷作派工完毕！','系统提示',MB_ICONINFORMATION);
  end;
  mdata_SList.EnableControls;

  TB_Save.Visible:=False;
  TB_Edit.Enabled:=True;

  Act_PC_StockList.Execute;//页选


end;

procedure TFrm_DepBOMQry.ToolButton10Click(Sender: TObject);
begin
  inherited;
  Act_Weigth.Execute;
end;

procedure TFrm_DepBOMQry.Act_WeigthExecute(Sender: TObject);
var
  proc:TADOStoredProc;
begin
  proc:=TADOStoredProc.Create(self);
  proc.ConnectionString:=mdlData.ReadConnStr;
  proc.CommandTimeout:=500;
  try
    proc.ProcedureName:='P_Stock_Weight;1';
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=50;
      name := '@ListItemFNumber';
      value:=Mdata_SItem['FFullNumber'];
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftInteger;
      Direction := pdinput;
      name := '@UserFAgentID';
      value:=Mdata_SItem['FDepartmentID'];
    end;

    proc.Open;
    Mdata_SList.Close;
    Mdata_SList.CopyFromDataSet(proc);
    Mdata_SList.Active:=True;
  finally
     ;
  end;
end;

procedure TFrm_DepBOMQry.cxGV_SListCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  If cxGV_SList.Controller.FocusedRowIndex=AViewInfo.RecordViewInfo.Index  then  //是否是选中行
     else
  If ((StrToFloat(AViewInfo.GridRecord.DisplayTexts[FSumQry_SList.Index])-StrToFloat(AViewInfo.GridRecord.DisplayTexts[FSumCheckYesQry_SList.Index]))<>0) and
     ((AViewInfo.GridRecord.DisplayTexts[Num_SList.Index]<>'★★') and (AViewInfo.GridRecord.DisplayTexts[SelRemark_SList.Index]<>'(按以下入库)'))  then
  begin
    ACanvas.Canvas.brush.Color := clInactiveCaptionText;      //设置行颜色
    ACanvas.Canvas.Font.Color:=clBlue; //字体颜色
    ACanvas.FillRect(AViewInfo.Bounds);
  end;

  If (StrToFloat(AViewInfo.GridRecord.DisplayTexts[FSumQry_SList.Index])<StrToFloat(AViewInfo.GridRecord.DisplayTexts[FSumCheckYesQry_SList.Index])) then
  begin
    ACanvas.Canvas.brush.Color := clRed  ;    //设置行颜色
    ACanvas.Canvas.Font.Color:=clRed; //字体颜色
    ACanvas.FillRect(AViewInfo.Bounds);
  end;


end;

procedure TFrm_DepBOMQry.FListTeamName_3PropertiesEditValueChanged(
  Sender: TObject);
var  qry: TADOQuery;
begin
   qry:=TADOQuery.Create(self);
   qry.ConnectionString:=mdlData.ReadConnStr;
   mdata_SList.Edit;
   mdata_SList.Post;
   mdata_SList.Edit;
   if mdata_SList['FListTeamName']=Null then
      mdata_SList['FListTeamName']:='';
   mdata_SList.Post;
   try
     qry.SQL.Text:='select * from T_Team where FTeamName=:FTeamName ';
     qry.Parameters.FindParam('FTeamName').Value:=Trim(mdata_SList['FListTeamName']);
     qry.Open;
   finally
     ;
   end;

   If qry.RecordCount=1 then
   begin
     mdata_SList.Edit;
     mdata_SList['FListTeamID']:=qry.FieldByName('FTeamID').Value;
     mdata_SList['FListWorkShop']:=qry.FieldByName('FWorkShop').Value;
     mdata_SList.Post;
     Exit;
   end
   else
   begin
     mdata_SList.Edit;
     mdata_SList['FListTeamID']:=0;
     mdata_SList['FListTeamName']:='';
     mdata_SList['FListWorkShop']:='';
     mdata_SList.Post;
   end;

end;

procedure TFrm_DepBOMQry.FListTeamName_SListHeaderClick(Sender: TObject);
Var
  qry: TADOQuery;
  I_index,P_Sel_FListTeamID:Integer;
  P_Sel_FListTeamName,P_Sel_FWorkShop:String;
begin
  If mData_SList.RecordCount<=0 then
    Exit;
  I_index:=mData_SList.RecNo ;

  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  P_Sel_FListTeamName:=mData_SList['FListTeamName'];
  P_Sel_FListTeamID:=mData_SList['FListTeamID'];
  P_Sel_FWorkShop:=mData_SList['FListWorkShop'];
  mData_SList.First;
  while not mData_SList.eof do
  begin
    mData_SList.Edit;
    If (mData_SList['FListTeamName']=Null) or (mData_SList['FListTeamName']='')  then
    begin
      mData_SList.Edit;
      mData_SList['FListTeamName']:=P_Sel_FListTeamName;
      mData_SList['FListTeamID']:=P_Sel_FListTeamID;
      mData_SList['FListWorkShop']:=P_Sel_FWorkShop;
      mData_SList['Sel']:=True;
      mData_SList.Post;
    end;
    If (P_Sel_FListTeamName='') and (P_Sel_FWorkShop='') and (P_Sel_FListTeamID=0) then
    begin
      mData_SList.Edit;
      mData_SList['FListTeamName']:='';
      mData_SList['FListTeamID']:=0;
      mData_SList['FListWorkShop']:='';
      mData_SList['Sel']:=True;
      mData_SList.Post;
    end;

    mData_SList.Next;
  end;
  If (I_index<mData_SList.RecordCount) and (I_index<>-1) then
     mData_SList.RecNo :=I_index
  else
     mData_SList.Last;
end;

procedure TFrm_DepBOMQry.Mdata_SListAfterEdit(DataSet: TDataSet);
begin
  inherited;
  if P_state=1 then //修改
  begin
    DataSet['IsEdit']:=True;
    TB_Save.Visible:=True;
  end;  
end;

procedure TFrm_DepBOMQry.TB_EditClick(Sender: TObject);
begin
  inherited;
  P_state :=1; //修改
  cxGV_SList.OptionsData.Editing:=True;
  FListTeamName_SList.Options.Editing:=True;
  Sel.Options.Editing:=True;
  TB_Edit.Enabled:=False;

end;

procedure TFrm_DepBOMQry.cxGrid_SListExit(Sender: TObject);
begin
  inherited;
  If TB_Save.Visible then
  If messagedlg('数据已修改是否更新？',mtInformation,[mbyes,mbno],0)=mryes then
     TB_Save.Click;

end;

procedure TFrm_DepBOMQry.TB_ColdWorkClick(Sender: TObject);
var
  Query_Sp:TADOStoredProc;
  i,k,s,ReNum,ReNumLoop,R_Count,L:Integer;
  ExcelApp,MyWorkBook,mysheet,vLastSheet: Variant;
  filepath,savefilepath,Sqlstr,copystart,copyend,copystart1,aa,rs:string;
  ListQry:Tadoquery;
  qry,qry1:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry1:=TAdoQuery.Create(self);
  qry1.ConnectionString:=mdlData.ReadConnStr;

  filepath:=Extractfilepath(application.ExeName)+'冷作任务单模版.xls';
  if (Mdata_SList.Active) and (Mdata_SList.recordcount>0) then
  Begin
    If CB_Out.Checked=True then
    begin
      SaveDialog1.FileName:='冷作任务单'+P_List;
      SaveDialog1.Filter:='.xls';
      SaveDialog1.Execute;

      if (Mdata_SList.FieldByName('FBranchItemNumber').AsString<>'') Or (Mdata_SList.FieldByName('FPartsNumber').AsString<>Null) then
          savefilepath:=SaveDialog1.FileName+'.xls';

      if FileExists(savefilepath) then
      begin
        DeleteFile(savefilepath) ;
      end;
    end;
    stbMsg.Caption:='提示信息：正在导出冷作任务单:'+'【'+Mdata_SList.FieldByName('FPartsNumber').AsString+'】';
    stbBar.Refresh;

    ExcelApp:= CreateOleObject('Excel.Application' );
    ExcelApp.DisplayAlerts:=False;                  //不显示提示框
    MyWorkBook:=ExcelApp.WorkBooks.Open( filepath );   //打开模版
    //ExcelApp.Visible:=True;

    try
      qry.SQL.Text:='Select distinct FPartsName,FPartsCode from V_StockList where FFactureID=:FFactureID and cast(FFactureID as  varchar(20))+'';''+FFullNumber like :FFullNumber order by FPartsCode';
      qry.Parameters.FindParam('FFactureID').value:= UserFDepartmentID;
      qry.Parameters.FindParam('FFullNumber').value:= ListFNumber_SList+'%';
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
       qry1.SQL.Text:='select * from  V_StockList where FFactureID=:FFactureID and cast(FFactureID as  varchar(20))+'';''+FFullNumber like :FFullNumber and FPartsName=:FPartsName and FPartsCode=:FPartsCode order by FFullNumber';
       qry1.Parameters.FindParam('FFactureID').value:= UserFDepartmentID;
       qry1.Parameters.FindParam('FFullNumber').value:= ListFNumber_SList+'%';
       qry1.Parameters.FindParam('FPartsName').value:= qry.FieldByName('FPartsName').Value;
       qry1.Parameters.FindParam('FPartsCode').value:= qry.FieldByName('FPartsCode').Value;
       qry1.Open;
     finally
       ;
     end;
     if qry1.RecordCount>0 then
     begin
       Mdata_SList.Close;
       Mdata_SList.CopyFromDataSet(qry1);
     end;
     vLastSheet:=MyWorkBook.Sheets[MyWorkBook.Sheets.Count];
     MyWorkBook.Sheets[1].Copy(EmptyParam,vLastSheet);
     MyWorkBook.WorkSheets[k].Name:=IntToStr(k)+Mdata_SList['FPartsCode']+Mdata_SList['FPartsName'];
     MyWorkBook.WorkSheets[k].Activate;

      //标题
     MyWorkBook.WorkSheets[k].Cells[1,1].Value:=AnsiReplaceStr(MyWorkBook.WorkSheets[k].Cells[1,1].Value,'A',UserFDepartmentName); //公司名称
     MyWorkBook.WorkSheets[k].Cells[5,3].Value := Mdata_SList.FieldByName('FPartsNumber').AsString; //档 案 号
     MyWorkBook.WorkSheets[k].Cells[5,5].Value := Mdata_SList.FieldByName('FClientFullName').AsString+'  '+Mdata_SList.FieldByName('FItemModel').AsString; //项目名称


       //循环行开始
      i:=7;

       //工作薄名称
      MyWorkBook.WorkSheets[k].Name:=Mdata_SList.FieldByName('FPartsCode').AsString+Mdata_SList.FieldByName('FPartsName').AsString;
      copystart:='A'+IntToStr(i);
      if Mdata_SList.recordcount>0 then
      Begin
        if Mdata_SList.recordcount>1 then
        Begin
          copystart:='A'+IntToStr(i);
          copystart1:='A'+IntToStr(i+1);
          copyend:='L'+IntToStr(i);  //区域
          ReNum:=Mdata_SList.recordcount-1+(35-((Mdata_SList.RecordCount+1) mod 35)); // 记录个数+空白个数
          L:=(35-((Mdata_SList.RecordCount+1) mod 35));//加空白个数
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
          R_Count:=Mdata_SList.recordcount;
        end;
        Mdata_SList.first;
        while not Mdata_SList.eof do
        Begin
           MyWorkBook.WorkSheets[k].Cells[i,1].Value := Mdata_SList.FieldByName('Num').AsString; //部件名称 +规格
          if  Mdata_SList.FieldByName('Num').AsString='★★' then  //黑体字
          begin
            rs:='A'+IntToStr(i)+':L'+IntToStr(i);
            MyWorkBook.worksheets[k].range[rs].font.bold:=True;
          end;
          MyWorkBook.WorkSheets[k].Cells[i,2].Value := Mdata_SList.FieldByName('th').AsString; //部件名称 +规格
          MyWorkBook.WorkSheets[k].Cells[i,4].Value := Mdata_SList.FieldByName('mc').AsString+Mdata_SList.FieldByName('SelRemark').AsString+' '+Mdata_SList.FieldByName('gg').AsString; //单位
          if  Mdata_SList.FieldByName('Num').AsString='★★' then
          begin
            MyWorkBook.WorkSheets[k].Cells[i,6].Value := ''; //单价
            MyWorkBook.WorkSheets[k].Cells[i,7].Value := ''; //净重
          end
          else
          begin
            MyWorkBook.WorkSheets[k].Cells[i,6].Value := Mdata_SList.FieldByName('FSumQry').AsString; //单价
            MyWorkBook.WorkSheets[k].Cells[i,7].Value := Mdata_SList.FieldByName('FSuttle').AsString; //净重
          end;
          MyWorkBook.WorkSheets[k].Cells[i,8].Value := Mdata_SList.FieldByName('FSumSuttle').AsString; //总重
          MyWorkBook.WorkSheets[k].Cells[i,9].Value := Mdata_SList.FieldByName('FListTeamName').AsString; //班组
          MyWorkBook.WorkSheets[k].Cells[i,10].Value := Mdata_SList.FieldByName('FStockListRemark').AsString; //备注
          Mdata_SList.next;
          i:=i+1;
        End;
      end;
      //合计制单、审核栏
      MyWorkBook.WorkSheets[k].Cells[i+L,8].Value := '=SUMIF(A7:A'+IntToStr(i-1)+',"★★"'+',H7:H'+IntToStr(i-1)+')'; //净重合计

      qry.Next ;
      If CB_Print.Checked=True then
      begin
        ExcelApp.Visible:=True;
        MyWorkBook.WorkSheets[k].PrintPreview;  //打印
      end;

      k:=k+1;

    end;
    MyWorkBook.WorkSheets[1].delete; //删除模版
    stbMsg.Caption:='提示信息：冷作任务单:'+'【'+Mdata_SList.FieldByName('FPartsName').AsString+'】的信息导出完成!';
    stbBar.Refresh;
    If CB_Out.Checked=True then
       MyWorkBook.saveas(savefilepath);

   // ExcelApp.Visible:=True;
   // MyWorkBook.WorkSheets[1].PrintPreview;

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

procedure TFrm_DepBOMQry.Act_CheckQryExecute(Sender: TObject);
var
  proc:TADOStoredProc;
  P_Retinf1:String;

begin
  proc:=TADOStoredProc.Create(self);
  proc.ConnectionString:=mdlData.ReadConnStr;
  proc.CommandTimeout:=500;
  try
    proc.ProcedureName:='P_Check_CheckQry;1';
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

procedure TFrm_DepBOMQry.TB_CheckStockClick(Sender: TObject);
var
  Query_Sp:TADOStoredProc;
  i,k,s,ReNum,ReNumLoop,R_Count,L:Integer;
  ExcelApp,MyWorkBook,mysheet,vLastSheet: Variant;
  filepath,savefilepath,Sqlstr,copystart,copyend,copystart1,aa,rs:string;
  ListQry:Tadoquery;
  qry,qry1:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry1:=TAdoQuery.Create(self);
  qry1.ConnectionString:=mdlData.ReadConnStr;

  filepath:=Extractfilepath(application.ExeName)+'生产检验任务单模版.xls';
  if (Mdata_SList.Active) and (Mdata_SList.recordcount>0) then
  Begin
    If CB_Out.Checked=True then
    begin
      SaveDialog1.FileName:='冷作任务单'+P_List;
      SaveDialog1.FileName:='生产检验任务单'+P_List;
      SaveDialog1.Filter:='.xls';
      SaveDialog1.Execute;

      if (Mdata_SList.FieldByName('FBranchItemNumber').AsString<>'') Or (Mdata_SList.FieldByName('FPartsNumber').AsString<>Null) then
          savefilepath:=SaveDialog1.FileName+'.xls';

      if FileExists(savefilepath) then
      begin
        DeleteFile(savefilepath) ;
      end;
    end;
    stbMsg.Caption:='提示信息：正在导出生产检验任务单:'+'【'+Mdata_SList.FieldByName('FPartsNumber').AsString+'】';
    stbBar.Refresh;

    ExcelApp:= CreateOleObject('Excel.Application' );
    ExcelApp.DisplayAlerts:=False;                  //不显示提示框
    MyWorkBook:=ExcelApp.WorkBooks.Open( filepath );   //打开模版
    //ExcelApp.Visible:=True;

    try
      qry.SQL.Text:='Select distinct FPartsName,FPartsCode from V_StockList where FFactureID=:FFactureID and cast(FFactureID as  varchar(20))+'';''+FFullNumber like :FFullNumber order by FPartsCode';
      qry.Parameters.FindParam('FFactureID').value:= UserFDepartmentID;
      qry.Parameters.FindParam('FFullNumber').value:= ListFNumber_SList+'%';
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
       qry1.SQL.Text:='select * from  V_StockList where FFactureID=:FFactureID and cast(FFactureID as  varchar(20))+'';''+FFullNumber like :FFullNumber and FPartsName=:FPartsName and FPartsCode=:FPartsCode order by FFullNumber';
       qry1.Parameters.FindParam('FFactureID').value:= UserFDepartmentID;
       qry1.Parameters.FindParam('FFullNumber').value:= ListFNumber_SList+'%';
       qry1.Parameters.FindParam('FPartsName').value:= qry.FieldByName('FPartsName').Value;
       qry1.Parameters.FindParam('FPartsCode').value:= qry.FieldByName('FPartsCode').Value;
       qry1.Open;
     finally
       ;
     end;
     if qry1.RecordCount>0 then
     begin
       Mdata_SList.Close;
       Mdata_SList.CopyFromDataSet(qry1);
     end;
     vLastSheet:=MyWorkBook.Sheets[MyWorkBook.Sheets.Count];
     MyWorkBook.Sheets[1].Copy(EmptyParam,vLastSheet);
     MyWorkBook.WorkSheets[k].Name:=IntToStr(k)+Mdata_SList['FPartsCode']+Mdata_SList['FPartsName'];
     MyWorkBook.WorkSheets[k].Activate;

      //标题
     MyWorkBook.WorkSheets[k].Cells[1,1].Value:=AnsiReplaceStr(MyWorkBook.WorkSheets[k].Cells[1,1].Value,'A',UserFDepartmentName); //公司名称
     MyWorkBook.WorkSheets[k].Cells[5,3].Value := Mdata_SList.FieldByName('FPartsNumber').AsString; //
     MyWorkBook.WorkSheets[k].Cells[5,5].Value := Mdata_SList.FieldByName('FClientFullName').AsString+'  '+Mdata_SList.FieldByName('FItemModel').AsString; //项目名称
     MyWorkBook.WorkSheets[k].Cells[5,13].Value := Mdata_SList.FieldByName('FBranchFileNo').AsString; //档 案 号


       //循环行开始
      i:=7;

       //工作薄名称
      MyWorkBook.WorkSheets[k].Name:=Mdata_SList.FieldByName('FPartsCode').AsString+Mdata_SList.FieldByName('FPartsName').AsString;
      copystart:='A'+IntToStr(i);
      if Mdata_SList.recordcount>0 then
      Begin
        if Mdata_SList.recordcount>1 then
        Begin
          copystart:='A'+IntToStr(i);
          copystart1:='A'+IntToStr(i+1);
          copyend:='N'+IntToStr(i);  //区域
          ReNum:=Mdata_SList.recordcount-1+(20-((Mdata_SList.RecordCount+1) mod 20)); // 记录个数+空白个数
          L:=(20-((Mdata_SList.RecordCount+1) mod 20));//加空白个数
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
          R_Count:=Mdata_SList.recordcount;
        end;
        Mdata_SList.first;
        while not Mdata_SList.eof do
        Begin
           MyWorkBook.WorkSheets[k].Cells[i,1].Value := Mdata_SList.FieldByName('Num').AsString; //部件名称 +规格
          if  Mdata_SList.FieldByName('Num').AsString='★★' then  //黑体字
          begin
            rs:='A'+IntToStr(i)+':L'+IntToStr(i);
            MyWorkBook.worksheets[k].range[rs].font.bold:=True;
          end;
          MyWorkBook.WorkSheets[k].Cells[i,2].Value := Mdata_SList.FieldByName('th').AsString; //部件名称 +规格
          MyWorkBook.WorkSheets[k].Cells[i,4].Value := Mdata_SList.FieldByName('mc').AsString+Mdata_SList.FieldByName('SelRemark').AsString+' '+Mdata_SList.FieldByName('gg').AsString; //单位
          if  Mdata_SList.FieldByName('Num').AsString='★★' then
          begin
            MyWorkBook.WorkSheets[k].Cells[i,6].Value := ''; //数量
            MyWorkBook.WorkSheets[k].Cells[i,7].Value := ''; //净重
          end
          else
          begin
            MyWorkBook.WorkSheets[k].Cells[i,6].Value := Mdata_SList.FieldByName('FSumQry').AsString; //数量
            MyWorkBook.WorkSheets[k].Cells[i,7].Value := Mdata_SList.FieldByName('FSuttle').AsString; //净重
          end;
          MyWorkBook.WorkSheets[k].Cells[i,8].Value := Mdata_SList.FieldByName('FSumSuttle').AsString; //总重
          MyWorkBook.WorkSheets[k].Cells[i,9].Value := Mdata_SList.FieldByName('FSumCheckYesQry').AsString; //检验合格
          MyWorkBook.WorkSheets[k].Cells[i,10].Value := Mdata_SList.FieldByName('FSumCheckYesSuttle').AsString; //检验合格重量
          MyWorkBook.WorkSheets[k].Cells[i,11].Value := Mdata_SList.FieldByName('FSumCheckNoQry').AsString; //检验不合格数量
          MyWorkBook.WorkSheets[k].Cells[i,12].Value := Mdata_SList.FieldByName('FListTeamName').AsString; //班组
          MyWorkBook.WorkSheets[k].Cells[i,13].Value := Mdata_SList.FieldByName('FCheckDetail').AsString; //检验明细
          MyWorkBook.WorkSheets[k].Cells[i,14].Value := Mdata_SList.FieldByName('FStockListRemark').AsString; //备注
          Mdata_SList.next;
          i:=i+1;
        End;
      end;
      MyWorkBook.WorkSheets[k].Cells[i+L,8].Value := '=SUMIF(A7:A'+IntToStr(i-1)+',"★★"'+',H7:H'+IntToStr(i-1)+')'; //净重合计
      MyWorkBook.WorkSheets[k].Cells[i+L,10].Value := '=SUM(J7:J'+IntToStr(i-1)+')'; //净重合计

      qry.Next ;
      If CB_Print.Checked=True then
      begin
        ExcelApp.Visible:=True;
        MyWorkBook.WorkSheets[k].PrintPreview;  //打印
      end;
      k:=k+1;

    end;
    MyWorkBook.WorkSheets[1].delete; //删除模版
    stbMsg.Caption:='提示信息：生产检验任务单:'+'【'+Mdata_SList.FieldByName('FPartsName').AsString+'】的信息导出完成!';
    stbBar.Refresh;
    If CB_Out.Checked=True then
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

procedure TFrm_DepBOMQry.cxComboBox1PropertiesChange(Sender: TObject);
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
  If CB_Parts.Text='二级图号' then
    P_Parts:='FPartsNumber';
  If CB_Parts.Text='一级图号' then
    P_Parts:='FItemNumber';

end;

end.



