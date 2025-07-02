unit Main_StockParts;

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
  ActnList, Menus;

type
  TFrm_StockParts = class(TFrm_GridBass)
    MData: TdxMemData;
    DS_Mdata: TDataSource;
    ImageList: TImageList;
    Panel1: TPanel;
    ToolBar1: TToolBar;
    ToolButton5: TToolButton;
    ToolButton1: TToolButton;
    TB_PRIN: TToolButton;
    TB_EXIT: TToolButton;
    RzSizePanel1: TRzSizePanel;
    PC_2: TRzPageControl;
    TS_Brow: TRzTabSheet;
    TB_app: TToolButton;
    TB_EDIT: TToolButton;
    TB_DEL: TToolButton;
    TB_refresh: TToolButton;
    PanelBkGnd: TPanel;
    Panel_button: TPanel;
    Bevel_button: TBevel;
    OKBtn: TcxButton;
    CancelBtn: TcxButton;
    Panel_upper: TPanel;
    L_Caption: TLabel;
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
    FSelnumber: TcxGridDBColumn;
    FWorkPartsNum: TcxGridDBColumn;
    FWorkParts: TcxGridDBColumn;
    cxGL: TcxGridLevel;
    Label5: TLabel;
    E_FProductName: TcxButtonEdit;
    E_FProductId: TcxTextEdit;
    Label1: TLabel;
    E_FPartsCode: TcxButtonEdit;
    E_FPartsName: TcxButtonEdit;
    FManageParts: TcxGridDBColumn;
    FParts: TcxGridDBColumn;
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
    Act_CF: TAction;
    Act_CFNum: TAction;
    FPlanParts: TcxGridDBColumn;
    FPartsSort: TcxGridDBColumn;
    FMakeParts: TcxGridDBColumn;
    procedure FormResize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TB_EXITClick(Sender: TObject);
    procedure MyTreeViewChange(Sender: TObject; Node: TTreeNode);
    procedure MyTreeViewExpanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure TB_RefClick(Sender: TObject);
    procedure OKBtnClick(Sender: TObject);
    procedure TB_appClick(Sender: TObject);
    procedure TB_EDITClick(Sender: TObject);
    procedure TB_DELClick(Sender: TObject);
    procedure TB_refreshClick(Sender: TObject);
    procedure CancelBtnClick(Sender: TObject);
    procedure E_FProductNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure E_FPartsNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormCreate(Sender: TObject);
    procedure cxGridContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure Act_Menu_SetExecute(Sender: TObject);
    procedure Act_CFExecute(Sender: TObject);
    procedure N_EditClick(Sender: TObject);
    procedure N_FilterClick(Sender: TObject);
    procedure N_SortClick(Sender: TObject);
    procedure N_GroupClick(Sender: TObject);
    procedure N_SetClick(Sender: TObject);
    procedure N_OutClick(Sender: TObject);
    procedure Act_CFNumExecute(Sender: TObject);
    procedure Act_MenuExecute(Sender: TObject);
  private
    { Private declarations }
    function AddRd:bool;
    function EditRd:bool;
    function DelRd:bool;


  public
    P_state:integer;
    GV,Gr,Gm,Mn:string;
    P_CH:string;
    { Public declarations }
  end;

var
  Frm_StockParts: TFrm_StockParts;


implementation

uses FRMDATA, COMMON, FrmSelect, ProgBar, PROGRASS;

{$R *.dfm}

function TFrm_StockParts.DelRd: bool;
var
 qry: TADOQuery;
begin
 // result:=False;
  qry:=TADOQuery.Create(Self);
  qry.Connection:=mdlData.conn;
  try
    qry.SQL.Text:='Delete from T_StockInParts where FProductID=:FProductID and FPartsCode=:FPartsCode';
    with qry.Parameters do
    begin
      FindParam('FProductID').value:=Trim(E_FProductID.Text);
      FindParam('FPartsCode').value:=Trim(E_FPartsCode.Text);
    end;
    result:=qry.ExecSQL>=1;
  finally
    qry.Free;
  end;
end;

function TFrm_StockParts.AddRd: bool;
var
  qry: TADOQuery;

