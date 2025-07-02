unit Main_ShipI;

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
  cxEditRepositoryItems, cxSpinEdit;

type
  TFrm_ShipItem = class(TFrm_GridBass)
    MData_HItem: TdxMemData;
    DS_Mdata_HItem: TDataSource;
    ImageList: TImageList;
    Panel1: TPanel;
    ToolBar1: TToolBar;
    ToolButton5: TToolButton;
    TB_Down: TToolButton;
    ToolButton1: TToolButton;
    TB_Prin: TToolButton;
    TB_EXIT: TToolButton;
    frReport: TfrReport;
    frDBDataSet: TfrDBDataSet;
    RzSizePanel1: TRzSizePanel;
    PC_2: TRzPageControl;
    TS_Brow: TRzTabSheet;
    TB_Ref: TToolButton;
    TB_App: TToolButton;
    TB_Edit: TToolButton;
    TB_Del: TToolButton;
    PanelBkGnd: TPanel;
    Panel_button: TPanel;
    Bevel_button: TBevel;
    OKBtn: TcxButton;
    CancelBtn: TcxButton;
    cxGrid_HItem: TcxGrid;
    cxGV_HItem: TcxGridDBTableView;
    FProductName: TcxGridDBColumn;
    cxGL_HItem: TcxGridLevel;
    MyTreeView_HItem: TTreeView;
    TB_Out: TToolButton;
    FItemId: TcxGridDBColumn;
    FShipPactNum: TcxGridDBColumn;
    FBranchFileNo: TcxGridDBColumn;
    FClientFullName: TcxGridDBColumn;
    FBranchItemNumber: TcxGridDBColumn;
    FItemModel: TcxGridDBColumn;
    FClientShortName: TcxGridDBColumn;
    FItemLb: TcxGridDBColumn;
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
    FProductID: TcxGridDBColumn;
    MData_HItemFProductID: TStringField;
    MData_HItemFsjdw: TStringField;
    MData_HItemFsjr: TStringField;
    MData_HItemFjsr: TStringField;
    MData_HItemFgdrq: TStringField;
    Image3: TImage;
    MData_HItemFDesignName: TStringField;
    MData_HItemFPlace: TStringField;
    FDesignLeader: TcxGridDBColumn;
    FItemQry: TcxGridDBColumn;
    EditRepository: TcxEditRepository;
    ImageComboLanguages: TcxEditRepositoryImageComboBoxItem;
    ImageComboCommunication: TcxEditRepositoryImageComboBoxItem;
    SpinItemYears: TcxEditRepositorySpinItem;
    DateItemStartWorkFrom: TcxEditRepositoryDateItem;
    FDesignLeaderID: TcxGridDBColumn;
    MData_HItemFDesignLeaderID: TIntegerField;
    FDesignNo: TcxGridDBColumn;
    FShipDate: TcxGridDBColumn;
    FShipWagonNum: TcxGridDBColumn;
    FShipWay: TcxGridDBColumn;
    FShipLoadDate: TcxGridDBColumn;
    FDriver: TcxGridDBColumn;
    FDriverPhone: TcxGridDBColumn;
    FConsigneeDress: TcxGridDBColumn;
    FConsigneePhone: TcxGridDBColumn;
    cxGV_HItemDBColumn1: TcxGridDBColumn;
    cxGV_HItemDBColumn2: TcxGridDBColumn;
    cxGV_HItemDBColumn3: TcxGridDBColumn;
    cxGV_HItemDBColumn4: TcxGridDBColumn;
    cxGV_HItemDBColumn5: TcxGridDBColumn;
    cxGV_HItemDBColumn6: TcxGridDBColumn;
    procedure FormResize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TB_EXITClick(Sender: TObject);
    procedure TB_DownClick(Sender: TObject);
    procedure MyTreeView_HItemChange(Sender: TObject; Node: TTreeNode);
    procedure MyTreeView_HItemExpanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure TB_RefClick(Sender: TObject);
    procedure OKBtnClick(Sender: TObject);
    procedure TB_AppClick(Sender: TObject);
    procedure TB_EditClick(Sender: TObject);
    procedure TB_DelClick(Sender: TObject);
    procedure CancelBtnClick(Sender: TObject);
    procedure TB_OutClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Set_Open;
    procedure Set_Close;
    procedure FShipWayPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FBranchItemNumberPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    ListItemFNumber,P_th:String;
    P_FProductID:Integer;
    P_i:boolean;



    { Private declarations }
    function AddRd:bool;
    function EditRd:bool;
    function DelRd:bool;

  public
    P_state:integer;
    { Public declarations }
  end;

