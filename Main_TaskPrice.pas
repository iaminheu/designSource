unit Main_TaskPrice;

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
  cxSpinEdit;

type
  TFrm_TaskPrice = class(TFrm_GridBass)
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
    FTaskPartsName: TcxGridDBColumn;
    cxGL: TcxGridLevel;
    MyTreeView: TTreeView;
    TB_Out: TToolButton;
    FParentNumber: TcxGridDBColumn;
    FWorkID: TcxGridDBColumn;
    FNumber: TcxGridDBColumn;
    FTaskPartsModel: TcxGridDBColumn;
    FTaskPartsUnit: TcxGridDBColumn;
    FRemark: TcxGridDBColumn;
    Sel: TcxGridDBColumn;
    FColdPrice: TcxGridDBColumn;
    FPlatePrice: TcxGridDBColumn;
    FBarPrice: TcxGridDBColumn;
    FBalanceID: TcxGridDBColumn;
    FWorkDate: TcxGridDBColumn;
    FProductName: TcxGridDBColumn;
    FPunchPrice: TcxGridDBColumn;
    FDrllPrice: TcxGridDBColumn;
    FCutPrice: TcxGridDBColumn;
    Panel2: TPanel;
    Label1: TLabel;
    E_FTaskPriceDate: TcxButtonEdit;
    Label2: TLabel;
    E_FProductID: TcxButtonEdit;
    E_FProductName: TcxButtonEdit;
    FTaskPrice: TcxGridDBColumn;
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
    procedure TB_PrinClick(Sender: TObject);
    procedure E_FTaskPriceDatePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure E_FProductNamePropertiesButtonClick(Sender: TObject;
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
  Frm_TaskPrice: TFrm_TaskPrice;


implementation

uses FRMDATA, FRMMAIN, COMMON, FrmSelect, ProgBar, PROGRASS;

{$R *.dfm}
procedure TFrm_TaskPrice.Set_Open;
begin
  TB_Ref.Visible:=False;
  TB_App.Visible:=False;
  TB_Edit.Visible:=False;
  TB_Del.Visible:=False;
  MyTreeView.Enabled:=False;

  OKBtn.Visible:=True;
  CancelBtn.Visible:=True;
  cxGV.OptionsData.Editing:=True;

  E_FTaskPriceDate.Enabled:=True;
  E_FProductName.Enabled:=True;
  Sel.Options.Editing:=True;
  FColdPrice.Options.Editing:=True;
  FPlatePrice.Options.Editing:=True;
  FBarPrice.Options.Editing:=True;
  FPunchPrice.Options.Editing:=True;
  FDrllPrice.Options.Editing:=True;
  FCutPrice.Options.Editing:=True;

end;

procedure TFrm_TaskPrice.Set_Close;
begin
  TB_Ref.Visible:=True;
  TB_App.Visible:=True;
  TB_Edit.Visible:=True;
  TB_Del.Visible:=True;
  MyTreeView.Enabled:=True;

  OKBtn.Visible:=False;
  CancelBtn.Visible:=False;
  cxGV.OptionsData.Editing:=False;
  E_FTaskPriceDate.Enabled:=False;

end;

function TFrm_TaskPrice.DelRd: bool;
var
 qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Delete from T_TaskPrice where FTaskPriceID=:FTaskPriceID';
    with qry.Parameters do
    begin
      FindParam('FTaskPriceID').value:=mdata['FTaskPriceID'];
    end;
    result:=qry.ExecSQL>=1;
  finally
    qry.Free;
  end;
end;

function TFrm_TaskPrice.AddRd: bool;
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
    qry.SQL.Text:='Insert into T_TaskPrice(FTaskPartsID,FTaskPriceDate, FColdPrice, FPlatePrice,FBarPrice,FPunchPrice,FDrllPrice,FCutPrice) '
                 +'values(:FTaskPartsID, :FTaskPriceDate,:FColdPrice, :FPlatePrice,:FBarPrice,:FPunchPrice,:FDrllPrice, :FCutPrice)';
     mData.First;

     while not mData.eof do
     begin
       If (mData['FTaskPartsID']<>0)  then
       begin
         If qry.Active then qry.Close;
         with qry.Parameters do
         begin
           FindParam('FTaskPartsID').value:=mdata['FTaskPartsID'];
           FindParam('FTaskPriceDate').value:=Trim(E_FTaskPriceDate.Text);
           FindParam('FColdPrice').value:=mdata['FColdPrice'];
           FindParam('FPlatePrice').value:=mdata['FPlatePrice'];
           FindParam('FBarPrice').value:=mdata['FBarPrice'];
           FindParam('FPunchPrice').value:=mdata['FPunchPrice'];
           FindParam('FDrllPrice').value:=mdata['FDrllPrice'];
           FindParam('FCutPrice').value:=mdata['FCutPrice'];
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


function TFrm_TaskPrice.EditRd:bool;
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
    qry.SQL.Text:='Update T_TaskPrice set FTaskPartsID=:FTaskPartsID,FTaskPriceDate=:FTaskPriceDate,FColdPrice=:FColdPrice,'
                 +'FPlatePrice=:FPlatePrice,FBarPrice=:FBarPrice,FPunchPrice=:FPunchPrice,FDrllPrice=:FDrllPrice,'
                 +'FCutPrice=:FCutPrice where FTaskPriceID=:FTaskPriceID';
     mData.First;

     while not mData.eof do
     begin
       If (mData['FTaskPartsID']<>0)  then
       begin
         If qry.Active then qry.Close;
         with qry.Parameters do
         begin
           FindParam('FTaskPartsID').value:=mdata['FTaskPartsID'];
           FindParam('FTaskPriceDate').value:=Trim(E_FTaskPriceDate.Text);
           FindParam('FColdPrice').value:=mdata['FColdPrice'];
           FindParam('FPlatePrice').value:=mdata['FPlatePrice'];
           FindParam('FBarPrice').value:=mdata['FBarPrice'];
           FindParam('FPunchPrice').value:=mdata['FPunchPrice'];
           FindParam('FDrllPrice').value:=mdata['FDrllPrice'];
           FindParam('FCutPrice').value:=mdata['FCutPrice'];
           FindParam('FTaskPriceID').value:=mdata['FTaskPriceID'];
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


procedure TFrm_TaskPrice.FormResize(Sender: TObject);
begin
  inherited;
  L_title.Caption:=UserFDepartmentName+'�ӹ�����';
  Self.Caption:=UserFDepartmentName+'�ӹ�����';

end;

procedure TFrm_TaskPrice.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=cafree;
  Frm_TaskPrice:=nil;
end;

procedure TFrm_TaskPrice.TB_EXITClick(Sender: TObject);
begin
  inherited;
  self.Close;
end;

procedure TFrm_TaskPrice.TB_DownClick(Sender: TObject);
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

procedure TFrm_TaskPrice.MyTreeViewChange(Sender: TObject; Node: TTreeNode);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.EnableBCD:=False;//С��λ��>4
  If Node = nil then Exit;
  with PTree(Node.Data)^ do
  begin
    ListItemFNumber:=PTree(Node.Data).FNumber;
    P_th:=PTree(Node.Data).Caption;
    P_Isleaf:=PTree(Node.Data).Isleaf;
    If not MyItemList(qry,Mdata,'V_TaskPrice','FFullNumber',ListItemFNumber,'FFullNumber') then
    begin
      mdata.Open;
      cxGvColumn(cxGv,Mdata);
    end;
    If mdata.RecordCount>0 then
    begin
      E_FTaskPriceDate.Text:= mdata['FTaskPriceDate'];
    end;
    If P_Isleaf=1 then
    begin
      TB_Edit.Enabled:= mdlData.CheckFrmRights(TFrm_TaskPrice.ClassName,'�޸�');
      TB_Del.Enabled:=mdlData.CheckFrmRights(TFrm_TaskPrice.ClassName,'ɾ��');
    end
    else
    begin
      TB_Edit.Enabled:=False;
      TB_Del.Enabled:=False;
    end;
  end;

end;

procedure TFrm_TaskPrice.MyTreeViewExpanding(Sender: TObject;
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
               +'Isleaf from VT_TaskPrice where FParentNumber= '''
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

procedure TFrm_TaskPrice.TB_RefClick(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If not TreeVeiwListWhere(qry,MyTreeView,'VT_TaskPrice',' and FDepartmentID='+IntToStr(UserFDepartmentID) ) then
  begin
    Application.MessageBox(PChar('���ͽṹ��ʾ��������ϵϵͳ������Ա'), '����', MB_OK +MB_ICONSTOP);
  end;

end;

procedure TFrm_TaskPrice.OKBtnClick(Sender: TObject);
var qry: TADOQuery;

begin
  cxGV.OptionsData.Editing:=True;
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  mData.Edit;
  mData.Post;


  If P_state =0 then
  begin
    try
      qry.SQL.Text:='Select * from V_TaskPrice where FDepartmentID=:FDepartmentID and FTaskPartsID=:FTaskPartsID and FTaskPriceDate=:FTaskPriceDate';
      qry.Parameters.FindParam('FDepartmentID').Value:=UserFDepartmentID;
      qry.Parameters.FindParam('FTaskPartsID').Value:=mdata['FTaskPartsID'];
      qry.Parameters.FindParam('FTaskPriceDate').Value:=Trim(E_FTaskPriceDate.Text);
      qry.Open;
      If qry.RecordCount>0 then
      begin
         application.MessageBox('�˼ӹ�ִ�м����ڵĲ����Ѵ��ڣ�����������','ϵͳ��ʾ',MB_ICONERROR);
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
        //mdata.Close;
        TB_App.Click ;
      end
      else
      begin
        inherited;
        E_FTaskPriceDate.Enabled:=False;
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



procedure TFrm_TaskPrice.TB_AppClick(Sender: TObject);
var
 qry:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  P_state :=0;
  L_title.Caption:=UserFDepartmentName+'�ӹ�������������';
  If (mData.RecordCount=0) then
  begin
    try
      qry.SQL.Text:='Select * from V_TaskPrice where FTaskPriceID=0 and FDepartmentID=:FDepartmentID';
      qry.Parameters.FindParam('FDepartmentID').Value:=UserFDepartmentID;
      qry.Open;
    finally
       ;
    end;
    mdata.CopyFromDataSet(qry);
    mdata.Active:=True;
  end;
  Self.Set_Open;

end;

procedure TFrm_TaskPrice.TB_EditClick(Sender: TObject);
var
 qry:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  P_state :=1;        //�޸�
  If (mdata.RecordCount<1) then
    Exit;
  If mdata.RecordCount<>1 then
  begin
    application.MessageBox('ֻ�����޸ĵ�����¼��������ѡ��!','ϵͳ��ʾ',MB_ICONINFORMATION);
    Exit;
  end;
  If mdata.RecordCount=0 then
  begin
    application.MessageBox('�޼�¼���޸ģ�������ѡ��!','ϵͳ��ʾ',MB_ICONINFORMATION);
    Exit;
  end;

 { try
    qry.SQL.Text:='Select * from V_BalancePrice where FBalanceID=:FBalanceID and FWorkDate=:FWorkDate';
    qry.Parameters.FindParam('FBalanceID').Value:=mdata['FBalanceID'];
    qry.Parameters.FindParam('FWorkDate').Value:=Trim(E_FAgentDate.Text);
    qry.Open;
  finally
     ;
  end;
  if qry.RecordCount>0 then
  begin
    application.MessageBox(Pchar('������'+Trim(Mdata['FBalanceName'])+'����'+Trim(Mdata['FBalanceModel'])+'����'+Trim(Mdata['FWorkDate'])+'�������ò������޸ģ�'),'ϵͳ��ʾ',MB_ICONINFORMATION);
    Exit;
  end;
  }
  L_title.Caption:=UserFDepartmentName+'��Э���ܵ��������޸�';
  Self.Set_Open;

end;

procedure TFrm_TaskPrice.TB_DelClick(Sender: TObject);
var
  qry:TADOQuery;

begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If (mdata.RecordCount<1) then
    Exit;

  If mdata.RecordCount<>1 then
  begin
    application.MessageBox('ֻ����ɾ��������¼��������ѡ��!','ϵͳ��ʾ',MB_ICONINFORMATION);
    Exit;
  end;
  If mdata.RecordCount=0 then
  begin
    application.MessageBox('�޼�¼��ɾ����������ѡ��!','ϵͳ��ʾ',MB_ICONINFORMATION);
    Exit;
  end;
  {
  try
    qry.SQL.Text:='Select * from V_BalancePrice where FWorkID=:FWorkID';
    qry.Parameters.FindParam('FWorkID').Value:=mdata['FWorkID'];
    qry.Open;
  finally
     ;
  end;
  if qry.RecordCount>0 then
  begin
    application.MessageBox(Pchar('������'+Trim(Mdata['FTaskPartsName'])+'����'+Trim(Mdata['FTaskPartsModel'])+'����'+Trim(Mdata['FTaskPriceDate'])+'�������ò�����ɾ����'),'ϵͳ��ʾ',MB_ICONINFORMATION);
    Exit;
  end;

  If application.MessageBox(Pchar('���棺�Ƿ�ɾ������'+Trim(Mdata['FTaskPartsName'])+'����'+Trim(Mdata['FTaskPartsModel'])+'����'+Trim(Mdata['FTaskPriceDate'])+'������Ϣ��'+chr(13)+chr(13)
                           +'ɾ�����ݲ��������ɻָ���ȷ��Ҫɾ����������'),'������ʾ',MB_ICONINFORMATION+MB_YESNO)=6 then
  If application.MessageBox(Pchar('���棺�Ƿ�ɾ������'+Trim(Mdata['FTaskPartsName'])+'����'+Trim(Mdata['FTaskPartsModel'])+'����'+Trim(Mdata['FTaskPriceDate'])+'������Ϣ��'+chr(13)+chr(13)
                           +'ɾ�����ݲ��������ɻָ���ȷ��Ҫɾ����������'),'�ٴξ�����ʾ',MB_ICONINFORMATION+MB_YESNO)=6 then

  begin }
    //����ɾ��
    If not DelRd then
    begin
      application.MessageBox('ɾ������ʧ�ܣ�','ϵͳ��ʾ',MB_ICONINFORMATION);
      mdlData.conn.RollbackTrans;
      Exit;
    end;
  //end;
  mdata.Close;
  qry.Free;

end;

procedure TFrm_TaskPrice.CancelBtnClick(Sender: TObject);
begin
  inherited;
  L_title.Caption:=UserFDepartmentName+'��Э���ܵ���';
  mdata.Close;
  Self.Set_Close;
end;

procedure TFrm_TaskPrice.TB_OutClick(Sender: TObject);
begin
  inherited;
  ExportToExcel(cxGrid,True,TRue);
end;

procedure TFrm_TaskPrice.FormCreate(Sender: TObject);
begin
  inherited;
  TB_App.Enabled:= mdlData.CheckFrmRights(TFrm_TaskPrice.ClassName,'����');
  TB_Prin.Enabled:= mdlData.CheckFrmRights(TFrm_TaskPrice.ClassName,'��ӡ');
  TB_Out.Enabled:= mdlData.CheckFrmRights(TFrm_TaskPrice.ClassName,'��ӡ');

end;

procedure TFrm_TaskPrice.FormShow(Sender: TObject);
begin
  TB_Ref.Click;
end;

procedure TFrm_TaskPrice.SelPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  try
    qry.SQL.Text:='Select * from VT_TaskParts where FDepartmentID=:FDepartmentID order by FNumber';
    qry.Parameters.FindParam('FDepartmentID').Value:=UserFDepartmentID;
    qry.Open;
  finally
     ;
  end;
  selValue:=select('��ѡ�񲿼�����','FNumber','FParentNumber','FNumber','FName',qry);
  If (Length(selValue)>0) and (qry.FieldByName('IsLeaf').Value<>0) then
  begin
    mdata.Edit;
    mdata['FNumber']:=qry.FieldByName('FNumber').AsString;
    mdata['FParentNumber']:=qry.FieldByName('FParentNumber').AsString;
    mdata['FTaskPartsName']:=qry.FieldByName('FTaskPartsName').AsString;
    mdata['FTaskPartsModel']:=qry.FieldByName('FTaskPartsModel').AsString;
    mdata['FTaskPartsUnit']:=qry.FieldByName('FTaskPartsUnit').AsString;
    mdata['FTaskPartsID']:=qry.FieldByName('FTaskPartsID').AsString;
    mdata.Post;
  end;
end;

procedure TFrm_TaskPrice.TB_PrinClick(Sender: TObject);
begin
  inherited;
  FrReport.LoadFromFile(ExtractFileDir(Application.ExeName)+'\Report_DesignBOM_WorkPrice.frf');
  FrReport.ShowReport;
end;

procedure TFrm_TaskPrice.E_FTaskPriceDatePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var  qry,qry1: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry1:=TADOQuery.Create(Self);
  qry1.ConnectionString:=mdlData.ReadConnStr;
  If Trim(E_FTaskPriceDate.Text)='' then
  begin
    application.MessageBox('�������ڲ���Ϊ�գ�����������','ϵͳ��ʾ',MB_ICONERROR);
    Exit;
  end;

  try
    qry.SQL.Text:='select * from V_TaskPrice where FDepartmentID=:FDepartmentID and FProductID=:FProductID and FTaskPriceDate=:FTaskPriceDate';
    qry.Parameters.FindParam('FDepartmentID').Value:=UserFDepartmentID;
    qry.Parameters.FindParam('FProductID').Value:=E_FProductID.EditValue;
    qry.Parameters.FindParam('FTaskPriceDate').Value:=Trim(E_FTaskPriceDate.Text);
    qry.Open;
  finally
     ;
  end;
  If qry.RecordCount>0 then
  begin
    mdata.Edit;
    mdata.Append;
    mdata.Post;
  end
  else
  begin
    try
      qry1.SQL.Text:='Select FTaskPartsID,FNumber,FTaskPartsName,FTaskPartsModel,FTaskPartsUnit,'''' as Sel,FTaskPartsRemark,'
                    +'cast(''0.000000'' as Float(18,6)) as FColdPrice,cast(''0.000000'' as Float(18,6)) as FPlatePrice,'
                    +'cast(''0.000000'' as Float(18,6)) FBarPrice,cast(''0.000000'' as Float(18,6)) as FPunchPrice,'
                    +'cast(''0.000000'' as Float(18,6)) FDrllPrice,cast(''0.000000'' as Float(18,6)) as FCutPrice '
                    +' from V_TaskParts where FDepartmentID=:FDepartmentID and FProductID=:FProductID';
      qry1.Parameters.FindParam('FDepartmentID').Value:=UserFDepartmentID;
      qry1.Parameters.FindParam('FProductID').Value:=E_FProductID.EditValue;
      qry1.Open;
    finally
       ;
    end;
    mdata.CopyFromDataSet(qry1);
    mdata.Active:=True;
  end;

end;

procedure TFrm_TaskPrice.E_FProductNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='select distinct FProductID,FProductName from T_Product order by FProductName';
    qry.Open;
  finally
     ;
  end;
  selValue:=select('��ѡ���Ʒ���','FProductName','FProductName','FProductName','FProductName',qry);
  If Length(selValue)>0 then
  begin
    E_FProductID.Text:=qry.FieldByName('FProductID').AsString;
    E_FProductName.Text:=qry.FieldByName('FProductName').AsString;
  end;

end;

end.
