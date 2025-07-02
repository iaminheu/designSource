unit Main_ShipItem;

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
  TFlatPanelUnit,Comobj, cxLookAndFeelPainters, cxSpinEdit, RzStatus,
  ActnList, RzLabel, cxButtons,// cxLookAndFeelPainters,   cxButtons,  cxSpinEdit,  RzLabel, ActnList, RzStatus
   cxTimeEdit, jpeg,
  cxCheckComboBox, cxGridBandedTableView, cxGridDBBandedTableView, DBTables,
  Menus;

type
  TFrm_ShipItem = class(TFrm_GridBass)
    ImageList: TImageList;
    frReport: TfrReport;
    frDBDataSet: TfrDBDataSet;
    PC_Ship: TRzPageControl;
    TS_Ship: TRzTabSheet;
    TS_Pack: TRzTabSheet;
    PanelBkGnd: TPanel;
    Panel7: TPanel;
    P_Btn: TPanel;
    CancelBtn_M: TcxButton;
    OKBtn_M: TcxButton;
    RSP_CList: TRzSizePanel;
    RzSizePanel1: TRzSizePanel;
    MyTreeView_Pack: TTreeView;
    Image2: TImage;
    Label1: TLabel;
    ToolBar_HItem: TToolBar;
    TB_App: TToolButton;
    TB_Del: TToolButton;
    TB_Ref_Ship: TToolButton;
    Label9: TLabel;
    E_FClientFullName: TcxTextEdit;
    TB_Edit_M: TToolButton;
    TB_Exit: TToolButton;
    TB_Prin: TToolButton;
    Panel3: TPanel;
    Panel11: TPanel;
    Label3: TLabel;
    Image3: TImage;
    Label4: TLabel;
    ToolBar5: TToolBar;
    TB_Ref_Pack: TToolButton;
    RzSizePanel6: TRzSizePanel;
    RzLabel9: TRzLabel;
    RSP_StockIn: TRzPanel;
    RSP_Item: TRzSizePanel;
    RzSizePanel2: TRzSizePanel;
    PageControl3: TPageControl;
    TabSheet4: TTabSheet;
    DS_Mdata_HList: TDataSource;
    TB_Submit: TToolButton;
    TB_Check: TToolButton;
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
    TB_ShipList: TToolButton;
    Act_Status_M: TAction;
    RzSizePanel4: TRzSizePanel;
    TB_Sel: TToolButton;
    Act_Set_Open_M: TAction;
    Act_Set_Close_M: TAction;
    Act_Set_Close: TAction;
    Act_Set_Open: TAction;
    Act_PC_ShipList: TAction;
    ToolButton1: TToolButton;
    PM: TPopupMenu;
    N_Edit: TMenuItem;
    N_Filter: TMenuItem;
    N_Sort: TMenuItem;
    N_Group: TMenuItem;
    N_Set: TMenuItem;
    N_Out: TMenuItem;
    Act_Menu: TAction;
    Act_Menu_Set: TAction;
    MData_PItem: TdxMemData;
    StringField123: TStringField;
    StringField124: TStringField;
    StringField125: TStringField;
    StringField126: TStringField;
    StringField127: TStringField;
    StringField128: TStringField;
    StringField129: TStringField;
    StringField130: TStringField;
    StringField131: TStringField;
    StringField132: TStringField;
    StringField133: TStringField;
    FloatField31: TFloatField;
    FloatField32: TFloatField;
    FloatField33: TFloatField;
    StringField134: TStringField;
    StringField135: TStringField;
    StringField136: TStringField;
    StringField137: TStringField;
    StringField138: TStringField;
    StringField139: TStringField;
    IntegerField12: TIntegerField;
    FloatField34: TFloatField;
    FloatField35: TFloatField;
    FloatField36: TFloatField;
    DS_Mdata_PItem: TDataSource;
    DS_Mdata_PList: TDataSource;
    MData_PList: TdxMemData;
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
    cxGrid_HItem: TcxGrid;
    cxGV_HItem: TcxGridDBTableView;
    FShipPactNum: TcxGridDBColumn;
    FShipWagonNum: TcxGridDBColumn;
    FShipWay: TcxGridDBColumn;
    FShipLoadDate: TcxGridDBColumn;
    FDriver: TcxGridDBColumn;
    FDriverPhone: TcxGridDBColumn;
    FConsigneeDress: TcxGridDBColumn;
    FConsigneePhone: TcxGridDBColumn;
    FBranchFileNo: TcxGridDBColumn;
    FBranchItemNumber: TcxGridDBColumn;
    FClientFullName: TcxGridDBColumn;
    FClientShortName: TcxGridDBColumn;
    FProductName: TcxGridDBColumn;
    FItemModel: TcxGridDBColumn;
    FShipStatus: TcxGridDBColumn;
    FShipStatusNotes: TcxGridDBColumn;
    FShipWrite: TcxGridDBColumn;
    FShipWriteDate: TcxGridDBColumn;
    FShipSubmitDate: TcxGridDBColumn;
    cxGL_HItem: TcxGridLevel;
    MData_HList: TdxMemData;
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
    MData_HItem: TdxMemData;
    MData_HItemFItemNo: TStringField;
    MData_HItemFPactNo: TStringField;
    MData_HItemFFileNo: TStringField;
    MData_HItemFItemNumber: TStringField;
    MData_HItemFClientFullName: TStringField;
    MData_HItemFClientShortName: TStringField;
    MData_HItemFProductName: TStringField;
    MData_HItemFItemModel: TStringField;
    MData_HItemFItemLb: TStringField;
    MData_HItemFDesignDate: TStringField;
    MData_HItemFProductID: TStringField;
    MData_HItemFsjdw: TStringField;
    MData_HItemFsjr: TStringField;
    MData_HItemFjsr: TStringField;
    MData_HItemFgdrq: TStringField;
    MData_HItemFDesignName: TStringField;
    MData_HItemFPlace: TStringField;
    MData_HItemFDesignLeaderID: TIntegerField;
    DS_Mdata_HItem: TDataSource;
    MyTreeView_HItem: TTreeView;
    cxGrid_HList: TcxGrid;
    cxGV_HList: TcxGridDBTableView;
    FPackNum_HL: TcxGridDBColumn;
    FPackNumber_HL: TcxGridDBColumn;
    FPackName_HL: TcxGridDBColumn;
    FPackMode_HL: TcxGridDBColumn;
    FNet_HL: TcxGridDBColumn;
    FGross_HL: TcxGridDBColumn;
    FLength_HL: TcxGridDBColumn;
    FWidth_HL: TcxGridDBColumn;
    FHigh_HL: TcxGridDBColumn;
    FV_HL: TcxGridDBColumn;
    FSteel_HL: TcxGridDBColumn;
    FWood_HL: TcxGridDBColumn;
    FPlastic_HL: TcxGridDBColumn;
    FAsphalt_HL: TcxGridDBColumn;
    FColorbar_HL: TcxGridDBColumn;
    FPlace_HL: TcxGridDBColumn;
    FShipItemID_HL: TcxGridDBColumn;
    cxGL_HList: TcxGridLevel;
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
    FPackItemID_2: TcxGridDBBandedColumn;
    FItemID_2: TcxGridDBBandedColumn;
    FBranchItemNumber_2: TcxGridDBBandedColumn;
    FPackStatus: TcxGridDBBandedColumn;
    FPackStatusNotes: TcxGridDBBandedColumn;
    FPackWrite: TcxGridDBBandedColumn;
    FPackWriteDate: TcxGridDBBandedColumn;
    FPackSubmit: TcxGridDBBandedColumn;
    FPackSubmitDate: TcxGridDBBandedColumn;
    FPackAudit: TcxGridDBBandedColumn;
    FPackAuditDate: TcxGridDBBandedColumn;
    cxGL_PItem: TcxGridLevel;
    cxGrid_PList: TcxGrid;
    cxGV_PList: TcxGridDBTableView;
    FListNum2: TcxGridDBColumn;
    xh_2: TcxGridDBColumn;
    cxGridDBColumn139: TcxGridDBColumn;
    mcgg_2: TcxGridDBColumn;
    cxGridDBColumn140: TcxGridDBColumn;
    cxGridDBColumn141: TcxGridDBColumn;
    SelRemark_2: TcxGridDBColumn;
    FPackLIstRemark_2: TcxGridDBColumn;
    dw_2: TcxGridDBColumn;
    cxGridDBColumn142: TcxGridDBColumn;
    FPackQry_2: TcxGridDBColumn;
    FPackClass_22: TcxGridDBColumn;
    FPackNo_22: TcxGridDBColumn;
    cxGridDBColumn143: TcxGridDBColumn;
    cxGridDBColumn144: TcxGridDBColumn;
    FStockListRemark_2: TcxGridDBColumn;
    cxGridDBColumn145: TcxGridDBColumn;
    cxGridDBColumn146: TcxGridDBColumn;
    FPackItemID_22: TcxGridDBColumn;
    FPackStockListID_2: TcxGridDBColumn;
    cxGridDBColumn147: TcxGridDBColumn;
    FPartsCode_2: TcxGridDBColumn;
    FWorkParts_2: TcxGridDBColumn;
    cxGL_PList: TcxGridLevel;
    Sel: TcxGridDBColumn;
    PopupMenu1: TPopupMenu;
    FConsignee: TcxGridDBColumn;
    Act_MaxID: TAction;
    FShipCheck: TcxGridDBColumn;
    FShipCheckDate: TcxGridDBColumn;
    FConsigneeName: TcxGridDBColumn;
    FListNum_HL: TcxGridDBColumn;
    FShipWagonNum_HL: TcxGridDBColumn;
    FShipWagonNo: TcxGridDBColumn;
    FShipWagonNo_HL: TcxGridDBColumn;
    FShipRemark: TcxGridDBColumn;
    Action_Sel: TAction;
    FItemID_HItem: TcxGridDBColumn;
    procedure FormResize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TB_EXITClick(Sender: TObject);
    procedure TB_AppClick(Sender: TObject);
    procedure TB_DelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure MyTreeView_HItemExpanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure MyTreeView_PackExpanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure MyTreeView_HItemChange(Sender: TObject; Node: TTreeNode);
    procedure MyTreeView_PackChange(Sender: TObject; Node: TTreeNode);
    procedure TB_Ref_ShipClick(Sender: TObject);
    procedure TB_Ref_PackClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure OKBtn_MClick(Sender: TObject);
    procedure TB_Edit_MClick(Sender: TObject);
    procedure CancelBtn_MClick(Sender: TObject);
    procedure SelPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxGV_SItemFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure cxGV_CItemFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure TB_SubmitClick(Sender: TObject);
    procedure TB_CheckClick(Sender: TObject);
    procedure Act_Status_MExecute(Sender: TObject);
    procedure SelCancelBtnClick(Sender: TObject);
    procedure PC_CheckChange(Sender: TObject);
    procedure TB_EditLListClick(Sender: TObject);
    procedure Act_Set_Open_MExecute(Sender: TObject);
    procedure Act_Set_Close_MExecute(Sender: TObject);
    procedure Act_Set_OpenExecute(Sender: TObject);
    procedure Act_Set_CloseExecute(Sender: TObject);
    procedure Act_MenuExecute(Sender: TObject);
    procedure Act_Menu_SetExecute(Sender: TObject);
    procedure cxGrid_SItemContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure cxGrid_SListContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure cxGrid_HListContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure cxGrid_CItemContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure N_EditClick(Sender: TObject);
    procedure N_FilterClick(Sender: TObject);
    procedure N_SortClick(Sender: TObject);
    procedure N_GroupClick(Sender: TObject);
    procedure N_SetClick(Sender: TObject);
    procedure N_OutClick(Sender: TObject);
    procedure cxGV_PItemFocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure TB_SelClick(Sender: TObject);
    procedure FBranchItemNumberPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure Act_MaxIDExecute(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure FShipPactNumPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure TB_ShipListClick(Sender: TObject);
    procedure Action_SelExecute(Sender: TObject);
    procedure cxGV_HItemFocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure FPackNum_HLPropertiesEditValueChanged(Sender: TObject);
  private
    P_List:String;
    P_i:boolean;


    { Private declarations }
    function AddMain:bool;
    function AddList:bool;
    function AddRd:bool;
    function EditRd:bool;
    function DelRd:bool;



  public
    P_state,P_state2,P_CheckItemID,P_PackNo,P_MaxID,P_Status,P_FTeamID,P_Sel:Integer;
    P_th1,P_th2,P_th3:String;
    ListFNumber_PList,ListFNumber_PItem,ListFNumber_HList:string;
   // P_Isleaf_SList,P_Isleaf_CList,P_Isleaf_CheckWrite,P_Isleaf_CheckICQC,P_Isleaf_CheckTeam,P_Isleaf_CheckItem :Integer;
    P_Isleaf_HList,P_Isleaf_CheckICQC,P_Isleaf_CheckTeam,P_Isleaf_CheckItem :Integer;
    P_List_HList:string;
    GV,Gr,Gm,Mn:string;

    { Public declarations }
  end;

var
  Frm_ShipItem: TFrm_ShipItem;


implementation

uses FRMDATA,  COMMON, FrmSelect, ProgBar, PROGRASS, Main_Ship;

{$R *.dfm}


function TFrm_ShipItem.DelRd: bool;
var
 qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Delete from T_ShipItem where FShipItemID=:FShipItemID';
    qry.Parameters.FindParam('FShipItemID').value:=MData_HItem['FShipItemID'];
    result:=qry.ExecSQL>=0;
  finally
    ;
  end;
  qry.Free;
end;


function TFrm_ShipItem.AddMain: bool;
var
 qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Insert into T_ShipItem(FShipItemID,FShipID,FShipWagonNum,FShipWagonNo,FShipLoadDate,FConsigneeName,FConsigneePhone,FDriver,FDriverPhone,FShipStatus,FShipWriteID,FShipWriteDate ) '
                 +'values(:FShipItemID,:FShipID,:FShipWagonNum,:FShipWagonNo,:FShipLoadDate,:FConsigneeName,:FConsigneePhone,:FDriver,:FDriverPhone,:FShipStatus,:FShipWriteID,:FShipWriteDate )';
    with qry.Parameters do
    begin
       FindParam('FShipItemID').value:=P_MaxID;
       FindParam('FShipID').value:=mData_HItem['FShipID'];
       FindParam('FShipWagonNum').value:=mData_HItem['FShipWagonNum'];
       FindParam('FShipWagonNo').value:=mData_HItem['FShipWagonNo'];
       FindParam('FShipLoadDate').value:=mData_HItem['FShipLoadDate'];
       FindParam('FConsigneeName').value:=mData_HItem['FConsigneeName'];
       FindParam('FConsigneePhone').value:=mData_HItem['FConsigneePhone'];
       FindParam('FDriver').value:=mData_HItem['FDriver'];
       FindParam('FDriverPhone').value:=Trim(mData_HItem['FDriverPhone']);
       FindParam('FShipStatus').value:=0;
       FindParam('FShipWriteID').value:=UserNumID;
       FindParam('FShipWriteDate').value:=Date();
     end;
     result:=qry.ExecSQL>=1;
  finally
     ;
  end;
  MData_HItem.Edit;
  MData_HItem['FShipStatus']:=0;
  MData_HItem['FShipStatusNotes']:='�';
  MData_HItem.Post;
  TB_Submit.Visible:=True;
  qry.Free;
end;

function TFrm_ShipItem.AddList: bool;
var
  qry: TADOQuery;
  i:Integer;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  result:=False;

  If mData_HList.RecordCount<=0 then
  begin
    result:=True;
    Exit;
  end;
  try
     qry.SQL.Text:='Insert into T_ShipList(FShipItemID,FPackNum) '
                  +'values(:FShipItemID,:FPackNum)';
     mData_HList.First;
     while not mData_HList.eof do
     begin
       If (mData_HList['FPackNum']<>'') and (mData_HList['FPackNum']<>Null) then
       begin
         If qry.Active then qry.Close;
         with qry.Parameters do
         begin
           qry.Parameters.FindParam('FShipItemID').value:= P_MaxID;
           qry.Parameters.FindParam('FPackNum').value:= mData_HList['FPackNum'];
         end;
         result:=qry.ExecSQL>=1;
         if not result then break;
       end;
       mData_HList.Next;
     end;
   finally
     qry.Free;
   end;

end;


function TFrm_ShipItem.AddRd: bool;
var
 qry:TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  result:=False;

  MData_HItem.Edit;
  MData_HItem.Post;

  mdata_HList.Edit;
  mdata_HList.Post;
  If mdata_HList.RecordCount<=0 then
  begin
    result:=True;
    Exit;
  end;

  mdlData.conn.BeginTrans;
  try
    if AddMain then  //1   ��������
    begin
      result:=True;
      if AddList then //2    ��ϸ������
      begin
        result:=True;
        mdlData.conn.CommitTrans;
      end
      else
      begin
        result:=False;
        mdlData.conn.RollbackTrans;
      end
    end
    else
    begin
      result:=False;
      mdlData.conn.RollbackTrans;
    end
  except
    Application.MessageBox('��������ʧ�ܣ������ԡ�', '�������', 0 or MB_ICONINFORMATION);
    mdlData.Conn.RollBackTrans;
  end;

end;


function TFrm_ShipItem.EditRd:bool;
var
 qry:TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  mdlData.conn.BeginTrans;
  try
    if DelRd then  //1  ����ɾ��
    begin
      result:=True;
      if AddMain then //2  ��������
      begin
        result:=True;
        if AddList then //3  ��������
        begin
          result:=True;
          mdlData.conn.CommitTrans;
        end
        else
        begin
          result:=False;
          mdlData.conn.RollbackTrans;
        end
      end
      else
      begin
        result:=False;
        mdlData.conn.RollbackTrans;
      end
    end
    else
    begin
      result:=False;
      mdlData.conn.RollbackTrans;
    end
  except
    Application.MessageBox('��������ʧ�ܣ������ԡ�', '�������', 0 or MB_ICONINFORMATION);
    mdlData.Conn.RollBackTrans;
  end;

end;



procedure TFrm_ShipItem.FormResize(Sender: TObject);
begin
  inherited;
  Self.Caption:=UserFDepartmentName+'������';
end;

procedure TFrm_ShipItem.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=cafree;
  Frm_ShipItem:=nil;
end;

procedure TFrm_ShipItem.TB_EXITClick(Sender: TObject);
begin
  inherited;
  Self.Close;
end;

procedure TFrm_ShipItem.TB_AppClick(Sender: TObject);
Var qry: TADOQuery;
    i,j:Integer;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  P_state :=0; //����
  P_Sel:=0;//��һ������
  If (mdata_HItem.RecordCount>1) or (mdata_HItem.RecordCount=0) then
  begin
    try
      qry.SQL.Text:='select * from V_ShipItem with(nolock) where FShipItemID=0';
      qry.Open;
    finally
       ;
    end;
    mdata_HItem.CopyFromDataSet(qry);
    mdata_HItem.Active:=True;
    MData_HItem.Append;
    MData_HItem.Edit;
  end
  else
  begin
    mData_HItem.Edit;
    MData_HItem['FShipWagonNum']:='';
    MData_HItem['FShipWagonNo']:=MData_HItem['FShipWagonNo']+1;
    MData_HItem['FDriver']:='';
    MData_HItem['FDriverPhone']:='';
    mData_HItem.Post;
  end;

  try
    qry.SQL.Text:='select * from V_ShipList with(nolock)  where FShipListID=0';
    qry.Open;
  finally
     ;
  end;
  mdata_HList.CopyFromDataSet(qry);
  mdata_HList.Active:=True;

  mdata_HList.Edit;
  mdata_HList.First;
  for i:=0 to 10 do
  begin
    mdata_HList.Append;
    mdata_HList.Post;
  end;
  mdata_HList.Edit;
  Act_Set_Open_M.Execute;

end;

procedure TFrm_ShipItem.TB_DelClick(Sender: TObject);
var
  qry:TADOQuery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  If application.MessageBox(Pchar('���棺�Ƿ�ɾ��'+P_List_HList+'�ķ�������Ϣ��'+chr(13)+chr(13)
                                 +'ɾ�����ݲ��������ɻָ���ȷ��Ҫɾ����'),'������ʾ',MB_ICONINFORMATION+MB_YESNO)=6 then
  If application.MessageBox(Pchar('�ٴξ��棺�Ƿ�ɾ����'+P_List_HList+'�ķ�������Ϣ��'+chr(13)+chr(13)
                                 +'ɾ�����ݲ��������ɻָ���ȷ��Ҫɾ����'),'�ٴξ�����ʾ',MB_ICONINFORMATION+MB_YESNO)=6 then

  mdlData.conn.BeginTrans;
  begin
    //����ɾ��
    If not DelRd then
    begin
      application.MessageBox('ɾ������ʧ�ܣ�','ϵͳ��ʾ',MB_ICONINFORMATION);
      mdlData.conn.RollbackTrans;
      Exit;
    end;
    mdlData.conn.CommitTrans;
  end;
  mdata_HList.Close;

  qry.Free;

end;

procedure TFrm_ShipItem.FormCreate(Sender: TObject);
begin
  inherited;
  TB_App.Visible:= mdlData.CheckFrmRights(TFrm_Ship.ClassName,'����');

  P_state:=2;
  P_FTeamID:=0;
end;

procedure TFrm_ShipItem.MyTreeView_HItemExpanding(Sender: TObject;
  Node: TTreeNode; var AllowExpansion: Boolean);
var
  P :PTree;
  qry:TADOquery;

begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  If (Node = nil) or
     (PTree(Node.Data).Flag <> cNoLoadFlag) or   // 1.���ر�־
     (not Node.HasChildren) or                   // 2.δ����
     (Node.Count>0) then                         // 3.�����ӽڵ�
     Exit;

  If UserFDepartmentsort=1 then   //��ҵ��
     qry.SQL.Text:='Select * from VT_ShipItem where FParentNumber= '''
                  +PTree(Node.Data).ID+''' order by FNumber';
  If UserFDepartmentsort=2 then   //�ӹ�˾
     qry.SQL.Text:='Select * from VT_ShipItem_Dep where FParentNumber= '''
                  +PTree(Node.Data).ID+''' order by FNumber';

  qry.open;

  PTree(Node.Data).Flag := cLoadFlag;                  // �����Ѽ��ر�־
  while not qry.Eof do
  begin
    New(P);
    P.ID := qry.FieldByName('FNumber').AsString;
    P.ParentID := qry.FieldByName('FParentNumber').AsString;
    P.FNumber:=qry.FieldByName('FNumber').AsString;
    P.Caption := qry.FieldByName('FName').AsString;
    P.Isleaf := qry.FieldByName('Isleaf').Value;
    P.Flag := cNoLoadFlag;                            // �½ڵ㣬δ���ر�־
    with MyTreeView_HItem.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('Isleaf').value;
    end;
    qry.Next;
  end;
end;

procedure TFrm_ShipItem.MyTreeView_PackExpanding(Sender: TObject;
  Node: TTreeNode; var AllowExpansion: Boolean);
var
  P :PTree;
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If (Node = nil) or
     (PTree(Node.Data).Flag <> cNoLoadFlag) or   // 1.���ر�־
     (not Node.HasChildren) or                   // 2.δ����
     (Node.Count>0) then                         // 3.�����ӽڵ�
     Exit;
     qry.SQL.Text:='Select * from VT_Pack where FParentNumber= '''
                  +PTree(Node.Data).ID+''' order by FBranchItemNumber,FNumber';
     qry.open;

  PTree(Node.Data).Flag := cLoadFlag;                  // �����Ѽ��ر�־
  while not qry.Eof do
  begin
    New(P);
    P.ID := qry.FieldByName('FNumber').AsString;
    P.ParentID := qry.FieldByName('FParentNumber').AsString;
    P.FNumber:=qry.FieldByName('FNumber').AsString;
    P.Caption := qry.FieldByName('FName').AsString;
    P.Isleaf := qry.FieldByName('Isleaf').Value;
    P.Flag := cNoLoadFlag;                            // �½ڵ㣬δ���ر�־
    with MyTreeView_Pack.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('Isleaf').value;
    end;
    qry.Next;
  end;
end;

procedure TFrm_ShipItem.MyTreeView_HItemChange(Sender: TObject; Node: TTreeNode);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If Node = nil then Exit;
  with PTree(Node.Data)^ do
  begin
    ListFNumber_HList:=trim(PTree(Node.Data).FNumber);
    P_List_HList:=PTree(Node.Data).Caption;
    P_Isleaf_HList:=PTree(Node.Data).Isleaf;
    mdata_HList.DisableControls;
    cxGV_HList.DataController.DataModeController.GridMode:=True;
    cxGV_HList.DataController.DataModeController.SmartRefresh:=True;
    If P_Isleaf_HList>0 then
    begin
      If UserFDepartmentsort=1 then //��ҵ��
      begin
        If MyItemListFieldWhere(qry,Mdata_HItem,' *  ','V_ShipItem','FFullNumber',ListFNumber_HList,' ','FFullNumber') then
      end;
      If UserFDepartmentsort=2 then //�ӹ�˾
      begin
        If MyItemListFieldWhere(qry,Mdata_HItem,' *  ','V_ShipItem','FFullNumber_Dep',ListFNumber_HList,' ','FFullNumber_Dep') then
      end;

      cxGvColumn(cxGv_HItem,Mdata_HItem);

    end
    else
    begin
      Mdata_HItem.Close;
    end;
    If P_Isleaf_HList>0 then
    begin
      If UserFDepartmentsort=1 then //��ҵ��
      begin
        If MyItemListFieldWhere(qry,Mdata_HList,' *  ','V_ShipList','FFullNumber',ListFNumber_HList,' ','FFullNumber') then
      end;
      If UserFDepartmentsort=2 then //�ӹ�˾
      begin
        If MyItemListFieldWhere(qry,Mdata_HList,' *  ','V_ShipList','FFullNumber_Dep',ListFNumber_HList,' ','FFullNumber_Dep') then
      end;
      cxGvColumn(cxGv_HList,Mdata_HList);
    end
    else
    begin
      Mdata_HList.Close;
    end;
    case  P_Isleaf_HList of
      0:
      begin
        TB_ShipList.Visible:=False;
      end;
      1:
      begin
        TB_ShipList.Visible:=False;
      end;
      2:
      begin
        TB_ShipList.Visible:=False;
      end;
      3:
      begin
        TB_ShipList.Visible:=mdlData.CheckFrmRights(TFrm_ShipItem.ClassName,'��ӡ');;
      end;
    end;

    //Act_PC_ShipList.Execute;
    Act_Status_M.Execute;  //Ȩ������

    mdata_HList.EnableControls;
    cxGV_HList.DataController.DataModeController.GridMode:=False;
    cxGV_HList.DataController.DataModeController.SmartRefresh:=False;

 end;

end;

procedure TFrm_ShipItem.MyTreeView_PackChange(Sender: TObject; Node: TTreeNode);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If Node = nil then Exit;
  with PTree(Node.Data)^ do
  begin
    ListFNumber_Pack:=trim(PTree(Node.Data).FNumber);
    P_Isleaf_Pack:=PTree(Node.Data).Isleaf;
    P_List_Pack:=PTree(Node.Data).Caption;

    If PTree(Node.Data).Isleaf>0 then
    begin
    If MyItemListFieldWhere(qry,Mdata_PItem,' *  ','V_PackItem','FFullNumber_Dep',ListFNumber_Pack,' and FPackNo<>0 and FShipPactNum='''' ','FFullNumber_Dep') then
      cxGvColumn(cxGv_PList,Mdata_PList);
    end
    else
    begin
      mdata_PItem.Close;
      mdata_PList.Close;
    end;

  end;
