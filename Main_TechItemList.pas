unit Main_TechItemList;

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
  jpeg;

type
  TFrm_TechItemList = class(TFrm_GridBass)
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
    CB_2: TcxCheckBox;
    CB_3: TcxCheckBox;
    CB_4: TcxCheckBox;
    CB_5: TcxCheckBox;
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
    TB_Out: TToolButton;
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
    cxGL: TcxGridLevel;
    IsApp: TcxGridDBColumn;
    FA0: TcxGridDBColumn;
    FA1: TcxGridDBColumn;
    FA2: TcxGridDBColumn;
    FA3: TcxGridDBColumn;
    FA4: TcxGridDBColumn;
    FMX: TcxGridDBColumn;
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
    Image1: TImage;
    Label1: TLabel;
    cxButtonEdit1: TcxButtonEdit;
    cxButtonEdit2: TcxButtonEdit;
    Label3: TLabel;
    cxTextEdit1: TcxTextEdit;
    cxTextEdit2: TcxTextEdit;
    Label5: TLabel;
    FA5: TcxGridDBColumn;
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
    procedure TB_RefreshClick(Sender: TObject);
    procedure CancelBtnClick(Sender: TObject);
    procedure FPartsNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FPartsAliasPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure TB_OutClick(Sender: TObject);
    procedure cxGVStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      out AStyle: TcxStyle);
    procedure FProductNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure S_Edit;
    procedure E_FItemNumberPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormCreate(Sender: TObject);
  private
    ListItemFNumber,P_th:String;
    P_i:boolean;
   // FFullFileName: string;
   // qry: TADOQuery;
   // m_stopFileName,P_FItemListId,P_FFullNumber,p_FItemNo,p_Code:string;



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
  Frm_TechItemList: TFrm_TechItemList;


implementation

uses FRMDATA,  COMMON, FrmSelect, ProgBar, PROGRASS;

{$R *.dfm}

procedure TFrm_TechItemList.S_Edit;
var
 qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  try
    qry.SQL.Text:='select IsEdit=cast(0 as bit),'''+Trim(E_FItemNumber.Text)+''' as FItemNumber,'
                 +'isnull(b.FItemId,'''') as FItemId, '
                 +'case isnull(b.FItemId,'''') when '''' then cast(0 as bit) else cast(1 as bit) end as IsApp,'''
                 +Trim(E_FItemNo.Text)+''' as FItemNo, a.FPartsCode, '
                 +'case isnull(b.FpartsNumber,'''') when '''' then '''+Trim(E_FItemNumber.Text)+'''+''.''+cast(cast(a.FPartsCode as int) as Varchar) else b.FpartsNumber end as FpartsNumber,'
                 +'case isnull(b.FFullNumber,'''') when '''' then '''+Trim(E_FItemNo.Text)+'''+''.''+cast(cast(a.FPartsCode as int) as Varchar) else b.FFullNumber end as FFullNumber,'
                 +'ISNULL(b.FIsFinsh, 0) AS FIsFinsh, b.FInputDate, b.FInputId,b.FA0,b.FA1,b.FA2,b.FA3,b.FA4,b.FA5,b.FMX,a.* from '
                 +'(select * from V_TechProductParts where FProductid=:FProductid ) as a left outer join '
                 +'(select * from V_TechItemList where FProductid=:FProductid and FItemid=:FItemid ) as b on a.FProductid=b.FProductid and a.FPartsCode=b.FPartsCode order by a.FPartsCode ';
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



function TFrm_TechItemList.DelRd: bool;
var
 qry: TADOQuery;
begin
  //Result:=False;
  qry:=TADOQuery.Create(Self);
  qry.Connection:=mdlData.conn;
  try
    qry.SQL.Text:='Delete from T_TechItemList where FItemID=:FItemID';
    with qry.Parameters do
    begin
      FindParam('FItemID').value:=Trim(E_FItemID.Text);
    end;
    Result:=qry.ExecSQL>=1;
  finally
    qry.Free;
  end;

end;

function TFrm_TechItemList.AddRd: bool;
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
    qry.SQL.Text:='Insert into T_TechItemList(FItemId,FPartsCode,FPartsNumber,FFullNumber,FIsFinsh,FInputDate,FInputid,FA0,FA1,FA2,FA3,FA4,FA5,FMX)'
                 +'values (:FItemId,:FPartsCode,:FPartsNumber,:FFullNumber,:FIsFinsh,:FInputDate,:FInputid,:FA0,:FA1,:FA2,:FA3,:FA4,:FA5,:FMX)';
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
          FindParam('FIsFinsh').value:=mData['FIsFinsh'];
          FindParam('FInputDate').value:=mData['FInputDate'];
          FindParam('FInputid').value:=mData['FInputid'];
          FindParam('FA0').value:=mData['FA0'];
          FindParam('FA1').value:=mData['FA1'];
          FindParam('FA2').value:=mData['FA2'];
          FindParam('FA3').value:=mData['FA3'];
          FindParam('FA4').value:=mData['FA4'];
          FindParam('FA5').value:=mData['FA5'];
          FindParam('FMX').value:=mData['FMX'];
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


function TFrm_TechItemList.EditRd:bool;
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

  mdlData.conn.BeginTrans;
  try
    if DelRd then  //1  表删除
    begin
      result:=True;
      if AddRd then //2   表新增
      begin
        result:=True;
        mdlData.conn.CommitTrans;
      end
      else
      begin
        result:=False;
        mdlData.conn.RollbackTrans;
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


procedure TFrm_TechItemList.FormResize(Sender: TObject);
begin
  inherited;
  L_title.Caption:='设计明细操作';
  Self.Caption:='设计明细操作';
end;

procedure TFrm_TechItemList.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=cafree;
  Frm_TechItemList:=nil;
end;

procedure TFrm_TechItemList.TB_EXITClick(Sender: TObject);
begin
  inherited;
  self.Close;
end;

procedure TFrm_TechItemList.TB_DownClick(Sender: TObject);
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

procedure TFrm_TechItemList.MyTreeViewChange(Sender: TObject; Node: TTreeNode);
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
    If not MyItemList(qry,Mdata,'V_TechItemList','FNumber',ListItemFNumber,'FNumber') then
    begin
      mdata.Open;
      cxGvColumn(cxGv,Mdata);
    end;
    If mdata.RecordCount>0 then
    begin
      E_FItemNumber.Text:= mdata['FItemNumber'];
      E_FItemID.Text:= mdata['FItemID'];
      E_FItemNo.Text:= mdata['FItemNo'];
      E_FProductID.Text:= mdata['FProductID'];
    end
  end;

end;

procedure TFrm_TechItemList.MyTreeViewExpanding(Sender: TObject;
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
               +'Isleaf from VT_TechItemList where FParentNumber= '''
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

