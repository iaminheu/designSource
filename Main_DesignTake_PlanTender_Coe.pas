unit Main_DesignTake_PlanTender_Coe;

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
  jpeg, cxLookAndFeelPainters, cxButtons, cxMemo, Menus, ActnList;

type
    TFrm_DesignTake_PlanTender_Coe = class(TFrm_GridBass)
    ImageList: TImageList;
    frReport: TfrReport;
    frDBDataSet: TfrDBDataSet;
    PC_1: TRzPageControl;
    TS_Order: TRzTabSheet;
    ToolBar2: TToolBar;
    TB_App: TToolButton;
    TB_Edit: TToolButton;
    TB_Del: TToolButton;
    TB_Ref: TToolButton;
    TB_Out: TToolButton;
    ToolButton14: TToolButton;
    TB_Down: TToolButton;
    TB_Print: TToolButton;
    ToolButton17: TToolButton;
    TB_EXIT: TToolButton;
    Image4: TImage;
    RzSizePanel1: TRzSizePanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Bevel2: TBevel;
    MData: TdxMemData;
    DS_Mdata: TDataSource;
    TB_Audit: TToolButton;
    PopupMenu1: TPopupMenu;
    N_Qry: TMenuItem;
    N_All: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N_FactDate: TMenuItem;
    N_Invoice: TMenuItem;
    N_App: TMenuItem;
    N_Edit: TMenuItem;
    N_Del: TMenuItem;
    N_Out: TMenuItem;
    N_Ref: TMenuItem;
    N_Print: TMenuItem;
    N_Audit: TMenuItem;
    N_Audit_N: TMenuItem;
    N_Exit: TMenuItem;
    DS_Mdata_M: TDataSource;
    MData_M: TdxMemData;
    actionList: TActionList;
    Act_App: TAction;
    Act_Edit: TAction;
    Act_Del: TAction;
    Act_Out: TAction;
    Act_Audit: TAction;
    Act_Save: TAction;
    Act_Status: TAction;
    TB_Submit: TToolButton;
    TB_Check: TToolButton;
    TB_PushDown: TToolButton;
    Act_Submit: TAction;
    Act_Check: TAction;
    Act_PushDown: TAction;
    Act_SetOpen: TAction;
    Act_SetClose: TAction;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    cxGrid_M: TcxGrid;
    cxGV_M: TcxGridDBTableView;
    FPlanTenderNum_M: TcxGridDBColumn;
    FPlanTenderDate_M: TcxGridDBColumn;
    FPlanTenderReMark_M: TcxGridDBColumn;
    FPlanTenderWrite_M: TcxGridDBColumn;
    FPlanTenderWriteDate_M: TcxGridDBColumn;
    FPlanTenderAudit_M: TcxGridDBColumn;
    FPlanTenderAuditDate_M: TcxGridDBColumn;
    FPlanTenderID_M: TcxGridDBColumn;
    cxGL_M: TcxGridLevel;
    Label10: TLabel;
    FPlanTenderNo_M: TcxGridDBColumn;
    Act_Set_MaxNum: TAction;
    Act_Set_MaxID: TAction;
    PageControl5: TPageControl;
    c: TTabSheet;
    TS_Write: TTabSheet;
    MyTreeView: TTreeView;
    MyTreeView_2: TTreeView;
    ToolBar1: TToolBar;
    TB_Ref_2: TcxButton;
    Act_Ref_2: TAction;
    Act_Ref_1: TAction;
    ToolBar4: TToolBar;
    cxButton1: TcxButton;
    RSP_List: TRzSizePanel;
    PageControl2: TPageControl;
    TabSheet3: TTabSheet;
    cxGrid: TcxGrid;
    cxGV: TcxGridDBTableView;
    FOrderListNum: TcxGridDBColumn;
    FPlanTenderNum: TcxGridDBColumn;
    FPlanTenderDate: TcxGridDBColumn;
    FPlanTenderListDate: TcxGridDBColumn;
    FNumber: TcxGridDBColumn;
    FK3Name: TcxGridDBColumn;
    FK3Model: TcxGridDBColumn;
    FK3UnitName: TcxGridDBColumn;
    FAskQry: TcxGridDBColumn;
    FOrderQry: TcxGridDBColumn;
    FPlanTenderOrder: TcxGridDBColumn;
    FPlanTenderOrderID: TcxGridDBColumn;
    FOrderPrice: TcxGridDBColumn;
    FTaxRate: TcxGridDBColumn;
    FOrderAmount: TcxGridDBColumn;
    FSupplierName: TcxGridDBColumn;
    FPaymentMode: TcxGridDBColumn;
    FOrderNum: TcxGridDBColumn;
    FOrderListReMark: TcxGridDBColumn;
    FOrderDate: TcxGridDBColumn;
    FPlanTenderListReMark: TcxGridDBColumn;
    FClientShortName: TcxGridDBColumn;
    FBranchFileNo: TcxGridDBColumn;
    sumFOrderAmount: TcxGridDBColumn;
    FPrecastDate: TcxGridDBColumn;
    FFactDate: TcxGridDBColumn;
    FF: TcxGridDBColumn;
    FInvoice: TcxGridDBColumn;
    FStatusNotes: TcxGridDBColumn;
    FOrderStatus: TcxGridDBColumn;
    FTakeListID: TcxGridDBColumn;
    FItemID: TcxGridDBColumn;
    FSupplierID: TcxGridDBColumn;
    cxGL: TcxGridLevel;
    OKBtn: TcxButton;
    CancelBtn: TcxButton;
    procedure FormResize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TB_EXIT1Click(Sender: TObject);
    procedure TB_DownClick(Sender: TObject);
    procedure TB_EXITClick(Sender: TObject);
    procedure OKBtnClick(Sender: TObject);
    procedure CancelBtnClick(Sender: TObject);
    procedure MyTreeViewExpanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure MyTreeViewChange(Sender: TObject; Node: TTreeNode);
    procedure TB_RefClick(Sender: TObject);
    procedure MDataBeforePost(DataSet: TDataSet);
    procedure TB_EditClick(Sender: TObject);
    procedure cxGrid1DBTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure TB_OutClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FOrderQryPropertiesEditValueChanged(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N_AuditClick(Sender: TObject);
    procedure N_Audit_NClick(Sender: TObject);
    procedure N_QryClick(Sender: TObject);
    procedure Act_EditExecute(Sender: TObject);
    procedure Act_AuditExecute(Sender: TObject);
    procedure Act_StatusExecute(Sender: TObject);
    procedure Act_SubmitExecute(Sender: TObject);
    procedure Act_CheckExecute(Sender: TObject);
    procedure Act_PushDownExecute(Sender: TObject);
    procedure cxGV_MCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure FPaymentMode_MPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure Act_SetOpenExecute(Sender: TObject);
    procedure Act_SetCloseExecute(Sender: TObject);
    procedure FSupplier_MPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxGV_MDblClick(Sender: TObject);
    procedure MyTreeView_2Expanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure MyTreeView_2Change(Sender: TObject; Node: TTreeNode);
    procedure Act_Ref_1Execute(Sender: TObject);
    procedure FSupplierNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FPaymentModePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure Act_AppExecute(Sender: TObject);

  private
    P_Isleaf:Integer;



  public
    { Public declarations }
  end;

var
  Frm_DesignTake_PlanTender_Coe: TFrm_DesignTake_PlanTender_Coe;
implementation

uses FRMDATA, COMMON, FrmSelect, ProgBar, PROGRASS;

{$R *.dfm}


procedure TFrm_DesignTake_PlanTender_Coe.FormResize(Sender: TObject);
begin
  inherited;
  TB_Ref.Click;
  L_title.Caption:=UserFDepartmentName+'�б�ȷ��';
  Self.Caption:=UserFDepartmentName+'�б�ȷ��';
end;

procedure TFrm_DesignTake_PlanTender_Coe.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=cafree;
  Frm_DesignTake_PlanTender_Coe:=nil;
end;

procedure TFrm_DesignTake_PlanTender_Coe.TB_EXIT1Click(Sender: TObject);
begin
  inherited;
  self.Close;
end;

procedure TFrm_DesignTake_PlanTender_Coe.TB_DownClick(Sender: TObject);
Var i:Integer;
begin
  If P_i then
  begin
    TB_Down.Caption:='ȡ������';
    cxGV.OptionsData.Editing:=False;
    cxGv.OptionsView.GroupByBox:=False;
    cxGV_M.OptionsData.Editing:=False;
    cxGv_M.OptionsView.GroupByBox:=False;

    for i:=0 to cxGv.ColumnCount-1 do
    begin
      cxGv.Columns[i].Options.Filtering:=False;
      cxGv.Columns[i].Options.Editing:=False;
      cxGv.Columns[i].Options.Sorting:=False;
    end;
    for i:=0 to cxGv_M.ColumnCount-1 do
    begin
      cxGv_M.Columns[i].Options.Filtering:=False;
      cxGv_M.Columns[i].Options.Editing:=False;
      cxGv_M.Columns[i].Options.Sorting:=False;
    end;

    Panel_down.Visible:=False;
    P_i:=False;
  end
  else
  begin
    TB_Down.Caption:='����';
    cxGV.OptionsData.Editing:=True;
    cxGv.OptionsView.GroupByBox:=True;
    cxGV_M.OptionsData.Editing:=True;
    cxGv_M.OptionsView.GroupByBox:=True;

    for i:=0 to cxGv.ColumnCount-1 do
    begin
      cxGv.Columns[i].Options.Filtering:=True;
      cxGv.Columns[i].Options.Editing:=True;
      cxGv.Columns[i].Options.Sorting:=True;
    end;
    for i:=0 to cxGv_M.ColumnCount-1 do
    begin
      cxGv_M.Columns[i].Options.Filtering:=True;
      cxGv_M.Columns[i].Options.Editing:=True;
      cxGv_M.Columns[i].Options.Sorting:=True;
    end;
    Panel_down.Visible:=True;
    P_i:=True;
  end;
end;

procedure TFrm_DesignTake_PlanTender_Coe.TB_EXITClick(Sender: TObject);
begin
  inherited;
  self.Close;

end;

procedure TFrm_DesignTake_PlanTender_Coe.OKBtnClick(Sender: TObject);
Var  IsEdit:bool;
  qry: TADOQuery;
  I_index:integer;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  MData.Open;
  I_index:=mData.RecNo ;
  MData.Edit;
  If mdata['FPaymentMode']=Null then
     mdata['FPaymentMode']:='';
  If mdata['FSupplierId']=Null then
     mdata['FSupplierId']:=0;

  MData.Post;
  If ShowMsg('�Ƿ񱣴���ĺ�����ݣ�','��ʾ') then
  begin
    with MData do
    begin
      MData.DisableControls;
      First;
      try
        qry.SQL.Text:='Update T_DesignTake_PlanTenderList set FSupplierId=:FSupplierId,FPaymentMode=:FPaymentMode,'
                     +'FOrderPrice=:FOrderPrice,FTaxRate=:FTaxRate where FPlanTenderListID=:FPlanTenderListID';
        while not MData.EoF do
        begin
         // If (mData['FSupplierId']<>0) and (mData['FOrderPrice']<>0) then
          begin
            qry.Parameters.FindParam('FSupplierId').Value:=mdata['FSupplierId'];
            qry.Parameters.FindParam('FPaymentMode').Value:=Trim(mdata['FPaymentMode']);
            qry.Parameters.FindParam('FOrderPrice').Value:=mdata['FOrderPrice'];
            qry.Parameters.FindParam('FTaxRate').Value:=mdata['FTaxRate'];
            qry.Parameters.FindParam('FPlanTenderListID').Value:=mdata['FPlanTenderListID'];
            qry.ExecSQL;
          end;
          next;
        end;
      finally
        ;
        //Messagedlg('���ݸ���ʧ�ܣ�',mtInformation,[mbok],0);
      end;
    end;
    MData.EnableControls;
  end;

   If mData_M['FPlanTenderID']<>0 then
  begin
    If MyItemList(qry,Mdata,'V_DesignTake_PlanTenderList','cast(FPlanTenderID as varchar(20))',
                  Mdata_M['FPlanTenderID'],'FPlanTenderNum') then

     Act_Status.Execute  //Ȩ������
  end;


  If (I_index<MData.RecordCount) and (I_index<>-1) then
     MData.RecNo :=I_index
  else
     MData.Last;

  Act_SetClose.Execute;

end;

procedure TFrm_DesignTake_PlanTender_Coe.CancelBtnClick(Sender: TObject);
begin
  inherited;
  Act_SetClose.Execute;
  //PageControl2.Visible:=False;
end;

procedure TFrm_DesignTake_PlanTender_Coe.MyTreeViewExpanding(Sender: TObject;
  Node: TTreeNode; var AllowExpansion: Boolean);
var
  P :PTree;
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;

  If (Node = nil) or
     (PTree(Node.Data).Flag <> cNoLoadFlag) or   // 1.���ر�־
     (not Node.HasChildren) or                   // 2.δ����
     (Node.Count>0) then                         // 3.�����ӽڵ�
     Exit;

  qry.SQL.Text:='Select FNumber, FParentNumber,FName,FNumber,'
               +'Isleaf from VT_DesignTake_PlanTender_Coe where FParentNumber= '''
               +PTree(Node.Data).ID+''' and FDepartmentID=:FDepartmentID '
               +' order by FNumber';
  qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
  qry.open;

  PTree(Node.Data).Flag := cLoadFlag;   // �����Ѽ��ر�־
  while not qry.Eof do
  begin
    New(P);
    P.ID := qry.FieldByName('FNumber').AsString;
    P.ParentID := qry.FieldByName('FParentNumber').AsString;
    P.FNumber:=qry.FieldByName('FNumber').AsString;
    P.Isleaf := qry.FieldByName('Isleaf').Value;
    P.Caption := qry.FieldByName('FName').AsString;
    P.Flag := cNoLoadFlag;                            // �½ڵ㣬δ���ر�־
    with MyTreeView.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('Isleaf').value;
    end;
    qry.Next;
  end;

end;

procedure TFrm_DesignTake_PlanTender_Coe.MyTreeViewChange(Sender: TObject;
  Node: TTreeNode);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If Node = nil then Exit;
  with PTree(Node.Data)^ do
  begin
    ListItemFNumber:=trim(PTree(Node.Data).FNumber);
    P_Isleaf:=PTree(Node.Data).Isleaf;
    If MyItemList(qry,Mdata_M,'V_DesignTake_PlanTender','cast(FPlanTenderStatus as varchar(2))+'';''+cast(year(FPlanTenderDate) as varchar(4))+'';''+cast(month(FPlanTenderDate) as varchar(2))+'';''+FPlanTenderNum+'';''',ListItemFNumber,'') then
    If MyItemList(qry,Mdata,'V_DesignTake_PlanTenderList','cast(FPlanTenderStatus as varchar(2))+'';''+cast(year(FPlanTenderDate) as varchar(4))+'';''+cast(month(FPlanTenderDate) as varchar(2))+'';''+FPlanTenderNum+'';''',ListItemFNumber,'FPlanTenderNum') then
  end;

  If P_Isleaf=1 then
     Act_Status.Execute  //Ȩ������
  else
  begin
    TB_Edit.Visible:=False;
    TB_Del.Visible:=False;
    TB_Submit.Visible:=False;
    TB_Check.Visible:=False;
    TB_Audit.Visible:=False;
    TB_PushDown.Visible:=False;
  end;
