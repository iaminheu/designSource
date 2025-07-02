unit Main_LKDDBalanceItem;

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
  TFrm_LKDDBalanceItem = class(TFrm_GridBass)
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
    TS_Edit: TRzTabSheet;
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
    FBalanceModel: TcxGridDBColumn;
    FUnitName: TcxGridDBColumn;
    MDataFParentNumber: TStringField;
    MDataFNumber: TStringField;
    MDataFBalanceName: TStringField;
    MDataFBalanceModel: TStringField;
    MDataFUnitName: TStringField;
    MDataFWorkPrice: TCurrencyField;
    MDataFRemark: TStringField;
    MDataFWorkID: TIntegerField;
    MDataFBalanceID: TIntegerField;
    FBalancePriceID: TcxGridDBColumn;
    FBalancePrice: TcxGridDBColumn;
    Panel2: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    L_Caption: TLabel;
    E_FAgentName: TcxButtonEdit;
    E_FAgentID: TcxButtonEdit;
    E_FBalanceNum: TcxTextEdit;
    FBalanceAmount: TcxGridDBColumn;
    FAdvanceAmount: TcxGridDBColumn;
    FQualityAmount: TcxGridDBColumn;
    E_FClientFullName: TcxButtonEdit;
    E_FBalanceDate: TcxDateEdit;
    MDataFItemID: TIntegerField;
    MDataFPactNo: TStringField;
    MDataFClientshortName: TStringField;
    Sel: TcxGridDBColumn;
    FMaterialDate: TcxGridDBColumn;
    MDataFMaterialDate: TStringField;
    MDataFBalancePrice: TStringField;
    MDataFBalancePriceID: TIntegerField;
    MDataFAgentBalanceNum: TStringField;
    MDataFAgentBalancePactNum: TStringField;
    MDataFAgentBalanceDate: TDateTimeField;
    MDataFAgentID: TStringField;
    MDataFAgentBalanceItemID: TStringField;
    MDataFBalanceQry: TStringField;
    MDataFAdvanceQry: TStringField;
    MDataFQualityQry: TStringField;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label10: TLabel;
    E_FItemModel: TcxTextEdit;
    E_FFileNo: TcxTextEdit;
    E_FMaterialDate: TcxButtonEdit;
    E_FBalanceID: TcxTextEdit;
    E_FItemId: TcxTextEdit;
    FBalanceQry: TcxGridDBColumn;
    FBalanceRemark: TcxGridDBColumn;
    MDataFEstimateQry: TStringField;
    FBalanceListNum: TcxGridDBColumn;
    cxGridBrow: TcxGrid;
    cxGVBrow: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridDBColumn15: TcxGridDBColumn;
    cxGridDBColumn16: TcxGridDBColumn;
    cxGridDBColumn17: TcxGridDBColumn;
    cxGLBrow: TcxGridLevel;
    FWorkItemNum_Brow: TcxGridDBColumn;
    FClientShortName: TcxGridDBColumn;
    FFileNo: TcxGridDBColumn;
    FItemNumber: TcxGridDBColumn;
    FDeliveryPlace: TcxGridDBColumn;
    FJobPlace: TcxGridDBColumn;
    FAgentName: TcxGridDBColumn;
    E_FTransportPrice: TcxCurrencyEdit;
    Label7: TLabel;
    FOutPrice: TcxGridDBColumn;
    FTransportPrice: TcxGridDBColumn;
    MDataFTransportPrice: TFloatField;
    MDataFOutPrice: TFloatField;
    Count: TcxGridDBColumn;
    MDataFDeliveryDate: TDateField;
    MDataFEstimateAmount: TCurrencyField;
    MDataFAdvanceAmount: TCurrencyField;
    E_FDepartmentNum: TcxTextEdit;
    FPrice: TcxGridDBColumn;
    MDataFPrice: TFloatField;
    TB_Sel: TToolButton;
    FWeight: TcxGridDBColumn;
    FQry: TcxGridDBColumn;
    MDataFWeight: TFloatField;
    MDataFQry: TFloatField;
    FWorkItemNum: TcxGridDBColumn;
    FNumber: TcxGridDBColumn;
    FQry_1: TcxGridDBColumn;
    MDataFBalanceListNum: TIntegerField;
    MDataFBalanceAmount: TFloatField;
    MDataFQualityAmount: TFloatField;
    MDataFBalanceRemark: TStringField;
    Label8: TLabel;
    Label9: TLabel;
    cxTextEdit1: TcxTextEdit;
    E_FWorkItemNum: TcxTextEdit;
    cxTextEdit3: TcxTextEdit;
    E_FItemNumber: TcxButtonEdit;
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
    procedure E_FWorkMaxNumIDPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure Sel_ItemPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure Sel_PricePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure E_FAgentBalancePactNumPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure VT_BalancePrice(Sender: TObject;
      AButtonIndex: Integer);
    procedure Set_Open;
    procedure Set_Close;
    procedure TB_PrinClick(Sender: TObject);
    procedure E_FTransportPriceDblClick(Sender: TObject);
    procedure CountPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure E_FBalanceNumDblClick(Sender: TObject);
    procedure TB_SelClick(Sender: TObject);
    procedure E_FDeliveryDateExit(Sender: TObject);
    procedure frReportBeginBand(Band: TfrBand);
    procedure frReportGetValue(const ParName: String;
      var ParValue: Variant);
    procedure MDataBeforePost(DataSet: TDataSet);
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    ListItemFNumber,P_th:String;
    P_i:boolean;


    { Private declarations }
    function AddMain:bool;
    function AddList:bool;
    function AddRd:bool;
    function EditRd:bool;
    function DelRd:bool;
    function EditMain:bool;
    function EditList:bool;
   function EditAddRd:bool;


  public
    P_state:integer;
    { Public declarations }
  end;

