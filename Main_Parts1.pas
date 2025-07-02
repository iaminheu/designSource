unit Main_Parts1;

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
  cxLookAndFeelPainters, cxButtons, TFlatPanelUnit;

type
  TFrm_Parts1 = class(TFrm_GridBass)
    MData: TdxMemData;
    DS_Mdata: TDataSource;
    ADOQuery: TADOQuery;
    DS_ADOQuery: TDataSource;
    ImageList: TImageList;
    Panel1: TPanel;
    ToolBar1: TToolBar;
    TB_app: TToolButton;
    TB_EDIT: TToolButton;
    TB_DEL: TToolButton;
    ToolButton5: TToolButton;
    TB_refresh: TToolButton;
    ToolButton1: TToolButton;
    TB_PRIN: TToolButton;
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
    TB_Sel: TToolButton;
    RzSizePanel2: TRzSizePanel;
    PC_1: TRzPageControl;
    TS_Tree: TRzTabSheet;
    MyTreeView: TTreeView;
    TS_Edit: TRzTabSheet;
    cxButtonEdit1: TcxButtonEdit;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle20: TcxStyle;
    cxStyle21: TcxStyle;
    cxStyle22: TcxStyle;
    cxStyle23: TcxStyle;
    cxStyle24: TcxStyle;
    cxStyle25: TcxStyle;
    cxStyle26: TcxStyle;
    cxStyle27: TcxStyle;
    cxStyle28: TcxStyle;
    cxStyle29: TcxStyle;
    cxStyle30: TcxStyle;
    cxStyle31: TcxStyle;
    cxStyle32: TcxStyle;
    cxStyle33: TcxStyle;
    cxStyle34: TcxStyle;
    cxStyle35: TcxStyle;
    cxStyle36: TcxStyle;
    cxStyle37: TcxStyle;
    cxStyle38: TcxStyle;
    cxGridTableViewStyleSheet1: TcxGridTableViewStyleSheet;
    cxStyleRepository2: TcxStyleRepository;
    cxStyle39: TcxStyle;
    cxStyle40: TcxStyle;
    cxStyle41: TcxStyle;
    cxStyle42: TcxStyle;
    cxStyle43: TcxStyle;
    cxStyle44: TcxStyle;
    cxStyle45: TcxStyle;
    cxStyle46: TcxStyle;
    cxStyle47: TcxStyle;
    cxStyle48: TcxStyle;
    cxStyle49: TcxStyle;
    cxStyle50: TcxStyle;
    cxStyle51: TcxStyle;
    cxStyle52: TcxStyle;
    cxStyle53: TcxStyle;
    cxStyle54: TcxStyle;
    cxStyle55: TcxStyle;
    cxStyle56: TcxStyle;
    cxStyle57: TcxStyle;
    cxGridTableViewStyleSheet2: TcxGridTableViewStyleSheet;
    cxStyleRepository3: TcxStyleRepository;
    cxStyle58: TcxStyle;
    cxStyle59: TcxStyle;
    cxStyle60: TcxStyle;
    cxStyle61: TcxStyle;
    cxStyle62: TcxStyle;
    cxStyle63: TcxStyle;
    cxStyle64: TcxStyle;
    cxStyle65: TcxStyle;
    cxStyle66: TcxStyle;
    cxStyle67: TcxStyle;
    cxStyle68: TcxStyle;
    cxStyle69: TcxStyle;
    cxStyle70: TcxStyle;
    cxStyle71: TcxStyle;
    cxStyle72: TcxStyle;
    cxStyle73: TcxStyle;
    cxStyle74: TcxStyle;
    cxStyle75: TcxStyle;
    cxStyle76: TcxStyle;
    cxGridTableViewStyleSheet3: TcxGridTableViewStyleSheet;
    cxStyleRepository4: TcxStyleRepository;
    cxStyle77: TcxStyle;
    cxStyle78: TcxStyle;
    cxStyle79: TcxStyle;
    cxStyle80: TcxStyle;
    cxStyle81: TcxStyle;
    cxStyle82: TcxStyle;
    cxStyle83: TcxStyle;
    cxStyle84: TcxStyle;
    cxStyle85: TcxStyle;
    cxStyle86: TcxStyle;
    cxStyle87: TcxStyle;
    cxStyle88: TcxStyle;
    cxStyle89: TcxStyle;
    cxStyle90: TcxStyle;
    cxStyle91: TcxStyle;
    cxStyle92: TcxStyle;
    cxStyle93: TcxStyle;
    cxStyle94: TcxStyle;
    cxStyle95: TcxStyle;
    cxGridTableViewStyleSheet4: TcxGridTableViewStyleSheet;
    Label1: TLabel;
    E_FParentName: TcxTextEdit;
    E_FParentNumber: TcxButtonEdit;
    E_FNumber: TcxTextEdit;
    Label7: TLabel;
    Label2: TLabel;
    E_FName: TcxButtonEdit;
    Label4: TLabel;
    E_FModel: TcxButtonEdit;
    Label5: TLabel;
    E_FRemark: TcxButtonEdit;
    Label6: TLabel;
    E_FDetail: TcxCheckBox;
    OKBtn: TcxButton;
    CancelBtn: TcxButton;
    FlatPanel_edit: TFlatPanel;
    E_FLocate: TcxButtonEdit;
    ToolButton2: TToolButton;
    cxGrid: TcxGrid;
    cxGV: TcxGridDBTableView;
    FNumber: TcxGridDBColumn;
    FName: TcxGridDBColumn;
    FProductName: TcxGridDBColumn;
    FParentNumber: TcxGridDBColumn;
    cxGL: TcxGridLevel;
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
    procedure frReportBeginBand(Band: TfrBand);
    procedure MDataAfterEdit(DataSet: TDataSet);
    procedure TB_updateClick(Sender: TObject);
    procedure E_pzrq2PropertiesChange(Sender: TObject);
    procedure MyTreeViewExpanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure FormShow(Sender: TObject);
    procedure MyTreeViewChange(Sender: TObject; Node: TTreeNode);
    procedure ToolButton4Click(Sender: TObject);
    procedure TB_SelClick(Sender: TObject);
    procedure E_FLocatePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure TB_DownClick(Sender: TObject);
    procedure OKBtnClick(Sender: TObject);
    procedure E_FNameKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure E_FParentNumberPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure E_FNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure E_FModelPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure E_FDetailClick(Sender: TObject);
    procedure MyTreeViewDblClick(Sender: TObject);
    procedure cxGVDblClick(Sender: TObject);
    procedure E_FNameDblClick(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
  private
    P_i:boolean;
    function AddRd:bool;
    function EditRd:bool;
    procedure InitParam;
    { Private declarations }
  public
    P_state:integer;
    P_MaxID:integer;
    P_FProductID:integer;

  { Public declarations }
  end;

var
  Frm_Parts1: TFrm_Parts1;
  first_bz:bool;


implementation

uses FRMDATA, FRMMAIN, COMMON,  FrmSelect;

{$R *.dfm}

procedure TFrm_Parts1.InitParam;
begin
//  If P_state=0 then
  begin
    If length(Trim(E_FNumber.Text))=3 then
    begin
      If length(IntTOStr(StrToInt(Trim(E_FNumber.Text))+1))=1 then
        E_FNumber.EditValue:='00'+IntTOStr(StrToInt(Trim(E_FNumber.Text))+1);
      If length(IntTOStr(StrToInt(Trim(E_FNumber.Text))+1))=2 then
        E_FNumber.EditValue:='0'+IntTOStr(StrToInt(Trim(E_FNumber.Text))+1);
      If length(IntTOStr(StrToInt(Trim(E_FNumber.Text))+1))=3 then
        E_FNumber.EditValue:=IntTOStr(StrToInt(Trim(E_FNumber.Text))+1);
    end;
    If length(Trim(E_FNumber.Text))=2 then
    begin
      If length(IntTOStr(StrToInt(Trim(E_FNumber.Text))+1))=1 then
        E_FNumber.EditValue:='0'+IntTOStr(StrToInt(Trim(E_FNumber.Text))+1);
      If length(IntTOStr(StrToInt(Trim(E_FNumber.Text))+1))=2 then
        E_FNumber.EditValue:=IntTOStr(StrToInt(Trim(E_FNumber.Text))+1);
    end;

    E_FModel.Text:='';
    E_FModel.SetFocus;
    E_FNumber.Enabled:=False;
    E_FParentNumber.Enabled:=False;
  end;
end;

function TFrm_Parts1.AddRd:bool;
const
  SQL_Add='Insert into T_Parts(FICItemID,FNumber,FName,FModel,FUnitName,FDetail,FParentNumber,FRemark) '
         +'values(:FICItemID,:FNumber,:FName,:FModel,:FUnitName,:FDetail,:FParentNumber,:FRemark)';
var
 qry:TADOQuery;
begin
{  result:=False;
  qry:=TADOQuery.Create(Self);
  qry.Connection:=mdlData.conn;

  //最大ID加1
  try
    qry.SQL.Text:='Update T_MaxID Set FMaxID=FMaxID+1 where Upper(FTableName)=''T_ICItem''';
    qry.ExecSQL;
  finally
    ;
  end;

  //取最大ID
  try
    qry.SQL.Text:='Select FMaxID from T_MaxID where Upper(FTableName)=''T_Parts''';
    qry.Open;
    If qry.RecordCount=1 then
       P_MaxID:=qry.FieldByName('FMaxID').Value;
  finally
    ;
  end;


  try
    qry.SQL.Text:=SQL_Add;
    qry.Parameters.FindParam('FICItemID').value:=P_MaxID;
    If Trim(E_FParentNumber.Text)='' then
       qry.Parameters.FindParam('FNumber').value:=Trim(E_FNumber.Text)
    else
       qry.Parameters.FindParam('FNumber').value:=Trim(E_FParentNumber.Text)+'.'+Trim(E_FNumber.Text);

    qry.Parameters.FindParam('FName').value:=Trim(E_FName.Text);
    qry.Parameters.FindParam('FModel').value:=Trim(E_FModel.Text);
    qry.Parameters.FindParam('FUnitName').value:=Trim(E_FUnitName.Text);
    qry.Parameters.FindParam('FDetail').value:=E_FDetail.EditValue;
    qry.Parameters.FindParam('FParentNumber').value:=Trim(E_FParentNumber.Text);
    qry.Parameters.FindParam('FRemark').value:=Trim(E_FRemark.Text);
    try
      result:=qry.ExecSQL=1;
    except
      Messagedlg(Errormsg0004+'0004',mtError,[mbok],0);
    end;
  finally
    ;
  end;
  qry.Free;   }
end;

function TFrm_Parts1.EditRd:bool;
var
 qry:TADOQuery;
begin
  result:=False;
  qry:=TADOQuery.Create(Self);
  qry.Connection:=mdlData.conn;
  try
    qry.SQL.Text:='Update T_Parts set FNumber=:FNumber,FName=:FName,'
                 +'FDetail=:FDetail,FParentNumber=:FParentNumber '
                 +'where FProductID=:FProductID';
    If Trim(E_FParentNumber.Text)='' then
      qry.Parameters.FindParam('FNumber').value:=Trim(E_FNumber.Text)
    else
      qry.Parameters.FindParam('FNumber').value:=Trim(E_FParentNumber.Text)+'.'+Trim(E_FNumber.Text);
    qry.Parameters.FindParam('FName').value:=Trim(E_FName.Text);
    qry.Parameters.FindParam('FDetail').value:=E_FDetail.EditValue;
    qry.Parameters.FindParam('FParentNumber').value:=Trim(E_FParentNumber.Text);
    qry.Parameters.FindParam('FProductID').value:=P_FProductID;
    try
      result:=qry.ExecSQL=1;
    except
      Messagedlg(Errormsg0004+'0004',mtError,[mbok],0);
    end;
  finally
    ;
  end;
  qry.Free;
end;



procedure TFrm_Parts1.S_Edit;
var
 qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  try
    qry.SQL.Text:='Select *,(Case FParentNumber when '''' then FNumber '
                 +'else reverse(substring(reverse(FNumber),1,charindex(''.'',reverse(FNumber))-1)) end ) as dh '
                 +' from V_Parts where FNumber=:FNumber order by FNumber';
    qry.Parameters.FindParam('FNumber').value:=mdata['FNumber'];
    qry.Open;
  finally
    ;
  end;
  If qry.RecordCount>0 then
  begin
    E_FParentNumber.Text:=qry.FieldByName('FParentNumber').Value;
   // E_FParentName.Text:=qry.FieldByName('FParentName').Value;
    E_FNumber.Text:=qry.FieldByName('dh').Value;
    E_FName.Text:=qry.FieldByName('FName').Value;
    E_FDEtail.EditValue:=qry.FieldByName('FDEtail').Value;
    P_FProductID:=qry.FieldByName('FProductID').Value;
  end;
end;

procedure TFrm_Parts1.CancelBtnClick(Sender: TObject);
begin
  inherited;
  PC_1.ActivePage:=TS_Tree;
  TS_Edit.TabVisible:=False;
  TS_Tree.TabVisible:=True;
  TB_Edit.Visible:=True;
  TB_Del.Visible:=True;
  cxGrid.Enabled:=True;
end;

procedure TFrm_Parts1.FormResize(Sender: TObject);
begin
  inherited;
  L_title.Caption:='部件类别维护';
  Self.Caption:='部件类别维护';
end;

procedure TFrm_Parts1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=cafree;
  Frm_Parts1:=nil;
end;

procedure TFrm_Parts1.TB_EDITClick(Sender: TObject);
begin
  If mdata.RecordCount>0 then
  begin
    P_state :=1;
    Self.S_Edit;
    PC_1.ActivePage:=TS_Edit;
    TS_Edit.TabVisible:=True;
    TS_Tree.TabVisible:=False;
    TB_Edit.Visible:=False;
    TB_Del.Visible:=False;
    cxGrid.Enabled:=False;
  end;
end;

procedure TFrm_Parts1.TB_EXITClick(Sender: TObject);
begin
 // ICItemID:=0;
  self.Close;
end;

procedure TFrm_Parts1.TB_refreshClick(Sender: TObject);
var
  I_index:integer;
  qry:TADOquery;
begin
{  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  I_index:=mdata.RecNo ;

  If not MyItemList(qry,Mdata,'V_Parts','FNumber',ListItemFNumber) then
  If (I_index<mdata.RecordCount) and (I_index<>-1) then
     mdata.RecNo :=I_index
  else
     mdata.Last;   }
end;

procedure TFrm_Parts1.TB_DELClick(Sender: TObject);
var
  qry:TADOQuery;
  ResultBool:bool;
begin
{
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;

  try
    qry.SQL.Text:='Select * from V_Parts where FIcItemID=:FIcItemID';
    qry.Parameters.FindParam('FICItemID').Value:=Mdata['FICItemID'];
    qry.Open;
  finally
    ;
  end;
  If qry.RecordCount>0 then
  begin
    messagedlg('此物料已引用无法删除！',mtInformation,[mbok],0);
    Exit;
  end;

  try
    qry.SQL.Text:='Select * from V_Parts where FParentNumber=:FParentNumber';
    qry.Parameters.FindParam('FParentNumber').value:=mdata['FNumber'];
    qry.Open;
  finally
    ;
  end;
  If qry.RecordCount>0 then
  begin
    messagedlg('此物料已存在下级无法删除！',mtInformation,[mbok],0);
    Exit;
  end;

  If messagedlg('警告：是否删除物料编码为：【'+Trim(Mdata['FNumber'])+'】的物料？'+chr(13)+chr(13)
              +'删除数据操作将不可恢复，确定要删除本物料吗？',mtWarning,[mbyes,mbno],0)=mryes then
  If messagedlg('再次警告：是否删除物料编码为：【'+Trim(Mdata['FNumber'])+'】的物料？'+chr(13)+chr(13)
                 +'删除数据操作将不可恢复，确定要删除本物料吗？',mtWarning,[mbyes,mbno],0)=mryes then
  begin
    qry.SQL.Text:='Delete from T_ICItem where FICItemID=:FICItemID';
    If qry.Active then qry.Close;
       qry.Parameters.FindParam('FICItemID').Value:=Mdata['FICItemID'];
    try
      If qry.ExecSQL>=1 then
         ResultBool:=True
      else
         ResultBool:=False;
      If not ResultBool then
      begin
        Messagedlg('删除物料失败！',mtInformation,[mbok],0);
        mdlData.conn.RollbackTrans;
        Exit;
      end;
      finally
        qry.Free;
    end;
  end;
  mdata.Close;
 // Tb_Refresh.Click ;   }
end;

procedure TFrm_Parts1.TB_appClick(Sender: TObject);
var
 qry:TADOquery;
begin
{
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;

  PC_1.ActivePage:=TS_Edit;
  TS_Edit.TabVisible:=True;
  TS_Tree.TabVisible:=False;
  TB_Edit.Visible:=False;
  TB_Del.Visible:=False;
  cxGrid.Enabled:=False;

  P_state :=0;

  If pos('.',ListItemFNumber)=0 then
  begin
    E_FParentNumber.Text:='';
    try
      qry.SQL.Text:='Select (max(FNumber)+1) as dh From V_Parts where FParentNumber=''''';
      qry.Open;
    finally
       ;
    end;
    If qry.RecordCount>0 then
      E_FNumber.Text:=qry.FieldByName('dh').AsString;
  end
  else
  begin
    If mdata.RecordCount>0 then
    begin
      mdata.First;
      E_FParentNumber.Text:=mdata.FieldByName('FParentNumber').Value;
      E_FParentName.Text:=mdata.FieldByName('FParentName').Value;
      try
        If mdata.FieldByName('FDEtail').Value=0 then
           qry.SQL.Text:='Select max(replicate(''0'',2-len(cast(cast(reverse(substring(reverse(FNumber),1,charindex(''.'',reverse(FNumber))-1)) as int)+1 as char)))+cast(cast(reverse(substring(reverse(FNumber),1,charindex(''.'',reverse(FNumber))-1)) as int)+1 as char)) as dh '
                        +'From V_Parts where FParentNumber<>'''' and FParentNumber=:FParentNumber'
        else
           qry.SQL.Text:='Select max(replicate(''0'',3-len(cast(cast(reverse(substring(reverse(FNumber),1,charindex(''.'',reverse(FNumber))-1)) as int)+1 as char)))+cast(cast(reverse(substring(reverse(FNumber),1,charindex(''.'',reverse(FNumber))-1)) as int)+1 as char)) as dh '
                        +'From V_Parts where FParentNumber<>'''' and FParentNumber=:FParentNumber';
        qry.Parameters.ParamByName('FParentNumber').Value:=mdata.FieldByName('FParentNumber').Value;
        qry.Open;
      finally
         ;
      end;
      If qry.RecordCount>0 then
         E_FNumber.Text:=qry.FieldbyName('dh').Value
      else
      begin
        If mdata.FieldByName('FDEtail').Value=0 then
          E_FNumber.Text:='.01'
        else
          E_FNumber.Text:='.001';
      end;
      E_FUnitName.Text:=mdata.FieldByName('FUnitName').Value;
      E_FDEtail.EditValue:=mdata.FieldByName('FDEtail').Value;
    end;
  end;  

  E_FNumber.Enabled:=True;
  E_FParentNumber.Enabled:=True;
  Tb_Refresh.Click ;
  }
