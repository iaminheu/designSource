unit Main_BOM;

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
  cxCheckComboBox, RzEdit, RzLabel, cxSpinEdit, RzRadGrp;

type
  TFrm_BOM = class(TFrm_GridBass)
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
    FWorkBOMID: TcxGridDBColumn;
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
    TB_WorkBOM: TToolButton;
    ToolBar1: TToolBar;
    TB_Del2: TToolButton;
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
    Bevel2: TBevel;
    TB_Task: TToolButton;
    MData7: TdxMemData;
    DS_Mdata7: TDataSource;
    TB_Exit: TToolButton;
    ToolButton2: TToolButton;
    PC_1: TRzPageControl;
    TS_BOM: TRzTabSheet;
    cxGrid: TcxGrid;
    cxGV: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    FParts: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    FManageParts: TcxGridDBColumn;
    FWorkParts: TcxGridDBColumn;
    FPartsSort: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    y_FSuttle: TcxGridDBColumn;
    c_FSuttle: TcxGridDBColumn;
    FMaterialRate: TcxGridDBColumn;
    FNumber: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    y_FNumber: TcxGridDBColumn;
    y_FModel: TcxGridDBColumn;
    FPriceQry: TcxGridDBColumn;
    FUse: TcxGridDBColumn;
    FRation: TcxGridDBColumn;
    y_FRation: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridDBColumn15: TcxGridDBColumn;
    FFullName: TcxGridDBColumn;
    cxGL: TcxGridLevel;
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
    TB_Sort: TToolButton;
    ToolButton4: TToolButton;
    RzRG_1: TRzRadioGroup;
    CB_Type: TcxCheckBox;
    CB_Print: TcxCheckBox;
    CB_Parts: TcxComboBox;
    CB_Sum: TcxComboBox;
    procedure FormResize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TB_Del2Click(Sender: TObject);
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
    procedure MData1AfterEdit(DataSet: TDataSet);
    procedure TB_WorkBOMClick(Sender: TObject);
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
    procedure ToolButton4Click(Sender: TObject);
    procedure RzRG_1Click(Sender: TObject);
    procedure CB_TypeClick(Sender: TObject);
    procedure CB_PrintClick(Sender: TObject);
    procedure CB_PartsPropertiesChange(Sender: TObject);
    procedure frReportGetValue(const ParName: String;
      var ParValue: Variant);

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
  Frm_BOM: TFrm_BOM;


implementation

uses FRMDATA,  COMMON, FrmSelect, ProgBar, PROGRASS;




{$R *.dfm}
procedure TFrm_BOM.PartsSort;
var
  proc:TADOStoredProc;

begin
  proc:=TADOStoredProc.Create(self);
  proc.Connection:=mdlData.conn;
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
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=50;
      name := '@ListItemFParentNumber';
      value:=ListItemFParentNumber;
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftInteger;
      Direction := pdinput;
      name := '@FProductID';
      value:=P_FProductID;
    end;
    proc.ExecProc;
  finally
     ;
  end;
  Proc.Free;
end;



procedure TFrm_BOM.Set_Open2;
var i:Integer;
begin

  cxGV2.OptionsData.Editing:=True;
  Sel.Options.Editing:=True;
  IsSel.Options.Editing:=False;
  IsSel.Options.Filtering:=True;
  FCode.Options.Filtering:=True;

  P_i:=True;

end;

procedure TFrm_BOM.Set_Close2;
begin
  TB_Del2.Visible:=True;
  TB_Ref2.Enabled:=True;

//  SelBtn.Visible:=False;
// SelCancelBtn.Visible:=False;

  Sel.Options.Editing:=False;
  IsSel.Options.Editing:=False;
  IsSel.Options.Filtering:=False;
  FCode.Options.Filtering:=False;

end;



function TFrm_BOM.DelRdWorkBOM: bool;
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




procedure TFrm_BOM.FormResize(Sender: TObject);
begin
  inherited;
  Self.Caption:=UserFDepartmentName+'BOM';
end;

procedure TFrm_BOM.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=cafree;
  Frm_BOM:=nil;
end;

