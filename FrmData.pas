unit FrmData;

interface

uses
  SysUtils, Classes, ADODB,Windows,Registry, DB,Common;

type
  TmdlData = class(TDataModule)
    conn: TADOConnection;
    qry: TADOQuery;
    procedure connBeforeConnect(Sender: TObject);
  private
    fDataBase,fServer:string;
    fRoleName,fRolePwd:string;
    function GetRootKey: HKey;
    procedure InitReg;
    function ReadFunc(ProcName:string;ParamNames:array of string;
    ParamTypes:array of TFieldType;ParamValues:array of variant): variant;
    function ReadProc(ProcName:string;Names:array of string;
    dTypes:array of TFieldType;var Values:array of variant;
    Directs:array of TParameterDirection):bool;

  protected
    function AddParam(params:TParameters;ft:TFieldType;
              Name:string;value:variant;direct:TParameterDirection=pdInput):TParameter;

  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    property RootKey:HKey read GetRootKey;
    property Server:string read fServer;
    property DataBase:string read fDataBase;
    property RoleName:string read fRoleName;
    property RolePwd:string read fRolePwd;

    function ReadConnStr:string;


    function OpenProc(ProcName:string;ParamNames:array of string;
     ParamTypes:array of TFieldType;ParamValues:array of variant;var ret:variant):TDataSet;
    function NewQry(SQL:string;Tables:array of const):TADOQuery;

    function FindUser(Num:string):bool;//查找用户
    function AddUser(num,ssbm,mc,pwd,zjhm,sex:string;roles:integer):bool;//新增用户
    function Updateuser(num,ssbm,mc,pwd,zjhm,sex:string;roles:integer):bool;
    function CheckRole(role:Integer):bool;
    function Checkrights(mdlName:string;Rights:string='查看'):boolean;
    function CheckFrmRights(mdlName:string;Rights:string='查看'):boolean;
    function PermissionCheckRights(mdlName:string;Rights:string='查看'):boolean;

    //权限检测:检测所需要的权限
    //mdlName:模块的类名
    //Rights:要求的权限
  end;

const
 { DEFAULTROLE='LkInfo';
  DEFAULTROLEPWD='D1l0k@16!46';
  DEFAULTDB='DesignBOM';
  DEFAULTSVR='192.168.111.111';
  }
 { DEFAULTROLE='sa';
  DEFAULTROLEPWD='2233815';
  DEFAULTDB='DesignBOM';
  DEFAULTSVR='192.168.111.99';
 }

{  DEFAULTROLE='sa';
  DEFAULTROLEPWD='Cy2237551';
  DEFAULTDB='DesignBOM';
  DEFAULTSVR='192.170.22.252';
 }

  DEFAULTROLE='sa';
  DEFAULTROLEPWD='Lk05972237551@';
  DEFAULTDB='DesignBOM';
  DEFAULTSVR='192.168.111.111';


var
  mdlData: TmdlData;

implementation

{$R *.dfm}
{ TData }
uses Forms,SETUP,FrmMessage, FrmMain;

const
 sp_setapprole='sp_setapprole';

function TmdlData.CheckRole(role:Integer):bool;
begin
 result:=role and USERROLES =role;
end;

//Checkrights
//权限检测2:检测部件所需要的权限
//mdlName:模块的类名
//Rights:当前部件要求的权限

function TmdlData.Checkrights(mdlName:string;Rights:string):boolean;
const
 sqlStr='select admin,account,storer,buyer,teller from %s where mdlName=:mdlName';
var
 qry:TADOQuery;
 tmpRights:integer;
