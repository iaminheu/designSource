unit Main_ProductParts_1;

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
  TFrm_ProductParts_1 = class(TFrm_GridBass)
    MData: TdxMemData;
    DS_Mdata: TDataSource;
    cxGrid: TcxGrid;
    cxGV: TcxGridDBTableView;
    FProductName: TcxGridDBColumn;
    FProductId: TcxGridDBColumn;
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
    FpartsAlias: TcxGridDBColumn;
    FPartsName: TcxGridDBColumn;
    FUse: TcxGridDBColumn;
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
    FPartsCode: TcxGridDBColumn;
    E_FProductName: TcxButtonEdit;
    TB_Update: TToolButton;
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
    procedure E_FTypePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure TB_DownClick(Sender: TObject);
    procedure TB_UpdateClick(Sender: TObject);
    procedure MDataAfterEdit(DataSet: TDataSet);
    procedure cxGridExit(Sender: TObject);
  private
    P_i:boolean;
    procedure InitParam;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_ProductParts_1: TFrm_ProductParts_1;

implementation

uses FRMDATA, FRMMAIN, COMMON, Edit_ProductParts, FrmSelect,
  Main_ProductParts;

{$R *.dfm}
procedure TFrm_ProductParts_1.InitParam;
begin
  with mdata do
  begin
    with Frm_Edit_ProductParts do
    begin
      E_FProductName.Text :=Trim(FieldByName('FProductName').AsString);
      E_FProductId.EditValue :=FieldByName('FProductId').Value;
      E_FPartsCode.Text :='';
      E_FPartsName.Text :='';
      E_FPartsAlias.EditValue :='';
    end;
  end;
end;

procedure TFrm_ProductParts_1.P_select;
var qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.Connection:=mdlData.conn;
  qry.CommandTimeout:=500;
  try
    qry.SQL.Text:='select IsEdit=cast(0 as bit),* from V_ProductParts where FProductName=:FProductName';
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

procedure TFrm_ProductParts_1.S_Edit;
begin
  with mdata do
  begin
    with Frm_Edit_ProductParts do
    begin
      E_FProductName.Text :=Trim(FieldByName('FProductName').AsString);
      E_FProductId.Text :=FieldByName('FProductId').Value;
      E_FPartsCode.Text :=Trim(FieldByName('FPartsCode').AsString);
      E_FPartsName.Text :=Trim(FieldByName('FPartsName').AsString);
      E_FPartsAlias.EditValue :=FieldByName('FPartsAlias').Value;
    end;
  end;

end;

procedure TFrm_ProductParts_1.CancelBtnClick(Sender: TObject);
begin
  inherited;
  self.Close ;
end;

procedure TFrm_ProductParts_1.FormResize(Sender: TObject);
begin
  inherited;
   L_title.Caption:='产品部件设置';
   Self.Caption:='产品部件设置';
end;

procedure TFrm_ProductParts_1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=cafree;
  Frm_ProductParts_1:=nil;
end;

procedure TFrm_ProductParts_1.TB_EDITClick(Sender: TObject);
begin
  inherited;
  begin
    If Mdata.RecordCount>0 then
    begin
      Application.CreateForm(TFrm_Edit_ProductParts,Frm_Edit_ProductParts);
      Frm_Edit_ProductParts.Caption :='数据信息（编辑）';
      Frm_Edit_ProductParts.P_state :=1;
      Frm_Edit_ProductParts.P_id:=mdata.FieldByName('FPartsId').Asstring;
      Self.S_Edit;
      Frm_Edit_ProductParts.ShowModal;
      Frm_Edit_ProductParts.Free;
      Tb_refresh.Click;
    end;
  end;
end;

procedure TFrm_ProductParts_1.TB_EXITClick(Sender: TObject);
begin
  inherited;
  self.Close;
end;

procedure TFrm_ProductParts_1.TB_refreshClick(Sender: TObject);
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

procedure TFrm_ProductParts_1.TB_DELClick(Sender: TObject);
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
        qry.SQL.Text:='Delete from T_ProductParts where FPartsId=:FPartsId';
        qry.Parameters[0].Value:=mdata['FPartsId'];
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

procedure TFrm_ProductParts_1.TB_appClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFrm_Edit_ProductParts,Frm_Edit_ProductParts);
  Frm_Edit_ProductParts.Caption :='数据信息（增加）';
  Frm_Edit_ProductParts.P_state :=0;
  Self.S_Edit;
  Frm_Edit_ProductParts.ShowModal;
  Frm_Edit_ProductParts.Free;
  Tb_Refresh.Click ;

end;

procedure TFrm_ProductParts_1.E_FTypePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.Connection:=mdlData.conn;
  qry.CommandTimeout:=500;
  try
    qry.SQL.Text:='select distinct FProductId,FProductName from V_ProductParts order by FProductName';
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

procedure TFrm_ProductParts_1.TB_DownClick(Sender: TObject);
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

procedure TFrm_ProductParts_1.TB_UpdateClick(Sender: TObject);
var
  IsEdit:bool;
  qry: TADOQuery;
  I_index:integer;
begin
  I_index:=mData.RecNo ;
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
        qry.SQL.Text:='Update T_ProductParts set FType=:FType,FPartsCode=:FPartsCode,'
                     +'FPartsName=:FPartsName,FPartsAlias=:FPartsAlias where FPartsid=:FPartsid';
        while not mdata.EoF do
        begin
          IsEdit:=mData.FieldByName('IsEdit').AsBoolean;
          If IsEdit then
          begin
            qry.Parameters[0].Value:=mData['FType'];
            qry.Parameters[1].Value:=mData['FPartsCode'];
            qry.Parameters[2].Value:=mData['FPartsName'];
            qry.Parameters[3].Value:=mData['FPartsAlias'];
            qry.Parameters[4].Value:=mData['FPartsid'];
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

end;

procedure TFrm_ProductParts_1.MDataAfterEdit(DataSet: TDataSet);
begin
  inherited;
  DataSet['IsEdit']:=True;
  TB_update.Visible:=True;
end;

procedure TFrm_ProductParts_1.cxGridExit(Sender: TObject);
begin
  inherited;
  If TB_update.Visible then
  If messagedlg('数据已修改是否保存？',mtInformation,[mbyes,mbno],0)=mryes then
    TB_update.Click;

end;

end.
