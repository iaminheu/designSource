unit Main_PlanTaskChange;

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
  cxEditRepositoryItems, Menus, ActnList, cxMemo, RzStatus, cxBlobEdit,
  cxGridCardView, cxGridDBCardView;

type
  TFrm_PlanTaskChange = class(TFrm_GridBass)
    MData: TdxMemData;
    DS_Mdata: TDataSource;
    ImageList: TImageList;
    Panel1: TPanel;
    ToolBar1: TToolBar;
    ToolButton5: TToolButton;
    ToolButton1: TToolButton;
    TB_EXIT: TToolButton;
    RSP_Tree: TRzSizePanel;
    DS_Mdata_Item: TDataSource;
    TB_Ref: TToolButton;
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
    MData_Item: TdxMemData;
    SaveDialog1: TSaveDialog;
    ADOProc: TADOStoredProc;
    DS_ADOProc: TDataSource;
    DS_List: TDataSource;
    MData_List: TdxMemData;
    DS_List2: TDataSource;
    MData_List2: TdxMemData;
    DS_List_ECL: TDataSource;
    MData_List_ECL: TdxMemData;
    PC_Design: TRzTabSheet;
    Act_MaxID_Item: TAction;
    Act_SkillDesignDetails: TAction;
    Act_SkillProductDetails: TAction;
    Act_MaxID_List: TAction;
    TS_Tree: TPageControl;
    Tree_Item: TTabSheet;
    Tree_Handler: TTabSheet;
    Tree_Edit: TTabSheet;
    TB_App: TToolButton;
    TB_Edit: TToolButton;
    Act_MaxID_List2: TAction;
    Act_Set_Open_ECL: TAction;
    Act_Set_Close_ECL: TAction;
    Act_MaxID_List_ECL: TAction;
    MData_Sum: TdxMemData;
    DS_Sum: TDataSource;
    Act_ElecContList_Sum: TAction;
    SP_Item: TRzSizePanel;
    cxGrid_Item: TcxGrid;
    cxGV_Item: TcxGridDBTableView;
    FItemNum_Item: TcxGridDBColumn;
    FItemName_Item: TcxGridDBColumn;
    FSCM_Item: TcxGridDBColumn;
    FPLC_Item: TcxGridDBColumn;
    FDCS_Item: TcxGridDBColumn;
    FContPlan_Item: TcxGridDBColumn;
    FItemID_Item: TcxGridDBColumn;
    cxGL_Item: TcxGridLevel;
    RP_ECL: TRzSizePanel;
    Panel4: TPanel;
    Label11: TLabel;
    E_Locate: TcxButtonEdit;
    MyTreeView: TTreeView;
    cxGrid: TcxGrid;
    cxGV: TcxGridDBTableView;
    FItemNum: TcxGridDBColumn;
    FItemName: TcxGridDBColumn;
    FSCM: TcxGridDBColumn;
    FPLC: TcxGridDBColumn;
    FDCS: TcxGridDBColumn;
    FContPlan: TcxGridDBColumn;
    FItemID: TcxGridDBColumn;
    cxGVC: TcxGridDBCardView;
    FItemNum_Card: TcxGridDBCardViewRow;
    FItemName_Card: TcxGridDBCardViewRow;
    FSCM_Card: TcxGridDBCardViewRow;
    FPLC_Card: TcxGridDBCardViewRow;
    FDCS_Card: TcxGridDBCardViewRow;
    FContPlan_Card: TcxGridDBCardViewRow;
    FItemID_Card: TcxGridDBCardViewRow;
    cxGL: TcxGridLevel;
    cxGLC: TcxGridLevel;
    PC_ECL: TPageControl;
    TS_DD: TTabSheet;
    cxGrid_List_ECL: TcxGrid;
    cxGV_List_ECL: TcxGridDBTableView;
    FElecCont: TcxGridDBColumn;
    FLoadCapacity: TcxGridDBColumn;
    FContdQry: TcxGridDBColumn;
    FElecContListID: TcxGridDBColumn;
    cxGV_List_ECLDBColumn1: TcxGridDBColumn;
    cxGV_List_ECLDBColumn2: TcxGridDBColumn;
    cxGL_List_ECL: TcxGridLevel;
    Panel_button_ECL: TPanel;
    OKBtn_ECL: TcxButton;
    CancelBtn_ECL: TcxButton;
    ToolBar3: TToolBar;
    TB_Edit_ECL: TToolButton;
    TB_Del_ECL: TToolButton;
    PC_List: TPageControl;
    TS_List: TTabSheet;
    cxGrid_List: TcxGrid;
    cxGV_List: TcxGridDBTableView;
    FElecProductName: TcxGridDBColumn;
    FElecLoadCapacity: TcxGridDBColumn;
    FElecProductQry: TcxGridDBColumn;
    FDeviceModel: TcxGridDBColumn;
    FCableModel: TcxGridDBColumn;
    FElecJudgeListRemark: TcxGridDBColumn;
    IsApp: TcxGridDBColumn;
    IsEdit: TcxGridDBColumn;
    cxGL_List: TcxGridLevel;
    Panel_button: TPanel;
    OKBtn: TcxButton;
    CancelBtn: TcxButton;
    TS_Content: TTabSheet;
    cxGrid_List2: TcxGrid;
    cxGV_List2: TcxGridDBTableView;
    FElecJudgeContentNum: TcxGridDBColumn;
    FElecJudgeContent: TcxGridDBColumn;
    FElecJudgeResult: TcxGridDBColumn;
    cxGV_List2DBColumn1: TcxGridDBColumn;
    cxGL_List2: TcxGridLevel;
    TS_Cont: TTabSheet;
    cxGrid_Sum: TcxGrid;
    cxGV_Sum: TcxGridDBTableView;
    FElecCont_Sum: TcxGridDBColumn;
    FLoadCapacity_Sum: TcxGridDBColumn;
    FContdSumQry: TcxGridDBColumn;
    FItemID_Sum: TcxGridDBColumn;
    cxGL_Sum: TcxGridLevel;
    FGround_Item: TcxGridDBColumn;
    FLighting_Item: TcxGridDBColumn;
    FBridge_Item: TcxGridDBColumn;
    FCable_Item: TcxGridDBColumn;
    FGround: TcxGridDBColumn;
    FLighting: TcxGridDBColumn;
    FCable: TcxGridDBColumn;
    FBridge: TcxGridDBColumn;
    FGround_Card: TcxGridDBCardViewRow;
    FLighting_Card: TcxGridDBCardViewRow;
    FCable_Card: TcxGridDBCardViewRow;
    FBridge_Card: TcxGridDBCardViewRow;
    procedure FormResize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TB_EXITClick(Sender: TObject);
    procedure MyTreeViewChange(Sender: TObject; Node: TTreeNode);
    procedure MyTreeViewExpanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure TB_RefClick(Sender: TObject);
    procedure OKBtnClick(Sender: TObject);
    procedure TB_EditClick(Sender: TObject);
    procedure CancelBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
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
    procedure Act_Set_OpenExecute(Sender: TObject);
    procedure Act_Set_CloseExecute(Sender: TObject);
    procedure E_LocatePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure Act_MaxID_ItemExecute(Sender: TObject);
    procedure Act_SkillDesignDetailsExecute(Sender: TObject);
    procedure Act_SkillProductDetailsExecute(Sender: TObject);
    procedure FSkillProductClassPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure Act_Set_Open_DesignExecute(Sender: TObject);
    procedure Act_MaxID_ListExecute(Sender: TObject);
    procedure MData_List2AfterInsert(DataSet: TDataSet);
    procedure MData_List2AfterEdit(DataSet: TDataSet);
    procedure MData_List2BeforeDelete(DataSet: TDataSet);
    procedure TS_TreeChange(Sender: TObject);
    procedure cxGrid_ItemContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure cxGrid_ListContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure cxGrid_List_ECLContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure TB_AppClick(Sender: TObject);
    procedure MData_ListAfterEdit(DataSet: TDataSet);
    procedure MData_ListBeforeDelete(DataSet: TDataSet);
    procedure MData_List_ECLAfterEdit(DataSet: TDataSet);
    procedure MData_List_ECLBeforeDelete(DataSet: TDataSet);
    procedure MData_ListAfterInsert(DataSet: TDataSet);
    procedure MData_List_ECLAfterInsert(DataSet: TDataSet);
    procedure FElecProductNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FItemNum_ItemPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxGV_ItemFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure Act_MaxID_List2Execute(Sender: TObject);
    procedure TB_Edit_ECLClick(Sender: TObject);
    procedure FElecContPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure Act_Set_Open_ECLExecute(Sender: TObject);
    procedure Act_Set_Close_ECLExecute(Sender: TObject);
    procedure CancelBtn_ECLClick(Sender: TObject);
    procedure OKBtn_ECLClick(Sender: TObject);
    procedure cxGV_ListFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure Act_MaxID_List_ECLExecute(Sender: TObject);
    procedure Act_ElecContList_SumExecute(Sender: TObject);
    procedure PC_ListChange(Sender: TObject);
    procedure cxGV_ItemDblClick(Sender: TObject);
    procedure cxGVCDblClick(Sender: TObject);
    procedure FElecLoadCapacityPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FDeviceModelPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FCableModelPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FElecJudgeContentPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FElecJudgeResultPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FLoadCapacityPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
   // ListItemFNumber,P_th:String;
    P_MaxID_Item,P_MaxID_List,P_MaxID_List2,P_MaxID_List_ECL:Integer;
    I_index,I_index_ECL:Integer;
    DelArray_List,DelArray_List2,DelArray_List_ECL:array of string; //ɾ����¼����

    { Private declarations }
    //�����������
    function DelRd:bool;            //0 �����    ɾ��

    function AddRd:bool;            //0 �����    ����
    function AddRd_Item:bool;         //1  �����    ��������
    function AddRd_List:bool;        //2  ��Ʒ��ϸ   ��������
    function AddRd_List2:bool;        //2  ������   ��������


    function EditRd:bool;                     //0 �����     �޸�

    function EditRd_Item:bool;       //1  �����޸� ��ͬ�����
    function EditRd_List:bool;      //1  �����޸�  ��Ʒ��ϸ
    function DelList:bool;        //1  ����ɾ��  ��Ʒ��ϸ
   // function AddList:bool;     //1  ��������  ��Ʒ��ϸ  AddRd_List
    function EditList:bool;     //1  �����޸�  ��Ʒ��ϸ

    function EditRd_List2:bool;      //2  �����޸�  ��Ʒ��ϸ
    function DelList2:bool;        //2  ����ɾ��  ������
    function EditList2:bool;     //2  �����޸�  ������

    function EditRd_ECL:bool;          //ECL  �����޸�   ���ƶ���
    function DelList_ECL:bool;        //ECL  ����ɾ��   ���ƶ���
    function AddList_ECL:bool;       //ECL  ��������   ���ƶ���
    function EditList_ECL:bool;     //ECL  �����޸�   ���ƶ���


  public
    P_state,P_Isleaf:integer;
    { Public declarations }
  end;