var
  Frm_ShipItem: TFrm_ShipItem;


implementation

uses FRMDATA, FRMMAIN, COMMON, FrmSelect, ProgBar, PROGRASS;

{$R *.dfm}
procedure TFrm_ShipItem.Set_Open;
begin
  TB_Ref.Visible:=False;
  TB_App.Visible:=False;
  TB_Edit.Visible:=False;
  TB_Del.Visible:=False;
  MyTreeView_HItem.Enabled:=False;

  OKBtn.Visible:=True;
  CancelBtn.Visible:=True;
  cxGV_HItem.OptionsData.Editing:=True;

  FShipPactNum.Options.Editing:=True;
  FShipDate.Options.Editing:=True;
  FShipWagonNum.Options.Editing:=True;
  FShipWay.Options.Editing:=True;
  FShipLoadDate.Options.Editing:=True;
  FShipLoadDate.Options.Editing:=True;
  FDriver.Options.Editing:=True;
  FDriverPhone.Options.Editing:=True;
  FConsigneeDress.Options.Editing:=True;
  FConsigneePhone.Options.Editing:=True;
  FBranchItemNumber.Options.Editing:=True;
end;

procedure TFrm_ShipItem.Set_Close;
begin
  TB_Ref.Visible:=True;
  TB_App.Visible:=True;
  TB_Edit.Visible:=True;
  TB_Del.Visible:=True;
  MyTreeView_HItem.Enabled:=True;

  OKBtn.Visible:=False;
  CancelBtn.Visible:=False;
  cxGV_HItem.OptionsData.Editing:=False;

end;

function TFrm_ShipItem.DelRd: bool;
var
 qry: TADOQuery;
begin
  //result:=False;
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Delete from T_ShipItem where FShipItemID=:FShipItemID';
    with qry.Parameters do
    begin
      FindParam('FShipItemID').value:=mdata_HItem['FShipItemID'];
    end;
    result:=qry.ExecSQL>=1;
  finally
    qry.Free;
  end;
end;

function TFrm_ShipItem.AddRd: bool;
var
  qry: TADOQuery;

begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  result:=False;

  If mData_HItem.RecordCount<=0 then
  begin
    result:=True;
    Exit;
  end;
  try
    qry.SQL.Text:='Insert into T_ShipItem(FShipPactNum,FShipDate,FShipWagonNum,FShipWay,FShipLoadDate,FDriver,FDriverPhone,FConsigneeDress,FConsigneePhone,FItemID,FAgentID ) '
                 +'values(:FShipPactNum,:FShipDate,:FShipWagonNum,:FShipWay,:FShipLoadDate,:FDriver,:FDriverPhone,:FConsigneeDress,:FConsigneePhone,:FItemID,:FAgentID )';
     mData_HItem.First;
     while not mData_HItem.eof do
     begin
       If (mData_HItem['FShipPactNum']<>'') and (mData_HItem['FItemId']<>0) then
       begin
         If qry.Active then qry.Close;
         with qry.Parameters do
         begin
           FindParam('FShipPactNum').value:=mData_HItem['FShipPactNum'];
           FindParam('FShipDate').value:=mData_HItem['FShipDate'];
           FindParam('FShipWagonNum').value:=mData_HItem['FShipWagonNum'];
           FindParam('FShipWay').value:=mData_HItem['FShipWay'];
           FindParam('FShipLoadDate').value:=mData_HItem['FShipLoadDate'];
           FindParam('FDriver').value:=mData_HItem['FDriver'];
           FindParam('FDriverPhone').value:=Trim(mData_HItem['FDriverPhone']);
           FindParam('FConsigneeDress').value:=mData_HItem['FConsigneeDress'];
           FindParam('FConsigneePhone').value:=mData_HItem['FConsigneePhone'];
           FindParam('FItemID').value:=mData_HItem['FItemID'];
           FindParam('FAgentID').value:=UserFDepartmentID;
         end;
         result:=qry.ExecSQL>=1;
         if not result then break;
       end;
       mData_HItem.Next;

     end;
   finally
     qry.Free;
   end;
end;


function TFrm_ShipItem.EditRd:bool;
var
  qry: TADOQuery;

begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  //result:=False;

  If mData_HItem.RecordCount<=0 then
  begin
    result:=True;
    Exit;
  end;

  mData_HItem.Edit;
  mData_HItem.Post;


  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  result:=False;

  If mData_HItem.RecordCount<=0 then
  begin
    result:=True;
    Exit;
  end;
  try
    qry.SQL.Text:='Update T_ShipItem set FShipPactNum=:FShipPactNum,FShipDate=:FShipDate,FShipWagonNum=:FShipWagonNum,FShipWay=:FShipWay,'
                 +'FShipLoadDate=:FShipLoadDate,FDriver=:FDriver,FDriverPhone=:FDriverPhone,FConsigneeDress=:FConsigneeDress,'
                 +'FConsigneePhone=:FConsigneePhone,FItemID=:FItemID '
                 +'where FShipItemID=:FShipItemID';
     mData_HItem.First;

     while not mData_HItem.eof do
     begin
       If (mData_HItem['FShipPactNum']<>'') and (mData_HItem['FItemId']<>0) then
       begin
         If qry.Active then qry.Close;
         with qry.Parameters do
         begin
           FindParam('FShipPactNum').value:=mData_HItem['FShipPactNum'];
           FindParam('FShipDate').value:=mData_HItem['FShipDate'];
           FindParam('FShipWagonNum').value:=mData_HItem['FShipWagonNum'];
           FindParam('FShipWay').value:=mData_HItem['FShipWay'];
           FindParam('FShipLoadDate').value:=mData_HItem['FShipLoadDate'];
           FindParam('FDriver').value:=mData_HItem['FDriver'];
           FindParam('FDriverPhone').value:=Trim(mData_HItem['FDriverPhone']);
           FindParam('FConsigneeDress').value:=mData_HItem['FConsigneeDress'];
           FindParam('FConsigneePhone').value:=mData_HItem['FConsigneePhone'];
           FindParam('FItemID').value:=mData_HItem['FItemID'];

           FindParam('FShipItemID').value:=mData_HItem['FShipItemID'];
          end;
         result:=qry.ExecSQL>=1;
         if not result then break;
       end;
       mData_HItem.Next;

     end;
   finally
     qry.Free;
   end;
end;


procedure TFrm_ShipItem.FormResize(Sender: TObject);
begin
  inherited;
  L_title.Caption:='������Ϣ����';
  Self.Caption:='������Ϣ����';

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
  self.Close;
end;

procedure TFrm_ShipItem.TB_DownClick(Sender: TObject);
Var i:Integer;
begin
  If P_i then
  begin
    TB_Down.Caption:='ȡ������';
    cxGV_HItem.OptionsData.Editing:=False;
    cxGv_HItem.OptionsView.GroupByBox:=False;
    for i:=0 to cxGv_HItem.ColumnCount-1 do
    begin
      cxGv_HItem.Columns[i].Options.Filtering:=False;
      cxGv_HItem.Columns[i].Options.Editing:=False;
      cxGv_HItem.Columns[i].Options.Sorting:=False;
    end;
    P_i:=False;
  end
  else
  begin
    TB_Down.Caption:='����';
    cxGV_HItem.OptionsData.Editing:=True;
    cxGv_HItem.OptionsView.GroupByBox:=True;
    for i:=0 to cxGv_HItem.ColumnCount-1 do
    begin
      cxGv_HItem.Columns[i].Options.Filtering:=True;
      cxGv_HItem.Columns[i].Options.Editing:=True;
      cxGv_HItem.Columns[i].Options.Sorting:=True;
    end;
    P_i:=True;
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
    ListItemFNumber:=PTree(Node.Data).FNumber;
    P_th:=PTree(Node.Data).Caption;
    If not MyItemList(qry,mData_HItem,'V_ShipItem','FNumber',ListItemFNumber,'FNumber') then
    begin
      mData_HItem.Open;
      cxGvColumn(cxGv_HItem,mData_HItem);
    end;
  end;

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

  qry.SQL.Text:='Select * from VT_ShipItem where FParentNumber= '''
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
    P.Flag := cNoLoadFlag;                            // �½ڵ㣬δ���ر�־
    with MyTreeView_HItem.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('Isleaf').value;
    end;
    qry.Next;
  end;


end;

