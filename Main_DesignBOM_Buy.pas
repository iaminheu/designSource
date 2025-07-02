unit Main_DesignBOM_Buy;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FrmGridBass, ExtCtrls, StdCtrls, DsFancyButton, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  dxmdaset, cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid,
  cxTextEdit, cxDropDownEdit, cxCalendar, cxMaskEdit, cxContainer, cxLabel,
  cxDBLookupComboBox, ADODB, cxButtonEdit, Grids, DBGrids, ComCtrls,
  cxCurrencyEdit, cxCheckBox, cxLookAndFeelPainters, ActnList, FR_DSet,
  FR_DBSet, FR_Class, ImgList, cxButtons, RzPanel, RzRadGrp, RzSplit,
  RzTabs, jpeg, Comobj,RzShellDialogs,  ToolWin, cxRadioGroup, Buttons, StrUtils,
  cxGroupBox,  IniFiles,  cxMemo, RzStatus;

type
    TFrm_DesignBOM_Buy = class(TFrm_GridBass)
    MData_DBOM: TdxMemData;
    DS_Mdata_DBOM: TDataSource;
    ImageList: TImageList;
    frReport: TfrReport;
    frDBDataSet: TfrDBDataSet;
    MData_DBOMcpth: TStringField;
    MData_DBOMcpmc: TStringField;
    MData_DBOMcpxh: TStringField;
    MData_DBOMdah: TStringField;
    MData_DBOMjsdj: TStringField;
    MData_DBOMdjrq: TStringField;
    MData_DBOMlkdh: TStringField;
    MData_DBOMpqgy: TStringField;
    MData_DBOMclf: TStringField;
    MData_DBOMgz: TStringField;
    MData_DBOMglf: TStringField;
    MData_DBOMclfje: TStringField;
    MData_DBOMgzje: TStringField;
    MData_DBOMglfje: TStringField;
    MData_DBOMbz: TStringField;
    MData_DBOMjssl: TStringField;
    MData_DBOMjsje: TStringField;
    MData_DBOMyfmc: TStringField;
    PC_1: TRzPageControl;
    TS_DesignBOM: TRzTabSheet;
    ToolBar1: TToolBar;
    TB_Ref: TToolButton;
    ToolButton5: TToolButton;
    TB_update: TToolButton;
    TB_PartsSort: TToolButton;
    TB_Out: TToolButton;
    TB_Down: TToolButton;
    TB_PRIN: TToolButton;
    ToolButton1: TToolButton;
    RzSizePanel3: TRzSizePanel;
    MyTreeView_DBOM: TTreeView;
    DS_Mdata2: TDataSource;
    MData2: TdxMemData;
    TB_EXIT: TToolButton;
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
    Panel3: TPanel;
    PC_DBOM: TRzPageControl;
    TS_DBOM: TRzTabSheet;
    TS_DBOM_Sum: TRzTabSheet;
    cxGrid_DBOM: TcxGrid;
    cxGV_DBOM: TcxGridDBTableView;
    FCode: TcxGridDBColumn;
    th: TcxGridDBColumn;
    mc: TcxGridDBColumn;
    FModel: TcxGridDBColumn;
    FParts: TcxGridDBColumn;
    FSumQry: TcxGridDBColumn;
    FSuttle: TcxGridDBColumn;
    gg: TcxGridDBColumn;
    ssth: TcxGridDBColumn;
    FQry: TcxGridDBColumn;
    FManageParts: TcxGridDBColumn;
    FWorkParts: TcxGridDBColumn;
    FPartsSort: TcxGridDBColumn;
    FSumSuttle: TcxGridDBColumn;
    y_FSuttle: TcxGridDBColumn;
    c_FSuttle: TcxGridDBColumn;
    FMaterialRate: TcxGridDBColumn;
    FNumber: TcxGridDBColumn;
    FName: TcxGridDBColumn;
    UnitName: TcxGridDBColumn;
    y_FNumber: TcxGridDBColumn;
    y_FModel: TcxGridDBColumn;
    FPriceQry: TcxGridDBColumn;
    FUse: TcxGridDBColumn;
    FRation: TcxGridDBColumn;
    y_FRation: TcxGridDBColumn;
    FFullNumber: TcxGridDBColumn;
    ssFullNumber: TcxGridDBColumn;
    Remark: TcxGridDBColumn;
    FFullName: TcxGridDBColumn;
    cxGL_DBOM: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGV1: TcxGridDBTableView;
    FCode_1: TcxGridDBColumn;
    th_1: TcxGridDBColumn;
    mc_1: TcxGridDBColumn;
    FModel_1: TcxGridDBColumn;
    FParts_1: TcxGridDBColumn;
    FSumQry_1: TcxGridDBColumn;
    FSuttle_1: TcxGridDBColumn;
    gg_1: TcxGridDBColumn;
    ssth_1: TcxGridDBColumn;
    FQry_1: TcxGridDBColumn;
    FManageParts_1: TcxGridDBColumn;
    FWorkParts_1: TcxGridDBColumn;
    FPartsSort_1: TcxGridDBColumn;
    FSumSuttle_1: TcxGridDBColumn;
    y_FSuttle_1: TcxGridDBColumn;
    c_FSuttle_1: TcxGridDBColumn;
    FMaterialRate_1: TcxGridDBColumn;
    FNumber_1: TcxGridDBColumn;
    FName_1: TcxGridDBColumn;
    UnitName_1: TcxGridDBColumn;
    y_FNumber_1: TcxGridDBColumn;
    y_FModel_1: TcxGridDBColumn;
    FPriceQry_1: TcxGridDBColumn;
    FUse_1: TcxGridDBColumn;
    FRation_1: TcxGridDBColumn;
    y_FRation_1: TcxGridDBColumn;
    FFullNumber_1: TcxGridDBColumn;
    ssFullNumber_1: TcxGridDBColumn;
    Remark_1: TcxGridDBColumn;
    FFullName_1: TcxGridDBColumn;
    cxGL1: TcxGridLevel;
    DS_Mdata1: TDataSource;
    MData1: TdxMemData;
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
    actionList: TActionList;
    ActApp: TAction;
    ActParts: TAction;
    ActEdit: TAction;
    ActDel: TAction;
    ActOut: TAction;
    Act_Audit: TAction;
    Actcldy: TAction;
    ActSave: TAction;
    ActPartsSort: TAction;
    ActWeigth: TAction;
    ActWorkBOM: TAction;
    TB_Edit: TToolButton;
    ActDelWorkBom: TAction;
    ActFullName: TAction;
    TS_Take: TRzTabSheet;
    RzSizePanel2: TRzSizePanel;
    MyTreeView_SCenario: TTreeView;
    ActTake: TAction;
    ActDelTake: TAction;
    Act_Check: TAction;
    Act_PushDown: TAction;
    Act_Status: TAction;
    Act_Submit: TAction;
    Act_TakeEdit: TAction;
    FPartsCode: TcxGridDBColumn;
    ToolButton3: TToolButton;
    Panel6: TPanel;
    TS_Item: TPageControl;
    TabSheet3: TTabSheet;
    cxGrid_M2: TcxGrid;
    cxGV_M2: TcxGridDBTableView;
    FProductID: TcxGridDBColumn;
    FProductName: TcxGridDBColumn;
    FDepartMentID: TcxGridDBColumn;
    FDepartMentName: TcxGridDBColumn;
    FScenarioNum: TcxGridDBColumn;
    FNum: TcxGridDBColumn;
    FMaterialItemID: TcxGridDBColumn;
    FMaterialNumber: TcxGridDBColumn;
    FMaterialModel: TcxGridDBColumn;
    FMaterialRate_2: TcxGridDBColumn;
    FItemID_2: TcxGridDBColumn;
    FNumber_2: TcxGridDBColumn;
    FName_: TcxGridDBColumn;
    FModel_2: TcxGridDBColumn;
    FNotLike: TcxGridDBColumn;
    FLike: TcxGridDBColumn;
    FRemark: TcxGridDBColumn;
    cxGL_M2: TcxGridLevel;
    Panel5: TPanel;
    ToolBar3: TToolBar;
    TB_Ref3: TToolButton;
    TB_Out3: TToolButton;
    TB_Down3: TToolButton;
    TB_Prin3: TToolButton;
    TB_Exit3: TToolButton;
    FItemNumber: TcxGridDBColumn;
    SaveDialog1: TSaveDialog;
    TB_Audit: TToolButton;
    ActAudit: TAction;
    stbBar: TRzStatusBar;
    RzClockStatus1: TRzClockStatus;
    RzKeyStatus1: TRzKeyStatus;
    RzKeyStatus2: TRzKeyStatus;
    RzKeyStatus3: TRzKeyStatus;
    stbMsg: TRzFieldStatus;
    FMakeParts: TcxGridDBColumn;
    Panel4: TPanel;
    Bevel1: TBevel;
    CB_Print: TcxCheckBox;
    CB_Parts: TcxComboBox;
    CB_Sum: TcxComboBox;
    RzRG_1: TRzRadioGroup;
    RzRG_2: TRzRadioGroup;
    Panel1: TPanel;
    ToolBar2: TToolBar;
    TB_cldy: TToolButton;
    TB_Parts: TToolButton;
    TB_Down1: TToolButton;
    ToolButton7: TToolButton;
    TB_Out1: TToolButton;
    Act_Buy: TAction;
    Act_Switch: TAction;
    TB_Buy: TToolButton;
    FPartsNumber: TcxGridDBColumn;
    Act_PC_DBOM: TAction;
    procedure FormResize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TB_EXIT1Click(Sender: TObject);
    procedure MyTreeView_DBOMChange(Sender: TObject; Node: TTreeNode);
    procedure FormCreate(Sender: TObject);
    procedure TB_RefClick(Sender: TObject);
    procedure TB_updateClick(Sender: TObject);
    procedure CB_bjlbPropertiesChange(Sender: TObject);
    procedure cxGrid_DBOMExit(Sender: TObject);
    procedure MData_DBOMAfterEdit(DataSet: TDataSet);
    procedure TB_5Click(Sender: TObject);
    procedure MyTreeView_DBOMExpanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure TB_EXITClick(Sender: TObject);
    procedure PartsSort;
    procedure frReportGetValue(const ParName: String;
      var ParValue: Variant);
    procedure ActPartsSortExecute(Sender: TObject);
    procedure ActOutExecute(Sender: TObject);
    procedure ActEditExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FPartsSortPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure TB_Ref3Click(Sender: TObject);
    procedure MyTreeView_SCenarioExpanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure MyTreeView_SCenarioChange(Sender: TObject; Node: TTreeNode);
    procedure TB_Prin3Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure ActAuditExecute(Sender: TObject);
    procedure TB_PartsClick(Sender: TObject);
    procedure TB_cldyClick(Sender: TObject);
    procedure TB_Down1Click(Sender: TObject);
    procedure TB_Out1Click(Sender: TObject);
    procedure Act_SwitchExecute(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure Act_PC_DBOMExecute(Sender: TObject);


  private

    ListItemFParentNumber,ListItemFNumber1,ListItemFNumber2,ListItemFNumber3,ListItemFNumber4,ListItemFNumber5:String;
    P_i:boolean;

    qry: TADOQuery;
    P_FItemListId:string;
    P_MaxNum,P_Isleaf,P_Status:Integer;
    P_FProductID:string;

    { Private declarations }



 //   Procedure MyItemList(Sender: TObject);

  public
  P_Parts,P_Sort,P_Type: string;
    { Public declarations }
  end;

var
  Frm_DesignBOM_Buy: TFrm_DesignBOM_Buy;
  title,title1,title2,title3,bz,P_List:string;

implementation

uses FRMDATA, COMMON, FrmSelect, ProgBar, PROGRASS;

{$R *.dfm}


procedure TFrm_DesignBOM_Buy.PartsSort;
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

procedure TFrm_DesignBOM_Buy.FormResize(Sender: TObject);
begin
  inherited;
  L_title.Caption:='采购BOM操作';
  Self.Caption:='采购BOM操作';
end;

procedure TFrm_DesignBOM_Buy.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=cafree;
  Frm_DesignBOM_Buy:=nil;
end;

procedure TFrm_DesignBOM_Buy.TB_EXIT1Click(Sender: TObject);
begin
  inherited;
  self.Close;
end;

procedure TFrm_DesignBOM_Buy.MyTreeView_DBOMChange(Sender: TObject; Node: TTreeNode);
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
       Act_PC_DBOM.Execute;
  end;

  mdata_DBOM.EnableControls;
  cxGV_DBOM.DataController.DataModeController.GridMode:=False;
  cxGV_DBOM.DataController.DataModeController.SmartRefresh:=False;

end;

procedure TFrm_DesignBOM_Buy.FormCreate(Sender: TObject);
begin
  inherited;
  P_Parts:='FWorkParts';
  P_Sort:='生产部件类别';

  TB_Edit.Enabled:= mdlData.PermissionCheckRights(TFrm_DesignBOM_Buy.ClassName,'修改');
  TB_Audit.Enabled:= mdlData.PermissionCheckRights(TFrm_DesignBOM_Buy.ClassName,'审核');
  TB_PartsSort.Enabled:= mdlData.PermissionCheckRights(TFrm_DesignBOM_Buy.ClassName,'修改');

  //入库清单

  TB_Out.Enabled:= mdlData.PermissionCheckRights(TFrm_DesignBOM_Buy.ClassName,'导出');

end;

procedure TFrm_DesignBOM_Buy.TB_RefClick(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If UserFDepartmentsort=1 then    //事业部
  begin
    If not TreeVeiwListUserID(qry,MyTreeView_DBOM,'VT_DesignBOM',UserFDepartmentID) then
      Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;
  If UserFDepartmentsort=2 then      //子公司
  begin
    //If not TreeVeiwList(qry,MyTreeView,'VT_DesignBOM', ) then
    If not TreeVeiwListWhere(qry,MyTreeView_DBOM,'VT_DesignBOM_Right_Dep',' and FAgentID='+IntToStr(UserFDepartmentID) ) then
    Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;

end;

procedure TFrm_DesignBOM_Buy.TB_updateClick(Sender: TObject);
var
  IsEdit:bool;
  qry: TADOQuery;
  I_index:integer;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  I_index:=mData_DBOM.RecNo ;
  mData_DBOM.Edit;
  mData_DBOM.Post;
  If ShowMsg('是否对已修改部件类别进行批量更新？更新后不可恢复！','提示') then
  begin
    with mData_DBOM do
    begin
      mData_DBOM.DisableControls;
      First;
      try
        qry.SQL.Text:='Update T_DesignBOM_Structure set FPartsSort=:FPartsSort where FFullNumber=:FFullNumber';
        while not mData_DBOM.EoF do
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
        //Messagedlg('数据更新失败！',mtInformation,[mbok],0);
      end;
    end;
    mData_DBOM.EnableControls;
  end;

  If not MyItemList(qry,mData_DBOM,'V_DesignBOM_Structure','FFullNumber',ListFNumber_DBOM,'FFullNumber') then
  begin
    mData_DBOM.Open;
   end;

 // Self.P_select;
  TB_update.Visible:=False;
  If (I_index<mData_DBOM.RecordCount) and (I_index<>-1) then
     mData_DBOM.RecNo :=I_index
  else
     mData_DBOM.Last;

end;

procedure TFrm_DesignBOM_Buy.CB_bjlbPropertiesChange(Sender: TObject);
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
  If CB_Parts.Text='生产部件类别' then
    P_Parts:='FWorkParts';
  If CB_Parts.Text='二级图号' then
    P_Parts:='FPartsNumber';

end;

procedure TFrm_DesignBOM_Buy.cxGrid_DBOMExit(Sender: TObject);
begin
  inherited;
  If TB_update.Visible then
  If messagedlg('数据已修改是否更新？',mtInformation,[mbyes,mbno],0)=mryes then
    TB_update.Click;

end;

procedure TFrm_DesignBOM_Buy.MData_DBOMAfterEdit(DataSet: TDataSet);
begin
  inherited;
  DataSet['IsEdit']:=True;
  TB_update.Visible:=True;

end;

procedure TFrm_DesignBOM_Buy.TB_5Click(Sender: TObject);
var
  proc:TADOStoredProc;
  s1,s2:Ttime;
  a:string;

begin
  proc:=TADOStoredProc.Create(self);
  proc.ConnectionString:=mdlData.ReadConnStr;
  proc.CommandTimeout:=500;
  ShowPrograss('正在汇总定额数据，请稍候……',self);
  s1:=now();
  a:='';

  try
    proc.ProcedureName:='P_Switch;1';
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=50;
      name := '@FScenarioNum';
      value:=CB_Sum.Text;
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftInteger;
      Direction := pdinput;
      name := '@FProductID';
      //value:=1;
      value:=mData_DBOM['FProductID'];
    end;
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
      name := '@type';
      value:=P_Type;
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
    s2:=now();
    Messagedlg('【'+a+'】部件汇总完毕！所用时间：【'+(TimeToStr(s1-s2))+'】',mtInformation,[mbok],0);
    //cxGV1.DataController.DataSource.DataSet:=Proc;
    mdata1.CopyFromDataSet(proc);
    cxGvColumn(cxGv_DBOM,Mdata1);
    mdata1.First;
  finally
     ;
  end;


  If CB_Print.Checked=True then
  begin
    bz:='备注：其他件指外购件(不含紧固件)、阴极线、电磁锤振打器。';
   // title:='材料消耗工艺定额汇总报表('+CB_sum.Text+')';
    title:='材料消耗工艺定额汇总报表';
    frDBDataSet.DataSource:=ds_mdata1;
    frReport.LoadFromFile(ExtractFileDir(Application.ExeName)+'\Report_DesignBOM_Scenario.frf');
    frReport.ShowReport;
  end;


 { Title1:='统计图号：【'+mdata['FItemNumber']+'】'+'/【'+mdata['FPartsNumber']+'】';
  Title2:='用户名称：【'+mdata['FClientShortName']+'】';
  Title:='本体定额材料物资采购汇总表';
  FrReport.LoadFromFile(ExtractFileDir(Application.ExeName)+'\Report_DesignBOM_PartsSum.frf');
  FrReport.ShowReport;  }
  Proc.Free;

end;

procedure TFrm_DesignBOM_Buy.MyTreeView_DBOMExpanding(Sender: TObject;
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
    P.Isleaf := qry.FieldByName('Isleaf').Value;
    P.Flag := cNoLoadFlag;                            // 新节点，未加载标志
    with MyTreeView_DBOM.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('Isleaf').value;
    end;
    qry.Next;
  end;

end;

procedure TFrm_DesignBOM_Buy.TB_EXITClick(Sender: TObject);
begin
  inherited;
  self.Close;
end;

procedure TFrm_DesignBOM_Buy.frReportGetValue(const ParName: String;
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
    ParValue:=Trim(CB_Parts.Text);
  If ParName='bz' then
    ParValue:=bz;


end;

procedure TFrm_DesignBOM_Buy.ActPartsSortExecute(Sender: TObject);
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
  I_index:=mdata2.RecNo ;
  s1:=now();

  If ShowMsg('是否对【'+P_th+'】此图号进行部件类别自动划分?','提示') then
  begin
    try
     // ShowPrograss('正在对设计BOM进行部件划分，请稍候……',self);
      //a:='【'+mdata['FItemNumber']+'】'+'/【'+mdata['FPartsNumber']+'】';


      ShowPrograss('正在对'+P_th+'设计BOM进行部件划分，请稍候……',self);
      Self.PartsSort;
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

procedure TFrm_DesignBOM_Buy.ActOutExecute(Sender: TObject);
begin
  inherited;
  If PC_DBOM.ActivePage=TS_DBOM then
     ExportToExcel(cxGrid_DBOM,True,TRue);
  If PC_DBOM.ActivePage=TS_DBOM_Sum then
     ExportToExcel(cxGrid1,True,TRue);

end;

procedure TFrm_DesignBOM_Buy.ActEditExecute(Sender: TObject);
begin
  inherited;
  cxGV_DBOM.OptionsData.Editing:=True;
  FPartsSort.Options.Editing:=True;
  TB_Edit.Enabled:=False;
end;

procedure TFrm_DesignBOM_Buy.FormShow(Sender: TObject);
begin
  inherited;
  TB_Ref.Click;
  TB_Ref3.Click;

end;

procedure TFrm_DesignBOM_Buy.FPartsSortPropertiesButtonClick(Sender: TObject;
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

procedure TFrm_DesignBOM_Buy.TB_Ref3Click(Sender: TObject);

var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If not TreeVeiwListUserID(qry,MyTreeView_SCenario,'VT_SCenario',UserFDepartmentID) then
  begin
    Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;

end;

procedure TFrm_DesignBOM_Buy.MyTreeView_SCenarioExpanding(Sender: TObject;
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

  qry.SQL.Text:='Select * from [VT_SCenario] where FParentNumber= '''
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
    with MyTreeView_SCenario.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('Isleaf').value;
    end;
    qry.Next;
  end;

end;

procedure TFrm_DesignBOM_Buy.MyTreeView_SCenarioChange(Sender: TObject;
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
    P_th2:=PTree(Node.Data).Caption;
    P_Isleaf:=PTree(Node.Data).Isleaf;


    If PTree(Node.Data).Isleaf>=1 then
    begin
      If MyItemList(qry,Mdata2,'V_SCenario','FDepartmentName+'';''+FProductName+'';''+FSCenarioNum+'';''',
                   ListItemFNumber2,'FDepartmentName,FProductName,FSCenarioNum,FNum') then
    end
    else
    begin
      mdata2.Close;
    end;
  end;
end;

procedure TFrm_DesignBOM_Buy.TB_Prin3Click(Sender: TObject);
begin
  inherited;
  Mdata2.SortedField:='FTakeNumber';
  frDBDataSet.DataSet:=Mdata2;
  FrReport.LoadFromFile(ExtractFileDir(Application.ExeName)+'\Report_DesignBOM_Take.frf');
  FrReport.ShowReport;

end;

procedure TFrm_DesignBOM_Buy.ToolButton3Click(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  ShowPrograss('正在更新数据，请稍候……',self);
  try
    qry.SQL.Text:='select * from V_DesignBOM_Structure where cast(FSortStatus as nvarchar(10))+'';''+FFullNumber like :FFullNumber order by FFullNumber ';
    qry.Parameters.FindParam('FFullNumber').value:=ListItemFNumber1+'%';
    qry.Open;
  finally
    ;
  end;
  mdata_DBOM.CopyFromDataSet(qry);
  mdata_DBOM.Open;
  mdata_DBOM.First;

end;

procedure TFrm_DesignBOM_Buy.ActAuditExecute(Sender: TObject);
var
 qry,qry1:TADOquery;
 P_ItemID,P_ItemListID:Integer;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry1:=TAdoQuery.Create(self);
  qry1.ConnectionString:=mdlData.ReadConnStr;

  try
    qry1.SQL.Text:='select * from T_ItemList where FFullNumber like :FFullNumber';
    qry1.Parameters.FindParam('FFullNumber').value:=ListFNumber_DBOM+'%';
    qry1.open;
  finally
    ;
  end;
  If qry1.RecordCount>0 then
  begin
    P_ItemID:= qry1.FieldByName('FItemID').AsInteger;
    P_ItemListID:=qry1.FieldByName('FItemListID').AsInteger;
  end;

  If (TB_Audit.Caption='审核')  then
  begin
    If application.MessageBox(Pchar('警告：是否审核【'+P_th+'】的部件划分类别？'+chr(13)+chr(13)
                                   +'确定要审核本部件吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      If qry1.RecordCount=1 then
      begin
        try
          qry.SQL.Text:='Update T_ItemList Set FSortStatus=3 where FItemListID=:FItemListID';
          qry.Parameters.FindParam('FItemListID').value:=P_ItemListID;
          qry.ExecSQL;
        finally
           ;
        end;
      end
      else
      begin
        try
          qry.SQL.Text:='Update T_ItemList Set FSortStatus=3 where FItemID=:FItemID';
          qry.Parameters.FindParam('FItemID').value:=P_ItemID;
          qry.ExecSQL;
        finally
           ;
        end;
      end;
      TB_Audit.Caption:='反审核';
      application.MessageBox('审核完毕！','系统提示',MB_ICONINFORMATION);
    end;
    Exit;
  end;
  If (TB_Audit.Caption='反审核')  then
  begin
    If application.MessageBox(Pchar('警告：是否反审核【'+P_th+'】的部件划分类别？'+chr(13)+chr(13)
                                   +'确定要反审核本部件吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      If qry1.RecordCount=1 then
      begin
        try
          qry.SQL.Text:='Update T_ItemList Set FSortStatus=0  where FItemListID=:FItemListID';
          qry.Parameters.FindParam('FItemListID').value:= P_ItemListID;
          qry.ExecSQL;
        finally
           ;
        end;
      end
      else
      begin
        try
          qry.SQL.Text:='Update T_ItemList Set FSortStatus=0  where FItemID=:FItemID';
          qry.Parameters.FindParam('FItemID').value:= P_ItemID;
          qry.ExecSQL;
        finally
           ;
        end;
      end;
      TB_Audit.Caption:='审核';
      application.MessageBox('反审核完毕！','系统提示',MB_ICONINFORMATION);
    end;
    Exit;
  end;


end;

procedure TFrm_DesignBOM_Buy.TB_PartsClick(Sender: TObject);
var
  proc:TADOStoredProc;
  bz,a:String;
begin
  proc:=TADOStoredProc.Create(self);
  proc.ConnectionString:=mdlData.ReadConnStr;
  proc.CommandTimeout:=500;
  If RzRG_1.ItemIndex=0 then
     P_Sort:='部件汇总';
  If RzRG_1.ItemIndex=1 then
     P_Sort:='材料汇总';
  If RzRG_1.ItemIndex=2 then
     P_Sort:='台套汇总';
 If mdata_DBOM.RecordCount=0 then
   Exit;
  ShowPrograss('正在汇总'+P_th+'定额数据，请稍候……',self);
  stbMsg.Caption:='正在导入'+P_th+'设计定额，请稍候...  ...';
  stbBar.Refresh;

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
    mdata1.CopyFromDataSet(proc);
    cxGvColumn(cxGv1,Mdata1);
  finally
     ;
  end;


  If CB_Print.Checked=True then
  begin
    If RzRG_1.ItemIndex=0 then
    begin
      Title:='材料消耗工艺定额汇总报表';
      title1:='统计图号：'+P_th;

      bz:='备注：其他件指外购件(不含紧固件)、阴极线、电磁锤振打器。';
      frDBDataSet.DataSource:=ds_mdata1;
      FrReport.LoadFromFile(ExtractFileDir(Application.ExeName)+'\Report_DesignBOM_PartsSortSum.frf');
   end;
   If RzRG_1.ItemIndex=1 then
    begin
      Title:='本体定额材料物资采购汇总表';
      title1:='统计图号：'+P_th;

      frDBDataSet.DataSource:=ds_mdata1;
      FrReport.LoadFromFile(ExtractFileDir(Application.ExeName)+'\Report_DesignBOM_PartsSum.frf');
    end;
    If RzRG_1.ItemIndex=2 then
    begin
      Title:='本体定额台套材料消耗汇总表';
      title1:='统计图号：'+P_th;

      frDBDataSet.DataSource:=ds_mdata1;
      FrReport.LoadFromFile(ExtractFileDir(Application.ExeName)+'\Report_DesignBOM_PartsSum.frf');
    end;
    FrReport.ShowReport;
 end;
 Proc.Free;

end;

procedure TFrm_DesignBOM_Buy.TB_cldyClick(Sender: TObject);
var
  proc:TADOStoredProc;
  s1,s2:Ttime;
  a,b:string;

begin
  proc:=TADOStoredProc.Create(self);
  proc.ConnectionString:=mdlData.ReadConnStr;
  proc.CommandTimeout:=500;
  If RzRG_2.ItemIndex=0 then
     P_Type:='材料汇总';
  If RzRG_2.ItemIndex=1 then
     P_Type:='部件汇总';
  If RzRG_2.ItemIndex=2 then
     P_Type:='明细清单';
 If mdata_DBOM.RecordCount=0 then
   Exit;

  ShowPrograss('正在汇总'+P_th+'定额数据，请稍候……',self);
  stbMsg.Caption:='正在汇总'+P_th+'定额数据，请稍候...  ...';
  stbBar.Refresh;

  s1:=now();

  try
    proc.ProcedureName:='P_Switch;1';
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=50;
      name := '@FScenarioNum';
      value:=CB_Sum.Text;
    end;
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
      name := '@type';
      value:=P_Type;
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
    mdata1.CopyFromDataSet(proc);
    cxGvColumn(cxGv1,Mdata1);
    mdata1.First;
  finally
     ;
  end;
    s2:=now();
    b:=FormatDateTime('hh:mm:ss',s2-s1);
   // Messagedlg(''+a+'部件汇总完毕！所用时间：【'+b+'】',mtInformation,[mbok],0);
   // stbMsg.Caption:='汇总【'+mdata['FItemNumber']+'】【'+mdata['FPartsNumber']+'】完毕！所用时间：【'+b+'】'+';';
    stbMsg.Caption:='汇总'+P_th+'完毕！所用时间：【'+b+'】'+';';

    stbBar.Refresh;

  If CB_Print.Checked=True then
  begin
    If P_Type='材料汇总' then
    begin
      title:='本体定额部件材料代用汇总表('+CB_sum.Text+')';
      title1:='统计图号：'+P_th;
      frDBDataSet.DataSource:=ds_mdata1;
      frReport.LoadFromFile(ExtractFileDir(Application.ExeName)+'\Report_DesignBOM_PartsRation.frf');
    end;
    If P_Type='部件汇总' then
    begin
      bz:='备注：其他件指外购件(不含紧固件)、阴极线、电磁锤振打器。';
      title:='材料消耗工艺定额汇总报表('+CB_sum.Text+')';
      title1:='统计图号：'+P_th;
      frDBDataSet.DataSource:=ds_mdata1;
      frReport.LoadFromFile(ExtractFileDir(Application.ExeName)+'\Report_DesignBOM_Scenario.frf');
    end;
   frReport.ShowReport;

  end;
  Proc.Free;

end;

procedure TFrm_DesignBOM_Buy.TB_Down1Click(Sender: TObject);
Var i:Integer;
begin
  If P_i then
  begin
    TB_Down1.Caption:='取消设置';
    cxGV1.OptionsData.Editing:=False;
    cxGv1.OptionsView.GroupByBox:=False;
    for i:=0 to cxGv1.ColumnCount-1 do
    begin
      cxGv1.Columns[i].Options.Filtering:=False;
      cxGv1.Columns[i].Options.Editing:=False;
      cxGv1.Columns[i].Options.Sorting:=False;
    end;
    Panel_down.Visible:=False;
    P_i:=False;
  end
  else
  begin
    TB_Down1.Caption:='设置';
    cxGV1.OptionsData.Editing:=True;
    cxGv1.OptionsView.GroupByBox:=True;

    for i:=0 to cxGv1.ColumnCount-1 do
    begin
      cxGv1.Columns[i].Options.Filtering:=True;
      cxGv1.Columns[i].Options.Editing:=True;
      cxGv1.Columns[i].Options.Sorting:=True;
    end;
    Panel_down.Visible:=True;
    P_i:=True;
  end;
end;

procedure TFrm_DesignBOM_Buy.TB_Out1Click(Sender: TObject);
begin
  inherited;
  If PC_DBOM.ActivePage=TS_DBOM_Sum then
     ExportToExcel(cxGrid1,True,TRue);

end;

procedure TFrm_DesignBOM_Buy.Act_SwitchExecute(Sender: TObject);
var
  proc:TADOStoredProc;
  s1,s2:Ttime;
  a,b:string;

begin
  proc:=TADOStoredProc.Create(self);
  proc.ConnectionString:=mdlData.ReadConnStr;
  proc.CommandTimeout:=500;
  try
    proc.ProcedureName:='P_Switch;1';
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=50;
      name := '@FScenarioNum';
      value:=CB_Sum.Text;
    end;
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
      name := '@type';
      value:=P_Type;
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
    mdata1.CopyFromDataSet(proc);
    cxGvColumn(cxGv1,Mdata1);
    mdata1.First;
  finally
     ;
  end;
end;

procedure TFrm_DesignBOM_Buy.ToolButton2Click(Sender: TObject);
var
  s1,s2:Ttime;
  a,b:string;
  Query_Sp:TADOStoredProc;
  i,k,s,ReNum,ReNumLoop,R_Count,L:Integer;
  ExcelApp,MyWorkBook,mysheet,vLastSheet: Variant;
  filepath,savefilepath,Sqlstr,copystart,copyend,copystart1,aa:string;
  ListQry:Tadoquery;
  qry,qry1:TADOquery;
begin
  inherited;
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry1:=TAdoQuery.Create(self);
  qry1.ConnectionString:=mdlData.ReadConnStr;

  If mdata_DBOM.RecordCount=0 then
     Exit;
  P_Type:='材料汇总';
  P_Parts:='FWorkParts';
  ShowPrograss('正在汇总'+P_th+'定额数据，请稍候……',self);
  stbMsg.Caption:='正在汇总'+P_th+'定额数据，请稍候...  ...';
  stbBar.Refresh;

  s1:=now();
  Act_Switch.Execute;
  s2:=now();
  b:=FormatDateTime('hh:mm:ss',s2-s1);
  stbMsg.Caption:='汇总'+P_th+'完毕！所用时间：【'+b+'】'+';';
  stbBar.Refresh;

  P_List:=mdata1['FItemNumber'];
  filepath:=Extractfilepath(application.ExeName)+'采购清单模版.xls';
  if (mdata1.Active) and (mdata1.recordcount>0) then
  Begin
    SaveDialog1.FileName:='采购清单'+P_List;
    SaveDialog1.Filter:='.xls';
    SaveDialog1.Execute;

    if (mdata1.FieldByName('FItemNumber').AsString<>'') Or (mdata1.FieldByName('FItemNumber').AsString<>Null) then
        savefilepath:=SaveDialog1.FileName+'.xls';

    if FileExists(savefilepath) then
    begin
      DeleteFile(savefilepath) ;
    end;
    stbMsg.Caption:='提示信息：正在导出生采购清单:'+'【'+mdata1.FieldByName('FItemNumber').AsString+'】';
    stbBar.Refresh;

    ExcelApp:= CreateOleObject('Excel.Application' );
    ExcelApp.DisplayAlerts:=False;                  //不显示提示框
    MyWorkBook:=ExcelApp.WorkBooks.Open( filepath );   //打开模版
    //ExcelApp.Visible:=True;
    k:=2;
    vLastSheet:=MyWorkBook.Sheets[MyWorkBook.Sheets.Count];
    MyWorkBook.Sheets[1].Copy(EmptyParam,vLastSheet);
    MyWorkBook.WorkSheets[k].Name:=IntToStr(k)+mdata1['FItemNumber'];
    MyWorkBook.WorkSheets[k].Activate;

      //标题
    MyWorkBook.WorkSheets[k].Cells[1,1].Value:=AnsiReplaceStr(MyWorkBook.WorkSheets[k].Cells[1,1].Value,'A',UserFDepartmentName); //公司名称

    MyWorkBook.WorkSheets[k].Cells[2,2].Value := Trim(mdata1.FieldByName('FItemNumber').AsString); //图号
    MyWorkBook.WorkSheets[k].Cells[2,5].Value := Trim(mdata1.FieldByName('FClientFullName').AsString); //项目名称


      //循环行开始
    i:=4;

       //工作薄名称
    MyWorkBook.WorkSheets[k].Name:=mdata1.FieldByName('FItemNumber').AsString;
    copystart:='A'+IntToStr(i);
    if mdata1.recordcount>0 then
    Begin
      if mdata1.recordcount>1 then
      Begin
        copystart:='A'+IntToStr(i);
        copystart1:='A'+IntToStr(i+1);
        copyend:='K'+IntToStr(i);  //区域
        ReNum:=mdata1.recordcount-1;
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
        R_Count:=mdata1.recordcount;
      end;
      mdata1.first;
      while not mdata1.eof do
      Begin
        MyWorkBook.WorkSheets[k].Cells[i,1].Value := mdata1.FieldByName('FParts').AsString; //汇总部件
        MyWorkBook.WorkSheets[k].Cells[i,2].Value := mdata1.FieldByName('FNumber').AsString;
        MyWorkBook.WorkSheets[k].Cells[i,3].Value := mdata1.FieldByName('FName').AsString;
        MyWorkBook.WorkSheets[k].Cells[i,4].Value := mdata1.FieldByName('FModel').AsString;
        MyWorkBook.WorkSheets[k].Cells[i,5].Value := mdata1.FieldByName('y_FNumber').AsString;
        MyWorkBook.WorkSheets[k].Cells[i,6].Value := mdata1.FieldByName('y_FModel').AsString;
        MyWorkBook.WorkSheets[k].Cells[i,7].Value := mdata1.FieldByName('UnitName').AsString;
        MyWorkBook.WorkSheets[k].Cells[i,8].Value := mdata1.FieldByName('FPriceQry').AsString;
        MyWorkBook.WorkSheets[k].Cells[i,9].Value := mdata1.FieldByName('FSuttle').AsString;
        MyWorkBook.WorkSheets[k].Cells[i,10].Value := mdata1.FieldByName('y_FSuttle').AsString;
        MyWorkBook.WorkSheets[k].Cells[i,11].Value := mdata1.FieldByName('c_FSuttle').AsString;
        mdata1.next;
        i:=i+1;
      End;
      ExcelApp.Visible:=True;
      MyWorkBook.WorkSheets[k].PrintPreview;  //打印
      k:=k+1;
    end;
    MyWorkBook.WorkSheets[1].delete; //删除模版
    stbMsg.Caption:='提示信息：采购清单:'+'【'+mdata1.FieldByName('FItemNumber').AsString+'】的信息导出完成!';
    stbBar.Refresh;
    MyWorkBook.saveas(savefilepath);
    MyWorkBook.Close;
    ExcelApp.Quit;
    ExcelApp:=Unassigned;
  end;
end;

procedure TFrm_DesignBOM_Buy.Act_PC_DBOMExecute(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
 // If PC_DBOM.ActivePage=TS_DBOM_Sum then
 //    Act_DBOM_Switch.Execute;
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
        If MyItemListFieldWhere(qry,Mdata_DBOM,'FCode,th,mc,gg,FQry,FSuttle,FSumSuttle,FFullNumber ','V_DesignBOM_Structure','ListFNumber_DBOM',ListFNumber_DBOM,' and js<=2 ','FFullNumber') then
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

end.
