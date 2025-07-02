unit Main_DesignBOM_Dcc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FrmGridBass, ExtCtrls, StdCtrls, DsFancyButton, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  dxmdaset, cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid,
  cxTextEdit, cxDropDownEdit, cxCalendar, cxMaskEdit, cxContainer, cxLabel,
  cxDBLookupComboBox, ADODB, cxButtonEdit, Grids, DBGrids, ComCtrls,
  cxCurrencyEdit, cxCheckBox, cxLookAndFeelPainters, ActnList, FR_DSet,
  FR_DBSet, FR_Class, ImgList, cxButtons, RzPanel, RzRadGrp, RzSplit,
  RzTabs, jpeg, Comobj,RzShellDialogs,  ToolWin, cxRadioGroup, Buttons,
  cxGroupBox,   IniFiles,  cxMemo, RzStatus, Menus;

type
    TFrm_DesignBOM_Dcc = class(TFrm_GridBass)
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
    TS_DesignBOM: TRzTabSheet;
    ToolBar1: TToolBar;
    TB_Ref: TToolButton;
    ToolButton5: TToolButton;
    TB_update: TToolButton;
    TB_PartsSort: TToolButton;
    TB_Out: TToolButton;
    TB_Down: TToolButton;
    TB_PRIN: TToolButton;
    ToolButton1: TToolButton;
    RzSizePanel3: TRzSizePanel;
    MyTreeView: TTreeView;
    DS_Mdata2: TDataSource;
    MData2: TdxMemData;
    TB_EXIT: TToolButton;
    MData2th: TStringField;
    MData2mc: TStringField;
    MData2gg: TStringField;
    MData2FSumQry: TIntegerField;
    MData2FSupplier: TStringField;
    MData2FTakeReMark: TStringField;
    MData2FSumSuttle: TFloatField;
    MData2FName: TStringField;
    MData2FModel: TStringField;
    MData2UnitName: TStringField;
    Panel3: TPanel;
    PC_2: TRzPageControl;
    TS_MX: TRzTabSheet;
    TS_Sort: TRzTabSheet;
    cxGrid: TcxGrid;
    cxGV: TcxGridDBTableView;
    FCode: TcxGridDBColumn;
    th: TcxGridDBColumn;
    mc: TcxGridDBColumn;
    FModel: TcxGridDBColumn;
    FParts: TcxGridDBColumn;
    FSumQry: TcxGridDBColumn;
    FSuttle: TcxGridDBColumn;
    gg: TcxGridDBColumn;
    ssth: TcxGridDBColumn;
    FQry: TcxGridDBColumn;
    FManageParts: TcxGridDBColumn;
    FWorkParts: TcxGridDBColumn;
    FPartsSort: TcxGridDBColumn;
    FSumSuttle: TcxGridDBColumn;
    y_FSuttle: TcxGridDBColumn;
    c_FSuttle: TcxGridDBColumn;
    FMaterialRate: TcxGridDBColumn;
    FNumber: TcxGridDBColumn;
    FName: TcxGridDBColumn;
    UnitName: TcxGridDBColumn;
    y_FNumber: TcxGridDBColumn;
    y_FModel: TcxGridDBColumn;
    FPriceQry: TcxGridDBColumn;
    FUse: TcxGridDBColumn;
    FRation: TcxGridDBColumn;
    y_FRation: TcxGridDBColumn;
    FFullNumber: TcxGridDBColumn;
    ssFullNumber: TcxGridDBColumn;
    Remark: TcxGridDBColumn;
    FFullName: TcxGridDBColumn;
    cxGL: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGV1: TcxGridDBTableView;
    FCode_1: TcxGridDBColumn;
    th_1: TcxGridDBColumn;
    mc_1: TcxGridDBColumn;
    FModel_1: TcxGridDBColumn;
    FParts_1: TcxGridDBColumn;
    FSumQry_1: TcxGridDBColumn;
    FSuttle_1: TcxGridDBColumn;
    gg_1: TcxGridDBColumn;
    ssth_1: TcxGridDBColumn;
    FQry_1: TcxGridDBColumn;
    FManageParts_1: TcxGridDBColumn;
    FWorkParts_1: TcxGridDBColumn;
    FPartsSort_1: TcxGridDBColumn;
    FSumSuttle_1: TcxGridDBColumn;
    y_FSuttle_1: TcxGridDBColumn;
    c_FSuttle_1: TcxGridDBColumn;
    FMaterialRate_1: TcxGridDBColumn;
    FNumber_1: TcxGridDBColumn;
    FName_1: TcxGridDBColumn;
    UnitName_1: TcxGridDBColumn;
    y_FNumber_1: TcxGridDBColumn;
    y_FModel_1: TcxGridDBColumn;
    FPriceQry_1: TcxGridDBColumn;
    FUse_1: TcxGridDBColumn;
    FRation_1: TcxGridDBColumn;
    y_FRation_1: TcxGridDBColumn;
    FFullNumber_1: TcxGridDBColumn;
    ssFullNumber_1: TcxGridDBColumn;
    Remark_1: TcxGridDBColumn;
    FFullName_1: TcxGridDBColumn;
    cxGL1: TcxGridLevel;
    DS_Mdata1: TDataSource;
    MData1: TdxMemData;
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
    StringField12: TStringField;
    StringField13: TStringField;
    StringField14: TStringField;
    StringField15: TStringField;
    StringField16: TStringField;
    StringField17: TStringField;
    StringField18: TStringField;
    actionList: TActionList;
    ActApp: TAction;
    ActParts: TAction;
    ActEdit: TAction;
    ActDel: TAction;
    ActOut: TAction;
    Act_Audit: TAction;
    Actcldy: TAction;
    ActSave: TAction;
    ActPartsSort: TAction;
    ActWeigth: TAction;
    ActWorkBOM: TAction;
    TB_Edit: TToolButton;
    ActDelWorkBom: TAction;
    ActFullName: TAction;
    TS_Take: TRzTabSheet;
    RzSizePanel2: TRzSizePanel;
    MyTreeView_SCenario: TTreeView;
    ActTake: TAction;
    ActDelTake: TAction;
    Act_Check: TAction;
    Act_PushDown: TAction;
    Act_Status: TAction;
    Act_Submit: TAction;
    Act_TakeEdit: TAction;
    FPartsCode: TcxGridDBColumn;
    ToolButton3: TToolButton;
    Panel6: TPanel;
    TS_Item: TPageControl;
    TabSheet3: TTabSheet;
    cxGrid_M2: TcxGrid;
    cxGV_M2: TcxGridDBTableView;
    FProductID: TcxGridDBColumn;
    FProductName: TcxGridDBColumn;
    FDepartMentID: TcxGridDBColumn;
    FDepartMentName: TcxGridDBColumn;
    FScenarioNum: TcxGridDBColumn;
    FNum: TcxGridDBColumn;
    FMaterialItemID: TcxGridDBColumn;
    FMaterialNumber: TcxGridDBColumn;
    FMaterialModel: TcxGridDBColumn;
    FMaterialRate_2: TcxGridDBColumn;
    FItemID_2: TcxGridDBColumn;
    FNumber_2: TcxGridDBColumn;
    FName_: TcxGridDBColumn;
    FModel_2: TcxGridDBColumn;
    FNotLike: TcxGridDBColumn;
    FLike: TcxGridDBColumn;
    FRemark: TcxGridDBColumn;
    cxGL_M2: TcxGridLevel;
    Panel5: TPanel;
    ToolBar3: TToolBar;
    TB_Ref3: TToolButton;
    TB_Out3: TToolButton;
    TB_Down3: TToolButton;
    TB_Prin3: TToolButton;
    TB_Exit3: TToolButton;
    FItemNumber: TcxGridDBColumn;
    SaveDialog1: TSaveDialog;
    TB_Audit: TToolButton;
    ActAudit: TAction;
    stbBar: TRzStatusBar;
    RzClockStatus1: TRzClockStatus;
    RzKeyStatus1: TRzKeyStatus;
    RzKeyStatus2: TRzKeyStatus;
    RzKeyStatus3: TRzKeyStatus;
    stbMsg: TRzFieldStatus;
    FMakeParts: TcxGridDBColumn;
    Panel4: TPanel;
    Bevel1: TBevel;
    CB_Print: TcxCheckBox;
    CB_Parts: TcxComboBox;
    CB_Sum: TcxComboBox;
    RzRG_1: TRzRadioGroup;
    RzRG_2: TRzRadioGroup;
    Panel1: TPanel;
    ToolBar2: TToolBar;
    TB_cldy: TToolButton;
    TB_Parts: TToolButton;
    TB_Down1: TToolButton;
    ToolButton7: TToolButton;
    RzSP_PTitem: TRzSizePanel;
    cxGrid_PTList: TcxGrid;
    cxGV_PTList: TcxGridDBTableView;
    FDesignChangeNum_PTList: TcxGridDBColumn;
    FDesignChangeDate_PTList: TcxGridDBColumn;
    FPartsNumber_PTList: TcxGridDBColumn;
    FPartsName_PTList: TcxGridDBColumn;
    FDesignChangeContent_PTList: TcxGridDBColumn;
    FDesignChangeCause_PTList: TcxGridDBColumn;
    FItemListID_PTList: TcxGridDBColumn;
    FDesignChangeListID_PTList: TcxGridDBColumn;
    cxGV_PTListDBColumn4: TcxGridDBColumn;
    cxGV_PTListDBColumn5: TcxGridDBColumn;
    cxGL_PTList: TcxGridLevel;
    DS_Mdata_PTList: TDataSource;
    MData_PTList: TdxMemData;
    StringField140: TStringField;
    StringField141: TStringField;
    StringField142: TStringField;
    StringField143: TStringField;
    StringField144: TStringField;
    StringField145: TStringField;
    StringField146: TStringField;
    StringField147: TStringField;
    StringField148: TStringField;
    StringField149: TStringField;
    StringField150: TStringField;
    FloatField37: TFloatField;
    FloatField38: TFloatField;
    FloatField39: TFloatField;
    StringField151: TStringField;
    StringField152: TStringField;
    StringField153: TStringField;
    StringField154: TStringField;
    StringField155: TStringField;
    StringField156: TStringField;
    IntegerField13: TIntegerField;
    FloatField40: TFloatField;
    FloatField41: TFloatField;
    FloatField42: TFloatField;
    FItemNoID: TcxGridDBColumn;
    PM: TPopupMenu;
    N_Edit: TMenuItem;
    N_Filter: TMenuItem;
    N_Sort: TMenuItem;
    N_Group: TMenuItem;
    N_Set: TMenuItem;
    N_Out: TMenuItem;
    Act_Menu_Set: TAction;
    Act_Menu: TAction;
    procedure FormResize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TB_EXIT1Click(Sender: TObject);
    procedure TB_DownClick(Sender: TObject);
    procedure MyTreeViewChange(Sender: TObject; Node: TTreeNode);
    procedure FormCreate(Sender: TObject);
    procedure TB_RefClick(Sender: TObject);
    procedure TB_updateClick(Sender: TObject);
    procedure CB_bjlbPropertiesChange(Sender: TObject);
    procedure cxGridExit(Sender: TObject);
    procedure MDataAfterEdit(DataSet: TDataSet);
    procedure TB_5Click(Sender: TObject);
    procedure MyTreeViewExpanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure TB_EXITClick(Sender: TObject);
    procedure PartsSort;
    procedure frReportGetValue(const ParName: String;
      var ParValue: Variant);
    procedure ActPartsSortExecute(Sender: TObject);
    procedure ActOutExecute(Sender: TObject);
    procedure ActEditExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FPartsSortPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure TB_Ref3Click(Sender: TObject);
    procedure MyTreeView_SCenarioExpanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure MyTreeView_SCenarioChange(Sender: TObject; Node: TTreeNode);
    procedure TB_Prin3Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure ActAuditExecute(Sender: TObject);
    procedure TB_PartsClick(Sender: TObject);
    procedure TB_cldyClick(Sender: TObject);
    procedure TB_Down1Click(Sender: TObject);
    procedure cxGrid1ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure Act_Menu_SetExecute(Sender: TObject);
    procedure Act_MenuExecute(Sender: TObject);
    procedure N_OutClick(Sender: TObject);
    procedure N_SetClick(Sender: TObject);
    procedure N_EditClick(Sender: TObject);
    procedure N_FilterClick(Sender: TObject);
    procedure N_GroupClick(Sender: TObject);
    procedure N_SortClick(Sender: TObject);


  private

    ListItemFParentNumber,ListItemFNumber1,ListItemFNumber2,ListItemFNumber3,ListItemFNumber4,ListItemFNumber5:String;
    P_i:boolean;

    qry: TADOQuery;
    P_FItemListId:string;
    P_MaxNum,P_Isleaf,P_Status:Integer;
    P_FProductID:string;

    { Private declarations }



 //   Procedure MyItemList(Sender: TObject);

  public
  P_Parts,P_Sort,P_Type: string;
    { Public declarations }
  end;