procedure TFrm_BOM.TB_Del2Click(Sender: TObject);
var
  qry:TADOQuery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  If application.MessageBox(Pchar('警告：是否删除图号为：【'+P_th2+'】的生产BOM信息？'+chr(13)+chr(13)
                                 +'删除数据操作将不可恢复，确定要删除吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
  If application.MessageBox(Pchar('再次警告：是否删除图号为：【'+P_th2+'】的生产BOM信息？'+chr(13)+chr(13)
                                 +'删除数据操作将不可恢复，确定要删除吗？'),'再次警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then

  mdlData.conn.BeginTrans;
  begin
    //单据删除
    If not DelRdWorkBOM then
    begin
      application.MessageBox('删除单据失败！','系统提示',MB_ICONINFORMATION);
      mdlData.conn.RollbackTrans;
      Exit;
    end;
    mdlData.conn.CommitTrans;
  end;
  Self.TB_Ref2.Click;
  qry.Free;


end;

procedure TFrm_BOM.MyTreeView1Expanding(Sender: TObject;
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

  qry.SQL.Text:='Select FNumber, FParentNumber,FName,FItemNumber,FProductID,'
               +'Isleaf from VT_DesignBOM where FParentNumber= '''
               +PTree(Node.Data).ID+''' order by FItemNumber';
  qry.open;

  PTree(Node.Data).Flag := cLoadFlag;                  // 设置已加载标志
  while not qry.Eof do
  begin
    New(P);
    P.ID := qry.FieldByName('FNumber').AsString;
    P.ParentID := qry.FieldByName('FParentNumber').AsString;
    P.FNumber1:=qry.FieldByName('FNumber').AsString;
    P.FParentNumber:=qry.FieldByName('FParentNumber').AsString;
    P.Caption := qry.FieldByName('FName').AsString;
    P.FProductID:=qry.FieldByName('FProductID').Value;
    P.Isleaf := qry.FieldByName('Isleaf').Value;
    P.Flag := cNoLoadFlag;                            // 新节点，未加载标志
    with MyTreeView1.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('Isleaf').value;
    end;
    qry.Next;
  end;


end;

procedure TFrm_BOM.MyTreeView2Expanding(Sender: TObject;
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
  qry.SQL.Text:='Select FNumber, FParentNumber,FName,FItemNumber,FProductID,'
               +'Isleaf from VT_WorkBOM where FParentNumber= '''
               +PTree(Node.Data).ID+''' order by FItemNumber';
  qry.open;

  PTree(Node.Data).Flag := cLoadFlag;                  // 设置已加载标志
  while not qry.Eof do
  begin
    New(P);
    P.ID := qry.FieldByName('FNumber').AsString;
    P.ParentID := qry.FieldByName('FParentNumber').AsString;
    P.FNumber2:=qry.FieldByName('FNumber').AsString;
    P.Caption := qry.FieldByName('FName').AsString;
    P.FProductID:=qry.FieldByName('FProductID').Value;
    P.Isleaf := qry.FieldByName('Isleaf').Value;
    P.Flag := cNoLoadFlag;                            // 新节点，未加载标志
    with MyTreeView2.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('Isleaf').value;
    end;
    qry.Next;
  end;
end;

procedure TFrm_BOM.MyTreeView1Change(Sender: TObject; Node: TTreeNode);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If Node = nil then Exit;
  with PTree(Node.Data)^ do
  begin
    ListItemFNumber1:=trim(PTree(Node.Data).FNumber1);
    ListItemFParentNumber:=trim(PTree(Node.Data).FParentNumber);
    P_th1:=PTree(Node.Data).Caption;
    P_FProductID:=PTree(Node.Data).FProductID;
    If PTree(Node.Data).Isleaf=1 then
    begin
      If not MyItemList(qry,Mdata,'V_DesignBOM_Structure','FFullNumber',ListItemFNumber1,'FFullNumber') then
      begin
        mdata.Open;
        mdata.First;
      //  cxGvColumn(cxGv1,Mdata1);
      end;
    end
    else
    begin
      mdata.Close;
    end;
  end;
end;

procedure TFrm_BOM.MyTreeView2Change(Sender: TObject; Node: TTreeNode);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If Node = nil then Exit;
  with PTree(Node.Data)^ do
  begin
    ListItemFNumber2:=trim(PTree(Node.Data).FNumber2);
    P_th2:=PTree(Node.Data).Caption;
    P_FProductID:=PTree(Node.Data).FProductID;
    If PTree(Node.Data).Isleaf=1 then
    begin
      If not MyItemList(qry,Mdata2,'V_WorkBOM','FFullNumber',ListItemFNumber2,'FFullNumber') then
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

procedure TFrm_BOM.TB_Ref1Click(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If not TreeVeiwListWhere(qry,MyTreeView1,'VT_DesignBOM',' and FK3ID='+IntToStr(UserFK3ID) ) then
 // If not TreeVeiwList(qry,MyTreeView1,'VT_DesignBOM') then
  begin
    Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;
end;

procedure TFrm_BOM.TB_Edit1Click(Sender: TObject);
begin
  inherited;
  cxGV1.OptionsData.Editing:=True;
  FPartsSort.Options.Editing:=True;
  TB_Edit1.Enabled:=False;
end;

procedure TFrm_BOM.TB_SaveClick(Sender: TObject);
var
  IsEdit:bool;
  qry: TADOQuery;
  I_index:integer;
begin
  I_index:=mData.RecNo ;
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

  If (I_index<mData1.RecordCount) and (I_index<>-1) then
     mData1.RecNo :=I_index
  else
     mData1.Last;
 

  TB_Save.Visible:=False;
  TB_Edit1.Enabled:=True;


end;

procedure TFrm_BOM.MData1AfterEdit(DataSet: TDataSet);
begin
  inherited;
  DataSet['IsEdit']:=True;
  TB_Save.Visible:=True;
end;

procedure TFrm_BOM.TB_WorkBOMClick(Sender: TObject);
var
  proc:TADOStoredProc;
  qry: TADOQuery;
begin
  proc:=TADOStoredProc.Create(self);
  proc.ConnectionString:=mdlData.ReadConnStr;
  proc.CommandTimeout:=500;

  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='select * from T_WorkBOM where FFullNumber like :FFullNumber';
    qry.Parameters.FindParam('FFullNumber').Value:=ListItemFNumber1+'%';
    qry.Open;
  finally
     ;
  end;
  If qry.RecordCount>0 then
  begin
    Messagedlg('生产BOM【'+P_th1+'】数据已经存在,不允许重复导入！',mtInformation,[mbok],0);
    Exit;
  end;
  If ShowMsg('是否生成图号:【'+P_th1+'】的生产BOM？','提示') then
  begin
    ShowPrograss('正在导入【'+P_th1+'】的生产BOM，请稍候……',self);
    try
      proc.ProcedureName:='P_WorkBOM;1';
      with proc.Parameters.AddParameter do
      begin
        DataType := ftString;
        Direction := pdinput;
        size:=20;
        name := '@FFullNumber';
        value:=ListItemFNumber1;
      end;
      proc.ExecProc;
      Messagedlg('生产BOM数据已经成功生成！',mtInformation,[mbok],0);
    finally
       ;
    end;
  end;

end;

procedure TFrm_BOM.TB_Out2Click(Sender: TObject);
begin
  inherited;
  If mdata2.RecordCount>0 then
     ExportToExcel(cxGrid2,True,TRue)
  else
     Application.MessageBox(PChar('没有需要导出的数据！'), '错误', MB_OK +MB_ICONSTOP);

end;

procedure TFrm_BOM.TB_Ref2Click(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  //If not TreeVeiwList(qry,MyTreeView2,'VT_WorkBOM') then
  If not TreeVeiwListWhere(qry,MyTreeView2,'VT_WorkBOM',' and FK3ID='+IntToStr(UserFK3ID) ) then
  begin
    Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;

end;

procedure TFrm_BOM.TB_Down1Click(Sender: TObject);
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
    P_i:=True;
  end;

end;

procedure TFrm_BOM.TB_Down2Click(Sender: TObject);
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

procedure TFrm_BOM.FormShow(Sender: TObject);
begin
  inherited;
  TB_Ref1.Click;
  TB_Ref2.Click;

end;

procedure TFrm_BOM.SelRemarkPropertiesCloseUp(Sender: TObject);
var p01,p02,p03,p05,p06,p07,p10,p11,p12:string;
    p09,p04,i,j,P_xh:Integer;
    I_index:integer;
begin
  inherited;
end;

procedure TFrm_BOM.TB_PartsSortClick(Sender: TObject);
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

procedure TFrm_BOM.TB_TaskClick(Sender: TObject);
begin
  If mdata2.RecordCount>0 then
  begin
    FrReport.LoadFromFile(ExtractFileDir(Application.ExeName)+'\Report_DesignBOM_WorkTask.frf');
    FrReport.ShowReport;
  end
  else
    Application.MessageBox(PChar('没有需要打印的数据！'), '错误', MB_OK +MB_ICONSTOP);


end;

procedure TFrm_BOM.FormCreate(Sender: TObject);
begin
  inherited;
  P_Parts:='FManageParts';
  TB_PartsSort.Enabled:= mdlData.CheckFrmRights(TFrm_BOM.ClassName,'新增');
  TB_Edit1.Enabled:= mdlData.CheckFrmRights(TFrm_BOM.ClassName,'新增');
  TB_WorkBOM.Enabled:= mdlData.CheckFrmRights(TFrm_BOM.ClassName,'新增');
  TB_Out.Enabled:= mdlData.CheckFrmRights(TFrm_BOM.ClassName,'导出');
  TB_Del2.Enabled:= mdlData.CheckFrmRights(TFrm_BOM.ClassName,'删除');
end;

procedure TFrm_BOM.TB_SortClick(Sender: TObject);
var
  proc:TADOStoredProc;
  bz:String;
begin
  proc:=TADOStoredProc.Create(self);
  proc.Connection:=mdlData.conn;
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

procedure TFrm_BOM.ToolButton4Click(Sender: TObject);
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
    mdata1.CopyFromDataSet(proc);
    cxGvColumn(cxGv,Mdata1);
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

procedure TFrm_BOM.RzRG_1Click(Sender: TObject);
begin
  inherited;
  If RzRG_1.ItemIndex=0 then
     TB_Sort.Caption:='部件汇总';
  If RzRG_1.ItemIndex=1 then
     TB_Sort.Caption:='材料汇总';

end;

procedure TFrm_BOM.CB_TypeClick(Sender: TObject);
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

procedure TFrm_BOM.CB_PrintClick(Sender: TObject);
begin
  inherited;
  If CB_Print.Checked=True then
    CB_Type.Properties.Caption:='汇总';

end;

procedure TFrm_BOM.CB_PartsPropertiesChange(Sender: TObject);
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

procedure TFrm_BOM.frReportGetValue(const ParName: String;
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

end.
