unit Main_Parts;

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
  TFrm_Parts = class(TFrm_GridBass)
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
    RzSizePanel1: TRzSizePanel;
    PC_2: TRzPageControl;
    TS_Brow: TRzTabSheet;
    TS_Edit: TRzTabSheet;
    ADOQuery: TADOQuery;
    DataSource: TDataSource;
    V_K3: TADOTable;
    DS_K3: TDataSource;
    TB_Ref: TToolButton;
    CB_2: TcxCheckBox;
    CB_3: TcxCheckBox;
    CB_4: TcxCheckBox;
    CB_5: TcxCheckBox;
    ADOStoredProc1: TADOStoredProc;
    TB_app: TToolButton;
    TB_EDIT: TToolButton;
    TB_DEL: TToolButton;
    TB_refresh: TToolButton;
    PanelBkGnd: TPanel;
    Panel_button: TPanel;
    Bevel_button: TBevel;
    OKBtn: TcxButton;
    CancelBtn: TcxButton;
    Panel_upper: TPanel;
    L_Caption: TLabel;
    cxGrid: TcxGrid;
    cxGV: TcxGridDBTableView;
    FProductName: TcxGridDBColumn;
    FDesignDate: TcxGridDBColumn;
    cxGL: TcxGridLevel;
    MyTreeView: TTreeView;
    ToolButton2: TToolButton;
    FItemId: TcxGridDBColumn;
    FItemNo: TcxGridDBColumn;
    FPactNo: TcxGridDBColumn;
    FFileNo: TcxGridDBColumn;
    FClientFullName: TcxGridDBColumn;
    FItemNumber: TcxGridDBColumn;
    FItemModel: TcxGridDBColumn;
    FClientShortName: TcxGridDBColumn;
    FItemLb: TcxGridDBColumn;
    MDataFItemNo: TStringField;
    MDataFPactNo: TStringField;
    MDataFFileNo: TStringField;
    MDataFItemNumber: TStringField;
    MDataFClientFullName: TStringField;
    MDataFClientShortName: TStringField;
    MDataFProductName: TStringField;
    MDataFItemModel: TStringField;
    MDataFItemLb: TStringField;
    MDataFDesignDate: TStringField;
    FProductID: TcxGridDBColumn;
    MDataFProductID: TStringField;
    procedure FormResize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TB_EXITClick(Sender: TObject);
    procedure TB_DownClick(Sender: TObject);
    procedure MyTreeViewChange(Sender: TObject; Node: TTreeNode);
    procedure MyTreeViewExpanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure TB_RefClick(Sender: TObject);
    procedure OKBtnClick(Sender: TObject);
    procedure TB_appClick(Sender: TObject);
    procedure TB_EDITClick(Sender: TObject);
    procedure TB_DELClick(Sender: TObject);
    procedure TB_refreshClick(Sender: TObject);
    procedure CancelBtnClick(Sender: TObject);
    procedure FPartsNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FPartsAliasPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure ToolButton2Click(Sender: TObject);
    procedure FProductNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    ListItemFNumber,P_th:String;
    P_i:boolean;



    { Private declarations }
    function AddRd:bool;
    function EditRd:bool;
    function DelRd:bool;

 //   Procedure MyItemList(Sender: TObject);

  public
    P_state:integer;
  //  P_id:string;
    { Public declarations }
  end;

var
  Frm_Parts: TFrm_Parts;


implementation

uses FRMDATA, FRMMAIN, COMMON, FrmSelect, ProgBar, PROGRASS;

{$R *.dfm}

function TFrm_Parts.DelRd: bool;
var
 qry: TADOQuery;
begin
 // result:=False;
  qry:=TADOQuery.Create(Self);
  qry.Connection:=mdlData.conn;
  try
    qry.SQL.Text:='Delete from T_Item where FItemNo=:FItemNo';
    with qry.Parameters do
    begin
      FindParam('FItemNo').value:=mdata['FItemNo'];
    end;
    result:=qry.ExecSQL>=1;
  finally
    qry.Free;
  end;