var
  Frm_DesignBOM_Dcc: TFrm_DesignBOM_Dcc;
  title,title1,title2,title3,bz:string;

implementation

uses FRMDATA, COMMON, FrmSelect, ProgBar, PROGRASS;

{$R *.dfm}







procedure TFrm_DesignBOM_Dcc.PartsSort;
var
  proc:TADOStoredProc;
begin
  proc:=TADOStoredProc.Create(self);
  proc.ConnectionString:=mdlData.ReadConnStr;
  proc.CommandTimeout:=500;
  try
    proc.ProcedureName:='P_BOM_PartsSort;1';
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=50;
      name := '@TableName';
      value:='T_DesignBOM_Structure';
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=50;
      name := '@ViewName';
      value:='V_DesignBOM_Structure';
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=50;
      name := '@FFullNumber';
      value:=ListItemFNumber;
    end;
    proc.ExecProc;
  finally
     ;
  end;
  Proc.Free;
end;

procedure TFrm_DesignBOM_Dcc.FormResize(Sender: TObject);
begin
  inherited;
  L_title.Caption:='���BOM����';
  Self.Caption:='���BOM����';
end;

procedure TFrm_DesignBOM_Dcc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=cafree;
  Frm_DesignBOM_Dcc:=nil;
end;

procedure TFrm_DesignBOM_Dcc.TB_EXIT1Click(Sender: TObject);
begin
  inherited;
  self.Close;
