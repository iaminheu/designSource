unit FRMBASSDIALOGS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, NEOFORM, ComCtrls, ExtCtrls, StdCtrls,
  cxLookAndFeelPainters, cxButtons, ToolWin, MenuBar;

type
  TFrm_bassDialogs = class(TzypNeoForm)
    Panel_button: TPanel;
    Bevel_button: TBevel;
    OKBtn: TcxButton;
    CancelBtn: TcxButton;
    procedure CancelBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_bassDialogs: TFrm_bassDialogs;

implementation

{$R *.dfm}

procedure TFrm_bassDialogs.CancelBtnClick(Sender: TObject);
begin
  inherited;
  Self.Close ;
end;

end.