var
  Frm_PlanTaskChange: TFrm_PlanTaskChange;


implementation

uses FRMDATA,  COMMON, FrmSelect, ProgBar, PROGRASS;

{$R *.dfm}

function TFrm_PlanTaskChange.DelRd: bool;   //�����   ɾ��
var
 qry: TADOQuery;
begin
  result:=False;
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Delete from T_ElecJudge where FElecJudgeID=:FElecJudgeID';
    with qry.Parameters do
    begin
      FindParam('FElecJudgeID').value:=mdata_Item['FElecJudgeID'];
    end;
    result:=qry.ExecSQL>=1;
  finally
    qry.Free;
  end;
end;

function TFrm_PlanTaskChange.AddRd: bool;
var
  qry:TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  result:=False;

  If mData_Item.RecordCount<=0 then
  begin
    result:=True;
    Exit;
  end;
  mdlData.conn.BeginTrans;
  try
    if AddRd_Item then  //1   ���������
    begin
      result:=True;
      if AddRd_List then //2    �������
      begin
        result:=True;
        if AddRd_List2 then //2    ����������
        begin
          result:=True;
          mdlData.conn.CommitTrans;
        end
        else
        begin
          result:=False;
          mdlData.conn.RollbackTrans;
        end
      end
      else
      begin
        result:=False;
        mdlData.conn.RollbackTrans;
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

function TFrm_PlanTaskChange.AddRd_Item: bool;
var
  qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  result:=True;

  If mData_Item.RecordCount<=0 then
  begin
    result:=True;
    Exit;
  end;
  try
    qry.SQL.Text:='Insert into T_ElecJudge(FElecJudgeID,FItemID,FSCM,FPLC ,FDCS,FContPlan,FGround,FLighting,FCable,FBridge,'
                 +'FAddDate,FAddID,FEditDate,FEditID,FDepartMentID) '
                 +'values(:FElecJudgeID,:FItemID,:FSCM,:FPLC,:FDCS,:FContPlan,FGround,FLighting,FCable,FBridge,'
                 +':FAddDate,:FAddID,:FEditDate,:FEditID,:FDepartMentID)';
     mData_Item.First;

     while not mData_Item.eof do
     begin
       If (mData_Item['FItemID']<>Null) and (mData_Item['FItemID']<>0) then
       begin
         If qry.Active then qry.Close;
         with qry.Parameters do
         begin
           If P_state=0 then  //����
           begin
             Act_MaxID_Item.Execute;//ȡID
             FindParam('FElecJudgeID').value:=P_MaxID_Item;
           end;
           If P_state=1 then  //�޸�
              FindParam('FElecJudgeID').value:=mData_Item['FElecJudgeID'];

           FindParam('FItemID').value:=mData_Item['FItemID'];
           FindParam('FSCM').value:=mData_Item['FSCM'];
           FindParam('FPLC').value:=mData_Item['FPLC'];
           FindParam('FDCS').value:=mData_Item['FDCS'];
           FindParam('FContPlan').value:=mData_Item['FContPlan'];
           FindParam('FGround').value:=mData_Item['FGround'];
           FindParam('FLighting').value:=mData_Item['FLighting'];
           FindParam('FCable').value:=mData_Item['FCable'];
           FindParam('FBridge').value:=mData_Item['FBridge'];
           FindParam('FAddDate').value:=now();
           FindParam('FAddID').value:=UserNumID;
           FindParam('FEditDate').value:=now();
           FindParam('FEditID').value:=UserNumID;
           FindParam('FDepartMentID').value:=UserFDepartMentID;
         end;
         result:=qry.ExecSQL>=1;
         if not result then break;
       end;
       mData_Item.Next;
     end;
   finally
     qry.Free;
   end;
end;

function TFrm_PlanTaskChange.AddRd_List: bool;    //3 �����ϸ   ��������
var
  qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  result:=True;

  If mData_List.RecordCount<=0 then
  begin
    result:=True;
    Exit;
  end;
  try
    qry.SQL.Text:='Insert into T_ElecJudgeList(FElecJudgeListID,FElecJudgeID,FElecProductNameID,FElecLoadCapacity,FElecProductQry,'
                 +'FDeviceModel,FCableModel,FElecJudgeListRemark) '
                 +'values(:FElecJudgeListID,:FElecJudgeID,:FElecProductNameID,:FElecLoadCapacity,:FElecProductQry,'
                 +':FDeviceModel,:FCableModel,:FElecJudgeListRemark)';
     mData_List.First;
     while not mData_List.eof do
     begin
       If (mData_List['IsApp']=True) and (mData_List['FElecProductNameID']<>0)  and (mData_List['FElecProductNameID']<>Null)
           and (mData_List['FElecProductName']<>'') and (mData_List['FElecProductName']<>Null) then
       begin
         If qry.Active then qry.Close;
         with qry.Parameters do
         begin
           If P_state=0 then  //����
           begin
             Act_MaxID_List.Execute;//ȡID
             FindParam('FElecJudgeListID').value:=P_MaxID_List;
             FindParam('FElecJudgeID').value:=P_MaxID_Item;
           end;
           If P_state=1 then  //�޸�
           begin
             If (mData_List['IsApp']=True) then
             begin
               Act_MaxID_List.Execute;//ȡID
               FindParam('FElecJudgeListID').value:=P_MaxID_List;
             end;
             FindParam('FElecJudgeID').value:=mData_Item['FElecJudgeID'];
           end;
           FindParam('FElecProductNameID').value:=mData_List['FElecProductNameID'];
           FindParam('FElecLoadCapacity').value:=mData_List['FElecLoadCapacity'];
           FindParam('FElecProductQry').value:=mData_List['FElecProductQry'];
           FindParam('FDeviceModel').value:=mData_List['FDeviceModel'];
           FindParam('FCableModel').value:=mData_List['FCableModel'];
           FindParam('FElecJudgeListRemark').value:=mData_List['FElecJudgeListRemark'];
         end;
         result:=qry.ExecSQL>=1;
         if not result then break;
       end;
       mData_List.Next;
     end;
   finally
     qry.Free;
   end;
end;

function TFrm_PlanTaskChange.AddRd_List2: bool;    //3 �����ϸ   ��������
var
  qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  result:=True;

  If mData_List2.RecordCount<=0 then
  begin
    result:=True;
    Exit;
  end;
  try
    qry.SQL.Text:='Insert into T_ElecJudgeContent(FElecJudgeContentID,FElecJudgeID,FElecJudgeContentNum,FElecJudgeContent,FElecJudgeResult) '
                 +'values(:FElecJudgeContentID,:FElecJudgeID,:FElecJudgeContentNum,:FElecJudgeContent,:FElecJudgeResult)';
     mData_List2.First;
     while not mData_List2.eof do
     begin
       If (mData_List2['IsApp']=True) and (mData_List2['FElecJudgeContent']<>'') and (mData_List2['FElecJudgeContent']<>Null) then
       begin
         If qry.Active then qry.Close;
         with qry.Parameters do
         begin
           If P_state=0 then  //����
           begin
             Act_MaxID_List2.Execute;//ȡID
             FindParam('FElecJudgeContentID').value:=P_MaxID_List2;
             FindParam('FElecJudgeID').value:=P_MaxID_Item;
           end;
           If P_state=1 then  //�޸�
           begin
             Act_MaxID_List2.Execute;//ȡID
             FindParam('FElecJudgeContentID').value:=P_MaxID_List2;
             FindParam('FElecJudgeID').value:=mData_Item['FElecJudgeID'];
           end;
           FindParam('FElecJudgeContentNum').value:=mData_List2['FElecJudgeContentNum'];
           FindParam('FElecJudgeContent').value:=mData_List2['FElecJudgeContent'];
           FindParam('FElecJudgeResult').value:=mData_List2['FElecJudgeResult'];
         end;
         result:=qry.ExecSQL>=1;
         if not result then break;
       end;
       mData_List2.Next;
     end;
   finally
     qry.Free;
   end;
end;


function TFrm_PlanTaskChange.EditRd:bool;   //������������ �޸�
var
  qry:TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  result:=True;

  If mData_Item.RecordCount<=0 then
  begin
    result:=True;
    Exit;
  end;
  mData_Item.Edit;
  mData_Item.Post;
  mdlData.conn.BeginTrans;
  try
    if EditRd_Item then  //2   �����޸� ������������
    begin
      result:=True;
      //if EditRd_List then  //1  �����޸�  ��Ʒ��ϸ
      if DelList  then //1   ɾ��  ��ƶ�̬ �޸�ɾ��
      begin
        result:=True;
        if AddRd_List then  //2   ����  ��ƶ�̬ �޸� ����
        begin
          result:=True;
          if EditList then  //1  �����޸�  ��Ʒ��ϸ
          begin
            if DelList2  then //1   ɾ��  ������ �޸�ɾ��
            begin
              result:=True;
              if AddRd_List2 then  //2   ����  ������ �޸� ����
              begin
                result:=True;
                if EditList2 then  //1  �����޸�  ������
                begin
                  result:=True;
                  mdlData.conn.CommitTrans;
                end
                else
                begin
                  result:=False;
                  mdlData.conn.RollbackTrans;
                end
              end
              else
              begin
                result:=False;
                mdlData.conn.RollbackTrans;
              end
            end
            else
            begin
              result:=False;
              mdlData.conn.RollbackTrans;
            end
          end
          else
          begin
            result:=False;
            mdlData.conn.RollbackTrans;
          end
        end
        else
        begin
          result:=False;
          mdlData.conn.RollbackTrans;
        end
      end
      else
      begin
        result:=False;
        mdlData.conn.RollbackTrans;
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


 {  mdlData.conn.BeginTrans;
  try
    if EditRd_Item then  //2   �����޸� ������������
    begin
      result:=True;
      if EditRd_List then  //1  �����޸�  ��Ʒ��ϸ
      begin
        result:=True;
        mdlData.conn.CommitTrans;
      end
      else
      begin
        result:=False;
        mdlData.conn.RollbackTrans;
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
  }