end;

procedure TFrm_DesignBOM_Dcc.TB_DownClick(Sender: TObject);
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
    Panel_down.Visible:=False;
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
    Panel_down.Visible:=True;
    P_i:=True;
  end;
end;

procedure TFrm_DesignBOM_Dcc.MyTreeViewChange(Sender: TObject; Node: TTreeNode);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  ShowPrograss('������ȡ���ݣ����Ժ򡭡�',self);
  If Node = nil then Exit;
  with PTree(Node.Data)^ do
  begin
    ListItemFNumber:=trim(PTree(Node.Data).FFullNumber);
    ListItemFNumber1:=trim(PTree(Node.Data).FNumber);
    P_Status:=PTree(Node.Data).Status;
    P_th:=PTree(Node.Data).Caption;
    P_Isleaf:=PTree(Node.Data).Isleaf;
    If PC_2.ActivePage=TS_Mx then
    begin
      Case PTree(Node.Data).Isleaf of
        1:
        begin
          If MyItemListFieldWhere(qry,Mdata,'FCode,th,mc,gg,FQry,FSuttle,FSumSuttle,FItemNoID,FFullNumber ','V_DesignBOM_Structure','FFullNumber',ListItemFNumber,' and js<=2 and FSortStatus='+IntToStr(P_Status),'FFullNumber') then
          //If MyItemListwhere(qry,Mdata,'V_DesignBOM_Structure','FFullNumber',ListItemFNumber,' and js<=2 and FSortStatus='+IntToStr(P_Status),'FFullNumber',) then
          begin
            cxGvColumn(cxGv,Mdata);
            mdata.Last;
            If (MData['FItemNoID']<>0) and (MData['FItemNoID']<>Null) then
            begin
              If MyItemListID(qry,Mdata_PTList,'V_DesignChangeList','FItemID='+IntToStr(MData['FItemNoID'] ),'FpartsCode',) then
              begin
                If Mdata_PTList.RecordCount>0 then
                   RzSP_PTitem.Visible:=True
                else
                   RzSP_PTitem.Visible:=False;
              end;
              end;
            cxGrid.SetFocus;
            cxGrid.SetFocus;
          end;
        end;
       end;
      Case PTree(Node.Data).Isleaf of
        2:
        begin
          qry.SQL.Text:='Select Min(FInputStartDate) as FInputStartDate from V_ItemList where FFullNumber like :FFullNumber ';
          qry.Parameters.FindParam('FFullNumber').value:=ListItemFNumber+'%';
          qry.open;
          If (qry.RecordCount>0) and (qry.FieldByName('FInputStartDate').AsString<>'') then
          begin
            stbMsg.Caption:='��ʾ��Ϣ����ƶ��'+P_th+'�������������ڣ�'+'��'+qry.FieldByName('FInputStartDate').AsString+'��';
            stbBar.Refresh;
          end;
          //�Ƿ����
          try
            qry.SQL.Text:='select * from T_ItemList where FFullNumber like :FFullNumber and FSortStatus=3';
            qry.Parameters.FindParam('FFullNumber').value:=ListItemFNumber+'%';
            qry.open;
          finally
            ;
          end;
          If qry.RecordCount>0 then
          begin
            TB_PartsSort.Enabled:=False;
            TB_Audit.Caption:='�����';
          end
          else
          begin
           TB_PartsSort.Enabled:= mdlData.PermissionCheckRights(TFrm_DesignBOM_Dcc.ClassName,'�޸�');
           TB_Audit.Caption:='���';
          end;
          //If MyItemListFieldWhere(qry,Mdata,'FCode,th,mc,gg,FQry,FSumQry,FSuttle,FSumSuttle,FNumber,FName,FModel,UnitName,FFullNumber,ssFullNumber,FItemNumber,FPartsNumber,FItemListId,FDesignRemark ','V_DesignBOM_Structure','FFullNumber',ListItemFNumber,' and FSortStatus='+IntToStr(P_Status) ,FFullNumber) then
          If MyItemListwhere(qry,Mdata,'V_DesignBOM_Structure','FFullNumber',ListItemFNumber,' and FSortStatus='+IntToStr(P_Status),'FFullNumber',) then
          begin
            cxGvColumn(cxGv,Mdata);
            mdata.First;
            If (MData['FItemListId']<>0) and (MData['FItemListId']<>Null) then
            begin
              If MyItemListID(qry,Mdata_PTList,'V_DesignChangeList','FItemListId='+IntToStr(MData['FItemListId']),'',) then
              begin
                If Mdata_PTList.RecordCount>0 then
                   RzSP_PTitem.Visible:=True
                else
                   RzSP_PTitem.Visible:=False;
              end;
            end;

            cxGrid.SetFocus;
          end;
        end;
      end;
    end;
  end;
{
  If Node = nil then Exit;
  with PTree(Node.Data)^ do
  begin
    ListItemFNumber:=trim(PTree(Node.Data).FFullNumber);
    ListItemFNumber1:=trim(PTree(Node.Data).FNumber);
    P_Status:=PTree(Node.Data).Status;
    P_th:=PTree(Node.Data).Caption;    //��������  001
    If PTree(Node.Data).Isleaf>=1 then
    begin
      ShowPrograss('������ȡ����'+P_th+'�������ݣ����Ժ򡭡�',self);
      If not MyItemListwhere(qry,Mdata,'V_DesignBOM_Structure','FFullNumber',ListItemFNumber,' and FSortStatus='+IntToStr(P_Status),'FFullNumber',) then
      begin
        cxGvColumn(cxGv,Mdata);
        mdata.Open;
        mdata.Edit;

        mdata.First;
      end;
      //�Ƿ����
      try
        qry.SQL.Text:='select * from T_ItemList where FFullNumber like :FFullNumber and FSortStatus=3';
        qry.Parameters.FindParam('FFullNumber').value:=ListItemFNumber+'%';
        qry.open;
      finally
        ;
      end;
      If qry.RecordCount>0 then
      begin
        TB_PartsSort.Enabled:=False;
        TB_Audit.Caption:='�����';
      end
      else
      begin
        TB_PartsSort.Enabled:= mdlData.CheckFrmRights(TFrm_DesignBOM_Dcc.ClassName,'�޸�');
        TB_Audit.Caption:='���';
      end;
    end;
    //������������
    try
       qry.SQL.Text:='Select Min(FInputStartDate) as FInputStartDate from V_ItemList where FFullNumber like :FFullNumber and FIsFinsh=1 ';
      qry.Parameters.FindParam('FFullNumber').value:=ListItemFNumber+'%';
      qry.open;
    finally
      ;
    end;
    If (qry.RecordCount>0) then
    begin
      stbMsg.Caption:='��ʾ��Ϣ����ƶ��'+P_th+'�������������ڣ�'+'��'+qry.FieldByName('FInputStartDate').AsString+'��';
      stbBar.Refresh;
    end;
  end;              }
  //PC_2.ActivePage:=TS_DesignBOM;