procedure TFrm_TechItemList.TB_RefClick(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If not TreeVeiwList(qry,MyTreeView,'VT_TechItemList') then
  begin
    Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;

end;

procedure TFrm_TechItemList.OKBtnClick(Sender: TObject);
var qry: TADOQuery;

begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;

  mData.Edit;
  mData.Post;

  If P_state =0 then
  begin
    try
      qry.SQL.Text:='Select * from V_TechItemList where FItemNumber=:FItemNumber';
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



procedure TFrm_TechItemList.TB_AppClick(Sender: TObject);
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

procedure TFrm_TechItemList.TB_EditClick(Sender: TObject);
var
 qry:TADOquery;
 i:Integer;
begin
  P_state :=1;
 { If (mdata.RecordCount<1) then
  begin
    application.MessageBox(Pchar('无数据修改！'),'系统提示',MB_ICONINFORMATION);
    Exit;
  end;
  }
  qry:=TAdoQuery.Create(self);
  qry.Connection:=mdlData.conn;
{  try
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
  for i:=0 to cxGv.ColumnCount-1 do
  begin
    cxGv.Columns[i].Options.Editing:=True;
  end;
  
end;

procedure TFrm_TechItemList.TB_DelClick(Sender: TObject);
var
  qry:TADOQuery;

begin
  qry:=TAdoQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If (mdata.RecordCount<1) then
    Exit;


  qry:=TAdoQuery.Create(self);
  qry.Connection:=mdlData.conn;
  try
    qry.SQL.Text:='Select * from V_DesignBOM_Structure where FFullNumber like :FFullNumber';
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
  TB_ref.Click;
end;

procedure TFrm_TechItemList.TB_RefreshClick(Sender: TObject);
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

procedure TFrm_TechItemList.CancelBtnClick(Sender: TObject);
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

end;

procedure TFrm_TechItemList.FPartsNamePropertiesButtonClick(
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

procedure TFrm_TechItemList.FPartsAliasPropertiesButtonClick(
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

procedure TFrm_TechItemList.TB_OutClick(Sender: TObject);
begin
  inherited;
  ExportToExcel(cxGrid,True,TRue);
end;

procedure TFrm_TechItemList.cxGVStylesGetContentStyle(
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

procedure TFrm_TechItemList.FProductNamePropertiesButtonClick(Sender: TObject;
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

procedure TFrm_TechItemList.E_FItemNumberPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.Connection:=mdlData.conn;
  try
    qry.SQL.Text:='select *  from VT_TechItem order by FItemNumber';
    qry.Open;
  finally
     ;
  end;
 // selValue:=select('请选择图号','FItemNumber','FItemNumber','FItemNumber','FItemNumber',qry);
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

procedure TFrm_TechItemList.FormCreate(Sender: TObject);
begin
  inherited;
  TB_App.Enabled:= mdlData.PermissionCheckRights(TFrm_TechItemList.ClassName,'新增');
  TB_Edit.Enabled:= mdlData.PermissionCheckRights(TFrm_TechItemList.ClassName,'修改');
  TB_Del.Enabled:= mdlData.PermissionCheckRights(TFrm_TechItemList.ClassName,'删除');
  TB_Refresh.Enabled:= mdlData.PermissionCheckRights(TFrm_TechItemList.ClassName,'新增');
  TB_Prin.Enabled:= mdlData.PermissionCheckRights(TFrm_TechItemList.ClassName,'打印');
  TB_Out.Enabled:= mdlData.PermissionCheckRights(TFrm_TechItemList.ClassName,'打印');
end;

end.
