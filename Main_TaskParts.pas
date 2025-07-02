unit Main_TaskParts;

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
  TFrm_TaskParts = class(TFrm_GridBass)
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
    FDetail: TcxGridDBColumn;
    FParentNumber: TcxGridDBColumn;
    FTaskPartsID: TcxGridDBColumn;
    FNumber: TcxGridDBColumn;
    Image3: TImage;
    FTaskPartsModel: TcxGridDBColumn;
    FTaskPartsUnit: TcxGridDBColumn;
    FTaskPartsRemark: TcxGridDBColumn;
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
    MDataFProductId: TStringField;
    FProductId: TcxGridDBColumn;
    MDataFProductClass: TStringField;
    MDataFSollWeight: TFloatField;
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
  Frm_TaskParts: TFrm_TaskParts;


implementation

uses FRMDATA, FRMMAIN, COMMON, FrmSelect, ProgBar, PROGRASS;

{$R *.dfm}

procedure TFrm_TaskParts.Set_Open;
begin
  TB_Ref.Visible:=False;
  TB_App.Visible:=False;
  TB_Edit.Visible:=False;
  TB_Del.Visible:=False;
  MyTreeView.Enabled:=False;

  OKBtn.Visible:=True;
  CancelBtn.Visible:=True;

  cxGV.OptionsData.Editing:=True;
  Sel.Visible:=True;
  Sel.Options.Editing:=True;
  FParentNumber.Options.Editing:=True;
  FNumber.Options.Editing:=True;
  FTaskPartsName.Options.Editing:=True;
  FTaskPartsModel.Options.Editing:=True;
  FTaskPartsUnit.Options.Editing:=True;
  FTaskPartsRemark.Options.Editing:=True;
  FDetail.Options.Editing:=True;

end;

procedure TFrm_TaskParts.Set_Close;
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



function TFrm_TaskParts.DelRd: bool;
var
 qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Delete from T_TaskParts where FTaskPartsID=:FTaskPartsID';
    with qry.Parameters do
    begin
      FindParam('FTaskPartsID').value:=mdata['FTaskPartsID'];
    end;
    result:=qry.ExecSQL>=1;
  finally
    qry.Free;
  end;
end;

function TFrm_TaskParts.AddRd: bool;
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
    qry.SQL.Text:='Insert into T_TaskParts(FNumber,FParentNumber,FDepartmentID,FTaskPartsName,FTaskPartsModel,FTaskPartsUnit,FPartsID,FTaskPartsRemark,FDetail) '
                 +'values(:FNumber,:FParentNumber,:FDepartmentID,:FTaskPartsName,:FTaskPartsModel,:FTaskPartsUnit,:FPartsID,:FTaskPartsRemark,:FDetail)';
     mData.First;

     while not mData.eof do
     begin
       If (mData['FNumber']<>'') and (mData['FTaskPartsName']<>'') and (mData['FTaskPartsUnit']<>'') and (mData['FPartsID']<>0) then
       begin
         If qry.Active then qry.Close;
         with qry.Parameters do
         begin
           FindParam('FNumber').value:=mdata['FNumber'];;
           FindParam('FParentNumber').value:=mdata['FParentNumber'];
           FindParam('FDepartmentID').value:=UserFDepartmentID;
           FindParam('FTaskPartsName').value:=mdata['FTaskPartsName'];
           FindParam('FTaskPartsModel').value:=mdata['FTaskPartsModel'];
           FindParam('FTaskPartsUnit').value:=mdata['FTaskPartsUnit'];
           FindParam('FPartsID').value:=mdata['FPartsID'];
           FindParam('FTaskPartsRemark').value:=mdata['FTaskPartsRemark'];
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


function TFrm_TaskParts.EditRd:bool;
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
    qry.SQL.Text:='Update T_TaskParts set FNumber=:FNumber,FParentNumber=:FParentNumber,FDepartmentID=:FDepartmentID,'
                 +'FTaskPartsName=:FTaskPartsName,FTaskPartsModel=:FTaskPartsModel,FTaskPartsUnit=:FTaskPartsUnit,'
                 +'FPartsID=:FPartsID,FTaskPartsRemark=:FTaskPartsRemark,FDetail=:FDetail where FTaskPartsID=:FTaskPartsID';
     mData.First;
     while not mData.eof do
     begin
       If (mData['FNumber']<>'') and (mData['FTaskPartsName']<>'') and (mData['FTaskPartsUnit']<>'')  and (mData['FPartsID']<>0) then
       begin
         If qry.Active then qry.Close;
         with qry.Parameters do
         begin
           FindParam('FNumber').value:=mdata['FNumber'];;
           FindParam('FParentNumber').value:=mdata['FParentNumber'];
           FindParam('FDepartmentID').value:=UserFDepartmentID;
           FindParam('FTaskPartsName').value:=mdata['FTaskPartsName'];
           FindParam('FTaskPartsModel').value:=mdata['FTaskPartsModel'];
           FindParam('FTaskPartsUnit').value:=mdata['FTaskPartsUnit'];
           FindParam('FPartsID').value:=mdata['FPartsID'];
           FindParam('FTaskPartsRemark').value:=mdata['FTaskPartsRemark'];
           FindParam('FDetail').value:=mdata['FDetail'];
           FindParam('FTaskPartsID').value:=mdata['FTaskPartsID'];
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


