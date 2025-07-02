unit Main_ItemList;

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
  TFlatPanelUnit, cxLookAndFeelPainters, cxButtons, cxTimeEdit, cxBlobEdit,
  jpeg, Menus, ActnList;

type
  TFrm_ItemList = class(TFrm_GridBass)
    MData: TdxMemData;
    DS_Mdata: TDataSource;
    ImageList: TImageList;
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
    TS_Brow: TRzTabSheet;
    ADOQuery: TADOQuery;
    DataSource: TDataSource;
    V_K3: TADOTable;
    DS_K3: TDataSource;
    TB_Ref: TToolButton;
    ADOStoredProc1: TADOStoredProc;
    TB_App: TToolButton;
    TB_Edit: TToolButton;
    TB_Del: TToolButton;
    TB_Refresh: TToolButton;
    PanelBkGnd: TPanel;
    Panel_button: TPanel;
    Bevel_button: TBevel;
    OKBtn: TcxButton;
    CancelBtn: TcxButton;
    MyTreeView: TTreeView;
    MDataFItemNo: TStringField;
    MDataFPactNo: TStringField;
    MDataFFileNo: TStringField;
    MDataFItemNumber: TStringField;
    MDataFClientFullName: TStringField;
    MDataFClientShortName: TStringField;
    MDataFProductName: TStringField;
    MDataFItemModel: TStringField;
    MDataFItemLb: TStringField;
    MDataFDesignDate: TStringField;
    MDataFProductID: TStringField;
    cxGrid: TcxGrid;
    cxGV: TcxGridDBTableView;
    FItemListId: TcxGridDBColumn;
    FItemId: TcxGridDBColumn;
    FItemNo: TcxGridDBColumn;
    FItemNumber: TcxGridDBColumn;
    FFullNumber: TcxGridDBColumn;
    FPartsID: TcxGridDBColumn;
    FPartsNumber: TcxGridDBColumn;
    FPartsCode: TcxGridDBColumn;
    FPartsName: TcxGridDBColumn;
    FIsFinsh: TcxGridDBColumn;
    FInputDate: TcxGridDBColumn;
    FInputID: TcxGridDBColumn;
    NumName: TcxGridDBColumn;
    cxGL: TcxGridLevel;
    IsApp: TcxGridDBColumn;
    E_FItemNumber: TcxButtonEdit;
    E_FItemId: TcxButtonEdit;
    E_FItemNO: TcxTextEdit;
    E_FProductId: TcxTextEdit;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Label2: TLabel;
    Label4: TLabel;
    L_Caption: TLabel;
    FItemListQry: TcxGridDBColumn;
    FInputTakeDate: TcxGridDBColumn;
    FInputTakeNum: TcxGridDBColumn;
    FInputStartDate: TcxGridDBColumn;
    FInputTime: TcxGridDBColumn;
    FSortStatusName: TcxGridDBColumn;
    TB_ItemListSuttle: TToolButton;
    FItemListSuttle: TcxGridDBColumn;
    FItemListSumSuttle: TcxGridDBColumn;
    TB_Submit: TToolButton;
    TB_Audit: TToolButton;
    TB_Check: TToolButton;
    FSortStatus: TcxGridDBColumn;
    FDesignLeader: TcxGridDBColumn;
    FDesignLeaderOutsidephone: TcxGridDBColumn;
    NumOutsidephone: TcxGridDBColumn;
    PM: TPopupMenu;
    N_Edit: TMenuItem;
    N_Filter: TMenuItem;
    N_Sort: TMenuItem;
    N_Group: TMenuItem;
    N_Set: TMenuItem;
    N_Out: TMenuItem;
    actionList: TActionList;
    ActApp: TAction;
    ActSave: TAction;
    ActOut: TAction;
    ActEdit: TAction;
    ActDel: TAction;
    Act_Submit: TAction;
    Act_Audit: TAction;
    Act_Set_Close: TAction;
    Act_Set_Open: TAction;
    Act_Menu: TAction;
    Act_Menu_Set: TAction;
    Act_MaxID: TAction;
    procedure FormResize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TB_EXITClick(Sender: TObject);
    procedure MyTreeViewChange(Sender: TObject; Node: TTreeNode);
    procedure MyTreeViewExpanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure TB_RefClick(Sender: TObject);
    procedure OKBtnClick(Sender: TObject);
    procedure TB_AppClick(Sender: TObject);
    procedure TB_EditClick(Sender: TObject);
    procedure TB_DelClick(Sender: TObject);
    procedure TB_RefreshClick(Sender: TObject);
    procedure CancelBtnClick(Sender: TObject);
    procedure FPartsNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FPartsAliasPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxGVStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      out AStyle: TcxStyle);
    procedure FProductNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure S_Edit;
    procedure E_FItemNumberPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormCreate(Sender: TObject);
    procedure MDataBeforePost(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure TB_ItemListSuttleClick(Sender: TObject);
    procedure TB_SubmitClick(Sender: TObject);
    procedure TB_CheckClick(Sender: TObject);
    procedure TB_AuditClick(Sender: TObject);
    procedure cxGVFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure cxGridContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure N_EditClick(Sender: TObject);
    procedure N_FilterClick(Sender: TObject);
    procedure N_SortClick(Sender: TObject);
    procedure N_GroupClick(Sender: TObject);
    procedure N_SetClick(Sender: TObject);
    procedure N_OutClick(Sender: TObject);
    procedure Act_MenuExecute(Sender: TObject);
    procedure Act_Menu_SetExecute(Sender: TObject);
  private
    ListItemFNumber,P_th:String;
    P_i:boolean;
   // FFullFileName: string;

   // m_stopFileName,P_FItemListId,P_FFullNumber,p_FItemNo,p_Code:string;



    { Private declarations }
    function AddRd:bool;
    function EditRd:bool;
    function DelRd:bool;

 //   Procedure MyItemList(Sender: TObject);

  public
    P_state,P_Isleaf:integer;
    GV,Gr,Gm,Mn:string;
  //  P_id:string;
    { Public declarations }
  end;

var
  Frm_ItemList: TFrm_ItemList;


implementation

uses FRMDATA, FRMMAIN, COMMON, FrmSelect, ProgBar, PROGRASS;

{$R *.dfm}

procedure TFrm_ItemList.S_Edit;
var
 qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='select IsEdit=cast(0 as bit),'''+Trim(E_FItemNumber.Text)+''' as FItemNumber,FItemListId,'
                 +'isnull(b.FItemId,'''') as FItemId, '
                 +'case isnull(b.FItemId,'''') when '''' then cast(0 as bit) else cast(1 as bit) end as IsDel,'
                 +'case isnull(b.FItemId,'''') when '''' then cast(0 as bit) else cast(1 as bit) end as IsApp,'''
                 +Trim(E_FItemNo.Text)+''' as FItemNo, a.FPartsCode, '
                 +'case isnull(b.FpartsNumber,'''') when '''' then '''+Trim(E_FItemNumber.Text)+'''+''.''+cast(cast(a.FPartsCode as int) as Varchar) else b.FpartsNumber end as FpartsNumber,'
                 +'case isnull(b.FFullNumber,'''') when '''' then '''+Trim(E_FItemNo.Text)+'''+''.''+cast(cast(a.FPartsCode as int) as Varchar) else b.FFullNumber end as FFullNumber,'
                 +'isnull(b.FItemListQry,0) as FItemListQry,isnull(b.FIsFinsh, 0) AS FIsFinsh, b.FInputDate, b.FInputId,b.FSortStatusName,a.* from '
                 +'(select * from V_ProductParts with(nolock) where FProductid=:FProductid ) as a left outer join '
                 +'(select * from V_ItemList with(nolock) where FProductid=:FProductid and FItemid=:FItemid ) as b on a.FProductid=b.FProductid and a.FPartsCode=b.FPartsCode order by a.FPartsCode ';
    qry.Parameters[0].Value:=Trim(E_FProductId.Text);
    qry.Parameters[1].Value:=Trim(E_FProductId.Text);
    qry.Parameters[2].Value:=Trim(E_FItemId.Text);;
    qry.Open;
  finally
     ;
  end;
  If qry.RecordCount>0 then
  begin
    Mdata.CopyFromDataSet(qry);
    Mdata.Active:=True;
    Mdata.First;
  end;
  cxGvColumn(cxGv,Mdata);
  qry.Free;

end;



function TFrm_ItemList.DelRd: bool;
var
 qry: TADOQuery;
begin
 // Result:=False;
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Delete from T_ItemList where FItemID=:FItemID';
    with qry.Parameters do
    begin
      FindParam('FItemID').value:=Trim(E_FItemID.Text);
    end;
    Result:=qry.ExecSQL>=1;
  finally
    qry.Free;
  end;

end;

function TFrm_ItemList.AddRd: bool;
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
    qry.SQL.Text:='Insert into T_ItemList(FItemId,FPartsCode,FPartsNumber,FFullNumber,FItemListQry,FIsFinsh,FInputDate,FInputid)'
                 +'values (:FItemId,:FPartsCode,:FPartsNumber,:FFullNumber,:FItemListQry,:FIsFinsh,:FInputDate,:FInputid)';
    mData.First;

    while not mData.eof do
    begin
      If mData['IsApp'] then
      begin
        If qry.Active then qry.Close;
        with qry.Parameters do
        begin
          FindParam('FItemId').value:=Trim(E_FItemId.Text);
          FindParam('FPartsCode').value:=mData['FPartsCode'];
          FindParam('FPartsNumber').value:=mData['FPartsNumber'];
          FindParam('FFullNumber').value:=mData['FFullNumber'];
          FindParam('FItemListQry').value:=mData['FItemListQry'];
          FindParam('FIsFinsh').value:=mData['FIsFinsh'];
          FindParam('FInputDate').value:=mData['FInputDate'];
          FindParam('FInputid').value:=mData['FInputid'];
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


function TFrm_ItemList.EditRd:bool;
var
 qry,qry1:TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry1:=TADOQuery.Create(Self);
  qry1.ConnectionString:=mdlData.ReadConnStr;

  result:=False;

  If mData.RecordCount<=0 then
  begin
    result:=True;
    Exit;
  end;

  mData.Edit;
  mData.Post;

  mData.First;
  while not mData.eof do
  begin
    //新增
    If mData['IsApp'] and not mData['IsDel'] then
    begin
      try
        qry.SQL.Text:='Insert into T_ItemList(FItemId,FPartsCode,FPartsNumber,FFullNumber,FItemListQry,FIsFinsh,FInputDate,FInputid)'
                    +'values (:FItemId,:FPartsCode,:FPartsNumber,:FFullNumber,:FItemListQry,:FIsFinsh,:FInputDate,:FInputid)';
        qry.Parameters.FindParam('FItemId').value:=Trim(E_FItemId.Text);
        qry.Parameters.FindParam('FPartsCode').value:=mData['FPartsCode'];
        qry.Parameters.FindParam('FPartsNumber').value:=mData['FPartsNumber'];
        qry.Parameters.FindParam('FFullNumber').value:=mData['FFullNumber'];
        qry.Parameters.FindParam('FItemListQry').value:=mData['FItemListQry'];
        qry.Parameters.FindParam('FIsFinsh').value:=mData['FIsFinsh'];
        qry.Parameters.FindParam('FInputDate').value:=mData['FInputDate'];
        qry.Parameters.FindParam('FInputid').value:=mData['FInputid'];
        result:=qry.ExecSQL>=1;
        if not result then break;
      finally
        ;
      end;
    end;
    //修改
    If mData['IsApp'] and mData['IsDel'] then
    begin
      try
        qry.SQL.Text:='Update T_ItemList set FItemId=:FItemId,FPartsCode=:FPartsCode,FPartsNumber=:FPartsNumber,FFullNumber=:FFullNumber,FItemListQry=:FItemListQry,'
                     +'FIsFinsh=:FIsFinsh,FInputDate=:FInputDate,FInputid=:FInputid where FItemListId=:FItemListId ';
        qry.Parameters.FindParam('FItemId').value:=Trim(E_FItemId.Text);
        qry.Parameters.FindParam('FPartsCode').value:=mData['FPartsCode'];
        qry.Parameters.FindParam('FPartsNumber').value:=mData['FPartsNumber'];
        qry.Parameters.FindParam('FFullNumber').value:=mData['FFullNumber'];
        qry.Parameters.FindParam('FItemListQry').value:=mData['FItemListQry'];
        qry.Parameters.FindParam('FIsFinsh').value:=mData['FIsFinsh'];
        qry.Parameters.FindParam('FInputDate').value:=mData['FInputDate'];
        qry.Parameters.FindParam('FInputid').value:=mData['FInputid'];
        qry.Parameters.FindParam('FItemListId').value:=mData['FItemListId'];
        result:=qry.ExecSQL>=1;
        if not result then break;
      finally
        ;
      end;
    end;
     //删除
    If not mData['IsApp'] and mData['IsDel'] then
    begin
      try
        qry1.SQL.Text:='select * from V_DesignBOM_Structure with(nolock)  where FItemListID=:FItemListID ';
        qry1.Parameters.FindParam('FItemListID').value:=mData['FItemListID'];
        qry1.Open;
      finally
        ;
      end;
      If qry1.RecordCount<=0 then
      begin
        try
          qry.SQL.Text:='Delete from T_ItemList  where FItemListID=:FItemListID ';
          qry.Parameters.FindParam('FItemListID').value:=mData['FItemListID'];
          result:=qry.ExecSQL>=1;
          if not result then break;
        finally
          ;
        end;
      end;
    end;
    mData.Next;
  end;
  qry.Free;



end;


procedure TFrm_ItemList.FormResize(Sender: TObject);
begin
  inherited;
  L_title.Caption:='项目明细操作';
  Self.Caption:='项目明细操作';
end;

procedure TFrm_ItemList.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=cafree;
  Frm_ItemList:=nil;
end;

procedure TFrm_ItemList.TB_EXITClick(Sender: TObject);
begin
  inherited;
  self.Close;
end;

procedure TFrm_ItemList.MyTreeViewChange(Sender: TObject; Node: TTreeNode);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  If Node = nil then Exit;
  with PTree(Node.Data)^ do
  begin
    ListItemFNumber:=trim(PTree(Node.Data).FNumber);
    P_th:=PTree(Node.Data).Caption;
    P_Isleaf:=PTree(Node.Data).Isleaf;

    Case PTree(Node.Data).Isleaf of
      0:
      begin
        mdata.Close;
        E_FItemNumber.Text:= '';
        E_FItemID.Text:= '';
        E_FItemNo.Text:= '';
        E_FProductID.Text:= '';
      end;
    end;
    Case PTree(Node.Data).Isleaf of
      1:
      begin
        If MyItemList(qry,Mdata,'V_ItemList','FNumber',ListItemFNumber,'FNumber') then
        begin
          If mdata.RecordCount>0 then
          begin
            mdata.First;
            E_FItemNumber.Text:= mdata['FItemNumber'];
            E_FItemID.Text:= mdata['FItemID'];
            E_FItemNo.Text:= mdata['FItemNo'];
            E_FProductID.Text:= mdata['FProductID'];
          end
        end;
      end;
    end;
   Case PTree(Node.Data).Isleaf of
      2:
      begin
        If MyItemList(qry,Mdata,'V_ItemList','FNumber',ListItemFNumber,'FNumber') then
        begin
          If mdata.RecordCount>0 then
          begin
            mdata.First;
            E_FItemNumber.Text:= mdata['FItemNumber'];
            E_FItemID.Text:= mdata['FItemID'];
            E_FItemNo.Text:= mdata['FItemNo'];
            E_FProductID.Text:= mdata['FProductID'];
          end
        end;
     end;
  end;
  end;
end;

procedure TFrm_ItemList.MyTreeViewExpanding(Sender: TObject;
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

  qry.SQL.Text:='Select FProductId,FNumber, FParentNumber,FName,'
               +'Isleaf from VT_ItemList with(nolock) where FParentNumber= '''
               +PTree(Node.Data).ID+''' order by FNumber';

  qry.open;

  PTree(Node.Data).Flag := cLoadFlag;                  // 设置已加载标志
  while not qry.Eof do
  begin
    New(P);
    P.ID := qry.FieldByName('FNumber').AsString;
    P.ParentID := qry.FieldByName('FParentNumber').AsString;
    P.FNumber:=qry.FieldByName('FNumber').AsString;
    P.Th:=qry.FieldByName('FProductId').AsString;
    P.Caption := qry.FieldByName('FName').AsString;
    P.Isleaf := qry.FieldByName('Isleaf').AsInteger;
    P.Flag := cNoLoadFlag;                            // 新节点，未加载标志
    with MyTreeView.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('Isleaf').value;
    end;
    qry.Next;
  end;


end;

procedure TFrm_ItemList.TB_RefClick(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If UserFDepartmentsort=1 then //事业部
  begin
   // If not TreeVeiwListUserID(qry,MyTreeView,'VT_ItemList',UserFDepartmentID) then
    If not TreeVeiwListWhere(qry,MyTreeView,'VT_ItemList',' and Isleaf<2 and FDepartmentID='+IntToStr(UserFDepartmentID)) then
      Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;
  If UserFDepartmentsort=2 then   //子公司
  begin
    If not TreeVeiwListWhere(qry,MyTreeView,'VT_ItemList',' and Isleaf<2 ') then
    Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;
  If UserFDepartmentsort=3 then   //公共平台
  begin
    If not TreeVeiwListWhere(qry,MyTreeView,'VT_ItemList',' and Isleaf<2 ') then
    Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;

end;

procedure TFrm_ItemList.OKBtnClick(Sender: TObject);
var qry: TADOQuery;

begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  mData.Edit;
  mData.Post;

  If P_state =0 then
  begin
    try
      qry.SQL.Text:='Select * from V_ItemList with(nolock) where FItemNumber=:FItemNumber';
      qry.Parameters.FindParam('FItemNumber').Value:=mdata['FItemNumber'];
      qry.Open;
      If qry.RecordCount>0 then
      begin
         application.MessageBox('图号重复！请重新选择','系统提示',MB_ICONERROR);
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
        Tb_app.Click ;
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



procedure TFrm_ItemList.TB_AppClick(Sender: TObject);
var
 i:Integer;
begin
  P_state :=0;
  L_Caption.Caption:='数据新增';

  cxGV.OptionsData.Editing:=True;

  OKBtn.Left:=StrToInt(FloatToStr(int((PanelBkGnd.Width-OKBtn.Width-CancelBtn.Width-20)/2)));
  CancelBtn.Left:=StrToInt(FloatToStr(int((PanelBkGnd.Width-OKBtn.Width-CancelBtn.Width-20)/2)))+OKBtn.Width+20;
  OKBtn.Visible:=True;
  CancelBtn.Visible:=True;

  TB_Ref.Visible:=False;
  TB_app.Visible:=False;
  TB_Edit.Visible:=False;
  TB_Del.Visible:=False;
  MyTreeView.Enabled:=False;

  E_FItemNumber.Enabled:=True;
  E_FItemNumber.Text:= '';
  E_FItemID.Text:= '';
  E_FItemNo.Text:= '';
  E_FProductID.Text:= '';
  mdata.Close;
  for i:=0 to cxGv.ColumnCount-1 do
  begin
    cxGv.Columns[i].Options.Editing:=True;
  end;

end;

procedure TFrm_ItemList.TB_EditClick(Sender: TObject);
var

 i:Integer;
begin
  P_state :=1;
 { If (mdata.RecordCount<1) then
  begin
    application.MessageBox(Pchar('无数据修改！'),'系统提示',MB_ICONINFORMATION);
    Exit;
  end;
  }
{  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Select * from V_DesignBOM_Structure where FItemNoID=:FItemNoID';
    qry.Parameters.FindParam('FItemNoID').Value:=mdata['FItemID'];
    qry.Open;
  finally
     ;
  end;
  if qry.RecordCount>0 then
  begin
    application.MessageBox(Pchar('项目【'+Trim(Mdata['FItemNumber'])+'】【'+Trim(Mdata['FItemNo'])+'】已导入数据不允许修改！'),'系统提示',MB_ICONINFORMATION);
    Exit;
  end;
}

  Self.S_Edit;

  L_Caption.Caption:='数据修改';

  OKBtn.Left:=StrToInt(FloatToStr(int((PanelBkGnd.Width-OKBtn.Width-CancelBtn.Width-20)/2)));
  CancelBtn.Left:=StrToInt(FloatToStr(int((PanelBkGnd.Width-OKBtn.Width-CancelBtn.Width-20)/2)))+OKBtn.Width+20;
  OKBtn.Visible:=True;
  CancelBtn.Visible:=True;

  TB_Ref.Visible:=False;
  TB_Edit.Visible:=False;
  TB_Del.Visible:=False;
  TB_app.Visible:=False;
  MyTreeView.Enabled:=False;

  cxGV.OptionsData.Editing:=True;
  FPartsNumber.Options.Editing:=True;
  FPartsName.Options.Editing:=True;
  FItemListQry.Options.Editing:=True;
  IsApp.Options.Editing:=True;
{
  for i:=0 to cxGv.ColumnCount-1 do
  begin
    cxGv.Columns[i].Options.Editing:=True;
  end;
 }
end;

procedure TFrm_ItemList.TB_DelClick(Sender: TObject);
var
  qry:TADOQuery;

begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If (mdata.RecordCount<1) then
    Exit;


  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Select * from V_DesignBOM_Structure with(nolock) where FFullNumber like :FFullNumber';
    qry.Parameters.FindParam('FFullNumber').Value:=mdata['FItemNo']+'%';
    qry.Open;
  finally
     ;
  end;
  if qry.RecordCount>0 then
  begin
    application.MessageBox(Pchar('项目【'+Trim(Mdata['FItemNumber'])+'】【'+Trim(Mdata['FItemNo'])+'】已导入数据不允许删除！'),'系统提示',MB_ICONINFORMATION);
    Exit;
  end;



  If application.MessageBox(Pchar('警告：是否删除产品类别为：【'+Trim(Mdata['FItemNumber'])+'】的单据？'+chr(13)+chr(13)
                           +'删除数据操作将不可恢复，确定要删除本单据吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
  If application.MessageBox(Pchar('警告：是否删除产品类别为：【'+Trim(Mdata['FItemNumber'])+'】的单据？'+chr(13)+chr(13)
                           +'删除数据操作将不可恢复，确定要删除本单据吗？'),'再次警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then

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
  //TB_ref.Click;
end;

procedure TFrm_ItemList.TB_RefreshClick(Sender: TObject);
var
  I_index:integer;
begin
  inherited;
  I_index:=mData.RecNo ;
  If (I_index<mData.RecordCount) and (I_index<>-1) then
     mData.RecNo :=I_index
  else
     mData.Last;

end;

procedure TFrm_ItemList.CancelBtnClick(Sender: TObject);
begin
  inherited;
  L_Caption.Caption:='数据浏览';
  cxGV.OptionsData.Editing:=False;
  OKBtn.Visible:=False;
  CancelBtn.Visible:=False;
  TB_Ref.Visible:=True;
  TB_app.Visible:=True;
  TB_Edit.Visible:=True;
  TB_Del.Visible:=True;
  MyTreeView.Enabled:=True;
  E_FItemNumber.Enabled:=False;
  TB_ref.Click;
  P_state:=2;

end;

procedure TFrm_ItemList.FPartsNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
   qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='select distinct FPartsCode,FPartsName from V_ProductParts with(nolock) order by FPartsCode';
    qry.Open;
  finally
     ;
  end;
  selValue:=select('请选择部件类别','FPartsName','FPartsName','FPartsName','FPartsCode;FPartsName',qry);
  If Length(selValue)>0 then
  begin
    (Sender as TcxButtonEdit).EditingText:=qry.FieldByName('FPartsName').AsString
  end;

end;

procedure TFrm_ItemList.FPartsAliasPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='select distinct FPartsCode,FPartsAlias from V_ProductParts with(nolock) order by FPartsCode';
    qry.Open;
  finally
     ;
  end;
  selValue:=select('请选择部件别名','FPartsAlias','FPartsAlias','FPartsAlias','FPartsCode;FPartsAlias',qry);
  If Length(selValue)>0 then
  begin
    (Sender as TcxButtonEdit).EditingText:=qry.FieldByName('FPartsAlias').AsString
  end;

end;

procedure TFrm_ItemList.cxGVStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
//var
//  ADisplayStyle :TcxStyle;
begin
{  ADisplayStyle :=TcxStyle.Create(Self);
  try
    if ARecord.Values[3]<>'' then
    begin
      ADisplayStyle.Color :=clYellow;
      ADisplayStyle.Font.Color :=clBlack;
      AStyle :=ADisplayStyle; 
    end ;
  finally 
    ADisplayStyle.Free; 
  end;
 }

end;

procedure TFrm_ItemList.FProductNamePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='select distinct FProductID,FProductName from T_Product with(nolock) where FDepartmentID=:FDepartmentID order by FProductName';
    qry.Parameters.FindParam('FDepartmentID').Value:=UserFDepartmentID;
    qry.Open;
  finally
     ;
  end;
  selValue:=select('请选择产品类别','FProductName','FProductName','FProductName','FProductName',qry);
  If Length(selValue)>0 then
  begin
    mdata.Edit;
    mdata['FProductID']:=qry.FieldByName('FProductID').AsString;
    mdata['FProductName']:=qry.FieldByName('FProductName').AsString;
    mdata.Post;
  end;

end;

procedure TFrm_ItemList.E_FItemNumberPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='select *  from VT_Item with(nolock) where FDepartmentID=:FDepartmentID '
                 +' and FItemId not in (select distinct FItemId from T_ItemList with(nolock) where FDepartmentID=:FDepartmentID2 ) '
                 +'order by FItemNumber';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Parameters.FindParam('FDepartmentID2').value:=UserFDepartmentID;
    qry.Open;
  finally
     ;
  end;
  selValue:=select('请选择图号','FNumber','FParentNumber','FNumber','FName',qry);
  If Length(selValue)>0 then
  begin
    E_FItemNumber.Text:=qry.FieldByName('FItemNumber').AsString;
    E_FItemId.Text:=qry.FieldByName('FItemId').AsString;
    E_FItemNo.Text:=qry.FieldByName('FItemNo').AsString;
    E_FProductId.Text:=qry.FieldByName('FProductId').AsString;
  end;

  Self.S_Edit;

end;

procedure TFrm_ItemList.FormCreate(Sender: TObject);
begin
  inherited;
  TB_App.Visible:= mdlData.PermissionCheckRights(TFrm_ItemList.ClassName,'新增');
  TB_Edit.Visible:= mdlData.PermissionCheckRights(TFrm_ItemList.ClassName,'修改');
  TB_ItemListSuttle.Visible:= mdlData.PermissionCheckRights(TFrm_ItemList.ClassName,'修改');
  TB_Del.Visible:= mdlData.PermissionCheckRights(TFrm_ItemList.ClassName,'删除');
  TB_Refresh.Visible:= mdlData.PermissionCheckRights(TFrm_ItemList.ClassName,'新增');
  TB_Prin.Visible:= mdlData.PermissionCheckRights(TFrm_ItemList.ClassName,'打印');
  P_state:=2;
end;

procedure TFrm_ItemList.MDataBeforePost(DataSet: TDataSet);
begin
  inherited;
  DataSet['FFullNumber']:=DataSet['FItemNo']+'.'+DataSet['FPartsCode'];
end;

procedure TFrm_ItemList.FormShow(Sender: TObject);
begin
  inherited;
  TB_Ref.Click;
end;

procedure TFrm_ItemList.TB_ItemListSuttleClick(Sender: TObject);
var qry: TADOQuery;
begin
  inherited;
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Update  T_ItemList set  FItemListSuttle=b.FSuttle,FItemListQry=b.FQry from T_ItemList as a '
                 +' inner join  V_DesignBOM_Structure as b  '
                 +' on a.FItemListID=b.FItemListID  and  b.js=2 ';
    qry.ExecSQL;
  finally
     ;
  end;

end;

procedure TFrm_ItemList.TB_SubmitClick(Sender: TObject);
var
 qry:TADOquery;
 P_Show:string;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  P_Show:=mdata['FPartsNumber'];
  If (TB_Submit.Caption='提交')  then
  begin
    If application.MessageBox(Pchar('警告：是否提交【'+ P_Show+'】的部件划分？'+chr(13)+chr(13)
                                   +'确定要提交本部件吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      try
        qry.SQL.Text:='Update T_ItemList Set FSortStatus=1 where FItemListID=:FItemListID';
        qry.Parameters.FindParam('FItemListID').value:= mdata['FItemListID'];
        qry.ExecSQL;
      finally
        ;
      end;
      TB_Submit.Caption:='反提交';
      mdata.Edit;
      mdata['FSortStatusName']:='提交';
      mdata['FSortStatus']:=1;
      mdata.Post;

      application.MessageBox('提交完毕！','系统提示',MB_ICONINFORMATION);
    end;
    Exit;
  end;
  If (TB_Submit.Caption='反提交')  then
  begin
    If application.MessageBox(Pchar('警告：是否反提交【'+P_Show+'】的部件划分类别？'+chr(13)+chr(13)
                                   +'确定要反提交本部件吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      try
        qry.SQL.Text:='Update T_ItemList Set FSortStatus=0  where FItemListID=:FItemListID';
        qry.Parameters.FindParam('FItemListID').value:=  mdata['FItemListID'];
        qry.ExecSQL;
      finally
        ;
      end;
      TB_Submit.Caption:='提交';
      mdata.Edit;
      mdata['FSortStatusName']:='填单';
      mdata['FSortStatus']:=0;
      mdata.Post;

      application.MessageBox('反提交完毕！','系统提示',MB_ICONINFORMATION);
    end;
    Exit;
  end;

end;

procedure TFrm_ItemList.TB_CheckClick(Sender: TObject);
var
 qry:TADOquery;
 P_Show:string;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  P_Show:=mdata['FPartsNumber'];
  If (TB_Check.Caption='校对')  then
  begin
    If application.MessageBox(Pchar('警告：是否校对【'+P_Show+'】的部件划分？'+chr(13)+chr(13)
                                   +'确定要校对本部件吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      try
        qry.SQL.Text:='Update T_ItemList Set FSortStatus=2 where FItemListID=:FItemListID';
        qry.Parameters.FindParam('FItemListID').value:= mdata['FItemListID'];
        qry.ExecSQL;
      finally
        ;
      end;
      TB_Check.Caption:='反校对';
      mdata.Edit;
      mdata['FSortStatusName']:='校对';
      mdata['FSortStatus']:=2;
      mdata.Post;
     application.MessageBox('校对完毕！','系统提示',MB_ICONINFORMATION);
    end;
    Exit;
  end;
  If (TB_Check.Caption='反校对')  then
  begin
    If application.MessageBox(Pchar('警告：是否反校对【'+P_Show+'】的部件划分？'+chr(13)+chr(13)
                                   +'确定要反校对本部件吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      try
        qry.SQL.Text:='Update T_ItemList Set FSortStatus=1  where FItemListID=:FItemListID';
        qry.Parameters.FindParam('FItemListID').value:=  mdata['FItemListID'];
        qry.ExecSQL;
      finally
        ;
      end;
      TB_Check.Caption:='校对';
      mdata.Edit;
      mdata['FSortStatusName']:='提交';
      mdata['FSortStatus']:=1;
      mdata.Post;
      application.MessageBox('反校对完毕！','系统提示',MB_ICONINFORMATION);
    end;
    Exit;
  end;


end;

procedure TFrm_ItemList.TB_AuditClick(Sender: TObject);
var
 qry:TADOquery;
 P_Show:string;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  P_Show:=mdata['FPartsNumber'];
  If (TB_Audit.Caption='审核')  then
  begin
    If application.MessageBox(Pchar('警告：是否审核【'+P_Show+'】的部件划分？'+chr(13)+chr(13)
                                   +'确定要审核本部件吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      try
        qry.SQL.Text:='Update T_ItemList Set FSortStatus=3 where FItemListID=:FItemListID';
        qry.Parameters.FindParam('FItemListID').value:= mdata['FItemListID'];
        qry.ExecSQL;
      finally
        ;
      end;
      TB_Audit.Caption:='反审核';
      mdata.Edit;
      mdata['FSortStatusName']:='审核';
      mdata['FSortStatus']:=3;
      mdata.Post;
      application.MessageBox('审核完毕！','系统提示',MB_ICONINFORMATION);
    end;
    Exit;
  end;
  If (TB_Audit.Caption='反审核')  then
  begin
    If application.MessageBox(Pchar('警告：是否反审核【'+P_Show+'】的部件划分类别？'+chr(13)+chr(13)
                                   +'确定要反审核本部件吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      try
        qry.SQL.Text:='Update T_ItemList Set FSortStatus=0  where FItemListID=:FItemListID';
        qry.Parameters.FindParam('FItemListID').value:=  mdata['FItemListID'];
        qry.ExecSQL;
      finally
         ;
      end;
      TB_Audit.Caption:='审核';
      mdata.Edit;
      mdata['FSortStatusName']:='填单';
      mdata['FSortStatus']:=0;
      mdata.Post;
      application.MessageBox('反审核完毕！','系统提示',MB_ICONINFORMATION);
    end;
    Exit;
  end;
  

end;

procedure TFrm_ItemList.cxGVFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;
  If  P_state=2 then   //不在新增修改状态
  begin
    If mdata['FSortStatusName']='制单' then
    begin
      TB_Submit.Caption:='提交';
      TB_Submit.Visible:= mdlData.PermissionCheckRights(TFrm_ItemList.ClassName,'提交');
      TB_Check.Caption:='校对';
      TB_Check.Visible:= mdlData.PermissionCheckRights(TFrm_ItemList.ClassName,'校对');
      TB_Audit.Caption:='审核';
      TB_Audit.Visible:= mdlData.PermissionCheckRights(TFrm_ItemList.ClassName,'审核');
    end;
    If mdata['FSortStatusName']='提交' then
    begin
      TB_Submit.Caption:='反提交';
      TB_Submit.Visible:= mdlData.PermissionCheckRights(TFrm_ItemList.ClassName,'提交');
      TB_Check.Caption:='校对';
      TB_Check.Visible:= mdlData.PermissionCheckRights(TFrm_ItemList.ClassName,'校对');
      TB_Audit.Caption:='审核';
      TB_Audit.Visible:= mdlData.PermissionCheckRights(TFrm_ItemList.ClassName,'审核');
    end;
    If mdata['FSortStatusName']='校对' then
    begin
      TB_Submit.Caption:='提交';
      TB_Submit.Visible:= mdlData.PermissionCheckRights(TFrm_ItemList.ClassName,'提交');
      TB_Check.Caption:='反校对';
      TB_Check.Visible:= mdlData.PermissionCheckRights(TFrm_ItemList.ClassName,'校对');
      TB_Audit.Caption:='审核';
      TB_Audit.Visible:= mdlData.PermissionCheckRights(TFrm_ItemList.ClassName,'审核');
    end;
    If mdata['FSortStatusName']='审核' then
    begin
      TB_Submit.Caption:='提交';
      TB_Submit.Visible:= mdlData.PermissionCheckRights(TFrm_ItemList.ClassName,'提交');
      TB_Check.Caption:='校对';
      TB_Check.Visible:= mdlData.PermissionCheckRights(TFrm_ItemList.ClassName,'校对');
      TB_Audit.Caption:='反审核';
      TB_Audit.Visible:= mdlData.PermissionCheckRights(TFrm_ItemList.ClassName,'审核');
    end;
  end;
end;

procedure TFrm_ItemList.cxGridContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV';
  Gm:='mdata';
  Gr:='cxGrid';
  Act_Menu_Set.Execute;
end;

procedure TFrm_ItemList.N_EditClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_ItemList.N_FilterClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_ItemList.N_SortClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_ItemList.N_GroupClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_ItemList.N_SetClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_ItemList.N_OutClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_ItemList.Act_MenuExecute(Sender: TObject);
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

procedure TFrm_ItemList.Act_Menu_SetExecute(Sender: TObject);
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

end.