end;

procedure TFrm_Parts1.FormCreate(Sender: TObject);
begin
  inherited;
  P_IsEdit:=False;
  P_IsFilter:=False;
  P_IsSort:=False;
  P_IsGroup:=False;
  P_IscxGV:=True;
  p_cxGrid:=cxGrid;
  P_cxGV:=cxGV;
  P_i:=True;
  Panel_down.Height:=40;
  TS_Edit.TabVisible:=False;
  TB_app.Enabled:= mdlData.CheckFrmRights(TFrm_Parts.ClassName,'新增');
  TB_edit.Enabled:= mdlData.CheckFrmRights(TFrm_Parts.ClassName,'修改');
  TB_del.Enabled:= mdlData.CheckFrmRights(TFrm_Parts.ClassName,'删除');
  TB_refresh.Enabled:= mdlData.CheckFrmRights(TFrm_Parts.ClassName,'新增');
  TB_prin.Enabled:= mdlData.CheckFrmRights(TFrm_Parts.ClassName,'打印');
end;

procedure TFrm_Parts1.frReportBeginBand(Band: TfrBand);
begin
  If Band.Name='dtFooter' then
  begin
    If (mdata.RecordCount mod 7)>0 then
      frReport.Dictionary.Variables['n']:=7-(mdata['n'] mod 7)
    else
      frReport.Dictionary.Variables['n']:=0;
  end;
