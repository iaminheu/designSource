unit Main_ApprovalItem;

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
  cxTimeEdit, jpeg, cxCheckComboBox, cxGridBandedTableView, cxGridDBBandedTableView, DBTables,
  Menus, cxMemo;

type
  TFrm_ApprovalItem = class(TFrm_GridBass)
    ImageList: TImageList;
    frReport: TfrReport;
    frDBDataSet: TfrDBDataSet;
    PC_Ship: TRzPageControl;
    TS_Ship: TRzTabSheet;
    PanelBkGnd: TPanel;
    Panel7: TPanel;
    RSP_CList: TRzSizePanel;
    ToolBar_HItem: TToolBar;
    TB_App: TToolButton;
    TB_Del: TToolButton;
    TB_Ref: TToolButton;
    Label9: TLabel;
    E_FClientFullName: TcxTextEdit;
    TB_Edit: TToolButton;
    TB_Exit: TToolButton;
    TB_Prin: TToolButton;
    RzSizePanel2: TRzSizePanel;
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
    Act_Status_M: TAction;
    RzSizePanel4: TRzSizePanel;
    Act_Set_Open_M: TAction;
    Act_Set_Close_M: TAction;
    Act_Set_Close: TAction;
    Act_Set_Open: TAction;
    Act_ApprovalStuffSort: TAction;
    PM: TPopupMenu;
    N_Edit: TMenuItem;
    N_Filter: TMenuItem;
    N_Sort: TMenuItem;
    N_Group: TMenuItem;
    N_Set: TMenuItem;
    N_Out: TMenuItem;
    Act_Menu: TAction;
    Act_Menu_Set: TAction;
    MData_Item: TdxMemData;
    DS_Mdata_Item: TDataSource;
    DS_Mdata_List: TDataSource;
    MData_List: TdxMemData;
    cxGrid_Item: TcxGrid;
    cxGV_Item: TcxGridDBTableView;
    FFileNo_Item: TcxGridDBColumn;
    FItemNumber_Item: TcxGridDBColumn;
    FClientFullName_Item: TcxGridDBColumn;
    FClientShortName_Item: TcxGridDBColumn;
    FItemModel_Item: TcxGridDBColumn;
    cxGL_Item: TcxGridLevel;
    MyTreeView_Item: TTreeView;
    PopupMenu1: TPopupMenu;
    Act_MaxID: TAction;
    Act_Sel: TAction;
    FFileItemID_Item: TcxGridDBColumn;
    FProductID_Item: TcxGridDBColumn;
    FArrivalDate_Item: TcxGridDBColumn;
    FApprovalStatus_Item: TcxGridDBColumn;
    FApprovalStatusNotes_Item: TcxGridDBColumn;
    FApprovalWriteDate_Item: TcxGridDBColumn;
    FApprovalWrite_Item: TcxGridDBColumn;
    Act_Edit: TAction;
    Image2: TImage;
    P_Btn: TPanel;
    CancelBtn_M: TcxButton;
    OKBtn_M: TcxButton;
    FApprovalItemID_Item: TcxGridDBColumn;
    ADOProc: TADOStoredProc;
    DS_ADOProc: TDataSource;
    Act_Check: TAction;
    FArrivalAddress_Item: TcxGridDBColumn;
    FApprovalItemDate_Item: TcxGridDBColumn;
    FApprovalItemNum_Item: TcxGridDBColumn;
    Act_MaxNum: TAction;
    ToolButton1: TToolButton;
    Edit1: TEdit;
    MData_Qry: TdxMemData;
    DS_Mdata_Qry: TDataSource;
    Act_Approval_Price: TAction;
    PC_Approval: TRzPageControl;
    TS_ApprovalList: TRzTabSheet;
    Panel1: TPanel;
    TS_Approval: TRzTabSheet;
    cxGrid_List: TcxGrid;
    cxGV_List: TcxGridDBTableView;
    FNumber_List: TcxGridDBColumn;
    FTakemc_List: TcxGridDBColumn;
    FTakegg_List: TcxGridDBColumn;
    FTakedw_List: TcxGridDBColumn;
    FApprovalQry_List: TcxGridDBColumn;
    FK3ItemID_List: TcxGridDBColumn;
    FApprovalItemID_List: TcxGridDBColumn;
    FApprovalListID_List: TcxGridDBColumn;
    cxGL_List: TcxGridLevel;
    cxGrid_Qry: TcxGrid;
    cxGV_Qry: TcxGridDBTableView;
    cxGL_Qry: TcxGridLevel;
    ToolButton3: TToolButton;
    FOfferExplain_Item: TcxGridDBColumn;
    FAskBrands_Item: TcxGridDBColumn;
    FApprovalStuffSort_Item: TcxGridDBColumn;
    FApprovalStuffSortID_Item: TcxGridDBColumn;
    FApprovalStuffSort_List: TcxGridDBColumn;
    FApprovalStuffNumber_List: TcxGridDBColumn;
    FTakeGBT_List: TcxGridDBColumn;
    FTakeDesign_List: TcxGridDBColumn;
    FTakeDemand_List: TcxGridDBColumn;
    FTakeListReMark_List: TcxGridDBColumn;
    FTakeName_List: TcxGridDBColumn;
    FTakeModel_List: TcxGridDBColumn;
    FTakeUnitName_List: TcxGridDBColumn;
    Act_Pick: TAction;
    Act_Item: TAction;
    FApprovalStuffSortID_List: TcxGridDBColumn;
    FApprovalStuffRange_List: TcxGridDBColumn;
    Act_FArrivalAddress: TAction;
    Act_FOfferExplain: TAction;
    FTakeNumber_Item: TcxGridDBColumn;
    FOfferCentreExplain_Item: TcxGridDBColumn;
    FTakeSumQry_List: TcxGridDBColumn;
    Act_Approval_Sort: TAction;
    procedure FormResize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TB_EXITClick(Sender: TObject);
    procedure TB_AppClick(Sender: TObject);
    procedure TB_DelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure MyTreeView_ItemExpanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure MyTreeView_ItemChange(Sender: TObject; Node: TTreeNode);
    procedure TB_RefClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure OKBtn_MClick(Sender: TObject);
    procedure CancelBtn_MClick(Sender: TObject);
    procedure SelCancelBtnClick(Sender: TObject);
    procedure TB_EditLListClick(Sender: TObject);
    procedure Act_Set_Open_MExecute(Sender: TObject);
    procedure Act_Set_Close_MExecute(Sender: TObject);
    procedure Act_MenuExecute(Sender: TObject);
    procedure Act_Menu_SetExecute(Sender: TObject);
    procedure N_EditClick(Sender: TObject);
    procedure N_FilterClick(Sender: TObject);
    procedure N_SortClick(Sender: TObject);
    procedure N_GroupClick(Sender: TObject);
    procedure N_SetClick(Sender: TObject);
    procedure N_OutClick(Sender: TObject);
    procedure Act_MaxIDExecute(Sender: TObject);
    procedure Act_Status_MExecute(Sender: TObject);
    procedure cxGrid_ItemContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure cxGV_ListCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure cxGV_ItemFocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure Act_CheckExecute(Sender: TObject);
    procedure Act_SubmitExecute(Sender: TObject);
    procedure TB_EditClick(Sender: TObject);
    procedure Act_MaxNumExecute(Sender: TObject);
    procedure FArrivalAddress_ItemPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure ToolButton1Click(Sender: TObject);
    procedure FItemNumber_ItemPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure Act_Approval_PriceExecute(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure FProductList_ItemPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure Act_PickExecute(Sender: TObject);
    procedure Act_ItemExecute(Sender: TObject);
    procedure FTakemc_ListPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure Act_ApprovalStuffSortExecute(Sender: TObject);
    procedure cxGrid_ListContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure cxGrid_QryContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure Act_FArrivalAddressExecute(Sender: TObject);
    procedure FArrivalAddress_ItemGetProperties(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AProperties: TcxCustomEditProperties);
    procedure Act_FOfferExplainExecute(Sender: TObject);
    procedure FOfferExplain_ItemGetProperties(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AProperties: TcxCustomEditProperties);
    procedure Act_Approval_SortExecute(Sender: TObject);
    procedure PC_ApprovalChange(Sender: TObject);
  private
    P_List,P_Wet,P_Sort,P_TotalAmount:String;
    P_i:boolean;
    colHeadStr:string;


    { Private declarations }
    function AddMain:bool;
    function EditMain:bool;
    function AddList:bool;
    function AddRd:bool;
    function EditRd:bool;
    function DelRd:bool;
    function DelList:bool;

    function ImpStuff:bool;



  public
    P_state,P_PackNo,P_MaxID,P_Status:Integer;
    ListFNumber_PTItem,ListFNumber_PTList,P_MaxNum:string;
    P_Isleaf_PTList,P_FTakeItemID:integer;
    P_List_PTList:string;
    GV,Gr,Gm,Mn:string;
    AFirstColumnStyle: TcxStyle;
    { Public declarations }
  end;

var
  Frm_ApprovalItem: TFrm_ApprovalItem;


implementation

uses FRMDATA, COMMON, FrmSelect, ProgBar, PROGRASS, Main_Ship;

{$R *.dfm}


function TFrm_ApprovalItem.DelRd: bool;
var
 qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Delete from T_ApprovalItem where FApprovalItemID=:FApprovalItemID';
    qry.Parameters.FindParam('FApprovalItemID').value:=MData_Item['FApprovalItemID'];
    result:=qry.ExecSQL>=0;
  finally
    ;
  end;
  qry.Free;
end;
function TFrm_ApprovalItem.DelList: bool;
var
 qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Delete from T_ApprovalList where FApprovalItemID=:FApprovalItemID';
    qry.Parameters.FindParam('FApprovalItemID').value:=MData_Item['FApprovalItemID'];
    result:=qry.ExecSQL>=0;
  finally
    ;
  end;
  qry.Free;
end;


function TFrm_ApprovalItem.AddMain: bool;
var
 qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  Act_MaxID.Execute;//取最大ID
  Act_MaxNum.Execute;//取最大NUm
  try
    qry.SQL.Text:='Insert into T_ApprovalItem(FApprovalItemID,FApprovalItemDate,FApprovalItemNo,FItemID,FTakeNumber,FArrivalAddress,FArrivalDate,'
                 +'FOfferExplain,FOfferCentreExplain,FAskBrands,FApprovalItemRermark,FApprovalStuffSortID,FApprovalStatus,FApprovalWriteID,FApprovalWriteDate,FDepartmentID) '
                 +'values(:FApprovalItemID,:FApprovalItemDate,:FApprovalItemNo,:FItemID,:FTakeNumber,:FArrivalAddress,:FArrivalDate,'
                 +':FOfferExplain,:FOfferCentreExplain,:FAskBrands,:FApprovalItemRermark,:FApprovalStuffSortID,:FApprovalStatus,:FApprovalWriteID,:FApprovalWriteDate,:FDepartmentID)';
    with qry.Parameters do
    begin
       FindParam('FApprovalItemID').value:=P_MaxID;
       FindParam('FApprovalItemDate').value:=Date();
       If P_state=0 then //新增
          FindParam('FApprovalItemNo').value:=P_MaxNUm;
       If P_state=1 then //修改
          FindParam('FApprovalItemNo').value:=mData_Item['FApprovalItemNo'];

       FindParam('FItemID').value:=mData_Item['FItemID'];
       FindParam('FTakeNumber').value:=mData_Item['FTakeNumber'];
       FindParam('FArrivalAddress').value:=mData_Item['FArrivalAddress'];
       FindParam('FArrivalDate').value:=mData_Item['FArrivalDate'];
       FindParam('FOfferExplain').value:=mData_Item['FOfferExplain'];
       FindParam('FOfferCentreExplain').value:=mData_Item['FOfferCentreExplain'];
       FindParam('FAskBrands').value:=mData_Item['FAskBrands'];
       FindParam('FApprovalItemRermark').value:=mData_Item['FApprovalItemRermark'];
       FindParam('FApprovalStuffSortID').value:=mData_Item['FApprovalStuffSortID'];
       FindParam('FApprovalStatus').value:=0;
       FindParam('FApprovalWriteID').value:=UserNumID;
       FindParam('FApprovalWriteDate').value:=Date();
       FindParam('FDepartmentID').value:=UserFDepartmentID;
     end;
     result:=qry.ExecSQL>=1;
  finally
     ;
  end;
  mData_Item.Edit;
  mData_Item['FApprovalItemID']:=P_MaxID;
  mData_Item.Post;

  qry.Free;
end;

function TFrm_ApprovalItem.EditMain: bool;
var
 qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='update T_ApprovalItem set FApprovalItemDate=:FApprovalItemDate,FApprovalItemNo=:FApprovalItemNo,'
                 +'FItemID=:FItemID,FTakeNumber=:FTakeNumber,'
                 +'FArrivalAddress=:FArrivalAddress,FArrivalDate=:FArrivalDate,'
                 +'FOfferExplain=:FOfferExplain,FOfferCentreExplain=:FOfferCentreExplain,FAskBrands=:FAskBrands,FApprovalItemRermark=:FApprovalItemRermark,'
                 +'FApprovalStuffSortID=:FApprovalStuffSortID,FApprovalStatus=:FApprovalStatus,'
                 +'FApprovalWriteID=:FApprovalWriteID,FApprovalWriteDate=:FApprovalWriteDate,FDepartmentID=:FDepartmentID '
                 +' where FApprovalItemID=:FApprovalItemID ';
    with qry.Parameters do
    begin
       FindParam('FApprovalItemDate').value:=mData_Item['FApprovalItemDate'];
       FindParam('FApprovalItemNo').value:=mData_Item['FApprovalItemNo'];
       FindParam('FItemID').value:=mData_Item['FItemID'];
       FindParam('FTakeNumber').value:=mData_Item['FTakeNumber'];
       FindParam('FArrivalAddress').value:=mData_Item['FArrivalAddress'];
       FindParam('FArrivalDate').value:=mData_Item['FArrivalDate'];
       FindParam('FOfferExplain').value:=mData_Item['FOfferExplain'];
       FindParam('FOfferCentreExplain').value:=mData_Item['FOfferCentreExplain'];
       FindParam('FAskBrands').value:=mData_Item['FAskBrands'];
       FindParam('FApprovalItemRermark').value:=mData_Item['FApprovalItemRermark'];
       FindParam('FApprovalStuffSortID').value:=mData_Item['FApprovalStuffSortID'];
       FindParam('FApprovalStatus').value:=0;
       FindParam('FApprovalWriteID').value:=UserNumID;
       FindParam('FApprovalWriteDate').value:=Date();
       FindParam('FDepartmentID').value:=UserFDepartmentID;
       FindParam('FApprovalItemID').value:=mData_Item['FApprovalItemID'];
     end;
     result:=qry.ExecSQL>=1;
  finally
     ;
  end;
  qry.Free;
end;



function TFrm_ApprovalItem.AddList: bool;
var
  qry: TADOQuery;
  i:Integer;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  result:=False;

  If mData_List.RecordCount<=0 then
  begin
    result:=True;
    Exit;
  end;
  try
     qry.SQL.Text:='Insert into T_ApprovalList(FApprovalItemID,FTakeListID,FTakeGBT,FTakemc,FTakegg,'
                  +'FTakeDesign,FTakeDemand,FTakeListReMark,FTakedw,FTakeQry,FTakeSumQry,FApprovalQry,'
                  +'FTakeName,FTakeModel,FTakeUnitName,FApprovalLisRemark,FK3ID) '
                  +'values(:FApprovalItemID,:FTakeListID,:FTakeGBT,:FTakemc,:FTakegg,'
                  +':FTakeDesign,:FTakeDemand,:FTakeListReMark,:FTakedw,:FTakeQry,:FTakeSumQry,:FApprovalQry,'
                  +':FTakeName,:FTakeModel,:FTakeUnitName,:FApprovalLisRemark,:FK3ID)';
     mData_List.First;
     while not mData_List.eof do
     begin
       If ((mData_List['FTakeQry']<>0) and (mData_List['FTakeQry']<>Null)) then
       begin
         If qry.Active then qry.Close;
         with qry.Parameters do
         begin
           If P_state=0 then
              qry.Parameters.FindParam('FApprovalItemID').value:= P_MaxID;
           If P_state=1 then
              qry.Parameters.FindParam('FApprovalItemID').value:=  mData_List['FApprovalItemID'];
           qry.Parameters.FindParam('FTakeListID').value:= mData_List['FTakeListID'];
           qry.Parameters.FindParam('FTakeGBT').value:= mData_List['FTakeGBT'];
           qry.Parameters.FindParam('FTakemc').value:= mData_List['FTakemc'];
           qry.Parameters.FindParam('FTakegg').value:= mData_List['FTakegg'];
           qry.Parameters.FindParam('FTakeDesign').value:= mData_List['FTakeDesign'];
           qry.Parameters.FindParam('FTakeDemand').value:= mData_List['FTakeDemand'];
           qry.Parameters.FindParam('FTakeListReMark').value:= mData_List['FTakeListReMark'];
           qry.Parameters.FindParam('FTakedw').value:= mData_List['FTakedw'];
           qry.Parameters.FindParam('FTakeQry').value:= mData_List['FTakeQry'];
           qry.Parameters.FindParam('FTakeSumQry').value:= mData_List['FTakeSumQry'];
           qry.Parameters.FindParam('FApprovalQry').value:= mData_List['FApprovalQry'];
           qry.Parameters.FindParam('FTakeName').value:= mData_List['FTakeName'];
           qry.Parameters.FindParam('FTakeModel').value:= mData_List['FTakeModel'];
           qry.Parameters.FindParam('FTakeUnitName').value:= mData_List['FTakeUnitName'];
           qry.Parameters.FindParam('FApprovalLisRemark').value:= mData_List['FApprovalLisRemark'];
           qry.Parameters.FindParam('FK3ID').value:= userFK3ID;
         end;
         result:=qry.ExecSQL>=1;
         if not result then break;
       end;
       mData_List.Next;
     end;
   finally
     qry.Free;
   end;

end;

function TFrm_ApprovalItem.ImpStuff: bool;
var
  qry,qry1: TADOQuery;
  i:Integer;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry1:=TADOQuery.Create(Self);
  qry1.ConnectionString:=mdlData.ReadConnStr;
  result:=False;

  If mData_List.RecordCount<=0 then
  begin
    result:=True;
    Exit;
  end;
  mData_List.First;
  while not mData_List.eof do
  begin
     result:=True;
     try
       {qry1.SQL.Text:='Select * from T_ApprovalStuff where FTakeGBT=:FTakeGBT and FTakemc=:FTakemc '
                     +'and FTakegg=:FTakegg and FTakedw=:FTakedw and FDepartMentID=:FDepartMentID  and FK3ID=:FK3ID';
       qry1.Parameters.FindParam('FTakeGBT').value:= mData_List['FTakeGBT'];
       qry1.Parameters.FindParam('FTakemc').value:= mData_List['FTakemc'];
       qry1.Parameters.FindParam('FTakegg').value:= mData_List['FTakegg'];
       qry1.Parameters.FindParam('FTakedw').value:= mData_List['FTakedw'];
       qry1.Parameters.FindParam('FK3ID').value:= userFK3ID;   }
       qry1.SQL.Text:='Select * from T_ApprovalStuff where FK3_Join=:FK3_Join and  FDepartMentID=:FDepartMentID';
       qry1.Parameters.FindParam('FK3_Join').value:= IntToStr(userFK3ID)+';'+mData_List['FTakemc']+mData_List['FTakeGBT']+';'+mData_List['FTakegg']+';'+mData_List['FTakedw']+';';
       qry1.Parameters.FindParam('FDepartMentID').value:= userFDepartMentID;
       qry1.Open;
     finally
       ;
     end;
     If qry1.RecordCount=0 then
     begin
       try
         qry.SQL.Text:='Insert into T_ApprovalStuff(FTakeGBT,FTakemc,FTakegg,FTakedw,FDepartMentID,FK3ID) '
                      +'values(:FTakeGBT,:FTakemc,:FTakegg,:FTakedw,:FDepartMentID,:FK3ID)';
         qry.Parameters.FindParam('FTakeGBT').value:= mData_List['FTakeGBT'];
         qry.Parameters.FindParam('FTakemc').value:= mData_List['FTakemc'];
         qry.Parameters.FindParam('FTakegg').value:= mData_List['FTakegg'];
         qry.Parameters.FindParam('FTakedw').value:= mData_List['FTakedw'];
         qry.Parameters.FindParam('FDepartMentID').value:= userFDepartMentID;
         qry.Parameters.FindParam('FK3ID').value:= userFK3ID;
         result:=qry.ExecSQL>=1;
       finally
         ;
       end;
     end;
     mData_List.Next;
   end;

end;

function TFrm_ApprovalItem.AddRd: bool;
var
 qry:TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  result:=False;

  MData_Item.Edit;
  MData_Item.Post;

  mdata_List.Edit;
  mdata_List.Post;
  If mdata_List.RecordCount<=0 then
  begin
    result:=True;
    Exit;
  end;

  mdlData.conn.BeginTrans;
  try
    if AddMain then  //1   主表新增
    begin
      result:=True;
      if AddList then //2    明细表新增
      begin
        result:=True;
        if ImpStuff then //3    物料新增
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
    Application.MessageBox('新增数据失败，请重试。', '保存错误', 0 or MB_ICONINFORMATION);
    mdlData.Conn.RollBackTrans;
  end;

end;


function TFrm_ApprovalItem.EditRd:bool;
var
 qry:TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  mdlData.conn.BeginTrans;
  try
    if DelList then  //1  附表删除
    begin
      result:=True;
      if EditMain then //2  主表新增
      begin
        result:=True;
        if AddList then //3  附表新增
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
    Application.MessageBox('保存数据失败，请重试。', '保存错误', 0 or MB_ICONINFORMATION);
    mdlData.Conn.RollBackTrans;
  end;

end;



procedure TFrm_ApprovalItem.FormResize(Sender: TObject);
begin
  inherited;
  Self.Caption:=UserFDepartmentName+'招标中心评审报批表';
end;

procedure TFrm_ApprovalItem.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=cafree;
  Frm_ApprovalItem:=nil;
end;

procedure TFrm_ApprovalItem.TB_EXITClick(Sender: TObject);
begin
  inherited;
  Self.Close;
end;

procedure TFrm_ApprovalItem.TB_AppClick(Sender: TObject);
Var qry: TADOQuery;
    i,j:Integer;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  P_state :=0; //新增
  mdata_Item.Close;
  mdata_List.Close;

  try
    qry.SQL.Text:='select * from V_ApprovalItem with(nolock) where FApprovalItemID=0';
    qry.Open;
  finally
     ;
  end;
  mdata_Item.CopyFromDataSet(qry);
  mdata_Item.Active:=True;
  mdata_Item.Append;
  mdata_Item.Edit;
  mdata_Item['FApprovalItemDate']:=date();
  mdata_Item.Post;

  try
    qry.SQL.Text:='select * from V_ApprovalList with(nolock) where FApprovalItemID=0';
    qry.Open;
  finally
     ;
  end;

  mdata_List.CopyFromDataSet(qry);
  //mdata_List.Append;
  //mdata_List.Post;

{  for i:=1 to 5 do
  begin
    mdata_List.Append;
    mdata_List['FQuotationStuffID']:=0;
    mdata_List['FQuotationStuffName']:='';
    mdata_List['FQuotationStuffModel']:='';
    mdata_List['FQuotationStuffUnit']:='';

    mdata_List.Post;
  end;
 }
  Act_Set_Open_M.Execute;

end;

procedure TFrm_ApprovalItem.TB_DelClick(Sender: TObject);
var
  qry:TADOQuery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  try
    qry.SQL.Text:='select * from T_QuotationItem with(nolock) '
                 +' where FDepartmentID=:FDepartmentID and FApprovalItemID=:FApprovalItemID ';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Parameters.FindParam('FApprovalItemID').value:=mData_Item['FApprovalItemID'];
    qry.Open;
  finally
   ;
  end;
  If qry.RecordCount>0 then
  begin
    application.MessageBox('此评审报批单已启用不允许修改或删除！','系统提示',MB_ICONWARNING);
    Exit;
  end;

  If application.MessageBox(Pchar('警告：是否删除'+P_List_PTList+'的报价单信息？'+chr(13)+chr(13)
                                 +'删除数据操作将不可恢复，确定要删除吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
  If application.MessageBox(Pchar('再次警告：是否删除：'+P_List_PTList+'的报价单信息？'+chr(13)+chr(13)
                                 +'删除数据操作将不可恢复，确定要删除吗？'),'再次警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then

  mdlData.conn.BeginTrans;
  begin
    //单据删除
    If not DelRd then
    begin
      application.MessageBox('删除单据失败！','系统提示',MB_ICONINFORMATION);
      mdlData.conn.RollbackTrans;
      Exit;
    end;
    mdlData.conn.CommitTrans;
  end;
  mdata_Item.Close;
  mdata_List.Close;
  qry.Free;

end;

procedure TFrm_ApprovalItem.FormCreate(Sender: TObject);
begin
  inherited;
  TB_App.Visible:= mdlData.CheckFrmRights(TFrm_ApprovalItem.ClassName,'新增');
  P_state:=2;

end;

procedure TFrm_ApprovalItem.MyTreeView_ItemExpanding(Sender: TObject;
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
  qry.SQL.Text:='Select * from VT_ApprovalItem_Write with(nolock) where FParentNumber= '''
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
    with MyTreeView_Item.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('Isleaf').value;
    end;
    qry.Next;
  end;
end;

procedure TFrm_ApprovalItem.MyTreeView_ItemChange(Sender: TObject; Node: TTreeNode);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If Node = nil then Exit;
  with PTree(Node.Data)^ do
  begin
    ListFNumber_PTList:=trim(PTree(Node.Data).FNumber);
    P_List_PTList:=PTree(Node.Data).Caption;
    P_Isleaf_PTList:=PTree(Node.Data).Isleaf;
    mdata_List.DisableControls;
    cxGV_List.DataController.DataModeController.GridMode:=True;
    cxGV_List.DataController.DataModeController.SmartRefresh:=True;
    If P_Isleaf_PTList>=0 then
    begin
      If MyItemListFieldWhere(qry,Mdata_Item,' * ','V_ApprovalItem','FFullNumberWrite',ListFNumber_PTList,' ','FFullNumberWrite') then
         cxGvColumn(cxGv_Item,Mdata_Item);
    end
    else
    begin
      Mdata_Item.Close;
      Mdata_List.Close;
      Mdata_Qry.Close;
    end;
    If P_Isleaf_PTList=1 then
       If PC_Approval.ActivePage=TS_Approval then
           Act_Approval_Sort.Execute
    else
       Mdata_Qry.Close;


    Act_Status_M.Execute;  //权限设置
    mdata_List.EnableControls;
    cxGV_List.DataController.DataModeController.GridMode:=False;
    cxGV_List.DataController.DataModeController.SmartRefresh:=False;

 end;

end;

procedure TFrm_ApprovalItem.TB_RefClick(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If not TreeVeiwListWhere(qry,MyTreeView_Item,'VT_ApprovalItem_Write',' and FDepartmentID='+IntToStr(UserFDepartmentID)) then
      Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
end;

procedure TFrm_ApprovalItem.FormShow(Sender: TObject);
begin
  inherited;
  TB_Ref.Click;
end;

procedure TFrm_ApprovalItem.OKBtn_MClick(Sender: TObject);
var qry: TADOQuery;
    P_FBalanceNum:String;
    i:Integer;
    I_index,P_FPlanWeekPartsID:Integer;
    P_FPlanWeekPartsAdd:string;

begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  MData_Item.open;
  MData_Item.Edit;
  MData_Item.Post;

  if (MData_Item['FItemNumber']='') or (MData_Item['FItemNumber']=null)  then
  begin
    application.MessageBox('图号不能为空！','系统提示',MB_ICONWARNING);
    Exit;
  end;
  if (MData_Item['FApprovalStuffSort']='') or (MData_Item['FApprovalStuffSort']=null)  then
  begin
    application.MessageBox('物料类别不能为空！','系统提示',MB_ICONWARNING);
    Exit;
  end;
  mdata_List.open;
  mdata_List.Edit;

  mdata_List.Post;


 { mData_PTList.First;
  P_FPlanWeekPartsID:=mData_PTList['FPlanWeekPartsID'];
  P_FPlanWeekPartsAdd:=mData_PTList['FPlanWeekPartsAdd'];
  while not mData_PTList.eof do
  begin
   // I_index:=mData_PTList.RecNo ;
    If (mData_PTList['FPlanWeekPartsID']=P_FPlanWeekPartsID) and (mData_PTList['FPlanWeekPartsAdd']<>P_FPlanWeekPartsAdd) then
    begin
    {  If (I_index<mData_PTList.RecordCount) and (I_index<>-1) then
         mData_PTList.RecNo :=I_index
      else
        mData_PTList.Last;
      }
     { Messagedlg('存在重复的部件，可以用增补项区分。',mtInformation,[mbok],0);
      Exit;
    end;
    P_FPlanWeekPartsID:=mData_PTList['FPlanWeekPartsID'];
    P_FPlanWeekPartsAdd:=mData_PTList['FPlanWeekPartsAdd'];
    mData_PTList.Next;
  end;
    }
  If P_state=0 then
  begin
    If application.MessageBox('是否要保存添加的数据？','提示',MB_ICONINFORMATION+MB_YESNO)<>6 then
    begin
      CancelBtn_M.Click;
      Exit;
    end;
    If AddRd then //增加数据
    begin
      If application.MessageBox('录入数据已保存,还要继续录入吗？','提示',MB_ICONINFORMATION+MB_YESNO)=6 then
      begin
        TB_App.Click;
        //mdata_PTList.Close;
      end
      else
      begin
        CancelBtn_M.Click;
        Exit;
      end;
    end;
    //CancelBtn_M.Click;
  end;
  If P_state=1 then //修改数据
  begin
    If application.MessageBox('是否要保存所作修改？','提示',MB_ICONINFORMATION+MB_YESNO)<>6 then
    begin
      CancelBtn_M.Click;
      Exit;
    end;
    If EditRd then   //修改数据
    begin
      application.MessageBox('修改记录已保存','系统提示',MB_ICONINFORMATION);
      //inherited;
      CancelBtn_M.Click;
    end
    else
      application.MessageBox('修改记录保存失败！','系统提示',MB_ICONWARNING);
  end;
  MyTreeView_Item.Enabled:=True;
  cxGrid_Item.Enabled:=True;
  qry.Free;

end;

procedure TFrm_ApprovalItem.CancelBtn_MClick(Sender: TObject);
begin
  inherited;
 // If (P_state=0) and (mData_PTItem['FPlanWeekDetailID']=0 or mData_PTItem['FPlanWeekDetailID']=null ) then
  begin
    MData_Item.Close;
    MData_List.Close;
  end;
  Act_Set_Close_M.Execute;
end;

procedure TFrm_ApprovalItem.SelCancelBtnClick(Sender: TObject);
begin
  inherited;
  PC_Ship.ActivePage:=TS_Ship;
  TS_Ship.TabEnabled:=True;

end;

procedure TFrm_ApprovalItem.TB_EditLListClick(Sender: TObject);
var
   AFirstColumnStyle: TcxStyle;
begin
  inherited;
  P_state:=1;
end;

procedure TFrm_ApprovalItem.Act_Set_Open_MExecute(Sender: TObject);
var AFirstColumnStyle: TcxStyle;
begin
  inherited;
  MyTreeView_Item.Enabled:=False;
  RSP_CList.Enabled:=False;
  P_Btn.Visible:=True;
  OkBtn_M.Visible:=True;
  CancelBtn_M.Visible:=True;
  ToolBar_HItem.Visible:=False;
  cxGV_Item.OptionsData.Editing:=True;
  cxGV_List.OptionsData.Editing:=True;

  FArrivalAddress_Item.Options.Editing:=True;
  FArrivalDate_Item.Options.Editing:=True;
  FAskBrands_Item.Options.Editing:=True;
  FOfferExplain_Item.Options.Editing:=True;
  FOfferCentreExplain_Item.Options.Editing:=True;
  FApprovalStuffSort_Item.Options.Editing:=True;

  FTakemc_List.Options.Editing:=True;
  FApprovalQry_List.Options.Editing:=True;



  If P_state<>1 then  //修改
  begin
    cxGV_Item.OptionsData.Editing:=True;
    FItemNumber_Item.Options.Editing:=True;
  end;

  cxGV_List.OptionsData.Editing:=True;
{
    //列颜色
  AFirstColumnStyle := TcxStyle.Create(Self);
  AFirstColumnStyle.Color := clMenu; //底色
  AFirstColumnStyle.TextColor := clBlue;        //字体颜色

  cxGV_PTList.Columns[FMakeBOMWet_PTList.Index].Styles.Content := AFirstColumnStyle;
  cxGV_PTList.Columns[FMakeBOMPackQry_PTList.Index].Styles.Content := AFirstColumnStyle;
  cxGV_PTList.Columns[FTeamName_PTList.Index].Styles.Content := AFirstColumnStyle;
  cxGV_PTList.Columns[Sel_PTList.Index].Styles.Content := AFirstColumnStyle;
  cxGV_PTList.Columns[FPlanWeekPartsAdd_PTList.Index].Styles.Content := AFirstColumnStyle;
 }
end;

procedure TFrm_ApprovalItem.Act_Set_Close_MExecute(Sender: TObject);
var
   AFirstColumnStyle: TcxStyle;
begin
  inherited;
     //列颜色
  {AFirstColumnStyle := TcxStyle.Create(Self);
  AFirstColumnStyle.Color := clWindow; //底色
  AFirstColumnStyle.TextColor := clWindowText;        //字体颜色

  cxGV_List.Columns[FMakeBOMWet_PTList.Index].Styles.Content := AFirstColumnStyle;
  cxGV_List.Columns[FMakeBOMPackQry_PTList.Index].Styles.Content := AFirstColumnStyle;
  cxGV_List.Columns[FTeamName_PTList.Index].Styles.Content := AFirstColumnStyle;
  cxGV_List.Columns[Sel_PTList.Index].Styles.Content := AFirstColumnStyle;
  cxGV_List.Columns[FPlanWeekPartsAdd_PTList.Index].Styles.Content := AFirstColumnStyle;
  }
  PC_Ship.Enabled:=True;

  RSP_CList.Enabled:=True;

  MyTreeView_Item.Enabled:=True;
  P_Btn.Visible:=False;

  cxGV_Item.OptionsData.Editing:=False;
  cxGV_List.OptionsData.Editing:=False;


  ToolBar_HItem.Visible:=True;


  P_state:=2;


end;

procedure TFrm_ApprovalItem.Act_MenuExecute(Sender: TObject);
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

procedure TFrm_ApprovalItem.Act_Menu_SetExecute(Sender: TObject);
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

procedure TFrm_ApprovalItem.N_EditClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_ApprovalItem.N_FilterClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_ApprovalItem.N_SortClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_ApprovalItem.N_GroupClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_ApprovalItem.N_SetClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_ApprovalItem.N_OutClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_ApprovalItem.Act_MaxIDExecute(Sender: TObject);
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
      value:='T_ApprovalItem';
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

procedure TFrm_ApprovalItem.Act_Status_MExecute(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  TB_Submit.Visible:=False;
  TB_Check.Visible:=False;
  TB_Edit.Visible:=False;
  TB_Del.Visible:=False;

  //制单者是本人
  try
    qry.SQL.Text:='Select distinct FApprovalStatus,FApprovalWriteID from V_ApprovalItem with(nolock) '
                 +'where FDepartmentID=:FDepartmentID and FFullNumberWrite like :FFullNumberWrite';
    qry.Parameters.FindParam('FDepartmentID').value:= UserFDepartmentID;
    qry.Parameters.FindParam('FFullNumberWrite').value:=ListFNumber_PTList+'%';
    qry.Open;
  finally
    ;
  end;
   //制单者是本人

  If (qry.RecordCount=1) and (qry.FieldByName('FApprovalStatus').AsInteger=0)
      and (qry.FieldByName('FApprovalWriteID').AsInteger=UserNumID) then
  begin
    If mdata_Item.RecordCount=0 then
    begin
      TB_Del.Visible:=False;
      TB_Submit.Visible:=False;
    end;
    If mdata_Item.RecordCount>0 then
    begin
      TB_Submit.Visible:=mdlData.CheckFrmRights(TFrm_ApprovalItem.ClassName,'提交');
      TB_Submit.Caption:='批量提交';
      TB_Del.Visible:=False;
    end;
    If mdata_Item.RecordCount=1 then
    begin
      TB_Edit.Visible:=mdlData.CheckFrmRights(TFrm_ApprovalItem.ClassName,'修改');
      TB_Del.Visible:=mdlData.CheckFrmRights(TFrm_ApprovalItem.ClassName,'删除');
      TB_Submit.Visible:=mdlData.CheckFrmRights(TFrm_ApprovalItem.ClassName,'提交');
      TB_Submit.Caption:='提交';
    end;
    Exit;
  end;

   //提交者是本人
  If (qry.RecordCount=1) and (qry.FieldByName('FApprovalStatus').AsInteger=1)
     and (qry.FieldByName('FApprovalWriteID').AsInteger=UserNumID) then
  begin
    TB_Submit.Visible:=mdlData.CheckFrmRights(TFrm_ApprovalItem.ClassName,'提交');
    If mdata_Item.RecordCount=0 then
       TB_Submit.Visible:=False;
    If mdata_Item.RecordCount>0 then
    begin
      TB_Submit.Caption:='批量提交撤回';
      TB_Check.Visible:=mdlData.CheckFrmRights(TFrm_ApprovalItem.ClassName,'校对');
      TB_Check.Caption:='批量校对';
    end;
    If mdata_Item.RecordCount=1 then
    begin
      TB_Submit.Caption:='提交撤回';
      TB_Check.Visible:=mdlData.CheckFrmRights(TFrm_ApprovalItem.ClassName,'校对');
      TB_Check.Caption:='校对';
    end;
    TB_Edit.Visible:=False;
    TB_Del.Visible:=False;
    Exit;
  end;

   //校对
  try
    qry.SQL.Text:='Select distinct FApprovalStatus from V_ApprovalItem with(nolock) where FDepartmentID=:FDepartmentID and FFullNumberWrite like :FFullNumberWrite';
    qry.Parameters.FindParam('FDepartmentID').value:= UserFDepartmentID;
    qry.Parameters.FindParam('FFullNumberWrite').value:=ListFNumber_PTList+'%';
    qry.Open;
  finally
    ;
  end;
  If (qry.RecordCount>1)  then
     Exit;
  If (qry.RecordCount=1) and (qry.FieldByName('FApprovalStatus').AsInteger=1) then
  begin
    If mdata_Item.RecordCount=0 then
    begin
      TB_Check.Visible:=False;
    end;
    If mdata_Item.RecordCount>0 then
    begin
      TB_Check.Visible:=mdlData.CheckFrmRights(TFrm_ApprovalItem.ClassName,'校对');
      TB_Check.Caption:='批量校对';
    end;
    If mdata_Item.RecordCount=1 then
    begin
      TB_Check.Visible:=mdlData.CheckFrmRights(TFrm_ApprovalItem.ClassName,'校对');
      TB_Check.Caption:='校对';
    end;
    Exit;
  end;


  If (qry.RecordCount=1) and (qry.FieldByName('FApprovalStatus').AsInteger=2) then
  begin
    TB_Check.Visible:=mdlData.CheckFrmRights(TFrm_ApprovalItem.ClassName,'校对');
    If mdata_Item.RecordCount=0 then
       TB_Check.Visible:=False;
    If mdata_Item.RecordCount>0 then
       TB_Check.Caption:='批量校对撤回';
    If mdata_Item.RecordCount=1 then
       TB_Check.Caption:='校对撤回';
    Exit;
  end;
 

end;

procedure TFrm_ApprovalItem.cxGrid_ItemContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV_Item';
  Gm:='mdata_Item';
  Gr:='cxGrid_Item';
  Act_Menu_Set.Execute;
end;

procedure TFrm_ApprovalItem.cxGV_ListCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
 { If P_state<>2   then
     Exit;
  If (StrToFloat(AViewInfo.GridRecord.DisplayTexts[FMakePartsPercent_PTList.Index])=Null)
     or (StrToFloat(AViewInfo.GridRecord.DisplayTexts[FShipPartsPercent_PTList.Index])=Null) then
     Exit;

  If (StrToFloat(AViewInfo.GridRecord.DisplayTexts[FMakePartsPercent_PTList.Index])=100) then
  begin
    //ACanvas.Canvas.brush.Color := clInactiveCaptionText;     //设置行颜色
    ACanvas.Canvas.Font.Color:=clBlue; //字体颜色
    ACanvas.FillRect(AViewInfo.Bounds);
  end;
  If (StrToFloat(AViewInfo.GridRecord.DisplayTexts[FMakePartsPercent_PTList.Index])=100)
     and (StrToFloat(AViewInfo.GridRecord.DisplayTexts[FShipPartsPercent_PTList.Index])=100) then
  begin
    //ACanvas.Canvas.brush.Color := clInactiveCaptionText;     //设置行颜色
    ACanvas.Canvas.Font.Color:=clGreen; //字体颜色
    ACanvas.FillRect(AViewInfo.Bounds);
  end;

  If StrToFloat(AViewInfo.GridRecord.DisplayTexts[FMakePartsPercent_PTList.Index])<StrToFloat(AViewInfo.GridRecord.DisplayTexts[FShipPartsPercent_PTList.Index]) then
  begin
    //ACanvas.Canvas.brush.Color := clInactiveCaptionText;     //设置行颜色
    ACanvas.Canvas.Font.Color:=clRed; //字体颜色
    ACanvas.FillRect(AViewInfo.Bounds);
  end;

  If (StrToFloat(AViewInfo.GridRecord.DisplayTexts[FMakePartsPercent_PTList.Index])>100)
     or (StrToFloat(AViewInfo.GridRecord.DisplayTexts[FShipPartsPercent_PTList.Index])>100) then
  begin
    //ACanvas.Canvas.brush.Color := clInactiveCaptionText;     //设置行颜色
    ACanvas.Canvas.Font.Color:=clRed; //字体颜色
    ACanvas.FillRect(AViewInfo.Bounds);
  end;

  If StrToFloat(AViewInfo.GridRecord.DisplayTexts[FMakeBOMPackQry_PTList.Index])
     <StrToFloat(AViewInfo.GridRecord.DisplayTexts[FMakeShipQry_PTList.Index]) then
  begin
    //ACanvas.Canvas.brush.Color := clInactiveCaptionText;     //设置行颜色
    ACanvas.Canvas.Font.Color:=clRed; //字体颜色
    ACanvas.FillRect(AViewInfo.Bounds);
  end; }
end;

procedure TFrm_ApprovalItem.cxGV_ItemFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
var qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If  P_state=2 then   //不在新增修改状态
  begin
    begin
      If (mData_Item['FApprovalItemID']<>0) and (mData_Item['FApprovalItemID']<>Null) then
      begin
        If PC_Approval.ActivePage=TS_Approval then
           Act_Approval_Sort.Execute;
        If MyItemListID(qry,Mdata_List,'V_ApprovalList',' FApprovalItemID='+IntToStr(mData_Item['FApprovalItemID']),'FFullNumberWrite',) then
           Act_Status_M.Execute;  //权限设置
      end;
    end;
  end; 
end;

procedure TFrm_ApprovalItem.Act_CheckExecute(Sender: TObject);
var
 qry:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  P_state:=3;
  If (TB_Check.Caption='校对') or (TB_Check.Caption='批量校对') then
  begin
    If application.MessageBox(Pchar('系统提示：是否对周报明细：'+P_List_PTList+'的单据进行校对？'+chr(13)+chr(13)
                                   +'确定要校对对本单据吗？'),'系统提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      MData_Item.First;
      while not MData_Item.eof do
      begin
        try
          qry.SQL.Text:='Update T_ApprovalItem Set FApprovalStatus=2,FApprovalSubmitDate=:FApprovalSubmitDate '
                       +' where FApprovalItemID=:FApprovalItemID';
          qry.Parameters.FindParam('FApprovalSubmitDate').value:= now();
          qry.Parameters.FindParam('FApprovalItemID').value:=MData_Item['FApprovalItemID'];
          qry.ExecSQL;
        finally
          ;
        end;
        MData_Item.Edit;
        MData_Item['FApprovalStatus']:=2;
        MData_Item['FApprovalStatus']:='校对';
        MData_Item['FApprovalSubmitDate']:=now();
        MData_Item.Post;
        MData_Item.Next;
      end;
      If MData_Item.RecordCount=1 then
      begin
        application.MessageBox('校对完毕！','系统提示',MB_ICONINFORMATION);
        TB_Check.Caption:='校对撤回';
      end;
      If MData_Item.RecordCount>1 then
      begin
        application.MessageBox('批量校对完毕！','系统提示',MB_ICONINFORMATION);
        TB_Check.Caption:='批量校对撤回';
      end;
      Act_Status_M.Execute;  //权限设置
    end;
    P_state:=2;
    Exit;
  end;
  If (TB_Check.Caption='校对撤回') or (TB_Check.Caption='批量校对撤回')  then
  begin
    If application.MessageBox(Pchar('系统提示：是否对周报明细：'+P_List_PTList+'的单据进行校对撤回？'+chr(13)+chr(13)
                                     +'确定要对本单据校对撤回吗？'),'系统提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      MData_Item.First;
      while not MData_Item.eof do
      begin
        try
          qry.SQL.Text:='Update T_ApprovalItem Set FApprovalStatus=1,FApprovalSubmitDate=:FApprovalSubmitDate '
                       +'where FApprovalItemID=:FApprovalItemID';
          qry.Parameters.FindParam('FApprovalSubmitDate').value:= Null;
          qry.Parameters.FindParam('FApprovalItemID').value:= MData_Item['FApprovalItemID'];
          qry.ExecSQL;
        finally
          ;
        end;
        MData_Item.Edit;
        MData_Item['FApprovalStatus']:=1;
        MData_Item['FApprovalStatusNotes']:='提交';
        MData_Item['FApprovalSubmitDate']:=Null;
        MData_Item.Post;
        MData_Item.Next;
      end;
      If MData_Item.RecordCount=1 then
      begin
        application.MessageBox('校对撤回完毕！','系统提示',MB_ICONINFORMATION);
        TB_Check.Caption:='校对';
      end;
      If MData_Item.RecordCount>1 then
      begin
        application.MessageBox('批量校对撤回完毕！','系统提示',MB_ICONINFORMATION);
        TB_Check.Caption:='批量校对';
      end;
      Act_Status_M.Execute;  //权限设置
    end;
    P_state:=2;
    Exit;
  end;

end;

procedure TFrm_ApprovalItem.Act_SubmitExecute(Sender: TObject);
var
 qry:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  P_state:=3;
  If (TB_Submit.Caption='提交') or (TB_Submit.Caption='批量提交') then
  begin
    If application.MessageBox(Pchar('系统提示：是否对周报明细：'+P_List_PTList+'的单据进行提交？'+chr(13)+chr(13)
                                   +'确定要提交对本单据吗？'),'系统提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      MData_Item.First;
      while not MData_Item.eof do
      begin
        try
          qry.SQL.Text:='Update T_ApprovalItem Set FApprovalStatus=1,FApprovalSubmitDate=:FApprovalSubmitDate  where FApprovalItemID=:FApprovalItemID';
          qry.Parameters.FindParam('FApprovalSubmitDate').value:= now();
          qry.Parameters.FindParam('FApprovalItemID').value:=MData_Item['FApprovalItemID'];
          qry.ExecSQL;
        finally
          ;
        end;
        MData_Item.Edit;
        MData_Item['FApprovalStatus']:=1;
        MData_Item['FApprovalStatusNotes']:='提交';
        MData_Item['FApprovalSubmitDate']:=now();
        MData_Item.Post;
        MData_Item.Next;
      end;
      MData_Item.First;
      while not MData_Item.eof do
      begin
        try
          qry.SQL.Text:='Update T_QuotationItem Set FQuotationStatus=2,FQuotationCheckID=:FQuotationCheckID,'
                       +'FQuotationCheckDate=:FQuotationCheckDate where FApprovalItemID=:FApprovalItemID';
          qry.Parameters.FindParam('FQuotationCheckID').value:=UserNumID;
          qry.Parameters.FindParam('FQuotationCheckDate').value:= now();
          qry.Parameters.FindParam('FApprovalItemID').value:=MData_Item['FApprovalItemID'];
          qry.ExecSQL;
        finally
          ;
        end;
        MData_Item.Next;
     end;

      If MData_Item.RecordCount=1 then
      begin
        application.MessageBox('提交完毕！','系统提示',MB_ICONINFORMATION);
        TB_Submit.Caption:='提交撤回';
      end;
      If MData_Item.RecordCount>1 then
      begin
        application.MessageBox('批量提交完毕！','系统提示',MB_ICONINFORMATION);
        TB_Submit.Caption:='批量提交撤回';
      end;
    end;
    P_state:=2;
    Exit;
  end;
  If (TB_Submit.Caption='提交撤回') or (TB_Submit.Caption='批量提交撤回')  then
  begin
    If application.MessageBox(Pchar('系统提示：是否对周报明细：'+P_List_PTList+'的单据进行提交撤回？'+chr(13)+chr(13)
                                     +'确定要对本单据提交撤回吗？'),'系统提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      MData_Item.First;
      while not MData_Item.eof do
      begin
        try
          qry.SQL.Text:='Update T_ApprovalItem Set FApprovalStatus=0,FApprovalSubmitDate=:FApprovalSubmitDate where FApprovalItemID=:FApprovalItemID';
          qry.Parameters.FindParam('FApprovalSubmitDate').value:= Null;
          qry.Parameters.FindParam('FApprovalItemID').value:= MData_Item['FApprovalItemID'];
          qry.ExecSQL;
        finally
          ;
        end;
        MData_Item.Edit;
        MData_Item['FApprovalStatus']:=0;
        MData_Item['FApprovalStatusNotes']:='填单';
        MData_Item['FApprovalSubmitDate']:=Null;
        MData_Item.Post;
        MData_Item.Next;
      end;
      MData_Item.First;
      while not MData_Item.eof do
      begin
        try
          qry.SQL.Text:='Update T_QuotationItem Set FQuotationStatus=1,FQuotationCheckID=:FQuotationCheckID,'
                       +'FQuotationCheckDate=:FQuotationCheckDate where FApprovalItemID=:FApprovalItemID';
          qry.Parameters.FindParam('FQuotationCheckID').value:=UserNumID;
          qry.Parameters.FindParam('FQuotationCheckDate').value:= Null;
          qry.Parameters.FindParam('FApprovalItemID').value:=MData_Item['FApprovalItemID'];
          qry.ExecSQL;
        finally
          ;
        end;
        MData_Item.Next;
     end;
      If MData_Item.RecordCount=1 then
      begin
        application.MessageBox('提交撤回完毕！','系统提示',MB_ICONINFORMATION);
        TB_Submit.Caption:='提交';
      end;
      If MData_Item.RecordCount>1 then
      begin
        application.MessageBox('批量提交撤回完毕！','系统提示',MB_ICONINFORMATION);
        TB_Submit.Caption:='批量提交';
      end;
    end;
    P_state:=2;
    Exit;
  end;
end;

procedure TFrm_ApprovalItem.TB_EditClick(Sender: TObject);
var qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='select * from T_QuotationItem with(nolock) '
                 +' where FDepartmentID=:FDepartmentID and FApprovalItemID=:FApprovalItemID ';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Parameters.FindParam('FApprovalItemID').value:=mData_Item['FApprovalItemID'];
    qry.Open;
  finally
   ;
  end;
  If qry.RecordCount>0 then
  begin
    application.MessageBox('此评审报批单已启用不允许修改或删除！','系统提示',MB_ICONWARNING);
    Exit;
  end;
  P_state :=1;
  Act_Set_Open_M.Execute;
  L_title.Caption:=UserFDepartmentName+'招标中心评报批表';
end;

procedure TFrm_ApprovalItem.Act_MaxNumExecute(Sender: TObject);
var
  proc:TADOStoredProc;
begin
  proc:=TADOStoredProc.Create(self);
  proc.ConnectionString:=mdlData.ReadConnStr;
  proc.CommandTimeout:=500;

  try
    proc.ProcedureName:='P_GetDateMaxNum;1';
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=20;
      name := '@TableDate';
      value:=mData_Item['FApprovalItemDate'];
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=20;
      name := '@TableName';
      value:='T_ApprovalItem';
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=20;
      name := '@DateFiled';
      value:='FApprovalItemDate';
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=20;
      name := '@NumFiled';
      value:='FApprovalItemNo';
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=20;
      name := '@FDepartmentFiled';
      value:='FDepartmentID';
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftInteger;
      Direction := pdinput;
      size:=20;
      name := '@FDepartmentID';
      value:=UserFDepartmentID;
    end;

    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdoutput;
      size:=255;
      name := '@FInterID';
      value:=0;
    end;
    proc.ExecProc;
    P_MaxNUm:=proc.Parameters.FindParam('@FInterID').Value;
    proc.Free;
  finally
     ;
  end;

end;

procedure TFrm_ApprovalItem.FArrivalAddress_ItemPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  mData_Item.Edit;
  mData_Item.Post;
  If mData_Item['FArrivalAddress']=Null then
  begin
    mData_Item.Edit;
    mData_Item['FArrivalAddress']:='';
    mData_Item.Post;
  end;
  try
    qry.SQL.Text:='select * from  V_QuotationItem with(nolock) '
                 +' where FDepartmentID=:FDepartmentID and FArrivalAddress like :FArrivalAddress order by FArrivalAddress ';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Parameters.FindParam('FArrivalAddress').value:='%'+mData_Item['FArrivalAddress']+'%';
    qry.Open;
  finally
   ;
  end;

  If qry.RecordCount=1 then
  begin
    mData_Item.Edit;
    mData_Item['FArrivalAddress']:=qry.FieldByName('FArrivalAddress').Value;
    mData_Item.Post;
    Exit;
  end
  else
  begin
    selValue:=select('选择到货地址','FArrivalAddress','FArrivalAddress','FArrivalAddress','FArrivalAddress',qry);
    If (Length(selValue)>0) then
    begin
      mData_Item.Edit;
      mData_Item['FArrivalAddress']:=qry.FieldByName('FArrivalAddress').Value;
      mData_Item.Post;
    end;
  end;
end;

procedure TFrm_ApprovalItem.ToolButton1Click(Sender: TObject);
var
  Query_Sp:TADOStoredProc;
  f,g,i,h,k,s,n,ReNum,ReNumLoop,R_Count,ReNumH:Integer;
  ExcelApp,MyWorkBook,mysheet,vLastSheet: Variant;
  filepath,savefilepath,Sqlstr,copystart,copyend,copystart1,aa,copystart_H,copyend_H,copystart1_H,copystartL:string;
  RepSpace:String;//合并单元格
  ListQry:Tadoquery;
  qry,qry1,qry2:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  qry1:=TAdoQuery.Create(self);
  qry1.ConnectionString:=mdlData.ReadConnStr;

  qry2:=TAdoQuery.Create(self);
  qry2.ConnectionString:=mdlData.ReadConnStr;

  //交叉报表
  Act_Approval_Price.Execute;

  filepath:=Extractfilepath(application.ExeName)+'电袋招标评审报批表模版.xls';
  if (MData_Item.Active) and (MData_Item.recordcount>0) then
  Begin
    SaveDialog1.FileName:=UserFDepartmentShortName+'电袋招标中心评审报批表('+MData_Item['FApprovalItemNum']+')';
    SaveDialog1.Filter:='.xls';
    SaveDialog1.Execute;

    if (MData_Item.FieldByName('FApprovalItemNum').AsString<>'') Or (MData_Item.FieldByName('FApprovalItemNum').AsString<>Null) then
        savefilepath:=SaveDialog1.FileName+'.xls';

    if FileExists(savefilepath) then
    begin
      DeleteFile(savefilepath) ;
    end;
    stbMsg.Caption:='提示信息：正在导出电袋招标中心评审报批表:'+'【'+MData_Item.FieldByName('FApprovalItemNum').AsString+'】';
    stbBar.Refresh;

    ExcelApp:= CreateOleObject('Excel.Application' );
    ExcelApp.DisplayAlerts:=False;                  //不显示提示框
    MyWorkBook:=ExcelApp.WorkBooks.Open(filepath);   //打开模版
    //ExcelApp.Visible:=True;

    try
      qry.SQL.Text:='select distinct FApprovalItemID,FApprovalItemNum from V_ApprovalList with(nolock) '
                   +'where FDepartMentID=:FDepartMentID and FApprovalItemID=:FApprovalItemID';
      qry.Parameters.FindParam('FDepartMentID').value:=UserFDepartmentID;
      qry.Parameters.FindParam('FApprovalItemID').value:=MData_Item['FApprovalItemID'];
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
       qry1.SQL.Text:=colHeadStr; //交叉报表
       qry1.Parameters.FindParam('FApprovalItemID').value:=qry['FApprovalItemID'];
      qry1.Open;
     finally
       ;
     end;
     vLastSheet:=MyWorkBook.Sheets[MyWorkBook.Sheets.Count];
     MyWorkBook.Sheets[1].Copy(EmptyParam,vLastSheet);
     MyWorkBook.WorkSheets[k].Name:=IntToStr(k)+mdata_Item['FApprovalItemNum'];
     MyWorkBook.WorkSheets[k].Activate;


      //标题
      //MyWorkBook.WorkSheets[k].Cells[1,1].Value:=AnsiReplaceStr(MyWorkBook.WorkSheets[k].Cells[1,1].Value,'A',UserFDepartmentName); //公司名称

      MyWorkBook.WorkSheets[k].Cells[3,3].Value:=mdata_Item.FieldByName('FItemNumber').AsString; //图号
      MyWorkBook.WorkSheets[k].Cells[4,3].Value:=mdata_Item.FieldByName('FClientFullName').AsString; //用户名称
      MyWorkBook.WorkSheets[k].Cells[10,4].Value:=mdata_Item.FieldByName('FOfferExplain').AsString; //报价说明
      MyWorkBook.WorkSheets[k].Cells[14,4].Value:=mdata_Item.FieldByName('FAskBrands').AsString; //外购单协议要求厂家
      MyWorkBook.WorkSheets[k].Cells[15,4].Value:=mdata_Item.FieldByName('FOfferCentreExplain').AsString; //招标中心情况说明
      for g:=2 to qry1.FieldCount-7-1 do
      begin
         ExcelApp.ActiveSheet.Columns[10].Insert;
         ExcelApp.ActiveSheet.Columns[10].Insert;
      end;

      //复制列格式
      ExcelApp.ActiveSheet.Range['H11:I13'].Copy;
      for g:=2 to qry1.FieldCount-7-1 do
          ExcelApp.ActiveSheet.Cells[11,8+2*(g-1)].PasteSpecial;

      //循环行开始
      i:=7;

       //工作薄名称
      MyWorkBook.WorkSheets[k].Name:=mdata_Item.FieldByName('FApprovalItemNum').AsString;
      copystart:='A'+IntToStr(i);
      if qry1.recordcount>0 then
      Begin
        if qry1.recordcount>1 then
        Begin
          copystart:='A'+IntToStr(i);
          copystart1:='A'+IntToStr(i+1);
          copyend:='Q'+IntToStr(i);  //区域  A:P
          ReNum:=qry1.recordcount-1;//记录个数
          while ReNum>0 do
          Begin
            ExcelApp.ActiveSheet.Range[copystart+':'+copyend].Copy;
            ExcelApp.ActiveSheet.Rows[i+0].Insert;
            ExcelApp.ActiveSheet.Range[copystart1].PasteSpecial;
            Renum:=Renum-1;
          end;
        end
        else
        Begin
          R_Count:=qry1.recordcount;
        end;
        //合计
        MyWorkBook.WorkSheets[k].Cells[i+qry1.recordcount,9].Value := '=SUM(I7:I'+IntToStr(i+qry1.recordcount-1)+')'; //合计重量
        MyWorkBook.WorkSheets[k].Cells[i+qry1.recordcount+1,9].Value := '=$G$'+IntToStr(i+qry1.recordcount+1)+'*SUM(I7:I'+IntToStr(i+qry1.recordcount-1)+')'; //合计重量

        //复制列格式
        //ExcelApp.ActiveSheet.Range['H5:I9'].Copy;
       // ExcelApp.ActiveSheet.Range['H5:I9'].Copy;
        copystartL:='H5:I'+IntToStr(7+qry1.recordcount-1+2);
        ExcelApp.ActiveSheet.Range[copystartL].Copy;
        for g:=2 to qry1.FieldCount-7-1 do
            ExcelApp.ActiveSheet.Cells[5,8+2*(g-1)].PasteSpecial;

        //写交叉表头
        for g:=1 to qry1.FieldCount-7-1 do
        begin
           MyWorkBook.WorkSheets[k].Cells[5,8+2*(g-1)].Value:=qry1.Fields[6+g].FieldName;
        end;

        qry1.first;
        while not qry1.eof do
        Begin
          MyWorkBook.WorkSheets[k].Cells[i,1].Value := i-7+1;
          MyWorkBook.WorkSheets[k].Cells[i,2].Value := qry1.FieldByName('图号').AsString;
          MyWorkBook.WorkSheets[k].Cells[i,3].Value := qry1.FieldByName('品名').AsString;
          MyWorkBook.WorkSheets[k].Cells[i,5].Value := qry1.FieldByName('规格').AsString;
          MyWorkBook.WorkSheets[k].Cells[i,6].Value := qry1.FieldByName('单位').AsString;
          MyWorkBook.WorkSheets[k].Cells[i,7].Value := qry1.FieldByName('总数量').AsString;
          for g:=1 to qry1.FieldCount-7-1 do
          begin
            MyWorkBook.WorkSheets[k].Cells[i,8+2*(g-1)].Value := qry1.Fields[6+g].AsString;
           // MyWorkBook.WorkSheets[k].Cells[i,9+2*(g-1)].Value := qry1.FieldByName('报价有效期').AsString;
           // MyWorkBook.WorkSheets[k].Cells[i,10+2*(g-1)].Value := qry1.FieldByName('付款方式').AsString;
           // MyWorkBook.WorkSheets[k].Cells[i,11+2*(g-1)].Value := qry1.FieldByName('供货周期').AsString;
          end;
          qry1.next;
          i:=i+1;
        end;
        // ExcelApp.Rows[i+1].RowHeight:=140;    //说明行固定行高
      end;
      //报价有效期
      try
        qry2.SQL.Text:='select distinct FSupplierName,FOfferPeriod from V_QuotationList  where FApprovalItemID=:FApprovalItemID order by FSupplierName' ;
        qry2.Parameters.FindParam('FApprovalItemID').value:=qry['FApprovalItemID'];
        qry2.Open;
      finally
        ;
      end;
      qry2.First;
      g:=1 ;
      while not qry2.eof do
      Begin
        MyWorkBook.WorkSheets[k].Cells[5+qry1.FieldCount-1,8+2*(g-1)].Value :=qry2.FieldByName('FOfferPeriod').AsString;
        g:=g+1;
        qry2.next;
      end;

      //付款方式
      try
        qry2.SQL.Text:='select distinct FSupplierName,FPaymentType from V_QuotationList  where FApprovalItemID=:FApprovalItemID  order by FSupplierName' ;
        qry2.Parameters.FindParam('FApprovalItemID').value:=qry['FApprovalItemID'];
        qry2.Open;
      finally
        ;
      end;
      qry2.First;
      g:=1 ;
      while not qry2.eof do
      Begin
        MyWorkBook.WorkSheets[k].Cells[6+qry1.FieldCount-1,8+2*(g-1)].Value :=qry2.FieldByName('FPaymentType').AsString;
        g:=g+1;
        qry2.next;
      end;
      //供货周期
      try
        qry2.SQL.Text:='select distinct FSupplierName,FLeadTime from V_QuotationList  where FApprovalItemID=:FApprovalItemID  order by FSupplierName' ;
        qry2.Parameters.FindParam('FApprovalItemID').value:=qry['FApprovalItemID'];
        qry2.Open;
      finally
        ;
      end;
      qry2.First;
      g:=1 ;
      while not qry2.eof do
      Begin
        MyWorkBook.WorkSheets[k].Cells[7+qry1.FieldCount-1,8+2*(g-1)].Value :=qry2.FieldByName('FLeadTime').AsString;
        g:=g+1;
        qry2.next;
      end;

      //合并循环行开始
      try
        qry1.SQL.Text:='Select FClientFullName,count(*) as n from V_ApprovalList with(nolock) '
                      +' where FApprovalItemID=:FApprovalItemID '
                      +' group by FClientFullName '
                      +' order by FClientFullName ' ;
        qry1.Parameters.FindParam('FApprovalItemID').value:=mdata_Item['FApprovalItemID'];
        qry1.Open;
      finally
        ;
      end;
      If qry1.RecordCount>0 then
      begin
        qry1.First;
        i:=7;
        h:=1;
        while not qry1.eof do
        begin
          //合并单元格
          n:=qry1.FieldByName('n').Value;
          RepSpace:=GetRepRange(i,2)+':'+GetRepRange(i+n-1,2);
          ExcelApp.Range[RepSpace].Select;
          ExcelApp.Selection.Merge;
          //加边框线
          RepSpace:=GetRepRange(i,2)+':'+GetRepRange(i+n-1,2);
          ExcelApp.ActiveSheet.Range[RepSpace].Borders.LineStyle:=1;
          qry1.Next;
          i:=i+n;
          h:=h+1;
        end;
      end;

      //加边框线
        RepSpace:=GetRepRange(i,2)+':'+GetRepRange(i,2);
        ExcelApp.ActiveSheet.Range[RepSpace].Borders.LineStyle:=1;

      qry.Next ;
      ExcelApp.Visible:=True;
      MyWorkBook.WorkSheets[k].PrintPreview;  //打印
      k:=k+1;
    end;
    MyWorkBook.WorkSheets[1].delete; //删除模版
    stbMsg.Caption:='提示信息：电袋招标中心评审报批表:'+'【'+mdata_Item.FieldByName('FApprovalItemNum').AsString+'】的信息导出完成!';
    stbBar.Refresh;
    MyWorkBook.saveas(savefilepath);
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

procedure TFrm_ApprovalItem.FItemNumber_ItemPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  mData_Item.Edit;
  mData_Item.Post;
  MData_List.Close;
  MData_List.Active:=True;
  If mData_Item['FItemNumber']=Null then
  begin
    mData_Item.Edit;
    mData_Item['FItemNumber']:='';
    mData_Item.Post;
  end;
  try
    qry.SQL.Text:='select * from  VT_DesignTake_Sel with(nolock) '
                 +' where FDepartmentID=:FDepartmentID  order by FNumber ';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Open;
  finally
   ;
  end;

  selValue:=select('选择项目图号','FNumber','FParentNumber','FNumber','FName;',qry);
  If (Length(selValue)>0) and (qry.FieldByName('isleaf').Value=3) then
  begin
    mData_Item.Edit;
    mData_Item['FItemID']:=qry.FieldByName('FItemID').Value;
    mData_Item['FTakeNumber']:=qry.FieldByName('FTakeNumber').Value;

    P_FTakeItemID:=qry.FieldByName('FTakeItemID').Value;
    mData_Item.Post;
  end
  else
  begin
    application.MessageBox('请选择明细级！','系统提示',MB_ICONWARNING);
    Exit;
  end;

  try
    qry.SQL.Text:='select * from  V_Item with(nolock) where FItemID=:FItemID ';
    qry.Parameters.FindParam('FItemID').value:=mData_Item['FItemID'];
    qry.Open;
  finally
   ;
  end;
  If qry.RecordCount>0 then
  begin
    mData_Item.Edit;
    mData_Item['FItemNumber']:=qry.FieldByName('FItemNumber').Value;
    mData_Item['FClientShortName']:=qry.FieldByName('FClientShortName').Value;
    mData_Item['FItemModel']:=qry.FieldByName('FItemModel').Value;
    mData_Item['FClientFullName']:=qry.FieldByName('FClientFullName').Value;
    mData_Item['FFileNo']:=qry.FieldByName('FFileNo').Value;
    mData_Item['FItemModel']:=qry.FieldByName('FItemModel').Value;
    mData_Item.Post;
  end;
  try
    qry.SQL.Text:='select * from  V_DesignTakeList with(nolock) where FTakeItemID=:FTakeItemID and FTakeSumQry>FApprovalQry ';
    qry.Parameters.FindParam('FTakeItemID').value:=P_FTakeItemID;
    qry.Open;
  finally
   ;
  end;

   qry.First;
   while not qry.Eof  do
   begin
     MData_List.Append;
     MData_List.Edit;
     MData_List['FApprovalStuffNumber']:= qry.FieldByName('FApprovalStuffNumber').Value;
     MData_List['FTakeListID']:= qry.FieldByName('FTakeListID').Value;
     MData_List['FTakeGBT']:= qry.FieldByName('FTakeGBT').Value;
     MData_List['FTakemc']:= qry.FieldByName('FTakemc').Value;
     MData_List['FTakegg']:= qry.FieldByName('FTakegg').Value;
     MData_List['FTakedw']:= qry.FieldByName('FTakedw').Value;
     MData_List['FTakeQry']:= qry.FieldByName('FTakeQry').Value;
     MData_List['FTakeSumQry']:= qry.FieldByName('FTakeSumQry').Value;
     MData_List['FApprovalQry']:= qry.FieldByName('FTakeSumQry').Value-qry.FieldByName('FApprovalQry').Value;
     MData_List['FTakeDemand']:= qry.FieldByName('FTakeDemand').Value;
     MData_List['FTakeDesign']:= qry.FieldByName('FTakeDesign').Value;
     MData_List['FTakeListReMark']:= qry.FieldByName('FTakeListReMark').Value;
     MData_List['FK3ItemID']:= qry.FieldByName('FK3ItemID').Value;
     MData_List['FNumber']:= qry.FieldByName('FNumber').Value;
     MData_List['FTakeName']:= qry.FieldByName('FTakeName').Value;
     MData_List['FTakeModel']:= qry.FieldByName('FTakeModel').Value;
     MData_List['FTakeUnitName']:= qry.FieldByName('FTakeUnitName').Value;
     MData_List['FApprovalStuffSortID']:= qry.FieldByName('FApprovalStuffSortID').Value;
     MData_List['FApprovalStuffSort']:= qry.FieldByName('FApprovalStuffSort').Value;
     MData_List.post;
     qry.Next;
   end;

end;

procedure TFrm_ApprovalItem.Act_Approval_PriceExecute(Sender: TObject);
var qry,qry_Loop: TADOQuery;
    DS_qry:TDataSource;
    colHeadStr1,colHeadStr2,colHeadStr3,colHeadStr4:string;
    LoopInt:Integer;
    Column: TcxGridDBColumn;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry_Loop:=TADOQuery.Create(Self);
  qry_Loop.ConnectionString:=mdlData.ReadConnStr;
  DS_qry:=TDataSource.Create(Self);

  DS_qry.DataSet:=qry;
  cxGV_Qry.DataController.DataSource:=DS_Qry;
  cxGV_Qry.DataController.DataSource.DataSet:=qry;
  P_Wet:='FPrice';
  P_TotalAmount:='FTotalAmount';
  try
    qry_Loop.SQL.Text:='select distinct FApprovalItemID,FSupplierShortName from V_QuotationList '
                      +' where FApprovalItemID=:FApprovalItemID and FISApproval=1 and FQuotationStatus>=1 '
                      +' order by FApprovalItemID,FSupplierShortName ';
    qry_Loop.Parameters.FindParam('FApprovalItemID').value:=MData_Item['FApprovalItemID'];
    qry_Loop.Open;
  finally
    ;
  end;
  If qry_Loop.RecordCount<=0 then
     Exit
  else
  begin
    mdata_Qry.CopyFromDataSet(qry_Loop);
    mdata_Qry.Open;
  end;

  colHeadStr1:='';
  colHeadStr2:='';
  colHeadStr3:=' from (select FApprovalItemNum,FItemNumber,FClientFullName,FApprovalStuffNumber,FTakeGBT,FTakemc,'
              +'FTakegg,FTakedw,FApprovalQry,FSupplierShortName,'
              +'(sum(isnull('+P_Wet+',0))) as Wet,(sum(isnull('+P_TotalAmount+',0))) as FTotalAmount from V_QuotationList where FApprovalItemID=:FApprovalItemID and FISApproval=1 and FQuotationStatus>=1 '
              +'group by FApprovalItemNum,FItemNumber,FClientFullName,FApprovalStuffNumber,FTakeGBT,FTakemc,'
              +'FTakegg,FTakedw,FApprovalQry,FSupplierShortName) as a ';
  colHeadStr4:='0';
  mdata_Qry.First;
  while not mdata_Qry.eof do
  begin
    If mdata_Qry['FSupplierShortName']='' then
    begin
      mdata_Qry.Edit;
      mdata_Qry['FSupplierShortName']:='空白';
      mdata_Qry.Post
    end;
    colHeadStr1:=colHeadStr1+',sum('+''+mdata_Qry['FSupplierShortName']+'单价) as '+mdata_Qry['FSupplierShortName']+'单价 '
                +',sum('+''+mdata_Qry['FSupplierShortName']+'金额) as '+mdata_Qry['FSupplierShortName']+'金额 ';
    colHeadStr2:=colHeadStr2+',isnull(case FSupplierShortName when '''+mdata_Qry['FSupplierShortName']+''' '
               +'then isnull(Wet,0) end,0) as '+''+mdata_Qry['FSupplierShortName']+'单价 '
               +',isnull(case FSupplierShortName when '''+mdata_Qry['FSupplierShortName']+''' '
               +'then isnull(FTotalAmount,0) end,0) as '+''+mdata_Qry['FSupplierShortName']+'金额 ';
    colHeadStr4:=colHeadStr4+'+sum('+''+mdata_Qry['FSupplierShortName']+')';
    mdata_Qry.Next;
  end;

  colHeadStr:='select FApprovalItemNum as 评审单号,FItemNumber as 图号,FClientFullName as 用户名称,FTakemc+FTakeGBT as 品名,'
             +'FTakegg as 规格,FTakedw as 单位,FApprovalQry as 数量 '
             +colHeadStr1
             //+','+colHeadStr4+' as 合计 '
             +'from (select FApprovalItemNum,FItemNumber,FClientFullName,FApprovalStuffNumber,FTakeGBT,FTakemc,'
             +'FTakegg,FTakedw,FApprovalQry,FSupplierShortName '
             +colHeadStr2+colHeadStr3
             +' ) as b group by FApprovalItemNum,FItemNumber,FClientFullName,FApprovalStuffNumber,FTakeGBT,FTakemc,FTakegg,FTakedw,FTakeSumQry '
             +'order by FApprovalItemNum,FItemNumber,FClientFullName,FApprovalStuffNumber,FTakeGBT,FTakemc,FTakegg,FTakedw,FTakeSumQry ';
  try
    Edit1.Text:=colHeadStr;
    qry.SQL.Text:=colHeadStr;
    qry.Parameters.FindParam('FApprovalItemID').value:=MData_Item['FApprovalItemID'];
    qry.Open;
  finally
    ;
  end;

  If qry.RecordCount<=0 then
     Exit
  else
  begin
    cxGV_Qry.ClearItems;
    for  LoopInt:=0 to  qry.FieldCount-1 do
    begin
      Column:=cxGV_Qry.CreateColumn;
      Column.DataBinding.FieldName:=qry.Fields[LoopInt].FieldName;
      Column.Caption:=qry.Fields[LoopInt].FieldName;
      Column.FooterAlignmentHorz:=taCenter;
      Column.HeaderAlignmentHorz:=taCenter;
      Column.HeaderGlyphAlignmentHorz:=taCenter;
      If LoopInt=1 then
         Column.Width:=100
      else
         Column.Width:=30;
      column.Visible:=True;
      Column.Options.Filtering:=False;
      Column.Options.Editing:=False;
    end;
  end;

end;

procedure TFrm_ApprovalItem.ToolButton3Click(Sender: TObject);
var qry2: TADOQuery;
    g:integer;
begin
  qry2:=TADOQuery.Create(self);
  qry2.ConnectionString:=mdlData.ReadConnStr;
  mdata_List.Last;

  //付款方式
  try
    qry2.SQL.Text:='select distinct FSupplierName,FPaymentType from V_QuotationList  where FApprovalItemID=:FApprovalItemID  order by FSupplierName' ;
    qry2.Parameters.FindParam('FApprovalItemID').value:=mdata_Item['FApprovalItemID'];
    qry2.Open;
  finally
    ;
  end;
  qry2.First;
  g:=1 ;
  while not qry2.eof do
  Begin
   // MyWorkBook.WorkSheets[k].Cells[6+qry1.FieldCount-1,8+2*(g-1)].Value :=qry2.FieldByName('FPaymentType').AsString;
    mdata_List.Edit;
    mdata_List.Append;
    mdata_List.Edit;
   // mdata_qry.Fields[6+g].Value:=qry2.FieldByName('FPaymentType').AsString;
    mdata_List.FieldByName('FQuotationStuffName').AsString:=qry2.FieldByName('FPaymentType').AsString;
    mdata_List.post;
    g:=g+1;
    qry2.next;
  end;
end;

procedure TFrm_ApprovalItem.FProductList_ItemPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue: string;
    qry,qry1: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry1:=TADOQuery.Create(self);
  qry1.ConnectionString:=mdlData.ReadConnStr;

  MData_Item.Edit;
  MData_Item.Post;
  If MData_Item['FApprovalStuffSort']=Null then
  begin
    MData_Item.Edit;
    MData_Item['FApprovalStuffSort']:='';
    MData_Item.Post;
  end;

  try
    //qry.SQL.Text:='select distinct FApprovalStuffSortID,FApprovalStuffSort from  V_DesignTakeList with(nolock) '
    //             +' where FTakeItemID=:FTakeItemID order by FApprovalStuffSort ';

    qry.SQL.Text:='select distinct a.FApprovalStuffSort,b.FApprovalStuffSortID from  V_DesignTakeList as a with(nolock) '
                 +' left outer join T_ApprovalStuffSort as b on a.FApprovalStuffSort=b.FApprovalStuffSort '
                 +' where FTakeItemID=:FTakeItemID order by a.FApprovalStuffSort ';
    qry.Parameters.FindParam('FTakeItemID').value:=P_FTakeItemID;


    qry.Open;
  finally
   ;
  end;
  selValue:=select('选择供货类别','FApprovalStuffSort','FApprovalStuffSort','FApprovalStuffSort','FApprovalStuffSort',qry);
  If (Length(selValue)>0) then
  begin
    MData_Item.Edit;
    MData_Item['FApprovalStuffSortID']:=qry.FieldByName('FApprovalStuffSortID').Value;
    MData_Item['FApprovalStuffSort']:=qry.FieldByName('FApprovalStuffSort').Value;
    MData_Item.Post;
    //MData_Item['FProductListNum']:=qry.FieldByName('FProductListNum').Value;
  end;
  Act_ApprovalStuffSort.Execute;

end;

procedure TFrm_ApprovalItem.Act_PickExecute(Sender: TObject);
var
  dlgOpen: TRzOpenDialog;
  Filter,SelCaption,filepath:string;
  ExcelApp,MyWorkBook,mysheet: Variant;
  k,i,Maxc:Integer;
  selValue : string;
  qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  //打开导入的文件
   dlgOpen:=TRzOpenDialog.Create(Application);
   try
     Filter:='';
     selCaption:='';
     Filter:='电子表格|*.xls;*.csv|所有文件|*.*';
     dlgOpen.Title:='选择部件的导入文件';
     dlgOpen.Filter:=Filter;
     If not dlgOpen.Execute then Exit;
     filepath:=dlgOpen.FileName;
   finally
     ;
   end;
   //打开EXCEL文件
   ExcelApp:= CreateOleObject('Excel.Application' );
   MyWorkBook:=ExcelApp.WorkBooks.Open( filepath );
   k:=MyWorkBook.Sheets.Count;  //工作薄的个数
   try
     qry.SQL.Text:='select 1 as FNumber,'''+MyWorkBook.WorkSheets[1].Cells[3,3].Value+''' as FName ';
     for k:=2 to k do
     begin
       qry.SQL.Text:=qry.SQL.Text+' union ' ;
       qry.SQL.Text:=qry.SQL.Text+'select '+IntToStr(k)+' as FNumber,'''+MyWorkBook.WorkSheets[k].Cells[3,9].Value+''' as FName';
     end;
     qry.Open;
   finally
     ;
   end;
   selValue:=Select('选择工作薄','FName','FName','FName','FNumber;FName',qry);
   If (Length(selValue)>0) and (qry.RecordCount>1) then
   begin
     k:=qry.FieldByName('FNumber').Value;
   end;


   //打开已存在工作簿
   ExcelApp.Worksheets[k].activate;      //打开第k个工作表   //ExcelApp.WorkSheets['第四章'].activate;  //打开名为第四章的工作表
   Maxc:=MyWorkBook.WorkSheets[k].UsedRange.Columns.Count;
   i:= MyWorkBook.WorkSheets[k].UsedRange.Rows.Count;   //已经使用的行数

   MData_Item.Edit;
   MData_Item['FItemNumber']:= MyWorkBook.WorkSheets[k].Cells[3,3].Value;
  // MData_Item['FTakeNumber']:= MyWorkBook.WorkSheets[k].Cells[3,9].Value;
  // MData_Item['FTakeAddNum']:= MyWorkBook.WorkSheets[k].Cells[3,9].Value;
 //  MData_Item['FElectricName']:= MyWorkBook.WorkSheets[k].Cells[3,11].Value;
 //  MData_Item['FTakeReMark']:= MyWorkBook.WorkSheets[k].Cells[3,14].Value;
   MData_Item.Post;

   Act_Item.Execute; //  项目信息
  // Act_FElectricName.Execute;   // 电气类别号

   MData_List.Open;
   MData_List.First;
   for i:=6 to i do
   begin
     MData_List.Append;
     MData_List.Edit;
     MData_List['FTakeGBT']:= MyWorkBook.WorkSheets[k].Cells[i,2].Value;
     MData_List['FTakemc']:= MyWorkBook.WorkSheets[k].Cells[i,4].Value;
     MData_List['FTakegg']:= MyWorkBook.WorkSheets[k].Cells[i,6].Value;
     MData_List['FTakedw']:= MyWorkBook.WorkSheets[k].Cells[i,8].Value;
     MData_List['FTakeQry']:= MyWorkBook.WorkSheets[k].Cells[i,9].Value;
     MData_List['FTakeSumQry']:= MyWorkBook.WorkSheets[k].Cells[i,10].Value;
     MData_List['FApprovalQry']:= MyWorkBook.WorkSheets[k].Cells[i,10].Value;
     MData_List['FTakeDemand']:= MyWorkBook.WorkSheets[k].Cells[i,11].Value;
     MData_List['FTakeDesign']:= MyWorkBook.WorkSheets[k].Cells[i,13].Value;
     MData_List['FTakeListReMark']:= MyWorkBook.WorkSheets[k].Cells[i,15].Value;
     MData_List['FTakeName']:= MyWorkBook.WorkSheets[k].Cells[i,4].Value+MyWorkBook.WorkSheets[k].Cells[i,2].Value;
     MData_List['FTakeModel']:= MyWorkBook.WorkSheets[k].Cells[i,6].Value;
     MData_List['FTakeUnitName']:= MyWorkBook.WorkSheets[k].Cells[i,8].Value;
     MData_List.post;
   end;

   MData_List.First;
   MyWorkBook.Close;
   ExcelApp.WorkBooks.Close;         //关闭工作簿
   ExcelApp.Quit;                   //退出 Excel
   ExcelApp:=Unassigned;
   dlgOpen.Free;





end;

procedure TFrm_ApprovalItem.Act_ItemExecute(Sender: TObject);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  mdata_Item.Edit;
  if mdata_Item['FItemNumber']=Null then
     mdata_Item['FItemNumber']:='';
  mdata_Item.Post;

  try
    qry.SQL.Text:='select * from VT_Item with(nolock) where FDepartmentID=:FDepartmentID and FItemNumber like :FItemNumber order by FItemNumber ';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Parameters.FindParam('FItemNumber').value:='%'+Trim(mdata_Item['FItemNumber'])+'%';
    qry.Open;
  finally
    ;
  end;
  If qry.RecordCount=1 then
  begin
    mdata_Item.Edit;
    mdata_Item['FFileNo']:=qry.FieldByName('FFileNo').Value;
    mdata_Item['FItemNumber']:=qry.FieldByName('FItemNumber').Value;
    mdata_Item['FClientShortName']:=qry.FieldByName('FClientShortName').Value;
    mdata_Item['FItemId']:=qry.FieldByName('FItemId').Value;
    mdata_Item.Post;
    Exit;
  end;
  selValue:=Select('选择项目号','FNumber','FParentNumber','FNumber','FName',qry);
  If (Length(selValue)>0) and (qry.RecordCount>1) then
  begin
    mdata_Item.Edit;
    mdata_Item['FFileNo']:=qry.FieldByName('FFileNo').Value;
    mdata_Item['FItemNumber']:=qry.FieldByName('FItemNumber').Value;
    mdata_Item['FClientShortName']:=qry.FieldByName('FClientShortName').Value;
    mdata_Item['FItemId']:=qry.FieldByName('FItemId').Value;
    mdata_Item.Post;
  end;


end;

procedure TFrm_ApprovalItem.FTakemc_ListPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  Act_Pick.Execute;
end;

procedure TFrm_ApprovalItem.Act_ApprovalStuffSortExecute(Sender: TObject);
var qry: TADOQuery;

begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  mData_Item.Edit;
  mData_Item.Post;
  If mData_Item['FApprovalStuffSortID']=Null then
  begin
    mData_Item.Edit;
    mData_Item['FApprovalStuffSortID']:=0;
    mData_Item.Post;
  end;
  MData_List.close;
  MData_List.Open;
  try
    qry.SQL.Text:='select * from  V_DesignTakeList with(nolock) where FTakeItemID=:FTakeItemID and FApprovalStuffSortID=:FApprovalStuffSortID and FTakeSumQry>FApprovalQry';
    qry.Parameters.FindParam('FTakeItemID').value:=P_FTakeItemID;
    qry.Parameters.FindParam('FApprovalStuffSortID').value:=MData_Item['FApprovalStuffSortID'];
    qry.Open;
  finally
   ;
  end;

   qry.First;
   while not qry.Eof  do
   begin
     MData_List.Append;
     MData_List.Edit;
     MData_List['FApprovalStuffNumber']:= qry.FieldByName('FApprovalStuffNumber').Value;
      MData_List['FTakeListID']:= qry.FieldByName('FTakeListID').Value;
     MData_List['FTakeGBT']:= qry.FieldByName('FTakeGBT').Value;
     MData_List['FTakemc']:= qry.FieldByName('FTakemc').Value;
     MData_List['FTakegg']:= qry.FieldByName('FTakegg').Value;
     MData_List['FTakedw']:= qry.FieldByName('FTakedw').Value;
     MData_List['FTakeQry']:= qry.FieldByName('FTakeQry').Value;
     MData_List['FTakeSumQry']:= qry.FieldByName('FTakeSumQry').Value;
     MData_List['FApprovalQry']:= qry.FieldByName('FTakeSumQry').Value-qry.FieldByName('FApprovalQry').Value;
     MData_List['FTakeDemand']:= qry.FieldByName('FTakeDemand').Value;
     MData_List['FTakeDesign']:= qry.FieldByName('FTakeDesign').Value;
     MData_List['FTakeListReMark']:= qry.FieldByName('FTakeListReMark').Value;
     MData_List['FK3ItemID']:= qry.FieldByName('FK3ItemID').Value;
     MData_List['FNumber']:= qry.FieldByName('FNumber').Value;
     MData_List['FTakeName']:= qry.FieldByName('FTakeName').Value;
     MData_List['FTakeModel']:= qry.FieldByName('FTakeModel').Value;
     MData_List['FTakeUnitName']:= qry.FieldByName('FTakeUnitName').Value;
     MData_List['FApprovalStuffSortID']:= qry.FieldByName('FApprovalStuffSortID').Value;
     MData_List['FApprovalStuffSort']:= qry.FieldByName('FApprovalStuffSort').Value;
     MData_List.post;
     qry.Next;
   end;

end;

procedure TFrm_ApprovalItem.cxGrid_ListContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV_List';
  Gm:='mdata_List';
  Gr:='cxGrid_List';
  Act_Menu_Set.Execute;

end;

procedure TFrm_ApprovalItem.cxGrid_QryContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV_Qry';
  Gm:='mdata_Qry';
  Gr:='cxGrid_Qry';
  Act_Menu_Set.Execute;

end;

procedure TFrm_ApprovalItem.Act_FArrivalAddressExecute(Sender: TObject);
var qry: TADOQuery;
begin
  inherited;
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='select distinct FArrivalAddress from T_ApprovalItem order by FArrivalAddress ';
    qry.Open;
  finally
   ;
  end;
  (FArrivalAddress_Item.Properties as TcxComboBoxProperties).Items.Clear;
  qry.First;
  while not qry.Eof do
  begin
    if length(trim(qry.fieldbyname('FArrivalAddress').AsString))<>0 then
    begin
      (FArrivalAddress_Item.Properties as TcxComboBoxProperties).Items.Add(qry.fieldbyname('FArrivalAddress').AsString);
    end;
    qry.Next;
  end;

end;

procedure TFrm_ApprovalItem.FArrivalAddress_ItemGetProperties(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AProperties: TcxCustomEditProperties);
begin
  inherited;
//  Act_FArrivalAddress.Execute;
end;

procedure TFrm_ApprovalItem.Act_FOfferExplainExecute(Sender: TObject);
var qry: TADOQuery;
begin
  inherited;
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  If MData_Item['FOfferExplain']=Null then
  begin
  //  MData_Item.Edit;
 //   MData_Item['FOfferExplain']:='';
 //   MData_Item.Post;
  end;
  try
    qry.SQL.Text:='select distinct FOfferExplain from T_ApprovalItem order by FOfferExplain ';
   // qry.SQL.Text:='select distinct FOfferExplain from T_ApprovalItem where FOfferExplain like :FOfferExplain order by FOfferExplain ';
   // qry.Parameters.FindParam('FOfferExplain').value:='%'+MData_Item['FOfferExplain']+'%';
    qry.Open;
  finally
   ;
  end;
  (FOfferExplain_Item.Properties as TcxComboBoxProperties).Items.Clear;
  qry.First;
  while not qry.Eof do
  begin
    if length(trim(qry.fieldbyname('FOfferExplain').AsString))<>0 then
    begin
      (FOfferExplain_Item.Properties as TcxComboBoxProperties).Items.Add(qry.fieldbyname('FOfferExplain').AsString);
    end;
    qry.Next;
  end;

end;

procedure TFrm_ApprovalItem.FOfferExplain_ItemGetProperties(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AProperties: TcxCustomEditProperties);
begin
  inherited;
//  Act_FOfferExplain.Execute;
end;

procedure TFrm_ApprovalItem.Act_Approval_SortExecute(Sender: TObject);
var
  proc:TADOStoredProc;
  LoopInt:Integer;
  Column: TcxGridDBColumn;
  qry:TADOquery;
  DS_qry:TDataSource;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.CommandTimeout:=800;

  DS_qry:=TDataSource.Create(Self);
  DS_qry.DataSet:=qry;
  cxGV_Qry.DataController.DataSource:=DS_Qry;
  cxGV_Qry.DataController.DataSource.DataSet:=qry;

  proc:=TADOStoredProc.Create(self);
  proc.ConnectionString:=mdlData.ReadConnStr;
  proc.CommandTimeout:=500;
  try
    proc.ProcedureName:='[P_Approval_Sort];1';
    with proc.Parameters.AddParameter do
    begin
      DataType := ftInteger;
      Direction := pdinput;
      name := '@FApprovalItemID';
      value:=MData_Item['FApprovalItemID'];
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=20;
      name := '@Sort';
      value:='招标评审表';
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdoutput;
      size:=8000;
      name := '@Retinf_SortTxt';
      value:='';
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdoutput;
      size:=8000;
      name := '@Retinf_SupplierName';
      value:='';
    end;
    proc.Open;
    try
      Edit1.Text:=proc.Parameters.FindParam('@Retinf_SortTxt').Value;
      qry.SQL.Text:=proc.Parameters.FindParam('@Retinf_SortTxt').Value;
      qry.Open;
    finally
      ;
    end;

    If qry.RecordCount<=0 then
       Exit
    else
    begin
      cxGV_Qry.ClearItems;
      for  LoopInt:=0 to  qry.FieldCount-1 do
      begin
        Column:=cxGV_Qry.CreateColumn;
        Column.DataBinding.FieldName:=qry.Fields[LoopInt].FieldName;
        Column.Caption:=qry.Fields[LoopInt].FieldName;
        Column.FooterAlignmentHorz:=taCenter;
        Column.HeaderAlignmentHorz:=taCenter;
        Column.HeaderGlyphAlignmentHorz:=taCenter;
        If LoopInt=2 then
           Column.Width:=100
        else
           Column.Width:=30;
        column.Visible:=True;
        Column.Options.Filtering:=False;
        Column.Options.Editing:=False;
      end;
    end;
  finally
     ;
  end;

  
  Proc.Free;
end;

procedure TFrm_ApprovalItem.PC_ApprovalChange(Sender: TObject);
begin
  inherited;
  If PC_Approval.ActivePage=TS_Approval then
     Act_Approval_Sort.Execute;

end;

end.