var
  Frm_LKDDBalanceItem: TFrm_LKDDBalanceItem;


implementation

uses FRMDATA, FRMMAIN, COMMON, FrmSelect, ProgBar, PROGRASS;

{$R *.dfm}

procedure TFrm_LKDDBalanceItem.Set_Open;
begin
  TB_Ref.Visible:=False;
  TB_App.Visible:=False;
  TB_Edit.Visible:=False;
  TB_Del.Visible:=False;
  MyTreeView.Enabled:=False;

  OKBtn.Visible:=True;
  CancelBtn.Visible:=True;
  cxGV.OptionsData.Editing:=True;

  E_FTransportPrice.Enabled:=True;
  E_FBalanceNum.Enabled:=True;
  E_FBalanceDate.Enabled:=True;
  E_FItemNumber.Enabled:=True;
  E_FAgentName.Enabled:=True;
  E_FMaterialDate.Enabled:=True;
  E_FMaterialDate.Enabled:=True;
  E_FWorkItemNum.Enabled:=True;

  Sel.Options.Editing:=True;
  FQry.Options.Editing:=True;
  Count.Options.Editing:=True;
  FOutPrice.Options.Editing:=True;
  FBalanceListNum.Options.Editing:=True;
  FBalanceQry.Options.Editing:=True;
  FBalanceRemark.Options.Editing:=True;
end;

procedure TFrm_LKDDBalanceItem.Set_Close;
begin
  TB_Ref.Visible:=True;
  TB_App.Visible:=True;
  TB_Edit.Visible:=True;
  TB_Del.Visible:=True;
  MyTreeView.Enabled:=True;

  OKBtn.Visible:=False;
  CancelBtn.Visible:=False;
  cxGV.OptionsData.Editing:=False;

  E_FTransportPrice.Enabled:=False;
  E_FBalanceNum.Enabled:=False;
  E_FBalanceDate.Enabled:=False;
  E_FItemNumber.Enabled:=False;
  E_FAgentName.Enabled:=False;
  E_FMaterialDate.Enabled:=False;
  E_FMaterialDate.Enabled:=False;
  E_FWorkItemNum.Enabled:=False;

end;


function TFrm_LKDDBalanceItem.DelRd: bool;
var
 qry: TADOQuery;
begin
  //result:=False;
  qry:=TADOQuery.Create(Self);
  qry.Connection:=mdlData.conn;

  try
    qry.SQL.Text:='Delete from T_LKDDBalanceItem where FBalanceID=:FBalanceID';
    qry.Parameters.FindParam('FBalanceID').value:=StrToInt(Trim(E_FBalanceID.Text));
    result:=qry.ExecSQL>=1;
  finally
    qry.Free;
  end;
end;

function TFrm_LKDDBalanceItem.EditMain: bool;
var
 qry: TADOQuery;
begin
 // result:=False;
  qry:=TADOQuery.Create(Self);
  qry.Connection:=mdlData.conn;
  try
    qry.SQL.Text:='Update T_LKDDBalanceItem Set FBalanceNum=:FBalanceNum, FItemId=:FItemId, '
                 +'FAgentID=:FAgentID,FBalanceDate=:FBalanceDate where  FBalanceID=:FBalanceID';
   with qry.Parameters do
   begin
     FindParam('FBalanceNum').value:=Trim(E_FBalanceNum.Text);
     FindParam('FItemId').value:=STrToInt(Trim(E_FItemId.Text));
     FindParam('FAgentID').value:=STrToInt(Trim(E_FAgentID.Text));
     FindParam('FBalanceDate').value:=E_FBalanceDate.Date;
     FindParam('FBalanceID').value:=STrToInt(Trim(E_FBalanceID.Text));
   end;
     result:=qry.ExecSQL>=1;
   finally
     qry.Free;
   end;

end;


function TFrm_LKDDBalanceItem.AddMain: bool;
var
 qry: TADOQuery;
begin
 // result:=False;
  qry:=TADOQuery.Create(Self);
  qry.Connection:=mdlData.conn;
  try
    qry.SQL.Text:='Insert into T_LKDDBalanceItem(FBalanceNum, FItemId, FAgentID,FBalanceDate,FWorkItemNum)'
                 +'values(:FBalanceNum, :FItemId, :FAgentID,:FBalanceDate,:FWorkItemNum)';
   with qry.Parameters do
   begin
     FindParam('FBalanceNum').value:=Trim(E_FBalanceNum.Text);
     FindParam('FItemId').value:=STrToInt(Trim(E_FItemId.Text));
     FindParam('FAgentID').value:=STrToInt(Trim(E_FAgentID.Text));
     FindParam('FBalanceDate').value:=E_FBalanceDate.Date;
     FindParam('FWorkItemNum').value:=Trim(E_FWorkItemNum.Text);
   end;
     result:=qry.ExecSQL>=1;
   finally
     qry.Free;
   end;

end;

function TFrm_LKDDBalanceItem.AddList: bool;
var
  qry,qry1: TADOQuery;
  i:Integer;
