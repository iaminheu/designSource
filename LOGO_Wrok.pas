unit LOGO_Wrok;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRMBASSDIALOGS, ComCtrls, ToolWin, ExtCtrls,registry,
  StdCtrls,Common,DB,ADODB,cxLookAndFeelPainters, cxButtons, cxControls, cxContainer, cxEdit,
  cxTextEdit,FrmData, MenuBar, auHTTP, auAutoUpgrader;

type
  TFrm_Logo = class(TFrm_bassDialogs)
    Image1: TImage;
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    L_name: TLabel;
    qry: TADOQuery;
    E_ID: TcxTextEdit;
    E_Password: TcxTextEdit;
    ADOQuery: TADOQuery;
    procedure CB_USERNAMEChange(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure OKBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure E_PasswordKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure E_IDKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure E_IDChange(Sender: TObject);
    procedure E_IDExit(Sender: TObject);
  private
    B_halt:bool;
    I_logo:integer;
    { Private declarations }
    function OpenQuery(num:string=''):bool;
  public
    { Public declarations }
  end;

var
  Frm_Logo: TFrm_Logo;

implementation

uses FRMMESSAGE, FrmWorkMain, FrmMain;

{$R *.dfm}

procedure TFrm_Logo.CB_USERNAMEChange(Sender: TObject);
begin
  inherited;
   E_password.SetFocus ;
end;

procedure TFrm_Logo.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
var
   S_temppass :string;
 function GetUserRolesName:string;
 var
  role:integer;
 begin
   if qry.active then qry.close;
   qry.sql.text:=format('select en,cn,code from %s',[RolesTable]);
   try
    qry.Open;
    qry.First;
    result:='';
    while not qry.eof do
    begin
     role:=qry['CODE'];
     if (USERROLES and role)=role
      then result:=result+format('[%s]',[qry['cn']]);
     qry.Next;
    end;
   except
    result:='';
   end;
    if Length(Result)>0 then setlength(Result,Length(Result)-1);
    USERROLESNAME:=RESULT;
 end;
begin
  inherited;
   if b_halt then
   begin
      qry.free;
      application.Terminate  ;                                          
      exit;
   end else b_halt:=true;
   if (Length(Trim(E_id.Text))=0)or(L_name.Caption='未知用户') then //用户名为空
   begin
      ShowMsg(Errormsg0002+'0002','错误',false);
      E_id.SetFocus ;
      canclose:=false;
      exit;
   end;
   if OpenQuery(TRIM(E_ID.Text))then begin
    qry.First;
    UserName:=qry['MC'];
    UserRoles:=qry['ROLES'];
    UserSsbm:=qry['SSBM'];
    S_temppass:=qry['PWD'];
   end
    else setLength(S_temppass,0);

   if S_temppass=E_password.text then
   begin

    frm_WorkMain.stbVerInfo.Caption:='操作员：【'+USERNAME+'】 权限：〖'+UserFPermission+'〗';
   //Frm_Main.stbVerInfo.Caption:='操作员：【'+USERNAME+'】 权限：〖'+UserFPermission+'〗';

    WriteEvent('登录');
    qry.Free ;
    canclose:=true;
    exit;

   end;
   //用户名与密码不符
   inc(I_logo);
   if I_logo>=3 then begin
    qry.Close;
    qry.Free;
   end;
   if I_logo>=3 then begin
    ShowMsg('您的尝试已超过 3 次，系统将停止运行！','错误',false);
    application.Terminate ;
   end else begin
     ShowMsg('用户名与密码不符，请检查后重新输入。'+#13+#13
            +'你还有 '+inttostr(3-I_logo)+' 次机会！','错误',false);
     e_password.SetFocus ;
     e_password.SelectAll ;
     canclose:=false;
     exit;
    end;
end;

procedure TFrm_Logo.OKBtnClick(Sender: TObject);
var
 qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Insert into T_Login(FlogType,Num,FLogInDate) '
                 +'values(:FlogType,:Num,:FLogInDate)';
    qry.Parameters.FindParam('FlogType').Value:='登录';
    qry.Parameters.FindParam('Num').Value:=UserNum;
    qry.Parameters.FindParam('FLogInDate').Value:=Now();
    qry.ExecSQL;
  finally
     ;
  end;

  b_halt:=false;
  self.Close ;
end;

procedure TFrm_Logo.FormCreate(Sender: TObject);
begin
  inherited;
   self.Caption :=application.Title + ' - ';
   self.Caption :=self.Caption +'用户登录';
   I_logo:=0;
   B_halt:=true;
   OnDestroy:=Frm_WorkMain.LogoDestroy;
   OpenQuery;
end;

procedure TFrm_Logo.E_PasswordKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   if key=27 then
   begin
      cancelbtnclick(sender);
      exit;
   end;
   if key=13 then okbtn.OnClick(self);
end;

procedure TFrm_Logo.FormShow(Sender: TObject);
begin
  inherited;
  E_ID.SetFocus ;
end;

procedure TFrm_Logo.E_IDKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   if key=27 then
   begin
      cancelbtnclick(sender);
      exit;
   end;
   if (key=13) or (key=40) then { 判断是按执行键}
   Begin
      key:=0;
      perform(WM_NEXTDLGCTL,0,0);{移动到下一个控件}
   end;
end;

function TFrm_Logo.OpenQuery(num: string): bool;
const
  selStr='SELECT Num,Mc,Pwd,Roles,Ssbm,FPermission FROM %s';
  selByNum='SELECT Num,Mc,Pwd,Roles,Ssbm,FPermission FROM %s where num=:num';
  ErrMsg1='数据库打开错误，可能指定的系统数据库文件不存在！'#13#10;
  ErrMsg2='系统将终止运行，请重新尝试打开本程序。'#13#10;
  ErrMsg3='如果依然出现本信息，请与%s联系。'#13#10;
var
   reg:TRegistry;
begin
  inherited;
  if qry.Active then qry.Close;
  num:=trim(num);
  if Length(num)=0 then
   qry.SQL.text:=format(selStr,[UserTable])
  else begin
   qry.SQL.text:=format(selByNum,[UserTable]);
   qry.Parameters.FindParam('num').Value:=num;
  end;
  try
    qry.open;
    result:=qry.RecordCount=1;
  except
    {$ifndef DEBUG}if frm_face.Showing  then frm_face.Destroy ;{$endif}
    ShowMsg(Format(ErrMsg1+ErrMsg2+ErrMsg3,[AUTHOR]),'错误',false);
    reg:=TRegistry.Create;
    Reg.RootKey:=RootKey;
    try
     reg.DeleteKey(S_RegTree);
    finally
     reg.CloseKey ;
     reg.free;
    end;
    application.Terminate;
    result:=false;
  end;
end;

procedure TFrm_Logo.E_IDChange(Sender: TObject);
begin
  inherited;
  if not qry.Active then OpenQuery;
  if qry.Locate('Num',Trim(E_ID.text),[loCaseInsensitive])then begin
    UserName:=qry['MC'];
    UserSsbm:=qry['SSBM'];
    UserFPermission:=qry['FPermission'];
  //  UserFDepartmentID:=qry['FDepartmentID'];
  //  UserFDepartmentName:=qry['FDepartmentName'];
    L_name.Caption := UserName+'/'+UserFDepartmentName+'/'+UserFPermission;
  end
  else
    L_name.Caption :='未知用户';
end;

procedure TFrm_Logo.E_IDExit(Sender: TObject);
begin
  inherited;
  with ADOQuery do
  begin
    Close;
    SQL.Clear ;
    SQL.Text:='Select GW,FPermission,FDepartmentID,FDepartmentNumber,FDepartmentName,FDepartmentNum,FK3ID from V_SystemUser where Num=:Num';
    Parameters[0].Value:=Trim(E_ID.Text);
    Open;
    If RecordCount=1 then begin
      USERGW:=Trim(FieldByname('GW').AsString);
      UserFPermission:= Trim(FieldByname('FPermission').AsString);
      UserFDepartmentID:= StrToInt(Trim(FieldByname('FDepartmentID').AsString));
      UserFDepartmentName:= Trim(FieldByname('FDepartmentName').AsString);
      UserFDepartmentNumber:= Trim(FieldByname('FDepartmentNumber').AsString);
      UserFDepartmentNum:= Trim(FieldByname('FDepartmentNum').AsString);
      L_name.Caption := UserName+'/'+UserFDepartmentName+'/'+UserFPermission;
      UserFK3ID:=FieldByname('FK3ID').AsInteger;
    end
    else
      USERGW:='';
  end;
  USERNUM:=Trim(E_ID.Text);
end;

end.
