unit Main_WorkPrice;

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
  TFrm_WorkPrice = class(TFrm_GridBass)
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
    FParentNumber: TcxGridDBColumn;
    FWorkID: TcxGridDBColumn;
    FNumber: TcxGridDBColumn;
    Image2: TImage;
    FBalanceModel: TcxGridDBColumn;
    FUnitName: TcxGridDBColumn;
    FRemark: TcxGridDBColumn;
    Image1: TImage;
    Label2: TLabel;
    Sel: TcxGridDBColumn;
    FWorkBasePrice: TcxGridDBColumn;
    FWorkResizePrice: TcxGridDBColumn;
    FWorkPrice: TcxGridDBColumn;
    E_FPriceDateID: TcxButtonEdit;
    E_FAgentDate: TcxButtonEdit;
    FBalanceID: TcxGridDBColumn;
    MDataFParentNumber: TStringField;
    MDataFNumber: TStringField;
    MDataFBalanceName: TStringField;
    MDataFBalanceModel: TStringField;
    MDataFUnitName: TStringField;
    MDataFWorkPrice: TCurrencyField;
    MDataFRemark: TStringField;
    MDataFWorkID: TIntegerField;
    MDataFBalanceID: TIntegerField;
    FWorkDate: TcxGridDBColumn;
    Image3: TImage;
    MDataFWorkBasePrice: TFloatField;
    MDataFWorkResizePrice: TFloatField;
    E_FAgentYear: TcxSpinEdit;
    E_FAgentMonth: TcxSpinEdit;
    SB_App: TSpeedButton;
    Label1: TLabel;
    Label4: TLabel;
    E_FProductName: TcxButtonEdit;
    E_FProductID: TcxButtonEdit;
    TB_Price: TToolButton;
    Label3: TLabel;
    MDataFWorkDeptPrice: TFloatField;
    FProductName: TcxGridDBColumn;
    MDataFWorkDeptResizePrice: TCurrencyField;
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
    procedure E_FAgentDatePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure E_FAgentDateDblClick(Sender: TObject);
    procedure SB_AppClick(Sender: TObject);
    procedure MDataBeforePost(DataSet: TDataSet);
    procedure E_FProductNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure TB_PrinClick(Sender: TObject);
    procedure TB_PriceClick(Sender: TObject);
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
  Frm_WorkPrice: TFrm_WorkPrice;


implementation

uses FRMDATA, FRMMAIN, COMMON, FrmSelect, ProgBar, PROGRASS;

{$R *.dfm}
procedure TFrm_WorkPrice.Set_Open;
begin
  TB_Ref.Visible:=False;
  TB_App.Visible:=False;
  TB_Edit.Visible:=False;
  TB_Del.Visible:=False;
  MyTreeView.Enabled:=False;

  OKBtn.Visible:=True;
  CancelBtn.Visible:=True;
  cxGV.OptionsData.Editing:=True;

  E_FAgentDate.Enabled:=True;
  E_FProductName.Enabled:=True;
  Sel.Options.Editing:=True;
  FWorkBasePrice.Options.Editing:=True;
  FWorkResizePrice.Options.Editing:=True;
end;

procedure TFrm_WorkPrice.Set_Close;
begin
  TB_Ref.Visible:=True;
  TB_App.Visible:=True;
  TB_Edit.Visible:=True;
  TB_Del.Visible:=True;
  MyTreeView.Enabled:=True;

  OKBtn.Visible:=False;
  CancelBtn.Visible:=False;
  cxGV.OptionsData.Editing:=False;
  E_FAgentDate.Enabled:=False;
  E_FProductName.Enabled:=False;
end;

function TFrm_WorkPrice.DelRd: bool;
var
 qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Delete from T_WorkPrice where FWorkID=:FWorkID';
    with qry.Parameters do
    begin
      FindParam('FWorkID').value:=mdata['FWorkID'];
    end;
    result:=qry.ExecSQL>=1;
  finally
    qry.Free;
  end;
end;

function TFrm_WorkPrice.AddRd: bool;
var
  qry: TADOQuery;

begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.EnableBCD:=False;//小数位数>4
  result:=False;

  If mData.RecordCount<=0 then
  begin
    result:=True;
    Exit;
  end;

  try
    qry.SQL.Text:='Insert into T_WorkPrice(FBalanceID, FWorkBasePrice, FWorkResizePrice,FPriceDateID) '
                 +'values(:FBalanceID, :FWorkBasePrice, :FWorkResizePrice, :FPriceDateID)';
     mData.First;

     while not mData.eof do
     begin
       qry.Parameters.ParamByName('FWorkBasePrice').DataType:=ftfloat;
       qry.Parameters.ParamByName('FWorkResizePrice').DataType:=ftfloat;
     // If (mData['FWorkBasePrice']<>0) or (mData['FWorkResizePrice']<>0) then
       begin
         If qry.Active then qry.Close;
         with qry.Parameters do
         begin
           FindParam('FBalanceID').value:=mdata['FBalanceID'];
           If mdata['FWorkBasePrice']=Null then
              FindParam('FWorkBasePrice').value:=0.000000
           else
             FindParam('FWorkBasePrice').value:=mdata['FWorkBasePrice'];

           If mdata['FWorkResizePrice']=Null then
              FindParam('FWorkResizePrice').value:=0
           else
             FindParam('FWorkResizePrice').value:=mdata['FWorkResizePrice'];
           FindParam('FPriceDateID').value:=Trim(E_FPriceDateID.Text);
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


function TFrm_WorkPrice.EditRd:bool;
var
  qry: TADOQuery;

begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.EnableBCD:=False;//小数位数>4
  result:=False;

  If mData.RecordCount<=0 then
  begin
    result:=True;
    Exit;
  end;

  mData.Edit;
  mData.Post;

  try
    qry.SQL.Text:='Update T_WorkPrice set FBalanceID=:FBalanceID,FWorkBasePrice=:FWorkBasePrice,FWorkResizePrice=:FWorkResizePrice,'
                 +'FPriceDateID=:FPriceDateID where FWorkID=:FWorkID';
     mData.First;

     while not mData.eof do
     begin
       qry.Parameters.ParamByName('FWorkBasePrice').DataType:=ftfloat;
       qry.Parameters.ParamByName('FWorkResizePrice').DataType:=ftfloat;
      // If (mData['FWorkBasePrice']<>0) or (mData['FWorkResiaePrice']<>0) then
       begin
         If qry.Active then qry.Close;
         with qry.Parameters do
         begin
           FindParam('FBalanceID').value:=mdata['FBalanceID'];;
           FindParam('FWorkBasePrice').value:=mdata['FWorkBasePrice'];
           FindParam('FWorkResizePrice').value:=mdata['FWorkResizePrice'];
           FindParam('FPriceDateID').value:=Trim(E_FPriceDateID.Text);
           FindParam('FWorkID').value:=mdata['FWorkID'];
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


procedure TFrm_WorkPrice.FormResize(Sender: TObject);
begin
  inherited;
  L_title.Caption:=UserFDepartmentName+'外协工管单价';
  Self.Caption:=UserFDepartmentName+'外协工管单价';
// OKBtn.Left:=StrToInt(FloatToStr(int((PanelBkGnd.Width-OKBtn.Width-CancelBtn.Width-20)/2)));
//  CancelBtn.Left:=StrToInt(FloatToStr(int((PanelBkGnd.Width-OKBtn.Width-CancelBtn.Width-20)/2)))+OKBtn.Width+20;

end;

procedure TFrm_WorkPrice.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=cafree;
  Frm_WorkPrice:=nil;
end;

procedure TFrm_WorkPrice.TB_EXITClick(Sender: TObject);
begin
  inherited;
  self.Close;
end;

procedure TFrm_WorkPrice.TB_DownClick(Sender: TObject);
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

