unit FrmWorkMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, Menus, ExtCtrls, ImgList, Buttons,
  StdCtrls, DBTables,registry,ShellApi, Common,CommCtrl,
   DB, Grids, DBGrids, RzGroupBar,
  RzPanel, RzSplit, ActnList, XPStyleActnCtrls, ActnMan, RzEdit, RzLabel,
  RzStatus, RzButton, ADODB,FRMData, jpeg, FR_Class, FR_Desgn, auHTTP,
  auAutoUpgrader, FR_DSet, FR_DBSet;
   
type
  TFrm_WorkMain = class(TForm)
    ImageList_tools: TImageList;
    ImageList1: TImageList;
    stbBar: TRzStatusBar;
    RzClockStatus1: TRzClockStatus;
    RzKeyStatus1: TRzKeyStatus;
    RzKeyStatus2: TRzKeyStatus;
    RzKeyStatus3: TRzKeyStatus;
    verinfo: TRzVersionInfo;
    RzSizePanel2: TRzSizePanel;
    RzLabel9: TRzLabel;
    HelpText: TRzRichEdit;
    stbMsg: TRzFieldStatus;
    stbVerInfo: TRzMarqueeStatus;
    actionList: TActionList;
    Panel_back: TPanel;
    pnlControl: TRzSizePanel;
    grpBar: TRzGroupBar;
    grpView: TRzGroup;
    RzGroup4: TRzGroup;
    grpBase: TRzGroup;
    Panel_main: TRzSizePanel;
    Actrights: TAction;
    ADOQuery: TADOQuery;
    MainMenu_main: TMainMenu;
    Menu_file: TMenuItem;
    Menu_file_log: TMenuItem;
    N18: TMenuItem;
    N19: TMenuItem;
    Menu_file_print: TMenuItem;
    N3: TMenuItem;
    Menu_file_checkout: TMenuItem;
    Menu_file_saveas: TMenuItem;
    N12: TMenuItem;
    Menu_file_exit: TMenuItem;
    Menu_bassmessage: TMenuItem;
    Menu_windows: TMenuItem;
    Menu_windows_now: TMenuItem;
    Menu_windows_showall: TMenuItem;
    N13: TMenuItem;
    Menu_windows_closenow: TMenuItem;
    Menu_windows_closeall: TMenuItem;
    Actpwd: TAction;
    Image1: TImage;
    N44: TMenuItem;
    ActLog: TAction;
    BOM1: TMenuItem;
    BOM2: TMenuItem;
    BOM3: TMenuItem;
    N1: TMenuItem;
    RzGroup1: TRzGroup;
    RzGroup2: TRzGroup;
    ActProductParts: TAction;
    ActItem: TAction;
    ActItemList: TAction;
    ActGeneral: TAction;
    ActBOMServer: TAction;
    ActDesignBOM: TAction;
    ActGeneralPickup: TAction;
    ActDesignBOMPick: TAction;
    ActPartsSort: TAction;
    ActPartsClass: TAction;
    AutoUpg: TauAutoUpgrader;
    ToolBar_main: TToolBar;
    TB_3: TToolButton;
    ToolButton11: TToolButton;
    ToolButton7: TToolButton;
    ToolButton2: TToolButton;
    TB_Report: TToolButton;
    ToolButton4: TToolButton;
    ToolButton1: TToolButton;
    TB_logo: TToolButton;
    TB_exit: TToolButton;
    N2: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    BOM5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    ToolButton6: TToolButton;
    ActAgentItem: TAction;
    RzGroup3: TRzGroup;
    ActBalanceParts: TAction;
    ActWorkPrice: TAction;
    ActBalancePrice: TAction;
    ActAgentBalance: TAction;
    ActWorkItem: TAction;
    ToolButton8: TToolButton;
    ToolButton10: TToolButton;
    ActStockIn: TAction;
    ToolButton12: TToolButton;
    ActAgentBalanceQry: TAction;
    frReport: TfrReport;
    ToolButton13: TToolButton;
    ToolButton14: TToolButton;
    ToolButton15: TToolButton;
    ToolButton16: TToolButton;
    ActLKDDBalanceItem: TAction;
    ActLKSHBOMPick: TAction;
    TB_FileItemm: TToolButton;
    actFileItem: TAction;
    ActTechProductParts: TAction;
    ToolButton18: TToolButton;
    ActTechItem: TAction;
    ToolButton19: TToolButton;
    ToolButton20: TToolButton;
    ActTechItemList: TAction;
    ToolButton21: TToolButton;
    ActPack: TAction;
    ActConverse: TAction;
    N10: TMenuItem;
    TB_StockParts: TToolButton;
    ActStockParts: TAction;
    ActSysTemUser: TAction;
    ToolButton23: TToolButton;
    frDBDataSet: TfrDBDataSet;
    N11: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
    N20: TMenuItem;
    N21: TMenuItem;
    N22: TMenuItem;
    N23: TMenuItem;
    N24: TMenuItem;
    N25: TMenuItem;
    N26: TMenuItem;
    N27: TMenuItem;
    N28: TMenuItem;
    N29: TMenuItem;
    N30: TMenuItem;
    procedure Menu_file_exitClick(Sender: TObject);
    procedure Panel_datainputResize(Sender: TObject);
    procedure ScrollBox_datainputResize(Sender: TObject);
    procedure Menu_tools_aboutClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure User_switchwindows(Sender: Tobject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Menu_tools_setupClick(Sender: TObject);
    procedure Menu_windowsClick(Sender: TObject);
    procedure Menu_windows_closenowClick(Sender: TObject);
    procedure Menu_windows_closeallClick(Sender: TObject);
    procedure Menu_file_checkoutClick(Sender: TObject);
    procedure Menu_fileClick(Sender: TObject);
    procedure Menu_file_logClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure vwCatExecute(Sender: TObject);
    procedure vwTaskExecute(Sender: TObject);
    procedure vwOutLookExecute(Sender: TObject);
    procedure actTestExecute(Sender: TObject);
    procedure actGJDJExecute(Sender: TObject);
    procedure ActpwdExecute(Sender: TObject);
    procedure ActStuffOpExecute(Sender: TObject);
    procedure TB_7Click(Sender: TObject);
    procedure ActLogExecute(Sender: TObject);
    procedure ActrightsExecute(Sender: TObject);
    procedure ActProductPartsExecute(Sender: TObject);
    procedure ActDesignBOMPickupExecute(Sender: TObject);
    procedure ActItem_1Execute(Sender: TObject);
    procedure ActItemListExecute(Sender: TObject);
    procedure ActBOMServerExecute(Sender: TObject);
    procedure ActGeneralExecute(Sender: TObject);
    procedure ActDesignBOMExecute(Sender: TObject);
    procedure ActGeneralPickupExecute(Sender: TObject);
    procedure ActDesignBOMPickExecute(Sender: TObject);
    procedure ActPartsSortExecute(Sender: TObject);
    procedure ActPartsClassExecute(Sender: TObject);
    procedure AutoUpgAfterRestart(Sender: TObject);
    procedure AutoUpgDoOwnCloseAppMethod(Sender: TObject);
    procedure AutoUpgHostUnreachable(Sender: TObject; const URL,
      Hostname: String);
    procedure AutoUpgNoInfoFile(Sender: TObject);
    procedure AutoUpgNoUpdateAvailable(Sender: TObject);
    procedure grpViewItems4Click(Sender: TObject);
    procedure TB_exitClick(Sender: TObject);
    procedure TB_ReportClick(Sender: TObject);
    procedure ActAgentItemExecute(Sender: TObject);
    procedure ActBalancePartsExecute(Sender: TObject);
    procedure ActWorkPriceExecute(Sender: TObject);
    procedure ActBalancePriceExecute(Sender: TObject);
    procedure ActAgentBalanceExecute(Sender: TObject);
    procedure ActWorkItemExecute(Sender: TObject);
    procedure ActStockInExecute(Sender: TObject);
    procedure ActAgentBalanceQryExecute(Sender: TObject);
    procedure ActLKDDBalanceItemExecute(Sender: TObject);
    procedure actFileItemExecute(Sender: TObject);
    procedure ActTechProductPartsExecute(Sender: TObject);
    procedure ActTechItemExecute(Sender: TObject);
    procedure ActTechItemListExecute(Sender: TObject);
    procedure ActPackExecute(Sender: TObject);
    procedure ActConverseExecute(Sender: TObject);
    procedure ActStockPartsExecute(Sender: TObject);
    procedure ActSysTemUserExecute(Sender: TObject);
  private
    fOpenForms:array of string;
    FUpgraded: bool;
    procedure InitAction;
    function FindForm(FormName:string):integer;
    procedure AddForm(FormName:string);
    procedure DeleteForm(FormName:string);
    function HasActiveForm(FormName:string):bool;
    function GetFileVersionInfo1:string;
    procedure GroupStyle(bar:TRzGroupBar);
    procedure ReadRegister;
    //Rights:权限 ClassName:类别
    procedure FormDestroy(Sender: TObject);
    function AutoBakupFile:bool;//系统备份
    //程序自动更新
    procedure AutoUpgrade;   //执行程序自动更新
    procedure FreeAutoUpg;   //程序自动更新控件释放
    function AutoUpgInfoFile: string;   //获取自动更新配置文件
  public
    function ShowModule(ClassName:TComponentClass;
      IsForm:bool=true;Rights:string='查看';Ssbm:string='公司职员'):TForm;
    function GetFileVersion(FileName: string): string;  //获取应用程序版本号
    procedure ShowMessage(msg:string);
    procedure LogoDestroy(Sender: TObject);
  end;

var
 Frm_WorkMain: TFrm_WorkMain;
 w,h:Integer;
 
function RootKey:HKey;


implementation

uses SETUP,LOGO, FRMABOUT, Edit_pwd, Main_rights,
  Main_DesignBOMPickup, Main_Item, Main_DesignBOM, Main_ItemList,
  Main_ProductParts, Main_BOMServer, Main_General,
  Main_GeneralPickup, Main_DesignBOMPick, Main_Parts, Main_ItemList_1,
  Main_PartsSort, Main_PartsClass, Main_AgentItem, Main_BalanceParts,
  Main_WorkPrice, Main_BalancePrice, Main_AgentBalance, Main_WorkItem,
  Main_StockIn, Main_AgentBalanceQry, Main_LKDDBalanceItem,
  Main_LKSHBOMPick, Main_FileItem, Main_TechProductParts, Main_TechItem,
  Main_TechItemList, Main_Pack, Main_Converse, Main_StockParts,
  Main_systemuser;

{$R *.dfm}

function RootKey:HKey;
begin
 result:=mdlData.RootKey;
end;

procedure TFrm_WorkMain.Menu_file_exitClick(Sender: TObject);
begin
   self.Close ;
end;

procedure TFrm_WorkMain.Panel_datainputResize(Sender: TObject);
var
   I_control:integer;
begin
   for I_control:=0 to (sender as Tpanel).ControlCount -1 do
   begin
      with (sender as Tpanel).Controls[I_control] do
      begin
         left:=0;
         top:=0;
         Width :=(sender as Tpanel).Width ;
      end;
   end;
end;

procedure TFrm_WorkMain.ScrollBox_datainputResize(Sender: TObject);
var
   I_temp,I_control:integer;
begin
   (sender as Tscrollbox).VertScrollBar.Position :=0;
   I_temp:=((sender as Tscrollbox).Height -
      (sender as Tscrollbox).ControlCount*(sender as Tscrollbox).Controls[0].Height)
       div ((sender as Tscrollbox).ControlCount+1);
   if I_temp<5 then I_temp:=5;
   for I_control:=0 to (sender as Tscrollbox).controlcount-1 do
   begin
      with (sender as Tscrollbox).controls[I_control] do
      begin
         Left :=0;
         Width :=(sender as Tscrollbox).width;
         height:=(sender as Tscrollbox).Controls[0].Height;
         Top :=I_control*(sender as Tscrollbox).Controls[0].Height + (I_control+1)*I_temp;
      end;
   end;
end;

procedure TFrm_WorkMain.Menu_tools_aboutClick(Sender: TObject);
begin
   Application.CreateForm(Tfrm_about,Frm_about);
   Frm_about.showmodal;
   Frm_about.free;
end;

procedure TFrm_WorkMain.FormCreate(Sender: TObject);
var
   NumSec: SmallInt;
   StartTime: TDateTime;
   LABEL Systemsetup;
begin
   //版本更新
  {$ifndef NOUPDATE}
   AutoUpgrade;
  {$else}
   FreeAutoUpg;
  {$endif}
   //开始运行
   numsec:=1;              //延时1秒
   StartTime :=now;
   repeat
      application.ProcessMessages ;
   until Now > StartTime + NumSec * (1/24/60/60);
   ReadRegister;
   self.Caption :=Application.Title+' - '+S_name;
   application.HintPause :=500;
   stbVerInfo.Caption:='版权所有 '+GetFileVersionInfo1;
end;

function TFrm_WorkMain.AutoBakupFile:bool;
begin
 result:=true;
end;

procedure TFrm_WorkMain.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
   if ShowMsg('确定要退出'+application.Title +'吗？','退出提示') then
   begin
      self.AutoBakupFile;
      canClose:=true;
   end
   else
      canclose:=false;
end;

procedure TFrm_WorkMain.Menu_tools_setupClick(Sender: TObject);
begin
   if Panel_main.DockClientCount> 0 then
   begin
      ShowMsg(Infmsg0005,'停止',false);
      exit;
   end;
   ShowModule(TFrm_Setup,false,'修改');
end;

procedure TFrm_WorkMain.Menu_windowsClick(Sender: TObject);
var
   PopUpItems: array of  TMenuItem;
   I_record:integer;
begin
   Menu_windows_now.Clear ;
   setlength(PopUpItems,Panel_main.DockClientCount);
   for I_record:=0 to Panel_main.DockClientCount - 1 do
   begin
         PopUpItems[I_record]:=TMenuItem.Create(Self);
         PopUpItems[I_record].Caption:=(Panel_main.DockClients[I_record] as Tform).caption +'[&'+chr(65+I_record)+']';
         PopUpItems[I_record].Checked :=(Panel_main.DockClients[I_record] as Tform).Showing ;
         PopUpItems[I_record].OnClick :=User_switchwindows;
         Menu_windows_now.Add(PopUpItems[I_record]);
   end;
   if Panel_main.DockClientCount > 0 then
   begin
      Menu_windows_now.Enabled :=true;
      Menu_windows_showall.Enabled :=true;
      Menu_windows_closenow.Enabled :=true;
      Menu_windows_closeall.Enabled :=true;
   end
   else
   begin
      Menu_windows_now.Enabled :=false;
      Menu_windows_showall.Enabled :=false;
      Menu_windows_closenow.Enabled :=false;
      Menu_windows_closeall.Enabled :=false;
   end;
end;

procedure TFrm_WorkMain.User_switchwindows(Sender: Tobject);      //数据窗口切换
var
   I_windowsindex,I_temp:integer;
begin
   for I_temp:=0 to panel_main.DockClientCount -1 do
   begin
       panel_main.DockClients[I_temp].Hide ;
   end;
   I_windowsindex:=(Sender as TMenuItem).MenuIndex ;
   panel_main.DockClients[I_windowsindex].Show ;
   (panel_main.DockClients[I_windowsindex] as Tform).SetFocus ;
end;

procedure TFrm_WorkMain.Menu_windows_closenowClick(Sender: TObject);     //关闭当前窗口
var
   I_temp:integer;
begin
   for I_temp:=0 to panel_main.DockClientCount -1 do
   begin
      if (panel_main.DockClients[I_temp] as Tform).Showing  then
      begin
         (panel_main.DockClients[I_temp] as Tform).Close ;
      end;
   end;
end;

procedure TFrm_WorkMain.Menu_windows_closeallClick(Sender: TObject);       //关闭所有窗口
var
   I_temp,I_windowscount:integer;
begin
   I_windowscount:=panel_main.DockClientCount;
   for I_temp:=0 to I_windowscount-1 do
   begin
      try
         (panel_main.DockClients[0] as Tform).Close ;
         application.ProcessMessages ;
         //窗口未被正常关闭，退出
         if I_windowscount - (I_temp +1)<panel_main.DockClientCount then
         begin
            exit;
         end;
      except
         exit;
      end;
   end;
end;

procedure TFrm_WorkMain.Menu_file_checkoutClick(Sender: TObject);
begin
   {$ifdef DEBUG}
   exit;
   {$endif}
end;

procedure TFrm_WorkMain.Menu_fileClick(Sender: TObject);
begin
   Menu_file_checkout.Enabled :=(panel_main.DockClientCount > 0);
   Menu_file_saveas.Enabled :=(panel_main.DockClientCount > 0);
end;

procedure TFrm_WorkMain.Menu_file_logClick(Sender: TObject);
begin
   //ShowLogWindow;
end;

procedure TFrm_WorkMain.FormClose(Sender: TObject; var Action: TCloseAction);
var
 qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Insert into T_Login(FlogType,Num,FLogInDate) '
                 +'values(:FlogType,:Num,:FLogInDate)';
    qry.Parameters.FindParam('FlogType').Value:='退出';
    qry.Parameters.FindParam('Num').Value:=UserNum;
    qry.Parameters.FindParam('FLogInDate').Value:=Now();
    qry.ExecSQL;
  finally
     ;
  end;
//   WriteEvent('关闭');
end;

procedure TFrm_WorkMain.GroupStyle(bar:TRzGroupBar);
var
 i:integer;
 style:TRzItemStyle;
begin
 if bar.Style=gbsOutlook
  then style:=isLarge
  else style:=isSmall;
 for i:=0 to grpBar.GroupCount-1 do
   bar.Groups[0].ItemStyle:=Style;
 bar.Color:=clMoneyGreen;
end;

procedure TFrm_WorkMain.vwCatExecute(Sender: TObject);
begin
  grpBar.Style := gbsCategoryView;
  GroupStyle(grpBar);
end;

procedure TFrm_WorkMain.vwTaskExecute(Sender: TObject);
begin
  grpBar.Style := gbsTaskList;
  GroupStyle(grpBar);
end;

procedure TFrm_WorkMain.vwOutLookExecute(Sender: TObject);
begin
   grpBar.Style := gbsOutlook;
   GroupStyle(grpBar);
end;

function TFrm_WorkMain.GetFileVersionInfo1: string;
begin
 with VerInfo do
  result:=format('%s 版本:[%s] 版权所有 %s ',[ProductName,FileVersion,CompanyName]);
end;

procedure TFrm_WorkMain.ReadRegister;
var
   reg:TRegInfo;
begin
  reg:=TRegInfo.Create;
  try
   S_name:=reg.CoName;
   S_username:=reg.CoUsername;
   S_cotel:=reg.Cotel;
   S_address:=reg.CoAddress;
   S_autosave:=reg.IsAutoSave;
   S_savedays:=reg.SaveDays;
   if not reg.IsAutoCheckOut
     then I_countdate:=reg.CheckOutDate
     else I_countdate:=0;
  finally
   Reg.Free;
  end;
end;

function TFrm_WorkMain.ShowModule(ClassName: TComponentClass;IsForm:bool;Rights:string;Ssbm:string):TForm;
var
 frm:TForm;
 i : Integer;
begin
 result:=nil;
 if Trim(SSBM)<>UserSsbm then
 begin
  ShowMsg(Errormsg0006+'0006','错误',false);
  exit;
 end;
 if HasActiveForm(ClassName.ClassName) then begin
   for i:=0 to application.ComponentCount-1 do
    if application.Components[i].ClassType=ClassName
     then begin
      result:=(application.Components[i] as TForm);
      result.BringToFront;
      break;
     end;
     Exit;
  end;
  if not mdlData.CheckFrmRights(ClassName.ClassName,Rights) then
   begin
      ShowMsg(Errormsg0006+'0006','错误',false);
      Exit;
   end;
   try
    application.CreateForm(ClassName,frm);
    if IsForm then begin
     result:=frm;
     frm.ManualDock(panel_main,nil,alClient);//新语法
     frm.OnDestroy:=FormDestroy;
     AddForm(ClassName.ClassName);
     frm.show;
    end
    else
     frm.ShowModal;
   except
//    WriteEvent(format('打开窗体%s失败',[ClassName.ClassName]));
//    ShowLogWindow;
   end;
end;

procedure TFrm_WorkMain.AddForm(FormName: string);
var
 arrLen:Integer;
begin
 arrLen:=Length(fOpenForms)+1;
 setLength(fOpenForms,arrLen);
 fopenForms[High(fOpenForms)]:=FormName;
end;

function TFrm_WorkMain.FindForm(FormName: string):integer;
var
 i : integer;
begin
 result:=-1;
 for i:=Low(fOpenForms) to High(fOpenForms) do
  if fOpenForms[i]=FormName then begin
   result:=i;
   break;
  end;
end;

procedure TFrm_WorkMain.DeleteForm(FormName: string);
var
 i,inx:Integer;
begin
 inx:=FindForm(FormName);
 if inx<0 then exit;
 for i:=inx to High(fOpenForms)-1 do
  fOpenForms[i]:=fOpenForms[i+1];
 setLength(fOpenForms,Length(fOpenForms)-1);
end;

function TFrm_WorkMain.HasActiveForm(FormName: string): bool;
begin
 result:=FindForm(FormName)>-1;
end;

procedure TFrm_WorkMain.FormDestroy(Sender: TObject);
begin
 DeleteForm(sender.ClassName);
end;

procedure TFrm_WorkMain.ShowMessage(msg: string);
begin
 stbMsg.Caption:=msg;
end;

procedure TFrm_WorkMain.actTestExecute(Sender: TObject);
begin
 { TODO : 这儿放置测试窗体 }
end;

procedure TFrm_WorkMain.InitAction;
var
 i,j:integer;
 Flag:bool;
begin

//基本信息

  ActProductParts.Visible:= mdlData.CheckFrmRights(TFrm_ProductParts.ClassName,'查看');
  actItem.Visible:= mdlData.CheckFrmRights(TFrm_Item.ClassName,'查看');
  actItemList.Visible:= mdlData.CheckFrmRights(TFrm_ItemList.ClassName,'查看');

  ActTechProductParts.Visible:= mdlData.CheckFrmRights(TFrm_TechProductParts.ClassName,'查看');
  actTechItem.Visible:= mdlData.CheckFrmRights(TFrm_TechItem.ClassName,'查看');
  actTechItemList.Visible:= mdlData.CheckFrmRights(TFrm_TechItemList.ClassName,'查看');

  ActPartsSort.Visible:= mdlData.CheckFrmRights(TFrm_Parts.ClassName,'查看');
  ActPartsClass.Visible:= mdlData.CheckFrmRights(TFrm_PartsClass.ClassName,'查看');
  ActGeneral.Visible:= mdlData.CheckFrmRights(TFrm_General.ClassName,'查看');
  ActFileItem.Visible:= mdlData.CheckFrmRights(TFrm_FileItem.ClassName,'查看');
  ActStockParts.Visible:= mdlData.CheckFrmRights(TFrm_StockParts.ClassName,'查看');
  ActSysTemUser.Visible:= mdlData.CheckFrmRights(TFrm_SysTemUser.ClassName,'查看');


//设计BOM
  ActDesignBOMPick.Visible:= mdlData.CheckFrmRights(TFrm_DesignBOMPick.ClassName,'查看');
  ActDesignBOM.Visible:= mdlData.CheckFrmRights(TFrm_DesignBOM.ClassName,'查看');
  ActLKSHBOMPick.Visible:= mdlData.CheckFrmRights(TFrm_LKSHBOMPick.ClassName,'查看');
  ActStockIn.Visible:= mdlData.CheckFrmRights(TFrm_StockIn.ClassName,'查看');
  ActPack.Visible:= mdlData.CheckFrmRights(TFrm_Pack.ClassName,'查看');



//外协结算
  ActAgentItem.Visible:= mdlData.CheckFrmRights(TFrm_AgentItem.ClassName,'查看');
  ActBalanceParts.Visible:= mdlData.CheckFrmRights(TFrm_BalanceParts.ClassName,'查看');
  ActWorkPrice.Visible:= mdlData.CheckFrmRights(TFrm_WorkPrice.ClassName,'查看');
  ActBalancePrice.Visible:= mdlData.CheckFrmRights(TFrm_BalancePrice.ClassName,'查看');
  ActAgentBalance.Visible:= mdlData.CheckFrmRights(TFrm_AgentBalance.ClassName,'查看');
  ActWorkItem.Visible:= mdlData.CheckFrmRights(TFrm_WorkItem.ClassName,'查看');
  ActAgentBalanceQry.Visible:= mdlData.CheckFrmRights(TFrm_AgentBalanceQry.ClassName,'查看');
  ActLKDDBalanceItem.Visible:= mdlData.CheckFrmRights(TFrm_LKDDBalanceItem.ClassName,'查看');


  //系统信息
  Actrights.Visible:= mdlData.CheckFrmRights(TFrm_rights.ClassName,'查看');


//数据维护
 ActBOMServer.Visible:= mdlData.CheckFrmRights(TFrm_BOMServer.ClassName,'查看');



//本体定额
 { actEspTempBOM.Visible:= mdlData.CheckFrmRights(TFrm_EspTempBOM.ClassName,'查看');
  actEspBOM.Visible:= mdlData.CheckFrmRights(TFrm_EspBOM.ClassName,'查看');
  actEspBOMServer.Visible:= mdlData.CheckFrmRights(TFrm_EspBOMServer.ClassName,'查看');
  }
//本体入库清单
 { actBtlkqd.Visible:= mdlData.CheckFrmRights(TFrm_Btlkqd.ClassName,'查看');
  actBtthop.Visible:= mdlData.CheckFrmRights(TFrm_Btthop.ClassName,'查看');
  }


  for i:=0 to grpBar.GroupCount-1 do with grpBar.groups[i] as TRzGroup do
  begin
    Flag:=False;
    for j:=0 to items.Count-1 do
    begin
      Flag:=Items[j].visible;
      if Flag then break;
    end;
    visible:=Flag;
  end;
end;

procedure TFrm_WorkMain.LogoDestroy(Sender: TObject);
begin
 InitAction;
end;

procedure TFrm_WorkMain.actGJDJExecute(Sender: TObject);
begin
 { TODO : 骨架单价事务 }
// v

end;

procedure TFrm_WorkMain.ActpwdExecute(Sender: TObject);
begin
  Application.CreateForm(TFrm_Edit_pwd,Frm_Edit_pwd);
  Frm_Edit_pwd.Caption :='密码修改';
  Frm_Edit_pwd.ShowModal;
  Frm_Edit_pwd.Free;

end;

procedure TFrm_WorkMain.ActStuffOpExecute(Sender: TObject);
begin
//  ShowModule(TFrm_StuffOp,True,'编辑');
end;

procedure TFrm_WorkMain.TB_7Click(Sender: TObject);
begin
  frReport.DesignReport;
end;

procedure TFrm_WorkMain.ActLogExecute(Sender: TObject);
var
 frm:TForm;
 msg:string;
 i : Integer;
begin
   i:=0;
   while i<application.ComponentCount do begin
    if not (application.Components[i] is TForm)
     then begin
      inc(i);
      continue;
     end;
    frm:=application.Components[i] as TForm;
    if frm.ClassName=ClassName then begin
     inc(i);
     continue;
    end;
    msg:=format('窗口[%s]尚未关闭,你确定要注销吗？'#13#10'  选是,该窗口将被强行关闭!',[frm.Caption]);
    if not ShowMsg(msg,'提示')then exit;
    try
      frm.Free;
    finally
      ;
    end;
   end;
   //========清理当前活动窗口==================

   //WriteEvent('注销');
   Application.CreateForm(TFrm_logo, Frm_logo);
   //显示登录窗口
   Frm_logo.showmodal;
   frm_logo.free ;
   InitAction;

end;

procedure TFrm_WorkMain.ActrightsExecute(Sender: TObject);
begin
  ShowModule(TFrm_rights,True,'编辑');
end;

procedure TFrm_WorkMain.ActProductPartsExecute(Sender: TObject);
begin
  ShowModule(TFrm_ProductParts,True,'编辑');
end;

procedure TFrm_WorkMain.ActDesignBOMPickupExecute(Sender: TObject);
begin
  ShowModule(TFrm_DesignBOMPickup,True,'编辑');
end;

procedure TFrm_WorkMain.ActItem_1Execute(Sender: TObject);
begin
  ShowModule(TFrm_Item,True,'编辑');
end;

procedure TFrm_WorkMain.ActItemListExecute(Sender: TObject);
begin
  ShowModule(TFrm_ItemList,True,'编辑');
end;

procedure TFrm_WorkMain.ActBOMServerExecute(Sender: TObject);
begin
  ShowModule(TFrm_BOMServer,True,'编辑');
end;

procedure TFrm_WorkMain.ActGeneralExecute(Sender: TObject);
begin
  ShowModule(TFrm_General,True,'编辑');

end;

procedure TFrm_WorkMain.ActDesignBOMExecute(Sender: TObject);
begin
  ShowModule(TFrm_DesignBOM,True,'编辑');
end;

procedure TFrm_WorkMain.ActGeneralPickupExecute(Sender: TObject);
begin
  ShowModule(TFrm_GeneralPickup,True,'编辑');
end;

procedure TFrm_WorkMain.ActDesignBOMPickExecute(Sender: TObject);
begin
   ShowModule(TFrm_DesignBOMPick,True,'编辑');
end;

procedure TFrm_WorkMain.ActPartsSortExecute(Sender: TObject);
begin
   ShowModule(TFrm_PartsSort,True,'编辑');
end;

procedure TFrm_WorkMain.ActPartsClassExecute(Sender: TObject);
begin
   ShowModule(TFrm_PartsClass,True,'编辑');
end;

procedure TFrm_WorkMain.FreeAutoUpg;
var
 Upg:TauAutoUpgrader;
begin
 if not Assigned(AutoUpg)then exit;
 Upg:=AutoUpg;
 Upg.Owner.RemoveComponent(autoUpg);
 if Upg.Busy
  then Upg.Abort;
 FreeAndNil(Upg);
end;

function TFrm_WorkMain.AutoUpgInfoFile:string;
begin
   result:='192.168.111.5:8081/WorkManage/'
    +ChangeFileExt(ExtractFileName(Application.ExeName),'.inf');
end;

procedure TFrm_WorkMain.AutoUpgrade;
begin
   if FUpgraded then begin
    FreeAutoUpg;
    exit;
   end;
   autoUpg.VersionControl:=byNumber;
   autoUpg.VersionDateAutoSet:=true;
   autoUpg.InfoFileURL:=AutoUpgInfoFile;
   autoUpg.VersionNumber:=GetFileVersion(Application.ExeName);
   autoUpg.checkupdate;
end;

function TFrm_WorkMain.GetFileVersion(FileName: string): string;
var
  InfoSize, Wnd: DWORD;
  VerBuf: Pointer;
  szName: array[0..255] of Char;
  Value: Pointer;
  Len: UINT;
  TransString:string;
begin
  InfoSize := GetFileVersionInfoSize(PChar(FileName), Wnd);
  if InfoSize <> 0 then
  begin
    GetMem(VerBuf, InfoSize);
    try
      if GetFileVersionInfo(PChar(FileName),Wnd,InfoSize,VerBuf) then
      begin
        Value :=nil;
        VerQueryValue(VerBuf, '\VarFileInfo\Translation', Value, Len);
        if Value <> nil then
          TransString := IntToHex(MakeLong(HiWord(Longint(Value^)), LoWord(Longint(Value^))), 8);
        Result := '';
        StrPCopy(szName, '\StringFileInfo\'+Transstring+'\FileVersion');
//^^^^^^^此处换成ProductVersion得到的是"产品版本"
        if VerQueryValue(VerBuf, szName, Value, Len) then
        Result := StrPas(PChar(Value));
      end;
    finally
      FreeMem(VerBuf);
    end;
  end;
end;

procedure TFrm_WorkMain.AutoUpgAfterRestart(Sender: TObject);
begin
  FUpgraded:=true;
  FreeAutoUpg;
end;

procedure TFrm_WorkMain.AutoUpgNoUpdateAvailable(Sender: TObject);
begin
  Application.CreateForm(TFrm_Logo, Frm_Logo);
  Frm_logo.ShowModal;
  frm_logo.free;
  FreeAutoUpg;
end;

procedure TFrm_WorkMain.AutoUpgNoInfoFile(Sender: TObject);
begin
  showmessage(format('请与管理员联系,检查升级配置文件[%s]是否有效!',[AutoUpgInfoFile]));
  FreeAutoUpg;
end;

procedure TFrm_WorkMain.AutoUpgDoOwnCloseAppMethod(Sender: TObject);
begin
  OnCloseQuery:=nil;
  Close;
end;

procedure TFrm_WorkMain.AutoUpgHostUnreachable(Sender: TObject; const URL,
  Hostname: String);
begin
  showmessage(format('请与管理员联系,检查服务器[%s]是否存在并且可以访问,'
  +'    或检查URL:[%s]是否正确!',[HostName,URL]));
  if URL=AutoUpgInfoFile
   then FreeAutoUpg;
end;

procedure TFrm_WorkMain.grpViewItems4Click(Sender: TObject);
begin
   self.Close ;
end;

procedure TFrm_WorkMain.TB_exitClick(Sender: TObject);
begin
  Self.Close ;
end;

procedure TFrm_WorkMain.TB_ReportClick(Sender: TObject);
begin
  frReport.DesignReport;
end;

procedure TFrm_WorkMain.ActAgentItemExecute(Sender: TObject);
begin
  ShowModule(TFrm_AgentItem,True,'编辑');
end;

procedure TFrm_WorkMain.ActBalancePartsExecute(Sender: TObject);
begin
  ShowModule(TFrm_BalanceParts,True,'编辑');

end;

procedure TFrm_WorkMain.ActWorkPriceExecute(Sender: TObject);
begin
  ShowModule(TFrm_WorkPrice,True,'编辑');
end;

procedure TFrm_WorkMain.ActBalancePriceExecute(Sender: TObject);
begin
  ShowModule(TFrm_BalancePrice,True,'编辑');
end;

procedure TFrm_WorkMain.ActAgentBalanceExecute(Sender: TObject);
begin
  ShowModule(TFrm_AgentBalance,True,'编辑');
end;

procedure TFrm_WorkMain.ActWorkItemExecute(Sender: TObject);
begin
  ShowModule(TFrm_WorkItem,True,'编辑');

end;

procedure TFrm_WorkMain.ActStockInExecute(Sender: TObject);
begin
  ShowModule(TFrm_StockIn,True,'编辑');
end;

procedure TFrm_WorkMain.ActAgentBalanceQryExecute(Sender: TObject);
begin
  ShowModule(TFrm_AgentBalanceQry,True,'编辑');
end;

procedure TFrm_WorkMain.ActLKDDBalanceItemExecute(Sender: TObject);
begin
  ShowModule(TFrm_LKDDBalanceItem,True,'编辑');
end;

procedure TFrm_WorkMain.actFileItemExecute(Sender: TObject);
begin
  ShowModule(TFrm_FileItem,True,'编辑');
end;

procedure TFrm_WorkMain.ActTechProductPartsExecute(Sender: TObject);
begin
  ShowModule(TFrm_TechProductParts,True,'编辑');
end;

procedure TFrm_WorkMain.ActTechItemExecute(Sender: TObject);
begin
  ShowModule(TFrm_TechItem,True,'编辑');
end;

procedure TFrm_WorkMain.ActTechItemListExecute(Sender: TObject);
begin
  ShowModule(TFrm_TechItemList,True,'编辑');
end;

procedure TFrm_WorkMain.ActPackExecute(Sender: TObject);
begin
  ShowModule(TFrm_Pack,True,'编辑');
end;

procedure TFrm_WorkMain.ActConverseExecute(Sender: TObject);
begin
  ShowModule(TFrm_Converse,True,'编辑');
end;

procedure TFrm_WorkMain.ActStockPartsExecute(Sender: TObject);
begin
  ShowModule(TFrm_StockParts,True,'编辑');
end;

procedure TFrm_WorkMain.ActSysTemUserExecute(Sender: TObject);
begin
  ShowModule(TFrm_SysTemUser,True,'编辑');
end;

end.

