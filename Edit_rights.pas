unit Edit_rights;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRMBASSDIALOGS, StdCtrls, TFlatEditUnit, TFlatPanelUnit,
  ComCtrls, MenuBar, ToolWin, DsFancyButton, ExtCtrls, TFlatComboBoxUnit,
  DB, DBTables,ADODB, cxMaskEdit, cxDropDownEdit,
  cxCurrencyEdit, cxControls, cxContainer, cxEdit, cxTextEdit, cxMemo,
  cxLookAndFeelPainters, cxButtons,COMMON, cxCheckBox, cxButtonEdit;

type
  TFrm_Edit_rights = class(TFrm_bassDialogs)
    Label10: TLabel;
    FlatPanel_edit: TFlatPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label9: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    E_app: TcxCheckBox;
    E_edit: TcxCheckBox;
    E_qry: TcxCheckBox;
    E_prin: TcxCheckBox;
    E_del: TcxCheckBox;
    Label7: TLabel;
    Label8: TLabel;
    E_sh: TcxCheckBox;
    E_mdlName: TcxButtonEdit;
    E_frmname: TcxButtonEdit;
    ADOQuery: TADOQuery;
    E_FPermission: TcxButtonEdit;
    Label11: TLabel;
    E_Out: TcxCheckBox;
    Label12: TLabel;
    E_Txd: TcxCheckBox;
    Label13: TLabel;
    E_Rxd: TcxCheckBox;
    Label14: TLabel;
    E_Accept: TcxCheckBox;
    E_PushDown: TcxCheckBox;
    Label15: TLabel;
    Label16: TLabel;
    E_Audit: TcxCheckBox;
    E_FCheck: TcxCheckBox;
    Label17: TLabel;
    Label18: TLabel;
    E_Submit: TcxCheckBox;
    Label19: TLabel;
    E_Feedback: TcxCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure OKBtnClick(Sender: TObject);
    procedure E_FPermissionKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure E_wx_jgdjKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure E_mdlNameExit(Sender: TObject);
    procedure E_frmnamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure E_FPermissionPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    { Private declarations }
  public
    P_state:integer;
    P_id:string;
    { Public declarations }
  end;

var
  Frm_Edit_rights: TFrm_Edit_rights;

implementation

uses FRMDATA, Main_rights, FrmSelect;

{$R *.dfm}

procedure TFrm_Edit_rights.FormCreate(Sender: TObject);
begin
  inherited;
  P_state:=1;  //0-增加  1-修改
{  with ADOquery do
  begin
    Close;
    SQL.Clear ;
    SQL.Text:='Select distinct FPermission from systemuser order by FPermission';
    Open;
    E_FPermission.Properties.Items.Clear;
    while not eof do
    begin
      E_FPermission.Properties.Items.Add(Trim(FieldByName('FPermission').AsString));
      Next;
    end;
    E_FPermission.Text:=Trim(FieldByName('FPermission').AsString);
  end;   }
end;