end;

function TFrm_PlanTaskChange.EditRd_Item: bool;     //3    �����޸� �����ϸ��
var
  qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  result:=True;
  try
    qry.SQL.Text:='update T_ElecJudge Set FItemID=:FItemID,FSCM=:FSCM,FPLC=:FPLC,FDCS=:FDCS,FContPlan=:FContPlan, '
                 +'FGround=:FGround,FLighting=:FLighting,FCable=:FCable,FBridge=:FBridge '
                 +'where FElecJudgeID=:FElecJudgeID ';
    mData_Item.First;
    while not mData_Item.eof do
    begin
      If (mData_Item['FItemID']<>0) and (mData_Item['FItemID']<>Null) then
      begin
        If qry.Active then qry.Close;
        qry.Parameters.FindParam('FItemID').value:=mData_Item['FItemID'];
        qry.Parameters.FindParam('FSCM').value:=mData_Item['FSCM'];
        qry.Parameters.FindParam('FPLC').value:=mData_Item['FPLC'];
        qry.Parameters.FindParam('FDCS').value:=mData_Item['FDCS'];
        qry.Parameters.FindParam('FContPlan').value:=mData_Item['FContPlan'];
        qry.Parameters.FindParam('FGround').value:=mData_Item['FGround'];
        qry.Parameters.FindParam('FLighting').value:=mData_Item['FLighting'];
        qry.Parameters.FindParam('FCable').value:=mData_Item['FCable'];
        qry.Parameters.FindParam('FBridge').value:=mData_Item['FBridge'];
        qry.Parameters.FindParam('FElecJudgeID').value:=mData_Item['FElecJudgeID'];
        result:=qry.ExecSQL>=1;
        if not result then break;
      end;
      mData_Item.Next;
    end;
  finally
     qry.Free;
  end;
end;

function TFrm_PlanTaskChange.EditRd_List: bool;     //3    �޸�  ��Ŀ�����ϸ�޸��޸�
var
  qry:TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  result:=True;
  If mData_List.RecordCount<=0 then
  begin
    result:=True;
    Exit;
  end;
  mData_List.Edit;
  mData_List.Post;

  mdlData.conn.BeginTrans;
  try
    if DelList  then //1   ɾ��  ��ƶ�̬ �޸�ɾ��
    begin
      result:=True;
      if EditList then //3    �޸�  ��ƶ�̬ �޸��޸�
      begin
        result:=True;
        if AddRd_List then  //2   ����  ��ƶ�̬ �޸� ����
        begin
          result:=True;
          mdlData.conn.CommitTrans;
        end
        else
        begin
          result:=False;
          mdlData.conn.RollbackTrans;
        end
     end
     else
      begin
        result:=False;
        mdlData.conn.RollbackTrans;
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

function TFrm_PlanTaskChange.DelList: bool;  //1   ɾ��  �����ϸ �޸�ɾ��
var i:Integer;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  result:=True;

  qry.SQL.Text:='Delete from T_ElecJudgeList where FElecJudgeListID=:FElecJudgeListID';
  for i:=Low(DelArray_List) to High(DelArray_List) do
  begin
    if DelArray_List[i]<>'' then
    begin
      if qry.Active then qry.Close;
      try
        qry.Parameters.FindParam('FElecJudgeListID').Value:=StrToInt(DelArray_List[i]);
        qry.ExecSQL;
        result:=True;
        //result:=qry.ExecSQL=1;
        If not result then break;
      finally
        ;
      end;
    end;
  end;
  qry.Free;
end;

function TFrm_PlanTaskChange.EditList: bool;     //3    �޸�  �����ϸ�޸��޸�
var qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  result:=True;
  try
    qry.SQL.Text:='update T_ElecJudgeList Set FElecJudgeID=:FElecJudgeID,'
                 +'FElecProductNameID=:FElecProductNameID,FElecLoadCapacity=:FElecLoadCapacity,'
                 +'FElecProductQry=:FElecProductQry,FDeviceModel=:FDeviceModel,FCableModel=:FCableModel,'
                 +'FElecJudgeListRemark=:FElecJudgeListRemark '
                 +'where FElecJudgeListID=:FElecJudgeListID ';
    mData_List.First;
    while not mData_List.eof do
    begin
      If (mData_List['IsEdit']=True) and (mData_List['IsApp']=False)
         and (mData_List['FElecProductNameID']<>0) and (mData_List['FElecProductNameID']<>Null) then
      begin
        If qry.Active then qry.Close;
        qry.Parameters.FindParam('FElecJudgeID').value:=mData_List['FElecJudgeID'];
        qry.Parameters.FindParam('FElecProductNameID').value:=mData_List['FElecProductNameID'];
        qry.Parameters.FindParam('FElecLoadCapacity').value:=mData_List['FElecLoadCapacity'];
        qry.Parameters.FindParam('FElecProductQry').value:=mData_List['FElecProductQry'];
        qry.Parameters.FindParam('FDeviceModel').value:=mData_List['FDeviceModel'];
        qry.Parameters.FindParam('FCableModel').value:=mData_List['FCableModel'];
        qry.Parameters.FindParam('FElecJudgeListRemark').value:=mData_List['FElecJudgeListRemark'];
      //  If mData_List['IsApp']=True  then
      //     qry.Parameters.FindParam('FElecJudgeListID').value:=P_MaxID_List
      //  else
        qry.Parameters.FindParam('FElecJudgeListID').value:=mData_List['FElecJudgeListID'];
        result:=qry.ExecSQL>=1;
        if not result then break;
      end;
      mData_List.Next;
    end;
  finally
     qry.Free;
  end;
end;

function TFrm_PlanTaskChange.EditRd_List2: bool;     //3    �޸�  ������ �޸�
var
  qry:TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  result:=True;
  If mData_List2.RecordCount<=0 then
  begin
    result:=True;
    Exit;
  end;
  mData_List2.Edit;
  mData_List2.Post;

  mdlData.conn.BeginTrans;
  try
    if DelList2  then //1   ɾ��  ������ �޸�ɾ��
    begin
      result:=True;
      if EditList2 then //3    �޸�  ������ �޸��޸�
      begin
        result:=True;
        if AddRd_List2 then  //2   ����  ������ �޸� ����
        begin
          result:=True;
          mdlData.conn.CommitTrans;
        end
        else
        begin
          result:=False;
          mdlData.conn.RollbackTrans;
        end
     end
     else
      begin
        result:=False;
        mdlData.conn.RollbackTrans;
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


function TFrm_PlanTaskChange.DelList2: bool;  //1   ɾ��  �����ϸ �޸�ɾ��
var i:Integer;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  result:=True;
  try
    qry.SQL.Text:='Delete from T_ElecJudgeContent where FElecJudgeID=:FElecJudgeID';
     qry.Parameters.FindParam('FElecJudgeID').Value:=Mdata_Item['FElecJudgeID'];
     qry.ExecSQL;
  finally
    ;
  end;
  qry.Free;
end;

function TFrm_PlanTaskChange.EditList2: bool;     //3    �޸�  ��ƶ�̬�޸��޸�
var qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  result:=True;
  try
    qry.SQL.Text:='update T_ElecJudgeContent Set FElecJudgeID=:FElecJudgeID,FElecJudgeContentNum=:FElecJudgeContentNum,'
                 +'FElecJudgeContent=:FElecJudgeContent,FElecJudgeResult=:FElecJudgeResult '
                 +'where FElecJudgeContentID=:FElecJudgeContentID ';
    mData_List2.First;
    while not mData_List2.eof do
    begin
      If (mData_List2['IsEdit']=True) and (mData_List2['IsApp']=False)
         and (mData_List2['FElecJudgeContent']<>'') and (mData_List2['FElecJudgeContent']<>Null) then
      begin
        If qry.Active then qry.Close;
        qry.Parameters.FindParam('FElecJudgeID').value:=mData_List2['FElecJudgeID'];
        qry.Parameters.FindParam('FElecJudgeContentNum').value:=mData_List2['FElecJudgeContentNum'];
        qry.Parameters.FindParam('FElecJudgeContent').value:=mData_List2['FElecJudgeContent'];
        qry.Parameters.FindParam('FElecJudgeResult').value:=mData_List2['FElecJudgeResult'];
        qry.Parameters.FindParam('FElecJudgeContentID').value:=mData_List2['FElecJudgeContentID'];
        result:=qry.ExecSQL>=1;
        if not result then break;
      end;
      mData_List2.Next;
    end;
  finally
     qry.Free;
  end;
end;

function TFrm_PlanTaskChange.EditRd_ECL: bool;     //3    �޸�  ���ƶ����޸�
var
  qry:TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  result:=True;
  mData_List_ECL.Edit;
  mData_List_ECL.Post;
  If mData_List_ECL.RecordCount=0 then
  begin
    result:=True;
    Exit;
  end;

  mdlData.conn.BeginTrans;
  try
    if DelList_ECL  then //1   ɾ��  ���ƶ��� �޸�ɾ��
    begin
      result:=True;
      if AddList_ECL then  //2   ����  ���ƶ��� �޸� ����
      begin
        result:=True;
        if EditList_ECL then //3    �޸�  ���ƶ��� �޸��޸�
        begin
          result:=True;
          mdlData.conn.CommitTrans;
        end
        else
        begin
          result:=False;
          mdlData.conn.RollbackTrans;
        end
     end
     else
      begin
        result:=False;
        mdlData.conn.RollbackTrans;
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

