unit Common;

interface

uses Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
     DB, dxmdaset,cxGridDBTableView, ADODB,cxGrid, cxExportGrid4Link,
     Menus, ComCtrls, ToolWin, Buttons, ImgList, ExtCtrls, jpeg, StdCtrls,ShellAPI;

type
   // 树型显示
   PTree = ^TTree;
   TTree = record
     ID :String;
     ParentID :String;
     FNumber,FNumber1,FNumber2,FNumber3,FNumber4,FNumber5:String;
     FParentNumber,FFullNumber :string;
     Caption :string;
     th :string;
     Flag :integer;
     Isleaf :integer;
     Status:integer;
     ListNum :integer;
     FProductID :integer;
     IsAudit:integer;//审核
   end;

const
   AUTHOR='星际软件园';
   COPYRIGHT='本软件由%s制作 版权所有 copy right 2005'; //%s:作者
   MAXRECCOUNT=10;//每张领料单或入库单最大条目
   //各种表、函数过程名称
   UserTable='[T_systemuser]';//用户表
   RolesTable='Roles';      //角色表
   RightsTable='Rights';    //权限表
   FrmRightsTable='frmRights';    //权限表陈岩

   //================权限集==================
   rlDeny=0;        //禁止
   rlAdmin=1;       //系统管理员
   rlAccount=2;     //结算员
   rlStorer=4;      //成本员
   rlTeller=8;      //检验员
   rlBuyer=16;      //入库人

   rsBrow=1;        //查看
   rsAdd=2;         //增加
   rsEdit=4;        //编辑
   rsDelete=8;      //删除
   rsPrint=16;      //打印

   cNoLoadFlag = 0;      // 未加载
   cLoadFlag   = 1;      // 已加载

   Infmsg0001='数据保存成功！';
   Infmsg0002='数据删除成功！';
   Infmsg0003='数据修改成功！';
   Infmsg0004='数据保存失败！请检查后重新保存。';
   Infmsg0005='请先关闭打开的数据窗口！';
   Infmsg0006='无记录可删除！';

   Askmsg0001='数据已修改，是否保存？';
   Askmsg0002='确定要保存以上数据内容？';
   Askmsg0003='是否要继续？';
   Askmsg0004='数据已新增，是否要继续？';

   Warning0001='警    告：删除数据信息可能产生严重的数据丢失现象，请不要在此删除数据！';
   Warning0002='          删除数据操作将不可恢复，确定要删除本记录吗？';
   Warning0003='再次警告：为了保证数据库内数据信息的完整性，请不要在此删除数据！';

   Errormsg0001='数据库打开错误，请与系统管理员联系。'+#13+#13+'错误代码：';
   Errormsg0002='关键内容（字段）不能为空。'+#13+#13+'错误代码：';
   Errormsg0003='关键内容（字段）已存在。'+#13+#13+'错误代码：';
   Errormsg0004='数据库更新失败，请与系统管理员联系。'+#13+#13+'错误代码：';
   Errormsg0005='数据库删除错误，请与系统管理员联系。'+#13+#13+'错误代码：';
   Errormsg0006='你没有足够的权限使用本功能，请与系统管理员联系。'+#13+#13+'错误代码：';
   Errormsg0007='管理员信息不可删除。'+#13+#13+'错误代码：';
   Errormsg0008='没有输入有效的数据记录，请重新输入！';
   Errormsg0009='没有检测到商品的库存记录，请重新输入！';
   Errormsg0010='检测到商品的库存数量小于出货数量，请重新输入！' ;
   Errormsg0011='打印机打开错误，打印不能完成。请检查系统是否安装默认打印机！';
   Errormsg0012='日期输入错误，请重新输入！'+#13+#13+'错误代码：';
   deta=0.00001;//极小值

  extExcel=0;
  extHTML=1;
  extXML=2;
  extText=3;

  function rmb(nn:real):string;
  function GetPyIndexChar(hzchar:string):char;
  function getstringpy(sourcestr:string):string;
  function Getfilever():string;
  function Fieldautoturn(SS:string):string;
  function Nowindex():string;
  function Msgbox(Handle:integer;Text,Caption:String;flag:integer):integer;

  function DaysInMonth(MYdate:TDate):Integer;    //统计任意月份的天数
  function ShowMsg(value,caption:string;HasYesNo:bool=true):bool;

  function GetReportPath(FileName:string): string;//获取报表路径
  function S_RegTree:string;
  function LOGFILENAME:string;//日志文件名
  function AppFileName:string;//应用程序名
  function cxGvColumn(cxGv:TcxGridDBTableView;Mdata:TdxMemData): string;
  function cxGvColumnqry(cxGv:TcxGridDBTableView;qry:TADOQuery): string;
  function cxGvAutoQry(cxGv:TcxGridDBTableView;qry:TADOQuery): string;
  function cxGvAutoMdata(cxGv:TcxGridDBTableView;Mdata:TdxMemData): string;
  function cxGvAutoProc(cxGv:TcxGridDBTableView;proc:TADOStoredProc): string;

  function DBF_To_SQL(p_Str_MachineName : String;p_Str_DataBaseName : String;p_Str_UserName : String;p_Str_Password : String): Boolean;
