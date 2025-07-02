unit ProgBassGrid;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxCurrencyEdit;

type
  TFrm_prograss = class(TForm)
    Panel1: TPanel;
    P_message: TPanel;
    Panel3: TPanel;
    E_Time: TcxCurrencyEdit;
    Timer1: TTimer;
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function ShowPrograss(Info:string;aowner:TComponent=nil):TFrm_prograss;

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
end;

procedure TFrm_prograss.Timer1Timer(Sender: TObject);
begin
   E_Time.Value:=E_Time.Value+1;
end;

end.
