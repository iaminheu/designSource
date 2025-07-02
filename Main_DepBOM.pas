unit Main_DepBOM;

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
  RzStatus, ActnList;

type
  TFrm_DepBOM = class(TFrm_GridBass)
    ImageList: TImageList;
    frReport: TfrReport;
    frDBDataSet: TfrDBDataSet;
    PC_2: TRzPageControl;
    TS_WorkBOM: TRzTabSheet;
    PanelBkGnd: TPanel;
    Panel2: TPanel;
    MData1: TdxMemData;
    MData1th1: TStringField;
    MData1mc1: TStringField;
    MData1gg1: TStringField;
    MData1SelRemark_1: TStringField;
    MData1ssth1: TStringField;
    MData1FK3Number_1: TStringField;
    MData1FName1: TStringField;
    MData1FModel1: TStringField;
    MData1unitName1: TStringField;
    MData1js1: TStringField;
    MData1FSumQry1: TFloatField;
    MData1FQry1: TFloatField;
    MData1FSuttle1: TFloatField;
    MData1FNumber1: TStringField;
    MData1FParentNumber1: TStringField;
    MData1FFullNumber1: TStringField;
    DS_Mdata1: TDataSource;
    MData1Num: TStringField;
    MData1abc: TStringField;
    MData1FFStockInListRemark: TStringField;
    MData1FCode: TStringField;
    MData1FStockInListID: TIntegerField;
    MData1FInSumSuttle: TFloatField;
    MData1FInQry: TFloatField;
    MData1FInSumQry: TFloatField;
    TS_DesignBOM: TRzTabSheet;
    DS_Mdata2: TDataSource;
    MData2: TdxMemData;
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
    cxGrid2: TcxGrid;
    cxGV2: TcxGridDBTableView;
    FCode: TcxGridDBColumn;
    th: TcxGridDBColumn;
    mc: TcxGridDBColumn;
    gg: TcxGridDBColumn;
    ssth: TcxGridDBColumn;
    Sel: TcxGridDBColumn;
    IsSel: TcxGridDBColumn;
    FQry: TcxGridDBColumn;
    FSuttle: TcxGridDBColumn;
    FSumQry: TcxGridDBColumn;
    FSumSuttle: TcxGridDBColumn;
    FK3Number: TcxGridDBColumn;
    FName: TcxGridDBColumn;
    FModel: TcxGridDBColumn;
    UnitName: TcxGridDBColumn;
    FFullNumber: TcxGridDBColumn;
    ssFullNumber: TcxGridDBColumn;
    Remark: TcxGridDBColumn;
    js: TcxGridDBColumn;
    FMakeBOMID: TcxGridDBColumn;
    cxGL2: TcxGridLevel;
    Panel4: TPanel;
    Bevel1: TBevel;
    RzSizePanel2: TRzSizePanel;
    MyTreeView1: TTreeView;
    Panel6: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    ToolBar2: TToolBar;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    ToolBar3: TToolBar;
    TB_Edit1: TToolButton;
    TB_Save: TToolButton;
    TB_Ref1: TToolButton;
    TB_Out: TToolButton;
    ToolButton15: TToolButton;
    TB_Down1: TToolButton;
    ToolButton18: TToolButton;
    TB_MakeBOM: TToolButton;
    ToolBar1: TToolBar;
    TB_Ref2: TToolButton;
    TB_Out2: TToolButton;
    TB_Down2: TToolButton;
    FPartsNumber_2: TcxGridDBColumn;
    FWorkParts_2: TcxGridDBColumn;
    MData: TdxMemData;
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
    DS_Mdata: TDataSource;
    MDataFItemListID: TIntegerField;
    RzSizePanel4: TRzSizePanel;
    MyTreeView2: TTreeView;
    Num2: TcxGridDBColumn;
    TB_PartsSort: TToolButton;
    Panel10: TPanel;
    TB_Task: TToolButton;
    TB_Exit: TToolButton;
    ToolButton2: TToolButton;
    RzRG_1: TRzRadioGroup;
    CB_Type: TcxCheckBox;
    CB_Print: TcxCheckBox;
    CB_Parts: TcxComboBox;
    CB_Sum: TcxComboBox;
    TB_Sort: TToolButton;
    PC_1: TRzPageControl;
    TS_BOM: TRzTabSheet;
    TS_Sort: TRzTabSheet;
    cxGrid1: TcxGrid;
    cxGV1: TcxGridDBTableView;
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
    cxGridDBColumn38: TcxGridDBColumn;
    cxGridDBColumn39: TcxGridDBColumn;
    cxGridDBColumn40: TcxGridDBColumn;
    cxGridDBColumn41: TcxGridDBColumn;
    cxGridDBColumn42: TcxGridDBColumn;
    cxGridDBColumn43: TcxGridDBColumn;
    cxGridDBColumn44: TcxGridDBColumn;
    cxGridDBColumn45: TcxGridDBColumn;
    cxGL1: TcxGridLevel;
    ToolButton1: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    SaveDialog1: TSaveDialog;
    StatusBar1: TStatusBar;
    FProcess: TcxGridDBColumn;
    TB_Edit: TToolButton;
    TB_update: TToolButton;
    cxGrid3: TcxGrid;
    cxGV3: TcxGridDBTableView;
    PictureId: TcxGridDBColumn;
    picture: TcxGridDBColumn;
    cxGL3: TcxGridLevel;
    T_ProcessPricture: TADOTable;
    DS_ProcessPricture: TDataSource;
    TB_Right: TToolButton;
    Panel1: TPanel;
    Label26: TLabel;
    Label10: TLabel;
    E_FBranchFileNo1: TcxButtonEdit;
    E_FPartsNumber1: TcxButtonEdit;
    E_FItemListID1: TcxButtonEdit;
    stbBar: TRzStatusBar;
    RzClockStatus1: TRzClockStatus;
    RzKeyStatus1: TRzKeyStatus;
    RzKeyStatus2: TRzKeyStatus;
    RzKeyStatus3: TRzKeyStatus;
    stbMsg: TRzFieldStatus;
    cxGrid: TcxGrid;
    cxGV: TcxGridDBTableView;
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
    cxGL: TcxGridLevel;
    TB_DelWorkBOM: TToolButton;
    ToolButton5: TToolButton;
    actionList: TActionList;
    ActApp: TAction;
    ActParts: TAction;
    ActSave: TAction;
    ActOut: TAction;
    ActEdit: TAction;
    ActDel: TAction;
    ActDelTake: TAction;
    ActDelWorkBom: TAction;
    Act_Submit: TAction;
    Act_Check: TAction;
    Actcldy: TAction;
    Act_Audit: TAction;
    ActPartsSort: TAction;
    ActWeigth: TAction;
    ActWorkBOM: TAction;
    ActFullName: TAction;
    ActTake: TAction;
    Act_PushDown: TAction;
    Act_Status: TAction;
    Act_TakeEdit: TAction;
    ActAudit: TAction;
    ActProcessSort: TAction;
    ToolButton6: TToolButton;
    FFullName: TcxGridDBColumn;
    FProductID: TcxGridDBColumn;
    long: TcxGridDBColumn;
    width: TcxGridDBColumn;
    model: TcxGridDBColumn;
    procedure FormResize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Set_Open2;
    procedure Set_Close2;
    procedure MyTreeView1Expanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure MyTreeView2Expanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure MyTreeView1Change(Sender: TObject; Node: TTreeNode);
    procedure MyTreeView2Change(Sender: TObject; Node: TTreeNode);
    procedure TB_Ref1Click(Sender: TObject);
    procedure TB_Edit1Click(Sender: TObject);
    procedure TB_SaveClick(Sender: TObject);
    procedure TB_MakeBOMClick(Sender: TObject);
    procedure TB_Out2Click(Sender: TObject);
    procedure TB_Ref2Click(Sender: TObject);
    procedure TB_Down1Click(Sender: TObject);
    procedure TB_Down2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SelRemarkPropertiesCloseUp(Sender: TObject);
    procedure TB_PartsSortClick(Sender: TObject);
    procedure TB_TaskClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TB_SortClick(Sender: TObject);
    procedure CB_TypeClick(Sender: TObject);
    procedure CB_PrintClick(Sender: TObject);
    procedure CB_PartsPropertiesChange(Sender: TObject);
    procedure frReportGetValue(const ParName: String;
      var ParValue: Variant);
    procedure RzRG_1Click(Sender: TObject);
    procedure MDataAfterEdit(DataSet: TDataSet);
    procedure ToolButton1Click(Sender: TObject);
    procedure TB_OutClick(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure TB_EditClick(Sender: TObject);
    procedure MData2AfterEdit(DataSet: TDataSet);
    procedure TB_updateClick(Sender: TObject);
    procedure cxGrid2Exit(Sender: TObject);
    procedure FProcessPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure SelPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxGV3DblClick(Sender: TObject);
    procedure TB_RightClick(Sender: TObject);
    procedure E_FBranchFileNo1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure TB_DelWorkBOMClick(Sender: TObject);
    function DelRdMakeBOM:bool;
    procedure ToolButton5Click(Sender: TObject);
    procedure ActFullNameExecute(Sender: TObject);
    procedure ActProcessSortExecute(Sender: TObject);
    procedure ToolButton6Click(Sender: TObject);

  private
   { Private declarations }

    function DelRdWorkBOM:bool;
    procedure PartsSort;



  public
    P_state,P_state2,P_stateApp,P_IsAudit:integer;
    P_th1,P_th2,P_th3,P_th4,P_th5,P_Sort,P_Parts,Title,Title1,Title2,bz:String;
    ListItemFParentNumber,ListItemFNumber1,ListItemFNumber2,ListItemFNumber3,ListItemFNumber4,ListItemFNumber5:String;
    P_i:boolean;

    P_FProductID,P_FProductID_BOM:integer;
   { Public declarations }
  end;

var
  Frm_DepBOM: TFrm_DepBOM;


implementation

uses FRMDATA,  COMMON, FrmSelect, ProgBar, PROGRASS;




{$R *.dfm}

function TFrm_DepBOM.DelRdMakeBOM: bool;
var
 qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Delete from T_MakeBOM where FFullNumber like :FFullNumber';
    qry.Parameters.FindParam('FFullNumber').value:=ListItemFNumber2+'%';
    result:=qry.ExecSQL>=1;
  finally
    qry.Free;
  end;
end;

procedure TFrm_DepBOM.PartsSort;
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
      value:=ListItemFNumber1;
    end;
    proc.ExecProc;
  finally
     ;
  end;
  Proc.Free;
end;



procedure TFrm_DepBOM.Set_Open2;
var i:Integer;
begin

  cxGV2.OptionsData.Editing:=True;
  Sel.Options.Editing:=True;
  IsSel.Options.Editing:=False;
  IsSel.Options.Filtering:=True;
  FCode.Options.Filtering:=True;

  P_i:=True;

end;

procedure TFrm_DepBOM.Set_Close2;
begin

  TB_Ref2.Enabled:=True;

  Sel.Options.Editing:=False;
  IsSel.Options.Editing:=False;
  IsSel.Options.Filtering:=False;
  FCode.Options.Filtering:=False;

end;



function TFrm_DepBOM.DelRdWorkBOM: bool;
var
 qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  try
    qry.SQL.Text:='Delete from T_WorkBOM where FFullNumber like :FFullNumber';
    qry.Parameters.FindParam('FFullNumber').value:=ListItemFNumber2+'%';
    result:=qry.ExecSQL>=1;
  finally
    qry.Free;
  end;
end;




procedure TFrm_DepBOM.FormResize(Sender: TObject);
begin
  inherited;
  Self.Caption:=UserFDepartmentName+'BOM';
end;

procedure TFrm_DepBOM.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=cafree;
  Frm_DepBOM:=nil;
end;

procedure TFrm_DepBOM.MyTreeView1Expanding(Sender: TObject;
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

  qry.SQL.Text:='Select FNumber, FParentNumber,FName,FItemNumber,FFullNumber,'
               +'Isleaf from VT_DesignBOM_Right_Dep where FParentNumber= '''
              // +'Isleaf from VT_DesignBOM where FParentNumber= '''
               +PTree(Node.Data).ID+''' order by FItemNumber';
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
    with MyTreeView1.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('Isleaf').value;
    end;
    qry.Next;
  end;


end;

procedure TFrm_DepBOM.MyTreeView2Expanding(Sender: TObject;
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
  qry.SQL.Text:='Select FNumber,FParentNumber,FName,FItemNumber,FFullNumber,'
               +'Isleaf from VT_WorkBOM_Dep where FParentNumber= '''
               +PTree(Node.Data).ID+''' order by FItemNumber';
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
    with MyTreeView2.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('Isleaf').value;
    end;
    qry.Next;
  end;
end;

procedure TFrm_DepBOM.MyTreeView1Change(Sender: TObject; Node: TTreeNode);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  ShowPrograss('正在提取数据，请稍候……',self);
  If Node = nil then Exit;
  with PTree(Node.Data)^ do
  begin
    ListItemFNumber:=trim(PTree(Node.Data).FNumber);
    P_th:=PTree(Node.Data).Caption;    //部件级别  001
    P_FProductID_BOM:=PTree(Node.Data).FProductID;
    If PTree(Node.Data).Isleaf=1 then
    begin
      If MyItemList(qry,Mdata,'V_DesignBOM_Structure','FFullNumber',ListItemFNumber,'') then
      begin
        cxGvColumn(cxGv,Mdata);
        mdata.First;
      end;

      //分档案号
      try
        qry.SQL.Text:='select * from VT_FileItem where FDepartmentID=:FDepartmentID and FItemNumber=:FItemNumber order by FItemNumber ';
        qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
        qry.Parameters.FindParam('FItemNumber').value:=mdata['FItemNumber'];
        qry.Open;
      finally
        ;
      end;
      If qry.RecordCount=1 then
         E_FBranchFileNo1.Text:=qry.FieldByName('FBranchFileNo').Value
      else
         E_FBranchFileNo1.Text:='';
      //FItemListID
      try
        qry.SQL.Text:='select * from VT_DesignBOM where FFullNumber=:FFullNumber ';
        qry.Parameters.FindParam('FFullNumber').value:=ListItemFNumber;
        qry.Open;
      finally
        ;
      end;
      If qry.RecordCount=1 then
         E_FItemListID1.EditValue:=qry.FieldByName('FItemListID').Value
      else
         E_FItemListID1.Text:='';

     If mdata.RecordCount>0 then
     begin
       E_FBranchFileNo1.Enabled:=True;
       E_FPartsNumber1.Text:=mdata['FPartsNumber'];
     end
     else
     begin
       E_FBranchFileNo1.Enabled:=False;
       E_FPartsNumber1.Text:='';
     end;
    end
    else
    begin
      mdata.Close;
    end;
    qry.SQL.Text:='Select Min(FInputDate) as FInputDate from V_DesignBOM_Structure where FFullNumber like :FFullNumber ';
    qry.Parameters.FindParam('FFullNumber').value:=ListItemFNumber+'%';
    qry.open;
    If (qry.RecordCount>0) and (qry.FieldByName('FInputDate').AsString<>'') then
    begin
     // Messagedlg('设计定额导入最早日期：【'+qry.FieldByName('FInputDate').AsString+'】',mtInformation,[mbok],0);
      stbMsg.Caption:='提示信息：设计定额【'+P_th+'】导入最早日期：'+'【'+qry.FieldByName('FInputDate').AsString+'】';
      stbBar.Refresh;
    end;
  end;

  If (E_FBranchFileNo1.Text<>'') and (mdlData.PermissionCheckRights(TFrm_DepBOM.ClassName,'审核')=True) then
     TB_MakeBOM.Enabled:=True
   else
    TB_MakeBOM.Enabled:=False;


end;

procedure TFrm_DepBOM.MyTreeView2Change(Sender: TObject; Node: TTreeNode);
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
    If PTree(Node.Data).Isleaf=1 then
    begin
     // If not MyItemList(qry,Mdata2,'V_MakeBOM','FDepartmentName+FFullNumber',userFDepartmentName+ListItemFNumber2,'FFullNumber') then
      If not MyItemListwhere(qry,Mdata2,'V_MakeBOM','FFullNumber',ListItemFNumber2,' and FAgentID='+IntToStr(UserFDepartmentID),'FFullNumber',) then


      begin
       // mdata2.Open;

      end;

      If mdata2.RecordCount>0 then
      begin

      end;
    end
    else
    begin

      mdata2.Close;
    end;
 end;

end;

procedure TFrm_DepBOM.TB_Ref1Click(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
//  If not TreeVeiwListUserID(qry,MyTreeView1,'VT_DesignBOM_Right',UserFDepartmentID) then

 // If not TreeVeiwListWhere(qry,MyTreeView1,'VT_DesignBOM_Right',' and FAgentID='+IntToStr(UserFDepartmentID) ) then
  If not TreeVeiwListWhere(qry,MyTreeView1,'VT_DesignBOM_Right_Dep',' and FAgentID='+IntToStr(UserFDepartmentID) ) then

  //If not TreeVeiwList(qry,MyTreeView1,'VT_DesignBOM', ) then

  begin
    Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;
end;

procedure TFrm_DepBOM.TB_Edit1Click(Sender: TObject);
begin
  inherited;
  cxGV.OptionsData.Editing:=True;
  FPartsSort.Options.Editing:=True;
  TB_Edit1.Enabled:=False;
end;

procedure TFrm_DepBOM.TB_SaveClick(Sender: TObject);
var
  IsEdit:bool;
  qry: TADOQuery;
  I_index:integer;
begin
  I_index:=mData1.RecNo ;
  Mdata.Edit;
  Mdata.Post;
  If ShowMsg('是否对已修改部件类别进行批量更新？','提示') then
  begin
    with mdata do
    begin
      mData.DisableControls;
      First;
      qry:=TADOQuery.Create(Self);
      qry.ConnectionString:=mdlData.ReadConnStr;
      try
        qry.SQL.Text:='Update T_DesignBOM_Structure set FPartsSort=:FPartsSort where FFullNumber=:FFullNumber';
        while not mdata.EoF do
        begin
          IsEdit:=mData.FieldByName('IsEdit').AsBoolean;
          If IsEdit then
          begin
            qry.Parameters[0].Value:=mData['FPartsSort'];
            qry.Parameters[1].Value:=mData['FFullNumber'];
            qry.ExecSQL;
          end;
          next;
        end;
      finally
        ;
      end;
    end;
    mData.EnableControls;
  end;

  If (I_index<mData.RecordCount) and (I_index<>-1) then
     mData.RecNo :=I_index
  else
     mData.Last;
 

  TB_Save.Visible:=False;
  TB_Edit1.Enabled:=True;


end;

procedure TFrm_DepBOM.TB_MakeBOMClick(Sender: TObject);
var
  proc:TADOStoredProc;
  s1,s2:Ttime;
  a:string;
  P_Retinf:String;

begin
  proc:=TADOStoredProc.Create(self);
  proc.ConnectionString:=mdlData.ReadConnStr;
  proc.CommandTimeout:=500;

  If ShowMsg('是否将图号【'+P_th+'】导入生产作业表？','提示') then
  begin
    s1:=now();
    try
      proc.ProcedureName:='P_MakeBOM;1';
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
        DataType := ftInteger;
        Direction := pdinput;
        name := '@UserFAgentID';
        value:=UserFDepartmentID;
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
      If  P_Retinf<>'' then
      begin
        Messagedlg(P_Retinf,mtInformation,[mbok],0);
        mdata.Close;

        DS_Mdata.DataSet:=Mdata;
        cxGV.DataController.DataSource:=DS_Mdata;

        mdata.CopyFromDataSet(proc);
        Mdata.Active:=True;
        cxGvColumn(cxGv,mdata);
        Self.TB_Right.Click;
        Exit;
      end
      else
      begin
        s2:=now();
        a:=FormatDateTime('hh:mm:ss',s2-s1);
        Messagedlg('生产作业表数据已经成功生成！所用时间：【'+a+'】',mtInformation,[mbok],0);
        Messagedlg(P_Retinf,mtInformation,[mbok],0);

        mdata.Close;
        mdata.CopyFromDataSet(proc);
        Mdata.Active:=True;
        DS_Mdata.DataSet:=Mdata;
        cxGV.DataController.DataSource:=DS_Mdata;
        cxGvColumn(cxGv,mdata);
         Self.TB_Right.Click;
      end;
      finally
        ;
    end;
  end;
  proc.Free;


end;

procedure TFrm_DepBOM.TB_Out2Click(Sender: TObject);
begin
  inherited;
  If mdata2.RecordCount>0 then
     ExportToExcel(cxGrid2,True,TRue)
  else
     Application.MessageBox(PChar('没有需要导出的数据！'), '错误', MB_OK +MB_ICONSTOP);

end;

procedure TFrm_DepBOM.TB_Ref2Click(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If not TreeVeiwListWhere(qry,MyTreeView2,'VT_WorkBOM_Dep',' and FAgentID='+IntToStr(UserFDepartmentID) ) then
  begin
    Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;

end;

procedure TFrm_DepBOM.TB_Down1Click(Sender: TObject);
Var i:Integer;
begin
  If P_i then
  begin
    TB_Down1.Caption:='取消设置';
    cxGV.OptionsData.Editing:=False;
    cxGV1.OptionsData.Editing:=False;
    cxGv.OptionsView.GroupByBox:=False;
    cxGv1.OptionsView.GroupByBox:=False;
    for i:=0 to cxGv.ColumnCount-1 do
    begin
      cxGv.Columns[i].Options.Filtering:=False;
      cxGv.Columns[i].Options.Editing:=False;
      cxGv.Columns[i].Options.Sorting:=False;
    end;
    for i:=0 to cxGv1.ColumnCount-1 do
    begin
      cxGv1.Columns[i].Options.Filtering:=False;
      cxGv1.Columns[i].Options.Editing:=False;
      cxGv1.Columns[i].Options.Sorting:=False;
    end;
    P_i:=False;
  end
  else
  begin
    TB_Down1.Caption:='设置';
    cxGV.OptionsData.Editing:=True;
    cxGV1.OptionsData.Editing:=True;
    cxGv.OptionsView.GroupByBox:=True;
    cxGv1.OptionsView.GroupByBox:=True;
    for i:=0 to cxGv.ColumnCount-1 do
    begin
      cxGv.Columns[i].Options.Filtering:=True;
      cxGv.Columns[i].Options.Editing:=True;
      cxGv.Columns[i].Options.Sorting:=True;
    end;
    for i:=0 to cxGv1.ColumnCount-1 do
    begin
      cxGv1.Columns[i].Options.Filtering:=True;
      cxGv1.Columns[i].Options.Editing:=True;
      cxGv1.Columns[i].Options.Sorting:=True;
    end;
    P_i:=True;
  end;

end;

procedure TFrm_DepBOM.TB_Down2Click(Sender: TObject);
Var i:Integer;
begin
  If P_i then
  begin
    TB_Down2.Caption:='取消设置';
    cxGV2.OptionsData.Editing:=False;
    cxGv2.OptionsView.GroupByBox:=False;
    for i:=0 to cxGv2.ColumnCount-1 do
    begin
      cxGv2.Columns[i].Options.Filtering:=False;
      cxGv2.Columns[i].Options.Editing:=False;
      cxGv2.Columns[i].Options.Sorting:=False;
    end;
    P_i:=False;
  end
  else
  begin
    TB_Down2.Caption:='设置';
    cxGV2.OptionsData.Editing:=True;
    cxGv2.OptionsView.GroupByBox:=True;
    for i:=0 to cxGv2.ColumnCount-1 do
    begin
      cxGv2.Columns[i].Options.Filtering:=True;
      cxGv2.Columns[i].Options.Editing:=True;
      cxGv2.Columns[i].Options.Sorting:=True;
    end;
    P_i:=True;
  end;

end;

procedure TFrm_DepBOM.FormShow(Sender: TObject);
begin
  inherited;
  TB_Ref1.Click;
  TB_Ref2.Click;

end;

procedure TFrm_DepBOM.SelRemarkPropertiesCloseUp(Sender: TObject);
var p01,p02,p03,p05,p06,p07,p10,p11,p12:string;
    p09,p04,i,j,P_xh:Integer;
    I_index:integer;
begin
  inherited;
end;

procedure TFrm_DepBOM.TB_PartsSortClick(Sender: TObject);
var
  qry: TADOQuery;
  proc:TADOStoredProc;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  proc:=TADOStoredProc.Create(self);
  proc.ConnectionString:=mdlData.ReadConnStr;
  proc.CommandTimeout:=500;

  If ShowMsg('是否对【'+P_th1+'】此图号进行部件类别自动划分?','提示') then
  begin
    try
      ShowPrograss('正在对设计BOM进行部件划分，请稍候……',self);
      Self.PartsSort;
      If not MyItemList(qry,Mdata1,'V_DesignBOM_Structure','FFullNumber',ListItemFNumber1,'FFullNumber') then
      begin
        mdata1.Open;
      end;
      application.MessageBox('设计BOM部件划分完成','系统提示',MB_ICONINFORMATION);
    finally
       ;
    end;
  end;


end;

procedure TFrm_DepBOM.TB_TaskClick(Sender: TObject);
begin
  If mdata2.RecordCount>0 then
  begin
    frDBDataSet.DataSource:=ds_mdata2;
    FrReport.LoadFromFile(ExtractFileDir(Application.ExeName)+'\Report_DesignBOM_WorkTask.frf');
    FrReport.ShowReport;
  end
  else
    Application.MessageBox(PChar('没有需要打印的数据！'), '错误', MB_OK +MB_ICONSTOP);


end;

procedure TFrm_DepBOM.FormCreate(Sender: TObject);
begin
  inherited;
  P_Parts:='FManageParts';
  TB_PartsSort.Enabled:= mdlData.PermissionCheckRights(TFrm_DepBOM.ClassName,'新增');
  TB_Sort.Enabled:= mdlData.PermissionCheckRights(TFrm_DepBOM.ClassName,'新增');
  TB_Edit1.Enabled:= mdlData.PermissionCheckRights(TFrm_DepBOM.ClassName,'新增');
  //TB_WorkBOM.Enabled:= mdlData.PermissionCheckRights(TFrm_DepBOM.ClassName,'新增');
  TB_Out.Enabled:= mdlData.PermissionCheckRights(TFrm_DepBOM.ClassName,'导出');

end;

procedure TFrm_DepBOM.TB_SortClick(Sender: TObject);
var
  proc:TADOStoredProc;
  bz:String;
begin
  proc:=TADOStoredProc.Create(self);
  proc.ConnectionString:=mdlData.ReadConnStr;
  proc.CommandTimeout:=500;
  If RzRG_1.ItemIndex=0 then
     P_Sort:='部件汇总';
  If RzRG_1.ItemIndex=1 then
     P_Sort:='材料汇总';

  try
    proc.ProcedureName:='P_DesignBOM_SUM;1';
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=50;
      name := '@FFullNumber';
      value:=ListItemFNumber1;
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
  PC_1.ActivePage:=TS_Sort;

 
  If RzRG_1.ItemIndex=0 then
  begin
    Title1:='统计图号：【'+mdata1['FItemNumber']+'】'+'/【'+mdata1['FPartsNumber']+'】';
    Title2:='用户名称：【'+mdata1['FClientShortName']+'】';
    Title:='材料消耗工艺定额汇总报表';
    bz:='备注：其他件指外购件(不含紧固件)、阴极线、电磁锤振打器。';
    frDBDataSet.DataSource:=ds_mdata1;
    FrReport.LoadFromFile(ExtractFileDir(Application.ExeName)+'\Report_DesignBOM_PartsSortSum.frf');
 end;

  If RzRG_1.ItemIndex=1 then
  begin
    Title1:='统计图号：【'+mdata1['FItemNumber']+'】'+'/【'+mdata1['FPartsNumber']+'】';
    Title2:='用户名称：【'+mdata1['FClientShortName']+'】';
    Title:='本体定额材料物资采购汇总表';
    frDBDataSet.DataSource:=ds_mdata1;
    FrReport.LoadFromFile(ExtractFileDir(Application.ExeName)+'\Report_DesignBOM_PartsSum.frf');
 end;
 FrReport.ShowReport;
 Proc.Free;

end;

procedure TFrm_DepBOM.CB_TypeClick(Sender: TObject);
begin
  inherited;
  If CB_Type.Checked=True then
    CB_Type.Properties.Caption:='汇总'
  else
  begin
    CB_Type.Properties.Caption:='明细';
    CB_Print.Checked:=False;
  end;

end;

procedure TFrm_DepBOM.CB_PrintClick(Sender: TObject);
begin
  inherited;
  If CB_Print.Checked=True then
    CB_Type.Properties.Caption:='汇总';

end;

procedure TFrm_DepBOM.CB_PartsPropertiesChange(Sender: TObject);
begin
  inherited;
  If CB_Parts.Text='部件' then
    P_Parts:='FParts';
  If CB_Parts.Text='部件类别' then
    P_Parts:='FPartsSort';
  If CB_Parts.Text='企管部件类别' then
    P_Parts:='FManageParts';
  If CB_Parts.Text='生产部件类别' then
    P_Parts:='FWorkParts';

end;

procedure TFrm_DepBOM.frReportGetValue(const ParName: String;
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
    ParValue:=CB_Parts.Text;
  If ParName='bz' then
    ParValue:=bz;

end;

procedure TFrm_DepBOM.RzRG_1Click(Sender: TObject);
begin
  inherited;
  If RzRG_1.ItemIndex=0 then
     TB_Sort.Caption:='部件汇总';
  If RzRG_1.ItemIndex=1 then
     TB_Sort.Caption:='材料汇总';

end;

procedure TFrm_DepBOM.MDataAfterEdit(DataSet: TDataSet);
begin
  inherited;
  DataSet['IsEdit']:=True;
  TB_Save.Visible:=True;
end;

procedure TFrm_DepBOM.ToolButton1Click(Sender: TObject);
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
      value:=P_FProductID_BOM;
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=50;
      name := '@FFullNumber';
      value:=ListItemFNumber1;
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=50;
      name := '@type';
      value:=CB_Type.Properties.Caption;
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
    mdata.CopyFromDataSet(proc);
    cxGvColumn(cxGv,Mdata);
    mdata.First;
  finally
     ;
  end;


  If CB_Print.Checked=True then
  begin
    bz:='备注：其他件指外购件(不含紧固件)、阴极线、电磁锤振打器。';
    title:='材料消耗工艺定额汇总报表';
    frDBDataSet.DataSource:=ds_mdata;
    frReport.LoadFromFile(ExtractFileDir(Application.ExeName)+'\Report_DesignBOM_Scenario.frf');
    frReport.ShowReport;
  end;

  Proc.Free;

end;

procedure TFrm_DepBOM.TB_OutClick(Sender: TObject);
begin
  inherited;
  If PC_1.ActivePage=TS_BOM then
  begin
    If mdata.RecordCount>0 then
       ExportToExcel(cxGrid,True,TRue)
    else
       Application.MessageBox(PChar('没有需要导出的数据！'), '错误', MB_OK +MB_ICONSTOP);
 end;
  If PC_1.ActivePage=TS_Sort  then
  begin
    If mdata1.RecordCount>0 then
       ExportToExcel(cxGrid1,True,TRue)
    else
       Application.MessageBox(PChar('没有需要导出的数据！'), '错误', MB_OK +MB_ICONSTOP);
 end;

end;

procedure TFrm_DepBOM.ToolButton3Click(Sender: TObject);
var
  Query_Sp:TADOStoredProc;
  i,k,s,ReNum,ReNumLoop,R_Count:Integer;
  ExcelApp,MyWorkBook,mysheet: Variant;
  filepath,savefilepath,Sqlstr,copystart,copyend,copystart1,aa:string;
  ListQry:Tadoquery;
begin
  filepath:=Extractfilepath(application.ExeName)+'生产作业表模版.xls';
  if (Mdata2.Active) and (Mdata2.recordcount>0) then
  Begin
    SaveDialog1.FileName:='生产作业表('+Mdata2.FieldByName('FPartsNumber').AsString+')'+Mdata2.FieldByName('FMakeParts').AsString;
    SaveDialog1.Filter:='.xls';
    SaveDialog1.Execute;

    if (Mdata2.FieldByName('FMakeParts').AsString<>'') Or (Mdata2.FieldByName('FMakeParts').AsString<>Null) then
        savefilepath:=SaveDialog1.FileName+'.xls';

    if FileExists(savefilepath) then
    begin
      DeleteFile(savefilepath) ;
    end;

    StatusBar1.Panels[5].text:='正在导出生产作业表:'+Mdata2.FieldByName('FMakeParts').AsString+'的信息..请稍等!!';
    ExcelApp:= CreateOleObject('Excel.Application' );
    MyWorkBook:=ExcelApp.WorkBooks.Open( filepath );
    //ExcelApp.Visible:=True;

    //标题
    MyWorkBook.WorkSheets[1].Cells[1,1].Value:=AnsiReplaceStr(MyWorkBook.WorkSheets[1].Cells[1,1].Value,'A',UserFDepartmentName); //公司名称

    MyWorkBook.WorkSheets[1].Cells[4,3].Value := Trim(Mdata2.FieldByName('FFileNo').AsString); //档 案 号
    MyWorkBook.WorkSheets[1].Cells[4,8].Value := Trim(Mdata2.FieldByName('FItemNumber').AsString); //图 号
    MyWorkBook.WorkSheets[1].Cells[5,3].Value := Trim(Mdata2.FieldByName('FClientFullName').AsString); //项目名称
    MyWorkBook.WorkSheets[1].Cells[6,3].Value := Trim(Mdata2.FieldByName('FItemModel').AsString); //规格型号
    MyWorkBook.WorkSheets[1].Cells[6,8].Value := Trim(Mdata2.FieldByName('FDepartmentName').AsString); //项目部门
    MyWorkBook.WorkSheets[1].Cells[7,3].Value := Trim(Mdata2.FieldByName('FMakeParts').AsString); //部件




    //循环行开始
    i:=10;

    //工作薄名称
    MyWorkBook.WorkSheets[1].Name:=Mdata2.FieldByName('FMakeParts').AsString;

    StatusBar1.Panels[5].text:='正在导出生产作业表:'+Mdata2.FieldByName('FMakeParts').AsString+'的明细信息..请稍等!!';
    copystart:='A'+IntToStr(i);
    if Mdata2.recordcount>0 then
    Begin
      if Mdata2.recordcount>1 then
      Begin
        copystart:='A'+IntToStr(i);
        copystart1:='A'+IntToStr(i+1);
        copyend:='J'+IntToStr(i);  //区域
        ReNum:=Mdata2.recordcount-1+(25-((mdata2.RecordCount+1) mod 25));;
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
        R_Count:=Mdata2.recordcount;
      end;
      Mdata2.first;
      K:=0 ;
      while not Mdata2.eof do
      Begin
        //MyWorkBook.WorkSheets[1].Cells[i,1].Value := inttostr(K+1); //序号
        MyWorkBook.WorkSheets[1].Cells[i,1].Value := Mdata2.FieldByName('FCode').AsString; //类别
        MyWorkBook.WorkSheets[1].Cells[i,2].Value := Mdata2.FieldByName('th').AsString; //图号
        MyWorkBook.WorkSheets[1].Cells[i,4].Value := Mdata2.FieldByName('mc').AsString; //名称
        MyWorkBook.WorkSheets[1].Cells[i,5].Value := Mdata2.FieldByName('FName').AsString+Mdata2.FieldByName('FModel').AsString; //材料名称及规格
        MyWorkBook.WorkSheets[1].Cells[i,6].Value := Mdata2.FieldByName('FSumQry').AsString; //数量
        MyWorkBook.WorkSheets[1].Cells[i,7].Value := Mdata2.FieldByName('FSuttle').AsString; //净重量
        MyWorkBook.WorkSheets[1].Cells[i,8].Value := Mdata2.FieldByName('long').Value;
        MyWorkBook.WorkSheets[1].Cells[i,9].Value := Mdata2.FieldByName('width').Value;
        MyWorkBook.WorkSheets[1].Cells[i,10].Value :=' '+Mdata2.FieldByName('Model').AsString+Mdata2.FieldByName('FProcess').AsString;


       { If (Mdata2.FieldByName('gg').AsString='') and (Mdata2.FieldByName('FName').AsString<>'') then
           MyWorkBook.WorkSheets[1].Cells[i,8].Value :=Mdata2.FieldByName('FProcess').AsString+'按图下料'
        else
        MyWorkBook.WorkSheets[1].Cells[i,8].Value := Mdata2.FieldByName('gg').AsString+Mdata2.FieldByName('FProcess').AsString; //规格
         }
        //MyWorkBook.WorkSheets[1].Cells[i,10].Value := Mdata.FieldByName('FWorkListRemark').AsString; //备注
        Mdata2.next;
        i:=i+1;
        k:=k+1;
      End;

      {MyWorkBook.WorkSheets[1].Cells[i,8].Value := '=SUM(h9:h'+IntToStr(i-1)+')'; //合计重量
      MyWorkBook.WorkSheets[1].Cells[i+3,2].Value:=AnsiReplaceStr(MyWorkBook.WorkSheets[1].Cells[i+3,2].Value,'A',Mdata.FieldByName('FMaterialDate').AsString); //单价执行日期
      MyWorkBook.WorkSheets[1].Cells[i+3,2].Value:=AnsiReplaceStr(MyWorkBook.WorkSheets[1].Cells[i+3,2].Value,'B',Mdata.FieldByName('FAdvancePercent').AsString); //预付款
      MyWorkBook.WorkSheets[1].Cells[i+5,4].Value:=AnsiReplaceStr(MyWorkBook.WorkSheets[1].Cells[i+5,4].Value,'C',Mdata.FieldByName('FE05').AsString); //补充说明
       }
    end;

    StatusBar1.Panels[5].text:='生产作业表:'+Mdata2.FieldByName('FMakeParts').AsString+'的信息导出完成!!';
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



end;

procedure TFrm_DepBOM.ToolButton4Click(Sender: TObject);
var
  qry:TADOquery;

  Query_Sp:TADOStoredProc;
  i,k,s,ReNum,ReNumLoop,R_Count:Integer;
  ExcelApp,MyWorkBook,mysheet: Variant;
  filepath,savefilepath,Sqlstr,copystart,copyend,copystart1,aa:string;
  ListQry:Tadoquery;

begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='select * from V_MakeBOM where Fk3Number<>'''' and FFullNumber like :FFullNumber '
                 +' order by Fk3Number,gg ';
    qry.Parameters.FindParam('FFullNumber').value:=ListItemFNumber2+'%';
    qry.Open;
  finally
    ;
  end;
  mdata2.CopyFromDataSet(qry);
  mdata2.Open;
  mdata2.First;

  filepath:=Extractfilepath(application.ExeName)+'生产下料表模版.xls';
  if (Mdata2.Active) and (Mdata2.recordcount>0) then
  Begin
    SaveDialog1.FileName:='生产下料表('+Mdata2.FieldByName('FPartsNumber').AsString+')'+Mdata2.FieldByName('FMakeParts').AsString;
    SaveDialog1.Filter:='.xls';
    SaveDialog1.Execute;

    if (Mdata2.FieldByName('FMakeParts').AsString<>'') Or (Mdata2.FieldByName('FMakeParts').AsString<>Null) then
        savefilepath:=SaveDialog1.FileName+'.xls';

    if FileExists(savefilepath) then
    begin
      DeleteFile(savefilepath) ;
    end;

    StatusBar1.Panels[5].text:='正在导出生产下料表:'+Mdata2.FieldByName('FMakeParts').AsString+'的信息..请稍等!!';
    ExcelApp:= CreateOleObject('Excel.Application' );
    MyWorkBook:=ExcelApp.WorkBooks.Open( filepath );
    //ExcelApp.Visible:=True;

    //标题
    MyWorkBook.WorkSheets[1].Cells[1,1].Value:=AnsiReplaceStr(MyWorkBook.WorkSheets[1].Cells[1,1].Value,'A',UserFDepartmentName); //公司名称


    MyWorkBook.WorkSheets[1].Cells[3,3].Value := Trim(Mdata2.FieldByName('FFileNo').AsString); //档 案 号
    MyWorkBook.WorkSheets[1].Cells[4,3].Value := Trim(Mdata2.FieldByName('FClientFullName').AsString); //项目名称
    MyWorkBook.WorkSheets[1].Cells[5,3].Value := Trim(Mdata2.FieldByName('FItemModel').AsString); //规格型号
    MyWorkBook.WorkSheets[1].Cells[5,8].Value := Trim(Mdata2.FieldByName('FMakeParts').AsString); //部件

    i:=8;
    MyWorkBook.WorkSheets[1].Name:=Mdata2.FieldByName('FMakeParts').AsString;

    StatusBar1.Panels[5].text:='正在导出生产下料表:'+Mdata2.FieldByName('FMakeParts').AsString+'的明细信息..请稍等!!';
    copystart:='A'+IntToStr(i);
    if Mdata2.recordcount>0 then
    Begin
      if Mdata2.recordcount>1 then
      Begin
        copystart:='A'+IntToStr(i);
        copystart1:='A'+IntToStr(i+1);
        copyend:='I'+IntToStr(i);
        ReNum:=Mdata2.recordcount-1+(25-((mdata2.RecordCount+1) mod 25));;
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
        R_Count:=Mdata2.recordcount;
      end;
      Mdata2.first;
      K:=0 ;
      while not Mdata2.eof do
      Begin
        MyWorkBook.WorkSheets[1].Cells[i,1].Value := inttostr(K+1); //序号
        //MyWorkBook.WorkSheets[1].Cells[i,1].Value := Mdata3.FieldByName('FCode').AsString; //部件名称 +规格
        MyWorkBook.WorkSheets[1].Cells[i,2].Value := Mdata2.FieldByName('th').AsString; //部件名称 +规格
        MyWorkBook.WorkSheets[1].Cells[i,4].Value := Mdata2.FieldByName('mc').AsString; //单位
        MyWorkBook.WorkSheets[1].Cells[i,5].Value := Mdata2.FieldByName('FModel').AsString; //单台估重
        MyWorkBook.WorkSheets[1].Cells[i,6].Value := Mdata2.FieldByName('FSumQry').AsString; //单价
        MyWorkBook.WorkSheets[1].Cells[i,7].Value := Mdata2.FieldByName('FSuttle').AsString; //金  额
        MyWorkBook.WorkSheets[1].Cells[i,8].Value := Mdata2.FieldByName('gg').AsString; //交货期
        //MyWorkBook.WorkSheets[1].Cells[i,10].Value := Mdata.FieldByName('FWorkListRemark').AsString; //备注
        Mdata2.next;
        i:=i+1;
        k:=k+1;
      End;
      {MyWorkBook.WorkSheets[1].Cells[i,8].Value := '=SUM(h9:h'+IntToStr(i-1)+')'; //合计重量
      MyWorkBook.WorkSheets[1].Cells[i+2,2].Value:=AnsiReplaceStr(MyWorkBook.WorkSheets[1].Cells[i+2,2].Value,'A',Mdata.FieldByName('FMaterialDate').AsString); //单价执行日期
      MyWorkBook.WorkSheets[1].Cells[i+3,2].Value:=AnsiReplaceStr(MyWorkBook.WorkSheets[1].Cells[i+3,2].Value,'A',Mdata.FieldByName('FMaterialDate').AsString); //单价执行日期
      MyWorkBook.WorkSheets[1].Cells[i+3,2].Value:=AnsiReplaceStr(MyWorkBook.WorkSheets[1].Cells[i+3,2].Value,'B',Mdata.FieldByName('FAdvancePercent').AsString); //预付款
      MyWorkBook.WorkSheets[1].Cells[i+5,4].Value:=AnsiReplaceStr(MyWorkBook.WorkSheets[1].Cells[i+5,4].Value,'C',Mdata.FieldByName('FE05').AsString); //补充说明
       }
    end;

    StatusBar1.Panels[5].text:='生产下料表:'+Mdata2.FieldByName('FMakeParts').AsString+'的信息导出完成!!';
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

end;

procedure TFrm_DepBOM.TB_EditClick(Sender: TObject);
begin
  inherited;
  cxGV2.OptionsData.Editing:=True;
  FProcess.Options.Editing:=True;
  Sel.Options.Editing:=True;
  TB_Edit.Enabled:=False;
end;

procedure TFrm_DepBOM.MData2AfterEdit(DataSet: TDataSet);
begin
  inherited;
  DataSet['IsEdit']:=True;
  TB_update.Visible:=True;

end;

procedure TFrm_DepBOM.TB_updateClick(Sender: TObject);
var
  IsEdit:bool;
  qry: TADOQuery;
  I_index:integer;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  I_index:=mData2.RecNo ;
  Mdata2.Edit;
  Mdata2.Post;
  If ShowMsg('是否对已修改生产作业进行批量更新？更新后不可恢复！','提示') then
  begin
    with mdata2 do
    begin
      mData2.DisableControls;
      First;
      try
        qry.SQL.Text:='Update T_MakeBOM set FQry=:FQry,FSuttle=:FSuttle,FProcessPictureId=:FProcessPictureId where FMakeBOMID=:FMakeBOMID';
        while not mdata2.EoF do
        begin
          IsEdit:=mData2.FieldByName('IsEdit').AsBoolean;
          If IsEdit then
          begin
            qry.Parameters[0].Value:=mData2['FQry'];
            qry.Parameters[1].Value:=mData2['FSuttle'];
            qry.Parameters[2].Value:=mData2['FProcessPictureId'];
            qry.Parameters[3].Value:=mData2['Code'];
            qry.ExecSQL;
          end;
          next;
        end;
      finally
        ;
        //Messagedlg('数据更新失败！',mtInformation,[mbok],0);
      end;
    end;
    mData2.EnableControls;
  end;

  If not MyItemList(qry,Mdata2,'V_MakeBOM','FFullNumber',ListItemFNumber2,'FFullNumber') then
  begin
    mdata2.Open;
   end;

 // Self.P_select;
  TB_update.Visible:=False;
  If (I_index<mData2.RecordCount) and (I_index<>-1) then
     mData2.RecNo :=I_index
  else
     mData2.Last;

end;

procedure TFrm_DepBOM.cxGrid2Exit(Sender: TObject);
begin
  inherited;
  If TB_update.Visible then
  If messagedlg('数据已修改是否更新？',mtInformation,[mbyes,mbno],0)=mryes then
    TB_update.Click;
end;

procedure TFrm_DepBOM.FProcessPropertiesButtonClick(Sender: TObject;
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
    mdata2.Edit;
    mdata2['FProcess']:=qry.FieldByName('FProcess').Value;
    mdata2.Post;
  end;


end;

procedure TFrm_DepBOM.SelPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='select * from T_ProcessPricture';
    qry.Open;
  finally
   ;
  end;

  selValue:=select('选择生产工艺图片','FProcessPicture','FProcessPicture','FProcessPicture','FProcessPicture',qry);
  If (Length(selValue)>0) then
  begin
    mdata2.Edit;
    mdata2['FProcessID']:=qry.FieldByName('FProcessID').Value;
    mdata2['FProcessPicture']:=qry.FieldByName('FProcessPicture').Value;
    mdata2.Post;
  end;

end;

procedure TFrm_DepBOM.cxGV3DblClick(Sender: TObject);
begin
  inherited;
  mdata2.Edit;
  mdata2['FProcessPicture']:=T_ProcessPricture['FProcessPicture'];
  mdata2['FProcessPictureId']:=T_ProcessPricture['FProcessPictureId'];
  mdata2.Post;

end;

procedure TFrm_DepBOM.TB_RightClick(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='delete from T_WorkBomRight where FDepartmentID=:FDepartmentID ';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.ExecSQL;
  finally
    ;
  end;

  try
    qry.SQL.Text:='insert into T_WorkBomRight(FAgentID,FFullNumber,FItemListID,FWorkBomRightStatus,FDepartmentID)'
                 +'select :UserFAgentID,FFullNumber,FItemListID,0,:UserFDepartmentID from V_MakeBom where js=3 ';
    qry.Parameters.FindParam('UserFAgentID').value:=UserFDepartmentID;
    qry.Parameters.FindParam('UserFDepartmentID').value:=UserFDepartmentID;
    qry.ExecSQL;
  finally
    ;
  end;

 // Messagedlg('权限设置完毕！',mtInformation,[mbok],0);

end;

procedure TFrm_DepBOM.E_FBranchFileNo1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
//    qry.SQL.Text:='select * from VT_FileItem where FDepartmentID=:FDepartmentID and FItemNumber=:FItemNumber order by FItemNumber ';
    qry.SQL.Text:='select * from VT_FileItem where FItemNumber=:FItemNumber order by FItemNumber ';
  //  qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Parameters.FindParam('FItemNumber').value:=Trim(mdata['FItemNumber']);
    qry.Open;
  finally
    ;
  end;
  selValue:=select('选择档案号','FNumber','FParentNumber','FNumber','FName',qry);
  If (Length(selValue)>0) then
  begin
    E_FBranchFileNo1.Text:=qry.FieldByName('FBranchFileNo').Value;
  end;
   If (E_FBranchFileNo1.Text<>'')  then
     TB_MakeBOM.Enabled:=True
   else
    TB_MakeBOM.Enabled:=False;


end;

procedure TFrm_DepBOM.TB_DelWorkBOMClick(Sender: TObject);
var
  qry:TADOQuery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If  ListItemFNumber2='' then
  begin
    Application.MessageBox(PChar('请选择明细！'), '错误', MB_OK +MB_ICONSTOP);
    Exit;
  end;

  If application.MessageBox(Pchar('警告：是否删除图号为：【'+P_th2+'】的生产BOM信息？'+chr(13)+chr(13)
                                 +'删除数据操作将不可恢复，确定要删除吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
  If application.MessageBox(Pchar('再次警告：是否删除图号为：【'+P_th2+'】的生产BOM信息？'+chr(13)+chr(13)
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
  Self.TB_Right.Click;
  Self.TB_Ref2.Click;
  qry.Free;


end;

procedure TFrm_DepBOM.ToolButton5Click(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  ShowPrograss('正在更新数据，请稍候……',self);
  try
    qry.SQL.Text:='select * from V_DesignBOM_Structure where FFullNumber like :FFullNumber order by FFullNumber ';
    qry.Parameters.FindParam('FFullNumber').value:=ListItemFNumber+'%';
    qry.Open;
  finally
    ;
  end;
  mdata.CopyFromDataSet(qry);
  mdata.Open;
  mdata.First;


end;

procedure TFrm_DepBOM.ActFullNameExecute(Sender: TObject);
var
  proc:TADOStoredProc;

begin
  proc:=TADOStoredProc.Create(self);
  proc.ConnectionString:=mdlData.ReadConnStr;
  proc.CommandTimeout:=500;

  try
    proc.ProcedureName:='P_MakeBOM_AutoFullName;1';
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=50;
      name := '@ListItemFParentNumber';
      value:=ListItemFNumber2;
    end;
    proc.ExecProc;
    Messagedlg('全名称生成！',mtInformation,[mbok],0);
  finally
     ;
  end;


end;

procedure TFrm_DepBOM.ActProcessSortExecute(Sender: TObject);
var
  proc:TADOStoredProc;
  P:Integer;
begin
  proc:=TADOStoredProc.Create(self);
  proc.ConnectionString:=mdlData.ReadConnStr;
  proc.CommandTimeout:=500;
  P:=mdata2['FProductID'];
  try
    proc.ProcedureName:='P_MakeBOM_PartsSort;1';
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
      value:=ListItemFNumber2;
    end;
    proc.ExecProc;
  finally
     ;
  end;
  Proc.Free;


end;

procedure TFrm_DepBOM.ToolButton6Click(Sender: TObject);
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

  //查询全名称是否为空
 { try
    qry.SQL.Text:='select distinct FFullName,FItemNo from V_MakeBOM where FFullNumber=:FFullNumber';
    qry.Parameters[0].Value:=ListItemFNumber2;
    qry.Open;
  finally
    ;
  end;
  If qry.RecordCount>0 then
     ActFullNameExecute(Sender);
      }
  If ShowMsg('是否对【'+P_th2+'】此图号进行生产工艺自动划分?','提示') then
  begin
    try
      a:='【'+mdata2['FItemNumber']+'】'+'/【'+mdata2['FPartsNumber']+'】';
      ShowPrograss('正在对'+a+'生产作业表的生产工艺划分，请稍候……',self);
      ActProcessSortExecute(Sender);

      If not MyItemList(qry,Mdata2,'V_MakeBOM','FFullNumber',ListItemFNumber2,'FFullNumber') then
      begin
        mdata2.Open;
      end;
      S2:=now();
      b:=FormatDateTime('hh:mm:ss',s2-s1);
      Messagedlg(''+a+''+'生产作业表的生产工艺划分完毕！所用时间：【'+b+'】',mtInformation,[mbok],0);
    finally
       ;
    end;
  end;


end;

end.
