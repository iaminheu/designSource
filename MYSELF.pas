//�̳�����ϵͳ������Ver 2.0  Դ����
//���汾��ʼ�����2002��5�³�
//���ߣ�Ф��
//��ϵͳ���˵������ؼ���Դ�����⣬���д����Ϊ���߱��˶������
//����������˱������е�Դ���룬ϣ�����ܱ�������Ϣ
//�����Ա������кν��飬����������ϵ
//��ϵ������thinknet@china.com
//�ر��л����Delphi ֮��������2.7����������̳���Լ��������������������ڣ�����
//    ��������Դ�����������ߣ���δ����ԭ������Ϣ��Դ��������߱�ʾǸ�⣡
//����������е�Դ�����ַ�������Ȩ�棬����������ϵ��������ɾ��

//��ϵͳ�е�Դ����ֻ�����о����������������������,
//�κ���ҵʹ�þ��辭��ϵͳ����ͬ�⣡����

//�Զ��嵥Ԫ
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
  function Checkrights(S_sourcerights:string;S_checkrights:string):boolean;//Ȩ�޼��
  function DaysInMonth(MYdate:TDate):Integer;    //ͳ�������·ݵ�����

const
   Infmsg0001='���ݱ���ɹ���';
   Infmsg0002='����ɾ���ɹ���';
   Infmsg0003='�����޸ĳɹ���';
   Infmsg0004='���ݱ���ʧ�ܣ���������±��档';
   Infmsg0005='��⵽�����ݴ��������ڴ�״̬��';

   Askmsg0001='�������޸ģ��Ƿ񱣴棿';
   Askmsg0002='ȷ��Ҫ���������������ݣ�';
   Askmsg0003='�Ƿ�Ҫ������';

   Errormsg0001='���ݿ�򿪴�������ϵͳ����Ա��ϵ��'+#13+#13+'������룺';
   Errormsg0002='�ؼ����ݣ��ֶΣ�����Ϊ�ա�'+#13+#13+'������룺';
   Errormsg0003='�ؼ����ݣ��ֶΣ��Ѵ��ڡ�'+#13+#13+'������룺';
   Errormsg0004='���ݿ����ʧ�ܣ�����ϵͳ����Ա��ϵ��'+#13+#13+'������룺';
   Errormsg0005='���ݿ�ɾ����������ϵͳ����Ա��ϵ��'+#13+#13+'������룺';
   Errormsg0006='��û���㹻��Ȩ��ʹ�ñ����ܣ�����ϵͳ����Ա��ϵ��'+#13+#13+'������룺';
   Errormsg0007='����Ա��Ϣ����ɾ����'+#13+#13+'������룺';
   Errormsg0008='û��������Ч�����ݼ�¼�����������룡';
   Errormsg0009='û�м�⵽��Ʒ�Ŀ���¼�����������룡';
   Errormsg0010='��⵽��Ʒ�Ŀ������С�ڳ������������������룡' ;
   Errormsg0011='��ӡ���򿪴��󣬴�ӡ������ɡ�����ϵͳ�Ƿ�װĬ�ϴ�ӡ����';
   Errormsg0012='��������������������룡'+#13+#13+'������룺';
implementation

//��������ҵ�������ֵ
function RMB(NN:real):string;
var
  HZ,NS,NW,NA,N1,N2:string;
  LA,X,Nk:integer;
begin
 if NN>9999999999999.99 then
 begin
  MessageDlg('��������',mtError,[mbOk], 0);
  HZ:='';
  Result:=HZ;
  exit;
 end;
 if NN=0 then
 begin
  HZ:='��Ԫ';
  result:=HZ;
  exit;
 end;
 NS:='��Ҽ��������½��ƾ�';
 NW:='�ֽ�Ԫʰ��Ǫ��ʰ��Ǫ��ʰ��Ǫ��';
 NA:=FloatToStr(NN*100);
 LA:=length(NA);
 X:=1;
 HZ:='';
 while X<=LA do
 begin
 NK:=Ord(NA[x])-Ord('0');
 N1:=Copy(NS,NK*2+1,2);
 N2:=Copy(NW,LA*2+1-X*2,2);
 if (NK=0) AND ((N2='��') OR( N2='��') OR( N2='Ԫ'))then
 begin
  if copy(HZ,Length(HZ)-1,2)='��' then
   HZ:=copy(HZ,1,length(HZ)-2);
  if copy(HZ,Length(HZ)-1,2)='��' then
   if N2='Ԫ' then
   begin
    N1:=N2;
    N2:='��';
   end
   else
    N2:=''
  else
  begin
   N1:=N2;
   N2:='��';
  end
 end
 else if NK=0 then
      begin
       if copy(HZ,length(HZ)-1,2)='��' then
        N1:='';
       if N2='��' then
       begin
        if copy(HZ,length(HZ)-1,2)='��' then
         HZ:=copy(HZ,1,length(HZ)-2)+'��'
        else
         HZ:=HZ+'��';
        N1:='';
       end;
       N2:='';
      end;
  HZ:=HZ+N1+N2;
  X:=X+1
 end;
 Result:=HZ;
end;

//���ص������ֵ�ƴ������ĸ
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

