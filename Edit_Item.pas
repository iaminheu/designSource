unit Edit_Item;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRMBASSDIALOGS, StdCtrls, TFlatEditUnit, TFlatPanelUnit,
  ComCtrls, MenuBar, ToolWin, DsFancyButton, ExtCtrls, TFlatComboBoxUnit,
  DB, DBTables, ADODB, cxLookAndFeelPainters, cxButtons,Common,
  cxTextEdit, cxControls, cxContainer, cxEdit, cxCurrencyEdit, Buttons,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxButtonEdit;

type
  TFrm_Edit_Item = class(TFrm_bassDialogs)
    FlatPanel_edit: TFlatPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label10: TLabel;
    E_FFileNo: TcxTextEdit;
    E_FClientFullName: TcxTextEdit;
    E_FClientShortName: TcxTextEdit;
    E_FPactNo: TcxButtonEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label9: TLabel;
    E_FItemNumber: TcxTextEdit;
    E_FItemModel: TcxTextEdit;
    E_FDesignDate: TcxDateEdit;
    Label6: TLabel;
    E_FProductId: TcxCurrencyEdit;
    Label8: TLabel;
    E_FProductName: TcxButtonEdit;
    E_FItemNo: TcxTextEdit;
    Label7: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure OKBtnClick(Sender: TObject);
    procedure E_FPactNoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure E_FProductNameKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    function AddRd:bool;
    function EditRd:bool;
    procedure InitParam;
    { Private declarations }
  public
    P_state:integer;
    P_id:string;
    { Public declarations }
  end;

var
  Frm_Edit_Item: TFrm_Edit_Item;

implementation

uses FRMDATA, FrmSelect;

{$R *.dfm}
procedure TFrm_Edit_Item.InitParam;
begin
  E_FPactNo.SetFocus ;
  E_FPactNo.Text :='';
  E_FFileNo.Text :='';

end;

function TFrm_Edit_Item.AddRd:bool;
var
 qry:TADOQuery;
begin
  result:=False;
  qry:=TADOQuery.Create(Self);
  qry.Connection:=mdlData.conn;
  try
    qry.SQL.Text:='Insert into T_Item(FItemNo,FPactNo,FFileNo,FClientFullName,FClientShortName,'
                 +'FProductId,FItemNumber,FItemModel,FDesignDate) '
                 +'values(:FItemNo,:FPactNo,:FFileNo,:FClientFullName,:FClientShortName,:FProductId,'
                 +':FItemNumber,:FItemModel,:FDesignDate)';
    qry.Parameters.FindParam('FItemNo').Value:=Trim(E_FItemNo.Text);
    qry.Parameters.FindParam('FPactNo').Value:=Trim(E_FPactNo.Text);
    qry.Parameters.FindParam('FFileNo').Value:=Trim(E_FFileNo.Text);
    qry.Parameters.FindParam('FClientFullName').Value:=Trim(E_FClientFullName.Text);
    qry.Parameters.FindParam('FClientShortName').Value:=Trim(E_FClientShortName.Text);
    qry.Parameters.FindParam('FProductId').Value:=E_FProductId.EditValue;
    qry.Parameters.FindParam('FItemNumber').Value:=Trim(E_FItemNumber.Text);
    qry.Parameters.FindParam('FItemModel').Value:=Trim(E_FItemModel.Text);
    qry.Parameters.FindParam('FDesignDate').Value:=E_FDesignDate.Date;
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

function TFrm_Edit_Item.EditRd:bool;
var
 qry:TADOQuery;
begin
  result:=False;
  qry:=TADOQuery.Create(Self);
  qry.Connection:=mdlData.conn;
  try
    qry.SQL.Text:='Update T_Item set FItemNo=:FItemNo,FPactNo=:FPactNo,FFileNo=:FFileNo,'
                 +'FClientFullName=:FClientFullName,FClientShortName=:FClientShortName,'
                 +'FProductId=:FProductId,FItemNumber=:FItemNumber,'
                 +'FItemModel=:FItemModel,FDesignDate=:FDesignDate where FItemId=:FItemId';
    qry.Parameters.FindParam('FItemNo').Value:=Trim(E_FItemNo.Text);
    qry.Parameters.FindParam('FPactNo').Value:=Trim(E_FPactNo.Text);
    qry.Parameters.FindParam('FFileNo').Value:=Trim(E_FFileNo.Text);
    qry.Parameters.FindParam('FClientFullName').Value:=Trim(E_FClientFullName.Text);
    qry.Parameters.FindParam('FClientShortName').Value:=Trim(E_FClientShortName.Text);
    qry.Parameters.FindParam('FProductId').Value:=E_FProductId.Editvalue;
    qry.Parameters.FindParam('FItemNumber').Value:=Trim(E_FItemNumber.Text);
    qry.Parameters.FindParam('FItemModel').Value:=Trim(E_FItemModel.Text);
    qry.Parameters.FindParam('FDesignDate').Value:=E_FDesignDate.Date;
    qry.Parameters.FindParam('FItemId').Value:=P_id;
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

