unit Setup_Work;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, NEOFORM, ComCtrls, ToolWin, ExtCtrls, StdCtrls,registry,
  Buttons, cxRadioGroup, cxControls, cxContainer, cxEdit,
  cxGroupBox, cxTextEdit, cxMaskEdit, cxSpinEdit, MenuBar;

type
  TRegInfo=class(TRegistry)
  private
    FIsAutoSave: bool;
    FCheckOutDate: integer;
    FUSERROLES: Integer;
    FSaveDays: Integer;
    FUSERSSBM: string;
    FUSERNAME: string;
    FCoName: string;
    FCoUsername: string;
    FCoAddress: string;
    FUSERROLESNAME: String;
    FCoTel: string;
    FDbName: string;
    FAppRolePwd: string;
    FAppRoleName: string;
    FDbSvr: string;
    FIsAutoCheckOut: bool;
    procedure ReadKey;
    procedure SetInteger(const Index, Value: integer);
    procedure SetString(const Index: Integer; const Value: string);    
    procedure SetBool(const Index: Integer; const Value: bool);
  public
    property CoName:string index 0 read FCoName write SetString;      //��˾����
    property CoUsername:string index 1 read FCoUsername write SetString;//��˾��ϵ��
    property CoTel:string index 2 read FCoTel write SetString;      //��˾�绰
    property CoAddress:string index 3 read FCoAddress write SetString;//��˾��ַ
    property IsAutoSave:bool Index 0 read FIsAutoSave  write SetBool;     //1-�Զ����棬0������-�ֹ�����
    property SaveDays:Integer index 0 read FSaveDays write SetInteger;    //�Զ���������
    property IsAutoCheckOut:bool Index 1 read FIsAutoCheckOut write SetBool;//�Զ�����
    property CheckOutDate:integer index 1 read FCheckOutDate write SetInteger;//Ĭ�Ͻ�������
    property USERROLES:Integer read FUSERROLES write FUSERROLES;//�û�������ɫ��
    property USERROLESNAME:String read FUSERROLESNAME write FUSERROLESNAME;//Ȩ����
    property USERNAME:string read FUSERNAME write FUSERNAME;//����Ա
    property USERSSBM:string read FUSERSSBM write FUSERSSBM;//�û���������
    property DbSvr:string index 4 read FDbSvr write SetString;//���ݿ������
    property DbName:string index 5 read FDbName write SetString;//���ݿ���
    property AppRoleName:string index 6 read FAppRoleName write SetString; //Ӧ�ó����ɫ��
    property AppRolePwd:string index 7 read FAppRolePwd write SetString;  //Ӧ�ó����ɫ����
    constructor create;
  end;

  TFrm_setup = class(TzypNeoForm)
    SB_CLOSE: TSpeedButton;
    SB_about: TSpeedButton;
    SB_save: TSpeedButton;
    Bevel_BUTTON: TBevel;
    SB_stop: TSpeedButton;
    cxGroupBox1: TcxGroupBox;
    L_countdate1: TLabel;
    L_countdate: TLabel;
    E_countdate: TcxSpinEdit;
    grpBaseInfo: TcxGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    E_allname: TcxTextEdit;
    E_name: TcxTextEdit;
    E_tel: TcxTextEdit;
    E_address: TcxTextEdit;
    grpSysInfo: TcxGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    LE_DbSvr: TcxTextEdit;
    Le_DBname: TcxTextEdit;
    LE_RoleName: TcxTextEdit;
    LE_RolePwd: TcxTextEdit;
    RB_user: TcxRadioButton;
    RB_auto: TcxRadioButton;
    E_backupdays: TcxSpinEdit;
    L_days: TLabel;
    rgpCheckOutDate: TcxRadioGroup;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SB_saveClick(Sender: TObject);
    procedure E_allnameChange(Sender: TObject);
    procedure SB_CLOSEClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure RB_userClick(Sender: TObject);
    procedure SB_aboutClick(Sender: TObject);
    procedure RB_autoClick(Sender: TObject);
    procedure SB_stopClick(Sender: TObject);
    procedure E_countdateChange(Sender: TObject);
    procedure RB_userdateClick(Sender: TObject);
    procedure E_allnameKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure LE_RolePwdKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    B_save:boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

implementation
uses frmabout, LOGO,FRMDATA,Common, FrmWorkMain, FrmMain;

{$R *.dfm}

procedure TFrm_setup.FormCreate(Sender: TObject);
var
  TheBitmap : TBitmap;
