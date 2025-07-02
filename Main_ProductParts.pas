unit Main_ProductParts;

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
  TFlatPanelUnit, cxLookAndFeelPainters, cxButtons, jpeg, ActnList, Menus;

type
  TFrm_ProductParts = class(TFrm_GridBass)
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
    MDataEdit: TdxMemData;
    MDataEditFNum: TIntegerField;
    MDataEditFName: TStringField;
    MDataEditFModel: TStringField;
    MDataEditFUnitName: TStringField;
    MDataEditFIcItemID: TIntegerField;
    MDataEditFAmount: TFloatField;
    MDataEditFPassQty: TFloatField;
    MDataEditFPrice: TFloatField;
    MDataEditFMaterialRemark: TStringField;
    DS_MdataEdit: TDataSource;
    PanelBkGnd: TPanel;
    Panel_button: TPanel;
    Bevel_button: TBevel;
    OKBtn: TcxButton;
    CancelBtn: TcxButton;
    cxGrid: TcxGrid;
    cxGV: TcxGridDBTableView;
    FPartsCode: TcxGridDBColumn;
    FPartsName: TcxGridDBColumn;
    FPartsAlias: TcxGridDBColumn;
    cxGL: TcxGridLevel;
    MyTreeView: TTreeView;
    MDataFPartsCode: TStringField;
    MDataFPartsName: TStringField;
    MDataFPartsAlias: TStringField;
    MDataFProductName: TStringField;
    MDataFProductId: TStringField;
    FPartsID: TcxGridDBColumn;
    FProductID: TcxGridDBColumn;
    FProductName: TcxGridDBColumn;
    Image3: TImage;
    FDepartmentID: TcxGridDBColumn;
    MDataFDepartmentName: TStringField;
    MDataFDepartmentID: TIntegerField;
    PM: TPopupMenu;
    N_Edit: TMenuItem;
    N_Filter: TMenuItem;
    N_Sort: TMenuItem;
    N_Group: TMenuItem;
    N_Set: TMenuItem;
    N_Out: TMenuItem;
    actionList: TActionList;
    Act_Menu: TAction;
    Act_Menu_Set: TAction;
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
    procedure CancelBtnClick(Sender: TObject);
    procedure FPartsNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FPartsAliasPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FProductNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure RzSizePanel1Click(Sender: TObject);
    procedure FDepartmentNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxGridContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure Act_MenuExecute(Sender: TObject);
    procedure Act_Menu_SetExecute(Sender: TObject);
    procedure N_EditClick(Sender: TObject);
    procedure N_FilterClick(Sender: TObject);
    procedure N_SortClick(Sender: TObject);
    procedure N_GroupClick(Sender: TObject);
    procedure N_SetClick(Sender: TObject);
    procedure N_OutClick(Sender: TObject);
  private
    ListItemFNumber,P_th:String;

    { Private declarations }
    function AddRd:bool;
    function EditRd:bool;
    function DelRd:bool;
    procedure Set_Open;
    procedure Set_Close;

 //   Procedure MyItemList(Sender: TObject);

  public
    P_state:integer;
  //  P_id:string;
    { Public declarations }
  end;

var
  Frm_ProductParts: TFrm_ProductParts;


implementation

uses FRMDATA, FRMMAIN, COMMON, FrmSelect, ProgBar, PROGRASS;

{$R *.dfm}
procedure TFrm_ProductParts.Set_Open;
begin
  TB_Ref.Visible:=False;
  TB_App.Visible:=False;
  TB_Edit.Visible:=False;
  TB_Del.Visible:=False;
  MyTreeView.Enabled:=False;

  OKBtn.Visible:=True;
  CancelBtn.Visible:=True;
  cxGV.OptionsData.Editing:=True;

  FPartsCode.Options.Editing:=True;
  FPartsName.Options.Editing:=True;
  FPartsAlias.Options.Editing:=True;
  FProductName.Options.Editing:=True;


end;

procedure TFrm_ProductParts.Set_Close;
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

function TFrm_ProductParts.DelRd: bool;
var
 qry: TADOQuery;