begin
  qry:=TADOQuery.Create(Self);
  qry.Connection:=mdlData.conn;
  qry1:=TADOQuery.Create(Self);
  qry1.Connection:=mdlData.conn;
  result:=False;

  If mData.RecordCount<=0 then
  begin
    result:=True;
    Exit;
  end;

  try
    qry1.SQL.Text:='select * from V_LKDDBalanceItem where FBalanceNum=:FBalanceNum';
    qry1.Parameters.FindParam('FBalanceNum').value:=Trim(E_FBalanceNum.Text);
    qry1.Open;
  finally
    ;
  end;
  if qry1.RecordCount>0 then
     E_FBalanceID.Text:=IntToStr(qry1.FieldByName('FBalanceID').value);

  try
    qry.SQL.Text:='Insert into T_LKDDBalanceList(FBalanceID, FBalanceListNum,FBalancePriceID,FQry,FBalanceQry,FOutPrice,FAdvanceAmount,FQualityAmount,FBalanceRemark) '
                 +'values(:FBalanceID, :FBalanceListNum,:FBalancePriceID,:FQry,:FBalanceQry,:FOutPrice,:FAdvanceAmount,:FQualityAmount,:FBalanceRemark)';
     mData.First;
     i:=1;
     while not mData.eof do
     begin
       If (mData['FBalancePriceID']<>0) and (mData['FBalancePriceID']<>Null) then
       begin
         If qry.Active then qry.Close;
         with qry.Parameters do
         begin
           FindParam('FBalanceID').value:= qry1.FieldByName('FBalanceID').value;
           FindParam('FBalanceListNum').value:=i;
           FindParam('FBalancePriceID').value:=mdata['FBalancePriceID'];
           FindParam('FQry').value:=mdata['FQry'];
           FindParam('FBalanceQry').value:=mdata['FBalanceQry'];
           FindParam('FOutPrice').value:=mdata['FOutPrice'];
           FindParam('FAdvanceAmount').value:=mdata['FAdvanceAmount'];
           FindParam('FQualityAmount').value:=mdata['FQualityAmount'];
           FindParam('FBalanceRemark').value:=mdata['FBalanceRemark'];
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

function TFrm_LKDDBalanceItem.EditList: bool;
var
  qry,qry1: TADOQuery;

begin
  qry:=TADOQuery.Create(Self);
  qry.Connection:=mdlData.conn;
  qry1:=TADOQuery.Create(Self);
  qry1.Connection:=mdlData.conn;
  //result:=False;

  try
    qry1.SQL.Text:='select * from T_LKDDBalanceList where FBalanceListID=:FBalanceListID';
    qry1.Parameters.FindParam('FBalanceListID').value:=mdata['FBalanceListID'];
    qry1.Open;
  finally
    ;
  end;
  If qry1.RecordCount=1 then
  begin
    try
      qry.SQL.Text:='Update T_LKDDBalanceList set FBalanceID=:FBalanceID, FBalanceListNum=:FBalanceListNum,FBalancePriceID=:FBalancePriceID,'
                   +'FQry=:FQry,FBalanceQry=:FBalanceQry,FOutPrice=:FOutPrice,FAdvanceAmount=:FAdvanceAmount,FQualityAmount=:FQualityAmount,'
                   +'FBalanceRemark=:FBalanceRemark where FBalanceListID=:FBalanceListID';
      with qry.Parameters do
      begin
        FindParam('FBalanceID').value:= StrToInt(Trim(E_FBalanceID.Text));
        FindParam('FBalanceListNum').value:= mdata['FBalanceListNum'];
        FindParam('FBalancePriceID').value:=mdata['FBalancePriceID'];
        FindParam('FQry').value:=mdata['FQry'];
        FindParam('FBalanceQry').value:=mdata['FBalanceQry'];
        FindParam('FOutPrice').value:=mdata['FOutPrice'];
        FindParam('FAdvanceAmount').value:=mdata['FAdvanceAmount'];
        FindParam('FQualityAmount').value:=mdata['FQualityAmount'];
        FindParam('FBalanceRemark').value:=mdata['FBalanceRemark'];
        FindParam('FBalanceListID').value:=mdata['FBalanceListID'];
      end;
      result:=qry.ExecSQL>=1;
    finally
      ;
    end;
  end
  else
  begin
    try
      qry.SQL.Text:='Insert into T_LKDDBalanceList(FBalanceID, FBalanceListNum,FBalancePriceID,FQry,FBalanceQry,FOutPrice,FAdvanceAmount,FQualityAmount,FBalanceRemark) '
                   +'values(:FBalanceID, :FWorkListNum,:FBalancePriceID, :FQry,:FBalanceQry,:FOutPrice,:FAdvanceAmount,:FQualityAmount,:FBalanceRemark)';
       with qry.Parameters do
       begin
         FindParam('FBalanceID').value:= StrToInt(Trim(E_FBalanceID.Text));
         FindParam('FBalanceListNum').value:= mdata['FBalanceListNum'];
         FindParam('FBalancePriceID').value:=mdata['FBalancePriceID'];
         FindParam('FQry').value:=mdata['FQry'];
         FindParam('FBalanceQry').value:=mdata['FBalanceQry'];
         FindParam('FOutPrice').value:=mdata['FOutPrice'];
         FindParam('FAdvanceAmount').value:=mdata['FAdvanceAmount'];
         FindParam('FQualityAmount').value:=mdata['FQualityAmount'];
         FindParam('FBalanceRemark').value:=mdata['FBalanceRemark'];
       end;
       result:=qry.ExecSQL>=1;
     finally
       ;
     end;
   end;

  qry.Free;  

end;

function TFrm_LKDDBalanceItem.AddRd: bool;
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

  mdlData.conn.BeginTrans;
  try
    if AddMain then  //1   主表新增
    begin
      result:=True;
      if AddList then //2    明细表新增
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


