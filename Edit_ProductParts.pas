unit Edit_ProductParts;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRMBASSDIALOGS, StdCtrls, TFlatEditUnit, TFlatPanelUnit,
  ComCtrls, MenuBar, ToolWin, DsFancyButton, ExtCtrls, TFlatComboBoxUnit,
  DB, DBTables, ADODB, cxLookAndFeelPainters, cxButtons,Common,
  cxTextEdit, cxControls, cxContainer, cxEdit, cxCurrencyEdit, Buttons,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxButtonEdit;

type
  TFrm_Edit_ProductParts = class(TFrm_bassDialogs)
    FlatPanel_edit: TFlatPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label10: TLabel;
    E_FpartsAlias: TcxTextEdit;
    E_FProductId: TcxTextEdit;
    E_FPartsCode: TcxTextEdit;
    E_FPartsName: TcxTextEdit;
    E_FProductName: TcxButtonEdit;
    procedure FormCreate(Sender: TObject);
    procedure OKBtnClick(Sender: TObject);
    procedure E_FProductNameKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure E_FProductNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure E_FpartsAliasKeyDown(Sender: TObject; var Key: Word;
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
  Frm_Edit_ProductParts: TFrm_Edit_ProductParts;

implementation

uses FRMDATA, FrmSelect;

{$R *.dfm}
procedure TFrm_Edit_ProductParts.InitParam;
begin
  E_FPartsCode.SetFocus ;
  E_FPartsCode.Text :='';
  E_FPartsName.Text :='';
  E_FPartsAlias.Text :='';
end;

function TFrm_Edit_ProductParts.AddRd:bool;
var
 qry:TADOQuery;
begin
  result:=False;
  qry:=TADOQuery.Create(Self);
  qry.Connection:=mdlData.conn;
  try
    qry.SQL.Text:='Insert into T_ProductParts(FProductId,FPartsCode,FPartsName,FPartsAlias) '
                 +'values(:FProductId,:FPartsCode,:FPartsName,:FPartsAlias)';
    qry.Parameters.FindParam('FProductId').Value:=E_FProductId.EditValue;
    qry.Parameters.FindParam('FPartsCode').Value:=Trim(E_FPartsCode.Text);
    qry.Parameters.FindParam('FPartsName').Value:=Trim(E_FPartsName.Text);
    qry.Parameters.FindParam('FPartsAlias').Value:=Trim(E_FPartsAlias.Text);
    qry.Parameters.FindParam('FPartsAlias').Value:=Trim(E_FPartsAlias.Text);
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

function TFrm_Edit_ProductParts.EditRd:bool;
var
 qry:TADOQuery;
begin
  result:=False;
  qry:=TADOQuery.Create(Self);
  qry.Connection:=mdlData.conn;
  try
    qry.SQL.Text:='Update T_ProductParts set FProductId=:FProductId,FPartsCode=:FPartsCode,'
                 +'FPartsName=:FPartsName,FPartsAlias=:FPartsAlias where FPartsId=:FPartsId';
    qry.Parameters.FindParam('FProductId').Value:=E_FProductId.EditValue;
    qry.Parameters.FindParam('FPartsCode').Value:=Trim(E_FPartsCode.Text);
    qry.Parameters.FindParam('FPartsName').Value:=Trim(E_FPartsName.Text);
    qry.Parameters.FindParam('FPartsAlias').Value:=Trim(E_FPartsAlias.Text);
    qry.Parameters.FindParam('FPartsAlias').Value:=Trim(E_FPartsAlias.Text);
    qry.Parameters.FindParam('FPartsId').Value:=P_id;
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

procedure TFrm_Edit_ProductParts.FormCreate(Sender: TObject);
begin
  inherited;
   P_state:=1;  //0-增加  1-修改
end;

procedure TFrm_Edit_ProductParts.OKBtnClick(Sender: TObject);
var
  qry: TADOQuery;
begin
  If Trim(E_FProductName.Text)='' then
  begin
    messagedlg(Errormsg0002+'0002',mtError,[mbok],0);
    E_FProductName.SetFocus ;
    Exit;
  end;
  If Trim(E_FPartsCode.Text)='' then
  begin
    messagedlg(Errormsg0002+'0002',mtError,[mbok],0);
    E_FPartsCode.SetFocus ;
    Exit;
  end;
  If Trim(E_FPartsName.Text)='' then
  begin
    messagedlg(Errormsg0002+'0002',mtError,[mbok],0);
    E_FPartsName.SetFocus ;
    Exit;
  end;
  If Trim(E_FpartsAlias.Text)='' then
  begin
    messagedlg(Errormsg0002+'0002',mtError,[mbok],0);
    E_FpartsAlias.SetFocus ;
    Exit;
  end;
  If P_state=0 then    //关键字重复
  begin
    qry:=TADOQuery.Create(Self);
    qry.Connection:=mdlData.conn;
    try
      qry.SQL.Text:='Select * from V_ProductParts where FProductName=:FProductName '
                   +'and FPartsCode=:FPartsCode and FPartsName=:FPartsName';
      qry.Parameters.FindParam('FProductName').Value:=Trim(E_FProductName.Text);
      qry.Parameters.FindParam('FPartsCode').Value:=Trim(E_FPartsCode.Text);
      qry.Parameters.FindParam('FPartsName').Value:=Trim(E_FPartsName.Text);
      qry.Open;
    finally
       ;
    end;
    If qry.RecordCount>0 then
    begin
      Messagedlg(Errormsg0003+'0003',mtError,[mbok],0);
      E_FProductName.SetFocus ;
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

procedure TFrm_Edit_ProductParts.E_FProductNameKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
   if (key=13) or (key=40) then { 判断是按执行键}
   Begin
     key:=0;
     perform(WM_NEXTDLGCTL,0,0);{移动到下一个控件}
   end;
end;

procedure TFrm_Edit_ProductParts.E_FProductNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.Connection:=mdlData.conn;
  try
    qry.SQL.Text:='select distinct FProductId,FProductName from V_ProductParts order by FProductName';
    qry.Open;
  finally
     ;
  end;
  selValue:=select('请选择产品类型','FProductName','FProductName','FProductName','FProductName',qry);
  If Length(selValue)>0 then
  begin
    E_FProductId.Text:=qry.FieldByName('FProductId').AsString;
    E_FProductName.Text:=qry.FieldByName('FProductName').AsString;
  end;
  qry.Free;

end;

procedure TFrm_Edit_ProductParts.E_FpartsAliasKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
   if (key=13) or (key=40) then { 判断是按执行键}
   begin
     self.OKBtnClick(sender);
   end;

end;

end.
