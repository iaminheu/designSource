unit Main_TechProductParts;

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
  TFlatPanelUnit, cxLookAndFeelPainters, cxButtons, jpeg;

type
  TFrm_TechProductParts = class(TFrm_GridBass)
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
    TB_Out: TToolButton;
    FPartsID: TcxGridDBColumn;
    FProductID: TcxGridDBColumn;
    FProductName: TcxGridDBColumn;
    Image3: TImage;
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
    procedure FPartsNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FPartsAliasPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure TB_OutClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FProductNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure RzSizePanel1Click(Sender: TObject);
  private
    ListItemFNumber,P_th:String;
    P_i:boolean;
   // FFullFileName: string;

   // m_stopFileName,P_FItemListId,P_FFullNumber,p_FItemNo,p_Code:string;



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
  Frm_TechProductParts: TFrm_TechProductParts;


implementation

uses FRMDATA, FRMMAIN, COMMON, FrmSelect, ProgBar, PROGRASS;

{$R *.dfm}
procedure TFrm_TechProductParts.Set_Open;
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

procedure TFrm_TechProductParts.Set_Close;
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

function TFrm_TechProductParts.DelRd: bool;
var
 qry: TADOQuery;

begin
  //result:=False;
  qry:=TADOQuery.Create(Self);
  qry.Connection:=mdlData.conn;
  try
    qry.SQL.Text:='Delete from T_TechProductParts where FPartsId=:FPartsId';
    with qry.Parameters do
    begin
      FindParam('FPartsId').value:=mdata['FPartsId'];

    end;
    result:=qry.ExecSQL>=1;
  finally
    qry.Free;
  end;
end;

function TFrm_TechProductParts.AddRd: bool;
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
    qry.SQL.Text:='Insert into T_TechProductParts(FProductID,FPartsCode,FPartsName,FPartsAlias) '
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


function TFrm_TechProductParts.EditRd:bool;
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
    qry.SQL.Text:='Update T_TechProductParts set FProductID=:FProductID,FPartsCode=:FPartsCode,FPartsName=:FPartsName,FPartsAlias=:FPartsAlias '
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


procedure TFrm_TechProductParts.FormResize(Sender: TObject);
begin
  inherited;
  L_title.Caption:='资料产品信息操作';
  Self.Caption:='资料产品信息操作';
  OKBtn.Left:=StrToInt(FloatToStr(int((PanelBkGnd.Width-OKBtn.Width-CancelBtn.Width-20)/2)));
  CancelBtn.Left:=StrToInt(FloatToStr(int((PanelBkGnd.Width-OKBtn.Width-CancelBtn.Width-20)/2)))+OKBtn.Width+20;
end;

procedure TFrm_TechProductParts.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=cafree;
  Frm_TechProductParts:=nil;
end;

procedure TFrm_TechProductParts.TB_EXITClick(Sender: TObject);
begin
  inherited;
  self.Close;
end;

procedure TFrm_TechProductParts.TB_DownClick(Sender: TObject);
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

procedure TFrm_TechProductParts.MyTreeViewChange(Sender: TObject; Node: TTreeNode);
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
    If not MyItemList(qry,Mdata,'V_TechProductParts','FNumber',ListItemFNumber,'FNumber') then
    begin
      mdata.Open;
      cxGvColumn(cxGv,Mdata);
    end;
  end;
end;

