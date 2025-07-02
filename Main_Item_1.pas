unit Main_Item_1;

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
  cxGroupBox, cxCheckBox, cxCurrencyEdit, cxTimeEdit;

type
  TFrm_Item_1 = class(TFrm_GridBass)
    MData: TdxMemData;
    DS_Mdata: TDataSource;
    cxGrid: TcxGrid;
    cxGV: TcxGridDBTableView;
    FPactNo: TcxGridDBColumn;
    FProductId: TcxGridDBColumn;
    FItemId: TcxGridDBColumn;
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
    FClientShortName: TcxGridDBColumn;
    FClientFullName: TcxGridDBColumn;
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
    FFileNo: TcxGridDBColumn;
    E_FProductName: TcxButtonEdit;
    TB_Update: TToolButton;
    FItemNumber: TcxGridDBColumn;
    FItemModel: TcxGridDBColumn;
    FDesignDate: TcxGridDBColumn;
    FPerCode: TcxGridDBColumn;
    FItemNo: TcxGridDBColumn;
    procedure CancelBtnClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TB_EDITClick(Sender: TObject);
    procedure S_Edit;
    procedure P_Select;
    procedure TB_EXITClick(Sender: TObject);
    procedure TB_refreshClick(Sender: TObject);
    procedure TB_DELClick(Sender: TObject);
    procedure TB_appClick(Sender: TObject);
    procedure TB_DownClick(Sender: TObject);
    procedure TB_UpdateClick(Sender: TObject);
    procedure MDataAfterEdit(DataSet: TDataSet);
    procedure cxGridExit(Sender: TObject);
    procedure E_FProductNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    P_i:boolean;
    procedure InitParam;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Item_1: TFrm_Item_1;

implementation

uses FRMDATA, FRMMAIN, COMMON, Edit_Item, FrmSelect, Main_Item;

{$R *.dfm}
procedure TFrm_Item_1.InitParam;
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

procedure TFrm_Item_1.P_select;
var qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.Connection:=mdlData.conn;
  qry.CommandTimeout:=500;
  try
    qry.SQL.Text:='select IsEdit=cast(0 as bit),* from V_Item where FProductName=:FProductName';
    qry.Parameters[0].Value:=Trim(E_FProductName.Text);
    qry.Open;
  finally
     ;
  end;
  Mdata.CopyFromDataSet(qry);
  Mdata.Active:=True;
  Mdata.First;
  qry.Free;
end;

procedure TFrm_Item_1.S_Edit;
begin
  with mdata do
  begin
    If mdata.RecordCount>0 then
    begin
      with Frm_Edit_Item do
      begin
        E_FItemNo.Text :=Trim(FieldByName('FItemNo').AsString);
        E_FPactNo.Text :=Trim(FieldByName('FPactNo').AsString);
        E_FFileNo.Text :=Trim(FieldByName('FFileNo').AsString);
        E_FClientFullName.Text :=Trim(FieldByName('FClientFullName').AsString);
        E_FClientShortName.Text :=Trim(FieldByName('FClientShortName').AsString);
        E_FProductId.Text :=FieldByName('FProductId').Value;
        E_FProductName.Text :=Trim(FieldByName('FProductName').AsString);
        E_FItemNumber.Text :=Trim(FieldByName('FItemNumber').AsString);
        E_FItemModel.Text :=Trim(FieldByName('FItemModel').AsString);
        E_FDesignDate.Date :=FieldByName('FDesignDate').AsDateTime;
      end;
    end;
  end;

end;

procedure TFrm_Item_1.CancelBtnClick(Sender: TObject);
begin
  inherited;
  self.Close ;
end;

procedure TFrm_Item_1.FormResize(Sender: TObject);
begin
  inherited;
   L_title.Caption:='项目设置';
   Self.Caption:='项目设置';
end;

procedure TFrm_Item_1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=cafree;
  Frm_Item:=nil;
end;

procedure TFrm_Item_1.TB_EDITClick(Sender: TObject);
begin
  inherited;
  begin
    If Mdata.RecordCount>0 then
    begin
      Application.CreateForm(TFrm_Edit_Item,Frm_Edit_Item);
      Frm_Edit_Item.Caption :='数据信息（编辑）';
      Frm_Edit_Item.P_state :=1;
      Frm_Edit_Item.P_id:=mdata.FieldByName('FItemId').Asstring;
      Self.S_Edit;
      Frm_Edit_Item.ShowModal;
      Frm_Edit_Item.Free;
      Tb_refresh.Click;
    end;
  end;