begin
  qry:=TADOQuery.Create(Self);
  qry.Connection:=mdlData.conn;
  result:=False;

  If mData.RecordCount<=0 then
  begin
    result:=True;
    Exit;
  end;
  try
    qry.SQL.Text:='Insert into T_StockInParts(FProductID,FPartsCode,FWorkPartsNum,FPartsSort,FWorkParts,FManageParts,FMakeParts,FPlanParts,FParts) '
                 +'values(:FProductID,:FPartsCode,:FWorkPartsNum,:FPartsSort,:FWorkParts,:FManageParts,:FMakeParts,:FPlanParts,:FParts)';
     mData.First;

     while not mData.eof do
     begin
     //  If (mData['FWorkPartsNum']<>'') and (mData['FWorkParts']<>'') then
       If (mData['FPartsSort']<>'') and (mData['FWorkParts']<>'') then
       begin
         If qry.Active then qry.Close;
         with qry.Parameters do
         begin
           FindParam('FProductID').value:=Trim(E_FProductID.Text);
           FindParam('FPartsCode').value:=Trim(E_FPartsCode.Text);
           FindParam('FWorkPartsNum').value:=mdata['FWorkPartsNum'];
           FindParam('FPartsSort').value:=mdata['FPartsSort'];
           FindParam('FWorkParts').value:=mdata['FWorkParts'];
           FindParam('FManageParts').value:=mdata['FManageParts'];
           FindParam('FMakeParts').value:=mdata['FMakeParts'];
           FindParam('FPlanParts').value:=mdata['FPlanParts'];
           FindParam('FParts').value:=mdata['FParts'];
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


function TFrm_StockParts.EditRd:bool;
var
 qry:TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.Connection:=mdlData.conn;
  result:=False;

  If mData.RecordCount<=0 then
  begin
    result:=True;
    Exit;
  end;

  mData.Edit;
  mData.Post;

  mdlData.conn.BeginTrans;  //定义事务
  try
    if DelRd then  //1  表删除
    begin
      result:=True;
      if AddRd then //2   表新增
      begin
        result:=True;
        mdlData.conn.CommitTrans; //提交事务
      end
      else
      begin
        result:=False;
        mdlData.conn.RollbackTrans;      //回滚事务
      end
    end
    else
    begin
      result:=False;
      mdlData.conn.RollbackTrans;
    end
  except
    Application.MessageBox('数据保存失败，请重试。', '保存错误', 0 or MB_ICONINFORMATION);
    mdlData.Conn.RollBackTrans;
  end;
end;


procedure TFrm_StockParts.FormResize(Sender: TObject);
begin
  inherited;
  TB_refresh.Click;
  L_title.Caption:='入库部件类别操作';
  Self.Caption:='入库部件类别操作';
end;

procedure TFrm_StockParts.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=cafree;
  Frm_StockParts:=nil;
end;

procedure TFrm_StockParts.TB_EXITClick(Sender: TObject);
begin
  inherited;
  self.Close;
end;

procedure TFrm_StockParts.MyTreeViewChange(Sender: TObject; Node: TTreeNode);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;

  If Node = nil then Exit;
  with PTree(Node.Data)^ do
  begin
   // ListItemFNumber:=PTree(Node.Data).FNumber;
    P_th:=PTree(Node.Data).Caption;
    If PTree(Node.Data).Isleaf=1 then
       TB_Edit.Visible:=True
    else
       TB_Edit.Visible:=False;

    If PTree(Node.Data).Isleaf>=0 then
    begin
     // If not MyItemList(qry,Mdata,'V_StockInParts','FNumber',ListItemFNumber,'FNumber') then
      If not MyItemList(qry,Mdata,'V_StockInParts','FNumber',PTree(Node.Data).FNumber,'FNumber') then
      begin
        mdata.Open;
        cxGvColumn(cxGv,Mdata);
      end;
      If mdata.RecordCount>0 then
      begin
        E_FProductName.Text:= mdata['FProductName'];
        E_FProductID.Text:= mdata['FProductID'];
        E_FPartsCode.Text:= mdata['FPartsCode'];
        E_FPartsName.Text:= mdata['FPartsName'];
      end;
    end
    else
    begin
      mdata.Close;
    end;
  end;
