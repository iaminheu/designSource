unit Main_BranchWorkItem;

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
  TFlatPanelUnit, cxLookAndFeelPainters, cxButtons, cxTimeEdit, jpeg;

type
  TFrm_BranchWorkItem = class(TFrm_GridBass)
    MData: TdxMemData;
    DS_Mdata: TDataSource;
    ImageList: TImageList;
    frReport: TfrReport;
    frDBDataSet: TfrDBDataSet;
    PC_2: TRzPageControl;
    TS_Edit: TRzTabSheet;
    TS_Brow: TRzTabSheet;
    ADOStoredProc1: TADOStoredProc;
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
    MDataFEstimateQry: TStringField;
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
    TB_Ref: TToolButton;
    TB_Out: TToolButton;
    ToolButton5: TToolButton;
    TB_Down: TToolButton;
    TB_Prin: TToolButton;
    ToolButton1: TToolButton;
    TB_EXIT: TToolButton;
    Panel4: TPanel;
    RzSizePanel2: TRzSizePanel;
    MyTreeView2: TTreeView;
    Panel5: TPanel;
    cxGridBrow: TcxGrid;
    cxGVBrow: TcxGridDBTableView;
    FIsDel: TcxGridDBColumn;
    FWorkItemNum_Brow: TcxGridDBColumn;
    FClientShortName: TcxGridDBColumn;
    FBranchFileNo: TcxGridDBColumn;
    FBranchItemNumber: TcxGridDBColumn;
    FNumber: TcxGridDBColumn;
    FBalanceName1: TcxGridDBColumn;
    FBalanceModel1: TcxGridDBColumn;
    FUnitName1: TcxGridDBColumn;
    FMaterialDate1: TcxGridDBColumn;
    FQry_1: TcxGridDBColumn;
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
    FBalancePriceID1: TcxGridDBColumn;
    FWorkItemRemark: TcxGridDBColumn;
    FWorkData: TcxGridDBColumn;
    cxGLBrow: TcxGridLevel;
    ToolBar2: TToolBar;
    TB_Ref2: TToolButton;
    TB_Out2: TToolButton;
    ToolButton11: TToolButton;
    TB_Down2: TToolButton;
    ToolButton16: TToolButton;
    ToolButton17: TToolButton;
    FIsSysTem: TcxGridDBColumn;
    FJobSort: TcxGridDBColumn;
    FBalanceProductName_1: TcxGridDBColumn;
    FWorkListID_1: TcxGridDBColumn;
    ToolButton2: TToolButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    PageControl2: TPageControl;
    TabSheet3: TTabSheet;
    TBar_Sel: TToolBar;
    cxGrid: TcxGrid;
    cxGV: TcxGridDBTableView;
    FWorkListNum: TcxGridDBColumn;
    FBalanceName: TcxGridDBColumn;
    FBalanceModel: TcxGridDBColumn;
    FUnitName: TcxGridDBColumn;
    FSollWeight: TcxGridDBColumn;
    FLength: TcxGridDBColumn;
    FQry: TcxGridDBColumn;
    FSingleWeight: TcxGridDBColumn;
    FEstimateQry: TcxGridDBColumn;
    FBalancePrice: TcxGridDBColumn;
    FEstimateAmount: TcxGridDBColumn;
    SumFBalanceQry: TcxGridDBColumn;
    SumFBalanceAmount: TcxGridDBColumn;
    FDeliveryDateTxt: TcxGridDBColumn;
    FAdvanceAmount: TcxGridDBColumn;
    FWorkListRemark: TcxGridDBColumn;
    FQualityAmount: TcxGridDBColumn;
    FRemark: TcxGridDBColumn;
    FWorkItemNum: TcxGridDBColumn;
    FMaterialDate: TcxGridDBColumn;
    FAgentBalanceID: TcxGridDBColumn;
    FBalancePriceID: TcxGridDBColumn;
    FItemID: TcxGridDBColumn;
    FWorkListID: TcxGridDBColumn;
    FBalanceProductName: TcxGridDBColumn;
    cxGL: TcxGridLevel;
    cxGrid_M: TcxGrid;
    cxGV_M: TcxGridDBTableView;
    FWorkItemNum_M: TcxGridDBColumn;
    FClientFullName_M: TcxGridDBColumn;
    FBranchFileNo_M: TcxGridDBColumn;
    FBranchItemNumber_M: TcxGridDBColumn;
    FMaterialDate_M: TcxGridDBColumn;
    FDeliveryPlace_M: TcxGridDBColumn;
    FJobPlace_M: TcxGridDBColumn;
    FAgentName_M: TcxGridDBColumn;
    FE05_M: TcxGridDBColumn;
    FWorkItemRemark_M: TcxGridDBColumn;
    FWorkData_M: TcxGridDBColumn;
    FAdvancePercent_M: TcxGridDBColumn;
    FJobSort_M: TcxGridDBColumn;
    cxGL_M: TcxGridLevel;
    MData_M: TdxMemData;
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
    StringField31: TStringField;
    IntegerField12: TIntegerField;
    StringField32: TStringField;
    StringField33: TStringField;
    DateTimeField2: TDateTimeField;
    StringField34: TStringField;
    StringField35: TStringField;
    StringField36: TStringField;
    StringField37: TStringField;
    StringField38: TStringField;
    StringField39: TStringField;
    StringField40: TStringField;
    IntegerField13: TIntegerField;
    IntegerField14: TIntegerField;
    StringField41: TStringField;
    DateField2: TDateField;
    CurrencyField5: TCurrencyField;
    CurrencyField6: TCurrencyField;
    FloatField7: TFloatField;
    FloatField8: TFloatField;
    FloatField9: TFloatField;
    StringField42: TStringField;
    FloatField10: TFloatField;
    FloatField11: TFloatField;
    IntegerField15: TIntegerField;
    IntegerField16: TIntegerField;
    FloatField12: TFloatField;
    DS_Mdata_M: TDataSource;
    FWorkItemDate_M: TcxGridDBColumn;
    FItemModel_M: TcxGridDBColumn;
    FItemQry_M: TcxGridDBColumn;
    FBidDate_M: TcxGridDBColumn;
    FDepartmentNum_M: TcxGridDBColumn;
    FStatusNotes_M: TcxGridDBColumn;
    FWorkStatus_M: TcxGridDBColumn;
    FWorkItemID_M: TcxGridDBColumn;
    FNumber1: TcxGridDBColumn;
    procedure FormResize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TB_EXITClick(Sender: TObject);
    procedure TB_DownClick(Sender: TObject);
    procedure MyTreeViewChange(Sender: TObject; Node: TTreeNode);
    procedure MyTreeViewExpanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure TB_RefClick(Sender: TObject);
    procedure TB_OutClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TB_PrinClick(Sender: TObject);
    procedure MyTreeView2Expanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure MyTreeView2Change(Sender: TObject; Node: TTreeNode);
    procedure TB_Ref2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TB_Down2Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure cxGV_MCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGV_MFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure cxGVBrowCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure cxGVCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
  private
    ListItemFNumber,P_th:String;
    P_i:boolean;

    { Private declarations }

  public
    P_state,P_Isleaf:integer;
    { Public declarations }
  end;