end;

function TFrm_Parts.AddRd: bool;
var
  qry: TADOQuery;

begin
  qry:=TADOQuery.Create(Self);
  qry.Connection:=mdlData.conn;
  result:=False;

  If mData.RecordCount<=0 then
  begin
    result:=True;
    Exit;
  end;
  try
    qry.SQL.Text:='Insert into T_Item(FItemNo,FPactNo,FFileNo,FClientFullName,FClientShortName,FProductId,FItemNumber,FItemModel,FDesignDate) '
                 +'values(:FItemNo,:FPactNo,:FFileNo,:FClientFullName,:FClientShortName,:FProductId,:FItemNumber,:FItemModel,:FDesignDate)';
     mData.First;

     while not mData.eof do
     begin
       If (mData['FItemNo']<>'') and (mData['FPactNo']<>'') and (mData['FClientFullName']<>'') and (mData['FClientShortName']<>'')
          and (mData['FProductId']<>0) and (mData['FItemNumber']<>'') then
       begin
         If qry.Active then qry.Close;
         with qry.Parameters do
         begin
           FindParam('FItemNo').value:=mdata['FItemNo'];;
           FindParam('FPactNo').value:=mdata['FPactNo'];
           FindParam('FFileNo').value:=mdata['FFileNo'];
           FindParam('FClientFullName').value:=mdata['FClientFullName'];
           FindParam('FClientShortName').value:=mdata['FClientShortName'];
           FindParam('FProductId').value:=mdata['FProductId'];
           FindParam('FItemNumber').value:=mdata['FItemNumber'];
           FindParam('FItemModel').value:=mdata['FItemModel'];
           FindParam('FDesignDate').value:=mdata['FDesignDate'];
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


function TFrm_Parts.EditRd:bool;
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

  mdlData.conn.BeginTrans;  //��������
  try
    if DelRd then  //1  ��ɾ��
    begin
      result:=True;
      if AddRd then //2   ������
      begin
        result:=True;
        mdlData.conn.CommitTrans; //�ύ����
      end
      else
      begin
        result:=False;
        mdlData.conn.RollbackTrans;      //�ع�����
      end
    end
    else
    begin
      result:=False;
      mdlData.conn.RollbackTrans;
    end
  except
    Application.MessageBox('���ݱ���ʧ�ܣ������ԡ�', '�������', 0 or MB_ICONINFORMATION);
    mdlData.Conn.RollBackTrans;
  end;
end;


procedure TFrm_Parts.FormResize(Sender: TObject);
var
  qry:TADOquery;
begin
  inherited;
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If not TreeVeiwList(qry,MyTreeView,'VT_Item') then
  begin
    Application.MessageBox(PChar('�������ͽṹ��ʾ��������ϵϵͳ������Ա'), '����', MB_OK +MB_ICONSTOP);
  end;

  L_title.Caption:='��Ŀ��Ϣ����';
  Self.Caption:='��Ŀ��Ϣ����';
end;

procedure TFrm_Parts.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=cafree;
  Frm_Parts:=nil;
end;

procedure TFrm_Parts.TB_EXITClick(Sender: TObject);
begin
  inherited;
  self.Close;
end;

procedure TFrm_Parts.TB_DownClick(Sender: TObject);
Var i:Integer;
begin
  If P_i then
  begin
    TB_Down.Caption:='ȡ������';
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
    TB_Down.Caption:='����';
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

procedure TFrm_Parts.MyTreeViewChange(Sender: TObject; Node: TTreeNode);
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
    If not MyItemList(qry,Mdata,'V_Item','FNumber',ListItemFNumber,'FNumber') then
    begin
      mdata.Open;
      cxGvColumn(cxGv,Mdata);
    end;
    If mdata.RecordCount>0 then
    begin
      //E_FProductName.Text:= mdata['FProductName'];
    //  E_FProductID.Text:= mdata['FProductID'];
    end
  end;

end;