begin
  //result:=False;
  qry:=TADOQuery.Create(Self);
  qry.Connection:=mdlData.conn;
  try
    qry.SQL.Text:='Delete from T_ProductParts where FPartsId=:FPartsId';
    with qry.Parameters do
    begin
      FindParam('FPartsId').value:=mdata['FPartsId'];
    //  s:=mdata['FPartsId'];
    end;
    result:=qry.ExecSQL>=1;
  finally
    qry.Free;
  end;
end;

function TFrm_ProductParts.AddRd: bool;
var
  qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.Connection:=mdlData.conn;
  Result:=False;

  If mData.RecordCount<=0 then
  begin
    Result:=True;
    Exit;
  end;

  try
    qry.SQL.Text:='Insert into T_ProductParts(FProductID,FPartsCode,FPartsName,FPartsAlias) '
                 +'values(:FProductID,:FpartsCode,:FPartsName,:FPartsAlias)';
    mData.First;
    while not mData.eof do
    begin
      If (mData['FPartsName']<>'') and (mData['FPartsName']<>null) then
      begin
        If qry.Active then qry.Close;
        with qry.Parameters do
        begin
          FindParam('FProductID').value:=mdata['FProductID'];
          FindParam('FPartsCode').value:=mdata['FPartsCode'];
          FindParam('FPartsName').value:=mdata['FPartsName'];
          FindParam('FPartsAlias').value:=mdata['FPartsAlias'];
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


function TFrm_ProductParts.EditRd:bool;
var
 qry:TADOQuery;

begin
  qry:=TADOQuery.Create(Self);
  qry.Connection:=mdlData.conn;
  Result:=False;

  If mData.RecordCount<=0 then
  begin
    Result:=True;
    Exit;
  end;

  mData.Edit;
  mData.Post;
  try
    qry.SQL.Text:='Update T_ProductParts set FProductID=:FProductID,FPartsCode=:FPartsCode,FPartsName=:FPartsName,FPartsAlias=:FPartsAlias '
                 +'where FPartsId=:FPartsId';
    mData.First;
    while not mData.eof do
    begin
      If (mData['FPartsName']<>'') and (mData['FPartsName']<>null) and (mData['FPartsId']<>0) then
      begin
        If qry.Active then qry.Close;
        with qry.Parameters do
        begin
          FindParam('FProductID').value:=mdata['FProductID'];
          FindParam('FPartsCode').value:=mdata['FPartsCode'];
          FindParam('FPartsName').value:=mdata['FPartsName'];
          FindParam('FPartsAlias').value:=mdata['FPartsAlias'];
          FindParam('FPartsId').value:=mdata['FPartsId'];
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


procedure TFrm_ProductParts.FormResize(Sender: TObject);
begin
  inherited;
  L_title.Caption:='产品信息操作';
  Self.Caption:='产品信息操作';
  OKBtn.Left:=StrToInt(FloatToStr(int((PanelBkGnd.Width-OKBtn.Width-CancelBtn.Width-20)/2)));
  CancelBtn.Left:=StrToInt(FloatToStr(int((PanelBkGnd.Width-OKBtn.Width-CancelBtn.Width-20)/2)))+OKBtn.Width+20;
end;

procedure TFrm_ProductParts.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=cafree;
  Frm_ProductParts:=nil;
end;

procedure TFrm_ProductParts.TB_EXITClick(Sender: TObject);
begin
  inherited;
  self.Close;
end;

procedure TFrm_ProductParts.MyTreeViewChange(Sender: TObject; Node: TTreeNode);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;

  If Node = nil then Exit;
  with PTree(Node.Data)^ do
  begin
    ListItemFNumber:=PTree(Node.Data).FNumber;
    P_th:=PTree(Node.Data).Caption;
    If not MyItemList(qry,Mdata,'V_ProductParts','FNumber',ListItemFNumber,'FNumber') then
    begin
      mdata.Open;
      cxGvColumn(cxGv,Mdata);
    end;
  end;
end;