procedure TFrm_ShipItem.TB_RefClick(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
 // If not TreeVeiwListUserID(qry,MyTreeView,'VT_ShipItem',UserFDepartmentID) then
  If not TreeVeiwListWhere(qry,MyTreeView_HItem,'VT_ShipItem',' and FAgentID='+IntToStr(UserFDepartmentID) ) then
  begin
    Application.MessageBox(PChar('���ͽṹ��ʾ��������ϵϵͳ������Ա'), '����', MB_OK +MB_ICONSTOP);
  end;

end;

procedure TFrm_ShipItem.OKBtnClick(Sender: TObject);
var qry: TADOQuery;

begin
  cxGV_HItem.OptionsData.Editing:=True;
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  mData_HItem.Edit;
  mData_HItem.Post;
  If (mData_HItem['FShipPactNum']='')  or (mData_HItem['FShipPactNum']=Null) then
  begin
    application.MessageBox('�����ͬ�Ų�����գ�����������','ϵͳ��ʾ',MB_ICONERROR);
    Exit;
  end;

  If P_state =0 then
  begin
    try
      qry.SQL.Text:='Select * from V_ShipItem where FShipPactNum=:FShipPactNum';
      qry.Parameters.FindParam('FShipPactNum').Value:=mData_HItem['FShipPactNum'];
      qry.Open;
      If qry.RecordCount>0 then
      begin
         application.MessageBox('�����ͬ���ظ���������ѡ��','ϵͳ��ʾ',MB_ICONERROR);
         Exit;
      end;
    finally
       ;
    end;
  end;

  If P_state=0 then
  begin
    If application.MessageBox('�Ƿ�Ҫ������ӵ����ݣ�','��ʾ',MB_ICONINFORMATION+MB_YESNO)<>6 then
       Exit;
    If AddRd then //��������
    begin
      If application.MessageBox('¼�������ѱ���,��Ҫ����¼����','��ʾ',MB_ICONINFORMATION+MB_YESNO)=6 then
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

  If P_state=1 then //�޸�����
  begin
    If application.MessageBox('�Ƿ�Ҫ���������޸ģ�','��ʾ',MB_ICONINFORMATION+MB_YESNO)<>6 then
       Exit;
    If EditRd then   //�޸�����
    begin
      application.MessageBox('�޸ļ�¼�ѱ���','ϵͳ��ʾ',MB_ICONINFORMATION);
      inherited;
    end
    else
      application.MessageBox('�޸ļ�¼����ʧ�ܣ�','ϵͳ��ʾ',MB_ICONWARNING);
    CancelBtn.Click;
  end;
  qry.Free;


end;



procedure TFrm_ShipItem.TB_AppClick(Sender: TObject);
var
 qry:TADOquery;
 i:Integer;
 P_FProductName:string;
begin
  P_state :=0;
  L_title.Caption:='������Ϣ����';
  Self.Set_Open;

  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  //���ɿռ�¼
  try
    qry.SQL.Text:='Select * from V_ShipItem where FShipItemId=:FShipItemId';
    qry.Parameters.FindParam('FShipItemId').value:= 0;
    qry.Open;
  finally
    ;
  end;
  mData_HItem.CopyFromDataSet(qry);
  mData_HItem.Open;
  mData_HItem.Edit;
  mData_HItem.Append;
 { mData.Open;
  mData.Edit;
  mData['FItemNo']:=Format('%.4d',[i]);
  mData['FProductName']:=P_FProductName;
  mData['FProductID']:=P_FProductID;
  mData['FItemQry']:=1;
  mData.Post; }


end;

procedure TFrm_ShipItem.TB_EditClick(Sender: TObject);

begin
  P_state :=1;
  If (mData_HItem.RecordCount<1) then
    Exit;
  If mData_HItem.RecordCount<>1 then
  begin
    application.MessageBox('ֻ�����޸ĵ�����¼��������ѡ��!','ϵͳ��ʾ',MB_ICONINFORMATION);
    Exit;
  end;

  L_title.Caption:='��Ŀ��Ϣ�޸�';
  Self.Set_Open;
end;

procedure TFrm_ShipItem.TB_DelClick(Sender: TObject);
var
  qry:TADOQuery;

begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If (mData_HItem.RecordCount<1) then
    Exit;

  If mData_HItem.RecordCount<>1 then
  begin
    application.MessageBox('ֻ����ɾ��������¼��������ѡ��!','ϵͳ��ʾ',MB_ICONINFORMATION);
    Exit;
  end;

{  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Select * from V_DesignBOM_Structure where FFullNumber like :FFullNumber';
    qry.Parameters.FindParam('FFullNumber').Value:=mdata['FItemNo']+'%';
    qry.Open;
  finally
     ;
  end;
  if qry.RecordCount>0 then
  begin
    application.MessageBox(Pchar('��Ŀ��'+Trim(Mdata['FItemNumber'])+'����'+Trim(Mdata['FItemNo'])+'���ѵ������ݲ�����ɾ����'),'ϵͳ��ʾ',MB_ICONINFORMATION);
    Exit;
  end;


  try
    qry.SQL.Text:='Select * from V_ItemList where FItemID=:FItemID';
    qry.Parameters.FindParam('FItemID').Value:=mdata['FItemID'];
    qry.Open;
  finally
     ;
  end;
  if qry.RecordCount>0 then
  begin
    application.MessageBox(Pchar('��Ŀ��'+Trim(Mdata['FItemNumber'])+'����������Ŀ��ϸ,����ɾ����Ŀ��ϸ��'),'ϵͳ��ʾ',MB_ICONINFORMATION);
    Exit;
  end;
  }



  If application.MessageBox(Pchar('���棺�Ƿ�ɾ�������ͬ��Ϊ����'+Trim(mData_HItem['FShipPactNum'])+'���ĵ��ݣ�'+chr(13)+chr(13)
                           +'ɾ�����ݲ��������ɻָ���ȷ��Ҫɾ����������'),'������ʾ',MB_ICONINFORMATION+MB_YESNO)=6 then
  If application.MessageBox(Pchar('���棺�Ƿ�ɾ�������ͬ��Ϊ����'+Trim(mData_HItem['FShipPactNum'])+'���ĵ��ݣ�'+chr(13)+chr(13)
                           +'ɾ�����ݲ��������ɻָ���ȷ��Ҫɾ����������'),'�ٴξ�����ʾ',MB_ICONINFORMATION+MB_YESNO)=6 then

  begin
    //����ɾ��
    If not DelRd then
    begin
      application.MessageBox('ɾ������ʧ�ܣ�','ϵͳ��ʾ',MB_ICONINFORMATION);
      mdlData.conn.RollbackTrans;
      Exit;
    end;
    mdata_HItem.Close;
    //TB_ref.Click;

  end;
  qry.Free;
end;

procedure TFrm_ShipItem.CancelBtnClick(Sender: TObject);
begin
  inherited;
  L_title.Caption:='��Ŀ��Ϣ';
  Self.Set_Close;
end;

procedure TFrm_ShipItem.TB_OutClick(Sender: TObject);
begin
  inherited;
  ExportToExcel(cxGrid_HItem,True,TRue);
end;

procedure TFrm_ShipItem.FormCreate(Sender: TObject);
begin
  inherited;
  TB_App.Enabled:= mdlData.CheckFrmRights(TFrm_ShipItem.ClassName,'����');
  TB_Edit.Enabled:= mdlData.CheckFrmRights(TFrm_ShipItem.ClassName,'�޸�');
  TB_Del.Enabled:= mdlData.CheckFrmRights(TFrm_ShipItem.ClassName,'ɾ��');
  TB_Prin.Enabled:= mdlData.CheckFrmRights(TFrm_ShipItem.ClassName,'��ӡ');
  TB_Out.Enabled:= mdlData.CheckFrmRights(TFrm_ShipItem.ClassName,'����');

end;

procedure TFrm_ShipItem.FormShow(Sender: TObject);
begin
  inherited;
  TB_Ref.Click;
end;

procedure TFrm_ShipItem.FShipWayPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  mData_HItem.Edit;
  mData_HItem.Post;
  If mData_HItem['FShipWay']=Null then
  begin
    mData_HItem.Edit;
    mData_HItem['FShipWay']:='';
    mData_HItem.Post;
  end;
  try
    qry.SQL.Text:='select distinct FShipWay from T_ShipItem where FAgentID=:FAgentID and FShipWay like :FShipWay order by FShipWay ';
    qry.Parameters.FindParam('FAgentID').value:=UserFDepartmentID;
    qry.Parameters.FindParam('FShipWay').value:='%'+mData_HItem['FShipWay']+'%';
    qry.Open;
  finally
   ;
  end;

  selValue:=select('ѡ�����䷽ʽ','FShipWay','FShipWay','FShipWay','FShipWay',qry);
  If (Length(selValue)>0) then
  begin
    mData_HItem.Edit;
    mData_HItem['FShipWay']:=qry.FieldByName('FShipWay').Value;
    mData_HItem.Post;
  end;


end;

procedure TFrm_ShipItem.FBranchItemNumberPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
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

end.
