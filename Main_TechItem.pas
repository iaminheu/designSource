unit Main_TechItem;

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
  cxEditRepositoryItems;

type
  TFrm_TechItem = class(TFrm_GridBass)
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
    TS_Edit: TRzTabSheet;
    ADOQuery: TADOQuery;
    DataSource: TDataSource;
    V_K3: TADOTable;
    DS_K3: TDataSource;
    TB_Ref: TToolButton;
    ADOStoredProc1: TADOStoredProc;
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
    FProductName: TcxGridDBColumn;
    FDesignDate: TcxGridDBColumn;
    cxGL: TcxGridLevel;
    MyTreeView: TTreeView;
    TB_Out: TToolButton;
    FItemId: TcxGridDBColumn;
    FItemNo: TcxGridDBColumn;
    FClientFullName: TcxGridDBColumn;
    FItemNumber: TcxGridDBColumn;
    FItemModel: TcxGridDBColumn;
    FItemLb: TcxGridDBColumn;
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
    FProductID: TcxGridDBColumn;
    MDataFProductID: TStringField;
    Fsjdw: TcxGridDBColumn;
    Fsjr: TcxGridDBColumn;
    Fjsr: TcxGridDBColumn;
    Fgdrq: TcxGridDBColumn;
    MDataFsjdw: TStringField;
    MDataFsjr: TStringField;
    MDataFjsr: TStringField;
    MDataFgdrq: TStringField;
    FDesignName: TcxGridDBColumn;
    FPlace: TcxGridDBColumn;
    Image3: TImage;
    MDataFDesignName: TStringField;
    MDataFPlace: TStringField;
    EditRepository: TcxEditRepository;
    ImageComboLanguages: TcxEditRepositoryImageComboBoxItem;
    ImageComboCommunication: TcxEditRepositoryImageComboBoxItem;
    SpinItemYears: TcxEditRepositorySpinItem;
    DateItemStartWorkFrom: TcxEditRepositoryDateItem;
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
    procedure FProductNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormCreate(Sender: TObject);
    procedure FsjdwPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FsjrPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FjsrPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FClientShortNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FDesignNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FPlacePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormShow(Sender: TObject);
    procedure Set_Open;
    procedure Set_Close;
    procedure cxGVCustomDrawPartBackground(Sender: TcxGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxCustomGridCellViewInfo;
      var ADone: Boolean);
  private
    ListItemFNumber,P_th:String;
    P_FProductID:Integer;
    P_i:boolean;



    { Private declarations }
    function AddRd:bool;
    function EditRd:bool;
    function DelRd:bool;

  public
    P_state:integer;
    { Public declarations }
  end;

var
  Frm_TechItem: TFrm_TechItem;


implementation

uses FRMDATA, FRMMAIN, COMMON, FrmSelect, ProgBar, PROGRASS;

{$R *.dfm}
procedure TFrm_TechItem.Set_Open;
begin
  TB_Ref.Visible:=False;
  TB_App.Visible:=False;
  TB_Edit.Visible:=False;
  TB_Del.Visible:=False;
  MyTreeView.Enabled:=False;

  OKBtn.Visible:=True;
  CancelBtn.Visible:=True;
  cxGV.OptionsData.Editing:=True;


  FItemNumber.Options.Editing:=True;
  FClientFullName.Options.Editing:=True;
  FProductName.Options.Editing:=True;
  FItemModel.Options.Editing:=True;
  If TB_Del.Enabled=True then
  begin
    Fsjdw.Options.Editing:=True;
    Fsjr.Options.Editing:=True;
    Fjsr.Options.Editing:=True;
    Fgdrq.Options.Editing:=True;
    FDesignName.Options.Editing:=True;
    FDesignDate.Options.Editing:=True;
  end;


  
end;

procedure TFrm_TechItem.Set_Close;
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

function TFrm_TechItem.DelRd: bool;
var
 qry: TADOQuery;