//  function DBF_To_SQL(p_Str_MachineName : String;p_Str_DataBaseName : String;p_Str_UserName : String;p_Str_Password : String;p_StringList_FileNameAndPath : TStringList;p_ProgressBar : TProgressBar ): Boolean;
  function TreeVeiwList(Qry:TADOquery;MyTreeView:TTreeView;MyDS:String):Boolean;

  function TreeVeiwListID(Qry:TADOquery;MyTreeView:TTreeView;MyDS:String;Mywhere:String;MyID:Integer):Boolean;
  function TreeVeiwListNumber(qry:TADOQuery;MyTreeView:TTreeView;MyDS:String;likeNum:String):Boolean;
  function TreeVeiwListWhere(qry:TADOQuery;MyTreeView:TTreeView;MyDS:String;WhereStr:String):Boolean;

  function TreeVeiwListUserID(qry:TADOQuery;MyTreeView:TTreeView;MyDS:String;likeID:Integer):Boolean;
  function TreeVeiwListUserIDFNumber(qry:TADOQuery;MyTreeView:TTreeView;MyDS:String;likeNum:String;likeID:Integer):Boolean;

  function MyItemList(qry:TADOQuery;Mdata:TdxMemData;
                     MyDS:String;LikeFNumber:String;ListItemFNumber:String;
                     OrderName:String):Boolean;
  function MyItemListwhere(qry:TADOQuery;Mdata:TdxMemData;
                     MyDS:String;LikeFNumber:String;ListItemFNumber:String;
                     WhereStr:String;OrderName:String):Boolean;
  function MyItemListFieldWhere(qry:TADOQuery;Mdata:TdxMemData;
                     MyField:String;MyDS:String;LikeFNumber:String;ListItemFNumber:String;
                     WhereStr:String;OrderName:String):Boolean;
  function MyItemListID(qry:TADOQuery;Mdata:TdxMemData;
                     MyDS:String;WhereStr:String;OrderName:String):Boolean;

  function cxGvFilter(cxGv:TcxGridDBTableView;IsFilter:Boolean):string;   //过滤
  function cxGvEdit(cxGv:TcxGridDBTableView;IsEdit:Boolean):string;     //编辑
  function cxGvSort(cxGv:TcxGridDBTableView;IsSort:Boolean):string;     //排序
  function cxGvgroup(cxGv:TcxGridDBTableView;IsGroup:Boolean):string;   //分组


  function GridData(AGrid: TcxGrid; const ExtType: Integer;
                          AExpand, ASaveAll: Bool): bool;
  function ToExcel(AGrid: TcxGrid; AExpand, ASaveAll: Bool): bool;
  function ToHTML(AGrid: TcxGrid; AExpand, ASaveAll: Bool): bool;
  function ToText(AGrid: TcxGrid; AExpand, ASaveAll: Bool): bool;
  function ToXML(AGrid: TcxGrid; AExpand, ASaveAll: Bool): bool;


var
    S_name:string;       //公司名称
    S_username:string;   //公司联系人
    S_cotel:string;      //公司电话
    S_address:string;    //公司地址
    S_autosave:bool;   //1-自动保存，0或其它-手工保存
    S_savedays:Integer;   //自动保存天数
    I_countdate:integer;   //默认结算日期
    USERROLES:Integer;    //用户所属角色集
    USERROLESNAME:String; //权限名
    USERNAME:string;      //操作员
    USERSSBM:string;      //用户所属部门
    USERGW :string;       //岗位
    UserNum:string;      //操作员代号
    UserNumID:Integer;      //操作员代号ID

    UserFDepartmentNum:string;   //部门编码
    UserFPermission:string;      //操作员权限组
    UserFDepartmentID:Integer;   //部门ID
    UserFDepartmentName:string;      //部门名称
    UserFDepartmentNumber:String;  //部门编码
    UserFK3ID: integer; //K3ID
    UserFAgentID,UserFAgentDepartmentID:Integer;   //外协用户ID
    UserFDepartmentsort:Integer;   //部门类别 ，1、事业部 2、子公司

    ListItemFNumber,ListItemFNumber1,ListItemFNumber2,ListItemFNumber3,ListItemFNumber4,ListItemFNumber5,ListItemFNumber6,ListItemFNumber7:String;  //树代码
    ListFNumber_DBOM,ListFNumber_MBOM,ListFNumber_SBOM,ListFNumber_MList,ListFNumber_SList,ListFNumber_Pack,ListFNumber_WItem,ListFNumber_MTList:String;  //树代码
    P_Isleaf,P_Isleaf_DBOM,P_Isleaf_SBOM,P_Isleaf_MBOM,P_Isleaf_MList,P_Isleaf_SList,P_Isleaf_CList,P_Isleaf_Pack,P_Isleaf_WList,P_Isleaf_BList,P_Isleaf_MTList:integer;
    P_th_DBOM,P_th_SBOM,P_th_MBOM,P_th_MList,P_th_SList,P_th_Pack,P_th_MTList:String;

    P_List_DBOM,P_List_SBOM,P_List_MBOM,P_List_MList,P_List_SList,P_List_CList,P_List_Pack:String;



    P_th,P_th1,P_th2,P_th3:String;   //图号
    P_FWorkItemNum:String;   //任务单号
    P_FWorkItemID: integer;
    P_cxGV:TcxGridDBTableView;   //cxGV
    P_cxGrid:TcxGrid;  //cxGrid
    P_IscxGV,P_IsEdit,P_IsFilter,P_IsSort,P_IsGroup:boolean;
    title1:String;  //报表标题
    P_i:boolean;   //设置按键
    P_state:integer;  //修改0   新增 1
    P_uIP,P_GetMacAddress,P_uName,P_WinUserName:String;
    GV,Gr,Gm,Mn:string;//右健菜单

implementation

uses FrmSelect, FrmMain;
 //, FrmWorkMain
//应用程序名
function AppFileName:string;
var
 Path:string;
 Len: Integer;
begin
 Path:=ExtractFileName(Application.ExeName);
 Len:=Length(ExtractFileExt(Path));
 SetLength(Path,Length(Path)-Len);
 Result:=Path;
end;

//返加人民币的中文数值
function RMB(NN:real):string;
var
  HZ,NS,NW,NA,N1,N2:string;
  LA,X,Nk:integer;
