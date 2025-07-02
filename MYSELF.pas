//商场管理系统单机版Ver 2.0  源程序
//本版本开始设计于2002年5月初
//作者：肖扬
//本系统除了第三方控件或源程序外，所有代码均为作者本人独立完成
//如果你引用了本程序中的源代码，希望你能保留本信息
//如果你对本程序有何建议，请与作者联系
//联系方法：thinknet@china.com
//特别感谢：《Delphi 之葵花宝典2.7》、大富翁论坛，以及本程序中曾经（或正在）引用
//    或借鉴过的源程序代码的作者，对未保留原作者信息的源程序的作者表示歉意！
//如果本程序中的源代码侵犯了您的权益，请与作者联系，将立即删除

//本系统中的源程序只供您研究、开发个人软件或免费软件,
//任何商业使用均需经本系统作者同意！！！

//自定义单元
unit MYSELF;

interface
   uses Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, ComCtrls, ToolWin, Buttons, ImgList, ExtCtrls, jpeg, StdCtrls,ShellAPI,
  DBTables;
  function rmb(nn:real):string;
  function GetPyIndexChar(hzchar:string):char;
  function getstringpy(sourcestr:string):string;
  function Getfilever():string;
  function Fieldautoturn(SS:string):string;
  function Nowindex():string;
  function Msgbox(Handle:integer;Text,Caption:String;flag:integer):integer;
  function Checkrights(S_sourcerights:string;S_checkrights:string):boolean;//权限检测
  function DaysInMonth(MYdate:TDate):Integer;    //统计任意月份的天数

const
   Infmsg0001='数据保存成功！';
   Infmsg0002='数据删除成功！';
   Infmsg0003='数据修改成功！';
   Infmsg0004='数据保存失败！请检查后重新保存。';
   Infmsg0005='检测到有数据窗口正外于打开状态！';

   Askmsg0001='数据已修改，是否保存？';
   Askmsg0002='确定要保存以上数据内容？';
   Askmsg0003='是否要继续？';

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
implementation

//返加人民币的中文数值
function RMB(NN:real):string;
var
  HZ,NS,NW,NA,N1,N2:string;
  LA,X,Nk:integer;
begin
 if NN>9999999999999.99 then
 begin
  MessageDlg('金额溢出。',mtError,[mbOk], 0);
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

function Checkrights(S_sourcerights:string;S_checkrights:string):boolean;//权限检测
begin
   S_checkrights:=trim(S_checkrights);
   if length(S_sourcerights)<>10 then
      S_sourcerights:='0000000000';
   if S_checkrights='查看' then
   begin
      if S_sourcerights[1]='1' then
         result:=true
      else
         result:=false;
   end
   else if S_checkrights='增加' then
   begin
      if S_sourcerights[2]='1' then
         result:=true
      else
         result:=false;
   end
   else if S_checkrights='编辑' then
   begin
      if S_sourcerights[3]='1' then
         result:=true
      else
         result:=false;
   end
   else if S_checkrights='删除' then
   begin
      if S_sourcerights[4]='1' then
         result:=true
      else
         result:=false;
   end
   else if S_checkrights='高级' then
   begin
      if S_sourcerights[5]='1' then
         result:=true
      else
         result:=false;
   end
   else if S_checkrights='报表打印' then
   begin
      if S_sourcerights[6]='1' then
         result:=true
      else
         result:=false;
   end
   else if S_checkrights='打印预览' then
   begin
      if S_sourcerights[7]='1' then
         result:=true
      else
         result:=false;
   end
   else if S_checkrights='系统设置' then
   begin
      if S_sourcerights[8]='1' then
         result:=true
      else
         result:=false;
   end
   else
      result:=false;
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

end.