end;

procedure TFrm_DesignTake_PlanTender_Coe.TB_RefClick(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If not TreeVeiwListWhere(qry,MyTreeView,'VT_DesignOrder',' and FDepartmentID='+IntToStr(UserFDepartmentID) ) then
  begin
    Application.MessageBox(PChar('���ͽṹ��ʾ��������ϵϵͳ������Ա'), '����', MB_OK +MB_ICONSTOP);
  end;
 
end;

procedure TFrm_DesignTake_PlanTender_Coe.MDataBeforePost(DataSet: TDataSet);
begin
  inherited;
  If DataSet['FOrderQry']>DataSet['FAskQry'] then
     DataSet['FOrderQry']:=DataSet['FAskQry'];
  DataSet['FOrderAmount']:=round(DataSet['FOrderQry']*DataSet['FOrderPrice']*100)/100;
end;

procedure TFrm_DesignTake_PlanTender_Coe.TB_EditClick(Sender: TObject);
begin
  inherited;
  P_state :=1;
  If (mdata.RecordCount<1) then
    Exit;
  cxGV.DataController.DataSource:=DS_Mdata;
  cxGvColumn(cxGv,Mdata);
    Act_SetOpen.Execute;
  Label10.Caption:='��Э�����б����뵥�޸�';

end;

procedure TFrm_DesignTake_PlanTender_Coe.cxGrid1DBTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
var
  ADisplayStyle :TcxStyle;
begin
  ADisplayStyle :=TcxStyle.Create(Self);
  try
    if ARecord.Values[1]=320000 then
    begin
      ADisplayStyle.Color :=clYellow;
      //ADisplayStyle.Font.Color :=clBlack;
      //ADisplayStyle.Font.Color :=clYellow;
      AStyle :=ADisplayStyle;
    end ;
  finally
    ADisplayStyle.Free;
  end;


end;

procedure TFrm_DesignTake_PlanTender_Coe.TB_OutClick(Sender: TObject);
begin
  inherited;
  ExportToExcel(cxGrid,True,TRue);
end;

procedure TFrm_DesignTake_PlanTender_Coe.FormCreate(Sender: TObject);
begin
  inherited;
  Act_App.Enabled:= mdlData.CheckFrmRights(TFrm_DesignTake_PlanTender_Coe.ClassName,'����');
  N_App.Enabled:= mdlData.CheckFrmRights(TFrm_DesignTake_PlanTender_Coe.ClassName,'����');
  TB_Out.Enabled:= mdlData.CheckFrmRights(TFrm_DesignTake_PlanTender_Coe.ClassName,'����');
  N_Out.Enabled:= mdlData.CheckFrmRights(TFrm_DesignTake_PlanTender_Coe.ClassName,'����');
  TB_Print.Enabled:= mdlData.CheckFrmRights(TFrm_DesignTake_PlanTender_Coe.ClassName,'��ӡ');
  N_Print.Enabled:= mdlData.CheckFrmRights(TFrm_DesignTake_PlanTender_Coe.ClassName,'��ӡ');



end;

procedure TFrm_DesignTake_PlanTender_Coe.FOrderQryPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  mdata.Edit;
end;

procedure TFrm_DesignTake_PlanTender_Coe.N9Click(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If (cxGV.DataController.DataSource=DS_Mdata_M)  then
  begin
    If MyItemListwhere(qry,Mdata_M,'V_DesignOrder','FDepartmentName+'';''+cast(year(FOrderDate) as varchar(4))+'';''+cast(month(FOrderDate) as varchar(2))+'';''+cast(FOrderStatus as varchar(2))+'';''+FOrderNum+'';''',ListItemFNumber3,' and FInvoiceStatus=2 ','') then
    begin
      cxGV.DataController.DataSource:=DS_Mdata_M;
      cxGvColumn(cxGv,Mdata_M);
      L_title.Caption:='��ѯ�Ѻ�����Ʊ';
    end;
  end;
end;

procedure TFrm_DesignTake_PlanTender_Coe.N_AuditClick(Sender: TObject);
var
 qry:TADOquery;
 s:String;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  s:=mdata_M['FOrderNum'];

  If (mdata_M['FOrderStatus']=0) and  (cxGV.DataController.DataSource=DS_Mdata_M) then
  begin
    If application.MessageBox(Pchar('���棺�Ƿ���˲ɹ�����Ϊ����'+s+'���ĵ��ݣ�'+chr(13)+chr(13)
    //If application.MessageBox(Pchar('���棺�Ƿ���˲ɹ�����Ϊ�������ĵ��ݣ�'+chr(13)+chr(13)
                                   +'��˺�����ݲ������޸ĺ�ɾ����ȷ��Ҫ��˱�������'),'������ʾ',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      try
        qry.SQL.Text:='Update T_DesignOrder Set FOrderStatus=2,FOrderAudit=:FOrderAudit,FOrderAuditDate=:FOrderAuditDate  where FOrderID=:FOrderID';
        qry.Parameters.FindParam('FOrderAudit').value:= UserNum;
        qry.Parameters.FindParam('FOrderAuditDate').value:= now();
        qry.Parameters.FindParam('FOrderID').value:=mdata_M['FOrderID'];
        qry.ExecSQL;
      finally
         ;
      end;
      application.MessageBox('�����ϣ�','ϵͳ��ʾ',MB_ICONINFORMATION);
    end;
  end;
end;

procedure TFrm_DesignTake_PlanTender_Coe.N_Audit_NClick(Sender: TObject);
var
 qry:TADOquery;
 s:String;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  s:=mdata_M['FOrderNum'];

  If mdata_M['FOrderStatus']=0 then
  begin
    application.MessageBox('�˵���δ���,���뷴��ˣ�','ϵͳ��ʾ',MB_ICONINFORMATION);
    Exit;
  end;

  If (mdata_M['FOrderStatus']=2) and  (cxGV.DataController.DataSource=DS_Mdata_M)  then
  begin
    If application.MessageBox(Pchar('���棺�Ƿ���˲ɹ�����Ϊ����'+s+'���ĵ��ݣ�'+chr(13)+chr(13)
  //  If application.MessageBox(Pchar('���棺�Ƿ���˲ɹ�����Ϊ�������ĵ��ݣ�'+chr(13)+chr(13)
                                   +'����˺�����ݲ������޸ĺ�ɾ����ȷ��Ҫ����˱�������'),'������ʾ',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      try
        qry.SQL.Text:='Update T_DesignOrder Set FOrderStatus=0,FOrderAudit=:FOrderAudit,FOrderAuditDate=:FOrderAuditDate  where FOrderID=:FOrderID';
        qry.Parameters.FindParam('FOrderAudit').value:= UserNum;
        qry.Parameters.FindParam('FOrderAuditDate').value:= now();
        qry.Parameters.FindParam('FOrderID').value:= mdata_M['FOrderID'];
        qry.ExecSQL;
      finally
         ;
      end;
      application.MessageBox('�������ϣ�','ϵͳ��ʾ',MB_ICONINFORMATION);
    end;
  end;
end;

procedure TFrm_DesignTake_PlanTender_Coe.N_QryClick(Sender: TObject);
var
 qry:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  If ((mdlData.CheckFrmRights(TFrm_DesignTake_PlanTender_Coe.ClassName,'���')=True)) or  (Trim(UpperCase(mdata_M['FOrderUserNum']))=UpperCase(UserNum)) then
  begin
    If MyItemList(qry,Mdata,'V_DesignOrderList','FDateNumber',mdata_M['FDateNumber'],'FDateNumber,FOrderNum') then
    begin
      cxGV.DataController.DataSource:=DS_Mdata;
      cxGvColumn(cxGv,Mdata);
      TB_Edit.Enabled:=mdlData.CheckFrmRights(TFrm_DesignTake_PlanTender_Coe.ClassName,'�޸�');
      TB_Del.Enabled:=mdlData.CheckFrmRights(TFrm_DesignTake_PlanTender_Coe.ClassName,'ɾ��');
      Label10.Caption:='��Э�����ɹ������޸�';
    end
  end
  else
  begin
    application.MessageBox('�޲�ѯ�˵��ݵ�Ȩ�ޣ�','ϵͳ��ʾ',MB_ICONINFORMATION);
    Exit;
  end;

end;

procedure TFrm_DesignTake_PlanTender_Coe.Act_EditExecute(Sender: TObject);
begin
  If (mdata.RecordCount<1) then
     Exit;
  Act_SetOpen.Execute;
  Label10.Caption:='�б�ȷ����Ϣ�޸�';

end;

procedure TFrm_DesignTake_PlanTender_Coe.Act_AuditExecute(Sender: TObject);
var
 qry:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If TB_Audit.Caption='���' then
  begin
    If application.MessageBox(Pchar('���棺�Ƿ�����б����뵥��Ϊ����'+ListItemFNumber+'���ĵ��ݣ�'+chr(13)+chr(13)
                                   +'��˺�����ݲ������޸ĺ�ɾ����ȷ��Ҫ��˱�������'),'������ʾ',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      try
        qry.SQL.Text:='Update T_DesignTake_PlanTender Set FPlanTenderStatus=3,FPlanTenderAuditID=:FPlanTenderAuditID,FPlanTenderAuditDate=:FPlanTenderAuditDate  where FPlanTenderID=:FPlanTenderID';
        qry.Parameters.FindParam('FPlanTenderAuditID').value:= UserNumID;
        qry.Parameters.FindParam('FPlanTenderAuditDate').value:= now();
        qry.Parameters.FindParam('FPlanTenderID').value:=mdata['FPlanTenderID'];
        qry.ExecSQL;
      finally
         ;
      end;
      application.MessageBox('�����ϣ�','ϵͳ��ʾ',MB_ICONINFORMATION);
    end;
    TB_Audit.Enabled:=False;
  end;
  If TB_Audit.Caption='�����' then
  begin
    If application.MessageBox(Pchar('���棺�Ƿ�����б����뵥��Ϊ����'+ListItemFNumber+'���ĵ��ݣ�'+chr(13)+chr(13)
                                   +'����˺�����ݲ������޸ĺ�ɾ����ȷ��Ҫ����˱�������'),'������ʾ',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      try
        qry.SQL.Text:='Update T_DesignTake_PlanTender Set FPlanTenderStatus=2,FPlanTenderAuditID=:FPlanTenderAuditID,FPlanTenderAuditDate=:FPlanTenderAuditDate  where FPlanTenderID=:FPlanTenderID';
        qry.Parameters.FindParam('FPlanTenderAuditID').value:= UserNumID;
        qry.Parameters.FindParam('FPlanTenderAuditDate').value:= now();
        qry.Parameters.FindParam('FPlanTenderID').value:= mdata['FPlanTenderID'];
        qry.ExecSQL;
      finally
         ;
      end;
      application.MessageBox('�������ϣ�','ϵͳ��ʾ',MB_ICONINFORMATION);
    end;
    TB_Audit.Enabled:=False;
  end;

  TB_ref.Click;

end;

procedure TFrm_DesignTake_PlanTender_Coe.Act_StatusExecute(Sender: TObject);

begin
  Case mdata_M['FPlanTenderStatus'] of
    0:       //�
    begin
      If mdata_M['FPlanTenderWriteID']=UserNumID then  //������Ϊ����
      begin
        TB_Del.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake_PlanTender_Coe.ClassName,'ɾ��');
        TB_Edit.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake_PlanTender_Coe.ClassName,'�޸�');
        TB_Submit.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake_PlanTender_Coe.ClassName,'�ύ');
        TB_Submit.Caption:='�ύ';
      end
      else
      begin
        TB_Del.Visible:=False;
        TB_Edit.Visible:=False;
        TB_Submit.Visible:=False;
      end;
      TB_Check.Visible:=False;
      TB_Audit.Visible:=False;
      TB_PushDown.Visible:=False;
    end;
  end;
  Case mdata_M['FPlanTenderStatus'] of
    1:       //�ύ
    begin
      If mdata_M['FPlanTenderWriteID']=UserNumID then  //�ύ��Ϊ����
      begin
        TB_Submit.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake_PlanTender_Coe.ClassName,'�ύ');
        TB_Submit.Caption:='���ύ';
      end
      else
      begin
        TB_Submit.Visible:=False;
      end;
      TB_Del.Visible:=False;
      TB_Edit.Visible:=False;
      TB_Check.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake_PlanTender_Coe.ClassName,'У��');
      TB_Check.Caption:='У��';
      TB_Audit.Visible:=False;
      TB_PushDown.Visible:=False;
    end;
  end;

  Case mdata_M['FPlanTenderStatus'] of
    2:           //У��
    begin
      TB_Check.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake_PlanTender_Coe.ClassName,'У��');
      TB_Check.Caption:='��У��';
      TB_Del.Visible:=False;
      TB_Edit.Visible:=False;
      TB_Submit.Visible:=False;
      TB_Audit.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake_PlanTender_Coe.ClassName,'���');
      TB_Audit.Caption:='���';
      TB_PushDown.Visible:=False;
    end;
  end;
  Case mdata_M['FPlanTenderStatus'] of
    3:           //���
    begin
      TB_Audit.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake_PlanTender_Coe.ClassName,'���');
      TB_Audit.Caption:='�����';
      TB_Del.Visible:=False;
      TB_Edit.Visible:=False;
      TB_Submit.Visible:=False;
      TB_Check.Visible:=False;
      TB_PushDown.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake_PlanTender_Coe.ClassName,'����');
      TB_PushDown.Caption:='����';
    end;
  end;
  Case mdata_M['FPlanTenderStatus'] of
    4:        //����
    begin
      TB_Del.Visible:=False;
      TB_Edit.Visible:=False;
      TB_Submit.Visible:=False;
      TB_Check.Visible:=False;
      TB_Audit.Visible:=False;
      TB_PushDown.Visible:=mdlData.CheckFrmRights(TFrm_DesignTake_PlanTender_Coe.ClassName,'����');
      TB_PushDown.Caption:='������';
    end;
  end;



