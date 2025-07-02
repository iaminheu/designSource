unit Main_PlanWeekQry;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FrmGridBass, ExtCtrls, StdCtrls, DsFancyButton, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  dxmdaset, cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid,
  cxTextEdit, cxDropDownEdit, cxCalendar, cxMaskEdit, cxContainer, cxLabel,
  cxDBLookupComboBox, ADODB, cxButtonEdit, Grids, DBGrids, ComCtrls, RzShellDialogs,
  ToolWin, ImgList, FR_DSet, FR_DBSet, FR_Class, cxRadioGroup, Buttons, StrUtils,
  cxGroupBox, cxCheckBox, cxCurrencyEdit, RzPanel, RzSplit, RzTabs,IniFiles,Comobj,
  TFlatPanelUnit, cxLookAndFeelPainters, cxButtons, cxTimeEdit, jpeg,Excel97,
  cxEditRepositoryItems, Menus, ActnList, cxMemo, RzStatus;

type
  TFrm_PlanWeekQry = class(TFrm_GridBass)
    ImageList: TImageList;
    Panel1: TPanel;
    ToolBar1: TToolBar;
    ToolButton5: TToolButton;
    ToolButton1: TToolButton;
    TB_EXIT: TToolButton;
    DS_Mdata_Qry: TDataSource;
    PM: TPopupMenu;
    N_Edit: TMenuItem;
    N_Filter: TMenuItem;
    N_Sort: TMenuItem;
    N_Group: TMenuItem;
    N_Set: TMenuItem;
    N_Out: TMenuItem;
    actionList: TActionList;
    Act_Menu: TAction;
    Act_Menu_Set: TAction;
    Act_Set_Open: TAction;
    Act_Set_Close: TAction;
    Panel2: TPanel;
    PC_2: TRzPageControl;
    Panel3: TPanel;
    Bevel1: TBevel;
    stbBar: TRzStatusBar;
    RzClockStatus1: TRzClockStatus;
    RzKeyStatus1: TRzKeyStatus;
    RzKeyStatus2: TRzKeyStatus;
    RzKeyStatus3: TRzKeyStatus;
    stbMsg: TRzFieldStatus;
    TS_Qry: TRzTabSheet;
    Panel4: TPanel;
    Act_PlanTaskQry: TAction;
    MData_Qry: TdxMemData;
    SaveDialog1: TSaveDialog;
    ADOProc: TADOStoredProc;
    DS_ADOProc: TDataSource;
    cxGrid_Qry: TcxGrid;
    cxGV_Qry: TcxGridDBTableView;
    cxGL_Qry: TcxGridLevel;
    Act_FPlanDate: TAction;
    ToolBar2: TToolBar;
    Act_FMakePartsWet: TAction;
    Act_FMakePercentWet_Item: TAction;
    PM_Qry: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem6: TMenuItem;
    PC_Qry: TPageControl;
    TS_FMakePartsWet: TTabSheet;
    TS_FMakePercentWet_Item: TTabSheet;
    TS_FPlanDate_Item: TTabSheet;
    TS_FPlanDate: TTabSheet;
    Act_FPlanDate_Item: TAction;
    TS_FMax_TotalMakePercentWet: TTabSheet;
    TS_FMax_not_TotalMakePercentWet: TTabSheet;
    Act_FMax_TotalMakePercentWet: TAction;
    Act_FMax_not_TotalMakePercentWet: TAction;
    TS_FMax_TotalMakePercentWet_Parts: TTabSheet;
    TS_FMax_not_TotalMakePercentWet_Parts: TTabSheet;
    Act_FMax_TotalMakePercentWet_Parts: TAction;
    Act_FMax_not_TotalMakePercentWet_Parts: TAction;
    TS_FMakePartsWet_Parts: TTabSheet;
    TS_FMakePercentWet_Item_Parts: TTabSheet;
    Act_FMakePartsWet_Parts: TAction;
    Act_FMakePercentWet_Item_Parts: TAction;
    Act_PlanTrackList: TAction;
    Act_PlanWeek: TAction;
    Act_FNot_TJWet_Parts: TAction;
    Act_FNot_TJWet: TAction;
    TS_FNot_TJWet: TTabSheet;
    TS_FNot_TJWet_parts: TTabSheet;
    MainMenu_main: TMainMenu;
    P1: TMenuItem;
    N48: TMenuItem;
    N50: TMenuItem;
    N49: TMenuItem;
    N52: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    Edit1: TEdit;
    procedure FormResize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TB_EXITClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxGridContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure Act_Menu_SetExecute(Sender: TObject);
    procedure Act_MenuExecute(Sender: TObject);
    procedure N_EditClick(Sender: TObject);
    procedure N_FilterClick(Sender: TObject);
    procedure N_SortClick(Sender: TObject);
    procedure N_GroupClick(Sender: TObject);
    procedure N_SetClick(Sender: TObject);
    procedure N_OutClick(Sender: TObject);
    procedure cxGrid_4ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure cxGrid_3ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure cxGrid_2ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure Act_FPlanDateExecute(Sender: TObject);
    procedure Act_FMakePartsWetExecute(Sender: TObject);
    procedure Act_FMakePercentWet_ItemExecute(Sender: TObject);
    procedure cxGrid_QryContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure PC_QryChange(Sender: TObject);
    procedure Act_FPlanDate_ItemExecute(Sender: TObject);
    procedure Act_FMax_TotalMakePercentWetExecute(Sender: TObject);
    procedure Act_FMax_not_TotalMakePercentWetExecute(Sender: TObject);
    procedure Act_FMax_TotalMakePercentWet_PartsExecute(Sender: TObject);
    procedure Act_FMax_not_TotalMakePercentWet_PartsExecute(
      Sender: TObject);
    procedure Act_FMakePartsWet_PartsExecute(Sender: TObject);
    procedure Act_FMakePercentWet_Item_PartsExecute(Sender: TObject);
    procedure Act_FNot_TJWet_PartsExecute(Sender: TObject);
    procedure Act_FNot_TJWetExecute(Sender: TObject);
  private
    ListItemFNumber,P_th,P_Wet:String;
    P_FProductID:Integer;

    { Private declarations }


  public
    P_state,P_Isleaf:integer;
    { Public declarations }
  end;

var
  Frm_PlanWeekQry: TFrm_PlanWeekQry;


implementation

uses FRMDATA,  COMMON, FrmSelect, ProgBar, PROGRASS;

{$R *.dfm}







procedure TFrm_PlanWeekQry.FormResize(Sender: TObject);
begin
  inherited;
  L_title.Caption:=UserFDepartmentName+'生产周报查询';
  Self.Caption:=UserFDepartmentName+'生产周报查询';

end;

procedure TFrm_PlanWeekQry.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=cafree;
  Frm_PlanWeekQry:=nil;
end;

procedure TFrm_PlanWeekQry.TB_EXITClick(Sender: TObject);
begin
  inherited;
  self.Close;
end;

procedure TFrm_PlanWeekQry.FormCreate(Sender: TObject);
begin
  inherited;
  TS_Qry.TabVisible:=mdlData.PermissionCheckRights(TFrm_PlanWeekQry.ClassName,'提交');

end;

procedure TFrm_PlanWeekQry.cxGridContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV';
  Gm:='mdata';
  Gr:='cxGrid';
  Act_Menu_Set.Execute;

end;

procedure TFrm_PlanWeekQry.Act_Menu_SetExecute(Sender: TObject);
begin
  inherited;
  If (FindComponent(GV) as TcxGridDBTableView).Columns[1].Options.Filtering=True then
     N_Filter.Checked:=True
  else
     N_Filter.Checked:=False;

  If (FindComponent(GV) as TcxGridDBTableView).Columns[1].Options.Sorting=True then
    N_Sort.Checked:=True
  else
    N_Sort.Checked:=False;

  If (FindComponent(GV) as TcxGridDBTableView).OptionsView.GroupByBox=True then
    N_Group.Checked:=True
  else
    N_Group.Checked:=False;

end;

