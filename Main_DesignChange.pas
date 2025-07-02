unit Main_DesignChange;

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
  ActnList, RzLabel, cxButtons, cxTimeEdit, jpeg,
  cxCheckComboBox, cxGridBandedTableView, cxGridDBBandedTableView, DBTables, Menus;

type
  TFrm_DesignChange = class(TFrm_GridBass)
    ImageList: TImageList;
    frReport: TfrReport;
    frDBDataSet: TfrDBDataSet;
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
    Act_Set_Open: TAction;
    Act_Set_Close: TAction;
    Act_Ref: TAction;
    PM: TPopupMenu;
    N_Edit: TMenuItem;
    N_Filter: TMenuItem;
    N_Sort: TMenuItem;
    N_Group: TMenuItem;
    N_Set: TMenuItem;
    N_Out: TMenuItem;
    Act_Menu: TAction;
    Act_Menu_Set: TAction;
    MData_PTItem: TdxMemData;
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
    DS_Mdata_PTItem: TDataSource;
    DS_Mdata_PTList: TDataSource;
    MData_PTList: TdxMemData;
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
    PopupMenu1: TPopupMenu;
    Act_MaxID: TAction;
    Act_Accept: TAction;
    RSP_CList: TRzSizePanel;
    MyTreeView_PTItem: TTreeView;
    PC_Change: TPageControl;
    TS_ChangeNum: TTabSheet;
    TS_Item: TTabSheet;
    PanelBkGnd: TPanel;
    Panel7: TPanel;
    Image2: TImage;
    Label1: TLabel;
    Label9: TLabel;
    ToolBar_HItem: TToolBar;
    TB_Ref: TToolButton;
    TB_App: TToolButton;
    TB_Edit_M: TToolButton;
    TB_Del: TToolButton;
    TB_Submit: TToolButton;
    TB_Accept: TToolButton;
    TB_Prin: TToolButton;
    TB_Exit: TToolButton;
    E_FClientFullName: TcxTextEdit;
    RzSizePanel2: TRzSizePanel;
    RzSP_PTitem: TRzSizePanel;
    cxGrid_PTItem: TcxGrid;
    cxGV_PTItem: TcxGridDBTableView;
    FDesignChangeNum_PTItem: TcxGridDBColumn;
    FDesignChangeDate_PTItem: TcxGridDBColumn;
    FItemNumber_PTItem: TcxGridDBColumn;
    FClientShortName_PTItem: TcxGridDBColumn;
    FDesignChangeContent_PTItem: TcxGridDBColumn;
    FDesignChangeReceiptDate_PTItem: TcxGridDBColumn;
    FDesignChangeQry_PTItem: TcxGridDBColumn;
    FDesignkChangeWriteDate_PTItem: TcxGridDBColumn;
    FDesignChangeStatus_PTItem: TcxGridDBColumn;
    FDesignChangeWrite_PTItem: TcxGridDBColumn;
    FClientFullName_PTItem: TcxGridDBColumn;
    FProductName_PTItem: TcxGridDBColumn;
    FItemModel_PTItem: TcxGridDBColumn;
    FItemID_PTItem: TcxGridDBColumn;
    FProductID_PTItem: TcxGridDBColumn;
    FDesignChangeWriteID_PTItem: TcxGridDBColumn;
    FDesignChangeSubmitDate_PTItem: TcxGridDBColumn;
    FDesignChangeID_PTItem: TcxGridDBColumn;
    FDesignChangeCheck_PTItem: TcxGridDBColumn;
    cxGV_PTItemDBColumn3: TcxGridDBColumn;
    cxGL_PTItem: TcxGridLevel;
    PC_Tack: TRzPageControl;
    Panel1: TPanel;
    P_Btn: TPanel;
    CancelBtn: TcxButton;
    OKBtn: TcxButton;
    cxGrid_PTList: TcxGrid;
    cxGV_PTList: TcxGridDBTableView;
    FPartsNumber_PTList: TcxGridDBColumn;
    FPartsName_PTList: TcxGridDBColumn;
    FDesignChangeCause_PTList: TcxGridDBColumn;
    FItemListID_PTList: TcxGridDBColumn;
    FDesignChangeListID_PTList: TcxGridDBColumn;
    cxGL_PTList: TcxGridLevel;
    FDEsignChangeUser_PTItem: TcxGridDBColumn;
    FDesignChangeRemark_PTList: TcxGridDBColumn;
    procedure FormResize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TB_EXITClick(Sender: TObject);
    procedure TB_AppClick(Sender: TObject);
    procedure TB_DelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure MyTreeView_PTItemExpanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure MyTreeView_PTItemChange(Sender: TObject; Node: TTreeNode);
    procedure FormShow(Sender: TObject);
    procedure OKBtnClick(Sender: TObject);
    procedure TB_Edit_MClick(Sender: TObject);
    procedure CancelBtnClick(Sender: TObject);
    procedure PC_CheckChange(Sender: TObject);
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
    procedure Act_SubmitExecute(Sender: TObject);
    procedure cxGrid_PTItemContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure cxGrid_PTListContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure cxGV_PTItemFocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure FPlanWeekPartsName_PTListPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure Act_AcceptExecute(Sender: TObject);
    procedure Act_RefExecute(Sender: TObject);
    procedure PC_WeekChange(Sender: TObject);
    procedure FItemNumber_PTItemPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FPartsNumber_PTListPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FDesignChangeCause_PTListPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure PC_ChangeChange(Sender: TObject);
    procedure FDEsignChangeUser_PTItemPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
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
    P_state,P_PackNo,P_MaxID,P_Status:Integer;
    ListFNumber_PTItem,ListFNumber_PTList:string;
    P_Isleaf_PTList :Integer;
    P_List_PTList:string;
    GV,Gr,Gm,Mn:string;
    AFirstColumnStyle: TcxStyle;
    P_Wet:string; 
    { Public declarations }
  end;