begin
 qry:=TADoQuery.Create(application);
 mdlName:=trim(mdlName);
 if mdlName='' then begin result:=false;exit;end;
 try
  qry.Connection:=conn;
  qry.SQL.Text:=format(sqlStr,[RightsTable]);
  qry.Parameters.FindParam('mdlName').value:=mdlName;
  qry.Open;
  result:=qry.RecordCount=1;
  if not result then exit;
  qry.First;
  tmpRights:=0;
  if(USERROLES and rlAdmin=rlAdmin) then tmpRights:=tmpRights or qry['admin'];
  if(USERROLES and rlAccount=rlAccount) then tmpRights:=tmpRights or qry['account'];
  if(USERROLES and rlStorer=rlStorer) then tmpRights:=tmpRights or qry['Storer'];
  if(USERROLES and rlBuyer=rlBuyer) then tmpRights:=tmpRights or qry['Buyer'];
  if(USERROLES and rlTeller=rlTeller) then tmpRights:=tmpRights or qry['Teller'];

  if Rights='查看' then result:=tmpRights and rsBrow=rsBrow
   else if Rights='增加' then result:=tmpRights and rsAdd=rsAdd
    else if Rights='编辑' then result:=tmpRights and rsEdit=rsEdit
     else if Rights='删除' then result:=tmpRights and rsDelete=rsDelete
      else if Rights='打印' then result:=tmpRights and rsPrint=rsPrint
      // else if Rights='导出' then result:=tmpRights and rsPrint=rsPrint
        else result:=false;
 finally
  qry.free;
 end;
end;

//陈岩调试
function TmdlData.CheckFrmRights(mdlName:string;Rights:string):boolean;
var
 qry:TADOQuery;
begin
  qry:=TAdoQuery.Create(qry);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.SQL.Text:='Select App,Edit,Del,Qry,Prin,sh,Out,Txd,Rxd,Submit,FCheck,Audit,PushDown,Accept,Feedback from Frmrights where FPermission=:FPermission and mdlName=:mdlName';
  If UserName='系统管理员' then
  begin
    result:=True;
    exit;
  end;
  mdlName:=trim(mdlName);
  If mdlName='' then
  begin
    result:=False;
    Exit;
  end;

  try

   If qry.Active then qry.close;
   qry.Parameters.FindParam('mdlName').value:=mdlName;
   qry.Parameters.FindParam('FPermission').value:=UserFPermission;
   qry.Open;
   result:=qry.RecordCount=1;
   if not result then exit;
   qry.First;

   if Rights='查看' then result:=qry.FieldByName('Qry').Value
     else if Rights='新增' then result:=qry.FieldByName('App').Value
       else if Rights='修改' then result:=qry.FieldByName('Edit').Value
         else if Rights='删除' then result:=qry.FieldByName('Del').Value
           else if Rights='打印' then result:=qry.FieldByName('Prin').Value
             else if Rights='导出' then result:=qry.FieldByName('Out').Value
               else if Rights='提交' then result:=qry.FieldByName('Submit').Value
                 else if Rights='校对' then result:=qry.FieldByName('FCheck').Value
                   else if Rights='审核' then result:=qry.FieldByName('Audit').Value
                     else if Rights='下推' then result:=qry.FieldByName('PushDown').Value
                       else if Rights='接收' then result:=qry.FieldByName('Accept').Value
                         else if Rights='反馈' then result:=qry.FieldByName('Feedback').Value

   finally
     ;
  end;

end;
//20161127
function TmdlData.PermissionCheckRights(mdlName:string;Rights:string):boolean;
var
 qry:TADOQuery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.SQL.Text:='Select distinct NumID,FCheckFrm,FCheckRights from V_PermissionCheckNum '
               +'where NumID=:NumID and FCheckFrm=:FCheckFrm and FCheckRights=:FCheckRights';
  If UserName='系统管理员' then
  begin
    result:=True;
    exit;
  end;
  mdlName:=trim(mdlName);
  If mdlName='' then
  begin
    result:=False;
    Exit;
  end;

  try
    If qry.Active then qry.close;
    qry.Parameters.FindParam('NumID').value:=UserNumID;
    qry.Parameters.FindParam('FCheckFrm').value:=mdlName;
    qry.Parameters.FindParam('FCheckRights').value:=Rights;
    qry.Open;
    result:=qry.RecordCount=1;
    if not result then exit;
    qry.First;
  finally
    ;
  end;

end;



constructor TmdlData.Create(AOwner: TComponent);
begin
  inherited create(Aowner);
  InitReg;
end;

function TmdlData.GetRootKey: HKey;
begin
 result:=HKEY_LOCAL_MACHINE;
end;

procedure TmdlData.InitReg;
var
 reg:TRegInfo;
