unit Main_LKSHBOMPick;

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
  TFrm_LKSHBOMPick = class(TFrm_GridBass)
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
    MyTreeView: TTreeView;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    TabSheet2: TRzTabSheet;
    ADOQuery: TADOQuery;
    DataSource: TDataSource;
    V_K3: TADOTable;
    DS_K3: TDataSource;
    TB_Ref: TToolButton;
    ADOStoredProc1: TADOStoredProc;
    TB_Del: TToolButton;
    E_th1: TcxButtonEdit;
    E_th2: TcxComboBox;
    E_FClientFullName: TcxComboBox;
    E_FItemModel: TcxComboBox;
    Label2: TLabel;
    Image4: TImage;
    Label5: TLabel;
    ToolButton2: TToolButton;
    Image6: TImage;
    ToolButton3: TToolButton;
    MData1: TdxMemData;
    DSMData1: TDataSource;
    OpenDialog1: TOpenDialog;
    conn_execl_ado: TADOTable;
    DataSource1: TDataSource;
    cxGridK3: TcxGrid;
    cxGVK3: TcxGridDBTableView;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    K3ISOut: TcxGridDBColumn;
    FK3Suttle: TcxGridDBColumn;
    FItemId: TcxGridDBColumn;
    cxGLK3: TcxGridLevel;
    cxGrid: TcxGrid;
    cxGV: TcxGridDBTableView;
    xh: TcxGridDBColumn;
    th: TcxGridDBColumn;
    mc: TcxGridDBColumn;
    gg: TcxGridDBColumn;
    ssth: TcxGridDBColumn;
    cl: TcxGridDBColumn;
    FQry: TcxGridDBColumn;
    dw: TcxGridDBColumn;
    Remark: TcxGridDBColumn;
    cxGL: TcxGridLevel;
    FNumber: TcxGridDBColumn;
    FName: TcxGridDBColumn;
    FModel: TcxGridDBColumn;
    unitName: TcxGridDBColumn;
    k3cl: TcxGridDBColumn;
    ToolButton4: TToolButton;
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
    procedure P_Sel;
    procedure P_Input;
    procedure TB_DelClick(Sender: TObject);
    procedure E_th1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxGVCustomDrawPartBackground(Sender: TcxGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxCustomGridCellViewInfo;
      var ADone: Boolean);
    procedure cxGVK3CustomDrawPartBackground(Sender: TcxGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxCustomGridCellViewInfo;
      var ADone: Boolean);
    procedure ToolButton3Click(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
  private
    ListItemFNumber,P_th:String;
    P_i:boolean;
    FFullFileName: string;
    qry: TADOQuery;
    P_FItemListId,P_FFullNumber,p_FItemNo,p_Code:string;
    P_FProductID,P_FK3ID,P_FItemId:Integer;



    
    function GetDsnFile: string;
    function GetTempFile: string;
    procedure WriteODBC(IniFile: TIniFile);
    procedure WriteDbFile(IniFile: TIniFile; DbFile: string);

    { Private declarations }

  //  procedure InitParam;
 //   Procedure MyItemList(Sender: TObject);

    property DsnFile:string read GetDsnFile;
    property TempFile:string read GetTempFile;
    function ReadSourceConnStr: string;
  public
    { Public declarations }
  end;

var
  Frm_LKSHBOMPick: TFrm_LKSHBOMPick;


implementation

uses FRMDATA, FRMMAIN, COMMON, FrmSelect, ProgBar, PROGRASS;

{$R *.dfm}




function TFrm_LKSHBOMPick.GetDsnFile: string;
const
 schema = 'schema.ini';
begin
 result := ExtractfileDir(Application.ExeName)+'\'+schema;
end;

function TFrm_LKSHBOMPick.GetTempFile: string;
const
 cTempFile='imp.txt';
begin
 result:=ExtractfileDir(Application.ExeName)+'\'+cTempFile;
end;


procedure TFrm_LKSHBOMPick.WriteODBC(IniFile: TIniFile);
const
  ODBC = 'ODBC';
begin
  iniFile.WriteString(ODBC, 'DRIVER', 'Microsoft Text-Treiber (*.txt; *.csv)');
  iniFile.WriteString(ODBC, 'UserCommitSync', 'Yes');
  iniFile.WriteString(ODBC, 'SafeTransactions', '0');
  iniFile.WriteString(ODBC, 'PageTimeout', '5');
  iniFile.WriteString(ODBC, 'MaxScanRows', '25');
  iniFile.WriteString(ODBC, 'FIL', 'text');
  iniFile.WriteString(ODBC, 'Extensions', 'txt,csv,tab,asc');
  iniFile.WriteString(ODBC, 'DriverId', '27');
  iniFile.WriteString(ODBC, 'DefaultDir', ExtractfileDir(Application.ExeName)+'\');
end;

procedure TFrm_LKSHBOMPick.WriteDbFile(IniFile: TIniFile; DbFile: string);
begin
  iniFile.WriteString(DBFile, 'ColNameHeader', 'true');
  iniFile.WriteString(DBFile, 'Format', 'TabDelimited');
  iniFile.WriteString(DBFile, 'MaxScanRows', '25');
  iniFile.WriteString(DBFile, 'CharacterSet', 'OEM');
  iniFile.WriteString(DBFile, 'Col1', 'xh Integer');
  iniFile.WriteString(DBFile, 'Col2', 'th char');
  iniFile.WriteString(DBFile, 'Col3', 'mc char');
  iniFile.WriteString(DBFile, 'Col4', 'gg char');
  iniFile.WriteString(DBFile, 'Col5', 'cl char');
  iniFile.WriteString(DBFile, 'Col6', 'dw char');
  iniFile.WriteString(DBFile, 'Col7', 'FQry Currency');
  iniFile.WriteString(DBFile, 'Col8', 'ssth char');

  iniFile.WriteString(DBFile, 'Col9', 'Remark char');


end;

function TFrm_LKSHBOMPick.ReadSourceConnStr: string;
const
  Conn1 = 'Provider=MSDASQL.1;Persist Security Info=False;';
  Conn2 = 'Extended Properties="DefaultDir=%s'; //%s-文本文件路径
  Conn3 = ';Driver={Microsoft Text-Treiber (*.txt; *.csv)};DriverId=27;';
  Conn4 = 'Extensions=txt,csv,tab,asc;FIL=text;FILEDSN=%s'; //%s-DSN文件名
  Conn5 = ';MaxScanRows=25;UserCommitSync=Yes;"';

var
  connStr: string;
begin
  connStr := conn1 + conn2 + conn3 + conn4 + conn5;
  result := format(connStr, [ExtractfileDir(Application.ExeName),DsnFile]);

end;


procedure TFrm_LKSHBOMPick.P_Sel;  //提取文本文件
var
    dlgOpen: TRzOpenDialog;
    Filter,SelCaption,tmp:string;
    IniFile: TIniFile;
    TBADoSource:TADoTable;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  qry.CommandTimeout:=500;
  begin
    dlgOpen:=TRzOpenDialog.Create(Application);
    try
      Filter:='';
      selCaption:='';
      Filter:='文本文件|*.txt;*.csv|所有文件|*.*';
      dlgOpen.Title:='选择部件的导入文件';
      dlgOpen.Filter:=Filter;
    If not dlgOpen.Execute then Exit;
    Self.FFullFileName:=dlgOpen.FileName;
    finally
    dlgOpen.Free;
    Application.ProcessMessages;
  end;
    If FileExists(TempFile) then
    If not FileSetReadonly(TempFile,False) then
       Exit;
    If not CopyFile(PChar(FFullFileName),PChar(TempFile),false) then
       Exit;
    If FileExists(DsnFile) then
    try
      DeleteFile(DsnFile);
    finally
      ;
    end;

    IniFile := TIniFile.Create(DsnFile);
    try
      WriteODBC(IniFile);
      tmp:=ExtractFileName(TempFile);
      WriteDbFile(IniFile,tmp);
      TBADoSource:=TADoTable.Create(self);
      TBADoSource.ConnectionString:=ReadSourceConnStr;
      TBADoSource.TableName:=format('[%s]',[tmp]);
      TBADoSource.Active:=true;
      DataSource.DataSet:=TBADoSource;
      cxGV.DataController.DataSource.DataSet:=TBADoSource;
      mdata1.Close;
      mdata1.CopyFromDataSet(DataSource.DataSet);
      mdata1.Active;
    except
    end;
  end;

  qry.SQL.Text:='Delete from T_LKSHTempTxt where UserNum=:UserNum';
  qry.Parameters.FindParam('UserNum').Value:=UserNum;
  qry.ExecSQL;

  qry.SQL.Text:='Insert into T_LKSHTempTxt(xh,th,mc,gg,cl,dw,FQry,ssth,Remark,UserNum,FK3ID) '
               +'Values(:xh,:th,:mc,:gg,:cl,:dw,:FQry,:ssth,:Remark,:UserNum,:FK3ID)';
  qry.ExecSQL;
  with mdata1 do
  begin
    DisableControls;
    First;
    while not eof do
    begin
      with qry do
      begin
        Parameters.FindParam('xh').Value:=mdata1['xh'];
        Parameters.FindParam('th').Value:=mdata1['th'];
        Parameters.FindParam('mc').Value:=mdata1['mc'];
        Parameters.FindParam('gg').Value:=mdata1.FieldByName('gg').asstring;
        Parameters.FindParam('cl').Value:=mdata1['cl'];
        Parameters.FindParam('dw').Value:=mdata1['dw'];
        Parameters.FindParam('FQry').Value:=mdata1['FQry'];
        Parameters.FindParam('ssth').Value:=mdata1['ssth'];
        Parameters.FindParam('Remark').Value:=mdata1['Remark'];
        Parameters.FindParam('UserNum').Value:=UserNum;
        Parameters.FindParam('FK3ID').Value:=UserFK3ID;
        ExecSQL;
      end;
      application.ProcessMessages;
      Next;
    end;
    EnableControls;
  end;
  try
    qry.SQL.Text:='Delete from T_LKSHTempTxt where Isnull(xh,0)=0 or (Isnull(mc,'''')='''' and Isnull(th,'''')='''' and Isnull(FQry,0)=0)';
    qry.ExecSQL;
  finally
     ;
  end;
  cxGvColumn(cxGv,Mdata);
end;

procedure TFrm_LKSHBOMPick.P_Input;  //导入文件
var
  proc:TADOStoredProc;
  P_Retinf:String;

begin
  proc:=TADOStoredProc.Create(self);
  proc.Connection:=mdlData.conn;
  proc.CommandTimeout:=500;

  try
    //proc.ProcedureName:='P_DesignBOM;1';
    proc.ProcedureName:='P_Imp_BOM;1';
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=20;
      name := '@UserNum';
      value:=UserNUM;
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftInteger;
      Direction := pdinput;
      size:=20;
      name := '@type';
      value:='1';
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
      Direction := pdinput;
      size:=10;
      name := '@TopNum';
      value:=P_FItemNo;
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=20;
      name := '@th2';
      value:=Trim(E_th2.Text);
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=20;
      name := '@TwoNum';
      value:=P_FFullNumber;
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=20;
      name := '@Num';
      value:=UserNum;
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftInteger;
      Direction := pdinput;
      name := '@FProductID';
      value:=P_FProductID;
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftInteger;
      Direction := pdinput;
      name := '@FK3ID';
      value:=P_FK3ID;
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdoutput;
      size:=255;
      name := '@Retinf';
      value:='';
    end;

    proc.Open;
    P_Retinf:=proc.Parameters.FindParam('@Retinf').Value;
    If  P_Retinf<>'' then
    begin
      Messagedlg(P_Retinf,mtInformation,[mbok],0);
      mdata.Close;
      mdata.CopyFromDataSet(proc);
      Mdata.Active:=True;

      DS_Mdata.DataSet:=Mdata;
      cxGV.DataController.DataSource:=DS_Mdata;
      cxGvColumn(cxGv,mdata);
      Exit;
    end;
    mdata.Close;
    mdata.CopyFromDataSet(proc);
    Mdata.Active:=True;
    DS_Mdata.DataSet:=Mdata;
    cxGV.DataController.DataSource:=DS_Mdata;
    cxGvColumn(cxGv,mdata);
  finally
     ;
  end;
end;


procedure TFrm_LKSHBOMPick.CancelBtnClick(Sender: TObject);
begin
  inherited;
  self.Close ;
end;

procedure TFrm_LKSHBOMPick.FormResize(Sender: TObject);
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
  
  L_title.Caption:='设计BOM';
  Self.Caption:='设计BOM';
end;

procedure TFrm_LKSHBOMPick.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=cafree;
  Frm_LKSHBOMPick:=nil;
end;

procedure TFrm_LKSHBOMPick.TB_EXITClick(Sender: TObject);
var qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  try
    qry.SQL.Text:='Delete from T_Temp_DesignText where UserNum=:UserNum';
    qry.Parameters.FindParam('UserNum').Value:=UserNum;
    qry.ExecSQL;
  finally
     ;
  end;
  self.Close;
end;

procedure TFrm_LKSHBOMPick.TB_DownClick(Sender: TObject);
Var i:Integer;
begin
  If P_i then
  begin
    TB_Down.Caption:='取消设置';
    cxGV.OptionsData.Editing:=False;
    cxGv.OptionsView.GroupByBox:=False;

    cxGVK3.OptionsData.Editing:=False;
    cxGvK3.OptionsView.GroupByBox:=False;

    for i:=0 to cxGv.ColumnCount-1 do
    begin
      cxGv.Columns[i].Options.Filtering:=False;
      cxGv.Columns[i].Options.Editing:=False;
      cxGv.Columns[i].Options.Sorting:=False;
    end;
    for i:=0 to cxGVK3.ColumnCount-1 do
    begin
      cxGVK3.Columns[i].Options.Filtering:=False;
      cxGVK3.Columns[i].Options.Editing:=False;
      cxGVK3.Columns[i].Options.Sorting:=False;
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
    for i:=0 to cxGVK3.ColumnCount-1 do
    begin
      cxGVK3.Columns[i].Options.Filtering:=True;
      cxGVK3.Columns[i].Options.Editing:=True;
      cxGVK3.Columns[i].Options.Sorting:=True;
    end;

    P_i:=True;
  end;
end;

procedure TFrm_LKSHBOMPick.MyTreeViewChange(Sender: TObject; Node: TTreeNode);
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

procedure TFrm_LKSHBOMPick.MyTreeViewExpanding(Sender: TObject;
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

  qry.SQL.Text:='Select FNumber, FParentNumber,FName,FProductID,FItemListId,'
               +'Isleaf from VT_DesignBOM where FParentNumber= '''
               +PTree(Node.Data).ID+'''';
               //+''' order by FName,FFullNumber';

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
    P_FItemListId:=qry.FieldByName('FItemListId').Value;
    P.Caption := qry.FieldByName('FName').AsString;
    P.Flag := cNoLoadFlag;                            // 新节点，未加载标志
    with MyTreeView.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('Isleaf').value;
    end;
    qry.Next;
  end;

   //cxGvColumn(cxGv,Mdata);

end;

procedure TFrm_LKSHBOMPick.FormCreate(Sender: TObject);
begin
  inherited;
  V_k3.Active:=True;
  TB_Del.Enabled:= mdlData.CheckFrmRights(TFrm_LKSHBOMPick.ClassName,'删除');


end;

procedure TFrm_LKSHBOMPick.TB_RefClick(Sender: TObject);
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

procedure TFrm_LKSHBOMPick.TB_DelClick(Sender: TObject);
var
  proc:TADOStoredProc;
  P_Retinf:String;
begin
  proc:=TADOStoredProc.Create(self);
  proc.Connection:=mdlData.conn;
  proc.CommandTimeout:=500;

  If ShowMsg('是否删除【'+P_th+'】此图号！','提示') then
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
      //  Self.TB_RefClick(Sender);
      end;
    finally
       ;
    end;
  end; 
end;

procedure TFrm_LKSHBOMPick.E_th1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;



begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  qry.CommandTimeout:=500;
  try
    qry.SQL.Text:='Select * from  VT_ItemListPart ';
    qry.Open;
  finally
     ;
  end;
 // selValue:=select('请选择产品类型','FpartsNumber','FItemNumber','FpartsNumber','FpartsNumber;FPartsName',qry);
  selValue:=select('请选择产品类型','th','ssth','th','th;mc',qry);
  If (Length(selValue)>0) and (qry.FieldByName('leaf').Value=1) then
  begin
    E_th1.Text:=qry.FieldByName('FItemNumber').AsString;
    E_th2.Text:=qry.FieldByName('FpartsNumber').AsString;
    E_FClientFullName.Text:=qry.FieldByName('FClientFullName').AsString;
    E_FItemModel.Text:=qry.FieldByName('FItemModel').AsString;
    P_FProductID :=qry.FieldByName('FProductID').Value;
    P_FItemListId:=qry.FieldByName('FItemListId').Value;
    P_FFullNumber:=qry.FieldByName('FFullNumber').AsString;
    P_FItemNo:=qry.FieldByName('FItemNo').AsString;
    P_FItemId:=qry.FieldByName('FItemId').Value;
    P_FK3ID:=qry.FieldByName('FK3ID').Value;

  end
  else
    Messagedlg('请选择明细！',mtInformation,[mbok],0);


 //插入一级图号
//     T_Public
  try
    qry.SQL.Text:='Select distinct th from T_Public where th=:th';
    qry.Parameters[0].Value:=Trim(E_th1.Text);
    qry.Open;
  finally
     ;
  end;
  If qry.RecordCount<1 then
  begin
    try
      qry.SQL.Text:='Insert into T_Public (th,mc,gg,FTxtName,FTxtModel,TxtUnitName,FSuttle,IsLeaf,FK3ID) '
                   +'Values(:th,:mc,:gg,:FtxtName,:FTxtModel,:TxtUnitName,:FSuttle,:IsLeaf,:FK3ID)';
      qry.Parameters.FindParam('th').Value:=Trim(E_th1.Text);
      qry.Parameters.FindParam('mc').Value:=Trim(E_FClientFullName.Text);
      qry.Parameters.FindParam('gg').Value:=Trim(E_FItemModel.Text);
      qry.Parameters.FindParam('FTxtName').Value:='';
      qry.Parameters.FindParam('FTxtModel').Value:='';
      qry.Parameters.FindParam('TxtUnitName').Value:='';
      qry.Parameters.FindParam('FSuttle').Value:=0;
      qry.Parameters.FindParam('IsLeaf').Value:=0;
      qry.Parameters.FindParam('FK3ID').Value:=P_FK3ID;
      qry.ExecSQL;
    finally
       ;
    end;
  end;

//  T_DesignBOM_Structure

  try
    qry.SQL.Text:='Select id from T_Public where th=:th';
    qry.Parameters[0].Value:=Trim(E_th1.Text);
    qry.Open;
  finally
     ;
  end;
  If qry.RecordCount>0 then
    P_Code:=qry.FieldByName('id').Value;


  try
    qry.SQL.Text:='Select distinct FFullNumber from V_DesignBOM_Structure where FFullNumber=:FFullNumber';
    qry.Parameters[0].Value:=p_FItemNo;
    qry.Open;
  finally
     ;
  end;

  If qry.RecordCount<1 then
  begin
    try
      qry.SQL.Text:='Insert into T_DesignBOM_Structure(Code,Parent,PartID,FQry,FFullNumber,FSumQry,FFullName) '
                   +'Values(:Code,:Parent,:PartID,:FQry,:FFullNumber,:FSumQry,:FFullName)';
      qry.Parameters.FindParam('Code').Value:=P_Code;
      qry.Parameters.FindParam('Parent').Value:=0;
      qry.Parameters.FindParam('PartID').Value:=0;
      qry.Parameters.FindParam('FQry').Value:=1;
      qry.Parameters.FindParam('FFullNumber').Value:=p_FItemNo;
      qry.Parameters.FindParam('FSumQry').Value:=1;
      qry.Parameters.FindParam('FFullName').Value:=Trim(E_th1.Text)+','+Trim(E_FClientFullName.Text)+';';
      qry.ExecSQL;
    finally
       ;
    end;
  end;


//是否存在    

  try
    qry.SQL.Text:='Select distinct FFullNumber from V_DesignBOM_Structure where FFullNumber like '''+P_FFullNumber+'%''';
    qry.Open;
  finally
     ;
  end;
  If qry.RecordCount>0 then
  begin
    Messagedlg('图号【'+Trim(E_th1.Text)+'】【.'+Trim(E_th2.Text)+'】已存在无法导入！',mtInformation,[mbok],0);
    Exit;
  end;

  Self.P_Sel;

  If ShowMsg('是否导入设计定额？','提示信息') then
  begin
    Self.P_Input;
//    Self.TB_RefClick(Sender);
  end
  else
     Exit;


 qry.Free;
end;

procedure TFrm_LKSHBOMPick.cxGVCustomDrawPartBackground(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxCustomGridCellViewInfo; var ADone: Boolean);
begin
  inherited;
  AViewInfo.Text:='设计BOM导入';
  ACanvas.FillRect(AViewInfo.Bounds);
end;

procedure TFrm_LKSHBOMPick.cxGVK3CustomDrawPartBackground(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxCustomGridCellViewInfo; var ADone: Boolean);
begin
  inherited;
  AViewInfo.Text:='K3信息查询';
  ACanvas.FillRect(AViewInfo.Bounds);
end;

procedure TFrm_LKSHBOMPick.ToolButton3Click(Sender: TObject);
var
  proc:TADOStoredProc;
  P_Retinf:String;

begin
  inherited;
  Self.P_Sel;
  proc:=TADOStoredProc.Create(self);
  proc.Connection:=mdlData.conn;
  proc.CommandTimeout:=500;

  try
    proc.ProcedureName:='P_Imp_LKSHBOM;1';
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=20;
      name := '@UserNum';
      value:=UserNum;
    end;
 {   with proc.Parameters.AddParameter do
    begin
      DataType := ftInteger;
      Direction := pdinput;
      size:=20;
      name := '@type';
      value:='1';
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
      Direction := pdinput;
      size:=10;
      name := '@TopNum';
      value:=P_FItemNo;
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=20;
      name := '@th2';
      value:=Trim(E_th2.Text);
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=20;
      name := '@TwoNum';
      value:=P_FFullNumber;
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=20;
      name := '@Num';
      value:=UserNum;
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftInteger;
      Direction := pdinput;
      name := '@FProductID';
      value:=P_FProductID;
    end;   }
    with proc.Parameters.AddParameter do
    begin
      DataType := ftInteger;
      Direction := pdinput;
      name := '@FK3ID';
      value:=UserFK3ID;
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdoutput;
      size:=255;
      name := '@Retinf';
      value:='';
    end;

    proc.Open;
    P_Retinf:=proc.Parameters.FindParam('@Retinf').Value;
    If  P_Retinf<>'' then
    begin
      Messagedlg(P_Retinf,mtInformation,[mbok],0);
      mdata.Close;
      mdata.CopyFromDataSet(proc);
      Mdata.Active:=True;
    // p:=mdata.RecordCount;
      DS_Mdata.DataSet:=Mdata;
      cxGV.DataController.DataSource:=DS_Mdata;
      cxGvColumn(cxGv,mdata);
      Exit;
    end;
    mdata.Close;
    mdata.CopyFromDataSet(proc);
    Mdata.Active:=True;
    DS_Mdata.DataSet:=Mdata;
    cxGV.DataController.DataSource:=DS_Mdata;
    cxGvColumn(cxGv,mdata);
  finally
     ;
  end;



end;

procedure TFrm_LKSHBOMPick.ToolButton4Click(Sender: TObject);
begin
  inherited;
  ExportToExcel(cxGrid,True,TRue);
end;

end.
