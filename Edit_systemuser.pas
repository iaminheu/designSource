unit Edit_systemuser;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRMBASSDIALOGS, StdCtrls, TFlatEditUnit, TFlatPanelUnit,
  ComCtrls, MenuBar, ToolWin, DsFancyButton, ExtCtrls, TFlatComboBoxUnit,
  DB, DBTables,ADODB, DBCtrls, cxLookAndFeelPainters,
  cxButtons, cxControls, cxContainer, cxEdit, cxCheckBox, cxTextEdit,
  cxMaskEdit, cxDropDownEdit;

type
  TFrm_Edit_systemuser = class(TFrm_bassDialogs)
    FlatPanel_edit: TFlatPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label10: TLabel;
    Label3: TLabel;
    E_num: TcxTextEdit;
    E_mc: TcxTextEdit;
    Label4: TLabel;
    E_gw: TcxTextEdit;
    E_pwd: TcxTextEdit;
    E_sex: TcxComboBox;
    procedure FormCreate(Sender: TObject);
    procedure OKBtnClick(Sender: TObject);
    procedure E_numKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure E_mcKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    function AddRd:bool;
    function EditRd:bool;
    procedure InitParam;
  public
    P_state:integer;
    P_id:string;
    { Public declarations }
  end;

var
  Frm_Edit_systemuser: TFrm_Edit_systemuser;

implementation

uses  Main_systemuser, FrmData, Common;

{$R *.dfm}
procedure TFrm_Edit_systemuser.InitParam;
begin
  E_num.Text:='';
  E_pwd.Text:='';
  E_num.SetFocus;
end;

function TFrm_Edit_systemuser.AddRd:bool;
const
  SQL_Add='Insert into T_systemuser(num,ssbm,roles,mc,sex,pwd,gw) '
         +'values(:num,:ssbm,:roles,:mc,:sex,:pwd,:gw)';
var
 qry:TADOQuery;
begin
  result:=False;
  qry:=TADOQuery.Create(Self);
  qry.Connection:=mdlData.conn;
  try
    qry.SQL.Text:=SQL_Add;
    qry.Parameters.FindParam('num').value:=Trim(E_num.Text);
    qry.Parameters.FindParam('ssbm').value:='公司职员';
    qry.Parameters.FindParam('roles').value:=5;
    qry.Parameters.FindParam('mc').value:=Trim(E_mc.Text);
    qry.Parameters.FindParam('sex').value:=Trim(E_sex.Text);
    qry.Parameters.FindParam('pwd').value:=Trim(E_pwd.Text);
    qry.Parameters.FindParam('gw').value:=Trim(E_gw.Text);
    try
      result:=qry.ExecSQL=1;
    except
      Messagedlg(Errormsg0004+'0004',mtError,[mbok],0);
    end;
  finally
    ;
  end;
  qry.Free;
end;

function TFrm_Edit_systemuser.EditRd:bool;
const
  SQL_Edit='Update T_systemuser set num=:num,ssbm=:ssbm,roles=:roles,mc=:mc,sex=:sex,pwd=:pwd,gw=:gw '
          +'where UserID=:UserID';
var
 qry:TADOQuery;
begin
  result:=False;
  qry:=TADOQuery.Create(Self);
  qry.Connection:=mdlData.conn;
  try
    qry.SQL.Text:=SQL_Edit;
    qry.Parameters.FindParam('num').value:=Trim(E_num.Text);
    qry.Parameters.FindParam('ssbm').value:='公司职员';
    qry.Parameters.FindParam('roles').value:=5;
    qry.Parameters.FindParam('mc').value:=Trim(E_mc.Text);
    qry.Parameters.FindParam('sex').value:=Trim(E_sex.Text);
    qry.Parameters.FindParam('pwd').value:=Trim(E_pwd.Text);
    qry.Parameters.FindParam('gw').value:=Trim(E_gw.Text);
    qry.Parameters.FindParam('UserID').value:=P_id;
    try
      result:=qry.ExecSQL=1;
    except
      Messagedlg(Errormsg0004+'0004',mtError,[mbok],0);
    end;
  finally
    ;
  end;
  qry.Free;
end;


procedure TFrm_Edit_systemuser.FormCreate(Sender: TObject);
begin
  inherited;
  P_state:=1;  //0-增加  1-修改
end;

procedure TFrm_Edit_systemuser.OKBtnClick(Sender: TObject);
const
  SQL_num='Select * from T_systemuser where num=:num';
var qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
//关键内容（字段）不能为空
  If Trim(E_num.Text)='' then
  begin
    Messagedlg(Errormsg0002+'0002',mtError,[mbok],0);
    E_num.SetFocus ;
    Exit;
  end;
  If Trim(E_mc.Text)='' then
  begin
    Messagedlg(Errormsg0002+'0002',mtError,[mbok],0);
    E_mc.SetFocus ;
    Exit;
  end;
  If Trim(E_sex.Text)='' then
  begin
    Messagedlg(Errormsg0002+'0002',mtError,[mbok],0);
    E_sex.SetFocus ;
    Exit;
  end;
  If Trim(E_pwd.Text)='' then
  begin
    Messagedlg(Errormsg0002+'0002',mtError,[mbok],0);
    E_pwd.SetFocus ;
    Exit;
  end;
  If Trim(E_gw.Text)='' then
  begin
    Messagedlg(Errormsg0002+'0002',mtError,[mbok],0);
    E_gw.SetFocus ;
    Exit;
  end;

  If P_state=0 then
  begin
//关健字唯一
    try
      qry.SQL.Text:=SQL_num;
      qry.Parameters.FindParam('num').Value:=Trim(E_num.Text);
      qry.Open;
      If qry.RecordCount>0 then
      begin
        Messagedlg(Errormsg0003+'0003',mtError,[mbok],0);
        Exit;
      end;
    finally
       ;
    end;
    If Messagedlg(Askmsg0002,mtInformation,[mbyes,mbno],0)=mrno then
      Exit;
    If AddRd then //增加数据
      If Messagedlg(Askmsg0004,mtInformation,[mbyes,mbno],0)=mryes then
        InitParam
      else
        inherited;
   end
   else
   If P_state=1 then //修改数据
   begin
     If Messagedlg(Askmsg0001,mtInformation,[mbyes,mbno],0)=mrno then
       Exit;
     If EditRd then   //修改数据
     begin
       Messagedlg(Infmsg0001,mtInformation,[mbok],0);
       inherited;
     end
     else
       Messagedlg(Infmsg0004,mtInformation,[mbok],0);
   end;
   qry.Free;
end;

procedure TFrm_Edit_systemuser.E_numKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  If (key=13) or (key=40) then { 判断是按执行键}
  Begin
    key:=0;
    perform(WM_NEXTDLGCTL,0,0);{移动到下一个控件}
  end;

end;

procedure TFrm_Edit_systemuser.E_mcKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  If (key=13) or (key=40) then { 判断是按执行键}
  begin
    Self.OKBtnClick(Sender);
  end;
end;

procedure TFrm_Edit_systemuser.FormShow(Sender: TObject);
begin
  inherited;
  E_num.SetFocus;
end;

end.
