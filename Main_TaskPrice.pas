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
  L_title.Caption:=UserFDepartmentName+'加工单价';
  Self.Caption:=UserFDepartmentName+'加工单价';

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

procedure TFrm_TaskPrice.MyTreeViewChange(Sender: TObject; Node: TTreeNode);
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
      TB_Edit.Enabled:= mdlData.CheckFrmRights(TFrm_TaskPrice.ClassName,'修改');
      TB_Del.Enabled:=mdlData.CheckFrmRights(TFrm_TaskPrice.ClassName,'删除');
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
     (PTree(Node.Data).Flag <> cNoLoadFlag) or   // 1.加载标志
     (not Node.HasChildren) or                   // 2.未有子
     (Node.Count>0) then                         // 3.已有子节点
     Exit;

  qry.SQL.Text:='Select FNumber, FParentNumber,FName,'
               +'Isleaf from VT_TaskPrice where FParentNumber= '''
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

procedure TFrm_TaskPrice.TB_RefClick(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If not TreeVeiwListWhere(qry,MyTreeView,'VT_TaskPrice',' and FDepartmentID='+IntToStr(UserFDepartmentID) ) then
  begin
    Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
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
         application.MessageBox('此加工执行价日期的部件已存在！请重新输入','系统提示',MB_ICONERROR);
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
        E_FTaskPriceDate.Enabled:=False;
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



procedure TFrm_TaskPrice.TB_AppClick(Sender: TObject);
var
 qry:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  P_state :=0;
  L_title.Caption:=UserFDepartmentName+'加工单价数据新增';
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
    application.MessageBox('只允许删除单个记录！请重新选择!','系统提示',MB_ICONINFORMATION);
    Exit;
  end;
  If mdata.RecordCount=0 then
  begin
    application.MessageBox('无记录可删除！请重新选择!','系统提示',MB_ICONINFORMATION);
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
    application.MessageBox(Pchar('部件【'+Trim(Mdata['FTaskPartsName'])+'】【'+Trim(Mdata['FTaskPartsModel'])+'】【'+Trim(Mdata['FTaskPriceDate'])+'】已启用不允许删除！'),'系统提示',MB_ICONINFORMATION);
    Exit;
  end;

  If application.MessageBox(Pchar('警告：是否删除：【'+Trim(Mdata['FTaskPartsName'])+'】【'+Trim(Mdata['FTaskPartsModel'])+'】【'+Trim(Mdata['FTaskPriceDate'])+'】的信息？'+chr(13)+chr(13)
                           +'删除数据操作将不可恢复，确定要删除本数据吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
  If application.MessageBox(Pchar('警告：是否删除：【'+Trim(Mdata['FTaskPartsName'])+'】【'+Trim(Mdata['FTaskPartsModel'])+'】【'+Trim(Mdata['FTaskPriceDate'])+'】的信息？'+chr(13)+chr(13)
                           +'删除数据操作将不可恢复，确定要删除本数据吗？'),'再次警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then

  begin }
    //单据删除
    If not DelRd then
    begin
      application.MessageBox('删除数据失败！','系统提示',MB_ICONINFORMATION);
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
  L_title.Caption:=UserFDepartmentName+'外协工管单价';
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
  TB_App.Enabled:= mdlData.CheckFrmRights(TFrm_TaskPrice.ClassName,'新增');
  TB_Prin.Enabled:= mdlData.CheckFrmRights(TFrm_TaskPrice.ClassName,'打印');
  TB_Out.Enabled:= mdlData.CheckFrmRights(TFrm_TaskPrice.ClassName,'打印');

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
  selValue:=select('请选择部件编码','FNumber','FParentNumber','FNumber','FName',qry);
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
    application.MessageBox('单价日期不能为空！请重新输入','系统提示',MB_ICONERROR);
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
  selValue:=select('请选择产品类别','FProductName','FProductName','FProductName','FProductName',qry);
  If Length(selValue)>0 then
  begin
    E_FProductID.Text:=qry.FieldByName('FProductID').AsString;
    E_FProductName.Text:=qry.FieldByName('FProductName').AsString;
  end;

end;

end.
