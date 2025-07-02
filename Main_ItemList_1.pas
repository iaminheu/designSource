unit Main_ItemList_1;

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
  cxGroupBox, cxCheckBox, cxCurrencyEdit, cxTimeEdit, cxBlobEdit, jpeg;

type
  TFrm_ItemList_1 = class(TFrm_GridBass)
    MData: TdxMemData;
    DS_Mdata: TDataSource;
    cxGrid: TcxGrid;
    cxGV: TcxGridDBTableView;
    cxGL: TcxGridLevel;
    ImageList: TImageList;
    Panel1: TPanel;
    ToolBar1: TToolBar;
    ToolButton5: TToolButton;
    TB_Down: TToolButton;
    TB_refresh: TToolButton;
    ToolButton1: TToolButton;
    TB_PRIN: TToolButton;
    TB_EXIT: TToolButton;
    frReport: TfrReport;
    frDBDataSet: TfrDBDataSet;
    FPartsName: TcxGridDBColumn;
    DBGrid1: TDBGrid;
    FPartsCode: TcxGridDBColumn;
    E_FItemNumber: TcxButtonEdit;
    TB_Update: TToolButton;
    FFullNumber: TcxGridDBColumn;
    FIsFinsh: TcxGridDBColumn;
    FInputDate: TcxGridDBColumn;
    FItemNumber: TcxGridDBColumn;
    FItemListId: TcxGridDBColumn;
    FItemId: TcxGridDBColumn;
    FItemNo: TcxGridDBColumn;
    FPartsID: TcxGridDBColumn;
    FInputID: TcxGridDBColumn;
    FInputName: TcxGridDBColumn;
    FPartsNumber: TcxGridDBColumn;
    TB_add: TToolButton;
    procedure CancelBtnClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure S_Edit;
    procedure P_Select;
    procedure TB_EXITClick(Sender: TObject);
    procedure TB_refreshClick(Sender: TObject);
    procedure TB_DownClick(Sender: TObject);
    procedure MDataAfterEdit(DataSet: TDataSet);
    procedure cxGridExit(Sender: TObject);
    procedure E_FItemNumberPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure TB_addClick(Sender: TObject);
    procedure E_FItemNumberPropertiesChange(Sender: TObject);
  private
    P_i:boolean;
    //procedure InitParam;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_ItemList_1: TFrm_ItemList_1;
    P_FItemNo,P_th:String;
    P_FItemid,P_FProductId:integer;

implementation

uses FRMDATA, FRMMAIN, COMMON, FrmSelect,
     Edit_ItemList,  Main_ItemList;

{$R *.dfm}

procedure TFrm_ItemList_1.P_select;
var qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.Connection:=mdlData.conn;
  qry.CommandTimeout:=500;
  try
    qry.SQL.Text:='select IsEdit=cast(0 as bit),* from V_ItemList where FItemNumber=:FItemNumber order by FPartsCode';
    qry.Parameters[0].Value:=Trim(E_FItemNumber.Text);
    qry.Open;
  finally
     ;
  end;
  Mdata.CopyFromDataSet(qry);
  Mdata.Active:=True;
  Mdata.First;
  qry.Free;
end;