begin
 if NN>9999999999999.99 then
 begin
  ShowMsg('金额溢出。','错误',false);
  HZ:='';
  Result:=HZ;
  exit;
 end;
 if NN=0 then
 begin
  HZ:='零元';
  result:=HZ;
  exit;
 end;
 NS:='零壹贰叁肆伍陆柒捌玖';
 NW:='分角元拾佰仟万拾佰仟亿拾佰仟万';
 NA:=FloatToStr(NN*100);
 LA:=length(NA);
 X:=1;
 HZ:='';
 while X<=LA do
 begin
 NK:=Ord(NA[x])-Ord('0');
 N1:=Copy(NS,NK*2+1,2);
 N2:=Copy(NW,LA*2+1-X*2,2);
 if (NK=0) AND ((N2='亿') OR( N2='万') OR( N2='元'))then
 begin
  if copy(HZ,Length(HZ)-1,2)='零' then
   HZ:=copy(HZ,1,length(HZ)-2);
  if copy(HZ,Length(HZ)-1,2)='亿' then
   if N2='元' then
   begin
    N1:=N2;
    N2:='零';
   end
   else
    N2:=''
  else
  begin
   N1:=N2;
   N2:='零';
  end
 end
 else if NK=0 then
      begin
       if copy(HZ,length(HZ)-1,2)='零' then
        N1:='';
       if N2='分' then
       begin
        if copy(HZ,length(HZ)-1,2)='零' then
         HZ:=copy(HZ,1,length(HZ)-2)+'整'
        else
         HZ:=HZ+'整';
        N1:='';
       end;
       N2:='';
      end;
  HZ:=HZ+N1+N2;
  X:=X+1
 end;
 Result:=HZ;
end;

//返回单个汉字的拼音首字母
function GetPyIndexChar(hzchar:string):char;
begin
   case word(hzchar[1]) shl 8 +word(hzchar[2]) of
      $B0A1..$B0D0 : RESULT :='A';
      $B0D1..$B2C0 : RESULT :='B';
      $B2C1..$B4F2 : RESULT :='C';
      $B4F3..$B6E9 : RESULT :='D';
      $B6EA..$B7A1 : RESULT :='E';
      $B7A2..$B8C0 : RESULT :='F';
      $B8C1..$B9FD : RESULT :='G';
      $B9FE..$BBF6 : RESULT :='H';
      $BBF7..$BFA5 : RESULT :='J';
      $BFA6..$C0AB : RESULT :='K';
      $C0AC..$C2E7 : RESULT :='L';
      $C2E8..$C4C2 : RESULT :='M';
      $C4C3..$C5B5 : RESULT :='N';
      $C5B6..$C5BD : RESULT :='O';
      $C5BE..$C6D9 : RESULT :='P';
      $C6DA..$C8BA : RESULT :='Q';
      $C8BB..$C8F5 : RESULT :='R';
      $C8F6..$CBF9 : RESULT :='S';
      $CBFA..$CDD9 : RESULT :='T';
      $CDDA..$CEF3 : RESULT :='W';
      $CEF4..$D1B8 : RESULT :='X';
      $D1B9..$D4D0 : RESULT :='Y';
      $D4D1..$D7F9 : RESULT :='Z';
   else
      //result :=char(0);
      result :='V';
   end;
end;

//返回汉字串的拼首字母串
function getstringpy(sourcestr:string):string;
var
   I_temp : integer;
   B_temp : bool;
begin
   result:='';
   B_temp:=false;
   for i_temp:=1 to length(sourcestr) do
      begin
         if B_temp then
            B_temp:=false
         else
            begin
            if word(sourcestr[i_temp])<176 then
               result:=result+sourcestr[i_temp]
            else
               begin
                  result:=result+GetPyIndexChar(sourcestr[i_temp]+sourcestr[i_temp+1]);
                  b_temp:=true;
               end;
            end;
      end;
end;

function Getfilever():string;
begin
  result:='1.0.0';
end;

function Fieldautoturn(SS:string):string;
var
   NF:array[1..21] of string;