procedure TFrm_Edit_rights.OKBtnClick(Sender: TObject);
begin
  inherited;
  If Trim(E_FPermission.Text)='' then
  begin
    Messagedlg(Errormsg0002+'0002',mtError,[mbok],0);
    E_FPermission.SetFocus ;
    Exit;
  end;
  If Trim(E_mdlname.Text)='' then
  begin
    Messagedlg(Errormsg0002+'0014',mtError,[mbok],0);
    E_mdlname.SetFocus ;
    Exit;
  end;
  If P_state=0 then //增加数据
  begin
    with ADOquery do
    begin
      Close;
      SQL.Clear ;
      SQL.Text :='select * from frmrights where FPermission='''+E_FPermission.Text+''''
                +' and mdlname='''+E_mdlname.Text+'''';
      try
        Open;
      except
        Messagedlg(Errormsg0001+'0012',mtError,[mbok],0);
        Close;
        Self.Close ;
      end;
      If RecordCount > 0 then   //编号已存在
      begin
        Messagedlg(Errormsg0003+'0004',mtError,[mbok],0);
        E_FPermission.SetFocus ;
        Close;
        Exit;
      end
      else     //编号不存在则增加
      begin
        Close;
        SQL.Clear ;
        SQL.Text:='Insert into frmrights(FPermission,mdlname,frmname,app,edit,qry,prin,del,sh,Txd,Rxd,Out,Submit,FCheck,Audit,PushDown,Accept,Feedback) '
                 +'values(:FPermission,:mdlname,:frmname,:app,:edit,:qry,:prin,:del,:sh,:Txd,:Rxd,:Out,:Submit,:FCheck,:Audit,:PushDown,:Accept,:Feedback)';
        Parameters[0].Value:=Trim(E_FPermission.Text);
        Parameters[1].Value:=Trim(E_mdlname.Text);
        Parameters[2].Value:=Trim(E_frmname.Text);
        Parameters[3].Value:=E_app.Editvalue;
        Parameters[4].Value:=E_edit.EditValue;
        Parameters[5].Value:=E_qry.EditValue;
        Parameters[6].Value:=E_prin.EditValue;
        Parameters[7].Value:=E_del.EditValue;
        Parameters[8].Value:=E_sh.EditValue;
        Parameters[9].Value:=E_Txd.EditValue;
        Parameters[10].Value:=E_Rxd.EditValue;
        Parameters[11].Value:=E_Out.EditValue;
        Parameters[12].Value:=E_Submit.EditValue;
        Parameters[13].Value:=E_FCheck.EditValue;
        Parameters[14].Value:=E_Audit.EditValue;
        Parameters[15].Value:=E_PushDown.EditValue;
        Parameters[16].Value:=E_Accept.EditValue;
        Parameters[17].Value:=E_Feedback.EditValue;
        try
          Execsql;
        except
          Messagedlg(Errormsg0004+'0013',mtError,[mbok],0);
          Close;
          Self.Close ;
        end;
      end;
      Messagedlg(Infmsg0001,mtInformation,[mbok],0);
      Close;
    end;
  end
  else
  if P_state=1 then //修改数据 Check=:Check,
  begin
    with ADOQuery do
    begin
      Close;
      SQL.Clear ;
      SQl.Text :='Update frmrights set FPermission=:FPermission,mdlname=:mdlname,frmname=:frmname,'
                +'app=:app,edit=:edit,qry=:qry,prin=:prin,del=:del,sh=:sh,Txd=:Txd,Rxd=:Rxd,Out=:Out,'
                +'Submit=:Submit,FCheck=:FCheck,Audit=:Audit,PushDown=:PushDown,Accept=:Accept,Feedback=:Feedback '
                +'where id='+P_id;
      Parameters[0].Value:=Trim(E_FPermission.Text);
      Parameters[1].Value:=Trim(E_mdlname.Text);
      Parameters[2].Value:=Trim(E_frmname.Text);
      Parameters[3].Value:=E_app.Editvalue;
      Parameters[4].Value:=E_edit.EditValue;
      Parameters[5].Value:=E_qry.EditValue;
      Parameters[6].Value:=E_prin.EditValue;
      Parameters[7].Value:=E_del.EditValue;
      Parameters[8].Value:=E_sh.EditValue;
      Parameters[9].Value:=E_Txd.EditValue;
      Parameters[10].Value:=E_Rxd.EditValue;
      Parameters[11].Value:=E_Out.EditValue;
      Parameters[12].Value:=E_Submit.EditValue;
      Parameters[13].Value:=E_FCheck.EditValue;
      Parameters[14].Value:=E_Audit.EditValue;
      Parameters[15].Value:=E_PushDown.EditValue;
      Parameters[16].Value:=E_Accept.EditValue;
      Parameters[17].Value:=E_Feedback.EditValue;
     try
        ExecSQL;
      except
        Messagedlg(Errormsg0004+'0013',mtError,[mbok],0);
        Close;
        Self.Close ;
      end;
      Messagedlg(Infmsg0003,mtInformation,[mbok],0);
      Close;
    end;
  end;
  if  P_state=0 then          //继续增加
  begin
    E_FPermission.SetFocus ;
    E_mdlname.Text:='';
    E_frmname.Text:='';
    E_app.EditValue :=0;
    E_edit.EditValue :=0;
    E_qry.EditValue :=0;
    E_del.EditValue :=0;
    E_prin.EditValue :=0;
    E_sh.EditValue :=0;
    E_Txd.EditValue :=0;
    E_Rxd.EditValue :=0;
    E_Out.EditValue :=0;
    E_Submit.EditValue :=0;
    E_FCheck.EditValue :=0;
    E_Audit.EditValue :=0;
    E_PushDown.EditValue :=0;
    E_Accept.EditValue :=0;
    E_Feedback.EditValue :=0;
  end
  else
    Self.Close ;
end;

procedure TFrm_Edit_rights.E_FPermissionKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   if (key=13) or (key=40) then { 判断是按执行键}
   Begin
     key:=0;
     perform(WM_NEXTDLGCTL,0,0);{移动到下一个控件}
   end;
end;

procedure TFrm_Edit_rights.E_wx_jgdjKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key=13) or (key=40) then { 判断是按执行键}
   Begin
     self.OKBtnClick(sender);
   end;
end;

procedure TFrm_Edit_rights.E_mdlNameExit(Sender: TObject);
begin
  inherited;
{  with ADOquery do
  begin
    Close;
    SQL.Clear ;
    SQL.Text:='Select distinct FrmName from rights where mdlname=:mdlname order by Frmname';
    Parameters[0].Value:=Trim(E_mdlname.Text);
    Open;
    E_frmname.Properties.Items.Clear;
    If RecordCount>0 then
    begin
      while not eof do
      begin
        E_frmname.Properties.Items.Add(Trim(FieldByName('frmname').AsString));
        Next;
      end;
      E_frmname.Text:=Trim(FieldByName('frmname').AsString);
    end;
  end;
}
end;

procedure TFrm_Edit_rights.E_frmnamePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Select * from T_FrmRightName order by frmname';
    qry.Open;
  finally
     ;
  end;

  selValue:=select('选择表单名称','frmname','frmname','frmname','frmname;mdlName',qry);
  If (Length(selValue)>0) then
  begin
    E_frmname.EditValue:=qry.FieldByName('frmname').AsString;
    E_mdlName.EditValue:=qry.FieldByName('mdlName').AsString;

  end
  else
    application.MessageBox('请选择明细！','系统提示',MB_ICONINFORMATION);


end;

procedure TFrm_Edit_rights.E_FPermissionPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  try
    qry.SQL.Text:='Select * from V_SystemUser order by FPermission';
    qry.Open;
  finally
     ;
  end;

  selValue:=select('选择权限权别','FPermission','FPermission','FPermission','FPermission',qry);
  If (Length(selValue)>0) then
  begin
    E_FPermission.EditValue:=qry.FieldByName('FPermission').AsString;
  end
  else
    application.MessageBox('请选择明细！','系统提示',MB_ICONINFORMATION);

end;

end.
