unit Main_DesignOrderQry;

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
  jpeg, cxLookAndFeelPainters, cxButtons, cxMemo, Menus;

type
    TFrm_DesignOrderQry = class(TFrm_GridBass)
    ImageList: TImageList;
    frReport: TfrReport;
    frDBDataSet: TfrDBDataSet;
    PC_1: TRzPageControl;
    TS_Supplier: TRzTabSheet;
    ADOQuery: TADOQuery;
    V_K3: TADOTable;
    DS_K3: TDataSource;
    ADOStoredProc1: TADOStoredProc;
    TS_Take: TRzTabSheet;
    RzSizePanel2: TRzSizePanel;
    ToolBar3: TToolBar;
    ToolButton7: TToolButton;
    TB_Down2: TToolButton;
    ToolButton10: TToolButton;
    Image3: TImage;
    L_title2: TLabel;
    MyTreeView2: TTreeView;
    DS_Mdata2: TDataSource;
    MData2: TdxMemData;
    TB_EXIT1: TToolButton;
    Panel1: TPanel;
    cxGrid2: TcxGrid;
    cxGV2: TcxGridDBTableView;
    th2: TcxGridDBColumn;
    mc2: TcxGridDBColumn;
    gg2: TcxGridDBColumn;
    FModel2: TcxGridDBColumn;
    FSumQry2: TcxGridDBColumn;
    FSupplier2: TcxGridDBColumn;
    FTakeListReMark2: TcxGridDBColumn;
    FSumSuttle2: TcxGridDBColumn;
    FNumber2: TcxGridDBColumn;
    FName2: TcxGridDBColumn;
    UnitName2: TcxGridDBColumn;
    FFullNumber2: TcxGridDBColumn;
    FClientFullName2: TcxGridDBColumn;
    FItemNumber2: TcxGridDBColumn;
    FpartsNumber2: TcxGridDBColumn;
    FTakeNumber2: TcxGridDBColumn;
    cxGL2: TcxGridLevel;
    Panel_button: TPanel;
    Bevel_button: TBevel;
    FK3Model2: TcxGridDBColumn;
    FK3Name2: TcxGridDBColumn;
    Panel2: TPanel;
    Label7: TLabel;
    E_FItemNumber: TcxTextEdit;
    Label6: TLabel;
    E_FTakeDate: TcxDateEdit;
    E_FTakeID: TcxButtonEdit;
    Label3: TLabel;
    E_FPartsName: TcxButtonEdit;
    Label4: TLabel;
    E_FItemListID: TcxButtonEdit;
    E_FPartsNumber: TcxButtonEdit;
    MData2th: TStringField;
    MData2mc: TStringField;
    MData2gg: TStringField;
    MData2FSumQry: TIntegerField;
    MData2FSupplier: TStringField;
    MData2FTakeReMark: TStringField;
    MData2FSumSuttle: TFloatField;
    MData2FName: TStringField;
    MData2FModel: TStringField;
    MData2UnitName: TStringField;
    Label5: TLabel;
    E_FTakeReMark: TcxMemo;
    FDesignLeader2: TcxGridDBColumn;
    FItemQry2: TcxGridDBColumn;
    Label9: TLabel;
    E_FBranchFileNo: TcxButtonEdit;
    TS_Order: TRzTabSheet;
    ToolBar2: TToolBar;
    TB_Ref: TToolButton;
    TB_Out3: TToolButton;
    ToolButton14: TToolButton;
    TB_Down: TToolButton;
    TB_Print: TToolButton;
    ToolButton17: TToolButton;
    TB_EXIT: TToolButton;
    L_title1: TLabel;
    Image4: TImage;
    RzSizePanel1: TRzSizePanel;
    MyTreeView: TTreeView;
    Panel5: TPanel;
    cxGrid: TcxGrid;
    cxGV: TcxGridDBTableView;
    FAskQry: TcxGridDBColumn;
    FOrderQry: TcxGridDBColumn;
    FNumber: TcxGridDBColumn;
    FK3Name: TcxGridDBColumn;
    FK3Model: TcxGridDBColumn;
    FK3UnitName: TcxGridDBColumn;
    cxGL: TcxGridLevel;
    Panel6: TPanel;
    Bevel2: TBevel;
    Panel7: TPanel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label17: TLabel;
    E_FItemNumber3: TcxTextEdit;
    E_FOrderDate: TcxDateEdit;
    E_FOrderID: TcxButtonEdit;
    cxButtonEdit2: TcxButtonEdit;
    cxButtonEdit3: TcxButtonEdit;
    E_FK3BillNo: TcxButtonEdit;
    E_FBranchFileNo3: TcxButtonEdit;
    Label18: TLabel;
    E_FSupplier: TcxButtonEdit;
    E_FOrderNum: TcxTextEdit;
    Label19: TLabel;
    E_FOrderReMark: TcxMemo;
    MData: TdxMemData;
    DS_Mdata: TDataSource;
    E_FSupplierId: TcxButtonEdit;
    FItemID: TcxGridDBColumn;
    FOrderListReMark: TcxGridDBColumn;
    MDataFNumber: TStringField;
    MDataFK3Name: TStringField;
    MDataFK3Model: TStringField;
    MDataFK3UnitName: TStringField;
    MDataFOrderQry: TIntegerField;
    MDataFOrderListReMark: TStringField;
    MDataFTakeListID: TIntegerField;
    MDataFItemID: TIntegerField;
    FTakeListID: TcxGridDBColumn;
    FTakeListID2: TcxGridDBColumn;
    FOrderPrice: TcxGridDBColumn;
    FOrderAmount: TcxGridDBColumn;
    E_FDepartmentNum: TcxTextEdit;
    ToolBar4: TToolBar;
    TB_Ref4: TToolButton;
    ToolButton15: TToolButton;
    ToolButton18: TToolButton;
    ToolButton19: TToolButton;
    ToolButton20: TToolButton;
    RzSizePanel4: TRzSizePanel;
    MyTreeView4: TTreeView;
    Panel9: TPanel;
    cxGrid4: TcxGrid;
    cxGV4: TcxGridDBTableView;
    FMOney: TcxGridDBColumn;
    FBillNo4: TcxGridDBColumn;
    sumFOrderAmount4: TcxGridDBColumn;
    cxGL4: TcxGridLevel;
    Panel10: TPanel;
    Bevel3: TBevel;
    Panel11: TPanel;
    Label27: TLabel;
    E_FSupplierName: TcxButtonEdit;
    MData4: TdxMemData;
    DS_Mdata4: TDataSource;
    MDataFOrderPrice: TFloatField;
    FOrderNum4: TcxGridDBColumn;
    FOrderDate4: TcxGridDBColumn;
    FDate: TcxGridDBColumn;
    FSupplierName4: TcxGridDBColumn;
    FPercent: TcxGridDBColumn;
    MDataFOrderAmount: TCurrencyField;
    E_FOrderNo: TcxButtonEdit;
    MDataFAskQry: TFloatField;
    FSumOrderQry: TcxGridDBColumn;
    TB_Ref2: TToolButton;
    FOrderListNum: TcxGridDBColumn;
    FTaxRate: TcxGridDBColumn;
    TS_Item: TRzTabSheet;
    ToolBar1: TToolBar;
    TB_Ref5: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    RzSizePanel3: TRzSizePanel;
    MyTreeView5: TTreeView;
    Panel3: TPanel;
    Panel4: TPanel;
    Bevel1: TBevel;
    Panel8: TPanel;
    DS_Mdata5: TDataSource;
    MData5: TdxMemData;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    IntegerField5: TIntegerField;
    IntegerField6: TIntegerField;
    StringField10: TStringField;
    IntegerField7: TIntegerField;
    IntegerField8: TIntegerField;
    FloatField1: TFloatField;
    cxGrid5: TcxGrid;
    cxGV5: TcxGridDBTableView;
    th5: TcxGridDBColumn;
    mc5: TcxGridDBColumn;
    gg5: TcxGridDBColumn;
    FSumQry5: TcxGridDBColumn;
    FSumOrderQry5: TcxGridDBColumn;
    FSupplier5: TcxGridDBColumn;
    FTakeListReMark5: TcxGridDBColumn;
    FSumSuttle5: TcxGridDBColumn;
    FName5: TcxGridDBColumn;
    FModel5: TcxGridDBColumn;
    FNumber5: TcxGridDBColumn;
    FK3Name5: TcxGridDBColumn;
    FK3Model5: TcxGridDBColumn;
    UnitName5: TcxGridDBColumn;
    FFullNumber5: TcxGridDBColumn;
    FClientFullName5: TcxGridDBColumn;
    FItemNumber5: TcxGridDBColumn;
    FpartsNumber5: TcxGridDBColumn;
    FTakeNumber5: TcxGridDBColumn;
    FTakeListID5: TcxGridDBColumn;
    cxGL5: TcxGridLevel;
    FSumOrderAmount5: TcxGridDBColumn;
    FK3UnitName5: TcxGridDBColumn;
    TB_Down5: TToolButton;
    TB_Down4: TToolButton;
    TS_ItemSupplier: TRzTabSheet;
    ToolBar6: TToolBar;
    TB_Ref6: TToolButton;
    ToolButton21: TToolButton;
    TB_Down6: TToolButton;
    ToolButton23: TToolButton;
    ToolButton24: TToolButton;
    ToolButton25: TToolButton;
    RzSizePanel5: TRzSizePanel;
    MyTreeView6: TTreeView;
    Panel12: TPanel;
    Panel13: TPanel;
    Bevel4: TBevel;
    DS_Mdata6: TDataSource;
    MData6: TdxMemData;
    StringField11: TStringField;
    StringField12: TStringField;
    StringField13: TStringField;
    StringField14: TStringField;
    IntegerField9: TIntegerField;
    IntegerField10: TIntegerField;
    StringField15: TStringField;
    IntegerField11: TIntegerField;
    IntegerField12: TIntegerField;
    FloatField2: TFloatField;
    MDataFTaxRate: TFloatField;
    Label1: TLabel;
    E_FItem3003Name: TcxButtonEdit;
    E_FItem3003: TcxButtonEdit;
    Label2: TLabel;
    Label8: TLabel;
    E_FPrecastDate: TcxDateEdit;
    E_FFactDate: TcxDateEdit;
    Label16: TLabel;
    Label20: TLabel;
    E_FPaymentMode: TcxButtonEdit;
    E_FInvoiceStatus: TcxButtonEdit;
    E_FInvoice: TcxButtonEdit;
    Label21: TLabel;
    E_FOrderUserNum: TcxTextEdit;
    E_FOrderUserDate: TcxDateEdit;
    FOrderNum: TcxGridDBColumn;
    FOrderDate: TcxGridDBColumn;
    FOrderUserNum: TcxGridDBColumn;
    FSupplier: TcxGridDBColumn;
    FClientShortName: TcxGridDBColumn;
    FBranchFileNo: TcxGridDBColumn;
    sumFOrderAmount: TcxGridDBColumn;
    FF: TcxGridDBColumn;
    FInvoice: TcxGridDBColumn;
    PopupMenu1: TPopupMenu;
    FPrecastDate: TcxGridDBColumn;
    FFactDate: TcxGridDBColumn;
    FPaymentMode: TcxGridDBColumn;
    N1: TMenuItem;
    N2: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    FStatusNotes: TcxGridDBColumn;
    FOrderUserNum4: TcxGridDBColumn;
    FPrecastDate4: TcxGridDBColumn;
    FFactDate4: TcxGridDBColumn;
    FPaymentMode4: TcxGridDBColumn;
    FInvoice4: TcxGridDBColumn;
    FStatusNotes4: TcxGridDBColumn;
    FClientShortName4: TcxGridDBColumn;
    FBranchFileNo4: TcxGridDBColumn;
    cxGrid6: TcxGrid;
    cxGV6: TcxGridDBTableView;
    FOrderListNum6: TcxGridDBColumn;
    FK3Name6: TcxGridDBColumn;
    FK3Model6: TcxGridDBColumn;
    FK3UnitName6: TcxGridDBColumn;
    FAskQry6: TcxGridDBColumn;
    FOrderQry6: TcxGridDBColumn;
    FOrderPrice6: TcxGridDBColumn;
    FTaxRate6: TcxGridDBColumn;
    FOrderAmount6: TcxGridDBColumn;
    FOrderListReMark6: TcxGridDBColumn;
    FOrderNum6: TcxGridDBColumn;
    FOrderDate6: TcxGridDBColumn;
    FOrderUserNum6: TcxGridDBColumn;
    FClientShortName6: TcxGridDBColumn;
    FSupplier6: TcxGridDBColumn;
    FBranchFileNo6: TcxGridDBColumn;
    sumFOrderAmount6: TcxGridDBColumn;
    FPrecastDate6: TcxGridDBColumn;
    FFactDate6: TcxGridDBColumn;
    FPaymentMode6: TcxGridDBColumn;
    cxGridDBColumn21: TcxGridDBColumn;
    FInvoice6: TcxGridDBColumn;
    FStatusNotes6: TcxGridDBColumn;
    FNumber6: TcxGridDBColumn;
    FTakeListID6: TcxGridDBColumn;
    FItemID6: TcxGridDBColumn;
    cxGL6: TcxGridLevel;
    Panel14: TPanel;
    Label10: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    E_FItemNumber6: TcxTextEdit;
    E_FOrderDate6: TcxDateEdit;
    cxButtonEdit4: TcxButtonEdit;
    E_FK3BillNo6: TcxButtonEdit;
    E_FBranchFileNo6: TcxButtonEdit;
    E_FSupplier6: TcxButtonEdit;
    E_FOrderNum6: TcxTextEdit;
    cxMemo1: TcxMemo;
    E_FDepartmentNum6: TcxTextEdit;
    E_FItem3003Name6: TcxButtonEdit;
    E_FPrecastDate6: TcxDateEdit;
    E_FFactDate6: TcxDateEdit;
    E_FPaymentMode6: TcxButtonEdit;
    E_FInvoiceStatus6: TcxButtonEdit;
    E_FInvoice6: TcxButtonEdit;
    E_FOrderUserNum6: TcxTextEdit;
    E_FOrderUserDate6: TcxDateEdit;
    Panel15: TPanel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    E_FItemNumber4: TcxTextEdit;
    E_FOrderDate4: TcxDateEdit;
    cxButtonEdit18: TcxButtonEdit;
    E_FK3BillNo4: TcxButtonEdit;
    E_FBranchFileNo4: TcxButtonEdit;
    E_FSupplier4: TcxButtonEdit;
    E_FOrderNum4: TcxTextEdit;
    cxMemo2: TcxMemo;
    E_FDepartmentNum4: TcxTextEdit;
    E_FItem3003Name4: TcxButtonEdit;
    E_FPrecastDate4: TcxDateEdit;
    E_FFactDate4: TcxDateEdit;
    E_FPaymentMode4: TcxButtonEdit;
    E_FInvoiceStatus4: TcxButtonEdit;
    E_FInvoice4: TcxButtonEdit;
    E_FOrderUserNum4: TcxTextEdit;
    E_FOrderUserDate4: TcxDateEdit;
    Image1: TImage;
    L_title6: TLabel;
    Image2: TImage;
    L_title4: TLabel;
    TS_PayMent: TRzTabSheet;
    RzSizePanel6: TRzSizePanel;
    MyTreeView7: TTreeView;
    ToolBar5: TToolBar;
    TB_Ref7: TToolButton;
    ToolButton6: TToolButton;
    ToolButton8: TToolButton;
    TB_Prin7: TToolButton;
    ToolButton11: TToolButton;
    ToolButton12: TToolButton;
    Panel16: TPanel;
    Panel17: TPanel;
    Bevel5: TBevel;
    Label50: TLabel;
    OKBtn: TcxButton;
    CancelBtn: TcxButton;
    E_FPayMentUserNum: TcxTextEdit;
    E_FPayMentUserNumID: TcxDateEdit;
    cxGrid7: TcxGrid;
    cxGVLList: TcxGridDBTableView;
    FOrderNum_List: TcxGridDBColumn;
    FSupplier_List: TcxGridDBColumn;
    FClientShortName_List: TcxGridDBColumn;
    FBranchFileNo_List: TcxGridDBColumn;
    FPaymentMode_List: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    FInvoice_List: TcxGridDBColumn;
    FOrderUserNum_List: TcxGridDBColumn;
    FStatusNotes_List: TcxGridDBColumn;
    sumFOrderAmount_List: TcxGridDBColumn;
    FPayMentUserNum: TcxGridDBColumn;
    FPrecastDate_List: TcxGridDBColumn;
    FFactDate_List: TcxGridDBColumn;
    FPayMentDate: TcxGridDBColumn;
    FPayMentNum: TcxGridDBColumn;
    FItemID_List: TcxGridDBColumn;
    FNumber_List: TcxGridDBColumn;
    FTakeListID_List: TcxGridDBColumn;
    cxGVItem: TcxGridDBTableView;
    FPayMentNum_Item: TcxGridDBColumn;
    FPayMentDate_Item: TcxGridDBColumn;
    sumFPayMentAmount_Item: TcxGridDBColumn;
    FPayMentUserNum_Item: TcxGridDBColumn;
    FPayMentID_Item: TcxGridDBColumn;
    cxGVItemDBColumn6: TcxGridDBColumn;
    cxGVItemDBColumn7: TcxGridDBColumn;
    cxGVItemDBColumn8: TcxGridDBColumn;
    cxGVLOrder: TcxGridDBTableView;
    FOrderListNum_Order: TcxGridDBColumn;
    FK3Name_Order: TcxGridDBColumn;
    FK3Model_Order: TcxGridDBColumn;
    FK3UnitName_Order: TcxGridDBColumn;
    FAskQry_Order: TcxGridDBColumn;
    FOrderQry_Order: TcxGridDBColumn;
    FOrderPrice_Order: TcxGridDBColumn;
    FTaxRate_Order: TcxGridDBColumn;
    FOrderAmount_Order: TcxGridDBColumn;
    FOrderListReMark_Order: TcxGridDBColumn;
    cxGVLOrderDBColumn3: TcxGridDBColumn;
    cxGVLOrderDBColumn4: TcxGridDBColumn;
    cxGLItem: TcxGridLevel;
    cxGLList: TcxGridLevel;
    cxGLOrder: TcxGridLevel;
    Panel18: TPanel;
    Label51: TLabel;
    Label52: TLabel;
    E_FPayMentNum: TcxButtonEdit;
    E_FPayMentDate: TcxDateEdit;
    cxTextEdit1: TcxTextEdit;
    E_FPayMentNo: TcxButtonEdit;
    E_FPayMentID: TcxButtonEdit;
    MData7: TdxMemData;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    StringField5: TStringField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    FloatField3: TFloatField;
    DS_Mdata7: TDataSource;
    MData8: TdxMemData;
    StringField16: TStringField;
    StringField17: TStringField;
    StringField18: TStringField;
    StringField19: TStringField;
    IntegerField13: TIntegerField;
    IntegerField14: TIntegerField;
    StringField20: TStringField;
    IntegerField15: TIntegerField;
    IntegerField16: TIntegerField;
    FloatField4: TFloatField;
    DS_Mdata8: TDataSource;
    DS_Mdata9: TDataSource;
    MData9: TdxMemData;
    StringField21: TStringField;
    StringField22: TStringField;
    StringField23: TStringField;
    StringField24: TStringField;
    IntegerField17: TIntegerField;
    IntegerField18: TIntegerField;
    StringField25: TStringField;
    IntegerField19: TIntegerField;
    IntegerField20: TIntegerField;
    FloatField5: TFloatField;
    ToolButton1: TToolButton;
    procedure FormResize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TB_EXIT1Click(Sender: TObject);
    procedure TB_DownClick(Sender: TObject);
    procedure MyTreeView2Expanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure MyTreeView2Change(Sender: TObject; Node: TTreeNode);
    procedure TB_EXITClick(Sender: TObject);
    procedure MyTreeViewExpanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure MyTreeViewChange(Sender: TObject; Node: TTreeNode);
    procedure TB_RefClick(Sender: TObject);
    procedure TB_Ref4Click(Sender: TObject);
    procedure MyTreeView4Expanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure MyTreeView4Change(Sender: TObject; Node: TTreeNode);
    procedure cxGrid1DBTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure cxGV4CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure TB_Ref2Click(Sender: TObject);
    procedure MyTreeView5Expanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure MyTreeView5Change(Sender: TObject; Node: TTreeNode);
    procedure TB_Ref5Click(Sender: TObject);
    procedure cxGV5CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure MyTreeView6Expanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure MyTreeView6Change(Sender: TObject; Node: TTreeNode);
    procedure TB_Ref6Click(Sender: TObject);
    procedure cxGV2CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure E_FInvoiceStatusPropertiesEditValueChanged(Sender: TObject);
    procedure TB_Out3Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure MyTreeView7Expanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure MyTreeView7Change(Sender: TObject; Node: TTreeNode);
    procedure TB_Ref7Click(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);

  private
    ListItemFNumber,ListItemFParentNumber,P_th:String;



  public
    { Public declarations }
  end;