procedure TFrm_WorkPrice.MyTreeViewChange(Sender: TObject; Node: TTreeNode);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.EnableBCD:=False;//小数位数>4
  If Node = nil then Exit;
  with PTree(Node.Data)^ do
  begin
    ListItemFNumber:=PTree(Node.Data).FNumber;
    P_th:=PTree(Node.Data).Caption;
    P_Isleaf:=PTree(Node.Data).Isleaf;
    If not MyItemList(qry,Mdata,'V_WorkPrice','FFullNumber',ListItemFNumber,'FFullNumber') then
    begin
      mdata.Open;
      cxGvColumn(cxGv,Mdata);
    end;
    If mdata.RecordCount>0 then
    begin
      E_FPriceDateID.Text:= mdata['FWorkPriceDateID'];
      E_FAgentDate.Text:= mdata['FWorkDate'];
      E_FProductName.Text:= mdata['FProductName'];
      E_FProductID.Text:= mdata['FProductID'];
    end;
    If P_Isleaf=1 then
    begin
      TB_Edit.Enabled:= mdlData.PermissionCheckRights(TFrm_WorkPrice.ClassName,'修改');
      TB_Del.Enabled:=mdlData.PermissionCheckRights(TFrm_WorkPrice.ClassName,'删除');
    end
    else
    begin
      TB_Edit.Enabled:=False;
      TB_Del.Enabled:=False;
    end;
  end;

end;