procedure TFrm_PlanWeekQry.Act_MenuExecute(Sender: TObject);
Var i:Integer;
begin
  //1、设置
  If copy((FindComponent(Mn) as TMenuItem).Caption,1,pos('(',(FindComponent(Mn) as TMenuItem).Caption)-1)='取消设置' then
  begin
    (FindComponent(GV) as TcxGridDBTableView).OptionsData.Editing:=False;
    (FindComponent(GV) as TcxGridDBTableView).OptionsView.GroupByBox:=False;
    for i:=0 to (FindComponent(GV) as TcxGridDBTableView).ColumnCount-1 do
    begin
      (FindComponent(GV) as TcxGridDBTableView).Columns[i].Options.Filtering:=False;
      (FindComponent(GV) as TcxGridDBTableView).Columns[i].Options.Editing:=False;
      (FindComponent(GV) as TcxGridDBTableView).Columns[i].Options.Sorting:=False;
    end;
    Exit;
  end;

  //编辑
  If (copy((FindComponent(Mn) as TMenuItem).Caption,1,pos('(',(FindComponent(Mn) as TMenuItem).Caption)-1)='编辑')
     and ((FindComponent(Mn) as TMenuItem).Checked=False) then
  begin
    (FindComponent(GV) as TcxGridDBTableView).OptionsData.Editing:=True;
    (FindComponent(Mn) as TMenuItem).Checked:=True;
    for i:=0 to (FindComponent(GV) as TcxGridDBTableView).ColumnCount-1 do
    begin
      (FindComponent(GV) as TcxGridDBTableView).Columns[i].Options.Editing:=True;
    end;
    Exit;
  end;
  If (copy((FindComponent(Mn) as TMenuItem).Caption,1,pos('(',(FindComponent(Mn) as TMenuItem).Caption)-1)='编辑')
     and ((FindComponent(Mn) as TMenuItem).Checked=True) then
  begin
    (FindComponent(GV) as TcxGridDBTableView).OptionsData.Editing:=False;
    (FindComponent(Mn) as TMenuItem).Checked:=False;
    for i:=0 to (FindComponent(GV) as TcxGridDBTableView).ColumnCount-1 do
    begin
      (FindComponent(GV) as TcxGridDBTableView).Columns[i].Options.Editing:=False;
    end;
    Exit;
  end;
  //过滤
  If (copy((FindComponent(Mn) as TMenuItem).Caption,1,pos('(',(FindComponent(Mn) as TMenuItem).Caption)-1)='过滤')
     and ((FindComponent(Mn) as TMenuItem).Checked=False) then
  begin
    (FindComponent(GV) as TcxGridDBTableView).OptionsData.Editing:=True;
    (FindComponent(Mn) as TMenuItem).Checked:=True;
    for i:=0 to (FindComponent(GV) as TcxGridDBTableView).ColumnCount-1 do
    begin
      (FindComponent(GV) as TcxGridDBTableView).Columns[i].Options.Filtering:=True;
    end;
    Exit;
  end;
  If (copy((FindComponent(Mn) as TMenuItem).Caption,1,pos('(',(FindComponent(Mn) as TMenuItem).Caption)-1)='过滤')
     and ((FindComponent(Mn) as TMenuItem).Checked=True) then
  begin
    (FindComponent(Mn) as TMenuItem).Checked:=False;
    for i:=0 to (FindComponent(GV) as TcxGridDBTableView).ColumnCount-1 do
    begin
      (FindComponent(GV) as TcxGridDBTableView).Columns[i].Options.Filtering:=False;
    end;
    Exit;
  end;
  //排序
  If (copy((FindComponent(Mn) as TMenuItem).Caption,1,pos('(',(FindComponent(Mn) as TMenuItem).Caption)-1)='排序')
     and ((FindComponent(Mn) as TMenuItem).Checked=False) then
  begin
    (FindComponent(Mn) as TMenuItem).Checked:=True;
    for i:=0 to (FindComponent(GV) as TcxGridDBTableView).ColumnCount-1 do
    begin
      (FindComponent(GV) as TcxGridDBTableView).Columns[i].Options.Sorting:=True;
    end;
    Exit;
  end;
  If (copy((FindComponent(Mn) as TMenuItem).Caption,1,pos('(',(FindComponent(Mn) as TMenuItem).Caption)-1)='排序')
     and ((FindComponent(Mn) as TMenuItem).Checked=True) then
  begin
    (FindComponent(Mn) as TMenuItem).Checked:=False;
    for i:=0 to (FindComponent(GV) as TcxGridDBTableView).ColumnCount-1 do
    begin
      (FindComponent(GV) as TcxGridDBTableView).Columns[i].Options.Sorting:=False;
    end;
    Exit;
  end;
 // 分组
  If (copy((FindComponent(Mn) as TMenuItem).Caption,1,pos('(',(FindComponent(Mn) as TMenuItem).Caption)-1)='分组')
     and ((FindComponent(Mn) as TMenuItem).Checked=False) then
  begin
    (FindComponent(GV) as TcxGridDBTableView).OptionsView.GroupByBox:=True;
    (FindComponent(Mn) as TMenuItem).Checked:=True;
    Exit;
  end;
  If (copy((FindComponent(Mn) as TMenuItem).Caption,1,pos('(',(FindComponent(Mn) as TMenuItem).Caption)-1)='分组')
     and ((FindComponent(Mn) as TMenuItem).Checked=True) then
  begin
    (FindComponent(GV) as TcxGridDBTableView).OptionsView.GroupByBox:=False;
    (FindComponent(Mn) as TMenuItem).Checked:=False;
    Exit;
  end;
  //导出
  If copy((FindComponent(Mn) as TMenuItem).Caption,1,pos('(',(FindComponent(Mn) as TMenuItem).Caption)-1)='导出' then
  begin
    If (FindComponent(Gm) as TdxMemData).RecordCount>0 then
       ExportToExcel((FindComponent(Gr) as TcxGrid),True,TRue)
    else
       Application.MessageBox(PChar('没有需要导出的数据！'), '错误', MB_OK +MB_ICONSTOP);
    Exit;
  end;

end;

procedure TFrm_PlanWeekQry.N_EditClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_PlanWeekQry.N_FilterClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_PlanWeekQry.N_SortClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_PlanWeekQry.N_GroupClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_PlanWeekQry.N_SetClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_PlanWeekQry.N_OutClick(Sender: TObject);
begin
  inherited;
  Mn:=TMenuItem(Sender).Name;
  Act_Menu.Execute;
end;



procedure TFrm_PlanWeekQry.cxGrid_4ContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV_4';
  Gm:='mdata';
  Gr:='cxGrid_4';
  Act_Menu_Set.Execute;

end;

procedure TFrm_PlanWeekQry.cxGrid_3ContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV_3';
  Gm:='mdata';
  Gr:='cxGrid_3';
  Act_Menu_Set.Execute;

end;

procedure TFrm_PlanWeekQry.cxGrid_2ContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV_2';
  Gm:='mdata';
  Gr:='cxGrid_2';
  Act_Menu_Set.Execute;

end;

