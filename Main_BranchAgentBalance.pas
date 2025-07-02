unit Main_BranchAgentBalance;

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
  cxGridBandedTableView, cxGridDBBandedTableView;

type
  TFrm_BranchAgentBalance = class(TFrm_GridBass)
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
    TS_Qry: TRzTabSheet;
    Panel2: TPanel;
    RzSizePanel2: TRzSizePanel;
    MyTreeView2: TTreeView;
    Panel4: TPanel;
    MData2FWeight: TFloatField;
    MData1: TdxMemData;
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
    MData1FWorkListNum: TIntegerField;
    MData1FEstimateQry: TFloatField;
    MData1FEstimateAmount: TFloatField;
    MData1FLength: TIntegerField;
    MData1FQry: TFloatField;
    MData1FSingleWeight: TFloatField;
    MData1FItemNumber: TStringField;
    MData1FAdvanceAmount: TFloatField;
    MData1FBalanceRemark: TStringField;
    MData1FQualityAmount: TFloatField;
    MData1FWeight: TFloatField;
    MData1FBalanceWeight: TFloatField;
    MData1FBalancePiece: TFloatField;
    MData1FSollWeight: TFloatField;
    MData2FBalanceAmount: TFloatField;
    MData2FWorkListID: TIntegerField;
    MData1FWorkListID: TFloatField;
    MData1FBalanceAmount: TCurrencyField;
    MData1FBalanceQry: TBCDField;
    MData2FOutPrice: TBCDField;
    MData1FOutPrice: TBCDField;
    MData2FPrice: TBCDField;
    MData1FPrice: TBCDField;
    MData1FBalancePrice: TFloatField;
    MData1FBalanceBasePrice: TFloatField;
    MData1FBranchItemNumber: TStringField;
    MData1FBalanceListNum: TAutoIncField;
    MData2FBalanceBasePrice: TFloatField;
    MData2FBalancePrice: TFloatField;
    MData1FBalanceAdjust: TFloatField;
    Panel14: TPanel;
    Panel16: TPanel;
    Image4: TImage;
    Label25: TLabel;
    ToolBar1: TToolBar;
    TB_Ref2: TToolButton;
    TB_Out2: TToolButton;
    TB_Down2: TToolButton;
    TB_Prin2: TToolButton;
    TB_Exit2: TToolButton;
    cxButtonEdit1: TcxButtonEdit;
    cxGrid2: TcxGrid;
    cxGV2: TcxGridDBTableView;
    FBalanceNum2: TcxGridDBColumn;
    FBalanceListNum2: TcxGridDBColumn;
    FBalanceName2: TcxGridDBColumn;
    FBalanceModel2: TcxGridDBColumn;
    FUnitName2: TcxGridDBColumn;
    FMaterialDate2: TcxGridDBColumn;
    FSollWeight2: TcxGridDBColumn;
    FLength2: TcxGridDBColumn;
    FQry2: TcxGridDBColumn;
    FEstimateQry2: TcxGridDBColumn;
    FEstimateAmount2: TcxGridDBColumn;
    FBalancePrice2: TcxGridDBColumn;
    FBalanceQry2: TcxGridDBColumn;
    FBalanceAmount2: TcxGridDBColumn;
    FQualityAmount2: TcxGridDBColumn;
    FRealAmount2: TcxGridDBColumn;
    FBalanceRemark2: TcxGridDBColumn;
    FBranchItemNumber2: TcxGridDBColumn;
    FBalanceYear2: TcxGridDBColumn;
    FBalanceMonth2: TcxGridDBColumn;
    FBalanceDay2: TcxGridDBColumn;
    FWorkItemNum2: TcxGridDBColumn;
    FWorkListID2: TcxGridDBColumn;
    FWorkData2: TcxGridDBColumn;
    FAgentName2: TcxGridDBColumn;
    FClientshortName2: TcxGridDBColumn;
    FBranchFileNo2: TcxGridDBColumn;
    FBalancePriceID2: TcxGridDBColumn;
    FProductClass2: TcxGridDBColumn;
    FProductSort2: TcxGridDBColumn;
    FJobSort2: TcxGridDBColumn;
    FNumber2: TcxGridDBColumn;
    FPartsCode2: TcxGridDBColumn;
    cxGL2: TcxGridLevel;
    Panel15: TPanel;
    Bevel4: TBevel;
    Panel3: TPanel;
    Panel10: TPanel;
    Image2: TImage;
    Label22: TLabel;
    ToolBar3: TToolBar;
    TB_Ref: TToolButton;
    TB_Out: TToolButton;
    TB_Down: TToolButton;
    TB_Prin: TToolButton;
    TB_Exit1: TToolButton;
    E_FAgentID1: TcxButtonEdit;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    cxGrid_M: TcxGrid;
    cxGV_M: TcxGridDBTableView;
    FBalanceStatus_M: TcxGridDBColumn;
    FStatusNotes_M: TcxGridDBColumn;
    FDepartmentNum_M: TcxGridDBColumn;
    FBalanceNum_M: TcxGridDBColumn;
    FBalanceDate_M: TcxGridDBColumn;
    FClientFullName_M: TcxGridDBColumn;
    FItemModel_M: TcxGridDBColumn;
    FItemQry_M: TcxGridDBColumn;
    FBranchItemNumber_M: TcxGridDBColumn;
    FBranchFileNo_M: TcxGridDBColumn;
    FAgentName_M: TcxGridDBColumn;
    FBalanceID_M: TcxGridDBColumn;
    cxGL_M: TcxGridLevel;
    PageControl2: TPageControl;
    TabSheet3: TTabSheet;
    TBar_Sel: TToolBar;
    cxGrid1: TcxGrid;
    cxGV1: TcxGridDBTableView;
    FBalanceListNum: TcxGridDBColumn;
    FBalanceName: TcxGridDBColumn;
    FBalanceModel: TcxGridDBColumn;
    FUnitName: TcxGridDBColumn;
    FMaterialDate: TcxGridDBColumn;
    FSollWeight: TcxGridDBColumn;
    FLength: TcxGridDBColumn;
    FQry: TcxGridDBColumn;
    FEstimateQry: TcxGridDBColumn;
    FEstimateAmount: TcxGridDBColumn;
    FBalancePrice: TcxGridDBColumn;
    FBalanceQry: TcxGridDBColumn;
    FBalanceAmount: TcxGridDBColumn;
    FQualityAmount: TcxGridDBColumn;
    FRealAmount: TcxGridDBColumn;
    FBalanceRemark: TcxGridDBColumn;
    FBranchItemNumber: TcxGridDBColumn;
    FBalanceYear: TcxGridDBColumn;
    FBalanceMonth: TcxGridDBColumn;
    FBalanceDay: TcxGridDBColumn;
    FBalanceNum: TcxGridDBColumn;
    FWorkItemNum: TcxGridDBColumn;
    FWorkListID: TcxGridDBColumn;
    FWorkData: TcxGridDBColumn;
    FAgentName: TcxGridDBColumn;
    FClientShortName: TcxGridDBColumn;
    FBranchFileNo: TcxGridDBColumn;
    FBalancePriceID: TcxGridDBColumn;
    FProductClass: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    FPartsCode_1: TcxGridDBColumn;
    cxGL1: TcxGridLevel;
    MData_M: TdxMemData;
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
    IntegerField9: TIntegerField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    IntegerField10: TIntegerField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    StringField31: TStringField;
    FloatField5: TFloatField;
    StringField32: TStringField;
    FloatField6: TFloatField;
    FloatField7: TFloatField;
    FloatField8: TFloatField;
    FloatField9: TFloatField;
    FloatField10: TFloatField;
    FloatField11: TFloatField;
    CurrencyField3: TCurrencyField;
    BCDField1: TBCDField;
    BCDField2: TBCDField;
    BCDField3: TBCDField;
    FloatField12: TFloatField;
    FloatField13: TFloatField;
    StringField33: TStringField;
    AutoIncField1: TAutoIncField;
    FloatField14: TFloatField;
    DS_Mdata_M: TDataSource;
    procedure FormResize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure MyTreeView1Change(Sender: TObject; Node: TTreeNode);
    procedure MyTreeView1Expanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure TB_RefClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TB_PrinClick(Sender: TObject);
    procedure frReportBeginBand(Band: TfrBand);
    procedure frReportGetValue(const ParName: String;
      var ParValue: Variant);
    procedure ToolButton8Click(Sender: TObject);
    procedure WorkBOMSelPropertiesChange(Sender: TObject);
    procedure TB_DownClick(Sender: TObject);
    procedure TB_OutClick(Sender: TObject);
    procedure TB_Exit1Click(Sender: TObject);
    procedure MyTreeView2Expanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure MyTreeView2Change(Sender: TObject; Node: TTreeNode);
    procedure TB_Ref2Click(Sender: TObject);
    procedure TB_Down2Click(Sender: TObject);
    procedure TB_Out2Click(Sender: TObject);
    procedure TB_Prin2Click(Sender: TObject);
    procedure cxGV_MFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
  private

    { Private declarations }

  public
    P_i:boolean;
    P_Isleaf,P_IsAudit:Integer;

    { Public declarations }
  end;