begin
  reg:=TRegInfo.Create;
  try
   if Reg.CoName='' then
   begin // 如果注册表中没有信息则创建初始化信息
     reg.Free;
     with TFrm_Setup.Create(application)do//打开注册窗口
     begin
      sb_stop.Visible :=true;
      Caption :=Caption +'（初始化设置）';
      showmodal;
      free;
     end;
     reg:=TRegInfo.Create;
   end;
   //Read DataBase
   try
    fDataBase:=reg.DbName;
    if (fDataBase='【系统默认】')or(fDataBase='')
     then fDataBase:=DEFAULTDB;
   except
    fDataBase:=DEFAULTDB;
   end;
   //Read Server
   try
    fServer:=reg.DbSvr;
    if(fServer='【系统默认】')or(fServer='')then fServer:=DEFAULTSVR;
   except
    fServer:=DEFAULTSVR;
   end;
   //Read RoleName
   try
    fRoleName:=reg.AppRoleName;
    if (fRoleName='【系统默认】')or(fRoleName='')
     then fRoleName:=DEFAULTROLE;
   except
    fRoleName:=DEFAULTROLE;
   end;
   //Read Role Password
   try
    fRolePwd:=reg.AppRolePwd;
    if (fRolePwd='【系统默认】')
     then fRolePwd:=DEFAULTROLEPWD;
   except
    fRolePwd:=DEFAULTROLEPWD;
   end;

  except
   Application.MessageBox('初始化错误，系统将终止运行，请重新尝试打开本程序。'
                     +#13+#10+'如果依然出现本信息，请与人企管星际软件园联系。','错误',MB_OK or MB_ICONERROR);
   Application.Terminate;
  end;
end;

function TmdlData.ReadConnStr: string;
const
  SS='Provider=SQLOLEDB.1;Password=%s;Persist Security Info=True;User ID=%s;Initial Catalog=%s;Data Source=%s';
begin
  result:=format(ss,[DEFAULTROLEPWD,DEFAULTROLE,DataBase,Server]);
end;

procedure TmdlData.connBeforeConnect(Sender: TObject);
begin
  Conn.ConnectionString:=ReadConnStr;
end;

function TmdlData.OpenProc(ProcName:string;ParamNames:array of string;
     ParamTypes:array of TFieldType;ParamValues:array of variant;var ret:variant):TDataSet;
var
 proc:TADOStoredProc;
 pRet:TParameter;
 i : Integer;
begin
 try
  proc:=TADOStoredProc.Create(self);
  proc.Connection:=conn;
  proc.ProcedureName:=ProcName;
  proc.Prepared:=true;
  proc.Parameters.Clear;
  pRet:=proc.Parameters.AddParameter;
  pRet.Direction:=pdReturnValue;
  pRet.Name:='@RETURN_VALUE';
  pRet.DataType:=ftVariant;
  for i:=low(ParamNames) to High(ParamNames) do
   AddParam(proc.Parameters,ParamTypes[i],ParamNames[i],ParamValues[i]);
  proc.Open;
  ret:=pRet.Value;
  result:=proc;
 except
  ret:=-1;
  result:=nil;
 end;
end;

function TmdlData.ReadProc(ProcName:string;Names:array of string;
     dTypes:array of TFieldType;var Values:array of variant;
     Directs:array of TParameterDirection
     ):bool;
var
 proc:TADOStoredProc;
 pRet:TParameter;
 i : Integer;
 Params:array of TParameter;
begin
 try
  proc:=TADOStoredProc.Create(self);
  proc.Connection:=conn;
  proc.ProcedureName:=ProcName;
  proc.Prepared:=true;
  proc.Parameters.Clear;
  pRet:=AddParam(proc.Parameters,ftVariant,'@RETURN_VALUE','',pdReturnValue);
  
  setlength(Params,Length(Names));
  for i:=low(Names) to High(Names) do
   Params[i]:=AddParam(proc.Parameters,dTypes[i],Names[i],Values[i],Directs[i]);
  proc.ExecProc;
  result:=pRet.Value=0;
  if result then
   for i:=low(params) to high(params) do
    if (params[i].Direction=pdOutput)or(params[i].Direction=pdInputOutput)
     then values[i]:=params[i].Value;
 except
  result:=false;
 end;
end;

function TmdlData.ReadFunc(ProcName:string;ParamNames:array of string;
     ParamTypes:array of TFieldType;ParamValues:array of variant):variant;
var
 proc:TADOStoredProc;
 pRet:TParameter;
 i : Integer;
begin
 try
  proc:=TADOStoredProc.Create(self);
  proc.Connection:=conn;
  proc.ProcedureName:=ProcName;
  proc.Prepared:=true;
  proc.Parameters.Clear;
  pRet:=AddParam(proc.Parameters,ftVariant,'@RETURN_VALUE','',pdReturnValue);

  for i:=low(ParamNames) to High(ParamNames) do
   AddParam(proc.Parameters,ParamTypes[i],ParamNames[i],ParamValues[i]);
  proc.ExecProc;
  result:=pRet.Value;
 except
  result:=-1;
 end;
end;

function TmdlData.AddParam(params:TParameters;ft:TFieldType;
              Name:string;value:variant;direct:TParameterDirection):TParameter;
var
 param:TParameter;
begin
 param:=params.AddParameter;
 param.DataType:=ft;
 if ft=ftstring
  then param.Size:=255;
 param.Name:=name;
 param.Direction:=direct;
 if (param.Direction<>pdOutput)and(param.Direction<>pdReturnValue)
  then param.Value:=value;
 result:=Param;
end;

function TmdlData.AddUser(num,ssbm,mc,pwd,zjhm,sex:string;roles:integer): bool;
const
 sqlstr1='insert into %s (num,ssbm,roles,mc,sex,pwd,zjhm)'#13#10;
 sqlStr2='values(:num,:ssbm,:roles,:mc,:sex,:pwd,:zjhm)';
var
 qry: TADOQuery;
begin
 qry:=TADOQuery.Create(self);
 try
  result:=false;
  qry.Connection:=conn;
  qry.SQL.Text:=format(sqlStr1+sqlStr2,[UserTable]);
  qry.Parameters.FindParam('num').value:=num;
  qry.Parameters.FindParam('ssbm').value:=ssbm;
  qry.Parameters.FindParam('roles').value:=roles;
  qry.Parameters.FindParam('mc').value:=mc;
  qry.Parameters.FindParam('sex').value:=sex;
  qry.Parameters.FindParam('pwd').value:=pwd;
  qry.Parameters.FindParam('zjhm').value:=zjhm;
  result:=qry.execsql=1
 finally
  qry.free;
 end;
end;

function TmdlData.FindUser(Num: string): bool;
const
 sqlstr='select num from %s where num=:num';
var
 qry: TADOQuery;
begin
 qry:=TADOQuery.Create(self);
 try
  result:=false;
  qry.Connection:=conn;
  qry.SQL.Text:=format(sqlStr,[UserTable]);
  qry.Parameters.FindParam('num').value:=num;
  qry.Open;
  result:=qry.RecordCount=1;
 finally
  qry.free;
 end;
end;

function TmdlData.Updateuser(num,ssbm,mc,pwd,zjhm,sex:string;roles:integer): bool;
const
 sqlstr1='update %s set ssbm=:ssbm,roles=:roles,'#13#10;
 sqlStr2='mc=:mc,sex=:sex,pwd=:pwd,zjhm=:zjhm where num=:num'#13#10;
var
 qry: TADOQuery;
begin
 qry:=TADOQuery.Create(self);
 try
  result:=false;
  qry.Connection:=conn;
  qry.SQL.Text:=format(sqlStr1+sqlStr2,[UserTable]);
  qry.Parameters.FindParam('num').value:=num;
  qry.Parameters.FindParam('ssbm').value:=ssbm;
  qry.Parameters.FindParam('roles').value:=roles;
  qry.Parameters.FindParam('mc').value:=mc;
  qry.Parameters.FindParam('sex').value:=sex;
  qry.Parameters.FindParam('pwd').value:=pwd;
  qry.Parameters.FindParam('zjhm').value:=zjhm;
  result:=qry.execsql=1
 finally
  qry.free;
 end;
end;

function TmdlData.NewQry(SQL:string;Tables:array of const): TADOQuery;
var
  qry:TADOQuery;
begin
  qry:=TADoquery.Create(application);
  qry.Connection:=conn;
  try
    qry.SQL.Text:=Format(SQL,Tables);
    qry.ExecSQL;
    qry.Open;
    result:=qry;
  except
    result:=nil;
  end;
end;




end.