end;

procedure TFrm_DesignBOM_Dcc.FormCreate(Sender: TObject);
begin
  inherited;
  P_Parts:='FManageParts';
  P_Sort:='��ܲ������';

  TB_Edit.Enabled:= mdlData.PermissionCheckRights(TFrm_DesignBOM_Dcc.ClassName,'�޸�');
  TB_Audit.Enabled:= mdlData.PermissionCheckRights(TFrm_DesignBOM_Dcc.ClassName,'���');
  TB_PartsSort.Enabled:= mdlData.PermissionCheckRights(TFrm_DesignBOM_Dcc.ClassName,'�޸�');

  //����嵥

  TB_Out.Enabled:= mdlData.PermissionCheckRights(TFrm_DesignBOM_Dcc.ClassName,'����');

end;

procedure TFrm_DesignBOM_Dcc.TB_RefClick(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If not TreeVeiwListWhere(qry,MyTreeView,'VT_DesignBOM_Status',' and FDepartmentID='+IntToStr(UserFDepartmentID) ) then
  begin
    Application.MessageBox(PChar('���ͽṹ��ʾ��������ϵϵͳ������Ա'), '����', MB_OK +MB_ICONSTOP);
  end;

end;

procedure TFrm_DesignBOM_Dcc.TB_updateClick(Sender: TObject);
var
  IsEdit:bool;
  qry: TADOQuery;
  I_index:integer;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  I_index:=mData.RecNo ;
  Mdata.Edit;
  Mdata.Post;
  If ShowMsg('�Ƿ�����޸Ĳ����������������£����º󲻿ɻָ���','��ʾ') then
  begin
    with mdata do
    begin
      mData.DisableControls;
      First;
      try
        qry.SQL.Text:='Update T_DesignBOM_Structure set FPartsSort=:FPartsSort where FFullNumber=:FFullNumber';
        while not mdata.EoF do
        begin
          IsEdit:=mData.FieldByName('IsEdit').AsBoolean;
          If IsEdit then
          begin
            qry.Parameters[0].Value:=mData['FPartsSort'];
            qry.Parameters[1].Value:=mData['FFullNumber'];
            qry.ExecSQL;
          end;
          next;
        end;
      finally
        ;
        //Messagedlg('���ݸ���ʧ�ܣ�',mtInformation,[mbok],0);
      end;
    end;
    mData.EnableControls;
  end;

  If not MyItemList(qry,Mdata,'V_DesignBOM_Structure','FFullNumber',ListItemFNumber,'FFullNumber') then
  begin
    mdata.Open;
   end;

 // Self.P_select;
  TB_update.Visible:=False;
  If (I_index<mData.RecordCount) and (I_index<>-1) then
     mData.RecNo :=I_index
  else
     mData.Last;

end;

procedure TFrm_DesignBOM_Dcc.CB_bjlbPropertiesChange(Sender: TObject);
begin
  inherited;
  If CB_Parts.Text='����' then
    P_Parts:='FItemNumber';
  If CB_Parts.Text='����' then
    P_Parts:='FParts';
  If CB_Parts.Text='�������' then
    P_Parts:='FPartsSort';
  If CB_Parts.Text='��ܲ������' then
    P_Parts:='FManageParts';
  If CB_Parts.Text='�����������' then
    P_Parts:='FWorkParts';

end;

procedure TFrm_DesignBOM_Dcc.cxGridExit(Sender: TObject);
begin
  inherited;
  If TB_update.Visible then
  If messagedlg('�������޸��Ƿ���£�',mtInformation,[mbyes,mbno],0)=mryes then
    TB_update.Click;

end;

procedure TFrm_DesignBOM_Dcc.MDataAfterEdit(DataSet: TDataSet);
begin
  inherited;
  DataSet['IsEdit']:=True;
  TB_update.Visible:=True;

end;

procedure TFrm_DesignBOM_Dcc.TB_5Click(Sender: TObject);
var
  proc:TADOStoredProc;
  s1,s2:Ttime;
  a:string;

begin
  proc:=TADOStoredProc.Create(self);
  proc.ConnectionString:=mdlData.ReadConnStr;
  proc.CommandTimeout:=500;
  ShowPrograss('���ڻ��ܶ������ݣ����Ժ򡭡�',self);
  s1:=now();
  a:='';

  try
    proc.ProcedureName:='P_Switch;1';
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=50;
      name := '@FScenarioNum';
      value:=CB_Sum.Text;
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftInteger;
      Direction := pdinput;
      name := '@FProductID';
      //value:=1;
      value:=mdata['FProductID'];
    end;
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
      name := '@type';
      value:=P_Type;
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=50;
      name := '@Parts';
      value:=P_Parts;
    end;

    proc.Open;
    s2:=now();
    Messagedlg('��'+a+'������������ϣ�����ʱ�䣺��'+(TimeToStr(s1-s2))+'��',mtInformation,[mbok],0);
    //cxGV1.DataController.DataSource.DataSet:=Proc;
    mdata1.CopyFromDataSet(proc);
    cxGvColumn(cxGv,Mdata1);
    mdata1.First;
  finally
     ;
  end;


  If CB_Print.Checked=True then
  begin
    bz:='��ע��������ָ�⹺��(�������̼�)�������ߡ���Ŵ��������';
   // title:='�������Ĺ��ն�����ܱ���('+CB_sum.Text+')';
    title:='�������Ĺ��ն�����ܱ���';
    frDBDataSet.DataSource:=ds_mdata1;
    frReport.LoadFromFile(ExtractFileDir(Application.ExeName)+'\Report_DesignBOM_Scenario.frf');
    frReport.ShowReport;
  end;


 { Title1:='ͳ��ͼ�ţ���'+mdata['FItemNumber']+'��'+'/��'+mdata['FPartsNumber']+'��';
  Title2:='�û����ƣ���'+mdata['FClientShortName']+'��';
  Title:='���嶨��������ʲɹ����ܱ�';
  FrReport.LoadFromFile(ExtractFileDir(Application.ExeName)+'\Report_DesignBOM_PartsSum.frf');
  FrReport.ShowReport;  }
  Proc.Free;

end;

procedure TFrm_DesignBOM_Dcc.MyTreeViewExpanding(Sender: TObject;
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

  qry.SQL.Text:='Select * from VT_DesignBOM_Status where FParentNumber= '''
               +PTree(Node.Data).ID+''' and FDepartmentID=:FDepartmentID '
               +' order by FNumber';
  qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
  qry.open;

  PTree(Node.Data).Flag := cLoadFlag;                  // �����Ѽ��ر�־
  while not qry.Eof do
  begin
    New(P);
    P.ID := qry.FieldByName('FNumber').AsString;
    P.ParentID := qry.FieldByName('FParentNumber').AsString;
    P.FNumber:=qry.FieldByName('FNumber').AsString;
    P.FFullNumber:=qry.FieldByName('FFullNumber').AsString;
    P.Isleaf := qry.FieldByName('Isleaf').Value;
    P.Status := qry.FieldByName('FSortStatus').Value;
    P.Caption := qry.FieldByName('FName').AsString;
    P.Flag := cNoLoadFlag;                            // �½ڵ㣬δ���ر�־
    with MyTreeView.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('Isleaf').value;
    end;
    qry.Next;
  end;

end;

procedure TFrm_DesignBOM_Dcc.TB_EXITClick(Sender: TObject);
begin
  inherited;
  self.Close;
end;

procedure TFrm_DesignBOM_Dcc.frReportGetValue(const ParName: String;
  var ParValue: Variant);
begin
  inherited;
  If ParName='title' then
    ParValue:=title;
  If ParName='title1' then
    ParValue:=title1;
  If ParName='title2' then
    ParValue:=title2;
  If ParName='P_Parts' then
    ParValue:=P_Parts;
  If ParName='P_Sort' then
    ParValue:=Trim(CB_Parts.Text);
  If ParName='bz' then
    ParValue:=bz;


end;

procedure TFrm_DesignBOM_Dcc.ActPartsSortExecute(Sender: TObject);
var
  qry:TADOquery;
  proc:TADOStoredProc;
  s1,s2:Ttime;
  a,b:string;
  I_index:Integer;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  proc:=TADOStoredProc.Create(self);
  proc.ConnectionString:=mdlData.ReadConnStr;
  proc.CommandTimeout:=500;
  If mData.RecordCount<=0 then
    Exit;
  I_index:=mdata2.RecNo ;
  s1:=now();

  If ShowMsg('�Ƿ�ԡ�'+P_th+'����ͼ�Ž��в�������Զ�����?','��ʾ') then
  begin
    try
     // ShowPrograss('���ڶ����BOM���в������֣����Ժ򡭡�',self);
      //a:='��'+mdata['FItemNumber']+'��'+'/��'+mdata['FPartsNumber']+'��';


      ShowPrograss('���ڶ�'+P_th+'���BOM���в������֣����Ժ򡭡�',self);
      Self.PartsSort;
      If not MyItemList(qry,Mdata,'V_DesignBOM_Structure','FFullNumber',ListItemFNumber,'FFullNumber') then
      begin
        mdata.Open;
      end;
      S2:=now();
      b:=FormatDateTime('hh:mm:ss',s2-s1);
      Messagedlg(''+a+''+'���BOM����������ϣ�����ʱ�䣺��'+b+'��',mtInformation,[mbok],0);
    finally
       ;
    end;
  end;
  If (I_index<mdata.RecordCount) and (I_index<>-1) then
     mdata.RecNo :=I_index
  else
     mdata.Last;
end;

procedure TFrm_DesignBOM_Dcc.ActOutExecute(Sender: TObject);
begin
  inherited;
  If PC_2.ActivePage=TS_MX then
     ExportToExcel(cxGrid,True,TRue);
  If PC_2.ActivePage=TS_Sort then
     ExportToExcel(cxGrid1,True,TRue);

end;

procedure TFrm_DesignBOM_Dcc.ActEditExecute(Sender: TObject);
begin
  inherited;
  cxGV.OptionsData.Editing:=True;
  FPartsSort.Options.Editing:=True;
  TB_Edit.Enabled:=False;
end;

procedure TFrm_DesignBOM_Dcc.FormShow(Sender: TObject);
begin
  inherited;
  TB_Ref.Click;
  TB_Ref3.Click;

end;

procedure TFrm_DesignBOM_Dcc.FPartsSortPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='select distinct FPartsSort from T_PartsSort where FProductID=:FProductID and FPartsCode=:FPartsCode order by FPartsSort ';
    qry.Parameters.FindParam('FProductID').value:=mdata['FProductID'];
    qry.Parameters.FindParam('FPartsCode').value:=mdata['FPartsCode'];
    qry.Open;
  finally
   ;
  end;

  selValue:=select('ѡ�񲿼����','FPartsSort','FPartsSort','FPartsSort','FPartsSort',qry);
  If (Length(selValue)>0) then
  begin
    mdata.Edit;
    mdata['FPartsSort']:=qry.FieldByName('FPartsSort').Value;
    mdata.Post;
  end;


end;

procedure TFrm_DesignBOM_Dcc.TB_Ref3Click(Sender: TObject);

var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If not TreeVeiwListUserID(qry,MyTreeView_SCenario,'VT_SCenario',UserFDepartmentID) then
  begin
    Application.MessageBox(PChar('���ͽṹ��ʾ��������ϵϵͳ������Ա'), '����', MB_OK +MB_ICONSTOP);
  end;

end;

procedure TFrm_DesignBOM_Dcc.MyTreeView_SCenarioExpanding(Sender: TObject;
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

  qry.SQL.Text:='Select * from [VT_SCenario] where FParentNumber= '''
               +PTree(Node.Data).ID+''' and FDepartmentID=:FDepartmentID '
               +' order by FNumber';
  qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
  qry.open;

  PTree(Node.Data).Flag := cLoadFlag;   // �����Ѽ��ر�־
  while not qry.Eof do
  begin
    New(P);
    P.ID := qry.FieldByName('FNumber').AsString;
    P.ParentID := qry.FieldByName('FParentNumber').AsString;
    P.FNumber:=qry.FieldByName('FNumber').AsString;
    P.Isleaf := qry.FieldByName('Isleaf').Value;
    P.Caption := qry.FieldByName('FName').AsString;

    P.Flag := cNoLoadFlag;                            // �½ڵ㣬δ���ر�־
    with MyTreeView_SCenario.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('Isleaf').value;
    end;
    qry.Next;
  end;

end;

procedure TFrm_DesignBOM_Dcc.MyTreeView_SCenarioChange(Sender: TObject;
  Node: TTreeNode);
var
  qry:TADOquery;

begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If Node = nil then Exit;
  with PTree(Node.Data)^ do
  begin
    ListItemFNumber2:=trim(PTree(Node.Data).FNumber);
    P_th2:=PTree(Node.Data).Caption;
    P_Isleaf:=PTree(Node.Data).Isleaf;


    If PTree(Node.Data).Isleaf>=1 then
    begin
      If MyItemList(qry,Mdata2,'V_SCenario','FDepartmentName+'';''+FProductName+'';''+FSCenarioNum+'';''',
                   ListItemFNumber2,'FDepartmentName,FProductName,FSCenarioNum,FNum') then
    end
    else
    begin
      mdata2.Close;
    end;
  end;
end;

procedure TFrm_DesignBOM_Dcc.TB_Prin3Click(Sender: TObject);
begin
  inherited;
  Mdata2.SortedField:='FTakeNumber';
  frDBDataSet.DataSet:=Mdata2;
  FrReport.LoadFromFile(ExtractFileDir(Application.ExeName)+'\Report_DesignBOM_Take.frf');
  FrReport.ShowReport;

end;

procedure TFrm_DesignBOM_Dcc.ToolButton3Click(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  ShowPrograss('���ڸ������ݣ����Ժ򡭡�',self);
  try
    qry.SQL.Text:='select * from V_DesignBOM_Structure where cast(FSortStatus as nvarchar(10))+'';''+FFullNumber like :FFullNumber order by FFullNumber ';
    qry.Parameters.FindParam('FFullNumber').value:=ListItemFNumber1+'%';
    qry.Open;
  finally
    ;
  end;
  mdata.CopyFromDataSet(qry);
  mdata.Open;
  mdata.First;

end;

procedure TFrm_DesignBOM_Dcc.ActAuditExecute(Sender: TObject);
var
 qry,qry1:TADOquery;
 P_ItemID,P_ItemListID:Integer;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry1:=TAdoQuery.Create(self);
  qry1.ConnectionString:=mdlData.ReadConnStr;

  try
    qry1.SQL.Text:='select * from T_ItemList where FFullNumber like :FFullNumber';
    qry1.Parameters.FindParam('FFullNumber').value:=ListItemFNumber+'%';
    qry1.open;
  finally
    ;
  end;
  If qry1.RecordCount>0 then
  begin
    P_ItemID:= qry1.FieldByName('FItemID').AsInteger;
    P_ItemListID:=qry1.FieldByName('FItemListID').AsInteger;
  end;

  If (TB_Audit.Caption='���')  then
  begin
    If application.MessageBox(Pchar('���棺�Ƿ���ˡ�'+P_th+'���Ĳ����������'+chr(13)+chr(13)
                                   +'ȷ��Ҫ��˱�������'),'������ʾ',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      If qry1.RecordCount=1 then
      begin
        try
          qry.SQL.Text:='Update T_ItemList Set FSortStatus=3 where FItemListID=:FItemListID';
          qry.Parameters.FindParam('FItemListID').value:=P_ItemListID;
          qry.ExecSQL;
        finally
           ;
        end;
      end
      else
      begin
        try
          qry.SQL.Text:='Update T_ItemList Set FSortStatus=3 where FItemID=:FItemID';
          qry.Parameters.FindParam('FItemID').value:=P_ItemID;
          qry.ExecSQL;
        finally
           ;
        end;
      end;
      TB_Audit.Caption:='�����';
      application.MessageBox('�����ϣ�','ϵͳ��ʾ',MB_ICONINFORMATION);
    end;
    Exit;
  end;
  If (TB_Audit.Caption='�����')  then
  begin
    If application.MessageBox(Pchar('���棺�Ƿ���ˡ�'+P_th+'���Ĳ����������'+chr(13)+chr(13)
                                   +'ȷ��Ҫ����˱�������'),'������ʾ',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      If qry1.RecordCount=1 then
      begin
        try
          qry.SQL.Text:='Update T_ItemList Set FSortStatus=0  where FItemListID=:FItemListID';
          qry.Parameters.FindParam('FItemListID').value:= P_ItemListID;
          qry.ExecSQL;
        finally
           ;
        end;
      end
      else
      begin
        try
          qry.SQL.Text:='Update T_ItemList Set FSortStatus=0  where FItemID=:FItemID';
          qry.Parameters.FindParam('FItemID').value:= P_ItemID;
          qry.ExecSQL;
        finally
           ;
        end;
      end;
      TB_Audit.Caption:='���';
      application.MessageBox('�������ϣ�','ϵͳ��ʾ',MB_ICONINFORMATION);
    end;
    Exit;
  end;


end;

procedure TFrm_DesignBOM_Dcc.TB_PartsClick(Sender: TObject);
var
  proc:TADOStoredProc;
  bz,a:String;
begin
  proc:=TADOStoredProc.Create(self);
  proc.ConnectionString:=mdlData.ReadConnStr;
  proc.CommandTimeout:=500;
  If RzRG_1.ItemIndex=0 then
     P_Sort:='��������';
  If RzRG_1.ItemIndex=1 then
     P_Sort:='���ϻ���';
  If RzRG_1.ItemIndex=2 then
     P_Sort:='̨�׻���';
 If mdata.RecordCount=0 then
   Exit;
  ShowPrograss('���ڻ���'+P_th+'�������ݣ����Ժ򡭡�',self);
  stbMsg.Caption:='���ڵ���'+P_th+'��ƶ�����Ժ�...  ...';
  stbBar.Refresh;

  try
    proc.ProcedureName:='P_DesignBOM_SUM;1';
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
      name := '@FPartsSort';
      value:=P_Parts;
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=50;
      name := '@Sort';
      value:=P_Sort;
    end;
    proc.Open;
    mdata1.CopyFromDataSet(proc);
    cxGvColumn(cxGv1,Mdata1);
  finally
     ;
  end;


  If CB_Print.Checked=True then
  begin
    If RzRG_1.ItemIndex=0 then
    begin
      Title:='�������Ĺ��ն�����ܱ���';
      title1:='ͳ��ͼ�ţ�'+P_th;

      bz:='��ע��������ָ�⹺��(�������̼�)�������ߡ���Ŵ��������';
      frDBDataSet.DataSource:=ds_mdata1;
      FrReport.LoadFromFile(ExtractFileDir(Application.ExeName)+'\Report_DesignBOM_PartsSortSum.frf');
   end;
   If RzRG_1.ItemIndex=1 then
    begin
      Title:='���嶨��������ʲɹ����ܱ�';
      title1:='ͳ��ͼ�ţ�'+P_th;

      frDBDataSet.DataSource:=ds_mdata1;
      FrReport.LoadFromFile(ExtractFileDir(Application.ExeName)+'\Report_DesignBOM_PartsSum.frf');
    end;
    If RzRG_1.ItemIndex=2 then
    begin
      Title:='���嶨��̨�ײ������Ļ��ܱ�';
      title1:='ͳ��ͼ�ţ�'+P_th;

      frDBDataSet.DataSource:=ds_mdata1;
      FrReport.LoadFromFile(ExtractFileDir(Application.ExeName)+'\Report_DesignBOM_PartsSum.frf');
    end;
    FrReport.ShowReport;
 end;
 Proc.Free;

end;

procedure TFrm_DesignBOM_Dcc.TB_cldyClick(Sender: TObject);
var
  proc:TADOStoredProc;
  s1,s2:Ttime;
  a,b:string;

begin
  proc:=TADOStoredProc.Create(self);
  proc.ConnectionString:=mdlData.ReadConnStr;
  proc.CommandTimeout:=500;
  If RzRG_2.ItemIndex=0 then
     P_Type:='���ϻ���';
  If RzRG_2.ItemIndex=1 then
     P_Type:='��������';
  If RzRG_2.ItemIndex=2 then
     P_Type:='��ϸ�嵥';
 If mdata.RecordCount=0 then
   Exit;

  ShowPrograss('���ڻ���'+P_th+'�������ݣ����Ժ򡭡�',self);
  stbMsg.Caption:='���ڻ���'+P_th+'�������ݣ����Ժ�...  ...';
  stbBar.Refresh;

  s1:=now();

  try
    proc.ProcedureName:='P_Switch;1';
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=50;
      name := '@FScenarioNum';
      value:=CB_Sum.Text;
    end;
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
      name := '@type';
      value:=P_Type;
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=50;
      name := '@Parts';
      value:=P_Parts;
    end;
    proc.Open;
    mdata1.CopyFromDataSet(proc);
    cxGvColumn(cxGv1,Mdata1);
    mdata1.First;
  finally
     ;
  end;
    s2:=now();
    b:=FormatDateTime('hh:mm:ss',s2-s1);
   // Messagedlg(''+a+'����������ϣ�����ʱ�䣺��'+b+'��',mtInformation,[mbok],0);
   // stbMsg.Caption:='���ܡ�'+mdata['FItemNumber']+'����'+mdata['FPartsNumber']+'����ϣ�����ʱ�䣺��'+b+'��'+';';
    stbMsg.Caption:='����'+P_th+'��ϣ�����ʱ�䣺��'+b+'��'+';';
                     
    stbBar.Refresh;

  If CB_Print.Checked=True then
  begin
    If P_Type='���ϻ���' then
    begin
      title:='���嶨������ϴ��û��ܱ�('+CB_sum.Text+')';
      title1:='ͳ��ͼ�ţ�'+P_th;
      frDBDataSet.DataSource:=ds_mdata1;
      frReport.LoadFromFile(ExtractFileDir(Application.ExeName)+'\Report_DesignBOM_PartsRation.frf');
    end;
    If P_Type='��������' then
    begin
      bz:='��ע��������ָ�⹺��(�������̼�)�������ߡ���Ŵ��������';
      title:='�������Ĺ��ն�����ܱ���('+CB_sum.Text+')';
      title1:='ͳ��ͼ�ţ�'+P_th;
      frDBDataSet.DataSource:=ds_mdata1;
      frReport.LoadFromFile(ExtractFileDir(Application.ExeName)+'\Report_DesignBOM_Scenario.frf');
    end;
   frReport.ShowReport;

  end;
  Proc.Free;

end;

procedure TFrm_DesignBOM_Dcc.TB_Down1Click(Sender: TObject);
Var i:Integer;
begin
  If P_i then
  begin
    TB_Down1.Caption:='ȡ������';
    cxGV1.OptionsData.Editing:=False;
    cxGv1.OptionsView.GroupByBox:=False;
    for i:=0 to cxGv1.ColumnCount-1 do
    begin
      cxGv1.Columns[i].Options.Filtering:=False;
      cxGv1.Columns[i].Options.Editing:=False;
      cxGv1.Columns[i].Options.Sorting:=False;
    end;
    Panel_down.Visible:=False;
    P_i:=False;
  end
  else
  begin
    TB_Down1.Caption:='����';
    cxGV1.OptionsData.Editing:=True;
    cxGv1.OptionsView.GroupByBox:=True;

    for i:=0 to cxGv1.ColumnCount-1 do
    begin
      cxGv1.Columns[i].Options.Filtering:=True;
      cxGv1.Columns[i].Options.Editing:=True;
      cxGv1.Columns[i].Options.Sorting:=True;
    end;
    Panel_down.Visible:=True;
    P_i:=True;
  end;
end;

procedure TFrm_DesignBOM_Dcc.cxGrid1ContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
    GV:='cxGV1';
    Gm:='mdata1';
    Gr:='cxGrid1';
    Act_Menu_Set.Execute;

end;


procedure TFrm_DesignBOM_Dcc.Act_Menu_SetExecute(Sender: TObject);
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

procedure TFrm_DesignBOM_Dcc.Act_MenuExecute(Sender: TObject);
Var i:Integer;
begin
  //1������
  If copy((FindComponent(Mn) as TMenuItem).Caption,1,pos('(',(FindComponent(Mn) as TMenuItem).Caption)-1)='ȡ������' then
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

  //�༭
  If (copy((FindComponent(Mn) as TMenuItem).Caption,1,pos('(',(FindComponent(Mn) as TMenuItem).Caption)-1)='�༭')
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
  If (copy((FindComponent(Mn) as TMenuItem).Caption,1,pos('(',(FindComponent(Mn) as TMenuItem).Caption)-1)='�༭')
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
  //����
  If (copy((FindComponent(Mn) as TMenuItem).Caption,1,pos('(',(FindComponent(Mn) as TMenuItem).Caption)-1)='����')
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
  If (copy((FindComponent(Mn) as TMenuItem).Caption,1,pos('(',(FindComponent(Mn) as TMenuItem).Caption)-1)='����')
     and ((FindComponent(Mn) as TMenuItem).Checked=True) then
  begin
    (FindComponent(Mn) as TMenuItem).Checked:=False;
    for i:=0 to (FindComponent(GV) as TcxGridDBTableView).ColumnCount-1 do
    begin
      (FindComponent(GV) as TcxGridDBTableView).Columns[i].Options.Filtering:=False;
    end;
    Exit;
  end;
  //����
  If (copy((FindComponent(Mn) as TMenuItem).Caption,1,pos('(',(FindComponent(Mn) as TMenuItem).Caption)-1)='����')
     and ((FindComponent(Mn) as TMenuItem).Checked=False) then
  begin
    (FindComponent(Mn) as TMenuItem).Checked:=True;
    for i:=0 to (FindComponent(GV) as TcxGridDBTableView).ColumnCount-1 do
    begin
      (FindComponent(GV) as TcxGridDBTableView).Columns[i].Options.Sorting:=True;
    end;
    Exit;
  end;
  If (copy((FindComponent(Mn) as TMenuItem).Caption,1,pos('(',(FindComponent(Mn) as TMenuItem).Caption)-1)='����')
     and ((FindComponent(Mn) as TMenuItem).Checked=True) then
  begin
    (FindComponent(Mn) as TMenuItem).Checked:=False;
    for i:=0 to (FindComponent(GV) as TcxGridDBTableView).ColumnCount-1 do
    begin
      (FindComponent(GV) as TcxGridDBTableView).Columns[i].Options.Sorting:=False;
    end;
    Exit;
  end;
 // ����
  If (copy((FindComponent(Mn) as TMenuItem).Caption,1,pos('(',(FindComponent(Mn) as TMenuItem).Caption)-1)='����')
     and ((FindComponent(Mn) as TMenuItem).Checked=False) then
  begin
    (FindComponent(GV) as TcxGridDBTableView).OptionsView.GroupByBox:=True;
    (FindComponent(Mn) as TMenuItem).Checked:=True;
    Exit;
  end;
  If (copy((FindComponent(Mn) as TMenuItem).Caption,1,pos('(',(FindComponent(Mn) as TMenuItem).Caption)-1)='����')
     and ((FindComponent(Mn) as TMenuItem).Checked=True) then
  begin
    (FindComponent(GV) as TcxGridDBTableView).OptionsView.GroupByBox:=False;
    (FindComponent(Mn) as TMenuItem).Checked:=False;
    Exit;
  end;
  //����
  If copy((FindComponent(Mn) as TMenuItem).Caption,1,pos('(',(FindComponent(Mn) as TMenuItem).Caption)-1)='����' then
  begin
    If (FindComponent(Gm) as TdxMemData).RecordCount>0 then
       ExportToExcel((FindComponent(Gr) as TcxGrid),True,TRue)
    else
       Application.MessageBox(PChar('û����Ҫ���������ݣ�'), '����', MB_OK +MB_ICONSTOP);
    Exit;
  end;

end;

procedure TFrm_DesignBOM_Dcc.N_OutClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_DesignBOM_Dcc.N_SetClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_DesignBOM_Dcc.N_EditClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_DesignBOM_Dcc.N_FilterClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_DesignBOM_Dcc.N_GroupClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_DesignBOM_Dcc.N_SortClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

end.