end;

procedure TFrm_Parts1.MDataAfterEdit(DataSet: TDataSet);
begin
  inherited;
  DataSet['IsEdit']:=True;
  TB_update.Visible:=True;

end;

procedure TFrm_Parts1.TB_updateClick(Sender: TObject);
var
  IsEdit:bool;
  qry: TADOQuery;
  I_index:integer;
begin
{  I_index:=mData.RecNo ;
  Mdata.Edit;
  Mdata.Post;
  If ShowMsg('是否对已修改进行批量更新？更新后不可恢复！','提示') then
  begin
    with mdata do
    begin
      mData.DisableControls;
      First;
      qry:=TADOQuery.Create(Self);
      try
        qry.Connection:=mdlData.conn;
        qry.SQL.Text:='update T_Parts set FNumber=:FNumber,FParentNumber=:FParentNumber,FName=:FName,'
                     +'FModel=:FModel,FUnitName=:FUnitName,FDetail=:FDetail,FRemark=:FRemark where FIcItemID=:FIcItemID';
        while not mdata.EoF do
        begin
          IsEdit:=mData.FieldByName('IsEdit').AsBoolean;
          If IsEdit then
          begin
            qry.Parameters[0].Value:=mData['FNumber'];
            qry.Parameters[1].Value:=mData['FParentNumber'];
            qry.Parameters[2].Value:=mData['FName'];
            qry.Parameters[3].Value:=mData['FModel'];
            qry.Parameters[4].Value:=mData['FUnitName'];
            qry.Parameters[5].Value:=mData['FDetail'];
            qry.Parameters[6].Value:=mData['FRemark'];
            qry.Parameters[7].Value:=mData['FIcItemID'];
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
  TB_update.Visible:=False;
  If (I_index<mData.RecordCount) and (I_index<>-1) then
     mData.RecNo :=I_index
  else
     mData.Last;
        }
