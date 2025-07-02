unit FrmSelect;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, NEOFORM, ComCtrls, MenuBar, ToolWin, ExtCtrls, StdCtrls,
  DsFancyButton, dxtree, dxdbtree,db;

type
  TFrm_Select = class(TzypNeoForm)
    vw: TdxDBTreeView;
    source: TDataSource;
    procedure vwDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function Select(Titel:string;KeyField,ParentField,ListField,DisplayField:string;table:TDataSet):string;

implementation

{$R *.dfm}

function Select;
var
  Frm_Select: TFrm_Select;
  opened:bool;
begin
 Frm_Select:=TFrm_select.Create(Application);
 with Frm_select do begin
  Caption:=Titel;
  vw.KeyField:=keyField;
  vw.ParentField:=ParentField;
  vw.ListField:=ListField;
  vw.DisplayField:=DisplayField;
  Source.DataSet:=Table;
  opened:=table.Active;
  if not opened then table.Open;
  if ShowModal=idOK then
   result:=vw.DBSelected.KeyFieldValue
  else result:='';
  free;
  if not opened=table.Active then table.Active:=opened;
 end;
end;

procedure TFrm_Select.vwDblClick(Sender: TObject);
begin
 inherited;
 ModalResult:=idOK;
end;

end.