begin
  //result:=False;
  qry:=TADOQuery.Create(Self);
  qry.Connection:=mdlData.conn;
  try
    qry.SQL.Text:='Delete from T_TechItem where FItemNo=:FItemNo';
    with qry.Parameters do
    begin
      FindParam('FItemNo').value:=mdata['FItemNo'];
    end;
    result:=qry.ExecSQL>=1;
  finally
    qry.Free;
  end;
end;

function TFrm_TechItem.AddRd: bool;
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
    qry.SQL.Text:='Insert into T_TechItem(FItemNo,FClientFullName,FProductId,FItemNumber,FItemModel,FDesignDate,Fsjdw,Fsjr,Fjsr,Fgdrq,FDesignName,FPlace) '
                 +'values(:FItemNo,:FClientFullName,:FProductId,:FItemNumber,:FItemModel,:FDesignDate,:Fsjdw,:Fsjr,:Fjsr,:Fgdrq,:FDesignName,:FPlace)';
     mData.First;

     while not mData.eof do
     begin
       If (mData['FItemNo']<>'') and (mData['FProductId']<>0) and (mData['FItemNumber']<>'') then
       begin
         If qry.Active then qry.Close;
         with qry.Parameters do
         begin
           FindParam('FItemNo').value:=mdata['FItemNo'];;
           FindParam('FClientFullName').value:=mdata['FClientFullName'];
           FindParam('FProductId').value:=mdata['FProductId'];
           FindParam('FItemNumber').value:=mdata['FItemNumber'];
           FindParam('FItemModel').value:=mdata['FItemModel'];
           FindParam('FDesignDate').value:=mdata['FDesignDate'];
           FindParam('Fsjdw').value:=mdata['Fsjdw'];
           FindParam('Fsjr').value:=mdata['Fsjr'];
           FindParam('Fjsr').value:=mdata['Fjsr'];
           FindParam('Fgdrq').value:=mdata['Fgdrq'];
           FindParam('FDesignName').value:=mdata['FDesignName'];
           FindParam('FPlace').value:=mdata['FPlace'];
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


function TFrm_TechItem.EditRd:bool;
var
  qry: TADOQuery;

begin
  qry:=TADOQuery.Create(Self);
  qry.Connection:=mdlData.conn;
//  result:=False;

  If mData.RecordCount<=0 then
  begin
    result:=True;
    Exit;
  end;

  mData.Edit;
  mData.Post;


  qry:=TADOQuery.Create(Self);
  qry.Connection:=mdlData.conn;
  result:=False;

  If mData.RecordCount<=0 then
  begin
    result:=True;
    Exit;
  end;
  try
    qry.SQL.Text:='Update T_TechItem set FItemNo=:FItemNo,FClientFullName=:FClientFullName,'
                 +'FProductId=:FProductId,FItemNumber=:FItemNumber,FItemModel=:FItemModel,FDesignDate=:FDesignDate,'
                 +'Fsjdw=:Fsjdw,Fsjr=:Fsjr,Fjsr=:Fjsr,Fgdrq=:Fgdrq,FDesignName=:FDesignName,FPlace=:FPlace '
                 +'where FItemID=:FItemID';
     mData.First;
     while not mData.eof do
     begin
       If (mData['FItemNo']<>'') and (mData['FProductId']<>0) and (mData['FItemNumber']<>'') then
       begin
         If qry.Active then qry.Close;
         with qry.Parameters do
         begin
           FindParam('FItemNo').value:=mdata['FItemNo'];
           FindParam('FClientFullName').value:=mdata['FClientFullName'];
           FindParam('FProductId').value:=mdata['FProductId'];
           FindParam('FItemNumber').value:=mdata['FItemNumber'];
           FindParam('FItemModel').value:=mdata['FItemModel'];
           FindParam('FDesignDate').value:=mdata['FDesignDate'];
           FindParam('Fsjdw').value:=mdata['Fsjdw'];
           FindParam('Fsjr').value:=mdata['Fsjr'];
           FindParam('Fjsr').value:=mdata['Fjsr'];
           FindParam('Fgdrq').value:=mdata['Fgdrq'];
           FindParam('FDesignName').value:=mdata['FDesignName'];
           FindParam('FPlace').value:=mdata['FPlace'];
           FindParam('FItemID').value:=mdata['FItemID'];
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