begin
   //初始化名片字段定义
   NF[1]:='姓名';
   NF[2]:='电话';
   NF[3]:='手机';
   NF[4]:='宅电';
   NF[5]:='邮件';
   NF[6]:='传呼';
   NF[7]:='单位';
   NF[8]:='地址';
   NF[9]:='邮编';
   NF[10]:='住宅';
   NF[11]:='传真';
   NF[12]:='职务';
   NF[13]:='部门';
   NF[14]:='网址';
   NF[15]:='特长';
   NF[16]:='QQ号';
   NF[17]:='生日';
   NF[18]:='性别';
   NF[19]:='血型';
   NF[20]:='星座';
   NF[21]:='备注';

   if  (SS='姓名') or (SS='名称') then
   begin
      result:=NF[1];
      exit;
   end;
   if (SS='电话') or (SS='公司电话') or (SS='联系电话') or (SS='办公电话') then
   begin
      result:=NF[2];
      exit;
   end;
   if (SS='手机') or (SS='移动电脑') or (SS='手持电话') or (SS='行动电话')
      or (SS='大哥大') then
   begin
      result:=NF[3];
      exit;
   end;
   if (SS='宅电') or (SS='家电') or (SS='住宅电话') or (SS='家庭电话') or (SS='其它电话')
      or (SS='保密电话') then
   begin
      result:=NF[4];
      exit;
   end;
   if (SS='邮件') or (uppercase(SS)=Uppercase('Email')) or (Uppercase(SS)=uppercase('E-mail'))
      or (SS='电子邮件') or (SS='电邮') then
   begin
      result:=NF[5];
      exit;
   end;
   if (SS='传呼') or (uppercase(SS)=Uppercase('BB')) or (Uppercase(SS)=uppercase('BP'))
      or (SS='拷机') or (SS='呼机') then
   begin
      result:=NF[6];
      exit;
   end;
   if (SS='单位') or (SS='公司') or (SS='单位名称') or (SS='公司名称') then
   begin
      result:=NF[7];
      exit;
   end;
   if (SS='地址') or (SS='公司地址') or (SS='单位地址') or (SS='邮政地址') or (SS='联系地址') then
   begin
      result:=NF[8];
      exit;
   end;
   if (SS='邮编') or (SS='邮政编码') then
   begin
      result:=NF[9];
      exit;
   end;
   if (SS='住宅') or (SS='家庭') or (SS='家庭地址') or (SS='其他地址') or (SS='其它地址') then
   begin
      result:=NF[10];
      exit;
   end;
   if (SS='传真') or (SS='公司传真') or (SS='单位传真') or (SS='传真号码') then
   begin
      result:=NF[11];
      exit;
   end;
   if (SS='职务') or (SS='头衔') or (SS='称呼') or (SS='称谓') or (SS='职称') then
   begin
      result:=NF[12];
      exit;
   end;
   if (SS='部门') then
   begin
      result:=NF[13];
      exit;
   end;
   if (SS='网址') or (SS='主页') or (SS='网页') or (SS='公司网址') or (SS='公司网页')
      or (SS='公司主页') or (SS='单位网址') or (SS='单位网页') or (SS='单位主页') then
   begin
      result:=NF[14];
      exit;
   end;
   if (SS='特长') or (SS='兴趣') or (SS='特点') or (SS='爱好') or (SS='喜好') or (SS='擅长') then
   begin
      result:=NF[15];
      exit;
   end;
   if (SS='QQ号') or (SS='OICQ号') or (SS='ICQ号') or (SS='网络传呼')
      or (SS='QQ') or (SS='OICQ') or (SS='ICQ') or (SS='网络BB') or (SS='网络BP') then
   begin
      result:=NF[16];
      exit;
   end;
   if (SS='生日') or (SS='出生日期') or (SS='出生年月') or (SS='出生年月日') or (SS='出生时间') then
   begin
      result:=NF[17];
      exit;
   end;
   if (SS='性别') then
   begin
      result:=NF[18];
      exit;
   end;
   if (SS='血型') then
   begin
      result:=NF[19];
      exit;
   end;
   if (SS='星座') then
   begin
      result:=NF[20];
      exit;
   end;
   if (SS='备注') or (SS='其它') or (SS='其他') or (SS='备注信息') or (SS='其它信息')
      or (SS='其他信息') or (SS='备忘') then
   begin
      result:=NF[21];
      exit;
   end;
   result:=SS;

end;

function Nowindex():string;
begin
   result:=formatdatetime('yyyymmdd',date)+'-'+formatdatetime('hhmmss',time)
end;

function DaysInMonth(MYdate:TDate):Integer;
var
   MyMonth,MyYear,MyDay : Word;
   MyDayTable : TDayTable;
   tmpBool : Boolean;
begin
   DecodeDate(MYdate, MyYear, MyMonth, MyDay);
   tmpBool := IsLeapYear(MyYear);
   MyDayTable := MonthDays[tmpBool];
   Result := MyDayTable[MyMonth];
end;

//自定义信息对话框
function Msgbox(Handle:integer;Text,Caption:String;flag:integer):integer;
var
 Msg:TMsgBoxParams;
begin
 Msg.cbSize:=Sizeof(Msg);
 Msg.hwndOwner:=Handle;
 Msg.hInstance:=hinstance;
 Msg.lpszText:=PChar(Text);
 Msg.lpszCaption:=PChar(Caption);
 Msg.dwStyle:=flag+MB_USERICON;
 Msg.lpszIcon:='MAINICON';
 Msg.dwContextHelpId:=1;
 Msg.lpfnMsgBoxCallback:=nil;
 Msg.dwLanguageId:=LANG_NEUTRAL;
 Result:=integer(MessageBoxIndirect(Msg));
end;

function ShowMsg(value,caption:string;HasYesNo:bool):bool;
var
 flag:integer;
begin
 if caption='提示' then flag:=MB_ICONINFORMATION
  else if caption='错误' then flag:=MB_ICONERROR
   else if caption='警告' then flag:=MB_ICONWARNING
    else if caption='异常' then flag:=MB_ICONEXCLAMATION
     else if caption='停止' then flag:=MB_ICONSTOP
      else flag:=MB_ICONQUESTION;
 if HasYesNo then
  result:=Application.MessageBox(PChar(value),pchar(caption),MB_YESNO or flag)=ID_YES
 else begin
  Application.MessageBox(PChar(value),pchar(caption),MB_OK or flag);
  result:=true;
 end;
 if Frm_Main<>nil
  then Frm_Main.ShowMessage(value);
end;

function GetReportPath(FileName:string): string;
var
 path:string;
begin
 path:=ExtractFileDir(Application.ExeName);
 if path[length(path)]='\' then result:=path+FileName
  else result:=format('%s\%s',[path,FileName]);
end;

function S_RegTree:string;
begin
 Result:=Format('\Software\%s\%s',[AUTHOR,AppFileName]);
end;

function LOGFILENAME:string;
const Ext='.Log';
var
 path:string;
 oldExt:string;
begin
 path:=Application.ExeName;
 oldExt:=ExtractFileExt(Application.ExeName);
 result:=StringReplace(path,oldExt,ext,[rfReplaceAll, rfIgnoreCase]);
end;

function cxGvColumn(cxGv:TcxGridDBTableView;Mdata:TdxMemData):string;
Var i,j:Integer;
begin
  for i:=0 to cxGv.ColumnCount-1 do
    cxGv.Columns[i].Visible:=False;

  for i:=0 to Mdata.FieldCount-1 do
  begin
    for j:=0 to cxGv.ColumnCount-1 do
    begin
      If UpperCase(cxGv.Columns[j].DataBinding.FieldName)=UpperCase(Mdata.Fields[i].FieldName) then
         cxGv.Columns[j].Visible:=True;
    end;
  end;
  result:='Ok';
end;

