unit Main_WorkBOM;

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
  jpeg;

type
  TFrm_WorkBOM = class(TFrm_GridBass)
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
    MDatacpth: TStringField;
    MDatacpmc: TStringField;
    MDatacpxh: TStringField;
    MDatadah: TStringField;
    MDatajsdj: TStringField;
    MDatadjrq: TStringField;
    MDatalkdh: TStringField;
    MDatapqgy: TStringField;
    MDataclf: TStringField;
    MDatagz: TStringField;
    MDataglf: TStringField;
    MDataclfje: TStringField;
    MDatagzje: TStringField;
    MDataglfje: TStringField;
    MDatabz: TStringField;
    MDatajssl: TStringField;
    MDatajsje: TStringField;
    MDatayfmc: TStringField;
    RzSizePanel1: TRzSizePanel;
    MyTreeView: TTreeView;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    TabSheet2: TRzTabSheet;
    cxGridK3: TcxGrid;
    cxGVK3: TcxGridDBTableView;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    FItemId: TcxGridDBColumn;
    cxGLK3: TcxGridLevel;
    ADOQuery: TADOQuery;
    DataSource: TDataSource;
    V_K3: TADOTable;
    DS_K3: TDataSource;
    TB_Ref: TToolButton;
    cxGrid: TcxGrid;
    cxGV: TcxGridDBTableView;
    th: TcxGridDBColumn;
    mc: TcxGridDBColumn;
    gg: TcxGridDBColumn;
    ssth: TcxGridDBColumn;
    FQry: TcxGridDBColumn;
    FNumber: TcxGridDBColumn;
    FName: TcxGridDBColumn;
    FModel: TcxGridDBColumn;
    UnitName: TcxGridDBColumn;
    FSuttle: TcxGridDBColumn;
    FRation: TcxGridDBColumn;
    Remark: TcxGridDBColumn;
    FFullName: TcxGridDBColumn;
    FFullNumber: TcxGridDBColumn;
    ssFullNumber: TcxGridDBColumn;
    cxGL: TcxGridLevel;
    CB_2: TcxCheckBox;
    CB_3: TcxCheckBox;
    CB_4: TcxCheckBox;
    CB_5: TcxCheckBox;
    ADOStoredProc1: TADOStoredProc;
    TB_Del: TToolButton;
    FCode: TcxGridDBColumn;
    FUse: TcxGridDBColumn;
    FPartsSort: TcxGridDBColumn;
    TB_update: TToolButton;
    FManageParts: TcxGridDBColumn;
    FWorkParts: TcxGridDBColumn;
    CB_Parts: TcxComboBox;
    FMarkParts: TcxGridDBColumn;
    FPriceQry: TcxGridDBColumn;
    Image1: TImage;
    Label1: TLabel;
    y_FNumber: TcxGridDBColumn;
    y_FModel: TcxGridDBColumn;
    y_FRation: TcxGridDBColumn;
    FMaterialRate: TcxGridDBColumn;
    FSumSuttle: TcxGridDBColumn;
    y_FSuttle: TcxGridDBColumn;
    CB_Type: TcxCheckBox;
    c_FSuttle: TcxGridDBColumn;
    CB_Sum: TcxComboBox;
    CB_Print: TcxCheckBox;
    ToolButton3: TToolButton;
    Image2: TImage;
    Label2: TLabel;
    FSumQry: TcxGridDBColumn;
    procedure CancelBtnClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TB_EXITClick(Sender: TObject);
    procedure TB_DownClick(Sender: TObject);
    procedure MyTreeViewChange(Sender: TObject; Node: TTreeNode);
    procedure MyTreeViewExpanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure TB_RefClick(Sender: TObject);
    procedure TB_DelClick(Sender: TObject);
    procedure TB_updateClick(Sender: TObject);
    procedure CB_bjlbPropertiesChange(Sender: TObject);
    procedure cxGridExit(Sender: TObject);
    procedure MDataAfterEdit(DataSet: TDataSet);
    procedure frReportBeginBand(Band: TfrBand);
    procedure frReportGetValue(const ParName: String;
      var ParValue: Variant);
    procedure CB_TypeClick(Sender: TObject);
    procedure CB_PrintClick(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
  private
    ListItemFNumber,P_th:String;
    P_i:boolean;
    FFullFileName: string;
    qry: TADOQuery;
    m_stopFileName,P_FItemListId,P_FFullNumber,p_FItemNo,p_Code,P_FProductID:string;



    { Private declarations }

    procedure InitParam;
    procedure PartsSort;

 //   Procedure MyItemList(Sender: TObject);

  public
  P_Parts: string;
    { Public declarations }
  end;

var
  Frm_WorkBOM: TFrm_WorkBOM;
  title,title1,title2,title3,bz,P_FProductID:string;


implementation

uses FRMDATA, FRMMAIN, COMMON, FrmSelect, ProgBar, PROGRASS;

{$R *.dfm}



procedure TFrm_WorkBOM.InitParam;
begin

end;

procedure TFrm_WorkBOM.PartsSort;
var
  proc:TADOStoredProc;
  P_Retinf:String;
begin
  proc:=TADOStoredProc.Create(self);
  proc.Connection:=mdlData.conn;
  proc.CommandTimeout:=500;

  try
    proc.ProcedureName:='P_BOM_PartsSort;1';
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=50;
      name := '@TableName';
      value:='T_DesignBOM_Structure';
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=50;
      name := '@ViewName';
      value:='V_DesignBOM_Structure';
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=50;
      name := '@FFullNumber';
      value:=ListItemFNumber;
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftInteger;
      Direction := pdinput;
      name := '@FProductID';
      value:=P_FProductID;
    end;
    proc.ExecProc;
  finally
     ;
  end;
  Proc.Free;



end;

procedure TFrm_WorkBOM.CancelBtnClick(Sender: TObject);
begin
  inherited;
  self.Close ;
end;

procedure TFrm_WorkBOM.FormResize(Sender: TObject);
var
  qry:TADOquery;
begin
  inherited;
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If not TreeVeiwList(qry,MyTreeView,'VT_DesignBOM') then
  begin
    Application.MessageBox(PChar('物料树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;

  L_title.Caption:='生产BOM操作';
  Self.Caption:='生产BOM操作';
end;

procedure TFrm_WorkBOM.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=cafree;
  Frm_WorkBOM:=nil;
end;

procedure TFrm_WorkBOM.TB_EXITClick(Sender: TObject);
begin
  inherited;
  self.Close;
end;

procedure TFrm_WorkBOM.TB_DownClick(Sender: TObject);
Var i:Integer;
begin
  If P_i then
  begin
    TB_Down.Caption:='取消设置';
    cxGV.OptionsData.Editing:=False;
    cxGv.OptionsView.GroupByBox:=False;

    cxGVK3.OptionsData.Editing:=False;
    cxGVK3.OptionsView.GroupByBox:=False;

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

    cxGVK3.OptionsData.Editing:=True;
    cxGVK3.OptionsView.GroupByBox:=True;

    for i:=0 to cxGv.ColumnCount-1 do
    begin
      cxGv.Columns[i].Options.Filtering:=True;
      cxGv.Columns[i].Options.Editing:=True;
      cxGv.Columns[i].Options.Sorting:=True;
    end;
    P_i:=True;
  end;
end;

procedure TFrm_WorkBOM.MyTreeViewChange(Sender: TObject; Node: TTreeNode);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;

  If Node = nil then Exit;
  with PTree(Node.Data)^ do
  begin
    ListItemFNumber:=trim(PTree(Node.Data).FNumber);
    P_th:=PTree(Node.Data).Caption;
    If not MyItemList(qry,Mdata,'V_DesignBOM_Structure','FFullNumber',ListItemFNumber,'FFullNumber') then
    begin
      mdata.Open;
    end;
  end;
  cxGvColumn(cxGv,Mdata);

end;

procedure TFrm_WorkBOM.MyTreeViewExpanding(Sender: TObject;
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

  qry.SQL.Text:='Select FNumber, FParentNumber,FName,FProductID,'
               +'Isleaf from VT_DesignBOM where FParentNumber= '''
               +PTree(Node.Data).ID+'''';
               //+''' order by FNumber';

  qry.open;

  PTree(Node.Data).Flag := cLoadFlag;                  // 设置已加载标志
  while not qry.Eof do
  begin
    New(P);
    P.ID := qry.FieldByName('FNumber').AsString;
    P.ParentID := qry.FieldByName('FParentNumber').AsString;
    P.FNumber:=qry.FieldByName('FNumber').AsString;
    P.FProductID:=qry.FieldByName('FProductID').Value;
    P_FProductID:=qry.FieldByName('FProductID').Value;

   // P.Th:=qry.FieldByName('th').AsString;
    P.Caption := qry.FieldByName('FName').AsString;
    P.Flag := cNoLoadFlag;                            // 新节点，未加载标志
    with MyTreeView.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('Isleaf').value;
    end;
    qry.Next;
  end;
//  cxGvColumn(cxGv,Mdata);

end;

procedure TFrm_WorkBOM.FormCreate(Sender: TObject);
begin
  inherited;
  V_k3.Active:=True;
  P_Parts:='FManageParts';
  TB_Del.Enabled:= mdlData.CheckFrmRights(TFrm_WorkBOM.ClassName,'删除');

end;

procedure TFrm_WorkBOM.TB_RefClick(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If not TreeVeiwList(qry,MyTreeView,'VT_DesignBOM') then
  begin
    Application.MessageBox(PChar('物料树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;

end;

procedure TFrm_WorkBOM.TB_DelClick(Sender: TObject);
var
  proc:TADOStoredProc;
  P_Retinf:String;
begin
  proc:=TADOStoredProc.Create(self);
  proc.Connection:=mdlData.conn;
  proc.CommandTimeout:=500;

  If ShowMsg('是否对删除【'+P_th+'】此图号！','提示') then
  begin
    try
      proc.ProcedureName:='P_Del_DesignBOM;1';
      with proc.Parameters.AddParameter do
      begin
        DataType := ftString;
        Direction := pdinput;
        size:=20;
        name := '@FFullNumber';
        value:=ListItemFNumber;
      end;
      with proc.Parameters.AddParameter do
      begin
        DataType := ftInteger;
        Direction := pdinput;
        name := '@FItemListId';
        value:=P_FItemListId;
      end;
      with proc.Parameters.AddParameter do
      begin
        DataType := ftString;
        Direction := pdoutput;
        size:=255;
        name := '@ErrorMsg';
        value:='';
      end;
      proc.ExecProc;
      P_Retinf:=proc.Parameters.FindParam('@ErrorMsg').Value;
      If  P_Retinf<>'' then
      begin
        Messagedlg(P_Retinf,mtInformation,[mbok],0);
        Exit;
      end
      else
      begin
        Messagedlg('数据删除成功！',mtInformation,[mbok],0);
        mdata.Close;
        Self.TB_RefClick(Sender);
      end;
    finally
       ;
    end;
  end;
end;

procedure TFrm_WorkBOM.TB_updateClick(Sender: TObject);
var
  IsEdit:bool;
  qry: TADOQuery;
  I_index:integer;
begin
  I_index:=mData.RecNo ;
  Mdata.Edit;
  Mdata.Post;
  If ShowMsg('是否对已修改部件类别进行批量更新？更新后不可恢复！','提示') then
  begin
    with mdata do
    begin
      mData.DisableControls;
      First;
      qry:=TADOQuery.Create(Self);
      try
        qry.Connection:=mdlData.conn;
        qry.SQL.Text:='Update T_DesignBOM_Structure set FPartsSort=:FPartsSort where FFullNumber=:FFullNumber';
        while not mdata.EoF do
        begin
          IsEdit:=mData.FieldByName('IsEdit').AsBoolean;
          If IsEdit then
          begin
            qry.Parameters[0].Value:=mData['FPartsSort'];
            qry.Parameters[1].Value:=mData['FFullNumber'];
            qry.ExecSQL;
          end;
          next;
        end;
      finally
        ;
        //Messagedlg('数据更新失败！',mtInformation,[mbok],0);
      end;
    end;
    mData.EnableControls;
  end;
  qry.Free;
 // Self.P_select;
  TB_update.Visible:=False;
  If (I_index<mData.RecordCount) and (I_index<>-1) then
     mData.RecNo :=I_index
  else
     mData.Last;

end;

procedure TFrm_WorkBOM.CB_bjlbPropertiesChange(Sender: TObject);
begin
  inherited;
  If CB_Parts.Text='部件' then
    P_Parts:='FParts';
  If CB_Parts.Text='部件类别' then
    P_Parts:='FPartsSort';
  If CB_Parts.Text='企管部件类别' then
    P_Parts:='FManageParts';
  If CB_Parts.Text='生产部件类别' then
    P_Parts:='FWorkParts';

end;

procedure TFrm_WorkBOM.cxGridExit(Sender: TObject);
begin
  inherited;
  If TB_update.Visible then
  If messagedlg('数据已修改是否更新？',mtInformation,[mbyes,mbno],0)=mryes then
    TB_update.Click;

end;

procedure TFrm_WorkBOM.MDataAfterEdit(DataSet: TDataSet);
begin
  inherited;
  DataSet['IsEdit']:=True;
  TB_update.Visible:=True;

end;

procedure TFrm_WorkBOM.frReportBeginBand(Band: TfrBand);
begin
  inherited;
   If Band.Name='dtFooter' then
    begin
      If (mdata.RecordCount mod 20)>0 then
        frReport.Dictionary.Variables['n']:=20-(mdata.RecordCount mod 20)
      else
        frReport.Dictionary.Variables['n']:=0;
    end;

end;

procedure TFrm_WorkBOM.frReportGetValue(const ParName: String;
  var ParValue: Variant);
begin
  inherited;
  If ParName='bz' then
    ParValue:=bz;
  If ParName='title' then
    ParValue:=title;
  If ParName='title1' then
    ParValue:=title1;
  If ParName='title2' then
    ParValue:=title2;
  If ParName='bz' then
    ParValue:=bz;


  If ParName='UserName' then
    ParValue:=USERNUM;
  If ParName='P_Parts' then
    ParValue:=CB_Parts.Text;

end;

procedure TFrm_WorkBOM.CB_TypeClick(Sender: TObject);
begin
  inherited;
  If CB_Type.Checked=True then
    CB_Type.Properties.Caption:='汇总'
  else
  begin
    CB_Type.Properties.Caption:='明细';
    CB_Print.Checked:=False;
  end;

end;

procedure TFrm_WorkBOM.CB_PrintClick(Sender: TObject);
begin
  inherited;
  If CB_Print.Checked=True then
    CB_Type.Properties.Caption:='汇总';

end;

procedure TFrm_WorkBOM.ToolButton3Click(Sender: TObject);
begin
  inherited;
  ExportToExcel(cxGrid,True,TRue);
end;

end.
