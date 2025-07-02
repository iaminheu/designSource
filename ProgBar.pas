unit ProgBar;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, ComCtrls;

type
  TFrm_progbar = class(TForm)
    Panel1: TPanel;
    P_message: TPanel;
    Panel3: TPanel;
    ProgressBar: TProgressBar;
  private
    { Private declarations }
  public
    { Public declarations }
  end;



var
  Frm_progbar:TFrm_progbar;

implementation



{$R *.DFM}


end.