end;

procedure TFrm_Item_1.TB_EXITClick(Sender: TObject);
begin
  inherited;
  self.Close;
end;

procedure TFrm_Item_1.TB_refreshClick(Sender: TObject);
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

procedure TFrm_Item_1.TB_DELClick(Sender: TObject);
var
  qry:TADOQuery;
begin
  inherited;
  If mdata.RecordCount>0 then
  begin
    If Messagedlg(Warning0001+chr(13)+chr(13)+Warning0002,mtWarning,[mbyes,mbno],0)=mryes then
    If Messagedlg(Warning0003+chr(13)+chr(13)+Warning0002,mtWarning,[mbyes,mbno],0)=mryes then
    begin
      qry:=TADOQuery.Create(self);
      qry.Connection:=mdlData.conn;
      try
        qry.SQL.Text:='Delete from T_Item where FItemId=:FItemId';
        qry.Parameters[0].Value:=mdata['FItemId'];
        qry.ExecSQL;
      finally
         ;
      end;
      mdata.Delete;
      TB_Refresh.Click ;
    end;
  end
  else
    Messagedlg(Infmsg0006,mtInformation,[mbok],0);
end;

procedure TFrm_Item_1.TB_appClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFrm_Edit_Item,Frm_Edit_Item);
  Frm_Edit_Item.Caption :='数据信息（增加）';
  Frm_Edit_Item.P_state :=0;
  Self.S_Edit;
  Frm_Edit_Item.ShowModal;
  Frm_Edit_Item.Free;
  Tb_Refresh.Click ;

end;

procedure TFrm_Item_1.TB_DownClick(Sender: TObject);
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

procedure TFrm_Item_1.TB_UpdateClick(Sender: TObject);
var
  IsEdit:bool;
  qry: TADOQuery;
  I_index:integer;
begin
{  I_index:=mData.RecNo ;
  Mdata.Edit;
  Mdata.Post;
  If ShowMsg('是否保存已修改的数据？保存后不可恢复！','提示') then
  begin
    with mdata do
    begin
      mData.DisableControls;
      First;
      qry:=TADOQuery.Create(Self);
      try
        qry.Connection:=mdlData.conn;
        qry.SQL.Text:='Update T_Item set FType=:FType,FPartsCode=:FPartsCode,'
                     +'FPartsName=:FPartsName,FPartsAlias=:FPartsAlias where Fid=:Fid';
        while not mdata.EoF do
        begin
          IsEdit:=mData.FieldByName('IsEdit').AsBoolean;
          If IsEdit then
          begin
            qry.Parameters[0].Value:=mData['FType'];
            qry.Parameters[1].Value:=mData['FPartsCode'];
            qry.Parameters[2].Value:=mData['FPartsName'];
            qry.Parameters[3].Value:=mData['FPartsAlias'];
            qry.Parameters[4].Value:=mData['Fid'];
            qry.ExecSQL;
          end;
          next;
        end;
      finally
        ;
      end;
    end;
    mData.EnableControls;
  end;
  qry.Free;
  TB_update.Visible:=False;
  If (I_index<mData.RecordCount) and (I_index<>-1) then
     mData.RecNo :=I_index
  else
     mData.Last;
}
end;

procedure TFrm_Item_1.MDataAfterEdit(DataSet: TDataSet);
begin
  inherited;
  DataSet['IsEdit']:=True;
  TB_update.Visible:=True;
end;

procedure TFrm_Item_1.cxGridExit(Sender: TObject);
begin
  inherited;
  If TB_update.Visible then
  If messagedlg('数据已修改是否保存？',mtInformation,[mbyes,mbno],0)=mryes then
    TB_update.Click;

end;

procedure TFrm_Item_1.E_FProductNamePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.Connection:=mdlData.conn;
  qry.CommandTimeout:=500;
  try
    qry.SQL.Text:='Select distinct FProductName from V_Item order by FProductName';
    qry.Open;
  finally
     ;
  end;
  If qry.RecordCount>0 then
  begin
    selValue:=select('请选择产品类型','FProductName','FProductName','FProductName','FProductName',qry);
    If length(selValue)>0 then
    begin
      E_FProductName.Text:=qry.FieldByName('FProductName').AsString;
      Self.P_Select;
    end;
  end;
  qry.Free;

end;

end.