procedure TFrm_WorkPrice.MyTreeViewExpanding(Sender: TObject;
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

  qry.SQL.Text:='Select FNumber, FParentNumber,FName,'
               +'Isleaf from VT_WorkPrice where FParentNumber= '''
               +PTree(Node.Data).ID+''' order by FNumber';

  qry.open;

  PTree(Node.Data).Flag := cLoadFlag;                  // 设置已加载标志
  while not qry.Eof do
  begin
    New(P);
    P.ID := qry.FieldByName('FNumber').AsString;
    P.ParentID := qry.FieldByName('FParentNumber').AsString;
    P.FNumber:=qry.FieldByName('FNumber').AsString;
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

procedure TFrm_WorkPrice.TB_RefClick(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If UserFDepartmentsort=1 then //事业部
  begin
    If not TreeVeiwListWhere(qry,MyTreeView,'VT_BalanceParts',' and FDepartmentID='+IntToStr(UserFDepartmentID) ) then
    begin
      Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
    end;
  end;
  If UserFDepartmentsort=3 then //公共平台
  begin
    If not TreeVeiwListWhere(qry,MyTreeView,'VT_BalanceParts',' ' ) then
    begin
      Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
    end;
  end;

end;

procedure TFrm_WorkPrice.OKBtnClick(Sender: TObject);
var qry: TADOQuery;

begin
  cxGV.OptionsData.Editing:=True;
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.EnableBCD:=False;//小数位数>4

  mData.Edit;
  mData.Post;

  If (StrToInt(Trim(E_FPriceDateID.Text))=0) then
  begin
    application.MessageBox('关键字不能为空！请重新输入','系统提示',MB_ICONERROR);
    Exit;
  end;


  If P_state =0 then
  begin
    try
      qry.SQL.Text:='Select * from V_WorkPrice where FDepartmentID=:FDepartmentID and FBalanceID=:FBalanceID and FWorkPriceDateID=:FWorkPriceDateID';
      qry.Parameters.FindParam('FDepartmentID').Value:=UserFDepartmentID;
      qry.Parameters.FindParam('FBalanceID').Value:=mdata['FBalanceID'];
      qry.Parameters.FindParam('FWorkPriceDateID').Value:=StrToInt(Trim(E_FPriceDateID.Text));
      qry.Open;
      If qry.RecordCount>0 then
      begin
         application.MessageBox('此工管执行价日期的结算部件已存在！请重新输入','系统提示',MB_ICONERROR);
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
        //mdata.Close;
        TB_App.Click ;
      end
      else
      begin
        inherited;
        E_FAgentDate.Enabled:=False;
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



procedure TFrm_WorkPrice.TB_AppClick(Sender: TObject);

begin
  P_state :=0;
  L_title.Caption:=UserFDepartmentName+'外协工管单价数据新增';
  mdata.Close;
  mdata.Active:=True;
  mdata.Edit;
  mdata.Append;
  Self.Set_Open;

end;

procedure TFrm_WorkPrice.TB_EditClick(Sender: TObject);
var
 qry:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.EnableBCD:=False;//小数位数>4
  P_state :=1;        //修改
  If (mdata.RecordCount<1) then
    Exit;
  If mdata.RecordCount<>1 then
  begin
    application.MessageBox('只允许修改单个记录！请重新选择!','系统提示',MB_ICONINFORMATION);
    Exit;
  end;
  If mdata.RecordCount=0 then
  begin
    application.MessageBox('无记录可修改！请重新选择!','系统提示',MB_ICONINFORMATION);
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
    application.MessageBox(Pchar('部件【'+Trim(Mdata['FBalanceName'])+'】【'+Trim(Mdata['FBalanceModel'])+'】【'+Trim(Mdata['FWorkDate'])+'】已启用不允许修改！'),'系统提示',MB_ICONINFORMATION);
    Exit;
  end;
  }
  L_title.Caption:=UserFDepartmentName+'外协工管单价数据修改';
  Self.Set_Open;

end;

procedure TFrm_WorkPrice.TB_DelClick(Sender: TObject);
var
  qry:TADOQuery;

begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If (mdata.RecordCount<1) then
    Exit;

  If mdata.RecordCount<>1 then
  begin
    application.MessageBox('只允许删除单个记录！请重新选择!','系统提示',MB_ICONINFORMATION);
    Exit;
  end;
  If mdata.RecordCount=0 then
  begin
    application.MessageBox('无记录可删除！请重新选择!','系统提示',MB_ICONINFORMATION);
    Exit;
  end;

  try
    qry.SQL.Text:='Select * from V_BalancePrice where FWorkID=:FWorkID';
    qry.Parameters.FindParam('FWorkID').Value:=mdata['FWorkID'];
    qry.Open;
  finally
     ;
  end;
  if qry.RecordCount>0 then
  begin
    application.MessageBox(Pchar('部件【'+Trim(Mdata['FBalanceName'])+'】【'+Trim(Mdata['FBalanceModel'])+'】【'+Trim(Mdata['FWorkDate'])+'】已启用不允许删除！'),'系统提示',MB_ICONINFORMATION);
    Exit;
  end;

  If application.MessageBox(Pchar('警告：是否删除：【'+Trim(Mdata['FBalanceName'])+'】【'+Trim(Mdata['FBalanceModel'])+'】【'+Trim(Mdata['FWorkDate'])+'】的信息？'+chr(13)+chr(13)
                           +'删除数据操作将不可恢复，确定要删除本数据吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
  If application.MessageBox(Pchar('警告：是否删除：【'+Trim(Mdata['FBalanceName'])+'】【'+Trim(Mdata['FBalanceModel'])+'】【'+Trim(Mdata['FWorkDate'])+'】的信息？'+chr(13)+chr(13)
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

end;

procedure TFrm_WorkPrice.CancelBtnClick(Sender: TObject);
begin
  inherited;
  L_title.Caption:=UserFDepartmentName+'外协工管单价';
  mdata.Close;
  Self.Set_Close;
end;

procedure TFrm_WorkPrice.TB_OutClick(Sender: TObject);
begin
  inherited;
  ExportToExcel(cxGrid,True,TRue);
end;

procedure TFrm_WorkPrice.FormCreate(Sender: TObject);
begin
  inherited;
  TB_App.Enabled:= mdlData.PermissionCheckRights(TFrm_WorkPrice.ClassName,'新增');
  TB_Price.Enabled:= mdlData.PermissionCheckRights(TFrm_WorkPrice.ClassName,'新增');
  TB_Prin.Enabled:= mdlData.PermissionCheckRights(TFrm_WorkPrice.ClassName,'打印');
  TB_Out.Enabled:= mdlData.PermissionCheckRights(TFrm_WorkPrice.ClassName,'打印');

end;

procedure TFrm_WorkPrice.FormShow(Sender: TObject);
begin
  TB_Ref.Click;
end;

procedure TFrm_WorkPrice.SelPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  try
    qry.SQL.Text:='Select * from VT_BalanceParts where FDepartmentID=:FDepartmentID order by FNumber';
    qry.Parameters.FindParam('FDepartmentID').Value:=UserFDepartmentID;
    qry.Open;
  finally
     ;
  end;
  selValue:=select('请选择部件编码','FNumber','FParentNumber','FNumber','FName',qry);
  If (Length(selValue)>0) and (qry.FieldByName('IsLeaf').Value<>0) then
  begin
    mdata.Edit;
    mdata['FNumber']:=qry.FieldByName('FNumber').AsString;
    mdata['FParentNumber']:=qry.FieldByName('FParentNumber').AsString;
    mdata['FBalanceName']:=qry.FieldByName('FBalanceName').AsString;
    mdata['FBalanceModel']:=qry.FieldByName('FBalanceModel').AsString;
    mdata['FUnitName']:=qry.FieldByName('FUnitName').AsString;
    mdata['FBalanceID']:=qry.FieldByName('FBalanceID').AsString;
    mdata.Post;
  end;
end;

procedure TFrm_WorkPrice.E_FAgentDatePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var selValue : string;
    qry,qry1: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry1:=TADOQuery.Create(Self);
  qry1.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='select * from V_PriceDate where  FDepartmentID=:FDepartmentID and FTableName=''T_WorkPrice''';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Open;
  finally
     ;
  end;
  If qry.RecordCount<1 then
     Exit;

  selValue:=select('请选择外协工管执行价','FAgentDate','FAgentYear','FAgentDate','FAgentDate',qry);
  If Length(selValue)>0 then
  begin
    E_FAgentDate.Text:=qry.FieldByName('FAgentDate').AsString;
    E_FPriceDateID.Text:=qry.FieldByName('FPriceDateID').AsString;
  end
  else
  begin
    messagedlg('请选择明细！',mtInformation,[mbok],0);
    Exit;
  end;


  try
    qry.SQL.Text:='Select * from V_WorkPrice where FWorkPriceDateID=:FWorkPriceDateID and FProductID=:FProductID and FDepartmentID=:FDepartmentID';
    qry.Parameters.FindParam('FWorkPriceDateID').Value:=StrToInt(Trim(E_FPriceDateID.Text));
    qry.Parameters.FindParam('FProductID').Value:=StrToInt(Trim(E_FProductID.Text));
    qry.Parameters.FindParam('FDepartmentID').Value:=UserFDepartmentID;
    qry.Open;
  finally
     ;
  end;
  
  If qry.RecordCount>0 then
  begin
    mdata.Close;
    mdata.Open;
    mdata.Edit;
    mdata.Append;
    mdata.Post;
    Sel.Visible:=True;
    Sel.Options.Editing:=True;
  end
  else
  begin
    //取最大的工管执行价

    try
      qry.SQL.Text:='select * from V_WorkPrice where FDepartmentID=:FDepartmentID and FProductID=:FProductID and FWorkDate=(Select max(FWorkDate) from V_WorkPrice where FDepartmentID=:FDepartmentID_y)';
      qry.Parameters.FindParam('FDepartmentID').Value:=UserFDepartmentID;
      qry.Parameters.FindParam('FProductID').Value:=StrToInt(Trim(E_FProductID.Text));
      qry.Parameters.FindParam('FDepartmentID_y').Value:=UserFDepartmentID;
      qry.Open;
    finally
       ;
    end;

    If qry.RecordCount>0 then
    begin
      Mdata.CopyFromDataSet(qry);
      Mdata.Active:=True;
      Mdata.First;
    end
    else
    begin
      try
        qry1.SQL.Text:='Select *,0.00000 as FWorkBasePrice,0.00000 as FWorkResizePrice,0.00000 as FWorkPrice,0.00000 as FWorkDeptPrice from V_BalanceParts '
                      +'where FDepartmentID=:FDepartmentID and FProductID=:FProductID';
        qry1.Parameters.FindParam('FDepartmentID').Value:=UserFDepartmentID;
        qry1.Parameters.FindParam('FProductID').Value:=StrToInt(Trim(E_FProductID.Text));
        qry1.Open;
      finally
         ;
      end;
      Mdata.CopyFromDataSet(qry1);
      Mdata.Active:=True;
      Mdata.First;
    end;
  end;

  cxGV.OptionsData.Editing:=True;
  FWorkBasePrice.Options.Editing:=True;
  FWorkResizePrice.Options.Editing:=True;
  qry.Free;
  qry1.Free;

end;

procedure TFrm_WorkPrice.E_FAgentDateDblClick(Sender: TObject);
begin
  inherited;
  SB_App.Enabled:=True;
  E_FAgentYear.Enabled:=True;
  E_FAgentMonth.Enabled:=True;

end;

procedure TFrm_WorkPrice.SB_AppClick(Sender: TObject);
var qry: TADOQuery;
    a:Integer;
begin
  a:=E_FAgentMonth.Value;
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  inherited;
  try
    qry.SQL.Text:='Select * from V_PriceDate where FTableName=:FTableName and FAgentYear=:FAgentYear and FAgentMonth=:FAgentMonth '
                 +'and FDepartmentID=:FDepartmentID';
    with qry.Parameters do
    begin
      FindParam('FTableName').value:='T_WorkPrice';
      FindParam('FAgentYear').value:=IntToStr(E_FAgentYear.Value);
      FindParam('FAgentMonth').value:=Format('%.2d',[a]);
      FindParam('FDepartmentID').value:=UserFDepartmentID;
    end;
    qry.Open;
    If qry.RecordCount>0 then
    begin
      application.MessageBox('此执行价日期已存在！不允许重复','系统提示',MB_ICONERROR);
      Exit;
    end
  finally
    ;
  end;

  If application.MessageBox('是否新增工管执行单价日期？','提示',MB_ICONINFORMATION+MB_YESNO)=6 then
  begin
    try
      qry.SQL.Text:='Insert into T_PriceDate(FTableName, FAgentYear, FAgentMonth, FDepartmentID) '
                   +'values(:FTableName, :FAgentYear, :FAgentMonth, :FDepartmentID)';
      with qry.Parameters do
      begin
        FindParam('FTableName').value:='T_WorkPrice';
        FindParam('FAgentYear').value:=IntToStr(E_FAgentYear.Value);
        FindParam('FAgentMonth').value:=Format('%.2d',[a]);
        FindParam('FDepartmentID').value:=UserFDepartmentID;
      end;
      qry.ExecSQL;
    finally
      ;
    end;
  end;

end;

procedure TFrm_WorkPrice.MDataBeforePost(DataSet: TDataSet);
begin
  inherited;
  DataSet['FWorkPrice']:=DataSet['FWorkBasePrice']+DataSet['FWorkResizePrice'];
end;

procedure TFrm_WorkPrice.E_FProductNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='select distinct FProductID,FProductName from T_Product where FDepartmentID=:FDepartmentID order by FProductName';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Open;
  finally
     ;
  end;
  selValue:=select('请选择产品类别','FProductName','FProductName','FProductName','FProductName',qry);
  If Length(selValue)>0 then
  begin
    E_FProductID.Text:=qry.FieldByName('FProductID').AsString;
    E_FProductName.Text:=qry.FieldByName('FProductName').AsString;
  end;

end;

procedure TFrm_WorkPrice.TB_PrinClick(Sender: TObject);
begin
  inherited;
  FrReport.LoadFromFile(ExtractFileDir(Application.ExeName)+'\Report_DesignBOM_WorkPrice.frf');
  FrReport.ShowReport;
end;

procedure TFrm_WorkPrice.TB_PriceClick(Sender: TObject);
begin
  inherited;
  SB_App.Enabled:=True;
  E_FAgentYear.Enabled:=True;
  E_FAgentMonth.Enabled:=True;
end;

end.