end;

procedure TFrm_ShipItem.TB_Ref_ShipClick(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If UserFDepartmentsort=1 then //��ҵ��
  begin
    If not TreeVeiwListWhere(qry,MyTreeView_HItem,'VT_ShipItem',' and FDepartmentID='+IntToStr(UserFDepartmentID)) then
      Application.MessageBox(PChar('���ͽṹ��ʾ��������ϵϵͳ������Ա'), '����', MB_OK +MB_ICONSTOP);
  end;

  If UserFDepartmentsort=2 then   //�ӹ�˾
  begin
    If not TreeVeiwListWhere(qry,MyTreeView_HItem,'VT_ShipItem_Dep',' and FAgentID='+IntToStr(UserFDepartmentID) ) then
      Application.MessageBox(PChar('���ͽṹ��ʾ��������ϵϵͳ������Ա'), '����', MB_OK +MB_ICONSTOP);
  end;
  If UserFDepartmentsort=3 then //����ƽ̨
  begin
    If not TreeVeiwListWhere(qry,MyTreeView_HItem,'VT_ShipItem',' ') then
      Application.MessageBox(PChar('���ͽṹ��ʾ��������ϵϵͳ������Ա'), '����', MB_OK +MB_ICONSTOP);
  end;

end;

procedure TFrm_ShipItem.TB_Ref_PackClick(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If not TreeVeiwList(qry,MyTreeView_Pack,'VT_Pack', ) then
      Application.MessageBox(PChar('���ͽṹ��ʾ��������ϵϵͳ������Ա'), '����', MB_OK +MB_ICONSTOP);

end;

procedure TFrm_ShipItem.FormShow(Sender: TObject);
begin
  inherited;
  TB_Ref_Ship.Click;
  TB_Ref_Pack.Click;

end;

procedure TFrm_ShipItem.OKBtn_MClick(Sender: TObject);
var qry: TADOQuery;
    P_FBalanceNum:String;
    i:Integer;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  MData_HItem.open;
  MData_HItem.Edit;
  MData_HItem.Post;

  if (MData_HItem['FShipPactNum']='') or (MData_HItem['FShipPactNum']=null)  then
  begin
    application.MessageBox('�����ͬ�Ų���Ϊ�գ�','ϵͳ��ʾ',MB_ICONWARNING);
    Exit;
  end;
  if (MData_HItem['FShipWagonNo']=0) or (MData_HItem['FShipWagonNo']=null) then
  begin
    application.MessageBox('���κŲ���Ϊ�գ�','ϵͳ��ʾ',MB_ICONWARNING);
    Exit;
  end;


  mdata_HList.open;
  mdata_HList.Edit;
  mdata_HList.Post;

  Act_MaxID.Execute;//ȡID
  If P_state=0 then
  begin
    If application.MessageBox('�Ƿ�Ҫ������ӵ����ݣ�','��ʾ',MB_ICONINFORMATION+MB_YESNO)<>6 then
       Exit;
    If AddRd then //��������
    begin
      If application.MessageBox('¼�������ѱ���,��Ҫ����¼����','��ʾ',MB_ICONINFORMATION+MB_YESNO)=6 then
      begin
        try
          qry.SQL.Text:='select * from V_ShipList with(nolock)  where FShipListID=0';
          qry.Open;
        finally
           ;
        end;
        mdata_HList.CopyFromDataSet(qry);
        mdata_HList.Active:=True;

        mdata_HList.Edit;
        mdata_HList.First;
        for i:=0 to 10 do
        begin
          mdata_HList.Append;
          mdata_HList.Post;
        end;
        MData_HItem.Edit;
        MData_HItem['FShipWagonNo']:=MData_HItem['FShipWagonNo']+1;
        MData_HItem['FShipWagonNum']:='';
        MData_HItem['FDriver']:='';
        MData_HItem['FDriverPhone']:='';
      end
      else
      begin
        inherited;
        CancelBtn_M.Click;
      end;
    end;

  end;
  If P_state=1 then //�޸�����
  begin
    If application.MessageBox('�Ƿ�Ҫ���������޸ģ�','��ʾ',MB_ICONINFORMATION+MB_YESNO)<>6 then
       Exit;
    If EditRd then   //�޸�����
    begin
      application.MessageBox('�޸ļ�¼�ѱ���','ϵͳ��ʾ',MB_ICONINFORMATION);
      //inherited;
      CancelBtn_M.Click;
    end
    else
      application.MessageBox('�޸ļ�¼����ʧ�ܣ�','ϵͳ��ʾ',MB_ICONWARNING);
  end;
  MyTreeView_HItem.Enabled:=True;
  cxGrid_HItem.Enabled:=True;
  qry.Free;

end;

procedure TFrm_ShipItem.TB_Edit_MClick(Sender: TObject);
begin
  inherited;
  P_state :=1; //�޸�
  P_Sel:=0;//��һ������
  Act_Set_Open_M.Execute;
end;

procedure TFrm_ShipItem.CancelBtn_MClick(Sender: TObject);
begin
  inherited;
  Act_Set_Close_M.Execute;

end;

procedure TFrm_ShipItem.SelPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  If P_Sel=0 then //��һ������
     Action_Sel.Execute
  else
  begin
    PC_Ship.ActivePage:=TS_Pack;
    TS_Pack.TabEnabled:=True;
    TS_Ship.TabEnabled:=False;
  end;

end;

procedure TFrm_ShipItem.cxGV_SItemFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
var qry: TADOQuery;
begin
 { qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If P_state =2 then  //�����������޸�״̬
  begin
    If (mdata_SItem['FStockItemID']<>0) and (mdata_SItem['FStockItemID']<>Null) then
    begin
      If MyItemListID(qry,MData_SList,'V_StockList',' FStockItemID='+IntToStr(mdata_SItem['FStockItemID']),'FFullNumber',) then
    end;
  end; }
end;

procedure TFrm_ShipItem.cxGV_CItemFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
var qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If P_state =2 then  //�����������޸�״̬
  begin
    If (MData_HItem['FShipItemID']<>0) and (MData_HItem['FShipItemID']<>null) then
    begin
    If MyItemListID(qry,mdata_HList,'V_ShipList',' FShipItemID='+IntToStr(MData_HItem['FShipItemID']),'FFullNumber',) then
      {If MData_CItem.RecordCount>0 then
      begin
        TB_Prin.Visible:=False;
        TB_Check.Visible:=False;
        TB_Execl.Visible:=False;
      end; }
     // P_List :='('+MData_HItem['FCheckNum']+')';
      Act_Status_M.Execute  //Ȩ������
    end;
  end;


 {
   if P_state =2 then  //�����������޸�״̬
  begin
    If (mData_M['FCheckItemID']<>0) and (mData_M['FCheckItemID']<>null) then
    begin
      If MyItemListID(qry,Mdata,'V_CheckList',' FCheckItemID='+IntToStr(Mdata_M['FCheckItemID']),'FFullNumber',) then
      If mdata_M.RecordCount>0 then
      begin
        TB_Prin.Visible:=False;
        TB_Check.Visible:=False;
        TB_Execl.Visible:=False;
      end;
      P_List :='('+mdata_M['FCheckNum']+')';
      Act_Status.Execute  //Ȩ������
    end;
  end;  }

end;

procedure TFrm_ShipItem.TB_SubmitClick(Sender: TObject);
var
 qry:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  P_state:=3;
  If (TB_Submit.Caption='�ύ') or (TB_Submit.Caption='�����ύ') then
  begin
    If application.MessageBox(Pchar('ϵͳ��ʾ���Ƿ�Է�������Ϊ��'+P_List_HList+'�ĵ��ݽ����ύ��'+chr(13)+chr(13)
                                   +'ȷ��Ҫ�ύ�Ա�������'),'ϵͳ��ʾ',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      MData_HItem.First;
      while not MData_HItem.eof do
      begin
        try
          qry.SQL.Text:='Update T_ShipItem Set FShipStatus=1,FShipSubmitDate=:FShipSubmitDate  where FShipItemID=:FShipItemID';
          qry.Parameters.FindParam('FShipSubmitDate').value:= now();
          qry.Parameters.FindParam('FShipItemID').value:=MData_HItem['FShipItemID'];
          qry.ExecSQL;
        finally
          ;
        end;
        MData_HItem.Edit;
        MData_HItem['FShipStatus']:=1;
        MData_HItem['FShipStatusNotes']:='�ύ';
        MData_HItem['FShipSubmitDate']:=now();
        MData_HItem.Post;
        MData_HItem.Next;
      end;
      If MData_HItem.RecordCount=1 then
      begin
        application.MessageBox('�ύ��ϣ�','ϵͳ��ʾ',MB_ICONINFORMATION);
        TB_Submit.Caption:='�ύ����';
      end;
      If MData_HItem.RecordCount>1 then
      begin
        application.MessageBox('�����ύ��ϣ�','ϵͳ��ʾ',MB_ICONINFORMATION);
        TB_Submit.Caption:='�����ύ����';
      end;
      Act_Status_M.Execute;  //Ȩ������
    end;
    P_state:=2;
    Exit;
  end;
  If (TB_Submit.Caption='�ύ����') or (TB_Submit.Caption='�����ύ����')  then
  begin
    If application.MessageBox(Pchar('ϵͳ��ʾ���Ƿ�Է�������Ϊ��'+P_List_HList+'�ĵ��ݽ����ύ���أ�'+chr(13)+chr(13)
                                     +'ȷ��Ҫ�Ա������ύ������'),'ϵͳ��ʾ',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      MData_HItem.First;
      while not MData_HItem.eof do
      begin
        try
          qry.SQL.Text:='Update T_ShipItem Set FShipStatus=0,FShipSubmitDate=:FShipSubmitDate where FShipItemID=:FShipItemID';
          qry.Parameters.FindParam('FShipSubmitDate').value:= Null;
          qry.Parameters.FindParam('FShipItemID').value:= MData_HItem['FShipItemID'];
          qry.ExecSQL;
        finally
          ;
        end;
        MData_HItem.Edit;
        MData_HItem['FShipStatus']:=0;
        MData_HItem['FShipStatusNotes']:='�';
        MData_HItem['FShipSubmitDate']:=Null;
        MData_HItem.Post;
        MData_HItem.Next;
      end;
      If MData_HItem.RecordCount=1 then
      begin
        application.MessageBox('�ύ������ϣ�','ϵͳ��ʾ',MB_ICONINFORMATION);
        TB_Submit.Caption:='�ύ';
      end;
      If MData_HItem.RecordCount>1 then
      begin
        application.MessageBox('�����ύ������ϣ�','ϵͳ��ʾ',MB_ICONINFORMATION);
        TB_Submit.Caption:='�����ύ';
      end;
      Act_Status_M.Execute;  //Ȩ������
    end;
    P_state:=2;
    Exit;
  end;

end;

procedure TFrm_ShipItem.TB_CheckClick(Sender: TObject);
var
 qry:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  P_state:=3;
  If (TB_Check.Caption='У��') or (TB_Check.Caption='����У��') then
  begin
    If application.MessageBox(Pchar('ϵͳ��ʾ���Ƿ�Է�������Ϊ��'+P_List_HList+'�ĵ��ݽ���У�ԣ�'+chr(13)+chr(13)
                                     +'ȷ��ҪУ�Ա�������'),'ϵͳ��ʾ',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      MData_HItem.First;
      while not MData_HItem.eof do
      begin
        try
          qry.SQL.Text:='Update T_ShipItem Set FShipStatus=2,FShipCheckID=:FShipCheckID,FShipCheckDate=:FShipCheckDate  where FShipItemID=:FShipItemID';
          qry.Parameters.FindParam('FShipCheckDate').value:= now();
          qry.Parameters.FindParam('FShipCheckID').value:=UserNumID;
          qry.Parameters.FindParam('FShipItemID').value:=MData_HItem['FShipItemID'];
          qry.ExecSQL;
        finally
          ;
        end;
        MData_HItem.Edit;
        MData_HItem['FShipStatus']:=1;
        MData_HItem['FShipCheckDate']:=now();
        MData_HItem.Post;
        MData_HItem.Next;
      end;
      If MData_HItem.RecordCount=1 then
      begin
        application.MessageBox('У����ϣ�','ϵͳ��ʾ',MB_ICONINFORMATION);
        TB_Check.Caption:='У�Գ���';
      end;
      If MData_HItem.RecordCount>1 then
      begin
        application.MessageBox('����У����ϣ�','ϵͳ��ʾ',MB_ICONINFORMATION);
        TB_Check.Caption:='����У�Գ���';
      end;
      Act_Status_M.Execute;  //Ȩ������
    end;
    P_state:=2;
    Exit;
  end;
  If (TB_Check.Caption='У�Գ���') or (TB_Check.Caption='����У�Գ���')  then
  begin
    If application.MessageBox(Pchar('ϵͳ��ʾ���Ƿ�Է�������Ϊ��'+P_List_HList+'�ĵ��ݽ���У�Գ��أ�'+chr(13)+chr(13)
                                     +'ȷ��Ҫ�Ա�����У�Գ�����'),'ϵͳ��ʾ',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      MData_HItem.First;
      while not MData_HItem.eof do
      begin
        try
          qry.SQL.Text:='Update T_ShipItem Set FShipStatus=1,FShipCheckID=:FShipCheckID,FShipCheckDate=:FShipCheckDate where FShipItemID=:FShipItemID';
          qry.Parameters.FindParam('FShipCheckDate').value:= Null;
          qry.Parameters.FindParam('FShipCheckID').value:= 0;
          qry.Parameters.FindParam('FShipItemID').value:= MData_HItem['FShipItemID'];
          qry.ExecSQL;
        finally
          ;
        end;
        MData_HItem.Edit;
        MData_HItem['FShipStatus']:=1;
        MData_HItem['FShipStatusNotes']:='�ύ';
        MData_HItem['FShipCheckDate']:=Null;
        MData_HItem.Post;
        MData_HItem.Next;
      end;
      If MData_HItem.RecordCount=1 then
      begin
        application.MessageBox('У�Գ�����ϣ�','ϵͳ��ʾ',MB_ICONINFORMATION);
        TB_Check.Caption:='У��';
      end;
      If MData_HItem.RecordCount>1 then
      begin
        application.MessageBox('����У�Գ�����ϣ�','ϵͳ��ʾ',MB_ICONINFORMATION);
        TB_Check.Caption:='����У��';
    end;
    Act_Status_M.Execute;  //Ȩ������
    end;
    P_state:=2;
    Exit;
  end;

end;

procedure TFrm_ShipItem.Act_Status_MExecute(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  TB_Submit.Visible:=False;
  TB_Check.Visible:=False;
  TB_Edit_M.Visible:=False;
  TB_Del.Visible:=False;

  //�Ƶ����Ǳ���
  try
    qry.SQL.Text:='Select distinct FShipStatus,FShipWriteID from V_ShipList with(nolock) where FAgentID=:FAgentID and FFullNumber like :FFullNumber';
    qry.Parameters.FindParam('FAgentID').value:= UserFDepartmentID;
    qry.Parameters.FindParam('FFullNumber').value:=ListFNumber_HList+'%';
    qry.Open;
  finally
    ;
  end;
   //�Ƶ����Ǳ���

  If (qry.RecordCount=1) and (qry.FieldByName('FShipStatus').AsInteger=0)
      and (qry.FieldByName('FShipWriteID').AsInteger=UserNumID) then
  begin
    If mdata_HItem.RecordCount=0 then
    begin
      TB_Del.Visible:=False;
      TB_Submit.Visible:=False;
    end;
    If mdata_HItem.RecordCount>0 then
    begin
      TB_Submit.Visible:=mdlData.CheckFrmRights(TFrm_ShipItem.ClassName,'�ύ');
      TB_Submit.Caption:='�����ύ';
      TB_Del.Visible:=False;
    end;
    If mdata_HItem.RecordCount=1 then
    begin
      TB_Edit_M.Visible:=mdlData.CheckFrmRights(TFrm_ShipItem.ClassName,'�޸�');
      TB_Del.Visible:=mdlData.CheckFrmRights(TFrm_ShipItem.ClassName,'ɾ��');
      TB_Submit.Visible:=mdlData.CheckFrmRights(TFrm_ShipItem.ClassName,'�ύ');
      TB_Submit.Caption:='�ύ';
    end;
    Exit;
  end;

   //�ύ���Ǳ���
  If (qry.RecordCount=1) and (qry.FieldByName('FShipStatus').AsInteger=1)
     and (qry.FieldByName('FShipWriteID').AsInteger=UserNumID) then
  begin
    TB_Submit.Visible:=mdlData.CheckFrmRights(TFrm_ShipItem.ClassName,'�ύ');
    If mdata_HItem.RecordCount=0 then
       TB_Submit.Visible:=False;
    If mdata_HItem.RecordCount>0 then
       TB_Submit.Caption:='�����ύ����';
    If mdata_HItem.RecordCount=1 then
       TB_Submit.Caption:='�ύ����';
    TB_Edit_M.Visible:=False;
    TB_Del.Visible:=False;
    Exit;
  end;


   //У��
  try
    qry.SQL.Text:='Select distinct FShipStatus from V_ShipList with(nolock) where FAgentID=:FAgentID and FFullNumber like :FFullNumber';
    qry.Parameters.FindParam('FAgentID').value:= UserFDepartmentID;
    qry.Parameters.FindParam('FFullNumber').value:=ListFNumber_HList+'%';
    qry.Open;
  finally
    ;
  end;
  If (qry.RecordCount>1)  then
     Exit;
  If (qry.RecordCount=1) and (qry.FieldByName('FShipStatus').AsInteger=1) then
  begin
    If mdata_HItem.RecordCount=0 then
    begin
      TB_Check.Visible:=False;
    end;
    If mdata_HItem.RecordCount>0 then
    begin
      TB_Check.Visible:=mdlData.CheckFrmRights(TFrm_ShipItem.ClassName,'У��');
      TB_Check.Caption:='����У��';
    end;
    If mdata_HItem.RecordCount=1 then
    begin
      TB_Check.Visible:=mdlData.CheckFrmRights(TFrm_ShipItem.ClassName,'У��');
      TB_Check.Caption:='У��';
    end;
    Exit;
  end;


  If (qry.RecordCount=1) and (qry.FieldByName('FShipStatus').AsInteger=2) then
  begin
    TB_Check.Visible:=mdlData.CheckFrmRights(TFrm_ShipItem.ClassName,'У��');
    If mdata_HItem.RecordCount=0 then
       TB_Check.Visible:=False;
    If mdata_HItem.RecordCount>0 then
       TB_Check.Caption:='����У�Գ���';
    If mdata_HItem.RecordCount=1 then
       TB_Check.Caption:='У�Գ���';
    Exit;
  end;
end;

procedure TFrm_ShipItem.SelCancelBtnClick(Sender: TObject);
begin
  inherited;
  PC_Ship.ActivePage:=TS_Ship;
  TS_Ship.TabEnabled:=True;
  TS_Pack.TabEnabled:=False;

end;

procedure TFrm_ShipItem.PC_CheckChange(Sender: TObject);
begin
  inherited;
  TB_Ref_Ship.Click;
end;

procedure TFrm_ShipItem.TB_EditLListClick(Sender: TObject);
var
   AFirstColumnStyle: TcxStyle;
begin
  inherited;
  P_state:=1;

end;

procedure TFrm_ShipItem.Act_Set_Open_MExecute(Sender: TObject);
begin
  inherited;
  MyTreeView_HItem.Enabled:=False;
  RSP_CList.Enabled:=False;
  P_Btn.Visible:=True;

  OkBtn_M.Visible:=True;
  CancelBtn_M.Visible:=True;

  ToolBar_HItem.Visible:=False;

  cxGV_HItem.OptionsData.Editing:=True;
  FShipPactNum.Options.Editing:=True;
  FShipWagonNum.Options.Editing:=True;
  FShipWagonNo.Options.Editing:=True;
  FShipLoadDate.Options.Editing:=True;

  FConsigneeName.Options.Editing:=True;
  FConsigneePhone.Options.Editing:=True;
  FDriver.Options.Editing:=True;
  FDriverPhone.Options.Editing:=True;

  cxGV_HList.OptionsData.Editing:=True;
  Sel.Visible:=True;
  Sel.Options.Editing:=True;

  cxGV_HList.OptionsData.Editing:=True;
  FPackNum_HL.Options.Editing:=True;

  P_Sel:=0;//��һ������

end;

procedure TFrm_ShipItem.Act_Set_Close_MExecute(Sender: TObject);
var
   AFirstColumnStyle: TcxStyle;
begin
  inherited;
 { AFirstColumnStyle := TcxStyle.Create(Self);
  AFirstColumnStyle.Color := clCaptionText;
  AFirstColumnStyle.TextColor := clWindowText;
  cxGV_Clist.Columns[cxGV_Hlist.FindItemByName('FCheckQry').Index].Styles.Content := AFirstColumnStyle;        //FCheckNosQry
  cxGV_Clist.Columns[cxGV_Hlist.FindItemByName('Sel').Index].Styles.Content := AFirstColumnStyle;        //FCheckListRemark

  cxGV_CItem.Columns[cxGV_HItem.FindItemByName('FCheckICQC').Index].Styles.Content := AFirstColumnStyle;        //FCheckNosQry
  cxGV_CItem.Columns[cxGV_HItem.FindItemByName('FTeamName_M').Index].Styles.Content := AFirstColumnStyle;        //FCheckNosQry
  }
  PC_Ship.Enabled:=True;

  RSP_CList.Enabled:=True;

  MyTreeView_HItem.Enabled:=True;
  P_Btn.Visible:=False;

  cxGV_HItem.OptionsData.Editing:=False;
  cxGV_HList.OptionsData.Editing:=False;

  Sel.Visible:=False;
  Sel.Options.Editing:=False;

  ToolBar_HItem.Visible:=True;


  P_state:=2;


end;

procedure TFrm_ShipItem.Act_Set_OpenExecute(Sender: TObject);
begin
  inherited;
 { TB_Ref_Stock.Enabled:=False;
  MyTreeView_SList.Enabled:=True;
  PC_Check.Enabled:=False;

  OKBtn_M.Visible:=True;
  CancelBtn_M.Visible:=True;
  cxGV_SList.OptionsData.Editing:=True;

  Self.TB_Ref_Stock.Click;
    }
end;

procedure TFrm_ShipItem.Act_Set_CloseExecute(Sender: TObject);
begin
  inherited;
{  TB_Ref_Stock.Enabled:=True;
  MyTreeView_CheckList.Enabled:=True;
  MyTreeView_SList.Enabled:=True;
  PC_Check.Enabled:=True;
  OKBtn_M.Visible:=False;
  CancelBtn_M.Visible:=False;   }

end;

procedure TFrm_ShipItem.Act_MenuExecute(Sender: TObject);
Var i:Integer;
begin
  //1������
  If copy((FindComponent(Mn) as TMenuItem).Caption,1,pos('(',(FindComponent(Mn) as TMenuItem).Caption)-1)='ȡ������' then
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

  //�༭
  If (copy((FindComponent(Mn) as TMenuItem).Caption,1,pos('(',(FindComponent(Mn) as TMenuItem).Caption)-1)='�༭')
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
  If (copy((FindComponent(Mn) as TMenuItem).Caption,1,pos('(',(FindComponent(Mn) as TMenuItem).Caption)-1)='�༭')
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
  //����
  If (copy((FindComponent(Mn) as TMenuItem).Caption,1,pos('(',(FindComponent(Mn) as TMenuItem).Caption)-1)='����')
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
  If (copy((FindComponent(Mn) as TMenuItem).Caption,1,pos('(',(FindComponent(Mn) as TMenuItem).Caption)-1)='����')
     and ((FindComponent(Mn) as TMenuItem).Checked=True) then
  begin
    (FindComponent(Mn) as TMenuItem).Checked:=False;
    for i:=0 to (FindComponent(GV) as TcxGridDBTableView).ColumnCount-1 do
    begin
      (FindComponent(GV) as TcxGridDBTableView).Columns[i].Options.Filtering:=False;
    end;
    Exit;
  end;
  //����
  If (copy((FindComponent(Mn) as TMenuItem).Caption,1,pos('(',(FindComponent(Mn) as TMenuItem).Caption)-1)='����')
     and ((FindComponent(Mn) as TMenuItem).Checked=False) then
  begin
    (FindComponent(Mn) as TMenuItem).Checked:=True;
    for i:=0 to (FindComponent(GV) as TcxGridDBTableView).ColumnCount-1 do
    begin
      (FindComponent(GV) as TcxGridDBTableView).Columns[i].Options.Sorting:=True;
    end;
    Exit;
  end;
  If (copy((FindComponent(Mn) as TMenuItem).Caption,1,pos('(',(FindComponent(Mn) as TMenuItem).Caption)-1)='����')
     and ((FindComponent(Mn) as TMenuItem).Checked=True) then
  begin
    (FindComponent(Mn) as TMenuItem).Checked:=False;
    for i:=0 to (FindComponent(GV) as TcxGridDBTableView).ColumnCount-1 do
    begin
      (FindComponent(GV) as TcxGridDBTableView).Columns[i].Options.Sorting:=False;
    end;
    Exit;
  end;
 // ����
  If (copy((FindComponent(Mn) as TMenuItem).Caption,1,pos('(',(FindComponent(Mn) as TMenuItem).Caption)-1)='����')
     and ((FindComponent(Mn) as TMenuItem).Checked=False) then
  begin
    (FindComponent(GV) as TcxGridDBTableView).OptionsView.GroupByBox:=True;
    (FindComponent(Mn) as TMenuItem).Checked:=True;
    Exit;
  end;
  If (copy((FindComponent(Mn) as TMenuItem).Caption,1,pos('(',(FindComponent(Mn) as TMenuItem).Caption)-1)='����')
     and ((FindComponent(Mn) as TMenuItem).Checked=True) then
  begin
    (FindComponent(GV) as TcxGridDBTableView).OptionsView.GroupByBox:=False;
    (FindComponent(Mn) as TMenuItem).Checked:=False;
    Exit;
  end;
  //����
  If copy((FindComponent(Mn) as TMenuItem).Caption,1,pos('(',(FindComponent(Mn) as TMenuItem).Caption)-1)='����' then
  begin
    If (FindComponent(Gm) as TdxMemData).RecordCount>0 then
       ExportToExcel((FindComponent(Gr) as TcxGrid),True,TRue)
    else
       Application.MessageBox(PChar('û����Ҫ���������ݣ�'), '����', MB_OK +MB_ICONSTOP);
    Exit;
  end;


end;

procedure TFrm_ShipItem.Act_Menu_SetExecute(Sender: TObject);
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

procedure TFrm_ShipItem.cxGrid_SItemContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
    GV:='cxGV_SItem';
    Gm:='mdata_SItem';
    Gr:='cxGrid_SItem';
    Act_Menu_Set.Execute;

end;

procedure TFrm_ShipItem.cxGrid_SListContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
    GV:='cxGV_SList';
    Gm:='mdata_SList';
    Gr:='cxGrid_SList';
    Act_Menu_Set.Execute;

end;

procedure TFrm_ShipItem.cxGrid_HListContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV_CList';
  Gm:='mdata_CList';
  Gr:='cxGrid_CList';
  Act_Menu_Set.Execute;

end;

procedure TFrm_ShipItem.cxGrid_CItemContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV_CItem';
  Gm:='mdata_CItem';
  Gr:='cxGrid_CItem';
  Act_Menu_Set.Execute;

end;

procedure TFrm_ShipItem.N_EditClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_ShipItem.N_FilterClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_ShipItem.N_SortClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_ShipItem.N_GroupClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_ShipItem.N_SetClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_ShipItem.N_OutClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_ShipItem.cxGV_PItemFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
var qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  begin
    If (mdata_PItem['FFullNumber_Dep']<>'') and (mdata_PItem['FFullNumber_Dep']<>Null) and (mdata_PItem.RecordCount>0) then
    begin
      If MyItemList(qry,Mdata_PList,'V_PackList','cast(FDepartmentID as nvarchar(20))+'';''+FItemNo+'';''+FPackNum',mdata_PItem['FFullNumber_Dep'],'FFullNumber') then
    end;
  end;

end;

procedure TFrm_ShipItem.TB_SelClick(Sender: TObject);
var  i,j: integer;
begin
  inherited;
  mdata_HList.Open;
  mdata_HList.Edit;
  mdata_HList.Last;
  for i:=0 to cxGV_PItem.DataController.Controller.SelectedRecordCount-1 do
  begin
    j:=cxGV_PItem.DataController.GetSelectedRowIndex(i);
    If (cxGV_PItem.DataController.GetValue(J,0)<>'') then
    begin
      mdata_HList.Append;
     // mdata_HList['FCheckListNum']:=i+1;
      mdata_HList['FPackNum']:=cxGV_PItem.DataController.GetValue(J,0);
      mdata_HList['FPackNumber']:=cxGV_PItem.DataController.GetValue(J,1);
      mdata_HList['FPackName']:=cxGV_PItem.DataController.GetValue(J,2);
      mdata_HList['FPackMode']:=cxGV_PItem.DataController.GetValue(J,3);
      mdata_HList['FNet']:=cxGV_PItem.DataController.GetValue(J,4);
      mdata_HList['FGross']:=cxGV_PItem.DataController.GetValue(J,5);
      mdata_HList['FLength']:=cxGV_PItem.DataController.GetValue(J,6);
      mdata_HList['FWidth']:=cxGV_PItem.DataController.GetValue(J,7);
      mdata_HList['FHigh']:=cxGV_PItem.DataController.GetValue(J,8);
      mdata_HList['FV']:=cxGV_PItem.DataController.GetValue(J,9);
      mdata_HList['FSteel']:=cxGV_PItem.DataController.GetValue(J,10);
      mdata_HList['FWood']:=cxGV_PItem.DataController.GetValue(J,11);
      mdata_HList['FPlastic']:=cxGV_PItem.DataController.GetValue(J,12);
      mdata_HList['FAsphalt']:=cxGV_PItem.DataController.GetValue(J,13);
      mdata_HList['FColorbar']:=cxGV_PItem.DataController.GetValue(J,14);
      mdata_HList['FPlace']:=cxGV_PItem.DataController.GetValue(J,15);
      mdata_HList.Post;
    end;
  end;
  cxGV_PItem.DataController.DeleteSelection;   //����ɾ��
  MyTreeView_Pack.Enabled:=False;
  cxGrid_PItem.Enabled:=True;
  PC_Ship.ActivePage:=TS_Ship;
  TS_Pack.TabEnabled:=False;
  TS_Ship.TabEnabled:=True;
  P_Sel:=1;//�ڶ���ѡ��

end;

procedure TFrm_ShipItem.FBranchItemNumberPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  mData_HItem.Edit;
  mData_HItem.Post;
  If mData_HItem['FBranchItemNumber']=Null then
  begin
    mData_HItem.Edit;
    mData_HItem['FBranchItemNumber']:='';
    mData_HItem.Post;
  end;
  try
    qry.SQL.Text:='select * from VT_FileItem where FBranchItemNumber like :FBranchItemNumber order by FBranchItemNumber ';
    qry.Parameters.FindParam('FBranchItemNumber').value:='%'+mData_HItem['FBranchItemNumber']+'%';
    qry.Open;
  finally
   ;
  end;

  selValue:=select('ѡ����Ŀͼ��','FNumber','FParentNumber','FNumber','FName',qry);
  If (Length(selValue)>0) then
  begin
    mData_HItem.Edit;
    mData_HItem['FBranchItemNumber']:=qry.FieldByName('FBranchItemNumber').Value;
    mData_HItem['FItemID']:=qry.FieldByName('FItemID').Value;
    mData_HItem['FItemNumber']:=qry.FieldByName('FItemNumber').Value;
    mData_HItem['FClientShortName']:=qry.FieldByName('FClientShortName').Value;
    mData_HItem['FBranchFileNo']:=qry.FieldByName('FBranchFileNo').Value;
    mData_HItem.Post;
  end;


end;

procedure TFrm_ShipItem.Act_MaxIDExecute(Sender: TObject);
var
  proc:TADOStoredProc;
begin
  proc:=TADOStoredProc.Create(self);
  proc.ConnectionString:=mdlData.ReadConnStr;
  proc.CommandTimeout:=500;

  try
    proc.ProcedureName:='P_GetMaxID;1';
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=20;
      name := '@TableName';
      value:='T_ShipItem';
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftInteger;
      Direction := pdoutput;
      size:=255;
      name := '@FInterID';
      value:=0;
    end;
    proc.ExecProc;
    P_MaxID:=proc.Parameters.FindParam('@FInterID').Value;
    proc.Free;
  finally
     ;
  end;

end;

procedure TFrm_ShipItem.ToolButton1Click(Sender: TObject);
begin
  inherited;
  MyTreeView_Pack.Enabled:=True;
  PC_Ship.ActivePage:=TS_Ship;
  TS_Pack.TabEnabled:=False;
  TS_Ship.TabEnabled:=True;


end;

procedure TFrm_ShipItem.FShipPactNumPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  mData_HItem.Edit;
  mData_HItem.Post;
  If mData_HItem['FShipPactNum']=Null then
  begin
    mData_HItem.Edit;
    mData_HItem['FShipPactNum']:='';
    mData_HItem.Post;
  end;
  try
    qry.SQL.Text:='select * from VT_Ship where FAgentID=:FAgentID ';
    qry.Parameters.FindParam('FAgentID').value:=UserFDepartmentID;
   // qry.Parameters.FindParam('FShipPactNum').value:='%'+mData_HItem['FShipPactNum']+'%';
    qry.Open;
  finally
   ;
  end;

  selValue:=select('ѡ�񷢻���ͬ��','FNumber','FParentNumber','FNumber','FName',qry);
  If (Length(selValue)>0) then
  begin
    mData_HItem.Edit;
    mData_HItem['FShipID']:=qry.FieldByName('FShipID').Value;
    mData_HItem.Post;
  end;
  try
    qry.SQL.Text:='select * from V_Ship where FShipID=:FShipID ';
    qry.Parameters.FindParam('FShipID').value:=mData_HItem['FShipID'];
    qry.Open;
  finally
   ;
  end;
  if qry.RecordCount>0 then
  begin
    mData_HItem.Edit;
    mData_HItem['FShipPactNum']:=qry.FieldByName('FShipPactNum').Value;
    mData_HItem['FShipWay']:=qry.FieldByName('FShipWay').Value;
    mData_HItem['FConsignee']:=qry.FieldByName('FConsignee').Value;
    mData_HItem['FConsigneeDress']:=qry.FieldByName('FConsigneeDress').Value;
    mData_HItem['FBranchItemNumber']:=qry.FieldByName('FBranchItemNumber').Value;
    mData_HItem['FItemID']:=qry.FieldByName('FItemID').Value;
    mData_HItem.Post;
  end;


end;

procedure TFrm_ShipItem.TB_ShipListClick(Sender: TObject);
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

  P_List_Pack:=mdata_HItem['FBranchItemNumber'];
  filepath:=Extractfilepath(application.ExeName)+'�����嵥ģ��.xls';
  if (mdata_HItem.Active) and (mdata_HItem.recordcount>0) then
  Begin
    SaveDialog1.FileName:='�����嵥('+P_List_Pack+')';
    SaveDialog1.Filter:='.xls';
    SaveDialog1.Execute;

    if (mdata_HItem.FieldByName('FBranchItemNumber').AsString<>'') Or (mdata_HItem.FieldByName('FBranchItemNumber').AsString<>Null) then
        savefilepath:=SaveDialog1.FileName+'.xls';

    if FileExists(savefilepath) then
    begin
      DeleteFile(savefilepath) ;
    end;
    stbMsg.Caption:='��ʾ��Ϣ�����ڵ����������嵥:'+'��'+mdata_HItem.FieldByName('FBranchItemNumber').AsString+'��';
    stbBar.Refresh;

    ExcelApp:= CreateOleObject('Excel.Application' );
    ExcelApp.DisplayAlerts:=False;                  //����ʾ��ʾ��
    MyWorkBook:=ExcelApp.WorkBooks.Open( filepath );   //��ģ��
    //ExcelApp.Visible:=True;

    try
      qry.SQL.Text:='select distinct FShipPactNum,FShipWagonNo from V_ShipList_MX where FFullNumber like :FFullNumber';
      qry.Parameters.FindParam('FFullNumber').value:=ListFNumber_HList;
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
       qry1.SQL.Text:='select * from V_ShipList_MX where FShipItemID=:FShipItemID ';
       qry1.Parameters.FindParam('FShipItemID').value:=mdata_HList['FShipItemID'];
       qry1.Open;
     finally
       ;
     end;
     if qry1.RecordCount>0 then
     begin
       mdata_HList.Close;
       mdata_HList.CopyFromDataSet(qry1);
     end;
     vLastSheet:=MyWorkBook.Sheets[MyWorkBook.Sheets.Count];
     MyWorkBook.Sheets[1].Copy(EmptyParam,vLastSheet);
     MyWorkBook.WorkSheets[k].Name:=IntToStr(k)+mdata_HList['FShipWagonNo'];
     MyWorkBook.WorkSheets[k].Activate;


      //����
      MyWorkBook.WorkSheets[k].Cells[1,1].Value:=AnsiReplaceStr(MyWorkBook.WorkSheets[k].Cells[1,1].Value,'A',UserFDepartmentName); //��˾����

      MyWorkBook.WorkSheets[k].Cells[4,3].Value := Trim(mdata_HList.FieldByName('FShipPactNum').AsString); //�����ͬ��
      MyWorkBook.WorkSheets[k].Cells[4,6].Value := Trim(mdata_HList.FieldByName('FBranchFileNo').AsString); //��Ŀ��ͬ��
      MyWorkBook.WorkSheets[k].Cells[4,13].Value := Trim(mdata_HList.FieldByName('FBranchItemNumber').AsString); //ͼ��

      MyWorkBook.WorkSheets[k].Cells[5,3].Value := Trim(mdata_HList.FieldByName('FClientFullName').AsString); //��Ŀ����

      MyWorkBook.WorkSheets[k].Cells[6,3].Value := Trim(mdata_HList.FieldByName('FShipLoadDate').AsString); //װ������
      MyWorkBook.WorkSheets[k].Cells[6,5].Value := Trim(mdata_HList.FieldByName('FShipWagonNum').AsString); //���䳵��
      MyWorkBook.WorkSheets[k].Cells[6,8].Value := Trim(mdata_HList.FieldByName('FShipWagonNo').AsString); //���䳵��

      MyWorkBook.WorkSheets[k].Cells[6,10].Value := Trim(mdata_HList.FieldByName('FDriver').AsString); //˾��
      MyWorkBook.WorkSheets[k].Cells[6,13].Value := Trim(mdata_HList.FieldByName('FDriverPhone').AsString); //˾���绰

      MyWorkBook.WorkSheets[k].Cells[7,3].Value := Trim(mdata_HList.FieldByName('FConsigneeDress').AsString); //������ַ
      MyWorkBook.WorkSheets[k].Cells[8,3].Value := Trim(mdata_HList.FieldByName('FConsignee').AsString); //�ջ���λ
      MyWorkBook.WorkSheets[k].Cells[9,3].Value := Trim(mdata_HList.FieldByName('FConsigneeName').AsString); //�ջ���ϵ��
      MyWorkBook.WorkSheets[k].Cells[9,6].Value := Trim(mdata_HList.FieldByName('FConsigneePhone').AsString); //��ϵ�绰

      //ѭ���п�ʼ
      i:=12;

       //����������
      MyWorkBook.WorkSheets[k].Name:=mdata_HItem.FieldByName('FShipWagonNo').AsString;
      copystart:='A'+IntToStr(i);
      if mdata_HList.recordcount>0 then
      Begin
        if mdata_HList.recordcount>1 then
        Begin
          copystart:='A'+IntToStr(i);
          copystart1:='A'+IntToStr(i+1);
          copyend:='N'+IntToStr(i);  //����
          ReNum:=mdata_HList.recordcount-1+(25-((mdata_HList.RecordCount+1) mod 25));;
          L:=mdata_HList.recordcount-1+(25-((mdata_HList.RecordCount+1) mod 25));;
          while ReNum>0 do
          Begin
            ExcelApp.ActiveSheet.Range[copystart+':'+copyend].Copy;
            ExcelApp.ActiveSheet.Rows[i+1].Insert;
            ExcelApp.ActiveSheet.Range[copystart1].PasteSpecial;
            Renum:=Renum-1;
          end;
          //�Ƶ��������

         // MyWorkBook.WorkSheets[k].Cells[i+L+1,2].Value:=mdata_HList.FieldByName('FShipRemark').AsString; //��ע
          MyWorkBook.WorkSheets[k].Cells[i+L+2,2].Value:=mdata_HList.FieldByName('FShipCheck').AsString; //���
          MyWorkBook.WorkSheets[k].Cells[i+L+2,10].Value:=mdata_HList.FieldByName('FShipWrite').AsString; //�Ƶ�
           
        end
        else
        Begin
          R_Count:=mdata_HList.recordcount;
        end;
        mdata_HList.first;
        while not mdata_HList.eof do
        Begin
          If mdata_HList.FieldByName('FListNum').Value=0 then
             MyWorkBook.WorkSheets[k].Cells[i,1].Value := mdata_HList.FieldByName('FPackNum').AsString //���
          else
             MyWorkBook.WorkSheets[k].Cells[i,1].Value := ''; //���
           // MyWorkBook.WorkSheets[k].Cells[i,1].Value := mdata_HList.FieldByName('FListNum').AsString; //���
          MyWorkBook.WorkSheets[k].Cells[i,2].Value := ' '+mdata_HList.FieldByName('FPackNumber').AsString; //ͼ��
          MyWorkBook.WorkSheets[k].Cells[i,4].Value := ' '+mdata_HList.FieldByName('FPackName').AsString; //����+���
          If mdata_HList.FieldByName('FListNum').Value=0 then
             MyWorkBook.WorkSheets[k].Cells[i,6].Value :='��'
          else
              MyWorkBook.WorkSheets[k].Cells[i,6].Value :='��';
          If mdata_HList.FieldByName('FListNum').Value=0 then
             MyWorkBook.WorkSheets[k].Cells[i,7].Value := 1 //����
          else
              MyWorkBook.WorkSheets[k].Cells[i,7].Value := mdata_HList.FieldByName('FPackQry').AsString; //����

          MyWorkBook.WorkSheets[k].Cells[i,8].Value := mdata_HList.FieldByName('FPackMode').AsString; //��װ��ʽ
          MyWorkBook.WorkSheets[k].Cells[i,9].Value := mdata_HList.FieldByName('FGross').AsString; //ë��
          MyWorkBook.WorkSheets[k].Cells[i,10].Value := mdata_HList.FieldByName('FNet').AsString; //����
          MyWorkBook.WorkSheets[k].Cells[i,11].Value := mdata_HList.FieldByName('FLength').AsString; //��
          MyWorkBook.WorkSheets[k].Cells[i,12].Value := mdata_HList.FieldByName('FWidth').AsString; //��
          MyWorkBook.WorkSheets[k].Cells[i,13].Value := mdata_HList.FieldByName('FHigh').AsString; //��
          MyWorkBook.WorkSheets[k].Cells[i,14].Value := mdata_HList.FieldByName('FV').AsString; //���
          mdata_HList.next;
          i:=i+1;
        End;
      end;
      qry.Next ;
      ExcelApp.Visible:=True;
      MyWorkBook.WorkSheets[k].PrintPreview;  //��ӡ
      k:=k+1;
    end;
    MyWorkBook.WorkSheets[1].delete; //ɾ��ģ��
    stbMsg.Caption:='��ʾ��Ϣ�������嵥:'+'��'+mdata_HList.FieldByName('FBranchItemNumber').AsString+'������Ϣ�������!';
    stbBar.Refresh;
    MyWorkBook.saveas(savefilepath);
    MyWorkBook.Close;
    ExcelApp.Quit;
    ExcelApp:=Unassigned;
  end
  else
  Begin
    Application.MessageBox(PChar('û�пɵ��������ݣ�������ѡ��'), '������������', MB_OK + MB_ICONSTOP);
    Exit;
  End;


end;

procedure TFrm_ShipItem.Action_SelExecute(Sender: TObject);
var
  qry,qry1:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If (mdata_HItem['FBranchItemNumber']='') or (mdata_HItem['FBranchItemNumber']=Null) then
  begin
    Application.MessageBox(PChar('��ѡ����Ŀͼ�ţ�������ѡ��'), 'ϵͳ��ʾ', MB_OK + MB_ICONSTOP);
    Exit;
  End;

  try
    qry.SQL.Text:='select * from V_PackItem where FBranchItemNumber=:FBranchItemNumber and FPackNo<>0 and FShipPactNum='''' order by FPackNum ';
    qry.Parameters.FindParam('FBranchItemNumber').value:=mdata_HItem['FBranchItemNumber'];
    qry.Open;
  finally
     ;
  end;
  mdata_PItem.CopyFromDataSet(qry);
  mdata_PItem.Active:=True;
  mdata_PItem.First;
  if mdata_PItem.RecordCount=0 then
  begin
    Application.MessageBox(PChar('����Ŀ��װ�嵥δ����!'), 'ϵͳ��ʾ', MB_OK + MB_ICONSTOP);
    Exit;
  end;
 
  PC_Ship.ActivePage:=TS_Pack;
  TS_Pack.TabEnabled:=True;
  TS_Ship.TabEnabled:=False;

end;

procedure TFrm_ShipItem.cxGV_HItemFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
var qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If P_state =2 then  //�����������޸�״̬
  begin
    If (MData_HItem['FShipItemID']<>0) and (MData_HItem['FShipItemID']<>null) then
    begin
      If MyItemListID(qry,mdata_HList,'V_ShipList',' FShipItemID='+IntToStr(MData_HItem['FShipItemID']),'FFullNumber',) then
      Act_Status_M.Execute  //Ȩ������
    end;
  end;

end;

procedure TFrm_ShipItem.FPackNum_HLPropertiesEditValueChanged(
  Sender: TObject);
var  qry: TADOQuery;
begin
   qry:=TADOQuery.Create(self);
   qry.ConnectionString:=mdlData.ReadConnStr;
   mdata_HList.Edit;
   mdata_HList.Post;

   if mdata_HItem['FItemID']=0 then
   begin
     application.MessageBox('��ѡ����Ŀ���ƣ�','ϵͳ��ʾ',MB_ICONINFORMATION);
     exit;
   end;
   if mdata_HList['FPackNum']=Null then
   begin
     mdata_HList['FPackNum']:='';
     mdata_HList.Post;
   end;
   try
     qry.SQL.Text:='select * from T_PackItem with(nolock) where FItemID=:FItemID and FPackNum=:FPackNum ';
     qry.Parameters.FindParam('FItemID').Value:=Trim(mdata_HItem['FItemID']);
     qry.Parameters.FindParam('FPackNum').Value:=Trim(mdata_HList['FPackNum']);
     qry.Open;
   finally
     ;
   end;

   If qry.RecordCount=1 then
   begin
     mdata_HList.Edit;
     mdata_HList['FPackNum']:=qry.FieldByName('FPackNum').Value;
     mdata_HList['FPackNumber']:=qry.FieldByName('FPackNumber').Value;
     mdata_HList['FPackName']:=qry.FieldByName('FPackName').Value;
     mdata_HList['FPackMode']:=qry.FieldByName('FPackMode').Value;
     mdata_HList['FNet']:=qry.FieldByName('FNet').Value;
     mdata_HList['FGross']:=qry.FieldByName('FGross').Value;
     mdata_HList['FLength']:=qry.FieldByName('FLength').Value;
     mdata_HList['FWidth']:=qry.FieldByName('FWidth').Value;
     mdata_HList['FHigh']:=qry.FieldByName('FHigh').Value;
     mdata_HList['FV']:=qry.FieldByName('FV').Value;
     mdata_HList['FSteel']:=qry.FieldByName('FSteel').Value;
     mdata_HList['FWood']:=qry.FieldByName('FWood').Value;
     mdata_HList['FPlastic']:=qry.FieldByName('FPlastic').Value;
     mdata_HList['FAsphalt']:=qry.FieldByName('FAsphalt').Value;
     mdata_HList['FColorbar']:=qry.FieldByName('FColorbar').Value;
     mdata_HList['FPlace']:=qry.FieldByName('FPlace').Value;
     mdata_HList.Post;
     Exit;
   end;

end;
end.


