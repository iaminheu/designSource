unit Main_StockPick;

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
  jpeg, cxImage, RzStatus, ActnList;

type
  TFrm_StockPick = class(TFrm_GridBass)
    MData: TdxMemData;
    DS_Mdata: TDataSource;
    ImageList: TImageList;
    frReport: TfrReport;
    frDBDataSet: TfrDBDataSet;
    PC_1: TRzPageControl;
    TS_List: TRzTabSheet;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    TS_ToTal: TRzTabSheet;
    DS_Mdata7: TDataSource;
    Mdata7: TdxMemData;
    DS_Mdata2: TDataSource;
    Mdata2: TdxMemData;
    DS_Mdata3: TDataSource;
    Mdata3: TdxMemData;
    Panel1: TPanel;
    ToolBar1: TToolBar;
    TB_Ref: TToolButton;
    ToolButton5: TToolButton;
    TB_Out: TToolButton;
    TB_Down: TToolButton;
    TB_PRIN: TToolButton;
    ToolButton1: TToolButton;
    TB_EXIT: TToolButton;
    ToolBar7: TToolBar;
    RB_Ref6: TToolButton;
    ToolButton13: TToolButton;
    Panel2: TPanel;
    Bevel1: TBevel;
    stbBar: TRzStatusBar;
    RzClockStatus1: TRzClockStatus;
    RzKeyStatus1: TRzKeyStatus;
    RzKeyStatus2: TRzKeyStatus;
    RzKeyStatus3: TRzKeyStatus;
    stbMsg: TRzFieldStatus;
    actionList: TActionList;
    Actrights: TAction;
    Actpwd: TAction;
    ActLog: TAction;
    ProgressBar: TProgressBar;
    Act_IMP_StockList: TAction;
    DataSource: TDataSource;
    ADOQuery: TADOQuery;
    RzSizePanel1: TRzSizePanel;
    MyTreeView3: TTreeView;
    TabSheet1: TRzTabSheet;
    TB_Total: TToolButton;
    Panel3: TPanel;
    Bevel2: TBevel;
    E_FPersonalNo1: TcxButtonEdit;
    E_FPersonalNo2: TcxButtonEdit;
    E_FStartYear: TcxButtonEdit;
    ToolButton4: TToolButton;
    ToolButton2: TToolButton;
    E_FBranchItemNumber: TcxButtonEdit;
    E_FItemNo: TcxButtonEdit;
    Act_Weigth: TAction;
    RSP_StockIn: TRzPanel;
    RSP_List: TPageControl;
    TabSheet3: TTabSheet;
    RSP_Item: TRzSizePanel;
    PageControl1: TPageControl;
    TabSheet2: TTabSheet;
    cxGrid_M3: TcxGrid;
    cxGV_M3: TcxGridDBTableView;
    FBranchItemNumber_M3: TcxGridDBColumn;
    FPartsCode_M3: TcxGridDBColumn;
    FWorkPartsNum_M3: TcxGridDBColumn;
    FWorkParts_M3: TcxGridDBColumn;
    FPartsName_M3: TcxGridDBColumn;
    FStockStatusNotes_M3: TcxGridDBColumn;
    FStockStatus_M3: TcxGridDBColumn;
    FFactureName_M3: TcxGridDBColumn;
    FStockWrite_M3: TcxGridDBColumn;
    FItemNumber_M3: TcxGridDBColumn;
    FBranchFileNo_M3: TcxGridDBColumn;
    FStockWriteDate_M3: TcxGridDBColumn;
    FFileNo_M3: TcxGridDBColumn;
    FClientFullName_M3: TcxGridDBColumn;
    FStockItemID_M3: TcxGridDBColumn;
    FStockSubmitDate_M3: TcxGridDBColumn;
    FItemId_M3: TcxGridDBColumn;
    FItemModel_M3: TcxGridDBColumn;
    FProductID_M3: TcxGridDBColumn;
    FStockCheck_M3: TcxGridDBColumn;
    FStockCheckDate_M3: TcxGridDBColumn;
    FFactureID_M3: TcxGridDBColumn;
    cxGL_M3: TcxGridLevel;
    cxGrid3: TcxGrid;
    cxGV3: TcxGridDBTableView;
    Num: TcxGridDBColumn;
    xh1: TcxGridDBColumn;
    xh2: TcxGridDBColumn;
    xh3: TcxGridDBColumn;
    th: TcxGridDBColumn;
    mc: TcxGridDBColumn;
    gg: TcxGridDBColumn;
    FSelRemark: TcxGridDBColumn;
    FSumQry: TcxGridDBColumn;
    FSuttle: TcxGridDBColumn;
    FSumSuttle: TcxGridDBColumn;
    FStockListRemark: TcxGridDBColumn;
    FFullNumber: TcxGridDBColumn;
    ssFullNumber: TcxGridDBColumn;
    bjth: TcxGridDBColumn;
    cplb: TcxGridDBColumn;
    FPartsCode: TcxGridDBColumn;
    FWorkPartsNum: TcxGridDBColumn;
    FWorkParts: TcxGridDBColumn;
    cxGL3: TcxGridLevel;
    MData_M3: TdxMemData;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    StringField12: TStringField;
    StringField13: TStringField;
    StringField14: TStringField;
    StringField15: TStringField;
    StringField16: TStringField;
    StringField17: TStringField;
    IntegerField1: TIntegerField;
    FloatField4: TFloatField;
    FloatField5: TFloatField;
    FloatField6: TFloatField;
    DS_Mdata_M3: TDataSource;
    procedure CancelBtnClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TB_EXITClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure P_Sel;
    procedure TB_OutClick(Sender: TObject);
    procedure Act_IPM_PensionListExecute(Sender: TObject);
    procedure TB_RefClick(Sender: TObject);
    procedure MyTreeView3Expanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure MyTreeView3Change(Sender: TObject; Node: TTreeNode);
    procedure TB_DownClick(Sender: TObject);
    procedure TB_PRINClick(Sender: TObject);
    procedure E_FPersonalNo1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure E_FPersonalNo2PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure E_FStartYearPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure TB_TotalClick(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure E_FFileNoPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxGV_M3FocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
  private
    ListItemFNumber,P_th:String;
    P_i:boolean;
    FFullFileName: string;
    qry: TADOQuery;
    P_FItemListId,P_CopyFItemListId,P_RawFItemListId,P_FFullNumber,p_FItemNo,p_Code:string;
    P_FProductID,P_FItemId:Integer;



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
    m_stopFileName:string;
    P_Retinf,P_Retinf_info,P_List:String;
    P_Isleaf,P_Status,i:Integer;
    s1,s2:Ttime;

    { Public declarations }
  end;

var
  Frm_StockPick: TFrm_StockPick;


implementation

uses FRMDATA, COMMON, FrmSelect, ProgBar, PROGRASS, FrmMain;

{$R *.dfm}




function TFrm_StockPick.GetDsnFile: string;
const
 schema = 'schema.ini';

begin
  result := ExtractfileDir(Application.ExeName)+'\'+schema;

end;

function TFrm_StockPick.GetTempFile: string;
const
 cTempFile='StockImp.txt';
begin
 result:=ExtractfileDir(Application.ExeName)+'\'+cTempFile;
end;


procedure TFrm_StockPick.WriteODBC(IniFile: TIniFile);
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

procedure TFrm_StockPick.WriteDbFile(IniFile: TIniFile; DbFile: string);
begin
  iniFile.WriteString(DBFile, 'ColNameHeader', 'true');
  iniFile.WriteString(DBFile, 'Format', 'TabDelimited');
  iniFile.WriteString(DBFile, 'MaxScanRows', '25');
  iniFile.WriteString(DBFile, 'CharacterSet', 'OEM');
  iniFile.WriteString(DBFile, 'Col1', 'dh char');
  iniFile.WriteString(DBFile, 'Col2', 'Num char');
  iniFile.WriteString(DBFile, 'Col3', 'dw char');
  iniFile.WriteString(DBFile, 'Col4', 'th char');
  iniFile.WriteString(DBFile, 'Col5', 'mc char');
  iniFile.WriteString(DBFile, 'Col6', 'FSumQry Currency');
  iniFile.WriteString(DBFile, 'Col7', 'FSuttle Currency');
  iniFile.WriteString(DBFile, 'Col8', 'FSumSuttle Currency');
  iniFile.WriteString(DBFile, 'Col9', 'FStockListRemark char');
  iniFile.WriteString(DBFile, 'Col10', 'bjth char');
  iniFile.WriteString(DBFile, 'Col11', 'cplb char');
  //iniFile.WriteString(DBFile, 'Col12', 'FPerSonal Currency');
  //iniFile.WriteString(DBFile, 'Col13', 'FTotal Currency');
end;

function TFrm_StockPick.ReadSourceConnStr: string;
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



procedure TFrm_StockPick.P_Sel;  //提取文本文件
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
      cxGV3.DataController.DataSource.DataSet:=TBADoSource;
      mdata.CopyFromDataSet(DataSource.DataSet);
      mdata.Active;
    except
    end;
  end;

  qry.SQL.Text:='Delete from T_StockTemp where FUserNumID=:FUserNumID';
  qry.Parameters.FindParam('FUserNumID').Value:=UserNumID;
  qry.SQL.Text:='Delete from T_StockTemp ';
  qry.ExecSQL;
  ProgressBar.Max:=mdata.RecordCount;
  qry.SQL.Text:='Insert into T_StockTemp(Num,th,mc,FSumQry,FSuttle,FSumSuttle,FStockListRemark,bjth,cplb,FUserNumID) '
               +'Values(:Num,:th,:mc,:FSumQry,:FSuttle,:FSumSuttle,:FStockListRemark,:bjth,:cplb,:FUserNumID)';
  qry.ExecSQL;
  with mdata do
  begin
    DisableControls;
    First;
    while not eof do
    begin
      with qry do
      begin
        Parameters.FindParam('Num').Value:=mdata['Num'];
        Parameters.FindParam('th').Value:=mdata['th'];
        Parameters.FindParam('mc').Value:=mdata['mc'];
        Parameters.FindParam('FSumQry').Value:=mdata['FSumQry'];
        Parameters.FindParam('FSuttle').Value:=mdata['FSuttle'];
        Parameters.FindParam('FSumSuttle').Value:=mdata['FSumSuttle'];
        Parameters.FindParam('FStockListRemark').Value:=mdata['FStockListRemark'];
        Parameters.FindParam('bjth').Value:=mdata['bjth'];
        Parameters.FindParam('cplb').Value:=mdata['cplb'];
        Parameters.FindParam('FUserNumID').Value:=UserNumID;
        ExecSQL;
      end;
      ProgressBar.StepIt;
      application.ProcessMessages;
      Next;
    end;
    EnableControls;
  end;

  try
    qry.SQL.Text:='Delete from T_StockTemp where  Isnull(Num,'''')='''' ';
    qry.ExecSQL;
  finally
     ;
  end;
  try
    qry.SQL.Text:='select * from T_StockTemp where FUserNumID=:FUserNumID ';
    qry.Parameters.FindParam('FUserNumID').Value:=UserNumID;
    qry.Open;
  finally
     ;
  end;
  mdata.CopyFromDataSet(qry);
  mdata.Active:=True;
  cxGvColumn(cxGv3,Mdata);
end;

procedure TFrm_StockPick.CancelBtnClick(Sender: TObject);
begin
  inherited;
  self.Close ;
end;

procedure TFrm_StockPick.FormResize(Sender: TObject);
begin
  TB_Ref.Click;
  L_title.Caption:='入库清单提取';
  Self.Caption:='入库清单提取';
end;

procedure TFrm_StockPick.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=cafree;
  Frm_StockPick:=nil;
end;

procedure TFrm_StockPick.TB_EXITClick(Sender: TObject);
begin

  self.Close;
end;

procedure TFrm_StockPick.FormCreate(Sender: TObject);
begin

 TB_Out.Enabled:= mdlData.CheckFrmRights(TFrm_StockPick.ClassName,'导出');
 TB_Prin.Enabled:= mdlData.CheckFrmRights(TFrm_StockPick.ClassName,'打印');
end;

procedure TFrm_StockPick.TB_OutClick(Sender: TObject);
begin
  inherited;
  ExportToExcel(cxGrid3,True,TRue);
end;

procedure TFrm_StockPick.Act_IPM_PensionListExecute(Sender: TObject);
var
  proc:TADOStoredProc;
begin
  proc:=TADOStoredProc.Create(self);
  proc.ConnectionString:=mdlData.ReadConnStr;
  proc.CommandTimeout:=500;
  P_Retinf:='';
  try
    proc.ProcedureName:='P_Imp_StockList;1';
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=20;
      name := '@UserNumID';
      value:=UserNumID;
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=20;
      name := '@FItemNo';
      value:=E_FItemNo.Text;
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
    mdata.Close;
    DS_Mdata3.DataSet:=Mdata3;
    cxGV3.DataController.DataSource:=DS_Mdata3;
    mdata3.CopyFromDataSet(proc);
    Mdata3.Active:=True;
    cxGvColumn(cxGv3,mdata3);
    If P_Retinf<>'' then
       Messagedlg(P_Retinf,mtInformation,[mbok],0);

    proc.Free;
   finally
     ;
   end;

end;

procedure TFrm_StockPick.TB_RefClick(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If UserFDepartmentsort=1 then //事业部
  begin
    If not TreeVeiwListWhere(qry,MyTreeView3,'VT_Stock',' and FDepartmentID='+IntToStr(UserFDepartmentID)+' and FAgentID='+IntToStr(UserFDepartmentID)) then
      Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;
  If UserFDepartmentsort=2 then   //子公司
  begin
    If not TreeVeiwListWhere(qry,MyTreeView3,'VT_Stock_Dep',' and (FFactureID='+IntToStr(UserFDepartmentID)+' or FDepartmentID='+IntToStr(UserFDepartmentID)+') ') then
    Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;

end;

procedure TFrm_StockPick.MyTreeView3Expanding(Sender: TObject;
  Node: TTreeNode; var AllowExpansion: Boolean);
var
  P :PTree;
  qry:TADOquery;

begin


  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;


  If (Node = nil) or
     (PTree(Node.Data).Flag <> cNoLoadFlag) or   // 1.加载标志
     (not Node.HasChildren) or                   // 2.未有子
     (Node.Count>0) then                         // 3.已有子节点
     Exit;
     If UserFDepartmentsort=1 then //事业部
        qry.SQL.Text:='Select * from VT_Stock where FParentNumber= '''
                    +PTree(Node.Data).ID+''' order by FBranchItemNumber,FNumber';
     If UserFDepartmentsort=2 then   //子公司
     begin
        qry.SQL.Text:='Select * from VT_Stock_Dep where FParentNumber= '''
                     +PTree(Node.Data).ID+''' order by FBranchItemNumber,FNumber';
     end;


  qry.open;

  PTree(Node.Data).Flag := cLoadFlag;                  // 设置已加载标志
  while not qry.Eof do
  begin
    New(P);
    P.ID := qry.FieldByName('FNumber').AsString;
    P.ParentID := qry.FieldByName('FParentNumber').AsString;
    P.FNumber:=qry.FieldByName('FNumber').AsString;
    P.Caption := qry.FieldByName('FName').AsString;
    P.Isleaf := qry.FieldByName('Isleaf').Value;
    If UserFDepartmentsort=2 then   //子公司
       P.Status:= qry.FieldByName('FFactureID').Value;
    P.Flag := cNoLoadFlag;                            // 新节点，未加载标志
    with MyTreeView3.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('Isleaf').value;
    end;
    qry.Next;
  end;


end;

procedure TFrm_StockPick.MyTreeView3Change(Sender: TObject; Node: TTreeNode);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If Node = nil then Exit;
  with PTree(Node.Data)^ do
  begin
    ListItemFNumber3:=trim(PTree(Node.Data).FNumber);
    P_Isleaf:=PTree(Node.Data).Isleaf;
    P_th:=PTree(Node.Data).Caption;
    P_Status:=PTree(Node.Data).Status;
    If PTree(Node.Data).Isleaf>=1 then
    begin
      If UserFDepartmentsort=1 then //事业部
      begin
        If MyItemListwhere(qry,Mdata_M3,'V_StockItem','FFullNumber',ListItemFNumber3,' and FAgentID='+IntToStr(UserFDepartmentID),'FFullNumber') then
        If MyItemListwhere(qry,Mdata3,'V_StockList','FFullNumber',ListItemFNumber3,' and FAgentID='+IntToStr(UserFDepartmentID),'FFullNumber',) then
      end;
      If UserFDepartmentsort=2 then   //子公司
      begin
        If MyItemListwhere(qry,Mdata_M3,'V_StockItem','cast(FDepartmentID as nvarchar(20))+'';''+cast(FFactureID as nvarchar(20))+'';''+FFullNumber',ListItemFNumber3,' and FFactureID='+IntToStr(P_Status),'FFullNumber',) then
        If MyItemListwhere(qry,Mdata3,'V_StockList','cast(FDepartmentID as nvarchar(20))+'';''+cast(FFactureID as nvarchar(20))+'';''+FFullNumber',ListItemFNumber3,' and FFactureID='+IntToStr(P_Status),'FFullNumber',) then
      end;
    end
    else
    begin
      Mdata_M3.Close;
      mdata3.Close;
    end;
    If (PTree(Node.Data).Isleaf<3) and (mdata_M3.RecordCount>0) then
    begin
      TB_Prin.Visible:=mdlData.CheckFrmRights(TFrm_StockPick.ClassName,'打印');
    end
    else
    begin
      TB_Prin.Visible:=False;
    end;



   If (PTree(Node.Data).Isleaf=1) and (mdata_M3.RecordCount>0) then
      P_List :=mdata_M3['FFactureName']+'('+mdata_M3['FBranchItemNumber']+')('+mdata_M3['FClientshortName']+')';
   If (PTree(Node.Data).Isleaf=2) and (mdata_M3.RecordCount>0) then
      P_List :=mdata_M3['FFactureName']+'('+mdata_M3['FBranchItemNumber']+')('+mdata_M3['FPartsCode']+')('+mdata_M3['FPartsName']+')';
   If (PTree(Node.Data).Isleaf=3) and (mdata_M3.RecordCount>0) then
      P_List :=mdata_M3['FFactureName']+'('+mdata_M3['FBranchItemNumber']+')('+mdata_M3['FPartsName']+')('+mdata_M3['FWorkPartsNum']+')('+mdata_M3['FWorkParts']+')';
  

  end;

end;

procedure TFrm_StockPick.TB_DownClick(Sender: TObject);
Var i:Integer;
begin
  If PC_1.ActivePage=TS_List then
  begin
    If P_i then
    begin
      TB_Down.Caption:='取消设置';
      cxGV3.OptionsData.Editing:=False;
      cxGV3.OptionsView.GroupByBox:=False;
      for i:=0 to cxGV3.ColumnCount-1 do
      begin
        cxGV3.Columns[i].Options.Filtering:=False;
        cxGV3.Columns[i].Options.Editing:=False;
        cxGV3.Columns[i].Options.Sorting:=False;
      end;
      P_i:=False;
    end
    else
    begin
      TB_Down.Caption:='设置';
      cxGV3.OptionsData.Editing:=True;
      cxGV3.OptionsView.GroupByBox:=True;
      for i:=0 to cxGV3.ColumnCount-1 do
      begin
        cxGV3.Columns[i].Options.Filtering:=True;
        cxGV3.Columns[i].Options.Editing:=True;
        cxGV3.Columns[i].Options.Sorting:=True;
      end;
      P_i:=True;
    end;
  end;

end;

procedure TFrm_StockPick.TB_PRINClick(Sender: TObject);
var  qry: TADOQuery;
begin
{  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.CommandTimeout:=10000;
  try
    qry.SQL.Text:='Select *  from V_PensionYear where FPersonalNo>=:FPersonalNo1 and FPersonalNo<=:FPersonalNo2 order by FPersonalNo ';
    qry.Parameters.FindParam('FPersonalNo1').value:=Trim(E_FPersonalNo1.Text);
    qry.Parameters.FindParam('FPersonalNo2').value:=Trim(E_FPersonalNo2.Text);
    qry.Open;
  finally
     ;
  end;
  mdata.CopyFromDataSet(qry);
  mdata.Active:=True;
  FrDBDataSet.DataSource:=DS_mdata;
  FrReport.LoadFromFile(ExtractFileDir(Application.ExeName)+'\Report_PensionList.frf');
  FrReport.ShowReport;
   }
end;

procedure TFrm_StockPick.E_FPersonalNo1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
 { qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.CommandTimeout:=10000;
  try
    qry.SQL.Text:='Select distinct FPersonalNo,FName from  V_PensionYear order by FPersonalNo ';
//    qry.Parameters.FindParam('FPersonalNo1').value:=Trim(E_FPersonalNo1.Text);
    qry.Open;
  finally
     ;
  end;
  selValue:=select('请选择个人编码','FPersonalNo','FPersonalNo','FPersonalNo','FPersonalNo;FName',qry);
  If (Length(selValue)>0)  then
  begin
    E_FPersonalNo1.Text:=qry.FieldByName('FPersonalNo').AsString;
    E_FPersonalNo2.Text:=qry.FieldByName('FPersonalNo').AsString;
  end
  else
  begin
    Messagedlg('请选择明细！',mtInformation,[mbok],0);
    Exit;
  end ;
  }

end;

procedure TFrm_StockPick.E_FPersonalNo2PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
 { qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.CommandTimeout:=10000;
  try
    qry.SQL.Text:='Select distinct FPersonalNo,FName from  V_PensionYear where FPersonalNo>=:FPersonalNo order by FPersonalNo ';
    qry.Parameters.FindParam('FPersonalNo').value:=Trim(E_FPersonalNo1.Text);
    qry.Open;
  finally
     ;
  end;
  selValue:=select('请选择个人编码','FPersonalNo','FPersonalNo','FPersonalNo','FPersonalNo;FName',qry);
  If (Length(selValue)>0)  then
  begin
    E_FPersonalNo2.Text:=qry.FieldByName('FPersonalNo').AsString;
  end
  else
  begin
    Messagedlg('请选择明细！',mtInformation,[mbok],0);
    Exit;
  end ;}
end;

procedure TFrm_StockPick.E_FStartYearPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
 { qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.CommandTimeout:=10000;
  try
    qry.SQL.Text:='Select distinct FStartYear from  V_PensionYear order by FStartYear ';
    qry.Open;
  finally
     ;
  end;
  selValue:=select('请选择统计年份','FStartYear','FStartYear','FStartYear','FStartYear',qry);
  If (Length(selValue)>0)  then
  begin
    E_FStartYear.Text:=qry.FieldByName('FStartYear').AsString;
  end
  else
  begin
    Messagedlg('请选择明细！',mtInformation,[mbok],0);
    Exit;
  end ;
  }


end;

procedure TFrm_StockPick.TB_TotalClick(Sender: TObject);
var
  qry:TADOquery;
begin
  {qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.CommandTimeout:=800;

  If PC_1.ActivePage=TS_Total then
  begin
    try
      qry.SQL.Text:='Select * from  V_PensionYear where FPersonalNo>=:FPersonalNo1 and FPersonalNo<=:FPersonalNo2 order by FPersonalNo ';
      qry.Parameters.FindParam('FPersonalNo1').value:=Trim(E_FPersonalNo1.Text);
      qry.Parameters.FindParam('FPersonalNo2').value:=Trim(E_FPersonalNo2.Text);
      qry.Open;
      qry.Open;
    finally
      ;
    end;
    mdata2.CopyFromDataSet(qry);
    cxGvColumn(cxGv2,Mdata2);
    mdata2.Open;
    mdata2.First;
  end;
  }

end;

procedure TFrm_StockPick.ToolButton4Click(Sender: TObject);
var  qry: TADOQuery;
begin
 { qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.CommandTimeout:=10000;
  try
    qry.SQL.Text:='Select *  from V_PensionYear where FPersonalNo>=:FPersonalNo1 and FPersonalNo<=:FPersonalNo2 order by FPersonalNo ';
    qry.Parameters.FindParam('FPersonalNo1').value:=Trim(E_FPersonalNo1.Text);
    qry.Parameters.FindParam('FPersonalNo2').value:=Trim(E_FPersonalNo2.Text);
    qry.Open;
  finally
     ;
  end;
  mdata2.CopyFromDataSet(qry);
  mdata2.Active:=True;
  FrDBDataSet.DataSource:=DS_mdata2;
  FrReport.LoadFromFile(ExtractFileDir(Application.ExeName)+'\Report_PensionList.frf');
  FrReport.ShowReport;
   }

end;

procedure TFrm_StockPick.E_FFileNoPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='select * from VT_FileItem where FBranchItemNumber like :FBranchItemNumber and FDepartmentID=:FDepartmentID order by FBranchItemNumber ';
    qry.Parameters.FindParam('FBranchItemNumber').value:='%'+Trim(E_FBranchItemNumber.Text)+'%';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Open;
  finally
    ;
  end;
  selValue:=select('选择档案号','FNumber','FParentNumber','FNumber','FName',qry);
  If (Length(selValue)>0) then
  begin
    E_FBranchItemNumber.Text:=qry.FieldByName('FBranchItemNumber').Value;
    E_FItemNo.Text:=qry.FieldByName('FItemNo').Value;
  end;
  stbMsg.Caption:='正在提取导入文本，请稍候...  ...';
  ShowPrograss('正在导入，请稍候……',self);
  stbBar.Refresh;
  Self.P_Sel;//选择文本文件
  Act_IMP_StockList.Execute

end;

procedure TFrm_StockPick.cxGV_M3FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
var qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If (mData_M3['FStockItemID']<>0) and (mData_M3['FStockItemID']<>Null) then
  begin
    If MyItemListID(qry,Mdata3,'V_StockList',' FStockItemID='+IntToStr(Mdata_M3['FStockItemID']),'FFullNumber',) then
  end;


end;

end.
