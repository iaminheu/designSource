unit Main_PartsSort_1;

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
  TFlatPanelUnit, cxLookAndFeelPainters, cxButtons;

type
  TFrm_PartsSort_1 = class(TFrm_GridBass)
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
    DataSource: TDataSource;
    V_K3: TADOTable;
    DS_K3: TDataSource;
    TB_Ref: TToolButton;
    CB_2: TcxCheckBox;
    CB_3: TcxCheckBox;
    CB_4: TcxCheckBox;
    CB_5: TcxCheckBox;
    ADOStoredProc1: TADOStoredProc;
    TB_app: TToolButton;
    TB_EDIT: TToolButton;
    TB_DEL: TToolButton;
    TB_refresh: TToolButton;
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
    Panel_upper: TPanel;
    L_Caption: TLabel;
    MyTreeView: TTreeView;
    MDataFPartsCode: TStringField;
    MDataFPartsName: TStringField;
    MDataFPartsAlias: TStringField;
    MDataFProductName: TStringField;
    MDataFProductId: TStringField;
    ToolButton2: TToolButton;
    cxGrid: TcxGrid;
    cxGV: TcxGridDBTableView;
    FProductID: TcxGridDBColumn;
    FProductName: TcxGridDBColumn;
    FPartsCode: TcxGridDBColumn;
    FPartsName: TcxGridDBColumn;
    Num: TcxGridDBColumn;
    FFullName: TcxGridDBColumn;
    FPartsSort: TcxGridDBColumn;
    mc: TcxGridDBColumn;
    lb: TcxGridDBColumn;
    fl: TcxGridDBColumn;
    cxGL: TcxGridLevel;
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
    procedure ToolButton2Click(Sender: TObject);
  private
    ListItemFNumber,P_th:String;
    P_i:boolean;
   // FFullFileName: string;
    qry: TADOQuery;
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
  Frm_PartsSort_1: TFrm_PartsSort_1;


implementation

uses FRMDATA, FRMMAIN, COMMON, FrmSelect, ProgBar, PROGRASS,
  Main_PartsSort;

{$R *.dfm}

function TFrm_PartsSort_1.DelRd: bool;
var
 qry: TADOQuery;
begin
  result:=False;
  qry:=TADOQuery.Create(Self);
  qry.Connection:=mdlData.conn;
  try
    qry.SQL.Text:='Delete from T_PartsSort where FProductID=:FProductID';
    with qry.Parameters do
    begin
      FindParam('FProductID').value:=mdata['FProductID'];
    end;
    result:=qry.ExecSQL>=1;
  finally
    qry.Free;
  end;
end;

function TFrm_PartsSort_1.AddRd: bool;
var
  qry: TADOQuery;
  i:Integer;
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
    qry.SQL.Text:='Insert into T_PartsSort(FProductID,FPartsCode,Num,FFullName,FPartsSort,mc,lb,fl) '
                 +'values(:FProductID,:FPartsCode,:Num,:FFullName,:FPartsSort,:mc,:lb,:fl)';
     mData.First;
     i:=1;
     while not mData.eof do
     begin
       If (mData['FProductID']<>'') and (mData['FPartsCode']<>'') and (mData['Num']<>'') and (mData['FPartsSort']<>'') then
       begin
         If qry.Active then qry.Close;
         with qry.Parameters do
         begin
           FindParam('FProductID').value:=mdata['FProductID'];;
           FindParam('FPartsCode').value:=mdata['FPartsCode'];
           FindParam('Num').value:=mdata['Num'];
           FindParam('FFullName').value:=mdata['FFullName'];
           FindParam('FPartsSort').value:=mdata['FPartsSort'];
           FindParam('mc').value:=mdata['mc'];
           FindParam('lb').value:=mdata['lb'];
           FindParam('fl').value:=mdata['fl'];
        end;
         result:=qry.ExecSQL>=1;
         if not result then break;
       end;
       mData.Next;
       i:=i+1;
     end;
   finally
     qry.Free;
   end;
end;


function TFrm_PartsSort_1.EditRd:bool;
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
        mdlData.conn.CommitTrans; //提交事务
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


procedure TFrm_PartsSort_1.FormResize(Sender: TObject);
var
  qry:TADOquery;