var
  Frm_BranchWorkItem: TFrm_BranchWorkItem;


implementation

uses FRMDATA, FrmWorkMain, COMMON, FrmSelect, ProgBar, PROGRASS;

{$R *.dfm}


procedure TFrm_BranchWorkItem.FormResize(Sender: TObject);
begin
  inherited;
  L_title.Caption:=UserFDepartmentName+'子公司生产任务单';
 // L_title.Width:=Panel_down.Width;
 // L_Caption.Width:=Panel2.Width;
  Self.Caption:=UserFDepartmentName+'子公司生产任务单';
end;

procedure TFrm_BranchWorkItem.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=cafree;
  Frm_BranchWorkItem:=nil;
end;

procedure TFrm_BranchWorkItem.TB_EXITClick(Sender: TObject);
begin
  inherited;
  self.Close;
end;

procedure TFrm_BranchWorkItem.TB_DownClick(Sender: TObject);
Var i:Integer;
begin
  If TB_Down.Caption='取消设置' then
  begin
    TB_Down.Caption:='设置';
    cxGV.OptionsData.Editing:=False;
    cxGv.OptionsView.GroupByBox:=False;
    for i:=0 to cxGv.ColumnCount-1 do
    begin
      cxGv.Columns[i].Options.Filtering:=False;
      cxGv.Columns[i].Options.Editing:=False;
      cxGv.Columns[i].Options.Sorting:=False;
    end;
  end
  else
  begin
    TB_Down.Caption:='取消设置';
    cxGV.OptionsData.Editing:=True;
    cxGv.OptionsView.GroupByBox:=True;
    for i:=0 to cxGv.ColumnCount-1 do
    begin
      cxGv.Columns[i].Options.Filtering:=True;
      cxGv.Columns[i].Options.Editing:=True;
      cxGv.Columns[i].Options.Sorting:=True;
    end;
  end;