function TFrm_LKDDBalanceItem.EditRd:bool;
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
    if DelRd then  //1  主表删除
    begin
      result:=True;
      if AddMain then //2   主表新增
      begin
        result:=True;
        if AddList then //3   附新增
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

function TFrm_LKDDBalanceItem.EditAddRd:bool;
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
    if DelRd then  //1  主表删除
    begin
      result:=True;
      if AddMain then //2   主表新增
      begin
        result:=True;
        if AddList then //3   附新增
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

procedure TFrm_LKDDBalanceItem.FormResize(Sender: TObject);
begin
  inherited;
  L_title.Caption:='电袋生产结算单';
  Self.Caption:='电袋生产结算单';
end;

procedure TFrm_LKDDBalanceItem.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=cafree;
  Frm_LKDDBalanceItem:=nil;
end;

procedure TFrm_LKDDBalanceItem.TB_EXITClick(Sender: TObject);
begin
  inherited;
  self.Close;
end;

procedure TFrm_LKDDBalanceItem.TB_DownClick(Sender: TObject);
Var i:Integer;
begin
  If P_i then
  begin
    TB_Down.Caption:='取消设置';
    cxGV.OptionsData.Editing:=False;
    cxGv.OptionsView.GroupByBox:=False;
    cxGVBrow.OptionsData.Editing:=False;
    cxGvBrow.OptionsView.GroupByBox:=False;

    for i:=0 to cxGv.ColumnCount-1 do
    begin
      cxGv.Columns[i].Options.Filtering:=False;
      cxGv.Columns[i].Options.Editing:=False;
      cxGv.Columns[i].Options.Sorting:=False;
    end;
    for i:=0 to cxGvBrow.ColumnCount-1 do
    begin
      cxGvBrow.Columns[i].Options.Filtering:=False;
      cxGvBrow.Columns[i].Options.Editing:=False;
      cxGvBrow.Columns[i].Options.Sorting:=False;
    end;

    P_i:=False;
  end
  else
  begin
    TB_Down.Caption:='设置';
    cxGV.OptionsData.Editing:=True;
    cxGv.OptionsView.GroupByBox:=True;
    cxGVBrow.OptionsData.Editing:=True;
    cxGvBrow.OptionsView.GroupByBox:=True;

    for i:=0 to cxGv.ColumnCount-1 do
    begin
      cxGv.Columns[i].Options.Filtering:=True;
      cxGv.Columns[i].Options.Editing:=True;
      cxGv.Columns[i].Options.Sorting:=True;
    end;
    for i:=0 to cxGvBrow.ColumnCount-1 do
    begin
      cxGvBrow.Columns[i].Options.Filtering:=True;
      cxGvBrow.Columns[i].Options.Editing:=True;
      cxGvBrow.Columns[i].Options.Sorting:=True;
    end;
    P_i:=True;
  end;
end;

procedure TFrm_LKDDBalanceItem.MyTreeViewChange(Sender: TObject; Node: TTreeNode);
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
    If PTree(Node.Data).Isleaf<>0 then
      Panel2.Visible:=True
    else
      Panel2.Visible:=False;

    If not MyItemList(qry,Mdata,'V_LKDDBalanceList','FFullNumber',ListItemFNumber,'FFullNumber') then
    begin
      mdata.Open;
      cxGvColumn(cxGv,Mdata);
    end;
    If mdata.RecordCount>0 then
    begin
      E_FWorkItemNum.Text:= mdata['FWorkItemNum'];
     // P_FWorkItemID:= mdata['FWorkItemID'];
      E_FBalanceDate.Date:= mdata['FBalanceDate'];
      E_FDepartmentNum.Text:= mdata['FDepartmentNum'];
      E_FBalanceNum.Text:= mdata['FBalanceNum'];
      E_FBalanceID.Text:= mdata['FBalanceID'];
      E_FClientFullName.Text:= mdata['FClientFullName'];
      E_FItemId.Text:= mdata['FItemId'];
      E_FAgentName.Text:= mdata['FAgentName'];
      E_FAgentID.Text:= mdata['FAgentID'];
      E_FMaterialDate.Text:= mdata['FMaterialDate'];
      E_FItemModel.Text:= mdata['FItemModel'];
      E_FItemNumber.Text:= mdata['FItemNumber'];
      E_FFileNo.Text:= mdata['FFileNo'];
   //   E_FTransportPrice.Value:=mdata['FTransportPrice'];

    end;  
  end;

end;