begin
  inherited;
  self.Caption :=application.Title + ' - ϵͳ����';
  TheBitmap := TBitmap.Create;
  TheBitmap.Height := application.icon.Height+2;
  TheBitmap.Width := application.icon.Width+2;
  TheBitmap.Canvas.Draw(0, 0, application.Icon);
  sb_about.Glyph :=thebitmap;
  B_save:=true;
end;

procedure TFrm_setup.FormShow(Sender: TObject);
var
   reg:TRegInfo;
begin
   inherited;
   reg:=TRegInfo.Create;
   try
        E_allname.text:=reg.CoName;
        e_name.text:=reg.CoUsername;
        E_tel.text:=reg.CoTel;
        E_address.text:=reg.CoAddress;
        LE_DbSvr.Text :=reg.DbSvr;
        LE_DbName.Text :=reg.DbName;
        LE_RoleName.Text:=reg.AppRoleName;
        LE_RolePwd.Text:=reg.AppRolePwd;
        rb_auto.Checked :=reg.IsAutoSave;
        e_backupdays.text:=IntToStr(Reg.SaveDays);
        E_countdate.Value:=reg.CheckOutDate;
        if reg.IsAutoCheckOut
         then rgpCheckOutDate.ItemIndex:=1
         else rgpCheckOutDate.ItemIndex:=0;
     finally
        Reg.Free;
     end;
   sb_save.Enabled :=false;
end;

procedure TFrm_setup.SB_saveClick(Sender: TObject);
var
   reg:TRegInfo;
begin
   inherited;
   B_save:=false;
   if not ShowMsg('ȷ��Ҫ������������������','��ʾ') then
    begin
     B_save:=true;
     exit;
    end;
   if trim(e_allname.Text)='' then
   begin
     ShowMsg('��˾���Ʋ���Ϊ�գ�������������롣','����',false);
     e_allname.SetFocus ;
     exit;
   end;
   if trim(e_name.Text)='' then
   begin
      ShowMsg('��������������Ϊ�գ�������������롣','����',false);
     e_name.SetFocus ;
     exit;
   end;
   reg:=TRegInfo.Create;
     try
        reg.CoUsername:=trim(E_name.text);
        Reg.coname:=trim(E_allname.text);
        Reg.cotel:=trim(E_tel.text);
        Reg.CoAddress:=trim(E_address.text);
        Reg.DbSvr:=trim(LE_DbSvr.text);
        Reg.DbName:=trim(LE_DbName.text);
        Reg.AppRoleName:=trim(LE_RoleName.Text);
        reg.AppRolePwd:=trim(LE_RolePwd.Text);
        reg.IsAutoSave:=rb_auto.Checked;
        reg.SaveDays:=e_backupdays.Value;
        with rgpCheckOutDate do
         reg.IsAutoCheckOut:=properties.items[ItemIndex].value;
        reg.CheckOutDate:=E_countdate.Value;
        sb_save.Enabled :=false;
        S_name:=trim(E_allname.text);
        S_username:=trim(E_name.text);
        S_cotel:=trim(E_tel.text);
        S_address:=trim(E_address.text);
        S_autosave:=reg.IsAutoSave;
        S_savedays:=E_backupdays.value;
        IF reg.IsAutoCheckOut
         then I_countdate:=0
          else I_countdate:=E_countdate.Value;
        ShowMsg('ϵͳ����������Ϣ������ϣ�','��ʾ',false);
        B_save:=true;
     finally
        Reg.Free;
     end;
     self.Hide ;
     try
      if Frm_WorkMain<>nil then begin
        Frm_WorkMain.Caption :=Application.Title+' - '+S_name+ '��'+mdlData.Server+'��';
      end;
     finally
      self.Close ;
     end;
end;

procedure TFrm_setup.E_allnameChange(Sender: TObject);
begin
  inherited;
  sb_save.Enabled :=true;
end;

procedure TFrm_setup.SB_CLOSEClick(Sender: TObject);
begin
  inherited;
  self.Close ;
end;

procedure TFrm_setup.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  inherited;
  if sb_save.Enabled then
    sb_save.Click ;
  if not B_save then canclose:=false; 
end;

procedure TFrm_setup.RB_userClick(Sender: TObject);
begin
  inherited;
   E_backupdays.Enabled :=false;
   L_days.Enabled :=false;
   sb_save.Enabled :=true;
end;

procedure TFrm_setup.SB_aboutClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFrm_about, Frm_about);
  Frm_about.showmodal;
  Frm_about.free;
end;

procedure TFrm_setup.RB_autoClick(Sender: TObject);
begin
  inherited;
   E_backupdays.Enabled :=true;
   L_days.Enabled :=true;
   sb_save.Enabled :=true;
