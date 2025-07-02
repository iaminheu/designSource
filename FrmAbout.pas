unit FRMABOUT;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, NEOFORM, ComCtrls, ToolWin, ExtCtrls, StdCtrls,Common,
  cxLookAndFeelPainters, cxButtons, jpeg, MenuBar;
const
  WS_EX_LAYERED = $80000;
  AC_SRC_OVER = $0;
  AC_SRC_ALPHA = $1;
  AC_SRC_NO_PREMULT_ALPHA = $1;
  AC_SRC_NO_ALPHA = $2;
  AC_DST_NO_PREMULT_ALPHA = $10;
  AC_DST_NO_ALPHA = $20;
  LWA_COLORKEY = $1;
  LWA_ALPHA = $2;
  ULW_COLORKEY = $1;
  ULW_ALPHA = $2;
  ULW_OPAQUE = $4;
//新增加的常量定义

type
  TFrm_about = class(TzypNeoForm)
    Panel1: TPanel;
    ProgramIcon: TImage;
    lblOs: TLabel;
    lblMemory: TLabel;
    ProductName: TLabel;
    Version: TLabel;
    Copyright: TLabel;
    others: TLabel;
    Bevel1: TBevel;
    Author: TPaintBox;
    OKBtn: TcxButton;
    procedure FormCreate(Sender: TObject);
    procedure ProgramIconClick(Sender: TObject);
    procedure OKBtnClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
   s:string;
   Procedure Delay(x,y:word);//延时程序
   procedure GetOSInfo; //系统信息程序
   Procedure GetMemoryInfo ; //可用资源程序
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_about: TFrm_about;

implementation

{$R *.dfm}
Procedure TFrm_about.GetMemoryInfo ;//可用资源
var
MS: TMemoryStatus;
begin
    MS.dwLength := SizeOf(TMemoryStatus);
    GlobalMemoryStatus(MS);
lblMemory.Caption :=lblMemory.Caption +FormatFloat('#,###" KB"', MS.dwTotalPhys div 1024);
end;

procedure TFrm_about.GetOSInfo; //获取系统信息
var
   Platform: string;
   BuildNumber: Integer;
begin
   case Win32Platform of
      VER_PLATFORM_WIN32_WINDOWS:
      begin
         if (Win32MajorVersion=4) and (Win32MinorVersion=10) then
            Platform :='Windows 98'
         else
            Platform := 'Windows 95';
         BuildNumber := Win32BuildNumber and $0000FFFF;
      end;
      VER_PLATFORM_WIN32_NT:
      begin
         if (Win32MajorVersion=5) and (Win32MinorVersion=0) then
            Platform := 'Windows 2000'
         else if (Win32MajorVersion=5) and (Win32MinorVersion=1) then
            Platform := 'Windows XP'
         else if (Win32MajorVersion=4) and (Win32MinorVersion=0) then
            Platform := 'Windows NT 4.0'
         else
            Platform := 'Windows NT';
         BuildNumber := Win32BuildNumber;
      end;
      else
      begin
         Platform := 'Windows';
         BuildNumber := 0;
      end;
   end;
   if (Win32Platform = VER_PLATFORM_WIN32_WINDOWS) or
      (Win32Platform = VER_PLATFORM_WIN32_NT) then
   begin
      if Win32CSDVersion = '' then
         lblOS.Caption := lblOS.Caption+Format('%s 版本 %d.%d （内部版本 %d）', [Platform, Win32MajorVersion,
            Win32MinorVersion, BuildNumber])
      else
         lblOS.Caption := lblOS.Caption+Format('%s 版本 %d.%d （内部版本 %d: %s）', [Platform, Win32MajorVersion,
            Win32MinorVersion, BuildNumber, Win32CSDVersion]);
   end
   else
      lblOS.Caption := lblOS.Caption+Format('%s %d.%d', [Platform, Win32MajorVersion,
      Win32MinorVersion])
   end;

procedure TFrm_about.Delay(x,y:word);
var timeout:TDateTime;
begin
//该成为WINDOWS APP启动时间这个函数来做!
timeout:=now+encodeTime(0,x div 60,x mod 60,y);
While now<timeout do
Application.ProcessMessages;
end;

procedure TFrm_about.FormCreate(Sender: TObject);
begin
   inherited;
   try
      self.Caption :=application.Title + ' - ';
      self.Caption :=self.caption+'关于本软件';
      //ProgramIcon.Picture.icon:=Application.Icon; //图标
      ProductName.Caption:=ProductName.Caption+Application.Title;//产品名称
      version.Caption:=version.Caption+Getfilever; //版本
      Copyright.Caption:=Copyright.Caption+'星际软件园2004-2008';
      others.Caption:='警  告：本系统设计为龙净环保股份有限公司专用，'+#13
                     +'        禁止任何未经授权的非法使用！否则，系统在运'+#13
                     +'        行过程中出现的任何问题，作者将不负任何连带责任！'+#13
                     +'        并且，星际软件园保留该程序的最终版权。';
      ////初始化---------------------------
      GetMemoryInfo;
      GetOsinfo;
      //初始化变量s...
      s:='';
   except
      MessageBox(handle,'在提取系统信息时某些信息不能取得','提示',MB_OK);
   end;
end;

procedure TFrm_about.ProgramIconClick(Sender: TObject);
var i,fontheight:Byte;
begin
  inherited;
try
panel1.Hide;
fontheight:=author.Canvas.TextHeight('A');
for i:=0 to 150+fontHeight*8 do
if not panel1.Visible then //在此处添加说明
with author.Canvas do
begin
textout(25,100-i,'感谢您使用【'+Application.Title+'】系统！');
textout(25,100+fontheight-i,'');
textout(25,100+fontheight*2-i,'系统说明——');
textout(25,100+fontheight*3-i,'软件作者：星际软件园');
textout(25,100+fontheight*4-i,'开发前端：Borland Delphi 7.0');
textout(25,100+fontheight*5-i,'数据处理：SQL Server 2000');
textout(25,100+fontheight*6-i,'开发时间：2004年4月');
textout(25,100+fontheight*7-i,'最后编译日期：'+formatdatetime('yyyy年mm月dd日',now));
Delay(0,50);
end;
finally
panel1.Show;
self.Refresh;
end;

end;

procedure TFrm_about.OKBtnClick(Sender: TObject);
begin
  inherited;
   panel1.Show ;
   self.Close ;
end;

procedure TFrm_about.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
   s:=s+key; //用户输入"Author"这显示
   if StrUpper(Pchar(s))='A' then
   begin
      ProgramIconclick(sender);
      s:=''
   end;
end;

procedure TFrm_about.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   inherited;
   application.ProcessMessages ;
end;


end.