function TFrm_PlanTaskChange.DelList_ECL: bool;  //1   ɾ��  �����ϸ �޸�ɾ��
var i:Integer;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  result:=True;

  qry.SQL.Text:='Delete from T_ElecContList where FElecContListID=:FElecContListID';
  for i:=Low(DelArray_List_ECL) to High(DelArray_List_ECL) do
  begin
    if DelArray_List_ECL[i]<>'' then
    begin
      if qry.Active then qry.Close;
      try
        qry.Parameters.FindParam('FElecContListID').Value:=StrToInt(DelArray_List_ECL[i]);
        qry.ExecSQL;
        result:=True;
        //result:=qry.ExecSQL=1;
        If not result then break;
      finally
        ;
      end;
    end;
  end;
  qry.Free;
end;
function TFrm_PlanTaskChange.AddList_ECL: bool;    //3 �����ϸ   ��������
var
  qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  result:=True;

  If mData_List_ECL.RecordCount<=0 then
  begin
    result:=True;
    Exit;
  end;
  try
    qry.SQL.Text:='Insert into T_ElecContList(FElecContListID,FElecJudgeListID,FElecContID,FLoadCapacity,FContdQry) '
                 +'values(:FElecContListID,:FElecJudgeListID,:FElecContID,:FLoadCapacity,:FContdQry)';
     mData_List_ECL.First;
     while not mData_List_ECL.eof do
     begin
       If (mData_List_ECL['IsApp']=True) and (mData_List_ECL['FElecContID']<>0) and (mData_List_ECL['FElecContID']<>Null) then
       begin
         If qry.Active then qry.Close;
         with qry.Parameters do
         begin
           Act_MaxID_List_ECL.Execute;//ȡID
           FindParam('FElecContListID').value:=P_MaxID_List_ECL;
           FindParam('FElecJudgeListID').value:=mData_List['FElecJudgeListID'];//����ID
           FindParam('FElecContID').value:=mData_List_ECL['FElecContID'];
           FindParam('FLoadCapacity').value:=mData_List_ECL['FLoadCapacity'];
           FindParam('FContdQry').value:=mData_List_ECL['FContdQry'];
         end;
         result:=qry.ExecSQL>=1;
         if not result then break;
       end;
       mData_List_ECL.Next;
     end;
   finally
     qry.Free;
   end;
end;

function TFrm_PlanTaskChange.EditList_ECL: bool;     //3    �޸�  ��ƶ�̬�޸��޸�
var qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  result:=True;
  try
    qry.SQL.Text:='update T_ElecContList Set FElecJudgeListID=:FElecJudgeListID,FElecContID=:FElecContID,'
                 +'FLoadCapacity=:FLoadCapacity,FContdQry=:FContdQry '
                 +'where FElecContListID=:FElecContListID ';
    mData_List_ECL.First;
    while not mData_List_ECL.eof do
    begin
      If (mData_List_ECL['IsEdit']=True) and (mData_List_ECL['IsApp']=False)
         and (mData_List_ECL['FElecContID']<>0) and (mData_List_ECL['FElecContID']<>Null) then
      begin
        If qry.Active then qry.Close;
        qry.Parameters.FindParam('FElecJudgeListID').value:=mData_List_ECL['FElecJudgeListID'];
        qry.Parameters.FindParam('FElecContID').value:=mData_List_ECL['FElecContID'];
        qry.Parameters.FindParam('FLoadCapacity').value:=mData_List_ECL['FLoadCapacity'];
        qry.Parameters.FindParam('FContdQry').value:=mData_List_ECL['FContdQry'];
        qry.Parameters.FindParam('FElecContListID').value:=mData_List_ECL['FElecContListID'];
        result:=qry.ExecSQL>=1;
        if not result then break;
      end;
      mData_List_ECL.Next;
    end;
  finally
     qry.Free;
  end;
end;


procedure TFrm_PlanTaskChange.FormResize(Sender: TObject);
begin
  inherited;
  L_title.Caption:=UserFDepartmentName+'�����ƻ��䶯�����';
  Self.Caption:=UserFDepartmentName+'���ƻ��䶯�����';
end;

procedure TFrm_PlanTaskChange.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=cafree;
  Frm_PlanTaskChange:=nil;
end;

procedure TFrm_PlanTaskChange.TB_EXITClick(Sender: TObject);
begin
  inherited;
  self.Close;
end;

procedure TFrm_PlanTaskChange.MyTreeViewChange(Sender: TObject; Node: TTreeNode);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  If Node = nil then Exit;
  with PTree(Node.Data)^ do
  begin
    ListItemFNumber:=PTree(Node.Data).FNumber;
    P_th:=PTree(Node.Data).Caption;
    P_Isleaf:=PTree(Node.Data).Isleaf;
    If TS_Tree.ActivePage=Tree_Item then
    begin
      If not MyItemList(qry,Mdata_Item,'V_ElecJudge','FNumber',ListItemFNumber,'FNumber') then
      begin
        Mdata_Item.Open;
        //cxGvColumn(cxGv,Mdata_Item);
      end;
    end;
   { If TS_Tree.ActivePage=Tree_Handler then
    begin
      If not MyItemList(qry,Mdata,'V_Item','FNumber_Handler',ListItemFNumber,'FNumber_Handler') then
      begin
        mdata.Open;
        cxGvColumn(cxGv,Mdata);
      end;
    end; }
  end;
end;

