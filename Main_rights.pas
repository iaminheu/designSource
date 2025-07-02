unit Main_rights;

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
  cxGroupBox, cxCheckBox, jpeg, cxBlobEdit;

type
  TFrm_rights = class(TFrm_GridBass)
    MData: TdxMemData;
    DS_Mdata: TDataSource;
    ADOQuery: TADOQuery;
    DS_ADOQuery: TDataSource;
    cxGrid: TcxGrid;
    cxGV: TcxGridDBTableView;
    mdlName: TcxGridDBColumn;
    FPermissiom: TcxGridDBColumn;
    FrmName: TcxGridDBColumn;
    cxGL: TcxGridLevel;
    ImageList: TImageList;
    Panel1: TPanel;
    ToolBar1: TToolBar;
    TB_app: TToolButton;
    TB_EDIT: TToolButton;
    TB_DEL: TToolButton;
    ToolButton5: TToolButton;
    TB_qry: TToolButton;
    TB_refresh: TToolButton;
    ToolButton1: TToolButton;
    TB_PRIN: TToolButton;
    TB_EXIT: TToolButton;
    frReport: TfrReport;
    frDBDataSet: TfrDBDataSet;
    Del: TcxGridDBColumn;
    Edit: TcxGridDBColumn;
    Qry: TcxGridDBColumn;
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
    DB_Frmrights: TADOTable;
    DS_Frmrights: TDataSource;
    App: TcxGridDBColumn;
    Prin: TcxGridDBColumn;
    E_lkdh: TcxComboBox;
    sh: TcxGridDBColumn;
    Out: TcxGridDBColumn;
    Txd: TcxGridDBColumn;
    Rxd: TcxGridDBColumn;
    Submit: TcxGridDBColumn;
    Check: TcxGridDBColumn;
    Audit: TcxGridDBColumn;
    PushDown: TcxGridDBColumn;
    Accept: TcxGridDBColumn;
    Feedback: TcxGridDBColumn;
    procedure CancelBtnClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TB_EDITClick(Sender: TObject);
    procedure S_Edit;
    procedure TB_EXITClick(Sender: TObject);
    procedure TB_refreshClick(Sender: TObject);
    procedure TB_DELClick(Sender: TObject);
    procedure TB_appClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_rights: TFrm_rights;

implementation

uses FRMDATA, COMMON, Edit_rights;

{$R *.dfm}

procedure TFrm_rights.S_Edit;
begin
  with DB_Frmrights do
  begin
    with Frm_Edit_rights do
    begin
      E_FPermission.Text :=Trim(FieldByName('FPermission').AsString);
      E_mdlname.Text :=Trim(FieldByName('mdlname').AsString);
      E_frmname.Text :=Trim(FieldByName('frmname').AsString);
      E_app.EditValue :=FieldByName('app').Value;
      E_edit.EditValue :=FieldByName('edit').Value;
      E_qry.EditValue :=FieldByName('qry').Value;
      E_prin.EditValue :=FieldByName('prin').Value;
      E_del.EditValue :=FieldByName('del').Value;
      E_sh.EditValue :=FieldByName('sh').Value;
      E_Txd.EditValue :=FieldByName('Txd').Value;
      E_Rxd.EditValue :=FieldByName('Rxd').Value;
      E_Out.EditValue :=FieldByName('Out').Value;
      E_Submit.EditValue :=FieldByName('Submit').Value;
      E_FCheck.EditValue :=FieldByName('FCheck').Value;
      E_Audit.EditValue :=FieldByName('Audit').Value;
      E_PushDown.EditValue :=FieldByName('PushDown').Value;
      E_Accept.EditValue :=FieldByName('Accept').Value;
      E_Feedback.EditValue :=FieldByName('Feedback').Value;
    end;
  end;

end;

procedure TFrm_rights.CancelBtnClick(Sender: TObject);
begin
  inherited;
  self.Close ;
end;

procedure TFrm_rights.FormResize(Sender: TObject);
begin
  inherited;
   L_title.Caption:='表单权限设置';
   Self.Caption:='表单权限设置';
end;

procedure TFrm_rights.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=cafree;
  Frm_rights:=nil;
end;

procedure TFrm_rights.TB_EDITClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFrm_Edit_rights,Frm_Edit_rights);
  Frm_Edit_rights.Caption :='数据信息（编辑）';
  Frm_Edit_rights.P_state :=1;
  Frm_Edit_rights.P_id :=DB_frmrights.FieldByName('id').Asstring;;

  Self.S_Edit;
  Frm_Edit_rights.ShowModal;
  Frm_Edit_rights.Free;
  Tb_refresh.Click;
end;

procedure TFrm_rights.TB_EXITClick(Sender: TObject);
begin
  inherited;
  self.Close;
end;

procedure TFrm_rights.TB_refreshClick(Sender: TObject);
var
  I_index:integer;
begin
  inherited;
  I_index:=DB_Frmrights.RecNo ;
  DB_Frmrights.Close ;
  DB_Frmrights.Open ;

  If (I_index<DB_Frmrights.RecordCount) and (I_index<>-1) then
     DB_Frmrights.RecNo :=I_index
  else
     DB_Frmrights.Last;
  DBGrid1.DataSource:=DS_Frmrights;

end;

procedure TFrm_rights.TB_DELClick(Sender: TObject);
begin
  inherited;
  If DB_Frmrights.RecordCount>0 then
  begin
    If messagedlg('警告：删除产品信息数据可能产生严重数据丢失现象，请不要在此删除产品信息数据'+chr(13)+chr(13)
                 +'删除数据操作将不可恢复，确定要删除本记录吗？',mtWarning,[mbyes,mbno],0)=mryes then
    If messagedlg('再次警告：为了保证数据库内数据信息的完整性，请不要在此产品信息数据'+chr(13)+chr(13)
                 +'删除数据操作将不可恢复，确定要删除本记录吗？',mtWarning,[mbyes,mbno],0)=mryes then
    DB_Frmrights.Delete;
    tb_refresh.Click ;
  end
  else
    If messagedlg('无记录可删除!'+chr(13)+chr(13),mtWarning,[mbyes,mbno],0)=mryes then
end;

procedure TFrm_rights.TB_appClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFrm_Edit_rights,Frm_Edit_rights);
  Frm_Edit_rights.Caption :='数据信息（增加）';
  Frm_Edit_rights.P_state :=0;
  with DB_frmrights do
  begin
    If RecordCount>0 then
    with Frm_Edit_rights do
    begin
      E_FPermission.Text:=FieldByName('FPermission').AsString;
      E_mdlname.Text:=FieldByName('mdlname').AsString;
      E_frmname.Text:=FieldByName('frmname').AsString;
      E_app.EditValue :=0;
      E_edit.EditValue :=0;
      E_qry.EditValue :=0;
      E_prin.EditValue :=0;
      E_del.EditValue :=0;
      E_sh.EditValue :=0;
      E_Out.EditValue :=0;
    end;
  end;
  Frm_Edit_rights.ShowModal;
  Frm_Edit_rights.Free;
  Tb_Refresh.Click ;
  DB_frmrights.Last ;

end;

procedure TFrm_rights.FormCreate(Sender: TObject);
begin
  inherited;
  DB_Frmrights.Active:=True;  
end;

end.