end;

procedure TFrm_DesignTake_PlanTender_Coe.Act_SubmitExecute(Sender: TObject);
var
 qry:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If TB_Submit.Caption='�ύ' then
  begin
    If application.MessageBox(Pchar('���棺�Ƿ��ύ�б����뵥��Ϊ����'+ListItemFNumber+'���ĵ��ݣ�'+chr(13)+chr(13)
                                   +'�ύ������ݲ������޸ĺ�ɾ����ȷ��Ҫ�ύ��������'),'������ʾ',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      try
        qry.SQL.Text:='Update T_DesignTake_PlanTender Set FPlanTenderStatus=1,FPlanTenderSubmitDate=:FPlanTenderSubmitDate  where FPlanTenderID=:FPlanTenderID';
        qry.Parameters.FindParam('FPlanTenderSubmitDate').value:= now();
        qry.Parameters.FindParam('FPlanTenderID').value:=mdata['FPlanTenderID'];
        qry.ExecSQL;
      finally
         ;
      end;
      application.MessageBox('�ύ��ϣ�','ϵͳ��ʾ',MB_ICONINFORMATION);
    end;
    TB_Submit.Enabled:=False;
  end;
  If TB_Submit.Caption='���ύ' then
  begin
    If application.MessageBox(Pchar('���棺�Ƿ��ύ�б����뵥��Ϊ����'+ListItemFNumber+'���ĵ��ݣ�'+chr(13)+chr(13)
                                   +'���ύ������ݲ������޸ĺ�ɾ����ȷ��Ҫ���ύ��������'),'������ʾ',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      try
        qry.SQL.Text:='Update T_DesignTake_PlanTender Set FPlanTenderStatus=0,FPlanTenderSubmitDate=:FPlanTenderSubmitDate  where FPlanTenderID=:FPlanTenderID';
        qry.Parameters.FindParam('FPlanTenderSubmitDate').value:= now();
        qry.Parameters.FindParam('FPlanTenderID').value:= mdata['PlanTendererID'];
        qry.ExecSQL;
      finally
         ;
      end;
      application.MessageBox('���ύ��ϣ�','ϵͳ��ʾ',MB_ICONINFORMATION);
    end;
    TB_Submit.Enabled:=False;
  end;

  TB_ref.Click;
end;

procedure TFrm_DesignTake_PlanTender_Coe.Act_CheckExecute(Sender: TObject);
var
 qry:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If TB_Check.Caption='У��' then
  begin
    If application.MessageBox(Pchar('���棺�Ƿ�У���б����뵥��Ϊ����'+ListItemFNumber+'���ĵ��ݣ�'+chr(13)+chr(13)
                                   +'У�Ժ�����ݲ������޸ĺ�ɾ����ȷ��ҪУ�Ա�������'),'������ʾ',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      try
        qry.SQL.Text:='Update T_DesignTake_PlanTender Set FPlanTenderStatus=2,FPlanTenderCheckID=:FPlanTenderCheckID,FPlanTenderCheckDate=:FPlanTenderCheckDate  where FPlanTenderID=:FPlanTenderID';
        qry.Parameters.FindParam('FPlanTenderCheckID').value:= UserNumID;
        qry.Parameters.FindParam('FPlanTenderCheckDate').value:= now();
        qry.Parameters.FindParam('FPlanTenderID').value:=mdata['FPlanTenderID'];
        qry.ExecSQL;
      finally
         ;
      end;
      application.MessageBox('У����ϣ�','ϵͳ��ʾ',MB_ICONINFORMATION);
    end;
    TB_Check.Enabled:=False;
  end;
  If TB_Check.Caption='��У��' then
  begin
    If application.MessageBox(Pchar('���棺�Ƿ�У���б����뵥��Ϊ����'+ListItemFNumber+'���ĵ��ݣ�'+chr(13)+chr(13)
                                   +'��У�Ժ�����ݲ������޸ĺ�ɾ����ȷ��Ҫ��У�Ա�������'),'������ʾ',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      try
        qry.SQL.Text:='Update T_DesignTake_PlanTender Set FPlanTenderStatus=1,FPlanTenderCheckID=:FPlanTenderCheckID,FPlanTenderCheckDate=:FPlanTenderCheckDate  where FPlanTenderID=:FPlanTenderID';
        qry.Parameters.FindParam('FPlanTenderCheckID').value:= UserNumID;
        qry.Parameters.FindParam('FPlanTenderCheckDate').value:= now();
        qry.Parameters.FindParam('FPlanTenderID').value:= mdata['FPlanTenderID'];
        qry.ExecSQL;
      finally
         ;
      end;
      application.MessageBox('��У����ϣ�','ϵͳ��ʾ',MB_ICONINFORMATION);
    end;
    TB_Check.Enabled:=False;
  end;

  TB_ref.Click;

end;

procedure TFrm_DesignTake_PlanTender_Coe.Act_PushDownExecute(Sender: TObject);
var
 qry:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If TB_PushDown.Caption='����' then
  begin
    If application.MessageBox(Pchar('���棺�Ƿ������б����뵥��Ϊ����'+ListItemFNumber3+'���ĵ��ݣ�'+chr(13)+chr(13)
                                   +'���ƺ�����ݲ������޸ĺ�ɾ����ȷ��Ҫ���Ʊ�������'),'������ʾ',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      try
        qry.SQL.Text:='Update T_DesignTake_PlanTender Set FPlanTenderStatus=3,FPlanTenderPushDownID=:FPlanTenderPushDownID,FPlanTenderPushDownDate=:FPlanTenderPushDownDate  where FPlanTenderID=:FPlanTenderID';
        qry.Parameters.FindParam('FPlanTenderPushDownID').value:= UserNumID;
        qry.Parameters.FindParam('FPlanTenderPushDownDate').value:= now();
        qry.Parameters.FindParam('FPlanTenderID').value:=mdata['FPlanTenderID'];
        qry.ExecSQL;
      finally
         ;
      end;
      application.MessageBox('������ϣ�','ϵͳ��ʾ',MB_ICONINFORMATION);
    end;
    TB_PushDown.Enabled:=False;
  end;
  If TB_PushDown.Caption='������' then
  begin
    If application.MessageBox(Pchar('���棺�Ƿ������б����뵥��Ϊ����'+ListItemFNumber3+'���ĵ��ݣ�'+chr(13)+chr(13)
                                   +'�����ƺ�����ݲ������޸ĺ�ɾ����ȷ��Ҫ�����Ʊ�������'),'������ʾ',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      try
        qry.SQL.Text:='Update T_DesignTake_PlanTender Set FPlanTenderStatus=2,FPlanTenderPushDownID=:FPlanTenderPushDownID,FPlanTenderPushDownDate=:FPlanTenderPushDownDate  where FPlanTenderID=:FPlanTenderID';
        qry.Parameters.FindParam('FPlanTenderPushDownID').value:= UserNumID;
        qry.Parameters.FindParam('FPlanTenderPushDownDate').value:= now();
        qry.Parameters.FindParam('FPlanTenderID').value:= mdata['FPlanTenderID'];
        qry.ExecSQL;
      finally
         ;
      end;
      application.MessageBox('��������ϣ�','ϵͳ��ʾ',MB_ICONINFORMATION);
    end;
    TB_PushDown.Enabled:=False;
  end;

  TB_ref.Click;
end;

procedure TFrm_DesignTake_PlanTender_Coe.cxGV_MCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If mData_M['FPlanTenderID']<>0 then
  begin
    If MyItemList(qry,Mdata,'V_DesignTake_PlanTenderList','cast(FPlanTenderID as varchar(20))',
                  Mdata_M['FPlanTenderID'],'FPlanTenderNum') then

     Act_Status.Execute  //Ȩ������
  end;

end;

procedure TFrm_DesignTake_PlanTender_Coe.FPaymentMode_MPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  mdata_M.Edit;
  if mdata_M['FPaymentMode']=Null then
     mdata_M['FPaymentMode']:='';
  mdata_M.Post;

  If Trim(mdata_M['FPaymentMode'])='' then
  begin
    try
      qry.SQL.Text:='select * from T_DesignTake_PlanTenderList FPaymentMode order by FPaymentMode ';
      qry.Open;
    finally
      ;
    end;
    selValue:=select('ѡ�񸶿ʽ','FPaymentMode','FPaymentMode','FPaymentMode','FPaymentMode',qry);
  end
  else
  begin
    try
      qry.SQL.Text:='select * from T_DesignTake_PlanTenderList where FPaymentMode like :FPaymentMode order by FPaymentMode ';
      qry.Parameters.FindParam('FPaymentMode').Value:='%'+Trim(mdata_M['FPaymentMode'])+'%';
      qry.Open;
    finally
      ;
    end;
    If qry.RecordCount=1 then
    begin
      mdata_M.Edit;
      mdata_M['FPaymentMode']:=qry.FieldByName('FPaymentMode').Value;
      mdata_M.Post;
    end
    else
      selValue:=select('ѡ�񸶿ʽ','FPaymentMode','FPaymentMode','FPaymentMode','FPaymentMode',qry);

  end;

  If (Length(selValue)>0) then
  begin
    mdata_M.Edit;
    mdata_M['FPaymentMode']:=qry.FieldByName('FPaymentMode').Value;
    mdata_M.Post;
  end;


end;

procedure TFrm_DesignTake_PlanTender_Coe.Act_SetOpenExecute(Sender: TObject);
begin
  inherited;
  TB_Ref.Visible:=False;
  TB_App.Visible:=False;
  TB_Edit.Visible:=False;
  TB_Del.Visible:=False;

  MyTreeView.Enabled:=False;
  cxGV.OptionsData.Editing:=True;
  FSupplierName.Options.Editing:=True;
  FPaymentMode.Options.Editing:=True;
  FOrderPrice.Options.Editing:=True;
  FTaxRate.Options.Editing:=True;

  OKBtn.Visible:=True;
  CancelBtn.Visible:=True;

end;

procedure TFrm_DesignTake_PlanTender_Coe.Act_SetCloseExecute(Sender: TObject);
begin
  inherited;
  TB_Ref.Visible:=True;
  TB_App.Visible:=True;
  TB_Edit.Visible:=True;
  TB_Del.Visible:=True;
  MyTreeView.Enabled:=True;
  
  OKBtn.Visible:=False;
  CancelBtn.Visible:=False;

  cxGV.OptionsData.Editing:=False;
  cxGV_M.OptionsData.Editing:=False;
  MyTreeView.Enabled:=True;

end;

procedure TFrm_DesignTake_PlanTender_Coe.FSupplier_MPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  mdata_M.Edit;
  if mdata_M['FSupplierName']=Null then
     mdata_M['FSupplierName']:='';
  mdata_M.Post;
  If mdata_M['FSupplierName']='' then
  begin
    try
      qry.SQL.Text:='select * from Zsi_K3_Supplier FName order by FNumber ';
      qry.Open;
    finally
      ;
    end;
    selValue:=select('ѡ��Ӧ����Ϣ','FItemId','FParentId','FItemId','FName',qry);
  end
  else
  begin
    try
      qry.SQL.Text:='select * from Zsi_K3_Supplier where FName like :FName order by FNumber ';
      qry.Parameters.FindParam('FName').Value:='%'+mdata_M['FSupplierName']+'%';
      qry.Open;
    finally
      ;
    end;
    If qry.RecordCount=1 then
    begin
      mdata_M.Edit;
      mdata_M['FSupplierName']:=qry.FieldByName('FName').Value;
      mdata_M['FSupplierID']:=qry.FieldByName('FItemId').Value;
      mdata_M.Post;
    end
    else
      selValue:=select('ѡ��Ӧ����Ϣ','FItemId','FItemId','FItemId','FName',qry);
   end;

  If (Length(selValue)>0) then
  begin
    mdata_M.Edit;
    mdata_M['FSupplierName']:=qry.FieldByName('FName').Value;
    mdata_M['FSupplierID']:=qry.FieldByName('FItemId').Value;
    mdata_M.Post;
  end;

end;

procedure TFrm_DesignTake_PlanTender_Coe.cxGV_MDblClick(Sender: TObject);
begin
  PageControl2.Visible:=True;
end;

procedure TFrm_DesignTake_PlanTender_Coe.MyTreeView_2Expanding(Sender: TObject;
  Node: TTreeNode; var AllowExpansion: Boolean);
var
  P :PTree;
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;

  If (Node = nil) or
     (PTree(Node.Data).Flag <> cNoLoadFlag) or   // 1.���ر�־
     (not Node.HasChildren) or                   // 2.δ����
     (Node.Count>0) then                         // 3.�����ӽڵ�
     Exit;

  qry.SQL.Text:='Select FNumber, FParentNumber,FName,FNumber,'
               +'Isleaf from VT_DesignOrder_Write where FParentNumber= '''
               +PTree(Node.Data).ID+''' and FDepartmentID=:FDepartmentID and (FOrderWriteID=0 or FOrderWriteID=:FOrderWriteID) '
               +' order by FNumber';
  qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
  qry.Parameters.FindParam('FOrderWriteID').value:=UserNumID;
  qry.open;

  PTree(Node.Data).Flag := cLoadFlag;   // �����Ѽ��ر�־
  while not qry.Eof do
  begin
    New(P);
    P.ID := qry.FieldByName('FNumber').AsString;
    P.ParentID := qry.FieldByName('FParentNumber').AsString;
    P.FNumber:=qry.FieldByName('FNumber').AsString;
    P.Isleaf := qry.FieldByName('Isleaf').Value;
    P.Caption := qry.FieldByName('FName').AsString;
    P.Flag := cNoLoadFlag;                            // �½ڵ㣬δ���ر�־
    with MyTreeView_2.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('Isleaf').value;
    end;
    qry.Next;
  end;

end;

procedure TFrm_DesignTake_PlanTender_Coe.MyTreeView_2Change(Sender: TObject;
  Node: TTreeNode);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If Node = nil then Exit;
  with PTree(Node.Data)^ do
  begin
    ListItemFNumber:=trim(PTree(Node.Data).FNumber);
    P_Isleaf:=PTree(Node.Data).Isleaf;
    If MyItemList(qry,Mdata_M,'V_DesignOrder','FDepartmentName+'';''+FOrderWrite+'';''+cast(year(FOrderDate) as varchar(4))+'';''+cast(month(FOrderDate) as varchar(2))+'';''+cast(FOrderStatus as varchar(2))+'';''+FOrderNum+'';''',ListItemFNumber,'') then
    If MyItemList(qry,Mdata,'V_DesignOrderList','FDepartmentName+'';''+FOrderWrite+'';''+cast(year(FOrderDate) as varchar(4))+'';''+cast(month(FOrderDate) as varchar(2))+'';''+cast(FOrderStatus as varchar(2))+'';''+FOrderNum+'';''',ListItemFNumber,'FOrderNum') then
  end;

  If P_Isleaf=1 then
     Act_Status.Execute  //Ȩ������
  else
  begin
    TB_Edit.Visible:=False;
    TB_Del.Visible:=False;
    TB_Submit.Visible:=False;
    TB_Check.Visible:=False;
    TB_Audit.Visible:=False;
    TB_PushDown.Visible:=False;
  end;

end;

procedure TFrm_DesignTake_PlanTender_Coe.Act_Ref_1Execute(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If not TreeVeiwListWhere(qry,MyTreeView,'VT_DesignTake_PlanTender_Coe',' and FDepartmentID='+IntToStr(UserFDepartmentID) ) then
  begin
    Application.MessageBox(PChar('���ͽṹ��ʾ��������ϵϵͳ������Ա'), '����', MB_OK +MB_ICONSTOP);
  end;
end;

procedure TFrm_DesignTake_PlanTender_Coe.FSupplierNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  mdata.Edit;
  If mdata['FSupplierName']=Null then
     mdata['FSupplierName']:='';
  mdata.Post;
  If mdata['FSupplierName']='' then
  begin
    try
      qry.SQL.Text:='select * from Zsi_K3_Supplier order by FNumber ';
      qry.Open;
    finally
      ;
    end;
    selValue:=select('ѡ��Ӧ����Ϣ','FItemId','FParentId','FItemId','FName',qry);
  end
  else
  begin
    try
      qry.SQL.Text:='select * from Zsi_K3_Supplier where FName like :FName order by FNumber ';
      qry.Parameters.FindParam('FName').Value:='%'+mdata['FSupplierName']+'%';
      qry.Open;
    finally
      ;
    end;
    If qry.RecordCount=1 then
    begin
      mdata.Edit;
      mdata['FSupplierName']:=qry.FieldByName('FName').Value;
      mdata['FSupplierID']:=qry.FieldByName('FItemId').Value;
      mdata.Post;
    end
    else
      selValue:=select('ѡ��Ӧ����Ϣ','FItemId','FItemId','FItemId','FName',qry);
   end;

  If (Length(selValue)>0) then
  begin
    mdata.Edit;
    mdata['FSupplierName']:=qry.FieldByName('FName').Value;
    mdata['FSupplierID']:=qry.FieldByName('FItemId').Value;
    mdata.Post;
  end;



end;

procedure TFrm_DesignTake_PlanTender_Coe.FPaymentModePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  mdata.Edit;
  if mdata['FPaymentMode']=Null then
     mdata['FPaymentMode']:='';
  mdata.Post;

  If Trim(mdata['FPaymentMode'])='' then
  begin
    try
      qry.SQL.Text:='select distinct FPaymentMode from V_DesignTake_PlanTenderList where FDepartmentID=:FDepartmentID order by FPaymentMode ';
      qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
      qry.Open;
    finally
      ;
    end;
    selValue:=select('ѡ�񸶿ʽ','FPaymentMode','FPaymentMode','FPaymentMode','FPaymentMode',qry);
  end
  else
  begin
    try
      qry.SQL.Text:='select distinct FPaymentMode from V_DesignTake_PlanTenderList where FDepartmentID=:FDepartmentID and FPaymentMode like :FPaymentMode order by FPaymentMode ';
      qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
      qry.Parameters.FindParam('FPaymentMode').Value:='%'+Trim(mdata['FPaymentMode'])+'%';
      qry.Open;
    finally
      ;
    end;
    If qry.RecordCount=1 then
    begin
      mdata.Edit;
      mdata['FPaymentMode']:=qry.FieldByName('FPaymentMode').Value;
      mdata.Post;
    end
    else
      selValue:=select('ѡ�񸶿ʽ','FPaymentMode','FPaymentMode','FPaymentMode','FPaymentMode',qry);

  end;

  If (Length(selValue)>0) then
  begin
    mdata.Edit;
    mdata['FPaymentMode']:=qry.FieldByName('FPaymentMode').Value;
    mdata.Post;
  end;


end;

procedure TFrm_DesignTake_PlanTender_Coe.Act_AppExecute(Sender: TObject);
var qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If (mdata.RecordCount<1) then
     Exit;

  If MyItemListwhere(qry,Mdata,'V_DesignTake_PlanTenderList','cast(FPlanTenderID as varchar(20))',Mdata_M['FPlanTenderID'],' and FOrderPrice=0 ','FPlanTenderNum') then
  Act_SetOpen.Execute;
  Label10.Caption:='�б�ȷ����Ϣ����';

end;

end.