end;

procedure TFrm_BranchWorkItem.MyTreeViewChange(Sender: TObject; Node: TTreeNode);
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
    P_Isleaf:=PTree(Node.Data).Isleaf;
    If MyItemList(qry,Mdata_M,'V_WorkItem','FAgentName+'';''+FDepartmentName+'';''+cast(FWorkYear as varchar(4))+'';''+substring(FWorkItemNum,5,2)+'';''+FWorkItemNum+'';''',ListItemFNumber,'FDepartmentName+'';''+FAgentName+'';''+cast(FWorkYear as varchar(4))+'';''+substring(FWorkItemNum,5,2)+'';''+FWorkItemNum+'';''') then
    begin
      mdata_M.Open;
    end;
    If P_Isleaf=1 then
    begin
      If MyItemList(qry,Mdata,'V_WorkList','FAgentName+'';''+FDepartmentName+'';''+cast(FWorkYear as varchar(4))+'';''+substring(FWorkItemNum,5,2)+'';''+FWorkItemNum+'';''',ListItemFNumber,'FDepartmentName+'';''+FAgentName+'';''+cast(FWorkYear as varchar(4))+'';''+substring(FWorkItemNum,5,2)+'';''+FWorkItemNum+'';''') then
      begin
        mdata.Open;
      end
      else
        mdata.Close;
    end;
  end;

end;