begin
  inherited;
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If not TreeVeiwList(qry,MyTreeView,'VT_PartsSort') then
  begin
    Application.MessageBox(PChar('物料树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;

  L_title.Caption:='部件类别划分操作';
  Self.Caption:='部件类别划分操作';
end;

procedure TFrm_PartsSort_1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=cafree;
  Frm_PartsSort:=nil;
end;

procedure TFrm_PartsSort_1.TB_EXITClick(Sender: TObject);
begin
  inherited;
  self.Close;
end;

procedure TFrm_PartsSort_1.TB_DownClick(Sender: TObject);
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

procedure TFrm_PartsSort_1.MyTreeViewChange(Sender: TObject; Node: TTreeNode);
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
    If not MyItemList(qry,Mdata,'V_PartsSort','FNumber',ListItemFNumber,'FNumber') then
    begin
      mdata.Open;
      cxGvColumn(cxGv,Mdata);
    end;
  end;

end;

procedure TFrm_PartsSort_1.MyTreeViewExpanding(Sender: TObject;
  Node: TTreeNode; var AllowExpansion: Boolean);
var
  P :PTree;
  qry:TADOquery;
  Id:Integer;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;


  If (Node = nil) or
     (PTree(Node.Data).Flag <> cNoLoadFlag) or   // 1.加载标志
     (not Node.HasChildren) or                   // 2.未有子
     (Node.Count>0) then                         // 3.已有子节点
     Exit;

  qry.SQL.Text:='Select FProductId,FNumber, FParentNumber,FName,'
               +'Isleaf from VT_PartsSort where FParentNumber= '''
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

procedure TFrm_PartsSort_1.TB_RefClick(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If not TreeVeiwList(qry,MyTreeView,'VT_PartsSort') then
  begin
    Application.MessageBox(PChar('物料树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;

end;

procedure TFrm_PartsSort_1.OKBtnClick(Sender: TObject);
var qry: TADOQuery;
    I:Integer;
begin
  cxGV.OptionsData.Editing:=True;
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;

  mData.Edit;
  mData.Post;


 { If P_state =0 then
  begin
    try
      qry.SQL.Text:='Select * from V_PartsSort where FPratsID=:FPratsID';
      qry.Parameters.FindParam('FPratsID').Value:=Trim(E_FProductID.Text);
      qry.Open;
      If qry.RecordCount>0 then
      begin
         application.MessageBox('产品类别重复！请重新选择','系统提示',MB_ICONERROR);
         E_FProductName.SetFocus;
         Exit;
      end;
    finally
       ;
    end;
  end;
 }
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
  TB_ref.Click;
  qry.Free;
end;



procedure TFrm_PartsSort_1.TB_appClick(Sender: TObject);
var
 qry:TADOquery;
 i:Integer;
begin
  P_state :=0;
  L_Caption.Caption:='数据新增';

  If mData.Active then mData.Close;
     mData.Open;
 { mData.Edit;
  for i:=1 to 50 do
  begin
    mData.Append;
    mData['FProductName']:='';
    mData['FPartsCode']:=Format('%.3d',[i]);
    mData['FPartsName']:='';
    mData['FPartsAlias']:='';
    mData.Post;
  end;
  mdata.First;
  }
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

  for i:=0 to cxGv.ColumnCount-1 do
  begin
    cxGv.Columns[i].Options.Editing:=True;
  end;

end;

procedure TFrm_PartsSort_1.TB_EDITClick(Sender: TObject);
var
 qry:TADOquery;
 i:Integer;
begin
  P_state :=1;

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

procedure TFrm_PartsSort_1.TB_DELClick(Sender: TObject);
var
  qry:TADOQuery;
  ResultBool:bool;
begin
  qry:=TAdoQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If (mdata.RecordCount<1) then
    Exit;
  If application.MessageBox(Pchar('警告：是否删除部件类别划分为：【'+Trim(Mdata['FFullName'])+'】的单据？'+chr(13)+chr(13)
                           +'删除数据操作将不可恢复，确定要删除本单据吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
  If application.MessageBox(Pchar('警告：是否删除部件类别划分为：【'+Trim(Mdata['FFullName'])+'】的单据？'+chr(13)+chr(13)
                           +'删除数据操作将不可恢复，确定要删除本单据吗？'),'再次警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then

  begin
    //单据删除
    qry.SQL.Text:='Delete from T_PartsSort where FPratsSortID=:FPratsSortID';
    If qry.Active then qry.Close;
       qry.Parameters.FindParam('FPratsSortID').Value:=Mdata['FPratsSortID'];
    try
      If qry.ExecSQL>=1 then
         ResultBool:=True
      else
         ResultBool:=False;
      If not ResultBool then
      begin
        application.MessageBox('删除单据失败！','系统提示',MB_ICONINFORMATION);
        mdlData.conn.RollbackTrans;
        Exit;
      end;
      finally
        ;
    end;
  end;
  mdata.Close;
  qry.Free;
  TB_ref.Click;
end;

procedure TFrm_PartsSort_1.TB_refreshClick(Sender: TObject);
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

procedure TFrm_PartsSort_1.CancelBtnClick(Sender: TObject);
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

end;

procedure TFrm_PartsSort_1.FPartsNamePropertiesButtonClick(
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

procedure TFrm_PartsSort_1.ToolButton2Click(Sender: TObject);
begin
  inherited;
  ExportToExcel(cxGrid,True,TRue);
end;

end.