procedure TFrm_PlanWeekQry.Act_FPlanDateExecute(Sender: TObject);
var qry,qry_Loop: TADOQuery;
    DS_qry:TDataSource;
    colHeadStr1,colHeadStr2,colHeadStr3,colHeadStr:string;
    LoopInt:Integer;
    Column: TcxGridDBColumn;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry_Loop:=TADOQuery.Create(Self);
  qry_Loop.ConnectionString:=mdlData.ReadConnStr;
  DS_qry:=TDataSource.Create(Self);

  DS_qry.DataSet:=qry;
  cxGV_Qry.DataController.DataSource:=DS_Qry;
  cxGV_Qry.DataController.DataSource.DataSet:=qry;

  try
    qry_Loop.SQL.Text:='select distinct FAgentNumber,FAgentShortName,FPlanPartsSort,FAgentShortName+FPlanPartsSort as FRow '
                      +' from V_PlanTaskList where FDepartmentID=:FDepartmentID and FPlanDateYearMonth is not null and FAgentShortName<>'''' '
                      +' and FPartsSort=''本体'' order by FAgentNumber,FAgentShortName,FPlanPartsSort ';
    qry_Loop.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry_Loop.Open;
  finally
    ;
  end;
  If qry_Loop.RecordCount<=0 then
     Exit
  else
  begin
    mdata_Qry.CopyFromDataSet(qry_Loop);
    mdata_Qry.Open;
  end;
  //P_Wet:='FMakeWet';
  P_Wet:='FTJWet';

  colHeadStr1:='';
  colHeadStr2:='';
  colHeadStr3:=' from (select FDepartmentID,FPlanDateYearMonth,FAgentNumber,FAgentShortName,FPlanPartsSort,'
              +'FAgentShortName+FplanPartsSort as FRow, '
              +'(sum(isnull('+P_Wet+',0))) as Wet  from V_PlanTaskList where FDepartmentID=:FDepartmentID'
              +' and FPlanDateYearMonth is not null and FAgentShortName<>'''' '
              +'group by FDepartmentID,FPlanDateYearMonth,FAgentNumber,FAgentShortName,FPlanPartsSort,FAgentShortName+FplanPartsSort) as a ';

  mdata_Qry.First;
  while not mdata_Qry.eof do
  begin
    If mdata_Qry['FRow']='' then
    begin
      mdata_Qry.Edit;
      mdata_Qry['FRow']:='空白';
      mdata_Qry.Post
    end;
    colHeadStr1:=colHeadStr1+',sum('+mdata_Qry['FRow']+') as '+mdata_Qry['FRow'];    //横向
    colHeadStr2:=colHeadStr2+',isnull(case FRow when '''+mdata_Qry['FRow']+''' '
               +'then isnull(Wet,0) end,0) as '+mdata_Qry['FRow'];

    mdata_Qry.Next;
  end;

  colHeadStr:='select FPlanDateYearMonth as 排产日期 '
             +colHeadStr1+' from (select FPlanDateYearMonth,FAgentNumber,FRow '
             +colHeadStr2+colHeadStr3
             +' ) as b group by FPlanDateYearMonth '
             +'order by FPlanDateYearMonth ';
   edit1.Text:=colHeadStr;
  try
    qry.SQL.Text:=colHeadStr;
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Open;
  finally
    ;
  end;

  If qry.RecordCount<=0 then
     Exit
  else
  begin
    cxGV_Qry.ClearItems;
    for  LoopInt:=0 to  qry.FieldCount-1 do
    begin
      Column:=cxGV_Qry.CreateColumn;
      Column.DataBinding.FieldName:=qry.Fields[LoopInt].FieldName;
      Column.Caption:=qry.Fields[LoopInt].FieldName;
      Column.FooterAlignmentHorz:=taCenter;
      Column.HeaderAlignmentHorz:=taCenter;
      Column.HeaderGlyphAlignmentHorz:=taCenter;
      If length(qry.Fields[LoopInt].AsString)*8>length(Column.Caption)*8 then
         Column.Width:=length(qry.Fields[LoopInt].AsString)*8;
      If length(qry.Fields[LoopInt].AsString)*8<=length(Column.Caption)*8 then
         Column.Width:=length(Column.Caption)*8;

      column.Visible:=True;
      Column.Options.Filtering:=False;
      Column.Options.Editing:=False;
    end;
  end;

end;

procedure TFrm_PlanWeekQry.Act_FMakePartsWetExecute(Sender: TObject);
var qry,qry_Loop: TADOQuery;
    DS_qry:TDataSource;
    colHeadStr1,colHeadStr2,colHeadStr3,colHeadStr:string;
    LoopInt:Integer;
    Column: TcxGridDBColumn;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry_Loop:=TADOQuery.Create(Self);
  qry_Loop.ConnectionString:=mdlData.ReadConnStr;
  DS_qry:=TDataSource.Create(Self);

  DS_qry.DataSet:=qry;
  cxGV_Qry.DataController.DataSource:=DS_Qry;
  cxGV_Qry.DataController.DataSource.DataSet:=qry;

  try
    qry_Loop.SQL.Text:='select distinct FDepartmentNumber,FAgentShortName from V_PlanWeekList '
                      +'where FDepartmentID=:FDepartmentID and FAgentShortName<>'''' order by FDepartmentNumber,FAgentShortName ';
    qry_Loop.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry_Loop.Open;
  finally
    ;
  end;
  If qry_Loop.RecordCount<=0 then
     Exit
  else
  begin
    mdata_Qry.CopyFromDataSet(qry_Loop);
    mdata_Qry.Open;
  end;
  P_Wet:='FMakePercentWet';
  colHeadStr1:='';
  colHeadStr2:='';
  colHeadStr3:=' from (select FDepartmentNumber,FAgentShortName,FPlanMonthWeek,'
               +'(sum(isnull('+P_Wet+',0))) as Wet  from V_PlanWeekList where FDepartmentID=:FDepartmentID'
               +' and FAgentShortName<>'''' and FPlanMonthWeek<>'''' '
               +'group by FDepartmentNumber,FAgentShortName,FPlanMonthWeek) as a ';

  mdata_Qry.First;
  while not mdata_Qry.eof do
  begin
    If mdata_Qry['FAgentShortName']='' then
    begin
      mdata_Qry.Edit;
      mdata_Qry['FAgentShortName']:='空白';
      mdata_Qry.Post
    end;
    colHeadStr1:=colHeadStr1+',sum('+mdata_Qry['FAgentShortName']+') as '+mdata_Qry['FAgentShortName'];
    colHeadStr2:=colHeadStr2+',isnull(case FAgentShortName when '''+mdata_Qry['FAgentShortName']+''' '
               +'then isnull(Wet,0) end,0) as '+mdata_Qry['FAgentShortName']+' ';

    mdata_Qry.Next;
  end;

  colHeadStr:='select FPlanMonthWeek as 周报月份 '
             +colHeadStr1+' from (select FPlanMonthWeek '
             +colHeadStr2+colHeadStr3
             +' ) as b group by FPlanMonthWeek '
             +'order by FPlanMonthWeek ';
   edit1.Text:=colHeadStr;
  try
    qry.SQL.Text:=colHeadStr;
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Open;
  finally
    ;
  end;

  If qry.RecordCount<=0 then
     Exit
  else
  begin
    cxGV_Qry.ClearItems;
    for  LoopInt:=0 to  qry.FieldCount-1 do
    begin
      Column:=cxGV_Qry.CreateColumn;
      Column.DataBinding.FieldName:=qry.Fields[LoopInt].FieldName;
      Column.Caption:=qry.Fields[LoopInt].FieldName;
      Column.FooterAlignmentHorz:=taCenter;
      Column.HeaderAlignmentHorz:=taCenter;
      Column.HeaderGlyphAlignmentHorz:=taCenter;
      If length(qry.Fields[LoopInt].AsString)*10>length(Column.Caption)*10 then
         Column.Width:=length(qry.Fields[LoopInt].AsString)*15;
      If length(qry.Fields[LoopInt].AsString)*10<=length(Column.Caption)*10 then
         Column.Width:=length(Column.Caption)*10;

      column.Visible:=True;
      Column.Options.Filtering:=False;
      Column.Options.Editing:=False;
    end;
  end;
end;

procedure TFrm_PlanWeekQry.Act_FMakePercentWet_ItemExecute(Sender: TObject);
var qry,qry_Loop: TADOQuery;
    DS_qry:TDataSource;
    colHeadStr1,colHeadStr2,colHeadStr3,colHeadStr:string;
    LoopInt:Integer;
    Column: TcxGridDBColumn;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry_Loop:=TADOQuery.Create(Self);
  qry_Loop.ConnectionString:=mdlData.ReadConnStr;
  DS_qry:=TDataSource.Create(Self);

  DS_qry.DataSet:=qry;
  cxGV_Qry.DataController.DataSource:=DS_Qry;
  cxGV_Qry.DataController.DataSource.DataSet:=qry;

  try
    qry_Loop.SQL.Text:='select distinct FDepartmentNumber,FAgentShortName from V_PlanWeekList '
                      +'where FDepartmentID=:FDepartmentID and FAgentShortName<>'''' order by FDepartmentNumber,FAgentShortName ';
    qry_Loop.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry_Loop.Open;
  finally
    ;
  end;
  If qry_Loop.RecordCount<=0 then
     Exit
  else
  begin
    mdata_Qry.CopyFromDataSet(qry_Loop);
    mdata_Qry.Open;
  end;
  P_Wet:='FMakePercentWet';
  colHeadStr1:='';
  colHeadStr2:='';
  colHeadStr3:=' from (select FProductNum,FBranchItemNumber,FFileNo,FItemModel,FClientFullName,FDepartmentNumber,FAgentShortName,FPlanMonthWeek,'
               +'(sum(isnull('+P_Wet+',0))) as Wet  from V_PlanWeekList where FDepartmentID=:FDepartmentID'
               +' and FAgentShortName<>'''' and FPlanMonthWeek<>'''' '
               +'group by FProductNum,FBranchItemNumber,FClientFullName,FFileNo,FItemModel,FDepartmentNumber,FAgentShortName,FPlanMonthWeek) as a ';

  mdata_Qry.First;
  while not mdata_Qry.eof do
  begin
    If mdata_Qry['FAgentShortName']='' then
    begin
      mdata_Qry.Edit;
      mdata_Qry['FAgentShortName']:='空白';
      mdata_Qry.Post
    end;
    colHeadStr1:=colHeadStr1+',sum('+mdata_Qry['FAgentShortName']+') as '+mdata_Qry['FAgentShortName'];
    colHeadStr2:=colHeadStr2+',isnull(case FAgentShortName when '''+mdata_Qry['FAgentShortName']+''' '
               +'then isnull(Wet,0) end,0) as '+mdata_Qry['FAgentShortName']+' ';

    mdata_Qry.Next;
  end;

  colHeadStr:='select FPlanMonthWeek as 周报月份,FFileNo as 档案号,FClientFullName as 用户名称,FBranchItemNumber as 图号,FItemModel as 型号规格 '
             +colHeadStr1+',FProductNum from (select FProductNum,FBranchItemNumber,FClientFullName,FFileNo,FItemModel,FPlanMonthWeek '
             +colHeadStr2+colHeadStr3
             +' ) as b group by FPlanMonthWeek,FProductNum,FBranchItemNumber,FClientFullName,FFileNo,FItemModel '
             +'order by FPlanMonthWeek,FProductNum,FBranchItemNumber,FClientFullName,FFileNo,FItemModel ';
   edit1.Text:=colHeadStr;
  try
    qry.SQL.Text:=colHeadStr;
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Open;
  finally
    ;
  end;

  If qry.RecordCount<=0 then
     Exit
  else
  begin
    cxGV_Qry.ClearItems;
    for  LoopInt:=0 to  qry.FieldCount-1 do
    begin
      Column:=cxGV_Qry.CreateColumn;
      Column.DataBinding.FieldName:=qry.Fields[LoopInt].FieldName;
      Column.Caption:=qry.Fields[LoopInt].FieldName;
      Column.FooterAlignmentHorz:=taCenter;
      Column.HeaderAlignmentHorz:=taCenter;
      Column.HeaderGlyphAlignmentHorz:=taCenter;
      If length(qry.Fields[LoopInt].AsString)*10>length(Column.Caption)*10 then
         Column.Width:=length(qry.Fields[LoopInt].AsString)*15;
      If length(qry.Fields[LoopInt].AsString)*10<=length(Column.Caption)*10 then
         Column.Width:=length(Column.Caption)*10;

      column.Visible:=True;
      Column.Options.Filtering:=False;
      Column.Options.Editing:=False;
    end;
  end;


end;

procedure TFrm_PlanWeekQry.cxGrid_QryContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV_Qry';
  Gm:='mdata_Qry';
  Gr:='cxGrid_Qry';
  Act_Menu_Set.Execute;

end;

procedure TFrm_PlanWeekQry.PC_QryChange(Sender: TObject);
begin
  inherited;
   If PC_Qry.ActivePage=TS_FMakePartsWet then
   begin
     ShowPrograss('正在统计数据，请稍候……',self);
     Act_FMakePartsWet.Execute;   //完工产量汇总表
     application.MessageBox('数据统计完毕！','系统提示',MB_ICONWARNING);
   end;
   If PC_Qry.ActivePage=TS_FMakePercentWet_Item then
   begin
     ShowPrograss('正在统计数据，请稍候……',self);
     Act_FMakePercentWet_Item.Execute;   //完工产量明细表
     application.MessageBox('数据统计完毕！','系统提示',MB_ICONWARNING);
   end;

   If PC_Qry.ActivePage=TS_FMakePartsWet_Parts then
   begin
     ShowPrograss('正在统计数据，请稍候……',self);
     Act_FMakePartsWet_Parts.Execute;   //完工产量汇总表 按部件
     application.MessageBox('数据统计完毕！','系统提示',MB_ICONWARNING);
   end;
   If PC_Qry.ActivePage=TS_FMakePercentWet_Item_Parts then
   begin
     ShowPrograss('正在统计数据，请稍候……',self);
     Act_FMakePercentWet_Item_Parts.Execute;   //完工产量明细表 按部件
     application.MessageBox('数据统计完毕！','系统提示',MB_ICONWARNING);
   end;

   If PC_Qry.ActivePage=TS_FMax_TotalMakePercentWet then
   begin
     ShowPrograss('正在统计数据，请稍候……',self);
     Act_FMax_TotalMakePercentWet.Execute;   //未完工产量汇总表
     application.MessageBox('数据统计完毕！','系统提示',MB_ICONWARNING);
   end;
   If PC_Qry.ActivePage=TS_FMax_not_TotalMakePercentWet then
   begin
     ShowPrograss('正在统计数据，请稍候……',self);
     Act_FMax_not_TotalMakePercentWet.Execute;   //未完工产量明细表
     application.MessageBox('数据统计完毕！','系统提示',MB_ICONWARNING);
   end;

   If PC_Qry.ActivePage=TS_FMax_TotalMakePercentWet_Parts then
   begin
     ShowPrograss('正在统计数据，请稍候……',self);
     Act_FMax_TotalMakePercentWet_Parts.Execute;//未完工产量按部件汇总表
     application.MessageBox('数据统计完毕！','系统提示',MB_ICONWARNING);
   end;
   If PC_Qry.ActivePage=TS_FMax_not_TotalMakePercentWet_Parts then
   begin
     ShowPrograss('正在统计数据，请稍候……',self);
     Act_FMax_not_TotalMakePercentWet_Parts.Execute; //未完工产量按部件明细表
     application.MessageBox('数据统计完毕！','系统提示',MB_ICONWARNING);
   end;



   If PC_Qry.ActivePage=TS_FPlanDate then
   begin
     ShowPrograss('正在统计数据，请稍候……',self);
     Act_FPlanDate.Execute;       //新增排产产量汇总表
     application.MessageBox('数据统计完毕！','系统提示',MB_ICONWARNING);
   end;
   If PC_Qry.ActivePage=TS_FPlanDate_Item then
   begin
     ShowPrograss('正在统计数据，请稍候……',self);
     Act_FPlanDate_Item.Execute;    //新增排产产量明细表
     application.MessageBox('数据统计完毕！','系统提示',MB_ICONWARNING);
   end;


   If PC_Qry.ActivePage=TS_FNot_TJWet then
   begin
     ShowPrograss('正在统计数据，请稍候……',self);
     Act_FNot_TJWet.Execute;       //未完成量按项目(含预估)
     application.MessageBox('数据统计完毕！','系统提示',MB_ICONWARNING);
   end;

   If PC_Qry.ActivePage=TS_FNot_TJWet_parts then
   begin
     ShowPrograss('正在统计数据，请稍候……',self);
     Act_FNot_TJWet_Parts.Execute;       //未完成量按项目(含预估)(按部件)
     application.MessageBox('数据统计完毕！','系统提示',MB_ICONWARNING);
   end;



  { If PC_Qry.ActivePage=TS_PlanPartsSort then
   begin
     ShowPrograss('正在统计数据，请稍候……',self);
     Act_PlanPartsSort.Execute;
     application.MessageBox('数据统计完毕！','系统提示',MB_ICONWARNING);
   end; }


end;

procedure TFrm_PlanWeekQry.Act_FPlanDate_ItemExecute(Sender: TObject);
var qry,qry_Loop: TADOQuery;
    DS_qry:TDataSource;
    colHeadStr1,colHeadStr2,colHeadStr3,colHeadStr:string;
    LoopInt:Integer;
    Column: TcxGridDBColumn;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry_Loop:=TADOQuery.Create(Self);
  qry_Loop.ConnectionString:=mdlData.ReadConnStr;
  DS_qry:=TDataSource.Create(Self);

  DS_qry.DataSet:=qry;
  cxGV_Qry.DataController.DataSource:=DS_Qry;
  cxGV_Qry.DataController.DataSource.DataSet:=qry;

  try
    qry_Loop.SQL.Text:='select distinct FAgentNumber,FAgentShortName,FPlanPartsSort,FAgentShortName+FPlanPartsSort as FRow '
                      +' from V_PlanTaskList where FDepartmentID=:FDepartmentID  and FAgentShortName<>'''' and FPlanDateYearMonth is not null '
                      +' and FPartsSort=''本体'' order by FAgentNumber,FAgentShortName,FPlanPartsSort ';
    qry_Loop.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry_Loop.Open;
  finally
    ;
  end;
  If qry_Loop.RecordCount<=0 then
     Exit
  else
  begin
    mdata_Qry.CopyFromDataSet(qry_Loop);
    mdata_Qry.Open;
  end;
  //P_Wet:='FMakeWet';
  P_Wet:='FTJWet';
  colHeadStr1:='';
  colHeadStr2:='';
  colHeadStr3:=' from (select FDepartmentID,FPlanDateYearMonth,FBranchItemNumber,FItemNumber,FFileNo,FClientFullName,FItemModel,FAgentNumber,FAgentShortName,FPlanPartsSort,'
              +'FAgentShortName+FplanPartsSort as FRow, '
              +'(sum(isnull('+P_Wet+',0))) as Wet  from V_PlanTaskList where FDepartmentID=:FDepartmentID'
              +' and FPlanDateYearMonth is not null and FAgentShortName<>'''' '
              +'group by FDepartmentID,FPlanDateYearMonth,FBranchItemNumber,FItemNumber,FFileNo,FClientFullName,FItemModel,FAgentNumber,FAgentShortName,FPlanPartsSort,FAgentShortName+FplanPartsSort) as a ';

  mdata_Qry.First;
  while not mdata_Qry.eof do
  begin
    If mdata_Qry['FRow']='' then
    begin
      mdata_Qry.Edit;
      mdata_Qry['FRow']:='空白';
      mdata_Qry.Post
    end;
    colHeadStr1:=colHeadStr1+',sum('+mdata_Qry['FRow']+') as '+mdata_Qry['FRow'];    //横向
    colHeadStr2:=colHeadStr2+',isnull(case FRow when '''+mdata_Qry['FRow']+''' '
               +'then isnull(Wet,0) end,0) as '+mdata_Qry['FRow'];

    mdata_Qry.Next;
  end;

  colHeadStr:='select FPlanDateYearMonth as 排产日期,FFileNo as 档案号,FClientFullName as 用户名称,FBranchItemNumber as 项目图号,FItemModel as 型号规格 '
             +colHeadStr1+' from (select FPlanDateYearMonth,FBranchItemNumber,FItemNumber,FFileNo,FClientFullName,FItemModel,FAgentNumber,FRow '
             +colHeadStr2+colHeadStr3
             +' ) as b group by FPlanDateYearMonth,FBranchItemNumber,FItemNumber,FFileNo,FClientFullName,FItemModel '
             +'order by FPlanDateYearMonth,FBranchItemNumber,FItemNumber,FFileNo,FClientFullName,FItemModel ';
   edit1.Text:=colHeadStr;
  try
    qry.SQL.Text:=colHeadStr;
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Open;
  finally
    ;
  end;

  If qry.RecordCount<=0 then
     Exit
  else
  begin
    cxGV_Qry.ClearItems;
    for  LoopInt:=0 to  qry.FieldCount-1 do
    begin
      Column:=cxGV_Qry.CreateColumn;
      Column.DataBinding.FieldName:=qry.Fields[LoopInt].FieldName;
      Column.Caption:=qry.Fields[LoopInt].FieldName;
      Column.FooterAlignmentHorz:=taCenter;
      Column.HeaderAlignmentHorz:=taCenter;
      Column.HeaderGlyphAlignmentHorz:=taCenter;
      If length(qry.Fields[LoopInt].AsString)*10>length(Column.Caption)*10 then
         Column.Width:=length(qry.Fields[LoopInt].AsString)*10;
      If length(qry.Fields[LoopInt].AsString)*10<=length(Column.Caption)*10 then
         Column.Width:=length(Column.Caption)*10;

      column.Visible:=True;
      Column.Options.Filtering:=False;
      Column.Options.Editing:=False;
    end;
  end;

end;

procedure TFrm_PlanWeekQry.Act_FMax_TotalMakePercentWetExecute(
  Sender: TObject);
var qry,qry_Loop: TADOQuery;
    DS_qry:TDataSource;
    colHeadStr1,colHeadStr2,colHeadStr3,colHeadStr:string;
    LoopInt:Integer;
    Column: TcxGridDBColumn;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry_Loop:=TADOQuery.Create(Self);
  qry_Loop.ConnectionString:=mdlData.ReadConnStr;
  DS_qry:=TDataSource.Create(Self);

  DS_qry.DataSet:=qry;
  cxGV_Qry.DataController.DataSource:=DS_Qry;
  cxGV_Qry.DataController.DataSource.DataSet:=qry;

  try
    qry_Loop.SQL.Text:='select distinct FDepartmentNumber,FAgentShortName from V_PlanWeekList '
                      +'where FDepartmentID=:FDepartmentID and FAgentShortName<>'''' order by FDepartmentNumber,FAgentShortName ';
    qry_Loop.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry_Loop.Open;
  finally
    ;
  end;
  If qry_Loop.RecordCount<=0 then
     Exit
  else
  begin
    mdata_Qry.CopyFromDataSet(qry_Loop);
    mdata_Qry.Open;
  end;
  P_Wet:='FMax_not_TotalMakePercentWet';
  colHeadStr1:='';
  colHeadStr2:='';
  colHeadStr3:=' from (select FDepartmentNumber,FAgentShortName,FPlanMonthWeek,'
               +'(sum(isnull('+P_Wet+',0))) as Wet  from V_PlanWeekList where FDepartmentID=:FDepartmentID'
               +' and FAgentShortName<>'''' and FPlanMonthWeek<>'''' '
               +'group by FDepartmentNumber,FAgentShortName,FPlanMonthWeek) as a ';

  mdata_Qry.First;
  while not mdata_Qry.eof do
  begin
    If mdata_Qry['FAgentShortName']='' then
    begin
      mdata_Qry.Edit;
      mdata_Qry['FAgentShortName']:='空白';
      mdata_Qry.Post
    end;
    colHeadStr1:=colHeadStr1+',sum('+mdata_Qry['FAgentShortName']+') as '+mdata_Qry['FAgentShortName'];
    colHeadStr2:=colHeadStr2+',isnull(case FAgentShortName when '''+mdata_Qry['FAgentShortName']+''' '
               +'then isnull(Wet,0) end,0) as '+mdata_Qry['FAgentShortName']+' ';

    mdata_Qry.Next;
  end;

  colHeadStr:='select FPlanMonthWeek as 周报月份 '
             +colHeadStr1+' from (select FPlanMonthWeek '
             +colHeadStr2+colHeadStr3
             +' ) as b group by FPlanMonthWeek '
             +'order by FPlanMonthWeek ';
   edit1.Text:=colHeadStr;
  try
    qry.SQL.Text:=colHeadStr;
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Open;
  finally
    ;
  end;

  If qry.RecordCount<=0 then
     Exit
  else
  begin
    cxGV_Qry.ClearItems;
    for  LoopInt:=0 to  qry.FieldCount-1 do
    begin
      Column:=cxGV_Qry.CreateColumn;
      Column.DataBinding.FieldName:=qry.Fields[LoopInt].FieldName;
      Column.Caption:=qry.Fields[LoopInt].FieldName;
      Column.FooterAlignmentHorz:=taCenter;
      Column.HeaderAlignmentHorz:=taCenter;
      Column.HeaderGlyphAlignmentHorz:=taCenter;
      If length(qry.Fields[LoopInt].AsString)*10>length(Column.Caption)*10 then
         Column.Width:=length(qry.Fields[LoopInt].AsString)*10;
      If length(qry.Fields[LoopInt].AsString)*10<=length(Column.Caption)*10 then
         Column.Width:=length(Column.Caption)*10;

      column.Visible:=True;
      Column.Options.Filtering:=False;
      Column.Options.Editing:=False;
    end;
  end;

end;

procedure TFrm_PlanWeekQry.Act_FMax_not_TotalMakePercentWetExecute(
  Sender: TObject);
var qry,qry_Loop: TADOQuery;
    DS_qry:TDataSource;
    colHeadStr1,colHeadStr2,colHeadStr3,colHeadStr:string;
    LoopInt:Integer;
    Column: TcxGridDBColumn;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry_Loop:=TADOQuery.Create(Self);
  qry_Loop.ConnectionString:=mdlData.ReadConnStr;
  DS_qry:=TDataSource.Create(Self);

  DS_qry.DataSet:=qry;
  cxGV_Qry.DataController.DataSource:=DS_Qry;
  cxGV_Qry.DataController.DataSource.DataSet:=qry;

  try
    qry_Loop.SQL.Text:='select distinct FDepartmentNumber,FAgentShortName from V_PlanWeekList '
                      +'where FDepartmentID=:FDepartmentID and FAgentShortName<>'''' order by FDepartmentNumber,FAgentShortName ';
    qry_Loop.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry_Loop.Open;
  finally
    ;
  end;
  If qry_Loop.RecordCount<=0 then
     Exit
  else
  begin
    mdata_Qry.CopyFromDataSet(qry_Loop);
    mdata_Qry.Open;
  end;
  P_Wet:='FMax_not_TotalMakePercentWet';
  colHeadStr1:='';
  colHeadStr2:='';
  colHeadStr3:=' from (select FProductNum,FBranchItemNumber,FFileNo,FItemModel,FClientFullName,FDepartmentNumber,FAgentShortName,FPlanMonthWeek,'
               +'(sum(isnull('+P_Wet+',0))) as Wet  from V_PlanWeekList where FDepartmentID=:FDepartmentID'
               +' and FAgentShortName<>'''' and FPlanMonthWeek<>'''' '
               +'group by FProductNum,FBranchItemNumber,FFileNo,FItemModel,FClientFullName, FDepartmentNumber,FAgentShortName,FPlanMonthWeek) as a ';

  mdata_Qry.First;
  while not mdata_Qry.eof do
  begin
    If mdata_Qry['FAgentShortName']='' then
    begin
      mdata_Qry.Edit;
      mdata_Qry['FAgentShortName']:='空白';
      mdata_Qry.Post
    end;
    colHeadStr1:=colHeadStr1+',sum('+mdata_Qry['FAgentShortName']+') as '+mdata_Qry['FAgentShortName'];
    colHeadStr2:=colHeadStr2+',isnull(case FAgentShortName when '''+mdata_Qry['FAgentShortName']+''' '
               +'then isnull(Wet,0) end,0) as '+mdata_Qry['FAgentShortName']+' ';

    mdata_Qry.Next;
  end;

  colHeadStr:='select FPlanMonthWeek as 周报月份,FClientFullName as 用户名称,FFileNo as 档案号,FBranchItemNumber as 图号,FItemModel as 型号规格 '
             +colHeadStr1+',FProductNum from (select FProductNum,FBranchItemNumber,FFileNo,FItemModel,FClientFullName,FPlanMonthWeek '
             +colHeadStr2+colHeadStr3
             +' ) as b group by FPlanMonthWeek,FProductNum,FBranchItemNumber,FFileNo,FItemModel,FClientFullName '
             +'order by FPlanMonthWeek,FProductNum,FBranchItemNumber,FFileNo,FItemModel,FClientFullName ';
   edit1.Text:=colHeadStr;
  try
    qry.SQL.Text:=colHeadStr;
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Open;
  finally
    ;
  end;

  If qry.RecordCount<=0 then
     Exit
  else
  begin
    cxGV_Qry.ClearItems;
    for  LoopInt:=0 to  qry.FieldCount-1 do
    begin
      Column:=cxGV_Qry.CreateColumn;
      Column.DataBinding.FieldName:=qry.Fields[LoopInt].FieldName;
      Column.Caption:=qry.Fields[LoopInt].FieldName;
      Column.FooterAlignmentHorz:=taCenter;
      Column.HeaderAlignmentHorz:=taCenter;
      Column.HeaderGlyphAlignmentHorz:=taCenter;
      If length(qry.Fields[LoopInt].AsString)*10>length(Column.Caption)*10 then
         Column.Width:=length(qry.Fields[LoopInt].AsString)*10;
      If length(qry.Fields[LoopInt].AsString)*10<=length(Column.Caption)*10 then
         Column.Width:=length(Column.Caption)*10;

      column.Visible:=True;
      Column.Options.Filtering:=False;
      Column.Options.Editing:=False;
    end;
  end;


end;

procedure TFrm_PlanWeekQry.Act_FMax_TotalMakePercentWet_PartsExecute(
  Sender: TObject);
var qry,qry_Loop: TADOQuery;
    DS_qry:TDataSource;
    colHeadStr1,colHeadStr2,colHeadStr3,colHeadStr:string;
    LoopInt:Integer;
    Column: TcxGridDBColumn;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry_Loop:=TADOQuery.Create(Self);
  qry_Loop.ConnectionString:=mdlData.ReadConnStr;
  DS_qry:=TDataSource.Create(Self);

  DS_qry.DataSet:=qry;
  cxGV_Qry.DataController.DataSource:=DS_Qry;
  cxGV_Qry.DataController.DataSource.DataSet:=qry;

  try
    qry_Loop.SQL.Text:='select distinct FDepartmentNumber,FAgentShortName,FPlanPartsSort,FAgentShortName+FPlanPartsSort as FRow from V_PlanWeekList '
                      +'where FDepartmentID=:FDepartmentID and FAgentShortName<>'''' order by FDepartmentNumber,FAgentShortName,FPlanPartsSort ';
    qry_Loop.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry_Loop.Open;
  finally
    ;
  end;
  If qry_Loop.RecordCount<=0 then
     Exit
  else
  begin
    mdata_Qry.CopyFromDataSet(qry_Loop);
    mdata_Qry.Open;
  end;
  P_Wet:='FMax_not_TotalMakePercentWet';
  colHeadStr1:='';
  colHeadStr2:='';
  colHeadStr3:=' from (select FDepartmentNumber,FAgentShortName,FPlanMonthWeek,FPlanPartsSort,'
              +'FAgentShortName+FplanPartsSort as FRow, '
              +'(sum(isnull('+P_Wet+',0))) as Wet  from V_PlanWeekList where FDepartmentID=:FDepartmentID'
              +' and FAgentShortName<>'''' and FPlanMonthWeek<>'''' '
              +'group by FDepartmentNumber,FAgentShortName,FPlanMonthWeek,FPlanPartsSort,FAgentShortName+FplanPartsSort) as a ';

  mdata_Qry.First;
  while not mdata_Qry.eof do
  begin
    If mdata_Qry['FRow']='' then
    begin
      mdata_Qry.Edit;
      mdata_Qry['FRow']:='空白';
      mdata_Qry.Post
    end;
    colHeadStr1:=colHeadStr1+',sum('+mdata_Qry['FRow']+') as '+mdata_Qry['FRow'];
    colHeadStr2:=colHeadStr2+',isnull(case FRow when '''+mdata_Qry['FRow']+''' '
               +'then isnull(Wet,0) end,0) as '+mdata_Qry['FRow']+' ';

    mdata_Qry.Next;
  end;

  colHeadStr:='select FPlanMonthWeek as 周报月份 '
             +colHeadStr1+' from (select FPlanMonthWeek,FRow '
             +colHeadStr2+colHeadStr3
             +' ) as b group by FPlanMonthWeek '
             +'order by FPlanMonthWeek ';
   edit1.Text:=colHeadStr;
  try
    qry.SQL.Text:=colHeadStr;
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Open;
  finally
    ;
  end;

  If qry.RecordCount<=0 then
     Exit
  else
  begin
    cxGV_Qry.ClearItems;
    for  LoopInt:=0 to  qry.FieldCount-1 do
    begin
      Column:=cxGV_Qry.CreateColumn;
      Column.DataBinding.FieldName:=qry.Fields[LoopInt].FieldName;
      Column.Caption:=qry.Fields[LoopInt].FieldName;
      Column.FooterAlignmentHorz:=taCenter;
      Column.HeaderAlignmentHorz:=taCenter;
      Column.HeaderGlyphAlignmentHorz:=taCenter;
      If length(qry.Fields[LoopInt].AsString)*8>length(Column.Caption)*8 then
         Column.Width:=length(qry.Fields[LoopInt].AsString)*8;
      If length(qry.Fields[LoopInt].AsString)*8<=length(Column.Caption)*8 then
         Column.Width:=length(Column.Caption)*8;

      column.Visible:=True;
      Column.Options.Filtering:=False;
      Column.Options.Editing:=False;
    end;
  end;


end;

procedure TFrm_PlanWeekQry.Act_FMax_not_TotalMakePercentWet_PartsExecute(
  Sender: TObject);
var qry,qry_Loop: TADOQuery;
    DS_qry:TDataSource;
    colHeadStr1,colHeadStr2,colHeadStr3,colHeadStr:string;
    LoopInt:Integer;
    Column: TcxGridDBColumn;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry_Loop:=TADOQuery.Create(Self);
  qry_Loop.ConnectionString:=mdlData.ReadConnStr;
  DS_qry:=TDataSource.Create(Self);

  DS_qry.DataSet:=qry;
  cxGV_Qry.DataController.DataSource:=DS_Qry;
  cxGV_Qry.DataController.DataSource.DataSet:=qry;

  try
    qry_Loop.SQL.Text:='select distinct FDepartmentNumber,FAgentShortName,FPlanPartsSort,FAgentShortName+FPlanPartsSort as FRow from V_PlanWeekList '
                      +'where FDepartmentID=:FDepartmentID and FAgentShortName<>'''' order by FDepartmentNumber,FAgentShortName,FPlanPartsSort ';
    qry_Loop.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry_Loop.Open;
  finally
    ;
  end;
  If qry_Loop.RecordCount<=0 then
     Exit
  else
  begin
    mdata_Qry.CopyFromDataSet(qry_Loop);
    mdata_Qry.Open;
  end;
  P_Wet:='FMax_not_TotalMakePercentWet';
  colHeadStr1:='';
  colHeadStr2:='';
  colHeadStr3:=' from (select FProductNum,FBranchItemNumber,FFileNo,FItemModel,FClientFullName,FDepartmentNumber,FAgentShortName,FPlanMonthWeek,FPlanPartsSort,'
              +'FAgentShortName+FplanPartsSort as FRow, '
              +'(sum(isnull('+P_Wet+',0))) as Wet  from V_PlanWeekList where FDepartmentID=:FDepartmentID'
              +' and FAgentShortName<>'''' and FPlanMonthWeek<>'''' '
              +'group by FProductNum,FBranchItemNumber,FFileNo,FItemModel,FClientFullName, FDepartmentNumber,FAgentShortName,FPlanMonthWeek,FPlanPartsSort,FAgentShortName+FplanPartsSort) as a ';

  mdata_Qry.First;
  while not mdata_Qry.eof do
  begin
    If mdata_Qry['FRow']='' then
    begin
      mdata_Qry.Edit;
      mdata_Qry['FRow']:='空白';
      mdata_Qry.Post
    end;
    colHeadStr1:=colHeadStr1+',sum('+mdata_Qry['FRow']+') as '+mdata_Qry['FRow'];
    colHeadStr2:=colHeadStr2+',isnull(case FRow when '''+mdata_Qry['FRow']+''' '
               +'then isnull(Wet,0) end,0) as '+mdata_Qry['FRow']+' ';

    mdata_Qry.Next;
  end;

  colHeadStr:='select FPlanMonthWeek as 周报月份,FFileNo as 档案号,FClientFullName as 用户名称,FBranchItemNumber as 图号,FItemModel as 型号规格  '
             +colHeadStr1+',FProductNum from (select FProductNum,FBranchItemNumber,FFileNo,FItemModel,FClientFullName,FPlanMonthWeek,FRow '
             +colHeadStr2+colHeadStr3
             +' ) as b group by FProductNum,FBranchItemNumber,FFileNo,FItemModel,FClientFullName,FPlanMonthWeek '
             +'order by FProductNum,FBranchItemNumber,FFileNo,FItemModel,FClientFullName,FPlanMonthWeek ';
   edit1.Text:=colHeadStr;
  try
    qry.SQL.Text:=colHeadStr;
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Open;
  finally
    ;
  end;

  If qry.RecordCount<=0 then
     Exit
  else
  begin
    cxGV_Qry.ClearItems;
    for  LoopInt:=0 to  qry.FieldCount-1 do
    begin
      Column:=cxGV_Qry.CreateColumn;
      Column.DataBinding.FieldName:=qry.Fields[LoopInt].FieldName;
      Column.Caption:=qry.Fields[LoopInt].FieldName;
      Column.FooterAlignmentHorz:=taCenter;
      Column.HeaderAlignmentHorz:=taCenter;
      Column.HeaderGlyphAlignmentHorz:=taCenter;
      If length(qry.Fields[LoopInt].AsString)*10>length(Column.Caption)*10 then
         Column.Width:=length(qry.Fields[LoopInt].AsString)*10;
      If length(qry.Fields[LoopInt].AsString)*10<=length(Column.Caption)*10 then
         Column.Width:=length(Column.Caption)*10;

      column.Visible:=True;
      Column.Options.Filtering:=False;
      Column.Options.Editing:=False;
    end;
  end;


end;

procedure TFrm_PlanWeekQry.Act_FMakePartsWet_PartsExecute(Sender: TObject);
var qry,qry_Loop: TADOQuery;
    DS_qry:TDataSource;
    colHeadStr1,colHeadStr2,colHeadStr3,colHeadStr:string;
    LoopInt:Integer;
    Column: TcxGridDBColumn;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry_Loop:=TADOQuery.Create(Self);
  qry_Loop.ConnectionString:=mdlData.ReadConnStr;
  DS_qry:=TDataSource.Create(Self);

  DS_qry.DataSet:=qry;
  cxGV_Qry.DataController.DataSource:=DS_Qry;
  cxGV_Qry.DataController.DataSource.DataSet:=qry;

  try
    qry_Loop.SQL.Text:='select distinct FDepartmentNumber,FAgentShortName,FPlanPartsSort,FAgentShortName+FPlanPartsSort as FRow from V_PlanWeekList '
                      +'where FDepartmentID=:FDepartmentID and FAgentShortName<>'''' order by FDepartmentNumber,FAgentShortName,FPlanPartsSort ';
    qry_Loop.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry_Loop.Open;
  finally
    ;
  end;
  If qry_Loop.RecordCount<=0 then
     Exit
  else
  begin
    mdata_Qry.CopyFromDataSet(qry_Loop);
    mdata_Qry.Open;
  end;
  P_Wet:='FMakePercentWet';
  colHeadStr1:='';
  colHeadStr2:='';
  colHeadStr3:=' from (select FDepartmentNumber,FAgentShortName,FPlanMonthWeek,FPlanPartsSort,'
              +'FAgentShortName+FplanPartsSort as FRow, '
              +'(sum(isnull('+P_Wet+',0))) as Wet  from V_PlanWeekList where FDepartmentID=:FDepartmentID'
              +' and FAgentShortName<>'''' and FPlanMonthWeek<>'''' '
              +'group by FDepartmentNumber,FAgentShortName,FPlanMonthWeek,FPlanPartsSort,FAgentShortName+FplanPartsSort) as a ';

  mdata_Qry.First;
  while not mdata_Qry.eof do
  begin
    If mdata_Qry['FRow']='' then
    begin
      mdata_Qry.Edit;
      mdata_Qry['FRow']:='空白';
      mdata_Qry.Post
    end;
    colHeadStr1:=colHeadStr1+',sum('+mdata_Qry['FRow']+') as '+mdata_Qry['FRow'];
    colHeadStr2:=colHeadStr2+',isnull(case FRow when '''+mdata_Qry['FRow']+''' '
               +'then isnull(Wet,0) end,0) as '+mdata_Qry['FRow']+' ';

    mdata_Qry.Next;
  end;

  colHeadStr:='select FPlanMonthWeek as 周报月份 '
             +colHeadStr1+' from (select FPlanMonthWeek,FRow '
             +colHeadStr2+colHeadStr3
             +' ) as b group by FPlanMonthWeek '
             +'order by FPlanMonthWeek ';
   edit1.Text:=colHeadStr;
  try
    qry.SQL.Text:=colHeadStr;
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Open;
  finally
    ;
  end;

  If qry.RecordCount<=0 then
     Exit
  else
  begin
    cxGV_Qry.ClearItems;
    for  LoopInt:=0 to  qry.FieldCount-1 do
    begin
      Column:=cxGV_Qry.CreateColumn;
      Column.DataBinding.FieldName:=qry.Fields[LoopInt].FieldName;
      Column.Caption:=qry.Fields[LoopInt].FieldName;
      Column.FooterAlignmentHorz:=taCenter;
      Column.HeaderAlignmentHorz:=taCenter;
      Column.HeaderGlyphAlignmentHorz:=taCenter;
      If length(qry.Fields[LoopInt].AsString)*8>length(Column.Caption)*8 then
         Column.Width:=length(qry.Fields[LoopInt].AsString)*8;
      If length(qry.Fields[LoopInt].AsString)*8<=length(Column.Caption)*8 then
         Column.Width:=length(Column.Caption)*8;

      column.Visible:=True;
      Column.Options.Filtering:=False;
      Column.Options.Editing:=False;
    end;
  end;



end;

procedure TFrm_PlanWeekQry.Act_FMakePercentWet_Item_PartsExecute(
  Sender: TObject);
var qry,qry_Loop: TADOQuery;
    DS_qry:TDataSource;
    colHeadStr1,colHeadStr2,colHeadStr3,colHeadStr:string;
    LoopInt:Integer;
    Column: TcxGridDBColumn;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry_Loop:=TADOQuery.Create(Self);
  qry_Loop.ConnectionString:=mdlData.ReadConnStr;
  DS_qry:=TDataSource.Create(Self);

  DS_qry.DataSet:=qry;
  cxGV_Qry.DataController.DataSource:=DS_Qry;
  cxGV_Qry.DataController.DataSource.DataSet:=qry;

  try
    qry_Loop.SQL.Text:='select distinct FDepartmentNumber,FAgentShortName,FPlanPartsSort,FAgentShortName+FPlanPartsSort as FRow from V_PlanWeekList '
                      +'where FDepartmentID=:FDepartmentID and FAgentShortName<>'''' order by FDepartmentNumber,FAgentShortName,FPlanPartsSort ';
    qry_Loop.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry_Loop.Open;
  finally
    ;
  end;
  If qry_Loop.RecordCount<=0 then
     Exit
  else
  begin
    mdata_Qry.CopyFromDataSet(qry_Loop);
    mdata_Qry.Open;
  end;
  P_Wet:='FMakePercentWet';
  colHeadStr1:='';
  colHeadStr2:='';
  colHeadStr3:=' from (select FProductNum,FBranchItemNumber,FFileNo,FItemModel,FClientFullName,FDepartmentNumber,FAgentShortName,FPlanMonthWeek,FPlanPartsSort,'
              +'FAgentShortName+FplanPartsSort as FRow, '
              +'(sum(isnull('+P_Wet+',0))) as Wet  from V_PlanWeekList where FDepartmentID=:FDepartmentID'
              +' and FAgentShortName<>'''' and FPlanMonthWeek<>'''' '
              +'group by FProductNum,FBranchItemNumber,FFileNo,FItemModel,FClientFullName, FDepartmentNumber,FAgentShortName,FPlanMonthWeek,FPlanPartsSort,FAgentShortName+FplanPartsSort) as a ';

  mdata_Qry.First;
  while not mdata_Qry.eof do
  begin
    If mdata_Qry['FRow']='' then
    begin
      mdata_Qry.Edit;
      mdata_Qry['FRow']:='空白';
      mdata_Qry.Post
    end;
    colHeadStr1:=colHeadStr1+',sum('+mdata_Qry['FRow']+') as '+mdata_Qry['FRow'];
    colHeadStr2:=colHeadStr2+',isnull(case FRow when '''+mdata_Qry['FRow']+''' '
               +'then isnull(Wet,0) end,0) as '+mdata_Qry['FRow']+' ';

    mdata_Qry.Next;
  end;

  colHeadStr:='select FPlanMonthWeek as 月份,FFileNo as 档案号,FClientFullName as 用户名称,FBranchItemNumber as 图号,FItemModel as 型号规格  '
             +colHeadStr1+',FProductNum from (select FProductNum,FBranchItemNumber,FFileNo,FItemModel,FClientFullName,FPlanMonthWeek,FRow '
             +colHeadStr2+colHeadStr3
             +' ) as b group by FProductNum,FBranchItemNumber,FFileNo,FItemModel,FClientFullName,FPlanMonthWeek '
             +'order by FProductNum,FBranchItemNumber,FFileNo,FItemModel,FClientFullName,FPlanMonthWeek ';
   edit1.Text:=colHeadStr;
  try
    qry.SQL.Text:=colHeadStr;
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Open;
  finally
    ;
  end;

  If qry.RecordCount<=0 then
     Exit
  else
  begin
    cxGV_Qry.ClearItems;
    for  LoopInt:=0 to  qry.FieldCount-1 do
    begin
      Column:=cxGV_Qry.CreateColumn;
      Column.DataBinding.FieldName:=qry.Fields[LoopInt].FieldName;
      Column.Caption:=qry.Fields[LoopInt].FieldName;
      Column.FooterAlignmentHorz:=taCenter;
      Column.HeaderAlignmentHorz:=taCenter;
      Column.HeaderGlyphAlignmentHorz:=taCenter;
      If length(qry.Fields[LoopInt].AsString)*10>length(Column.Caption)*10 then
         Column.Width:=length(qry.Fields[LoopInt].AsString)*10;
      If length(qry.Fields[LoopInt].AsString)*10<=length(Column.Caption)*10 then
         Column.Width:=length(Column.Caption)*10;

      column.Visible:=True;
      Column.Options.Filtering:=False;
      Column.Options.Editing:=False;
    end;
  end;



end;



procedure TFrm_PlanWeekQry.Act_FNot_TJWet_PartsExecute(Sender: TObject);
var qry,qry_Loop: TADOQuery;
    DS_qry:TDataSource;
    colHeadStr1,colHeadStr2,colHeadStr3,colHeadStr:string;
    LoopInt:Integer;
    Column: TcxGridDBColumn;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry_Loop:=TADOQuery.Create(Self);
  qry_Loop.ConnectionString:=mdlData.ReadConnStr;
  DS_qry:=TDataSource.Create(Self);

  DS_qry.DataSet:=qry;
  cxGV_Qry.DataController.DataSource:=DS_Qry;
  cxGV_Qry.DataController.DataSource.DataSet:=qry;

  try
    qry_Loop.SQL.Text:='select distinct FAgentNumber,FAgentShortName,FPlanPartsSort,FAgentShortName+FPlanPartsSort as FRow '
                      +' from V_PlanTaskList where FDepartmentID=:FDepartmentID and FAgentShortName<>'''' '
                      +' and FPartsSort=''本体'' order by FAgentNumber,FAgentShortName,FPlanPartsSort ';
    qry_Loop.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry_Loop.Open;
  finally
    ;
  end;
  If qry_Loop.RecordCount<=0 then
     Exit
  else
  begin
    mdata_Qry.CopyFromDataSet(qry_Loop);
    mdata_Qry.Open;
  end;
  P_Wet:='FNot_TJWet';
  colHeadStr1:='';
  colHeadStr2:='';
  colHeadStr3:=' from (select FDepartmentID,FCarryOut,FPlanTaskWrite,FBranchItemNumber,FItemNumber,FFileNo,FClientFullName,FItemModel,FAgentNumber,FAgentShortName,FPlanPartsSort,'
              +'FAgentShortName+FplanPartsSort as FRow, '
              +'(sum(isnull('+P_Wet+',0))) as Wet  from V_PlanTaskList where FDepartmentID=:FDepartmentID'
              +' and FAgentShortName<>'''' '
              +'group by FDepartmentID,FCarryOut,FPlanTaskWrite,FBranchItemNumber,FItemNumber,FFileNo,FClientFullName,FItemModel,FAgentNumber,FAgentShortName,FPlanPartsSort,FAgentShortName+FplanPartsSort) as a ';

  mdata_Qry.First;
  while not mdata_Qry.eof do
  begin
    If mdata_Qry['FRow']='' then
    begin
      mdata_Qry.Edit;
      mdata_Qry['FRow']:='空白';
      mdata_Qry.Post
    end;
    colHeadStr1:=colHeadStr1+',sum('+mdata_Qry['FRow']+') as '+mdata_Qry['FRow'];    //横向
    colHeadStr2:=colHeadStr2+',isnull(case FRow when '''+mdata_Qry['FRow']+''' '
               +'then isnull(Wet,0) end,0) as '+mdata_Qry['FRow'];

    mdata_Qry.Next;
  end;

  colHeadStr:='select FCarryOut as 状态,FPlanTaskWrite as 生产经理,FFileNo as 档案号,FClientFullName as 用户名称,FBranchItemNumber as 项目图号,FItemModel as 型号规格 '
             +colHeadStr1+' from (select FCarryOut,FPlanTaskWrite,FBranchItemNumber,FItemNumber,FFileNo,FClientFullName,FItemModel,FAgentNumber,FRow '
             +colHeadStr2+colHeadStr3
             +' ) as b group by FCarryOut,FPlanTaskWrite,FBranchItemNumber,FItemNumber,FFileNo,FClientFullName,FItemModel '
             +'order by FCarryOut,FPlanTaskWrite,FBranchItemNumber,FItemNumber,FFileNo,FClientFullName,FItemModel ';
   edit1.Text:=colHeadStr;
  try
    qry.SQL.Text:=colHeadStr;
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Open;
  finally
    ;
  end;

  If qry.RecordCount<=0 then
     Exit
  else
  begin
    cxGV_Qry.ClearItems;
    for  LoopInt:=0 to  qry.FieldCount-1 do
    begin
      Column:=cxGV_Qry.CreateColumn;
      Column.DataBinding.FieldName:=qry.Fields[LoopInt].FieldName;
      Column.Caption:=qry.Fields[LoopInt].FieldName;
      Column.FooterAlignmentHorz:=taCenter;
      Column.HeaderAlignmentHorz:=taCenter;
      Column.HeaderGlyphAlignmentHorz:=taCenter;
      If length(qry.Fields[LoopInt].AsString)*10>length(Column.Caption)*10 then
         Column.Width:=length(qry.Fields[LoopInt].AsString)*10;
      If length(qry.Fields[LoopInt].AsString)*10<=length(Column.Caption)*10 then
         Column.Width:=length(Column.Caption)*10;

      column.Visible:=True;
      Column.Options.Filtering:=False;
      Column.Options.Editing:=False;
    end;
  end;



end;

procedure TFrm_PlanWeekQry.Act_FNot_TJWetExecute(Sender: TObject);
var qry,qry_Loop: TADOQuery;
    DS_qry:TDataSource;
    colHeadStr1,colHeadStr2,colHeadStr3,colHeadStr:string;
    LoopInt:Integer;
    Column: TcxGridDBColumn;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry_Loop:=TADOQuery.Create(Self);
  qry_Loop.ConnectionString:=mdlData.ReadConnStr;
  DS_qry:=TDataSource.Create(Self);

  DS_qry.DataSet:=qry;
  cxGV_Qry.DataController.DataSource:=DS_Qry;
  cxGV_Qry.DataController.DataSource.DataSet:=qry;

  try
    qry_Loop.SQL.Text:='select distinct FAgentNumber,FAgentShortName '
                      +' from V_PlanTaskList where FDepartmentID=:FDepartmentID and FAgentShortName<>'''' '
                      +' and FPartsSort=''本体'' order by FAgentNumber,FAgentShortName ';
    qry_Loop.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry_Loop.Open;
  finally
    ;
  end;
  If qry_Loop.RecordCount<=0 then
     Exit
  else
  begin
    mdata_Qry.CopyFromDataSet(qry_Loop);
    mdata_Qry.Open;
  end;
  P_Wet:='FNot_TJWet';
  colHeadStr1:='';
  colHeadStr2:='';
  colHeadStr3:=' from (select FDepartmentID,FCarryOut,FPlanTaskWrite,FBranchItemNumber,FItemNumber,FFileNo,FClientFullName,FItemModel,FAgentNumber,FAgentShortName,'
              +'(sum(isnull('+P_Wet+',0))) as Wet  from V_PlanTaskList where FDepartmentID=:FDepartmentID'
              +' and FAgentShortName<>'''' '
              +'group by FDepartmentID,FCarryOut,FPlanTaskWrite,FBranchItemNumber,FItemNumber,FFileNo,FClientFullName,FItemModel,FAgentNumber,FAgentShortName) as a ';

  mdata_Qry.First;
  while not mdata_Qry.eof do
  begin
    If mdata_Qry['FAgentShortName']='' then
    begin
      mdata_Qry.Edit;
      mdata_Qry['FAgentShortName']:='空白';
      mdata_Qry.Post
    end;
    colHeadStr1:=colHeadStr1+',sum('+mdata_Qry['FAgentShortName']+') as '+mdata_Qry['FAgentShortName'];    //横向
    colHeadStr2:=colHeadStr2+',isnull(case FAgentShortName when '''+mdata_Qry['FAgentShortName']+''' '
               +'then isnull(Wet,0) end,0) as '+mdata_Qry['FAgentShortName'];

    mdata_Qry.Next;
  end;

  colHeadStr:='select FCarryOut as 状态,FPlanTaskWrite as 生产经理,FFileNo as 档案号,FClientFullName as 用户名称,FBranchItemNumber as 项目图号,FItemModel as 型号规格 '
             +colHeadStr1+' from (select FCarryOut,FPlanTaskWrite,FBranchItemNumber,FItemNumber,FFileNo,FClientFullName,FItemModel,FAgentNumber,FAgentShortName '
             +colHeadStr2+colHeadStr3
             +' ) as b group by FCarryOut,FPlanTaskWrite,FBranchItemNumber,FItemNumber,FFileNo,FClientFullName,FItemModel '
             +'order by FCarryOut,FPlanTaskWrite,FBranchItemNumber,FItemNumber,FFileNo,FClientFullName,FItemModel ';
   edit1.Text:=colHeadStr;
  try
    qry.SQL.Text:=colHeadStr;
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Open;
  finally
    ;
  end;

  If qry.RecordCount<=0 then
     Exit
  else
  begin
    cxGV_Qry.ClearItems;
    for  LoopInt:=0 to  qry.FieldCount-1 do
    begin
      Column:=cxGV_Qry.CreateColumn;
      Column.DataBinding.FieldName:=qry.Fields[LoopInt].FieldName;
      Column.Caption:=qry.Fields[LoopInt].FieldName;
      Column.FooterAlignmentHorz:=taCenter;
      Column.HeaderAlignmentHorz:=taCenter;
      Column.HeaderGlyphAlignmentHorz:=taCenter;
      If length(qry.Fields[LoopInt].AsString)*10>length(Column.Caption)*10 then
         Column.Width:=length(qry.Fields[LoopInt].AsString)*10;
      If length(qry.Fields[LoopInt].AsString)*10<=length(Column.Caption)*10 then
         Column.Width:=length(Column.Caption)*10;

      column.Visible:=True;
      Column.Options.Filtering:=False;
      Column.Options.Editing:=False;
    end;
  end;

end;

end.
