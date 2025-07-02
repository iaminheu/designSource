unit FrmMessage;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ToolWin, ComCtrls, Buttons, Menus,Common;

type
  TFrm_message = class(TForm)
    Timer: TTimer;
    Panel_main: TPanel;
    Memo_message: TMemo;
    Image_caption: TImage;
    Label_caption: TLabel;
    SB_MIN: TSpeedButton;
    SB_tools: TSpeedButton;
    PopMenu: TPopupMenu;
    PopMenu_clear: TMenuItem;
    PopMenu_notshow: TMenuItem;
    PopMenu_top: TMenuItem;
    PopMenu_autohide: TMenuItem;
    PopMenu_selectall: TMenuItem;
    PopMenu_saveas: TMenuItem;
    N3: TMenuItem;
    PopMenu_notclear: TMenuItem;
    N5: TMenuItem;
    PopMenu_alwaysshow: TMenuItem;
    PopMenu_hide: TMenuItem;
    SaveDialog_log: TSaveDialog;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SB_MINClick(Sender: TObject);
    procedure Image_captionMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image_captionMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure Image_captionMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure SB_toolsClick(Sender: TObject);
    procedure PopMenu_selectallClick(Sender: TObject);
    procedure PopMenu_clearClick(Sender: TObject);
    procedure PopMenu_notshowClick(Sender: TObject);
    procedure PopMenu_autohideClick(Sender: TObject);
    procedure PopMenu_topClick(Sender: TObject);
    procedure PopMenu_notclearClick(Sender: TObject);
    procedure PopMenu_alwaysshowClick(Sender: TObject);
    procedure PopMenu_saveasClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    OriginalPos:TPoint;    // ��¼ԭʼλ��
    CurrentPos:TPoint;     // ��¼��ǰλ��
    DownPos:TPoint;        // ��¼��갴��ʱλ��
    MouseLButtonDown:Boolean;   // ����������Ƿ���
    { Private declarations }
  public
    { Public declarations }
    constructor create(Aowner:TComponent);override;
  end;

procedure WriteEvent(value:string);
procedure ShowLogWindow;

implementation

{$R *.dfm}
uses FRMMAIN,FrmData;

var
  Frm_message: TFrm_message=nil;

procedure WriteEvent;
var
  F: TextFile;
begin
 value:=datetimetostr(now)+'��'+USERNAME+' - '+value;
try
 AssignFile(F,LogFileName);
 if not FileExists(LogFileName)then
  ReWrite(F);
 try
  Append(f);
  Writeln(f, value);{ insert code here that would require a Flush before closing the file }
  Flush(f);  { ensures that the text was actually written to file }
 except
  messagedlg('ϵͳ��־����ʧ�ܣ�',mtInformation,[mbok],0);
 end;
 CloseFile(f);
except
 messagedlg('ϵͳ��־����ʧ�ܣ�',mtInformation,[mbok],0);
end;
end;

procedure ShowLogWindow;
begin
 if frm_Message=nil then TFrm_message.Create(Application);
 with frm_Message do begin
  if PopMenu_notshow.Checked
   then PopMenu_autohide.Click ;
  show;
 end;
end;

procedure TFrm_message.FormShow(Sender: TObject);
begin
   AnimateWindow(Self.Handle, 250, AW_CENTER or AW_ACTIVATE);
   Image_caption.Repaint ;
   timer.Enabled :=true;
   if fileexists(LogfileName) then
   begin
    Memo_message.Lines.LoadFromFile(LogfileName);
   end;
end;

procedure TFrm_message.FormCreate(Sender: TObject);
var 
  hApp: HWND; 
  rcApp, rcWork: TRect; 
begin
  rcWork.Top:=0;
  rcWork.Left:=0; 
  rcWork.Bottom:= GetSystemMetrics(SM_CYSCREEN); 
  rcWork.Right:= GetSystemMetrics(SM_CXSCREEN); 
  hApp := FindWindow('Shell_TrayWnd', '');
  if hApp <> 0 then begin
        //�õ�TASKBAR�ĳߴ�
    GetWindowRect(hApp, rcApp);
    //����TASKBAR�����
    if rcApp.Right<rcWork.Right then
      rcWork.Left:=rcApp.Right; //TASKBAR����
    if rcApp.Bottom<rcWork.Bottom then
      rcWork.Top:=rcApp.Bottom; //TASKBAR����
    if rcApp.Left>0 then
      rcWork.Right:=rcApp.Left; //TASKBAR����
    if rcApp.Top>0 then
      rcWork.Bottom:=rcApp.Top; //TASKBAR����
  end;
  //�õ���������С
  SystemParametersInfo (SPI_SETWORKAREA, 0, @rcWork, SPIF_SENDCHANGE );
  self.Left :=rcwork.Right - self.Width ;
  self.Top :=rcwork.Bottom - self.Height ;