function cxGvColumnqry(cxGv:TcxGridDBTableView;qry:TADOQuery):string;
Var i,j:Integer;
begin
  for i:=0 to cxGv.ColumnCount-1 do
  cxGv.Columns[i].Visible:=False;

  for i:=0 to qry.FieldCount-1 do
  begin
    for j:=0 to cxGv.ColumnCount-1 do
    begin
      If UpperCase(cxGv.Columns[j].DataBinding.FieldName)=UpperCase(qry.Fields[i].FieldName) then
          cxGv.Columns[j].Visible:=True;
    end;
  end;
  result:='Ok';
end;

function cxGvAutoQry(cxGv:TcxGridDBTableView;qry:TADOQuery):string;
Var i:Integer;
begin
  for i:=0 to cxGv.ColumnCount-1 do
    cxGv.Columns[i].Visible:=False;
  for i:=0 to qry.FieldCount-1 do
  begin
    cxgv.CreateColumn.DataBinding.FieldName:=UpperCase(qry.Fields[i].FieldName);
    cxGv.Columns[i].DataBinding.DefaultWidth(True);
    cxGv.Columns[i].FooterAlignmentHorz:=taCenter;
    cxGv.Columns[i].HeaderAlignmentHorz:=taCenter;
    cxGv.Columns[i].HeaderGlyphAlignmentHorz:=taCenter;
  end;
  result:='Ok';
end;

function cxGvAutoMdata(cxGv:TcxGridDBTableView;Mdata:TdxMemData):string;
Var i:Integer;
begin
  for i:=0 to cxGv.ColumnCount-1 do
    cxGv.Columns[i].Visible:=False;
  for i:=0 to Mdata.FieldCount-1 do
  begin
    cxgv.CreateColumn.DataBinding.FieldName:=UpperCase(Mdata.Fields[i].FieldName);
    cxGv.Columns[i].DataBinding.DefaultWidth(True);
    cxGv.Columns[i].FooterAlignmentHorz:=taCenter;
    cxGv.Columns[i].HeaderAlignmentHorz:=taCenter;
    cxGv.Columns[i].HeaderGlyphAlignmentHorz:=taCenter;
  end;
  result:='Ok';
end;

function cxGvAutoProc(cxGv:TcxGridDBTableView;Proc:TADOStoredproc):string;
Var i:Integer;
begin
  for i:=0 to cxGv.ColumnCount-1 do
    cxGv.Columns[i].Visible:=False;
  for i:=0 to Proc.FieldCount-1 do
  begin
    cxgv.CreateColumn.DataBinding.FieldName:=UpperCase(Proc.Fields[i].FieldName);
    cxGv.Columns[i].DataBinding.DefaultWidth(True);
    cxGv.Columns[i].Options.Filtering:=False;
    cxGv.Columns[i].Options.Sorting:=False;
    cxGv.Columns[i].Options.Editing:=False;
    cxGv.Columns[i].Width:=100;
    cxGv.Columns[i].FooterAlignmentHorz:=taCenter;
    cxGv.Columns[i].HeaderAlignmentHorz:=taCenter;
    cxGv.Columns[i].HeaderGlyphAlignmentHorz:=taCenter;
  end;
  result:='Ok';
end;


function cxGvFilter(cxGv:TcxGridDBTableView;IsFilter:Boolean):string;
Var i:Integer;
begin
  for i:=0 to cxGv.ColumnCount-1 do
  If IsFilter then
     cxGv.Columns[i].Options.Filtering:=True
  else
     cxGv.Columns[i].Options.Filtering:=False;
  result:='Ok';
end;

function cxGvEdit(cxGv:TcxGridDBTableView;IsEdit:Boolean):string;
Var i:Integer;
begin
  If IsEdit then
    cxGV.OptionsData.Editing:=True
  else
    cxGV.OptionsData.Editing:=False;

  for i:=0 to cxGv.ColumnCount-1 do
  If IsEdit then
     cxGv.Columns[i].Options.Editing:=True
  else
     cxGv.Columns[i].Options.Editing:=False;
  result:='Ok';
end;


function cxGvSort(cxGv:TcxGridDBTableView;IsSort:Boolean):string;
Var i:Integer;
begin
  for i:=0 to cxGv.ColumnCount-1 do
  If IsSort then
     cxGv.Columns[i].Options.Sorting:=True
  else
     cxGv.Columns[i].Options.Sorting:=False;
  result:='Ok';
end;

function cxGvGroup(cxGv:TcxGridDBTableView;IsGroup:Boolean):string;

begin
  If IsGroup then
     cxGv.OptionsView.GroupByBox:=True
  else
     cxGv.OptionsView.GroupByBox:=False;
  result:='Ok';
end;

function DBF_To_SQL(p_Str_MachineName : String;                 //机器名
                    p_Str_DataBaseName : String;                //数据库名
                    p_Str_UserName : String;                    //用户名
                    p_Str_Password : String                    //用户密码
                    ) : Boolean; //  true  : 操作成功
                                //  false : 操作失败
                  //  p_StringList_FileNameAndPath : TStringList; //文件名和路径列表
                  //  p_ProgressBar : TProgressBar                //进度条
var
  m_ADOConnection : TADOConnection;
//  m_Str_FileNameAndPath : String;
  m_Str_FileName : String;
  m_Str_PathName : String;
  m_StrSQL : String;
//  m_Integer_ItemPos : Integer;
begin
  m_ADOConnection := TADOConnection.Create(nil);
  m_ADOConnection.ConnectionString :=
                                      'Provider=SQLOLEDB.1;' +
                                      'Password=' + p_Str_Password + ';' +
                                      'Persist Security Info=True;' +
                                      'User ID=' + p_Str_UserName + ';' +
                                      'Initial Catalog=' + p_Str_DataBaseName + ';' +
                                      'Data Source=' + p_Str_MachineName;
  m_ADOConnection.LoginPrompt := false;
  try
    //连接数据库服务器
    m_ADOConnection.Connected := true;
  except
    ShowMessage('Boolean_DBF_To_SQLServer()::数据库连接出错！');
    Result := false;
    Exit;
  end;

