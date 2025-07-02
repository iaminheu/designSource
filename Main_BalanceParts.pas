unit Main_BalanceParts;

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
  TFlatPanelUnit, cxLookAndFeelPainters, cxButtons, cxTimeEdit, jpeg;

type
  TFrm_BalanceParts = class(TFrm_GridBass)
    MData: TdxMemData;
    DS_Mdata: TDataSource;
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
    cxGrid: TcxGrid;
    cxGV: TcxGridDBTableView;
    FBalanceName: TcxGridDBColumn;
    cxGL: TcxGridLevel;
    MyTreeView: TTreeView;
    TB_Out: TToolButton;
    FDetail: TcxGridDBColumn;
    FParentNumber: TcxGridDBColumn;
    FBalanceID: TcxGridDBColumn;
    FNumber: TcxGridDBColumn;
    Image3: TImage;
    FBalanceModel: TcxGridDBColumn;
    FUnitName: TcxGridDBColumn;
    FRemark: TcxGridDBColumn;
    Sel: TcxGridDBColumn;
    FDepartmentID: TcxGridDBColumn;
    FDepartmentName: TcxGridDBColumn;
    MDataFParentNumber: TStringField;
    MDataFNumber: TStringField;
    MDataFBalanceName: TStringField;
    MDataFBalanceModel: TStringField;
    MDataFUnitName: TStringField;
    MDataFRemark: TStringField;
    MDataFDetail: TIntegerField;
    MDataFDepartmentName: TStringField;
    MDataFDepartmentID: TIntegerField;
    MDataFBalanceID: TIntegerField;
    FPartsCode: TcxGridDBColumn;
    FPartsName: TcxGridDBColumn;
    MDataFPartsCode: TStringField;
    MDataFPartsName: TStringField;
    MDataFPartsID: TIntegerField;
    FPartsID: TcxGridDBColumn;
    FSollWeight: TcxGridDBColumn;
    FProductClass: TcxGridDBColumn;
    MDataFProductId: TStringField;
    FProductId: TcxGridDBColumn;
    MDataFProductClass: TStringField;
    MDataFSollWeight: TFloatField;
    FProductSort: TcxGridDBColumn;
    MDataFProductSort: TStringField;
    procedure FormResize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TB_EXITClick(Sender: TObject);
    procedure TB_DownClick(Sender: TObject);
    procedure MyTreeViewChange(Sender: TObject; Node: TTreeNode);
    procedure MyTreeViewExpanding(Sender: TObject; Node: TTreeNode;
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
    procedure SelPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    ListItemFNumber,P_th:String;
    P_i:boolean;

    { Private declarations }
    function AddRd:bool;
    function EditRd:bool;
    function DelRd:bool;


  public
    P_state,P_Isleaf:integer;
    { Public declarations }
  end;

var
  Frm_BalanceParts: TFrm_BalanceParts;


implementation

uses FRMDATA, FRMMAIN, COMMON, FrmSelect, ProgBar, PROGRASS;

{$R *.dfm}

procedure TFrm_BalanceParts.Set_Open;
begin
  TB_Ref.Visible:=False;
  TB_App.Visible:=False;
  TB_Edit.Visible:=False;
  TB_Del.Visible:=False;
  MyTreeView.Enabled:=False;

  OKBtn.Visible:=True;
  CancelBtn.Visible:=True;

  cxGV.OptionsData.Editing:=True;

  Sel.Options.Editing:=True;
  FParentNumber.Options.Editing:=True;
  FNumber.Options.Editing:=True;
  FBalanceName.Options.Editing:=True;
  FBalanceModel.Options.Editing:=True;
  FUnitName.Options.Editing:=True;
  FRemark.Options.Editing:=True;
  FSollWeight.Options.Editing:=True;
  FProductClass.Options.Editing:=True;
  FProductSort.Options.Editing:=True;
  FDetail.Options.Editing:=True;

end;

procedure TFrm_BalanceParts.Set_Close;
begin
  TB_Ref.Visible:=True;
  TB_App.Visible:=True;
  TB_Edit.Visible:=True;
  TB_Del.Visible:=True;
  MyTreeView.Enabled:=True;

  OKBtn.Visible:=False;
  CancelBtn.Visible:=False;

  cxGV.OptionsData.Editing:=False;
  
end;



function TFrm_BalanceParts.DelRd: bool;
var
 qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Delete from T_BalanceParts where FBalanceID=:FBalanceID';
    with qry.Parameters do
    begin
      FindParam('FBalanceID').value:=mdata['FBalanceID'];
    end;
    result:=qry.ExecSQL>=1;
  finally
    qry.Free;
  end;
end;

function TFrm_BalanceParts.AddRd: bool;
var
  qry: TADOQuery;

begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  result:=False;

  If mData.RecordCount<=0 then
  begin
    result:=True;
    Exit;
  end;
  try
    qry.SQL.Text:='Insert into T_BalanceParts(FNumber,FParentNumber,FDepartmentID,FBalanceName,FBalanceModel,FUnitName,FSollWeight,FPartsID,FRemark,FProductClass,FProductSort,FDetail) '
                 +'values(:FNumber,:FParentNumber,:FDepartmentID,:FBalanceName,:FBalanceModel,:FUnitName,:FSollWeight,:FPartsID,:FRemark,:FProductClass,:FProductSort,:FDetail)';
     mData.First;

     while not mData.eof do
     begin
       If (mData['FNumber']<>'') and (mData['FBalanceName']<>'') and (mData['FUnitName']<>'') and (mData['FPartsID']<>0) then
       begin
         If qry.Active then qry.Close;
         with qry.Parameters do
         begin
           FindParam('FNumber').value:=mdata['FNumber'];;
           FindParam('FParentNumber').value:=mdata['FParentNumber'];
           FindParam('FDepartmentID').value:=UserFDepartmentID;
           FindParam('FBalanceName').value:=mdata['FBalanceName'];
           FindParam('FBalanceModel').value:=mdata['FBalanceModel'];
           FindParam('FUnitName').value:=mdata['FUnitName'];
           FindParam('FSollWeight').value:=mdata['FSollWeight'];
           FindParam('FPartsID').value:=mdata['FPartsID'];
           FindParam('FRemark').value:=mdata['FRemark'];
           FindParam('FProductClass').value:=mdata['FProductClass'];
           FindParam('FProductSort').value:=mdata['FProductSort'];
           FindParam('FDetail').value:=mdata['FDetail'];
         end;
         result:=qry.ExecSQL>=1;
         if not result then break;
       end;
       mData.Next;
     end;
   finally
     qry.Free;
   end;
end;


function TFrm_BalanceParts.EditRd:bool;
var
  qry: TADOQuery;

begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  result:=False;

  If mData.RecordCount<=0 then
  begin
    result:=True;
    Exit;
  end;

  mData.Edit;
  mData.Post;

  try
    qry.SQL.Text:='Update T_BalanceParts set FNumber=:FNumber,FParentNumber=:FParentNumber,FDepartmentID=:FDepartmentID,FBalanceName=:FBalanceName,'
                 +'FBalanceModel=:FBalanceModel,FUnitName=:FUnitName,FSollWeight=:FSollWeight,'
                 +'FPartsID=:FPartsID,FRemark=:FRemark,FProductClass=:FProductClass,FProductSort=:FProductSort,FDetail=:FDetail where FBalanceID=:FBalanceID';
     mData.First;

     while not mData.eof do
     begin
       If (mData['FNumber']<>'') and (mData['FBalanceName']<>'') and (mData['FUnitName']<>'')  and (mData['FPartsID']<>0) and (mData['FProductClass']<>'') then
       begin
         If qry.Active then qry.Close;
         with qry.Parameters do
         begin
           FindParam('FNumber').value:=mdata['FNumber'];;
           FindParam('FParentNumber').value:=mdata['FParentNumber'];
           FindParam('FDepartmentID').value:=UserFDepartmentID;
           FindParam('FBalanceName').value:=mdata['FBalanceName'];
           FindParam('FBalanceModel').value:=mdata['FBalanceModel'];
           FindParam('FUnitName').value:=mdata['FUnitName'];
           FindParam('FSollWeight').value:=mdata['FSollWeight'];
           FindParam('FPartsID').value:=mdata['FPartsID'];
           FindParam('FRemark').value:=mdata['FRemark'];
           FindParam('FProductClass').value:=mdata['FProductClass'];
           FindParam('FProductSort').value:=mdata['FProductSort'];
           FindParam('FDetail').value:=mdata['FDetail'];
           FindParam('FBalanceID').value:=mdata['FBalanceID'];
          end;
         result:=qry.ExecSQL>=1;
         if not result then break;
       end;
       mData.Next;

     end;
   finally
     qry.Free;
   end;
end;


procedure TFrm_BalanceParts.FormResize(Sender: TObject);
begin
  inherited;
  L_title.Caption:=UserFDepartmentName+'���㲿����Ϣ';
  Self.Caption:=UserFDepartmentName+'���㲿����Ϣ';
 // OKBtn.Left:=StrToInt(FloatToStr(int((PanelBkGnd.Width-OKBtn.Width-CancelBtn.Width-20)/2)));
 // CancelBtn.Left:=StrToInt(FloatToStr(int((PanelBkGnd.Width-OKBtn.Width-CancelBtn.Width-20)/2)))+OKBtn.Width+20;

end;

procedure TFrm_BalanceParts.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=cafree;
  Frm_BalanceParts:=nil;
end;

procedure TFrm_BalanceParts.TB_EXITClick(Sender: TObject);
begin
  inherited;
  self.Close;
end;

procedure TFrm_BalanceParts.TB_DownClick(Sender: TObject);
Var i:Integer;
begin
  If P_i then
  begin
    TB_Down.Caption:='ȡ������';
    cxGV.OptionsData.Editing:=False;
    cxGv.OptionsView.GroupByBox:=False;
    for i:=0 to cxGv.ColumnCount-1 do
    begin
      cxGv.Columns[i].Options.Filtering:=False;
      cxGv.Columns[i].Options.Editing:=False;
      cxGv.Columns[i].Options.Sorting:=False;
    end;
    P_i:=False;
  end
  else
  begin
    TB_Down.Caption:='����';
    cxGV.OptionsData.Editing:=True;
    cxGv.OptionsView.GroupByBox:=True;
    for i:=0 to cxGv.ColumnCount-1 do
    begin
      cxGv.Columns[i].Options.Filtering:=True;
      cxGv.Columns[i].Options.Editing:=True;
      cxGv.Columns[i].Options.Sorting:=True;
    end;
    P_i:=True;
  end;
end;

procedure TFrm_BalanceParts.MyTreeViewChange(Sender: TObject; Node: TTreeNode);
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
    P_Isleaf:=PTree(Node.Data).Isleaf;
    If not MyItemList(qry,Mdata,'V_BalanceParts','FFullNumber',ListItemFNumber,'FFullNumber') then
    begin
      mdata.Open;
      cxGvColumn(cxGv,Mdata);
    end;
    If P_Isleaf=1 then
    begin
      TB_Edit.Enabled:= mdlData.PermissionCheckRights(TFrm_BalanceParts.ClassName,'�޸�');
      TB_Del.Enabled:=mdlData.PermissionCheckRights(TFrm_BalanceParts.ClassName,'ɾ��');
    end
    else
    begin
      TB_Edit.Enabled:=False;
      TB_Del.Enabled:=False;
    end;

  end;

end;

procedure TFrm_BalanceParts.MyTreeViewExpanding(Sender: TObject;
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

  qry.SQL.Text:='Select FNumber, FParentNumber,FName,'
               +'Isleaf from VT_BalanceParts where FParentNumber= '''
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
    with MyTreeView.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('Isleaf').value;
    end;
    qry.Next;
  end;


end;

procedure TFrm_BalanceParts.TB_RefClick(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If not TreeVeiwListWhere(qry,MyTreeView,'VT_BalanceParts',' and FDepartmentID='+IntToStr(UserFDepartmentID) ) then
  begin
    Application.MessageBox(PChar('���ͽṹ��ʾ��������ϵϵͳ������Ա'), '����', MB_OK +MB_ICONSTOP);
  end;

end;

procedure TFrm_BalanceParts.OKBtnClick(Sender: TObject);
var qry: TADOQuery;

begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  mData.Edit;
  mData.Post;

  If (mData['FNumber']='')or (mData['FParentNumber']='') or (mData['FBalanceName']='') or (mData['FUnitName']='')  or (mData['FPartsID']=0)  or (mData['FProductClass']='') then
  begin
    application.MessageBox('�ؼ��ֲ���Ϊ�գ�����������','ϵͳ��ʾ',MB_ICONERROR);
    Exit;
  end;


  If P_state =0 then
  begin
    try
      qry.SQL.Text:='Select * from V_BalanceParts where FNumber=:FNumber and FDepartmentID=:FDepartmentID '
                   +'and FPartsID=:FPartsID';
      qry.Parameters.FindParam('FNumber').Value:=mdata['FNumber'];
      qry.Parameters.FindParam('FDepartmentID').Value:=UserFDepartmentID;
      qry.Parameters.FindParam('FPartsID').Value:=mdata['FPartsID'];
      qry.Open;
      If qry.RecordCount>0 then
      begin
         application.MessageBox('�����ظ�������������','ϵͳ��ʾ',MB_ICONERROR);
         Exit;
      end;
    finally
       ;
    end;
    try
      qry.SQL.Text:='Select * from V_BalanceParts where FBalanceName=:FBalanceName and FBalanceModel=:FBalanceModel and FDepartmentID=:FDepartmentID and FPartsID=:FPartsID';
      qry.Parameters.FindParam('FBalanceName').Value:=mdata['FBalanceName'];
      qry.Parameters.FindParam('FBalanceModel').Value:=mdata['FBalanceModel'];
      qry.Parameters.FindParam('FDepartmentID').Value:=UserFDepartmentID;
      qry.Parameters.FindParam('FPartsID').Value:=mdata['FPartsID'];
      qry.Open;
      If qry.RecordCount>0 then
      begin
         application.MessageBox('���㲿������+��������ظ�������������','ϵͳ��ʾ',MB_ICONERROR);
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



procedure TFrm_BalanceParts.TB_AppClick(Sender: TObject);
var
 qry:TADOquery;
 i,P_FProductId:Integer;
 P_FNumber,P_FParentNumber,P_FDetail,P_FUnitName,P_FProductClass:string;
begin
  P_state :=0;    //����
  L_title.Caption:=UserFDepartmentName+'���㲿����Ϣ����';
  Self.Set_Open;

  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  If (mData.RecordCount=1) and (mdata['FParentNumber']<>'') then
  begin
    try
      qry.SQL.Text:='Select max(FNumber) as maxFNumber from V_BalanceParts where FParentNumber=:FParentNumber and FPartsID=:FPartsID and FDepartmentID=:FDepartmentID';
      qry.Parameters.FindParam('FParentNumber').Value:=mdata['FParentNumber'];
      qry.Parameters.FindParam('FPartsID').Value:=mdata['FPartsID'];
      qry.Parameters.FindParam('FDepartmentID').Value:=UserFDepartmentID;
      qry.Open;
    finally
       ;
    end;
    If qry.RecordCount>0 then
    begin
      If pos('.',qry.FieldByName('maxFNumber').Value)>1 then
         i:=StrToInt(Copy(qry.FieldByName('maxFNumber').Value,LastDelimiter('.',qry.FieldByName('maxFNumber').Value)+1,2))+1
     else
        i:=StrToInt(qry.FieldByName('maxFNumber').Value)+1
    end
    else
       i:=1;


    P_FNumber:=mData['FNumber'];
    P_FParentNumber:=mData['FParentNumber'];
    P_FDetail:=mData['FDetail'];
    P_FUnitName:=mData['FUnitName'];
    P_FProductClass:=mData['FProductClass'];
    P_FProductId:=mData['FProductId'];

    mData.Edit;
    mData['FNumber']:=P_FParentNumber+'.'+Format('%.2d',[i]);
    mData['FParentNumber']:=P_FParentNumber;
    mData['FBalanceName']:='';
    mData['FBalanceModel']:='';
    mData['FDetail']:=P_FDetail;
    mData['FUnitName']:=P_FUnitName;
    mData['FProductClass']:=P_FProductClass;
    mData['FProductId']:=P_FProductId;
    mData.Post;
  end
  else
  begin
    mData.Close;
    mData.Open;
    mData.Append;
    mData['FDetail']:=1;
    mData['FProductId']:=0;
    mData['FSollWeight']:=0.0000;
    mData['FProductClass']:='����Ʒ';
    mData['FProductSort']:='����Ʒ';
    mData['FDepartmentID']:=UserFDepartmentID;
    mData['FDepartmentname']:=UserFDepartmentName;
    mData.Edit;
  end;

end;

procedure TFrm_BalanceParts.TB_EditClick(Sender: TObject);
var
  qry:TADOQuery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  P_state :=1;  //�޸�
  If (mdata.RecordCount<1) then
    Exit;
  try
    qry.SQL.Text:='Select * from V_BalancePrice where FBalanceID=:FBalanceID';
    qry.Parameters.FindParam('FBalanceID').Value:=mdata['FBalanceID'];
    qry.Open;
  finally
     ;
  end;
  if qry.RecordCount>0 then
  begin
    application.MessageBox(Pchar('������'+Trim(Mdata['FBalanceName'])+'����'+Trim(Mdata['FBalanceModel'])+'�������ò������޸ģ�'),'ϵͳ��ʾ',MB_ICONINFORMATION);
    Exit;
  end;

  L_title.Caption:=UserFDepartmentName+'���㲿�������޸�';
  Self.Set_Open;

end;

procedure TFrm_BalanceParts.TB_DelClick(Sender: TObject);
var
  qry:TADOQuery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If (mdata.RecordCount<1) then
    Exit;

  try
    qry.SQL.Text:='Select * from V_WorkPrice where FBalanceID=:FBalanceID';
    qry.Parameters.FindParam('FBalanceID').Value:=mdata['FBalanceID'];
    qry.Open;
  finally
     ;
  end;
  if qry.RecordCount>0 then
  begin
    application.MessageBox(Pchar('������'+Trim(Mdata['FBalanceName'])+'����'+Trim(Mdata['FBalanceModel'])+'�������ò�����ɾ����'),'ϵͳ��ʾ',MB_ICONINFORMATION);
    Exit;
  end;



  If application.MessageBox(Pchar('���棺�Ƿ�ɾ������'+Trim(Mdata['FBalanceName'])+'����'+Trim(Mdata['FBalanceModel'])+'������Ϣ��'+chr(13)+chr(13)
                           +'ɾ�����ݲ��������ɻָ���ȷ��Ҫɾ����������'),'������ʾ',MB_ICONINFORMATION+MB_YESNO)=6 then
  If application.MessageBox(Pchar('���棺�Ƿ�ɾ������'+Trim(Mdata['FBalanceName'])+'����'+Trim(Mdata['FBalanceModel'])+'������Ϣ��'+chr(13)+chr(13)
                           +'ɾ�����ݲ��������ɻָ���ȷ��Ҫɾ����������'),'�ٴξ�����ʾ',MB_ICONINFORMATION+MB_YESNO)=6 then

  begin
    //����ɾ��
    If not DelRd then
    begin
      application.MessageBox('ɾ������ʧ�ܣ�','ϵͳ��ʾ',MB_ICONINFORMATION);
      mdlData.conn.RollbackTrans;
      Exit;
    end;
  end;
  mdata.Close;
  qry.Free;

end;

procedure TFrm_BalanceParts.CancelBtnClick(Sender: TObject);
begin
  inherited;
  L_title.Caption:=UserFDepartmentName+'���㲿����Ϣ';
  Self.Set_Close;
end;

procedure TFrm_BalanceParts.TB_OutClick(Sender: TObject);
begin
  inherited;
  ExportToExcel(cxGrid,True,TRue);
end;

procedure TFrm_BalanceParts.FormCreate(Sender: TObject);
begin
  inherited;
  TB_App.Enabled:= mdlData.PermissionCheckRights(TFrm_BalanceParts.ClassName,'����');
  TB_Prin.Enabled:= mdlData.PermissionCheckRights(TFrm_BalanceParts.ClassName,'��ӡ');
  TB_Out.Enabled:= mdlData.PermissionCheckRights(TFrm_BalanceParts.ClassName,'��ӡ');

end;

procedure TFrm_BalanceParts.FormShow(Sender: TObject);
begin
  TB_Ref.Click;
end;

procedure TFrm_BalanceParts.SelPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var selValue,aa : string;
    qry: TADOQuery;
    i:Integer;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Select * from VT_ProductParts where FDepartmentID=:FDepartmentID order by FNumber ';
    qry.Parameters.FindParam('FDepartmentID').Value:=UserFDepartmentID;
    qry.Open;
  finally
     ;
  end;
  SelValue:=select('ѡ���ϼ�����','FNumber','FParentNumber','FNumber','FName',qry);
  If (Length(selValue)>0) then
  begin
    mdata.Edit;
    mdata['FParentNumber']:=qry.FieldByName('FPartsCode').Value;
    mdata['FPartsID']:=qry.FieldByName('FPartsID').Value;
    mdata['FPartsCode']:=qry.FieldByName('FPartsCode').Value;
    mdata['FPartsName']:=qry.FieldByName('FPartsName').Value;
    mdata['FProductID']:=qry.FieldByName('FProductID').Value;
    mdata.Post;
    try
      qry.SQL.Text:='Select isnull(max(FNumber),''0'') as maxFNumber from V_BalanceParts '
                   +'where FDepartmentID=:FDepartmentID and FParentNumber=:FParentNumber and FProductID=:FProductID';
      qry.Parameters.FindParam('FDepartmentID').Value:=UserFDepartmentID;
      qry.Parameters.FindParam('FParentNumber').Value:=mdata['FParentNumber'];
      qry.Parameters.FindParam('FProductID').Value:=mdata['FProductID'];
      qry.Open;
    finally
       ;
    end;
    aa:=qry.FieldByName('maxFNumber').Value;
    If qry.RecordCount>0 then
       i:=StrToInt(Copy(qry.FieldByName('maxFNumber').Value,LastDelimiter('.',qry.FieldByName('maxFNumber').Value)+1,2))+1
    else
       i:=1;
    mData.Edit;
    mData['FNumber']:=mdata['FParentNumber']+'.'+Format('%.2d',[i]);
    mdata.Post;
  end
  else
    application.MessageBox('��ѡ����ϸ��','ϵͳ��ʾ',MB_ICONINFORMATION);
end;

end.
