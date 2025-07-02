unit Main_AgentBalanceQry;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FrmGridBass, ExtCtrls, StdCtrls, DsFancyButton, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  dxmdaset, cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid,
  cxTextEdit, cxDropDownEdit, cxCalendar, cxMaskEdit, cxContainer, cxLabel,
  cxDBLookupComboBox, ADODB, cxButtonEdit, Grids, DBGrids, ComCtrls, Comobj, RzShellDialogs,
  ToolWin, ImgList, FR_DSet, FR_DBSet, FR_Class, cxRadioGroup, Buttons,
  cxGroupBox, cxCheckBox, cxCurrencyEdit, RzPanel, RzSplit, RzTabs,IniFiles,
  TFlatPanelUnit, cxLookAndFeelPainters, cxButtons, cxTimeEdit, jpeg,
  cxGridBandedTableView, cxGridDBBandedTableView,StrUtils, ActnList, Menus;

type
  TFrm_AgentBalanceQry = class(TFrm_GridBass)
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
    Panel10: TPanel;
    Image2: TImage;
    Label22: TLabel;
    ToolBar3: TToolBar;
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
    TS_ItemQry: TRzTabSheet;
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
    MData2FBalanceAmount: TFloatField;
    MData2FWorkListID: TIntegerField;
    Panel7: TPanel;
    RzSizePanel3: TRzSizePanel;
    MyTreeView3: TTreeView;
    Panel8: TPanel;
    Panel9: TPanel;
    Bevel2: TBevel;
    Panel11: TPanel;
    Image3: TImage;
    Label23: TLabel;
    ToolBar4: TToolBar;
    TB_Out3: TToolButton;
    TB_Down3: TToolButton;
    DS_Mdata3: TDataSource;
    MData3: TdxMemData;
    MData2FOutPrice: TBCDField;
    MData2FPrice: TBCDField;
    MData2FBalanceBasePrice: TFloatField;
    MData2FBalancePrice: TFloatField;
    TB_Prin3: TToolButton;
    Label14: TLabel;
    E_FBranchItemNumber: TcxButtonEdit;
    Label24: TLabel;
    E_FBranchFileNo: TcxButtonEdit;
    E_FItemId1: TcxTextEdit;
    MData3FOutPrice: TFloatField;
    MData3FBalancePrice: TFloatField;
    MData3FBalanceAdjust: TFloatField;
    PC_Qry: TRzPageControl;
    MData4: TdxMemData;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    DS_Mdata4: TDataSource;
    TS_Agent: TRzTabSheet;
    Panel12: TPanel;
    RzSizePanel4: TRzSizePanel;
    MyTreeView5: TTreeView;
    Panel13: TPanel;
    cxGrid5: TcxGrid;
    cxGV5: TcxGridDBTableView;
    FIsDel: TcxGridDBColumn;
    cxGL5: TcxGridLevel;
    ToolBar5: TToolBar;
    TB_Ref5: TToolButton;
    TB_Out5: TToolButton;
    ToolButton11: TToolButton;
    TB_Down5: TToolButton;
    ToolButton16: TToolButton;
    TB_Prin5: TToolButton;
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
    FClientshortName_5: TcxGridDBColumn;
    FBranchFileNo_5: TcxGridDBColumn;
    FBranchItemNumber_5: TcxGridDBColumn;
    FWorkItemNum_5: TcxGridDBColumn;
    FBalanceProductName_5: TcxGridDBColumn;
    FNumber_5: TcxGridDBColumn;
    FBalanceName_5: TcxGridDBColumn;
    FBalanceModel_5: TcxGridDBColumn;
    FUnitName_5: TcxGridDBColumn;
    FMaterialDate_5: TcxGridDBColumn;
    FQry_5: TcxGridDBColumn;
    FBalanceBasePrice_5: TcxGridDBColumn;
    FOutPrice_5: TcxGridDBColumn;
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
    FRemark_5: TcxGridDBColumn;
    FWorkItemRemark_5: TcxGridDBColumn;
    FWorkData_5: TcxGridDBColumn;
    FSysTem_5: TcxGridDBColumn;
    FJobSort_5: TcxGridDBColumn;
    FBalancePriceID_5: TcxGridDBColumn;
    FWorkListID_5: TcxGridDBColumn;
    FWorkOutPrice_2: TcxGridDBColumn;
    TB_EXIT: TToolButton;
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
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    FBalanceRemark_5: TcxGridDBColumn;
    FWorkOutPrice_5: TcxGridDBColumn;
    FProductSort6: TcxGridDBColumn;
    FJobSort: TcxGridDBColumn;
    Panel6: TPanel;
    Image1: TImage;
    L_Caption: TLabel;
    ToolButton4: TToolButton;
    TB_Ref1: TToolButton;
    cxGrid1: TcxGrid;
    cxGV1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    FWorkItemNum_Brow: TcxGridDBColumn;
    FClientShortName: TcxGridDBColumn;
    FBranchFileNo: TcxGridDBColumn;
    FBranchItemNumber: TcxGridDBColumn;
    FProductSort_1: TcxGridDBColumn;
    FNumber: TcxGridDBColumn;
    FBalanceName1: TcxGridDBColumn;
    FBalanceModel1: TcxGridDBColumn;
    FUnitName1: TcxGridDBColumn;
    FMaterialDate1: TcxGridDBColumn;
    FQry_1: TcxGridDBColumn;
    FBalanceBasePrice1: TcxGridDBColumn;
    FWorkOutPrice_1: TcxGridDBColumn;
    FOutPrice1: TcxGridDBColumn;
    FBalanceWorkAdjust_1: TcxGridDBColumn;
    FBalanceAdjust_1: TcxGridDBColumn;
    FBalancePrice1: TcxGridDBColumn;
    FEstimateQry1: TcxGridDBColumn;
    FEstimateAmount1: TcxGridDBColumn;
    SumFBalanceQry_1: TcxGridDBColumn;
    SumFBalanceAmount_1: TcxGridDBColumn;
    FWorkListRemark1: TcxGridDBColumn;
    FDeliveryPlace: TcxGridDBColumn;
    FJobPlace: TcxGridDBColumn;
    FAgentName: TcxGridDBColumn;
    FAdvanceQry1: TcxGridDBColumn;
    FQualityQry1: TcxGridDBColumn;
    FRemark1: TcxGridDBColumn;
    FWorkItemRemark: TcxGridDBColumn;
    FWorkData: TcxGridDBColumn;
    FSysTem: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    FBalancePriceID1: TcxGridDBColumn;
    FWorkListID_1: TcxGridDBColumn;
    cxGL1: TcxGridLevel;
    Label1: TLabel;
    E_FMaterialDateStart: TcxComboBox;
    E_FMaterialDateEnd: TcxComboBox;
    ToolBar2: TToolBar;
    TB_Ref2: TToolButton;
    ToolButton6: TToolButton;
    TB_Out2: TToolButton;
    TB_Down2: TToolButton;
    ToolButton1: TToolButton;
    Label2: TLabel;
    FProductSort_5: TcxGridDBColumn;
    FProductClass_5: TcxGridDBColumn;
    Label3: TLabel;
    E_FBalanceDateStart: TcxComboBox;
    E_FBalanceDateEnd: TcxComboBox;
    TB_Ref3: TToolButton;
    TS_WorkQry: TRzTabSheet;
    Panel17: TPanel;
    RzSizePanel6: TRzSizePanel;
    MyTreeView4: TTreeView;
    Panel18: TPanel;
    Panel19: TPanel;
    Bevel3: TBevel;
    Panel20: TPanel;
    ToolBar6: TToolBar;
    TB_Ref4: TToolButton;
    TB_Out4: TToolButton;
    ToolButton9: TToolButton;
    TB_Prin4: TToolButton;
    ToolButton12: TToolButton;
    cxGrid4: TcxGrid;
    cxGV4: TcxGridDBTableView;
    FProductClass_4: TcxGridDBColumn;
    FWorkData_4: TcxGridDBColumn;
    FBranchFileNo_4: TcxGridDBColumn;
    FClientshortName_4: TcxGridDBColumn;
    FBalanceName_4: TcxGridDBColumn;
    FBalanceModel_4: TcxGridDBColumn;
    FUnitName_4: TcxGridDBColumn;
    FBalanceBasePrice_4: TcxGridDBColumn;
    FOutPrice_4: TcxGridDBColumn;
    FWorkOutPrice_4: TcxGridDBColumn;
    FBalanceAdjust_4: TcxGridDBColumn;
    FBalancePrice_4: TcxGridDBColumn;
    FEstimateQry_4: TcxGridDBColumn;
    FEstimateAmount_4: TcxGridDBColumn;
    SumFBalanceQry_4: TcxGridDBColumn;
    SumFBalanceAmount_4: TcxGridDBColumn;
    SumFQualityAmount_4: TcxGridDBColumn;
    FRealAmount_4: TcxGridDBColumn;
    FJobPlace_4: TcxGridDBColumn;
    FBalanceListNum_4: TcxGridDBColumn;
    FMaterialDate_4: TcxGridDBColumn;
    FSollWeight_4: TcxGridDBColumn;
    FLength_4: TcxGridDBColumn;
    FSingleWeight_4: TcxGridDBColumn;
    FQry_4: TcxGridDBColumn;
    FAgentName_4: TcxGridDBColumn;
    FAdvanceAmount_4: TcxGridDBColumn;
    FBalanceRemark_4: TcxGridDBColumn;
    FBranchItemNumber_4: TcxGridDBColumn;
    FBalanceNum_4: TcxGridDBColumn;
    FWorkItemNum_4: TcxGridDBColumn;
    FWorkListID_4: TcxGridDBColumn;
    FBalanceWeight_4: TcxGridDBColumn;
    FBalancePiece_4: TcxGridDBColumn;
    FBalancePriceID_4: TcxGridDBColumn;
    cxGL4: TcxGridLevel;
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
    FWorkOutPrice_3: TcxGridDBBandedColumn;
    FOutPrice_3: TcxGridDBBandedColumn;
    FBalanceAdjust_3: TcxGridDBBandedColumn;
    FBalancePrice_3: TcxGridDBBandedColumn;
    FMaterialAmount_3: TcxGridDBBandedColumn;
    FWorkAmount_3: TcxGridDBBandedColumn;
    FAdjustAmount_3: TcxGridDBBandedColumn;
    FOutAmount_3: TcxGridDBBandedColumn;
    FWorkOutAmount_3: TcxGridDBBandedColumn;
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
    FBalanceRemark_3: TcxGridDBBandedColumn;
    cxGL3: TcxGridLevel;
    TabSheet1: TRzTabSheet;
    Panel21: TPanel;
    RzSizePanel7: TRzSizePanel;
    MyTreeView7: TTreeView;
    Panel22: TPanel;
    Panel23: TPanel;
    Bevel6: TBevel;
    Panel24: TPanel;
    Image6: TImage;
    Label4: TLabel;
    ToolBar7: TToolBar;
    ToolButton7: TToolButton;
    TB_Ref7: TToolButton;
    TB_Out7: TToolButton;
    TB_Down7: TToolButton;
    TB_Prin7: TToolButton;
    ToolButton17: TToolButton;
    cxGrid7: TcxGrid;
    cxGV7: TcxGridDBTableView;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridDBColumn15: TcxGridDBColumn;
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
    cxGL7: TcxGridLevel;
    DS_Mdata7: TDataSource;
    MData7: TdxMemData;
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
    StringField48: TStringField;
    FloatField12: TFloatField;
    FloatField13: TFloatField;
    IntegerField15: TIntegerField;
    BCDField5: TBCDField;
    BCDField6: TBCDField;
    FloatField14: TFloatField;
    FloatField15: TFloatField;
    FBalanceNum_5: TcxGridDBColumn;
    FWorkListReMark_4: TcxGridDBColumn;
    FInvoice_4: TcxGridDBColumn;
    FInvoiceDate_4: TcxGridDBColumn;
    FInvoice_5: TcxGridDBColumn;
    FInvoiceDate_5: TcxGridDBColumn;
    FIsDelList_4: TcxGridDBColumn;
    FNumber_7: TcxGridDBColumn;
    FWorkWrite_7: TcxGridDBColumn;
    FRealAmount_5: TcxGridDBColumn;
    Label5: TLabel;
    E_WorkItemNumStar: TcxButtonEdit;
    E_WorkItemNumEnd: TcxButtonEdit;
    ToolButton8: TToolButton;
    ToolButton10: TToolButton;
    SaveDialog1: TSaveDialog;
    StatusBar1: TStatusBar;
    ToolButton14: TToolButton;
    FBalanceTaxAmount_5: TcxGridDBColumn;
    FBalanceTaxAmount_4: TcxGridDBColumn;
    FIsDel_4: TcxGridDBColumn;
    FIsDel_7: TcxGridDBColumn;
    FIsDelList_7: TcxGridDBColumn;
    FIsDelList_5: TcxGridDBColumn;
    ToolButton15: TToolButton;
    ToolButton18: TToolButton;
    FWorkWrite6: TcxGridDBColumn;
    FWorkWrite_5: TcxGridDBColumn;
    TabSheet2: TRzTabSheet;
    Mdata_WItem: TdxMemData;
    DS_Mdata_WItem: TDataSource;
    DS_Mdata_BList: TDataSource;
    Panel25: TPanel;
    RzSizePanel8: TRzSizePanel;
    PC_Tree_WorkItem: TRzPageControl;
    TS_Tree_WItem: TRzTabSheet;
    MyTreeView_WItem: TTreeView;
    TS_Tree_BAgent: TRzTabSheet;
    MyTreeView_BAgent: TTreeView;
    Panel26: TPanel;
    Panel27: TPanel;
    ToolBar8: TToolBar;
    ToolButton5: TToolButton;
    ToolButton19: TToolButton;
    RSP_CItem: TRzSizePanel;
    PC_WorkItem: TPageControl;
    TS_WItem: TTabSheet;
    cxGrid_WItem: TcxGrid;
    cxGV_WItem: TcxGridDBTableView;
    FIsDel_WItem: TcxGridDBColumn;
    FIsDelList_WItem: TcxGridDBColumn;
    FAgentName_WItem: TcxGridDBColumn;
    FProductClass_WItem: TcxGridDBColumn;
    FBalanceName_WItem: TcxGridDBColumn;
    FBalanceModel_WItem: TcxGridDBColumn;
    FUnitName_WItem: TcxGridDBColumn;
    FInvoice_WItem: TcxGridDBColumn;
    FInvoiceDate_WItem: TcxGridDBColumn;
    FBalanceBasePrice_WItem: TcxGridDBColumn;
    FOutPrice_WItem: TcxGridDBColumn;
    FWorkOutPrice_WItem: TcxGridDBColumn;
    FBalanceAdjust_WItem: TcxGridDBColumn;
    FBalancePrice_WItem: TcxGridDBColumn;
    FEstimateQry_WItem: TcxGridDBColumn;
    FEstimateAmount_WItem: TcxGridDBColumn;
    SumFBalanceQry_WItem: TcxGridDBColumn;
    SumFBalanceAmount_WItem: TcxGridDBColumn;
    SumFQualityAmount_WItem: TcxGridDBColumn;
    FRealAmount_WItem: TcxGridDBColumn;
    FBalanceTaxAmount_WItem: TcxGridDBColumn;
    FJobPlace_WItem: TcxGridDBColumn;
    FBalanceListNum_WItem: TcxGridDBColumn;
    FWorkData_WItem: TcxGridDBColumn;
    FBranchFileNo_WIttem: TcxGridDBColumn;
    FClientshortName_WItem: TcxGridDBColumn;
    FMaterialDate_WItem: TcxGridDBColumn;
    FSollWeight_WItem: TcxGridDBColumn;
    FLength_WItem: TcxGridDBColumn;
    FSingleWeight_WItem: TcxGridDBColumn;
    FQry_WItem: TcxGridDBColumn;
    FAdvanceAmount_WItem: TcxGridDBColumn;
    FWorkListReMark_WItem: TcxGridDBColumn;
    FBalanceRemark_WItem: TcxGridDBColumn;
    FBranchItemNumber_WItem: TcxGridDBColumn;
    FBalanceNum_WItem: TcxGridDBColumn;
    FWorkItemNum_WItem: TcxGridDBColumn;
    FWorkListID_WItem: TcxGridDBColumn;
    FBalanceWeight_WItem: TcxGridDBColumn;
    FBalancePiece_WItem: TcxGridDBColumn;
    FBalancePriceID_WItem: TcxGridDBColumn;
    cxGL_WItem: TcxGridLevel;
    TS_BItem: TTabSheet;
    RSP_List: TRzSizePanel;
    cxGrid_BItem: TcxGrid;
    cxGV_BItem: TcxGridDBTableView;
    FDepartmentNum_M3: TcxGridDBColumn;
    FBalanceNum_M3: TcxGridDBColumn;
    FBalanceDate_M3: TcxGridDBColumn;
    FAgentName_M3: TcxGridDBColumn;
    FWorkItemNum_M3: TcxGridDBColumn;
    FInvoice_M3: TcxGridDBColumn;
    FInvoiceDate_M3: TcxGridDBColumn;
    FBalanceStatus_M3: TcxGridDBColumn;
    FStatusNotes_M3: TcxGridDBColumn;
    FBalanceID_M3: TcxGridDBColumn;
    FAgentID_M3: TcxGridDBColumn;
    cxGL_BItem: TcxGridLevel;
    cxGrid_BList: TcxGrid;
    cxGV_BList: TcxGridDBTableView;
    FBalanceNum: TcxGridDBColumn;
    FBalanceListNum: TcxGridDBColumn;
    FProductClass: TcxGridDBColumn;
    FBalanceName: TcxGridDBColumn;
    FBalanceModel: TcxGridDBColumn;
    FUnitName: TcxGridDBColumn;
    FMaterialDate: TcxGridDBColumn;
    FEstimateQry: TcxGridDBColumn;
    FEstimateAmount: TcxGridDBColumn;
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
    FBranchItemNumber_1: TcxGridDBColumn;
    FBalanceYear: TcxGridDBColumn;
    FBalanceMonth: TcxGridDBColumn;
    FBalanceDay: TcxGridDBColumn;
    FWorkItemNum: TcxGridDBColumn;
    FWorkListID: TcxGridDBColumn;
    FWorkData_1: TcxGridDBColumn;
    FAgentName_1: TcxGridDBColumn;
    FClientshortName_1: TcxGridDBColumn;
    FBranchFileNo_1: TcxGridDBColumn;
    FBalancePriceID: TcxGridDBColumn;
    FNumber_1: TcxGridDBColumn;
    FPartsCode: TcxGridDBColumn;
    FSollWeight: TcxGridDBColumn;
    FLength: TcxGridDBColumn;
    FQry: TcxGridDBColumn;
    FBalanceBasePrice: TcxGridDBColumn;
    FWorkOutPrice: TcxGridDBColumn;
    FOutPrice: TcxGridDBColumn;
    FFInvoiceAmount: TcxGridDBColumn;
    cxGL_BList: TcxGridLevel;
    Panel28: TPanel;
    CB_MX: TcxCheckBox;
    Mdata_BList: TdxMemData;
    actionList: TActionList;
    Act_PC_MakeList: TAction;
    Act_PC_MakeBOM: TAction;
    Act_PC_DBOM: TAction;
    Act_Parts: TAction;
    Act_MakeList_Sum: TAction;
    Act_MakeBOM_Sum: TAction;
    Act_MakeBOM_Switch: TAction;
    Act_DBOM_Switch: TAction;
    Act_PC_StockBOM: TAction;
    Act_StockBOM_Switch: TAction;
    Act_PC_STockLIst: TAction;
    Act_Menu: TAction;
    Act_Menu_Set: TAction;
    Act_OverAll: TAction;
    Act_PackQry: TAction;
    PM: TPopupMenu;
    N_Edit: TMenuItem;
    N_Filter: TMenuItem;
    N_Sort: TMenuItem;
    N_Group: TMenuItem;
    N_Set: TMenuItem;
    N_Out: TMenuItem;
    TS_Tree_Date: TRzTabSheet;
    MyTreeView_Date: TTreeView;
    Label7: TLabel;
    Mdata_Date: TdxMemData;
    DS_Mdata_Date: TDataSource;
    TS_Date: TTabSheet;
    E_FDate1: TcxButtonEdit;
    E_FDate2: TcxButtonEdit;
    cxGrid_Date: TcxGrid;
    cxGV_Date: TcxGridDBTableView;
    FAgentName_Date: TcxGridDBColumn;
    FEstimateQry_Date: TcxGridDBColumn;
    FEstimateAmount_Date: TcxGridDBColumn;
    FBalanceQry_Date: TcxGridDBColumn;
    FBalanceAmount_Date: TcxGridDBColumn;
    FRealAmount_Date: TcxGridDBColumn;
    FBalanceTaxAmount_Date: TcxGridDBColumn;
    FFInvoiceAmount_Date: TcxGridDBColumn;
    FQualityAmount_Date: TcxGridDBColumn;
    cxGL_Date: TcxGridLevel;
    FBranchItemNumber_Date: TcxGridDBColumn;
    FClientShortName_Date: TcxGridDBColumn;
    FBranchFileNo_Date: TcxGridDBColumn;
    FItemModel_Date: TcxGridDBColumn;
    FAveragePrice_Date: TcxGridDBColumn;
    FFInvoiceDate: TcxGridDBColumn;
    Label6: TLabel;
    E_Locate: TcxButtonEdit;
    procedure FormResize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TB_PrinClick(Sender: TObject);
    procedure frReportBeginBand(Band: TfrBand);
    procedure frReportGetValue(const ParName: String;
      var ParValue: Variant);
    procedure TB_Down2Click(Sender: TObject);
    procedure WorkBOMSelPropertiesChange(Sender: TObject);
    procedure SelPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure MyTreeView3Change(Sender: TObject; Node: TTreeNode);
    procedure MyTreeView3Expanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure TB_DownClick(Sender: TObject);
    procedure TB_Down3Click(Sender: TObject);
    procedure TB_Out3Click(Sender: TObject);
    procedure TB_OutClick(Sender: TObject);
    procedure TB_Prin3Click(Sender: TObject);
    procedure E_FBranchFileNoPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure VT_BalanceAgentName(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure TB_Ref5Click(Sender: TObject);
    procedure MyTreeView5Change(Sender: TObject; Node: TTreeNode);
    procedure TB_Out5Click(Sender: TObject);
    procedure TB_Prin5Click(Sender: TObject);
    procedure TB_EXITClick(Sender: TObject);
    procedure cxGV2CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure cxGV4CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure MyTreeView6Expanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure MyTreeView6Change(Sender: TObject; Node: TTreeNode);
    procedure TB_Ref6Click(Sender: TObject);
    procedure TB_Down6Click(Sender: TObject);
    procedure TB_Down5Click(Sender: TObject);
    procedure TB_Out6Click(Sender: TObject);
    procedure cxGV5CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure MyTreeView1Expanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure MyTreeView1Change(Sender: TObject; Node: TTreeNode);
    procedure ToolButton4Click(Sender: TObject);
    procedure TB_Ref1Click(Sender: TObject);
    procedure MyTreeView2Expanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure MyTreeView2Change(Sender: TObject; Node: TTreeNode);
    procedure ToolButton6Click(Sender: TObject);
    procedure TB_Ref2Click(Sender: TObject);
    procedure E_FMaterialDateStartPropertiesChange(Sender: TObject);
    procedure TB_Out2Click(Sender: TObject);
    procedure E_FBalanceNumStartPropertiesChange(Sender: TObject);
    procedure frReport3GetValue(const ParName: String;
      var ParValue: Variant);
    procedure TB_Ref41Click(Sender: TObject);
    procedure MyTreeView4Expanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure MyTreeView4Change(Sender: TObject; Node: TTreeNode);
    procedure TB_Prin4Click(Sender: TObject);
    procedure TB_Out4Click(Sender: TObject);
    procedure TB_Ref4Click(Sender: TObject);
    procedure TB_Ref7Click(Sender: TObject);
    procedure MyTreeView7Expanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure MyTreeView7Change(Sender: TObject; Node: TTreeNode);
    procedure TB_Down7Click(Sender: TObject);
    procedure TB_Out7Click(Sender: TObject);
    procedure E_WorkItemNumStarPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure E_WorkItemNumEndPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure ToolButton8Click(Sender: TObject);
    procedure ToolButton10Click(Sender: TObject);
    procedure ToolButton14Click(Sender: TObject);
    procedure ToolButton15Click(Sender: TObject);
    procedure ToolButton18Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure MyTreeView_WItemExpanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure MyTreeView_WItemChange(Sender: TObject; Node: TTreeNode);
    procedure MyTreeView_BAgentExpanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure MyTreeView_BAgentChange(Sender: TObject; Node: TTreeNode);
    procedure Act_OverAllExecute(Sender: TObject);
    procedure Act_Menu_SetExecute(Sender: TObject);
    procedure N_EditClick(Sender: TObject);
    procedure N_FilterClick(Sender: TObject);
    procedure N_SortClick(Sender: TObject);
    procedure N_GroupClick(Sender: TObject);
    procedure N_SetClick(Sender: TObject);
    procedure N_OutClick(Sender: TObject);
    procedure cxGrid_WItemContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure cxGrid_BListContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure Act_MenuExecute(Sender: TObject);
    procedure E_FYearPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure E_FDate2PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure MyTreeView_DateExpanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure MyTreeView_DateChange(Sender: TObject; Node: TTreeNode);
    procedure cxGrid_DateContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure E_LocatePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private

    { Private declarations }
  public
    P_Isleaf,P_IsAudit:Integer;

    ListFNumber_BAgent,ListFNumber_Date,ListFNumber_WItem:string;
    P_Isleaf_BAgent,P_Isleaf_Date,P_Isleaf_WItem:Integer;
    P_Sort,P_Type,P_Parts,P_FScenarioNum,P_FItemNo,P_WSort:String;
    P_i:boolean;
   // P_FFactureID:Integer;
    GV,Gr,Gm,Mn:string;

    { Public declarations }
  end;

var
  Frm_AgentBalanceQry: TFrm_AgentBalanceQry;


implementation

uses FRMDATA,{ FRMMAIN,} COMMON, FrmSelect, ProgBar, PROGRASS;

{$R *.dfm}


procedure TFrm_AgentBalanceQry.FormResize(Sender: TObject);
begin
  inherited;
  L_title.Caption:=UserFDepartmentName+'外协加工结算查询';
  Self.Caption:=UserFDepartmentName+'外协加工结算查询';
end;

procedure TFrm_AgentBalanceQry.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=cafree;
  Frm_AgentBalanceQry:=nil;
end;

procedure TFrm_AgentBalanceQry.FormCreate(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Select distinct FAgentYear,FAgentMonth,FAgentYear+FAgentMonth as FMaterialDateStart from V_WorkList '
                 +'where FDepartmentID=:FDepartmentID  order by FAgentYear,FAgentMonth';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Open;
    If  qry.RecordCount>0 then
    begin
      E_FMaterialDateStart.Properties.Items.Clear;
      while not qry.eof do
      begin
        E_FMaterialDateStart.Properties.Items.Add(Trim(qry.FieldByName('FMaterialDateStart').AsString));
        qry.Next;
      end;
      E_FMaterialDateStart.Text:=Trim(qry.FieldByName('FMaterialDateStart').AsString);
    end;
  finally
     ;
  end;

  try
    qry.SQL.Text:='Select distinct FBalanceYear,FBalanceMonth,FBalanceYear+FBalanceMonth as FBalanceDateStart from V_BalanceList '
                 +'where FDepartmentID=:FDepartmentID  order by FBalanceYear,FBalanceMonth';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Open;
    If  qry.RecordCount>0 then
    begin
      E_FBalanceDateStart.Properties.Items.Clear;
      while not qry.eof do
      begin
        E_FBalanceDateStart.Properties.Items.Add(Trim(qry.FieldByName('FBalanceDateStart').AsString));
        qry.Next;
      end;
      qry.First;
      E_FBalanceDateStart.Text:=Trim(qry.FieldByName('FBalanceDateStart').AsString);
    end;
  finally
     ;
  end;
   
  TB_Prin.Enabled:= mdlData.PermissionCheckRights(TFrm_AgentBalanceQry.ClassName,'打印');
  TB_Prin3.Enabled:= mdlData.PermissionCheckRights(TFrm_AgentBalanceQry.ClassName,'打印');
  TB_Prin4.Enabled:= mdlData.PermissionCheckRights(TFrm_AgentBalanceQry.ClassName,'打印');
  TB_Prin5.Enabled:= mdlData.PermissionCheckRights(TFrm_AgentBalanceQry.ClassName,'打印');
  TB_Prin6.Enabled:= mdlData.PermissionCheckRights(TFrm_AgentBalanceQry.ClassName,'打印');
  TB_Prin7.Enabled:= mdlData.PermissionCheckRights(TFrm_AgentBalanceQry.ClassName,'打印');
  TB_Out.Enabled:= mdlData.PermissionCheckRights(TFrm_AgentBalanceQry.ClassName,'导出');
  TB_Out2.Enabled:= mdlData.PermissionCheckRights(TFrm_AgentBalanceQry.ClassName,'导出');
  TB_Out3.Enabled:= mdlData.PermissionCheckRights(TFrm_AgentBalanceQry.ClassName,'导出');
  TB_Out4.Enabled:= mdlData.PermissionCheckRights(TFrm_AgentBalanceQry.ClassName,'导出');
  TB_Out5.Enabled:= mdlData.PermissionCheckRights(TFrm_AgentBalanceQry.ClassName,'导出');
  TB_Out6.Enabled:= mdlData.PermissionCheckRights(TFrm_AgentBalanceQry.ClassName,'导出');
  TB_Out7.Enabled:= mdlData.PermissionCheckRights(TFrm_AgentBalanceQry.ClassName,'导出');
end;

procedure TFrm_AgentBalanceQry.FormShow(Sender: TObject);
begin
{  TB_Ref1.Click;
  TB_Ref2.Click;
  TB_Ref3.Click;
  TB_Ref4.Click;
  TB_Ref5.Click;
  TB_Ref6.Click;
  TB_Ref7.Click; }
end;

procedure TFrm_AgentBalanceQry.TB_PrinClick(Sender: TObject);
begin
  inherited;
  FrDBDataSet.DataSet:=mdata1;
  FrReport.LoadFromFile(ExtractFileDir(Application.ExeName)+'\Report_DesignBOM_BalanceItem.frf');
  FrReport.ShowReport;

end;

procedure TFrm_AgentBalanceQry.frReportBeginBand(Band: TfrBand);
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

procedure TFrm_AgentBalanceQry.frReportGetValue(const ParName: String;
  var ParValue: Variant);
begin
  inherited;
  If ParName='UserName' then
    ParValue:=UserName;

end;

procedure TFrm_AgentBalanceQry.TB_Down2Click(Sender: TObject);
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

procedure TFrm_AgentBalanceQry.WorkBOMSelPropertiesChange(Sender: TObject);
begin
  inherited;
  mdata2.Edit;
  mdata2.Post;
end;

procedure TFrm_AgentBalanceQry.SelPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  PC_2.ActivePage:=TS_WorkList;

end;

procedure TFrm_AgentBalanceQry.MyTreeView3Change(Sender: TObject;
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
      If not MyItemList(qry,Mdata3,'V_BalanceList','FFullItemNumber',ListItemFNumber3,'FFullItemNumber,FProductClass desc') then
      begin
       // mdata3.Open;
      end;
    end
    else
    begin
      mdata3.Close;
      mdata4.Close;
    end;

  end;



end;

procedure TFrm_AgentBalanceQry.MyTreeView3Expanding(Sender: TObject;
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

procedure TFrm_AgentBalanceQry.TB_DownClick(Sender: TObject);
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

procedure TFrm_AgentBalanceQry.TB_Down3Click(Sender: TObject);
Var i:Integer;
begin
  If  TB_Down3.Caption='取消设置' then
  begin
    TB_Down3.Caption:='设置';
    cxGV3.OptionsData.Editing:=False;
    cxGv3.OptionsView.GroupByBox:=False;
    cxGV4.OptionsData.Editing:=False;
    cxGv4.OptionsView.GroupByBox:=False;
    for i:=0 to cxGv3.ColumnCount-1 do
    begin
      cxGv3.Columns[i].Options.Filtering:=False;
      cxGv3.Columns[i].Options.Editing:=False;
      cxGv3.Columns[i].Options.Sorting:=False;
    end;
    for i:=0 to cxGv4.ColumnCount-1 do
    begin
      cxGv4.Columns[i].Options.Filtering:=False;
      cxGv4.Columns[i].Options.Editing:=False;
      cxGv4.Columns[i].Options.Sorting:=False;
    end;
  end
  else
  begin
    TB_Down3.Caption:='取消设置';
    cxGV3.OptionsData.Editing:=True;
    cxGv3.OptionsView.GroupByBox:=True;
    cxGV4.OptionsData.Editing:=True;
    cxGv4.OptionsView.GroupByBox:=True;
    for i:=0 to cxGv3.ColumnCount-1 do
    begin
      cxGv3.Columns[i].Options.Filtering:=True;
      cxGv3.Columns[i].Options.Editing:=True;
      cxGv3.Columns[i].Options.Sorting:=True;
    end;
    for i:=0 to cxGv4.ColumnCount-1 do
    begin
      cxGv4.Columns[i].Options.Filtering:=True;
      cxGv4.Columns[i].Options.Editing:=True;
      cxGv4.Columns[i].Options.Sorting:=True;
    end;
  end;

end;

procedure TFrm_AgentBalanceQry.TB_Out3Click(Sender: TObject);
begin
  inherited;
   ExportToExcel(cxGrid3,True,True);
end;

procedure TFrm_AgentBalanceQry.TB_OutClick(Sender: TObject);
begin
  inherited;
  ExportToExcel(cxGrid1,True,TRue);
end;

procedure TFrm_AgentBalanceQry.TB_Prin3Click(Sender: TObject);
var   qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
    If (E_FBalanceDateStart.Text<>'') and (E_FBalanceDateEnd.Text<>'') then
    try
      qry.SQL.Text:='select * from V_BalanceList where FDepartmentID=:FDepartmentID and '
                  +'FFullItemNumber like :FFullItemNumber and FBalanceYear+FBalanceMonth>=:FBalanceDateStrat and FBalanceYear+FBalanceMonth<=:FBalanceDateEnd '
                  +' order by FFullItemNumber,FProductClass desc';
      qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
      qry.Parameters.FindParam('FFullItemNumber').value:=ListItemFNumber3+'%';
      qry.Parameters.FindParam('FBalanceDateStrat').value:=Trim(E_FBalanceDateStart.Text);
      qry.Parameters.FindParam('FBalanceDateEnd').value:=Trim(E_FBalanceDateEnd.Text);
      qry.Open;
    finally
       ;
    end;
    mData3.CopyFromDataSet(qry);
    mData3.Open;
    mData3.First;
    mdata3.SortedField:='FProductClass';
    //mdata3.SortOptions.soSesc:=True;
    frDBDataSet3.Dataset:=MData3;
    FrReport3.LoadFromFile(ExtractFileDir(Application.ExeName)+'\Report_DesignBOM_BalanceQry.frf');
    FrReport3.ShowReport;

end;

procedure TFrm_AgentBalanceQry.E_FBranchFileNoPropertiesButtonClick(
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
   // qry.SQL.Text:='Select * from VT_FileItem where FItemId=:FItemId';
    qry.SQL.Text:='Select * from VT_BalanceItem where FItemId=:FItemId';
    qry.Parameters.FindParam('FItemId').value:=StrToInt(Trim(E_FItemId1.Text));
    qry.Open;
  finally
     ;
  end;
  If qry.RecordCount>0 then
  begin
     ListItemFNumber3:=qry.FieldByName('FNumber').Value;
      If not MyItemList(qry,Mdata3,'V_BalanceList','FFullItemNumber',ListItemFNumber3,'FFullItemNumber,FProductClass desc') then
      begin
        mdata3.Open;
      end;
      If not MyItemList(qry,Mdata4,'V_WorkList','FFullItemNumber',ListItemFNumber3,'FFullItemNumber,FProductClass desc') then
      begin
        mdata4.Open;
      end;
  end;

  qry.Free;

end;

procedure TFrm_AgentBalanceQry.VT_BalanceAgentName(Sender: TObject;
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

procedure TFrm_AgentBalanceQry.TB_Ref5Click(Sender: TObject);
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

procedure TFrm_AgentBalanceQry.MyTreeView5Change(Sender: TObject;
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
      If not MyItemList(qry,Mdata5,'V_WorkList',
                       'FDepartmentName+'';''+FSysTem+'';''+FAgentName+'';''+cast(FWorkYear as varchar(4))+'';''+cast(FWorkMonth as varchar(2))+'';''+FWorkItemNum+'';''',
                       ListItemFNumber5,
                       'FDepartmentName+'';''+FSysTem+'';''+FAgentName+'';''+cast(FWorkYear as varchar(4))+'';''+cast(FWorkMonth as varchar(2))+'';''+FWorkItemNum+'';''') then
      begin
       // mdata5.Open;
        cxGV5.DataController.DataSource.DataSet:=mdata5;
      end;
    end;

  end;

end;

procedure TFrm_AgentBalanceQry.TB_Out5Click(Sender: TObject);
begin
  inherited;
  ExportToExcel(cxGrid5,True,TRue);

end;

procedure TFrm_AgentBalanceQry.TB_Prin5Click(Sender: TObject);
begin
  inherited;
  frDBDataSet.DataSet:=mdata5;
  FrReport.LoadFromFile(ExtractFileDir(Application.ExeName)+'\Report_DesignBOM_AgentWork.frf');
  FrReport.ShowReport;
end;

procedure TFrm_AgentBalanceQry.TB_EXITClick(Sender: TObject);
begin
  inherited;
  self.Close;
end;

procedure TFrm_AgentBalanceQry.cxGV2CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);

begin
  inherited;
  if StrToFloat(AViewInfo.GridRecord.DisplayTexts[SumFBalanceQry_2.Index])>0 then    //设置行颜色
  begin
   // ACanvas.Canvas.brush.Color := clInactiveCaptionText;
    ACanvas.Canvas.Font.Color:=clBlue; //字体颜色
    ACanvas.FillRect(AViewInfo.Bounds);
  end;
end;

procedure TFrm_AgentBalanceQry.cxGV4CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);

begin
  inherited;
  If (StrToFloat(AViewInfo.GridRecord.DisplayTexts[SumFBalanceQry_4.Index])>0) then
  begin
    ACanvas.Canvas.Font.Color:=clBlue; //字体颜色
    ACanvas.FillRect(AViewInfo.Bounds);
  end;


{  if StrToFloat(AViewInfo.GridRecord.DisplayTexts[SumFBalanceQry_4.Index])>0 then    //设置行字体颜色
  begin
     //ACanvas.Canvas.brush.Color := clInactiveCaptionText;
     ACanvas.Canvas.Font.Color:=clHotLight; //字体颜色
     ACanvas.FillRect(AViewInfo.Bounds);
  end;
 }
{  if cxGV4.DataController.GetSelectedRowIndex(0)=AViewInfo.RecordViewInfo.Index then //是否是选中行
  else
  if StrToFloat(AViewInfo.GridRecord.DisplayTexts[SumFBalanceQry_4.Index])>0 then    //设置行颜色
  begin
    ACanvas.Canvas.brush.Color := clInactiveCaptionText;
    ACanvas.FillRect(AViewInfo.Bounds);
  end;}
end;

procedure TFrm_AgentBalanceQry.MyTreeView6Expanding(Sender: TObject;
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

  qry.SQL.Text:='Select FNumber, FParentNumber,FName,Isleaf,FIsAudit from VT_BalanceList '
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
    with MyTreeView6.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('Isleaf').value;
    end;
    qry.Next;
  end;


end;

procedure TFrm_AgentBalanceQry.MyTreeView6Change(Sender: TObject;
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
    ListItemFNumber6:=PTree(Node.Data).FNumber;
    P_th1:=PTree(Node.Data).Caption;

    If PTree(Node.Data).Isleaf=1 then
    begin
      If not MyItemList(qry,Mdata6,'V_BalanceList','FFullNumber',ListItemFNumber6,'FFullNumber,FBalanceListNum') then
      begin
       // mdata6.Open;
      end;
    end
    else
    begin
      mdata6.Close;
    end;
  end;


 {
  If Node = nil then Exit;
  with PTree(Node.Data)^ do
  begin
    ListItemFNumber6:=PTree(Node.Data).FNumber;
    If not MyItemList(qry,Mdata6,'V_BalanceList','FFullNumber',ListItemFNumber6,'FFullNumber,FBalanceListNum') then
    begin
      //mdata6.Open;
     // cxGV6.DataController.DataSource.DataSet:=mdata6;
    end;
    If mdata6.RecordCount>0 then
    begin
      E_FBalanceNum6.Text:= mdata6['FBalanceNum'];
      E_FBalanceDate6.Text:= mdata6['FBalanceDate'];
      E_FBalanceID6.Text:= mdata6['FBalanceID'];
      E_FBalanceStatus6.EditValue:= mdata6['FBalanceStatus'];
      E_FStatusNotes6.Text:= mdata6['FBalanceStatusNotes'];
      E_FAgentName6.Text:= mdata6['FAgentName'];
    end
  end;
  If PTree(Node.Data).Isleaf=1 then
//  If P_Isleaf=1 then
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

procedure TFrm_AgentBalanceQry.TB_Ref6Click(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If not TreeVeiwListUserID(qry,MyTreeView6,'VT_BalanceList',UserFDepartmentID) then
  begin
    Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;

end;

procedure TFrm_AgentBalanceQry.TB_Down6Click(Sender: TObject);
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

procedure TFrm_AgentBalanceQry.TB_Down5Click(Sender: TObject);
Var i:Integer;
begin
  If  TB_Down5.Caption='取消设置' then
  begin
    TB_Down5.Caption:='设置';
    cxGV5.OptionsData.Editing:=False;
    cxGv5.OptionsView.GroupByBox:=False;
    for i:=0 to cxGv5.ColumnCount-1 do
    begin
      cxGv5.Columns[i].Options.Filtering:=False;
      cxGv5.Columns[i].Options.Editing:=False;
      cxGv5.Columns[i].Options.Sorting:=False;
    end;
  end
  else
  begin
    TB_Down5.Caption:='取消设置';
    cxGV5.OptionsData.Editing:=True;
    cxGv5.OptionsView.GroupByBox:=True;
    for i:=0 to cxGv5.ColumnCount-1 do
    begin
      cxGv5.Columns[i].Options.Filtering:=True;
      cxGv5.Columns[i].Options.Editing:=True;
      cxGv5.Columns[i].Options.Sorting:=True;
    end;
  end;

end;

procedure TFrm_AgentBalanceQry.TB_Out6Click(Sender: TObject);
begin
  inherited;
  ExportToExcel(cxGrid6,True,TRue);
end;

procedure TFrm_AgentBalanceQry.cxGV5CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  if StrToFloat(AViewInfo.GridRecord.DisplayTexts[SumFBalanceQry_5.Index])>0 then    //设置行颜色
  begin
   // ACanvas.Canvas.brush.Color := clInactiveCaptionText;
    ACanvas.Canvas.Font.Color:=clBlue; //字体颜色
    ACanvas.FillRect(AViewInfo.Bounds);
  end;

end;

procedure TFrm_AgentBalanceQry.MyTreeView1Expanding(Sender: TObject;
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

procedure TFrm_AgentBalanceQry.MyTreeView1Change(Sender: TObject;
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
    ListItemFNumber1:=PTree(Node.Data).FNumber1;
    P_th1:=PTree(Node.Data).Caption;

    If PTree(Node.Data).Isleaf=1 then
    begin
      If not MyItemList(qry,Mdata1,'V_WorkList','FWorkDataNum',ListItemFNumber1,'FWorkDataNum') then
      begin
       // mdata4.Open;
      end;
    end
    else
    begin
      mdata1.Close;
    end;
  end;
  //cxGvAutoMdata(cxGv1,mdata1);



  
end;

procedure TFrm_AgentBalanceQry.ToolButton4Click(Sender: TObject);
var
  proc:TADOStoredProc;
begin
  proc:=TADOStoredProc.Create(self);
  proc.ConnectionString:=mdlData.ReadConnStr;
  proc.CommandTimeout:=500;
  If ListItemFNumber1='' then
  begin
    Application.MessageBox(PChar('请选择统计范围!'), '错误', MB_OK +MB_ICONSTOP);
    Exit;
  end;

  try
    proc.ProcedureName:='P_BalanceList_AgentSort;1';
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=200;
      name := '@ListItemFNumber';
      value:=ListItemFNumber1;
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=6;
      name := '@FMaterialDateStart';
      value:=Trim(E_FMaterialDateStart.Text);
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=6;
      name := '@FMaterialDateEnd';
      value:=Trim(E_FMaterialDateEnd.Text);
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=6;
      name := '@FProductSort';
      value:='明细';
    end;

    proc.Open;
    cxGV1.DataController.DataSource.DataSet:=proc;
    cxGvAutoProc(cxGv1,proc);
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

procedure TFrm_AgentBalanceQry.TB_Ref1Click(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If not TreeVeiwListUserID(qry,MyTreeView1,'VT_WorkData',UserFDepartmentID) then
  begin
    Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;

end;

procedure TFrm_AgentBalanceQry.MyTreeView2Expanding(Sender: TObject;
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

procedure TFrm_AgentBalanceQry.MyTreeView2Change(Sender: TObject;
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

procedure TFrm_AgentBalanceQry.ToolButton6Click(Sender: TObject);
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
    proc.ProcedureName:='P_BalanceList_AgentSort;1';
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
      size:=6;
      name := '@FMaterialDateStart';
      value:=Trim(E_FMaterialDateStart.Text);
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=6;
      name := '@FMaterialDateEnd';
      value:=Trim(E_FMaterialDateEnd.Text);
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=6;
      name := '@FProductSort';
      value:='汇总';
    end;

    proc.Open;
    cxGV2.DataController.DataSource.DataSet:=proc;
    cxGvAutoProc(cxGv2,proc);
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

procedure TFrm_AgentBalanceQry.TB_Ref2Click(Sender: TObject);
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

procedure TFrm_AgentBalanceQry.E_FMaterialDateStartPropertiesChange(
  Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Select distinct FAgentYear+FAgentMonth as E_FMaterialDateEnd from V_WorkList '
                 +'where FDepartmentID=:FDepartmentID and FAgentYear+FAgentMonth>=:FMaterialDateEnd order by FAgentYear+FAgentMonth';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Parameters.FindParam('FMaterialDateEnd').value:=Trim(E_FMaterialDateStart.Text);
    qry.Open;
    If  qry.RecordCount>0 then
    begin
      E_FMaterialDateEnd.Properties.Items.Clear;
      while not qry.eof do
      begin
        E_FMaterialDateEnd.Properties.Items.Add(Trim(qry.FieldByName('E_FMaterialDateEnd').AsString));
        qry.Next;
      end;
      E_FMaterialDateEnd.Text:=Trim(qry.FieldByName('E_FMaterialDateEnd').AsString);
    end;
  finally
     ;
  end;
 
end;

procedure TFrm_AgentBalanceQry.TB_Out2Click(Sender: TObject);
begin
  inherited;
  ExportToExcel(cxGrid2,True,TRue);

end;

procedure TFrm_AgentBalanceQry.E_FBalanceNumStartPropertiesChange(
  Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Select distinct FBalanceYear,FBalanceMonth,FBalanceYear+FBalanceMonth as FBalanceDateEnd from V_BalanceList '
                 +'where FDepartmentID=:FDepartmentID and FBalanceYear+FBalanceMonth>=:FBalanceDateStart order by FBalanceYear,FBalanceMonth';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Parameters.FindParam('FBalanceDateStart').value:=Trim(E_FBalanceDateStart.Text);
    qry.Open;
    If  qry.RecordCount>0 then
    begin
      E_FBalanceDateEnd.Properties.Items.Clear;
      while not qry.eof do
      begin
        E_FBalanceDateEnd.Properties.Items.Add(Trim(qry.FieldByName('FBalanceDateEnd').AsString));
        qry.Next;
      end;
      E_FBalanceDateEnd.Text:=Trim(qry.FieldByName('FBalanceDateEnd').AsString);
    end;
  finally
     ;
  end;

end;

procedure TFrm_AgentBalanceQry.frReport3GetValue(const ParName: String;
  var ParValue: Variant);
begin
  inherited;
  If ParName='FBalanceDateStart' then
    ParValue:=E_FBalanceDateStart.Text;
  If ParName='FBalanceDateEnd' then
    ParValue:=E_FBalanceDateEnd.Text;

end;

procedure TFrm_AgentBalanceQry.TB_Ref41Click(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If not TreeVeiwListUserID(qry,MyTreeView3,'VT_BalanceItem',UserFDepartmentID) then
  begin
    Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;

{  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If not TreeVeiwListUserID(qry,MyTreeView4,'VT_BalanceWorkItem',UserFDepartmentID) then
  begin
    Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;
 }
end;

procedure TFrm_AgentBalanceQry.MyTreeView4Expanding(Sender: TObject;
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
    with MyTreeView4.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('Isleaf').value;
    end;
    qry.Next;
  end;

end;

procedure TFrm_AgentBalanceQry.MyTreeView4Change(Sender: TObject;
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
    ListItemFNumber4:=PTree(Node.Data).FNumber;
    //P_th4:=PTree(Node.Data).Caption;

    If PTree(Node.Data).Isleaf=1 then
    begin
      If not MyItemList(qry,Mdata4,'V_WorkList','FDepartmentName+'';''+FProductName+'';''+FItemLb+'';''+FBranchItemNumber+'';''+FAgentName+'';''',ListItemFNumber4,'FBranchItemNumber,FProductClass,FNumber') then
      begin
       // mdata4.Open;
      end;
    end
    else
      mdata4.Close;

  end;

end;

procedure TFrm_AgentBalanceQry.TB_Prin4Click(Sender: TObject);
begin
  inherited;
    frDBDataSet4.Dataset:=MData4;
    FrReport4.LoadFromFile(ExtractFileDir(Application.ExeName)+'\Report_DesignBOM_BalanceWorkQry.frf');
    FrReport4.ShowReport;

end;

procedure TFrm_AgentBalanceQry.TB_Out4Click(Sender: TObject);
begin
  inherited;
  ExportToExcel(cxGrid4,True,TRue);
end;

procedure TFrm_AgentBalanceQry.TB_Ref4Click(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If not TreeVeiwListUserID(qry,MyTreeView4,'VT_BalanceWorkItem',UserFDepartmentID) then
  begin
    Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;
end;

procedure TFrm_AgentBalanceQry.TB_Ref7Click(Sender: TObject);
var
  qry:TADOquery;
  myNode:ptree;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If UserFDepartmentsort=1 then //事业部
  begin
     If not TreeVeiwListWhere(qry,MyTreeView7,'VT_WorkList',' and FDepartmentID='+IntToStr(UserFDepartmentID)) then
        Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;
  If UserFDepartmentsort=2 then   //子公司
  begin
    If not TreeVeiwListWhere(qry,MyTreeView7,'VT_WorkList',' and FDepartmentID='+IntToStr(UserFDepartmentID)) then
      Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;
  If UserFDepartmentsort=3 then   //公共平台
  begin
    If not TreeVeiwListWhere(qry,MyTreeView7,'VT_WorkList',' ') then
    Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;

{  If not TreeVeiwListWhere(qry,MyTreeView7,'VT_WorkList',' and FDepartmentID='+IntToStr(UserFDepartmentID) ) then
  begin
    Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;
 }
end;

procedure TFrm_AgentBalanceQry.MyTreeView7Expanding(Sender: TObject;
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
               +'Isleaf from VT_WorkList where FParentNumber= '''
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
    with MyTreeView7.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('Isleaf').value;
    end;
    qry.Next;
  end;



end;

procedure TFrm_AgentBalanceQry.MyTreeView7Change(Sender: TObject;
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
    ListItemFNumber7:=PTree(Node.Data).FNumber;
    If MyItemList(qry,Mdata7,'V_WorkList','FDepartmentName+'';''+cast(FWorkStatus as varchar(2))+'';''+cast(FWorkYear as varchar(4))+'';''+substring(FWorkItemNum,5,2)+'';''+FWorkItemNum+'';''',ListItemFNumber7,'') then
  end;
 
end;

procedure TFrm_AgentBalanceQry.TB_Down7Click(Sender: TObject);
Var i:Integer;
begin
  If  TB_Down7.Caption='取消设置' then
  begin
    TB_Down7.Caption:='设置';
    cxGV7.OptionsData.Editing:=False;
    cxGv7.OptionsView.GroupByBox:=False;
    for i:=0 to cxGv7.ColumnCount-1 do
    begin
      cxGv7.Columns[i].Options.Filtering:=False;
      cxGv7.Columns[i].Options.Editing:=False;
      cxGv7.Columns[i].Options.Sorting:=False;
    end;
  end
  else
  begin
    TB_Down7.Caption:='取消设置';
    cxGV7.OptionsData.Editing:=True;
    cxGv7.OptionsView.GroupByBox:=True;
    for i:=0 to cxGv7.ColumnCount-1 do
    begin
      cxGv7.Columns[i].Options.Filtering:=True;
      cxGv7.Columns[i].Options.Editing:=True;
      cxGv7.Columns[i].Options.Sorting:=True;
    end;
  end;
end;

procedure TFrm_AgentBalanceQry.TB_Out7Click(Sender: TObject);
begin
  inherited;
  ExportToExcel(cxGrid7,True,TRue);
end;

procedure TFrm_AgentBalanceQry.E_WorkItemNumStarPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
    qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
    try
      qry.SQL.Text:='select FWorkItemNum from V_WorkList where FDepartmentID=:FDepartmentID  order by FWorkItemNum ';
      qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
      qry.Open;
    finally
       ;
    end;

    selValue:=select('选择任务单号','FWorkItemNum','FWorkItemNum','FWorkItemNum','FWorkItemNum',qry);
    If (Length(selValue)>0) then
    begin
      E_WorkItemNumStar.Text:=qry.FieldByName('FWorkItemNum').Value;
    end;

end;

procedure TFrm_AgentBalanceQry.E_WorkItemNumEndPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
    qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
    try
      qry.SQL.Text:='select FWorkItemNum from V_WorkList where FDepartmentID=:FDepartmentID  '
                   +' and FWorkItemNum>=:FWorkItemNum order by FWorkItemNum ';
      qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
      qry.Parameters.FindParam('FWorkItemNum').value:=Trim(E_WorkItemNumStar.Text);
      qry.Open;
    finally
       ;
    end;

    selValue:=select('选择任务单号','FWorkItemNum','FWorkItemNum','FWorkItemNum','FWorkItemNum',qry);
    If (Length(selValue)>0) then
    begin
      E_WorkItemNumEnd.Text:=qry.FieldByName('FWorkItemNum').Value;
    end;

end;

procedure TFrm_AgentBalanceQry.ToolButton8Click(Sender: TObject);
var
 qry:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='select * from  V_WorkList where FDepartmentID=:FDepartmentID '
                 +' and FWorkItemNum>=:WorkItemNumStar and FWorkItemNum<=:WorkItemNumEnd ';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Parameters.FindParam('WorkItemNumStar').value:= E_WorkItemNumStar.Text;
    qry.Parameters.FindParam('WorkItemNumEnd').value:=E_WorkItemNumEnd.Text;;
    qry.OPen;
  finally
    ;
  end;
  mdata5.CopyFromDataSet(qry);
  mdata5.Open;

end;

procedure TFrm_AgentBalanceQry.ToolButton10Click(Sender: TObject);
var
   qry:TADOquery;
  P_Retinf:String;

  Query_Sp:TADOStoredProc;
  i,k,s,ReNum,ReNumLoop,R_Count:Integer;
  ExcelApp,MyWorkBook,mysheet: Variant;
  filepath,savefilepath,Sqlstr,copystart,copyend,copystart1,aa:string;
  ListQry:Tadoquery;

begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Select a.*,isnull(b.FFInvoiceAmount,0) as FFInvoiceAmount from '
                 +'(select FSysTem,FAgentID,FAgentNameQry,isnull(sum(FEstimateAmount),0) as FEstimateAmount,'
                 +'isnull(sum(FRealAmount),0) as FRealAmount,sum(SumFBalanceQry) as SumFBalanceQry from  V_WorkList '
                 +'where FDepartmentID=:FDepartmentID1 and FWorkItemNum>=:WorkItemNumStar1 and FWorkItemNum<=:WorkItemNumEnd1 and FIsDelList<>1 '
                 +'group by FSysTem,FAgentID,FAgentNameQry ) as a   '
                 +'left outer join   '
                 +'(select FSysTem,FAgentID,FAgentNameQry,FInvoice,isnull(sum(FRealAmount),0) as FFInvoiceAmount from  V_WorkList  '
                 +'where FDepartmentID=:FDepartmentID2 and FWorkItemNum>=:WorkItemNumStar2 and FWorkItemNum<=:WorkItemNumEnd2 and FInvoice=''发票核销'' and FIsDelList<>1 '
                 +'group by FSysTem,FAgentID,FAgentNameQry,FInvoice ) as b on a.FAgentID=b.FAgentID order by a.FSysTem,a.FAgentNameQry';
    qry.Parameters.FindParam('FDepartmentID1').value:=UserFDepartmentID;
    qry.Parameters.FindParam('WorkItemNumStar1').value:= E_WorkItemNumStar.Text;
    qry.Parameters.FindParam('WorkItemNumEnd1').value:=E_WorkItemNumEnd.Text;;
    qry.Parameters.FindParam('FDepartmentID2').value:=UserFDepartmentID;
    qry.Parameters.FindParam('WorkItemNumStar2').value:= E_WorkItemNumStar.Text;
    qry.Parameters.FindParam('WorkItemNumEnd2').value:=E_WorkItemNumEnd.Text;;
    qry.OPen;
  finally
    ;
  end;

  mdata5.Close;
  mdata5.CopyFromDataSet(qry);
  Mdata5.Active:=True;
{  DS_Mdata5.DataSet:=Mdata5;
  cxGV5.DataController.DataSource:=DS_Mdata5;
  cxGvColumn(cxGv,mdata5);
 }
  filepath:=Extractfilepath(application.ExeName)+'外协任务单查询模版.xls';
  if (Mdata5.Active) and (Mdata5.recordcount>0) then
  Begin
    SaveDialog1.FileName:=E_WorkItemNumStar.Text+'-'+E_WorkItemNumEnd.Text;
    SaveDialog1.Filter:='.xls';
    SaveDialog1.Execute;

    if (E_WorkItemNumStar.Text<>'') Or (E_WorkItemNumStar.Text<>Null) then
        savefilepath:=SaveDialog1.FileName+'.xls';

    if FileExists(savefilepath) then
    begin
      DeleteFile(savefilepath) ;
    end;

    StatusBar1.Panels[5].text:='正在导出应收利息:'+E_WorkItemNumStar.Text+'-'+E_WorkItemNumEnd.Text+'的信息..请稍等!!';
    ExcelApp:= CreateOleObject('Excel.Application' );
    MyWorkBook:=ExcelApp.WorkBooks.Open( filepath );

    MyWorkBook.WorkSheets[1].Cells[3,1].Value:=AnsiReplaceStr(MyWorkBook.WorkSheets[1].Cells[3,1].Value,'B',E_WorkItemNumStar.Text); //日期
    MyWorkBook.WorkSheets[1].Cells[3,1].Value:=AnsiReplaceStr(MyWorkBook.WorkSheets[1].Cells[3,1].Value,'C',E_WorkItemNumEnd.Text); //日期

    i:=5;
    StatusBar1.Panels[5].text:='正在导出外协任务单查询:'+E_WorkItemNumStar.Text+'-'+E_WorkItemNumEnd.Text+'的明细信息..请稍等!!';
    copystart:='A'+IntToStr(i);
    if Mdata5.recordcount>0 then
    Begin
      if Mdata5.recordcount>1 then
      Begin
        copystart:='A'+IntToStr(i);
        copystart1:='A'+IntToStr(i+1);
        copyend:='N'+IntToStr(i);
        ReNum:=Mdata5.recordcount-1;
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
        R_Count:=Mdata5.recordcount;
      end;
      Mdata5.first;
      K:=0 ;
      while not Mdata5.eof do
      Begin
        MyWorkBook.WorkSheets[1].Cells[i,1].Value := inttostr(K+1); //序号
        MyWorkBook.WorkSheets[1].Cells[i,2].Value := Mdata5.FieldByName('FAgentNameQry').AsString;//生产用户
        MyWorkBook.WorkSheets[1].Cells[i,3].Value := Mdata5.FieldByName('FEstimateAmount').AsString; //预估金额
        MyWorkBook.WorkSheets[1].Cells[i,4].Value := Mdata5.FieldByName('FRealAmount').AsString; //贷款金额
        MyWorkBook.WorkSheets[1].Cells[i,5].Value := Mdata5.FieldByName('FFInvoiceAmount').AsString; //起息日
        Mdata5.next;
        i:=i+1;
        k:=k+1;
      End;
      MyWorkBook.WorkSheets[1].Cells[i,3].Value := '=SUM(C5:C'+IntToStr(i-1)+')'; //预估合计金额
      MyWorkBook.WorkSheets[1].Cells[i,4].Value := '=SUM(D5:D'+IntToStr(i-1)+')'; //
      MyWorkBook.WorkSheets[1].Cells[i,5].Value := '=SUM(E5:E'+IntToStr(i-1)+')'; //
    end;
    StatusBar1.Panels[5].text:='外协任务单查询:'+E_WorkItemNumStar.Text+'-'+E_WorkItemNumEnd.Text+'的信息导出完成!!';
     MyWorkBook.WorkSheets[1].Name:=E_WorkItemNumStar.Text+'-'+E_WorkItemNumEnd.Text;//工作表改名


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


  qry.Free;


end;

procedure TFrm_AgentBalanceQry.ToolButton14Click(Sender: TObject);
var
   qry:TADOquery;
  P_Retinf:String;

  Query_Sp:TADOStoredProc;
  i,k,s,ReNum,ReNumLoop,R_Count:Integer;
  ExcelApp,MyWorkBook,mysheet: Variant;
  filepath,savefilepath,Sqlstr,copystart,copyend,copystart1,aa:string;
  ListQry:Tadoquery;

begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='select FSysTem,FAgentID,FAgentNameQry,FProductClass,isnull(sum(FEstimateAmount),0) as FEstimateAmount,'
                 +'isnull(sum(FEstimateQry),0) as SumFEstimateQry,isnull(sum(SumFBalanceQry),0) as FSumFBalanceQry,'
                 +'isnull(sum(FRealAmount),0) as FRealAmount,sum(SumFBalanceQry) as SumFBalanceQry from  V_WorkList '
                 +'where FDepartmentID=:FDepartmentID1 and FWorkItemNum>=:WorkItemNumStar1 and FWorkItemNum<=:WorkItemNumEnd1 and FUnitName=''kg'' and FIsDelList<>1 '
                 +'group by FSysTem,FAgentID,FAgentNameQry,FProductClass ' ;
    qry.Parameters.FindParam('FDepartmentID1').value:=UserFDepartmentID;
    qry.Parameters.FindParam('WorkItemNumStar1').value:= E_WorkItemNumStar.Text;
    qry.Parameters.FindParam('WorkItemNumEnd1').value:=E_WorkItemNumEnd.Text;;
    qry.OPen;
  finally
    ;
  end;

  mdata5.Close;
  mdata5.CopyFromDataSet(qry);
  Mdata5.Active:=True;
{  DS_Mdata5.DataSet:=Mdata5;
  cxGV5.DataController.DataSource:=DS_Mdata5;
  cxGvColumn(cxGv,mdata5);
 }
  filepath:=Extractfilepath(application.ExeName)+'外协任务单查询重量模版.xls';
  if (Mdata5.Active) and (Mdata5.recordcount>0) then
  Begin
    SaveDialog1.FileName:='外协任务单查询重量'+E_WorkItemNumStar.Text+'-'+E_WorkItemNumEnd.Text;
    SaveDialog1.Filter:='.xls';
    SaveDialog1.Execute;

    if (E_WorkItemNumStar.Text<>'') Or (E_WorkItemNumStar.Text<>Null) then
        savefilepath:=SaveDialog1.FileName+'.xls';

    if FileExists(savefilepath) then
    begin
      DeleteFile(savefilepath) ;
    end;

    StatusBar1.Panels[5].text:='外协任务单查询重量:'+E_WorkItemNumStar.Text+'-'+E_WorkItemNumEnd.Text+'的信息..请稍等!!';
    ExcelApp:= CreateOleObject('Excel.Application' );
    MyWorkBook:=ExcelApp.WorkBooks.Open( filepath );

    MyWorkBook.WorkSheets[1].Cells[3,1].Value:=AnsiReplaceStr(MyWorkBook.WorkSheets[1].Cells[3,1].Value,'B',E_WorkItemNumStar.Text); //日期
    MyWorkBook.WorkSheets[1].Cells[3,1].Value:=AnsiReplaceStr(MyWorkBook.WorkSheets[1].Cells[3,1].Value,'C',E_WorkItemNumEnd.Text); //日期

    i:=5;
    StatusBar1.Panels[5].text:='正在导出外协任务单重量查询:'+E_WorkItemNumStar.Text+'-'+E_WorkItemNumEnd.Text+'的明细信息..请稍等!!';
    copystart:='A'+IntToStr(i);
    if Mdata5.recordcount>0 then
    Begin
      if Mdata5.recordcount>1 then
      Begin
        copystart:='A'+IntToStr(i);
        copystart1:='A'+IntToStr(i+1);
        copyend:='J'+IntToStr(i);
        ReNum:=Mdata5.recordcount-1;
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
        R_Count:=Mdata5.recordcount;
      end;
      Mdata5.first;
      K:=0 ;
      while not Mdata5.eof do
      Begin
        MyWorkBook.WorkSheets[1].Cells[i,1].Value := inttostr(K+1); //序号
        MyWorkBook.WorkSheets[1].Cells[i,2].Value := Mdata5.FieldByName('FAgentNameQry').AsString;//生产用户
        MyWorkBook.WorkSheets[1].Cells[i,3].Value := Mdata5.FieldByName('SumFEstimateQry').AsString; //起息日
        MyWorkBook.WorkSheets[1].Cells[i,4].Value := Mdata5.FieldByName('FSumFBalanceQry').AsString; //起息日
        MyWorkBook.WorkSheets[1].Cells[i,5].Value := Mdata5.FieldByName('FProductClass').AsString; //起息日
        Mdata5.next;
        i:=i+1;
        k:=k+1;
      End;
      MyWorkBook.WorkSheets[1].Cells[i,3].Value := '=SUM(C5:C'+IntToStr(i-1)+')'; //预估合计金额
      MyWorkBook.WorkSheets[1].Cells[i,4].Value := '=SUM(D5:D'+IntToStr(i-1)+')'; //
      MyWorkBook.WorkSheets[1].Cells[i,5].Value := '=SUM(E5:E'+IntToStr(i-1)+')'; //
    end;
    StatusBar1.Panels[5].text:='外协任务单查询重量:'+E_WorkItemNumStar.Text+'-'+E_WorkItemNumEnd.Text+'的信息导出完成!!';
     MyWorkBook.WorkSheets[1].Name:=E_WorkItemNumStar.Text+'-'+E_WorkItemNumEnd.Text;//工作表改名


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


  qry.Free;



end;

procedure TFrm_AgentBalanceQry.ToolButton15Click(Sender: TObject);
var
  qry:TADOquery;
  P_Retinf:String;
  Query_Sp:TADOStoredProc;
  i,k,s,ReNum,ReNumLoop,R_Count:Integer;
  ExcelApp,MyWorkBook,mysheet: Variant;
  filepath,savefilepath,Sqlstr,copystart,copyend,copystart1,aa:string;
  ListQry:Tadoquery;
  proc:TADOStoredProc;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  proc:=TADOStoredProc.Create(self);
  proc.ConnectionString:=mdlData.ReadConnStr;
  proc.CommandTimeout:=500;
  try
    proc.ProcedureName:='P_WorkItem_Qry;1';
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=20;
      name := '@WorkItemNumStar';
      value:=E_WorkItemNumStar.Text;
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=20;
      name := '@WorkItemNumEnd';
      value:=E_WorkItemNumEnd.Text;
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftInteger;
      Direction := pdinput;
      size:=20;
      name := '@UserFDepartmentID';
      value:=UserFDepartmentID;
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=20;
      name := '@WorkItemQrySort';
      value:='任务单按项目查询';
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
    mdata5.CopyFromDataSet(proc);
    cxGvColumn(cxGv5,Mdata5);
  finally
     ;
  end;


  filepath:=Extractfilepath(application.ExeName)+'任务单按项目查询模版.xls';
  if (Mdata5.Active) and (Mdata5.recordcount>0) then
  Begin
    SaveDialog1.FileName:='任务单按项目查询'+E_WorkItemNumStar.Text+'-'+E_WorkItemNumEnd.Text;
    SaveDialog1.Filter:='.xls';
    SaveDialog1.Execute;

    if (E_WorkItemNumStar.Text<>'') Or (E_WorkItemNumStar.Text<>Null) then
        savefilepath:=SaveDialog1.FileName+'.xls';

    if FileExists(savefilepath) then
    begin
      DeleteFile(savefilepath) ;
    end;

    StatusBar1.Panels[5].text:='任务单按项目查询:'+E_WorkItemNumStar.Text+'-'+E_WorkItemNumEnd.Text+'的信息..请稍等!!';
    ExcelApp:= CreateOleObject('Excel.Application' );
    MyWorkBook:=ExcelApp.WorkBooks.Open( filepath );

    MyWorkBook.WorkSheets[1].Cells[3,1].Value:=AnsiReplaceStr(MyWorkBook.WorkSheets[1].Cells[3,1].Value,'B',E_WorkItemNumStar.Text); //日期
    MyWorkBook.WorkSheets[1].Cells[3,1].Value:=AnsiReplaceStr(MyWorkBook.WorkSheets[1].Cells[3,1].Value,'C',E_WorkItemNumEnd.Text); //日期

    i:=5;
    StatusBar1.Panels[5].text:='正在导出任务单按项目查询:'+E_WorkItemNumStar.Text+'-'+E_WorkItemNumEnd.Text+'的明细信息..请稍等!!';
    copystart:='A'+IntToStr(i);
    if Mdata5.recordcount>0 then
    Begin
      if Mdata5.recordcount>1 then
      Begin
        copystart:='A'+IntToStr(i);
        copystart1:='A'+IntToStr(i+1);
        copyend:='J'+IntToStr(i);
        ReNum:=Mdata5.recordcount-1;
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
        R_Count:=Mdata5.recordcount;
      end;
      Mdata5.first;
      K:=0 ;
      while not Mdata5.eof do
      Begin
        MyWorkBook.WorkSheets[1].Cells[i,1].Value := inttostr(K+1); //序号
        MyWorkBook.WorkSheets[1].Cells[i,2].Value := Mdata5.FieldByName('FClientShortName').AsString;
        MyWorkBook.WorkSheets[1].Cells[i,3].Value := Mdata5.FieldByName('FBranchFileNo').AsString;
        MyWorkBook.WorkSheets[1].Cells[i,4].Value := Mdata5.FieldByName('FBranchItemNumber').AsString;
        MyWorkBook.WorkSheets[1].Cells[i,5].Value := Mdata5.FieldByName('FItemModel').AsString;
        MyWorkBook.WorkSheets[1].Cells[i,6].Value := Mdata5.FieldByName('SumFEstimateQry').AsString;
        MyWorkBook.WorkSheets[1].Cells[i,7].Value := Mdata5.FieldByName('SumFEstimateAmount').AsString;
        MyWorkBook.WorkSheets[1].Cells[i,8].Value := Mdata5.FieldByName('FSumFBalanceQry').AsString;
        MyWorkBook.WorkSheets[1].Cells[i,9].Value := Mdata5.FieldByName('SumFBalanceAmount').AsString;
        Mdata5.next;
        i:=i+1;
        k:=k+1;
      End;
      MyWorkBook.WorkSheets[1].Cells[i,6].Value := '=SUM(F5:F'+IntToStr(i-1)+')'; //预估合计金额
      MyWorkBook.WorkSheets[1].Cells[i,7].Value := '=SUM(G5:G'+IntToStr(i-1)+')'; //
      MyWorkBook.WorkSheets[1].Cells[i,8].Value := '=SUM(H5:H'+IntToStr(i-1)+')'; //
      MyWorkBook.WorkSheets[1].Cells[i,9].Value := '=SUM(I5:H'+IntToStr(i-1)+')'; //
    end;
    StatusBar1.Panels[5].text:='任务单按项目查询:'+E_WorkItemNumStar.Text+'-'+E_WorkItemNumEnd.Text+'的信息导出完成!!';
     MyWorkBook.WorkSheets[1].Name:=E_WorkItemNumStar.Text+'-'+E_WorkItemNumEnd.Text;//工作表改名


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


  qry.Free;



end;

procedure TFrm_AgentBalanceQry.ToolButton18Click(Sender: TObject);
var
  qry,qry1:TADOquery;
  P_Retinf:String;
  Query_Sp:TADOStoredProc;
  i,k,s,ReNum,ReNumLoop,R_Count,j:Integer;
  ExcelApp,MyWorkBook,mysheet: Variant;
  filepath,savefilepath,Sqlstr,copystart,copyend,copystart1,aa:string;
  ListQry:Tadoquery;
  proc:TADOStoredProc;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  qry1:=TAdoQuery.Create(self);
  qry1.ConnectionString:=mdlData.ReadConnStr;

  proc:=TADOStoredProc.Create(self);
  proc.ConnectionString:=mdlData.ReadConnStr;
  proc.CommandTimeout:=500;
  try
    proc.ProcedureName:='P_WorkItem_Qry;1';
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=20;
      name := '@WorkItemNumStar';
      value:=E_WorkItemNumStar.Text;
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=20;
      name := '@WorkItemNumEnd';
      value:=E_WorkItemNumEnd.Text;
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftInteger;
      Direction := pdinput;
      size:=20;
      name := '@UserFDepartmentID';
      value:=UserFDepartmentID;
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=20;
      name := '@WorkItemQrySort';
      value:='任务单按部件查询';
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
    mdata5.CopyFromDataSet(proc);
    cxGvColumn(cxGv5,Mdata5);
  finally
     ;
  end;

  try
    qry.SQL.Text:='Select distinct FWorkYear,FWorkMonth from V_WorkList '
                 +'where FDepartmentID=:FDepartmentID1 and FWorkItemNum>=:WorkItemNumStar1 and FWorkItemNum<=:WorkItemNumEnd1 and FIsDelList<>1';
    qry.Parameters.FindParam('FDepartmentID1').value:=UserFDepartmentID;
    qry.Parameters.FindParam('WorkItemNumStar1').value:= E_WorkItemNumStar.Text;
    qry.Parameters.FindParam('WorkItemNumEnd1').value:=E_WorkItemNumEnd.Text;;
    qry.OPen;
  finally
    ;
  end;
  qry.Open;

  try
    qry1.SQL.Text:='Select distinct FPartsCode,FPartsName from V_WorkList '
                 +'where FDepartmentID=:FDepartmentID1 and FWorkItemNum>=:WorkItemNumStar1 and FWorkItemNum<=:WorkItemNumEnd1 and FIsDelList<>1';
    qry1.Parameters.FindParam('FDepartmentID1').value:=UserFDepartmentID;
    qry1.Parameters.FindParam('WorkItemNumStar1').value:= E_WorkItemNumStar.Text;
    qry1.Parameters.FindParam('WorkItemNumEnd1').value:=E_WorkItemNumEnd.Text;;
    qry1.OPen;
  finally
    ;
  end;
  qry1.Open;

  filepath:=Extractfilepath(application.ExeName)+'任务单按部件查询模版.xls';
  if (Mdata5.Active) and (Mdata5.recordcount>0) then
  Begin
    SaveDialog1.FileName:='任务单按部件查询'+E_WorkItemNumStar.Text+'-'+E_WorkItemNumEnd.Text;
    SaveDialog1.Filter:='.xls';
    SaveDialog1.Execute;

    if (E_WorkItemNumStar.Text<>'') Or (E_WorkItemNumStar.Text<>Null) then
        savefilepath:=SaveDialog1.FileName+'.xls';

    if FileExists(savefilepath) then
    begin
      DeleteFile(savefilepath) ;
    end;

    StatusBar1.Panels[5].text:='任务单按部件查询:'+E_WorkItemNumStar.Text+'-'+E_WorkItemNumEnd.Text+'的信息..请稍等!!';
    ExcelApp:= CreateOleObject('Excel.Application' );
    MyWorkBook:=ExcelApp.WorkBooks.Open( filepath );

    MyWorkBook.WorkSheets[1].Cells[3,1].Value:=AnsiReplaceStr(MyWorkBook.WorkSheets[1].Cells[3,1].Value,'B',E_WorkItemNumStar.Text); //日期
    MyWorkBook.WorkSheets[1].Cells[3,1].Value:=AnsiReplaceStr(MyWorkBook.WorkSheets[1].Cells[3,1].Value,'C',E_WorkItemNumEnd.Text); //日期

    j:=4;
    qry.First;
    while not qry.eof do
    Begin
      MyWorkBook.WorkSheets[1].Cells[4,j].Value := qry.FieldByName('FWorkYear').AsString+qry.FieldByName('FWorkMonth').AsString;
      qry.next;
      j:=j+1;
    End;

    i:=5;
    StatusBar1.Panels[5].text:='正在导出任务单按部件查询:'+E_WorkItemNumStar.Text+'-'+E_WorkItemNumEnd.Text+'的明细信息..请稍等!!';
    copystart:='A'+IntToStr(i);
    if qry1.recordcount>0 then
    Begin
      if qry1.recordcount>1 then
      Begin
        copystart:='A'+IntToStr(i);
        copystart1:='A'+IntToStr(i+1);
        copyend:='J'+IntToStr(i);
        ReNum:=qry1.recordcount-1;
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
        R_Count:=qry1.recordcount;
      end;
      qry1.first;
      K:=0 ;
      while not qry1.eof do
      Begin
        MyWorkBook.WorkSheets[1].Cells[i,1].Value := inttostr(K+1); //序号
        MyWorkBook.WorkSheets[1].Cells[i,2].Value := qry1.FieldByName('FPartsCode').AsString;
        MyWorkBook.WorkSheets[1].Cells[i,3].Value := qry1.FieldByName('FPartsName').AsString;
       { MyWorkBook.WorkSheets[1].Cells[i,4].Value := Mdata5.FieldByName('SumFEstimateAmount').AsString;
        MyWorkBook.WorkSheets[1].Cells[i,5].Value := Mdata5.FieldByName('SumFEstimateQry').AsString;
        MyWorkBook.WorkSheets[1].Cells[i,6].Value := Mdata5.FieldByName('dj').AsString;
        MyWorkBook.WorkSheets[1].Cells[i,7].Value := Mdata5.FieldByName('FWorkYear').AsString;
        MyWorkBook.WorkSheets[1].Cells[i,8].Value := Mdata5.FieldByName('FWorkMonth').AsString; }
        qry1.next;
        i:=i+1;
        k:=k+1;
      End;
      {MyWorkBook.WorkSheets[1].Cells[i,6].Value := '=SUM(F5:F'+IntToStr(i-1)+')'; //预估合计金额
      MyWorkBook.WorkSheets[1].Cells[i,7].Value := '=SUM(G5:G'+IntToStr(i-1)+')'; //
      MyWorkBook.WorkSheets[1].Cells[i,8].Value := '=SUM(H5:H'+IntToStr(i-1)+')'; //
      MyWorkBook.WorkSheets[1].Cells[i,9].Value := '=SUM(I5:H'+IntToStr(i-1)+')'; //}
    end;
    StatusBar1.Panels[5].text:='任务单按部件查询:'+E_WorkItemNumStar.Text+'-'+E_WorkItemNumEnd.Text+'的信息导出完成!!';
     MyWorkBook.WorkSheets[1].Name:=E_WorkItemNumStar.Text+'-'+E_WorkItemNumEnd.Text;//工作表改名


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


  qry.Free;


end;

procedure TFrm_AgentBalanceQry.ToolButton5Click(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If UserFDepartmentsort=1 then //事业部
  begin
    If PC_Tree_WorkItem.ActivePage=TS_Tree_WItem then
    begin
      If not TreeVeiwListWhere(qry,MyTreeView_WItem,'VT_OverAll_WItem',' and FDepartmentID='+IntToStr(UserFDepartmentID)) then
      begin
        Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
      end;
    end;
    If PC_Tree_WorkItem.ActivePage=TS_Tree_BAgent then
    begin
      If not TreeVeiwListWhere(qry,MyTreeView_BAgent,'VT_OverAll_BAgent',' and FDepartmentID='+IntToStr(UserFDepartmentID)) then
      begin
        Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
      end;
    end;
    If PC_Tree_WorkItem.ActivePage=TS_Tree_Date then
    begin
      If not TreeVeiwListWhere(qry,MyTreeView_Date,'VT_OverAll_Date',' and FDepartmentID='+IntToStr(UserFDepartmentID)) then
      begin
        Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
      end;
    end;


  end;

  If UserFDepartmentsort=3 then //公共平台
  begin
    If PC_Tree_WorkItem.ActivePage=TS_Tree_WItem then
    begin
      If not TreeVeiwList(qry,MyTreeView_WItem,'VT_OverAll_WItem', ) then
      begin
        Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
      end;
    end;
    If PC_Tree_WorkItem.ActivePage=TS_Tree_BAgent then
    begin
      If not TreeVeiwList(qry,MyTreeView_BAgent,'VT_OverAll_BAgent', ) then
      begin
        Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
      end;
    end;
  end;






end;

procedure TFrm_AgentBalanceQry.MyTreeView_WItemExpanding(Sender: TObject;
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
  qry.SQL.Text:='Select * from VT_OverAll_WItem where FParentNumber= '''
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
    with MyTreeView_WItem.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('Isleaf').value;
    end;
    qry.Next;
  end;


end;

procedure TFrm_AgentBalanceQry.MyTreeView_WItemChange(Sender: TObject;
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
    ListFNumber_WItem:=PTree(Node.Data).FNumber;
    P_Isleaf_WItem:=PTree(Node.Data).Isleaf;
    If P_Isleaf_WItem=0 then
    begin
      If PC_WorkItem.ActivePage=TS_Date then
      begin
        GV:='cxGV_Date';
        Gm:='mdata_Date';
        Gr:='cxGrid_Date';
        P_WSort:='项目平均单价汇总表';
        Act_OverAll.Execute;
        L_title.Caption:=P_WSort;
      end
      else
        Mdata_WItem.Close;
    end;

    If P_Isleaf_WItem>0 then
    begin
      If PC_WorkItem.ActivePage=TS_WItem then
      begin
        GV:='cxGV_WItem';
        Gm:='mdata_WItem';
        Gr:='cxGrid_WItem';
        If CB_MX.Checked=True then
           P_WSort:='任务单明细'
        else
           P_WSort:='任务单汇总';
      end;
      If PC_WorkItem.ActivePage=TS_BItem then
      begin
        GV:='cxGV_BList';
        Gm:='mdata_BList';
        Gr:='cxGrid_BList';
        If CB_MX.Checked=True then
           P_WSort:='结算表明细'
        else
           P_WSort:='结算表汇总';
      end;
      Act_OverAll.Execute;
      L_title.Caption:=P_WSort;
    end
    else
      Mdata_WItem.Close;



  end;


end;

procedure TFrm_AgentBalanceQry.MyTreeView_BAgentExpanding(Sender: TObject;
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
  qry.SQL.Text:='Select * from VT_OverAll_BAgent where FParentNumber= '''
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
    with MyTreeView_BAgent.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('Isleaf').value;
    end;
    qry.Next;
  end;

end;

procedure TFrm_AgentBalanceQry.MyTreeView_BAgentChange(Sender: TObject;
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
    ListFNumber_BAgent:=PTree(Node.Data).FNumber;
    P_Isleaf_BAgent:=PTree(Node.Data).Isleaf;
    If P_Isleaf_BAgent>0 then
    begin
      If PC_WorkItem.ActivePage=TS_WItem then
      begin
        GV:='cxGV_WItem';
        Gm:='mdata_WItem';
        Gr:='cxGrid_WItem';
        If CB_MX.Checked=True then
           P_WSort:='任务单明细(按外协用户)'
        else
           P_WSort:='任务单汇总(按外协用户)';
      end;
      If PC_WorkItem.ActivePage=TS_BItem then
      begin
        GV:='cxGV_BList';
        Gm:='mdata_BList';
        Gr:='cxGrid_BList';
        If CB_MX.Checked=True then
           P_WSort:='结算表明细(按外协用户)'
        else
           P_WSort:='结算表汇总(按外协用户)';
      end;
      Act_OverAll.Execute;
      L_title.Caption:=P_WSort;

    end
    else
      Mdata_WItem.Close;
  end;


end;

procedure TFrm_AgentBalanceQry.Act_OverAllExecute(Sender: TObject);
var
  proc:TADOStoredProc;
begin
  proc:=TADOStoredProc.Create(self);
  proc.ConnectionString:=mdlData.ReadConnStr;
  proc.CommandTimeout:=500;

  If PC_Tree_WorkItem.ActivePage=TS_Tree_WItem then
  begin
    If ListFNumber_WItem='' then
       Exit;
  end;

  If PC_Tree_WorkItem.ActivePage=TS_Tree_BAgent then
  begin
    If ListFNumber_BAgent='' then
       Exit;
  end;
  If PC_Tree_WorkItem.ActivePage=TS_Tree_Date then
  begin
    If ListFNumber_Date='' then
       Exit;
  end; 

  try
    proc.ProcedureName:='P_OverAll;1';
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=200;
      name := '@FNumber';
      If PC_Tree_WorkItem.ActivePage=TS_Tree_WItem then
         value:=ListFNumber_WItem;
      If PC_Tree_WorkItem.ActivePage=TS_Tree_BAgent then
         value:=ListFNumber_BAgent;
      If PC_Tree_WorkItem.ActivePage=TS_Tree_Date then
         value:=ListFNumber_Date;
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=50;
      name := '@Sort';
      value:=P_WSort;
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=50;
      name := '@NumStar';
      value:=E_FDate1.Text;
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=50;
      name := '@NumEnd';
      value:=E_FDate2.Text;
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftInteger;
      Direction := pdinput;
      name := '@FDepartmentID';
      value:=UserFDepartmentID;
    end;
    proc.Open;
    (FindComponent(Gm) as TdxMemData).CopyFromDataSet(proc);
    cxGvColumn((FindComponent(GV) as TcxGridDBTableView),(FindComponent(Gm) as TdxMemData));
    (FindComponent(Gm) as TdxMemData).First;

  finally
     ;
  end;
  Proc.Free;



end;

procedure TFrm_AgentBalanceQry.Act_Menu_SetExecute(Sender: TObject);
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

procedure TFrm_AgentBalanceQry.N_EditClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_AgentBalanceQry.N_FilterClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_AgentBalanceQry.N_SortClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_AgentBalanceQry.N_GroupClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_AgentBalanceQry.N_SetClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_AgentBalanceQry.N_OutClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_AgentBalanceQry.cxGrid_WItemContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV_WItem';
  Gm:='mdata_WItem';
  Gr:='cxGrid_WItem';
  Act_Menu_Set.Execute;

end;

procedure TFrm_AgentBalanceQry.cxGrid_BListContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV_BList';
  Gm:='mdata_BList';
  Gr:='cxGrid_BList';
  Act_Menu_Set.Execute;

end;

procedure TFrm_AgentBalanceQry.Act_MenuExecute(Sender: TObject);
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

procedure TFrm_AgentBalanceQry.E_FYearPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
    try
      qry.SQL.Text:='select FNumber,FParentNumber from (select distinct cast(FWorkYear as varchar(4)) as FNumber,'''' as FParentNumber  from V_WorkList  where FDepartmentID=:FDepartmentID1 '
                   +' union '
                   +' select distinct cast(FWorkYear as varchar(4))+cast(FWorkMonth as varchar(2)) as FNumber,FWorkYear as FParentNumber from V_WorkList  where FDepartmentID=:FDepartmentID2) as t order by FParentNumber,FNumber ';
      qry.Parameters.FindParam('FDepartmentID1').value:=UserFDepartmentID;
      qry.Parameters.FindParam('FDepartmentID2').value:=UserFDepartmentID;
      qry.Open;
    finally
       ;
    end;

    selValue:=select('选择起始日期','FNumber','FparentNumber','FNumber','FNumber',qry);
    If (Length(selValue)>0) then
    begin
      E_FDate1.Text:=qry.FieldByName('FNumber').Value;
    end;



end;

procedure TFrm_AgentBalanceQry.E_FDate2PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
    try
       qry.SQL.Text:='select distinct cast(FWorkYear as varchar(4)) as FNumber,'''' as FParentNumber  from V_WorkList  where FDepartmentID=:FDepartmentID1 and cast(FWorkYear as varchar(4))+cast(FWorkMonth as varchar(2))>=:FDate1 '
                   +' union '
                   +' select distinct cast(FWorkYear as varchar(4))+cast(FWorkMonth as varchar(2)) as FNumber,FWorkYear as FParentNumber from V_WorkList  where FDepartmentID=:FDepartmentID2 and cast(FWorkYear as varchar(4))+cast(FWorkMonth as varchar(2))>=:FDate2 ';
      qry.Parameters.FindParam('FDepartmentID1').value:=UserFDepartmentID;
      qry.Parameters.FindParam('FDate1').value:=E_FDate1.Text;
      qry.Parameters.FindParam('FDepartmentID2').value:=UserFDepartmentID;
      qry.Parameters.FindParam('FDate2').value:=E_FDate1.Text;

      qry.Open;
    finally
       ;
    end;

    selValue:=select('选择起始日期','FNumber','FparentNumber','FNumber','FNumber',qry);
    If (Length(selValue)>0) then
    begin
      E_FDate2.Text:=qry.FieldByName('FNumber').Value;
    end;

end;

procedure TFrm_AgentBalanceQry.MyTreeView_DateExpanding(Sender: TObject;
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
  qry.SQL.Text:='Select * from VT_OverAll_Date where FParentNumber= '''
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
    with MyTreeView_Date.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('Isleaf').value;
    end;
    qry.Next;
  end;


end;

procedure TFrm_AgentBalanceQry.MyTreeView_DateChange(Sender: TObject;
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
    ListFNumber_Date:=PTree(Node.Data).FNumber;
    P_Isleaf_Date:=PTree(Node.Data).Isleaf;
    If P_Isleaf_Date>0 then
    begin
      If PC_WorkItem.ActivePage=TS_WItem then
      begin
        GV:='cxGV_WItem';
        Gm:='mdata_WItem';
        Gr:='cxGrid_WItem';
        If CB_MX.Checked=True then
           P_WSort:='任务单明细(按日期)'
        else
           P_WSort:='任务单汇总(按日期)';
      end;
      If PC_WorkItem.ActivePage=TS_BItem then
      begin
        GV:='cxGV_BList';
        Gm:='mdata_BList';
        Gr:='cxGrid_BList';
        If CB_MX.Checked=True then
           P_WSort:='结算表明细(按日期)'
        else
           P_WSort:='结算表汇总(按日期)';
      end;

      If PC_WorkItem.ActivePage=TS_Date then
      begin
        GV:='cxGV_Date';
        Gm:='mdata_Date';
        Gr:='cxGrid_Date';
        P_WSort:='生产任务单查询汇总表(按日期)';
      end;
      Act_OverAll.Execute;
      L_title.Caption:=P_WSort;

    end
    else
      Mdata_WItem.Close;
  end;


end;

procedure TFrm_AgentBalanceQry.cxGrid_DateContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV_Date';
  Gm:='mdata_Date';
  Gr:='cxGrid_Date';
  Act_Menu_Set.Execute;

end;

procedure TFrm_AgentBalanceQry.E_LocatePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
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
  MData7.CopyFromDataSet(qry);
  MData7.Active:=True;

end;

end.