{  if p_ProgressBar <> nil then
  begin
    p_ProgressBar.Min := 0;
    p_ProgressBar.Max := p_StringList_FileNameAndPath.Count;
  end;
  for m_Integer_ItemPos := 1 to p_StringList_FileNameAndPath.Count do
  begin
}
//    m_Str_FileNameAndPath := p_StringList_FileNameAndPath.Strings[m_Integer_ItemPos - 1];
//    m_Str_FileName := self.String_GetFileNameFromOneFullFileScript(m_Str_FileNameAndPath);
  //  m_Str_FileName := self.String_DeleteExtNameForOneFileName(m_Str_FileName);
  //  m_Str_PathName := self.String_GetFilePathFromOneFullFileScript(m_Str_FileNameAndPath);

    m_StrSQL := 'drop table ' + m_Str_FileName;
    try
      //删除SQLSERVER中对应的原有表（如果有）
      m_ADOConnection.Execute(m_StrSQL);
    except
    end;
    m_StrSQL := 'SELECT * INTO ' + m_Str_FileName +
                ' FROM OpenDataSource(''Microsoft.Jet.OLEDB.4.0'', ' +
                '''Data Source="' + m_Str_PathName + '";User ID=;Password=;Extended properties=dBase 5.0'')...' + m_Str_FileName;
    try
      m_ADOConnection.Execute(m_StrSQL);
    except
      ShowMessage(m_Str_FileName + ' 表 上传出错！');
      Result := false;
      Exit
    end;
 {   if p_ProgressBar <> nil then
    begin
      p_ProgressBar.Position := m_Integer_ItemPos;
    end;
  end;
  }
  Result := true;
end;

function TreeVeiwList(qry:TADOQuery;MyTreeView:TTreeView;MyDS:String):Boolean;
var
  P:PTree;
begin
  Result:=False;
  Try
    MyTreeView.Items.Clear;
    MyTreeView.Items.BeginUpdate;
    qry.close;
    qry.SQL.Text:='Select distinct FNumber, FParentNumber, FNumber, FName,IsLeaf from  '+MyDS
                 +' with(nolock) Where FParentNumber='''' order by FNumber';
    qry.Open;
    while not Qry.Eof do
    begin
      New(P);
      P^.ID := qry.FieldByName('FNumber').AsString;
      P^.ParentID := qry.FieldByName('FParentNumber').AsString;
      P.FNumber:=qry.FieldByName('FNumber').AsString;
      P^.Caption := qry.FieldByName('FName').AsString;
      P^.IsLeaf := qry.FieldByName('IsLeaf').AsInteger;
      P^.Flag := cNoLoadFlag;
      with MyTreeView.Items.AddObject(nil,P.Caption,P) do   // Tree 的节点删除时要释放内存 P
        HasChildren := True ;
      qry.Next;
    end;
    MyTreeView.Items.EndUpdate;
    Result:=True;
  except
    MyTreeView.Items.EndUpdate;
  end;
end;

function TreeVeiwListID(qry:TADOQuery;MyTreeView:TTreeView;MyDS:String;Mywhere:String;MyID:Integer):Boolean;
var
  P:PTree;
begin
  Result:=False;
  Try
    MyTreeView.Items.Clear;
    MyTreeView.Items.BeginUpdate;
    qry.close;
    qry.SQL.Text:='Select FNumber, FParentNumber, FNumber, FName,IsLeaf from  '+MyDS
                 +' with(nolock) Where FParentNumber='''' and FDepartmentID'+Mywhere+IntToStr(MyID)+' order by FNumber';
    qry.Open;
    while not Qry.Eof do
    begin
      New(P);
      P^.ID := qry.FieldByName('FNumber').AsString;
      P^.ParentID := qry.FieldByName('FParentNumber').AsString;
      P.FNumber:=qry.FieldByName('FNumber').AsString;
      P^.Caption := qry.FieldByName('FName').AsString;
      P^.IsLeaf := qry.FieldByName('IsLeaf').AsInteger;
      P^.Flag := cNoLoadFlag;
      with MyTreeView.Items.AddObject(nil,P.Caption,P) do   // Tree 的节点删除时要释放内存 P
        HasChildren := True ;
      qry.Next;
    end;
    MyTreeView.Items.EndUpdate;
    Result:=True;
  except
    MyTreeView.Items.EndUpdate;
  end;
end;

function TreeVeiwListWhere(qry:TADOQuery;MyTreeView:TTreeView;MyDS:String;WhereStr:String):Boolean;
var
  P:PTree;
begin
  Result:=False;
  Try
    MyTreeView.Items.Clear;
    MyTreeView.Items.BeginUpdate;
    qry.close;
    qry.SQL.Text:='Select FNumber, FParentNumber, FNumber, FName,IsLeaf from  '+MyDS
                 +' with(nolock) Where FParentNumber='''' '+WhereStr+' order by FNumber';
    qry.Open;
    while not Qry.Eof do
    begin
      New(P);
      P^.ID := qry.FieldByName('FNumber').AsString;
      P^.ParentID := qry.FieldByName('FParentNumber').AsString;
      P.FNumber:=qry.FieldByName('FNumber').AsString;
     // P.FNumber1:=qry.FieldByName('FNumber').AsString;
      P^.Caption := qry.FieldByName('FName').AsString;
      P^.IsLeaf:=qry.FieldByName('IsLeaf').AsInteger;
      P^.Flag := cNoLoadFlag;
      with MyTreeView.Items.AddObject(nil,P.Caption,P) do   // Tree 的节点删除时要释放内存 P
        HasChildren := True ;
      qry.Next;
    end;
    MyTreeView.Items.EndUpdate;
    Result:=True;
  except
    MyTreeView.Items.EndUpdate;
  end;