procedure TFrm_TaskParts.FormResize(Sender: TObject);
begin
  inherited;
  L_title.Caption:=UserFDepartmentName+'工资部件信息';
  Self.Caption:=UserFDepartmentName+'工资部件信息';
 // OKBtn.Left:=StrToInt(FloatToStr(int((PanelBkGnd.Width-OKBtn.Width-CancelBtn.Width-20)/2)));
 // CancelBtn.Left:=StrToInt(FloatToStr(int((PanelBkGnd.Width-OKBtn.Width-CancelBtn.Width-20)/2)))+OKBtn.Width+20;

end;

procedure TFrm_TaskParts.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=cafree;
  Frm_TaskParts:=nil;
end;

procedure TFrm_TaskParts.TB_EXITClick(Sender: TObject);
begin
  inherited;
  self.Close;
end;

procedure TFrm_TaskParts.TB_DownClick(Sender: TObject);
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

procedure TFrm_TaskParts.MyTreeViewChange(Sender: TObject; Node: TTreeNode);
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
    If not MyItemList(qry,Mdata,'V_TaskParts','FFullNumber',ListItemFNumber,'FFullNumber') then
    begin
      mdata.Open;
      cxGvColumn(cxGv,Mdata);
    end;
    If P_Isleaf=1 then
    begin
      TB_Edit.Enabled:= mdlData.CheckFrmRights(TFrm_TaskParts.ClassName,'修改');
      TB_Del.Enabled:=mdlData.CheckFrmRights(TFrm_TaskParts.ClassName,'删除');
    end
    else
    begin
      TB_Edit.Enabled:=False;
      TB_Del.Enabled:=False;
    end;

  end;

end;

