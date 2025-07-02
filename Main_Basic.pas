unit Main_Basic;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FrmGridBass, ExtCtrls, StdCtrls, DsFancyButton, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  dxmdaset, cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid,
  cxTextEdit, cxDropDownEdit, cxCalendar, cxMaskEdit, cxContainer, cxLabel,
  cxDBLookupComboBox, ADODB, cxButtonEdit, Grids, DBGrids, ComCtrls,
  ToolWin, ImgList, FR_DSet, FR_DBSet, FR_Class, cxRadioGroup, Buttons,
  cxGroupBox, cxCheckBox, cxTimeEdit, cxCurrencyEdit, cxGridCardView,
  cxGridDBCardView, cxGridBandedTableView, RzPanel, RzSplit, RzTabs,
  cxLookAndFeelPainters, cxButtons, cxImage, TFlatPanelUnit;

type
  TFrm_Basic = class(TFrm_GridBass)
    MData: TdxMemData;
    DS_Mdata: TDataSource;
    ADOQuery: TADOQuery;
    DS_ADOQuery: TDataSource;
    ImageList: TImageList;
    Panel1: TPanel;
    ToolBar1: TToolBar;
    TB_Count: TToolButton;
    ToolButton5: TToolButton;
    TB_refresh: TToolButton;
    ToolButton1: TToolButton;
    TB_Print: TToolButton;
    TB_EXIT: TToolButton;
    frReport: TfrReport;
    frDBDataSet: TfrDBDataSet;
    StyleRepository: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    cxStyle7: TcxStyle;
    cxStyle8: TcxStyle;
    cxStyle9: TcxStyle;
    cxStyle10: TcxStyle;
    cxStyle11: TcxStyle;
    cxStyle12: TcxStyle;
    cxStyle13: TcxStyle;
    cxStyle14: TcxStyle;
    GridTableViewStyleSheetDevExpress: TcxGridTableViewStyleSheet;
    cxStyle15: TcxStyle;
    cxStyle16: TcxStyle;
    cxStyle17: TcxStyle;
    cxStyle18: TcxStyle;
    cxStyle19: TcxStyle;
    TB_update: TToolButton;
    ToolButton4: TToolButton;
    TB_Down: TToolButton;
    PC_1: TRzPageControl;
    TS_DesignBOM: TRzTabSheet;
    RzSizePanel1: TRzSizePanel;
    MyTreeView: TTreeView;
    TB_RCount: TToolButton;
    E_th1: TcxButtonEdit;
    E_th2: TcxButtonEdit;
    TB_bjlb: TToolButton;
    TB_Status: TToolButton;
    TB_Edit: TToolButton;
    cxGrid: TcxGrid;
    cxGV: TcxGridDBTableView;
    FCode: TcxGridDBColumn;
    th: TcxGridDBColumn;
    mc: TcxGridDBColumn;
    gg: TcxGridDBColumn;
    djjz: TcxGridDBColumn;
    djde: TcxGridDBColumn;
    jzdec: TcxGridDBColumn;
    sl: TcxGridDBColumn;
    ssth: TcxGridDBColumn;
    bjlb: TcxGridDBColumn;
    FFullNumber: TcxGridDBColumn;
    FNumber: TcxGridDBColumn;
    FName: TcxGridDBColumn;
    FModel: TcxGridDBColumn;
    UnitName: TcxGridDBColumn;
    jz: TcxGridDBColumn;
    FFullName: TcxGridDBColumn;
    cxGL: TcxGridLevel;
    TabSheet1: TRzTabSheet;
    TabSheet2: TRzTabSheet;
    TabSheet3: TRzTabSheet;
    E_scbjlb: TcxButtonEdit;
    TabSheet4: TRzTabSheet;
    FlatPanel_edit: TFlatPanel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    E_bbmc: TcxTextEdit;
    E_dyv: TcxTextEdit;
    E_mxmc: TcxTextEdit;
    E_kmmc: TcxButtonEdit;
    E_kmdh: TcxButtonEdit;
    cxButtonEdit1: TcxButtonEdit;
    Label2: TLabel;
    Label4: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    cxButtonEdit2: TcxButtonEdit;
    cxButtonEdit3: TcxButtonEdit;
    cxButtonEdit4: TcxButtonEdit;
    procedure CancelBtnClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TB_EXITClick(Sender: TObject);
    procedure TB_refreshClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure P_Select;
    procedure S_Edit;
    procedure frReportBeginBand(Band: TfrBand);
    procedure MDataAfterEdit(DataSet: TDataSet);
    procedure MyTreeViewExpanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure MyTreeViewChange(Sender: TObject; Node: TTreeNode);
    procedure ToolButton4Click(Sender: TObject);
    procedure PC_1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure frReportGetValue(const ParName: String;
      var ParValue: Variant);
  private
    P_i:boolean;
    P_SQLText,P_th1,p_scgy,P_FDesignDate:String;
    P_ListNum:Integer;   // 显示级数
    P_n1:Integer;
    P_zz:real;
    P_bjlb:string;

    { Private declarations }
  public
    P_VTBOM,P_VBOM:String;
    { Public declarations }
  end;

var
  Frm_Basic: TFrm_Basic;
  first_bz:bool;
  title,title1,title2,title3,bz:string;


implementation

uses FRMDATA, FRMMAIN, COMMON,  FrmSelect,ProgBar;