end;


function TreeVeiwListNumber(qry:TADOQuery;MyTreeView:TTreeView;MyDS:String;likeNum:String):Boolean;
var
  P:PTree;
begin
  Result:=False;
  Try
    MyTreeView.Items.Clear;
    MyTreeView.Items.BeginUpdate;
    qry.close;
    qry.SQL.Text:='Select FNumber, FParentNumber, FNumber, FName from  '+MyDS
                 +' with(nolock) Where FParentNumber='''' and FDepartmentNumber like '''+likeNum+'%'' order by FNumber';
    qry.Open;
    while not Qry.Eof do
    begin
      New(P);
      P^.ID := qry.FieldByName('FNumber').AsString;
      P^.ParentID := qry.FieldByName('FParentNumber').AsString;
      P.FNumber:=qry.FieldByName('FNumber').AsString;
      P^.Caption := qry.FieldByName('FName').AsString;
      P^.Flag := cNoLoadFlag;
      with MyTreeView.Items.AddObject(nil,P.Caption,P) do   // Tree 的节点删除时要释放内存 P
        HasChildren := True ;
      qry.Next;
    end;
    MyTreeView.Items.EndUpdate;
    Result:=True;
  except
    MyTreeView.Items.EndUpdate;
  end;
end;

function TreeVeiwListUserID(qry:TADOQuery;MyTreeView:TTreeView;MyDS:String;likeID:Integer):Boolean;
var
  P:PTree;
begin
  Result:=False;
  Try
    MyTreeView.Items.Clear;
    MyTreeView.Items.BeginUpdate;
    qry.close;
    qry.SQL.Text:='Select FNumber, FParentNumber, FNumber, FName,Isleaf from  '+MyDS
                 +' with(nolock) Where FParentNumber='''' and FDepartmentID='+IntToStr(likeID)+' order by FNumber';
    qry.Open;
    while not Qry.Eof do
    begin
      New(P);
      P^.ID := qry.FieldByName('FNumber').AsString;
      P^.ParentID := qry.FieldByName('FParentNumber').AsString;
      P.FNumber:=qry.FieldByName('FNumber').AsString;
      P^.Caption := qry.FieldByName('FName').AsString;
      P^.Isleaf := qry.FieldByName('Isleaf').AsInteger;
      P^.Flag := cNoLoadFlag;
      with MyTreeView.Items.AddObject(nil,P.Caption,P) do   // Tree 的节点删除时要释放内存 P
        HasChildren := True ;
      qry.Next;
    end;
    MyTreeView.Items.EndUpdate;
    Result:=True;
  except
    MyTreeView.Items.EndUpdate;
  end;
end;

function TreeVeiwListUserIDFNumber(qry:TADOQuery;MyTreeView:TTreeView;MyDS:String;likeNum:String;likeID:Integer):Boolean;
var
  P:PTree;
begin
  Result:=False;
  Try
    MyTreeView.Items.Clear;
    MyTreeView.Items.BeginUpdate;
    qry.close;
    qry.SQL.Text:='Select FNumber, FParentNumber, FNumber, FName from  '+MyDS
                 +' with(nolock) Where (FParentNumber='''' or FNumber like ''%'+likeNum+'%'') and (FDepartmentID='+IntToStr(likeID)+') order by FNumber';
    qry.Open;
    while not Qry.Eof do
    begin
      New(P);
      P^.ID := qry.FieldByName('FNumber').AsString;
      P^.ParentID := qry.FieldByName('FParentNumber').AsString;
      P.FNumber:=qry.FieldByName('FNumber').AsString;
      P^.Caption := qry.FieldByName('FName').AsString;
      P^.Flag := cNoLoadFlag;
      with MyTreeView.Items.AddObject(nil,P.Caption,P) do   // Tree 的节点删除时要释放内存 P
        HasChildren := True ;
      qry.Next;
    end;
    MyTreeView.Items.EndUpdate;
    Result:=True;
  except
    MyTreeView.Items.EndUpdate;
  end;
end;

function MyItemList(qry:TADOQuery;Mdata:TdxMemData;
                    MyDS:String;LikeFNumber:String;ListItemFNumber:String;
                    OrderName:String):Boolean;