procedure TFrm_ItemList_1.S_Edit;
var
 qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  try
    qry.SQL.Text:='select IsEdit=cast(0 as bit),'''+P_th+''' as FItemNumber,'
                 +'isnull(b.FItemId,'''') as FItemId, '
                 +'case isnull(b.FItemId,'''') when '''' then cast(0 as bit) else cast(1 as bit) end as IsApp,'''
                 +P_FItemNo+''' as FItemNo, a.FPartsId, '
                 +'case isnull(b.FpartsNumber,'''') when '''' then '''+P_th+'''+''.''+a.FPartsCode else b.FpartsNumber end as FpartsNumber,'
                 +'case isnull(b.FFullNumber,'''') when '''' then '''+P_FItemNo+'''+''.''+Replicate(''0'',3-len(cast(a.FPartsCode as int)))+cast(cast(a.FPartsCode as int) as Varchar) else b.FFullNumber end as FFullNumber,'
                 +'ISNULL(b.FIsFinsh, 0) AS FIsFinsh, b.FInputDate, b.FInputId,a.* from '
                 +'(select * from V_ProductParts where FProductid=:FProductid ) as a left outer join '
                 +'(select * from V_ItemList where FProductid=:FProductid and FItemid=:FItemid ) as b on a.FProductid=b.FProductid and a.FPartsCode=b.FPartsCode order by FFullNumber ';
    qry.Parameters[0].Value:=P_FProductId;
    qry.Parameters[1].Value:=P_FProductId;
    qry.Parameters[2].Value:=P_FItemid;
    qry.Open;
  finally
     ;
  end;


  If qry.RecordCount>0 then
  begin
    with Frm_Edit_ItemList do
    begin
      //E_FItemNumber.Text :=qry.FieldByName('FItemNumber').Value;
     // E_FItemId.Text :=qry.FieldByName('FItemId').Value;
     // E_FItemNo.Text :=qry.FieldByName('FItemNO').Value;
      E_FItemNumber.Text := P_th;
      E_FItemId.EditValue :=P_FItemId;
      E_FItemNo.Text :=P_FItemNo;
      E_FProductId.EditValue :=P_FProductId;

      E_FItemNumber.Enabled:=False;
      E_FItemId.Enabled:=False;
    end;
  end;

  Frm_Edit_ItemList.Mdata.CopyFromDataSet(qry);
  Frm_Edit_ItemList.Mdata.Active:=True;
  Frm_Edit_ItemList.Mdata.First;
 
end;

procedure TFrm_ItemList_1.CancelBtnClick(Sender: TObject);
begin
  inherited;
  self.Close ;
end;

procedure TFrm_ItemList_1.FormResize(Sender: TObject);
begin
  inherited;
   L_title.Caption:='项目部件维护';
   Self.Caption:='项目部件维护';
end;

procedure TFrm_ItemList_1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=cafree;
  Frm_ItemList:=nil;
end;

procedure TFrm_ItemList_1.TB_EXITClick(Sender: TObject);
begin
  inherited;
  self.Close;
end;

procedure TFrm_ItemList_1.TB_refreshClick(Sender: TObject);
var
  I_index:integer;
begin
  inherited;
  I_index:=mData.RecNo ;
  Self.P_Select;
  If (I_index<mData.RecordCount) and (I_index<>-1) then
     mData.RecNo :=I_index
  else
     mData.Last;

end;

procedure TFrm_ItemList_1.TB_DownClick(Sender: TObject);
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

procedure TFrm_ItemList_1.MDataAfterEdit(DataSet: TDataSet);
begin
  inherited;
  DataSet['IsEdit']:=True;
  TB_update.Visible:=True;
end;

procedure TFrm_ItemList_1.cxGridExit(Sender: TObject);
begin
  inherited;
{  If TB_update.Visible then
  If messagedlg('数据已修改是否保存？',mtInformation,[mbyes,mbno],0)=mryes then
    TB_update.Click;
}
end;

procedure TFrm_ItemList_1.E_FItemNumberPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.Connection:=mdlData.conn;
  qry.CommandTimeout:=500;
  try
    qry.SQL.Text:='select * from (Select distinct FItemNumber as th,FProductid,FItemNo,FItemid,FProductName as ssth,1 as leaf from V_ItemList '
                 +'union '
                 +'Select distinct FProductName as th,0 as FProductid,''  '' as FItemNo,0 as FItemid,''  '' as ssth,0 as leaf from V_ItemList) as t order by ssth,th';


    qry.Open;
  finally
     ;
  end;


  selValue:=select('请选择产品类型','th','ssth','th','th',qry);
  If (Length(selValue)>0) and (qry.FieldByName('leaf').Value=1) then
  begin
    E_FItemNumber.Text:=qry.FieldByName('th').AsString;
    P_th:=qry.FieldByName('th').AsString;
    P_FItemId:=qry.FieldByName('FItemId').Value;
    P_FItemNo:=qry.FieldByName('FItemNo').AsString;
    P_FProductid:=qry.FieldByName('FProductid').Value;

    Self.P_Select;
  end
  else
    messagedlg('请选择明细！',mtInformation,[mbok],0);
  qry.Free;

end;

procedure TFrm_ItemList_1.TB_addClick(Sender: TObject);
var qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  try
    qry.SQL.Text:='Select * from V_ItemList where FItemNumber=:FItemNumber';
    qry.Parameters.FindParam('FItemNumber').value:=Trim(E_FItemNumber.Text);
    qry.Open;
  finally
     ;
  end;
  If qry.RecordCount>0 then
  begin
    Application.CreateForm(TFrm_Edit_ItemList,Frm_Edit_ItemList);
    Frm_Edit_ItemList.Caption :='数据信息（编辑）';
    Frm_Edit_ItemList.P_state :=1;
    Self.S_Edit;
    //  Frm_Edit_ItemList.E_FItemNumber:=Frm_Edit_ItemList.mdata['FItemNumber'];

    Frm_Edit_ItemList.ShowModal;
    Frm_Edit_ItemList.Free;
    Tb_refresh.Click;
  end
  else
  begin
    Application.CreateForm(TFrm_Edit_ItemList,Frm_Edit_ItemList);
    Frm_Edit_ItemList.Caption :='数据信息（增加）';
    Frm_Edit_ItemList.P_state :=0;
    Frm_Edit_ItemList.ShowModal;
    Frm_Edit_ItemList.Free;
  end;
end;

procedure TFrm_ItemList_1.E_FItemNumberPropertiesChange(Sender: TObject);
begin
  inherited;
  If E_FItemNumber.Text='' then
  begin
    TB_add.Caption:='新增';
  end
  else
    TB_add.Caption:='修改';
end;

end.
