unit Main_StockQry;

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
  cxCheckComboBox, RzEdit, RzLabel, cxSpinEdit, cxGridBandedTableView,
  cxGridDBBandedTableView, Menus, ActnList;

type
  TFrm_StockQry = class(TFrm_GridBass)
    ImageList: TImageList;
    frReport: TfrReport;
    frDBDataSet: TfrDBDataSet;
    PC_2: TRzPageControl;
    TS_StockIn: TRzTabSheet;
    Panel3: TPanel;
    MData_SList: TdxMemData;
    MData_SListth1: TStringField;
    MData_SListmc1: TStringField;
    MData_SListgg1: TStringField;
    MData_SListSelRemark_1: TStringField;
    MData_SListssth1: TStringField;
    MData_SListFK3Number_1: TStringField;
    MData_SListFName1: TStringField;
    MData_SListFModel1: TStringField;
    MData_SListunitName1: TStringField;
    MData_SListjs1: TStringField;
    MData_SListFSumQry1: TFloatField;
    MData_SListFQry1: TFloatField;
    MData_SListFSuttle1: TFloatField;
    MData_SListFNumber1: TStringField;
    MData_SListFParentNumber1: TStringField;
    MData_SListFFullNumber1: TStringField;
    DS_Mdata_SList: TDataSource;
    MData_SListNum: TStringField;
    MData_SListabc: TStringField;
    MData_SListFFStockInListRemark: TStringField;
    MData_SListFCode: TStringField;
    MData_SListFStockInListID: TIntegerField;
    MData_SListFInSumSuttle: TFloatField;
    MData_SListFInQry: TFloatField;
    MData_SListFInSumQry: TFloatField;
    RzSizePanel1: TRzSizePanel;
    MyTreeView_SList: TTreeView;
    Panel_button: TPanel;
    Panel11: TPanel;
    ToolBar5: TToolBar;
    TB_Ref3: TToolButton;
    TB_Out: TToolButton;
    TB_Prin: TToolButton;
    TB_Exit3: TToolButton;
    RSP_StockIn: TRzPanel;
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
    E_FFactureName: TcxButtonEdit;
    Label2: TLabel;
    E_FFactureID: TcxTextEdit;
    TB_Accredit: TToolButton;
    RSP_Item: TRzSizePanel;
    TS_StockPack: TRzTabSheet;
    Panel7: TPanel;
    Panel8: TPanel;
    ToolBar_M2: TToolBar;
    TB_Ref2: TToolButton;
    ToolButton11: TToolButton;
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
    dw_2: TcxGridDBColumn;
    FPackQry_2: TcxGridDBColumn;
    FSuttle_2: TcxGridDBColumn;
    FSumSuttle_2: TcxGridDBColumn;
    FStockListRemark_2: TcxGridDBColumn;
    FPackLIstRemark_2: TcxGridDBColumn;
    FFullNumber_2: TcxGridDBColumn;
    ssFullNumber_2: TcxGridDBColumn;
    FPartsNumber_2: TcxGridDBColumn;
    FPartsCode_2: TcxGridDBColumn;
    FWorkParts_2: TcxGridDBColumn;
    cxGL_PList: TcxGridLevel;
    PageControl7: TPageControl;
    TabSheet11: TTabSheet;
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
    cxGL_PItem: TcxGridLevel;
    RzSizePanel9: TRzSizePanel;
    MyTreeView_Pack: TTreeView;
    DS_Mdata_PItem: TDataSource;
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
    DS_Mdata_PList: TDataSource;
    TB_Down2: TToolButton;
    PM: TPopupMenu;
    N_Edit: TMenuItem;
    N_Filter: TMenuItem;
    N_Sort: TMenuItem;
    N_Group: TMenuItem;
    N_Set: TMenuItem;
    N_Out: TMenuItem;
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
    Act_PackQry: TAction;
    ToolButton1: TToolButton;
    cxGrid_SItem: TcxGrid;
    cxGV_SItem: TcxGridDBTableView;
    FBranchItemNumber_M3: TcxGridDBColumn;
    FPartsCode_M3: TcxGridDBColumn;
    FWorkPartsNum_M3: TcxGridDBColumn;
    FWorkParts_M3: TcxGridDBColumn;
    FPartsName_M3: TcxGridDBColumn;
    FStockStatusNotes_M: TcxGridDBColumn;
    FStockStatus_M: TcxGridDBColumn;
    FFactureName_M: TcxGridDBColumn;
    FStockWrite_M3: TcxGridDBColumn;
    FItemNumber_M3: TcxGridDBColumn;
    FBranchFileNo_M3: TcxGridDBColumn;
    FStockWriteDate_M3: TcxGridDBColumn;
    FFileNo_M3: TcxGridDBColumn;
    FClientFullName_M3: TcxGridDBColumn;
    FStockItemID_M3: TcxGridDBColumn;
    FStockSubmitDate_M: TcxGridDBColumn;
    FItemId_M3: TcxGridDBColumn;
    FItemModel_M3: TcxGridDBColumn;
    FProductID_M3: TcxGridDBColumn;
    FStockCheck_M: TcxGridDBColumn;
    FStockCheckDate_M: TcxGridDBColumn;
    FFactureID_M: TcxGridDBColumn;
    cxGL_SItem: TcxGridLevel;
    cxGrid_SList: TcxGrid;
    cxGV_SList: TcxGridDBTableView;
    Num_SList: TcxGridDBColumn;
    th_SList: TcxGridDBColumn;
    mcgg_SList: TcxGridDBColumn;
    FSumQry_SList: TcxGridDBColumn;
    FSumCheckYesQry_SList: TcxGridDBColumn;
    FSumPackQry_SList: TcxGridDBColumn;
    FSuttle_SList: TcxGridDBColumn;
    FSumSuttle_SList: TcxGridDBColumn;
    FSumCheckYesSuttle_SList: TcxGridDBColumn;
    FListTeamName_SList: TcxGridDBColumn;
    FListWorkShop_SList: TcxGridDBColumn;
    FCheckDetail_SList: TcxGridDBColumn;
    FPackDetail_SList: TcxGridDBColumn;
    FListTeamID_SList: TcxGridDBColumn;
    FStockListRemark_SList: TcxGridDBColumn;
    FFullNumber_SList: TcxGridDBColumn;
    ssFullNumber_SList: TcxGridDBColumn;
    FPartsNumber_SList: TcxGridDBColumn;
    FPartsCode_SList: TcxGridDBColumn;
    FBranchItemNumber_SList: TcxGridDBColumn;
    FWorkParts_SList: TcxGridDBColumn;
    FStockItemID_SList: TcxGridDBColumn;
    FStockListID_SList: TcxGridDBColumn;
    SelRemark_SList: TcxGridDBColumn;
    IsEdit_SList: TcxGridDBColumn;
    cxGL_SList: TcxGridLevel;
    dw_SList: TcxGridDBColumn;
    FPlanParts_M3: TcxGridDBColumn;
    FStockPartsWet_M3: TcxGridDBColumn;
    TB_Accredit_Auto: TToolButton;
    procedure FormResize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure MyTreeView_SListExpanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure MyTreeView_SListChange(Sender: TObject; Node: TTreeNode);
    procedure frReportBeginBand(Band: TfrBand);
    procedure TB_Ref3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TB_OutClick(Sender: TObject);
    procedure TB_Exit3Click(Sender: TObject);
    procedure TB_PrinClick(Sender: TObject);
    procedure cxGV_SItemFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure cxGV_SListCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure FFactureName_MPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure E_FItemNumber_CopyPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure TB_AccreditClick(Sender: TObject);
    procedure TB_Ref2Click(Sender: TObject);
    procedure MyTreeView_PackChange(Sender: TObject; Node: TTreeNode);
    procedure MyTreeView_PackExpanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure cxGV_PItemFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure TB_Down2Click(Sender: TObject);
    procedure N_EditClick(Sender: TObject);
    procedure N_FilterClick(Sender: TObject);
    procedure N_SortClick(Sender: TObject);
    procedure N_GroupClick(Sender: TObject);
    procedure N_SetClick(Sender: TObject);
    procedure N_OutClick(Sender: TObject);
    procedure cxGrid_PItemContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure cxGrid_PListContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure Act_Menu_SetExecute(Sender: TObject);
    procedure Act_MenuExecute(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure cxGrid_SItemContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure cxGrid_SListContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure TB_Accredit_AutoClick(Sender: TObject);

  private
   { Private declarations }


  public
    P_state,P_state2,P_stateApp,P_IsAudit,P_Move:integer;
    P_th1,P_th2,P_th3,P_th4,P_th5:String;
    ListItemFParentNumber,ListItemFNumber1,ListItemFNumber2,ListItemFNumber3,ListItemFNumber4,ListItemFNumber5:String;
    P_i:boolean;

    P_FProductID:integer;
   { Public declarations }
  end;

var
  Frm_StockQry: TFrm_StockQry;


implementation

uses FRMDATA,  COMMON, FrmSelect, ProgBar, PROGRASS, Main_PermissionCheck,
  Main_Converse, Main_systemuser, FrmMain;




{$R *.dfm}
procedure TFrm_StockQry.FormResize(Sender: TObject);
begin
  inherited;
  Self.Caption:=UserFDepartmentName+'入库清单查询';
end;

procedure TFrm_StockQry.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=cafree;
  Frm_StockQry:=nil;
end;

procedure TFrm_StockQry.FormCreate(Sender: TObject);
begin
  inherited;
  Panel_button.Visible:= mdlData.PermissionCheckRights(TFrm_StockQry.ClassName,'新增');

  TB_Accredit_Auto.Visible:= mdlData.PermissionCheckRights(TFrm_StockQry.ClassName,'新增');

end;

procedure TFrm_StockQry.MyTreeView_SListExpanding(Sender: TObject;
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

//  qry.SQL.Text:='Select * from VT_Stock where FParentNumber= '''
//               +PTree(Node.Data).ID+''' order by FBranchItemNumber,FNumber';

  If UserFDepartmentsort=1 then //事业部
  begin
    qry.SQL.Text:='Select * from VT_Stock with(nolock) where FParentNumber= '''
                 +PTree(Node.Data).ID+''' and FAgentID=:FAgentID order by FBranchItemNumber,FNumber';
    qry.Parameters.FindParam('FAgentID').value:=UserFDepartmentID;
  end;
  If UserFDepartmentsort=2 then   //子公司
  begin
    qry.SQL.Text:='Select * from VT_Stock where FParentNumber= '''
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
    P.Flag := cNoLoadFlag;                            // 新节点，未加载标志
    with MyTreeView_SList.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('Isleaf').value;
    end;
    qry.Next;
  end;

end;

procedure TFrm_StockQry.MyTreeView_SListChange(Sender: TObject; Node: TTreeNode);
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

    If PTree(Node.Data).Isleaf>=0 then
    begin
      //要改
     // If MyItemListwhere(qry,Mdata_M3,'V_StockItem','FFullNumber',ListItemFNumber,' and FAgentID='+IntToStr(UserFDepartmentID),'FFullNumber') then
     // If MyItemListwhere(qry,Mdata3,'V_StockList','FFullNumber',ListItemFNumber,' and FAgentID='+IntToStr(UserFDepartmentID),'FFullNumber',) then
      If MyItemList(qry,Mdata_SItem,'V_StockItem','FFullNumber',ListItemFNumber,'FFullNumber') then
      If MyItemList(qry,Mdata_SList,'V_StockList','FFullNumber',ListItemFNumber,'FFullNumber') then

    end
    else
    begin
      Mdata_SItem.Close;
      mdata_SList.Close;
    end;
  end;
end;

procedure TFrm_StockQry.frReportBeginBand(Band: TfrBand);
begin
  inherited;
   if Band.Name='dtFooter' then
  begin
    If ((mdata_SList.RecordCount+1) mod 25)>0 then
      frReport.Dictionary.Variables['n']:=25-((mdata_SList.RecordCount+1) mod 25)
    else
      frReport.Dictionary.Variables['n']:=0;
  end;

end;

procedure TFrm_StockQry.TB_Ref3Click(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If UserFDepartmentsort=1 then //事业部
  begin
    If not TreeVeiwListWhere(qry,MyTreeView_SList,'VT_Stock',' and FAgentID='+IntToStr(UserFDepartmentID)) then
      Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;
  If UserFDepartmentsort=2 then   //子公司
  begin
    If not TreeVeiwListWhere(qry,MyTreeView_SList,'VT_Stock',' and (FAgentID='+IntToStr(UserFDepartmentID)+' or FAgentID=FDepartmentID) ') then
    Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;
  If UserFDepartmentsort=3 then //公共平台
  begin
    If not TreeVeiwListWhere(qry,MyTreeView_SList,'VT_Stock',' ') then
      Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;




{  If UserFDepartmentsort=1 then //事业部
  begin
    If not TreeVeiwListWhere(qry,MyTreeView3,'VT_Stock',' and FAgentID='+IntToStr(UserFDepartmentID)) then
      Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;
  If UserFDepartmentsort=2 then   //子公司
  begin
    If not TreeVeiwListWhere(qry,MyTreeView3,'VT_Stock',' and (FAgentID='+IntToStr(UserFDepartmentID)+' or FAgentID=FDepartmentID) ') then
    Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;}
end;

procedure TFrm_StockQry.FormShow(Sender: TObject);
begin
  inherited;
  TB_Ref3.Click;
  TB_Ref2.Click;
end;

procedure TFrm_StockQry.TB_OutClick(Sender: TObject);
Var i:Integer;
begin
  inherited;
  for i:=0 to cxGv_SList.ColumnCount-1 do
  begin
    cxGv_SList.Columns[i].Visible:=False;
  end;

  Num_SList.Visible:=True;
  th_SList.Visible:=True;
  mcgg_SList.Visible:=True;
  dw_SList.Visible:=True;
  FSumQry_SList.Visible:=True;
  FSuttle_SList.Visible:=True;
  FSumSuttle_SList.Visible:=True;
  FStockListRemark_SList.Visible:=True;

  If mdata_SList.RecordCount>0 then
     ExportToExcel(cxGrid_SList,True,TRue)
  else
     Application.MessageBox(PChar('没有需要导出的数据！'), '错误', MB_OK +MB_ICONSTOP);
  for i:=0 to cxGv_SList.ColumnCount-1 do
  begin
    cxGv_SList.Columns[i].Visible:=True;
  end;

  dw_SList.Visible:=False;
  mcgg_SList.Visible:=False;

end;

procedure TFrm_StockQry.TB_Exit3Click(Sender: TObject);
begin
  inherited;
  Self.Close;
end;

procedure TFrm_StockQry.TB_PrinClick(Sender: TObject);

begin
   If mdata_SList.RecordCount>0 then
  begin
    mdata_SList.SortedField:='FFullNumber';
    FrReport.LoadFromFile(ExtractFileDir(Application.ExeName)+'\Report_DesignBOM_Stock.frf');
    FrReport.ShowReport;
  end
  else
    Application.MessageBox(PChar('没有需要打印的数据！'), '错误', MB_OK +MB_ICONSTOP);

  mdata_SList.SortedField:='';
end;

procedure TFrm_StockQry.cxGV_SItemFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
var qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If (mData_SItem['FStockItemID']<>0) and (mData_SItem['FStockItemID']<>Null) then
  begin
    If MyItemListID(qry,mData_SList,'V_StockList',' FStockItemID='+IntToStr(mData_SItem['FStockItemID']),'FFullNumber',) then

   // If MyItemList(qry,Mdata3,'V_StockList','cast(FStockItemID as varchar(20))',
  //                Mdata_M3['FStockItemID'],'FFullNumber') then

  end;

end;

procedure TFrm_StockQry.cxGV_SListCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  If cxGV_SList.Controller.FocusedRowIndex=AViewInfo.RecordViewInfo.Index  then  //是否是选中行
     else
  If ((StrToFloat(AViewInfo.GridRecord.DisplayTexts[FSumQry_SList.Index])-StrToFloat(AViewInfo.GridRecord.DisplayTexts[FSumCheckYesQry_SList.Index]))<>0) and
     ((AViewInfo.GridRecord.DisplayTexts[Num_SList.Index]<>'★★') and (AViewInfo.GridRecord.DisplayTexts[SelRemark_SList.Index]<>'(按以下入库)'))  then
  begin
   // ACanvas.Canvas.brush.Color := clInactiveCaptionText;      //设置行颜色
    ACanvas.Canvas.Font.Color:=clBlue; //字体颜色
    ACanvas.FillRect(AViewInfo.Bounds);
  end;

  If (StrToFloat(AViewInfo.GridRecord.DisplayTexts[FSumQry_SList.Index])<StrToFloat(AViewInfo.GridRecord.DisplayTexts[FSumCheckYesQry_SList.Index])) then
  begin
   // ACanvas.Canvas.brush.Color := clRed  ;    //设置行颜色
    ACanvas.Canvas.Font.Color:=clRed; //字体颜色
    ACanvas.FillRect(AViewInfo.Bounds);
  end;

end;

procedure TFrm_StockQry.FFactureName_MPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='select distinct FDepartmentID,FDepartmentName from T_Department order by FDepartmentName';
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

procedure TFrm_StockQry.E_FItemNumber_CopyPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='select distinct * from T_Department where FDepartmentSort=2 or FDepartmentSort=5 order by FDepartmentNumber';
    qry.Open;
  finally
     ;
  end;
  selValue:=select('请选择生产制作单位','FDepartmentNumber','FDepartmentParentNumber','FDepartmentNumber','FDepartmentName',qry);
  If Length(selValue)>0 then
  begin
    E_FFactureName.Text:=qry.FieldByName('FDepartmentName').Value;
    E_FFactureID.Text:=qry.FieldByName('FDepartmentID').Value;
  end;

end;

procedure TFrm_StockQry.TB_AccreditClick(Sender: TObject);
var
 qry:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If application.MessageBox(Pchar('警告：是否对：【'+P_th+'】的单据进行授权？'+chr(13)+chr(13)
                                 +'授权后的数据不允许修改和删除，确定要提交本单据吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
  begin
    mdata_SItem.First;
    mdata_SItem.DisableControls;

    while not mdata_SItem.eof do
    begin
      try
        qry.SQL.Text:='Update T_StockItem Set FFactureID=:FFactureID  where FStockItemID=:FStockItemID';
        If Trim(E_FFactureName.Text)=''  then
           qry.Parameters.FindParam('FFactureID').value:= 0
        else
          qry.Parameters.FindParam('FFactureID').value:= StrToInt(E_FFactureID.Text);
        qry.Parameters.FindParam('FStockItemID').value:=mdata_SItem['FStockItemID'];
        qry.ExecSQL;
      finally
       ;
      end;
      MData_SItem.Edit;
      MData_SItem['FFactureName']:=E_FFactureName.Text;
      MData_SItem['FFactureID']:=StrToInt(E_FFactureID.Text);
      MData_SItem.Post;
      mdata_SItem.Next;
    end;
    application.MessageBox('授权完毕！','系统提示',MB_ICONINFORMATION);
  end;
  mdata_SItem.EnableControls;



end;

procedure TFrm_StockQry.TB_Ref2Click(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If not TreeVeiwListWhere(qry,MyTreeView_Pack,'VT_Pack_Dep',' and Isleaf<=1 and FBillDepartmentID='+IntToStr(UserFDepartmentID)) then
      Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
end;

procedure TFrm_StockQry.MyTreeView_PackChange(Sender: TObject;
  Node: TTreeNode);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If Node = nil then Exit;
  with PTree(Node.Data)^ do
  begin
    ListItemFNumber2:=trim(PTree(Node.Data).FNumber);
    P_th:=PTree(Node.Data).Caption;
    If PTree(Node.Data).Isleaf>0 then
    begin
      //If MyItemList(qry,Mdata_M2,'V_PackItem','FFullNumber',ListItemFNumber2,'FFullNumber') then
      If MyItemListFieldWhere(qry,Mdata_PItem,' *  ','V_PackItem','FFullNumber',ListItemFNumber2,' and FPackNo<>0 ','FFullNumber') then
     // cxGvColumn(cxGV_PList,Mdata_PItem);
      P_Move:=1;
    end
    else
    begin
      mdata_PItem.Close;
      mdata_PList.Close;
    end;
  end;

end;

procedure TFrm_StockQry.MyTreeView_PackExpanding(Sender: TObject;
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
               +PTree(Node.Data).ID+''' and FBillDepartmentID=:FBillDepartmentID and Isleaf<=1 order by FBranchItemNumber,FNumber';
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

procedure TFrm_StockQry.cxGV_PItemFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
var qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If P_Move=1 then
  begin
    If (mData_PItem['FFullNumber']<>'') and (mData_PItem['FFullNumber']<>Null) and (mData_PItem.RecordCount>0) then
    begin
      If MyItemList(qry,Mdata_PList,'V_PackList','cast(FBillDepartmentID as nvarchar(20))+'';''+FItemNo+'';''+FPackNum',Mdata_PItem['FFullNumber'],'FFullNumber') then
    end;
  end;
end;

procedure TFrm_StockQry.TB_Down2Click(Sender: TObject);
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

procedure TFrm_StockQry.N_EditClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_StockQry.N_FilterClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_StockQry.N_SortClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_StockQry.N_GroupClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_StockQry.N_SetClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_StockQry.N_OutClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_StockQry.cxGrid_PItemContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
    GV:='cxGV_PItem';
    Gm:='mdata_PItem';
    Gr:='cxGrid_PItem';
   // Act_Menu_Set.Execute;
end;

procedure TFrm_StockQry.cxGrid_PListContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV_PList';
  Gm:='mdata_PList';
  Gr:='cxGrid_PList';
  Act_Menu_Set.Execute;

end;

procedure TFrm_StockQry.Act_Menu_SetExecute(Sender: TObject);
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

procedure TFrm_StockQry.Act_MenuExecute(Sender: TObject);
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

procedure TFrm_StockQry.ToolButton1Click(Sender: TObject);
begin
  inherited;
  If MData_PItem.RecordCount>0 then
     ExportToExcel(cxGrid_PItem,True,TRue)
  else
     Application.MessageBox(PChar('没有需要导出的数据！'), '错误', MB_OK +MB_ICONSTOP);
end;

procedure TFrm_StockQry.cxGrid_SItemContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV_SItem';
  Gm:='mdata_SItem';
  Gr:='cxGrid_SItem';
  Act_Menu_Set.Execute;

end;

procedure TFrm_StockQry.cxGrid_SListContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV_SList';
  Gm:='mdata_SList';
  Gr:='cxGrid_SList';
  Act_Menu_Set.Execute;

end;

procedure TFrm_StockQry.TB_Accredit_AutoClick(Sender: TObject);
var
  proc:TADOStoredProc;
begin
  proc:=TADOStoredProc.Create(self);
  proc.ConnectionString:=mdlData.ReadConnStr;
  proc.CommandTimeout:=500;
  try
    proc.ProcedureName:='P_BOMRight;1';
    with proc.Parameters.AddParameter do
    begin
      DataType := ftInteger;
      Direction := pdinput;
      size:=50;
      name := '@FDepartMentID';
      value:=UserFDepartMentID;
    end;
    proc.ExecProc;
  finally
     ;
  end;
  Proc.Free;
  application.MessageBox('授权完毕！','系统提示',MB_ICONINFORMATION);

end;

end.