var
  Frm_DesignOrderQry: TFrm_DesignOrderQry;
implementation

uses FRMDATA, COMMON, FrmSelect, ProgBar, PROGRASS;

{$R *.dfm}




procedure TFrm_DesignOrderQry.FormResize(Sender: TObject);
begin
  inherited;
  TB_Ref.Click;
  TB_Ref2.Click;
  TB_Ref4.Click;
  TB_Ref5.Click;
  TB_Ref6.Click;
  TB_Ref7.Click;
  L_title.Caption:=UserFDepartmentName+'采购订单查询';
  Self.Caption:=UserFDepartmentName+'采购订单查询';
end;

procedure TFrm_DesignOrderQry.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=cafree;
  Frm_DesignOrderQry:=nil;
end;

procedure TFrm_DesignOrderQry.TB_EXIT1Click(Sender: TObject);
begin
  inherited;
  self.Close;
end;

procedure TFrm_DesignOrderQry.TB_DownClick(Sender: TObject);
Var i:Integer;
begin
  If P_i then
  begin
    TB_Down.Caption:='取消设置';
    TB_Down2.Caption:='取消设置';
    TB_Down4.Caption:='取消设置';
    TB_Down5.Caption:='取消设置';
    TB_Down6.Caption:='取消设置';
    cxGV.OptionsData.Editing:=False;
    cxGv.OptionsView.GroupByBox:=False;
    cxGV2.OptionsData.Editing:=False;
    cxGv2.OptionsView.GroupByBox:=False;
    cxGV4.OptionsData.Editing:=False;
    cxGV4.OptionsView.GroupByBox:=False;
    cxGV5.OptionsData.Editing:=False;
    cxGV5.OptionsView.GroupByBox:=False;
    cxGV5.OptionsData.Editing:=False;
    cxGV5.OptionsView.GroupByBox:=False;

    for i:=0 to cxGv.ColumnCount-1 do
    begin
      cxGv.Columns[i].Options.Filtering:=False;
      cxGv.Columns[i].Options.Editing:=False;
      cxGv.Columns[i].Options.Sorting:=False;
    end;
    for i:=0 to cxGv2.ColumnCount-1 do
    begin
      cxGv2.Columns[i].Options.Filtering:=False;
      cxGv2.Columns[i].Options.Editing:=False;
      cxGv2.Columns[i].Options.Sorting:=False;
    end;
    for i:=0 to cxGv4.ColumnCount-1 do
    begin
      cxGv4.Columns[i].Options.Filtering:=False;
      cxGv4.Columns[i].Options.Editing:=False;
      cxGv4.Columns[i].Options.Sorting:=False;
    end;
    for i:=0 to cxGv5.ColumnCount-1 do
    begin
      cxGv5.Columns[i].Options.Filtering:=False;
      cxGv5.Columns[i].Options.Editing:=False;
      cxGv5.Columns[i].Options.Sorting:=False;
    end;
    for i:=0 to cxGv6.ColumnCount-1 do
    begin
      cxGv6.Columns[i].Options.Filtering:=False;
      cxGv6.Columns[i].Options.Editing:=False;
      cxGv6.Columns[i].Options.Sorting:=False;
    end;

    Panel_down.Visible:=False;
    P_i:=False;
  end
  else
  begin
    TB_Down.Caption:='设置';
    TB_Down2.Caption:='设置';
    TB_Down4.Caption:='设置';
    TB_Down5.Caption:='设置';
    TB_Down6.Caption:='设置';
    cxGV.OptionsData.Editing:=True;
    cxGv.OptionsView.GroupByBox:=True;
    cxGV2.OptionsData.Editing:=True;
    cxGv2.OptionsView.GroupByBox:=True;

    cxGV4.OptionsData.Editing:=True;
    cxGV4.OptionsView.GroupByBox:=True;
    cxGV5.OptionsData.Editing:=True;
    cxGV5.OptionsView.GroupByBox:=True;
    cxGV6.OptionsData.Editing:=True;
    cxGV6.OptionsView.GroupByBox:=True;

    for i:=0 to cxGv.ColumnCount-1 do
    begin
      cxGv.Columns[i].Options.Filtering:=True;
      cxGv.Columns[i].Options.Editing:=True;
      cxGv.Columns[i].Options.Sorting:=True;
    end;
    for i:=0 to cxGv2.ColumnCount-1 do
    begin
      cxGv2.Columns[i].Options.Filtering:=True;
      cxGv2.Columns[i].Options.Editing:=True;
      cxGv2.Columns[i].Options.Sorting:=True;
    end;
    for i:=0 to cxGv4.ColumnCount-1 do
    begin
      cxGv4.Columns[i].Options.Filtering:=True;
      cxGv4.Columns[i].Options.Editing:=True;
      cxGv4.Columns[i].Options.Sorting:=True;
    end;
    for i:=0 to cxGv5.ColumnCount-1 do
    begin
      cxGv5.Columns[i].Options.Filtering:=True;
      cxGv5.Columns[i].Options.Editing:=True;
      cxGv5.Columns[i].Options.Sorting:=True;
    end;
    for i:=0 to cxGv6.ColumnCount-1 do
    begin
      cxGv6.Columns[i].Options.Filtering:=True;
      cxGv6.Columns[i].Options.Editing:=True;
      cxGv6.Columns[i].Options.Sorting:=True;
    end;
    Panel_down.Visible:=True;
    P_i:=True;
  end;
