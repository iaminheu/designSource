unit Main_DesignBOMPick;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FrmGridBass, ExtCtrls, StdCtrls, DsFancyButton, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  dxmdaset, cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid,
  cxTextEdit, cxDropDownEdit, cxCalendar, cxMaskEdit, cxContainer, cxLabel,
  cxDBLookupComboBox, ADODB, cxButtonEdit, Grids, DBGrids, ComCtrls, RzShellDialogs,
  ToolWin, ImgList, FR_DSet, FR_DBSet, FR_Class, cxRadioGroup, Buttons,  Comobj,
  cxGroupBox, cxCheckBox, cxCurrencyEdit, RzPanel, RzSplit, RzTabs,IniFiles,
  jpeg, cxImage, RzStatus, ActnList, Menus;

type
  TFrm_DesignBOMPick = class(TFrm_GridBass)
    MData: TdxMemData;
    DS_Mdata: TDataSource;
    ImageList: TImageList;
    frReport: TfrReport;
    frDBDataSet: TfrDBDataSet;
    PC_1: TRzPageControl;
    TS_DesginBOMPick: TRzTabSheet;
    TS_k3: TRzTabSheet;
    cxGrid_BOMK3: TcxGrid;
    cxGV_BOMK3: TcxGridDBTableView;
    FNumber2: TcxGridDBColumn;
    FName2: TcxGridDBColumn;
    FModel2: TcxGridDBColumn;
    UnitName2: TcxGridDBColumn;
    FItemId: TcxGridDBColumn;
    cxGL_BOMK3: TcxGridLevel;
    ADOQuery: TADOQuery;
    DataSource: TDataSource;
    ADOStoredProc1: TADOStoredProc;
    FK3Suttle_1: TcxGridDBColumn;
    K3ISOut: TcxGridDBColumn;
    TS_General: TRzTabSheet;
    cxGrid_General: TcxGrid;
    cxGV_General: TcxGridDBTableView;
    th_3: TcxGridDBColumn;
    mc_3: TcxGridDBColumn;
    gg_3: TcxGridDBColumn;
    ssth_3: TcxGridDBColumn;
    FQry_3: TcxGridDBColumn;
    FSumQry_3: TcxGridDBColumn;
    FNumber_3: TcxGridDBColumn;
    FName_3: TcxGridDBColumn;
    FModel_3: TcxGridDBColumn;
    UnitName_3: TcxGridDBColumn;
    FSuttle_3: TcxGridDBColumn;
    FRation_3: TcxGridDBColumn;
    Remark_3: TcxGridDBColumn;
    FFullNumber_3: TcxGridDBColumn;
    ssFullNumber_3: TcxGridDBColumn;
    Code_3: TcxGridDBColumn;
    cxGL_General: TcxGridLevel;
    TS_Public: TRzTabSheet;
    cxGrid_Public: TcxGrid;
    cxGV_Public: TcxGridDBTableView;
    ID: TcxGridDBColumn;
    th4: TcxGridDBColumn;
    mc4: TcxGridDBColumn;
    gg4: TcxGridDBColumn;
    K3ItemID4: TcxGridDBColumn;
    FName4: TcxGridDBColumn;
    FModel4: TcxGridDBColumn;
    UnitName4: TcxGridDBColumn;
    FSuttle4: TcxGridDBColumn;
    cxGL_Public: TcxGridLevel;
    FCode_3: TcxGridDBColumn;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Image4: TImage;
    TS_DesignBOM: TRzTabSheet;
    cxGridDesignBOM_Structure: TcxGrid;
    cxGVDesignBOM_Structure: TcxGridDBTableView;
    FCode_5: TcxGridDBColumn;
    th_5: TcxGridDBColumn;
    mc_5: TcxGridDBColumn;
    gg_5: TcxGridDBColumn;
    FPartsSort_5: TcxGridDBColumn;
    ssth_5: TcxGridDBColumn;
    FQry_5: TcxGridDBColumn;
    FSuttle_5: TcxGridDBColumn;
    FSumQry_5: TcxGridDBColumn;
    FSumSuttle_5: TcxGridDBColumn;
    FNumber_5: TcxGridDBColumn;
    FName_5: TcxGridDBColumn;
    FModel_5: TcxGridDBColumn;
    UnitName_5: TcxGridDBColumn;
    FPriceQry: TcxGridDBColumn;
    FUse: TcxGridDBColumn;
    FRation_5: TcxGridDBColumn;
    FFullNumber_5: TcxGridDBColumn;
    ssFullNumber_5: TcxGridDBColumn;
    Remark_5: TcxGridDBColumn;
    FFullName_5: TcxGridDBColumn;
    cxGLDesignBOM_Structure: TcxGridLevel;
    Image5: TImage;
    Label6: TLabel;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    FK3ID: TcxGridDBColumn;
    FK3ID_4: TcxGridDBColumn;
    FK3ID_3: TcxGridDBColumn;
    DataSource1: TDataSource;
    TS_TempTxt: TRzTabSheet;
    cxGrid_Temp: TcxGrid;
    cxGV_Temp: TcxGridDBTableView;
    Parent_6: TcxGridDBColumn;
    xh_6: TcxGridDBColumn;
    A4_6: TcxGridDBColumn;
    th_6: TcxGridDBColumn;
    mc_6: TcxGridDBColumn;
    gg_6: TcxGridDBColumn;
    ssth_6: TcxGridDBColumn;
    cl_6: TcxGridDBColumn;
    k3cl_6: TcxGridDBColumn;
    unitName_6: TcxGridDBColumn;
    FQry_6: TcxGridDBColumn;
    FSumQry_6: TcxGridDBColumn;
    FNumber_6: TcxGridDBColumn;
    FName_6: TcxGridDBColumn;
    FModel_6: TcxGridDBColumn;
    FSuttle_6: TcxGridDBColumn;
    FRation_6: TcxGridDBColumn;
    FK3Suttle_6: TcxGridDBColumn;
    Remark_6: TcxGridDBColumn;
    bjjb_6: TcxGridDBColumn;
    FPartsSort_6: TcxGridDBColumn;
    FFullNumber_6: TcxGridDBColumn;
    ssFullNumber_6: TcxGridDBColumn;
    FFullName_6: TcxGridDBColumn;
    FInputDate_6: TcxGridDBColumn;
    UserNum_6: TcxGridDBColumn;
    FItemListID_6: TcxGridDBColumn;
    FItemNumber_6: TcxGridDBColumn;
    FPartsNumber_6: TcxGridDBColumn;
    cxGL_Temp: TcxGridLevel;
    TS_WorkInfo_Zsi: TRzTabSheet;
    cxGrid_WorkInfo: TcxGrid;
    cxGV_WorkInfo: TcxGridDBTableView;
    F_WrokInf: TcxGridDBColumn;
    F_Wroktime: TcxGridDBColumn;
    F_ItemListId: TcxGridDBColumn;
    F_UserNum: TcxGridDBColumn;
    cxGL_WorkInfo: TcxGridLevel;
    FNumber4: TcxGridDBColumn;
    FTxtItemID: TcxGridDBColumn;
    FTxtName: TcxGridDBColumn;
    FTxtModel: TcxGridDBColumn;
    TxtunitName: TcxGridDBColumn;
    IsOut: TcxGridDBColumn;
    FProcess: TcxGridDBColumn;
    FProcessPictureId: TcxGridDBColumn;
    FProcessPicture: TcxGridDBColumn;
    DS_Mdata_WorkInfo: TDataSource;
    Mdata_WorkInfo: TdxMemData;
    DS_Mdata_Temp: TDataSource;
    Mdata_Temp: TdxMemData;
    DS_Mdata_Structure: TDataSource;
    Mdata_Structure: TdxMemData;
    DS_Mdata_BOMK3: TDataSource;
    Mdata_BOMK3: TdxMemData;
    DS_Mdata_General: TDataSource;
    Mdata_General: TdxMemData;
    DS_Mdata_Public: TDataSource;
    Mdata_Public: TdxMemData;
    RzSizePanel1: TRzSizePanel;
    MyTreeView: TTreeView;
    TS_K3Item_Inf: TRzTabSheet;
    cxGrid_K3: TcxGrid;
    cxGV_K3: TcxGridDBTableView;
    FNumber_8: TcxGridDBColumn;
    FName_8: TcxGridDBColumn;
    FModel_8: TcxGridDBColumn;
    UnitName_8: TcxGridDBColumn;
    FK3Suttle_5: TcxGridDBColumn;
    F_104: TcxGridDBColumn;
    FItemId_8: TcxGridDBColumn;
    cxGL_K3: TcxGridLevel;
    Panel1: TPanel;
    ToolBar1: TToolBar;
    TB_Ref: TToolButton;
    TB_Del: TToolButton;
    TB_K3Ref: TToolButton;
    ToolButton5: TToolButton;
    TB_Out: TToolButton;
    TB_Down: TToolButton;
    TB_PRIN: TToolButton;
    ToolButton1: TToolButton;
    TB_EXIT: TToolButton;
    Label5: TLabel;
    Mdata_K3: TdxMemData;
    DS_Mdata_K3: TDataSource;
    RzSizePanel2: TRzSizePanel;
    MyTreeView_K3: TTreeView;
    ToolBar2: TToolBar;
    TB_Ref_K3: TToolButton;
    ToolButton12: TToolButton;
    F_106: TcxGridDBColumn;
    ToolBar3: TToolBar;
    RB_Ref2: TToolButton;
    ToolButton4: TToolButton;
    ToolBar4: TToolBar;
    RB_Ref3: TToolButton;
    ToolButton6: TToolButton;
    ToolBar5: TToolBar;
    RB_Ref_Public: TToolButton;
    ToolButton8: TToolButton;
    ToolBar6: TToolBar;
    RB_Ref5: TToolButton;
    ToolButton10: TToolButton;
    ToolBar7: TToolBar;
    RB_Ref6: TToolButton;
    ToolButton13: TToolButton;
    ToolBar8: TToolBar;
    RB_Ref_WorkInfo_7: TToolButton;
    ToolButton15: TToolButton;
    TB_Down2: TToolButton;
    FBomReMark_4: TcxGridDBColumn;
    FBomReMark_3: TcxGridDBColumn;
    FBomReMark_6: TcxGridDBColumn;
    FBjbs_6: TcxGridDBColumn;
    Panel2: TPanel;
    Bevel1: TBevel;
    Label4: TLabel;
    Label7: TLabel;
    E_th1: TcxButtonEdit;
    E_th2: TcxComboBox;
    E_FClientFullName: TcxComboBox;
    E_FItemModel: TcxComboBox;
    Panel3: TPanel;
    Bevel2: TBevel;
    Label9: TLabel;
    E_Locate4: TcxButtonEdit;
    Label8: TLabel;
    Panel4: TPanel;
    Bevel3: TBevel;
    Label10: TLabel;
    E_Locate3: TcxButtonEdit;
    Panel5: TPanel;
    Bevel4: TBevel;
    Label11: TLabel;
    E_Locate2: TcxButtonEdit;
    Panel6: TPanel;
    Bevel5: TBevel;
    Label12: TLabel;
    E_Locate5: TcxButtonEdit;
    Panel7: TPanel;
    Bevel6: TBevel;
    Label13: TLabel;
    E_Locate8: TcxButtonEdit;
    stbBar: TRzStatusBar;
    RzClockStatus1: TRzClockStatus;
    RzKeyStatus1: TRzKeyStatus;
    RzKeyStatus2: TRzKeyStatus;
    RzKeyStatus3: TRzKeyStatus;
    stbMsg: TRzFieldStatus;
    actionList: TActionList;
    Actrights: TAction;
    Actpwd: TAction;
    ActLog: TAction;
    ActBOMServer: TAction;
    Act_IMP_BOM: TAction;
    ActWorkPrice: TAction;
    ActBalancePrice: TAction;
    ActAgentBalance: TAction;
    ActWorkItem: TAction;
    ActAgentBalanceQry: TAction;
    ActLKDDBalanceItem: TAction;
    txtthtxtth_4: TcxGridDBColumn;
    FBomReMark_5: TcxGridDBColumn;
    TxtTh_5: TcxGridDBColumn;
    TxtTh_3: TcxGridDBColumn;
    TxtTh_6: TcxGridDBColumn;
    TS_GBT: TRzTabSheet;
    cxGrid_GBT: TcxGrid;
    cxGV_GBT: TcxGridDBTableView;
    FName_9: TcxGridDBColumn;
    FGBT_9: TcxGridDBColumn;
    FModel_9: TcxGridDBColumn;
    FK3Ration_9: TcxGridDBColumn;
    FGBTRemark_9: TcxGridDBColumn;
    cxGL_GBT: TcxGridLevel;
    ToolBar9: TToolBar;
    TB_Ref9: TToolButton;
    ToolButton11: TToolButton;
    TS_Omitt: TRzTabSheet;
    ToolBar10: TToolBar;
    TB_Ref_Omitt: TToolButton;
    ToolButton17: TToolButton;
    cxGrid_Omitt: TcxGrid;
    cxGV_Omitt: TcxGridDBTableView;
    FGBT_10: TcxGridDBColumn;
    OMitt_10: TcxGridDBColumn;
    jc_10: TcxGridDBColumn;
    mc_10: TcxGridDBColumn;
    xn_10: TcxGridDBColumn;
    cxGL_Omitt: TcxGridLevel;
    Mdata_GBT: TdxMemData;
    DS_Mdata_GBT: TDataSource;
    Mdata_Omitt: TdxMemData;
    DS_Mdata_Omitt: TDataSource;
    FL: TcxGridDBColumn;
    FXS: TcxGridDBColumn;
    FK3Ration_8: TcxGridDBColumn;
    FK3Ration_2: TcxGridDBColumn;
    FL_2: TcxGridDBColumn;
    FXS_2: TcxGridDBColumn;
    Fcy_8: TcxGridDBColumn;
    FCY_2: TcxGridDBColumn;
    TB_Out4: TToolButton;
    FK3Ration_4: TcxGridDBColumn;
    FK3cy_4: TcxGridDBColumn;
    FK3Suttle5: TcxGridDBColumn;
    FK3Ration_5: TcxGridDBColumn;
    FK3cy_5: TcxGridDBColumn;
    isout_5: TcxGridDBColumn;
    TB_Sum: TToolButton;
    ToolButton9: TToolButton;
    FSuttlecy_4: TcxGridDBColumn;
    FK3Suttle4: TcxGridDBColumn;
    ProgressBar: TProgressBar;
    ToolButton14: TToolButton;
    TB_Copy: TToolButton;
    Act_IMP_BOM_Copy: TAction;
    Panel_Copy: TPanel;
    Label16: TLabel;
    Label15: TLabel;
    E_Rawth1: TcxButtonEdit;
    E_Copyth1: TcxButtonEdit;
    E_Rawth2: TcxComboBox;
    E_Copyth2: TcxComboBox;
    TB_Parts: TToolButton;
    PC_2: TRzPageControl;
    TS_MX: TRzTabSheet;
    TS_Sort: TRzTabSheet;
    cxGrid_Sum: TcxGrid;
    cxGV_Sum: TcxGridDBTableView;
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
    FManageParts_Sum: TcxGridDBColumn;
    FWorkParts_Sum: TcxGridDBColumn;
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
    Remark_Sum: TcxGridDBColumn;
    FFullName_Sum: TcxGridDBColumn;
    cxGL_Sum: TcxGridLevel;
    cxGrid: TcxGrid;
    cxGV: TcxGridDBTableView;
    FCode: TcxGridDBColumn;
    xh: TcxGridDBColumn;
    th: TcxGridDBColumn;
    mc: TcxGridDBColumn;
    gg: TcxGridDBColumn;
    FSuttle: TcxGridDBColumn;
    FRation: TcxGridDBColumn;
    FK3Suttle: TcxGridDBColumn;
    k3cl: TcxGridDBColumn;
    FQry: TcxGridDBColumn;
    FSumQry: TcxGridDBColumn;
    FSumSuttle: TcxGridDBColumn;
    ssth: TcxGridDBColumn;
    FNumber: TcxGridDBColumn;
    FName: TcxGridDBColumn;
    FModel: TcxGridDBColumn;
    UnitName: TcxGridDBColumn;
    FBomReMark: TcxGridDBColumn;
    TxtTh: TcxGridDBColumn;
    cl: TcxGridDBColumn;
    Remark: TcxGridDBColumn;
    bjjb: TcxGridDBColumn;
    A4: TcxGridDBColumn;
    Code: TcxGridDBColumn;
    FBjbs: TcxGridDBColumn;
    FPartsSort: TcxGridDBColumn;
    FFullNumber: TcxGridDBColumn;
    ssFullNumber: TcxGridDBColumn;
    FFullName: TcxGridDBColumn;
    FInputDate: TcxGridDBColumn;
    NumName: TcxGridDBColumn;
    FItemNumber: TcxGridDBColumn;
    FPartsNumber: TcxGridDBColumn;
    FItemListID: TcxGridDBColumn;
    cxGL: TcxGridLevel;
    MData_Sum: TdxMemData;
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
    DS_Mdata_Sum: TDataSource;
    Act_Parts: TAction;
    FDesignRemark: TcxGridDBColumn;
    FDesignRemark_6: TcxGridDBColumn;
    FDepartmentName: TcxGridDBColumn;
    FItemNumber_Info: TcxGridDBColumn;
    FPartsNumber_Info: TcxGridDBColumn;
    Panel9: TPanel;
    Bevel8: TBevel;
    Label17: TLabel;
    E_UserNum: TcxButtonEdit;
    PM: TPopupMenu;
    N_Edit: TMenuItem;
    N_Filter: TMenuItem;
    N_Sort: TMenuItem;
    N_Group: TMenuItem;
    N_Set: TMenuItem;
    N_Out: TMenuItem;
    Act_Menu_Set: TAction;
    Act_Menu: TAction;
    TS_AddK3: TRzTabSheet;
    ToolBar11: TToolBar;
    TB_Ref_AddK3: TToolButton;
    ToolButton16: TToolButton;
    RzSizePanel3: TRzSizePanel;
    MyTreeView_AddK3: TTreeView;
    Mdata_AddK3: TdxMemData;
    DS_Mdata_AddK3: TDataSource;
    TB_AddK3: TToolButton;
    TB_Del_AddK3: TToolButton;
    TB_Edit_Addk3: TToolButton;
    TB_Save_Addk3: TToolButton;
    Panel8: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    RSP_List: TRzSizePanel;
    PageControl2: TPageControl;
    TabSheet3: TTabSheet;
    cxGrid_AddK3: TcxGrid;
    cxGV_AddK3: TcxGridDBTableView;
    k3cl_AddK3: TcxGridDBColumn;
    xh_AddK3: TcxGridDBColumn;
    th_AddK3: TcxGridDBColumn;
    mc_AddK3: TcxGridDBColumn;
    gg_AddK3: TcxGridDBColumn;
    cl_AddK3: TcxGridDBColumn;
    FSuttle_AddK3: TcxGridDBColumn;
    bjjb_AddK3: TcxGridDBColumn;
    FK3Suttle_AddK3: TcxGridDBColumn;
    FQry_AddK3: TcxGridDBColumn;
    FSumQry_AddK3: TcxGridDBColumn;
    ssth_AddK3: TcxGridDBColumn;
    FNumber_AddK3: TcxGridDBColumn;
    FName_AddK3: TcxGridDBColumn;
    FModelccc: TcxGridDBColumn;
    UnitName_AddK3: TcxGridDBColumn;
    FItemListID_AddK3: TcxGridDBColumn;
    cxGL_AddK3: TcxGridLevel;
    cxGrid_AddK3_Item: TcxGrid;
    cxGV_AddK3_Item: TcxGridDBTableView;
    Num_AddK3_Item: TcxGridDBColumn;
    Interphone_AddK3_Item: TcxGridDBColumn;
    Outsidephone_AddK3_Item: TcxGridDBColumn;
    FItemNumber_AddK3_Item: TcxGridDBColumn;
    FPartsNumber_AddK3_Item: TcxGridDBColumn;
    cxGL_AddK3_Item: TcxGridLevel;
    DS_Mdata_AddK3_Item: TDataSource;
    Mdata_AddK3_Irem: TdxMemData;
    ZQth_AddK3: TcxGridDBColumn;
    ZQmc_AddK3: TcxGridDBColumn;
    ZQgg_AddK3: TcxGridDBColumn;
    ZQcl_AddK3: TcxGridDBColumn;
    cxGV_AddK3Date_Item: TcxGridDBColumn;
    RB_Ref_WorkInfo: TToolButton;
    FStuffType_Sum: TcxGridDBColumn;
    FSize: TcxGridDBColumn;
    Fk3_Join_BOMK3: TcxGridDBColumn;
    F_finishbz_6: TcxGridDBColumn;
    Label14: TLabel;
    cxButtonEdit1: TcxButtonEdit;
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
    DS_Mdata_PTList: TDataSource;
    MData_PTList: TdxMemData;
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
    cxGV_K3DBColumn1: TcxGridDBColumn;
    procedure CancelBtnClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TB_EXITClick(Sender: TObject);
    procedure TB_DownClick(Sender: TObject);
    procedure MyTreeViewChange(Sender: TObject; Node: TTreeNode);
    procedure MyTreeViewExpanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure TB_RefClick(Sender: TObject);
    procedure P_Sel;
    procedure P_Input;
    procedure P_Imp_BOM_1;
    procedure TB_DelClick(Sender: TObject);
    procedure E_th1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxGVCustomDrawPartBackground(Sender: TcxGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxCustomGridCellViewInfo;
      var ADone: Boolean);
    procedure TB_K3RefClick(Sender: TObject);
    procedure TB_OutClick(Sender: TObject);
    procedure MyTreeView_K3Expanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure MyTreeView_K3Change(Sender: TObject; Node: TTreeNode);
    procedure TB_Ref_K3Click(Sender: TObject);
    procedure RB_Ref2Click(Sender: TObject);
    procedure RB_Ref3Click(Sender: TObject);
    procedure RB_Ref_PublicClick(Sender: TObject);
    procedure RB_Ref5Click(Sender: TObject);
    procedure RB_Ref6Click(Sender: TObject);
    procedure RB_Ref_WorkInfo_7Click(Sender: TObject);
    procedure TB_Down2Click(Sender: TObject);
    procedure E_LocatePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure E_Locate2PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure E_Locate3PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure E_Locate5PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure E_Locate8PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure Act_IMP_BOMExecute(Sender: TObject);
    procedure TB_Ref9Click(Sender: TObject);
    procedure TB_Ref_OmittClick(Sender: TObject);
    procedure TB_Out4Click(Sender: TObject);
    procedure TB_SumClick(Sender: TObject);
    procedure ToolButton9Click(Sender: TObject);
    procedure ToolButton14Click(Sender: TObject);
    procedure E_Copyth1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure TB_CopyClick(Sender: TObject);
    procedure Act_IMP_BOM_CopyExecute(Sender: TObject);
    procedure TB_PartsClick(Sender: TObject);
    procedure frReportGetValue(const ParName: String;
      var ParValue: Variant);
    procedure PC_2Click(Sender: TObject);
    procedure Act_PartsExecute(Sender: TObject);
    procedure thPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure mcPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure ggPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure k3clPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure E_NumPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure N_EditClick(Sender: TObject);
    procedure N_FilterClick(Sender: TObject);
    procedure N_SortClick(Sender: TObject);
    procedure N_GroupClick(Sender: TObject);
    procedure N_SetClick(Sender: TObject);
    procedure N_OutClick(Sender: TObject);
    procedure cxGrid_TempContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure Act_MenuExecute(Sender: TObject);
    procedure Act_Menu_SetExecute(Sender: TObject);
    procedure TB_AddK3Click(Sender: TObject);
    procedure TB_Ref_AddK3Click(Sender: TObject);
    procedure MyTreeView_AddK3Expanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure MyTreeView_AddK3Change(Sender: TObject; Node: TTreeNode);
    procedure TB_Del_AddK3Click(Sender: TObject);
    procedure cxGrid_AddK3ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure cxGrid_OmittContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure cxGrid_GBTContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure cxGrid_K3ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure cxGrid_WorkInfoContextPopup(Sender: TObject;
      MousePos: TPoint; var Handled: Boolean);
    procedure cxGridDesignBOM_StructureContextPopup(Sender: TObject;
      MousePos: TPoint; var Handled: Boolean);
    procedure cxGrid_BOMK3ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure cxGrid_GeneralContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure cxGrid_PublicContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure cxGridContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure cxGrid_SumContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure TB_Edit_Addk3Click(Sender: TObject);
    procedure TB_Save_Addk3Click(Sender: TObject);
    procedure RB_Ref_WorkInfoClick(Sender: TObject);
  private
    ListItemFNumber_AddK3:String;
    P_th_AddK3:String;
    P_Isleaf_AddK3:Integer;


    ListItemFNumber,P_th:String;
    P_i:boolean;
    FFullFileName: string;
    qry: TADOQuery;
    P_FItemListId,P_CopyFItemListId,P_RawFItemListId,P_FFullNumber,p_FItemNo,p_Code:string;
    P_FProductID,P_FItemId:Integer;



    function GetDsnFile: string;
    function GetTempFile: string;
    procedure WriteODBC(IniFile: TIniFile);
    procedure WriteDbFile(IniFile: TIniFile; DbFile: string);

    { Private declarations }

  //  procedure InitParam;
 //   Procedure MyItemList(Sender: TObject);

    property DsnFile:string read GetDsnFile;
    property TempFile:string read GetTempFile;
    function ReadSourceConnStr: string;
  public
    m_stopFileName:string;
    P_Retinf,P_Retinf_info,P_Sort,P_Parts:String;
    i,P_Isleaf,P_Isleaf_DBOM:Integer;
    s1,s2:Ttime;
    title,title1,title2,title3,bz:string;

    { Public declarations }
  end;