procedure TFrm_ProductParts.MyTreeViewExpanding(Sender: TObject;
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
               +'Isleaf from VT_ProductParts where FParentNumber= '''
               +PTree(Node.Data).ID+''' and  FDepartmentID=:FDepartmentID order by FNumber';
   qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;

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
    P.Flag := cNoLoadFlag;                            // 新节点，未加载标志
    with MyTreeView.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('Isleaf').value;
    end;
    qry.Next;
  end;


end;

procedure TFrm_ProductParts.TB_RefClick(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If not TreeVeiwListWhere(qry,MyTreeView,'VT_ProductParts',' and FDepartmentID='+IntToStr(UserFDepartmentID) ) then
  begin
    Application.MessageBox(PChar('物料树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;
end;

procedure TFrm_ProductParts.OKBtnClick(Sender: TObject);
var qry: TADOQuery;

begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;

  mData.Edit;
  mData.Post;

  If (mdata['FProductID']=0) or (mdata['FPartsCode']='') or (mdata['FPartsName']='') then
  begin
    application.MessageBox('关键字不能为空！请重新输入','系统提示',MB_ICONERROR);
    Exit;
  end;


  If P_state =0 then
  begin
    try
      qry.SQL.Text:='Select * from V_ProductParts where FProductID=:FProductID and FPartsCode=:FPartsCode and FPartsName=:FPartsName';
      qry.Parameters.FindParam('FProductID').Value:=mdata['FProductID'];
      qry.Parameters.FindParam('FPartsCode').Value:=mdata['FPartsCode'];
      qry.Parameters.FindParam('FPartsName').Value:=mdata['FPartsName'];
      qry.Open;
      If qry.RecordCount>0 then
      begin
         application.MessageBox('部件重复！请重新输入','系统提示',MB_ICONERROR);
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



procedure TFrm_ProductParts.TB_AppClick(Sender: TObject);
var
 qry:TADOquery;
 i:Integer;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;

  P_state :=0;
  L_title.Caption:='产品信息新增';
  Self.Set_Open;

  If (mData.RecordCount=1) then
  begin
    try
      qry.SQL.Text:='Select isnull(max(FPartsCode),'''') as maxFPartsCode from T_ProductParts where FProductID=:FProductID';
      qry.Parameters.FindParam('FProductID').Value:=mdata['FProductID'];
      qry.Open;
    finally
       ;
    end;
    If (qry.FieldByName('maxFPartsCode').Value<>'') then
       i:=StrToInt(qry.FieldByName('maxFPartsCode').Value)+1
    else
       i:=1;

    mData.Edit;
    mData['FPartsCode']:=Format('%.3d',[i]);
    mData['FPartsName']:='';
    mData['FPartsAlias']:='';
    mData['FDepartmentID']:=0;
    mData['FDepartmentName']:='';

    mData.Post;
  end
  else
  begin
    mData.Close;
    mData.Open;
    mData.Append;
    mData.Edit;
    mData.Post;
  end;

end;

procedure TFrm_ProductParts.TB_EditClick(Sender: TObject);

begin
  P_state :=1;
  If (mdata.RecordCount<1) then
    Exit;
  If mdata.RecordCount<>1 then
  begin
    application.MessageBox('只允许修改单个记录！请重新选择!','系统提示',MB_ICONINFORMATION);
    Exit;
  end;

  L_title.Caption:='产品部件信息修改';
  Self.Set_Open;

end;

procedure TFrm_ProductParts.TB_DelClick(Sender: TObject);
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
  try
    qry.SQL.Text:='Select * from V_BalanceParts where FPartsId=:FPartsId';
    qry.Parameters.FindParam('FPartsId').Value:=mdata['FPartsId'];
    qry.Open;
  finally
     ;
  end;
  if qry.RecordCount>0 then
  begin
    application.MessageBox(Pchar('部件【'+Trim(Mdata['FProductName'])+'】【'+Trim(Mdata['FPartsName'])+'】已启用不允许删除！'),'系统提示',MB_ICONINFORMATION);
    Exit;
  end;

  If application.MessageBox(Pchar('警告：是否删除部件【'+Trim(Mdata['FProductName'])+'】【'+Trim(Mdata['FPartsName'])+'】的数据？'+chr(13)+chr(13)
                           +'删除数据操作将不可恢复，确定要删除本数据吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
  If application.MessageBox(Pchar('警告：是否删除部件【'+Trim(Mdata['FProductName'])+'】【'+Trim(Mdata['FPartsName'])+'】的数据？'+chr(13)+chr(13)
                           +'删除数据操作将不可恢复，确定要删除本数据吗？'),'再次警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then

  begin
    //单据删除
    If not DelRd then
    begin
      application.MessageBox('删除数据失败！','系统提示',MB_ICONINFORMATION);
      mdlData.conn.RollbackTrans;
      Exit;
    end;
  end;

  mdata.Close;
  qry.Free;
  TB_ref.Click;
end;

procedure TFrm_ProductParts.CancelBtnClick(Sender: TObject);
begin
  inherited;
  L_title.Caption:='产品部件信息';
  Self.Set_Close;
end;

procedure TFrm_ProductParts.FPartsNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.Connection:=mdlData.conn;
  try
    qry.SQL.Text:='select distinct FPartsCode,FPartsName from V_ProductParts order by FPartsCode';
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

procedure TFrm_ProductParts.FPartsAliasPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.Connection:=mdlData.conn;
  try
    qry.SQL.Text:='select distinct FPartsCode,FPartsAlias from V_ProductParts order by FPartsCode';
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

procedure TFrm_ProductParts.FormCreate(Sender: TObject);
begin
  inherited;
  TB_App.Enabled:= mdlData.PermissionCheckRights(TFrm_ProductParts.ClassName,'新增');
  TB_Edit.Enabled:= mdlData.PermissionCheckRights(TFrm_ProductParts.ClassName,'修改');
  TB_Del.Enabled:= mdlData.PermissionCheckRights(TFrm_ProductParts.ClassName,'删除');
  TB_Prin.Enabled:= mdlData.CheckFrmRights(TFrm_ProductParts.ClassName,'打印');
end;

procedure TFrm_ProductParts.FormShow(Sender: TObject);
begin
  inherited;
  TB_Ref.Click;
  OKBtn.Left:=StrToInt(FloatToStr(int((PanelBkGnd.Width-OKBtn.Width-CancelBtn.Width-20)/2)));
  CancelBtn.Left:=StrToInt(FloatToStr(int((PanelBkGnd.Width-OKBtn.Width-CancelBtn.Width-20)/2)))+OKBtn.Width+20;
 
end;

procedure TFrm_ProductParts.FProductNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.Connection:=mdlData.conn;
  mdata.Edit;
  try
    qry.SQL.Text:='select * from VT_Product '
                 +'where FDepartmentID=:FDepartmentID order by FNumber';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Open;
  finally
     ;
  end;
  selValue:=select('请选择产品类型','FNumber','FParentNumber','FNumber','FNumber;FProductName',qry);
  If Length(selValue)>0 then
  begin
    mdata.Edit;
    mdata['FProductId']:=qry.FieldByName('FProductId').AsString;
    mdata['FProductName']:=qry.FieldByName('FProductName').AsString;
    mdata.Post;
   // Tb_app.Click ;
  end;
  qry.Free;

end;

procedure TFrm_ProductParts.RzSizePanel1Click(Sender: TObject);
begin
  inherited;
  OKBtn.Left:=StrToInt(FloatToStr(int((PanelBkGnd.Width-OKBtn.Width-CancelBtn.Width-20)/2)));
  CancelBtn.Left:=StrToInt(FloatToStr(int((PanelBkGnd.Width-OKBtn.Width-CancelBtn.Width-20)/2)))+OKBtn.Width+20;

end;

procedure TFrm_ProductParts.FDepartmentNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='select distinct FDepartmentID,FDepartmentName from T_Department where FDepartmentID=:FDepartmentID order by FDepartmentName';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Open;
  finally
     ;
  end;
  selValue:=select('请部门','FDepartmentName','FDepartmentName','FDepartmentName','FDepartmentName',qry);
  If Length(selValue)>0 then
  begin
    mdata.Edit;
    mdata['FDepartmentName']:=qry.FieldByName('FDepartmentName').Value;
    mdata['FDepartmentID']:=qry.FieldByName('FDepartmentID').Value;
    mdata.Post;
  end;

end;

procedure TFrm_ProductParts.cxGridContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV';
  Gm:='mdata';
  Gr:='cxGrid';
  Act_Menu_Set.Execute;
end;

procedure TFrm_ProductParts.Act_MenuExecute(Sender: TObject);
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

procedure TFrm_ProductParts.Act_Menu_SetExecute(Sender: TObject);
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

procedure TFrm_ProductParts.N_EditClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_ProductParts.N_FilterClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_ProductParts.N_SortClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_ProductParts.N_GroupClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_ProductParts.N_SetClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_ProductParts.N_OutClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

end.
