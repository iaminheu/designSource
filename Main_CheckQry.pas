unit Main_CheckQry;

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
  TFlatPanelUnit,Comobj, cxLookAndFeelPainters, cxSpinEdit, RzStatus,
  ActnList, RzLabel, cxButtons,// cxLookAndFeelPainters,   cxButtons,  cxSpinEdit,  RzLabel, ActnList, RzStatus
   cxTimeEdit, jpeg,
  cxCheckComboBox, cxGridBandedTableView, cxGridDBBandedTableView, DBTables,
  Menus;

type
  TFrm_CheckQry = class(TFrm_GridBass)
    ImageList: TImageList;
    frReport: TfrReport;
    frDBDataSet: TfrDBDataSet;
    PC_2: TRzPageControl;
    TS_Check: TRzTabSheet;
    TS_Stock: TRzTabSheet;
    PanelBkGnd: TPanel;
    MData_CList: TdxMemData;
    DS_Mdata_CList: TDataSource;
    Panel7: TPanel;
    RzSizePanel3: TRzSizePanel;
    RzSizePanel1: TRzSizePanel;
    MyTreeView_SList: TTreeView;
    Image2: TImage;
    Label1: TLabel;
    ToolBar1: TToolBar;
    TB_Ref: TToolButton;
    Label9: TLabel;
    E_FClientFullName: TcxTextEdit;
    TB_Exit: TToolButton;
    TB_Prin: TToolButton;
    Panel3: TPanel;
    Panel11: TPanel;
    Label3: TLabel;
    Image3: TImage;
    Label4: TLabel;
    ToolBar5: TToolBar;
    TB_Ref3: TToolButton;
    RzSizePanel6: TRzSizePanel;
    RzLabel9: TRzLabel;
    RSP_StockIn: TRzPanel;
    RSP_List: TPageControl;
    TabSheet3: TTabSheet;
    cxGrid_SList: TcxGrid;
    cxGV_SList: TcxGridDBTableView;
    Num_3: TcxGridDBColumn;
    th_3: TcxGridDBColumn;
    mc_3: TcxGridDBColumn;
    gg_3: TcxGridDBColumn;
    SelRemark_3: TcxGridDBColumn;
    FSumQry_3: TcxGridDBColumn;
    FSuttle_3: TcxGridDBColumn;
    FSumSuttle_3: TcxGridDBColumn;
    FStockInListRemark_3: TcxGridDBColumn;
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
    cxGL_SList: TcxGridLevel;
    RSP_Item: TRzSizePanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    cxGrid_SItem: TcxGrid;
    cxGV_SItem: TcxGridDBTableView;
    FBranchItemNumber_M3: TcxGridDBColumn;
    FPartsCode_M3: TcxGridDBColumn;
    FWorkPartsNum_M3: TcxGridDBColumn;
    FWorkParts_M3: TcxGridDBColumn;
    FPartsName_M3: TcxGridDBColumn;
    FStockInStatusNotes_M: TcxGridDBColumn;
    FStockInStatus_M: TcxGridDBColumn;
    FStockInItemDate_M3: TcxGridDBColumn;
    FStockInWrite_M3: TcxGridDBColumn;
    FItemNumber_M3: TcxGridDBColumn;
    FBranchFileNo_M3: TcxGridDBColumn;
    FStockInWriteDate_M3: TcxGridDBColumn;
    FFileNo_M3: TcxGridDBColumn;
    FClientFullName_M3: TcxGridDBColumn;
    FStockInItemID_M3: TcxGridDBColumn;
    FStockInUserNum_M3: TcxGridDBColumn;
    FStockInSubmitDate_M: TcxGridDBColumn;
    FStockInUserNumDate_M3: TcxGridDBColumn;
    FItemId_M3: TcxGridDBColumn;
    FItemModel_M3: TcxGridDBColumn;
    FProductID_M3: TcxGridDBColumn;
    FStockInCheck_M: TcxGridDBColumn;
    FStockInCheckDate_M: TcxGridDBColumn;
    FPlanTenderAudit_M: TcxGridDBColumn;
    FPlanTenderAuditDate_M: TcxGridDBColumn;
    FPlanTenderPushDown_M: TcxGridDBColumn;
    FPlanTenderPushDownDate_M: TcxGridDBColumn;
    FPlanTenderID_M: TcxGridDBColumn;
    FPlanTenderNo_M: TcxGridDBColumn;
    cxGL_SItem: TcxGridLevel;
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
    MData_SList: TdxMemData;
    MData_SListFCode: TStringField;
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
    MData_SListNum: TStringField;
    MData_SListabc: TStringField;
    MData_SListFFStockInListRemark: TStringField;
    MData_SListFStockInListID: TIntegerField;
    MData_SListFInSumSuttle: TFloatField;
    MData_SListFInQry: TFloatField;
    MData_SListFInSumQry: TFloatField;
    DS_MdataSList: TDataSource;
    DS_Mdata_SItem: TDataSource;
    RzSizePanel2: TRzSizePanel;
    PC_CList: TPageControl;
    TS_List: TTabSheet;
    cxGrid_CList: TcxGrid;
    cxGV_CList: TcxGridDBTableView;
    FCheckListNum: TcxGridDBColumn;
    th: TcxGridDBColumn;
    mc: TcxGridDBColumn;
    gg: TcxGridDBColumn;
    Sel: TcxGridDBColumn;
    FCheckQry: TcxGridDBColumn;
    FSuttle: TcxGridDBColumn;
    FCheckYesQry: TcxGridDBColumn;
    FCheckNoQry: TcxGridDBColumn;
    FSumSuttle: TcxGridDBColumn;
    FCheckListRemark: TcxGridDBColumn;
    FCheckNum: TcxGridDBColumn;
    FFullNumber: TcxGridDBColumn;
    FCheckItemID: TcxGridDBColumn;
    FCheckListID: TcxGridDBColumn;
    cxGL_CList: TcxGridLevel;
    MData_CItem: TdxMemData;
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
    DS_Mdata_CItem: TDataSource;
    actionList: TActionList;
    ActApp: TAction;
    ActSave: TAction;
    ActOut: TAction;
    ActEdit: TAction;
    ActDel: TAction;
    Act_Submit: TAction;
    Act_Audit: TAction;
    stbBar: TRzStatusBar;
    RzClockStatus1: TRzClockStatus;
    RzKeyStatus1: TRzKeyStatus;
    RzKeyStatus2: TRzKeyStatus;
    RzKeyStatus3: TRzKeyStatus;
    stbMsg: TRzFieldStatus;
    SaveDialog1: TSaveDialog;
    TB_Check: TToolButton;
    FSumQry: TcxGridDBColumn;
    FFullNumber_M3: TcxGridDBColumn;
    FSumCheckYesQry_3: TcxGridDBColumn;
    Act_CheckQry: TAction;
    RSP_CItem: TRzSizePanel;
    PageControl2: TPageControl;
    TabSheet2: TTabSheet;
    cxGrid_CItem: TcxGrid;
    cxGV_CItem: TcxGridDBTableView;
    FCheckNum_Item: TcxGridDBColumn;
    FTeamName_Item: TcxGridDBColumn;
    FBranchItemNumber_Item: TcxGridDBColumn;
    FClientFullName_Item: TcxGridDBColumn;
    FCheckStatusNotes_Item: TcxGridDBColumn;
    FCheckStatus_Item: TcxGridDBColumn;
    FCheckWrite_Item: TcxGridDBColumn;
    FCheckWriteDate_Item: TcxGridDBColumn;
    FCheckSubmitDate_Item: TcxGridDBColumn;
    FCheckCheck_Item: TcxGridDBColumn;
    FCheckCheckDate_Item: TcxGridDBColumn;
    FAgentName_Item: TcxGridDBColumn;
    FCheckNo_Item: TcxGridDBColumn;
    FAgentID_Item: TcxGridDBColumn;
    FCheckWriteID_Item: TcxGridDBColumn;
    FCheckItemID_Item: TcxGridDBColumn;
    cxGL_CItem: TcxGridLevel;
    P_Btn3: TPanel;
    FStockCheckNum_3: TcxGridDBColumn;
    FSumCheckQry_3: TcxGridDBColumn;
    FWorkPartsNum_Item: TcxGridDBColumn;
    FWorkParts_Item: TcxGridDBColumn;
    TB_RecordRef: TToolButton;
    FCheckICQCID_Item: TcxGridDBColumn;
    FCheckICQC_Item: TcxGridDBColumn;
    PC_Check: TPageControl;
    TS_CheckList: TTabSheet;
    TS_Write: TTabSheet;
    MyTreeView_CheckList: TTreeView;
    TS_ICQC: TTabSheet;
    MyTreeView_CheckWrite: TTreeView;
    MyTreeView_CheckICQC: TTreeView;
    FFactureName_M3: TcxGridDBColumn;
    FCheckDetail_3: TcxGridDBColumn;
    FSumCheckNoQry_3: TcxGridDBColumn;
    TB_CheckQry: TToolButton;
    Act_Set_Open_M: TAction;
    Act_Set_Close_M: TAction;
    Act_Set_Close: TAction;
    Act_Set_Open: TAction;
    FTeamID_Item: TcxGridDBColumn;
    FWorkShop_Item: TcxGridDBColumn;
    TS_Team: TTabSheet;
    TS_Item: TTabSheet;
    MyTreeView_CheckTeam: TTreeView;
    MyTreeView_CheckItem: TTreeView;
    Act_PC_CheckList: TAction;
    TS_CheckQry: TRzTabSheet;
    Panel1: TPanel;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
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
    cxGridLevel1: TcxGridLevel;
    TS_Sum: TTabSheet;
    cxGrid_CSum: TcxGrid;
    cxGV_CSum: TcxGridDBTableView;
    FCheckNum_Sum: TcxGridDBColumn;
    FCheckListNum_Sum: TcxGridDBColumn;
    th_Sum: TcxGridDBColumn;
    mc_Sum: TcxGridDBColumn;
    gg_Sum: TcxGridDBColumn;
    FSumQry_Sum: TcxGridDBColumn;
    FCheckQry_Sum: TcxGridDBColumn;
    FSuttle_Sum: TcxGridDBColumn;
    FCheckYesQry_Sum: TcxGridDBColumn;
    FCheckNoQry_Sum: TcxGridDBColumn;
    FSumSuttle_Sum: TcxGridDBColumn;
    FCheckListRemark_Sum: TcxGridDBColumn;
    FFullNumber_Sum: TcxGridDBColumn;
    FCheckItemID_Sum: TcxGridDBColumn;
    FCheckListID_Sum: TcxGridDBColumn;
    cxGL_CSum: TcxGridLevel;
    FBranchItemNumber_Sum: TcxGridDBColumn;
    FTeamName_Sum: TcxGridDBColumn;
    FWorkShop_Sum: TcxGridDBColumn;
    FCheckICQC_Sum: TcxGridDBColumn;
    P_Btn: TPanel;
    Label26: TLabel;
    E_FTeamName: TcxButtonEdit;
    E_WorkShop: TcxButtonEdit;
    E_FTeamID: TcxButtonEdit;
    E_FCheckCheckDate_1: TcxDateEdit;
    E_FCheckCheckDate_2: TcxDateEdit;
    TB_Ref_CheckRecord: TToolButton;
    TS_Date: TTabSheet;
    MyTreeView_CheckDate: TTreeView;
    PM: TPopupMenu;
    N_Edit: TMenuItem;
    N_Filter: TMenuItem;
    N_Sort: TMenuItem;
    N_Group: TMenuItem;
    N_Set: TMenuItem;
    N_Out: TMenuItem;
    Act_Menu: TAction;
    Act_Menu_Set: TAction;
    procedure FormResize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TB_EXITClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);

    procedure NumPropertiesCloseUp(Sender: TObject);
    procedure MyTreeView_CheckListExpanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure MyTreeView_SListExpanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure MyTreeView_CheckListChange(Sender: TObject; Node: TTreeNode);
    procedure MyTreeView_SListChange(Sender: TObject; Node: TTreeNode);
    procedure TB_RefClick(Sender: TObject);
    procedure TB_Ref3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ToolButton12Click(Sender: TObject);
    procedure SelPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxGV_SItemFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure cxGV_CItemFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure TB_CheckClick(Sender: TObject);
    procedure TB_PrinClick(Sender: TObject);
    procedure Act_CheckQryExecute(Sender: TObject);
    procedure cxGV_SListCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure MyTreeView_CheckWriteExpanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure MyTreeView_CheckWriteChange(Sender: TObject; Node: TTreeNode);
    procedure MyTreeView_CheckICQCExpanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure MyTreeView_CheckICQCChange(Sender: TObject; Node: TTreeNode);
    procedure PC_CheckChange(Sender: TObject);
    procedure MyTreeView_CheckTeamExpanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure MyTreeView_CheckItemExpanding(Sender: TObject;
      Node: TTreeNode; var AllowExpansion: Boolean);
    procedure MyTreeView_CheckTeamChange(Sender: TObject; Node: TTreeNode);
    procedure MyTreeView_CheckItemChange(Sender: TObject; Node: TTreeNode);
    procedure Act_PC_CheckListExecute(Sender: TObject);
    procedure E_FTeamNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure MyTreeView_CheckDateExpanding(Sender: TObject;
      Node: TTreeNode; var AllowExpansion: Boolean);
    procedure MyTreeView_CheckDateChange(Sender: TObject; Node: TTreeNode);
    procedure TB_Ref_CheckRecordClick(Sender: TObject);
    procedure MyTreeView_CheckItemDblClick(Sender: TObject);
    procedure Act_MenuExecute(Sender: TObject);
    procedure Act_Menu_SetExecute(Sender: TObject);
    procedure N_EditClick(Sender: TObject);
    procedure N_FilterClick(Sender: TObject);
    procedure N_SortClick(Sender: TObject);
    procedure N_GroupClick(Sender: TObject);
    procedure N_SetClick(Sender: TObject);
    procedure N_OutClick(Sender: TObject);
    procedure cxGrid_CItemContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure cxGrid_CListContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure cxGrid_SItemContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure cxGrid_SListContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure cxGrid_CSumContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
  private
    { Private declarations }

  public
    P_i:boolean;
    P_Status,P_state,P_CheckItemID,P_FTeamID:Integer;
    ListFNumber_CList,ListFNumber_CheckWrite,ListFNumber_CheckICQC,ListFNumber_CheckTeam,ListFNumber_CheckItem,ListFNumber_CheckDate:string;
    P_Isleaf_CheckWrite,P_Isleaf_CheckICQC,P_Isleaf_CheckTeam,P_Isleaf_CheckItem,P_Isleaf_CheckDate :Integer;
    P_List_CheckWrite :string;
    GV,Gr,Gm,Mn:string;

    { Public declarations }
  end;