procedure TFrm_Parts.MyTreeViewExpanding(Sender: TObject;
  Node: TTreeNode; var AllowExpansion: Boolean);
var
  P :PTree;
  qry:TADOquery;

begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;


  If (Node = nil) or
     (PTree(Node.Data).Flag <> cNoLoadFlag) or   // 1.���ر�־
     (not Node.HasChildren) or                   // 2.δ����
     (Node.Count>0) then                         // 3.�����ӽڵ�
     Exit;

  qry.SQL.Text:='Select FProductId,FNumber, FParentNumber,FName,'
               +'Isleaf from VT_Item where FParentNumber= '''
               +PTree(Node.Data).ID+''' order by FNumber';

  qry.open;

  PTree(Node.Data).Flag := cLoadFlag;                  // �����Ѽ��ر�־
  while not qry.Eof do
  begin
    New(P);
    P.ID := qry.FieldByName('FNumber').AsString;
    P.ParentID := qry.FieldByName('FParentNumber').AsString;
    P.FNumber:=qry.FieldByName('FNumber').AsString;
    P.Th:=qry.FieldByName('FProductId').AsString;
    P.Caption := qry.FieldByName('FName').AsString;
    P.Flag := cNoLoadFlag;                            // �½ڵ㣬δ���ر�־
    with MyTreeView.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('Isleaf').value;
    end;
    qry.Next;
  end;


end;

procedure TFrm_Parts.TB_RefClick(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If not TreeVeiwList(qry,MyTreeView,'VT_Item') then
  begin
    Application.MessageBox(PChar('�������ͽṹ��ʾ��������ϵϵͳ������Ա'), '����', MB_OK +MB_ICONSTOP);
  end;

end;

procedure TFrm_Parts.OKBtnClick(Sender: TObject);
var qry: TADOQuery;

begin
  cxGV.OptionsData.Editing:=True;
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;

  mData.Edit;
  mData.Post;

  If P_state =0 then
  begin
    try
      qry.SQL.Text:='Select * from V_Item where FItemNo=:FItemNo';
      qry.Parameters.FindParam('FItemNo').Value:=mdata['FItemNo'];
      qry.Open;
      If qry.RecordCount>0 then
      begin
         application.MessageBox('��Ŀ�����ظ���������ѡ��','ϵͳ��ʾ',MB_ICONERROR);
         Exit;
      end;
    finally
       ;
    end;
  end;

  If P_state=0 then
  begin
    If application.MessageBox('�Ƿ�Ҫ������ӵ����ݣ�','��ʾ',MB_ICONINFORMATION+MB_YESNO)<>6 then
       Exit;
    If AddRd then //��������
    begin
      try
        qry.SQL.Text:='Update T_MaxNum  set FMaxNum=FMaxNum+1 where FTableName=''T_Item''';
        qry.ExecSQL;
      finally
         ;
      end;
      If application.MessageBox('¼�������ѱ���,��Ҫ����¼����','��ʾ',MB_ICONINFORMATION+MB_YESNO)=6 then
      begin
        Tb_app.Click ;
      end
      else
      begin
        inherited;
        CancelBtn.Click;
      end;
    end;
  end;

  If P_state=1 then //�޸�����
  begin
    If application.MessageBox('�Ƿ�Ҫ���������޸ģ�','��ʾ',MB_ICONINFORMATION+MB_YESNO)<>6 then
       Exit;
    If EditRd then   //�޸�����
    begin
      application.MessageBox('�޸ļ�¼�ѱ���','ϵͳ��ʾ',MB_ICONINFORMATION);
      inherited;
    end
    else
      application.MessageBox('�޸ļ�¼����ʧ�ܣ�','ϵͳ��ʾ',MB_ICONWARNING);
    CancelBtn.Click;
  end;
  qry.Free;


end;



procedure TFrm_Parts.TB_appClick(Sender: TObject);
var
 qry:TADOquery;
 i:Integer;