procedure TFrm_TaskParts.MyTreeViewExpanding(Sender: TObject;
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
               +'Isleaf from VT_TaskParts where FParentNumber= '''
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

procedure TFrm_TaskParts.TB_RefClick(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If not TreeVeiwListWhere(qry,MyTreeView,'VT_TaskParts',' and FDepartmentID='+IntToStr(UserFDepartmentID) ) then
  begin
    Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;

end;

procedure TFrm_TaskParts.OKBtnClick(Sender: TObject);
var qry: TADOQuery;

begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  mData.Edit;
  mData.Post;

  If (mData['FNumber']='')or (mData['FParentNumber']='') or (mData['FTaskPartsName']='') or (mData['FTaskPartsUnit']='')  or (mData['FPartsID']=0) then
  begin
    application.MessageBox('关键字不能为空！请重新输入','系统提示',MB_ICONERROR);
    Exit;
  end;


  If P_state =0 then
  begin
    try
      qry.SQL.Text:='Select * from V_TaskParts where FNumber=:FNumber and FDepartmentID=:FDepartmentID '
                   +'and FPartsID=:FPartsID';
      qry.Parameters.FindParam('FNumber').Value:=mdata['FNumber'];
      qry.Parameters.FindParam('FDepartmentID').Value:=UserFDepartmentID;
      qry.Parameters.FindParam('FPartsID').Value:=mdata['FPartsID'];
      qry.Open;
      If qry.RecordCount>0 then
      begin
         application.MessageBox('编码重复！请重新输入','系统提示',MB_ICONERROR);
         Exit;
      end;
    finally
       ;
    end;
    try
      qry.SQL.Text:='Select * from V_TaskParts where FTaskPartsName=:FTaskPartsName and FTaskPartsModel=:FTaskPartsModel and FDepartmentID=:FDepartmentID and FPartsID=:FPartsID';
      qry.Parameters.FindParam('FTaskPartsName').Value:=mdata['FTaskPartsName'];
      qry.Parameters.FindParam('FTaskPartsModel').Value:=mdata['FTaskPartsModel'];
      qry.Parameters.FindParam('FDepartmentID').Value:=UserFDepartmentID;
      qry.Parameters.FindParam('FPartsID').Value:=mdata['FPartsID'];
      qry.Open;
      If qry.RecordCount>0 then
      begin
         application.MessageBox('工资部件名称+规格不允许重复！请重新输入','系统提示',MB_ICONERROR);
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
        TB_App.Click ;
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



procedure TFrm_TaskParts.TB_AppClick(Sender: TObject);
var
 qry:TADOquery;
 i,P_FProductId:Integer;
 P_FNumber,P_FParentNumber,P_FDetail,P_FUnitName,P_FProductClass:string;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  P_state :=0;    //新增
  L_title.Caption:=UserFDepartmentName+'工资部件信息增加';
  If (mData.RecordCount=0) then
  begin
    try
      qry.SQL.Text:='Select * from V_TaskParts where FTaskPartsID=0 and FDepartmentID=:FDepartmentID';
      qry.Parameters.FindParam('FDepartmentID').Value:=UserFDepartmentID;
      qry.Open;
    finally
       ;
    end;
    mdata.CopyFromDataSet(qry);
    mdata.Active:=True;
  end;
  Self.Set_Open;


  If (mData.RecordCount=1) and (mdata['FParentNumber']<>'') then
  begin
    try
      qry.SQL.Text:='Select max(FNumber) as maxFNumber from V_TaskParts where FParentNumber=:FParentNumber and FPartsID=:FPartsID and FDepartmentID=:FDepartmentID';
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
    P_FUnitName:=mData['FTaskPartsUnit'];
    P_FProductId:=mData['FProductId'];

    mData.Edit;
    mData['FNumber']:=P_FParentNumber+'.'+Format('%.2d',[i]);
    mData['FParentNumber']:=P_FParentNumber;
    mData['FTaskPartsName']:='';
    mData['FTaskPartsModel']:='';
    mData['FDetail']:=P_FDetail;
    mData['FTaskPartsUnit']:=P_FUnitName;
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
    mData['FDepartmentID']:=UserFDepartmentID;
    mData['FDepartmentName']:=UserFDepartmentName;
    mData.Edit;
  end;

end;

procedure TFrm_TaskParts.TB_EditClick(Sender: TObject);
var
  qry:TADOQuery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  P_state :=1;  //修改
 { If (mdata.RecordCount<1) then
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
    application.MessageBox(Pchar('部件【'+Trim(Mdata['FBalanceName'])+'】【'+Trim(Mdata['FBalanceModel'])+'】已启用不允许修改！'),'系统提示',MB_ICONINFORMATION);
    Exit;
  end;
   }
  L_title.Caption:=UserFDepartmentName+'结算部件数据修改';
  Self.Set_Open;

end;

procedure TFrm_TaskParts.TB_DelClick(Sender: TObject);
var
  qry:TADOQuery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If (mdata.RecordCount<1) then
    Exit;

 { try
    qry.SQL.Text:='Select * from V_WorkPrice where FBalanceID=:FBalanceID';
    qry.Parameters.FindParam('FBalanceID').Value:=mdata['FBalanceID'];
    qry.Open;
  finally
     ;
  end;
  if qry.RecordCount>0 then
  begin
    application.MessageBox(Pchar('部件【'+Trim(Mdata['FBalanceName'])+'】【'+Trim(Mdata['FBalanceModel'])+'】已启用不允许删除！'),'系统提示',MB_ICONINFORMATION);
    Exit;
  end;
   }


  If application.MessageBox(Pchar('警告：是否删除：【'+Trim(Mdata['FTaskPartsName'])+'】【'+Trim(Mdata['FTaskPartsModel'])+'】的信息？'+chr(13)+chr(13)
                           +'删除数据操作将不可恢复，确定要删除本数据吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
  If application.MessageBox(Pchar('警告：是否删除：【'+Trim(Mdata['FTaskPartsName'])+'】【'+Trim(Mdata['FTaskPartsModel'])+'】的信息？'+chr(13)+chr(13)
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

procedure TFrm_TaskParts.CancelBtnClick(Sender: TObject);
begin
  inherited;
  L_title.Caption:=UserFDepartmentName+'工资部件信息';
  Self.Set_Close;
end;

procedure TFrm_TaskParts.TB_OutClick(Sender: TObject);
begin
  inherited;
  ExportToExcel(cxGrid,True,TRue);
end;

procedure TFrm_TaskParts.FormCreate(Sender: TObject);
begin
  inherited;
  TB_App.Enabled:= mdlData.CheckFrmRights(TFrm_TaskParts.ClassName,'新增');
  TB_Prin.Enabled:= mdlData.CheckFrmRights(TFrm_TaskParts.ClassName,'打印');
  TB_Out.Enabled:= mdlData.CheckFrmRights(TFrm_TaskParts.ClassName,'打印');

end;

procedure TFrm_TaskParts.FormShow(Sender: TObject);
begin
  TB_Ref.Click;
end;

procedure TFrm_TaskParts.SelPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var selValue,aa : string;
    qry: TADOQuery;
    i:Integer;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Select * from VT_ProductParts order by FNumber ';
    qry.Open;
  finally
     ;
  end;
  SelValue:=select('选择上级编码','FNumber','FParentNumber','FNumber','FName',qry);
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
      qry.SQL.Text:='Select isnull(max(FNumber),''0'') as maxFNumber from V_TaskParts '
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
    application.MessageBox('请选择明细！','系统提示',MB_ICONINFORMATION);
end;

end.
