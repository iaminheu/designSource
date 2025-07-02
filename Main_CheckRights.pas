unit Main_CheckRights;

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
  cxGridCardView, cxGridDBCardView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGridCustomPopupMenu, cxGridPopupMenu,
  cxFilterControl, cxDBFilterControl, ActnList, cxCalc, Menus;

type
  TFrm_Supplier = class(TFrm_GridBass)
    MData: TdxMemData;
    DS_Mdata: TDataSource;
    Panel1: TPanel;
    ToolBar1: TToolBar;
    ToolButton5: TToolButton;
    ToolButton1: TToolButton;
    TB_Prin: TToolButton;
    TB_EXIT: TToolButton;
    frReport: TfrReport;
    frDBDataSet: TfrDBDataSet;
    RzSizePanel1: TRzSizePanel;
    PC_2: TRzPageControl;
    TB_Ref: TToolButton;
    TB_App: TToolButton;
    TB_Edit: TToolButton;
    TB_Del: TToolButton;
    MyTreeView: TTreeView;
    ImageList: TImageList;
    actionList: TActionList;
    Act_SetOpen: TAction;
    Act_SetClose: TAction;
    Act_Set_MaxID: TAction;
    Act_Set_MaxNum: TAction;
    Act_AddRd: TAction;
    Act_EditRd: TAction;
    Act_DelRd: TAction;
    Act_AddMain: TAction;
    Act_AddList: TAction;
    Act_App: TAction;
    Act_ProductList: TAction;
    Act_Edit: TAction;
    Act_Del: TAction;
    Act_Out: TAction;
    Act_Audit: TAction;
    Act_Act_Quotation: TAction;
    Act_OK: TAction;
    Act_Down: TAction;
    Act_Ref: TAction;
    Act_Prin: TAction;
    Act_Cancel: TAction;
    TS_CheckRights: TRzPageControl;
    TS_Brow: TRzTabSheet;
    Panel2: TPanel;
    TS_Edit: TRzTabSheet;
    MData_Brow: TdxMemData;
    DS_Mdata_Brow: TDataSource;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    RzSizePanel4: TRzSizePanel;
    Act_Quotation: TAction;
    DS_MData_Quotation: TDataSource;
    MData_Quotation: TdxMemData;
    DS_mData_List: TDataSource;
    mData_List: TdxMemData;
    Act_MaxID: TAction;
    Act_Supplier: TAction;
    cxGrid_Brow: TcxGrid;
    cxGV_Brow: TcxGridDBTableView;
    FSupplierName_Brow: TcxGridDBColumn;
    FSupplierAddress_Brow: TcxGridDBColumn;
    FAgentName_Brow: TcxGridDBColumn;
    FAgentMobilePhone_Brow: TcxGridDBColumn;
    FExpirationDate_Brow: TcxGridDBColumn;
    FAgentCardNum_Brow: TcxGridDBColumn;
    FAgentEmail_Brow: TcxGridDBColumn;
    FAgentFax_Brow: TcxGridDBColumn;
    FLeadName_Brow: TcxGridDBColumn;
    FLeadPosition_Brow: TcxGridDBColumn;
    FLeadMobilePhone_brow: TcxGridDBColumn;
    FLeadEmail_Brow: TcxGridDBColumn;
    FLeadFax_Brow: TcxGridDBColumn;
    FBusinessLicense_Brow: TcxGridDBColumn;
    FTaxRegistration_Brow: TcxGridDBColumn;
    FBankPermit_Brow: TcxGridDBColumn;
    FOrganizationCode_Brow: TcxGridDBColumn;
    FPowerAttorney_Brow: TcxGridDBColumn;
    FSupplierEvaluation_Brow: TcxGridDBColumn;
    FDepartmentName_Brow: TcxGridDBColumn;
    FDepartmentID_Brow: TcxGridDBColumn;
    cxGridDBCardView1: TcxGridDBCardView;
    cxGridDBCardViewRow1: TcxGridDBCardViewRow;
    cxGridDBCardViewRow2: TcxGridDBCardViewRow;
    cxGridDBCardViewRow3: TcxGridDBCardViewRow;
    cxGridDBCardViewRow4: TcxGridDBCardViewRow;
    cxGridDBCardViewRow5: TcxGridDBCardViewRow;
    cxGridDBCardViewRow6: TcxGridDBCardViewRow;
    cxGridDBCardViewRow7: TcxGridDBCardViewRow;
    cxGridDBCardViewRow8: TcxGridDBCardViewRow;
    cxGridDBCardViewRow9: TcxGridDBCardViewRow;
    cxGridDBCardViewRow10: TcxGridDBCardViewRow;
    cxGridDBCardViewRow11: TcxGridDBCardViewRow;
    cxGridDBCardViewRow12: TcxGridDBCardViewRow;
    cxGridDBCardViewRow13: TcxGridDBCardViewRow;
    cxGridDBCardViewRow14: TcxGridDBCardViewRow;
    cxGridDBCardViewRow15: TcxGridDBCardViewRow;
    cxGridDBCardViewRow16: TcxGridDBCardViewRow;
    cxGridDBCardViewRow17: TcxGridDBCardViewRow;
    cxGridDBCardViewRow18: TcxGridDBCardViewRow;
    cxGridDBCardViewRow19: TcxGridDBCardViewRow;
    cxGridDBCardViewRow20: TcxGridDBCardViewRow;
    cxGridDBCardViewRow21: TcxGridDBCardViewRow;
    cxGridDBCardViewRow22: TcxGridDBCardViewRow;
    cxGridDBCardViewRow23: TcxGridDBCardViewRow;
    cxGL_Brow: TcxGridLevel;
    cxGrid_Quotation: TcxGrid;
    cxGV_Quotation: TcxGridDBTableView;
    FQuotationType_Quotation: TcxGridDBColumn;
    FApprovalStuffSort_Quotation: TcxGridDBColumn;
    FApprovalStuffNumber_Quotation: TcxGridDBColumn;
    FTakemc_Quotation: TcxGridDBColumn;
    FTakegg_Quotation: TcxGridDBColumn;
    FTakedw_Quotation: TcxGridDBColumn;
    FTakeListReMark_Quotation: TcxGridDBColumn;
    FPrice_Quotation: TcxGridDBColumn;
    FTakeSumQry_Quotation: TcxGridDBColumn;
    FTotalAmount_Quotation: TcxGridDBColumn;
    FISApproval_Quotation: TcxGridDBColumn;
    FQuotationListRemark_Quotation: TcxGridDBColumn;
    FApprovalItemNum_Quotation: TcxGridDBColumn;
    FQuotationNum_Quotation: TcxGridDBColumn;
    FItemNumber_Quotation: TcxGridDBColumn;
    FClientShortName_Quotation: TcxGridDBColumn;
    FApprovalStuffID_Quotation: TcxGridDBColumn;
    FQuotationItemID_Quotation: TcxGridDBColumn;
    FQuotationListID_Quotation: TcxGridDBColumn;
    FApprovalListID_Quotation: TcxGridDBColumn;
    cxGL_Quotation: TcxGridLevel;
    Panel3: TPanel;
    cxGrid: TcxGrid;
    cxGV: TcxGridDBTableView;
    FSupplierName: TcxGridDBColumn;
    FSupplierAddress: TcxGridDBColumn;
    FAgentName: TcxGridDBColumn;
    FAgentMobilePhone: TcxGridDBColumn;
    FExpirationDate: TcxGridDBColumn;
    FAgentCardNum: TcxGridDBColumn;
    FAgentEmail: TcxGridDBColumn;
    FAgentFax: TcxGridDBColumn;
    FLeadName: TcxGridDBColumn;
    FLeadPosition: TcxGridDBColumn;
    FLeadMobilePhone: TcxGridDBColumn;
    FLeadEmail: TcxGridDBColumn;
    FLeadFax: TcxGridDBColumn;
    FBusinessLicense: TcxGridDBColumn;
    FTaxRegistration: TcxGridDBColumn;
    FBankPermit: TcxGridDBColumn;
    FOrganizationCode: TcxGridDBColumn;
    FPowerAttorney: TcxGridDBColumn;
    FSupplierEvaluation: TcxGridDBColumn;
    FDepartmentName: TcxGridDBColumn;
    FDepartmentID: TcxGridDBColumn;
    cxGVC: TcxGridDBCardView;
    FSupplierName_Card: TcxGridDBCardViewRow;
    FSupplierAddress_Card: TcxGridDBCardViewRow;
    FAgentName_Card: TcxGridDBCardViewRow;
    FAgentMobilePhone_Card: TcxGridDBCardViewRow;
    FExpirationDate_Card: TcxGridDBCardViewRow;
    FAgentCardNum_Card: TcxGridDBCardViewRow;
    FAgentEmail_Card: TcxGridDBCardViewRow;
    FAgentFax_Card: TcxGridDBCardViewRow;
    FLeadName_Card: TcxGridDBCardViewRow;
    FLeadPosition_Card: TcxGridDBCardViewRow;
    FLeadMobilePhone_Card: TcxGridDBCardViewRow;
    FLeadEmail_Card: TcxGridDBCardViewRow;
    FLeadFax_Card: TcxGridDBCardViewRow;
    FBusinessLicense_Card: TcxGridDBCardViewRow;
    FTaxRegistration_Card: TcxGridDBCardViewRow;
    FBankPermit_Card: TcxGridDBCardViewRow;
    FOrganizationCode_Card: TcxGridDBCardViewRow;
    FPowerAttorney_Card: TcxGridDBCardViewRow;
    FSupplierEvaluation_Card: TcxGridDBCardViewRow;
    FSupplierRemark_Card: TcxGridDBCardViewRow;
    cxGL: TcxGridLevel;
    cxGLC: TcxGridLevel;
    RzSizePanel2: TRzSizePanel;
    cxGrid_ProductList: TcxGrid;
    cxGV_ProductList: TcxGridDBTableView;
    IsApp: TcxGridDBColumn;
    FApprovalStuffSort: TcxGridDBColumn;
    FApprovalStuffSortID: TcxGridDBColumn;
    cxGL_ProductList: TcxGridLevel;
    Panel_OK: TPanel;
    OKBtn: TcxButton;
    CancelBtn: TcxButton;
    FSupplierShortName_Brow: TcxGridDBColumn;
    FSupplierShortName: TcxGridDBColumn;
    FSupplierShortName_Card: TcxGridDBCardViewRow;
    FProvince_Brow: TcxGridDBColumn;
    FProvince_Card: TcxGridDBCardViewRow;
    FProvince: TcxGridDBColumn;
    MData_Qry: TdxMemData;
    DS_MData_Qry: TDataSource;
    Act_FProvince: TAction;
    IsDel: TcxGridDBColumn;
    FTakeGBT_Quotation: TcxGridDBColumn;
    FTakeDesign_Quotation: TcxGridDBColumn;
    FTakeDemand_Quotation: TcxGridDBColumn;
    PM: TPopupMenu;
    N_Edit: TMenuItem;
    N_Filter: TMenuItem;
    N_Sort: TMenuItem;
    N_Group: TMenuItem;
    N_Set: TMenuItem;
    N_Out: TMenuItem;
    Act_Menu: TAction;
    Act_Menu_Set: TAction;
    FProductClass_Brow: TcxGridDBColumn;
    FSupplierWrite_Brow: TcxGridDBColumn;
    FSupplierWrite: TcxGridDBColumn;
    FProductClass: TcxGridDBColumn;
    FProductClass_Card: TcxGridDBCardViewRow;
    FSupplierWrite_Card: TcxGridDBCardViewRow;
    FApprovalStuffSortNumber: TcxGridDBColumn;
    cxGrid_ProductList_Brow: TcxGrid;
    cxGV_ProductList_Brow: TcxGridDBTableView;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGL_ProductList_Brow: TcxGridLevel;
    procedure FormResize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TB_EXITClick(Sender: TObject);
    procedure MyTreeViewChange(Sender: TObject; Node: TTreeNode);
    procedure MyTreeViewExpanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Act_AppExecute(Sender: TObject);
    procedure Act_EditExecute(Sender: TObject);
    procedure Act_DelExecute(Sender: TObject);
    procedure Act_RefExecute(Sender: TObject);
    procedure Act_SetOpenExecute(Sender: TObject);
    procedure Act_SetCloseExecute(Sender: TObject);
    procedure Act_OKExecute(Sender: TObject);
    procedure Act_CancelExecute(Sender: TObject);
    procedure FExpirationDate_CPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FSupplierEvaluation_CPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxGV_BrowDblClick(Sender: TObject);
    procedure cxGVCDblClick(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure Act_QuotationExecute(Sender: TObject);
    procedure cxGV_BrowFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure Act_MaxIDExecute(Sender: TObject);
    procedure Act_ProductListExecute(Sender: TObject);
    procedure Act_SupplierExecute(Sender: TObject);
    procedure FSupplierShortName_CardPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FProvince_CardPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure Act_FProvinceExecute(Sender: TObject);
    procedure cxGrid_BrowContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure cxGrid_QuotationContextPopup(Sender: TObject;
      MousePos: TPoint; var Handled: Boolean);
    procedure Act_MenuExecute(Sender: TObject);
    procedure Act_Menu_SetExecute(Sender: TObject);
    procedure N_EditClick(Sender: TObject);
    procedure N_FilterClick(Sender: TObject);
    procedure N_SortClick(Sender: TObject);
    procedure N_GroupClick(Sender: TObject);
    procedure N_SetClick(Sender: TObject);
    procedure N_OutClick(Sender: TObject);
    procedure cxGrid_ProductListContextPopup(Sender: TObject;
      MousePos: TPoint; var Handled: Boolean);
    procedure cxGrid_ProductList_BrowContextPopup(Sender: TObject;
      MousePos: TPoint; var Handled: Boolean);
  private
    ListItemFNumber:String;
    { Private declarations }
    function AddRd:bool;
    function AddMain:bool;
    function AddList:bool;
    function EditRd:bool;
    function EditListRd:bool;
    function EditItemRd:bool;
    function DelRd:bool;


  public
    P_state,P_Isleaf,P_MaxID:integer;
    { Public declarations }
  end;

var
  Frm_Supplier: TFrm_Supplier;


implementation

uses FRMDATA, COMMON, FrmSelect, ProgBar, PROGRASS;

{$R *.dfm}

function TFrm_Supplier.DelRd: bool;
var
 qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Delete from T_Supplier where FSupplierID=:FSupplierID';
    with qry.Parameters do
    begin
      FindParam('FSupplierID').value:=mdata['FSupplierID'];
    end;
    result:=qry.ExecSQL>=1;
  finally
    qry.Free;
  end;
end;

function TFrm_Supplier.AddMain: bool;
var
 qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  Act_MaxID.Execute;//取最大ID
 try
    qry.SQL.Text:='Insert into T_Supplier(FSupplierID,FSupplierName,FSupplierShortName,FProvince,FSupplierAddress,'
                 +'FAgentName,FAgentMobilePhone,FExpirationDate,FAgentCardNum,FAgentEmail,FAgentFax,'
                 +'FLeadName,FLeadPosition,FLeadMobilePhone,FLeadEmail,FLeadFax,FBusinessLicense,FTaxRegistration,'
                 +'FBankPermit,FOrganizationCode,FPowerAttorney,FSupplierEvaluation,FSupplierRemark,FDepartmentID,FProductClass,FSupplierWriteID)'
                 +'values(:FSupplierID,:FSupplierName,:FSupplierShortName,:FProvince,:FSupplierAddress,'
                 +':FAgentName,:FAgentMobilePhone,:FExpirationDate,:FAgentCardNum,:FAgentEmail,:FAgentFax,'
                 +':FLeadName,:FLeadPosition,:FLeadMobilePhone,:FLeadEmail,:FLeadFax,:FBusinessLicense,:FTaxRegistration,'
                 +':FBankPermit,:FOrganizationCode,:FPowerAttorney,:FSupplierEvaluation,:FSupplierRemark,:FDepartmentID,:FProductClass,FSupplierWriteID)';
    mData.First;
    while not mData.eof do
    begin
      If qry.Active then qry.Close;
      with qry.Parameters do
      begin
        FindParam('FSupplierID').value:=P_MaxID;
        FindParam('FSupplierName').value:=mdata['FSupplierName'];;
        FindParam('FSupplierShortName').value:=mdata['FSupplierShortName'];
        FindParam('FProvince').value:=mdata['FProvince'];
        FindParam('FSupplierAddress').value:=mdata['FSupplierAddress'];
        FindParam('FAgentName').value:=mdata['FAgentName'];
        FindParam('FAgentMobilePhone').value:=mdata['FAgentMobilePhone'];
        FindParam('FExpirationDate').value:=mdata['FExpirationDate'];
        FindParam('FAgentCardNum').value:=mdata['FAgentCardNum'];
        FindParam('FAgentEmail').value:=mdata['FAgentEmail'];
        FindParam('FAgentFax').value:=mdata['FAgentFax'];
        FindParam('FLeadName').value:=mdata['FLeadName'];
        FindParam('FLeadPosition').value:=mdata['FLeadPosition'];
        FindParam('FLeadMobilePhone').value:=mdata['FLeadMobilePhone'];
        FindParam('FLeadEmail').value:=mdata['FLeadEmail'];
        FindParam('FLeadFax').value:=mdata['FLeadFax'];
        FindParam('FBusinessLicense').value:=mdata['FBusinessLicense'];
        FindParam('FTaxRegistration').value:=mdata['FTaxRegistration'];
        FindParam('FBankPermit').value:=mdata['FBankPermit'];
        FindParam('FOrganizationCode').value:=mdata['FOrganizationCode'];
        FindParam('FPowerAttorney').value:=mdata['FPowerAttorney'];
        FindParam('FSupplierEvaluation').value:=mdata['FSupplierEvaluation'];
        FindParam('FSupplierRemark').value:=mdata['FSupplierRemark'];
        FindParam('FDepartmentID').value:=UserFDepartmentID;
        FindParam('FProductClass').value:=mdata['FProductClass'];
        FindParam('FSupplierWriteID').value:=UserNumID;
      end;
      result:=qry.ExecSQL>=1;
      if not result then
         break;
      mData.Next;
    end;
  finally
    ;
  end;
  mData.Edit;
  mData['FSupplierID']:=P_MaxID;
  mData.Post;
  qry.Free;
end;

function TFrm_Supplier.AddList: bool;
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
     qry.SQL.Text:='Insert into T_SupplierProductList(FApprovalStuffSortID,FSupplierID) '
                  +'values(:FApprovalStuffSortID,:FSupplierID)';
     mData_List.First;
     while not mData_List.eof do
     begin
       If (mData_List['IsApp']=True)  then
       begin
         If qry.Active then qry.Close;
         with qry.Parameters do
         begin
           qry.Parameters.FindParam('FApprovalStuffSortID').value:= mData_List['FApprovalStuffSortID'];
           If  P_state=0 then
               qry.Parameters.FindParam('FSupplierID').value:= P_MaxID;
           If  P_state=1 then
               qry.Parameters.FindParam('FSupplierID').value:= mData['FSupplierID'];
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


function TFrm_Supplier.AddRd: bool;
var
 qry:TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  result:=False;

  MData.Edit;
  MData.Post;

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
    Application.MessageBox('新增数据失败，请重试。', '保存错误', 0 or MB_ICONINFORMATION);
    mdlData.Conn.RollBackTrans;
  end;
end;

function TFrm_Supplier.EditRd: bool;
var
 qry:TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  result:=False;

  MData.Edit;
  MData.Post;

  mdata_List.Edit;
  mdata_List.Post;
  If mdata_List.RecordCount<=0 then
  begin
    result:=True;
    Exit;
  end;

  mdlData.conn.BeginTrans;
  try
    if EditItemRd then  //1   主表修改
    begin
      result:=True;
      if EditListRd then //2    明细表修改
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
    Application.MessageBox('修改数据失败，请重试。', '保存错误', 0 or MB_ICONINFORMATION);
    mdlData.Conn.RollBackTrans;
  end;
end;

function TFrm_Supplier.EditItemRd:bool;
var
  qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.EnableBCD:=False;//小数位数>4

    //result:=False;
  If mData.RecordCount<=0 then
  begin
    result:=True;
    Exit;
  end;

  mData.Edit;
  mData.Post;

  try
   qry.SQL.Text:='Update T_Supplier set FSupplierName=:FSupplierName,FSupplierShortName=:FSupplierShortName,FProvince=:FProvince,FSupplierAddress=:FSupplierAddress,'
                 +'FAgentName=:FAgentName,FAgentMobilePhone=:FAgentMobilePhone,FExpirationDate=:FExpirationDate,FAgentCardNum=:FAgentCardNum,'
                 +'FAgentEmail=:FAgentEmail,FAgentFax=:FAgentFax,FLeadName=:FLeadName,FLeadPosition=:FLeadPosition,FLeadMobilePhone=:FLeadMobilePhone,'
                 +'FLeadEmail=:FLeadEmail,FLeadFax=:FLeadFax,FBusinessLicense=:FBusinessLicense,FTaxRegistration=:FTaxRegistration,FBankPermit=:FBankPermit,'
                 +'FOrganizationCode=:FOrganizationCode,FPowerAttorney=:FPowerAttorney,FSupplierEvaluation=:FSupplierEvaluation,FSupplierRemark=:FSupplierRemark, '
                 +'FProductClass=:FProductClass,FSupplierWriteID=:FSupplierWriteID '
                 +'where FSupplierID=:FSupplierID';
     mData.First;
    while not mData.eof do
    begin
      If (mData['FSupplierName']<>'') and (mData['FSupplierName']<>'')  then
      begin
        If qry.Active then qry.Close;
        with qry.Parameters do
        begin
          FindParam('FSupplierName').value:=mdata['FSupplierName'];;
          FindParam('FSupplierShortName').value:=mdata['FSupplierShortName'];
          FindParam('FProvince').value:=mdata['FProvince'];
          FindParam('FSupplierAddress').value:=mdata['FSupplierAddress'];
          FindParam('FAgentName').value:=mdata['FAgentName'];
          FindParam('FAgentMobilePhone').value:=mdata['FAgentMobilePhone'];
          FindParam('FExpirationDate').value:=mdata['FExpirationDate'];
          FindParam('FAgentCardNum').value:=mdata['FAgentCardNum'];
          FindParam('FAgentEmail').value:=mdata['FAgentEmail'];
          FindParam('FAgentFax').value:=mdata['FAgentFax'];
          FindParam('FLeadName').value:=mdata['FLeadName'];
          FindParam('FLeadPosition').value:=mdata['FLeadPosition'];
          FindParam('FLeadMobilePhone').value:=mdata['FLeadMobilePhone'];
          FindParam('FLeadEmail').value:=mdata['FLeadEmail'];
          FindParam('FLeadFax').value:=mdata['FLeadFax'];
          FindParam('FBusinessLicense').value:=mdata['FBusinessLicense'];
          FindParam('FTaxRegistration').value:=mdata['FTaxRegistration'];
          FindParam('FBankPermit').value:=mdata['FBankPermit'];
          FindParam('FOrganizationCode').value:=mdata['FOrganizationCode'];
          FindParam('FPowerAttorney').value:=mdata['FPowerAttorney'];
          FindParam('FSupplierEvaluation').value:=mdata['FSupplierEvaluation'];
          FindParam('FSupplierRemark').value:=mdata['FSupplierRemark'];
          FindParam('FProductClass').value:=mdata['FProductClass'];
          FindParam('FSupplierWriteID').value:=UserNumID;
          FindParam('FSupplierID').value:=mdata['FSupplierID'];
        end;
        result:=qry.ExecSQL>=1;
        if not result then break;

      end;
      mData.Next;
    end;
  finally
    ;
  end;
  qry.Free;

end;

function TFrm_Supplier.EditListRd:bool;
var
 qry,qry1:TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry1:=TADOQuery.Create(Self);
  qry1.ConnectionString:=mdlData.ReadConnStr;

  result:=True;

  If mData_List.RecordCount<=0 then
  begin
    result:=True;
    Exit;
  end;

  mData_List.Edit;
  mData_List.Post;

  mData_List.First;
  while not mData_List.eof do
  begin
    //新增
    If mData_List['IsApp'] and not mData_List['IsDel'] then
    begin
      try
        qry.SQL.Text:='Insert into T_SupplierProductList(FApprovalStuffSortId,FSupplierID)'
                    +'values (:FApprovalStuffSortId,:FSupplierID)';
        qry.Parameters.FindParam('FApprovalStuffSortId').value:=mData_List['FApprovalStuffSortId'];
        qry.Parameters.FindParam('FSupplierID').value:=mData['FSupplierID'];
        result:=qry.ExecSQL>=1;
        if not result then break;
      finally
        ;
      end;
    end;
     //删除
    If not mData_List['IsApp'] and mData_List['IsDel'] then
    begin
      try
        qry.SQL.Text:='Delete from T_SupplierProductList  where FSupplierID=:FSupplierID and FApprovalStuffSortId=:FApprovalStuffSortId ';
        qry.Parameters.FindParam('FSupplierID').value:=mData['FSupplierID'];
        qry.Parameters.FindParam('FApprovalStuffSortId').value:=mData_List['FApprovalStuffSortId'];
        result:=qry.ExecSQL>=1;
        if not result then break;
      finally
          ;
      end;
    end;
    If mData_List['IsApp']=mData_List['IsDel'] then
       result:=True;

    mData_List.Next;
  end;
  qry.Free;

end;
procedure TFrm_Supplier.FormResize(Sender: TObject);
begin
  inherited;
  L_title.Caption:=UserFDepartmentName+'供应商信息';
  Self.Caption:=UserFDepartmentName+'供应商信息';
end;

procedure TFrm_Supplier.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=CaFree;
  Frm_Supplier:=nil;
end;

procedure TFrm_Supplier.TB_EXITClick(Sender: TObject);
begin
  inherited;
  Self.Close;
end;

procedure TFrm_Supplier.MyTreeViewChange(Sender: TObject; Node: TTreeNode);
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
    If not MyItemList(qry,Mdata_Brow,'V_Supplier','FFullNumber',ListItemFNumber,'FFullNumber') then
    begin
      Mdata_Brow.Open;
    end;
    If not MyItemList(qry,Mdata,'V_Supplier','FFullNumber',ListItemFNumber,'FFullNumber') then
    begin
      mdata.Open;
    end;
    If P_Isleaf=1 then
    begin
      Act_Edit.Visible:= mdlData.CheckFrmRights(TFrm_Supplier.ClassName,'修改');
      Act_Del.Visible:=mdlData.CheckFrmRights(TFrm_Supplier.ClassName,'删除');
    end
    else
    begin
      Act_Edit.Visible:=False;
      Act_Del.Visible:=False;
    end;
  end;
end;

procedure TFrm_Supplier.MyTreeViewExpanding(Sender: TObject;
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

  qry.SQL.Text:='Select FNumber,FParentNumber,FName,'
               +'Isleaf from VT_Supplier with(nolock) where FParentNumber= '''
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
    P.Flag := cNoLoadFlag;                         // 新节点，未加载标志
    with MyTreeView.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('Isleaf').value;
    end;
    qry.Next;
  end;
end;

procedure TFrm_Supplier.FormCreate(Sender: TObject);
var AFirstColumnStyle: TcxStyle;
begin
  inherited;
   P_state:=2;
  //列颜色
  AFirstColumnStyle := TcxStyle.Create(Self);
  AFirstColumnStyle.Color := clAqua;
  AFirstColumnStyle.TextColor := clBlue;

  TS_Brow.TabVisible:=True;
  TS_Edit.TabVisible:=False;
  TS_CheckRights.ActivePage:=TS_Brow;

  cxGV.Columns[0].Styles.Content := AFirstColumnStyle;
  cxGV.Columns[1].Styles.Content := AFirstColumnStyle;

  Act_App.Visible:= mdlData.CheckFrmRights(TFrm_Supplier.ClassName,'新增');
  Act_Prin.Visible:= mdlData.CheckFrmRights(TFrm_Supplier.ClassName,'打印');
  Act_Out.Visible:= mdlData.CheckFrmRights(TFrm_Supplier.ClassName,'打印');
end;

procedure TFrm_Supplier.FormShow(Sender: TObject);
begin
  TB_Ref.Click;
end;

procedure TFrm_Supplier.Act_AppExecute(Sender: TObject);
var
 qry:TADOquery;
begin
  P_state:=0;
  L_title.Caption:=UserFDepartmentName+'供应商信息新增';
  Act_SetOpen.Execute;

  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Select a.FApprovalStuffSortID,a.FApprovalStuffSort,isnull(FsupplierID,0) as FsupplierID, '
                 +'case isnull(b.FApprovalStuffSortID,0) when 0 then cast(0 as bit) else cast(1 as bit) end as IsSel, '
                 +'case isnull(b.FApprovalStuffSortID,0) when 0 then cast(0 as bit) else cast(1 as bit) end as IsDel, '
                 +'case isnull(b.FApprovalStuffSortID,0) when 0 then cast(0 as bit) else cast(1 as bit) end as IsApp '
                 +' from T_ApprovalStuffSort as a left outer join (select * from V_SupplierProductList where FsupplierID=:FsupplierID) as b '
                 +' on a.FApprovalStuffSortID=b.FApprovalStuffSortID where a.FisLeaf=1 order by a.FApprovalStuffSortNumber';
    qry.Parameters.FindParam('FsupplierID').value:=0;
    qry.Open;
  finally
     ;
  end;
  mData_List.CopyFromDataSet(qry);
  mData_List.Active:=True;

  try
    qry.SQL.Text:='Select * from V_Supplier with(nolock) where FSupplierID=0';
    qry.Open;
  finally
     ;
  end;
  mdata.CopyFromDataSet(qry);
  mdata.Active:=True;
  mdata.Edit;
  mdata.Append;
  mdata.post;
  If mdata['FProvince']=Null then
  begin
    mdata.Edit;
    mdata['FProvince']:='';
    mdata.Post;
  end;
  If mdata['FLeadEmail']=Null then
  begin
    mdata.Edit;
    mdata['FLeadEmail']:=False;
    mdata.Post;
  end;
  If mdata['FLeadFax']=Null then
  begin
    mdata.Edit;
    mdata['FLeadFax']:=False;
    mdata.Post;
  end;

  If mdata['FExpirationDate']=Null then
  begin
    mdata.Edit;
    mdata['FExpirationDate']:='';
    mdata.Post;
  end;
  If mdata['FBusinessLicense']=Null then
  begin
    mdata.Edit;
    mdata['FBusinessLicense']:=False;
    mdata.Post;
  end;
  If mdata['FTaxRegistration']=Null then
  begin
    mdata.Edit;
    mdata['FTaxRegistration']:=False;
    mdata.Post;
  end;
  If mdata['FBankPermit']=Null then
  begin
    mdata.Edit;
    mdata['FBankPermit']:=False;
    mdata.Post;
  end;
  If mdata['FOrganizationCode']=Null then
  begin
    mdata.Edit;
    mdata['FOrganizationCode']:=False;
    mdata.Post;
  end;
  If mdata['FPowerAttorney']=Null then
  begin
    mdata.Edit;
    mdata['FPowerAttorney']:=False;
    mdata.Post;
  end;
end;

procedure TFrm_Supplier.Act_EditExecute(Sender: TObject);
begin
  inherited;
  P_state :=1;
  Act_Supplier.Execute;
  Act_ProductList.Execute;
  Act_SetOpen.Execute;
  L_title.Caption:=UserFDepartmentName+'供应商信息修改';
end;

procedure TFrm_Supplier.Act_DelExecute(Sender: TObject);
var
  qry:TADOQuery;

begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  try
    qry.SQL.Text:='Select * from T_QuotationItem where FSupplierID=:FSupplierID';
    qry.Parameters.FindParam('FSupplierID').Value:=mdata['FSupplierID'];
    qry.Open;
  finally
     ;
  end;
  if qry.RecordCount>0 then
  begin
    application.MessageBox(Pchar('供应商【'+Trim(Mdata['FSupplierName'])+'】已启用不允许删除！'),'系统提示',MB_ICONINFORMATION);
    Exit;
  end;

  If application.MessageBox(Pchar('警告：是否删除供应商名称为：【'+Trim(Mdata['FSupplierName'])+'】的数据？'+chr(13)+chr(13)
                           +'删除数据操作将不可恢复，确定要删除本数据吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
  If application.MessageBox(Pchar('警告：是否删除供应商名称为：【'+Trim(Mdata['FSupplierName'])+'】的数据？'+chr(13)+chr(13)
                           +'删除数据操作将不可恢复，确定要删除本数据吗？'),'再次警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then

  begin
    //单据删除
    If not DelRd then
    begin
      application.MessageBox('删除单据失败！','系统提示',MB_ICONINFORMATION);
      mdlData.conn.RollbackTrans;
      Exit;
    end;
  end;
  mdata.Close;
  qry.Free;
  TB_ref.Click;

end;

procedure TFrm_Supplier.Act_RefExecute(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If not TreeVeiwListWhere(qry,MyTreeView,'VT_Supplier',' and FDepartmentID='+IntToStr(UserFDepartmentID) ) then
  begin
    Application.MessageBox(PChar('树型结构显示错误，请联系开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;
end;

procedure TFrm_Supplier.Act_SetOpenExecute(Sender: TObject);
begin
  inherited;
  Act_Ref.Visible:=False;
  Act_App.Visible:=False;
  Act_Edit.Visible:=False;
  Act_Del.Visible:=False;
  MyTreeView.Enabled:=False;

  TS_Brow.TabVisible:=False;
  TS_Edit.TabVisible:=True;
  TS_CheckRights.ActivePage:=TS_Edit;

  Panel_OK.Visible:=True;
  cxGV.OptionsData.Editing:=True;
  cxGVC.OptionsData.Editing:=True;
  cxGV_ProductList.OptionsData.Editing:=True;

  FSupplierName_Card.Options.Editing:=True;
  FSupplierShortName_Card.Options.Editing:=True;
  FProvince_Card.Options.Editing:=True;
  isApp.Options.Editing:=True;
  //Act_FProvince.Execute;

end;

procedure TFrm_Supplier.Act_SetCloseExecute(Sender: TObject);
begin
  inherited;
  Act_Ref.Visible:=True;
  Act_App.Visible:=True;
  Act_Edit.Visible:=True;
  Act_Del.Visible:=True;
  MyTreeView.Enabled:=True;
  Panel_OK.Visible:=False;
  cxGV.OptionsData.Editing:=False;
  cxGV_ProductList.OptionsData.Editing:=False;

  TS_Brow.TabVisible:=True;
  TS_Edit.TabVisible:=False;
  TS_CheckRights.ActivePage:=TS_Brow;

  P_state:=2;
 // cxGVC.OptionsData.Editing:=False;
end;

procedure TFrm_Supplier.Act_OKExecute(Sender: TObject);
var qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.EnableBCD:=False;//小数位数>4

  mData.Edit;
  mData.Post;

  If (mData['FSupplierName']='')  then
  begin
    application.MessageBox('关键字不能为空！请重新输入','系统提示',MB_ICONERROR);
    Exit;
  end;

  If P_state =0 then
  begin
    try
      qry.SQL.Text:='Select * from V_Supplier where FDepartmentID=:FDepartmentID '
                   +' and FSupplierName=:FSupplierName';
      qry.Parameters.FindParam('FDepartmentID').Value:=UserFDepartmentID;
      qry.Parameters.FindParam('FSupplierName').Value:=mdata['FSupplierName'];
      qry.Open;
      If qry.RecordCount>0 then
      begin
         application.MessageBox('用户名称重复！请重新输入','系统提示',MB_ICONERROR);
         Exit;
      end;
    finally
       ;
    end;
  end;

  If P_state=0 then
  begin
    If application.MessageBox('是否要保存添加的数据？','提示',MB_ICONINFORMATION+MB_YESNO)<>6 then
       Exit;
    If AddRd then //增加数据
    begin
      If application.MessageBox('录入数据已保存,还要继续录入吗？','提示',MB_ICONINFORMATION+MB_YESNO)=6 then
      begin
        TB_App.Click ;
      end
      else
      begin
        inherited;
        CancelBtn.Click;
      end;
    end;
  end;

  If P_state=1 then //修改数据
  begin
    If application.MessageBox('是否要保存所作修改？','提示',MB_ICONINFORMATION+MB_YESNO)<>6 then
       Exit;
    If EditRd then   //修改数据
    begin
      application.MessageBox('修改记录已保存','系统提示',MB_ICONINFORMATION);
      inherited;
    end
    else
      application.MessageBox('修改记录保存失败！','系统提示',MB_ICONWARNING);
    CancelBtn.Click;
  end;
  qry.Free;

end;

procedure TFrm_Supplier.Act_CancelExecute(Sender: TObject);
begin
  inherited;
  L_title.Caption:=UserFDepartmentName+'供应商信息';
  Act_SetClose.Execute;
end;

procedure TFrm_Supplier.FExpirationDate_CPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='select distinct FExpirationDate from V_Supplier where FDepartmentID=:FDepartmentID '
                 +' and FExpirationDate like :FExpirationDate order by FExpirationDate ';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Parameters.FindParam('FExpirationDate').value:='%'+mdata['FExpirationDate']+'%';
    qry.Open;
  finally
   ;
  end;
  selValue:=select('选择授权期限','FExpirationDate','FExpirationDate','FExpirationDate','FExpirationDate',qry);
  If (Length(selValue)>0) then
  begin
    mdata.Edit;
    mdata['FExpirationDate']:=qry.FieldByName('FExpirationDate').Value;
    //mdata.Post;
  end;
end;

procedure TFrm_Supplier.FSupplierEvaluation_CPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='select distinct FSupplierEvaluation from V_Supplier where FDepartmentID=:FDepartmentID '
                 +' and FSupplierEvaluation like :FSupplierEvaluation order by FSupplierEvaluation ';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Parameters.FindParam('FSupplierEvaluation').value:='%'+mdata['FSupplierEvaluation']+'%';
    qry.Open;
  finally
   ;
  end;
  selValue:=select('选择供应商评价','FSupplierEvaluation','FSupplierEvaluation','FSupplierEvaluation','FSupplierEvaluation',qry);
  If (Length(selValue)>0) then
  begin
    mdata.Edit;
    mdata['FSupplierEvaluation']:=qry.FieldByName('FSupplierEvaluation').Value;
   // mdata.Post;
  end;
end;

procedure TFrm_Supplier.cxGV_BrowDblClick(Sender: TObject);

begin
  Act_Supplier.Execute;
  Act_ProductList.Execute;
//  Act_FProvince.Execute;
end;

procedure TFrm_Supplier.cxGVCDblClick(Sender: TObject);
begin
  inherited;
  If P_state=2 then
  begin
    TS_Brow.TabVisible:=True;
    TS_Edit.TabVisible:=False;
    TS_CheckRights.ActivePage:=TS_Brow;
  end;
end;

procedure TFrm_Supplier.ToolButton2Click(Sender: TObject);
begin
  inherited;
  cxGV.OptionsData.Editing:=True;
  cxGVC.OptionsData.Editing:=True;
end;

procedure TFrm_Supplier.ToolButton3Click(Sender: TObject);
begin
  inherited;
  cxGV.OptionsData.Editing:=False;
  cxGVC.OptionsData.Editing:=False;
end;

procedure TFrm_Supplier.Act_QuotationExecute(Sender: TObject);
var  qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='select * from V_QuotationList with(nolock) where FSupplierID=:FSupplierID ';
    qry.Parameters.FindParam('FSupplierID').value:=MData_Brow['FSupplierID'];
    qry.Open;
  finally
   ;
  end;
  MData_Quotation.CopyFromDataSet(qry);
  MData_Quotation.Active:=True;
end;

procedure TFrm_Supplier.cxGV_BrowFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
var qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  If  (P_state=2) and (Mdata_Brow['FSupplierID']<>0) and (Mdata_Brow['FSupplierID']<>Null)then
  begin
     Act_Edit.Visible:= mdlData.CheckFrmRights(TFrm_Supplier.ClassName,'修改');
     If MyItemListID(qry,mData_List,'V_SupplierProductList',' FSupplierID='+IntToStr(mData_Brow['FSupplierID']),'FApprovalStuffSortNumber',) then

    // Act_ProductList.Execute;
     Act_Quotation.Execute;
  end;
end;

procedure TFrm_Supplier.Act_MaxIDExecute(Sender: TObject);
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
      value:='T_Supplier';
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

procedure TFrm_Supplier.Act_ProductListExecute(Sender: TObject);
var
   qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  try
   // qry.SQL.Text:='Select b.FApprovalStuffSortID,a.FApprovalStuffSortID,a.FApprovalStuffSort,isnull(FsupplierID,0) as FsupplierID, '
    qry.SQL.Text:='Select a.FApprovalStuffSortID,a.FApprovalStuffSortNumber,a.FApprovalStuffSort,isnull(FsupplierID,0) as FsupplierID, '
                 +'case isnull(b.FApprovalStuffSortID,0) when 0 then cast(0 as bit) else cast(1 as bit) end as IsSel, '
                 +'case isnull(b.FApprovalStuffSortID,0) when 0 then cast(0 as bit) else cast(1 as bit) end as IsDel, '
                 +'case isnull(b.FApprovalStuffSortID,0) when 0 then cast(0 as bit) else cast(1 as bit) end as IsApp '
                 +' from T_ApprovalStuffSort as a left outer join (select * from T_SupplierProductList where FsupplierID=:FsupplierID) as b '
                 +' on a.FApprovalStuffSortID=b.FApprovalStuffSortID where a.FisLeaf=1 order by FApprovalStuffSortNumber';
    qry.Parameters.FindParam('FsupplierID').value:=MData_Brow['FSupplierID'];
    qry.Open;
  finally
     ;
  end;
 // If qry.RecordCount>0 then
  begin
    mdata_List.CopyFromDataSet(qry);
    mdata_List.Active:=True;
    mdata_List.Edit;
    mdata_List.post;
  end;
end;

procedure TFrm_Supplier.Act_SupplierExecute(Sender: TObject);
var  qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  TS_Brow.TabVisible:=False;
  TS_Edit.TabVisible:=True;
  TS_CheckRights.ActivePage:=TS_Edit;
  try
    qry.SQL.Text:='select * from V_Supplier with(nolock) where FSupplierID=:FSupplierID ';
    qry.Parameters.FindParam('FSupplierID').value:=MData_Brow['FSupplierID'];
    qry.Open;
  finally
   ;
  end;
  MData.CopyFromDataSet(qry);
  MData.Active:=True;
end;

procedure TFrm_Supplier.FSupplierShortName_CardPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  MData.Edit;
  MData['FSupplierShortName']:=MData['FSupplierName'];
end;

procedure TFrm_Supplier.FProvince_CardPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='select distinct FProvince from V_Supplier where FDepartmentID=:FDepartmentID '
                 +' and FProvince like :FProvince order by FProvince ';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Parameters.FindParam('FProvince').value:='%'+mdata['FProvince']+'%';
    qry.Open;
  finally
   ;
  end;
  selValue:=select('选择所属省份','FProvince','FProvince','FProvince','FProvince',qry);
  If (Length(selValue)>0) then
  begin
    mdata.Edit;
    mdata['FProvince']:=qry.FieldByName('FProvince').Value;
   // mdata.Post;
  end;

end;

procedure TFrm_Supplier.Act_FProvinceExecute(Sender: TObject);
var qry: TADOQuery;
begin
  inherited;
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='select distinct FProvince from T_Supplier order by FProvince ';
    qry.Open;
  finally
   ;
  end;
//  (FProvince.Properties as TcxComboBoxProperties).Items.Clear;
//  (FProvince_Brow.Properties as TcxComboBoxProperties).Items.Clear;
  (FProvince_Card.Properties as TcxComboBoxProperties).Items.Clear;
  qry.First;
  while not qry.Eof do
  begin
    if length(trim(qry.fieldbyname('FProvince').AsString))<>0 then
    begin
      // (FProvince.Properties as TcxComboBoxProperties).Items.Add(qry.fieldbyname('FProvince').AsString);
      // (FProvince_Brow.Properties as TcxComboBoxProperties).Items.Add(qry.fieldbyname('FProvince').AsString);
       (FProvince_Card.Properties as TcxComboBoxProperties).Items.Add(qry.fieldbyname('FProvince').AsString);
    end;
    qry.Next;
  end;
end;

procedure TFrm_Supplier.cxGrid_BrowContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV_Brow';
  Gm:='mdata_Brow';
  Gr:='cxGrid_Brow';
  Act_Menu_Set.Execute;
end;

procedure TFrm_Supplier.cxGrid_QuotationContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV_Quotation';
  Gm:='mdata_Quotation';
  Gr:='cxGrid_Quotation';
  Act_Menu_Set.Execute;
end;

procedure TFrm_Supplier.Act_MenuExecute(Sender: TObject);
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

procedure TFrm_Supplier.Act_Menu_SetExecute(Sender: TObject);
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

procedure TFrm_Supplier.N_EditClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_Supplier.N_FilterClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_Supplier.N_SortClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_Supplier.N_GroupClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_Supplier.N_SetClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_Supplier.N_OutClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_Supplier.cxGrid_ProductListContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV_ProductList';
  Gm:='mdata_ProductList';
  Gr:='cxGrid_ProductList';
  Act_Menu_Set.Execute;
end;

procedure TFrm_Supplier.cxGrid_ProductList_BrowContextPopup(
  Sender: TObject; MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV_ProductList_Brow';
  Gm:='mdata_ProductList_Brow';
  Gr:='cxGrid_ProductList_Brow';
  Act_Menu_Set.Execute;
end;

end.