procedure TFrm_Edit_Item.FormCreate(Sender: TObject);
begin
  inherited;
   P_state:=1;  //0-增加  1-修改
end;

procedure TFrm_Edit_Item.OKBtnClick(Sender: TObject);
var
  qry: TADOQuery;
begin
  If Trim(E_FPactNo.Text)='' then
  begin
    messagedlg(Errormsg0002+'0002',mtError,[mbok],0);
    E_FPactNo.SetFocus ;
    Exit;
  end;
  If Trim(E_FClientFullName.Text)='' then
  begin
    messagedlg(Errormsg0002+'0002',mtError,[mbok],0);
    E_FClientFullName.SetFocus ;
    Exit;
  end;
  If Trim(E_FItemNumber.Text)='' then
  begin
    messagedlg(Errormsg0002+'0002',mtError,[mbok],0);
    E_FItemNumber.SetFocus ;
    Exit;
  end;
  If P_state=0 then    //关键字重复
  begin
    qry:=TADOQuery.Create(Self);
    qry.Connection:=mdlData.conn;
    try
      qry.SQL.Text:='Select * from T_Item where FItemNo=:FItemNo or FItemNumber=:FItemNumber';
      qry.Parameters[0].Value:=Trim(E_FItemNo.Text);
      qry.Parameters[1].Value:=Trim(E_FItemNumber.Text);
      qry.Open;
    finally
       ;
    end;
    If qry.RecordCount>0 then
    begin
      Messagedlg(Errormsg0003+'0003',mtError,[mbok],0);
      E_FItemNo.SetFocus ;
      Exit;
    end;
  end;

  If P_state=0 then//增加数据
  begin
    If Messagedlg(Askmsg0002,mtInformation,[mbyes,mbno],0)=mrno then
      Exit;
    If AddRd then  //增加数据
      If Messagedlg(Askmsg0004,mtInformation,[mbyes,mbno],0)=mryes then
        InitParam
      else
      begin
        Self.Close;
        inherited;
      end;
  end;
  If P_state=1 then //修改数据
  begin
    If Messagedlg(Askmsg0001,mtInformation,[mbyes,mbno],0)=mrno then
      Exit;
    If EditRd then   //修改数据
    begin
      Messagedlg(Infmsg0001,mtInformation,[mbok],0);
      inherited;
      Self.Close;
    end
    else
      Messagedlg(Infmsg0004,mtInformation,[mbok],0);
  end;

  If P_state=0 then          //继续增加
    InitParam     //初始化
  else
    Self.Close ;

end;

procedure TFrm_Edit_Item.E_FPactNoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
   if (key=13) or (key=40) then { 判断是按执行键}
   Begin
     key:=0;
     perform(WM_NEXTDLGCTL,0,0);{移动到下一个控件}
   end;
end;

procedure TFrm_Edit_Item.cxButtonEdit1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.Connection:=mdlData.conn;
  try
    qry.SQL.Text:='select distinct FProductID,FProductName from T_Product order by FProductName';
    qry.Open;
  finally
     ;
  end;
  selValue:=select('请选择产品类型','FProductName','FProductName','FProductName','FProductName',qry);
  If Length(selValue)>0 then
  begin
    E_FProductID.EditValue:=qry.FieldByName('FProductID').Value;
    E_FProductName.Text:=qry.FieldByName('FProductName').AsString;
  end;
  qry.Free;

end;

procedure TFrm_Edit_Item.E_FProductNameKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
   if (key=13) or (key=40) then { 判断是按执行键}
   begin
     self.OKBtnClick(sender);
   end;
end;

end.