procedure TFrm_TechItem.FormResize(Sender: TObject);
begin
  inherited;
  L_title.Caption:='资料信息操作';
  Self.Caption:='资料信息操作';

end;

procedure TFrm_TechItem.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=cafree;
  Frm_TechItem:=nil;
end;

procedure TFrm_TechItem.TB_EXITClick(Sender: TObject);
begin
  inherited;
  self.Close;
end;

procedure TFrm_TechItem.TB_DownClick(Sender: TObject);
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

procedure TFrm_TechItem.MyTreeViewChange(Sender: TObject; Node: TTreeNode);
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
    If not MyItemList(qry,Mdata,'V_TechItem','FNumber',ListItemFNumber,'FNumber') then
    begin
      mdata.Open;
      cxGvColumn(cxGv,Mdata);
    end;
  end;

end;

procedure TFrm_TechItem.MyTreeViewExpanding(Sender: TObject;
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

  qry.SQL.Text:='Select FProductId,FNumber,FParentNumber,FName,'
               +'Isleaf from VT_TechItem where FParentNumber= '''
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

procedure TFrm_TechItem.TB_RefClick(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If not TreeVeiwList(qry,MyTreeView,'VT_TechItem') then
  begin
    Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;

end;

procedure TFrm_TechItem.OKBtnClick(Sender: TObject);
var qry: TADOQuery;

begin
  cxGV.OptionsData.Editing:=True;
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;

  mData.Edit;
  mData.Post;
  If (mData['FItemNumber']='')  or (mData['FItemNumber']=Null) then
  begin
    application.MessageBox('图号不允许空！请重新输入','系统提示',MB_ICONERROR);
    Exit;
  end;


  If P_state =0 then
  begin
    try
      qry.SQL.Text:='Select * from V_TechItem where FItemNo=:FItemNo';
      qry.Parameters.FindParam('FItemNo').Value:=mdata['FItemNo'];
      qry.Open;
      If qry.RecordCount>0 then
      begin
         application.MessageBox('项目代号重复！请重新选择','系统提示',MB_ICONERROR);
         Exit;
      end;
    finally
       ;
    end;
    try
      qry.SQL.Text:='Select * from V_TechItem where FItemNumber=:FItemNumber';
      qry.Parameters.FindParam('FItemNumber').Value:=mdata['FItemNumber'];
      qry.Open;
      If qry.RecordCount>0 then
      begin
         application.MessageBox('项目图号重复！请重新选择','系统提示',MB_ICONERROR);
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



procedure TFrm_TechItem.TB_AppClick(Sender: TObject);
var
  qry:TADOquery;
  i:Integer;
  P_Fsjdw,P_Fsjr,P_Fjsr,P_FProductName:string;
  proc:TADOStoredProc;
begin
  proc:=TADOStoredProc.Create(self);
  proc.ConnectionString:=mdlData.ReadConnStr;
  proc.CommandTimeout:=500;
  try
    proc.ProcedureName:='P_GetMinNum;1';
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=20;
      name := '@TableName';
      value:='T_TechItem';
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftInteger;
      Direction := pdoutput;
      size:=255;
      name := '@FInterID';
      value:=0;
    end;
    proc.ExecProc;
    i:=proc.Parameters.FindParam('@FInterID').Value;
    proc.Free;
  finally
     ;
  end;


  P_state :=0;
  L_title.Caption:='项目信息新增';
  Self.Set_Open;
  {
  qry:=TAdoQuery.Create(self);
  qry.Connection:=mdlData.conn;

  try
    qry.SQL.Text:='Update T_MaxNum  set FMaxNum=FMaxNum+1 where FTableName=''T_TechItem''';
    qry.ExecSQL;
  finally
    ;
  end;

  try
    qry.SQL.Text:='Select * from T_MaxNum where FTableName=''T_TechItem''';
    qry.Open;
  finally
     ;
  end;
  If qry.RecordCount>0 then
     i:=qry.FieldByName('FMaxNum').Value
  else
     i:=1;
    }

  If mData.RecordCount>0 then
  begin
    P_Fsjdw:=mData['Fsjdw'];
    P_Fsjr:=mData['Fsjr'];
    P_Fjsr:=mData['Fjsr'];
    P_FProductName:=mData['FProductName'];
    P_FProductID:=mData['FProductID'];
  end;


  If mData.Active then mData.Close;

  mData.Open;
  mData.Edit;
  mData['FItemNo']:=Format('%.5d',[i]);
  If TB_Del.Enabled=True then
  begin
    mData['Fsjdw']:=P_Fsjdw;
    mData['Fsjr']:=P_Fsjr;
    mData['Fjsr']:=P_Fjsr;
  end;  
  mData['FProductName']:=P_FProductName;
  mData['FProductID']:=P_FProductID;
  mData['FDesignName']:='';


end;

procedure TFrm_TechItem.TB_EditClick(Sender: TObject);


begin
  P_state :=1;
  If (mdata.RecordCount<1) then
    Exit;
  If mdata.RecordCount<>1 then
  begin
    application.MessageBox('只允许修改单个记录！请重新选择!','系统提示',MB_ICONINFORMATION);
    Exit;
  end;

  L_title.Caption:='项目信息修改';
  Self.Set_Open;
end;

procedure TFrm_TechItem.TB_DelClick(Sender: TObject);
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

  qry:=TAdoQuery.Create(self);
  qry.Connection:=mdlData.conn;


  try
    qry.SQL.Text:='Select * from V_TechItemList where FItemID=:FItemID';
    qry.Parameters.FindParam('FItemID').Value:=mdata['FItemID'];
    qry.Open;
  finally
     ;
  end;
  if qry.RecordCount>0 then
  begin
    application.MessageBox(Pchar('项目【'+Trim(Mdata['FItemNumber'])+'】已生成项目明细,请先删除项目明细！'),'系统提示',MB_ICONINFORMATION);
    Exit;
  end;




  If application.MessageBox(Pchar('警告：是否删除产品类别为：【'+Trim(Mdata['FItemNumber'])+'】【'+Trim(Mdata['FItemNo'])+'】的单据？'+chr(13)+chr(13)
                           +'删除数据操作将不可恢复，确定要删除本单据吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
  If application.MessageBox(Pchar('警告：是否删除产品类别为：【'+Trim(Mdata['FItemNumber'])+'】【'+Trim(Mdata['FItemNo'])+'】的单据？'+chr(13)+chr(13)
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
  TB_ref.Click;
end;

procedure TFrm_TechItem.CancelBtnClick(Sender: TObject);
begin
  inherited;
  L_title.Caption:='资料信息';
  Self.Set_Close;
end;

procedure TFrm_TechItem.FPartsNamePropertiesButtonClick(
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

procedure TFrm_TechItem.FPartsAliasPropertiesButtonClick(
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

procedure TFrm_TechItem.TB_OutClick(Sender: TObject);
begin
  inherited;
  ExportToExcel(cxGrid,True,TRue);
end;

procedure TFrm_TechItem.FProductNamePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.Connection:=mdlData.conn;
  try
    qry.SQL.Text:='select distinct FProductID,FProductName from T_TechProduct order by FProductName';
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

procedure TFrm_TechItem.FormCreate(Sender: TObject);
begin
  inherited;
  TB_App.Enabled:= mdlData.PermissionCheckRights(TFrm_TechItem.ClassName,'新增');
  TB_Edit.Enabled:= mdlData.PermissionCheckRights(TFrm_TechItem.ClassName,'修改');
  TB_Del.Enabled:= mdlData.PermissionCheckRights(TFrm_TechItem.ClassName,'删除');
  TB_Prin.Enabled:= mdlData.PermissionCheckRights(TFrm_TechItem.ClassName,'打印');
  TB_Out.Enabled:= mdlData.PermissionCheckRights(TFrm_TechItem.ClassName,'打印');

end;

procedure TFrm_TechItem.FsjdwPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.Connection:=mdlData.conn;
  try
    qry.SQL.Text:='Select distinct Fsjdw from V_TechItem order by Fsjdw';
    qry.Open;
  finally
     ;
  end;
  selValue:=select('请选择送交单位','Fsjdw','Fsjdw','Fsjdw','Fsjdw',qry);
  If Length(selValue)>0 then
  begin
    mdata.Edit;
    mdata['Fsjdw']:=qry.FieldByName('Fsjdw').AsString;
    mdata.Post;
  end;

end;

procedure TFrm_TechItem.FsjrPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.Connection:=mdlData.conn;
  try
    qry.SQL.Text:='select distinct Fsjr from V_TechItem where Fsjdw=:Fsjdw order by Fsjr';
    qry.Parameters[0].Value:=mdata['Fsjdw'];
    qry.Open;
  finally
     ;
  end;
  selValue:=select('请选择送交人','Fsjr','Fsjr','Fsjr','Fsjr',qry);
  If Length(selValue)>0 then
  begin
    mdata.Edit;
    mdata['Fsjr']:=qry.FieldByName('Fsjr').AsString;
    mdata.Post;
  end;

end;

procedure TFrm_TechItem.FjsrPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.Connection:=mdlData.conn;
  try
    qry.SQL.Text:='select distinct Fjsr from V_TechItem order by Fjsr';
    qry.Open;
  finally
     ;
  end;
  selValue:=select('请选择接收人','Fjsr','Fjsr','Fjsr','Fjsr',qry);
  If Length(selValue)>0 then
  begin
    mdata.Edit;
    mdata['Fjsr']:=qry.FieldByName('Fjsr').AsString;
    mdata.Post;
  end;

end;

procedure TFrm_TechItem.FClientShortNamePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
    mdata.Edit;
    mdata['FClientShortName']:=mdata['FClientFullName'];
    mdata.Post;
end;

procedure TFrm_TechItem.FDesignNamePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  mdata.Edit;
  mdata.Post;

  qry:=TADOQuery.Create(Self);
  qry.Connection:=mdlData.conn;
  try
    qry.SQL.Text:='select distinct FDesignName from V_TechItem Where FDesignName like :FDesignName  order by FDesignName';
    qry.Parameters[0].Value:='%'+FDesignName.EditValue+'%';
    qry.Open;
  finally
     ;
  end;

  If qry.RecordCount=1 then
  begin
    FDesignName.EditValue:=qry.FieldByName('FDesignName').AsString;
  end
  else
  begin
    selValue:=select('请选择设计人员','FDesignName','FDesignName','FDesignName','FDesignName',qry);
    If Length(selValue)>0 then
    begin
      mdata.Edit;
      mdata['FDesignName']:=qry.FieldByName('FDesignName').AsString;
      mdata.Post;
    end;
  end;
  qry.Free;


end;

procedure TFrm_TechItem.FPlacePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.Connection:=mdlData.conn;
  try
    qry.SQL.Text:='select distinct FPlace from V_TechItem Where FPlace like :FPlace order by FPlace';
    qry.Parameters[0].Value:='%'+FPlace.EditValue+'%';
    qry.Open;
  finally
     ;
  end;
  If qry.RecordCount=1 then
  begin
    FPlace.EditValue:=qry.FieldByName('FPlace').AsString;
  end
  else
  begin
    selValue:=select('请选择存放点','FPlace','FPlace','FPlace','FPlace',qry);
    If Length(selValue)>0 then
    begin
      mdata.Edit;
      mdata['FPlace']:=qry.FieldByName('FPlace').AsString;
      mdata.Post;
    end;
  end;
  qry.Free;


end;

procedure TFrm_TechItem.FormShow(Sender: TObject);
begin
  inherited;
  TB_Ref.Click;
end;

procedure TFrm_TechItem.cxGVCustomDrawPartBackground(Sender: TcxGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxCustomGridCellViewInfo;
  var ADone: Boolean);
//var   AViewInfo:string;
begin
  inherited;
  AViewInfo.Text:='动态设置 GroupBox 的显示内容';
  ACanvas.FillRect(AViewInfo.Bounds);


end;

end.