procedure TFrm_PlanTaskChange.MyTreeViewExpanding(Sender: TObject;
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

  If TS_Tree.ActivePage=Tree_Item then
     qry.SQL.Text:='Select * from VT_ElecJudge with(nolock) where FParentNumber= '''
                  +PTree(Node.Data).ID+''' order by FNumber';
 { If TS_Tree.ActivePage=Tree_Handler then
     qry.SQL.Text:='Select * from VT_Item_Handler with(nolock) where FParentNumber= '''
                  +PTree(Node.Data).ID+''' order by FNumber';
    }
  qry.open;

  PTree(Node.Data).Flag := cLoadFlag;                  // �����Ѽ��ر�־
  while not qry.Eof do
  begin
    New(P);
    P.ID := qry.FieldByName('FNumber').AsString;
    P.ParentID := qry.FieldByName('FParentNumber').AsString;
    P.FNumber:=qry.FieldByName('FNumber').AsString;
    P.Caption := qry.FieldByName('FName').AsString;
    P.Isleaf := qry.FieldByName('Isleaf').Value;
    P.FDetail := qry.FieldByName('FDetail').Value;
    P.Flag := cNoLoadFlag;                            // �½ڵ㣬δ���ر�־
    with MyTreeView.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('FDetail').value;
    end;
    qry.Next;
  end;

end;

procedure TFrm_PlanTaskChange.TB_RefClick(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If TS_Tree.ActivePage=Tree_Item then
  begin
    If not TreeVeiwListWhere(qry,MyTreeView,'VT_ElecJudge',' and FDepartmentID='+IntToStr(UserFDepartmentID) ) then
       Application.MessageBox(PChar('���ͽṹ��ʾ��������ϵ������Ա'), '����', MB_OK +MB_ICONSTOP);
  end;
{  If TS_Tree.ActivePage=Tree_Handler then
  begin
    If not TreeVeiwListWhere(qry,MyTreeView,'VT_Item_Handler',' and FDepartmentID='+IntToStr(UserFDepartmentID) ) then
       Application.MessageBox(PChar('���ͽṹ��ʾ��������ϵ������Ա'), '����', MB_OK +MB_ICONSTOP);
  end; }
end;

procedure TFrm_PlanTaskChange.OKBtnClick(Sender: TObject);
var qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  mData_List.Edit;
  mData_List.Post;
  mData_List.First;
  while not mData_List.eof do
  begin
    If (mData_List['FElecProductNameID']=0) or (mData_List['FElecProductNameID']=Null) then
    begin
      mData_List.Edit;
      mData_List.Delete;
    end;
    mData_List.Next;
  end;

  If P_state=0 then
  begin
    If application.MessageBox('�Ƿ�Ҫ������ӵ����ݣ�','��ʾ',MB_ICONINFORMATION+MB_YESNO)<>6 then
       Exit;
    If AddRd then //��������
    begin
      If application.MessageBox('¼�������ѱ���,��Ҫ����¼����','��ʾ',MB_ICONINFORMATION+MB_YESNO)=6 then
      begin
        TB_App.Click ;
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



procedure TFrm_PlanTaskChange.TB_EditClick(Sender: TObject);
var
 qry: TADOQuery;
 i:Integer;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  I_index:=mdata_Item.RecNo ;
  P_state:=1;
  Act_Set_Open.Execute;
  
  try
    qry.SQL.Text:='Select IsEdit=cast(0 as bit),IsApp=cast(0 as bit),* from V_ElecJudge where FElecJudgeID=:FElecJudgeID';
    qry.Parameters.FindParam('FElecJudgeID').value:=mdata_Item['FElecJudgeID'];
    qry.Open;
  finally
    ;
  end;
  mdata_Item.CopyFromDataSet(qry);
  mdata_Item.Active:=True;

  //If mdata_List.RecordCount=0 then
  begin
    try
      qry.SQL.Text:='Select IsEdit=cast(0 as bit),IsApp=cast(0 as bit),* from V_ElecJudgeList where FElecJudgeID=:FElecJudgeID';
      qry.Parameters.FindParam('FElecJudgeID').value:=mdata_Item['FElecJudgeID'];
      qry.Open;
    finally
      ;
    end;
    mdata_List.CopyFromDataSet(qry);
    mdata_List.Active:=True;
    mdata_List.First;
    for i:=1 to 5 do
    begin
      mdata_List.Edit;
      mdata_List.Append;
      mdata_List['FElecProductName']:='';
      mdata_List.Post;
    end;
    mdata_List.First;
  end;

  //If mdata_List2.RecordCount=0 then
  begin
    try
      qry.SQL.Text:='Select IsEdit=cast(0 as bit),IsApp=cast(1 as bit),* from T_ElecJudgeContent where FElecJudgeID=:FElecJudgeID';
      qry.Parameters.FindParam('FElecJudgeID').value:=mdata_Item['FElecJudgeID'];
      qry.Open;
    finally
      ;
    end;
    mdata_List2.CopyFromDataSet(qry);
    mdata_List2.Active:=True;
    mdata_List2.First;
    for i:=1 to 5 do
    begin
      mdata_List2.Edit;
      mdata_List2.Append;
      mdata_List2['FElecJudgeContent']:='';
      mdata_List2.Post;
    end;
    mdata_List2.First;
  end;
  MData_List_ECL.Close;


  qry.Free;
  L_title.Caption:=UserFDepartmentName+'�������������޸�';

end;

procedure TFrm_PlanTaskChange.CancelBtnClick(Sender: TObject);
var
  qry:TADOQuery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
 //�޸ĺ󷵻�ԭ�ȼ�¼��

  try
    qry.SQL.Text:='Select IsEdit=cast(0 as bit),IsApp=cast(0 as bit),* from V_ElecJudge where FNumber like :FNumber';
    qry.Parameters.FindParam('FNumber').value:=ListItemFNumber+'%';
    qry.Open;
  finally
    ;
  end;
  mdata_Item.CopyFromDataSet(qry);
  mdata_Item.Active:=True;


  If (I_index<mdata_Item.RecordCount) and (I_index<>-1) then
     mdata_Item.RecNo :=I_index
  else
     mdata_Item.Last;

  //�����ϸ
  try
    qry.SQL.Text:='Select IsEdit=cast(0 as bit),IsApp=cast(0 as bit),* from V_ElecJudgeList with(nolock) '
                 +'where FElecJudgeID=:FElecJudgeID';
    qry.Parameters.FindParam('FElecJudgeID').Value:=mdata_Item['FElecJudgeID'];
    qry.Open;
  finally
     ;
  end;
  mdata_List.CopyFromDataSet(qry);
  mdata_List.Active:=True;
  mdata_List.First;


  MData_List_ECL.Active:=True;
  L_title.Caption:=UserFDepartmentName+'������������';
  Act_Set_Close.Execute;
  P_state :=2;

end;

procedure TFrm_PlanTaskChange.FormCreate(Sender: TObject);
begin
  inherited;
  P_state:=2;
  TB_Prin.Visible:= mdlData.PermissionCheckRights(TFrm_PlanTaskChange.ClassName,'��ӡ');
  N_Out.Visible:= mdlData.PermissionCheckRights(TFrm_PlanTaskChange.ClassName,'����');
end;

procedure TFrm_PlanTaskChange.FormShow(Sender: TObject);
begin
  inherited;
  TB_Ref.Click;
end;

procedure TFrm_PlanTaskChange.cxGridContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV';
  Gm:='mdata';
  Gr:='cxGrid';
  Act_Menu_Set.Execute;
end;

procedure TFrm_PlanTaskChange.Act_Menu_SetExecute(Sender: TObject);
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

procedure TFrm_PlanTaskChange.Act_MenuExecute(Sender: TObject);
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

procedure TFrm_PlanTaskChange.N_EditClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_PlanTaskChange.N_FilterClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_PlanTaskChange.N_SortClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_PlanTaskChange.N_GroupClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_PlanTaskChange.N_SetClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;
end;

procedure TFrm_PlanTaskChange.N_OutClick(Sender: TObject);
begin
  inherited;
  Mn:=TMenuItem(Sender).Name;
  Act_Menu.Execute;
end;

procedure TFrm_PlanTaskChange.Act_Set_OpenExecute(Sender: TObject);
begin
  inherited;
  TB_App.Visible:=False;
  TB_Ref.Visible:=False;
  TB_Edit.Visible:=False;
  MyTreeView.Enabled:=False;
  TB_Edit_ECL.Visible:=False;
  TB_Del_ECL.Visible:=False;

  Panel_button.Visible:=True;
  OKBtn.Visible:=True;
  CancelBtn.Visible:=True;

  cxGV.OptionsData.Editing:=True;
  cxGVC.OptionsData.Editing:=True;
  FItemNum_Card.Options.Editing:=True;
  FSCM_Card.Options.Editing:=True;
  FPLC_Card.Options.Editing:=True;
  FDCS_Card.Options.Editing:=True;
  FContPlan_Card.Options.Editing:=True;
  FGround_Card.Options.Editing:=True;
  FLighting_Card.Options.Editing:=True;
  FCable_Card.Options.Editing:=True;
  FBridge_Card.Options.Editing:=True;

  cxGV_Item.OptionsData.Editing:=True;
  FItemNum_Item.Options.Editing:=True;
  FSCM_Item.Options.Editing:=True;
  FPLC_Item.Options.Editing:=True;
  FDCS_Item.Options.Editing:=True;
  FContPlan_Item.Options.Editing:=True;

  cxGV_List.OptionsData.Editing:=True;
  FElecProductName.Options.Editing:=True;
  FElecLoadCapacity.Options.Editing:=True;
  FElecProductQry.Options.Editing:=True;
  FDeviceModel.Options.Editing:=True;
  FCableModel.Options.Editing:=True;
  FElecJudgeListRemark.Options.Editing:=True;

  cxGV_List2.OptionsData.Editing:=True;
  FElecJudgeContent.Options.Editing:=True;
  FElecJudgeResult.Options.Editing:=True;

  cxGV_List_ECL.OptionsData.Editing:=True;
  FElecCont.Options.Editing:=True;
  FLoadCapacity.Options.Editing:=True;
  FContdQry.Options.Editing:=True;

  TS_Tree.ActivePage:=Tree_Edit;
  SP_Item.Visible:=False;
  RP_ECL.Visible:=False;
end;

procedure TFrm_PlanTaskChange.Act_Set_CloseExecute(Sender: TObject);
begin
  inherited;
  TB_Ref.Visible:=True;
  TB_Edit.Visible:=True;
  MyTreeView.Enabled:=True;
  TB_Edit_ECL.Visible:=True;
  TB_Del_ECL.Visible:=True;

  Panel_button.Visible:=False;
  OKBtn.Visible:=False;
  CancelBtn.Visible:=False;
  cxGV_Item.OptionsData.Editing:=False;
  cxGVC.OptionsData.Editing:=False;
  cxGV_List.OptionsData.Editing:=False;
  cxGV_List2.OptionsData.Editing:=False;
  cxGV_List_ECL.OptionsData.Editing:=False;


  TS_Tree.ActivePage:=Tree_Item;
  SP_Item.Visible:=True;
//  RP_ECL.Visible:=True;

end;

procedure TFrm_PlanTaskChange.E_LocatePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
 qry: TADOQuery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Select * from V_Item with(nolock) where FItemNum like :Locate1 or '
                 +'FItemOwner like :Locate2 or FItemName like :Locate3 '
                 +'or FProductNature like :Locate4 or FProjectNature like :Locate4 '
                 +'or FItemHandler like :Locate5 or FItemNature like :Locate6 ';
    qry.Parameters.FindParam('Locate1').Value:='%'+Trim(E_Locate.Text)+'%';
    qry.Parameters.FindParam('Locate2').Value:='%'+Trim(E_Locate.Text)+'%';
    qry.Parameters.FindParam('Locate3').Value:='%'+Trim(E_Locate.Text)+'%';
    qry.Parameters.FindParam('Locate4').Value:='%'+Trim(E_Locate.Text)+'%';
    qry.Parameters.FindParam('Locate5').Value:='%'+Trim(E_Locate.Text)+'%';
    qry.Parameters.FindParam('Locate6').Value:='%'+Trim(E_Locate.Text)+'%';
    qry.Open;
  finally
     ;
  end;
  mdata.CopyFromDataSet(qry);
  mdata.Active:=True;

end;

procedure TFrm_PlanTaskChange.Act_MaxID_ItemExecute(Sender: TObject);
var
  proc:TADOStoredProc;
begin
  proc:=TADOStoredProc.Create(self);
  proc.ConnectionString:=mdlData.ReadConnStr;
  proc.CommandTimeout:=500;
  try
    proc.ProcedureName:='P_GetMaxID;1';
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=20;
      name := '@TableName';
      value:='T_ElecJudgeList';
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftInteger;
      Direction := pdoutput;
      size:=255;
      name := '@FInterID';
      value:=0;
    end;
    proc.ExecProc;
    P_MaxID_Item:=proc.Parameters.FindParam('@FInterID').Value;
    proc.Free;
  finally
     ;
  end;
end;

procedure TFrm_PlanTaskChange.Act_SkillDesignDetailsExecute(Sender: TObject);
var
  qry: TADOQuery;
begin
{  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  try
    qry.SQL.Text:='select  isnull(b.FDesignDetailsID,a.FID) as FDesignDetailsID,a.FName as FDesignDetails,b.FDesignFinishDate,b.FDesignDirector '
                 +'from T_BaseData as a full outer join (select * from T_SkillDesignDetails where FItemID=:FItemID) as b '
                 +'on a.FID=b.FDesignDetailsID where a.FDetail=True '
                 +'and  FParentID =(select FID  from T_BaseData where FName=''�����Ҫ����'' and FDepartmentID =:FDepartmentID)';
    qry.Parameters.FindParam('FItemID').Value:=mdata['FItemID'];
    qry.Parameters.FindParam('FDepartmentID').Value:=UserFDepartmentID;
    qry.Open;
  finally
     ;
  end;
  MData_SD.CopyFromDataSet(qry);
  MData_SD.Active; }

end;

procedure TFrm_PlanTaskChange.Act_SkillProductDetailsExecute(Sender: TObject);
var
  qry: TADOQuery;
  i:Integer;
begin
{  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If Mdata_SP.RecordCount>0 then
  begin
    try
      qry.SQL.Text:='select * from T_SkillProductDetails where FItemID=:FItemID';
      qry.Parameters.FindParam('FItemID').Value:=mdata['FItemID'];
      qry.Open;
    finally
       ;
    end;
    MData_SP.CopyFromDataSet(qry);
    MData_SP.Active;
  end
  else
  begin
    try
      qry.SQL.Text:='select * from T_SkillProductDetails where FItemID=0';
      qry.Open;
    finally
       ;
    end;
    MData_SP.CopyFromDataSet(qry);
    MData_SP.Active;
  end;

  MData_SP.Edit;
  MData_SP.First;
  for i:=1 to 10 do
  begin
    MData_SP.Append;
    MData_SP.Post;
  end;
  MData_SP.First;
  }
end;

procedure TFrm_PlanTaskChange.FSkillProductClassPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  MData_List.Edit;
  try
    qry.SQL.Text:='Select FID,FParentID,FNumber,FParentNumber,FName,FRemark,FClassID,FDetail,IsLeaf '
                  +'from  V_BaseData with(nolock) where FParentID='
                  +'(Select FID from T_BaseData with(nolock) where FName=''��Ʋ�Ʒ���'' and FDepartmentID=:FDepartmentID1) '
                  +'or FID= (Select FID from T_BaseData with(nolock) where FName=''��Ʋ�Ʒ���'' and FDepartmentID=:FDepartmentID2) '
                  +'order by FNumber ';
    qry.Parameters.FindParam('FDepartmentID1').value:=UserFDepartmentID;
    qry.Parameters.FindParam('FDepartmentID2').value:=UserFDepartmentID;
    qry.Open;
  finally
    ;
  end;

  selValue:=select('ѡ����Ʋ�Ʒ���','FNumber','FParentNumber','FNumber','FName',qry);
  If (Length(selValue)>0) and (qry.FieldByName('FDetail').Value=True)  then
  begin
     MData_List['FElecProductNameID']:=qry.FieldByName('FID').Value;
     MData_List['FElecProductName']:=qry.FieldByName('FName').Value;
  end
  else
    application.MessageBox('��ѡ����ϸ��Ŀ��','ϵͳ��ʾ',MB_ICONINFORMATION);


end;

procedure TFrm_PlanTaskChange.Act_Set_Open_DesignExecute(Sender: TObject);
var AFirstColumnStyle: TcxStyle;
begin
  inherited;
end;

procedure TFrm_PlanTaskChange.Act_MaxID_ListExecute(Sender: TObject);
var
  proc:TADOStoredProc;
begin
  proc:=TADOStoredProc.Create(self);
  proc.ConnectionString:=mdlData.ReadConnStr;
  proc.CommandTimeout:=500;
  try
    proc.ProcedureName:='P_GetMaxID;1';
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=20;
      name := '@TableName';
      value:='T_ElecJudge';
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftInteger;
      Direction := pdoutput;
      size:=255;
      name := '@FInterID';
      value:=0;
    end;
    proc.ExecProc;
    P_MaxID_List:=proc.Parameters.FindParam('@FInterID').Value;
    proc.Free;
  finally
     ;
  end;
end;

procedure TFrm_PlanTaskChange.MData_List2AfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet['IsApp']:=True;
end;

procedure TFrm_PlanTaskChange.MData_List2AfterEdit(DataSet: TDataSet);
begin
  inherited;
  DataSet['IsEdit']:=True;
end;

procedure TFrm_PlanTaskChange.MData_List2BeforeDelete(DataSet: TDataSet);
var
 arrLen:Integer;
begin
  If (MData_List2['FElecJudgeContentID']<>0) and (MData_List2['FElecJudgeContentID']<>Null) then
  begin
    If not varisnull(MData_List2['FElecJudgeContentID']) then
    begin
      arrLen:=Length(DelArray_List2)+1;
      setLength(DelArray_List2,arrLen);
      DelArray_List2[High(DelArray_List2)]:=MData_List2['FElecJudgeContentID'];
    end;
 end;
end;

procedure TFrm_PlanTaskChange.TS_TreeChange(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If TS_Tree.ActivePage=Tree_Item then
  begin
    If not TreeVeiwListWhere(qry,MyTreeView,'VT_Item',' and FDepartmentID='+IntToStr(UserFDepartmentID) ) then
       Application.MessageBox(PChar('���ͽṹ��ʾ��������ϵ������Ա'), '����', MB_OK +MB_ICONSTOP);
  end;
  If TS_Tree.ActivePage=Tree_Handler then
  begin
    If not TreeVeiwListWhere(qry,MyTreeView,'VT_Item_Handler',' and FDepartmentID='+IntToStr(UserFDepartmentID) ) then
       Application.MessageBox(PChar('���ͽṹ��ʾ��������ϵ������Ա'), '����', MB_OK +MB_ICONSTOP);
  end;

end;

procedure TFrm_PlanTaskChange.cxGrid_ItemContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV_Design';
  Gm:='mdata_Design';
  Gr:='cxGrid_Design';
  Act_Menu_Set.Execute;

end;

procedure TFrm_PlanTaskChange.cxGrid_ListContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV_DP';
  Gm:='mdata_DP';
  Gr:='cxGrid_DP';
  Act_Menu_Set.Execute;

end;

procedure TFrm_PlanTaskChange.cxGrid_List_ECLContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV_DD';
  Gm:='mdata_DD';
  Gr:='cxGrid_DD';
  Act_Menu_Set.Execute;

end;

procedure TFrm_PlanTaskChange.TB_AppClick(Sender: TObject);
var
  qry: TADOQuery;
  i:Integer;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  P_state:=0;
  try
    qry.SQL.Text:='Select IsEdit=cast(0 as bit),IsApp=cast(1 as bit),* from V_ElecJudge where FElecJudgeID=0';
    qry.Open;
  finally
    ;
  end;
  mdata_Item.CopyFromDataSet(qry);
  mdata_Item.Active:=True;
  mdata_Item.Edit;
  mdata_Item.Append;
  mdata_Item.Post;
  try
    qry.SQL.Text:='Select IsEdit=cast(0 as bit),IsApp=cast(1 as bit),* from V_ElecJudgeList where FElecJudgeID=0';
    qry.Open;
  finally
    ;
  end;
  mdata_List.CopyFromDataSet(qry);
  mdata_List.Active:=True;

  mdata_List.First;
  for i:=1 to 10 do
  begin
    mdata_List.Edit;
    mdata_List.Append;
    mdata_List['FElecProductName']:='';
    mdata_List.Post;
  end;
  mdata_List.First;

  try
    qry.SQL.Text:='Select IsEdit=cast(0 as bit),IsApp=cast(1 as bit),* from T_ElecJudgeContent where FElecJudgeContentID=0';
    qry.Open;
  finally
    ;
  end;
  mdata_List2.CopyFromDataSet(qry);
  mdata_List2.Active:=True;

  mdata_List2.First;
  for i:=1 to 10 do
  begin
    mdata_List2.Edit;
    mdata_List2.Append;
    mdata_List2['FElecJudgeContent']:='';
    mdata_List2.Post;
  end;
  mdata_List2.First;

  qry.Free;

  L_title.Caption:=UserFDepartmentName+'����������������';
  Act_Set_Open.Execute;

end;

procedure TFrm_PlanTaskChange.MData_ListAfterEdit(DataSet: TDataSet);
begin
  inherited;
  DataSet['IsEdit']:=True;
end;

procedure TFrm_PlanTaskChange.MData_ListBeforeDelete(DataSet: TDataSet);
var
 arrLen:Integer;
begin
  If (MData_List['FElecJudgeListID']<>0) and (MData_List['FElecJudgeListID']<>Null) then
  begin
    If not varisnull(MData_List['FElecJudgeListID']) then
    begin
      arrLen:=Length(DelArray_List)+1;
      setLength(DelArray_List,arrLen);
      DelArray_List[High(DelArray_List)]:=MData_List['FElecJudgeListID'];
    end;
  end;
end;

procedure TFrm_PlanTaskChange.MData_List_ECLAfterEdit(DataSet: TDataSet);
begin
  inherited;
  DataSet['IsEdit']:=True;
end;

procedure TFrm_PlanTaskChange.MData_List_ECLBeforeDelete(DataSet: TDataSet);
var
 arrLen:Integer;
begin
  If not varisnull(MData_List_ECl['FElecContListID']) then
  begin
    arrLen:=Length(DelArray_List_ECL)+1;
    setLength(DelArray_List_ECL,arrLen);
    DelArray_List_ECL[High(DelArray_List_ECL)]:=MData_List_ECl['FElecContListID'];
  end;
end;

procedure TFrm_PlanTaskChange.MData_ListAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet['IsApp']:=True;
end;

procedure TFrm_PlanTaskChange.MData_List_ECLAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet['IsApp']:=True;
end;

procedure TFrm_PlanTaskChange.FElecProductNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  MData_List.Edit;
  try
    qry.SQL.Text:='Select FID,FParentID,FNumber,FParentNumber,FName,FRemark,FClassID,FDetail,IsLeaf '
                  +'from  V_BaseData with(nolock) where FNumber like '
                  +'(Select FNumber+''%'' from T_BaseData with(nolock) where FName=''��Ʋ�Ʒ����'' and FDepartmentID=:FDepartmentID) '
                  +'order by FNumber ';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Open;
  finally
    ;
  end;

  selValue:=select('ѡ����Ʋ�Ʒ����','FNumber','FParentNumber','FNumber','FName',qry);
  If (Length(selValue)>0) and (qry.FieldByName('FDetail').Value=True)  then
  begin
     MData_List['FElecProductNameID']:=qry.FieldByName('FID').Value;
     MData_List['FElecProductName']:=qry.FieldByName('FName').Value;
  end
  else
     application.MessageBox('��ѡ����ϸ��Ŀ��','ϵͳ��ʾ',MB_ICONINFORMATION);



end;

procedure TFrm_PlanTaskChange.FItemNum_ItemPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  MData_Item.Edit;
  try
    qry.SQL.Text:='Select * from VT_Item with(nolock) where FDepartmentID=:FDepartmentID order by FNumber ';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Open;
  finally
    ;
  end;

  selValue:=select('ѡ����Ŀ����','FNumber','FParentNumber','FNumber','FName',qry);
  If (Length(selValue)>0) and (qry.FieldByName('FDetail').Value=True)  then
  begin
     MData_Item['FItemID']:=qry.FieldByName('FItemID').Value;
     MData_Item.Post;
  end
  else
     application.MessageBox('��ѡ����ϸ��Ŀ��','ϵͳ��ʾ',MB_ICONINFORMATION);

  try
    qry.SQL.Text:='Select * from V_Item with(nolock) where FItemID=:FItemID ';
    qry.Parameters.FindParam('FItemID').value:=MData_Item['FItemID'];
    qry.Open;
  finally
    ;
  end;
  MData_Item.Edit;
  MData_Item['FItemNum']:=qry.FieldByName('FItemNum').Value;
  MData_Item['FItemName']:=qry.FieldByName('FItemName').Value;
  MData_Item.Post;

end;

procedure TFrm_PlanTaskChange.cxGV_ItemFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
var qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If  P_state=2 then   //���������޸�״̬
  begin
    If (mData_Item['FElecJudgeID']<>0) and (mData_Item['FElecJudgeID']<>Null) then
    begin
      If MyItemListID(qry,Mdata_List,'V_ElecJudgeList',' FElecJudgeID='+IntToStr(mData_Item['FElecJudgeID']),'',) then
    end;
    {If (mData_Item['FElecJudgeID']<>0) and (mData_Item['FElecJudgeID']<>Null) then
    begin
      If MyItemListID(qry,Mdata_List2,'T_ElecJudgeContent',' FElecJudgeID='+IntToStr(mData_Item['FElecJudgeID']),'',) then
    end;}
    If PC_List.ActivePage=TS_Cont then
       Act_ElecContList_Sum.Execute;  //���ƶ������
  end;


end;

procedure TFrm_PlanTaskChange.Act_MaxID_List2Execute(Sender: TObject);
var
  proc:TADOStoredProc;
begin
  proc:=TADOStoredProc.Create(self);
  proc.ConnectionString:=mdlData.ReadConnStr;
  proc.CommandTimeout:=500;
  try
    proc.ProcedureName:='P_GetMaxID;1';
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=20;
      name := '@TableName';
      value:='T_ElecJudgeContent';
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftInteger;
      Direction := pdoutput;
      size:=255;
      name := '@FInterID';
      value:=0;
    end;
    proc.ExecProc;
    P_MaxID_List2:=proc.Parameters.FindParam('@FInterID').Value;
    proc.Free;
  finally
     ;
  end;

end;

procedure TFrm_PlanTaskChange.TB_Edit_ECLClick(Sender: TObject);
var
 qry: TADOQuery;
 i:Integer;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  I_index:=mdata_Item.RecNo ;
  I_index_ECL:=mdata_List.RecNo ;
  P_state:=1;
  try
    qry.SQL.Text:='Select IsEdit=cast(0 as bit),IsApp=cast(0 as bit),* from V_ElecJudge where FElecJudgeID=:FElecJudgeID';
    qry.Parameters.FindParam('FElecJudgeID').value:=mdata_Item['FElecJudgeID'];
    qry.Open;
  finally
    ;
  end;
  mdata_Item.CopyFromDataSet(qry);
  mdata_Item.Active:=True;
  try
    qry.SQL.Text:='Select IsEdit=cast(0 as bit),IsApp=cast(0 as bit),* from V_ElecJudgeList '
                 +'where FElecJudgeListID=:FElecJudgeListID';
    qry.Parameters.FindParam('FElecJudgeListID').value:=mdata_List['FElecJudgeListID'];
    qry.Open;
  finally
    ;
  end;
  mdata_List.CopyFromDataSet(qry);
  mdata_List.Active:=True;



  If mdata_List_ECL.RecordCount>0 then
  begin
    try
      qry.SQL.Text:='Select IsEdit=cast(0 as bit),IsApp=cast(0 as bit),* from V_ElecContList '
                   +'where FElecJudgeListID=:FElecJudgeListID';
      qry.Parameters.FindParam('FElecJudgeListID').value:=mdata_List['FElecJudgeListID'];
      qry.Open;
    finally
      ;
    end;
    mdata_List_ECL.CopyFromDataSet(qry);
    mdata_List_ECL.Active:=True;
    mdata_List_ECL.First;
    for i:=1 to 10 do
    begin
      mdata_List_ECL.Edit;
      mdata_List_ECL.Append;
      mdata_List_ECL['IsApp']:=True;
      mdata_List_ECL.Post;
    end;
    mdata_List_ECL.First;
  end;
  
  If mdata_List_ECL.RecordCount=0 then
  begin
    try
      qry.SQL.Text:='Select IsEdit=cast(0 as bit),IsApp=cast(1 as bit),* from V_ElecContList '
                   +'where FElecJudgeListID=:FElecJudgeListID';
      qry.Parameters.FindParam('FElecJudgeListID').value:=mdata_List['FElecJudgeListID'];
      qry.Open;
    finally
      ;
    end;
    mdata_List_ECL.CopyFromDataSet(qry);
    mdata_List_ECL.Active:=True;
    mdata_List_ECL.First;
    for i:=1 to 5 do
    begin
      mdata_List_ECL.Edit;
      mdata_List_ECL.Append;
      mdata_List_ECL['IsApp']:=True;
      mdata_List_ECL.Post;
    end;
    mdata_List_ECL.First;
  end;


  qry.Free;
  L_title.Caption:=UserFDepartmentName+'�������������������޸�';
  Act_Set_Open_ECL.Execute;

end;

procedure TFrm_PlanTaskChange.FElecContPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  mdata_List_ECL.Edit;
  try
    qry.SQL.Text:='Select FID,FParentID,FNumber,FParentNumber,FName,FRemark,FClassID,FDetail,IsLeaf '
                  +'from  V_BaseData with(nolock) where FNumber like '
                  +'(Select FNumber+''%'' from T_BaseData with(nolock) where FName=''�������ƶ���'' '
                  +'and FDepartmentID=:FDepartmentID) '
                  +'order by FNumber ';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Open;
  finally
    ;
  end;

  selValue:=select('ѡ��������ƶ���','FNumber','FParentNumber','FNumber','FName',qry);
  If (Length(selValue)>0) and (qry.FieldByName('FDetail').Value=True)  then
  begin
     mdata_List_ECL['FElecContID']:=qry.FieldByName('FID').Value;
     mdata_List_ECL['FElecCont']:=qry.FieldByName('FName').Value;
  end
  else
     application.MessageBox('��ѡ����ϸ��Ŀ��','ϵͳ��ʾ',MB_ICONINFORMATION);


end;

procedure TFrm_PlanTaskChange.Act_Set_Open_ECLExecute(Sender: TObject);
begin
  inherited;
  TB_App.Visible:=False;
  TB_Ref.Visible:=False;
  TB_Edit.Visible:=False;
  MyTreeView.Enabled:=False;

  TB_Edit_ECL.Visible:=False;
  TB_Del_ECL.Visible:=False;

  Panel_button_ECL.Visible:=True;
  OKBtn_ECL.Visible:=True;
  CancelBtn_ECL.Visible:=True;

  cxGV_List_ECL.OptionsData.Editing:=True;
  FElecCont.Options.Editing:=True;
  FLoadCapacity.Options.Editing:=True;
  FContdQry.Options.Editing:=True;

end;

procedure TFrm_PlanTaskChange.Act_Set_Close_ECLExecute(Sender: TObject);
begin
  inherited;
  TB_App.Visible:=True;
  TB_Ref.Visible:=True;
  TB_Edit.Visible:=True;
  MyTreeView.Enabled:=True;

  TB_Edit_ECL.Visible:=True;
  TB_Del_ECL.Visible:=True;

  Panel_button_ECL.Visible:=False;
  OKBtn_ECL.Visible:=False;
  CancelBtn_ECL.Visible:=False;
  cxGV_List_ECL.OptionsData.Editing:=False;

end;

procedure TFrm_PlanTaskChange.CancelBtn_ECLClick(Sender: TObject);
var
  qry:TADOQuery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
 //�޸ĺ󷵻�ԭ�ȼ�¼��
  try
    qry.SQL.Text:='Select IsEdit=cast(0 as bit),IsApp=cast(0 as bit),* from V_ElecJudge where FNumber like :FNumber';
    qry.Parameters.FindParam('FNumber').value:=ListItemFNumber+'%';
    qry.Open;
  finally
    ;
  end;
  mdata_Item.CopyFromDataSet(qry);
  mdata_Item.Active:=True;

  If (I_index<mdata_Item.RecordCount) and (I_index<>-1) then
     mdata_Item.RecNo :=I_index
  else
     mdata_Item.Last;
     
  //���ƶ�����ϸ
  try
    qry.SQL.Text:='Select IsEdit=cast(0 as bit),IsApp=cast(0 as bit),* from V_ElecContList with(nolock) '
                 +'where FElecJudgeListID=:FElecJudgeListID';
    qry.Parameters.FindParam('FElecJudgeListID').Value:=mdata_List['FElecJudgeListID'];
    qry.Open;
  finally
     ;
  end;
  mdata_List_ECL.CopyFromDataSet(qry);
  mdata_List_ECL.Active:=True;
  mdata_List_ECL.First;
  //��Ʒ��ϸ��
  try
    qry.SQL.Text:='Select IsEdit=cast(0 as bit),IsApp=cast(0 as bit),* from V_ElecJudgeList with(nolock) '
                 +'where FElecJudgeID=:FElecJudgeID';
    qry.Parameters.FindParam('FElecJudgeID').Value:=mdata_Item['FElecJudgeID'];
    qry.Open;
  finally
     ;
  end;
  mdata_List.CopyFromDataSet(qry);
  mdata_List.Active:=True;

  If (I_index_ECL<mdata_List.RecordCount) and (I_index_ECL<>-1) then
     mdata_List.RecNo :=I_index_ECL
  else
     mdata_List.Last;

  Act_Set_Close_ECL.Execute;
  P_state:=2;

end;

procedure TFrm_PlanTaskChange.OKBtn_ECLClick(Sender: TObject);
//var qry: TADOQuery;
begin
//  qry:=TADOQuery.Create(self);
//  qry.ConnectionString:=mdlData.ReadConnStr;

  mData_List_ECL.Edit;
  mData_List_ECL.Post;
  mData_List_ECL.First;
  while not mData_List_ECL.eof do
  begin
    If (mData_List_ECL['FElecContID']=0) or (mData_List_ECL['FElecContID']=Null) then
    begin
      mData_List_ECL.Edit;
      mData_List_ECL.Delete;
    end;
    mData_List_ECL.Next;
  end;

  If P_state=1 then //�޸�����
  begin
    If application.MessageBox('�Ƿ�Ҫ���������޸ģ�','��ʾ',MB_ICONINFORMATION+MB_YESNO)<>6 then
       Exit;
    If EditRd_ECL then   //�޸�����
    begin
      application.MessageBox('�޸ļ�¼�ѱ���','ϵͳ��ʾ',MB_ICONINFORMATION);
      inherited;
    end
    else
      application.MessageBox('�޸ļ�¼����ʧ�ܣ�','ϵͳ��ʾ',MB_ICONWARNING);
    CancelBtn_ECL.Click;
  end;
 // qry.Free;



end;

procedure TFrm_PlanTaskChange.cxGV_ListFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
var qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If  P_state=2 then   //���������޸�״̬
  begin
    If (mData_List['FElecJudgeListID']<>0) and (mData_List['FElecJudgeListID']<>Null) then
    begin
      If MyItemListID(qry,Mdata_List_ECL,'V_ElecContList',' FElecJudgeListID='+IntToStr(mData_List['FElecJudgeListID']),'',) then
    end;
  end;
end;

procedure TFrm_PlanTaskChange.Act_MaxID_List_ECLExecute(Sender: TObject);
var
  proc:TADOStoredProc;
begin
  proc:=TADOStoredProc.Create(self);
  proc.ConnectionString:=mdlData.ReadConnStr;
  proc.CommandTimeout:=500;
  try
    proc.ProcedureName:='P_GetMaxID;1';
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=20;
      name := '@TableName';
      value:='T_ElecContList';
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftInteger;
      Direction := pdoutput;
      size:=255;
      name := '@FInterID';
      value:=0;
    end;
    proc.ExecProc;
    P_MaxID_List_ECL:=proc.Parameters.FindParam('@FInterID').Value;
    proc.Free;
  finally
     ;
  end;


end;

procedure TFrm_PlanTaskChange.Act_ElecContList_SumExecute(Sender: TObject);
var qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If (mdata_Item['FItemID']<>0) and (mdata_Item['FItemID']<>Null) then
  begin
    try
      qry.SQL.Text:='select FItemID,FElecCont,FLoadCapacity,sum(FContdQry) as FContdSumQry  from V_ElecContList '
                   +'where FItemID=:FItemID group by FItemID,FElecCont,FLoadCapacity';
      qry.Parameters.FindParam('FItemID').Value:=mdata_Item['FItemID'];
      qry.Open;
    finally
       ;
    end;
    mdata_Sum.CopyFromDataSet(qry);
    mdata_Sum.Active:=True;
  end;
end;

procedure TFrm_PlanTaskChange.PC_ListChange(Sender: TObject);
begin
  inherited;
  If PC_List.ActivePage=TS_Cont then
     Act_ElecContList_Sum.Execute;
end;

procedure TFrm_PlanTaskChange.cxGV_ItemDblClick(Sender: TObject);
var  qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  try
    qry.SQL.Text:='Select IsEdit=cast(0 as bit),IsApp=cast(0 as bit),* from V_ElecJudge where FElecJudgeID=:FElecJudgeID';
    qry.Parameters.FindParam('FElecJudgeID').value:=mdata_Item['FElecJudgeID'];
    qry.Open;
  finally
    ;
  end;
  mdata_Item.CopyFromDataSet(qry);
  mdata_Item.Active:=True;

  try
    qry.SQL.Text:='Select IsEdit=cast(0 as bit),IsApp=cast(0 as bit),* from V_ElecJudgeList where FElecJudgeID=:FElecJudgeID';
    qry.Parameters.FindParam('FElecJudgeID').value:=mdata_Item['FElecJudgeID'];
    qry.Open;
  finally
    ;
  end;
  mdata_List.CopyFromDataSet(qry);
  mdata_List.Active:=True;
  mdata_List.First;

  TS_Tree.ActivePage:=Tree_Edit;
  SP_Item.Visible:=False;
 // RP_ECL.Visible:=False;
  TB_Edit.Visible:= mdlData.PermissionCheckRights(TFrm_StructJudge.ClassName,'�޸�');


end;

procedure TFrm_PlanTaskChange.cxGVCDblClick(Sender: TObject);
begin
  inherited;
  CancelBtn.Click;
end;

procedure TFrm_PlanTaskChange.FElecLoadCapacityPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  mdata_List.Edit;
  mdata_List.Post;
  try
    qry.SQL.Text:='Select distinct FElecLoadCapacity '
                  +'from  V_ElecJudgeList with(nolock) where FElecLoadCapacity like :FElecLoadCapacity '
                  +'and FDepartmentID=:FDepartmentID '
                  +'order by FElecLoadCapacity ';
    qry.Parameters.FindParam('FElecLoadCapacity').value:= '%'+mdata_List['FElecLoadCapacity']+'%';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Open;
  finally
    ;
  end;

  selValue:=select('ѡ�񸺺�����','FElecLoadCapacity','FElecLoadCapacity','FElecLoadCapacity','FElecLoadCapacity',qry);
  If (Length(selValue)>0)  then
  begin
    mdata_List.Edit;
    mdata_List['FElecLoadCapacity']:=qry.FieldByName('FElecLoadCapacity').Value;
    mdata_List.Post;
  end
  else
     application.MessageBox('��ѡ����ϸ��','ϵͳ��ʾ',MB_ICONINFORMATION);


end;

procedure TFrm_PlanTaskChange.FDeviceModelPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  mdata_List.Edit;
  mdata_List.Post;
  try
    qry.SQL.Text:='Select distinct FDeviceModel '
                  +'from  V_ElecJudgeList with(nolock) where FDeviceModel like :FDeviceModel '
                  +'and FDepartmentID=:FDepartmentID '
                  +'order by FDeviceModel ';
    qry.Parameters.FindParam('FDeviceModel').value:= '%'+mdata_List['FDeviceModel']+'%';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Open;
  finally
    ;
  end;

  selValue:=select('ѡ����Ҫ�����ͺ�','FDeviceModel','FDeviceModel','FDeviceModel','FDeviceModel',qry);
  If (Length(selValue)>0)  then
  begin
    mdata_List.Edit;
    mdata_List['FDeviceModel']:=qry.FieldByName('FDeviceModel').Value;
    mdata_List.Post;
  end
  else
     application.MessageBox('��ѡ����ϸ��','ϵͳ��ʾ',MB_ICONINFORMATION);

end;

procedure TFrm_PlanTaskChange.FCableModelPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  mdata_List.Edit;
  mdata_List.Post;
  try
    qry.SQL.Text:='Select distinct FCableModel '
                  +'from  V_ElecJudgeList with(nolock) where FCableModel like :FCableModel '
                  +'and FDepartmentID=:FDepartmentID '
                  +'order by FCableModel ';
    qry.Parameters.FindParam('FCableModel').value:= '%'+mdata_List['FCableModel']+'%';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Open;
  finally
    ;
  end;

  selValue:=select('ѡ������ͺ�','FCableModel','FCableModel','FCableModel','FCableModel',qry);
  If (Length(selValue)>0)  then
  begin
    mdata_List.Edit;
    mdata_List['FCableModel']:=qry.FieldByName('FCableModel').Value;
    mdata_List.Post;
  end
  else
     application.MessageBox('��ѡ����ϸ��','ϵͳ��ʾ',MB_ICONINFORMATION);


end;

procedure TFrm_PlanTaskChange.FElecJudgeContentPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  mdata_List2.Edit;
  mdata_List2.Post;
  try
    qry.SQL.Text:='Select distinct FElecJudgeContent '
                  +'from  T_ElecJudgeContent with(nolock) where FElecJudgeContent like :FElecJudgeContent '
                  +'and FDepartmentID=:FDepartmentID '
                  +'order by FElecJudgeContent ';
    qry.Parameters.FindParam('FElecJudgeContent').value:= '%'+mdata_List2['FElecJudgeContent']+'%';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Open;
  finally
    ;
  end;

  selValue:=select('ѡ����������','FElecJudgeContent','FElecJudgeContent','FElecJudgeContent','FElecJudgeContent',qry);
  If (Length(selValue)>0)  then
  begin
    mdata_List2.Edit;
    mdata_List2['FElecJudgeContent']:=qry.FieldByName('FElecJudgeContent').Value;
    mdata_List2.Post;
  end
  else
     application.MessageBox('��ѡ����ϸ��','ϵͳ��ʾ',MB_ICONINFORMATION);
end;

procedure TFrm_PlanTaskChange.FElecJudgeResultPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  mdata_List2.Edit;
  mdata_List2.Post;
  try
    qry.SQL.Text:='Select distinct FElecJudgeResult '
                  +'from  T_ElecJudgeContent with(nolock) where FElecJudgeResult like :FElecJudgeResult '
                  +'and FDepartmentID=:FDepartmentID '
                  +'order by FElecJudgeResult ';
    qry.Parameters.FindParam('FElecJudgeResult').value:= '%'+mdata_List2['FElecJudgeResult']+'%';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Open;
  finally
    ;
  end;

  selValue:=select('ѡ��������','FElecJudgeResult','FElecJudgeResult','FElecJudgeResult','FElecJudgeResult',qry);
  If (Length(selValue)>0)  then
  begin
    mdata_List2.Edit;
    mdata_List2['FElecJudgeResult']:=qry.FieldByName('FElecJudgeResult').Value;
    mdata_List2.Post;
  end
  else
     application.MessageBox('��ѡ����ϸ��','ϵͳ��ʾ',MB_ICONINFORMATION);


end;

procedure TFrm_PlanTaskChange.FLoadCapacityPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  mdata_List2.Edit;
  mdata_List2.Post;
  try
    qry.SQL.Text:='Select distinct FLoadCapacity '
                  +'from  T_ElecContList with(nolock) where FLoadCapacity like :FLoadCapacity '
                  +'and FDepartmentID=:FDepartmentID '
                  +'order by FLoadCapacity ';
    qry.Parameters.FindParam('FLoadCapacity').value:= '%'+mdata_List2['FLoadCapacity']+'%';
    qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
    qry.Open;
  finally
    ;
  end;

  selValue:=select('ѡ����ƶ�������','FLoadCapacity','FLoadCapacity','FLoadCapacity','FLoadCapacity',qry);
  If (Length(selValue)>0)  then
  begin
    mdata_List2.Edit;
    mdata_List2['FLoadCapacity']:=qry.FieldByName('FLoadCapacity').Value;
    mdata_List2.Post;
  end
  else
     application.MessageBox('��ѡ����ϸ��','ϵͳ��ʾ',MB_ICONINFORMATION);


end;

end.