var
  Frm_DesignChange: TFrm_DesignChange;


implementation

uses FRMDATA,  COMMON, FrmSelect, ProgBar, PROGRASS, Main_Ship;

{$R *.dfm}


function TFrm_DesignChange.DelRd: bool;
var
 qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Delete from T_DesignChange where FDesignChangeID=:FDesignChangeID';
    qry.Parameters.FindParam('FDesignChangeID').value:=MData_PTItem['FDesignChangeID'];
    result:=qry.ExecSQL>=0;
  finally
    ;
  end;
  qry.Free;
end;


function TFrm_DesignChange.AddMain: bool;
var
 qry,qryDate: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qryDate:=TAdoQuery.Create(self);
  qryDate.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Insert into T_DesignChange(FDesignChangeID,FDesignChangeNum,FDesignChangeDate,FItemID,'
                 +'FDesignChangeContent,FDesignChangeReceiptDate,FDesignChangeQry,FDEsignChangeUser,'
                 +'FDesignChangeStatus,FDesignChangeWriteID,FDesignkChangeWriteDate,FDepartmentID) '
                 +'values(:FDesignChangeID,:FDesignChangeNum,:FDesignChangeDate,:FItemID,'
                 +':FDesignChangeContent,:FDesignChangeReceiptDate,:FDesignChangeQry,:FDEsignChangeUser,'
                 +':FDesignChangeStatus,:FDesignChangeWriteID,:FDesignkChangeWriteDate,:FDepartmentID)';
    with qry.Parameters do
    begin
      FindParam('FDesignChangeID').value:=P_MaxID;
      FindParam('FDesignChangeNum').value:=Trim(mData_PTItem['FDesignChangeNum']);
      FindParam('FDesignChangeDate').value:=mData_PTItem['FDesignChangeDate'];
      FindParam('FItemID').value:=mData_PTItem['FItemID'];
      FindParam('FDesignChangeContent').value:=mData_PTItem['FDesignChangeContent'];
      FindParam('FDesignChangeReceiptDate').value:=mData_PTItem['FDesignChangeDate'];
    //  FindParam('FDesignChangeReceiptDate').value:=mData_PTItem['FDesignChangeReceiptDate'];

      FindParam('FDesignChangeQry').value:=mData_PTItem['FDesignChangeQry'];
      FindParam('FDEsignChangeUser').value:=mData_PTItem['FDEsignChangeUser'];

      FindParam('FDesignChangeStatus').value:=0;
      FindParam('FDesignChangeWriteID').value:=UserNumID;
      FindParam('FDesignkChangeWriteDate').value:=S_SyStemDate(qryDate);
      FindParam('FDepartmentID').value:=UserFDepartmentID;
    end;
    result:=qry.ExecSQL>=1;
  finally
     ;
  end;
  Mdata_PTItem.Edit;
  Mdata_PTItem['FDesignChangeID']:=P_MaxID;
  Mdata_PTItem.Post;
  qry.Free;
end;

function TFrm_DesignChange.AddList: bool;
var
  qry: TADOQuery;
  i:Integer;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  result:=False;

  If mData_PTList.RecordCount<=0 then
  begin
    result:=True;
    Exit;
  end;
  try
     qry.SQL.Text:='Insert into T_DesignChangeList(FDesignChangeID,FItemListID,FDesignChangeCause,FDesignChangeRemark ) '
                  +'values(:FDesignChangeID,:FItemListID,:FDesignChangeCause,:FDesignChangeRemark)';
     mData_PTList.First;
     while not mData_PTList.eof do
     begin
       If (mData_PTList['FItemListID']<>0) and (mData_PTList['FItemListID']<>Null) then
       begin
         If qry.Active then qry.Close;
         with qry.Parameters do
         begin
           qry.Parameters.FindParam('FDesignChangeID').value:= P_MaxID;
           qry.Parameters.FindParam('FItemListID').value:= mData_PTList['FItemListID'];
           qry.Parameters.FindParam('FDesignChangeCause').value:= mData_PTList['FDesignChangeCause'];
           qry.Parameters.FindParam('FDesignChangeRemark').value:= mData_PTList['FDesignChangeRemark'];
         end;
         result:=qry.ExecSQL>=1;
         if not result then break;
       end;
       mData_PTList.Next;
     end;
   finally
     qry.Free;
   end;
end;


function TFrm_DesignChange.AddRd: bool;
var
 qry:TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  result:=False;

  MData_PTItem.Edit;
  MData_PTItem.Post;

  mdata_PTList.Edit;
  mdata_PTList.Post;
  If mdata_PTList.RecordCount<=0 then
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


function TFrm_DesignChange.EditRd:bool;
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



procedure TFrm_DesignChange.FormResize(Sender: TObject);
begin
  inherited;
  Self.Caption:=UserFDepartmentName+'��Ʊ��֪ͨ��';
end;

procedure TFrm_DesignChange.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=cafree;
  Frm_DesignChange:=nil;
end;

procedure TFrm_DesignChange.TB_EXITClick(Sender: TObject);
begin
  inherited;
  Self.Close;
end;

procedure TFrm_DesignChange.TB_AppClick(Sender: TObject);
Var qry: TADOQuery;
    i,j:Integer;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  P_state :=0; //����

  mdata_PTItem.Close;
  If (mdata_PTItem.RecordCount>1) or (mdata_PTItem.RecordCount=0) then
  begin
    try
      qry.SQL.Text:='select * from V_DesignChange with(nolock) where FDesignChangeID=0';
      qry.Open;
    finally
       ;
    end;
    mdata_PTItem.CopyFromDataSet(qry);
    mdata_PTItem.Active:=True;
    mdata_PTItem.Append;
    mdata_PTItem.Edit;
    mdata_PTItem['FDesignChangeQry']:=1;
    mdata_PTList.Close;
  end;
  Act_Set_Open.Execute;

end;

procedure TFrm_DesignChange.TB_DelClick(Sender: TObject);
var
  qry:TADOQuery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  If application.MessageBox(Pchar('���棺�Ƿ�ɾ��'+P_List_PTList+'����Ƹĸ���Ϣ��'+chr(13)+chr(13)
                                 +'ɾ�����ݲ��������ɻָ���ȷ��Ҫɾ����'),'������ʾ',MB_ICONINFORMATION+MB_YESNO)=6 then
  If application.MessageBox(Pchar('�ٴξ��棺�Ƿ�ɾ����'+P_List_PTList+'����Ƹĸ���Ϣ��'+chr(13)+chr(13)
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
  mdata_PTItem.Close;
  mdata_PTList.Close;
  qry.Free;

end;

procedure TFrm_DesignChange.FormCreate(Sender: TObject);
begin
  inherited;
  TB_App.Visible:= mdlData.PermissionCheckRights(TFrm_DesignChange.ClassName,'����');
  P_state:=2;
end;

procedure TFrm_DesignChange.MyTreeView_PTItemExpanding(Sender: TObject;
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

  If PC_Change.ActivePage=TS_Item then
     qry.SQL.Text:='Select * from VT_DesignChange with(nolock) where FParentNumber= '''
                  +PTree(Node.Data).ID+''' order by FNumber';
  If PC_Change.ActivePage=TS_ChangeNum then
     qry.SQL.Text:='Select * from VT_DesignChange_ChangeNum with(nolock) where FParentNumber= '''
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
    P.FDetail := qry.FieldByName('FDetail').Value;
    P.Flag := cNoLoadFlag;                            // �½ڵ㣬δ���ر�־
    with MyTreeView_PTItem.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('FDetail').value;
    end;
    qry.Next;
  end;
end;

procedure TFrm_DesignChange.MyTreeView_PTItemChange(Sender: TObject; Node: TTreeNode);
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
    mdata_PTList.DisableControls;
    cxGV_PTList.DataController.DataModeController.GridMode:=True;
    cxGV_PTList.DataController.DataModeController.SmartRefresh:=True;
    If P_Isleaf_PTList>=0 then
    begin
      If PC_Change.ActivePage=TS_Item then
      begin
        If MyItemListFieldWhere(qry,Mdata_PTItem,' *  ','V_DesignChange','FFullNumber',ListFNumber_PTList,' ','FFullNumber') then
      end;
      If PC_Change.ActivePage=TS_ChangeNum then
      begin
        If MyItemListFieldWhere(qry,Mdata_PTItem,' *  ','V_DesignChange','FFullNumber_ChangeNum',ListFNumber_PTList,' ','FFullNumber_ChangeNum') then
      end;  
    end
    else
    begin
      Mdata_PTItem.Close;
      Mdata_PTList.Close;
    end;
    Act_Status_M.Execute;  //Ȩ������

    mdata_PTList.EnableControls;
    cxGV_PTList.DataController.DataModeController.GridMode:=False;
    cxGV_PTList.DataController.DataModeController.SmartRefresh:=False;
 end;
end;

procedure TFrm_DesignChange.FormShow(Sender: TObject);
begin
  inherited;
  TB_Ref.Click;
end;

procedure TFrm_DesignChange.OKBtnClick(Sender: TObject);
var qry: TADOQuery;
    P_FBalanceNum:String;
    i:Integer;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  MData_PTItem.open;
  MData_PTItem.Edit;
  MData_PTItem.Post;

  if (MData_PTItem['FItemNumber']='') or (MData_PTItem['FItemNumber']=null)  then
  begin
    application.MessageBox('ͼ�Ų���Ϊ�գ�','ϵͳ��ʾ',MB_ICONWARNING);
    Exit;
  end;

  if (MData_PTItem['FDesignChangeDate']=null)  then
  begin
    application.MessageBox('��������ڲ���Ϊ�գ�','ϵͳ��ʾ',MB_ICONWARNING);
    Exit;
  end;

  mdata_PTList.open;
  mdata_PTList.Edit;
  mdata_PTList.Post;

  Act_MaxID.Execute;//ȡID
  If P_state=0 then
  begin
    If application.MessageBox('�Ƿ�Ҫ������ӵ����ݣ�','��ʾ',MB_ICONINFORMATION+MB_YESNO)<>6 then
    begin
      CancelBtn.Click;
      Exit;
    end;
    If AddRd then //��������
    begin
      If application.MessageBox('¼�������ѱ���,��Ҫ����¼����','��ʾ',MB_ICONINFORMATION+MB_YESNO)=6 then
      begin
        mdata_PTItem.Close;
        mdata_PTItem.OPen;
        mdata_PTItem.Edit;
        mdata_PTItem.Append;
        mdata_PTItem.Edit;
        mdata_PTItem['FDesignChangeQry']:=1;
        mdata_PTList.Close;
      end
      else
      begin
       CancelBtn.Click;
      end;
    end;
  end;
  If P_state=1 then //�޸�����
  begin
    If application.MessageBox('�Ƿ�Ҫ���������޸ģ�','��ʾ',MB_ICONINFORMATION+MB_YESNO)<>6 then
    begin
      CancelBtn.Click;
      Exit;
    end;
    If EditRd then   //�޸�����
    begin
      application.MessageBox('�޸ļ�¼�ѱ���','ϵͳ��ʾ',MB_ICONINFORMATION);
      CancelBtn.Click;
    end
    else
      application.MessageBox('�޸ļ�¼����ʧ�ܣ�','ϵͳ��ʾ',MB_ICONWARNING);
  end;
  MyTreeView_PTItem.Enabled:=True;
  cxGrid_PTItem.Enabled:=True;
  qry.Free;

end;

procedure TFrm_DesignChange.TB_Edit_MClick(Sender: TObject);
begin
  inherited;
  P_state:=1; //�޸�
  Act_Set_Open.Execute;
end;

procedure TFrm_DesignChange.CancelBtnClick(Sender: TObject);
begin
  inherited;
  Act_Set_Close.Execute;
end;

procedure TFrm_DesignChange.PC_CheckChange(Sender: TObject);
begin
  inherited;
  TB_Ref.Click;
end;

procedure TFrm_DesignChange.Act_Set_Open_MExecute(Sender: TObject);

begin
  inherited;
  MyTreeView_PTItem.Enabled:=False;
  RSP_CList.Enabled:=False;
  P_Btn.Visible:=True;
  OkBtn.Visible:=True;
  CancelBtn.Visible:=True;
  ToolBar_HItem.Visible:=False;
  cxGV_PTItem.OptionsData.Editing:=True;
  cxGV_PTList.OptionsData.Editing:=True;

  FItemNumber_PTItem.Options.Editing:=True;
  FDesignChangeNum_PTItem.Options.Editing:=True;
  FDesignChangeDate_PTItem.Options.Editing:=True;
  FDesignChangeContent_PTItem.Options.Editing:=True;
  FDesignChangeReceiptDate_PTItem.Options.Editing:=True;
  FDesignChangeQry_PTItem.Options.Editing:=True;
  FDEsignChangeUser_PTItem.Options.Editing:=True;

  FPartsNumber_PTList.Options.Editing:=True;
  FDesignChangeCause_PTList.Options.Editing:=True;
  FDesignChangeRemark_PTList.Options.Editing:=True;

end;

procedure TFrm_DesignChange.Act_Set_Close_MExecute(Sender: TObject);
begin
  inherited;
  RSP_CList.Enabled:=True;
  MyTreeView_PTItem.Enabled:=True;
  P_Btn.Visible:=False;

  cxGV_PTItem.OptionsData.Editing:=False;
  cxGV_PTList.OptionsData.Editing:=False;

  ToolBar_HItem.Visible:=True;

  If P_state=0 then
  begin
    mdata_PTItem.Close;
    mdata_PTList.Close;
  end;

  P_state:=2;


end;

procedure TFrm_DesignChange.Act_MenuExecute(Sender: TObject);
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

procedure TFrm_DesignChange.Act_Menu_SetExecute(Sender: TObject);
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

procedure TFrm_DesignChange.N_EditClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_DesignChange.N_FilterClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_DesignChange.N_SortClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_DesignChange.N_GroupClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_DesignChange.N_SetClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_DesignChange.N_OutClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_DesignChange.Act_MaxIDExecute(Sender: TObject);
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
      value:='T_DesignChange';
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

procedure TFrm_DesignChange.Act_Status_MExecute(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  TB_Submit.Visible:=False;
  TB_Accept.Visible:=False;
  TB_Edit_M.Visible:=False;
  TB_Del.Visible:=False;

  //�Ƶ����Ǳ���
  try
    If PC_Change.ActivePage=TS_Item then
    begin
      qry.SQL.Text:='Select distinct FDesignChangeStatus,FDesignChangeWriteID from V_DesignChange with(nolock) '
                   +'where FFullNumber like :FFullNumber';
      qry.Parameters.FindParam('FFullNumber').value:=ListFNumber_PTList+'%';
    end;
    If PC_Change.ActivePage=TS_ChangeNum then
    begin
      qry.SQL.Text:='Select distinct FDesignChangeStatus,FDesignChangeWriteID from V_DesignChange with(nolock) '
                   +'where FFullNumber_ChangeNum like :FFullNumber_ChangeNum';
      qry.Parameters.FindParam('FFullNumber_ChangeNum').value:=ListFNumber_PTList+'%';
    end;
    qry.Open;
  finally
    ;
  end;

   //�Ƶ����Ǳ���

  If (qry.RecordCount=1) and (qry.FieldByName('FDesignChangeStatus').AsInteger=0)
      and (qry.FieldByName('FDesignChangeWriteID').AsInteger=UserNumID) then
  begin
    If mdata_PTItem.RecordCount=0 then
    begin
      TB_Del.Visible:=False;
      TB_Submit.Visible:=False;
    end;
    If mdata_PTItem.RecordCount>0 then
    begin
      TB_Submit.Visible:=mdlData.PermissionCheckRights(TFrm_DesignChange.ClassName,'�ύ');
      TB_Submit.Caption:='�����ύ';
      TB_Del.Visible:=False;
    end;
    If mdata_PTItem.RecordCount=1 then
    begin
      TB_Edit_M.Visible:=mdlData.PermissionCheckRights(TFrm_DesignChange.ClassName,'�޸�');
      TB_Del.Visible:=mdlData.PermissionCheckRights(TFrm_DesignChange.ClassName,'ɾ��');
      TB_Submit.Visible:=mdlData.PermissionCheckRights(TFrm_DesignChange.ClassName,'�ύ');
      TB_Submit.Caption:='�ύ';

    end;
    Exit;
  end;

   //�ύ���Ǳ���
  If (qry.RecordCount=1) and (qry.FieldByName('FDesignChangeStatus').AsInteger=1)
     and (qry.FieldByName('FDesignChangeWriteID').AsInteger=UserNumID) then
  begin
    TB_Submit.Visible:=mdlData.PermissionCheckRights(TFrm_DesignChange.ClassName,'�ύ');
    If mdata_PTItem.RecordCount=0 then
       TB_Submit.Visible:=False;
    If mdata_PTItem.RecordCount>0 then
    begin
      TB_Submit.Caption:='�����ύ����';
      TB_Accept.Visible:=mdlData.PermissionCheckRights(TFrm_DesignChange.ClassName,'����');
      TB_Accept.Caption:='��������';
    end;
    If mdata_PTItem.RecordCount=1 then
    begin
      TB_Submit.Caption:='�ύ����';
      TB_Accept.Visible:=mdlData.PermissionCheckRights(TFrm_DesignChange.ClassName,'����');
      TB_Accept.Caption:='����';
    end;
    TB_Edit_M.Visible:=False;
    TB_Del.Visible:=False;
    Exit;
  end;

   //У��
   try
     If PC_Change.ActivePage=TS_Item then
     begin
       qry.SQL.Text:='Select distinct FDesignChangeStatus from V_DesignChange with(nolock) where FFullNumber like :FFullNumber';
       qry.Parameters.FindParam('FFullNumber').value:=ListFNumber_PTList+'%';
     end;
     If PC_Change.ActivePage=TS_ChangeNum then
     begin
       qry.SQL.Text:='Select distinct FDesignChangeStatus from V_DesignChange with(nolock) where FFullNumber_ChangeNum like :FFullNumber_ChangeNum';
       qry.Parameters.FindParam('FFullNumber_ChangeNum').value:=ListFNumber_PTList+'%';
     end;
    qry.Open;
    finally
      ;
  end;
  If (qry.RecordCount>1)  then
     Exit;
  If (qry.RecordCount=1) and (qry.FieldByName('FDesignChangeStatus').AsInteger=1) then
  begin
    If mdata_PTItem.RecordCount=0 then
    begin
      TB_Accept.Visible:=False;
    end;
    If mdata_PTItem.RecordCount>0 then
    begin
      TB_Accept.Visible:=mdlData.PermissionCheckRights(TFrm_DesignChange.ClassName,'����');
      TB_Accept.Caption:='��������';
    end;
    If mdata_PTItem.RecordCount=1 then
    begin
      TB_Accept.Visible:=mdlData.PermissionCheckRights(TFrm_DesignChange.ClassName,'����');
      TB_Accept.Caption:='����';
    end;
    Exit;
  end;


  If (qry.RecordCount=1) and (qry.FieldByName('FDesignChangeStatus').AsInteger=5) then
  begin
    TB_Accept.Visible:=mdlData.PermissionCheckRights(TFrm_DesignChange.ClassName,'����');
    If mdata_PTItem.RecordCount=0 then
       TB_Accept.Visible:=False;
    If mdata_PTItem.RecordCount>0 then
       TB_Accept.Caption:='�������ճ���';
    If mdata_PTItem.RecordCount=1 then
       TB_Accept.Caption:='���ճ���';
    Exit;
  end;



end;

procedure TFrm_DesignChange.Act_SubmitExecute(Sender: TObject);
var
 qry,qryDate:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qryDate:=TAdoQuery.Create(self);
  qryDate.ConnectionString:=mdlData.ReadConnStr;
  P_state:=3;
  If (TB_Submit.Caption='�ύ') or (TB_Submit.Caption='�����ύ') then
  begin
    If application.MessageBox(Pchar('ϵͳ��ʾ���Ƿ����Ʊ������Ϊ��'+P_List_PTList+'�ĵ��ݽ����ύ��'+chr(13)+chr(13)
                                   +'ȷ��Ҫ�ύ�Ա�������'),'ϵͳ��ʾ',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      MData_PTItem.First;
      while not MData_PTItem.eof do
      begin
        try
          qry.SQL.Text:='Update T_DesignChange Set FDesignChangeStatus=1,FDesignChangeSubmitDate=:FDesignChangeSubmitDate  where FDesignChangeID=:FDesignChangeID';
          qry.Parameters.FindParam('FDesignChangeSubmitDate').value:= S_SyStemDate(qryDate);
          qry.Parameters.FindParam('FDesignChangeID').value:=MData_PTItem['FDesignChangeID'];
          qry.ExecSQL;
        finally
          ;
        end;
        MData_PTItem.Edit;
        MData_PTItem['FDesignChangeStatus']:=1;
        MData_PTItem['FDesignChangeStatusNotes']:='�ύ';
        MData_PTItem['FDesignChangeSubmitDate']:=S_SyStemDate(qryDate);
        MData_PTItem.Post;
        MData_PTItem.Next;
      end;
      If MData_PTItem.RecordCount=1 then
      begin
        application.MessageBox('�ύ��ϣ�','ϵͳ��ʾ',MB_ICONINFORMATION);
        TB_Submit.Caption:='�ύ����';
      end;
      If MData_PTItem.RecordCount>1 then
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
    If application.MessageBox(Pchar('ϵͳ��ʾ���Ƿ����Ʊ������Ϊ��'+P_List_PTList+'�ĵ��ݽ����ύ���أ�'+chr(13)+chr(13)
                                     +'ȷ��Ҫ�Ա������ύ������'),'ϵͳ��ʾ',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      MData_PTItem.First;
      while not MData_PTItem.eof do
      begin
        try
          qry.SQL.Text:='Update T_DesignChange Set FDesignChangeStatus=0,FDesignChangeSubmitDate=:FDesignChangeSubmitDate where FDesignChangeID=:FDesignChangeID';
          qry.Parameters.FindParam('FDesignChangeSubmitDate').value:= Null;
          qry.Parameters.FindParam('FDesignChangeID').value:= MData_PTItem['FDesignChangeID'];
          qry.ExecSQL;
        finally
          ;
        end;
        MData_PTItem.Edit;
        MData_PTItem['FDesignChangeStatus']:=0;
        MData_PTItem['FDesignChangeStatusNotes']:='�';
        MData_PTItem['FDesignChangeSubmitDate']:=Null;
        MData_PTItem.Post;
        MData_PTItem.Next;
      end;
      If MData_PTItem.RecordCount=1 then
      begin
        application.MessageBox('�ύ������ϣ�','ϵͳ��ʾ',MB_ICONINFORMATION);
        TB_Submit.Caption:='�ύ';
      end;
      If MData_PTItem.RecordCount>1 then
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

procedure TFrm_DesignChange.cxGrid_PTItemContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV_PTItem';
  Gm:='mdata_PTItem';
  Gr:='cxGrid_PTItem';
  Act_Menu_Set.Execute;
end;

procedure TFrm_DesignChange.cxGrid_PTListContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV_PTList';
  Gm:='mdata_PTList';
  Gr:='cxGrid_PTList';
  Act_Menu_Set.Execute;
end;

procedure TFrm_DesignChange.cxGV_PTItemFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
var qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If  P_state=2 then   //���������޸�״̬
  begin
    If (mData_PTItem['FDesignChangeID']<>0) and (mData_PTItem['FDesignChangeID']<>Null) then
    begin
      If MyItemListID(qry,Mdata_PTList,'V_DesignChangeList',' FDesignChangeID='+IntToStr(mData_PTItem['FDesignChangeID']),'FFullNumber',) then
      Act_Status_M.Execute  //Ȩ������
    end;
  end;

end;

procedure TFrm_DesignChange.FPlanWeekPartsName_PTListPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  MData_PTList.Edit;
  MData_PTList.Append;
  MData_PTList.Post;
end;

procedure TFrm_DesignChange.Act_AcceptExecute(Sender: TObject);
var
 qry,qryDate:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qryDate:=TAdoQuery.Create(self);
  qryDate.ConnectionString:=mdlData.ReadConnStr;
  P_state:=3;
  If (TB_Accept.Caption='����') or (TB_Accept.Caption='��������') then
  begin
    If application.MessageBox(Pchar('ϵͳ��ʾ���Ƿ����Ʊ������'+P_List_PTList+'�ĵ��ݽ��н��գ�'+chr(13)+chr(13)
                                   +'ȷ��Ҫ���ձ�������'),'ϵͳ��ʾ',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      MData_PTItem.First;
      while not MData_PTItem.eof do
      begin
        try
          qry.SQL.Text:='Update T_DesignChange Set FDesignChangeStatus=5,FDesignChangeSubmitDate=:FDesignChangeSubmitDate '
                       +' where FDesignChangeID=:FDesignChangeID';
          qry.Parameters.FindParam('FDesignChangeSubmitDate').value:= S_SyStemDate(qryDate);
          qry.Parameters.FindParam('FDesignChangeID').value:=MData_PTItem['FDesignChangeID'];
          qry.ExecSQL;
        finally
          ;
        end;
        MData_PTItem.Edit;
        MData_PTItem['FDesignChangeStatus']:=5;
        MData_PTItem['FDesignChangeStatusNotes']:='����';
        MData_PTItem['FDesignChangeSubmitDate']:=S_SyStemDate(qryDate);
        MData_PTItem.Post;
        MData_PTItem.Next;
      end;
      If MData_PTItem.RecordCount=1 then
      begin
        application.MessageBox('������ϣ�','ϵͳ��ʾ',MB_ICONINFORMATION);
        TB_Accept.Caption:='���ճ���';
      end;
      If MData_PTItem.RecordCount>1 then
      begin
        application.MessageBox('����������ϣ�','ϵͳ��ʾ',MB_ICONINFORMATION);
        TB_Accept.Caption:='�������ճ���';
      end;
      Act_Status_M.Execute;  //Ȩ������
    end;
    P_state:=2;
    Exit;
  end;
  If (TB_Accept.Caption='���ճ���') or (TB_Accept.Caption='�������ճ���')  then
  begin
    If application.MessageBox(Pchar('ϵͳ��ʾ���Ƿ����Ʊ������'+P_List_PTList+'�ĵ��ݽ��н��ճ��أ�'+chr(13)+chr(13)
                                     +'ȷ��Ҫ�Ա����ݽ��ճ�����'),'ϵͳ��ʾ',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      MData_PTItem.First;
      while not MData_PTItem.eof do
      begin
        try
          qry.SQL.Text:='Update T_DesignChange Set FDesignChangeStatus=1,FDesignChangeSubmitDate=:FDesignChangeSubmitDate '
                       +'where DesignChangeID=:FDesignChangeID';
          qry.Parameters.FindParam('FDesignChangeSubmitDate').value:= Null;
          qry.Parameters.FindParam('FDesignChangeID').value:= MData_PTItem['FDesignChangeID'];
          qry.ExecSQL;
        finally
          ;
        end;
        MData_PTItem.Edit;
        MData_PTItem['FDesignChangeStatus']:=1;
        MData_PTItem['FDesignChangeStatusNotes']:='�ύ';
        MData_PTItem['FDesignChangeSubmitDate']:=Null;
        MData_PTItem.Post;
        MData_PTItem.Next;
      end;
      If MData_PTItem.RecordCount=1 then
      begin
        application.MessageBox('���ճ�����ϣ�','ϵͳ��ʾ',MB_ICONINFORMATION);
        TB_Accept.Caption:='����';
      end;
      If MData_PTItem.RecordCount>1 then
      begin
        application.MessageBox('�������ճ�����ϣ�','ϵͳ��ʾ',MB_ICONINFORMATION);
        TB_Accept.Caption:='��������';
      end;
      Act_Status_M.Execute;  //Ȩ������
    end;
    P_state:=2;
    Exit;
  end;

end;

procedure TFrm_DesignChange.Act_RefExecute(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If PC_Change.ActivePage=TS_Item then
  begin
    If not TreeVeiwListWhere(qry,MyTreeView_PTItem,'VT_DesignChange',' and FDepartmentID='+IntToStr(UserFDepartmentID)) then
       Application.MessageBox(PChar('���ͽṹ��ʾ��������ϵϵͳ������Ա'), '����', MB_OK +MB_ICONSTOP);
  end;
  If PC_Change.ActivePage=TS_ChangeNum then
  begin
    If not TreeVeiwListWhere(qry,MyTreeView_PTItem,'VT_DesignChange_ChangeNum',' and FDepartmentID='+IntToStr(UserFDepartmentID)) then
       Application.MessageBox(PChar('���ͽṹ��ʾ��������ϵϵͳ������Ա'), '����', MB_OK +MB_ICONSTOP);
  end;
end;

procedure TFrm_DesignChange.PC_WeekChange(Sender: TObject);
begin
  inherited;
  Act_Ref.Execute;
end;

procedure TFrm_DesignChange.FItemNumber_PTItemPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
    i:Integer;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  MData_PTItem.Edit;
  MData_PTItem.Post;

  try
    qry.SQL.Text:='select *  from VT_Item with(nolock) where FDepartmentID=:FDepartmentID '
                 +' and FItemNumber like :FItemNumber order by FItemNumber';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Parameters.FindParam('FItemNumber').value:='%'+MData_PTItem['FItemNumber']+'%';
    qry.Open;
  finally
     ;
  end;
  MData_PTItem.Edit;
  If qry.RecordCount=1 then
  begin
    MData_PTItem['FItemId']:=qry.FieldByName('FItemId').AsString;
  end
  else
  begin
    selValue:=select('��ѡ����Ŀͼ��','FNumber','FParentNumber','FNumber','FName',qry);
    If Length(selValue)>0 then
    begin
      MData_PTItem['FItemId']:=qry.FieldByName('FItemId').AsString;
    end;
  end;

  try
    qry.SQL.Text:='select * from V_Item with(nolock) where FItemId=:FItemId ';
    qry.Parameters.FindParam('FItemId').value:=MData_PTItem['FItemId'];
    qry.Open;
  finally
     ;
  end;
  If qry.RecordCount>0 then
  begin
    MData_PTItem['FItemNumber']:=qry.FieldByName('FItemNumber').AsString;
    MData_PTItem['FClientShortName']:=qry.FieldByName('FClientShortName').AsString;
    MData_PTItem['FFileNo']:=qry.FieldByName('FFileNo').AsString;

    try
      qry.SQL.Text:='select * from V_DesignChangeList with(nolock) where FDesignChangeListID=0';
      qry.Open;
    finally
       ;
    end;
    mdata_PTList.CopyFromDataSet(qry);
    mdata_PTList.Active:=True;
    mdata_PTList.Append;
    mdata_PTList.Edit;

    for i:=1 to 8 do
    begin
      mdata_PTList.Append;
      mdata_PTList.Post;
    end;
  end
  else
    mdata_PTList.Close;


end;

procedure TFrm_DesignChange.FPartsNumber_PTListPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  MData_PTList.Edit;

  If (MData_PTItem['FItemID']=0) or (MData_PTItem['FItemID']=Null) then
  begin
    application.MessageBox('����ѡ����Ŀ��','ϵͳ��ʾ',MB_ICONINFORMATION);
    Exit
  end;

  try
    qry.SQL.Text:='select *  from VT_ItemList with(nolock) where FItemId=:FItemId '
                 +'order by FItemNumber';
    qry.Parameters.FindParam('FItemId').value:=MData_PTItem['FItemId'];
    qry.Open;
  finally
     ;
  end;
  selValue:=select('��ѡ�񲿼�ͼ��','FNumber','FParentNumber','FNumber','FName',qry);
  If Length(selValue)>0 then
  begin
    MData_PTList['FItemListID']:=qry.FieldByName('FItemListID').AsString;
  end;

  try
    qry.SQL.Text:='select * from V_ItemList with(nolock) where FItemListID=:FItemListID ';
    qry.Parameters.FindParam('FItemListID').value:=MData_PTList['FItemListID'];
    qry.Open;
  finally
     ;
  end;
  If qry.RecordCount>0 then
  begin
    MData_PTList['FPartsNumber']:=qry.FieldByName('FPartsNumber').AsString;
    MData_PTList['FPartsName']:=qry.FieldByName('FPartsName').AsString;
  end;


end;

procedure TFrm_DesignChange.FDesignChangeCause_PTListPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='select distinct FDesignChangeCause from V_DesignChangeList with(nolock) '
                 +'where FDepartmentID=:FDepartmentID order by FDesignChangeCause ';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Open;
  finally
     ;
  end;

  selValue:=select('ѡ�����ԭ��','FDesignChangeCause','FDesignChangeCause','FDesignChangeCause','FDesignChangeCause',qry);
  If (Length(selValue)>0) then
  begin
    mdata_PTList.Edit;
    mdata_PTList['FDesignChangeCause']:=qry.FieldByName('FDesignChangeCause').Value;
  end;

end;

procedure TFrm_DesignChange.PC_ChangeChange(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If PC_Change.ActivePage=TS_Item then
  begin
    If not TreeVeiwListWhere(qry,MyTreeView_PTItem,'VT_DesignChange',' and FDepartmentID='+IntToStr(UserFDepartmentID)) then
       Application.MessageBox(PChar('���ͽṹ��ʾ��������ϵϵͳ������Ա'), '����', MB_OK +MB_ICONSTOP);
  end;
  If PC_Change.ActivePage=TS_ChangeNum then
  begin
    If not TreeVeiwListWhere(qry,MyTreeView_PTItem,'VT_DesignChange_ChangeNum',' and FDepartmentID='+IntToStr(UserFDepartmentID)) then
       Application.MessageBox(PChar('���ͽṹ��ʾ��������ϵϵͳ������Ա'), '����', MB_OK +MB_ICONSTOP);
  end;


end;

procedure TFrm_DesignChange.FDEsignChangeUser_PTItemPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='select distinct FDEsignChangeUser from V_DesignChange with(nolock) '
                 +'where FDepartmentID=:FDepartmentID order by FDEsignChangeUser ';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Open;
  finally
     ;
  end;

  selValue:=select('ѡ����������','FDEsignChangeUser','FDEsignChangeUser','FDEsignChangeUser','FDEsignChangeUser',qry);
  If (Length(selValue)>0) then
  begin
    mdata_PTItem.Edit;
    mdata_PTItem['FDEsignChangeUser']:=qry.FieldByName('FDEsignChangeUser').Value;
  end;


end;

end.