{$R *.dfm}
procedure TFrm_Basic.S_Edit;
begin
{  with mdata do
  begin
    with Frm_Edit_DesignBOM do
    begin
      E_th.Text:=FieldByName('th').Value;
      E_mc.Text:=FieldByName('mc').Value;
      E_FName.Text:=FieldByName('FName').Value;
      E_FModel.EditValue:=FieldByName('FModel').Value;
      E_UnitName.EditValue:=FieldByName('UnitName').Value;
      E_djjz.Value:=FieldByName('djjz').Value;
      E_sl.Text:=FieldByName('sl').Value;
    end;
  end;
  }
end;


procedure TFrm_Basic.MyTreeViewExpanding(Sender: TObject;
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

  qry.SQL.Text:='Select FNumber, FParentNumber,FNumber,'
               +'FName, FDetail,ListNum from '+P_VTBOM+' where FParentNumber= '''
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
    P.ListNum:= qry.FieldByName('ListNum').Value;
    P.Flag := cNoLoadFlag;                            // 新节点，未加载标志
    with MyTreeView.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('FDetail').value;
    end;
    qry.Next;
  end;
  qry.Free;
end;

procedure TFrm_Basic.P_Select;
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If not TreeVeiwList(qry,MyTreeView,P_VTBOM) then
  begin
    Application.MessageBox(PChar('物料树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;
end;

procedure TFrm_Basic.CancelBtnClick(Sender: TObject);
begin
  inherited;
  Self.Close ;
end;

procedure TFrm_Basic.FormResize(Sender: TObject);
begin
  inherited;
  L_title.Caption:='设计BOM查询';
  Self.Caption:='设计BOM查询';
end;

procedure TFrm_Basic.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=cafree;
  Frm_Basic:=nil;
  P_IscxGV:=False;

end;

procedure TFrm_Basic.TB_EXITClick(Sender: TObject);
begin
  self.Close;
end;

procedure TFrm_Basic.TB_refreshClick(Sender: TObject);
var
  I_index:integer;
begin
  inherited;
  I_index:=mdata.RecNo ;
  mdata.Active:=False;
  mdata.Active:=True;
  If (I_index<mdata.RecordCount) and (I_index<>-1) then
     mdata.RecNo :=I_index
  else
     mdata.Last;
end;

procedure TFrm_Basic.FormCreate(Sender: TObject);
begin
  inherited;
  P_i:=True;
  P_IsEdit:=False;
  P_IsFilter:=False;
  P_IsSort:=False;
  P_IsGroup:=False;
  P_IscxGV:=True;

  Panel_down.Height:=40;
  TB_edit.Enabled:= mdlData.CheckFrmRights(TFrm_Basic.ClassName,'修改');
  TB_refresh.Enabled:= mdlData.CheckFrmRights(TFrm_Basic.ClassName,'新增');
  TB_print.Enabled:= mdlData.CheckFrmRights(TFrm_Basic.ClassName,'打印');
  If PC_1.ActivePage=TS_DesignBOM then
  begin
    L_title.Caption:='设计BOM';
    P_VTBOM:='VT_DesignBOM';
    P_VBOM:='V_DesignBOM_Structure';
    P_cxGV:=cxGV;
  end;
end;

procedure TFrm_Basic.frReportBeginBand(Band: TfrBand);
begin
  If Band.Name='dtFooter' then
  begin
    If ((mdata.RecordCount+P_n1) mod 25)>0 then
      frReport.Dictionary.Variables['n']:=25-((mdata.RecordCount+P_n1) mod 25)-1
    else
      frReport.Dictionary.Variables['n']:=0;
  end;
end;

procedure TFrm_Basic.MDataAfterEdit(DataSet: TDataSet);
begin
  inherited;
  If (PC_1.ActivePage=TS_DesignBOM)  and  (mdlData.CheckFrmRights(TFrm_Basic.ClassName,'新增')=True)  then
  begin
    DataSet['IsEdit']:=True;
    If TB_Edit.Visible=True then
      TB_update.Visible:=True;
  end
  else
    TB_update.Visible:=False;

end;

procedure TFrm_Basic.MyTreeViewChange(Sender: TObject; Node: TTreeNode);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;

  If Node = nil then Exit;
  with PTree(Node.Data)^ do
  begin
    ListItemFNumber:=PTree(Node.Data).FNumber;
    P_ListNum:=PTree(Node.Data).ListNum;
    If P_ListNum<1 then
    begin
      mdata.Close;
      Exit;
    end;
    If not MyItemList(qry,Mdata,P_VBOM,'thlb+FFullNum',ListItemFNumber,'FFullNum') then
     mdata.Open;
     cxGvColumn(P_cxGv,Mdata);
     If mdata.RecordCount>0 then
     begin
       E_th1.Text:=mdata['th1'];
       E_th2.Text:=mdata['th2'];
       E_scbjlb.Text:=mdata['scbjlb'];
       P_FDesignDate:=mdata['FDesignDate'];
     end;
  end;
end;

procedure TFrm_Basic.ToolButton4Click(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If not TreeVeiwList(qry,MyTreeView,P_VTBOM) then
  begin
    Application.MessageBox(PChar('物料树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;

end;

procedure TFrm_Basic.PC_1Change(Sender: TObject);
begin
  inherited;
  If PC_1.ActivePage=TS_DesignBOM then
  begin
    L_title.Caption:='设计BOM';
    P_VTBOM:='VT_DesignBOM';
    P_VBOM:='V_DesignBOM_Structure';
    P_cxGV:=cxGV;
    p_cxGrid:=cxGrid;
  end;
  Self.P_Select;
end;

procedure TFrm_Basic.FormShow(Sender: TObject);
begin
  inherited;
  Self.P_Select;
end;

procedure TFrm_Basic.frReportGetValue(const ParName: String;
  var ParValue: Variant);
begin
  inherited;
  If ParName='title1' then
    ParValue:=title1;

end;

end.
