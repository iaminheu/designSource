unit Common;

interface

uses Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
     DB, dxmdaset,cxGridDBTableView, ADODB,cxGrid, cxExportGrid4Link,
     Menus, ComCtrls, ToolWin, Buttons, ImgList, ExtCtrls, jpeg, StdCtrls,ShellAPI;

type
   // ������ʾ
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
     IsAudit:integer;//���
   end;

const
   AUTHOR='�Ǽ����԰';
   COPYRIGHT='�������%s���� ��Ȩ���� copy right 2005'; //%s:����
   MAXRECCOUNT=10;//ÿ�����ϵ�����ⵥ�����Ŀ
   //���ֱ�������������
   UserTable='[T_systemuser]';//�û���
   RolesTable='Roles';      //��ɫ��
   RightsTable='Rights';    //Ȩ�ޱ�
   FrmRightsTable='frmRights';    //Ȩ�ޱ����

   //================Ȩ�޼�==================
   rlDeny=0;        //��ֹ
   rlAdmin=1;       //ϵͳ����Ա
   rlAccount=2;     //����Ա
   rlStorer=4;      //�ɱ�Ա
   rlTeller=8;      //����Ա
   rlBuyer=16;      //�����

   rsBrow=1;        //�鿴
   rsAdd=2;         //����
   rsEdit=4;        //�༭
   rsDelete=8;      //ɾ��
   rsPrint=16;      //��ӡ

   cNoLoadFlag = 0;      // δ����
   cLoadFlag   = 1;      // �Ѽ���

   Infmsg0001='���ݱ���ɹ���';
   Infmsg0002='����ɾ���ɹ���';
   Infmsg0003='�����޸ĳɹ���';
   Infmsg0004='���ݱ���ʧ�ܣ���������±��档';
   Infmsg0005='���ȹرմ򿪵����ݴ��ڣ�';
   Infmsg0006='�޼�¼��ɾ����';

   Askmsg0001='�������޸ģ��Ƿ񱣴棿';
   Askmsg0002='ȷ��Ҫ���������������ݣ�';
   Askmsg0003='�Ƿ�Ҫ������';
   Askmsg0004='�������������Ƿ�Ҫ������';

   Warning0001='��    �棺ɾ��������Ϣ���ܲ������ص����ݶ�ʧ�����벻Ҫ�ڴ�ɾ�����ݣ�';
   Warning0002='          ɾ�����ݲ��������ɻָ���ȷ��Ҫɾ������¼��';
   Warning0003='�ٴξ��棺Ϊ�˱�֤���ݿ���������Ϣ�������ԣ��벻Ҫ�ڴ�ɾ�����ݣ�';

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
   deta=0.00001;//��Сֵ

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

  function DaysInMonth(MYdate:TDate):Integer;    //ͳ�������·ݵ�����
  function ShowMsg(value,caption:string;HasYesNo:bool=true):bool;

  function GetReportPath(FileName:string): string;//��ȡ����·��
  function S_RegTree:string;
  function LOGFILENAME:string;//��־�ļ���
  function AppFileName:string;//Ӧ�ó�����
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

  function cxGvFilter(cxGv:TcxGridDBTableView;IsFilter:Boolean):string;   //����
  function cxGvEdit(cxGv:TcxGridDBTableView;IsEdit:Boolean):string;     //�༭
  function cxGvSort(cxGv:TcxGridDBTableView;IsSort:Boolean):string;     //����
  function cxGvgroup(cxGv:TcxGridDBTableView;IsGroup:Boolean):string;   //����


  function GridData(AGrid: TcxGrid; const ExtType: Integer;
                          AExpand, ASaveAll: Bool): bool;
  function ToExcel(AGrid: TcxGrid; AExpand, ASaveAll: Bool): bool;
  function ToHTML(AGrid: TcxGrid; AExpand, ASaveAll: Bool): bool;
  function ToText(AGrid: TcxGrid; AExpand, ASaveAll: Bool): bool;
  function ToXML(AGrid: TcxGrid; AExpand, ASaveAll: Bool): bool;


