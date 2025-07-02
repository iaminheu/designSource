unit Main_BalancePrice;

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
  cxSpinEdit, cxDBEdit;

type
  TFrm_BalancePrice = class(TFrm_GridBass)
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
    TB_Ref: TToolButton;
    ADOStoredProc1: TADOStoredProc;
    TB_App: TToolButton;
    TB_Edit: TToolButton;
    TB_Del: TToolButton;
    PanelBkGnd: TPanel;
    cxGrid: TcxGrid;
    cxGV: TcxGridDBTableView;
    FBalanceName: TcxGridDBColumn;
    cxGL: TcxGridLevel;
    MyTreeView: TTreeView;
    TB_Out: TToolButton;
    FParentNumber: TcxGridDBColumn;
    FNumber: TcxGridDBColumn;
    Image2: TImage;
    Image3: TImage;
    L_Caption: TLabel;
    FBalanceModel: TcxGridDBColumn;
    FUnitName: TcxGridDBColumn;
    FRemark: TcxGridDBColumn;
    Image1: TImage;
    Label2: TLabel;
    Sel: TcxGridDBColumn;
    FMaterialBasePrice: TcxGridDBColumn;
    FMaterialResizePrice: TcxGridDBColumn;
    FMaterialPrice: TcxGridDBColumn;
    E_FPriceDateID: TcxButtonEdit;
    E_FAgentDate: TcxButtonEdit;
    FBalanceID: TcxGridDBColumn;
    MDataFParentNumber: TStringField;
    MDataFNumber: TStringField;
    MDataFBalanceName: TStringField;
    MDataFBalanceModel: TStringField;
    MDataFUnitName: TStringField;
    MDataFWorkBasePrice: TCurrencyField;
    MDataFWorkResiaePrice: TCurrencyField;
    MDataFWorkPrice: TCurrencyField;
    MDataFRemark: TStringField;
    MDataFWorkID: TIntegerField;
    MDataFBalanceID: TIntegerField;
    FMaterialDate: TcxGridDBColumn;
    FBalancePriceID: TcxGridDBColumn;
    E_FWorkPriceDateID: TcxButtonEdit;
    FWorkResizePrice: TcxGridDBColumn;
    FWorkPrice: TcxGridDBColumn;
    FWorkBasePrice: TcxGridDBColumn;
    FBalanceBasePrice: TcxGridDBColumn;
    E_FWorkDate: TcxButtonEdit;
    MDataFMaterialBasePrice: TFloatField;
    E_FAgentYear: TcxSpinEdit;
    E_FAgentMonth: TcxSpinEdit;
    E_FAgentDay: TcxComboBox;
    MDataFMaterialPrice: TFloatField;
    MDataFMaterialResizePrice: TFloatField;
    FSollWeight: TcxGridDBColumn;
    Label3: TLabel;
    TB_Price: TToolButton;
    MDataFBalanceBasePrice: TFloatField;
    FProductName: TcxGridDBColumn;
    Label4: TLabel;
    E_FProductName: TcxButtonEdit;
    E_FProductID: TcxButtonEdit;
    TabSheet1: TRzTabSheet;
    cxGridBrow: TcxGrid;
    cxGVBrow: TcxGridDBTableView;
    FWorkItemNum_Brow: TcxGridDBColumn;
    FClientShortName: TcxGridDBColumn;
    FBranchFileNo: TcxGridDBColumn;
    FBranchItemNumber: TcxGridDBColumn;
    FBalanceProductName_1: TcxGridDBColumn;
    cxGridDBColumn1: TcxGridDBColumn;
    FBalanceName1: TcxGridDBColumn;
    FBalanceModel1: TcxGridDBColumn;
    FUnitName1: TcxGridDBColumn;
    FMaterialDate1: TcxGridDBColumn;
    FQry_1: TcxGridDBColumn;
    FBalanceBasePrice1: TcxGridDBColumn;
    FOutPrice1: TcxGridDBColumn;
    FBalancePrice1: TcxGridDBColumn;
    FEstimateQry1: TcxGridDBColumn;
    FEstimateAmount1: TcxGridDBColumn;
    SumFBalanceQry_1: TcxGridDBColumn;
    SumFBalanceAmount_1: TcxGridDBColumn;
    FWorkListRemark1: TcxGridDBColumn;
    FDeliveryPlace: TcxGridDBColumn;
    FJobPlace: TcxGridDBColumn;
    FAgentName: TcxGridDBColumn;
    FAdvanceQry1: TcxGridDBColumn;
    FQualityQry1: TcxGridDBColumn;
    FRemark1: TcxGridDBColumn;
    FWorkItemRemark: TcxGridDBColumn;
    FWorkData: TcxGridDBColumn;
    FIsSysTem: TcxGridDBColumn;
    FJobSort: TcxGridDBColumn;
    FBalancePriceID1: TcxGridDBColumn;
    FWorkListID_1: TcxGridDBColumn;
    cxGLBrow: TcxGridLevel;
    ToolBar2: TToolBar;
    TB_Ref2: TToolButton;
    TB_Down2: TToolButton;
    DS_Mdata1: TDataSource;
    MData1: TdxMemData;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    CurrencyField1: TCurrencyField;
    CurrencyField2: TCurrencyField;
    CurrencyField3: TCurrencyField;
    StringField6: TStringField;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    Panel_button: TPanel;
    Bevel_button: TBevel;
    OKBtn: TcxButton;
    CancelBtn: TcxButton;
    Panel3: TPanel;
    Bevel2: TBevel;
    cxButton3: TcxButton;
    E_FBalancePriceID1: TcxTextEdit;
    E_FBalanceName: TcxButtonEdit;
    E_FBalanceModel: TcxButtonEdit;
    Label12: TLabel;
    Label5: TLabel;
    E_FBalancePriceID: TcxDBTextEdit;
    E_FMaterialDate: TcxButtonEdit;
    E_FUnitName: TcxButtonEdit;
    SpeedButton1: TSpeedButton;
    E_FWorkListID: TcxDBTextEdit;
    E_FMaterialDate_1: TcxButtonEdit;
    FWorkPriceDateID_1: TcxGridDBColumn;
    Image4: TImage;
    Label6: TLabel;
    Label1: TLabel;
    SB_App: TSpeedButton;
    Label7: TLabel;
    FWorkDate: TcxGridDBColumn;
    FPriceDateID: TcxGridDBColumn;
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
    procedure cxGVDBColumn1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormShow(Sender: TObject);
    procedure Set_Open;
    procedure Set_Close;
    procedure P_Select;
    procedure E_FWorkDatePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure E_FAgentDatePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure SB_AppClick(Sender: TObject);
    procedure E_FAgentDateDblClick(Sender: TObject);
    procedure MDataBeforePost(DataSet: TDataSet);
    procedure TB_PrinClick(Sender: TObject);
    procedure TB_PriceClick(Sender: TObject);
    procedure E_FProductNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure TB_Ref2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure TB_Down2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure E_FMaterialDate_1PropertiesButtonClick(Sender: TObject;
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
  Frm_BalancePrice: TFrm_BalancePrice;


implementation

uses FRMDATA, COMMON, FrmSelect, ProgBar, PROGRASS;

{$R *.dfm}

procedure TFrm_BalancePrice.P_Select;
var qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Select *,0.00000 as FMaterialBasePrice,0.00000 as FMaterialResizePrice,0.00000 as FMaterialPrice,0.00000 as FBalancebasePrice '
                 +'from V_WorkPrice where FDepartmentID=:FDepartmentID and FProductID=:FProductID ';
    qry.Parameters.FindParam('FDepartmentID').Value:=UserFDepartmentID;
    qry.Parameters.FindParam('FProductID').Value:=StrToInt(Trim(E_FProductID.Text));
    qry.Open;
  finally
     ;
  end;
  Mdata.CopyFromDataSet(qry);
  Mdata.Active:=True;
  Mdata.First;
  cxGvColumn(cxGv,Mdata);

  cxGV.OptionsData.Editing:=True;
  FMaterialBasePrice.Options.Editing:=True;
  FMaterialResizePrice.Options.Editing:=True;
  qry.Free;

end;

procedure TFrm_BalancePrice.Set_Open;
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
  E_FMaterialDate_1.Enabled:=True;
  FMaterialBasePrice.Options.Editing:=True;
  FMaterialResizePrice.Options.Editing:=True;
end;

procedure TFrm_BalancePrice.Set_Close;
begin
  TB_Ref.Visible:=True;
  TB_App.Visible:=True;
  TB_Edit.Visible:=True;
  TB_Del.Visible:=True;
  MyTreeView.Enabled:=True;

  E_FWorkDate.Enabled:=False;
  E_FAgentDate.Enabled:=False;
  E_FProductName.Enabled:=False;
  E_FMaterialDate_1.Enabled:=False;

  OKBtn.Visible:=False;
  CancelBtn.Visible:=False;
  cxGV.OptionsData.Editing:=False;
end;

function TFrm_BalancePrice.DelRd: bool;
var
 qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Delete from T_BalancePrice where FBalancePriceID=:FBalancePriceID';
    with qry.Parameters do
    begin
      FindParam('FBalancePriceID').value:=mdata['FBalancePriceID'];
    end;
    result:=qry.ExecSQL>=1;
  finally
    qry.Free;
  end;
end;

function TFrm_BalancePrice.AddRd: bool;
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
    qry.SQL.Text:='Insert into T_BalancePrice(FBalanceID, FMaterialBasePrice, FMaterialResizePrice, FPriceDateID,FWorkPriceDateID_1) '
                 +'values(:FBalanceID, :FMaterialBasePrice, :FMaterialResizePrice, :FPriceDateID,:FWorkPriceDateID_1)';
     mData.First;

     while not mData.eof do
     begin
       qry.Parameters.ParamByName('FMaterialBasePrice').DataType:=ftfloat;
       qry.Parameters.ParamByName('FMaterialResizePrice').DataType:=ftfloat;
       //If (mData['FMaterialBasePrice']<>0) or (mData['FMaterialResizePrice']<>0) or (mData['FWorkBasePrice']<>0) then
       begin
         If qry.Active then qry.Close;
         with qry.Parameters do
         begin
           FindParam('FBalanceID').value:=mdata['FBalanceID'];;
           FindParam('FMaterialBasePrice').value:=mdata['FMaterialBasePrice'];
           FindParam('FMaterialResizePrice').value:=mdata['FMaterialResizePrice'];
           FindParam('FPriceDateID').value:=StrToInt(Trim(E_FPriceDateID.Text));
           FindParam('FWorkPriceDateID_1').value:=StrToInt(Trim(E_FWorkPriceDateID.Text));
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


function TFrm_BalancePrice.EditRd:bool;
var
  qry: TADOQuery;

begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;

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
    qry.SQL.Text:='Update T_BalancePrice set FBalanceID=:FBalanceID,FMaterialBasePrice=:FMaterialBasePrice,FMaterialResizePrice=:FMaterialResizePrice,'   
                 +'FPriceDateID=:FPriceDateID,FWorkPriceDateID_1=:FWorkPriceDateID_1 where FBalancePriceID=:FBalancePriceID';
     mData.First;

     while not mData.eof do
     begin
      // If (mData['FMaterialBasePrice']<>0) or (mData['FMaterialResizePrice']<>0) or (mData['FWorkBasePrice']<>0)  then
       begin
         If qry.Active then qry.Close;
         with qry.Parameters do
         begin
           FindParam('FBalanceID').value:=mdata['FBalanceID'];;
           FindParam('FMaterialBasePrice').value:=mdata['FMaterialBasePrice'];
           FindParam('FMaterialResizePrice').value:=mdata['FMaterialResizePrice'];
           FindParam('FPriceDateID').value:=Trim(E_FPriceDateID.Text);
           FindParam('FWorkPriceDateID_1').value:=mdata['FWorkPriceDateID'];
           FindParam('FBalancePriceID').value:=mdata['FBalancePriceID'];
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


procedure TFrm_BalancePrice.FormResize(Sender: TObject);
begin
  inherited;
  L_title.Caption:=UserFDepartmentName+'外协结算单价';
  Self.Caption:=UserFDepartmentName+'外协结算单价';

//  OKBtn.Left:=StrToInt(FloatToStr(int((PanelBkGnd.Width-OKBtn.Width-CancelBtn.Width-20)/2)));
 // CancelBtn.Left:=StrToInt(FloatToStr(int((PanelBkGnd.Width-OKBtn.Width-CancelBtn.Width-20)/2)))+OKBtn.Width+20;

end;

procedure TFrm_BalancePrice.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=cafree;
  Frm_BalancePrice:=nil;
end;

procedure TFrm_BalancePrice.TB_EXITClick(Sender: TObject);
begin
  inherited;
  self.Close;
end;

procedure TFrm_BalancePrice.TB_DownClick(Sender: TObject);
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

procedure TFrm_BalancePrice.MyTreeViewChange(Sender: TObject; Node: TTreeNode);
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
    P_Isleaf:=PTree(Node.Data).Isleaf;
    P_th:=PTree(Node.Data).Caption;
    If not MyItemList(qry,Mdata,'V_BalancePrice','FDepartmentName+'';''+FProductName+'';''+FAgentYear+'';''+FAgentMonth+'';''+FMaterialDate+'';''+FPartsCode+'';''+FNumber+'';''',ListItemFNumber,'FProductName,FAgentYear,FAgentMonth,FMaterialDate,FPartsCode,FNumber') then
    begin
      mdata.Open;
      cxGvColumn(cxGv,Mdata);
    end;
    If mdata.RecordCount>0 then
    begin
      E_FWorkDate.Text:= mdata['FWorkDate'];
      E_FWorkPriceDateID.Text:= mdata['FWorkPriceDateID'];
      E_FPriceDateID.Text:= mdata['FPriceDateID'];
      E_FAgentDate.Text:= mdata['FMaterialDate'];
      E_FProductName.Text:= mdata['FProductName'];
      E_FProductID.Text:= mdata['FProductID'];
    end;
    If P_Isleaf=1 then
    begin
      TB_Edit.Enabled:= mdlData.PermissionCheckRights(TFrm_BalancePrice.ClassName,'修改');
      TB_Del.Enabled:=mdlData.PermissionCheckRights(TFrm_BalancePrice.ClassName,'删除');
    end
    else
    begin
      TB_Edit.Enabled:=False;
      TB_Del.Enabled:=False;
    end;

  end;

end;

procedure TFrm_BalancePrice.MyTreeViewExpanding(Sender: TObject;
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

{  qry.SQL.Text:='Select FNumber, FParentNumber,FName,'
               +'Isleaf from VT_BalancePrice where FParentNumber= '''
               +PTree(Node.Data).ID+''' and FDepartmentID=:FDepartmentID order by FNumber';
  qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
 }
  qry.SQL.Text:='Select FNumber, FParentNumber,FName,'
               +'Isleaf from VT_BalancePrice where FParentNumber= '''
               +PTree(Node.Data).ID+'''  order by FNumber';
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

procedure TFrm_BalancePrice.TB_RefClick(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If UserFDepartmentsort=1 then //事业部
  begin
    If not TreeVeiwListUserID(qry,MyTreeView,'VT_BalanceParts',UserFDepartmentID) then
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

procedure TFrm_BalancePrice.OKBtnClick(Sender: TObject);
var qry: TADOQuery;

begin
  cxGV.OptionsData.Editing:=True;
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

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
      qry.SQL.Text:='Select * from V_BalancePrice where FDepartmentID=:FDepartmentID and FBalanceID=:FBalanceID and FPriceDateID=:FPriceDateID';
      qry.Parameters.FindParam('FDepartmentID').Value:=UserFDepartmentID;
      qry.Parameters.FindParam('FBalanceID').Value:=mdata['FBalanceID'];
      qry.Parameters.FindParam('FPriceDateID').Value:=StrToInt(Trim(E_FPriceDateID.Text));
      qry.Open;
      If qry.RecordCount>0 then
      begin
         application.MessageBox('此执行价日期的结算部件已存在！请重新输入','系统提示',MB_ICONERROR);
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
        mdata.Close;
        mdata.Open;
       // Self.P_Select;  选择全部
        mdata.Edit;
        mdata.Append;
        mdata.Post;
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
      //刷新记录
      If not MyItemList(qry,Mdata,'V_BalancePrice','FFullNumber',ListItemFNumber,'FFullNumber') then
      begin
        mdata.Open;
      //  cxGvColumn(cxGv,Mdata);
      end;
      application.MessageBox('修改记录已保存','系统提示',MB_ICONINFORMATION);
      inherited;
    end
    else
      application.MessageBox('修改记录保存失败！','系统提示',MB_ICONWARNING);
    CancelBtn.Click;
  end;
  qry.Free;


end;



procedure TFrm_BalancePrice.TB_AppClick(Sender: TObject);

begin
  P_state :=0;
  L_title.Caption:=UserFDepartmentName+'外协结算单价数据新增';
  Self.Set_Open;
  If mdata.Active then mdata.Close;

end;

procedure TFrm_BalancePrice.TB_EditClick(Sender: TObject);
var
 qry:TADOquery;

begin
  P_state :=1;

  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  try
    qry.SQL.Text:='Select * from V_BalanceList where FBalancePriceID=:FBalancePriceID';
    qry.Parameters.FindParam('FBalancePriceID').Value:=mdata['FBalancePriceID'];
    qry.Open;
  finally
     ;
  end;
  if qry.RecordCount>0 then
  begin
    application.MessageBox(Pchar('部件【'+Trim(Mdata['FBalanceName'])+'】【'+Trim(Mdata['FBalanceModel'])+'】【'+Trim(Mdata['FMaterialDate'])+'】已启用不允许修改！'),'系统提示',MB_ICONINFORMATION);
    Exit;
  end;
  L_title.Caption:=UserFDepartmentName+'外协结算单价数据修改';
  Self.Set_Open;


end;

procedure TFrm_BalancePrice.TB_DelClick(Sender: TObject);
var
  qry:TADOQuery;

begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  try
    qry.SQL.Text:='Select * from V_WorkList where FBalancePriceID=:FBalancePriceID';    //任务单已使用的不允许删除
    qry.Parameters.FindParam('FBalancePriceID').Value:=mdata['FBalancePriceID'];
    qry.Open;
  finally
     ;
  end;
  if qry.RecordCount>0 then
  begin
    application.MessageBox(Pchar('部件【'+Trim(Mdata['FBalanceName'])+'】【'+Trim(Mdata['FBalanceModel'])+'】【'+Trim(Mdata['FMaterialDate'])+'】已启用不允许删除！'),'系统提示',MB_ICONINFORMATION);
    Exit;
  end;


  If application.MessageBox(Pchar('警告：是否删除：【'+Trim(Mdata['FBalanceName'])+'】【'+Trim(Mdata['FBalanceModel'])+'】【'+Trim(Mdata['FMaterialDate'])+'】的信息？'+chr(13)+chr(13)
                           +'删除数据操作将不可恢复，确定要删除本数据吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
  If application.MessageBox(Pchar('警告：是否删除：【'+Trim(Mdata['FBalanceName'])+'】【'+Trim(Mdata['FBalanceModel'])+'】【'+Trim(Mdata['FMaterialDate'])+'】的信息？'+chr(13)+chr(13)
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
  //TB_ref.Click;

end;

procedure TFrm_BalancePrice.CancelBtnClick(Sender: TObject);
begin
  inherited;
  L_title.Caption:=UserFDepartmentName+'外协结算单价';
  Self.Set_Close;
end;

procedure TFrm_BalancePrice.TB_OutClick(Sender: TObject);
begin
  inherited;
  ExportToExcel(cxGrid,True,TRue);
end;

procedure TFrm_BalancePrice.FormCreate(Sender: TObject);
begin
  inherited;
  TB_App.Enabled:= mdlData.PermissionCheckRights(TFrm_BalancePrice.ClassName,'新增');
  TB_Price.Enabled:= mdlData.PermissionCheckRights(TFrm_BalancePrice.ClassName,'新增');
  TB_Prin.Enabled:= mdlData.PermissionCheckRights(TFrm_BalancePrice.ClassName,'打印');
  TB_Out.Enabled:= mdlData.PermissionCheckRights(TFrm_BalancePrice.ClassName,'打印');

end;

procedure TFrm_BalancePrice.cxGVDBColumn1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
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
  selValue:=select('请选择部件编码','FNumber','FParentNumber','FNumber','FName;',qry);
  If Length(selValue)>0 then
  begin
    mdata.Edit;
    mdata['FNumber']:=qry.FieldByName('FNumber').AsString;
    mdata['FParentNumber']:=qry.FieldByName('FParentNumber').AsString;
    mdata['FBalanceName']:=qry.FieldByName('FBalanceName').AsString;
    mdata['FBalanceModel']:=qry.FieldByName('FBalanceModel').AsString;
    mdata['FUnitName']:=qry.FieldByName('FUnitName').AsString;
    mdata['FBalanceID']:=qry.FieldByName('FBalanceID').AsString;
    mdata['FProductName']:=qry.FieldByName('FProductName').AsString;
    mdata.Post;
  end;

  try
    qry.SQL.Text:='select *,0.00000 as FMaterialBasePrice,0.00000 as FMaterialResizePrice,0.00000 as FMaterialPrice,0.0000 as FBalanceBasePrice from V_WorkPrice '
                 +'where FDepartmentID=:FDepartmentID and FBalanceID=:FBalanceID and FWorkPriceDateID=:FWorkPriceDateID';
    qry.Parameters.FindParam('FDepartmentId').Value:=UserFDepartmentID;
    qry.Parameters.FindParam('FBalanceID').Value:=mdata['FBalanceID'];
    qry.Parameters.FindParam('FWorkPriceDateID').Value:=StrToInt((Trim(E_FWorkPriceDateID.Text)));
    qry.Open;
  finally
     ;
  end;
  mdata.CopyFromDataSet(qry);
  Mdata.Active:=True;
  mdata.Edit;
  qry.Free;
end;

procedure TFrm_BalancePrice.FormShow(Sender: TObject);
begin
  TB_Ref.Click;
end;
procedure TFrm_BalancePrice.E_FWorkDatePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='select * from V_PriceDate where FTableName=''T_WorkPrice'' and FDepartmentID=:FDepartmentID';
    qry.Parameters.FindParam('FDepartmentID').Value:=UserFDepartmentID;
    qry.Open;
  finally
     ;
  end;
  selValue:=select('请选择外协工管执行价','FAgentDate','FAgentYear','FAgentDate','FAgentDate',qry);
  If Length(selValue)>0 then
  begin
    E_FWorkDate.Text:=qry.FieldByName('FAgentDate').AsString;
    E_FWorkPriceDateID.Text:=qry.FieldByName('FPriceDateID').AsString;
  end;

end;

procedure TFrm_BalancePrice.E_FAgentDatePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry,qry1: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry1:=TADOQuery.Create(Self);
  qry1.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='select * from VT_PriceDate where  FDepartmentID=:FDepartmentID and (FTableName=''T_BalancePrice'' or FTableName='''') ';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Open;
  finally
     ;
  end;
  If qry.RecordCount<1 then
     Exit;

  selValue:=select('请选择材料价执行日期','FNumber','FParentNumber','FNumber','FName',qry);
  If (Length(selValue)>0) and (qry.FieldByName('Isleaf').Value=1) then
  begin
    E_FAgentDate.Text:=qry.FieldByName('FAgentDate').AsString;
    E_FPriceDateID.Text:=qry.FieldByName('FPriceDateID').AsString;
    E_FWorkDate.Text:=qry.FieldByName('FWorkDate').AsString;
    E_FWorkPriceDateID.Text:=IntToStr(qry.FieldByName('FWorkPriceDateID').Value);
  end
  else
  begin
    messagedlg('请选择明细！',mtInformation,[mbok],0);
    Exit;
  end;

  try
    qry.SQL.Text:='Select * from V_BalancePrice where FPriceDateID=:FPriceDateID and FProductID=:FProductID and FDepartmentID=:FDepartmentID';
    qry.Parameters.FindParam('FPriceDateID').Value:=StrToInt(Trim(E_FPriceDateID.Text));
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
    //取最大的材料价执行价
    begin
      //复制选择期单位
      If Trim(E_FMaterialDate_1.Text)='' then
      begin
        //初始单价为零
        try
          qry1.SQL.Text:='Select *,0.00000 as FMaterialBasePrice,0.00000 as FMaterialResizePrice,0.00000 as FMaterialPrice,0.00000 as FBalancebasePrice '
                        +'from V_WorkPrice where FWorkPriceDateID=:FWorkPriceDateID and FDepartmentID=:FDepartmentID and FProductID=:FProductID ';
          qry1.Parameters.FindParam('FWorkPriceDateID').Value:=StrToInt(Trim(E_FWorkPriceDateID.Text));
          qry1.Parameters.FindParam('FDepartmentID').Value:=UserFDepartmentID;
          qry1.Parameters.FindParam('FProductID').Value:=StrToInt(Trim(E_FProductID.Text));

          qry1.Open;
        finally
           ;
        end;
       {messagedlg('请选择日期！',mtInformation,[mbok],0);
        E_FMaterialDate_1.SetFocus;
        mdata.Close;
        Exit;}
      end
      else
      begin
        try
          qry1.SQL.Text:='select * from V_BalancePrice where FDepartmentID=:FDepartmentID and FProductID=:FProductID and FMaterialDate=:FMaterialDate';
          qry1.Parameters.FindParam('FDepartmentID').Value:=UserFDepartmentID;
          qry1.Parameters.FindParam('FProductID').Value:=StrToInt(Trim(E_FProductID.Text));
          qry1.Parameters.FindParam('FMaterialDate').Value:=Trim(E_FMaterialDate_1.Text);
          qry1.Open;
        finally
           ;
        end;
      end;
      Mdata.CopyFromDataSet(qry1);
      Mdata.Active:=True;
      Mdata.First;
    end;
    cxGvColumn(cxGv,Mdata);
    qry.Free;
  end;

  cxGV.OptionsData.Editing:=True;
  FMaterialBasePrice.Options.Editing:=True;
  FMaterialResizePrice.Options.Editing:=True;

end;

procedure TFrm_BalancePrice.SB_AppClick(Sender: TObject);
var qry: TADOQuery;
    a:Integer;
begin
  a:=E_FAgentMonth.Value;
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  If (StrToInt(Trim(E_FWorkPriceDateID.Text))=0) then
  begin
    application.MessageBox('工管执行日期不能为空！请重新输入','系统提示',MB_ICONERROR);
    Exit;
  end;


  try
    qry.SQL.Text:='Select * from V_PriceDate where FTableName=:FTableName and FAgentYear=:FAgentYear and FAgentMonth=:FAgentMonth '
                 +'and FAgentDay=:FAgentDay and FDepartmentID=:FDepartmentID';
    with qry.Parameters do
    begin
      FindParam('FTableName').value:='T_BalancePrice';
      FindParam('FAgentYear').value:=IntToStr(E_FAgentYear.Value);
      FindParam('FAgentMonth').value:=Format('%.2d',[a]);
      FindParam('FAgentDay').value:=E_FAgentDay.Text;
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
  If application.MessageBox(Pchar('是否新增材料执行日期:【'+IntToStr(E_FAgentYear.Value)+Format('%.2d',[a])+E_FAgentDay.Text+'】工管执行日期:【'+Trim(E_FWorkDate.Text)+'】的单价信息？'+chr(13)+chr(13)
                           +'确定要新增本数据吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then

  begin
    try
      qry.SQL.Text:='Insert into T_PriceDate(FTableName, FAgentYear, FAgentMonth, FAgentDay,FWorkPriceDateID,FDepartmentID) '
                   +'values(:FTableName, :FAgentYear, :FAgentMonth, :FAgentDay,:FWorkPriceDateID,:FDepartmentID)';
      with qry.Parameters do
      begin
        FindParam('FTableName').value:='T_BalancePrice';
        FindParam('FAgentYear').value:=IntToStr(E_FAgentYear.Value);
        FindParam('FAgentMonth').value:=Format('%.2d',[a]);
        FindParam('FAgentDay').value:=E_FAgentDay.Text;
        FindParam('FWorkPriceDateID').value:=StrToInt(E_FWorkPriceDateID.Text);
        FindParam('FDepartmentID').value:=UserFDepartmentID;
      end;
      qry.ExecSQL;
    finally
      ;
    end;
  end;
  E_FWorkDate.Enabled:=False;
  E_FAgentYear.Enabled:=False;
  E_FAgentMonth.Enabled:=False;
  E_FAgentDay.Enabled:=False;
  SB_App.Enabled:=False;

end;

procedure TFrm_BalancePrice.E_FAgentDateDblClick(Sender: TObject);
var  qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
   try
    qry.SQL.Text:='select a.MaxFAgentDate ,b.FPriceDateID from (select Max(FAgentDate) as  MaxFAgentDate from V_PriceDate '
                 +'where (FTableName=''T_WorkPrice'' ) and FDepartmentID=:FDepartmentID1) as a left outer join V_PriceDate as b '
                 +'on a.MaxFAgentDate=b.FAgentDate where  (FTableName=''T_WorkPrice'' ) and FDepartmentID=:FDepartmentID2 ';
    qry.Parameters.FindParam('FDepartmentID1').Value:=UserFDepartmentID;
    qry.Parameters.FindParam('FDepartmentID2').Value:=UserFDepartmentID;
    qry.Open;
  finally
     ;
  end;
  If qry.RecordCount>0 then
  begin
     E_FWorkDate.Text:=qry.FieldByName('MaxFAgentDate').Value;
     E_FWorkPriceDateID.Text:=qry.FieldByName('FPriceDateID').Value;
  end;
  E_FWorkDate.Enabled:=True;
  E_FAgentYear.Enabled:=True;
  E_FAgentMonth.Enabled:=True;
  E_FAgentDay.Enabled:=True;
  SB_App.Enabled:=True;
end;

procedure TFrm_BalancePrice.MDataBeforePost(DataSet: TDataSet);
begin
  inherited;
  DataSet['FMaterialPrice']:=DataSet['FMaterialBasePrice']+DataSet['FMaterialResizePrice'];
  DataSet['FBalanceBasePrice']:=DataSet['FMaterialPrice']+DataSet['FWorkPrice'];
end;

procedure TFrm_BalancePrice.TB_PrinClick(Sender: TObject);
begin
  inherited;
  FrReport.LoadFromFile(ExtractFileDir(Application.ExeName)+'\Report_DesignBOM_BalancePrice.frf');
  FrReport.ShowReport;

end;

procedure TFrm_BalancePrice.TB_PriceClick(Sender: TObject);
var  qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
   try
    qry.SQL.Text:='select a.MaxFAgentDate ,b.FPriceDateID from (select Max(FAgentDate) as  MaxFAgentDate from V_PriceDate '
                 +'where (FTableName=''T_WorkPrice'' ) and FDepartmentID=:FDepartmentID1) as a left outer join V_PriceDate as b '
                 +'on a.MaxFAgentDate=b.FAgentDate where  (FTableName=''T_WorkPrice'' ) and FDepartmentID=:FDepartmentID2 ';
    qry.Parameters.FindParam('FDepartmentID1').Value:=UserFDepartmentID;
    qry.Parameters.FindParam('FDepartmentID2').Value:=UserFDepartmentID;
    qry.Open;
  finally
     ;
  end;
  If qry.RecordCount>0 then
  begin
     E_FWorkDate.Text:=qry.FieldByName('MaxFAgentDate').Value;
     E_FWorkPriceDateID.Text:=qry.FieldByName('FPriceDateID').Value;
  end;
  E_FWorkDate.Enabled:=True;
  E_FAgentYear.Enabled:=True;
  E_FAgentMonth.Enabled:=True;
  E_FAgentDay.Enabled:=True;
  SB_App.Enabled:=True;
end;

procedure TFrm_BalancePrice.E_FProductNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.Connection:=mdlData.conn;
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

procedure TFrm_BalancePrice.TB_Ref2Click(Sender: TObject);
var  qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
   try
    qry.SQL.Text:='select * from V_WorkList where FBalancePriceID not in (select FBalancePriceID from T_BalancePrice)';
    qry.Open;
  finally
     ;
  end;
  mdata1.CopyFromDataSet(qry);
  mdata1.Open;
  mdata1.First;
end;

procedure TFrm_BalancePrice.SpeedButton1Click(Sender: TObject);
var selValue : string;
    qry: TADOQuery;
begin
    qry:=TADOQuery.Create(self);
    qry.ConnectionString:=mdlData.ReadConnStr;
    try
      qry.SQL.Text:='select * from VT_BalancePrice where FDepartmentID=:FDepartmentID';
      qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
      qry.Open;
    finally
       ;
    end;


    selValue:=select('选择结算部件','FNumber','FParentNumber','FNumber','Fname',qry);
    If (Length(selValue)>0) and (qry.FieldByName('FDetail').Value<>0) then
    begin
      E_FBalanceName.Text:=qry.FieldByName('FBalanceName').AsString;
      E_FBalanceModel.Text:=qry.FieldByName('FBalanceModel').AsString;
      E_FUnitName.Text:=qry.FieldByName('FUnitName').AsString;
      E_FBalancePriceID1.Text:=IntToStr(qry.FieldByName('FBalancePriceID').Value);
      E_FMaterialDate.Text:=qry.FieldByName('FMaterialDate').Value;
    end
    else
      application.MessageBox('请选择明细！','系统提示',MB_ICONINFORMATION);

    qry.Free;

end;

procedure TFrm_BalancePrice.TB_Down2Click(Sender: TObject);
Var i:Integer;
begin
  If P_i then
  begin
    TB_Down2.Caption:='取消设置';
    cxGVBrow.OptionsData.Editing:=False;
    cxGVBrow.OptionsView.GroupByBox:=False;
    for i:=0 to cxGVBrow.ColumnCount-1 do
    begin
      cxGVBrow.Columns[i].Options.Filtering:=False;
      cxGVBrow.Columns[i].Options.Editing:=False;
      cxGVBrow.Columns[i].Options.Sorting:=False;
    end;
    P_i:=False;
  end
  else
  begin
    TB_Down2.Caption:='设置';
    cxGVBrow.OptionsData.Editing:=True;
    cxGVBrow.OptionsView.GroupByBox:=True;
    for i:=0 to cxGVBrow.ColumnCount-1 do
    begin
      cxGVBrow.Columns[i].Options.Filtering:=True;
      cxGVBrow.Columns[i].Options.Editing:=True;
      cxGVBrow.Columns[i].Options.Sorting:=True;
    end;
    P_i:=True;
  end;
end;

procedure TFrm_BalancePrice.cxButton3Click(Sender: TObject);
var  qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Update T_WorkList Set FBalancePriceID=:FBalancePriceID1 where FBalancePriceID=:FBalancePriceID';
    qry.Parameters.FindParam('FBalancePriceID1').value:=E_FBalancePriceID1.EditValue;
    qry.Parameters.FindParam('FBalancePriceID').value:=E_FBalancePriceID.EditValue;
    qry.ExecSQL;
  finally
     ;
  end;
  application.MessageBox('替换成功!','系统提示',MB_ICONINFORMATION);
  E_FBalancePriceID.EditValue:=0;
  E_FBalancePriceID1.EditValue:=0;
  Self.TB_Ref2.Click;
  qry.Free;
end;

procedure TFrm_BalancePrice.E_FMaterialDate_1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='select * from VT_PriceDate where  FDepartmentID=:FDepartmentID and (FTableName=''T_BalancePrice'' or FTableName='''') ';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Open;
  finally
     ;
  end;
  If qry.RecordCount<1 then
     Exit;

  selValue:=select('请要复制的选择材料价执行日期','FNumber','FParentNumber','FNumber','FName',qry);
  If (Length(selValue)>0) and (qry.FieldByName('Isleaf').Value=1) then
  begin
    E_FMaterialDate_1.Text:=qry.FieldByName('FAgentDate').AsString;
  end
  else
  begin
    messagedlg('请选择明细！',mtInformation,[mbok],0);
    Exit;
  end;

end;

end.