procedure TFrm_TechProductParts.MyTreeViewExpanding(Sender: TObject;
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
               +'Isleaf from VT_TechProductParts where FParentNumber= '''
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
    P.Flag := cNoLoadFlag;                            // 新节点，未加载标志
    with MyTreeView.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('Isleaf').value;
    end;
    qry.Next;
  end;
end;

procedure TFrm_TechProductParts.TB_RefClick(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If not TreeVeiwList(qry,MyTreeView,'VT_TechProductParts') then
  begin
    Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;
end;

procedure TFrm_TechProductParts.OKBtnClick(Sender: TObject);
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
      qry.SQL.Text:='Select * from V_TechProductParts where FProductID=:FProductID and FPartsCode=:FPartsCode ';
      qry.Parameters.FindParam('FProductID').Value:=mdata['FProductID'];
      qry.Parameters.FindParam('FPartsCode').Value:=mdata['FPartsCode'];
   //   qry.Parameters.FindParam('FPartsName').Value:=mdata['FPartsName'];
      qry.Open;
      If qry.RecordCount>0 then
      begin
         application.MessageBox('部件代码重复！请重新输入','系统提示',MB_ICONERROR);
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



procedure TFrm_TechProductParts.TB_AppClick(Sender: TObject);
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
      qry.SQL.Text:='Select isnull(max(FPartsCode),'''') as maxFPartsCode from T_TechProductParts where FProductID=:FProductID';
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

procedure TFrm_TechProductParts.TB_EditClick(Sender: TObject);


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

procedure TFrm_TechProductParts.TB_DelClick(Sender: TObject);
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

procedure TFrm_TechProductParts.CancelBtnClick(Sender: TObject);
begin
  inherited;
  L_title.Caption:='产品部件信息';
  Self.Set_Close;
end;

procedure TFrm_TechProductParts.FPartsNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.Connection:=mdlData.conn;
  try
    qry.SQL.Text:='select distinct FPartsCode,FPartsName from V_TechProductParts order by FPartsCode';
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

procedure TFrm_TechProductParts.FPartsAliasPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.Connection:=mdlData.conn;
  try
    qry.SQL.Text:='select distinct FPartsCode,FPartsAlias from V_TechProductParts order by FPartsCode';
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

procedure TFrm_TechProductParts.TB_OutClick(Sender: TObject);
begin
  inherited;
  ExportToExcel(cxGrid,True,TRue);
end;

procedure TFrm_TechProductParts.FormCreate(Sender: TObject);
begin
  inherited;
  TB_App.Enabled:= mdlData.PermissionCheckRights(TFrm_TechProductParts.ClassName,'新增');
  TB_Edit.Enabled:= mdlData.PermissionCheckRights(TFrm_TechProductParts.ClassName,'修改');
  TB_Del.Enabled:= mdlData.PermissionCheckRights(TFrm_TechProductParts.ClassName,'删除');
  TB_Prin.Enabled:= mdlData.PermissionCheckRights(TFrm_TechProductParts.ClassName,'打印');
  TB_Out.Enabled:= mdlData.PermissionCheckRights(TFrm_TechProductParts.ClassName,'打印');
end;

procedure TFrm_TechProductParts.FormShow(Sender: TObject);
begin
  inherited;
  TB_Ref.Click;
  OKBtn.Left:=StrToInt(FloatToStr(int((PanelBkGnd.Width-OKBtn.Width-CancelBtn.Width-20)/2)));
  CancelBtn.Left:=StrToInt(FloatToStr(int((PanelBkGnd.Width-OKBtn.Width-CancelBtn.Width-20)/2)))+OKBtn.Width+20;
 
end;

procedure TFrm_TechProductParts.FProductNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.Connection:=mdlData.conn;
  mdata.Edit;
  try
    qry.SQL.Text:='select distinct FProductId,FProductName from T_TechProduct order by FProductName';
    qry.Open;
  finally
     ;
  end;
  selValue:=select('请选择产品类型','FProductName','FProductName','FProductName','FProductName',qry);
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

procedure TFrm_TechProductParts.RzSizePanel1Click(Sender: TObject);
begin
  inherited;
  OKBtn.Left:=StrToInt(FloatToStr(int((PanelBkGnd.Width-OKBtn.Width-CancelBtn.Width-20)/2)));
  CancelBtn.Left:=StrToInt(FloatToStr(int((PanelBkGnd.Width-OKBtn.Width-CancelBtn.Width-20)/2)))+OKBtn.Width+20;

end;

end.