var
    S_name:string;       //��˾����
    S_username:string;   //��˾��ϵ��
    S_cotel:string;      //��˾�绰
    S_address:string;    //��˾��ַ
    S_autosave:bool;   //1-�Զ����棬0������-�ֹ�����
    S_savedays:Integer;   //�Զ���������
    I_countdate:integer;   //Ĭ�Ͻ�������
    USERROLES:Integer;    //�û�������ɫ��
    USERROLESNAME:String; //Ȩ����
    USERNAME:string;      //����Ա
    USERSSBM:string;      //�û���������
    USERGW :string;       //��λ
    UserNum:string;      //����Ա����
    UserNumID:Integer;      //����Ա����ID

    UserFDepartmentNum:string;   //���ű���
    UserFPermission:string;      //����ԱȨ����
    UserFDepartmentID:Integer;   //����ID
    UserFDepartmentName:string;      //��������
    UserFDepartmentNumber:String;  //���ű���
    UserFK3ID: integer; //K3ID
    UserFAgentID,UserFAgentDepartmentID:Integer;   //��Э�û�ID
    UserFDepartmentsort:Integer;   //������� ��1����ҵ�� 2���ӹ�˾

    ListItemFNumber,ListItemFNumber1,ListItemFNumber2,ListItemFNumber3,ListItemFNumber4,ListItemFNumber5,ListItemFNumber6,ListItemFNumber7:String;  //������
    ListFNumber_DBOM,ListFNumber_MBOM,ListFNumber_SBOM,ListFNumber_MList,ListFNumber_SList,ListFNumber_Pack,ListFNumber_WItem,ListFNumber_MTList:String;  //������
    P_Isleaf,P_Isleaf_DBOM,P_Isleaf_SBOM,P_Isleaf_MBOM,P_Isleaf_MList,P_Isleaf_SList,P_Isleaf_CList,P_Isleaf_Pack,P_Isleaf_WList,P_Isleaf_BList,P_Isleaf_MTList:integer;
    P_th_DBOM,P_th_SBOM,P_th_MBOM,P_th_MList,P_th_SList,P_th_Pack,P_th_MTList:String;

    P_List_DBOM,P_List_SBOM,P_List_MBOM,P_List_MList,P_List_SList,P_List_CList,P_List_Pack:String;



    P_th,P_th1,P_th2,P_th3:String;   //ͼ��
    P_FWorkItemNum:String;   //���񵥺�
    P_FWorkItemID: integer;
    P_cxGV:TcxGridDBTableView;   //cxGV
    P_cxGrid:TcxGrid;  //cxGrid
    P_IscxGV,P_IsEdit,P_IsFilter,P_IsSort,P_IsGroup:boolean;
    title1:String;  //�������
    P_i:boolean;   //���ð���
    P_state:integer;  //�޸�0   ���� 1
    P_uIP,P_GetMacAddress,P_uName,P_WinUserName:String;
    GV,Gr,Gm,Mn:string;//�ҽ��˵�

implementation

uses FrmSelect, FrmMain;
 //, FrmWorkMain
//Ӧ�ó�����
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

//��������ҵ�������ֵ
function RMB(NN:real):string;
var
  HZ,NS,NW,NA,N1,N2:string;
  LA,X,Nk:integer;
begin
 if NN>9999999999999.99 then
 begin
  ShowMsg('��������','����',false);
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

function ShowMsg(value,caption:string;HasYesNo:bool):bool;
var
 flag:integer;
begin
 if caption='��ʾ' then flag:=MB_ICONINFORMATION
  else if caption='����' then flag:=MB_ICONERROR
   else if caption='����' then flag:=MB_ICONWARNING
    else if caption='�쳣' then flag:=MB_ICONEXCLAMATION
     else if caption='ֹͣ' then flag:=MB_ICONSTOP
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