var
  Frm_BranchAgentBalance: TFrm_BranchAgentBalance;


implementation

uses FRMDATA,{ FRMMAIN,} COMMON, FrmSelect, ProgBar, PROGRASS;

{$R *.dfm}
procedure TFrm_BranchAgentBalance.FormResize(Sender: TObject);
begin
  inherited;
  L_title.Caption:=UserFDepartmentName+'子公司外协加工结算';
  Self.Caption:=UserFDepartmentName+'子公司外协加工结算';
end;

procedure TFrm_BranchAgentBalance.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=cafree;
  Frm_BranchAgentBalance:=nil;
end;

procedure TFrm_BranchAgentBalance.MyTreeView1Change(Sender: TObject; Node: TTreeNode);
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
    P_Isleaf:=PTree(Node.Data).Isleaf;
    try
      qry.SQL.Text:='select distinct FBalanceNum,FBalanceDate,FBalanceID,FAgentName,FBalanceStatusNotes,FDepartmentNum,FDepartmentName '
                   +' from V_BalanceList '
                   +'where FAgentName+'';''+FDepartmentName+'';''+cast(FBalanceYear as varchar(4))+'';''+cast(FBalanceMonth as varchar(2))+'';''+FBalanceNum +'';''  like :FNumber '
                   +'order by FBalanceNum ';
      qry.Parameters.FindParam('FNumber').value:=ListItemFNumber1+'%';
      qry.Open;
    finally
       ;
    end;
    mdata_M.CopyFromDataSet(qry);
    mdata_M.Open;

    If P_Isleaf=1 then
    begin
      If MyItemList(qry,Mdata1,'V_BalanceList','FAgentName+'';''+FDepartmentName+'';''+cast(FBalanceYear as varchar(4))+'';''+cast(FBalanceMonth as varchar(2))+'';''+FBalanceNum +'';''',
         ListItemFNumber1,'FAgentName+'';''+FDepartmentName+'';''+cast(FBalanceYear as varchar(4))+'';''+cast(FBalanceMonth as varchar(2))+'';''+FBalanceNum +'';''') then
      begin
        mdata1.Open;
      end
      else
        mdata1.Close;
    end;
  end;