begin
  P_state :=0;
  L_Caption.Caption:='��������';

  qry:=TAdoQuery.Create(self);
  qry.Connection:=mdlData.conn;
  try
    qry.SQL.Text:='Select * from T_MaxNum where FTableName=''T_Item''';
    qry.Open;
  finally
     ;
  end;
  If qry.RecordCount>0 then
     i:=qry.FieldByName('FMaxNum').Value+1
  else
     i:=1;


  If mData.Active then mData.Close;
     mData.Open;
  mData.Edit;
  mData['FItemNo']:=Format('%.4d',[i]);

  cxGV.OptionsData.Editing:=True;

  OKBtn.Left:=StrToInt(FloatToStr(int((PanelBkGnd.Width-OKBtn.Width-CancelBtn.Width-20)/2)));
  CancelBtn.Left:=StrToInt(FloatToStr(int((PanelBkGnd.Width-OKBtn.Width-CancelBtn.Width-20)/2)))+OKBtn.Width+20;
  OKBtn.Visible:=True;
  CancelBtn.Visible:=True;

  TB_Ref.Visible:=False;
  TB_app.Visible:=False;
  TB_Edit.Visible:=False;
  TB_Del.Visible:=False;
  MyTreeView.Enabled:=False;

  for i:=0 to cxGv.ColumnCount-1 do
  begin
    cxGv.Columns[i].Options.Editing:=True;
  end;

end;

procedure TFrm_Parts.TB_EDITClick(Sender: TObject);
var

 i:Integer;
begin
  P_state :=1;
  If (mdata.RecordCount<1) then
    Exit;
  If mdata.RecordCount<>1 then
  begin
    application.MessageBox('ֻ�����޸ĵ�����¼��������ѡ��!','ϵͳ��ʾ',MB_ICONINFORMATION);
    Exit;
  end;

  L_Caption.Caption:='�����޸�';

  OKBtn.Left:=StrToInt(FloatToStr(int((PanelBkGnd.Width-OKBtn.Width-CancelBtn.Width-20)/2)));
  CancelBtn.Left:=StrToInt(FloatToStr(int((PanelBkGnd.Width-OKBtn.Width-CancelBtn.Width-20)/2)))+OKBtn.Width+20;
  OKBtn.Visible:=True;
  CancelBtn.Visible:=True;

  TB_Ref.Visible:=False;
  TB_Edit.Visible:=False;
  TB_Del.Visible:=False;
  TB_app.Visible:=False;
  MyTreeView.Enabled:=False;

  cxGV.OptionsData.Editing:=True;
  for i:=0 to cxGv.ColumnCount-1 do
  begin
    cxGv.Columns[i].Options.Editing:=True;
  end;
  
end;

procedure TFrm_Parts.TB_DELClick(Sender: TObject);
var
  qry:TADOQuery;

begin
  qry:=TAdoQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If (mdata.RecordCount<1) then
    Exit;

  If mdata.RecordCount<>1 then
  begin
    application.MessageBox('ֻ����ɾ��������¼��������ѡ��!','ϵͳ��ʾ',MB_ICONINFORMATION);
    Exit;
  end;

  qry:=TAdoQuery.Create(self);
  qry.Connection:=mdlData.conn;
  try
    qry.SQL.Text:='Select * from V_DesignBOM_Structure where FFullNumber like :FFullNumber';
    qry.Parameters.FindParam('FFullNumber').Value:=mdata['FItemNo']+'%';
    qry.Open;
  finally
     ;
  end;
  if qry.RecordCount>0 then
  begin
    application.MessageBox(Pchar('��Ŀ��'+Trim(Mdata['FItemNumber'])+'����'+Trim(Mdata['FItemNo'])+'���ѵ������ݲ�����ɾ����'),'ϵͳ��ʾ',MB_ICONINFORMATION);