begin
  qry.CommandTimeout:=1000;
  
  Result:=False;
  Try
    If OrderName='' then
       qry.SQL.Text:='Select IsEdit=cast(0 as bit),* from '+MyDS+' with(nolock)  Where substring('+LikeFNumber+',1,len('''+ListItemFNumber+'''))='''+ListItemFNumber+''''
    else
       qry.SQL.Text:='Select IsEdit=cast(0 as bit),* from '+MyDS+' with(nolock)  Where substring('+LikeFNumber+',1,len('''+ListItemFNumber+'''))='''+ListItemFNumber+''' order by '+OrderName;
    qry.Open;
    If qry.recordcount>0 then
    begin
      Mdata.Close;
      MData.CopyFromDataSet(qry);
      Mdata.Open;
      Mdata.First;
    end
    else
      Mdata.Close;
    Result:=True;
  except
    ;
  end;
end;

function MyItemListwhere(qry:TADOQuery;Mdata:TdxMemData;
                    MyDS:String;LikeFNumber:String;ListItemFNumber:String;
                    WhereStr:String;OrderName:String):Boolean;
begin
  qry.CommandTimeout:=1000;
  Result:=False;
  Try
    If OrderName='' then
      qry.SQL.Text:='Select IsEdit=cast(0 as bit),* from '+MyDS+' with(nolock)  Where substring('+LikeFNumber+',1,len('''+ListItemFNumber+'''))='''+ListItemFNumber+''' '+WhereStr
    else
      qry.SQL.Text:='Select IsEdit=cast(0 as bit),* from '+MyDS+' with(nolock) Where substring('+LikeFNumber+',1,len('''+ListItemFNumber+'''))='''+ListItemFNumber+''' '+WhereStr+' order by '+OrderName;
    qry.Open;
    If qry.recordcount>0 then
    begin
      Mdata.Close;
      MData.CopyFromDataSet(qry);
      Mdata.Open;
      Mdata.First;
    end
    else
      Mdata.Close;

    Result:=True;
  except
    ;
  end;
end;

function MyItemListFieldWhere(qry:TADOQuery;Mdata:TdxMemData;
                    MyField:String;MyDS:String;LikeFNumber:String;ListItemFNumber:String;
                    WhereStr:String;OrderName:String):Boolean;
begin
  qry.CommandTimeout:=1000;
  Result:=False;
  Try
    If OrderName='' then
      qry.SQL.Text:='Select IsEdit=cast(0 as bit),'+MyField+' from '+MyDS+' with(nolock) Where substring('+LikeFNumber+',1,len('''+ListItemFNumber+'''))='''+ListItemFNumber+''' '+WhereStr
    else
      qry.SQL.Text:='Select IsEdit=cast(0 as bit),'+MyField+' from '+MyDS+' with(nolock) Where substring('+LikeFNumber+',1,len('''+ListItemFNumber+'''))='''+ListItemFNumber+''' '+WhereStr+' order by '+OrderName;
    qry.Open;
    If qry.recordcount>0 then
    begin
      Mdata.Close;
      MData.CopyFromDataSet(qry);
      Mdata.Open;
      Mdata.First;
    end
    else
      Mdata.Close;

    Result:=True;
  except
    ;
  end;
end;

function MyItemListID(qry:TADOQuery;Mdata:TdxMemData;
                    MyDS:String;WhereStr:String;OrderName:String):Boolean;
begin
  qry.CommandTimeout:=1000;
  Result:=False;
  Try
    If OrderName='' then
      qry.SQL.Text:='Select IsEdit=cast(0 as bit),* from '+MyDS+' with(nolock)  Where '+WhereStr
    else
      qry.SQL.Text:='Select IsEdit=cast(0 as bit),* from '+MyDS+' with(nolock)  Where '+WhereStr+' order by '+OrderName;
    qry.Open;
    If qry.recordcount>0 then
    begin
      Mdata.Close;
      MData.CopyFromDataSet(qry);
      Mdata.Open;
      Mdata.First;
    end
    else
      Mdata.Close;

    Result:=True;
  except
    ;
  end;
end;



function SelSaveFile(var FileName:string;
        const ExtType:Integer;const Caption:string='另存为'): bool;
const
 ExtNames:array[0..3,0..2]of string=(
        ('电子表格|*.xls','*.xls','.xls'),
        ('HTML|*.html','*.html','.html'),
        ('XML|*.xml','*.xml','.xml'),
        ('文本文件|*.txt','*.txt','.txt')
        );
var
  FdlgSave: TSaveDialog;
  iSize : Integer;
  Ext: string;
begin
  FdlgSave:=TSaveDialog.Create(Application);
 try
   FdlgSave.Filter:=ExtNames[ExtType][0];
   FdlgSave.Title:=Caption;
   FdlgSave.DefaultExt:=ExtNames[ExtType][1];
   FdlgSave.InitialDir:=ExtractFilePath(Application.ExeName);
   result:=FdlgSave.Execute;
   if not result then exit;
   FileName:=LowerCase(Fdlgsave.FileName);
   iSize:=Length(ExtNames[ExtType][2]);
   Ext:=Copy(FileName,length(FileName)-iSize+1,iSize);
   if not(Ext=ExtNames[ExtType][2])
    then FileName :=ChangeFileExt(FileName,ExtNames[ExtType][2]);
   if FileExists(FileName) then
      If messagedlg('文件['+FileName+']已存在，是否覆盖原文件？',mtInformation,[mbyes,mbno],0)=mryes
         then result:=true
         else result:=false;
 finally
   fdlgSave.Free;
 end;
end;

function GridData(AGrid: TcxGrid; const ExtType: Integer;
                  AExpand, ASaveAll: Bool): bool;

var
 sFileName:string;
begin
 result:=SelSaveFile(sFileName,ExtType);
 if not Result
  then begin   messagedlg('导出失败！',mtInformation,[mbok],0);exit;end;
 try
  case ExtType of
   extExcel:ExportGrid4ToExcel(sFileName,AGrid,AExpand,ASaveAll);
   extHTML:ExportGrid4ToHtml(sFileName,AGrid,AExpand,ASaveAll);
   extXML:ExportGrid4ToXML(sFileName,AGrid,AExpand,ASaveAll);
   extText:ExportGrid4ToText(sFileName,AGrid,AExpand,ASaveAll,',');
  end;
  messagedlg(format('恭喜你，已成功将数据导出到%s文件中！',[sFileName]),mtInformation,[mbok],0);
 except
  on e:Exception do begin
   messagedlg(format('导出失败，错误信息为%s!',[e.Message]),mtInformation,[mbok],0);
   result:=false;
  end;
 end;
end;



function ToText(AGrid: TcxGrid; AExpand, ASaveAll: Bool): bool;
begin
 result:=GridData(AGrid,extText,AExpand,ASaveAll);
end;

function ToExcel(AGrid: TcxGrid; AExpand, ASaveAll: Bool): bool;
begin
 result:=GridData(AGrid,extExcel,AExpand,ASaveAll);
end;

function ToXML(AGrid: TcxGrid; AExpand, ASaveAll: Bool): bool;
begin
 result:=GridData(AGrid,extXML,AExpand,ASaveAll);
end;

function ToHTML(AGrid: TcxGrid; AExpand, ASaveAll: Bool): bool;
begin
 result:=GridData(AGrid,extHTML,AExpand,ASaveAll);
end;

end.

