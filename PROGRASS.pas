unit PROGRASS;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxCurrencyEdit, RzBorder;

type
  TFrm_prograss = class(TForm)
    Panel1: TPanel;
    P_message: TPanel;
    Panel3: TPanel;
    Timer1: TTimer;
    RzLED: TRzLEDDisplay;
    procedure Timer1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function ShowPrograss(Info:string;aowner:TComponent=nil):TFrm_prograss;

Var
  H,S,F:string;

implementation

{$R *.DFM}
function ShowPrograss;
var
  Frm_prograss:TFrm_prograss;
begin
 //application.CreateForm(tfrm_prograss,frm_prograss);
 if aowner=nil then aowner:=Application;
 Frm_prograss:=Tfrm_prograss.Create(aowner);
 Frm_prograss.P_message.Caption :=info;
 Frm_prograss.show;

 Frm_prograss.Update ;

 Application.ProcessMessages;
 result:=Frm_prograss;
 Frm_prograss.Close;
end;

procedure TFrm_prograss.Timer1Timer(Sender: TObject);
Var
  mm,ss:Integer;
  Led:string;
begin
  // E_Time.Value:=E_Time.Value+1;
  try
    Led:=RzLED.Caption ;
    mm:=StrToInt(Copy(Led,1,2));
    ss:=StrToInt(Copy(Led,4,2));
    ss:=ss+1;
      if ss>=60  then
       begin
         mm:=mm+1;
         ss:=0;
       end;
     if ss<10  then
        S:='0'+IntToStr(ss)
     else
        S:=IntToStr(ss);
     if mm<10  then
        H:='0'+IntToStr(mm)
     else
        H:=IntToStr(mm);
     F:=':' ;
     RzLED.Caption :=H+F+S;
    if( H='00') and (S='30') then
      begin
         RzLED.SegOnColor:=clred;
      end;
 except
    begin
      showmessage('ÉèÖÃÊ±¼ä´íÎó¡£');
      Timer1.Enabled :=False;
      H:='00';
      F:=':';
      S:='00';
      RzLED.Caption :=H+F+S;
    end;
 end;

end;

procedure TFrm_prograss.FormShow(Sender: TObject);
begin
//  RzLED.Caption:='00:00';
//  Timer1.Enabled:=True;
 end;

procedure TFrm_prograss.FormActivate(Sender: TObject);
begin
  RzLED.Caption:='00:00';
  Timer1.Enabled:=True;
end;

procedure TFrm_prograss.FormDeactivate(Sender: TObject);
begin
  Timer1.Enabled:=False;
end;

end.