//���غ��ִ���ƴ����ĸ��
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
   //��ʼ����Ƭ�ֶζ���
   NF[1]:='����';
   NF[2]:='�绰';
   NF[3]:='�ֻ�';
   NF[4]:='լ��';
   NF[5]:='�ʼ�';
   NF[6]:='����';
   NF[7]:='��λ';
   NF[8]:='��ַ';
   NF[9]:='�ʱ�';
   NF[10]:='סլ';
   NF[11]:='����';
   NF[12]:='ְ��';
   NF[13]:='����';
   NF[14]:='��ַ';
   NF[15]:='�س�';
   NF[16]:='QQ��';
   NF[17]:='����';
   NF[18]:='�Ա�';
   NF[19]:='Ѫ��';
   NF[20]:='����';
   NF[21]:='��ע';

   if  (SS='����') or (SS='����') then
   begin
      result:=NF[1];
      exit;
   end;
   if (SS='�绰') or (SS='��˾�绰') or (SS='��ϵ�绰') or (SS='�칫�绰') then
   begin
      result:=NF[2];
      exit;
   end;
   if (SS='�ֻ�') or (SS='�ƶ�����') or (SS='�ֳֵ绰') or (SS='�ж��绰')
      or (SS='����') then
   begin
      result:=NF[3];
      exit;
   end;
   if (SS='լ��') or (SS='�ҵ�') or (SS='סլ�绰') or (SS='��ͥ�绰') or (SS='�����绰')
      or (SS='���ܵ绰') then
   begin
      result:=NF[4];
      exit;
   end;
   if (SS='�ʼ�') or (uppercase(SS)=Uppercase('Email')) or (Uppercase(SS)=uppercase('E-mail'))
      or (SS='�����ʼ�') or (SS='����') then
   begin
      result:=NF[5];
      exit;
   end;
   if (SS='����') or (uppercase(SS)=Uppercase('BB')) or (Uppercase(SS)=uppercase('BP'))
      or (SS='����') or (SS='����') then
   begin
      result:=NF[6];
      exit;
   end;
   if (SS='��λ') or (SS='��˾') or (SS='��λ����') or (SS='��˾����') then
   begin
      result:=NF[7];
      exit;
   end;
   if (SS='��ַ') or (SS='��˾��ַ') or (SS='��λ��ַ') or (SS='������ַ') or (SS='��ϵ��ַ') then
   begin
      result:=NF[8];
      exit;
   end;
   if (SS='�ʱ�') or (SS='��������') then
   begin
      result:=NF[9];
      exit;
   end;
   if (SS='סլ') or (SS='��ͥ') or (SS='��ͥ��ַ') or (SS='������ַ') or (SS='������ַ') then
   begin
      result:=NF[10];
      exit;
   end;
   if (SS='����') or (SS='��˾����') or (SS='��λ����') or (SS='�������') then
   begin
      result:=NF[11];
      exit;
   end;
   if (SS='ְ��') or (SS='ͷ��') or (SS='�ƺ�') or (SS='��ν') or (SS='ְ��') then
   begin
      result:=NF[12];
      exit;
   end;
   if (SS='����') then
   begin
      result:=NF[13];
      exit;
   end;
   if (SS='��ַ') or (SS='��ҳ') or (SS='��ҳ') or (SS='��˾��ַ') or (SS='��˾��ҳ')
      or (SS='��˾��ҳ') or (SS='��λ��ַ') or (SS='��λ��ҳ') or (SS='��λ��ҳ') then
   begin
      result:=NF[14];
      exit;
   end;
   if (SS='�س�') or (SS='��Ȥ') or (SS='�ص�') or (SS='����') or (SS='ϲ��') or (SS='�ó�') then
   begin
      result:=NF[15];
      exit;
   end;
   if (SS='QQ��') or (SS='OICQ��') or (SS='ICQ��') or (SS='���紫��')
      or (SS='QQ') or (SS='OICQ') or (SS='ICQ') or (SS='����BB') or (SS='����BP') then
   begin
      result:=NF[16];
      exit;
   end;
   if (SS='����') or (SS='��������') or (SS='��������') or (SS='����������') or (SS='����ʱ��') then
   begin
      result:=NF[17];
      exit;
   end;
   if (SS='�Ա�') then
   begin
      result:=NF[18];
      exit;
   end;
   if (SS='Ѫ��') then
   begin
      result:=NF[19];
      exit;
   end;
   if (SS='����') then
   begin
      result:=NF[20];
      exit;
   end;
   if (SS='��ע') or (SS='����') or (SS='����') or (SS='��ע��Ϣ') or (SS='������Ϣ')
      or (SS='������Ϣ') or (SS='����') then
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

function Checkrights(S_sourcerights:string;S_checkrights:string):boolean;//Ȩ�޼��
begin
   S_checkrights:=trim(S_checkrights);
   if length(S_sourcerights)<>10 then
      S_sourcerights:='0000000000';
   if S_checkrights='�鿴' then
   begin
      if S_sourcerights[1]='1' then
         result:=true
      else
         result:=false;
   end
   else if S_checkrights='����' then
   begin
      if S_sourcerights[2]='1' then
         result:=true
      else
         result:=false;
   end
   else if S_checkrights='�༭' then
   begin
      if S_sourcerights[3]='1' then
         result:=true
      else
         result:=false;
   end
   else if S_checkrights='ɾ��' then
   begin
      if S_sourcerights[4]='1' then
         result:=true
      else
         result:=false;
   end
   else if S_checkrights='�߼�' then
   begin
      if S_sourcerights[5]='1' then
         result:=true
      else
         result:=false;
   end
   else if S_checkrights='�����ӡ' then
   begin
      if S_sourcerights[6]='1' then
         result:=true
      else
         result:=false;
   end
   else if S_checkrights='��ӡԤ��' then
   begin
      if S_sourcerights[7]='1' then
         result:=true
      else
         result:=false;
   end
   else if S_checkrights='ϵͳ����' then
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

//�Զ�����Ϣ�Ի���
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