procedure TFrm_BranchWorkItem.MyTreeViewExpanding(Sender: TObject;
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
               +'Isleaf from VT_BranchWorkList where FParentNumber= '''
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

procedure TFrm_BranchWorkItem.TB_RefClick(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If not TreeVeiwListWhere(qry,MyTreeView,'VT_BranchWorkList',' and FAgentDepartmentID='+IntToStr(UserFAgentID) ) then
  begin
    Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;
end;

procedure TFrm_BranchWorkItem.TB_OutClick(Sender: TObject);
begin
  inherited;
  If PC_2.ActivePage=TS_Edit then
    ExportToExcel(cxGrid,True,True);
  If PC_2.ActivePage=TS_Brow then
    ExportToExcel(cxGridBrow,True,True);

end;

procedure TFrm_BranchWorkItem.FormCreate(Sender: TObject);
begin
  inherited;
{  TB_App.Enabled:= mdlData.CheckFrmRights(TFrm_BranchWorkItem.ClassName,'新增');
  TB_Edit.Enabled:= mdlData.CheckFrmRights(TFrm_BranchWorkItem.ClassName,'修改');
  TB_Del.Enabled:= mdlData.CheckFrmRights(TFrm_BranchWorkItem.ClassName,'删除');
  TB_ZF.Enabled:= mdlData.CheckFrmRights(TFrm_BranchWorkItem.ClassName,'删除');
  TB_Prin.Enabled:= mdlData.CheckFrmRights(TFrm_BranchWorkItem.ClassName,'打印');
}  TB_Out.Enabled:= mdlData.CheckFrmRights(TFrm_BranchWorkItem.ClassName,'导出');
  TB_Out2.Enabled:= mdlData.CheckFrmRights(TFrm_BranchWorkItem.ClassName,'查看');

end;

procedure TFrm_BranchWorkItem.TB_PrinClick(Sender: TObject);
var qry: TADOQuery;
begin
  inherited;
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.EnableBCD:=False;//小数位数>4
  try
    qry.SQL.Text:='select * from V_WorkList where FWorkItemID=:FWorkItemID order by FBrabchFFullNumber,FWorkListNum';
    qry.Parameters.FindParam('FWorkItemID').value:=mdata_M['FWorkItemID'];
    qry.Open;
  finally
     ;
  end;
  mdata.CopyFromDataSet(qry);
  mdata.Open;
  If Trim(mdata_M['FDepartmentNum'])='SGB' then
    FrReport.LoadFromFile(ExtractFileDir(Application.ExeName)+'\Report_DesignBOM_WorkItemA4.frf');
  If Trim(mdata_M['FDepartmentNum'])='LKCC' then
    FrReport.LoadFromFile(ExtractFileDir(Application.ExeName)+'\Report_DesignBOM_WorkItemA4.frf');
  If Trim(mdata_M['FDepartmentNum'])='LKDD' then
    FrReport.LoadFromFile(ExtractFileDir(Application.ExeName)+'\Report_DesignBOM_WorkItem_LkDD.frf');
  FrReport.ShowReport;

end;

procedure TFrm_BranchWorkItem.MyTreeView2Expanding(Sender: TObject;
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
               +'Isleaf from VT_BranchWorkList where FParentNumber= '''
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
    P.Isleaf := qry.FieldByName('Isleaf').Value;
    P.Flag := cNoLoadFlag;                            // 新节点，未加载标志
    with MyTreeView2.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('Isleaf').value;
    end;
    qry.Next;
  end;


end;

procedure TFrm_BranchWorkItem.MyTreeView2Change(Sender: TObject;
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
    ListItemFNumber2:=PTree(Node.Data).FNumber2;
    If MyItemList(qry,Mdata2,'V_WorkList',
                 'FAgentName+'';''+FDepartmentName+'';''+cast(FWorkYear as varchar(4))+'';''+substring(FWorkItemNum,5,2)+'';''+FWorkItemNum+'';''',
                  ListItemFNumber2,
                 'FDepartmentName+'';''+FAgentName+'';''+cast(FWorkYear as varchar(4))+'';''+substring(FWorkItemNum,5,2)+'';''+FWorkItemNum+'';''') then

    begin
      mdata2.Open;
    end;
  end;
end;

procedure TFrm_BranchWorkItem.TB_Ref2Click(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If not TreeVeiwListWhere(qry,MyTreeView2,'VT_BranchWorkList',' and FAgentDepartmentID='+IntToStr(UserFAgentID) ) then
  begin
    Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;
end;

procedure TFrm_BranchWorkItem.FormShow(Sender: TObject);
begin
  inherited;
  TB_Ref.Click;
  TB_Ref2.Click;
end;

procedure TFrm_BranchWorkItem.TB_Down2Click(Sender: TObject);
Var i:Integer;
begin
  If TB_Down2.Caption='取消设置' then
  begin
    TB_Down2.Caption:='设置';
    cxGVBrow.OptionsData.Editing:=False;
    cxGVBrow.OptionsView.GroupByBox:=False;
    for i:=0 to cxGVBrow.ColumnCount-1 do
    begin
      cxGVBrow.Columns[i].Options.Filtering:=False;
      cxGVBrow.Columns[i].Options.Editing:=False;
      cxGVBrow.Columns[i].Options.Sorting:=False;
    end;
  end
  else
  begin
    TB_Down2.Caption:='取消设置';
    cxGVBrow.OptionsData.Editing:=True;
    cxGVBrow.OptionsView.GroupByBox:=True;
    for i:=0 to cxGVBrow.ColumnCount-1 do
    begin
      cxGVBrow.Columns[i].Options.Filtering:=True;
      cxGVBrow.Columns[i].Options.Editing:=True;
      cxGVBrow.Columns[i].Options.Sorting:=True;
    end;
  end;

end;

procedure TFrm_BranchWorkItem.ToolButton2Click(Sender: TObject);
var
 qry,qry1:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry1:=TAdoQuery.Create(self);
  qry1.ConnectionString:=mdlData.ReadConnStr;
  If application.MessageBox(Pchar('警告：是否接收任务单号为：【'+ListItemFNumber+'】的单据？'+chr(13)+chr(13)
                                 +'接收后的数据不允许收回，确定要接收本任务吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
  begin
    try
      qry1.SQL.Text:='Select distinct FWorkItemID from V_WorkList where FDepartmentID=:FDepartmentID and FFullNumber like :FFullNumber';
      qry1.Parameters.FindParam('FDepartmentID').Value:=UserFDepartmentID;
      qry1.Parameters.FindParam('FFullNumber').Value:=ListItemFNumber+'%';
      qry1.Open;
    finally
       ;
    end;
    If  qry1.RecordCount<1 then
        Exit;
    try
      qry.SQL.Text:='Update T_WorkItem Set FWorkStatus=3,FWorkRxdID=:FWorkRxdID,FWorkRxdDate=:FWorkRxdDate where FWorkItemID=:FWorkItemID';
      qry1.First;
      while not qry1.eof do
      begin
        qry.Parameters.FindParam('FWorkRxdID').value:= UserNum;
        qry.Parameters.FindParam('FWorkRxdDate').value:= Date();
        qry.Parameters.FindParam('FWorkItemID').value:= qry1.FieldByName('FWorkItemID').value;
        qry.ExecSQL;
        qry1.Next;
      end;
    finally
       ;
    end;
    application.MessageBox('接收完毕！','系统提示',MB_ICONINFORMATION);
  end;

end;

procedure TFrm_BranchWorkItem.cxGV_MCellClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
{  If mData_M['FWorkItemID']<>0 then
  begin
    If MyItemList(qry,Mdata,'V_WorkList','cast(FWorkItemID as varchar(20))',
                  Mdata_M['FWorkItemID'],'FWorkItemNum') then

  end;
         }
end;

procedure TFrm_BranchWorkItem.cxGV_MFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
var qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If (mData_M['FWorkItemID']<>0) and (mData_M['FWorkItemID']<>Null) then
  begin
    If MyItemList(qry,Mdata,'V_WorkList','cast(FWorkItemID as varchar(20))',
                  Mdata_M['FWorkItemID'],'FWorkItemNum') then

  end;


end;

procedure TFrm_BranchWorkItem.cxGVBrowCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  if StrToFloat(AViewInfo.GridRecord.DisplayTexts[SumFBalanceQry_1.Index])>0 then    //设置行字体颜色
  begin
     ACanvas.Canvas.brush.Color := clInactiveCaptionText;
     ACanvas.Canvas.Font.Color:=clHotLight; //字体颜色
     ACanvas.FillRect(AViewInfo.Bounds);
  end;

end;

procedure TFrm_BranchWorkItem.cxGVCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  if StrToFloat(AViewInfo.GridRecord.DisplayTexts[SumFBalanceQry.Index])>0 then    //设置行字体颜色
  begin
     ACanvas.Canvas.brush.Color := clInactiveCaptionText;
     ACanvas.Canvas.Font.Color:=clHotLight; //字体颜色
     ACanvas.FillRect(AViewInfo.Bounds);
  end;

end;

end.
