unit Main_General;

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
  cxBlobEdit, jpeg, ActnList, RzStatus;

type
  TFrm_General = class(TFrm_GridBass)
    MData: TdxMemData;
    DS_Mdata: TDataSource;
    ImageList: TImageList;
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
    PC_1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    TS_K3: TRzTabSheet;
    ADOQuery: TADOQuery;
    DataSource: TDataSource;
    cxGrid: TcxGrid;
    cxGV: TcxGridDBTableView;
    xh: TcxGridDBColumn;
    A4: TcxGridDBColumn;
    Code: TcxGridDBColumn;
    th: TcxGridDBColumn;
    mc: TcxGridDBColumn;
    gg: TcxGridDBColumn;
    ssth: TcxGridDBColumn;
    cl: TcxGridDBColumn;
    FQry: TcxGridDBColumn;
    FSumQry: TcxGridDBColumn;
    FNumber: TcxGridDBColumn;
    FName: TcxGridDBColumn;
    FModel: TcxGridDBColumn;
    UnitName: TcxGridDBColumn;
    FSuttle: TcxGridDBColumn;
    FRation: TcxGridDBColumn;
    Remark: TcxGridDBColumn;
    bjjb: TcxGridDBColumn;
    FFullNumber: TcxGridDBColumn;
    ssFullNumber: TcxGridDBColumn;
    k3cl: TcxGridDBColumn;
    cxGL: TcxGridLevel;
    ADOStoredProc1: TADOStoredProc;
    FCode: TcxGridDBColumn;
    FK3Suttle: TcxGridDBColumn;
    Image4: TImage;
    Image1: TImage;
    Label5: TLabel;
    Label1: TLabel;
    FK3ID: TcxGridDBColumn;
    Label7: TLabel;
    RzSizePanel1: TRzSizePanel;
    MyTreeView: TTreeView;
    Panel1: TPanel;
    ToolBar1: TToolBar;
    TB_Ref: TToolButton;
    TB_Sel: TToolButton;
    ToolButton5: TToolButton;
    ToolButton2: TToolButton;
    TB_Del: TToolButton;
    TB_Down: TToolButton;
    TB_PRIN: TToolButton;
    ToolButton1: TToolButton;
    TB_EXIT: TToolButton;
    TS_K3Item_Inf: TRzTabSheet;
    cxGrid8: TcxGrid;
    cxGV8: TcxGridDBTableView;
    FNumber_8: TcxGridDBColumn;
    FName_8: TcxGridDBColumn;
    FModel_8: TcxGridDBColumn;
    FUnitName_8: TcxGridDBColumn;
    F_105: TcxGridDBColumn;
    F_104: TcxGridDBColumn;
    F_106: TcxGridDBColumn;
    FItemId_8: TcxGridDBColumn;
    cxGL8: TcxGridLevel;
    ToolBar2: TToolBar;
    TB_Ref8: TToolButton;
    TB_Down8: TToolButton;
    ToolButton12: TToolButton;
    RzSizePanel2: TRzSizePanel;
    MyTreeView8: TTreeView;
    ToolBar3: TToolBar;
    RB_Ref2: TToolButton;
    TB_Down2: TToolButton;
    ToolButton4: TToolButton;
    cxGridK3: TcxGrid;
    cxGVK3: TcxGridDBTableView;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGLK3: TcxGridLevel;
    Image2: TImage;
    Label2: TLabel;
    Mdata8: TdxMemData;
    DS_Mdata8: TDataSource;
    Mdata2: TdxMemData;
    DS_Mdata2: TDataSource;
    dxMemData1: TdxMemData;
    DataSource1: TDataSource;
    dxMemData2: TdxMemData;
    DataSource2: TDataSource;
    FBomReMark: TcxGridDBColumn;
    FBjBs: TcxGridDBColumn;
    Txtth: TcxGridDBColumn;
    cxGVDBColumn1: TcxGridDBColumn;
    actionList: TActionList;
    Actrights: TAction;
    Actpwd: TAction;
    ActLog: TAction;
    ActBOMServer: TAction;
    Act_IMP_BOM: TAction;
    ActWorkPrice: TAction;
    ActBalancePrice: TAction;
    ActAgentBalance: TAction;
    ActWorkItem: TAction;
    ActAgentBalanceQry: TAction;
    ActLKDDBalanceItem: TAction;
    stbBar: TRzStatusBar;
    RzClockStatus1: TRzClockStatus;
    RzKeyStatus1: TRzKeyStatus;
    RzKeyStatus2: TRzKeyStatus;
    RzKeyStatus3: TRzKeyStatus;
    stbMsg: TRzFieldStatus;
    TB_Out: TToolButton;
    ToolButton3: TToolButton;
    ToolButton6: TToolButton;
    procedure CancelBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TB_EXITClick(Sender: TObject);
    procedure TB_DownClick(Sender: TObject);
    procedure TB_SelClick(Sender: TObject);
    procedure MyTreeViewChange(Sender: TObject; Node: TTreeNode);
    procedure MyTreeViewExpanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure TB_RefClick(Sender: TObject);
    procedure P_Sel;
    procedure P_Input;
    procedure TB_DelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure RB_Ref2Click(Sender: TObject);
    procedure TB_Down2Click(Sender: TObject);
    procedure TB_Down8Click(Sender: TObject);
    procedure TB_Ref8Click(Sender: TObject);
    procedure MyTreeView8Expanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure MyTreeView8Change(Sender: TObject; Node: TTreeNode);
    procedure Act_IMP_BOMExecute(Sender: TObject);
    procedure TB_OutClick(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure ToolButton6Click(Sender: TObject);
  private
    ListItemFNumber,P_th,P_Retinf,P_Retinf_info:String;
    P_i:boolean;
    FFullFileName: string;
    qry: TADOQuery;
    P_Isleaf:integer;


    
    function GetDsnFile: string;
    function GetTempFile: string;
    procedure WriteODBC(IniFile: TIniFile);
    procedure WriteDbFile(IniFile: TIniFile; DbFile: string);

    { Private declarations }


 //   Procedure MyItemList(Sender: TObject);

    property DsnFile:string read GetDsnFile;
    property TempFile:string read GetTempFile;
    function ReadSourceConnStr: string;
  public
    i:Integer;
    s1,s2:Ttime;
    { Public declarations }
  end;

var
  Frm_General: TFrm_General;


implementation

uses FRMDATA, FRMMAIN, COMMON, Edit_Item, FrmSelect, ProgBar, PROGRASS;

{$R *.dfm}

function TFrm_General.GetDsnFile: string;
const
 schema = 'schema.ini';
begin
 result := ExtractfileDir(Application.ExeName)+'\'+schema;
end;

function TFrm_General.GetTempFile: string;
const
 cTempFile='imp.txt';
begin
 result:=ExtractfileDir(Application.ExeName)+'\'+cTempFile;
end;


procedure TFrm_General.WriteODBC(IniFile: TIniFile);
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

procedure TFrm_General.WriteDbFile(IniFile: TIniFile; DbFile: string);
begin
  iniFile.WriteString(DBFile, 'ColNameHeader', 'true');
  iniFile.WriteString(DBFile, 'Format', 'TabDelimited');
  iniFile.WriteString(DBFile, 'MaxScanRows', '25');
  iniFile.WriteString(DBFile, 'CharacterSet', 'OEM');
  iniFile.WriteString(DBFile, 'Col1', 'xh Integer');
  iniFile.WriteString(DBFile, 'Col2', 'A4 char');
  iniFile.WriteString(DBFile, 'Col3', 'th char');
  iniFile.WriteString(DBFile, 'Col4', 'mc char');
  iniFile.WriteString(DBFile, 'Col5', 'gg char');
  iniFile.WriteString(DBFile, 'Col6', 'cl char');
  iniFile.WriteString(DBFile, 'Col7', 'ssth char');

  iniFile.WriteString(DBFile, 'Col8', 'FQry Currency');
  iniFile.WriteString(DBFile, 'Col9', 'FSumQry Currency');
  iniFile.WriteString(DBFile, 'Col10', 'FSuttle Currency');
  iniFile.WriteString(DBFile, 'Col11', 'FRation Currency');

  iniFile.WriteString(DBFile, 'Col12', 'Remark char');
  iniFile.WriteString(DBFile, 'Col13', 'bjjb char');
  iniFile.WriteString(DBFile, 'Col14', 'FBjBs char');


end;

function TFrm_General.ReadSourceConnStr: string;
const
  Conn1 = 'Provider=MSDASQL.1;Persist Security Info=False;';
  Conn2 = 'Extended Properties="DefaultDir=%s'; //%s-�ı��ļ�·��
  Conn3 = ';Driver={Microsoft Text-Treiber (*.txt; *.csv)};DriverId=27;';
  Conn4 = 'Extensions=txt,csv,tab,asc;FIL=text;FILEDSN=%s'; //%s-DSN�ļ���
  Conn5 = ';MaxScanRows=25;UserCommitSync=Yes;"';
var
  connStr: string;
begin
  connStr := conn1 + conn2 + conn3 + conn4 + conn5;
  result := format(connStr, [ExtractfileDir(Application.ExeName),DsnFile]);

end;

procedure TFrm_General.P_Sel;  //��ȡ�ı��ļ�
var
    dlgOpen: TRzOpenDialog;
    Filter,SelCaption,tmp:string;
    IniFile: TIniFile;
    TBADoSource:TADoTable;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.CommandTimeout:=500;
  begin
    dlgOpen:=TRzOpenDialog.Create(Application);
    try
      Filter:='';
      selCaption:='';
      Filter:='�ı��ļ�|*.txt;*.csv|�����ļ�|*.*';
      dlgOpen.Title:='ѡ�񲿼��ĵ����ļ�';
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
      mdata.CopyFromDataSet(DataSource.DataSet);
      mdata.Active;
    except
    end;
  end;

  qry.SQL.Text:='Delete from T_Temp_DesignText where UserNum=:UserNum';
  qry.Parameters.FindParam('UserNum').Value:=UserNum;
  qry.ExecSQL;

  qry.SQL.Text:='Insert into T_Temp_DesignText(xh,A4,th,Txtth,mc,gg,cl,ssth,FQry,FSumQry,FSuttle,FRation,Remark,bjjb,FBomReMark,FBjBs,UserNum,FK3ID) '
               +'Values(:xh,:A4,:th,:Txtth,:mc,:gg,:cl,:ssth,:FQry,:FSumQry,:FSuttle,:FRation,:Remark,:bjjb,:FBomReMark,:FBjBs,:UserNum,:FK3ID)';
  qry.ExecSQL;
  with mdata do
  begin
    DisableControls;
    First;
    while not eof do
    begin
      with qry do
      begin
        Parameters.FindParam('xh').Value:=mdata['xh'];
        Parameters.FindParam('A4').Value:=mdata['A4'];
        Parameters.FindParam('th').Value:=mdata['th'];
        Parameters.FindParam('Txtth').Value:=mdata['th'];
        Parameters.FindParam('mc').Value:=mdata['mc'];
        Parameters.FindParam('gg').Value:=mdata.FieldByName('gg').asstring;
        Parameters.FindParam('cl').Value:=mdata['cl'];
        Parameters.FindParam('ssth').Value:=mdata['ssth'];
        Parameters.FindParam('FQry').Value:=mdata['FQry'];
        Parameters.FindParam('FSumQry').Value:=mdata['FSumQry'];
        Parameters.FindParam('FSuttle').Value:=mdata['FSuttle'];
        Parameters.FindParam('FRation').Value:=mdata['FSuttle'];
        Parameters.FindParam('Remark').Value:=mdata['Remark'];
        Parameters.FindParam('bjjb').Value:=mdata['bjjb'];
        Parameters.FindParam('FBomReMark').Value:='';
        Parameters.FindParam('FBjBs').Value:=mdata['FBjBs'];
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
    qry.SQL.Text:='Delete from T_Temp_DesignText where Isnull(xh,0)=0 or (Isnull(mc,'''')='''' and Isnull(th,'''')='''' and Isnull(FQry,0)=0 and Isnull(FSuttle,0)=0)';
    qry.ExecSQL;
  finally
     ;
  end;
  cxGvColumn(cxGv,Mdata);

end;

procedure TFrm_General.P_Input;  //�����ļ�
var
  proc:TADOStoredProc;
  P_Retinf:String;
begin
  proc:=TADOStoredProc.Create(self);
  proc.ConnectionString:=mdlData.ReadConnStr;
  proc.CommandTimeout:=5000;
  try
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
      value:='2';
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftInteger;
      Direction := pdinput;
      name := '@FItemListId';
      value:=0;
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=10;
      name := '@TopNum';
      value:='';
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=20;
      name := '@th2';
      value:='';
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=20;
      name := '@TwoNum';
      value:='';
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
      value:=0;
    end;
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
      DS_Mdata.DataSet:=Mdata;
      cxGV.DataController.DataSource:=DS_Mdata;
      mdata.CopyFromDataSet(proc);
      Mdata.Active:=True;
      cxGvColumn(cxGv,mdata);
      cxGrid.SetFocus;
     // Exit;
    end
  finally
     ;
  end;
  proc.Free;

  {  P_Retinf:=proc.Parameters.FindParam('@Retinf').Value;
    If  P_Retinf<>'' then
    begin
      Messagedlg(P_Retinf,mtInformation,[mbok],0);
      mdata.Close;
      DS_Mdata.DataSet:=Mdata;
      cxGV.DataController.DataSource:=DS_Mdata;
      mdata.CopyFromDataSet(proc);
      Mdata.Active:=True;
      cxGvColumn(cxGv,mdata);
      Exit;
    end
    else
    begin
      application.MessageBox('ͨ�ü���������','ϵͳ��ʾ',MB_ICONINFORMATION);
      mdata.Close;
      mdata.CopyFromDataSet(proc);
      Mdata.Active:=True;
      DS_Mdata.DataSet:=Mdata;
      cxGV.DataController.DataSource:=DS_Mdata;
      cxGvColumn(cxGv,mdata);
    end;
  finally
     ;
  end;  }
  
end;


procedure TFrm_General.CancelBtnClick(Sender: TObject);
begin
  inherited;
  self.Close ;
end;

procedure TFrm_General.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=cafree;
  Frm_General:=nil;
end;

procedure TFrm_General.TB_EXITClick(Sender: TObject);
begin
  inherited;
  self.Close;
end;

procedure TFrm_General.TB_DownClick(Sender: TObject);
Var i:Integer;
begin
   If TB_Down8.Caption='����' then
      P_i:=True
   else
      P_i:=False;

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

procedure TFrm_General.TB_SelClick(Sender: TObject);
Var
   a:string;
    n:Integer;
begin
  ShowPrograss('������ȡͨ�ü������ı������Ժ򡭡�',self);
  stbMsg.Caption:='������ȡͨ�ü������ı������Ժ�...  ...';
  Self.P_Sel;//ѡ���ı��ļ�
  ShowPrograss('���ڵ���ͨ�ü�������Ժ򡭡�',self);
  stbMsg.Caption:='���ڵ���ͨ�ü�������Ժ�...  ...';
  //Self.P_input;  //���� ����1
  try
    qry.SQL.Text:='Select GetDate() as s';
    qry.Open;
  finally
     ;
  end;
  S1:=qry.FieldByName('s').Value;
  for n:=1 to 12 do
  begin
    i:=n;
    Act_IMP_BOM.Execute;
    If P_Retinf<>'' then
       Exit;
  end;
  If P_Retinf='' then
  begin
    i:=13;
    Act_IMP_BOM.Execute;
  end
  else
    Exit;


 {
  Self.P_Sel;
  If ShowMsg('�Ƿ���ͨ�ü����','��ʾ��Ϣ') then
  begin
    ShowPrograss('���ڵ���ͨ�ü�������Ժ򡭡�',self);
    s1:=now();
    a:='';
    Self.P_Input;
    s2:=now();
    a:=FormatDateTime('hh:mm:ss',s2-s1);
    If  P_Retinf='' then
        Messagedlg('����ͨ�ü�������ϣ�����ʱ�䣺��'+a+'��',mtInformation,[mbok],0);
  // Messagedlg('����ͨ�ü�������ϣ�����ʱ�䣺��'+a+'��',mtInformation,[mbok],0);
    //Self.TB_RefClick(Sender);
  end
  else
     Exit;
   }

end;

procedure TFrm_General.MyTreeViewChange(Sender: TObject; Node: TTreeNode);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If Node = nil then Exit;
  with PTree(Node.Data)^ do
  begin
    ListItemFNumber:=PTree(Node.Data).FNumber;
    P_th:=PTree(Node.Data).th;
    P_Isleaf:=PTree(Node.Data).Isleaf;
    if P_Isleaf=1 then
    begin
      If MyItemList(qry,Mdata,'V_General_Structure','FFullNumber',ListItemFNumber,'FFullNumber') then
      //If not MyItemList(qry,Mdata,'V_General_Structure','''TYJT''+'';''+jb+'';''+Cast(FK3ID as Varchar(2))+'';''+FFullNumber+'';'' ',ListItemFNumber,'FFullNumber') then
      begin
        mdata.Open;
        mdata.First;
        cxGvColumn(cxGv,Mdata);
      end;
    end
    else
      mdata.Close;  
  end;
  cxGvColumn(cxGv,Mdata);
end;

procedure TFrm_General.MyTreeViewExpanding(Sender: TObject;
  Node: TTreeNode; var AllowExpansion: Boolean);
var
  P :PTree;
  qry:TADOquery;

begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;


  If (Node = nil) or
     (PTree(Node.Data).Flag <> cNoLoadFlag) or   // 1.���ر�־
     (not Node.HasChildren) or                   // 2.δ����
     (Node.Count>0) then                         // 3.�����ӽڵ�
     Exit;

  qry.SQL.Text:='Select FNumber, FparentNumber,FName,Isleaf from VT_General where FparentNumber= '''
               +PTree(Node.Data).ID+''' and FK3ID=:FK3ID  order by th';
  qry.Parameters.FindParam('FK3ID').value:=UserFK3ID;
  qry.open;

  PTree(Node.Data).Flag := cLoadFlag;                  // �����Ѽ��ر�־
  while not qry.Eof do
  begin
    New(P);
    P.ID := qry.FieldByName('FNumber').AsString;
    P.ParentID := qry.FieldByName('FparentNumber').AsString;
    P.FNumber:=qry.FieldByName('FNumber').AsString;
    P.Th:=qry.FieldByName('FName').AsString;
    P.Caption := qry.FieldByName('FName').AsString;
    P.Isleaf := qry.FieldByName('Isleaf').Value;
    P.Flag := cNoLoadFlag;                            // �½ڵ㣬δ���ر�־
    with MyTreeView.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('Isleaf').value;
    end;
    qry.Next;
  end;
end;

procedure TFrm_General.FormCreate(Sender: TObject);
begin
  inherited;
  TB_Sel.Enabled:= mdlData.PermissionCheckRights(TFrm_General.ClassName,'����');
  TB_Del.Enabled:= mdlData.PermissionCheckRights(TFrm_General.ClassName,'ɾ��');
  TB_Prin.Enabled:= mdlData.PermissionCheckRights(TFrm_General.ClassName,'��ӡ');
end;

procedure TFrm_General.TB_RefClick(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If not TreeVeiwList(qry,MyTreeView,'VT_General') then
  begin
    Application.MessageBox(PChar('�������ͽṹ��ʾ��������ϵϵͳ������Ա'), '����', MB_OK +MB_ICONSTOP);
  end;

end;

procedure TFrm_General.TB_DelClick(Sender: TObject);
var
  proc:TADOStoredProc;
  P_Retinf:String;
begin
  proc:=TADOStoredProc.Create(self);
  proc.ConnectionString:=mdlData.ReadConnStr;
  proc.CommandTimeout:=500;

  If ShowMsg('�Ƿ�ɾ��ͼ��Ϊ'+P_th+'��ͨ�ü�?','��ʾ') then
  begin
    try
      proc.ProcedureName:='P_Del_General;1';
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
        Messagedlg('����ɾ���ɹ���',mtInformation,[mbok],0);
        mdata.Close;
        //Self.TB_RefClick(Sender);
      end;
    finally
       ;
    end;
  end; 
end;

procedure TFrm_General.FormShow(Sender: TObject);
begin
  L_title.Caption:='ͨ�ü�BOM';
  Self.Caption:='ͨ�ü�BOM';
  TB_Ref.Click;
end;

procedure TFrm_General.ToolButton2Click(Sender: TObject);
var  proc:TADOStoredProc;
begin

  proc:=TADOStoredProc.Create(self);
  proc.ConnectionString:=mdlData.ReadConnStr;
  proc.CommandTimeout:=500;

  try
    proc.ProcedureName:='UpdataK3ItemId;1';
    proc.ExecProc;
  finally
     ;
  end;
  mdata2.Close;
  try
    qry.SQL.Text:='Select * from T_K3Item where FK3ID='+IntToStr(UserFK3ID);
    qry.Open;
  finally
     ;
  end;
  mdata2.CopyFromDataSet(qry);
  mdata2.Open;
  mdata2.First;
  Messagedlg('K3���Ͽ���ͼ������ϣ�',mtInformation,[mbok],0);


end;

procedure TFrm_General.RB_Ref2Click(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.CommandTimeout:=500;
  If PC_1.ActivePage=TS_K3 then
  begin
   try
      qry.SQL.Text:='Select * from T_K3Item where FK3ID='+IntToStr(UserFK3ID);
      qry.Open;
    finally
       ;
    end;
    mdata2.CopyFromDataSet(qry);
    mdata2.Open;
    mdata2.First;
  end;



end;

procedure TFrm_General.TB_Down2Click(Sender: TObject);
Var i:Integer;
begin
   If TB_Down8.Caption='����' then
      P_i:=True
   else
      P_i:=False;

  If PC_1.ActivePage=TS_K3 then
  begin
    If P_i then
    begin
      TB_Down2.Caption:='ȡ������';
      cxGVK3.OptionsData.Editing:=False;
      cxGVK3.OptionsView.GroupByBox:=False;
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
      TB_Down2.Caption:='����';
      cxGVK3.OptionsData.Editing:=True;
      cxGVK3.OptionsView.GroupByBox:=True;
      for i:=0 to cxGVK3.ColumnCount-1 do
      begin
        cxGVK3.Columns[i].Options.Filtering:=True;
        cxGVK3.Columns[i].Options.Editing:=True;
        cxGVK3.Columns[i].Options.Sorting:=True;
      end;
      P_i:=True;
    end;
  end;


end;

procedure TFrm_General.TB_Down8Click(Sender: TObject);
Var i:Integer;
begin
   If TB_Down8.Caption='����' then
      P_i:=True
   else
      P_i:=False;

  If PC_1.ActivePage=TS_K3Item_Inf then
  begin
    If P_i then
    begin
      TB_Down8.Caption:='ȡ������';
      cxGV8.OptionsData.Editing:=False;
      cxGV8.OptionsView.GroupByBox:=False;
      for i:=0 to cxGV8.ColumnCount-1 do
      begin
        cxGV8.Columns[i].Options.Filtering:=False;
        cxGV8.Columns[i].Options.Editing:=False;
        cxGV8.Columns[i].Options.Sorting:=False;
      end;
      P_i:=False;
    end
    else
    begin
      TB_Down8.Caption:='����';
      cxGV8.OptionsData.Editing:=True;
      cxGV8.OptionsView.GroupByBox:=True;
      for i:=0 to cxGV8.ColumnCount-1 do
      begin
        cxGV8.Columns[i].Options.Filtering:=True;
        cxGV8.Columns[i].Options.Editing:=True;
        cxGV8.Columns[i].Options.Sorting:=True;
      end;
      P_i:=True;
    end;
  end;

end;

procedure TFrm_General.TB_Ref8Click(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  mdata8.Open;
  If not TreeVeiwList(qry,MyTreeView8,'VT_K3_Item_Inf') then
  begin
    Application.MessageBox(PChar('���ͽṹ��ʾ��������ϵϵͳ������Ա'), '����', MB_OK +MB_ICONSTOP);
  end;

end;

procedure TFrm_General.MyTreeView8Expanding(Sender: TObject;
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

  qry.SQL.Text:='Select FNumber,FParentNumber,FName,FFullNumber,'
               +'Isleaf from VT_K3_Item_Inf where FParentNumber= '''
               +PTree(Node.Data).ID+''' order by FFullNumber';

  qry.open;
  qry.First;

  PTree(Node.Data).Flag := cLoadFlag;                  // �����Ѽ��ر�־
  while not qry.Eof do
  begin
    New(P);
    P.ID := qry.FieldByName('FNumber').AsString;
    P.ParentID := qry.FieldByName('FParentNumber').AsString;
    P.FNumber2:=qry.FieldByName('FFullNumber').AsString;
    P.Caption := qry.FieldByName('FName').AsString;
    P.Flag := cNoLoadFlag;                            // �½ڵ㣬δ���ر�־
    with MyTreeView8.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('Isleaf').value;
    end;
    qry.Next;
  end;

end;

procedure TFrm_General.MyTreeView8Change(Sender: TObject; Node: TTreeNode);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;

  ShowPrograss('������ȡ���ݣ����Ժ򡭡�',self);
  If Node = nil then Exit;
  with PTree(Node.Data)^ do
  begin
    ListItemFNumber:=PTree(Node.Data).FNumber2;
    If not MyItemList(qry,Mdata8,'K3_Item_Inf','FNumber',ListItemFNumber,'FNumber') then
    begin
      mdata8.Open;
      cxGvColumn(cxGv,Mdata8);
    end;
  end;

end;

procedure TFrm_General.Act_IMP_BOMExecute(Sender: TObject);
var
  proc:TADOStoredProc;
begin
  proc:=TADOStoredProc.Create(self);
  proc.ConnectionString:=mdlData.ReadConnStr;
  proc.CommandTimeout:=500;
  P_Retinf:='';
  P_Retinf_info:='';
  try
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
      value:='2';
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftInteger;
      Direction := pdinput;
      name := '@FItemListId';
      value:=0;
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftInteger;
      Direction := pdinput;
      name := '@Process';
      value:=i;
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftDateTime;
      Direction := pdinput;
      name := '@s0';
      value:=s1;
    end;
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
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdoutput;
      size:=255;
      name := '@Retinf_Info';
      value:='';
    end;
    proc.Open;
    P_Retinf:=proc.Parameters.FindParam('@Retinf').Value;
    P_Retinf_info:=proc.Parameters.FindParam('@Retinf_Info').Value;
    mdata.Close;
    DS_Mdata.DataSet:=Mdata;
    cxGV.DataController.DataSource:=DS_Mdata;
    mdata.CopyFromDataSet(proc);
    Mdata.Active:=True;
    cxGvColumn(cxGv,mdata);
    cxGrid.SetFocus;
    If (P_Retinf='') and (P_Retinf_info<>'') then
    begin
      ShowPrograss('��ʾ��Ϣ����'+P_Retinf_info+'��',self);
      stbMsg.Caption:='��ʾ��Ϣ��'+'��'+P_Retinf_info+'��';
    end;
    If (P_Retinf<>'') and (P_Retinf_info='') then
    begin
      ShowPrograss('��ʾ��Ϣ����'+P_Retinf+'��',self);
      stbMsg.Caption:='��ʾ��Ϣ��'+'��'+P_Retinf+'��';
    end;
    finally
     ;
    end;

    If P_Retinf<>'' then
       Messagedlg(P_Retinf,mtInformation,[mbok],0);

    proc.Free;


end;

procedure TFrm_General.TB_OutClick(Sender: TObject);
begin
  inherited;
  ExportToExcel(cxGrid,True,TRue);
end;

procedure TFrm_General.ToolButton3Click(Sender: TObject);
var
  proc:TADOStoredProc;
begin
  proc:=TADOStoredProc.Create(self);
  proc.ConnectionString:=mdlData.ReadConnStr;
  proc.CommandTimeout:=500;
  try
    proc.ProcedureName:='P_BOM_CountWeigh;1';
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
      DataType := ftString;
      Direction := pdinput;
      size:=50;
      name := '@TableName';
      value:='T_General_Structure';
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=50;
      name := '@ViewName';
      value:='V_General_Structure';
    end;
    proc.Open;
    mdata.CopyFromDataSet(proc);
    mdata.Active:=True;
    mdata.First;
  finally
     ;
  end;
  proc.Free;
end;

procedure TFrm_General.ToolButton6Click(Sender: TObject);
var
  proc:TADOStoredProc;
  P_Retinf:string;
begin
  proc:=TADOStoredProc.Create(self);
  proc.ConnectionString:=mdlData.ReadConnStr;
  proc.CommandTimeout:=500;
  P_Retinf:='';
  If mdata.RecordCount<=0 then
  begin
    application.MessageBox('�޿ɸ��Ƶ�����!','ϵͳ��ʾ',MB_ICONINFORMATION);
    Exit;
  end;

  If ShowMsg('�Ƿ���ͼ��Ϊ'+mdata['th']+'��ͨ�ü�?','��ʾ') then
  begin
    try
      proc.ProcedureName:='P_TyjAutoCopy;1';
      with proc.Parameters.AddParameter do
      begin
        DataType := ftString;
        Direction := pdinput;
        size:=50;
        name := '@FFullNumber';
        value:=mdata['FFullNumber'];
      end;
      with proc.Parameters.AddParameter do
      begin
        DataType := ftString;
        Direction := pdoutput;
        size:=255;
        name := '@Retinf';
        value:='';
      end;
      proc.ExecProc;
      If proc.Parameters.FindParam('@Retinf').Value=null then
         P_Retinf:=''
      else
         P_Retinf:=proc.Parameters.FindParam('@Retinf').Value;
      If P_Retinf<>'' then
         Messagedlg(P_Retinf,mtInformation,[mbok],0);
    finally
       ;
    end;

    proc.Free;
  end;

end;

end.