function DBF_To_SQL(p_Str_MachineName : String;                 //������
                    p_Str_DataBaseName : String;                //���ݿ���
                    p_Str_UserName : String;                    //�û���
                    p_Str_Password : String                    //�û�����
                    ) : Boolean; //  true  : �����ɹ�
                                //  false : ����ʧ��
                  //  p_StringList_FileNameAndPath : TStringList; //�ļ�����·���б�
                  //  p_ProgressBar : TProgressBar                //������
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
    //�������ݿ������
    m_ADOConnection.Connected := true;
  except
    ShowMessage('Boolean_DBF_To_SQLServer()::���ݿ����ӳ���');
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
      //ɾ��SQLSERVER�ж�Ӧ��ԭ�б�����У�
      m_ADOConnection.Execute(m_StrSQL);
    except
    end;
    m_StrSQL := 'SELECT * INTO ' + m_Str_FileName +
                ' FROM OpenDataSource(''Microsoft.Jet.OLEDB.4.0'', ' +
                '''Data Source="' + m_Str_PathName + '";User ID=;Password=;Extended properties=dBase 5.0'')...' + m_Str_FileName;
    try
      m_ADOConnection.Execute(m_StrSQL);
    except
      ShowMessage(m_Str_FileName + ' �� �ϴ�����');
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
      with MyTreeView.Items.AddObject(nil,P.Caption,P) do   // Tree �Ľڵ�ɾ��ʱҪ�ͷ��ڴ� P
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
      with MyTreeView.Items.AddObject(nil,P.Caption,P) do   // Tree �Ľڵ�ɾ��ʱҪ�ͷ��ڴ� P
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
      with MyTreeView.Items.AddObject(nil,P.Caption,P) do   // Tree �Ľڵ�ɾ��ʱҪ�ͷ��ڴ� P
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
      with MyTreeView.Items.AddObject(nil,P.Caption,P) do   // Tree �Ľڵ�ɾ��ʱҪ�ͷ��ڴ� P
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
      with MyTreeView.Items.AddObject(nil,P.Caption,P) do   // Tree �Ľڵ�ɾ��ʱҪ�ͷ��ڴ� P
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
      with MyTreeView.Items.AddObject(nil,P.Caption,P) do   // Tree �Ľڵ�ɾ��ʱҪ�ͷ��ڴ� P
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
        const ExtType:Integer;const Caption:string='���Ϊ'): bool;
const
 ExtNames:array[0..3,0..2]of string=(
        ('���ӱ��|*.xls','*.xls','.xls'),
        ('HTML|*.html','*.html','.html'),
        ('XML|*.xml','*.xml','.xml'),
        ('�ı��ļ�|*.txt','*.txt','.txt')
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
      If messagedlg('�ļ�['+FileName+']�Ѵ��ڣ��Ƿ񸲸�ԭ�ļ���',mtInformation,[mbyes,mbno],0)=mryes
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
  then begin   messagedlg('����ʧ�ܣ�',mtInformation,[mbok],0);exit;end;
 try
  case ExtType of
   extExcel:ExportGrid4ToExcel(sFileName,AGrid,AExpand,ASaveAll);
   extHTML:ExportGrid4ToHtml(sFileName,AGrid,AExpand,ASaveAll);
   extXML:ExportGrid4ToXML(sFileName,AGrid,AExpand,ASaveAll);
   extText:ExportGrid4ToText(sFileName,AGrid,AExpand,ASaveAll,',');
  end;
  messagedlg(format('��ϲ�㣬�ѳɹ������ݵ�����%s�ļ��У�',[sFileName]),mtInformation,[mbok],0);
 except
  on e:Exception do begin
   messagedlg(format('����ʧ�ܣ�������ϢΪ%s!',[e.Message]),mtInformation,[mbok],0);
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