end;

procedure TFrm_Parts1.E_pzrq2PropertiesChange(Sender: TObject);
begin
  inherited;
//  Self.P_Select;
end;

procedure TFrm_Parts1.MyTreeViewExpanding(Sender: TObject;
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

  qry.SQL.Text:='Select FProductID,FNumber, FParentNumber,FNumber,'
               +'''【''+FPartsCode+''】''+FName as FName,FProductName,'
               +'FDetail from V_Parts where FParentNumber= '''
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
    P.Flag := cNoLoadFlag;                            // 新节点，未加载标志
    with MyTreeView.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.FieldByName('FDetail').value;
    end;
    qry.Next;
  end;


end;

procedure TFrm_Parts1.FormShow(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;

  If not TreeVeiwList(qry,MyTreeView,'V_Parts') then
  begin
    Application.MessageBox(PChar('物料树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;

 {
  If S_ItemName='' then
    Exit;
  try
    qry.SQL.Text:='Select * from V_Parts '
                 +'where FName+FModel like :FName and FDetail<>0 order by FNumber';
    qry.Parameters.ParamByName('FName').Value:='%'+S_ItemName+'%';
    qry.Open;
  finally
     ;
  end;   }
  If qry.recordcount>0 then
  begin
    Mdata.Close;
    MData.CopyFromDataSet(qry);
    Mdata.Active:=True;
    cxGvColumn(cxGv,MData);
  end;
  qry.close;
  qry.free;

end;

procedure TFrm_Parts1.MyTreeViewChange(Sender: TObject; Node: TTreeNode);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;

  If Node = nil then Exit;
  with PTree(Node.Data)^ do
  begin
    ListItemFNumber:=PTree(Node.Data).FNumber;
    If not MyItemList(qry,Mdata,'V_Parts','FNumber',ListItemFNumber,'FNumber') then
    begin
      mdata.Open;
      cxGvColumn(P_cxGv,Mdata);
    end;
    If mdata.RecordCount>0 then
    begin
      TB_Edit.Visible:=True;
      TB_Del.Visible:=True;
    end
    else
    begin
      TB_Edit.Visible:=False;
      TB_Del.Visible:=False;
    end;
  end;

end;

procedure TFrm_Parts1.ToolButton4Click(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If not TreeVeiwList(qry,MyTreeView,'V_Parts') then
  begin
    Application.MessageBox(PChar('物料树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;

end;

procedure TFrm_Parts1.TB_SelClick(Sender: TObject);
begin
  inherited;
  If mdata.RecordCount>0 then
  begin
    If (mdata['FDetail']<>0) then
    begin
 //     P_FICItemID:=mdata['FICItemID'];
   //   ICItemID:=mdata['FICItemID'];
//      P_FName:=mdata['FName'];
     // P_FModel:=mdata['FModel'];
     // P_FUnitName:=mdata['FUnitName'];
      Self.Close;
    end
    else
       messagedlg('请选择明细！',mtInformation,[mbok],0);
  end;

end;

procedure TFrm_Parts1.E_FLocatePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  try
    qry.SQL.Text:='Select IsEdit=cast(0 as bit),* from V_Parts '
                 +'where FDetail=1 and FNumber+FName+FModel like :FLocate order by FName,FModel';
    qry.Parameters.ParamByName('FLocate').Value:='%'+Trim(E_FLocate.Text)+'%';
    qry.Open;
  finally
     ;
  end;
  If qry.recordcount>0 then
  begin
    Mdata.Close;
    MData.CopyFromDataSet(qry);
    Mdata.Open;
    cxGvColumn(cxGv,MData);
  end
  else
    qry.close;
  qry.free;

end;

procedure TFrm_Parts1.TB_DownClick(Sender: TObject);
begin
  inherited;
  P_IscxGV:=True;
  p_cxGrid:=cxGrid;
  P_cxGV:=cxGV;

end;

procedure TFrm_Parts1.OKBtnClick(Sender: TObject);
var qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
//关键内容（字段）不能为空


  If E_FDetail.EditValue=True then
  begin
    If Trim(E_FNumber.Text)='' then
    begin
      Messagedlg(Errormsg0002+'0002',mtError,[mbok],0);
      E_FNumber.SetFocus ;
      Exit;
    end;
  end;
  If Trim(E_FName.Text)='' then
  begin
    Messagedlg(Errormsg0002+'0002',mtError,[mbok],0);
    E_FName.SetFocus ;
    Exit;
  end;

  If P_state=0 then
  begin
  //物料编码是否重复
    try
    qry.SQL.Text:='Select * from V_Parts where (FNumber=:FNumber) or (FName=:FName and FModel=:FModel and FDetail=1)';
    qry.Parameters.FindParam('FNumber').Value:=Trim(E_FParentNumber.Text)+'.'+Trim(E_FNumber.Text);
    qry.Parameters.FindParam('FName').Value:=Trim(E_FName.Text);
    qry.Parameters.FindParam('FModel').Value:=Trim(E_FModel.Text);
    qry.Open;
    If qry.RecordCount>0 then
    begin
      Messagedlg(Errormsg0003+'0003',mtError,[mbok],0);
      Exit;
    end;
    finally
       ;
    end;

    If Messagedlg(Askmsg0002,mtInformation,[mbyes,mbno],0)=mrno then
      Exit;
    If AddRd then //增加数据
      If Messagedlg(Askmsg0004,mtInformation,[mbyes,mbno],0)=mryes then
        InitParam
      else
      begin
        inherited;
        PC_1.ActivePage:=TS_Tree;
        TS_Edit.TabVisible:=False;
        TS_Tree.TabVisible:=True;
        TB_Edit.Visible:=True;
        TB_Del.Visible:=True;
        cxGrid.Enabled:=True;
      end;
   end
   else
   If P_state=1 then //修改数据
   begin
     If Messagedlg(Askmsg0001,mtInformation,[mbyes,mbno],0)=mrno then
       Exit;
     If EditRd then   //修改数据
     begin
       Messagedlg(Infmsg0001,mtInformation,[mbok],0);
       inherited;
     end
     else
       Messagedlg(Infmsg0004,mtInformation,[mbok],0);
     PC_1.ActivePage:=TS_Tree;
     TS_Edit.TabVisible:=False;
     TS_Tree.TabVisible:=True;
     TB_Edit.Visible:=True;
     TB_Del.Visible:=True;
     cxGrid.Enabled:=True;
   end;
   qry.Free;  

end;

procedure TFrm_Parts1.E_FNameKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  If (key=13) or (key=40) then { 判断是按执行键}
  begin
    Self.OKBtnClick(sender);
  end;

end;

procedure TFrm_Parts1.E_FParentNumberPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  try
    qry.SQL.Text:='Select * from V_Parts where FDetail=0 order by FNumber';
    qry.Open;
  finally
     ;
  end;
  selValue:=select('选择所属编码','FNumber','FParentNumber','FNumber','FNumber;FName',qry);

  If Length(selValue)>0 then
  begin
     E_FParentName.EditValue:=qry.FieldByName('FName').AsString;
     E_FParentNumber.EditValue:=qry.FieldByName('FNumber').AsString;
     E_FNumber.EditValue:=qry.FieldByName('FNumber').AsString+'.';
  end
  else
    messagedlg('请选择所属编码！',mtInformation,[mbok],0);

  //最大编码
  try
    qry.SQL.Text:='Select isnull(max(replicate(''0'',3-len(cast(cast(reverse(substring(reverse(FNumber),1,'
                 +'charindex(''.'',reverse(FNumber))-1)) as int)+1 as char)))'
                 +'+cast(cast(reverse(substring(reverse(FNumber),1,charindex(''.'',reverse(FNumber))-1)) as int)+1 as char)),'''') as dh '
                 +'From V_Parts where FDetail<>0 and FParentNumber=:FParentNumber';
    qry.Parameters.ParamByName('FParentNumber').Value:=Trim(E_FParentNumber.Text);
    qry.Open;
  finally
     ;
  end;
  If qry.RecordCount>0 then
  begin
    If qry.FieldbyName('dh').Value='' then
       E_FNumber.Text:='01'
    else
       E_FNumber.Text:=qry.FieldbyName('dh').Value;
  end;

  qry.Free;

end;

procedure TFrm_Parts1.E_FNamePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  try
    qry.SQL.Text:='Select distinct FName from V_Parts '
                 +'where FName like :FName and FDetail<>0 order by FName';
    qry.Parameters.ParamByName('FName').Value:='%'+Trim(E_FName.Text)+'%';
    qry.Open;
  finally
     ;
  end;
  selValue:=select('选择物料名称','FName','FName','FName','FName',qry);

  If Length(selValue)>0 then
  begin
     E_FName.EditValue:=qry.FieldByName('FName').AsString;
  end
  else
    messagedlg('请选择物料名称！',mtInformation,[mbok],0);
  qry.Free;

end;

procedure TFrm_Parts1.E_FModelPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  try
    qry.SQL.Text:='Select FName,FModel from V_Parts '
                 +'where FName=:FName and FModel=:FModel and FDetail<>0 order by FModel';
    qry.Parameters.ParamByName('FName').Value:=Trim(E_FName.Text);
    qry.Parameters.ParamByName('FModel').Value:='%'+Trim(E_FModel.Text)+'%';
    qry.Open;
  finally
     ;
  end;
  selValue:=select('选择物料规格','FModel','FName','FModel','FName;FModel',qry);

  If Length(selValue)>0 then
  begin
     E_FModel.EditValue:=qry.FieldByName('FModel').AsString;
  end
  else
    messagedlg('请选择物料规格！',mtInformation,[mbok],0);
  qry.Free;
end;

procedure TFrm_Parts1.E_FDetailClick(Sender: TObject);
begin
  inherited;
  If E_FDetail.Checked=True then
  begin
    If length(Trim(E_FNumber.Text))=2 then
      E_FNumber.Text:='0'+Trim(E_FNumber.Text);
  end
  else
  begin
    If length(Trim(E_FNumber.Text))=3 then
      E_FNumber.Text:=copy(Trim(E_FNumber.Text),2,2);
  end;

end;

procedure TFrm_Parts1.MyTreeViewDblClick(Sender: TObject);
begin
  inherited;
  self.TB_Sel.Click;
end;

procedure TFrm_Parts1.cxGVDblClick(Sender: TObject);
begin
  inherited;
  self.TB_Sel.Click;
end;

procedure TFrm_Parts1.E_FNameDblClick(Sender: TObject);
begin
  inherited;
  E_FParentNumber.Enabled:=True;
  E_FNumber.Enabled:=True;
end;

procedure TFrm_Parts1.ToolButton2Click(Sender: TObject);
begin
  inherited;
  self.Close;
end;

end.