end;

procedure TFrm_DesignOrderQry.MyTreeView2Expanding(Sender: TObject;
  Node: TTreeNode; var AllowExpansion: Boolean);
var
  P :PTree;
  qry:TADOquery;

begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;

  If (Node = nil) or
     (PTree(Node.Data).Flag <> cNoLoadFlag) or   // 1.加载标志
     (not Node.HasChildren) or                   // 2.未有子
     (Node.Count>0) then                         // 3.已有子节点
     Exit;

  qry.SQL.Text:='Select FNumber, FParentNumber,FName,FFullNumber,'
               +'Isleaf from VT_DesignTake where FParentNumber= '''
               +PTree(Node.Data).ID+''' and FDepartmentID=:FDepartmentID '
               +' order by FFullNumber';
  qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
  qry.open;

  PTree(Node.Data).Flag := cLoadFlag;   // 设置已加载标志
  while not qry.Eof do
  begin
    New(P);
    P.ID := qry.FieldByName('FNumber').AsString;
    P.ParentID := qry.FieldByName('FParentNumber').AsString;
    P.FNumber:=qry.FieldByName('FNumber').AsString;
    P.Isleaf := qry.FieldByName('Isleaf').Value;
    P.Caption := qry.FieldByName('FName').AsString;

    P.Flag := cNoLoadFlag;           // 新节点，未加载标志
    with MyTreeView2.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('Isleaf').value;
    end;
    qry.Next;
  end;

end;

procedure TFrm_DesignOrderQry.MyTreeView2Change(Sender: TObject;
  Node: TTreeNode);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;

  If Node = nil then Exit;
  with PTree(Node.Data)^ do
  begin
    ListItemFNumber2:=trim(PTree(Node.Data).FNumber);
    ListItemFParentNumber:=trim(PTree(Node.Data).FParentNumber);

    P_th:=PTree(Node.Data).Caption;
    If PTree(Node.Data).Isleaf=1 then
    begin
      If MyItemList(qry,Mdata2,'V_DesignTakeList','FTakeNumber',ListItemFNumber2,'') then
      begin
      //  mdata2.Open;
       // mdata2.First;
        E_FItemNumber.Text:=mdata2['FItemNumber'];
        E_FPartsName.Text:=mdata2['FPartsName'];
        E_FPartsNumber.Text:=mdata2['FPartsNumber'];
        E_FBranchFileNo.Text:=mdata2['FBranchFileNo'];
        E_FItemListID.Text:=IntToStr(mdata2['FItemListID']);
        E_FTakeDate.Date:=mdata2['FTakeDate'];
        E_FTakeID.Text:=IntToStr(mdata2['FTakeID']);
        E_FTakeReMark.Text:=mdata2['FTakeReMark'];
      end;
    end
    else
    begin
      mdata2.Close;
    end;
  end;


end;

procedure TFrm_DesignOrderQry.TB_EXITClick(Sender: TObject);
begin
  inherited;
  self.Close;
end;

procedure TFrm_DesignOrderQry.MyTreeViewExpanding(Sender: TObject;
  Node: TTreeNode; var AllowExpansion: Boolean);
var
  P :PTree;
  qry:TADOquery;

begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;

  If (Node = nil) or
     (PTree(Node.Data).Flag <> cNoLoadFlag) or   // 1.加载标志
     (not Node.HasChildren) or                   // 2.未有子
     (Node.Count>0) then                         // 3.已有子节点
     Exit;

  qry.SQL.Text:='Select  FNumber, FParentNumber,FName,'
               +'Isleaf from VT_DesignOrderDate where FParentNumber= '''
               +PTree(Node.Data).ID+''' and FDepartmentID=:FDepartmentID '
               +' order by FNumber';
  qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
  qry.open;

  PTree(Node.Data).Flag := cLoadFlag;   // 设置已加载标志
  while not qry.Eof do
  begin
    New(P);
    P.ID := qry.FieldByName('FNumber').AsString;
    P.ParentID := qry.FieldByName('FParentNumber').AsString;
    P.FNumber:=qry.FieldByName('FNumber').AsString;
    P.Isleaf := qry.FieldByName('Isleaf').Value;
    P.Caption := qry.FieldByName('FName').AsString;
    P.Flag := cNoLoadFlag;                            // 新节点，未加载标志
    with MyTreeView.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('Isleaf').value;
    end;
    qry.Next;
  end;



end;

procedure TFrm_DesignOrderQry.MyTreeViewChange(Sender: TObject;
  Node: TTreeNode);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;

  If Node = nil then Exit;
  with PTree(Node.Data)^ do
  begin
    ListItemFNumber3:=trim(PTree(Node.Data).FNumber);
    If (PTree(Node.Data).Isleaf=1) then
    begin
      If MyItemList(qry,Mdata,'V_DesignOrderList','FDepartmentName+'';''+cast(year(FOrderDate) as varchar(4))+'';''+cast(month(FOrderDate) as varchar(2))+'';''+cast(FOrderStatus as varchar(2))+'';''+FOrderNum+'';''',ListItemFNumber3,'') then
      begin
        cxGvColumn(cxGv,Mdata);
        Panel7.Visible:=True;
        E_FOrderUserNum.Text:=mdata['FOrderUserNum'];
        E_FOrderNum.Text:=mdata['FOrderNum'];
        E_FOrderNo.Text:=mdata['FOrderNo'];
        E_FOrderID.Text:=mdata['FOrderID'];
        E_FOrderDate.Date:=mdata['FOrderDate'];
        E_FBranchFileNo3.Text:=mdata['FBranchFileNo'];
        E_FItemNumber3.Text:=mdata['FItemNumber'];
        E_FDepartmentNUM.Text:=mdata['FDepartmentNUM'];
        E_FSupplier.Text:=mdata['FSupplierName'];
        E_FSupplierId.Text:=mdata['FSupplierId'];
        E_FK3BillNo.Text:=mdata['FK3BillNo'];
        E_FItem3003.Text:=mdata['FItem3003'];
        E_FPrecastDate.Date:=mdata['FPrecastDate'];
        E_FFactDate.Date:=mdata['FFactDate'];
        E_FPaymentMode.Text:=mdata['FPaymentMode'];
        E_FInvoiceStatus.Text:=IntToStr(mdata['FInvoiceStatus']);
        E_FOrderUserNum.Text:=mdata['FOrderUserNum'];
        E_FOrderUserDate.Date:=mdata['FOrderUserDate'];
      end;
    end
    else
    begin
      If MyItemList(qry,Mdata,'V_DesignOrder','FDateNumber',ListItemFNumber3,'') then
      begin
        cxGvColumn(cxGv,Mdata);
        Panel7.Visible:=False;
      end;  
    end;
  end;