var
  Frm_CheckQry: TFrm_CheckQry;


implementation

uses FRMDATA,  COMMON, FrmSelect, ProgBar, PROGRASS;

{$R *.dfm}


procedure TFrm_CheckQry.FormResize(Sender: TObject);
begin
  inherited;
  Self.Caption:=UserFDepartmentName+'检验单查询';
end;

procedure TFrm_CheckQry.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=cafree;
  Frm_CheckQry:=nil;
end;

procedure TFrm_CheckQry.TB_EXITClick(Sender: TObject);
begin
  inherited;
  Self.Close;
end;

procedure TFrm_CheckQry.FormCreate(Sender: TObject);
begin
  inherited;
 { TS_Stock.TabEnabled:=False;
  Case mdlData.CheckFrmRights(TFrm_CheckQry.ClassName,'查询') of
      True:
      begin
        PC_Check.ActivePage:=TS_CheckList;
        TS_CheckList.TabVisible:=True;
        TS_Write.TabVisible:=False;
        TS_ICQC.TabVisible:=False;
      end;
   end;

  If mdlData.CheckFrmRights(TFrm_CheckQry.ClassName,'查询')=True then
  begin
    PC_Check.ActivePage:=TS_CheckList;
    TS_CheckList.TabVisible:=True;
    TS_Write.TabVisible:=False;
    TS_ICQC.TabVisible:=False;
  end;

  If mdlData.CheckFrmRights(TFrm_CheckQry.ClassName,'新增')=True then
  begin
    PC_Check.ActivePage:=TS_Write;
    TS_ICQC.TabVisible:=False;
    TS_CheckList.TabVisible:=False;
    TS_Write.TabVisible:=True;
  end;
  If mdlData.CheckFrmRights(TFrm_CheckQry.ClassName,'审核')=True then
  begin
    PC_Check.ActivePage:=TS_ICQC;
    TS_ICQC.TabVisible:=True;
    TS_Write.TabVisible:=False;
    TS_CheckList.TabVisible:=False;
  end;
      }
  P_FTeamID:=0;
end;

procedure TFrm_CheckQry.NumPropertiesCloseUp(Sender: TObject);
Var i:integer;
begin
  inherited;
  MData_SList.Edit;
  MData_SList.Post;
  MData_SList.Edit;


  If pos('(',MData_SList['Num'])=0 then
  begin
    If StrToInt(MData_SList['Num'])>0 then
    begin
      i:=StrToInt(MData_SList['Num']);
      MData_SList['FFullNumber']:=MData_SList['ssFullNumber']+'.'+Format('%.4d',[i]);
    end
    else
      MData_SList['FFullNumber']:=MData_SList['FullNumber'];
  end
  else
  begin
    i:=StrToInt(Copy(MData_SList['Num'],pos('(',MData_SList['Num'])+1,(pos(')',MData_SList['Num'])-pos('(',MData_SList['Num'])-1)));
    MData_SList['FFullNumber']:=MData_SList['ssFullNumber']+'.'+Format('%.4d',[i]);
  end;

end;

