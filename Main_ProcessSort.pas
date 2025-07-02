unit Main_ProcessSort;

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
  TFrm_ProcessSort = class(TFrm_GridBass)
    MData: TdxMemData;
    DS_Mdata: TDataSource;
    ImageList: TImageList;
    Panel1: TPanel;
    ToolBar1: TToolBar;
    ToolButton5: TToolButton;
    TB_Down: TToolButton;
    ToolButton1: TToolButton;
    TB_PRIN: TToolButton;
    TB_EXIT: TToolButton;
    frReport: TfrReport;
    frDBDataSet: TfrDBDataSet;
    RzSizePanel1: TRzSizePanel;
    PC_2: TRzPageControl;
    TS_Brow: TRzTabSheet;
    TS_Edit: TRzTabSheet;
    ADOQuery: TADOQuery;
    DS_K3: TDataSource;
    ADOStoredProc1: TADOStoredProc;
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
    TB_Out: TToolButton;
    cxGrid: TcxGrid;
    cxGV: TcxGridDBTableView;
    Num: TcxGridDBColumn;
    FFullName: TcxGridDBColumn;
    FProcessSort: TcxGridDBColumn;
    cxGL: TcxGridLevel;
    Label5: TLabel;
    E_FProductName: TcxButtonEdit;
    E_FProductId: TcxTextEdit;
    Label1: TLabel;
    E_FPartsCode: TcxButtonEdit;
    E_FPartsName: TcxButtonEdit;
    FReMark: TcxGridDBColumn;
    procedure FormResize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TB_EXITClick(Sender: TObject);
    procedure TB_DownClick(Sender: TObject);
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
    procedure FPartsNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure TB_OutClick(Sender: TObject);
    procedure FProductNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure E_FProductNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure E_FPartsNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormCreate(Sender: TObject);
  private
    ListItemFNumber,P_th:String;
    P_i:boolean;



    { Private declarations }
    function AddRd:bool;
    function EditRd:bool;
    function DelRd:bool;

 //   Procedure MyItemList(Sender: TObject);

  public
    P_state:integer;
  //  P_id:string;
    { Public declarations }
  end;

var
  Frm_ProcessSort: TFrm_ProcessSort;


implementation

uses FRMDATA, FRMMAIN, COMMON, FrmSelect, ProgBar, PROGRASS;

{$R *.dfm}

function TFrm_ProcessSort.DelRd: bool;
var
 qry: TADOQuery;
begin
 // result:=False;
  qry:=TADOQuery.Create(Self);
  qry.Connection:=mdlData.conn;
  try
    qry.SQL.Text:='Delete from T_ProcessSort where FProductID=:FProductID and FPartsCode=:FPartsCode';
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

function TFrm_ProcessSort.AddRd: bool;
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
    qry.SQL.Text:='Insert into T_ProcessSort(FProductID,FPartsCode,Num,FFullName,FProcessSort,FReMark) '
                 +'values(:FProductID,:FPartsCode,:Num,:FFullName,:FProcessSort,:FReMark)';
     mData.First;

     while not mData.eof do
     begin
       //If (mData['FPartsCode']<>'') and (mData['Num']<>'') and (mData['FPartsSort']<>'') then
       begin
         If qry.Active then qry.Close;
         with qry.Parameters do
         begin
           FindParam('FProductID').value:=Trim(E_FProductID.Text);
           FindParam('FPartsCode').value:=Trim(E_FPartsCode.Text);
           FindParam('Num').value:=mdata['Num'];
           FindParam('FFullName').value:=mdata['FFullName'];
           FindParam('FProcessSort').value:=mdata['FProcessSort'];
           FindParam('FReMark').value:=mdata['FReMark'];
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


function TFrm_ProcessSort.EditRd:bool;
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


procedure TFrm_ProcessSort.FormResize(Sender: TObject);
begin
  inherited;
  TB_refresh.Click;
  L_title.Caption:='生产工艺操作';
  Self.Caption:='生产工艺操作';
end;

procedure TFrm_ProcessSort.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=cafree;
  Frm_ProcessSort:=nil;
end;

procedure TFrm_ProcessSort.TB_EXITClick(Sender: TObject);
begin
  inherited;
  self.Close;
end;

procedure TFrm_ProcessSort.TB_DownClick(Sender: TObject);
Var i:Integer;
begin
  If P_i then
  begin
    TB_Down.Caption:='取消设置';
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
    TB_Down.Caption:='设置';
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