end;

procedure TFrm_DesignOrderQry.TB_RefClick(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If not TreeVeiwListUserID(qry,MyTreeView,'VT_DesignOrderDate',UserFDepartmentID) then
  begin
    Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;

end;

procedure TFrm_DesignOrderQry.TB_Ref4Click(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If not TreeVeiwList(qry,MyTreeView4,'VT_DesignOrderSupplier') then
  begin
    Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;
end;

procedure TFrm_DesignOrderQry.MyTreeView4Expanding(Sender: TObject;
  Node: TTreeNode; var AllowExpansion: Boolean);
var
  P :PTree;
  qry:TADOquery;

begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;

  If (Node = nil) or
     (PTree(Node.Data).Flag <> cNoLoadFlag) or   // 1.加载标志
     (not Node.HasChildren) or                   // 2.未有子
     (Node.Count>0) then                         // 3.已有子节点
     Exit;

  qry.SQL.Text:='Select  FNumber, FParentNumber,FName,FFullNumber,'
               +'Isleaf from VT_DesignOrderSupplier where FParentNumber= '''
               +PTree(Node.Data).ID+''' and FDepartmentID=:FDepartmentID '
               +' order by FFullNumber';
  qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
  qry.open;

  PTree(Node.Data).Flag := cLoadFlag;   // 设置已加载标志
  while not qry.Eof do
  begin
    New(P);
    P.ID := qry.FieldByName('FNumber').AsString;
    P.ParentID := qry.FieldByName('FParentNumber').AsString;
    P.FNumber:=qry.FieldByName('FNumber').AsString;
    P.Isleaf := qry.FieldByName('Isleaf').Value;
    P.Caption := qry.FieldByName('FName').AsString;
    P.Flag := cNoLoadFlag;                            // 新节点，未加载标志
    with MyTreeView4.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('Isleaf').value;
    end;
    qry.Next;
  end;

end;

procedure TFrm_DesignOrderQry.MyTreeView4Change(Sender: TObject;
  Node: TTreeNode);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;

  If Node = nil then Exit;
  with PTree(Node.Data)^ do
  begin
    ListItemFNumber4:=trim(PTree(Node.Data).FNumber);
    If PTree(Node.Data).Isleaf>=1 then
    begin
      If MyItemList(qry,Mdata4,'V_DesignOrderSum','FDepartmentName+'';''+cast(FOrderStatus as varchar(2))+'';''+FSupplierName+'';''+FOrderNum+'';''',ListItemFNumber4,'') then
      begin
        E_FSupplierName.Text:=mdata4['FSupplierName'];
        If PTree(Node.Data).Isleaf=2 then
        begin
          Panel15.Visible:=True;
          E_FOrderUserNum4.Text:=mdata4['FOrderUserNum'];
          E_FOrderNum4.Text:=mdata4['FOrderNum'];
          E_FOrderDate4.Date:=mdata4['FOrderDate'];
          E_FBranchFileNo4.Text:=mdata4['FBranchFileNo'];
          E_FSupplier4.Text:=mdata4['FSupplierName'];
          E_FPrecastDate4.Date:=mdata4['FPrecastDate'];
          E_FFactDate4.Date:=mdata4['FFactDate'];
          E_FPaymentMode4.Text:=mdata4['FPaymentMode'];
          E_FInvoiceStatus4.Text:=IntToStr(mdata4['FInvoiceStatus']);
          E_FOrderUserNum4.Text:=mdata4['FOrderUserNum'];
          E_FOrderUserDate4.Date:=mdata4['FOrderUserDate'];
        end
        else
           Panel15.Visible:=False;
      end
      else
      begin
        mdata4.Close;
      end;
    end;
  end;
end;

procedure TFrm_DesignOrderQry.cxGrid1DBTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
var
  ADisplayStyle :TcxStyle;
begin
  ADisplayStyle :=TcxStyle.Create(Self);
  try
    if ARecord.Values[1]=320000 then
    begin
      ADisplayStyle.Color :=clYellow;
      //ADisplayStyle.Font.Color :=clBlack;
      //ADisplayStyle.Font.Color :=clYellow;
      AStyle :=ADisplayStyle;
    end ;
  finally
    ADisplayStyle.Free;
  end;


end;

procedure TFrm_DesignOrderQry.cxGV4CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  if cxGV4.Controller.FocusedRowIndex=AViewInfo.RecordViewInfo.Index  then  //是否是选中行
     else
  if StrToFloat(AViewInfo.GridRecord.DisplayTexts[FPercent.Index])>0 then
  begin
    ACanvas.Canvas.brush.Color := clSkyBlue;
    ACanvas.FillRect(AViewInfo.Bounds);
 end;

end;

procedure TFrm_DesignOrderQry.TB_Ref2Click(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If not TreeVeiwList(qry,MyTreeView2,'VT_DesignTake') then
  begin
    Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;

end;

procedure TFrm_DesignOrderQry.MyTreeView5Expanding(Sender: TObject;
  Node: TTreeNode; var AllowExpansion: Boolean);
var
  P :PTree;
  qry:TADOquery;

begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;

  If (Node = nil) or
     (PTree(Node.Data).Flag <> cNoLoadFlag) or   // 1.加载标志
     (not Node.HasChildren) or                   // 2.未有子
     (Node.Count>0) then                         // 3.已有子节点
     Exit;

  qry.SQL.Text:='Select FNumber, FParentNumber,FName,'
               +'Isleaf from VT_DesignTakeList where FParentNumber= '''
               +PTree(Node.Data).ID+''' and FDepartmentID=:FDepartmentID '
               +' order by FNumber';
  qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
  qry.open;

  PTree(Node.Data).Flag := cLoadFlag;   // 设置已加载标志
  while not qry.Eof do
  begin
    New(P);
    P.ID := qry.FieldByName('FNumber').AsString;
    P.ParentID := qry.FieldByName('FParentNumber').AsString;
    P.FNumber:=qry.FieldByName('FNumber').AsString;
    P.Isleaf := qry.FieldByName('Isleaf').Value;
    P.Caption := qry.FieldByName('FName').AsString;
    P.Flag := cNoLoadFlag;                            // 新节点，未加载标志
    with MyTreeView4.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('Isleaf').value;
    end;
    qry.Next;
  end;

end;

procedure TFrm_DesignOrderQry.MyTreeView5Change(Sender: TObject;
  Node: TTreeNode);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;

  If Node = nil then Exit;
  with PTree(Node.Data)^ do
  begin
    ListItemFNumber5:=trim(PTree(Node.Data).FNumber);
    ListItemFParentNumber:=trim(PTree(Node.Data).FParentNumber);
    P_th:=PTree(Node.Data).Caption;
    If PTree(Node.Data).Isleaf=1 then
    begin
      If MyItemList(qry,Mdata5,'V_DesignTakeSum','FFullNumber',ListItemFNumber5,'') then
      begin
       // mdata5.Open;
        //mdata5.First;
       end;
    end
    else
    begin
      mdata5.Close;
    end;
  end;

end;

procedure TFrm_DesignOrderQry.TB_Ref5Click(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If not TreeVeiwList(qry,MyTreeView5,'VT_DesignTakeList') then
  begin
    Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;

end;

procedure TFrm_DesignOrderQry.cxGV5CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  if cxGV5.Controller.FocusedRowIndex=AViewInfo.RecordViewInfo.Index  then  //是否是选中行
     else
  if StrToFloat(AViewInfo.GridRecord.DisplayTexts[FSumOrderQry5.Index])=0 then
  begin
    ACanvas.Canvas.brush.Color := clSkyBlue;
  end;
  if (StrToFloat(AViewInfo.GridRecord.DisplayTexts[FSumQry5.Index])>StrToFloat(AViewInfo.GridRecord.DisplayTexts[FSumOrderQry5.Index]))
     and (StrToFloat(AViewInfo.GridRecord.DisplayTexts[FSumOrderQry5.Index])<>0) then
  begin
    ACanvas.Canvas.brush.Color := clYellow;
  end;
    ACanvas.FillRect(AViewInfo.Bounds);

end;

procedure TFrm_DesignOrderQry.MyTreeView6Expanding(Sender: TObject;
  Node: TTreeNode; var AllowExpansion: Boolean);
var
  P :PTree;
  qry:TADOquery;

begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;

  If (Node = nil) or
     (PTree(Node.Data).Flag <> cNoLoadFlag) or   // 1.加载标志
     (not Node.HasChildren) or                   // 2.未有子
     (Node.Count>0) then                         // 3.已有子节点
     Exit;

  qry.SQL.Text:='Select  FNumber, FParentNumber,FName,'
               +'Isleaf from VT_DesignOrderList where FParentNumber= '''
               +PTree(Node.Data).ID+''' and FDepartmentID=:FDepartmentID '
               +' order by FNumber';
  qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
  qry.open;

  PTree(Node.Data).Flag := cLoadFlag;   // 设置已加载标志
  while not qry.Eof do
  begin
    New(P);
    P.ID := qry.FieldByName('FNumber').AsString;
    P.ParentID := qry.FieldByName('FParentNumber').AsString;
    P.FNumber:=qry.FieldByName('FNumber').AsString;
    P.Isleaf := qry.FieldByName('Isleaf').Value;
    P.Caption := qry.FieldByName('FName').AsString;
    P.Flag := cNoLoadFlag;                            // 新节点，未加载标志
    with MyTreeView6.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('Isleaf').value;
    end;
    qry.Next;
  end;

end;

procedure TFrm_DesignOrderQry.MyTreeView6Change(Sender: TObject;
  Node: TTreeNode);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;

  If Node = nil then Exit;
  with PTree(Node.Data)^ do
  begin
    ListItemFNumber6:=trim(PTree(Node.Data).FNumber);
    If PTree(Node.Data).Isleaf>=1 then
    begin
      //If MyItemList(qry,Mdata6,'V_DesignOrderListSum','FDateNumber',ListItemFNumber6,'') then
      If MyItemList(qry,Mdata6,'V_DesignOrderListSum','FDepartmentName+'';''+FProductName+'';''+FItemlb+'';''+FBranchItemNumber+'';''+FSupplierName+'';''+FOrderNum+'';''',ListItemFNumber6,'') then

      begin
        If PTree(Node.Data).Isleaf=2 then
        begin
          Panel14.Visible:=True;
          E_FOrderUserNum6.Text:=mdata6['FOrderUserNum'];
          E_FOrderNum6.Text:=mdata6['FOrderNum'];
          E_FOrderDate6.Date:=mdata6['FOrderDate'];
          E_FBranchFileNo6.Text:=mdata6['FBranchFileNo'];
          E_FItemNumber6.Text:=mdata6['FItemNumber'];
          E_FDepartmentNUM6.Text:=mdata6['FDepartmentNUM'];
          E_FSupplier6.Text:=mdata6['FSupplierName'];
          E_FK3BillNo6.Text:=mdata6['FK3BillNo'];
          E_FPrecastDate6.Date:=mdata6['FPrecastDate'];
          E_FFactDate6.Date:=mdata6['FFactDate'];
          E_FPaymentMode6.Text:=mdata6['FPaymentMode'];
          E_FInvoiceStatus6.Text:=IntToStr(mdata6['FInvoiceStatus']);
          E_FOrderUserNum6.Text:=mdata6['FOrderUserNum'];
          E_FOrderUserDate6.Date:=mdata6['FOrderUserDate'];
         end
         else
           Panel14.Visible:=False;
      end
      else
      begin
        mdata6.Close;
      end;
    end;
  end;

end;

procedure TFrm_DesignOrderQry.TB_Ref6Click(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If not TreeVeiwList(qry,MyTreeView6,'VT_DesignOrderList') then
  begin
    Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;

end;

procedure TFrm_DesignOrderQry.cxGV2CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
{  if cxGV2.Controller.FocusedRowIndex=AViewInfo.RecordViewInfo.Index  then  //是否是选中行
     else

  if StrToFloat(AViewInfo.GridRecord.DisplayTexts[FSumOrderQry.Index])=0 then
  begin
    ACanvas.Canvas.brush.Color := clSkyBlue;
  end;
  if (StrToFloat(AViewInfo.GridRecord.DisplayTexts[FSumQry2.Index])>StrToFloat(AViewInfo.GridRecord.DisplayTexts[FSumOrderQry.Index]))
     and (StrToFloat(AViewInfo.GridRecord.DisplayTexts[FSumOrderQry.Index])<>0) then
  begin
    ACanvas.Canvas.brush.Color := clYellow;
  end;
    ACanvas.FillRect(AViewInfo.Bounds);
}
end;

procedure TFrm_DesignOrderQry.E_FInvoiceStatusPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  If E_FInvoiceStatus.EditValue=0 then
     E_FInvoice.Text:='未收发票';
  If E_FInvoiceStatus.EditValue=1 then
     E_FInvoice.Text:='已收发票';
  If E_FInvoiceStatus.EditValue=2 then
     E_FInvoice.Text:='发票已核销';

end;

procedure TFrm_DesignOrderQry.TB_Out3Click(Sender: TObject);
begin
  inherited;
  ExportToExcel(cxGrid,True,TRue);
end;

procedure TFrm_DesignOrderQry.N2Click(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If PC_1.ActivePage=TS_Order then
  begin
    If MyItemList(qry,Mdata,'V_DesignOrder','FDepartmentName+'';''+cast(year(FOrderDate) as varchar(4))+'';''+cast(month(FOrderDate) as varchar(2))+'';''+cast(FOrderStatus as varchar(2))+'';''+FOrderNum+'';''',ListItemFNumber3,'') then
    begin
      cxGvColumn(cxGv,Mdata);
      Panel7.Visible:=False;
      L_title1.Caption:='采购订单查询';
    end;
  end;
  If PC_1.ActivePage=TS_Supplier then
  begin
    If MyItemListwhere(qry,Mdata4,'V_DesignOrderSum','FDepartmentName+'';''+FSupplierName+'';''+FOrderNum+'';''',ListItemFNumber4,'','') then
    begin
      //cxGvColumn(cxGv4,Mdata4);
      Panel15.Visible:=False;
      L_title4.Caption:='采购订单查询';
    end;
  end;

  If PC_1.ActivePage=TS_ItemSupplier then
  begin
    If MyItemListwhere(qry,Mdata6,'V_DesignOrderListSum','FDepartmentName+'';''+FProductName+'';''+FItemlb+'';''+FBranchItemNumber+'';''+FSupplierName+'';''',ListItemFNumber6,'','') then
    begin
      //cxGvColumn(cxGv6,Mdata6);
      Panel14.Visible:=False;
      L_title6.Caption:='采购订单查询';
    end;
  end;


end;

procedure TFrm_DesignOrderQry.N1Click(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If PC_1.ActivePage=TS_Order then
  begin
    If MyItemList(qry,Mdata,'V_DesignOrderList','FDepartmentName+'';''+cast(year(FOrderDate) as varchar(4))+'';''+cast(month(FOrderDate) as varchar(2))+'';''+cast(FOrderStatus as varchar(2))+'';''+FOrderNum+'';''',mdata['FDepartmentName']+';'+FormatDateTime('yyyy',mdata['FOrderDate'])+';'+FormatDateTime('mm',mdata['FOrderDate'])+';'+IntToStr(mdata['FOrderStatus'])+';'+mdata['FOrderNum']+';','') then
    begin
      cxGvColumn(cxGv,Mdata);
      L_title1.Caption:='采购订单查询';
      Panel7.Visible:=True;
      E_FOrderUserNum.Text:=mdata['FOrderUserNum'];
      E_FOrderNum.Text:=mdata['FOrderNum'];
      E_FOrderNo.Text:=mdata['FOrderNo'];
      E_FOrderID.Text:=mdata['FOrderID'];
      E_FOrderDate.Date:=mdata['FOrderDate'];
      E_FBranchFileNo3.Text:=mdata['FBranchFileNo'];
      E_FItemNumber3.Text:=mdata['FItemNumber'];
      E_FDepartmentNUM.Text:=mdata['FDepartmentNUM'];
      E_FSupplier.Text:=mdata['FSupplierName'];
      E_FSupplierId.Text:=mdata['FSupplierId'];
      E_FK3BillNo.Text:=mdata['FK3BillNo'];
      E_FItem3003.Text:=mdata['FItem3003'];
      E_FPrecastDate.Date:=mdata['FPrecastDate'];
      E_FFactDate.Date:=mdata['FFactDate'];
      E_FPaymentMode.Text:=mdata['FPaymentMode'];
      E_FInvoiceStatus.Text:=IntToStr(mdata['FInvoiceStatus']);
      E_FOrderUserNum.Text:=mdata['FOrderUserNum'];
      E_FOrderUserDate.Date:=mdata['FOrderUserDate'];
    end;
  end;

  If PC_1.ActivePage=TS_Supplier then
  begin
    If MyItemList(qry,Mdata4,'V_DesignOrderSum','FDepartmentName+'';''+FSupplierName+'';''+FOrderNum+'';''',mdata4['FDepartmentName']+';'+mdata4['FSupplierName']+';'+mdata4['FOrderNum']+';','') then
    begin
      cxGvColumn(cxGv4,Mdata4);
      L_title4.Caption:='采购订单查询';
      Panel15.Visible:=True;
      E_FOrderUserNum4.Text:=mdata4['FOrderUserNum'];
      E_FOrderNum4.Text:=mdata4['FOrderNum'];
      E_FOrderDate4.Date:=mdata4['FOrderDate'];
      E_FBranchFileNo4.Text:=mdata4['FBranchFileNo'];
      E_FSupplier4.Text:=mdata4['FSupplierName'];
      E_FPrecastDate4.Date:=mdata4['FPrecastDate'];
      E_FFactDate4.Date:=mdata4['FFactDate'];
      E_FPaymentMode4.Text:=mdata4['FPaymentMode'];
      E_FInvoiceStatus4.Text:=IntToStr(mdata4['FInvoiceStatus']);
      E_FOrderUserNum4.Text:=mdata4['FOrderUserNum'];
      E_FOrderUserDate4.Date:=mdata4['FOrderUserDate'];
      E_FSupplierName.Text:=mdata4['FSupplierName']; 
    end;
  end;

  If PC_1.ActivePage=TS_ItemSupplier then
  begin
    If MyItemList(qry,Mdata6,'V_DesignOrderListSum','FDepartmentName+'';''+FProductName+'';''+FItemlb+'';''+FBranchItemNumber+'';''+FSupplierName+'';''+FOrderNum+'';''',mdata6['FDepartmentName']+';'+mdata6['FProductName']+';'+mdata6['FItemlb']+';'+mdata6['FBranchItemNumber']+';'+mdata6['FSupplierName']+';'+mdata6['FOrderNum']+';','') then
    begin
      cxGvColumn(cxGv6,Mdata6);
      Panel14.Visible:=True;
      L_title6.Caption:='采购订单查询';
      E_FOrderUserNum6.Text:=mdata6['FOrderUserNum'];
      E_FOrderNum6.Text:=mdata6['FOrderNum'];
      E_FOrderDate6.Date:=mdata6['FOrderDate'];
      E_FBranchFileNo6.Text:=mdata6['FBranchFileNo'];
      E_FItemNumber6.Text:=mdata6['FItemNumber'];
      E_FDepartmentNUM6.Text:=mdata6['FDepartmentNUM'];
      E_FSupplier6.Text:=mdata6['FSupplierName'];
      E_FK3BillNo6.Text:=mdata6['FK3BillNo'];
      E_FPrecastDate6.Date:=mdata6['FPrecastDate'];
      E_FFactDate6.Date:=mdata6['FFactDate'];
      E_FPaymentMode6.Text:=mdata6['FPaymentMode'];
      E_FInvoiceStatus6.Text:=IntToStr(mdata6['FInvoiceStatus']);
      E_FOrderUserNum6.Text:=mdata6['FOrderUserNum'];
      E_FOrderUserDate6.Date:=mdata6['FOrderUserDate'];
    end;
  end;

end;

procedure TFrm_DesignOrderQry.N7Click(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If PC_1.ActivePage=TS_Order then
  begin
    If MyItemListwhere(qry,Mdata,'V_DesignOrder','FDepartmentName+'';''+cast(year(FOrderDate) as varchar(4))+'';''+cast(month(FOrderDate) as varchar(2))+'';''+cast(FOrderStatus as varchar(2))+'';''+FOrderNum+'';''',ListItemFNumber3,' and FInvoiceStatus=0 ','') then
    begin
      cxGvColumn(cxGv,Mdata);
      Panel7.Visible:=False;
      L_title1.Caption:='查询未收发票';
    end;
  end;
  If PC_1.ActivePage=TS_Supplier then
  begin
    If MyItemListwhere(qry,Mdata4,'V_DesignOrderSum','FDepartmentName+'';''+FSupplierName+'';''+FOrderNum+'';''',ListItemFNumber4,' and FInvoiceStatus=0 ','') then
    begin
      //cxGvColumn(cxGv4,Mdata4);
      Panel15.Visible:=False;
      L_title4.Caption:='查询未收发票';
    end;
  end;

  If PC_1.ActivePage=TS_ItemSupplier then
  begin
    If MyItemListwhere(qry,Mdata6,'V_DesignOrderListSum','FDepartmentName+'';''+FProductName+'';''+FItemlb+'';''+FBranchItemNumber+'';''+FSupplierName+'';''',ListItemFNumber6,' and FInvoiceStatus=0 ','') then
    begin
      //cxGvColumn(cxGv6,Mdata6);
      Panel14.Visible:=False;
      L_title6.Caption:='查询未收发票';
    end;
  end;



end;

procedure TFrm_DesignOrderQry.N8Click(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If PC_1.ActivePage=TS_Order then
  begin
  If MyItemListwhere(qry,Mdata,'V_DesignOrder','FDepartmentName+'';''+cast(year(FOrderDate) as varchar(4))+'';''+cast(month(FOrderDate) as varchar(2))+'';''+cast(FOrderStatus as varchar(2))+'';''+FOrderNum+'';''',ListItemFNumber3,' and FInvoiceStatus=1 ','') then
    begin
      cxGvColumn(cxGv,Mdata);
      Panel7.Visible:=False;
      L_title1.Caption:='查询已收发票';
    end;
  end;

  If PC_1.ActivePage=TS_Supplier then
  begin
    If MyItemListwhere(qry,Mdata4,'V_DesignOrderSum','FDepartmentName+'';''+FSupplierName+'';''+FOrderNum+'';''',ListItemFNumber4,' and FInvoiceStatus=1 ','') then
    begin
      //cxGvColumn(cxGv4,Mdata4);
      Panel15.Visible:=False;
      L_title4.Caption:='查询已收发票';
    end;
  end;

  If PC_1.ActivePage=TS_ItemSupplier then
  begin
    If MyItemListwhere(qry,Mdata6,'V_DesignOrderListSum','FDepartmentName+'';''+FProductName+'';''+FItemlb+'';''+FBranchItemNumber+'';''+FSupplierName+'';''',ListItemFNumber6,' and FInvoiceStatus=1 ','') then
    begin
     // cxGvColumn(cxGv6,Mdata6);
      Panel14.Visible:=False;
      L_title6.Caption:='查询已收发票';
    end;
  end;



end;

procedure TFrm_DesignOrderQry.N9Click(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If PC_1.ActivePage=TS_Order then
  begin
    If MyItemListwhere(qry,Mdata,'V_DesignOrder','FDepartmentName+'';''+cast(year(FOrderDate) as varchar(4))+'';''+cast(month(FOrderDate) as varchar(2))+'';''+cast(FOrderStatus as varchar(2))+'';''+FOrderNum+'';''',ListItemFNumber3,' and FInvoiceStatus=2 ','') then
    begin
      cxGvColumn(cxGv,Mdata);
      Panel7.Visible:=False;
      L_title1.Caption:='查询已核销发票';
    end;
  end;
  If PC_1.ActivePage=TS_Supplier then
  begin
    If MyItemListwhere(qry,Mdata4,'V_DesignOrderSum','FDepartmentName+'';''+FSupplierName+'';''+FOrderNum+'';''',ListItemFNumber4,' and FInvoiceStatus=2 ','') then
    begin
      //cxGvColumn(cxGv4,Mdata4);
      Panel15.Visible:=False;
      L_title4.Caption:='查询已核销发票';
    end;
  end;

  If PC_1.ActivePage=TS_ItemSupplier then
  begin
    If MyItemListwhere(qry,Mdata6,'V_DesignOrderListSum','FDepartmentName+'';''+FProductName+'';''+FItemlb+'';''+FBranchItemNumber+'';''+FSupplierName+'';''',ListItemFNumber6,' and FInvoiceStatus=2 ','') then
    begin
      //cxGvColumn(cxGv6,Mdata6);
      Panel14.Visible:=False;
      L_title6.Caption:='查询已核销发票';
    end;
  end;


end;

procedure TFrm_DesignOrderQry.N5Click(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If PC_1.ActivePage=TS_Order then
  begin
    If MyItemListwhere(qry,Mdata,'V_DesignOrder','FDepartmentName+'';''+cast(year(FOrderDate) as varchar(4))+'';''+cast(month(FOrderDate) as varchar(2))+'';''+cast(FOrderStatus as varchar(2))+'';''+FOrderNum+'';''',ListItemFNumber3,' and FOrderStatus=0 ','') then
    begin
      cxGvColumn(cxGv,Mdata);
      Panel7.Visible:=False;
      L_title1.Caption:='查询未审核单据';
    end;
  end;

  If PC_1.ActivePage=TS_Supplier then
  begin
    If MyItemListwhere(qry,Mdata4,'V_DesignOrderSum','FDepartmentName+'';''+FSupplierName+'';''+FOrderNum+'';''',ListItemFNumber4,' and FOrderStatus=0 ','') then
    begin
      //cxGvColumn(cxGv4,Mdata4);
      Panel15.Visible:=False;
      L_title4.Caption:='查询未审核单据';
    end;
  end;


  If PC_1.ActivePage=TS_ItemSupplier then
  begin
    If MyItemListwhere(qry,Mdata6,'V_DesignOrderListSum','FDepartmentName+'';''+FProductName+'';''+FItemlb+'';''+FBranchItemNumber+'';''+FSupplierName+'';''',ListItemFNumber6,' and FOrderStatus=0 ','') then
    begin
      //cxGvColumn(cxGv6,Mdata6);
      Panel14.Visible:=False;
      L_title6.Caption:='查询未审核单据';
    end;
  end;



end;

procedure TFrm_DesignOrderQry.N6Click(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If PC_1.ActivePage=TS_Order then
  begin
    If MyItemListwhere(qry,Mdata,'V_DesignOrder','FDepartmentName+'';''+cast(year(FOrderDate) as varchar(4))+'';''+cast(month(FOrderDate) as varchar(2))+'';''+cast(FOrderStatus as varchar(2))+'';''+FOrderNum+'';''',ListItemFNumber3,' and FOrderStatus=2 ','') then
    begin
      cxGvColumn(cxGv,Mdata);
      Panel7.Visible:=False;
      L_title1.Caption:='查询已审核单据';
    end;
  end;

  If PC_1.ActivePage=TS_Supplier then
  begin
    If MyItemListwhere(qry,Mdata4,'V_DesignOrderSum','FDepartmentName+'';''+FSupplierName+'';''+FOrderNum+'';''',ListItemFNumber4,' and FOrderStatus=1 ','') then
    begin
      //cxGvColumn(cxGv4,Mdata4);
      Panel15.Visible:=False;
      L_title4.Caption:='查询已审核单据';
    end;
  end;

  If PC_1.ActivePage=TS_ItemSupplier then
  begin
    If MyItemListwhere(qry,Mdata6,'V_DesignOrderListSum','FDepartmentName+'';''+FProductName+'';''+FItemlb+'';''+FBranchItemNumber+'';''+FSupplierName+'';''',ListItemFNumber6,' and FOrderStatus=2 ','') then
    begin
      //cxGvColumn(cxGv6,Mdata6);
      Panel14.Visible:=False;
      L_title6.Caption:='查询已审核单据';
    end;
  end;



end;

procedure TFrm_DesignOrderQry.MyTreeView7Expanding(Sender: TObject;
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

  qry.SQL.Text:='Select FNumber, FParentNumber,FName,FNumber,'
               +'Isleaf from VT_DesignPayMent where FParentNumber= '''
               +PTree(Node.Data).ID+''' '
               +' order by FNumber';
  qry.open;

  PTree(Node.Data).Flag := cLoadFlag;   // 设置已加载标志
  while not qry.Eof do
  begin
    New(P);
    P.ID := qry.FieldByName('FNumber').AsString;
    P.ParentID := qry.FieldByName('FParentNumber').AsString;
    P.FNumber:=qry.FieldByName('FNumber').AsString;
    P.Isleaf := qry.FieldByName('Isleaf').Value;
    P.Caption := qry.FieldByName('FName').AsString;
    P.Flag := cNoLoadFlag;                            // 新节点，未加载标志
    with MyTreeView7.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('Isleaf').value;
    end;
    qry.Next;
  end;


end;

procedure TFrm_DesignOrderQry.MyTreeView7Change(Sender: TObject;
  Node: TTreeNode);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  If Node = nil then Exit;
  with PTree(Node.Data)^ do
  begin
    ListItemFNumber7:=trim(PTree(Node.Data).FNumber);
    If MyItemList(qry,Mdata7,'V_DesignPayMent','FDepartmentName+'';''+cast(year(FPayMentDate) as varchar(4))+'';''+cast(month(FPayMentDate) as varchar(2))+'';''+FPayMentNum+'';''',ListItemFNumber7,'') then
    If MyItemList(qry,Mdata8,'V_DesignPayMentList','FDepartmentName+'';''+cast(year(FPayMentDate) as varchar(4))+'';''+cast(month(FPayMentDate) as varchar(2))+'';''+FPayMentNum+'';''',ListItemFNumber7,'') then
    If MyItemList(qry,Mdata9,'V_DesignOrderList','FDepartmentName',UserFDepartmentName,'') then

  end;

end;

procedure TFrm_DesignOrderQry.TB_Ref7Click(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If not TreeVeiwListWhere(qry,MyTreeView7,'VT_DesignPayMent',' and FDepartmentID='+IntToStr(UserFDepartmentID) ) then
  begin
    Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;

end;

procedure TFrm_DesignOrderQry.ToolButton1Click(Sender: TObject);
begin
  inherited;
  Mdata2.SortedField:='FTakeNumber';
  frDBDataSet.DataSet:=Mdata2;
  FrReport.LoadFromFile(ExtractFileDir(Application.ExeName)+'\Report_DesignBOM_Take.frf');
  FrReport.ShowReport;

end;

end.