procedure TFrm_CheckQry.MyTreeView_CheckListExpanding(Sender: TObject;
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

  qry.SQL.Text:='Select * from VT_Check where FParentNumber= '''
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
    with MyTreeView_CheckList.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('Isleaf').value;
    end;
    qry.Next;
  end;
end;

procedure TFrm_CheckQry.MyTreeView_SListExpanding(Sender: TObject;
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
  qry.SQL.Text:='Select * from VT_Stock_Dep_Team where FParentNumber= '''
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
    with MyTreeView_SList.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('Isleaf').value;
    end;
    qry.Next;
  end;
end;

procedure TFrm_CheckQry.MyTreeView_CheckListChange(Sender: TObject; Node: TTreeNode);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If Node = nil then Exit;
  with PTree(Node.Data)^ do
  begin
    ListFNumber_CList:=trim(PTree(Node.Data).FNumber);
    P_List_CList:=PTree(Node.Data).Caption;
    P_Isleaf_CList:=PTree(Node.Data).Isleaf;
    mdata_CList.DisableControls;
    cxGV_CList.DataController.DataModeController.GridMode:=True;
    cxGV_CList.DataController.DataModeController.SmartRefresh:=True;

    Act_PC_CheckList.Execute;

    mdata_CList.EnableControls;
    cxGV_CList.DataController.DataModeController.GridMode:=False;
    cxGV_CList.DataController.DataModeController.SmartRefresh:=False;
  end;
end;

procedure TFrm_CheckQry.MyTreeView_SListChange(Sender: TObject; Node: TTreeNode);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If Node = nil then Exit;
  with PTree(Node.Data)^ do
  begin
    ListFNumber_SList:=trim(PTree(Node.Data).FNumber);
    P_List_SList:=trim(PTree(Node.Data).Caption);
    P_Isleaf_SList:=PTree(Node.Data).Isleaf;
    P_Status:=PTree(Node.Data).Status;
    If PTree(Node.Data).Isleaf>0 then
    begin
       If MyItemListwhere(qry,mdata_SItem,'V_StockItem','cast(FTeamID as nvarchar(20))+'';''+cast(FFactureID as nvarchar(20))+'';''+FFullNumber',ListFNumber_SList,' and FFactureID='+IntToStr(P_Status),'FFullNumber',) then
       If MyItemListwhere(qry,MData_SList,'V_StockList','cast(FTeamID as nvarchar(20))+'';''+cast(FFactureID as nvarchar(20))+'';''+FFullNumber',ListFNumber_SList,' and FFactureID='+IntToStr(P_Status),'FFullNumber',) then
    end
    else
    begin
      mdata_SItem.Close;
      MData_SList.Close;
    end;

    If PTree(Node.Data).Isleaf>=3 then
    begin
      P_Btn3.Visible:=True;
      Act_CheckQry.Execute;  //检验数量计算
    end
    else
       P_Btn3.Visible:=False;

    MData_SList.EnableControls;
  end;

end;

procedure TFrm_CheckQry.TB_RefClick(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If PC_Check.ActivePage=TS_CheckList then
  begin
    If not TreeVeiwListWhere(qry,MyTreeView_CheckList,'VT_Check',' and FAgentID='+IntToStr(UserFDepartmentID) ) then
    Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;
  If PC_Check.ActivePage=TS_Write then
  begin
     If not TreeVeiwListWhere(qry,MyTreeView_CheckWrite,'VT_Check_Write',' and FAgentID='+IntToStr(UserFDepartmentID)) then
     Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;
  If PC_Check.ActivePage=TS_ICQC then
  begin
     If not TreeVeiwListWhere(qry,MyTreeView_CheckICQC,'VT_Check_ICQC',' and FAgentID='+IntToStr(UserFDepartmentID) ) then
     Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;
  If PC_Check.ActivePage=TS_Team then
  begin
     If not TreeVeiwListWhere(qry,MyTreeView_CheckTeam,'VT_Check_Team',' and FAgentID='+IntToStr(UserFDepartmentID) ) then
     Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;
  If PC_Check.ActivePage=TS_Item then
  begin
     If not TreeVeiwListWhere(qry,MyTreeView_CheckItem,'VT_Check_Item',' and FAgentID='+IntToStr(UserFDepartmentID) ) then
     Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;
  If PC_Check.ActivePage=TS_Date then
  begin
     If not TreeVeiwListWhere(qry,MyTreeView_CheckDate,'VT_Check_Date',' and FAgentID='+IntToStr(UserFDepartmentID) ) then
     Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;
end;

procedure TFrm_CheckQry.TB_Ref3Click(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If UserFDepartmentsort=1 then //事业部
  begin
    If not TreeVeiwListWhere(qry,MyTreeView_SList,'VT_Stock',' and FDepartmentID='+IntToStr(UserFDepartmentID)+' and FAgentID='+IntToStr(UserFDepartmentID)) then
      Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;
  If UserFDepartmentsort=2 then   //子公司
  begin
    If not TreeVeiwListWhere(qry,MyTreeView_SList,'VT_Stock_Dep_Team',' and (FTeamID='+IntToStr(P_FTeamID)+') and (FFactureID='+IntToStr(UserFDepartmentID)+') ') then
    Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;

end;

procedure TFrm_CheckQry.FormShow(Sender: TObject);
begin
  inherited;
  TB_Ref.Click;
  TB_Ref3.Click;

end;

procedure TFrm_CheckQry.ToolButton12Click(Sender: TObject);
begin
  inherited;
  If MData_SList.RecordCount>0 then
     ExportToExcel(cxGrid_SList,True,TRue)
  else
     Application.MessageBox(PChar('没有需要导出的数据！'), '错误', MB_OK +MB_ICONSTOP);

end;

procedure TFrm_CheckQry.SelPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  If (MData_CItem['FTeamID']=0) or (MData_CItem['FTeamID']=Null) then
  begin
    application.MessageBox('请选择冷作班组！','系统提示',MB_ICONINFORMATION);
    Exit;
  end
  else
     P_FTeamID:=MData_CItem['FTeamID'];
  TS_Stock.TabEnabled:=True;
  PC_2.ActivePage:=TS_Stock;
  TS_Check.TabEnabled:=True;

end;

procedure TFrm_CheckQry.cxGV_SItemFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
var qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If (mdata_SItem['FStockItemID']<>0) and (mdata_SItem['FStockItemID']<>Null) then
  begin
    If MyItemListID(qry,MData_SList,'V_StockList',' FStockItemID='+IntToStr(mdata_SItem['FStockItemID']),'FFullNumber',) then
  end;
end;

procedure TFrm_CheckQry.cxGV_CItemFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
var qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If (MData_CItem['FCheckItemID']<>0) and (MData_CItem['FCheckItemID']<>null) then
  begin
    If MyItemListID(qry,mdata_CList,'V_CheckList',' FCheckItemID='+IntToStr(MData_CItem['FCheckItemID']),'FFullNumber',) then
    begin
      cxGvColumn(cxGv_CList,Mdata_CList);
    end;
  end;
  
end;

procedure TFrm_CheckQry.TB_CheckClick(Sender: TObject);
var
  Query_Sp:TADOStoredProc;
  i,k,s,ReNum,ReNumLoop,R_Count,L:Integer;
  ExcelApp,MyWorkBook,mysheet,vLastSheet: Variant;
  filepath,savefilepath,Sqlstr,copystart,copyend,copystart1,aa:string;
  ListQry:Tadoquery;
  qry,qry1:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry1:=TAdoQuery.Create(self);
  qry1.ConnectionString:=mdlData.ReadConnStr;

  filepath:=Extractfilepath(application.ExeName)+'检验合格单模版.xls';
  if (mdata_CList.Active) and (mdata_CList.recordcount>0) then
  Begin
    SaveDialog1.FileName:='检验合格单'+P_List_CList;
    SaveDialog1.Filter:='.xls';
    SaveDialog1.Execute;

    if (mdata_CList.FieldByName('FBranchItemNumber').AsString<>'') Or (mdata_CList.FieldByName('FCheckNum').AsString<>Null) then
        savefilepath:=SaveDialog1.FileName+'.xls';

    if FileExists(savefilepath) then
    begin
      DeleteFile(savefilepath) ;
    end;
    stbMsg.Caption:='提示信息：正在导出检验合格单:'+P_List_CList;
    stbBar.Refresh;

    ExcelApp:= CreateOleObject('Excel.Application' );
    ExcelApp.DisplayAlerts:=False;                  //不显示提示框
    MyWorkBook:=ExcelApp.WorkBooks.Open( filepath );   //打开模版
    //ExcelApp.Visible:=True;

    try
      If PC_Check.ActivePage=TS_CheckList then
         qry.SQL.Text:='select distinct FCheckNum from  V_CheckList where FAgentID=:FAgentID and FCheckFullNumber like :FCheckFullNumber';
     If PC_Check.ActivePage=TS_Write then
         qry.SQL.Text:='select distinct FCheckNum from  V_CheckList where FAgentID=:FAgentID and FCheckFullNumberWrite like :FCheckFullNumberWrite';
     If PC_Check.ActivePage=TS_ICQC then
         qry.SQL.Text:='select distinct FCheckNum from  V_CheckList where FAgentID=:FAgentID and FCheckFullNumberICQC like :FCheckFullNumberICQC';
      qry.Parameters.FindParam('FAgentID').value:= UserFDepartmentID;
      If PC_Check.ActivePage=TS_CheckList then
         qry.Parameters.FindParam('FCheckFullNumber').value:= ListFNumber_CList+'%';
      If PC_Check.ActivePage=TS_Write then
         qry.Parameters.FindParam('FCheckFullNumberWrite').value:= ListFNumber_CheckWrite+'%';
      If PC_Check.ActivePage=TS_ICQC then
         qry.Parameters.FindParam('FCheckFullNumberICQC').value:= ListFNumber_CheckICQC+'%';
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
       If PC_Check.ActivePage=TS_CheckList then
          qry1.SQL.Text:='select * from V_CheckList where FAgentID=:FAgentID and FCheckNum=:FCheckNum order by FCheckFullNumber,FCheckListNum';
       If PC_Check.ActivePage=TS_Write then
          qry1.SQL.Text:='select * from V_CheckList where FAgentID=:FAgentID and FCheckNum=:FCheckNum order by FCheckFullNumberWrite,FCheckListNum';
       If PC_Check.ActivePage=TS_ICQC then
          qry1.SQL.Text:='select * from V_CheckList where FAgentID=:FAgentID and FCheckNum=:FCheckNum order by FCheckFullNumberICQC,FCheckListNum';
       qry1.Parameters.FindParam('FAgentID').value:= UserFDepartmentID;
       qry1.Parameters.FindParam('FCheckNum').value:= qry.FieldByName('FCheckNum').Value;
       qry1.Open;
     finally
       ;
     end;
     if qry1.RecordCount>0 then
     begin
       mdata_CList.Close;
       mdata_CList.CopyFromDataSet(qry1);
     end;
     vLastSheet:=MyWorkBook.Sheets[MyWorkBook.Sheets.Count];
     MyWorkBook.Sheets[1].Copy(EmptyParam,vLastSheet);
     MyWorkBook.WorkSheets[k].Name:=IntToStr(k)+mdata_CList['FCheckNum'];
     MyWorkBook.WorkSheets[k].Activate;

      //标题
      //MyWorkBook.WorkSheets[k].Cells[1,1].Value:=AnsiReplaceStr(MyWorkBook.WorkSheets[k].Cells[1,1].Value,'A',UserFDepartmentName); //公司名称

      MyWorkBook.WorkSheets[k].Cells[4,2].Value := Trim(mdata_CList.FieldByName('FAgentName').AsString); //送检单位
      MyWorkBook.WorkSheets[k].Cells[4,7].Value := Trim(mdata_CList.FieldByName('FBranchItemNumber').AsString); //图号
      MyWorkBook.WorkSheets[k].Cells[4,9].Value := Trim(mdata_CList.FieldByName('FFileNo').AsString); //档案号
      MyWorkBook.WorkSheets[k].Cells[4,11].Value := Trim(mdata_CList.FieldByName('FDepartmentNum').AsString)+Trim(mdata_CList.FieldByName('FCheckNum').AsString); //单据编号  

      MyWorkBook.WorkSheets[k].Cells[5,2].Value := Trim(mdata_CList.FieldByName('FDepartmentName').AsString); //项目部门
      MyWorkBook.WorkSheets[k].Cells[5,7].Value := Trim(mdata_CList.FieldByName('FItemModel').AsString); //规格型号
      MyWorkBook.WorkSheets[k].Cells[5,11].Value := Trim(mdata_CList.FieldByName('FPartsNumber').AsString); //规格型号

      MyWorkBook.WorkSheets[k].Cells[6,2].Value := Trim(mdata_CList.FieldByName('FClientFullName').AsString); //项目名
      MyWorkBook.WorkSheets[k].Cells[6,11].Value := Trim(mdata_CList.FieldByName('FPartsName').AsString); //规格型号

      //循环行开始
      i:=8;

       //工作薄名称
      MyWorkBook.WorkSheets[k].Name:=mdata_CList.FieldByName('FCheckNum').AsString;
      copystart:='A'+IntToStr(i);
      if mdata_CList.recordcount>0 then
      Begin
        if mdata_CList.recordcount>1 then
        Begin
          copystart:='A'+IntToStr(i);
          copystart1:='A'+IntToStr(i+1);
          copyend:='K'+IntToStr(i);  //区域
          ReNum:=mdata_CList.recordcount-1+(10-((mdata_CList.RecordCount+1) mod 10));;
          L:=mdata_CList.recordcount-1+(10-((mdata_CList.RecordCount+1) mod 10));;
          while ReNum>0 do
          Begin
            ExcelApp.ActiveSheet.Range[copystart+':'+copyend].Copy;
            ExcelApp.ActiveSheet.Rows[i+1].Insert;
            ExcelApp.ActiveSheet.Range[copystart1].PasteSpecial;
            Renum:=Renum-1;
          end;
          //制单、审核栏
          MyWorkBook.WorkSheets[k].Cells[i+L+1,2].Value:=mdata_CList.FieldByName('FTeamName').AsString; //制单
          MyWorkBook.WorkSheets[k].Cells[i+L+1,4].Value:=mdata_CList.FieldByName('FWorkShop').AsString; // 班组
          MyWorkBook.WorkSheets[k].Cells[i+L+1,7].Value:=mdata_CList.FieldByName('FCheckWriteDate').AsString; //制单日期
          MyWorkBook.WorkSheets[k].Cells[i+L+1,9].Value:=mdata_CList.FieldByName('FCheckCheck').AsString; //审核
          MyWorkBook.WorkSheets[k].Cells[i+L+1,11].Value:=mdata_CList.FieldByName('FCheckCheckDate').AsString; //审核日期
        end
        else
        Begin
          R_Count:=mdata_CList.recordcount;
        end;
        mdata_CList.first;
        while not mdata_CList.eof do
        Begin
           //MyWorkBook.WorkSheets[1].Cells[i,1].Value := inttostr(K+1); //序号
          MyWorkBook.WorkSheets[k].Cells[i,1].Value := mdata_CList.FieldByName('th').AsString; //图号
          MyWorkBook.WorkSheets[k].Cells[i,4].Value := mdata_CList.FieldByName('mc').AsString+mdata_CList.FieldByName('gg').AsString; //名称+规格
          MyWorkBook.WorkSheets[k].Cells[i,7].Value := mdata_CList.FieldByName('FCheckQry').Value; //送检数量
          MyWorkBook.WorkSheets[k].Cells[i,8].Value := mdata_CList.FieldByName('FSuttle').AsString; //净重量
          MyWorkBook.WorkSheets[k].Cells[i,9].Value := mdata_CList.FieldByName('FCheckYesQry').Value; //合格数量
          MyWorkBook.WorkSheets[k].Cells[i,10].Value := mdata_CList.FieldByName('FCheckNoQry').AsString; //不合格数量
          MyWorkBook.WorkSheets[k].Cells[i,11].Value := mdata_CList.FieldByName('FCheckListRemark').AsString;
          //MyWorkBook.WorkSheets[i].Cells[1,2].Value:=AnsiReplaceStr(MyWorkBook.WorkSheets[i].Cells[i,2].Value,'B',Mdata2['FMakeSubmit']); //制单
          mdata_CList.next;
          i:=i+1;
        End;
        // MyWorkBook.WorkSheets[1].Cells[i+ReNum+1,2].Value:=Mdata2.FieldByName('FMakeSubmit').AsString; //制单
      end;
      qry.Next ;
      ExcelApp.Visible:=True;
      MyWorkBook.WorkSheets[k].PrintPreview;  //打印
      k:=k+1;

    end;
    MyWorkBook.WorkSheets[1].delete; //删除模版
    stbMsg.Caption:='提示信息：检验合格单:'+P_List_CList+'的信息导出完成!';
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

procedure TFrm_CheckQry.TB_PrinClick(Sender: TObject);
var
 qry:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If PC_Check.ActivePage=TS_CheckList then
  begin
    try
      qry.SQL.Text:='update T_CheckItem set n=10-b.n%10 from T_CheckItem as a left outer join  '
                   +'(select FCheckITemID,count(FCheckITemID) as n from V_CheckList where FCheckFullNumber '
                   +'like '''+ListFNumber_CList+'%'' group by FCheckITemID) as b '
                   +'on a.FCheckITemID=b.FCheckITemID ';
    qry.ExecSQL;
    finally
      ;
    end;
    If not MyItemList(qry,mdata_CList,'V_CheckList','FCheckFullNumber',ListFNumber_CList,'FCheckFullNumber,FCheckListNum') then
       mdata_CList.Open;

    mdata_CList.First;
    mdata_CList.SortedField:='FCheckFullNumber;FCheckListNum';
  end;
  If PC_Check.ActivePage=TS_Write then
  begin
    try
      qry.SQL.Text:='update T_CheckItem set n=10-b.n%10 from T_CheckItem as a left outer join  '
                   +'(select FCheckITemID,count(FCheckITemID) as n from V_CheckList where FCheckFullNumberWrite '
                   +'like '''+ListFNumber_CheckWrite+'%'' group by FCheckITemID) as b '
                   +'on a.FCheckITemID=b.FCheckITemID ';
      qry.ExecSQL;
    finally
      ;
    end;
    If not MyItemList(qry,mdata_CList,'V_CheckList','FCheckFullNumberWrite',ListFNumber_CheckWrite,'FCheckFullNumberWrite,FCheckListNum') then
       mdata_CList.Open;

    mdata_CList.First;
    mdata_CList.SortedField:='FCheckFullNumberWrite;FCheckListNum';
  end;
  If PC_Check.ActivePage=TS_ICQC then
  begin
    try
      qry.SQL.Text:='update T_CheckItem set n=10-b.n%10 from T_CheckItem as a left outer join  '
                   +'(select FCheckITemID,count(FCheckITemID) as n from V_CheckList where FCheckFullNumberICQC '
                   +'like '''+ListFNumber_CheckICQC+'%'' group by FCheckITemID) as b '
                   +'on a.FCheckITemID=b.FCheckITemID ';
      qry.ExecSQL;
    finally
      ;
    end;
    If not MyItemList(qry,mdata_CList,'V_CheckList','FCheckFullNumberICQC',ListFNumber_CheckICQC,'FCheckFullNumberICQC,FCheckListNum') then
       mdata_CList.Open;

    mdata_CList.First;
    mdata_CList.SortedField:='FCheckFullNumberICQC;FCheckListNum';
  end;
  If PC_Check.ActivePage=TS_Team then
  begin
    try
      qry.SQL.Text:='update T_CheckItem set n=10-b.n%10 from T_CheckItem as a left outer join  '
                   +'(select FCheckITemID,count(FCheckITemID) as n from V_CheckList where FCheckFullNumberTeam '
                   +'like '''+ListFNumber_CheckTeam+'%'' group by FCheckITemID) as b '
                   +'on a.FCheckITemID=b.FCheckITemID ';
      qry.ExecSQL;
    finally
      ;
    end;
    If not MyItemList(qry,mdata_CList,'V_CheckList','FCheckFullNumberTeam',ListFNumber_CheckTeam,'FCheckFullNumberTeam,FCheckListNum') then
       mdata_CList.Open;

    mdata_CList.First;
    mdata_CList.SortedField:='FCheckFullNumberTeam;FCheckListNum';
  end;
  If PC_Check.ActivePage=TS_Item then
  begin
    try
      qry.SQL.Text:='update T_CheckItem set n=10-b.n%10 from T_CheckItem as a left outer join  '
                   +'(select FCheckITemID,count(FCheckITemID) as n from V_CheckList where FCheckFullNumberItem '
                   +'like '''+ListFNumber_CheckItem+'%'' group by FCheckITemID) as b '
                   +'on a.FCheckITemID=b.FCheckITemID ';
      qry.ExecSQL;
    finally
      ;
    end;
    If not MyItemList(qry,mdata_CList,'V_CheckList','FCheckFullNumberItem',ListFNumber_CheckItem,'FCheckFullNumberItem,FCheckListNum') then
       mdata_CList.Open;

    mdata_CList.First;
    mdata_CList.SortedField:='FCheckFullNumberItem;FCheckListNum';
  end;
  If mdata_CList.RecordCount>0 then
  begin
    FrReport.LoadFromFile(ExtractFileDir(Application.ExeName)+'\Report_DesignBOM_Check.frf');
    FrReport.ShowReport;
  end
  else
    Application.MessageBox(PChar('没有需要打印的数据！'), '错误', MB_OK +MB_ICONSTOP);

end;

procedure TFrm_CheckQry.Act_CheckQryExecute(Sender: TObject);
var
  proc:TADOStoredProc;
begin
  proc:=TADOStoredProc.Create(self);
  proc.ConnectionString:=mdlData.ReadConnStr;
  proc.CommandTimeout:=500;
  try
    proc.ProcedureName:='P_Check_Log;1';
    with proc.Parameters.AddParameter do
    begin
      DataType := ftInteger;
      Direction := pdinput;
      name := '@FAgentID';
      value:=UserFDepartmentID;
    end;
    proc.ExecProc;
  finally
     ;
  end;
  Proc.Free;

end;

procedure TFrm_CheckQry.cxGV_SListCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  inherited;
  if cxGV_SList.Controller.FocusedRowIndex=AViewInfo.RecordViewInfo.Index  then  //是否是选中行
     else
  if (StrToFloat(AViewInfo.GridRecord.DisplayTexts[FSumQry_3.Index])-StrToFloat(AViewInfo.GridRecord.DisplayTexts[FSumCheckQry_3.Index]))=0 then    //设置行颜色
  begin
    ACanvas.Canvas.brush.Color := clInactiveCaptionText;
    ACanvas.FillRect(AViewInfo.Bounds);
  end;
  if (StrToFloat(AViewInfo.GridRecord.DisplayTexts[FSumQry_3.Index])<StrToFloat(AViewInfo.GridRecord.DisplayTexts[FSumCheckQry_3.Index])) then    //设置行颜色
  begin
    ACanvas.Canvas.brush.Color := clFuchsia;
    ACanvas.FillRect(AViewInfo.Bounds);
  end;

end;

procedure TFrm_CheckQry.MyTreeView_CheckWriteExpanding(Sender: TObject;
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

  qry.SQL.Text:='Select * from VT_Check_Write where FParentNumber= '''
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
    with MyTreeView_CheckWrite.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('Isleaf').value;
    end;
    qry.Next;
  end;


end;

procedure TFrm_CheckQry.MyTreeView_CheckWriteChange(Sender: TObject;
  Node: TTreeNode);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If Node = nil then Exit;
  with PTree(Node.Data)^ do
  begin
    ListFNumber_CheckWrite:=trim(PTree(Node.Data).FNumber);
    P_List_CheckWrite:=PTree(Node.Data).Caption;
    P_Isleaf_CheckWrite:=PTree(Node.Data).Isleaf;
    mdata_CItem.DisableControls;
    cxGV_CItem.DataController.DataModeController.GridMode:=True;
    cxGV_CItem.DataController.DataModeController.SmartRefresh:=True;

    Act_PC_CheckList.Execute;

    mdata_CItem.EnableControls;
    cxGV_CItem.DataController.DataModeController.GridMode:=False;
    cxGV_CItem.DataController.DataModeController.SmartRefresh:=False;
  end;


end;

procedure TFrm_CheckQry.MyTreeView_CheckICQCExpanding(Sender: TObject;
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

  qry.SQL.Text:='Select * from VT_Check_ICQC where FParentNumber= '''
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
    with MyTreeView_CheckICQC.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('Isleaf').value;
    end;
    qry.Next;
  end;




end;

procedure TFrm_CheckQry.MyTreeView_CheckICQCChange(Sender: TObject;
  Node: TTreeNode);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If Node = nil then Exit;
  with PTree(Node.Data)^ do
  begin
    ListFNumber_CheckICQC:=trim(PTree(Node.Data).FNumber);
    P_Isleaf_CheckICQC:=PTree(Node.Data).Isleaf;
    mdata_CItem.DisableControls;
    cxGV_CItem.DataController.DataModeController.GridMode:=True;
    cxGV_CItem.DataController.DataModeController.SmartRefresh:=True;

    Act_PC_CheckList.Execute;

    mdata_CItem.EnableControls;
    cxGV_CItem.DataController.DataModeController.GridMode:=False;
    cxGV_CItem.DataController.DataModeController.SmartRefresh:=False;
  end;




end;

procedure TFrm_CheckQry.PC_CheckChange(Sender: TObject);
begin
  inherited;
  TB_Ref.Click;
end;

procedure TFrm_CheckQry.MyTreeView_CheckTeamExpanding(Sender: TObject;
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

  qry.SQL.Text:='Select * from VT_Check_Team where FParentNumber= '''
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
    with MyTreeView_CheckTeam.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('Isleaf').value;
    end;
    qry.Next;
  end;



end;

procedure TFrm_CheckQry.MyTreeView_CheckItemExpanding(Sender: TObject;
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

  qry.SQL.Text:='Select * from VT_Check_Item where FParentNumber= '''
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
    with MyTreeView_CheckItem.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('Isleaf').value;
    end;
    qry.Next;
  end;


end;

procedure TFrm_CheckQry.MyTreeView_CheckTeamChange(Sender: TObject;
  Node: TTreeNode);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If Node = nil then Exit;
  with PTree(Node.Data)^ do
  begin
    ListFNumber_CheckTeam:=trim(PTree(Node.Data).FNumber);
    P_Isleaf_CheckTeam:=PTree(Node.Data).Isleaf;
    mdata_CItem.DisableControls;
    cxGV_CItem.DataController.DataModeController.GridMode:=True;
    cxGV_CItem.DataController.DataModeController.SmartRefresh:=True;

    Act_PC_CheckList.Execute;

    mdata_CItem.EnableControls;
    cxGV_CItem.DataController.DataModeController.GridMode:=False;
    cxGV_CItem.DataController.DataModeController.SmartRefresh:=False;
  end;

end;

procedure TFrm_CheckQry.MyTreeView_CheckItemChange(Sender: TObject;
  Node: TTreeNode);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If Node = nil then Exit;
  with PTree(Node.Data)^ do
  begin
    ListFNumber_CheckItem:=trim(PTree(Node.Data).FNumber);
    P_Isleaf_CheckItem:=PTree(Node.Data).Isleaf;
    mdata_CList.DisableControls;
    cxGV_CList.DataController.DataModeController.GridMode:=True;
    cxGV_CList.DataController.DataModeController.SmartRefresh:=True;

    Act_PC_CheckList.Execute;

    mdata_CList.EnableControls;
    cxGV_CList.DataController.DataModeController.GridMode:=False;
    cxGV_CList.DataController.DataModeController.SmartRefresh:=False;
  end;

end;

procedure TFrm_CheckQry.Act_PC_CheckListExecute(Sender: TObject);
var
 qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If PC_Check.ActivePage=TS_CheckList then   //送检单
  begin
    If P_Isleaf_CList>0 then
    begin
      try
        If PC_CList.ActivePage=TS_List then
        begin
          qry.SQL.Text:='select distinct FCheckNum,FCheckItemID,FCheckNo,FFileNo,FClientFullName,FClientShortName,FbranchItemNumber,FItemModel,'
                       +'FPartsNumber,FPartsName,FPartsCode,FWorkPartsNum,FWorkParts,FTeamID,FTeamName,FCheckICQCID,FCheckICQC,FCheckStatus,FCheckStatusNotes,FCheckWriteID,FCheckWrite,FCheckWriteDate,FCheckSubmitDate,FCheckCheck,FCheckCheckDate '
                       +' from V_CheckList where FCheckFullNumber like :FCheckFullNumber';
          qry.Parameters.FindParam('FCheckFullNumber').Value:=ListFNumber_CList+'%';
          qry.Open;
        end;
        If PC_CList.ActivePage=TS_Sum then
        begin
          If (E_FCheckCheckDate_1.EditValue=null) or (E_FCheckCheckDate_2.EditValue=null) then
          begin
            Application.MessageBox(PChar('检验日期不能为空！'), '错误', MB_OK +MB_ICONSTOP);
            Exit;
          end;
          qry.SQL.Text:='select distinct FCheckNum,FCheckItemID,FCheckNo,FFileNo,FClientFullName,FClientShortName,FbranchItemNumber,FItemModel,'
                       +'FPartsNumber,FPartsName,FPartsCode,FWorkPartsNum,FWorkParts,FTeamID,FTeamName,FCheckICQCID,FCheckICQC,FCheckStatus,FCheckStatusNotes,FCheckWriteID,FCheckWrite,FCheckWriteDate,FCheckSubmitDate,FCheckCheck,FCheckCheckDate '
                       +' from V_CheckList where FCheckFullNumberItem like :FCheckFullNumberItem and CONVERT(VARCHAR(10),FCheckCheckDate,120)>=:FCheckCheckDate1 and CONVERT(VARCHAR(10),FCheckCheckDate,120)<=:FCheckCheckDate2';
          qry.Parameters.FindParam('FCheckFullNumber').Value:=ListFNumber_CList+'%';
          qry.Parameters.FindParam('FCheckCheckDate1').Value:=E_FCheckCheckDate_1.Date;
          qry.Parameters.FindParam('FCheckCheckDate2').Value:=E_FCheckCheckDate_2.Date;
          qry.Open;
        end;

      finally
         ;
      end;
      If qry.RecordCount>0 then
      begin
        MData_CItem.CopyFromDataSet(qry);
        MData_CItem.Open;
      end
      else
        MData_CItem.Close;

      If PC_CList.ActivePage=TS_List then
      begin
        If MyItemListFieldWhere(qry,mdata_CList,' * ','V_CheckList','FCheckFullNumber',ListFNumber_CList,'','FCheckFullNumber') then
          mdata_CList.Open
        else
          mdata_CList.Close;
      end;
      If PC_CList.ActivePage=TS_Sum then
      begin
        If MyItemListFieldWhere(qry,mdata_CList,' * ','V_CheckList','FCheckFullNumber',ListFNumber_CList,' and CONVERT(VARCHAR(10),FCheckCheckDate,120)>='''+DateToStr(E_FCheckCheckDate_1.EditValue)+''' and CONVERT(VARCHAR(10),FCheckCheckDate,120)<='''+DateToStr(E_FCheckCheckDate_2.EditValue)+''' ','FCheckFullNumber,FCheckNum,FCheckListNum') then
           mdata_CList.Open
        else
           mdata_CList.Close;
      end;
    end
    else
    begin
      mdata_CItem.Close;
      mdata_CList.Close;
    end;
  end;

  If PC_Check.ActivePage=TS_Write then   //送检人
  begin
    If P_Isleaf_CheckWrite>0 then
    begin
      try
        If PC_CList.ActivePage=TS_List then
        begin
          qry.SQL.Text:='select distinct FCheckNum,FCheckItemID,FCheckNo,FFileNo,FClientFullName,FClientShortName,FbranchItemNumber,FItemModel,'
                       +'FPartsNumber,FPartsName,FPartsCode,FWorkPartsNum,FWorkParts,FTeamID,FTeamName,FCheckICQCID,FCheckICQC,FCheckStatus,FCheckStatusNotes,FCheckWriteID,FCheckWrite,FCheckWriteDate,FCheckSubmitDate,FCheckCheck,FCheckCheckDate '
                       +' from V_CheckList where FCheckFullNumberWrite like :FCheckFullNumberWrite';
          qry.Parameters.FindParam('FCheckFullNumberWrite').Value:=ListFNumber_CheckWrite+'%';
          qry.Open;
        end;
        If PC_CList.ActivePage=TS_Sum then
        begin
          If (E_FCheckCheckDate_1.EditValue=null) or (E_FCheckCheckDate_2.EditValue=null) then
          begin
            Application.MessageBox(PChar('检验日期不能为空！'), '错误', MB_OK +MB_ICONSTOP);
            Exit;
          end;
          qry.SQL.Text:='select distinct FCheckNum,FCheckItemID,FCheckNo,FFileNo,FClientFullName,FClientShortName,FbranchItemNumber,FItemModel,'
                       +'FPartsNumber,FPartsName,FPartsCode,FWorkPartsNum,FWorkParts,FTeamID,FTeamName,FCheckICQCID,FCheckICQC,FCheckStatus,FCheckStatusNotes,FCheckWriteID,FCheckWrite,FCheckWriteDate,FCheckSubmitDate,FCheckCheck,FCheckCheckDate '
                       +' from V_CheckList where FCheckFullNumberWrite like :FCheckFullNumberWrite and CONVERT(VARCHAR(10),FCheckCheckDate,120)>=:FCheckCheckDate1 and CONVERT(VARCHAR(10),FCheckCheckDate,120)<=:FCheckCheckDate2';
          qry.Parameters.FindParam('FCheckFullNumberWrite').Value:=ListFNumber_CheckWrite+'%';
          qry.Parameters.FindParam('FCheckCheckDate1').Value:=E_FCheckCheckDate_1.Date;
          qry.Parameters.FindParam('FCheckCheckDate2').Value:=E_FCheckCheckDate_2.Date;
          qry.Open;
        end;

      finally
         ;
      end;
      If qry.RecordCount>0 then
      begin
        MData_CItem.CopyFromDataSet(qry);
        MData_CItem.Open;
      end
      else
        MData_CItem.Close;

      If PC_CList.ActivePage=TS_List then
      begin
        If MyItemListFieldWhere(qry,mdata_CList,' * ','V_CheckList','FCheckFullNumberWrite',ListFNumber_CheckWrite,'','FCheckFullNumberWrite') then
          mdata_CList.Open
        else
          mdata_CList.Close;
      end;
      If PC_CList.ActivePage=TS_Sum then
      begin
        If MyItemListFieldWhere(qry,mdata_CList,' * ','V_CheckList','FCheckFullNumberWrite',ListFNumber_CheckWrite,' and CONVERT(VARCHAR(10),FCheckCheckDate,120)>='''+DateToStr(E_FCheckCheckDate_1.EditValue)+''' and CONVERT(VARCHAR(10),FCheckCheckDate,120)<='''+DateToStr(E_FCheckCheckDate_2.EditValue)+''' ','FCheckFullNumberWrite,FCheckNum,FCheckListNum') then
           mdata_CList.Open
        else
           mdata_CList.Close;
      end;
    end
    else
    begin
      mdata_CItem.Close;
      mdata_CList.Close;
    end;
  end;


  If PC_Check.ActivePage=TS_ICQC then    //检验员
  begin
    If P_Isleaf_CheckICQC>0 then
    begin
      try
        If PC_CList.ActivePage=TS_List then
        begin
          qry.SQL.Text:='select distinct FCheckNum,FCheckItemID,FCheckNo,FFileNo,FClientFullName,FClientShortName,FbranchItemNumber,FItemModel,'
                       +'FPartsNumber,FPartsName,FPartsCode,FWorkPartsNum,FWorkParts,FTeamID,FTeamName,FCheckICQCID,FCheckICQC,FCheckStatus,FCheckStatusNotes,FCheckWriteID,FCheckWrite,FCheckWriteDate,FCheckSubmitDate,FCheckCheck,FCheckCheckDate '
                       +' from V_CheckList where FCheckFullNumberICQC like :FCheckFullNumberICQC';
          qry.Parameters.FindParam('FCheckFullNumberICQC').Value:=ListFNumber_CheckICQC+'%';
          qry.Open;
        end;
        If PC_CList.ActivePage=TS_Sum then
        begin
          If (E_FCheckCheckDate_1.EditValue=null) or (E_FCheckCheckDate_2.EditValue=null) then
          begin
            Application.MessageBox(PChar('检验日期不能为空！'), '错误', MB_OK +MB_ICONSTOP);
            Exit;
          end;
          qry.SQL.Text:='select distinct FCheckNum,FCheckItemID,FCheckNo,FFileNo,FClientFullName,FClientShortName,FbranchItemNumber,FItemModel,'
                       +'FPartsNumber,FPartsName,FPartsCode,FWorkPartsNum,FWorkParts,FTeamID,FTeamName,FCheckICQCID,FCheckICQC,FCheckStatus,FCheckStatusNotes,FCheckWriteID,FCheckWrite,FCheckWriteDate,FCheckSubmitDate,FCheckCheck,FCheckCheckDate '
                       +' from V_CheckList where FCheckFullNumberICQC like :FCheckFullNumberICQC and CONVERT(VARCHAR(10),FCheckCheckDate,120)>=:FCheckCheckDate1 and CONVERT(VARCHAR(10),FCheckCheckDate,120)<=:FCheckCheckDate2';
          qry.Parameters.FindParam('FCheckFullNumberICQC').Value:=ListFNumber_CheckICQC+'%';
          qry.Parameters.FindParam('FCheckCheckDate1').Value:=E_FCheckCheckDate_1.Date;
          qry.Parameters.FindParam('FCheckCheckDate2').Value:=E_FCheckCheckDate_2.Date;
          qry.Open;
        end;

      finally
         ;
      end;
      If qry.RecordCount>0 then
      begin
        MData_CItem.CopyFromDataSet(qry);
        MData_CItem.Open;
      end
      else
        MData_CItem.Close;

      If PC_CList.ActivePage=TS_List then
      begin
        If MyItemListFieldWhere(qry,mdata_CList,' * ','V_CheckList','FCheckFullNumberICQC',ListFNumber_CheckICQC,'','FCheckFullNumberICQC') then
          mdata_CList.Open
        else
          mdata_CList.Close;
      end;
      If PC_CList.ActivePage=TS_Sum then
      begin
        If MyItemListFieldWhere(qry,mdata_CList,' * ','V_CheckList','FCheckFullNumberICQC',ListFNumber_CheckICQC,' and CONVERT(VARCHAR(10),FCheckCheckDate,120)>='''+DateToStr(E_FCheckCheckDate_1.EditValue)+''' and CONVERT(VARCHAR(10),FCheckCheckDate,120)<='''+DateToStr(E_FCheckCheckDate_2.EditValue)+''' ','FCheckFullNumberICQC,FCheckNum,FCheckListNum') then
           mdata_CList.Open
        else
           mdata_CList.Close;
      end;
    end
    else
    begin
      mdata_CItem.Close;
      mdata_CList.Close;
    end;
  end;

  If PC_Check.ActivePage=TS_Team then     //班组
  begin
    If P_Isleaf_CheckTeam>0 then
    begin
      try
        If PC_CList.ActivePage=TS_List then
        begin
          qry.SQL.Text:='select distinct FCheckNum,FCheckItemID,FCheckNo,FFileNo,FClientFullName,FClientShortName,FbranchItemNumber,FItemModel,'
                       +'FPartsNumber,FPartsName,FPartsCode,FWorkPartsNum,FWorkParts,FTeamID,FTeamName,FCheckICQCID,FCheckICQC,FCheckStatus,FCheckStatusNotes,FCheckWriteID,FCheckWrite,FCheckWriteDate,FCheckSubmitDate,FCheckCheck,FCheckCheckDate '
                       +' from V_CheckList where FCheckFullNumberTeam like :FCheckFullNumberTeam';
          qry.Parameters.FindParam('FCheckFullNumberTeam').Value:=ListFNumber_CheckTeam+'%';
          qry.Open;
        end;
        If PC_CList.ActivePage=TS_Sum then
        begin
          If (E_FCheckCheckDate_1.EditValue=null) or (E_FCheckCheckDate_2.EditValue=null) then
          begin
            Application.MessageBox(PChar('检验日期不能为空！'), '错误', MB_OK +MB_ICONSTOP);
            Exit;
          end;
          qry.SQL.Text:='select distinct FCheckNum,FCheckItemID,FCheckNo,FFileNo,FClientFullName,FClientShortName,FbranchItemNumber,FItemModel,'
                       +'FPartsNumber,FPartsName,FPartsCode,FWorkPartsNum,FWorkParts,FTeamID,FTeamName,FCheckICQCID,FCheckICQC,FCheckStatus,FCheckStatusNotes,FCheckWriteID,FCheckWrite,FCheckWriteDate,FCheckSubmitDate,FCheckCheck,FCheckCheckDate '
                       +' from V_CheckList where FCheckFullNumberTeam like :FCheckFullNumberTeam and CONVERT(VARCHAR(10),FCheckCheckDate,120)>=:FCheckCheckDate1 and CONVERT(VARCHAR(10),FCheckCheckDate,120)<=:FCheckCheckDate2';
          qry.Parameters.FindParam('FCheckFullNumberTeam').Value:=ListFNumber_CheckTeam+'%';
          qry.Parameters.FindParam('FCheckCheckDate1').Value:=E_FCheckCheckDate_1.Date;
          qry.Parameters.FindParam('FCheckCheckDate2').Value:=E_FCheckCheckDate_2.Date;
          qry.Open;
        end;

      finally
         ;
      end;
      If qry.RecordCount>0 then
      begin
        MData_CItem.CopyFromDataSet(qry);
        MData_CItem.Open;
      end
      else
        MData_CItem.Close;

      If PC_CList.ActivePage=TS_List then
      begin
        If MyItemListFieldWhere(qry,mdata_CList,' * ','V_CheckList','FCheckFullNumberTeam',ListFNumber_CheckTeam,'','FCheckFullNumberTeam') then
          mdata_CList.Open
        else
          mdata_CList.Close;
      end;
      If PC_CList.ActivePage=TS_Sum then
      begin
        If MyItemListFieldWhere(qry,mdata_CList,' * ','V_CheckList','FCheckFullNumberTeam',ListFNumber_CheckTeam,' and CONVERT(VARCHAR(10),FCheckCheckDate,120)>='''+DateToStr(E_FCheckCheckDate_1.EditValue)+''' and CONVERT(VARCHAR(10),FCheckCheckDate,120)<='''+DateToStr(E_FCheckCheckDate_2.EditValue)+''' ','FCheckFullNumberTeam,FCheckNum,FCheckListNum') then
           mdata_CList.Open
        else
           mdata_CList.Close;
      end;
    end
    else
    begin
      mdata_CItem.Close;
      mdata_CList.Close;
    end;
  end;


  If PC_Check.ActivePage=TS_Item then     //项目
  begin
    If P_Isleaf_CheckItem>0 then
    begin
      try
        If PC_CList.ActivePage=TS_List then
        begin
          qry.SQL.Text:='select distinct FCheckNum,FCheckItemID,FCheckNo,FFileNo,FClientFullName,FClientShortName,FbranchItemNumber,FItemModel,'
                       +'FPartsNumber,FPartsName,FPartsCode,FWorkPartsNum,FWorkParts,FTeamID,FTeamName,FCheckICQCID,FCheckICQC,FCheckStatus,FCheckStatusNotes,FCheckWriteID,FCheckWrite,FCheckWriteDate,FCheckSubmitDate,FCheckCheck,FCheckCheckDate '
                       +' from V_CheckList where FCheckFullNumberItem like :FCheckFullNumberItem';
          qry.Parameters.FindParam('FCheckFullNumberItem').Value:=ListFNumber_CheckItem+'%';
          qry.Open;
        end;
        If PC_CList.ActivePage=TS_Sum then
        begin
          If (E_FCheckCheckDate_1.EditValue=null) or (E_FCheckCheckDate_2.EditValue=null) then
          begin
            Application.MessageBox(PChar('检验日期不能为空！'), '错误', MB_OK +MB_ICONSTOP);
            Exit;
          end;
          qry.SQL.Text:='select distinct FCheckNum,FCheckItemID,FCheckNo,FFileNo,FClientFullName,FClientShortName,FbranchItemNumber,FItemModel,'
                       +'FPartsNumber,FPartsName,FPartsCode,FWorkPartsNum,FWorkParts,FTeamID,FTeamName,FCheckICQCID,FCheckICQC,FCheckStatus,FCheckStatusNotes,FCheckWriteID,FCheckWrite,FCheckWriteDate,FCheckSubmitDate,FCheckCheck,FCheckCheckDate '
                       +' from V_CheckList where FCheckFullNumberItem like :FCheckFullNumberItem and CONVERT(VARCHAR(10),FCheckCheckDate,120)>=:FCheckCheckDate1 and CONVERT(VARCHAR(10),FCheckCheckDate,120)<=:FCheckCheckDate2';
          qry.Parameters.FindParam('FCheckFullNumberItem').Value:=ListFNumber_CheckItem+'%';
          qry.Parameters.FindParam('FCheckCheckDate1').Value:=E_FCheckCheckDate_1.Date;
          qry.Parameters.FindParam('FCheckCheckDate2').Value:=E_FCheckCheckDate_2.Date;
          qry.Open;
        end;

      finally
         ;
      end;
      If qry.RecordCount>0 then
      begin
        MData_CItem.CopyFromDataSet(qry);
        MData_CItem.Open;
      end
      else
        MData_CItem.Close;

      If PC_CList.ActivePage=TS_List then
      begin
        If MyItemListFieldWhere(qry,mdata_CList,' * ','V_CheckList','FCheckFullNumberItem',ListFNumber_CheckItem,'','FCheckFullNumberItem') then
          mdata_CList.Open
        else
          mdata_CList.Close;
      end;
      If PC_CList.ActivePage=TS_Sum then
      begin
        If MyItemListFieldWhere(qry,mdata_CList,' * ','V_CheckList','FCheckFullNumberItem',ListFNumber_CheckItem,' and CONVERT(VARCHAR(10),FCheckCheckDate,120)>='''+DateToStr(E_FCheckCheckDate_1.EditValue)+''' and CONVERT(VARCHAR(10),FCheckCheckDate,120)<='''+DateToStr(E_FCheckCheckDate_2.EditValue)+''' ','FCheckFullNumberItem,FCheckNum,FCheckListNum') then
           mdata_CList.Open
        else
           mdata_CList.Close;
      end;
    end
    else
    begin
      mdata_CItem.Close;
      mdata_CList.Close;
    end;
  end;
  If PC_Check.ActivePage=TS_Date then     //送检日期
  begin
    If P_Isleaf_CheckDate>0 then
    begin
      try
        If PC_CList.ActivePage=TS_List then
        begin
          qry.SQL.Text:='select distinct FCheckNum,FCheckItemID,FCheckNo,FFileNo,FClientFullName,FClientShortName,FbranchItemNumber,FItemModel,'
                       +'FPartsNumber,FPartsName,FPartsCode,FWorkPartsNum,FWorkParts,FTeamID,FTeamName,FCheckICQCID,FCheckICQC,FCheckStatus,FCheckStatusNotes,FCheckWriteID,FCheckWrite,FCheckWriteDate,FCheckSubmitDate,FCheckCheck,FCheckCheckDate '
                       +' from V_CheckList where FCheckFullNumberDate like :FCheckFullNumberDate';
          qry.Parameters.FindParam('FCheckFullNumberDate').Value:=ListFNumber_CheckDate+'%';
          qry.Open;
        end;
        If PC_CList.ActivePage=TS_Sum then
        begin
          If (E_FCheckCheckDate_1.EditValue=null) or (E_FCheckCheckDate_2.EditValue=null) then
          begin
            Application.MessageBox(PChar('检验日期不能为空！'), '错误', MB_OK +MB_ICONSTOP);
            Exit;
          end;
          qry.SQL.Text:='select distinct FCheckNum,FCheckItemID,FCheckNo,FFileNo,FClientFullName,FClientShortName,FbranchItemNumber,FItemModel,'
                       +'FPartsNumber,FPartsName,FPartsCode,FWorkPartsNum,FWorkParts,FTeamID,FTeamName,FCheckICQCID,FCheckICQC,FCheckStatus,FCheckStatusNotes,FCheckWriteID,FCheckWrite,FCheckWriteDate,FCheckSubmitDate,FCheckCheck,FCheckCheckDate '
                       +' from V_CheckList where FCheckFullNumberDate like :FCheckFullNumberDate and CONVERT(VARCHAR(10),FCheckCheckDate,120)>=:FCheckCheckDate1 and CONVERT(VARCHAR(10),FCheckCheckDate,120)<=:FCheckCheckDate2';
          qry.Parameters.FindParam('FCheckFullNumberDate').Value:=ListFNumber_CheckDate+'%';
          qry.Parameters.FindParam('FCheckCheckDate1').Value:=E_FCheckCheckDate_1.Date;
          qry.Parameters.FindParam('FCheckCheckDate2').Value:=E_FCheckCheckDate_2.Date;
          qry.Open;
        end;

      finally
         ;
      end;
      If qry.RecordCount>0 then
      begin
        MData_CItem.CopyFromDataSet(qry);
        MData_CItem.Open;
      end
      else
        MData_CItem.Close;

      If PC_CList.ActivePage=TS_List then
      begin
        If MyItemListFieldWhere(qry,mdata_CList,' * ','V_CheckList','FCheckFullNumberDate',ListFNumber_CheckDate,'','FCheckFullNumberDate') then
          mdata_CList.Open
        else
          mdata_CList.Close;
      end;
      If PC_CList.ActivePage=TS_Sum then
      begin
        If MyItemListFieldWhere(qry,mdata_CList,' * ','V_CheckList','FCheckFullNumberDate',ListFNumber_CheckDate,' and CONVERT(VARCHAR(10),FCheckCheckDate,120)>='''+DateToStr(E_FCheckCheckDate_1.EditValue)+''' and CONVERT(VARCHAR(10),FCheckCheckDate,120)<='''+DateToStr(E_FCheckCheckDate_2.EditValue)+''' ','FCheckFullNumberDate,FCheckNum,FCheckListNum') then
           mdata_CList.Open
        else
           mdata_CList.Close;
      end;
    end
    else
    begin
      mdata_CItem.Close;
      mdata_CList.Close;
    end;
  end;


end;

procedure TFrm_CheckQry.E_FTeamNamePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='select * from T_Team where FDepartmentID=:FDepartmentID and FTeamName like :FTeamName order by FWorkShop,FTeamName ';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Parameters.FindParam('FTeamName').value:='%'+Trim(E_FTeamName.Text)+'%';
    qry.Open;
  finally
   ;
  end;

  selValue:=select('选择送检班组','FTeamName','FWorkShop','FTeamName','FWorkShop;FTeamName',qry);
  If (Length(selValue)>0) then
  begin
    E_FTeamID.EditValue:=qry.FieldByName('FTeamID').Value;
    E_FTeamName.Text:=qry.FieldByName('FTeamName').Value;
    E_WorkShop.Text:=qry.FieldByName('FWorkShop').Value;
  end;

end;

procedure TFrm_CheckQry.MyTreeView_CheckDateExpanding(Sender: TObject;
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

  qry.SQL.Text:='Select * from VT_Check_Date where FParentNumber= '''
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
    with MyTreeView_CheckDate.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('Isleaf').value;
    end;
    qry.Next;
  end;


end;

procedure TFrm_CheckQry.MyTreeView_CheckDateChange(Sender: TObject;
  Node: TTreeNode);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If Node = nil then Exit;
  with PTree(Node.Data)^ do
  begin
    ListFNumber_CheckDate:=trim(PTree(Node.Data).FNumber);
    P_Isleaf_CheckDate:=PTree(Node.Data).Isleaf;
    mdata_CList.DisableControls;
    cxGV_CList.DataController.DataModeController.GridMode:=True;
    cxGV_CList.DataController.DataModeController.SmartRefresh:=True;

    Act_PC_CheckList.Execute;

    mdata_CList.EnableControls;
    cxGV_CList.DataController.DataModeController.GridMode:=False;
    cxGV_CList.DataController.DataModeController.SmartRefresh:=False;
  end;

end;

procedure TFrm_CheckQry.TB_Ref_CheckRecordClick(Sender: TObject);
begin
  inherited;
  Act_PC_CheckList.Execute;

end;

procedure TFrm_CheckQry.MyTreeView_CheckItemDblClick(Sender: TObject);
begin
  inherited;
  Act_PC_CheckList.Execute;

end;

procedure TFrm_CheckQry.Act_MenuExecute(Sender: TObject);
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

procedure TFrm_CheckQry.Act_Menu_SetExecute(Sender: TObject);
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

procedure TFrm_CheckQry.N_EditClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_CheckQry.N_FilterClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_CheckQry.N_SortClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_CheckQry.N_GroupClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_CheckQry.N_SetClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_CheckQry.N_OutClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_CheckQry.cxGrid_CItemContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV_CItem';
  Gm:='mdata_CItem';
  Gr:='cxGrid_CItem';
  Act_Menu_Set.Execute;

end;

procedure TFrm_CheckQry.cxGrid_CListContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV_CList';
  Gm:='mdata_CList';
  Gr:='cxGrid_CList';
  Act_Menu_Set.Execute;

end;

procedure TFrm_CheckQry.cxGrid_SItemContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
    GV:='cxGV_SItem';
    Gm:='mdata_SItem';
    Gr:='cxGrid_SItem';
    Act_Menu_Set.Execute;

end;

procedure TFrm_CheckQry.cxGrid_SListContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
    GV:='cxGV_SList';
    Gm:='mdata_SList';
    Gr:='cxGrid_SList';
    Act_Menu_Set.Execute;

end;

procedure TFrm_CheckQry.cxGrid_CSumContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV_CSum';
  Gm:='mdata_CSum';
  Gr:='cxGrid_CSum';
  Act_Menu_Set.Execute;

end;

end.
