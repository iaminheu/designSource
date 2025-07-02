unit Main_DepStockQry;

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
  cxCheckComboBox, RzEdit, RzLabel, cxSpinEdit,Comobj, RzStatus;

type
  TFrm_DepStockQry = class(TFrm_GridBass)
    ImageList: TImageList;
    frReport: TfrReport;
    frDBDataSet: TfrDBDataSet;
    PC_2: TRzPageControl;
    TS_StockIn: TRzTabSheet;
    Panel3: TPanel;
    MData3: TdxMemData;
    MData3th1: TStringField;
    MData3mc1: TStringField;
    MData3gg1: TStringField;
    MData3SelRemark_1: TStringField;
    MData3ssth1: TStringField;
    MData3FK3Number_1: TStringField;
    MData3FName1: TStringField;
    MData3FModel1: TStringField;
    MData3unitName1: TStringField;
    MData3js1: TStringField;
    MData3FSumQry1: TFloatField;
    MData3FQry1: TFloatField;
    MData3FSuttle1: TFloatField;
    MData3FNumber1: TStringField;
    MData3FParentNumber1: TStringField;
    MData3FFullNumber1: TStringField;
    DS_Mdata3: TDataSource;
    MData3Num: TStringField;
    MData3abc: TStringField;
    MData3FFStockInListRemark: TStringField;
    MData3FCode: TStringField;
    MData3FStockInListID: TIntegerField;
    MData3FInSumSuttle: TFloatField;
    MData3FInQry: TFloatField;
    MData3FInSumQry: TFloatField;
    RzSizePanel1: TRzSizePanel;
    MyTreeView3: TTreeView;
    Panel11: TPanel;
    Label3: TLabel;
    RzSizePanel6: TRzSizePanel;
    RzLabel9: TRzLabel;
    Image3: TImage;
    ToolBar5: TToolBar;
    TB_Ref3: TToolButton;
    TB_Execl: TToolButton;
    TB_Down3: TToolButton;
    TB_Prin: TToolButton;
    Label4: TLabel;
    TB_Exit3: TToolButton;
    RSP_StockIn: TRzPanel;
    RSP_List: TPageControl;
    TabSheet3: TTabSheet;
    RSP_Item: TRzSizePanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    MData_M3: TdxMemData;
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
    DS_Mdata_M3: TDataSource;
    TB_Stock: TToolButton;
    SaveDialog1: TSaveDialog;
    cxGrid_M3: TcxGrid;
    cxGV_M3: TcxGridDBTableView;
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
    cxGL_M3: TcxGridLevel;
    cxGrid3: TcxGrid;
    cxGV3: TcxGridDBTableView;
    Num_3: TcxGridDBColumn;
    xh_3: TcxGridDBColumn;
    th_3: TcxGridDBColumn;
    mcgg_3: TcxGridDBColumn;
    mc_3: TcxGridDBColumn;
    gg_3: TcxGridDBColumn;
    SelRemark_3: TcxGridDBColumn;
    dw_3: TcxGridDBColumn;
    FSumQry_3: TcxGridDBColumn;
    FCheckYesQry_3: TcxGridDBColumn;
    FSuttle_3: TcxGridDBColumn;
    FSumSuttle_3: TcxGridDBColumn;
    FStockListRemark_3: TcxGridDBColumn;
    FFullNumber_3: TcxGridDBColumn;
    ssFullNumber_3: TcxGridDBColumn;
    FK3Number_3: TcxGridDBColumn;
    FName_3: TcxGridDBColumn;
    FModel_3: TcxGridDBColumn;
    UnitName_3: TcxGridDBColumn;
    is_3: TcxGridDBColumn;
    FStockInListID_3: TcxGridDBColumn;
    FPartsNumber_3: TcxGridDBColumn;
    FPartsCode_3: TcxGridDBColumn;
    FWorkParts_3: TcxGridDBColumn;
    FK3ItemID_3: TcxGridDBColumn;
    cxGL3: TcxGridLevel;
    Panel1: TPanel;
    Bevel1: TBevel;
    stbBar: TRzStatusBar;
    RzClockStatus1: TRzClockStatus;
    RzKeyStatus1: TRzKeyStatus;
    RzKeyStatus2: TRzKeyStatus;
    RzKeyStatus3: TRzKeyStatus;
    stbMsg: TRzFieldStatus;
    procedure FormResize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FFullNumber(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure MyTreeView3Change(Sender: TObject; Node: TTreeNode);
    procedure frReportBeginBand(Band: TfrBand);
    procedure TB_Ref3Click(Sender: TObject);
    procedure TB_Down3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TB_ExeclClick(Sender: TObject);
    procedure TB_Exit3Click(Sender: TObject);
    procedure TB_PrinClick(Sender: TObject);
    procedure cxGV_M3FocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure MyTreeView3Expanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure TB_StockClick(Sender: TObject);

  private
   { Private declarations }


  public
    P_Isleaf,P_IsAudit,P_Status:integer;
    P_th1,P_th2,P_th3,P_th4,P_th5,P_Name,P_List:String;
    P_i:boolean;

    P_FProductID:integer;
   { Public declarations }
  end;

var
  Frm_DepStockQry: TFrm_DepStockQry;


implementation

uses FRMDATA,  COMMON, FrmSelect, ProgBar, PROGRASS;




{$R *.dfm}
procedure TFrm_DepStockQry.FormResize(Sender: TObject);
begin
  inherited;
  Self.Caption:=UserFDepartmentName+'入库清单查询';
end;

procedure TFrm_DepStockQry.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=cafree;
  Frm_DepStockQry:=nil;
end;

procedure TFrm_DepStockQry.FormCreate(Sender: TObject);
begin
  inherited;
  {TB_App3.Enabled:= mdlData.CheckFrmRights(TFrm_DepStockQry.ClassName,'新增');
  TB_Add3.Enabled:= mdlData.CheckFrmRights(TFrm_DepStockQry.ClassName,'新增');
  TB_Edit3.Enabled:= mdlData.CheckFrmRights(TFrm_DepStockQry.ClassName,'修改');
  TB_Auto.Enabled:= mdlData.CheckFrmRights(TFrm_DepStockQry.ClassName,'修改');

  TB_Del3.Enabled:= mdlData.CheckFrmRights(TFrm_DepStockQry.ClassName,'删除');
  TB_Prin.Enabled:= mdlData.CheckFrmRights(TFrm_DepStockQry.ClassName,'打印');
  TB_Audit.Enabled:= mdlData.CheckFrmRights(TFrm_DepStockQry.ClassName,'审核');
  TB_out.Enabled:= mdlData.CheckFrmRights(TFrm_DepStockQry.ClassName,'导出');
   }
end;

procedure TFrm_DepStockQry.FFullNumber(Sender: TObject;
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

  qry.SQL.Text:='Select * from VT_StockIn_Right where FParentNumber= '''
               +PTree(Node.Data).ID+''' and FAgentID='+IntToStr(UserFDepartmentID)+' order by FItemNumber';

  qry.open;

  PTree(Node.Data).Flag := cLoadFlag;                  // 设置已加载标志
  while not qry.Eof do
  begin
    New(P);
    P.ID := qry.FieldByName('FFullNumber').AsString;
    P.ParentID := qry.FieldByName('FParentNumber').AsString;
    P.FNumber:=qry.FieldByName('FNumber').AsString;
    P.Caption := qry.FieldByName('FName').AsString;
    P.Isleaf := qry.FieldByName('Isleaf').Value;
   //P.IsAudit := qry.FieldByName('IsAudit').Value;
    P.Flag := cNoLoadFlag;                            // 新节点，未加载标志
    with MyTreeView3.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('Isleaf').value;
    end;
    qry.Next;
  end;

end;

procedure TFrm_DepStockQry.MyTreeView3Change(Sender: TObject; Node: TTreeNode);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If Node = nil then Exit;
  with PTree(Node.Data)^ do
  begin
    ListItemFNumber:=trim(PTree(Node.Data).FNumber);
    P_Isleaf:=PTree(Node.Data).Isleaf;
    P_th:=PTree(Node.Data).Caption;
    P_Status:=PTree(Node.Data).Status;
    If PTree(Node.Data).Isleaf>=1 then
    begin
      If MyItemListwhere(qry,Mdata_M3,'V_StockItem','cast(FFactureID as nvarchar(20))+'';''+FFullNumber',ListItemFNumber,' and FFactureID='+IntToStr(P_Status),'FFullNumber',) then
      If MyItemListwhere(qry,Mdata3,'V_StockList','cast(FFactureID as nvarchar(20))+'';''+FFullNumber',ListItemFNumber,' and FFactureID='+IntToStr(P_Status),'FFullNumber',) then
    end
    else
    begin
      Mdata_M3.Close;
      mdata3.Close;
    end;
    If (P_Isleaf<3) and (mdata_M3.RecordCount>0) then
    begin
      TB_Prin.Visible:=mdlData.CheckFrmRights(TFrm_DepStockQry.ClassName,'打印');
      TB_Stock.Visible:=mdlData.CheckFrmRights(TFrm_DepStockQry.ClassName,'打印');
      TB_Execl.Visible:=mdlData.CheckFrmRights(TFrm_DepStockQry.ClassName,'导出');
    end
    else
    begin
      TB_Prin.Visible:=False;
      TB_Stock.Visible:=False;
      TB_Execl.Visible:=False;
    end;



   If (P_Isleaf=1) and (mdata_M3.RecordCount>0) then
      P_List :=mdata_M3['FFactureName']+'('+mdata_M3['FBranchItemNumber']+')('+mdata_M3['FClientshortName']+')';
   If (P_Isleaf=2) and (mdata_M3.RecordCount>0) then
      P_List :=mdata_M3['FFactureName']+'('+mdata_M3['FBranchItemNumber']+')('+mdata_M3['FPartsCode']+')('+mdata_M3['FPartsName']+')';
   If (P_Isleaf=3) and (mdata_M3.RecordCount>0) then
      P_List :=mdata_M3['FFactureName']+'('+mdata_M3['FBranchItemNumber']+')('+mdata_M3['FPartsName']+')('+mdata_M3['FWorkPartsNum']+')('+mdata_M3['FWorkParts']+')';
  

  end;

end;

procedure TFrm_DepStockQry.frReportBeginBand(Band: TfrBand);
begin
  inherited;
  if Band.Name='dtFooter' then
  begin
    If ((mdata3.RecordCount+1) mod 25)>0 then
      frReport.Dictionary.Variables['n']:=25-((mdata3.RecordCount+1) mod 25)
    else
      frReport.Dictionary.Variables['n']:=0;
  end;

end;

procedure TFrm_DepStockQry.TB_Ref3Click(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If UserFDepartmentsort=1 then //事业部
  begin
    If not TreeVeiwListWhere(qry,MyTreeView3,'VT_Stock_Dep',' and FDepartmentID='+IntToStr(UserFDepartmentID)) then
      Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;
  If UserFDepartmentsort=2 then   //子公司
  begin
    If not TreeVeiwListWhere(qry,MyTreeView3,'VT_Stock_Dep',' and (FFactureID='+IntToStr(UserFDepartmentID)+' or FDepartmentID='+IntToStr(UserFDepartmentID)+') ') then
    Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;

end;

procedure TFrm_DepStockQry.TB_Down3Click(Sender: TObject);
Var i:Integer;
begin
  If P_i then
  begin
    TB_Down3.Caption:='取消设置';
    cxGV3.OptionsData.Editing:=False;
    cxGv3.OptionsView.GroupByBox:=False;
    for i:=0 to cxGv3.ColumnCount-1 do
    begin
      cxGv3.Columns[i].Options.Filtering:=False;
      cxGv3.Columns[i].Options.Editing:=False;
      cxGv3.Columns[i].Options.Sorting:=False;
    end;
    P_i:=False;
  end
  else
  begin
    TB_Down3.Caption:='设置';
    cxGV3.OptionsData.Editing:=True;
    cxGv3.OptionsView.GroupByBox:=True;
    for i:=0 to cxGv3.ColumnCount-1 do
    begin
      cxGv3.Columns[i].Options.Filtering:=True;
      cxGv3.Columns[i].Options.Editing:=True;
      cxGv3.Columns[i].Options.Sorting:=True;
    end;
    P_i:=True;
  end;

end;

procedure TFrm_DepStockQry.FormShow(Sender: TObject);
begin
  inherited;
  TB_Ref3.Click;
end;

procedure TFrm_DepStockQry.TB_ExeclClick(Sender: TObject);
Var i:Integer;
begin
  inherited;
  for i:=0 to cxGv3.ColumnCount-1 do
  begin
    cxGv3.Columns[i].Visible:=False;
  end;

  Num_3.Visible:=True;
  th_3.Visible:=True;
  mcgg_3.Visible:=True;
  dw_3.Visible:=True;
  FSumQry_3.Visible:=True;
  FSuttle_3.Visible:=True;
  FSumSuttle_3.Visible:=True;
  FStockListRemark_3.Visible:=True;

  If mdata3.RecordCount>0 then
     ExportToExcel(cxGrid3,True,TRue)
  else
     Application.MessageBox(PChar('没有需要导出的数据！'), '错误', MB_OK +MB_ICONSTOP);
  for i:=0 to cxGv3.ColumnCount-1 do
  begin
    cxGv3.Columns[i].Visible:=True;
  end;

  dw_3.Visible:=False;
  mcgg_3.Visible:=False;

end;

procedure TFrm_DepStockQry.TB_Exit3Click(Sender: TObject);
begin
  inherited;
  Self.Close;
end;

procedure TFrm_DepStockQry.TB_PrinClick(Sender: TObject);
begin

 If mdata3.RecordCount>0 then
  begin
    mdata3.SortedField:='FFullNumber';
    FrReport.LoadFromFile(ExtractFileDir(Application.ExeName)+'\Report_DesignBOM_Stock.frf');
    FrReport.ShowReport;
  end
  else
    Application.MessageBox(PChar('没有需要打印的数据！'), '错误', MB_OK +MB_ICONSTOP);
  mdata3.SortedField:='';

end;

procedure TFrm_DepStockQry.cxGV_M3FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
var qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If (mData_M3['FStockItemID']<>0) and (mData_M3['FStockItemID']<>Null) then
  begin
    If MyItemListID(qry,Mdata3,'V_StockList',' FStockItemID='+IntToStr(Mdata_M3['FStockItemID']),'FFullNumber',) then
     P_List :=mdata_M3['FFactureName']+'('+mdata_M3['FWorkPartsNum']+')('+mdata_M3['FWorkParts']+')';

  end;

end;

procedure TFrm_DepStockQry.MyTreeView3Expanding(Sender: TObject;
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
    P.Status:= qry.FieldByName('FFactureID').Value;
    P.Flag := cNoLoadFlag;                            // 新节点，未加载标志
    with MyTreeView3.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('Isleaf').value;
    end;
    qry.Next;
  end;


end;

procedure TFrm_DepStockQry.TB_StockClick(Sender: TObject);
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
  if (Mdata3.Active) and (Mdata3.recordcount>0) then
  Begin
    SaveDialog1.FileName:='入库清单'+P_List;
    SaveDialog1.Filter:='.xls';
    SaveDialog1.Execute;

    if (Mdata3.FieldByName('FBranchItemNumber').AsString<>'') Or (Mdata3.FieldByName('FPartsNumber').AsString<>Null) then
        savefilepath:=SaveDialog1.FileName+'.xls';

    if FileExists(savefilepath) then
    begin
      DeleteFile(savefilepath) ;
    end;
    stbMsg.Caption:='提示信息：正在导出入库清单:'+'【'+Mdata3.FieldByName('FPartsNumber').AsString+'】';
    stbBar.Refresh;

    ExcelApp:= CreateOleObject('Excel.Application' );
    ExcelApp.DisplayAlerts:=False;                  //不显示提示框
    MyWorkBook:=ExcelApp.WorkBooks.Open( filepath );   //打开模版
    //ExcelApp.Visible:=True;

    try
      qry.SQL.Text:='Select distinct FPartsName,FPartsCode from V_StockList where FFactureID=:FFactureID and cast(FFactureID as nvarchar(20))+'';''+FFullNumber like :FFullNumber order by FPartsCode';
      qry.Parameters.FindParam('FFactureID').value:= P_Status;
      qry.Parameters.FindParam('FFullNumber').value:= ListItemFNumber+'%';
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
       qry1.SQL.Text:='select * from  V_StockList where  FFactureID=:FFactureID and cast(FFactureID as nvarchar(20))+'';''+FFullNumber like :FFullNumber and FPartsName=:FPartsName and FPartsCode=:FPartsCode order by FFullNumber';
       qry1.Parameters.FindParam('FFactureID').value:= P_Status;
       qry1.Parameters.FindParam('FFullNumber').value:= ListItemFNumber+'%';
       qry1.Parameters.FindParam('FPartsName').value:= qry.FieldByName('FPartsName').Value;
       qry1.Parameters.FindParam('FPartsCode').value:= qry.FieldByName('FPartsCode').Value;
       qry1.Open;
     finally
       ;
     end;
     if qry1.RecordCount>0 then
     begin
       mdata3.Close;
       mdata3.CopyFromDataSet(qry1);
     end;
     vLastSheet:=MyWorkBook.Sheets[MyWorkBook.Sheets.Count];
     MyWorkBook.Sheets[1].Copy(EmptyParam,vLastSheet);
     MyWorkBook.WorkSheets[k].Name:=IntToStr(k)+Mdata3['FPartsCode']+Mdata3['FPartsName'];
     MyWorkBook.WorkSheets[k].Activate;

      //标题
     MyWorkBook.WorkSheets[k].Cells[3,3].Value := Mdata3.FieldByName('FPartsNumber').AsString; //档 案 号
     MyWorkBook.WorkSheets[k].Cells[3,5].Value := Mdata3.FieldByName('FClientFullName').AsString+'  '+Mdata3.FieldByName('FItemModel').AsString; //项目名称

     //MyWorkBook.WorkSheets[k].Cells[1,1].Value:=AnsiReplaceStr(MyWorkBook.WorkSheets[k].Cells[1,1].Value,'A',UserFDepartmentName); //公司名称

       //循环行开始
      i:=6;

       //工作薄名称
      MyWorkBook.WorkSheets[k].Name:=Mdata3.FieldByName('FPartsCode').AsString+Mdata3.FieldByName('FPartsName').AsString;
      copystart:='A'+IntToStr(i);
      if Mdata3.recordcount>0 then
      Begin
        if Mdata3.recordcount>1 then
        Begin
          copystart:='A'+IntToStr(i);
          copystart1:='A'+IntToStr(i+1);
          copyend:='L'+IntToStr(i);  //区域
          ReNum:=Mdata3.recordcount-1+(25-((mdata3.RecordCount+1) mod 25));;
          L:=Mdata3.recordcount-1+(25-((mdata3.RecordCount+1) mod 25));;
          while ReNum>0 do
          Begin
            ExcelApp.ActiveSheet.Range[copystart+':'+copyend].Copy;
            ExcelApp.ActiveSheet.Rows[i+1].Insert;
            ExcelApp.ActiveSheet.Range[copystart1].PasteSpecial;
            Renum:=Renum-1;
          end;
          //合计制单、审核栏
         MyWorkBook.WorkSheets[k].Cells[i+L+1,8].Value := '=SUMIF(A6:A'+IntToStr(i-1)+',"★★"'+',H6:H'+IntToStr(i-1)+')'; //净重合计

         // MyWorkBook.WorkSheets[k].Cells[i+L+1,3].Value:=Mdata3.FieldByName('FStockAudit').AsString; //校对
         // MyWorkBook.WorkSheets[k].Cells[i+L+1,9].Value:=Mdata3.FieldByName('FStockSubmit').AsString; //制单
        end
        else
        Begin
          R_Count:=Mdata3.recordcount;
        end;
        Mdata3.first;
        while not Mdata3.eof do
        Begin
           MyWorkBook.WorkSheets[k].Cells[i,1].Value := Mdata3.FieldByName('Num').AsString; //部件名称 +规格
          if  Mdata3.FieldByName('Num').AsString='★★' then  //黑体字
          begin
            rs:='A'+IntToStr(i)+':L'+IntToStr(i);
            MyWorkBook.worksheets[k].range[rs].font.bold:=True;
          end;
          MyWorkBook.WorkSheets[k].Cells[i,2].Value := Mdata3.FieldByName('th').AsString; //部件名称 +规格
          MyWorkBook.WorkSheets[k].Cells[i,4].Value := Mdata3.FieldByName('mc').AsString+Mdata3.FieldByName('SelRemark').AsString+' '+Mdata3.FieldByName('gg').AsString; //单位
          if  Mdata3.FieldByName('Num').AsString='★★' then
          begin
            MyWorkBook.WorkSheets[k].Cells[i,6].Value := ''; //单价
            MyWorkBook.WorkSheets[k].Cells[i,7].Value := ''; //净重
          end
          else
          begin
            MyWorkBook.WorkSheets[k].Cells[i,6].Value := Mdata3.FieldByName('FSumQry').AsString; //单价
            MyWorkBook.WorkSheets[k].Cells[i,7].Value := Mdata3.FieldByName('FSuttle').AsString; //净重
          end;
          MyWorkBook.WorkSheets[k].Cells[i,8].Value := Mdata3.FieldByName('FSumSuttle').AsString; //交货期
          MyWorkBook.WorkSheets[k].Cells[i,12].Value := Mdata3.FieldByName('FStockListRemark').AsString; //备注
          Mdata3.next;
          i:=i+1;
        End;
      end;
  //    MyWorkBook.WorkSheets[k].Cells[i+1,8].Value := '=SUMIF(A6:A'+IntToStr(i-1)+',"★★"'+',H6:H'+IntToStr(i-1)+')'; //净重合计

      qry.Next ;
      ExcelApp.Visible:=True;
      MyWorkBook.WorkSheets[k].PrintPreview;  //打印
      k:=k+1;

    end;
    MyWorkBook.WorkSheets[1].delete; //删除模版
    stbMsg.Caption:='提示信息：入库清单:'+'【'+Mdata3.FieldByName('FPartsName').AsString+'】的信息导出完成!';
    stbBar.Refresh;
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

end.