var
  Frm_DesignBOMPick: TFrm_DesignBOMPick;


implementation

uses FRMDATA, COMMON, FrmSelect, ProgBar, PROGRASS, FrmMain;

{$R *.dfm}




function TFrm_DesignBOMPick.GetDsnFile: string;
const
 schema = 'schema.ini';

begin
  result := ExtractfileDir(Application.ExeName)+'\'+schema;

end;

function TFrm_DesignBOMPick.GetTempFile: string;
const
 cTempFile='imp.txt';
begin
 result:=ExtractfileDir(Application.ExeName)+'\'+cTempFile;
end;


procedure TFrm_DesignBOMPick.WriteODBC(IniFile: TIniFile);
const
  ODBC = 'ODBC';
begin
  iniFile.WriteString(ODBC, 'DRIVER', 'Microsoft Text-Treiber (*.txt; *.csv)');
  iniFile.WriteString(ODBC, 'UserCommitSync', 'Yes');
  iniFile.WriteString(ODBC, 'SafeTransactions', '0');
  iniFile.WriteString(ODBC, 'PageTimeout', '5');
  iniFile.WriteString(ODBC, 'MaxScanRows', '25');
  iniFile.WriteString(ODBC, 'FIL', 'text');
  iniFile.WriteString(ODBC, 'Extensions', 'txt,csv,tab,asc');
  iniFile.WriteString(ODBC, 'DriverId', '27');
  iniFile.WriteString(ODBC, 'DefaultDir', ExtractfileDir(Application.ExeName)+'\');
end;

procedure TFrm_DesignBOMPick.WriteDbFile(IniFile: TIniFile; DbFile: string);
begin
  iniFile.WriteString(DBFile, 'ColNameHeader', 'true');
  iniFile.WriteString(DBFile, 'Format', 'TabDelimited');
  iniFile.WriteString(DBFile, 'MaxScanRows', '25');
  iniFile.WriteString(DBFile, 'CharacterSet', 'OEM');
  iniFile.WriteString(DBFile, 'Col1', 'xh Integer');
  iniFile.WriteString(DBFile, 'Col2', 'A4 char');
  iniFile.WriteString(DBFile, 'Col3', 'th char');
  iniFile.WriteString(DBFile, 'Col4', 'mc char');
  iniFile.WriteString(DBFile, 'Col5', 'gg char');
  iniFile.WriteString(DBFile, 'Col6', 'cl char');
  iniFile.WriteString(DBFile, 'Col7', 'ssth char');
  iniFile.WriteString(DBFile, 'Col8', 'FQry Currency');
  iniFile.WriteString(DBFile, 'Col9', 'FSumQry Currency');
  iniFile.WriteString(DBFile, 'Col10', 'FSuttle Currency');
  If UserFDepartmentID=1 then
  begin
    iniFile.WriteString(DBFile, 'Col11', 'FRation Currency');
    iniFile.WriteString(DBFile, 'Col12', 'Remark char');
    iniFile.WriteString(DBFile, 'Col13', 'bjjb char');
    iniFile.WriteString(DBFile, 'Col14', 'FBjbs char');
    iniFile.WriteString(DBFile, 'Col15', 'FDesignRemark char');
  end;
  If UserFDepartmentID<>1 then
  begin
    iniFile.WriteString(DBFile, 'Col11', 'Remark char');
    iniFile.WriteString(DBFile, 'Col12', 'bjjb char');
    iniFile.WriteString(DBFile, 'Col13', 'FBjbs char');
    iniFile.WriteString(DBFile, 'Col14', 'FDesignRemark char');
  end;

end;

function TFrm_DesignBOMPick.ReadSourceConnStr: string;
const
  Conn1 = 'Provider=MSDASQL.1;Persist Security Info=False;';
  Conn2 = 'Extended Properties="DefaultDir=%s'; //%s-文本文件路径
  Conn3 = ';Driver={Microsoft Text-Treiber (*.txt; *.csv)};DriverId=27;';
  Conn4 = 'Extensions=txt,csv,tab,asc;FIL=text;FILEDSN=%s'; //%s-DSN文件名
  Conn5 = ';MaxScanRows=25;UserCommitSync=Yes;"';
var
  connStr: string;
begin
  connStr := conn1 + conn2 + conn3 + conn4 + conn5;
  result := format(connStr, [ExtractfileDir(Application.ExeName),DsnFile]);

end;



procedure TFrm_DesignBOMPick.P_Sel;  //提取文本文件
var
    dlgOpen: TRzOpenDialog;
    Filter,SelCaption,tmp:string;
    IniFile: TIniFile;
    TBADoSource:TADoTable;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.CommandTimeout:=500;
  begin
    dlgOpen:=TRzOpenDialog.Create(Application);
    try
      Filter:='';
      selCaption:='';
      Filter:='文本文件|*.txt;*.csv|所有文件|*.*';
      dlgOpen.Title:='选择部件的导入文件';
      dlgOpen.Filter:=Filter;
    If not dlgOpen.Execute then Exit;
    
    Self.FFullFileName:=dlgOpen.FileName;
    finally
    dlgOpen.Free;
    Application.ProcessMessages;
  end;
    If FileExists(TempFile) then
    If not FileSetReadonly(TempFile,False) then
       Exit;
    If not CopyFile(PChar(FFullFileName),PChar(TempFile),false) then
       Exit;
    If FileExists(DsnFile) then
    try
      DeleteFile(DsnFile);
    finally
      ;
    end;

    IniFile := TIniFile.Create(DsnFile);
    try
      WriteODBC(IniFile);
      tmp:=ExtractFileName(TempFile);
      WriteDbFile(IniFile,tmp);
      TBADoSource:=TADoTable.Create(self);
      TBADoSource.ConnectionString:=ReadSourceConnStr;
      TBADoSource.TableName:=format('[%s]',[tmp]);
      TBADoSource.Active:=true;
      DataSource.DataSet:=TBADoSource;
      cxGV.DataController.DataSource.DataSet:=TBADoSource;
      mdata.CopyFromDataSet(DataSource.DataSet);
      mdata.Active;
    except
    end;
  end;
  qry.SQL.Text:='Delete from T_Temp_DesignText where UserNum=:UserNum';
  qry.Parameters.FindParam('UserNum').Value:=UserNum;
  qry.ExecSQL;
  ProgressBar.Max:=mdata.RecordCount;
  qry.SQL.Text:='Insert into T_Temp_DesignText(xh,A4,TxtTh,th,mc,gg,cl,ssth,FQry,FSumQry,FSuttle,FRation,Remark,bjjb,FDesignRemark,FBomReMark,FBjBs,UserNum,FK3ID,FImpDate) '
               +'Values(:xh,:A4,:TxtTh,:th,:mc,:gg,:cl,:ssth,:FQry,:FSumQry,:FSuttle,:FRation,:Remark,:bjjb,:FDesignRemark,:FBomReMark,:FBjBs,:UserNum,:FK3ID,:FImpDate)';
  qry.ExecSQL;
  with mdata do
  begin
    DisableControls;
    First;
    while not eof do
    begin
      with qry do
      begin
        Parameters.FindParam('xh').Value:=mdata['xh'];
        Parameters.FindParam('A4').Value:=mdata['A4'];
        Parameters.FindParam('TxtTh').Value:=mdata['th'];
        Parameters.FindParam('th').Value:=mdata['th'];
        Parameters.FindParam('mc').Value:=mdata['mc'];
        Parameters.FindParam('gg').Value:=mdata.FieldByName('gg').asstring;
        Parameters.FindParam('cl').Value:=mdata['cl'];
        Parameters.FindParam('ssth').Value:=mdata['ssth'];
        Parameters.FindParam('FQry').Value:=mdata['FQry'];
        Parameters.FindParam('FSumQry').Value:=mdata['FSumQry'];
        Parameters.FindParam('FSuttle').Value:=mdata['FSuttle'];
        Parameters.FindParam('FRation').Value:=mdata['FSuttle'];
        Parameters.FindParam('Remark').Value:=mdata['Remark'];
        Parameters.FindParam('bjjb').Value:=mdata['bjjb'];
        Parameters.FindParam('FDesignRemark').Value:=mdata['FDesignRemark'];
        Parameters.FindParam('FBomReMark').Value:='';
        Parameters.FindParam('FBjBs').Value:='';
       // Parameters.FindParam('FBjBs').Value:=mdata['FBjBs'];
        Parameters.FindParam('UserNum').Value:=UserNum;
        Parameters.FindParam('FK3ID').Value:=UserFK3ID;
        Parameters.FindParam('FImpDate').Value:=now();
        ExecSQL;
      end;
      ProgressBar.StepIt;
      application.ProcessMessages;
      Next;
    end;
    EnableControls;
  end;

  try
  //  qry.SQL.Text:='Delete from T_Temp_DesignText where Isnull(xh,0)=0 or (Isnull(mc,'''')='''' and Isnull(th,'''')='''' and Isnull(FQry,0)=0 and Isnull(FSuttle,0)=0)';
    qry.SQL.Text:='Delete from T_Temp_DesignText where (Isnull(mc,'''')='''' and Isnull(th,'''')='''' and Isnull(FQry,0)=0 and Isnull(FSuttle,0)=0)';
    qry.ExecSQL;
  finally
     ;
  end;
  cxGvColumn(cxGv,Mdata);
end;

procedure TFrm_DesignBOMPick.P_Input;  //导入文件
var
  proc:TADOStoredProc;
begin
  proc:=TADOStoredProc.Create(self);
  proc.ConnectionString:=mdlData.ReadConnStr;
  proc.CommandTimeout:=500;

  try
    proc.ProcedureName:='P_Imp_BOM;1';
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=20;
      name := '@UserNum';
      value:=UserNUM;
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftInteger;
      Direction := pdinput;
      size:=20;
      name := '@type';
      value:='1';
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftInteger;
      Direction := pdinput;
      name := '@FItemListId';
      value:=P_FItemListId;
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=10;
      name := '@TopNum';
      value:=P_FItemNo;
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=20;
      name := '@th2';
      value:=Trim(E_th2.Text);
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=20;
      name := '@TwoNum';
      value:=P_FFullNumber;
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=20;
      name := '@Num';
      value:=UserNum;
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftInteger;
      Direction := pdinput;
      name := '@FProductID';
      value:=P_FProductID;
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftInteger;
      Direction := pdinput;
      name := '@FK3ID';
      value:=UserFK3ID;
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
    stbMsg.Caption:='提示信息：'+P_Retinf;

    If  P_Retinf<>'' then
    begin
      Messagedlg(P_Retinf,mtInformation,[mbok],0);
      mdata.Close;
      DS_Mdata.DataSet:=Mdata;
      cxGV.DataController.DataSource:=DS_Mdata;
      mdata.CopyFromDataSet(proc);
      Mdata.Active:=True;
      cxGvColumn(cxGv,mdata);
      E_th1.SetFocus;
     // Exit;
    end
  finally
     ;
  end;
  proc.Free;

  {  P_Retinf:=proc.Parameters.FindParam('@Retinf').Value;
    If  P_Retinf<>'' then
    begin
      Messagedlg(P_Retinf,mtInformation,[mbok],0);
      mdata.Close;
      DS_Mdata.DataSet:=Mdata;
      cxGV.DataController.DataSource:=DS_Mdata;
      mdata.CopyFromDataSet(proc);
      Mdata.Active:=True;
      cxGvColumn(cxGv,mdata);
      E_th1.SetFocus;
      Exit;

    end
    else
    begin
      application.MessageBox('设计定额导入完成','系统提示',MB_ICONINFORMATION);
      mdata.Close;
      mdata.CopyFromDataSet(proc);
      Mdata.Active:=True;
      DS_Mdata.DataSet:=Mdata;
      cxGV.DataController.DataSource:=DS_Mdata;
      cxGvColumn(cxGv,mdata);
    end;}
end;

procedure TFrm_DesignBOMPick.P_Imp_BOM_1;  //导入程序1
var
  proc:TADOStoredProc;

begin
  proc:=TADOStoredProc.Create(self);
  proc.ConnectionString:=mdlData.ReadConnStr;
  proc.CommandTimeout:=500;
  P_Retinf:='';
  P_Retinf_info:='';
  i:=1;
  try
    proc.ProcedureName:='P_Imp_BOM_2;1';
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=20;
      name := '@UserNum';
      value:=UserNUM;
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftInteger;
      Direction := pdinput;
      size:=20;
      name := '@type';
      value:='1';
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftInteger;
      Direction := pdinput;
      name := '@FItemListId';
      value:=P_FItemListId;
    end;
     with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=10;
      name := '@TopNum';
      value:=P_FItemNo;
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=20;
      name := '@th2';
      value:=Trim(E_th2.Text);
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=20;
      name := '@TwoNum';
      value:=P_FFullNumber;
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=20;
      name := '@Num';
      value:=UserNum;
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftInteger;
      Direction := pdinput;
      name := '@FProductID';
      value:=P_FProductID;
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftInteger;
      Direction := pdinput;
      name := '@FK3ID';
      value:=UserFK3ID;
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftInteger;
      Direction := pdinput;
      name := '@Process';
      value:=i;
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftDateTime;
      Direction := pdinput;
      name := '@s0';
      value:=now();
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdoutput;
      size:=255;
      name := '@Retinf';
      value:='';
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdoutput;
      size:=255;
      name := '@Retinf_Info';
      value:='';
    end;
    proc.Open;
    P_Retinf:=proc.Parameters.FindParam('@Retinf').Value;
     P_Retinf_info:=proc.Parameters.FindParam('@Retinf_Info').Value;
    mdata.Close;
    DS_Mdata.DataSet:=Mdata;
    cxGV.DataController.DataSource:=DS_Mdata;
    mdata.CopyFromDataSet(proc);
    Mdata.Active:=True;
    cxGvColumn(cxGv,mdata);
    E_th1.SetFocus;
    If P_Retinf='' then
    begin
      ShowPrograss('提示信息：【'+P_Retinf_info+'】',self);
      stbMsg.Caption:='提示信息：'+'【'+P_Retinf_info+'】';
    end
    else
    begin
      ShowPrograss('提示信息：【'+P_Retinf+'】【'+P_Retinf_info+'】',self);
      stbMsg.Caption:='提示信息：'+'【'+P_Retinf+'】【'+P_Retinf_info+'】';
    end;
    finally
     ;
    end;

    If P_Retinf<>'' then
       Messagedlg(P_Retinf,mtInformation,[mbok],0);

    proc.Free;

end;

procedure TFrm_DesignBOMPick.CancelBtnClick(Sender: TObject);
begin
  inherited;
  self.Close ;
end;

procedure TFrm_DesignBOMPick.FormResize(Sender: TObject);
begin
  TB_Ref.Click;
  TB_Ref9.Click;
  TB_Ref_Addk3.Click;
  L_title.Caption:='设计BOM';
  Self.Caption:='设计BOM';
end;

procedure TFrm_DesignBOMPick.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=cafree;
  Frm_DesignBOMPick:=nil;
end;

procedure TFrm_DesignBOMPick.TB_EXITClick(Sender: TObject);
var qry: TADOQuery;
begin
{  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Delete from T_Temp_DesignText where UserNum=:UserNum';
    qry.Parameters.FindParam('UserNum').Value:=UserNum;
    qry.ExecSQL;
  finally
     ;
  end;
  }
  self.Close;
end;

procedure TFrm_DesignBOMPick.TB_DownClick(Sender: TObject);
Var i:Integer;
begin
  If P_i then
  begin
    TB_Down.Caption:='取消设置';
    cxGV.OptionsData.Editing:=False;
    cxGv.OptionsView.GroupByBox:=False;

    cxGV_BOMK3.OptionsData.Editing:=False;
    cxGV_BOMK3.OptionsView.GroupByBox:=False;

    for i:=0 to cxGv.ColumnCount-1 do
    begin
      cxGv.Columns[i].Options.Filtering:=False;
      cxGv.Columns[i].Options.Editing:=False;
      cxGv.Columns[i].Options.Sorting:=False;
    end;
    for i:=0 to cxGV_BOMK3.ColumnCount-1 do
    begin
      cxGV_BOMK3.Columns[i].Options.Filtering:=False;
      cxGV_BOMK3.Columns[i].Options.Editing:=False;
      cxGV_BOMK3.Columns[i].Options.Sorting:=False;
    end;
    P_i:=False;
  end
  else
  begin
    TB_Down.Caption:='设置';
    cxGV.OptionsData.Editing:=True;
    cxGv.OptionsView.GroupByBox:=True;

    cxGV_BOMK3.OptionsData.Editing:=True;
    cxGV_BOMK3.OptionsView.GroupByBox:=True;

    for i:=0 to cxGv.ColumnCount-1 do
    begin
      cxGv.Columns[i].Options.Filtering:=True;
      cxGv.Columns[i].Options.Editing:=True;
      cxGv.Columns[i].Options.Sorting:=True;
    end;

    P_i:=True;
  end;
end;

procedure TFrm_DesignBOMPick.MyTreeViewChange(Sender: TObject; Node: TTreeNode);
var
  qry,qry1:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry1:=TADOQuery.Create(self);
  qry1.ConnectionString:=mdlData.ReadConnStr;

  ShowPrograss('正在提取数据，请稍候……',self);
  If Node = nil then Exit;
  with PTree(Node.Data)^ do
  begin
    ListItemFNumber:=trim(PTree(Node.Data).FNumber);
    P_th:=PTree(Node.Data).Caption;
    P_Isleaf:=PTree(Node.Data).Isleaf;
    P_Isleaf_DBOM:=PTree(Node.Data).Isleaf;
    If PC_2.ActivePage=TS_Sort then
       Act_Parts.Execute;
    If PC_2.ActivePage=TS_Mx then
    begin
      Case PTree(Node.Data).Isleaf of
        1:
        begin
          //是否审核
          try
            qry1.SQL.Text:='select * from V_DesignBOM_Structure where FFullNumber like :FFullNumber and FCode=''○○''  ';
            qry1.Parameters.FindParam('FFullNumber').value:=ListItemFNumber+'%';
            qry1.open;
          finally
            ;
          end;
          try
            qry.SQL.Text:='select * from T_ItemList where FFullNumber like :FFullNumber and FSortStatus>0';
            qry.Parameters.FindParam('FFullNumber').value:=ListItemFNumber+'%';
            qry.open;
          finally
            ;
          end;
          If qry1.RecordCount=1  then
            TB_Del.Visible:=False
          else
          begin
             If qry.RecordCount>0 then
               TB_Del.Visible:=False
             else
               TB_Del.Visible:= mdlData.PermissionCheckRights(TFrm_DesignBOMPick.ClassName,'删除');
          end;



          If MyItemListFieldWhere(qry,Mdata,'FCode,th,mc,gg,FQry,FSuttle,FSumSuttle,FItemNoID,FFullNumber ','V_DesignBOM_Structure','FFullNumber',ListItemFNumber,' and js<=2 ','') then
          begin
            If MyItemListID(qry,Mdata_PTList,'V_DesignChangeList','FItemID='+IntToStr(MData['FItemNoID'] ),'FpartsCode',) then
            begin
              If Mdata_PTList.RecordCount>0 then
                 RzSP_PTitem.Visible:=True
              else
                 RzSP_PTitem.Visible:=False;
            end;
            cxGvColumn(cxGv,Mdata);
            mdata.First;
            cxGrid.SetFocus;
          end;
        end;
       end;
     Case PTree(Node.Data).Isleaf of
        2:
        begin
          qry.SQL.Text:='Select Min(FInputStartDate) as FInputStartDate from V_ItemList where FFullNumber like :FFullNumber ';
          qry.Parameters.FindParam('FFullNumber').value:=ListItemFNumber+'%';
          qry.open;
          If (qry.RecordCount>0) and (qry.FieldByName('FInputStartDate').AsString<>'') then
          begin
            stbMsg.Caption:='提示信息：设计定额【'+P_th+'】导入最早日期：'+'【'+qry.FieldByName('FInputStartDate').AsString+'】';
            stbBar.Refresh;
          end;
          //是否审核
          try
            qry.SQL.Text:='select * from T_ItemList where FFullNumber like :FFullNumber and FSortStatus>0';
            qry.Parameters.FindParam('FFullNumber').value:=ListItemFNumber+'%';
            qry.open;
          finally
            ;
          end;

          If qry.RecordCount>0 then
             TB_Del.Visible:=False
          else
             TB_Del.Visible:= mdlData.PermissionCheckRights(TFrm_DesignBOMPick.ClassName,'删除');





          If MyItemListFieldWhere(qry,Mdata,'FCode,th,mc,gg,FQry,FSumQry,FSuttle,FSumSuttle,FNumber,FName,FModel,UnitName,FItemNoID,FFullNumber,ssFullNumber,FItemNumber,FPartsNumber,FItemListId,FDesignRemark,FBomReMark,FBjBs ','V_DesignBOM_Structure','FFullNumber',ListItemFNumber,'',FFullNumber) then
          begin
            If MyItemListID(qry,Mdata_PTList,'V_DesignChangeList','FItemID='+IntToStr(MData['FItemNoID'] ),'FpartsCode',) then
            begin
              If Mdata_PTList.RecordCount>0 then
                 RzSP_PTitem.Visible:=True
              else
                 RzSP_PTitem.Visible:=False;
            end;
            E_Rawth1.Text:=mdata['FItemNumber'];
            E_Rawth2.Text:=mdata['FPartsNumber'];
            P_RawFItemListId:=mdata['FItemListId'];
            cxGvColumn(cxGv,Mdata);
            mdata.First;
            cxGrid.SetFocus;
          end;
        end;
      end;
    end;
  end;

end;

procedure TFrm_DesignBOMPick.MyTreeViewExpanding(Sender: TObject;
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

  qry.SQL.Text:='Select FNumber, FParentNumber,FName,FProductID,FItemListId,'
               +'Isleaf from VT_DesignBOM with(nolock) where FParentNumber= '''
               +PTree(Node.Data).ID+''' and FK3ID=:FK3ID '
               +'order by FItemNumber,FFullNumber';
  qry.Parameters.FindParam('FK3ID').value:=UserFK3ID;
  qry.open;

  PTree(Node.Data).Flag := cLoadFlag;                  // 设置已加载标志
  while not qry.Eof do
  begin
    New(P);
    P.ID := qry.FieldByName('FNumber').AsString;
    P.ParentID := qry.FieldByName('FParentNumber').AsString;
    P.FNumber:=qry.FieldByName('FNumber').AsString;
    P.FProductID:=qry.FieldByName('FProductID').Value;
    P_FItemListId:=qry.FieldByName('FItemListId').Value;
    P.Caption := qry.FieldByName('FName').AsString;
    P.Isleaf := qry.FieldByName('Isleaf').Value;
    P.Flag := cNoLoadFlag;                            // 新节点，未加载标志
    with MyTreeView.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('Isleaf').value;
    end;
    qry.Next;
  end;
 // cxGvColumn(cxGv,Mdata);

end;

procedure TFrm_DesignBOMPick.FormCreate(Sender: TObject);
begin
 TB_Ref.Click;
 TB_Del.Visible:=False;
 TB_K3Ref.Visible:= mdlData.PermissionCheckRights(TFrm_DesignBOMPick.ClassName,'新增');
 TB_Del.Visible:= mdlData.PermissionCheckRights(TFrm_DesignBOMPick.ClassName,'删除');
 TB_Out.Enabled:= mdlData.PermissionCheckRights(TFrm_DesignBOMPick.ClassName,'导出');
 TB_Prin.Enabled:= mdlData.PermissionCheckRights(TFrm_DesignBOMPick.ClassName,'打印');
 TB_Copy.Visible:= mdlData.PermissionCheckRights(TFrm_DesignBOMPick.ClassName,'删除');
 TB_Sum.Visible:= mdlData.PermissionCheckRights(TFrm_DesignBOMPick.ClassName,'删除');
 Panel_Copy.Visible:= mdlData.PermissionCheckRights(TFrm_DesignBOMPick.ClassName,'删除');

end;

procedure TFrm_DesignBOMPick.TB_RefClick(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If not TreeVeiwListUserID(qry,MyTreeView,'VT_DesignBOM',UserFDepartmentID) then
  begin
    Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;

end;

procedure TFrm_DesignBOMPick.TB_DelClick(Sender: TObject);
var
  proc:TADOStoredProc;
  P_Retinf:String;
begin
  proc:=TADOStoredProc.Create(self);
  proc.ConnectionString:=mdlData.ReadConnStr;
  proc.CommandTimeout:=500;
  If  ListItemFNumber='' then
  begin
    Application.MessageBox(PChar('请选择明细！'), '错误', MB_OK +MB_ICONSTOP);
    Exit;
  end;

  If ShowMsg('是否删除【'+P_th+'】此图号！','提示') then
  begin
    try
      proc.ProcedureName:='P_Del_DesignBOM;1';
      with proc.Parameters.AddParameter do
      begin
        DataType := ftString;
        Direction := pdinput;
        size:=20;
        name := '@FFullNumber';
        value:=ListItemFNumber;
      end;
      with proc.Parameters.AddParameter do
      begin
        DataType := ftString;
        Direction := pdoutput;
        size:=255;
        name := '@ErrorMsg';
        value:='';
      end;
      proc.ExecProc;
      P_Retinf:=proc.Parameters.FindParam('@ErrorMsg').Value;
      If  P_Retinf<>'' then
      begin
        Messagedlg(P_Retinf,mtInformation,[mbok],0);
        Exit;
      end
      else
      begin
        Messagedlg('数据删除成功！',mtInformation,[mbok],0);
        mdata.Close;
      //  Self.TB_RefClick(Sender);
      end;
    finally
       ;
    end;
  end;
end;

procedure TFrm_DesignBOMPick.E_th1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var selValue : string;
    qry,qry1: TADOQuery;
    a:string;
    n:Integer;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.CommandTimeout:=10000;
  qry1:=TADOQuery.Create(self);
  qry1.ConnectionString:=mdlData.ReadConnStr;
  qry1.CommandTimeout:=10000;
  try
    qry.SQL.Text:='Select * from  VT_ItemListPart_Sel where FDepartmentID=:FDepartmentID and FNumber like :FNumber order by FNumber ';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Parameters.FindParam('FNumber').value:='%'+Trim(E_th1.Text)+'%';
    qry.Open;
  finally
     ;
  end;
  selValue:=select('请选择产品类型','FNumber','FParentNumber','FNumber','FName',qry);
  If (Length(selValue)>0) and (qry.FieldByName('leaf').Value=1) then
  begin
    P_FItemListId:=qry.FieldByName('FItemListID').Value;
    try
      qry1.SQL.Text:='Select * from  V_ItemList where FItemListID=:FItemListID ';
      qry1.Parameters.FindParam('FItemListID').value:=qry.FieldByName('FItemListID').AsString;
      qry1.Open;
    finally
       ;
    end;
    E_th1.Text:=qry1.FieldByName('FItemNumber').AsString;
    E_th2.Text:=qry1.FieldByName('FpartsNumber').AsString;
    E_FClientFullName.Text:=qry1.FieldByName('FClientFullName').AsString;
    E_FItemModel.Text:=qry1.FieldByName('FItemModel').AsString;
    P_FProductID :=qry1.FieldByName('FProductID').Value;
    P_FItemListId:=qry1.FieldByName('FItemListId').Value;
    P_FFullNumber:=qry1.FieldByName('FFullNumber').AsString;
    P_FItemNo:=qry1.FieldByName('FItemNo').AsString;
    P_FItemId:=qry1.FieldByName('FItemId').Value;
  end
  else
  begin
    Messagedlg('请选择明细！',mtInformation,[mbok],0);
    Exit;
  end ;


 //插入一级图号
//     T_Public
  try
    qry.SQL.Text:='Select distinct th from T_Public where th=:th';
    qry.Parameters[0].Value:=Trim(E_th1.Text);
    qry.Open;
  finally
     ;
  end;
  If qry.RecordCount<1 then
  begin
    try
      qry.SQL.Text:='Insert into T_Public (th,TxtTh,mc,gg,FTxtName,FTxtModel,TxtUnitName,FSuttle,IsLeaf,FK3ID) '
                   +'Values(:th,:TxtTh,:mc,:gg,:FtxtName,:FTxtModel,:TxtUnitName,:FSuttle,:IsLeaf,:FK3ID)';
      qry.Parameters.FindParam('th').Value:=Trim(E_th1.Text);
      qry.Parameters.FindParam('TxtTh').Value:=Trim(E_th1.Text);
      qry.Parameters.FindParam('mc').Value:=Trim(E_FClientFullName.Text);
      qry.Parameters.FindParam('gg').Value:=Trim(E_FItemModel.Text);
      qry.Parameters.FindParam('FTxtName').Value:='';
      qry.Parameters.FindParam('FTxtModel').Value:='';
      qry.Parameters.FindParam('TxtUnitName').Value:='';
      qry.Parameters.FindParam('FSuttle').Value:=0;
      qry.Parameters.FindParam('IsLeaf').Value:=0;
      qry.Parameters.FindParam('FK3ID').Value:=UserFK3ID;
      qry.ExecSQL;
    finally
       ;
    end;
  end;

//  T_DesignBOM_Structure

  try
    qry.SQL.Text:='Select id from T_Public where th=:th';
    qry.Parameters[0].Value:=Trim(E_th1.Text);
    qry.Open;
  finally
     ;
  end;
  If qry.RecordCount>0 then
    P_Code:=qry.FieldByName('id').Value;

  try
    qry.SQL.Text:='Select distinct FFullNumber from V_DesignBOM_Structure with(nolock) where FFullNumber=:FFullNumber';
    qry.Parameters[0].Value:=p_FItemNo;
    qry.Open;
  finally
     ;
  end;

  If qry.RecordCount<1 then
  begin
    try
      qry.SQL.Text:='Insert into T_DesignBOM_Structure(Code,Parent,PartID,FQry,FFullNumber,FSumQry,FFullName) '
                   +'Values(:Code,:Parent,:PartID,:FQry,:FFullNumber,:FSumQry,:FFullName)';
      qry.Parameters.FindParam('Code').Value:=P_Code;
      qry.Parameters.FindParam('Parent').Value:=0;
      qry.Parameters.FindParam('PartID').Value:=0;
      qry.Parameters.FindParam('FQry').Value:=1;
      qry.Parameters.FindParam('FFullNumber').Value:=p_FItemNo;
      qry.Parameters.FindParam('FSumQry').Value:=1;
      qry.Parameters.FindParam('FFullName').Value:=Trim(E_th1.Text)+','+Trim(E_FClientFullName.Text)+';';
      qry.ExecSQL;
    finally
       ;
    end;
  end;


//是否存在

  try
    qry.SQL.Text:='Select distinct FFullNumber from V_DesignBOM_Structure with(nolock) where FFullNumber like '''+P_FFullNumber+'%''';
    qry.Open;
  finally
     ;
  end;
  If qry.RecordCount>0 then
  begin
    Messagedlg('图号【'+Trim(E_th1.Text)+'】【'+Trim(E_th2.Text)+'】已存在无法导入！',mtInformation,[mbok],0);
    Exit;
  end;
  ShowPrograss('正在提取导入文本【'+Trim(E_th1.Text)+'】【'+Trim(E_th2.Text)+'】，请稍候……',self);
  stbMsg.Caption:='正在提取导入文本【'+Trim(E_th1.Text)+'】【'+Trim(E_th2.Text)+'】设计定额，请稍候...  ...';
  Self.P_Sel;//选择文本文件
  If mdata.RecordCount=0    then
  begin
    ShowPrograss('请选择导入文本【'+Trim(E_th1.Text)+'】【'+Trim(E_th2.Text)+'】！',self);
    E_th1.SetFocus; 
    Exit;
  end;
  ShowPrograss('正在导入【'+Trim(E_th1.Text)+'】【.'+Trim(E_th2.Text)+'】设计定额，请稍候……',self);
  stbMsg.Caption:='正在导入【'+Trim(E_th1.Text)+'】【'+Trim(E_th2.Text)+'】设计定额，请稍候...  ...';
  stbBar.Refresh;
  //Self.P_input;  //导入 程序1
  try
    qry.SQL.Text:='Select GetDate() as s';
    qry.Open;
  finally
     ;
  end;
  S1:=qry.FieldByName('s').Value;
  for n:=3 to 12 do
  begin
    i:=n;
    Act_IMP_BOM.Execute;
    If P_Retinf<>'' then
       Exit;
  end;
  If P_Retinf='' then
  begin
    i:=13;
    If ShowMsg('是否正式导入【'+Trim(E_th1.Text)+'】【'+Trim(E_th2.Text)+'】设计定额?','提示') then
       Act_IMP_BOM.Execute
    else
      Exit;
  end
  else
    Exit;

  qry.Free;
end;

procedure TFrm_DesignBOMPick.cxGVCustomDrawPartBackground(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxCustomGridCellViewInfo; var ADone: Boolean);
begin
  inherited;
  AViewInfo.Text:='设计BOM导入';
  ACanvas.FillRect(AViewInfo.Bounds);
end;

procedure TFrm_DesignBOMPick.TB_K3RefClick(Sender: TObject);
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

procedure TFrm_DesignBOMPick.TB_OutClick(Sender: TObject);
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


  If PC_2.ActivePage<>TS_Sort then
    Exit;

  If MData_Sum.RecordCount=0 then
    Exit;



  filepath:=Extractfilepath(application.ExeName)+'定额材料汇总表模版.xls';
  if (MData_Sum.Active) and (MData_Sum.recordcount>0) then
  Begin
    SaveDialog1.FileName:='定额材料汇总表'+MData_Sum['FItemNumber'];
    SaveDialog1.Filter:='.xls';
    SaveDialog1.Execute;

    if (MData_Sum.FieldByName('FItemNumber').AsString<>'') Or (MData_Sum.FieldByName('FItemNumber').AsString<>Null) then
        savefilepath:=SaveDialog1.FileName+'.xls';

    if FileExists(savefilepath) then
    begin
      DeleteFile(savefilepath) ;
    end;
    stbMsg.Caption:='提示信息：正在导出定额材料汇总表:'+'【'+P_th+'】';
    stbBar.Refresh;

    ExcelApp:= CreateOleObject('Excel.Application' );
    ExcelApp.DisplayAlerts:=False;                  //不显示提示框
    MyWorkBook:=ExcelApp.WorkBooks.Open( filepath );   //打开模版
    //ExcelApp.Visible:=True;
    k:=2;
    vLastSheet:=MyWorkBook.Sheets[MyWorkBook.Sheets.Count];
    MyWorkBook.Sheets[1].Copy(EmptyParam,vLastSheet);
    MyWorkBook.WorkSheets[k].Name:=IntToStr(k)+MData_Sum['FItemNumber'];
    MyWorkBook.WorkSheets[k].Activate;

      //标题
    //MyWorkBook.WorkSheets[k].Cells[1,1].Value:=AnsiReplaceStr(MyWorkBook.WorkSheets[k].Cells[1,1].Value,'A',UserFDepartmentName); //公司名称

    MyWorkBook.WorkSheets[k].Cells[3,2].Value := Trim(MData_Sum.FieldByName('FItemNumber').AsString); //图 号
    MyWorkBook.WorkSheets[k].Cells[4,2].Value := Trim(MData_Sum.FieldByName('FClientFullName').AsString); //项目名称

      //循环行开始
    i:=6;

       //工作薄名称
    MyWorkBook.WorkSheets[k].Name:=MData_Sum.FieldByName('FItemNumber').AsString;
    copystart:='A'+IntToStr(i);
    if MData_Sum.recordcount>0 then
    Begin
      if MData_Sum.recordcount>1 then
      Begin
        copystart:='A'+IntToStr(i);
        copystart1:='A'+IntToStr(i+1);
        copyend:='G'+IntToStr(i);  //区域
        ReNum:=MData_Sum.recordcount-1;
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
        R_Count:=MData_Sum.recordcount;
      end;
      MData_Sum.first;
      while not MData_Sum.eof do
      Begin
        MyWorkBook.WorkSheets[k].Cells[i,1].Value := MData_Sum.FieldByName('FNumber').AsString;
        MyWorkBook.WorkSheets[k].Cells[i,3].Value := MData_Sum.FieldByName('FName').AsString;
        MyWorkBook.WorkSheets[k].Cells[i,4].Value := MData_Sum.FieldByName('FModel').AsString;
        MyWorkBook.WorkSheets[k].Cells[i,5].Value := MData_Sum.FieldByName('UnitName').AsString;
        MyWorkBook.WorkSheets[k].Cells[i,6].Value := MData_Sum.FieldByName('FPriceQry').AsString;
        MyWorkBook.WorkSheets[k].Cells[i,7].Value := MData_Sum.FieldByName('FSuttle').AsString;
        MData_Sum.next;
        i:=i+1;
      End;
      ExcelApp.Visible:=True;
      MyWorkBook.WorkSheets[k].PrintPreview;  //打印
      k:=k+1;
    end;
    MyWorkBook.WorkSheets[1].delete; //删除模版
    stbMsg.Caption:='提示信息：定额材料汇总表:'+'【'+P_th+'】的信息导出完成!';
    stbBar.Refresh;
    MyWorkBook.saveas(savefilepath);
    MyWorkBook.Close;
    ExcelApp.Quit;
    ExcelApp:=Unassigned;
  end;

end;

procedure TFrm_DesignBOMPick.MyTreeView_K3Expanding(Sender: TObject;
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
               +'Isleaf from VT_K3_Item_Inf with(nolock) where FParentNumber= '''
               +PTree(Node.Data).ID+''' order by FFullNumber';

  qry.open;
  qry.First;

  PTree(Node.Data).Flag := cLoadFlag;                  // 设置已加载标志
  while not qry.Eof do
  begin
    New(P);
    P.ID := qry.FieldByName('FNumber').AsString;
    P.ParentID := qry.FieldByName('FParentNumber').AsString;
    P.FFullNumber:=qry.FieldByName('FFullNumber').AsString;
    P.Caption := qry.FieldByName('FName').AsString;
    P.Isleaf := qry.FieldByName('Isleaf').Value;
    P.Flag := cNoLoadFlag;                            // 新节点，未加载标志
    with MyTreeView_K3.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('Isleaf').value;
    end;
    qry.Next;
  end;
end;

procedure TFrm_DesignBOMPick.MyTreeView_K3Change(Sender: TObject;
  Node: TTreeNode);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  ShowPrograss('正在提取数据，请稍候……',self);
  If Node = nil then Exit;
  with PTree(Node.Data)^ do
  begin
    ListItemFNumber:=PTree(Node.Data).FFullNumber;
    If not MyItemList(qry,Mdata_K3,'K3_Item_Inf','FNumber',ListItemFNumber,'FNumber') then
    begin
      mdata_K3.Open;
      cxGvColumn(cxGv_K3,Mdata_K3);
    end;
  end;
end;

procedure TFrm_DesignBOMPick.TB_Ref_K3Click(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  mdata_K3.Open;
  If not TreeVeiwList(qry,MyTreeView_K3,'VT_K3_Item_Inf') then
  begin
    Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;

end;

procedure TFrm_DesignBOMPick.RB_Ref2Click(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.CommandTimeout:=500;
  If PC_1.ActivePage=TS_K3 then
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

procedure TFrm_DesignBOMPick.RB_Ref3Click(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.CommandTimeout:=500;

  If PC_1.ActivePage=TS_General then
  begin
    try
      qry.SQL.Text:='Select * from V_General_Structure with(nolock) where FK3ID='+IntToStr(UserFK3ID);
      qry.Open;
    finally
       ;
    end;
    mdata_General.CopyFromDataSet(qry);
    mdata_General.Open;
    mdata_General.First;

  end;

end;

procedure TFrm_DesignBOMPick.RB_Ref_PublicClick(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.CommandTimeout:=2000;

  If PC_1.ActivePage=TS_Public then
  begin
   try
      qry.SQL.Text:='Select * from V_Public with(nolock) where ((TxtunitName=''件'') or (th like ''HG205[6]%'' )'
      +'or (isnull(FTxtItemID,0)<>0  and th not like ''HG%'')) and (FK3ID='+IntToStr(UserFK3ID)+')';
      qry.Open;
    finally
       ;
    end;
    mdata_Public.CopyFromDataSet(qry);
    cxGvColumn(cxGv_Public,Mdata_Public);
    mdata_Public.Open;
    mdata_Public.First;
  end;


end;

procedure TFrm_DesignBOMPick.RB_Ref5Click(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.CommandTimeout:=500;

  If PC_1.ActivePage=TS_DesignBOM then
  begin
    try
      qry.SQL.Text:='Select * from V_DesignBOM_Structure with(nolock) where FK3ID='+IntToStr(UserFK3ID);
      qry.Open;
    finally
       ;
    end;
    mdata_Structure.CopyFromDataSet(qry);
    mdata_Structure.Open;
    mdata_Structure.First;
  end;

end;

procedure TFrm_DesignBOMPick.RB_Ref6Click(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.CommandTimeout:=500;

  If PC_1.ActivePage=TS_TempTxt then
  begin
    try
      If E_UserNum.Text='' then
         qry.SQL.Text:='Select * from V_Temp_DesignText with(nolock) where UserNum='''+UserNUM+''''
      else
      begin
        qry.SQL.Text:='Select * from V_Temp_DesignText with(nolock) where UserNum='''+Trim(E_UserNum.Text)+''''
      end;
      qry.Open;
    finally
       ;
    end;
    mdata_Temp.CopyFromDataSet(qry);
    mdata_Temp.Open;
    mdata_Temp.First;
  end;

end;

procedure TFrm_DesignBOMPick.RB_Ref_WorkInfo_7Click(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.CommandTimeout:=500;

  If PC_1.ActivePage=TS_WorkInfo_Zsi then
  begin
    try
      qry.SQL.Text:='Select * from V_WorkInfo_Zsi  with(nolock) where F_Wroktime>=(getdate()-7)';
      qry.Open;
    finally
       ;
    end;
    mdata_WorkInfo.CopyFromDataSet(qry);
    mdata_WorkInfo.Open;
    mdata_WorkInfo.First;
  end;
  qry.Free;
end;

procedure TFrm_DesignBOMPick.TB_Down2Click(Sender: TObject);
var i:integer;
begin
  If PC_1.ActivePage=TS_K3 then
  begin
    If P_i then
    begin
      TB_Down2.Caption:='取消设置';
      cxGV_BOMK3.OptionsData.Editing:=False;
      cxGv_BOMK3.OptionsView.GroupByBox:=False;
      for i:=0 to cxGV_BOMK3.ColumnCount-1 do
      begin
        cxGV_BOMK3.Columns[i].Options.Filtering:=False;
        cxGV_BOMK3.Columns[i].Options.Editing:=False;
        cxGV_BOMK3.Columns[i].Options.Sorting:=False;
      end;
      P_i:=False;
    end
    else
    begin
      TB_Down2.Caption:='设置';
      cxGV_BOMK3.OptionsData.Editing:=True;
      cxGV_BOMK3.OptionsView.GroupByBox:=True;
      for i:=0 to cxGV_BOMK3.ColumnCount-1 do
      begin
       cxGV_BOMK3.Columns[i].Options.Filtering:=True;
        cxGV_BOMK3.Columns[i].Options.Editing:=True;
        cxGV_BOMK3.Columns[i].Options.Sorting:=True;
      end;
      P_i:=True;
    end;
  end;
end;

procedure TFrm_DesignBOMPick.E_LocatePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.CommandTimeout:=800;

  If PC_1.ActivePage=TS_Public then
  begin
   try
      qry.SQL.Text:='Select * from V_Public where th+mc+gg+FName+FModel like :Locate and FK3ID='+IntToStr(UserFK3ID);
      qry.Parameters.FindParam('Locate').value:='%'+Trim(E_Locate4.Text)+'%';
      qry.Open;
    finally
       ;
    end;
    mdata_Public.CopyFromDataSet(qry);
    mdata_Public.Open;
    mdata_Public.First;
  end;


end;

procedure TFrm_DesignBOMPick.E_Locate2PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.CommandTimeout:=800;

  If PC_1.ActivePage=TS_K3 then
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

procedure TFrm_DesignBOMPick.E_Locate3PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.CommandTimeout:=800;

  If PC_1.ActivePage=TS_General then
  begin
   try
      qry.SQL.Text:='Select * from V_General_Structure with(nolock) where th+mc+gg+FFullNumber like :Locate and FK3ID='+IntToStr(UserFK3ID);
      qry.Parameters.FindParam('Locate').value:='%'+Trim(E_Locate3.Text)+'%';
      qry.Open;
    finally
       ;
    end;
    mdata_General.CopyFromDataSet(qry);
    mdata_General.Open;
    mdata_General.First;
  end;

end;

procedure TFrm_DesignBOMPick.E_Locate5PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.CommandTimeout:=800;

  If PC_1.ActivePage=TS_DesignBOM then
  begin
   try
      qry.SQL.Text:='Select * from V_DesignBOM_Structure with(nolock) where th+mc+gg+FName+FModel+FFullNumber like :Locate and FK3ID='+IntToStr(UserFK3ID);
      qry.Parameters.FindParam('Locate').value:='%'+Trim(E_Locate5.Text)+'%';
      qry.Open;
    finally
       ;
    end;
    mdata_Structure.CopyFromDataSet(qry);
    mdata_Structure.Open;
    mdata_Structure.First;
  end;


end;

procedure TFrm_DesignBOMPick.E_Locate8PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.CommandTimeout:=800;

  If PC_1.ActivePage=TS_K3Item_Inf then
  begin
   try

      qry.SQL.Text:='Select * from T_K3Item with(nolock) where FNumber+FName+FModel like :Locate order by FK3ID,FNumber';
     // qry.SQL.Text:='Select * from T_K3Item with(nolock) where FNumber+FName+FModel like :Locate and FK3ID='+IntToStr(UserFK3ID)+' order by FK3ID,FNumber';
      qry.Parameters.FindParam('Locate').value:='%'+Trim(E_Locate8.Text)+'%';
      qry.Open;
    finally
       ;
    end;
    mdata_K3.CopyFromDataSet(qry);
    mdata_K3.Open;
    mdata_K3.First;
  end;


end;

procedure TFrm_DesignBOMPick.Act_IMP_BOMExecute(Sender: TObject);
var
  proc:TADOStoredProc;
begin
  proc:=TADOStoredProc.Create(self);
  proc.ConnectionString:=mdlData.ReadConnStr;
  proc.CommandTimeout:=5000;
  P_Retinf:='';
  P_Retinf_info:='';
  try
    proc.ProcedureName:='P_Imp_BOM;1';
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=20;
      name := '@UserNum';
      value:=UserNUM;
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftInteger;
      Direction := pdinput;
      size:=20;
      name := '@type';
      value:='1';
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftInteger;
      Direction := pdinput;
      name := '@FItemListId';
      value:=P_FItemListId;
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftInteger;
      Direction := pdinput;
      name := '@Process';
      value:=i;
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftDateTime;
      Direction := pdinput;
      name := '@s0';
      value:=s1;
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftInteger;
      Direction := pdinput;
      name := '@FK3ID';
      value:=UserFK3ID;
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdoutput;
      size:=255;
      name := '@Retinf';
      value:='';
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdoutput;
      size:=255;
      name := '@Retinf_Info';
      value:='';
    end;
    proc.Open;
    P_Retinf:=proc.Parameters.FindParam('@Retinf').Value;
    P_Retinf_info:=proc.Parameters.FindParam('@Retinf_Info').Value;
    mdata.Close;
    DS_Mdata.DataSet:=Mdata;
    cxGV.DataController.DataSource:=DS_Mdata;
    mdata.CopyFromDataSet(proc);
    Mdata.Active:=True;
    cxGvColumn(cxGv,mdata);
    E_th1.SetFocus;
    If (P_Retinf='') and (P_Retinf_info<>'') then
    begin
      ShowPrograss('提示信息：【'+P_Retinf_info+'】',self);
      stbMsg.Caption:='提示信息：'+'【'+P_Retinf_info+'】';
      stbBar.Refresh;
    end;
    If (P_Retinf<>'') and (P_Retinf_info='') then
    begin
      ShowPrograss('提示信息：【'+P_Retinf+'】',self);
      stbMsg.Caption:='提示信息：'+'【'+P_Retinf+'】';
      stbBar.Refresh;
    end;
    finally
     ;
    end;

    If P_Retinf<>'' then
       Messagedlg(P_Retinf,mtInformation,[mbok],0);

    proc.Free;
end;

procedure TFrm_DesignBOMPick.TB_Ref9Click(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.CommandTimeout:=500;

  If PC_1.ActivePage=TS_GBT then
  begin
    try
      qry.SQL.Text:='Select * from T_GBTSuttle with(nolock) order by FGBT,FModel';
      qry.Open;
    finally
       ;
    end;
    mdata_GBT.CopyFromDataSet(qry);
    mdata_GBT.Open;
    mdata_GBT.First;
  end;

end;

procedure TFrm_DesignBOMPick.TB_Ref_OmittClick(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.CommandTimeout:=500;

  If PC_1.ActivePage=TS_Omitt then
  begin
    try
      qry.SQL.Text:='Select 标准号 as FGBT,省略值 as omitt, 简称 as jc,全称 as qc,常用性能等级 as xn from 紧固件省略值  with(nolock)';
      qry.Open;
    finally
       ;
    end;
    mdata_Omitt.CopyFromDataSet(qry);
    mdata_Omitt.Open;
    mdata_Omitt.First;
  end;


end;

procedure TFrm_DesignBOMPick.TB_Out4Click(Sender: TObject);
begin
  inherited;
  ExportToExcel(cxGrid_Public,True,TRue);
end;

procedure TFrm_DesignBOMPick.TB_SumClick(Sender: TObject);
var
  proc:TADOStoredProc;
begin
  proc:=TADOStoredProc.Create(self);
  proc.ConnectionString:=mdlData.ReadConnStr;
  proc.CommandTimeout:=500;
  If  ListItemFNumber='' then
     Exit;

  try
    proc.ProcedureName:='P_BOM_CountWeigh;1';
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
    proc.Open;
    mdata.CopyFromDataSet(proc);
    mdata.Active:=True;
    mdata.First;
  finally
     ;
  end;
  proc.Free;


end;

procedure TFrm_DesignBOMPick.ToolButton9Click(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.CommandTimeout:=2000;

  If PC_1.ActivePage=TS_Public then
  begin
   try
      qry.SQL.Text:='select distinct FName as mc ,FModel as gg,FNumber,FName,FModel,unitName,0 as FSuttle,FBOMReMark from V_Public with(nolock) where FK3ID='+IntToStr(UserFK3ID)
                   +' and (unitName=''kg'' ) '
                   +'union  '
                   +'select distinct mc ,gg,FNumber,FName,FModel,unitName,FSuttle,FBOMReMark  from V_Public with(nolock) where FK3ID='+IntToStr(UserFK3ID)
                   +' and  unitName<>''kg'' and FItemid<>0 ';
      qry.Open;
    finally
       ;
    end;
    mdata_Public.CopyFromDataSet(qry);
    cxGvColumn(cxGv_Public,Mdata_Public);
    mdata_Public.Open;
    mdata_Public.First;
  end;
  qry.Free;

end;

procedure TFrm_DesignBOMPick.ToolButton14Click(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.CommandTimeout:=500;
  If PC_1.ActivePage=TS_K3 then
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

procedure TFrm_DesignBOMPick.E_Copyth1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry,qry1: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.CommandTimeout:=10000;
  qry1:=TADOQuery.Create(self);
  qry1.ConnectionString:=mdlData.ReadConnStr;
  qry1.CommandTimeout:=10000;
  try
    qry.SQL.Text:='Select * from  VT_ItemListPart_Sel with(nolock) where FDepartmentID=:FDepartmentID and FNumber like :FNumber order by FNumber ';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Parameters.FindParam('FNumber').value:='%'+Trim(E_Copyth1.Text)+'%';
    qry.Open;
  finally
     ;
  end;
  selValue:=select('请选择产品类型','FNumber','FParentNumber','FNumber','FName',qry);
  If (Length(selValue)>0) and (qry.FieldByName('leaf').Value=1) then
  begin
    try
      qry1.SQL.Text:='Select * from  V_ItemList with(nolock) where FItemListID=:FItemListID ';
      qry1.Parameters.FindParam('FItemListID').value:=qry.FieldByName('FItemListID').AsString;
      qry1.Open;
    finally
       ;
    end;
    E_Copyth1.Text:=qry1.FieldByName('FItemNumber').AsString;
    E_Copyth2.Text:=qry1.FieldByName('FpartsNumber').AsString;
    P_CopyFItemListId:=qry1.FieldByName('FItemListId').Value;
   {P_FProductID :=qry1.FieldByName('FProductID').Value;
     P_FFullNumber:=qry1.FieldByName('FFullNumber').AsString;
    P_FItemNo:=qry1.FieldByName('FItemNo').AsString;
    P_FItemId:=qry1.FieldByName('FItemId').Value; }
  end
  else
  begin
    Messagedlg('请选择明细！',mtInformation,[mbok],0);
    Exit;
  end ;


end;

procedure TFrm_DesignBOMPick.TB_CopyClick(Sender: TObject);
begin
  If (Trim(E_Rawth1.Text)='') or (Trim(E_Copyth1.Text)='') or (Trim(E_Rawth2.Text)='') or (Trim(E_Copyth2.Text)='') then
  begin
    Messagedlg('图号不能为空，请重新先择！',mtInformation,[mbok],0);
    Exit;
  end;
  If Trim(E_Rawth2.Text)<>Trim(E_Copyth2.Text) then
  begin
    Messagedlg('部件图号有错，请重新先择！',mtInformation,[mbok],0);
    Exit;
  end;
  If ShowMsg('是否复制【'+Trim(E_Rawth2.Text)+'/'+Trim(E_Rawth1.Text)+'】至【'+Trim(E_Copyth2.Text)+'/'+Trim(E_Copyth1.Text)+'】?','提示') then
     Act_IMP_BOM_Copy.Execute
  else
     Exit;

end;

procedure TFrm_DesignBOMPick.Act_IMP_BOM_CopyExecute(Sender: TObject);
var
  proc:TADOStoredProc;
begin
  proc:=TADOStoredProc.Create(self);
  proc.ConnectionString:=mdlData.ReadConnStr;
  proc.CommandTimeout:=500;
  P_Retinf:='';
  P_Retinf_info:='';
  try
    proc.ProcedureName:='P_Imp_BOM_Copy;1';
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=20;
      name := '@UserNum';
      value:=UserNUM;
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftInteger;
      Direction := pdinput;
      name := '@RawFItemListId';
      value:=P_RawFItemListId;
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftInteger;
      Direction := pdinput;
      name := '@CopyFItemListID';
      value:=P_CopyFItemListId;
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
    mdata.Close;
    DS_Mdata.DataSet:=Mdata;
    cxGV.DataController.DataSource:=DS_Mdata;
    mdata.CopyFromDataSet(proc);
    Mdata.Active:=True;
    cxGvColumn(cxGv,mdata);
  finally
   ;
  end;
  If (P_Retinf<>'') then
  begin
     //owPrograss('提示信息：【'+P_Retinf+'】',self);
     stbMsg.Caption:='提示信息：'+'【'+P_Retinf+'】';
     stbBar.Refresh;
   end;

   If P_Retinf<>'' then
      Messagedlg(P_Retinf,mtInformation,[mbok],0);

  proc.Free;


end;

procedure TFrm_DesignBOMPick.TB_PartsClick(Sender: TObject);
begin
  If (P_Isleaf>0) and (PC_2.ActivePage=TS_Sort) then
  begin
    Act_Parts.Execute;
    Title1:='统计图号：【'+mdata_Sum['FItemNumber']+'】'+'/【'+mdata_Sum['FPartsNumber']+'】';
    Title2:='用户名称：【'+mdata_Sum['FClientFullName']+'】';
    Title:='本体定额材料物资采购汇总表';
    frDBDataSet.DataSource:=DS_mdata_Sum;
    FrReport.LoadFromFile(ExtractFileDir(Application.ExeName)+'\Report_DesignBOM_PartsSum.frf');
    FrReport.ShowReport;
  end;

end;

procedure TFrm_DesignBOMPick.frReportGetValue(const ParName: String;
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

procedure TFrm_DesignBOMPick.PC_2Click(Sender: TObject);
begin
  inherited;
  If (P_Isleaf>0) and (PC_2.ActivePage=TS_Sort) then
     Act_Parts.Execute;

end;

procedure TFrm_DesignBOMPick.Act_PartsExecute(Sender: TObject);
var
  proc:TADOStoredProc;
begin
  proc:=TADOStoredProc.Create(self);
  proc.ConnectionString:=mdlData.ReadConnStr;
  proc.CommandTimeout:=500;
  If P_Isleaf_DBOM<1 then
     Exit;

  If P_Isleaf_DBOM=1 then     //按一级图号
  begin
    P_Sort:='台套材料汇总';
    P_Parts:='FItemNumber';
  end;
  If P_Isleaf_DBOM=2 then     //按二缴图号
  begin
    P_Sort:='材料汇总';
    P_Parts:='FPartsNumber';
  end;

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
    mdata_Sum.CopyFromDataSet(proc);
    cxGvColumn(cxGv_Sum,Mdata_Sum);
  finally
     ;
  end;
  PC_2.ActivePage:=TS_Sort;
  cxGrid_Sum.SetFocus;
  Proc.Free;

end;

procedure TFrm_DesignBOMPick.thPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.CommandTimeout:=800;
  try
    qry.SQL.Text:='Select * from T_K3Item  with(nolock) where FNumber+FName+FModel like :Locate and FK3ID='+IntToStr(UserFK3ID);
    qry.Parameters.FindParam('Locate').value:='%'+mdata['th']+'%';
    qry.Open;
  finally
     ;
  end;
  mdata_BOMK3.CopyFromDataSet(qry);
  cxGvColumn(cxGv_BOMK3,Mdata_BOMK3);
  mdata_BOMK3.Open;
  mdata_BOMK3.First;

  PC_1.ActivePage:=TS_k3;


end;

procedure TFrm_DesignBOMPick.mcPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.CommandTimeout:=800;
  try
    qry.SQL.Text:='Select * from T_K3Item  with(nolock) where FNumber+FName+FModel like :Locate and FK3ID='+IntToStr(UserFK3ID);
    qry.Parameters.FindParam('Locate').value:='%'+mdata['mc']+'%';
    qry.Open;
  finally
     ;
  end;
  mdata_BOMK3.CopyFromDataSet(qry);
  cxGvColumn(cxGv_BOMK3,Mdata_BOMK3);
  mdata_BOMK3.Open;
  mdata_BOMK3.First;

  PC_1.ActivePage:=TS_k3;


end;

procedure TFrm_DesignBOMPick.ggPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.CommandTimeout:=800;
  try
    qry.SQL.Text:='Select * from T_K3Item  with(nolock) where FNumber+FName+FModel like :Locate and FK3ID='+IntToStr(UserFK3ID);
    qry.Parameters.FindParam('Locate').value:='%'+mdata['gg']+'%';
    qry.Open;
  finally
     ;
  end;
  mdata_BOMK3.CopyFromDataSet(qry);
  cxGvColumn(cxGv_BOMK3,Mdata_BOMK3);
  mdata_BOMK3.Open;
  mdata_BOMK3.First;

  PC_1.ActivePage:=TS_k3;


end;

procedure TFrm_DesignBOMPick.k3clPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.CommandTimeout:=800;
  try
    qry.SQL.Text:='Select * from T_K3Item  with(nolock) where FNumber+FName+FModel like :Locate1 and FK3ID='+IntToStr(UserFK3ID)
                 +' union '
                 +'Select * from T_K3Item  with(nolock) where FNumber+FName+FModel like :Locate2 and FK3ID='+IntToStr(UserFK3ID)
                 +' union '
                 +'Select * from T_K3Item  with(nolock) where FNumber+FName+FModel like :Locate3 and FK3ID='+IntToStr(UserFK3ID);
    qry.Parameters.FindParam('Locate1').value:='%'+mdata['th']+'%';
    qry.Parameters.FindParam('Locate2').value:='%'+mdata['mc']+'%';
    qry.Parameters.FindParam('Locate3').value:='%'+mdata['gg']+'%';
    qry.Open;
  finally
     ;
  end;
  mdata_BOMK3.CopyFromDataSet(qry);
  cxGvColumn(cxGv_BOMK3,Mdata_BOMK3);
  mdata_BOMK3.Open;
  mdata_BOMK3.First;

  PC_1.ActivePage:=TS_k3;

end;

procedure TFrm_DesignBOMPick.E_NumPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Select distinct UserNum from T_Temp_DesignText where UserNum like :UserNum';
    qry.Parameters.FindParam('UserNum').value:='%'+Trim(E_UserNum.Text)+'%';
    qry.Open;
  finally
     ;
  end;
  If qry.RecordCount>0 then
  begin
    selValue:=select('选择导入人员','UserNum','UserNum','UserNum','UserNum',qry);
    If (Length(selValue)>0) then
    begin
      E_UserNum.EditValue:=qry.FieldByName('UserNum').AsString;
    end
    else
    begin
      application.MessageBox('请选择明细！','系统提示',MB_ICONINFORMATION);
      Exit
    end;
  end;

  qry.Free;

end;

procedure TFrm_DesignBOMPick.N_EditClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_DesignBOMPick.N_FilterClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_DesignBOMPick.N_SortClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_DesignBOMPick.N_GroupClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_DesignBOMPick.N_SetClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_DesignBOMPick.N_OutClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_DesignBOMPick.cxGrid_TempContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV_Temp';
  Gm:='mdata_Temp';
  Gr:='cxGrid_Temp';
  Act_Menu_Set.Execute;

end;

procedure TFrm_DesignBOMPick.Act_MenuExecute(Sender: TObject);
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

procedure TFrm_DesignBOMPick.Act_Menu_SetExecute(Sender: TObject);
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

procedure TFrm_DesignBOMPick.TB_AddK3Click(Sender: TObject);
var
 qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If mdata.RecordCount<=0 then
     Exit;
  If ShowMsg('是否申请加物料?','提示') then
  begin
    try
      qry.SQL.Text:='Delete from T_AddK3 where FItemListID=:FItemListID';
      qry.Parameters.FindParam('FItemListID').value:=P_FItemListId;
      qry.ExecSQL;
    finally
     ;
    end;
    mdata.First;
    while not mdata.eof do
    begin
      try
        qry.SQL.Text:='Insert into T_AddK3(xh,th,mc,gg,k3cl,FSuttle,FItemListID,NumID,FAddK3Date) '
                     +'values(:xh,:th,:mc,:gg,:k3cl,:FSuttle,:FItemListID,:NumID,:FAddK3Date)';
       with qry.Parameters do
       begin
         FindParam('xh').value:=mdata['xh'];
         FindParam('th').value:=mdata['th'];
         FindParam('mc').value:=mdata['mc'];
         FindParam('gg').value:=mdata['gg'];
         FindParam('k3cl').value:=mdata['k3cl'];
         FindParam('FSuttle').value:=mdata['FSuttle'];
         FindParam('FItemListID').value:=P_FItemListId;
         FindParam('NumID').value:=UserNumID;
         FindParam('FAddK3Date').value:=now();
       end;
         qry.ExecSQL;
       finally
         ;
       end;
       mdata.Next;
     end;
   end;
   qry.Free
end;

procedure TFrm_DesignBOMPick.TB_Ref_AddK3Click(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If not TreeVeiwListWhere(qry,MyTreeView_AddK3,'VT_AddK3','') then
  begin
    Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;

end;

procedure TFrm_DesignBOMPick.MyTreeView_AddK3Expanding(Sender: TObject;
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
  qry.SQL.Text:='Select * from VT_AddK3 where FParentNumber= '''
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
    with MyTreeView_AddK3.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('Isleaf').value;
    end;
    qry.Next;
  end;


end;

procedure TFrm_DesignBOMPick.MyTreeView_AddK3Change(Sender: TObject;
  Node: TTreeNode);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If Node = nil then Exit;
  with PTree(Node.Data)^ do
  begin
    ListItemFNumber_AddK3:=trim(PTree(Node.Data).FNumber);
    P_th_AddK3:=PTree(Node.Data).Caption;
    P_Isleaf_AddK3:=PTree(Node.Data).Isleaf;
    If P_Isleaf_AddK3>0 then
    begin
      TB_Del_AddK3.Visible:=True;
      TB_Edit_Addk3.Visible:=True;
      try
        qry.SQL.Text:='select distinct FItemNumber,FPartsNumber,Num,Interphone,Outsidephone,FAddK3Date from V_AddK3 where FFullNumber like :FFullNumber';
        qry.Parameters.FindParam('FFullNumber').value:=ListItemFNumber_AddK3+'%';
        qry.Open;
      finally
        ;
      end;
      Mdata_AddK3_Irem.CopyFromDataSet(qry);
      Mdata_AddK3_Irem.Active:=True;
      If MyItemList(qry,Mdata_AddK3,'V_AddK3','FFullNumber',ListItemFNumber_AddK3,'FFullNumber') then

    end
    else
    begin
      Mdata_AddK3.Close;
      TB_Del_AddK3.Visible:=False;
      TB_Edit_Addk3.Visible:=False;
    end;
 end;

end;

procedure TFrm_DesignBOMPick.TB_Del_AddK3Click(Sender: TObject);
var
  qry:TADOQuery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  If (mdata_AddK3.RecordCount<1) then
  begin
    application.MessageBox('无数据!','系统提示',MB_ICONINFORMATION);
    Exit;
  end;

  If application.MessageBox(Pchar('警告：是否删除K3物料申请单的信息？'+chr(13)+chr(13)
                           +'删除数据操作将不可恢复，确定要删除本数据吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
  If application.MessageBox(Pchar('警告：是否删除K3物料申请单的信息？'+chr(13)+chr(13)
                           +'删除数据操作将不可恢复，确定要删除本数据吗？'),'再次警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then


  try
    qry.SQL.Text:='Delete from T_AddK3 where FItemListID=:FItemListID';
    qry.Parameters.FindParam('FItemListID').value:=mdata_AddK3['FItemListID'];
    qry.ExecSQL;
  finally
    qry.Free;
  end;


end;

procedure TFrm_DesignBOMPick.cxGrid_AddK3ContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV_AddK3';
  Gm:='mdata_AddK3';
  Gr:='cxGrid_AddK3';
  Act_Menu_Set.Execute;

end;

procedure TFrm_DesignBOMPick.cxGrid_OmittContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV_Omitt';
  Gm:='mdata_Omitt';
  Gr:='cxGrid_Omitt';
  Act_Menu_Set.Execute;

end;

procedure TFrm_DesignBOMPick.cxGrid_GBTContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV_GBT';
  Gm:='mdata_GBT';
  Gr:='cxGrid_GBT';
  Act_Menu_Set.Execute;

end;

procedure TFrm_DesignBOMPick.cxGrid_K3ContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV_K3';
  Gm:='mdata_K3';
  Gr:='cxGrid_K3';
  Act_Menu_Set.Execute;

end;

procedure TFrm_DesignBOMPick.cxGrid_WorkInfoContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV_WorkInfo';
  Gm:='mdata_WorkInfo';
  Gr:='cxGrid_WorkInfo';
  Act_Menu_Set.Execute;

end;

procedure TFrm_DesignBOMPick.cxGridDesignBOM_StructureContextPopup(
  Sender: TObject; MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGVDesignBOM_Structure';
  Gm:='Mdata_Structure';
  Gr:='cxGridDesignBOM_Structure';
  Act_Menu_Set.Execute;


end;

procedure TFrm_DesignBOMPick.cxGrid_BOMK3ContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV_BOMK3';
  Gm:='mdata_BOMK3';
  Gr:='cxGrid_BOMK3';
  Act_Menu_Set.Execute;

end;

procedure TFrm_DesignBOMPick.cxGrid_GeneralContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV_General';
  Gm:='mdata_General';
  Gr:='cxGrid_General';
  Act_Menu_Set.Execute;

end;

procedure TFrm_DesignBOMPick.cxGrid_PublicContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
   GV:='cxGV_Public';
  Gm:='mdata_Public';
  Gr:='cxGrid_Public';
  Act_Menu_Set.Execute;

end;

procedure TFrm_DesignBOMPick.cxGridContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV';
  Gm:='mdata';
  Gr:='cxGrid';
  Act_Menu_Set.Execute;

end;

procedure TFrm_DesignBOMPick.cxGrid_SumContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV_Sum';
  Gm:='mdata_Sum';
  Gr:='cxGrid_Sum';
  Act_Menu_Set.Execute;

end;

procedure TFrm_DesignBOMPick.TB_Edit_Addk3Click(Sender: TObject);
begin
  inherited;
  cxGV_AddK3.OptionsData.Editing:=True;
  ZQth_AddK3.Options.Editing:=True;
  ZQmc_AddK3.Options.Editing:=True;
  ZQgg_AddK3.Options.Editing:=True;
  ZQcl_AddK3.Options.Editing:=True;
  TB_Save_Addk3.Visible:=True;
end;

procedure TFrm_DesignBOMPick.TB_Save_Addk3Click(Sender: TObject);
var
  qry:TADOQuery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If ShowMsg('是否保存物料修改?','提示') then
  begin
    mData_Addk3.First;
    while not mData_Addk3.Eof  do
    begin
      try
        qry.SQL.Text:='update T_AddK3 set ZQth=:ZQth,ZQmc=:ZQmc,ZQgg=:ZQgg,ZQcl=:ZQcl,k3cl=:k3cl where FAddk3ID=:FAddk3ID';
        qry.Parameters.FindParam('ZQth').value:=mdata_AddK3['ZQth'];
        qry.Parameters.FindParam('ZQmc').value:=mdata_AddK3['ZQmc'];
        qry.Parameters.FindParam('ZQgg').value:=mdata_AddK3['ZQgg'];
        qry.Parameters.FindParam('ZQcl').value:=mdata_AddK3['ZQcl'];
        qry.Parameters.FindParam('k3cl').value:=mdata_AddK3['k3cl'];
        qry.Parameters.FindParam('FAddk3ID').value:=mdata_AddK3['FAddk3ID'];
        qry.ExecSQL;
      finally
       ;
      end;
      mdata_AddK3.Next;
    end;
    TB_Edit_Addk3.Visible:=True;
    TB_Save_Addk3.Visible:=False;
    cxGV_AddK3.OptionsData.Editing:=False;
  end;
  qry.Free
end;


procedure TFrm_DesignBOMPick.RB_Ref_WorkInfoClick(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.CommandTimeout:=500;

  If PC_1.ActivePage=TS_WorkInfo_Zsi then
  begin
    try
      qry.SQL.Text:='Select * from V_WorkInfo_Zsi  with(nolock) ';
      qry.Open;
    finally
       ;
    end;
    mdata_WorkInfo.CopyFromDataSet(qry);
    mdata_WorkInfo.Open;
    mdata_WorkInfo.First;
  end;
   qry.Free;


end;

end.