end;

procedure TFrm_StockParts.MyTreeViewExpanding(Sender: TObject;
  Node: TTreeNode; var AllowExpansion: Boolean);
var
  P :PTree;
  qry:TADOquery;

begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;


  If (Node = nil) or
     (PTree(Node.Data).Flag <> cNoLoadFlag) or   // 1.加载标志
     (not Node.HasChildren) or                   // 2.未有子
     (Node.Count>0) then                         // 3.已有子节点
     Exit;

  qry.SQL.Text:='Select FProductId,FNumber, FParentNumber,FName,'
               +'Isleaf from VT_StockParts where FParentNumber= '''
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
    P.Isleaf := qry.FieldByName('Isleaf').Value;
    P.Flag := cNoLoadFlag;                            // 新节点，未加载标志
    with MyTreeView.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('Isleaf').value;
    end;
    qry.Next;
  end;


end;

procedure TFrm_StockParts.TB_RefClick(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If not TreeVeiwList(qry,MyTreeView,'VT_StockInParts') then
  begin
    Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;

end;

procedure TFrm_StockParts.OKBtnClick(Sender: TObject);
var qry: TADOQuery;

begin
  cxGV.OptionsData.Editing:=True;
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;

  mData.Edit;
  mData.Post;
  P_CH:='';
  Act_CF.Execute;  //部件类别重复
  Act_CFNum.Execute;
  If P_CH='重复' then
     Exit;
  If P_state=0 then
  begin
    If application.MessageBox('是否要保存添加的数据？','提示',MB_ICONINFORMATION+MB_YESNO)<>6 then
       Exit;
    If AddRd then //增加数据
    begin
      If application.MessageBox('录入数据已保存,还要继续录入吗？','提示',MB_ICONINFORMATION+MB_YESNO)=6 then
      begin
        Tb_app.Click ;
        E_FProductName.Enabled:=True;
        E_FPartsName.Enabled:=True;
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
{  cxGV.OptionsData.Editing:=False;
  cxGv.OptionsData.Inserting:=False;
  cxGv.OptionsData.Appending:=False;
  cxGv.OptionsData.Deleting:=False;
}
end;



procedure TFrm_StockParts.TB_appClick(Sender: TObject);
Var qry: TADOQuery;
    i:Integer;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;

  P_state :=0;
  L_Caption.Caption:='数据新增';
  E_FProductName.Text:= '';
  E_FProductID.Text:= '';
  E_FPartsName.Text:= '';
  E_FPartsCode.Text:= '';
  try
    qry.SQL.Text:='Select * from V_StockInParts where FProductID=0';
    qry.Open;
  finally
     ;
  end;
  mdata.CopyFromDataSet(qry);

  If mData.Active then mData.Close;
     mData.Open;
  mData.Edit;
  for i:=1 to 10 do
  begin
    mData.Append;
    mData['FWorkPartsNum']:=ForMat('%.3d',[i]);
    mData['FPartsSort']:='';
    mData['FWorkParts']:='';
    mData.Post;
  end;
  mdata.First;

  cxGV.OptionsData.Editing:=True;
  cxGv.OptionsData.Inserting:=True;
  cxGv.OptionsData.Appending:=True;
  cxGv.OptionsData.Deleting:=True;

 // OKBtn.Left:=StrToInt(FloatToStr(int((PanelBkGnd.Width-OKBtn.Width-CancelBtn.Width-20)/2)));
 // CancelBtn.Left:=StrToInt(FloatToStr(int((PanelBkGnd.Width-OKBtn.Width-CancelBtn.Width-20)/2)))+OKBtn.Width+20;
  OKBtn.Visible:=True;
  CancelBtn.Visible:=True;


  TB_refresh.Visible:=False;
  TB_app.Visible:=False;
  TB_Edit.Visible:=False;
  TB_Del.Visible:=False;
  E_FProductName.Enabled:=True;
  E_FPartsName.Enabled:=True;

  MyTreeView.Enabled:=False;
  for i:=0 to cxGv.ColumnCount-1 do
  begin
    cxGv.Columns[i].Options.Editing:=True;
  end;

end;

procedure TFrm_StockParts.TB_EDITClick(Sender: TObject);
var
 i:Integer;
begin
  P_state :=1;

  L_Caption.Caption:='数据修改';

  //OKBtn.Left:=StrToInt(FloatToStr(int((PanelBkGnd.Width-OKBtn.Width-CancelBtn.Width-20)/2)));
 // CancelBtn.Left:=StrToInt(FloatToStr(int((PanelBkGnd.Width-OKBtn.Width-CancelBtn.Width-20)/2)))+OKBtn.Width+20;
  OKBtn.Visible:=True;
  CancelBtn.Visible:=True;

  E_FProductName.Enabled:=False;
  E_FPartsName.Enabled:=False;

  TB_refresh.Visible:=False;
  TB_Edit.Visible:=False;
  TB_Del.Visible:=False;
  TB_app.Visible:=False;
  MyTreeView.Enabled:=False;

  cxGV.OptionsData.Editing:=True;
  cxGv.OptionsData.Inserting:=True;
  cxGv.OptionsData.Appending:=True;
  cxGv.OptionsData.Deleting:=True;


  for i:=0 to cxGv.ColumnCount-1 do
  begin
    cxGv.Columns[i].Options.Editing:=True;
  end;
end;

procedure TFrm_StockParts.TB_DELClick(Sender: TObject);
var
  qry:TADOQuery;

begin
  qry:=TAdoQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If (mdata.RecordCount<1) then
    Exit;

  If mdata.RecordCount<>1 then
  begin
    application.MessageBox('只允许删除单个记录！请重新选择!','系统提示',MB_ICONINFORMATION);
    Exit;
  end;


  If application.MessageBox(Pchar('警告：是否删除部件类别为：【'+Trim(Mdata['FWorkParts'])+'】的单据？'+chr(13)+chr(13)
                           +'删除数据操作将不可恢复，确定要删除本记录吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
  If application.MessageBox(Pchar('警告：是否删除部件类别为：【'+Trim(Mdata['FWorkParts'])+'】的单据？'+chr(13)+chr(13)
                           +'删除数据操作将不可恢复，确定要删除本记录吗？'),'再次警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then

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
  TB_refresh.Click;
end;

procedure TFrm_StockParts.TB_refreshClick(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If not TreeVeiwListUserID(qry,MyTreeView,'VT_StockParts',UserFDepartmentID) then
  begin
    Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;
end;

procedure TFrm_StockParts.CancelBtnClick(Sender: TObject);
begin
  inherited;
  L_Caption.Caption:='数据浏览';
  cxGV.OptionsData.Editing:=False;
  OKBtn.Visible:=False;
  CancelBtn.Visible:=False;
  TB_refresh.Visible:=True;
  TB_app.Visible:=True;
  TB_Edit.Visible:=True;
  TB_Del.Visible:=True;
  MyTreeView.Enabled:=True;
 // TB_refresh.Click;
  E_FProductName.Enabled:=False;
  E_FPartsName.Enabled:=False;
  cxGV.OptionsData.Editing:=False;
  cxGv.OptionsData.Inserting:=False;
  cxGv.OptionsData.Appending:=False;
  cxGv.OptionsData.Deleting:=False;

end;

procedure TFrm_StockParts.E_FProductNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;

begin
  qry:=TADOQuery.Create(Self);
  qry.Connection:=mdlData.conn;
  try
    qry.SQL.Text:='Select * from VT_ProductParts with(nolock) where FDepartmentID=:FDepartmentID order by FNumber ';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Open;
  finally
     ;
  end;
  selValue:=select('请选择产品类型','FNumber','FParentNumber','FNumber','FName',qry);
  If Length(selValue)>0 then
  begin
    E_FProductId.Text:=qry.FieldByName('FProductId').AsString;
    E_FProductName.Text:=qry.FieldByName('FProductName').AsString;
    E_FPartsCode.Text:=qry.FieldByName('FPartsCode').AsString;
    E_FPartsName.Text:=qry.FieldByName('FPartsName').AsString;
  end;
  If P_state=0 then
  begin
    mdata.First;
    while not mdata.Eof do
    begin
      mdata.Edit;
      mdata['FProductName']:=qry.FieldByName('FProductName').AsString;
      mdata.Post;
      mdata.Next;
    end;
  end;
  mdata.First;
  qry.Free;

end;

procedure TFrm_StockParts.E_FPartsNamePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;

begin
  qry:=TADOQuery.Create(Self);
  qry.Connection:=mdlData.conn;
  try
    qry.SQL.Text:='select * from VT_ProductParts where FProductId=:FProductId order by FNumber';
    qry.Parameters[0].Value:=Trim(E_FProductId.Text);
    qry.Open;
  finally
     ;
  end;
  selValue:=select('请选择产品类型','FNumber','FParentNumber','FNumber','FName',qry);
  If Length(selValue)>0 then
  begin
    E_FPartsCode.Text:=qry.FieldByName('FPartsCode').AsString;
    E_FPartsName.Text:=qry.FieldByName('FPartsName').AsString;
  end;
  qry.Free;

end;

procedure TFrm_StockParts.FormCreate(Sender: TObject);
begin
  inherited;
  TB_App.Visible:= mdlData.PermissionCheckRights(TFrm_StockParts.ClassName,'新增');
//  TB_Edit.Visible:= mdlData.PermissionCheckRights(TFrm_StockParts.ClassName,'修改');
//  TB_Del.Visible:= mdlData.PermissionCheckRights(TFrm_StockParts.ClassName,'删除');
  TB_Prin.Visible:= mdlData.PermissionCheckRights(TFrm_StockParts.ClassName,'打印');

end;

procedure TFrm_StockParts.cxGridContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV';
  Gm:='mdata';
  Gr:='cxGrid';
  Act_Menu_Set.Execute;

end;

procedure TFrm_StockParts.Act_Menu_SetExecute(Sender: TObject);
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

procedure TFrm_StockParts.Act_CFExecute(Sender: TObject);
Var P_FPartsSort:string;
    P_I:Integer;
    I_index:integer;
begin
  inherited;
  P_I:=0;
  MData.First;
  P_FPartsSort:=MData['FPartsSort'];
  while not MData.Eof do
  begin
    I_index:=mData.RecNo ;
    MData.First;
    while not MData.Eof do
    begin
      If MData['FPartsSort']=P_FPartsSort then
         P_I:=P_I+1;
      MData.Next;
    end;
    If P_I=1 then
       P_I:=0;
    If P_I>1 then
    begin
      application.MessageBox('部件类别重复！请重新检查','系统提示',MB_ICONERROR);
      mData.RecNo :=I_index;
      P_CH:='重复';
      Exit;
    end
    else
    begin
      mData.RecNo :=I_index;
      MData.Next;
      P_FPartsSort:=MData['FPartsSort'];
    end;
  end;


end;

procedure TFrm_StockParts.N_EditClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_StockParts.N_FilterClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_StockParts.N_SortClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_StockParts.N_GroupClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_StockParts.N_SetClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_StockParts.N_OutClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_StockParts.Act_CFNumExecute(Sender: TObject);
Var P_FPartsSort:string;
    P_I:Integer;
    I_index:integer;
begin
  inherited;
  P_I:=0;
  MData.First;
  P_FPartsSort:=MData['FWorkPartsNum'];
  while not MData.Eof do
  begin
    I_index:=mData.RecNo ;
    MData.First;
    while not MData.Eof do
    begin
      If MData['FWorkPartsNum']=P_FPartsSort then
         P_I:=P_I+1;
      MData.Next;
    end;
    If P_I=1 then
       P_I:=0;
    If P_I>1 then
    begin
      application.MessageBox('入库类别编码！请重新检查','系统提示',MB_ICONERROR);
      mData.RecNo :=I_index;
      P_CH:='重复';
      Exit;
    end
    else
    begin
      mData.RecNo :=I_index;
      MData.Next;
      P_FPartsSort:=MData['FWorkPartsNum'];
    end;
  end;


end;

procedure TFrm_StockParts.Act_MenuExecute(Sender: TObject);
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

end.