procedure TFrm_ProcessSort.MyTreeViewChange(Sender: TObject; Node: TTreeNode);
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
    If not MyItemList(qry,Mdata,'V_ProcessSort','FNumber',ListItemFNumber,'FNumber') then
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
    end
  end;

end;

procedure TFrm_ProcessSort.MyTreeViewExpanding(Sender: TObject;
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

{  qry.SQL.Text:='Select FProductId,FNumber, FParentNumber,FName,'
               +'Isleaf from VT_ProcessSort where FParentNumber= '''
               +PTree(Node.Data).ID+''' and FDepartmentID=:FDepartmentID order by FNumber';}
  qry.SQL.Text:='Select FProductId,FNumber, FParentNumber,FName,'
               +'Isleaf from VT_ProcessSort where FParentNumber= '''
               +PTree(Node.Data).ID+''' order by FNumber';
//  qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
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

procedure TFrm_ProcessSort.TB_RefClick(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If not TreeVeiwList(qry,MyTreeView,'VT_ProcessSort') then
  begin
    Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;

end;

procedure TFrm_ProcessSort.OKBtnClick(Sender: TObject);
var qry: TADOQuery;

begin
  cxGV.OptionsData.Editing:=True;
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;

  mData.Edit;
  mData.Post;

  If P_state =0 then
  begin
    try
      qry.SQL.Text:='Select * from V_ProcessSort where FProcessSort=:FProcessSort and FProductID=:FProductID';
      qry.Parameters.FindParam('FProcessSort').Value:=mdata['FProcessSort'];
      qry.Parameters.FindParam('FProductID').Value:=mdata['FProductID'];
      qry.Open;
      If qry.RecordCount>0 then
      begin
         application.MessageBox('部件类别重复！请重新选择','系统提示',MB_ICONERROR);
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

  cxGV.OptionsData.Editing:=False;
  cxGv.OptionsData.Inserting:=False;
  cxGv.OptionsData.Appending:=False;
  cxGv.OptionsData.Deleting:=False;

  E_FProductName.Enabled:=False;
  E_FPartsName.Enabled:=False;

end;



procedure TFrm_ProcessSort.TB_appClick(Sender: TObject);
var
 qry: TADOQuery;
 i:Integer;

begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  P_state :=0;
  L_Caption.Caption:='数据新增';
  E_FProductName.Text:= '';
  E_FProductID.Text:= '';

  try
    qry.SQL.Text:='Select * from V_ProcessSort where FProductID=:FProductID';
    qry.Parameters.FindParam('FProductID').Value:=0;
    qry.Open;
  finally
    ;
  end;
  mdata.CopyFromDataSet(qry);

  If mData.Active then mData.Close;
     mData.Open;
  mData.Edit;
  for i:=1 to 50 do
  begin
    mData.Append;
    mData['Num']:=i;
    mData['FFullName']:='';
    mData['FProcessSort']:='';
    mData['FReMark']:='';
    mData.Post;
  end;
  mdata.First;
  cxGV.OptionsData.Editing:=True;
  cxGV.OptionsData.Editing:=True;
  cxGv.OptionsData.Inserting:=True;
  cxGv.OptionsData.Appending:=True;
  cxGv.OptionsData.Deleting:=True;

  //OKBtn.Left:=StrToInt(FloatToStr(int((PanelBkGnd.Width-OKBtn.Width-CancelBtn.Width-20)/2)));
 // CancelBtn.Left:=StrToInt(FloatToStr(int((PanelBkGnd.Width-OKBtn.Width-CancelBtn.Width-20)/2)))+OKBtn.Width+20;
  OKBtn.Visible:=True;
  CancelBtn.Visible:=True;

  E_FProductName.Enabled:=True;
 // E_FPartsName.Enabled:=True;

  TB_refresh.Visible:=False;
  TB_app.Visible:=False;
  TB_Edit.Visible:=False;
  TB_Del.Visible:=False;
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

procedure TFrm_ProcessSort.TB_EDITClick(Sender: TObject);
var

 i:Integer;
begin
  P_state :=1;

  L_Caption.Caption:='数据修改';

  OKBtn.Left:=StrToInt(FloatToStr(int((PanelBkGnd.Width-OKBtn.Width-CancelBtn.Width-20)/2)));
  CancelBtn.Left:=StrToInt(FloatToStr(int((PanelBkGnd.Width-OKBtn.Width-CancelBtn.Width-20)/2)))+OKBtn.Width+20;
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

procedure TFrm_ProcessSort.TB_DELClick(Sender: TObject);
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


  If application.MessageBox(Pchar('警告：是否删除部件类别为：【'+Trim(Mdata['FPartsSort'])+'】的单据？'+chr(13)+chr(13)
                           +'删除数据操作将不可恢复，确定要删除本记录吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
  If application.MessageBox(Pchar('警告：是否删除部件类别为：【'+Trim(Mdata['FPartsSort'])+'】的单据？'+chr(13)+chr(13)
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

procedure TFrm_ProcessSort.TB_refreshClick(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If UserFDepartmentsort=1 then //事业部
  begin
    If not TreeVeiwListWhere(qry,MyTreeView,'VT_ProcessSort',' and FDepartmentID='+IntToStr(UserFDepartmentID)) then
      Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;
  If UserFDepartmentsort=2 then   //子公司
  begin
    If not TreeVeiwListWhere(qry,MyTreeView,'VT_ProcessSort',' ') then
    Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;


  //If not TreeVeiwList(qry,MyTreeView,'VT_PartsSort') then
{  If not TreeVeiwListUserID(qry,MyTreeView,'VT_ProcessSort',UserFDepartmentID) then
  begin
    Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;}
end;

procedure TFrm_ProcessSort.CancelBtnClick(Sender: TObject);
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
  TB_refresh.Click;
  E_FProductName.Enabled:=False;
  E_FPartsName.Enabled:=False;

end;

procedure TFrm_ProcessSort.FPartsNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.Connection:=mdlData.conn;
  try
    qry.SQL.Text:='select distinct FPartsCode,FPartsName from V_ProductParts where FProductID=:FProductID order by FPartsCode';
    qry.Parameters.FindParam('FProductID').value:=mdata['FProductID'];
    qry.Open;
  finally
     ;
  end;
  selValue:=select('请选择部件类别','FPartsName','FPartsName','FPartsName','FPartsCode;FPartsName',qry);
  If Length(selValue)>0 then
  begin
    mdata.Edit;
    mdata['FPartsName']:=qry.FieldByName('FPartsName').AsString;
    mdata['FPartsCode']:=qry.FieldByName('FPartsCode').AsString;
    mdata.Post;
  end;

end;

procedure TFrm_ProcessSort.TB_OutClick(Sender: TObject);
begin
  inherited;
  ExportToExcel(cxGrid,True,TRue);
end;

procedure TFrm_ProcessSort.FProductNamePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.Connection:=mdlData.conn;
  try
    qry.SQL.Text:='select distinct FProductID,FProductName from T_Product order by FProductName';
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

procedure TFrm_ProcessSort.E_FProductNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;

begin
  qry:=TADOQuery.Create(Self);
  qry.Connection:=mdlData.conn;
  try
    qry.SQL.Text:='select distinct FProductId,FProductName from T_Product where FDepartmentID=:FDepartmentID order by FProductName';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Open;
  finally
     ;
  end;
  selValue:=select('请选择产品类型','FProductName','FProductName','FProductName','FProductName',qry);
  If Length(selValue)>0 then
  begin
    E_FProductId.Text:=qry.FieldByName('FProductId').AsString;
    E_FProductName.Text:=qry.FieldByName('FProductName').AsString;
  end;
  If E_FProductId.Text<>'' then
     E_FPartsName.Enabled:=True
  else
     E_FPartsName.Enabled:=False;

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

procedure TFrm_ProcessSort.E_FPartsNamePropertiesButtonClick(Sender: TObject;
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

procedure TFrm_ProcessSort.FormCreate(Sender: TObject);
begin
  inherited;
  TB_App.Enabled:= mdlData.CheckFrmRights(TFrm_ProcessSort.ClassName,'新增');
  TB_Edit.Enabled:= mdlData.CheckFrmRights(TFrm_ProcessSort.ClassName,'修改');
  TB_Del.Enabled:= mdlData.CheckFrmRights(TFrm_ProcessSort.ClassName,'删除');
  TB_Prin.Enabled:= mdlData.CheckFrmRights(TFrm_ProcessSort.ClassName,'打印');
  TB_out.Enabled:= mdlData.CheckFrmRights(TFrm_ProcessSort.ClassName,'导出');


end;

end.