end;

procedure TFrm_BranchAgentBalance.MyTreeView1Expanding(Sender: TObject;
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
               +'Isleaf from VT_BranchBalanceList where FParentNumber= '''
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
    P.Isleaf := qry.FieldByName('Isleaf').Value;
    P.Flag := cNoLoadFlag;                            // 新节点，未加载标志
    with MyTreeView1.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('Isleaf').value;
    end;
    qry.Next;
  end;


end;

procedure TFrm_BranchAgentBalance.TB_RefClick(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

//  If not TreeVeiwListWhere(qry,MyTreeView1,'VT_BranchBalanceList',' and (FAgentId=0 or FAgentId='+IntToStr(UserFAgentID)+')') then
  If not TreeVeiwListWhere(qry,MyTreeView1,'VT_BranchBalanceList',' and FAgentDepartmentID='+IntToStr(UserFAgentID) ) then
  begin
    Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;

end;

procedure TFrm_BranchAgentBalance.FormCreate(Sender: TObject);
begin
  inherited;
  TB_Prin.Enabled:= mdlData.PermissionCheckRights(TFrm_BranchAgentBalance.ClassName,'打印');
  TB_Out.Enabled:= mdlData.PermissionCheckRights(TFrm_BranchAgentBalance.ClassName,'导出');
end;

procedure TFrm_BranchAgentBalance.FormShow(Sender: TObject);
begin
  TB_Ref.Click;
  TB_Ref2.Click;
end;

procedure TFrm_BranchAgentBalance.TB_PrinClick(Sender: TObject);
begin
  inherited;
 // FBalanceListNum.Options.Sorting:=True;
  FrReport.LoadFromFile(ExtractFileDir(Application.ExeName)+'\Report_DesignBOM_BalanceItem.frf');
  FrReport.ShowReport;

end;

procedure TFrm_BranchAgentBalance.frReportBeginBand(Band: TfrBand);
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

procedure TFrm_BranchAgentBalance.frReportGetValue(const ParName: String;
  var ParValue: Variant);
begin
  inherited;
  If ParName='UserName' then
    ParValue:=UserName;

end;

procedure TFrm_BranchAgentBalance.ToolButton8Click(Sender: TObject);
var  i: integer;
begin
  inherited;
  cxGV2.OptionsData.Editing:=True;

  for i:=0 to cxGv2.ColumnCount-1 do
  begin
    cxGv2.Columns[i].Options.Filtering:=True;
    cxGv2.Columns[i].Options.Editing:=True;
    cxGv2.Columns[i].Options.Sorting:=True;
  end;

end;

procedure TFrm_BranchAgentBalance.WorkBOMSelPropertiesChange(Sender: TObject);
begin
  inherited;
  mdata2.Edit;
  mdata2.Post;
end;

procedure TFrm_BranchAgentBalance.TB_DownClick(Sender: TObject);
Var i:Integer;
begin
  If TB_Down.Caption='取消设置' then
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

procedure TFrm_BranchAgentBalance.TB_OutClick(Sender: TObject);
begin
  inherited;
  ExportToExcel(cxGrid1,True,TRue);
end;

procedure TFrm_BranchAgentBalance.TB_Exit1Click(Sender: TObject);
begin
  inherited;
  self.Close;
end;

procedure TFrm_BranchAgentBalance.MyTreeView2Expanding(Sender: TObject;
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
               +'Isleaf from VT_BranchBalanceList where FParentNumber= '''
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

procedure TFrm_BranchAgentBalance.MyTreeView2Change(Sender: TObject;
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
    P_Isleaf:=PTree(Node.Data).Isleaf;
   // If not MyItemList(qry,Mdata2,'V_BalanceList','FFullAgentNumber',ListItemFNumber2,'FFullAgentNumber,FBalanceListNum') then
    If not MyItemList(qry,Mdata2,
                      'V_BalanceList',
                      'FAgentName+'';''+FDepartmentName+'';''+cast(FBalanceYear as varchar(4))+'';''+cast(FBalanceMonth as varchar(2))+'';''+FBalanceNum +'';''',
                      ListItemFNumber2,
                      'FAgentName+'';''+FDepartmentName+'';''+cast(FBalanceYear as varchar(4))+'';''+cast(FBalanceMonth as varchar(2))+'';''+FBalanceNum +'';''') then

    begin
      mdata2.Open;
    end;
  end;

 end;

procedure TFrm_BranchAgentBalance.TB_Ref2Click(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  If not TreeVeiwListWhere(qry,MyTreeView2,'VT_BranchBalanceList',' and FAgentDepartmentID='+IntToStr(UserFAgentID) ) then
  begin
    Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;

end;

procedure TFrm_BranchAgentBalance.TB_Down2Click(Sender: TObject);
Var i:Integer;
begin
  If TB_Down2.Caption='取消设置' then
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

procedure TFrm_BranchAgentBalance.TB_Out2Click(Sender: TObject);
begin
  inherited;
  ExportToExcel(cxGrid2,True,TRue);

end;

procedure TFrm_BranchAgentBalance.TB_Prin2Click(Sender: TObject);
begin
  inherited;
  FrReport.LoadFromFile(ExtractFileDir(Application.ExeName)+'\Report_DesignBOM_BalanceItem.frf');
  FrReport.ShowReport;
end;

procedure TFrm_BranchAgentBalance.cxGV_MFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
var qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If (mData_M['FBalanceID']<>0) and (mData_M['FBalanceID']<>Null) then
  begin
    If MyItemList(qry,Mdata1,'V_BalanceList','cast(FBalanceID as varchar(20))',
                  Mdata_M['FBalanceID'],'FBalanceNum') then

  end;

end;

end.
