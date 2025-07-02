unit Main_DesignBOM_1;

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
  cxGroupBox, cxCheckBox, cxCurrencyEdit;

type
  TFrm_DesignBOM_1 = class(TFrm_GridBass)
    MData: TdxMemData;
    DS_Mdata: TDataSource;
    cxGrid: TcxGrid;
    cxGV: TcxGridDBTableView;
    cxGL: TcxGridLevel;
    ImageList: TImageList;
    Panel1: TPanel;
    ToolBar1: TToolBar;
    TB_app: TToolButton;
    TB_EDIT: TToolButton;
    TB_DEL: TToolButton;
    ToolButton5: TToolButton;
    TB_Down: TToolButton;
    TB_refresh: TToolButton;
    ToolButton1: TToolButton;
    TB_PRIN: TToolButton;
    TB_EXIT: TToolButton;
    frReport: TfrReport;
    frDBDataSet: TfrDBDataSet;
    DBGrid1: TDBGrid;
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
    E_FFullNumber: TcxButtonEdit;
    TB_Update: TToolButton;
    FCode: TcxGridDBColumn;
    th: TcxGridDBColumn;
    mc: TcxGridDBColumn;
    gg: TcxGridDBColumn;
    djjz: TcxGridDBColumn;
    sl: TcxGridDBColumn;
    ssth: TcxGridDBColumn;
    FFullNumber: TcxGridDBColumn;
    FNumber: TcxGridDBColumn;
    UnitName: TcxGridDBColumn;
    FName: TcxGridDBColumn;
    FModel: TcxGridDBColumn;
    jz: TcxGridDBColumn;
    FFullName: TcxGridDBColumn;
    bjlb: TcxGridDBColumn;
    djde: TcxGridDBColumn;
    jzdec: TcxGridDBColumn;
    ToolButton2: TToolButton;
    procedure CancelBtnClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure P_Select;
    procedure TB_EXITClick(Sender: TObject);
    procedure TB_DownClick(Sender: TObject);
    procedure E_FFullNumberPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure TB_EDITClick(Sender: TObject);
    procedure TB_appClick(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure TB_DELClick(Sender: TObject);
  private
    P_i:boolean;
    P_th:String;

    procedure InitParam;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_DesignBOM_1: TFrm_DesignBOM_1;

implementation

uses FRMDATA, FRMMAIN, COMMON, Edit_Item, FrmSelect, ProgBar, PROGRASS,
  Main_DesignBOM;

{$R *.dfm}
procedure TFrm_DesignBOM_1.InitParam;
begin
  with mdata do
  begin
    with Frm_Edit_Item do
    begin
{      E_FProductName.Text :=Trim(FieldByName('FProductName').AsString);
      E_FType.Text :=Trim(FieldByName('FType').AsString);
      E_FPartsCode.Text :='';
      E_FPartsName.Text :='';
      E_FPartsAlias.EditValue :='';
 }   end;
  end;
end;

procedure TFrm_DesignBOM_1.P_select;
var qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.Connection:=mdlData.conn;
  qry.CommandTimeout:=500;
//  cxGv.DataController.DataSource.DataSet:=qry;
//  Ds_Mdata.DataSet:=qry;
  try
    qry.SQL.Text:='select IsEdit=cast(0 as bit),(djjz-djde) as jzdec,* from V_DesignBOM_Structure where FFullNumber like :FFullNumber order by FFullNumber';
    qry.Parameters[0].Value:=Trim(E_FFullNumber.Text)+'%';
    qry.Open;
  finally
     ;
  end;
  mdata.CopyFromDataSet(qry);
  mdata.Active:=True;
  cxGvColumn(cxGV,mdata);
//  cxGvColumnqry(cxGV,qry);
  qry.Free;
end;


procedure TFrm_DesignBOM_1.CancelBtnClick(Sender: TObject);
begin
  inherited;
  self.Close ;
end;

procedure TFrm_DesignBOM_1.FormResize(Sender: TObject);
begin
  inherited;
   L_title.Caption:='设计BOM';
   Self.Caption:='设计BOM';
end;

procedure TFrm_DesignBOM_1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=cafree;
  Frm_DesignBOM:=nil;
end;

procedure TFrm_DesignBOM_1.TB_EXITClick(Sender: TObject);
begin
  inherited;
  self.Close;
end;

procedure TFrm_DesignBOM_1.TB_DownClick(Sender: TObject);
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

procedure TFrm_DesignBOM_1.E_FFullNumberPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.Connection:=mdlData.conn;
  qry.CommandTimeout:=500;
  try
    qry.SQL.Text:='select th,ssth,FFullNumber from V_DesignBOM_Structure where js<3 order by FPartsCodeID';
    qry.Open;
  finally
     ;
  end;
  If qry.RecordCount>0 then
  begin
    selValue:=select('请选择项目及部件','th','ssth','th','th',qry);
    If length(selValue)>0 then
    begin
      E_FFullNumber.Text:=qry.FieldByName('FFullNumber').AsString;
      Self.P_Select;
    end;
  end;
  qry.Free;

end;

procedure TFrm_DesignBOM_1.TB_EDITClick(Sender: TObject);
var
  proc:TADOStoredProc;
begin
  proc:=TADOStoredProc.Create(self);
  proc.Connection:=mdlData.conn;
  proc.CommandTimeout:=500;

  ShowPrograss('正在进行部件汇总，请稍候……',self);
  try
    proc.ProcedureName:='P_Design_bjhz;1';
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=50;
      name := '@FFullNumber';
      value:=Trim(E_FFullNumber.Text);
    end;
    proc.Open;
    finally
     ;
  end;
  Messagedlg('汇总完毕!',mtInformation,[mbok],0);

  mdata.CopyFromDataSet(proc);
  mdata.Active:=True;
  cxGvColumn(cxGV,mdata);
  proc.Free;

end;

procedure TFrm_DesignBOM_1.TB_appClick(Sender: TObject);
begin
  inherited;
 Self.P_Select;

end;

procedure TFrm_DesignBOM_1.ToolButton2Click(Sender: TObject);
begin
  inherited;
  ExportToExcel(cxGrid,True,TRue);
end;

procedure TFrm_DesignBOM_1.TB_DELClick(Sender: TObject);
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
        //Self.TB_RefClick(Sender);
      end;
    finally
       ;
    end;
  end; 

end;

end.
