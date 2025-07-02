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
//�����ӵĳ�������

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
   Procedure Delay(x,y:word);//��ʱ����
   procedure GetOSInfo; //ϵͳ��Ϣ����
   Procedure GetMemoryInfo ; //������Դ����
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_about: TFrm_about;

implementation

{$R *.dfm}
Procedure TFrm_about.GetMemoryInfo ;//������Դ
var
MS: TMemoryStatus;
begin
    MS.dwLength := SizeOf(TMemoryStatus);
    GlobalMemoryStatus(MS);
lblMemory.Caption :=lblMemory.Caption +FormatFloat('#,###" KB"', MS.dwTotalPhys div 1024);
end;

procedure TFrm_about.GetOSInfo; //��ȡϵͳ��Ϣ
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
         lblOS.Caption := lblOS.Caption+Format('%s �汾 %d.%d ���ڲ��汾 %d��', [Platform, Win32MajorVersion,
            Win32MinorVersion, BuildNumber])
      else
         lblOS.Caption := lblOS.Caption+Format('%s �汾 %d.%d ���ڲ��汾 %d: %s��', [Platform, Win32MajorVersion,
            Win32MinorVersion, BuildNumber, Win32CSDVersion]);
   end
   else
      lblOS.Caption := lblOS.Caption+Format('%s %d.%d', [Platform, Win32MajorVersion,
      Win32MinorVersion])
   end;

procedure TFrm_about.Delay(x,y:word);
var timeout:TDateTime;
begin
//�ó�ΪWINDOWS APP����ʱ�������������!
timeout:=now+encodeTime(0,x div 60,x mod 60,y);
While now<timeout do
Application.ProcessMessages;
end;

procedure TFrm_about.FormCreate(Sender: TObject);
begin
   inherited;
   try
      self.Caption :=application.Title + ' - ';
      self.Caption :=self.caption+'���ڱ����';
      //ProgramIcon.Picture.icon:=Application.Icon; //ͼ��
      ProductName.Caption:=ProductName.Caption+Application.Title;//��Ʒ����
      version.Caption:=version.Caption+Getfilever; //�汾
      Copyright.Caption:=Copyright.Caption+'�Ǽ����԰2004-2008';
      others.Caption:='��  �棺��ϵͳ���Ϊ���������ɷ����޹�˾ר�ã�'+#13
                     +'        ��ֹ�κ�δ����Ȩ�ķǷ�ʹ�ã�����ϵͳ����'+#13
                     +'        �й����г��ֵ��κ����⣬���߽������κ��������Σ�'+#13
                     +'        ���ң��Ǽ����԰�����ó�������հ�Ȩ��';
      ////��ʼ��---------------------------
      GetMemoryInfo;
      GetOsinfo;
      //��ʼ������s...
      s:='';
   except
      MessageBox(handle,'����ȡϵͳ��ϢʱĳЩ��Ϣ����ȡ��','��ʾ',MB_OK);
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
if not panel1.Visible then //�ڴ˴����˵��
with author.Canvas do
begin
textout(25,100-i,'��л��ʹ�á�'+Application.Title+'��ϵͳ��');
textout(25,100+fontheight-i,'');
textout(25,100+fontheight*2-i,'ϵͳ˵������');
textout(25,100+fontheight*3-i,'������ߣ��Ǽ����԰');
textout(25,100+fontheight*4-i,'����ǰ�ˣ�Borland Delphi 7.0');
textout(25,100+fontheight*5-i,'���ݴ���SQL Server 2000');
textout(25,100+fontheight*6-i,'����ʱ�䣺2004��4��');
textout(25,100+fontheight*7-i,'���������ڣ�'+formatdatetime('yyyy��mm��dd��',now));
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
   s:=s+key; //�û�����"Author"����ʾ
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