end;

procedure TFrm_message.SB_MINClick(Sender: TObject);
begin
  close;
end;

procedure TFrm_message.Image_captionMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
    OriginalPos.x:=self.Left;         // ��¼��ԭʼ����λ��
     OriginalPos.y:=self.Top;
     DownPos.x:=X;                      // ��갴�µ�λ��
     DownPos.y:=Y;
     DownPos:=ClientToScreen(DownPos);   // ���ͻ�������ת��Ϊ��Ļ����
     if Button = mbLeft then
          MouseLButtonDown:=True;
end;

procedure TFrm_message.Image_captionMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
     if MouseLButtonDown then
     begin
          CurrentPos.x:=X;
          CurrentPos.y:=Y;
          CurrentPos:=ClientToScreen(CurrentPos);  // ���ͻ�������ת��Ϊ��Ļ����
          // ȷ���������λ��
          self.Left:=OriginalPos.x+(CurrentPos.x-DownPos.x);
          self.Top :=OriginalPos.y+(CurrentPos.y-DownPos.y);
     end;
end;

procedure TFrm_message.Image_captionMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
     MouseLButtonDown:=False;        // ����������
end;

procedure TFrm_message.SB_toolsClick(Sender: TObject);
var
   MyPoint:TPoint;
   ScPoint:TPoint;
begin
   MyPoint.x:=SB_tools.Left;
   MyPoint.y:=SB_tools.Top + SB_tools.Height ;
   ScPoint:=ClientToScreen(MyPoint);
   PopMenu.Popup(ScPoint.X ,ScPoint.Y );
end;

procedure TFrm_message.PopMenu_selectallClick(Sender: TObject);
begin
   Memo_message.SetFocus ;
   Memo_message.SelectAll ;
end;

procedure TFrm_message.PopMenu_clearClick(Sender: TObject);
begin
   if mdlData.CheckFrmRights(classname,'ɾ��')then
    Memo_message.Lines.Clear
   else
    ShowMsg(Errormsg0006+'0006','����',false);
end;

procedure TFrm_message.PopMenu_notshowClick(Sender: TObject);
begin
   PopMenu_notshow.Checked:=true;
   Timer.Interval :=1;
end;

procedure TFrm_message.PopMenu_autohideClick(Sender: TObject);
begin
   PopMenu_autohide.Checked:=true ;
   Timer.Interval :=30000;
end;

procedure TFrm_message.PopMenu_topClick(Sender: TObject);
begin
   PopMenu_top.Checked :=not PopMenu_top.Checked;
   if PopMenu_top.Checked then
      self.FormStyle :=fsStayOnTop
   else
      self.FormStyle :=fsNormal;
end;

procedure TFrm_message.PopMenu_notclearClick(Sender: TObject);
begin
   Popmenu_notclear.Checked :=not Popmenu_notclear.Checked;
   if Popmenu_notclear.Checked then
   begin
      self.AlphaBlend :=false;
      self.Update ;
   end
   else
   begin
      self.AlphaBlend :=true;
      self.Update ;
   end;
end;

procedure TFrm_message.PopMenu_alwaysshowClick(Sender: TObject);
begin
   PopMenu_alwaysshow.Checked:=true ;
   Timer.Interval :=0;
end;

procedure TFrm_message.PopMenu_saveasClick(Sender: TObject);
var
   S_filename:string;
begin
   SaveDialog_log.Filter :='ϵͳ��־�ļ���*.LOG��|*.LOG';
   SaveDialog_log.Title :='������־�ļ�';
   SaveDialog_log.DefaultExt :='LOG';
   if SaveDialog_log.Execute  then
   begin
      S_filename :=SaveDialog_log.FileName;
   end
   else
      exit;
   if FileExists(S_filename) then
   begin
      if messagedlg('�ļ��Ѿ����ڣ��Ƿ񸲸ǣ�',mtConfirmation,[mbyes,mbno],0)=mrno then
      begin
         exit;
      end;
   end;
   if Memo_message.Lines.Count > 0 then
   begin
      try
         Memo_message.Lines.SaveToFile(S_filename);
         messagedlg('ϵͳ��־����ɹ���',mtInformation,[mbok],0);
      except
         messagedlg('ϵͳ��־����ʧ�ܣ�',mtInformation,[mbok],0);
      end;
   end
   else
      messagedlg('û�пɱ������־���ݣ�',mtInformation,[mbok],0);

end;

procedure TFrm_message.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 action:=caFree;
 frm_message:=nil;
end;

constructor TFrm_message.create(Aowner: TComponent);
begin
  inherited;
  frm_message:=self;
end;

end.