//    application.MessageBox(Pchar('��'+mdata['FItemNo']+mdata['FItemNumber']+'������Ŀ�ѵ������ݲ�����ɾ����'),'ϵͳ��ʾ',MB_ICONINFORMATION);
    Exit;
  end;



  If application.MessageBox(Pchar('���棺�Ƿ�ɾ����Ʒ���Ϊ����'+Trim(Mdata['FItemNumber'])+'����'+Trim(Mdata['FItemNo'])+'���ĵ��ݣ�'+chr(13)+chr(13)
                           +'ɾ�����ݲ��������ɻָ���ȷ��Ҫɾ����������'),'������ʾ',MB_ICONINFORMATION+MB_YESNO)=6 then
  If application.MessageBox(Pchar('���棺�Ƿ�ɾ����Ʒ���Ϊ����'+Trim(Mdata['FItemNumber'])+'����'+Trim(Mdata['FItemNo'])+'���ĵ��ݣ�'+chr(13)+chr(13)
                           +'ɾ�����ݲ��������ɻָ���ȷ��Ҫɾ����������'),'�ٴξ�����ʾ',MB_ICONINFORMATION+MB_YESNO)=6 then

  begin
    //����ɾ��
    If not DelRd then
    begin
      application.MessageBox('ɾ������ʧ�ܣ�','ϵͳ��ʾ',MB_ICONINFORMATION);
      mdlData.conn.RollbackTrans;
      Exit;
    end;
  end;
  mdata.Close;
  qry.Free;
  TB_ref.Click;
end;

procedure TFrm_Parts.TB_refreshClick(Sender: TObject);
var
  I_index:integer;
begin
  inherited;
  I_index:=mData.RecNo ;
  If (I_index<mData.RecordCount) and (I_index<>-1) then
     mData.RecNo :=I_index
  else
     mData.Last;

end;

procedure TFrm_Parts.CancelBtnClick(Sender: TObject);
begin
  inherited;
  L_Caption.Caption:='�������';
  cxGV.OptionsData.Editing:=False;
  OKBtn.Visible:=False;
  CancelBtn.Visible:=False;
  TB_Ref.Visible:=True;
  TB_app.Visible:=True;
  TB_Edit.Visible:=True;
  TB_Del.Visible:=True;
  MyTreeView.Enabled:=True;
  TB_ref.Click;

end;

procedure TFrm_Parts.FPartsNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.Connection:=mdlData.conn;
  try
    qry.SQL.Text:='select distinct FPartsCode,FPartsName from V_ProductParts order by FPartsCode';
    qry.Open;
  finally
     ;
  end;
  selValue:=select('��ѡ�񲿼����','FPartsName','FPartsName','FPartsName','FPartsCode;FPartsName',qry);
  If Length(selValue)>0 then
  begin
    (Sender as TcxButtonEdit).EditingText:=qry.FieldByName('FPartsName').AsString
  end;

end;

procedure TFrm_Parts.FPartsAliasPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.Connection:=mdlData.conn;
  try
    qry.SQL.Text:='select distinct FPartsCode,FPartsAlias from V_ProductParts order by FPartsCode';
    qry.Open;
  finally
     ;
  end;
  selValue:=select('��ѡ�񲿼�����','FPartsAlias','FPartsAlias','FPartsAlias','FPartsCode;FPartsAlias',qry);
  If Length(selValue)>0 then
  begin
    (Sender as TcxButtonEdit).EditingText:=qry.FieldByName('FPartsAlias').AsString
  end;

end;

procedure TFrm_Parts.ToolButton2Click(Sender: TObject);
begin
  inherited;
  ExportToExcel(cxGrid,True,TRue);
end;

procedure TFrm_Parts.FProductNamePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.Connection:=mdlData.conn;
  try
    qry.SQL.Text:='select distinct FProductID,FProductName from T_Product order by FProductName';
    qry.Open;
  finally
     ;
  end;
  selValue:=select('��ѡ���Ʒ���','FProductName','FProductName','FProductName','FProductName',qry);
  If Length(selValue)>0 then
  begin
    mdata.Edit;
    mdata['FProductID']:=qry.FieldByName('FProductID').AsString;
    mdata['FProductName']:=qry.FieldByName('FProductName').AsString;
    mdata.Post;
  end;

end;

end.