end;

procedure TFrm_setup.SB_stopClick(Sender: TObject);
var
   reg:TRegistry;
begin
  inherited;
   reg:=TRegistry.Create;
   try
      Reg.RootKey:=ROOTKEY;
      reg.DeleteKey(S_RegTree);
   finally
      reg.CloseKey ;
      reg.free;
   end;
   halt;
end;

procedure TFrm_setup.E_countdateChange(Sender: TObject);
begin
  inherited;
   L_countdate.Caption :='����������'+inttostr(E_countdate.Value+1)
                  +'�գ�������'+inttostr(E_countdate.Value)+'��';
   sb_save.Enabled :=true;
end;

procedure TFrm_setup.RB_userdateClick(Sender: TObject);
begin
  with rgpCheckOutDate do begin
   L_countdate1.Enabled :=Properties.Items[ItemIndex].Value;
   E_countdate.Enabled :=L_countdate1.Enabled;
   L_countdate.Enabled :=L_countdate1.Enabled;
  end;
   sb_save.Enabled :=true;
end;

procedure TFrm_setup.E_allnameKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   if (key=13) or (key=40) then { �ж��ǰ�ִ�м�}
   Begin
      key:=0;
      perform(WM_NEXTDLGCTL,0,0);{�ƶ�����һ���ؼ�}
   end;
end;

procedure TFrm_setup.LE_RolePwdKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key=13) or (key=40) then { �ж��ǰ�ִ�м�}
   Begin
      if InputBox('ȷ������','���ٴ���������:','')<>LE_RolePwd.Text then
       begin
        MessageDlg('���벻һ��,����������',mtError,[mbOk],0);
        exit;
       end;
      key:=0;
      sb_save.Enabled :=true;
      perform(WM_NEXTDLGCTL,0,0);{�ƶ�����һ���ؼ�}
   end;
end;

{ TRegInfo }

constructor TRegInfo.create;
const DEFAULTROOTKEY=HKEY_LOCAL_MACHINE;  
begin
  inherited;
  RootKey:=DEFAULTROOTKEY;
  ReadKey;
  fCoName:=ReadString('Coname');
  FCoUsername:=ReadString('CoUsername');
  FCoTel:=ReadString('Cotel');
  FCoAddress:=ReadString('CoAddress');
  FDbSvr:=ReadString('DbSvr');
  FDbName:=ReadString('DbName');
  FAppRoleName:=ReadString('AppRoleName');
  FAppRolePwd:=ReadString('AppRolePwd');
  if DbSvr='' then DbSvr:='��ϵͳĬ�ϡ�';
  if DbName='' then DbName:='��ϵͳĬ�ϡ�';
  if AppRoleName='' then AppRoleName:=DEFAULTROLE;
  if AppRolePwd='' then AppRolePwd:=DEFAULTROLEPWD;
end;

procedure TRegInfo.ReadKey;
var
 Path:string;
begin
 Path:=Format('\Software\%s\%s',[AUTHOR,AppFileName]);
 OpenKey(Path,True);
end;

procedure TRegInfo.SetBool(const Index: Integer; const Value: bool);
begin
  ReadKey;
  case index of
   0:begin WriteBool('IsAutoSave',value);FIsAutoSave := Value;end;
   1:begin writebool('IsAutoCheckOut',value);FIsAutoCheckOut:= Value;end;
  end;
  CloseKey;
end;

procedure TRegInfo.SetInteger(const Index, Value: integer);
begin
  ReadKey;
  case index of
   0: begin WriteInteger('savedays',value);FSaveDays:=value;end;
   1: begin WriteInteger('CheckOutDate',value);FCheckOutDate:=value;end;
  end;
  CloseKey;
end; 

procedure TRegInfo.SetString(const Index: Integer; const Value: string);
begin
  ReadKey;
  case index of
   0: begin WriteString('Coname',value);FCoName:=value;end;
   1: begin WriteString('CoUsername',value);FCoUsername:=value;end;
   2: begin WriteString('Cotel',value);FCotel:=value;end;
   3: begin WriteString('CoAddress',value);FCoAddress:=value;end;
   4: begin WriteString('DbSvr',value);FDbSvr:=value;end;
   5: begin WriteString('DbName',value);FDbName:=value;end;
   6: begin WriteString('AppRoleName',value);FAppRoleName:=value;end;
   7: begin WriteString('AppRolePwd',value);FAppRolePwd:=value;end;
  end;
  CloseKey;
end;

end.