procedure TFrm_LKDDBalanceItem.MyTreeViewExpanding(Sender: TObject;
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

  qry.SQL.Text:='Select FNumber, FParentNumber,FName,'
               +'Isleaf from VT_LKDDBalanceList where FParentNumber= '''
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

procedure TFrm_LKDDBalanceItem.TB_RefClick(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If not TreeVeiwListNumber(qry,MyTreeView,'VT_LKDDBalanceList',UserFDepartmentNumber) then
  begin
    Application.MessageBox(PChar('物料树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;

  If UserFDepartmentID=0 then
  begin
    If not TreeVeiwListID(qry,MyTreeView,'VT_LKDDBalanceList','>',UserFDepartmentID) then
    begin
      Application.MessageBox(PChar('物料树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
    end;
  end
  else
  begin
    If not TreeVeiwListID(qry,MyTreeView,'VT_LKDDBalanceList','=',UserFDepartmentID) then
    begin
      Application.MessageBox(PChar('物料树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
    end;
  end;

end;

procedure TFrm_LKDDBalanceItem.OKBtnClick(Sender: TObject);
var qry: TADOQuery;


begin
  cxGV.OptionsData.Editing:=True;
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;

  mData.Edit;
  mData.Post;

  If (StrToInt(Trim(E_FAgentID.Text))=0) then
  begin
    application.MessageBox('关键字不能为空！请重新输入','系统提示',MB_ICONERROR);
    Exit;
  end;
{

  If P_state =0 then
  begin

    try
      qry.SQL.Text:='select max(FWorkItemNum) as FMaxWorkItemNum,cast(FWorkYear as varchar(4))+cast(FWorkMonth as varchar(2)) as yymm  from V_WorkList '
                   +'where FDepartmentID=:FDepartmentID and cast(FWorkYear as varchar(4))+cast(FWorkMonth as varchar(2))=:yymm '
                   +'group by cast(FWorkYear as varchar(4))+cast(FWorkMonth as varchar(2))';
      qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
      qry.Parameters.FindParam('yymm').value:=Copy(ForMatDateTime('yyyymmdd',(E_FWorkItemDate.Date)),1,6);
      qry.Open;
    finally
       ;
    end;
    E_FDepartmentNum.Text:=UserFDepartmentNum;
    If qry.RecordCount=1 then
       P_FWorkItemNum:=Format('%.3d',[(StrToInt(qry.FieldByName('FMaxWorkItemNum').Value)+1)])
    else
       P_FWorkItemNum:=ForMatDateTime('yyyymm',(E_FWorkItemDate.Date))+'001';

    If ShowMsg('是否取系统自动生成的任务单号:【'+P_FWorkItemNum+'】?','提示') then
       E_FWorkItemNum.Text:=P_FWorkItemNum;


    try
      qry.SQL.Text:='Select * from V_WorkList where FWorkItemNum=:FWorkItemNum and FDepartmentID=:FDepartmentID';
      qry.Parameters.FindParam('FWorkItemNum').Value:=Trim(E_FWorkItemNum.Text);
      qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
      qry.Open;
      If qry.RecordCount>0 then
      begin
         application.MessageBox('此任务单已存在！不允许重复','系统提示',MB_ICONERROR);
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
        mdata.Close;
        TB_App.Click ;
      end
      else
      begin
        inherited;
        E_FBalanceDate.Enabled:=False;
        E_FClientFullName.Enabled:=False;
        E_FAgentName.Enabled:=False;
        E_FMaterialDate.Enabled:=False;
        E_FMaterialDate.Enabled:=False;
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
   // SB_Sel.Enabled:=False;
    CancelBtn.Click;
  end;


{
  If P_state=1 then //修改数据
  begin
    If application.MessageBox('是否要保存所作修改？','提示',MB_ICONINFORMATION+MB_YESNO)<>6 then
       Exit;

    try
      qry.SQL.Text:='Select * from T_LKDDBalanceList where FBalanceListID=:FBalanceListID';
      qry.Parameters.FindParam('FBalanceListID').Value:=StrToInt(Trim(E_FBalanceListID.Text));
      qry.Open;
      If (qry.RecordCount>0) and (mdata.RecordCount=1) then
      begin
        application.MessageBox('此部件已结算！只允许单个记录修改。','系统提示',MB_ICONERROR);
        If EditRd then   //修改数据
        begin
          application.MessageBox('修改记录已保存','系统提示',MB_ICONINFORMATION);
          inherited;
        end
        else
          application.MessageBox('修改记录保存失败！','系统提示',MB_ICONWARNING);
      end
      else
      begin
        If EditAddRd then   //新增修改数据
        begin
          application.MessageBox('修改记录已保存','系统提示',MB_ICONINFORMATION);
          inherited;
        end
        else
          application.MessageBox('修改记录保存失败！','系统提示',MB_ICONWARNING);
      end;
    finally
       ;
    end;

  CancelBtn.Click;
  end;
 }
  qry.Free;


end;



procedure TFrm_LKDDBalanceItem.TB_AppClick(Sender: TObject);
var

 i:Integer;

begin
  P_state :=0;
  L_Caption.Caption:='电袋生产结算单';
  Self.Set_Open;

  If P_state =0 then
     E_FBalanceDate.Date:=date();

  If mData.Active then mData.Close;
  mData.Open;
  mdata.Edit;
  for i:=1 to 10 do
  begin
    mdata.Append;
    mdata['FBalanceListNum']:=i;
    mdata['FWeight']:=0;
    mdata['FQry']:=0;
    mdata['FBalanceQry']:=0;
    mdata['FBalancePrice']:=0;
    mdata['FOutPrice']:=0;
    mdata['FTransportPrice']:=0;
    mdata['FPrice']:=0;
    mdata['FBalanceAmount']:=0.00;
    mdata['FAdvanceAmount']:=0.00;
    mdata['FQualityAmount']:=0.00;
    mdata['FBalanceRemark']:='';
    mdata.Post;
  end;


end;

procedure TFrm_LKDDBalanceItem.TB_EditClick(Sender: TObject);
var
 qry:TADOquery;

begin
  P_state :=1;

  qry:=TAdoQuery.Create(self);
  qry.Connection:=mdlData.conn;
  //只允许修改单张任务单
  try
    qry.SQL.Text:='Select distinct FBalanceID from V_LKDDBalanceList where FFullNumber like :FFullNumber';
    qry.Parameters.FindParam('FFullNumber').Value:=ListItemFNumber+'%';
    qry.Open;
  finally
     ;
  end;
  If qry.RecordCount>1 then
  begin
    application.MessageBox(Pchar('只允许选择单张结算单，请重新选择！'),'系统提示',MB_ICONINFORMATION);
    Exit;
  end;

  L_Caption.Caption:='龙净电袋生产结算单修改';
  Self.Set_Open;


end;

procedure TFrm_LKDDBalanceItem.TB_DelClick(Sender: TObject);
var
  qry:TADOQuery;

begin
  qry:=TAdoQuery.Create(self);
  qry.Connection:=mdlData.conn;
{  If (mdata.RecordCount>1) then
  begin
    application.MessageBox('只允许删除单个任务！请重新选择!','系统提示',MB_ICONINFORMATION);
    Exit;
  end;
 }
  If application.MessageBox(Pchar('警告：是否删除结算单号为：【'+Trim(E_FBalanceNum.Text)+'】的信息？'+chr(13)+chr(13)
                           +'删除数据操作将不可恢复，确定要删除本单据吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
  If application.MessageBox(Pchar('再次警告：是否删除结算单号为：【'+Trim(E_FBalanceNum.Text)+'】的信息？'+chr(13)+chr(13)
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

procedure TFrm_LKDDBalanceItem.CancelBtnClick(Sender: TObject);
begin
  inherited;
  Self.Set_Close;
end;

procedure TFrm_LKDDBalanceItem.TB_OutClick(Sender: TObject);
begin
  inherited;
  ExportToExcel(cxGrid,True,TRue);
end;

procedure TFrm_LKDDBalanceItem.FormCreate(Sender: TObject);
begin
  inherited;
  TB_App.Enabled:= mdlData.CheckFrmRights(TFrm_LKDDBalanceItem.ClassName,'新增');
  TB_Edit.Enabled:= mdlData.CheckFrmRights(TFrm_LKDDBalanceItem.ClassName,'修改');
  TB_Del.Enabled:= mdlData.CheckFrmRights(TFrm_LKDDBalanceItem.ClassName,'删除');
  TB_Prin.Enabled:= mdlData.CheckFrmRights(TFrm_LKDDBalanceItem.ClassName,'打印');
  TB_Out.Enabled:= mdlData.CheckFrmRights(TFrm_LKDDBalanceItem.ClassName,'打印');

end;

procedure TFrm_LKDDBalanceItem.FormShow(Sender: TObject);
begin
  TB_Ref.Click;
end;

procedure TFrm_LKDDBalanceItem.E_FWorkMaxNumIDPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  try
    qry.SQL.Text:='Select * from VT_AgentItem where FDepartmentNumber like :FDepartmentNumber and FAgentName like :FAgentName';
    qry.Parameters.FindParam('FDepartmentNumber').value:=UserFDepartmentNumber+'%';
    qry.Parameters.FindParam('FAgentName').value:='%'+Trim(E_FAgentName.Text)+'%';
    qry.Open;
  finally
     ;
  end;
  If qry.RecordCount=1 then
  begin
    E_FAgentName.EditValue:=qry.FieldByName('FAgentName').AsString;
    E_FAgentID.EditValue:=qry.FieldByName('FAgentID').AsString;
  end
  else
  begin
    selValue:=select('选择生产单位','FNumber','FParentNumber','FNumber','FName',qry);
    If (Length(selValue)>0) and (qry.FieldByName('FDetail').Value<>0) then
    begin
      E_FAgentName.EditValue:=qry.FieldByName('FAgentName').AsString;
      E_FAgentID.EditValue:=qry.FieldByName('FAgentID').AsString;
    end
    else
      application.MessageBox('请选择明细！','系统提示',MB_ICONINFORMATION);

  end;
  qry.Free;

end;

procedure TFrm_LKDDBalanceItem.Sel_ItemPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
    qry:=TADOQuery.Create(self);
    qry.Connection:=mdlData.conn;
    try
      qry.SQL.Text:='select * from VT_Item where FProductID=1';
      qry.Open;
    finally
       ;
    end;

    selValue:=select('选择项目明细','FNumber','FParentNumber','FNumber','Fname',qry);
    If (Length(selValue)>0) and (qry.FieldByName('FDetail').Value<>0) then
    begin
      mdata.Edit;
      mdata['FItemID']:=qry.FieldByName('FItemID').Value;
      mdata['FPactNo']:=qry.FieldByName('FPactNo').AsString;
      mdata['FClientshortName']:=qry.FieldByName('FClientshortName').AsString;
      mdata.Post;
    end
    else
      application.MessageBox('请选择明细！','系统提示',MB_ICONINFORMATION);

    qry.Free;

end;

procedure TFrm_LKDDBalanceItem.Sel_PricePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
    qry:=TADOQuery.Create(self);
    qry.Connection:=mdlData.conn;
    try
      qry.SQL.Text:='select * from VT_BalancePrice where FDepartmentNumber like :FDepartmentNumber and (FMaterialDate=:FMaterialDate) ';
      qry.Parameters.FindParam('FDepartmentNumber').value:=UserFDepartmentNumber+'%';
      qry.Parameters.FindParam('FMaterialDate').value:=Trim(E_FMaterialDate.Text);
      qry.Open;
    finally
       ;
    end;

    selValue:=select('选择执行单价','FNumber','FParentNumber','FNumber','Fname',qry);
    If (Length(selValue)>0) and (qry.FieldByName('FDetail').Value<>0) then
    begin
      mdata.Edit;
      mdata['FBalanceName']:=qry.FieldByName('FBalanceName').AsString;
      mdata['FBalanceModel']:=qry.FieldByName('FBalanceModel').AsString;
      mdata['FUnitName']:=qry.FieldByName('FUnitName').AsString;
      mdata['FWeight']:=qry.FieldByName('FWeight').Value;
      mdata['FBalancePriceID']:=qry.FieldByName('FBalancePriceID').Value;
      mdata['FMaterialDate']:=qry.FieldByName('FMaterialDate').Value;
      mdata['FBalancePrice']:=qry.FieldByName('FBalancePrice').Value;
      mdata.Post;
    end
    else
      application.MessageBox('请选择明细！','系统提示',MB_ICONINFORMATION);

    qry.Free;

end;

procedure TFrm_LKDDBalanceItem.E_FAgentBalancePactNumPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry,qry1: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  qry1:=TADOQuery.Create(self);
  qry1.Connection:=mdlData.conn;
  try
    qry.SQL.Text:='Select * from V_Item where FItemNumber like :FItemNumber ';
    qry.Parameters.FindParam('FItemNumber').value:=Trim(E_FClientFullName.Text);
    qry.Open;
  finally
     ;
  end;
  If qry.RecordCount=1 then
  begin
    E_FItemID.Text:=qry.FieldByName('FItemID').Value;
    E_FFileNo.Text:=qry.FieldByName('FFileNo').Value;
    E_FClientFullName.Text:=qry.FieldByName('FClientFullName').AsString;
    E_FItemModel.Text:=qry.FieldByName('FItemModel').AsString;
    E_FItemNumber.Text:=qry.FieldByName('FItemNumber').AsString;
    Exit;
  end;


    try
      qry.SQL.Text:='select * from VT_Item ';
      qry.Open;
    finally
       ;
    end;

    selValue:=select('选择项目明细','FNumber','FParentNumber','FNumber','Fname',qry);
    If (Length(selValue)>0) and (qry.FieldByName('FDetail').Value<>0) then
    begin
      E_FItemID.Text:=qry.FieldByName('FItemID').Value;
      try
        qry1.SQL.Text:='select * from V_Item where FItemID=:FItemID';
        qry1.Parameters.FindParam('FItemID').value:=qry.FieldByName('FItemID').Value;
        qry1.Open;
      finally
         ;
      end;
      If qry1.RecordCount>0 then
      begin
        E_FFileNo.Text:=qry1.FieldByName('FFileNo').Value;
        E_FClientFullName.Text:=qry1.FieldByName('FClientFullName').AsString;
        E_FItemModel.Text:=qry1.FieldByName('FItemModel').AsString;
        E_FItemNumber.Text:=qry1.FieldByName('FItemNumber').AsString;
      end;
    end
    else
      application.MessageBox('请选择明细！','系统提示',MB_ICONINFORMATION);



    qry.Free;


end;

procedure TFrm_LKDDBalanceItem.VT_BalancePrice(Sender: TObject;
  AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  try
    qry.SQL.Text:='select * from VT_PriceDate where  FDepartmentID=:FDepartmentID and (FTableName=''T_BalancePrice'' or FTableName='''') ';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Open;
  finally
     ;
  end;

  selValue:=select('选择执行单价','FNumber','FParentNumber','FNumber','FName',qry);
  If (Length(selValue)>0) and (qry.FieldByName('Isleaf').Value=1) then
  begin
    E_FMaterialDate.Text:=qry.FieldByName('FNumber').Value;
  end
  else
  begin
    messagedlg('请选择明细！',mtInformation,[mbok],0);
    Exit;
  end;
  qry.Free;
end;

procedure TFrm_LKDDBalanceItem.TB_PrinClick(Sender: TObject);
begin
  inherited;
//  mdata.SortedField:=FWorkListNum;
{  FWorkListNum.Options.Sorting:=True;
  FWorkListNum.SortOrder:=soAscending;
 }
  FrReport.LoadFromFile(ExtractFileDir(Application.ExeName)+'\Report_DesignBOM_LKDDBalanceItemA4.frf');
  FrReport.ShowReport;

end;

procedure TFrm_LKDDBalanceItem.E_FTransportPriceDblClick(Sender: TObject);
begin
  inherited;
  mdata.Open;
  mdata.Edit;
  mData.First;
  while not mData.eof do
  begin
    mdata.Edit;
    mData['FTransportPrice']:=E_FTransportPrice.Value;
    mdata.Post;
    mData.Next;
  end;
end;

procedure TFrm_LKDDBalanceItem.CountPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  Mdata.Edit;
  mdata.Post;

  Mdata.Edit;
  If mdata['FQry']<>0 then
  begin
    mdata['FBalanceQry']:=round(mdata['FWeight']*mdata['FQry']*10000)/10000;
    mdata['FBalanceAmount']:=round(mdata['FBalanceQry']*(mdata['FBalancePrice']+mdata['FOutPrice']+mdata['FTransportPrice'])*1000)/10000;
  end
  else
  begin
    mdata['FBalanceAmount']:=round(mdata['FBalanceQry']*(mdata['FBalancePrice']+mdata['FOutPrice']+mdata['FTransportPrice'])*10000)/10000;
  end;
  mdata.Post;

end;

procedure TFrm_LKDDBalanceItem.E_FBalanceNumDblClick(Sender: TObject);
var qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  try
    qry.SQL.Text:='select max(FBalanceNum) as FMaxBalanceNum,cast(FBalanceYear as varchar(4))+cast(FBalanceMonth as varchar(2)) as yymm  from V_LKDDBalanceList '
                 +'where FDepartmentID=:FDepartmentID and cast(FBalanceYear as varchar(4))+cast(FBalanceMonth as varchar(2))=:yymm '
                 +'group by cast(FBalanceYear as varchar(4))+cast(FBalanceMonth as varchar(2))';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Parameters.FindParam('yymm').value:=Copy(ForMatDateTime('yyyymmdd',(E_FBalanceDate.Date)),1,6);
    qry.Open;
  finally
     ;
  end;
  E_FDepartmentNum.Text:=UserFDepartmentNum;
  If qry.RecordCount=1 then
     E_FBalanceNum.Text:=Format('%.3d',[(StrToInt(qry.FieldByName('FMaxBalanceNum').Value)+1)])
  else
     E_FBalanceNum.Text:=ForMatDateTime('yyyymm',(E_FBalanceDate.Date))+'001';
end;

procedure TFrm_LKDDBalanceItem.TB_SelClick(Sender: TObject);
begin
  inherited;
{  If mdata.RecordCount>0 then
  begin
    P_FWorkItemNum:=mdata['FWorkItemNum'];
    P_FWorkItemID:=mdata['FWorkItemID'];
    Self.Close;
  end;  }
end;

procedure TFrm_LKDDBalanceItem.E_FDeliveryDateExit(Sender: TObject);
begin
  inherited;
{  mdata.Edit;
  mData.First;
  while not mData.eof do
  begin
    mdata.Edit;
    mData['FDeliveryDate']:=E_FDeliveryDate.date;
    mdata.Post;
    mData.Next;
  end;
 }
end;

procedure TFrm_LKDDBalanceItem.frReportBeginBand(Band: TfrBand);
begin
  inherited;
   if Band.Name='dtFooter' then
  begin
    If (mdata.RecordCount mod 10)>0 then
      frReport.Dictionary.Variables['n']:=10-(mdata.RecordCount mod 10)
    else
      frReport.Dictionary.Variables['n']:=0;
  end;

end;

procedure TFrm_LKDDBalanceItem.frReportGetValue(const ParName: String;
  var ParValue: Variant);
begin
  inherited;
  If ParName='UserName' then
    ParValue:=UserName;

end;

procedure TFrm_LKDDBalanceItem.MDataBeforePost(DataSet: TDataSet);
begin
  inherited;
  If DataSet['FQry']<>0 then
  begin
    DataSet['FBalanceQry']:=round(DataSet['FWeight']*DataSet['FQry']*10000)/10000;
    DataSet['FBalanceAmount']:=round(DataSet['FBalanceQry']*(DataSet['FBalancePrice']+DataSet['FOutPrice']+DataSet['FTransportPrice'])*1000)/10000;
  end
  else
  begin
    DataSet['FBalanceAmount']:=round(DataSet['FBalanceQry']*(DataSet['FBalancePrice']+DataSet['FOutPrice']+DataSet['FTransportPrice'])*10000)/10000;
  end;

end;

procedure TFrm_LKDDBalanceItem.cxButtonEdit1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry,qry1: TADOQuery;
begin
   qry:=TADOQuery.Create(self);
   qry.Connection:=mdlData.conn;
   qry1:=TADOQuery.Create(self);
   qry1.Connection:=mdlData.conn;
   try
     qry.SQL.Text:='select * from V_FileItem where FDepartmentID=:FDepartmentID and FItemNumber=:FItemNumber order by FItemNumber ';
     qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
     qry.Parameters.FindParam('FItemNumber').value:=Trim(E_FItemNumber.Text);
     qry.Open;
   finally
      ;
   end;
   If qry.RecordCount=0 then
   begin
     try
       qry.SQL.Text:='select * from VT_FileItem ';
       qry.Open;
     finally
       ;
     end;

     selValue:=select('选择档案号','FNumber','FParentNumber','FNumber','FName',qry);
     If (Length(selValue)>0) and (qry.FieldByName('FDetail').Value<>0) then
     begin
       E_FItemID.Text:=qry.FieldByName('FItemID').Value;
       try
         qry1.SQL.Text:='select * from V_FileItem where FItemID=:FItemID';
         qry1.Parameters.FindParam('FItemID').value:=qry.FieldByName('FItemID').Value;
         qry1.Open;
       finally
          ;
       end;
       If qry1.RecordCount>0 then
       begin
         E_FFileNo.Text:=qry1.FieldByName('FBranchFileNo').Value;
         E_FClientFullName.Text:=qry1.FieldByName('FClientFullName').AsString;
         E_FItemModel.Text:=qry1.FieldByName('FItemModel').AsString;
         E_FItemNumber.Text:=qry1.FieldByName('FItemNumber').AsString;

       end;
     end
     else
       application.MessageBox('请选择明细！','系统提示',MB_ICONINFORMATION);
     Exit;
   end;

   If qry.RecordCount=1 then
   begin
     E_FItemID.Text:=qry.FieldByName('FItemID').Value;
     E_FFileNo.Text:=qry.FieldByName('FBranchFileNo').Value;
     E_FClientFullName.Text:=qry.FieldByName('FClientFullName').AsString;
     E_FItemModel.Text:=qry.FieldByName('FItemModel').AsString;
     E_FItemNumber.Text:=qry.FieldByName('FItemNumber').AsString;
     Exit;
   end
   else
   begin
    selValue:=select('选择档案信息','FBranchItemNumber','FItemNumber','FBranchItemNumber','FBranchItemNumber;FClientShortName',qry);
    If (Length(selValue)>0) then
    begin
      E_FItemID.Text:=qry.FieldByName('FItemID').Value;
      E_FFileNo.Text:=qry.FieldByName('FBranchFileNo').Value;
      E_FClientFullName.Text:=qry.FieldByName('FClientFullName').AsString;
      E_FItemModel.Text:=qry.FieldByName('FItemModel').AsString;
      E_FItemNumber.Text:=qry.FieldByName('FItemNumber').AsString;
    end;
    Exit;
  end;

end;

end.
