unit Edit_pwd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRMBASSDIALOGS, StdCtrls, TFlatEditUnit, TFlatPanelUnit,
  ComCtrls, MenuBar, ToolWin, DsFancyButton, ExtCtrls, TFlatComboBoxUnit,
  DB, DBTables, ADODB, DBCtrls, cxControls, cxContainer,
  cxEdit, cxTextEdit, cxCurrencyEdit, cxMaskEdit, cxDropDownEdit,
  cxLookAndFeelPainters, cxButtons,COMMON, cxRadioGroup;

type
  TFrm_Edit_pwd = class(TFrm_bassDialogs)
    ADOQuery: TADOQuery;
    Label10: TLabel;
    FlatPanel1: TFlatPanel;
    Label3: TLabel;
    E_ID: TcxTextEdit;
    Label2: TLabel;
    L_name: TLabel;
    Label1: TLabel;
    E_Password: TcxTextEdit;
    Label4: TLabel;
    N_Password: TcxTextEdit;
    Label5: TLabel;
    W_Password: TcxTextEdit;
    procedure E_thKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure E_PasswordKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure N_PasswordKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure OKBtnClick(Sender: TObject);
    procedure E_PasswordExit(Sender: TObject);
    procedure N_PasswordExit(Sender: TObject);
    procedure W_PasswordExit(Sender: TObject);
  private
    { Private declarations }
  public
    P_state:integer;
    { Public declarations }
  end;

var
  Frm_Edit_pwd: TFrm_Edit_pwd;

implementation

uses FRMDATA ;

{$R *.dfm}

procedure TFrm_Edit_pwd.E_thKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   If (key=13) or (key=40) then { 判断是按执行键}
   Begin
     key:=0;
     perform(WM_NEXTDLGCTL,0,0);{移动到下一个控件}
   end;
end;

procedure TFrm_Edit_pwd.FormCreate(Sender: TObject);
begin
  inherited;
  E_ID.Text:=common.UserNum;
  L_name.Caption:=common.USERNAME+'/'+common.USERSSBM;
end;

procedure TFrm_Edit_pwd.E_PasswordKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  with ADOQuery do
  begin
    Close;
    SQL.Clear ;
    SQL.Text:='Select pwd from T_systemuser where Num=:Num';
    Parameters[0].Value:=Trim(E_ID.Text);
    Open;
    If RecordCount=1 then
    begin
      If Trim(FieldByname('pwd').AsString)=Trim(E_password.Text) then
        N_password.Enabled:=True
      else
        N_password.Enabled:=False;
    end;
  end;

end;

procedure TFrm_Edit_pwd.N_PasswordKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  W_password.Enabled:=True;
end;

procedure TFrm_Edit_pwd.OKBtnClick(Sender: TObject);
begin
  inherited;
  If Trim(N_password.Text)=Trim(W_password.Text) then
  begin
    with ADOQuery do
    begin
      Close;
      SQL.Clear ;
      SQL.Text:='update T_systemuser set pwd=:pwd where Num=:Num';
      Parameters[0].Value:=W_password.EditValue;
      Parameters[1].Value:=Trim(E_ID.Text);
      ExecSQl;
    end;
    messagedlg('密码修改成功！',mtInformation,[mbok],0);
  end;
end;

procedure TFrm_Edit_pwd.E_PasswordExit(Sender: TObject);
begin
  inherited;
  If length(E_password.Text)>10 then
    messagedlg('密码位数不能超过10位！',mtInformation,[mbok],0);

end;

procedure TFrm_Edit_pwd.N_PasswordExit(Sender: TObject);
begin
  inherited;
  If length(N_password.Text)>10 then
    messagedlg('密码位数不能超过10位！',mtInformation,[mbok],0);

end;

procedure TFrm_Edit_pwd.W_PasswordExit(Sender: TObject);
begin
  inherited;
  If Trim(N_password.Text)<>Trim(W_password.Text) then
  begin
    messagedlg('两次输入密码不一致！',mtInformation,[mbok],0);
  end;

end;

end.
