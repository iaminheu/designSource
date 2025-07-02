unit Edit_ItemList_1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRMBASSDIALOGS, StdCtrls, TFlatEditUnit, TFlatPanelUnit,
  ComCtrls, MenuBar, ToolWin, DsFancyButton, ExtCtrls, TFlatComboBoxUnit,
  DB, DBTables, ADODB, cxLookAndFeelPainters, cxButtons,Common,
  cxTextEdit, cxControls, cxContainer, cxEdit, cxCurrencyEdit, Buttons,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxButtonEdit, cxCheckBox;

type
  TFrm_Edit_ItemList_1 = class(TFrm_bassDialogs)
    FlatPanel_edit: TFlatPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label10: TLabel;
    E_FPartsName: TcxTextEdit;
    E_FFullNumber: TcxButtonEdit;
    Label9: TLabel;
    E_FInputDate: TcxDateEdit;
    Label7: TLabel;
    E_FIsFinsh: TcxCheckBox;
    E_FItemNumber: TcxButtonEdit;
    E_FPartsCode: TcxButtonEdit;
    Label3: TLabel;
    E_FInputName: TcxButtonEdit;
    Label6: TLabel;
    E_FProductName: TcxButtonEdit;
    Label4: TLabel;
    E_FPartsNumber: TcxButtonEdit;
    procedure FormCreate(Sender: TObject);
    procedure OKBtnClick(Sender: TObject);
    procedure E_FFullNumberKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure E_FProductNameKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure E_FItemNumberPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure E_FPartsCodePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure E_FInputNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    function AddRd:bool;
    function EditRd:bool;
    procedure InitParam;
    { Private declarations }
  public
    P_state:integer;
    P_id:string;
    P_IsFPartsId:boolean;
    P_FPartsId,P_FInputId,P_FItemId:Integer;
    { Public declarations }
  end;

var
  Frm_Edit_ItemList_1: TFrm_Edit_ItemList_1;

implementation

uses FRMDATA, FrmSelect;

{$R *.dfm}
procedure TFrm_Edit_ItemList_1.InitParam;
begin
  E_FItemNumber.SetFocus ;
//  E_FItemNumber.Text :='';
//  E_FPartsCode.Text :='';
 // E_FPartsName.Text :='';

end;

function TFrm_Edit_ItemList_1.AddRd:bool;
var
 qry:TADOQuery;
begin
  result:=False;
  qry:=TADOQuery.Create(Self);
  qry.Connection:=mdlData.conn;
  try
    qry.SQL.Text:='Insert into T_ItemList(FItemId,FPartsId,FPartsNumber) '
                 +'values(:FItemId,:FPartsId,:FPartsNumber)';
    qry.Parameters.FindParam('FItemId').Value:=P_FItemId;
    qry.Parameters.FindParam('FPartsId').Value:=P_FPartsId;
    qry.Parameters.FindParam('FPartsNumber').Value:=Trim(E_FPartsNumber.Text);
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

function TFrm_Edit_ItemList_1.EditRd:bool;
var
 qry:TADOQuery;
begin
  result:=False;
  qry:=TADOQuery.Create(Self);
  qry.Connection:=mdlData.conn;
  try
    qry.SQL.Text:='Update T_ItemList set FItemId=:FItemId,FPartsId=:FPartsId,FPartsNumber=:FPartsNumber '
                 +'where FItemListId=:FItemListId';
    qry.Parameters.FindParam('FItemId').Value:=P_FItemId;
    qry.Parameters.FindParam('FPartsId').Value:=P_FPartsId;
    qry.Parameters.FindParam('FPartsNumber').Value:=Trim(E_FPartsNumber.Text);
    qry.Parameters.FindParam('FItemListId').Value:=P_id;
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

procedure TFrm_Edit_ItemList_1.FormCreate(Sender: TObject);
begin
  inherited;
   P_state:=1;  //0-增加  1-修改
end;

procedure TFrm_Edit_ItemList_1.OKBtnClick(Sender: TObject);
var
  qry: TADOQuery;
begin
  If Trim(E_FItemNumber.Text)='' then
  begin
    messagedlg(Errormsg0002+'0002',mtError,[mbok],0);
    E_FItemNumber.SetFocus ;
    Exit;
  end;
  If Trim(E_FPartsCode.Text)='' then
  begin
    messagedlg(Errormsg0002+'0002',mtError,[mbok],0);
    E_FPartsCode.SetFocus ;
    Exit;
  end;
//  If P_state=0 then    //关键字重复
  If  P_IsFPartsId=True then
  begin
    qry:=TADOQuery.Create(Self);
    qry.Connection:=mdlData.conn;
    try
      qry.SQL.Text:='Select * from V_ItemList where FItemId=:FItemId and FPartsId=:FPartsId';
      qry.Parameters[0].Value:=P_FItemId;
      qry.Parameters[1].Value:=P_FPartsId;
      qry.Open;
    finally
       ;
    end;
    If qry.RecordCount>0 then
    begin
      Messagedlg(Errormsg0003+'0003',mtError,[mbok],0);
      E_FPartsCode.SetFocus ;
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

procedure TFrm_Edit_ItemList_1.E_FFullNumberKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
   if (key=13) or (key=40) then { 判断是按执行键}
   Begin
     key:=0;
     perform(WM_NEXTDLGCTL,0,0);{移动到下一个控件}
   end;
end;

procedure TFrm_Edit_ItemList_1.E_FProductNameKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
   if (key=13) or (key=40) then { 判断是按执行键}
   begin
     self.OKBtnClick(sender);
   end;
end;

procedure TFrm_Edit_ItemList_1.E_FItemNumberPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.Connection:=mdlData.conn;
  try
    qry.SQL.Text:='select * from (Select distinct FItemNumber as th,FProductName as ssth,1 as leaf,FItemId from V_Item '
                 +'union '
                 +'Select distinct FProductName as th,''  '' as ssth,0 as leaf,0 as FItemId from V_Item) as t order by ssth,th';
    qry.Open;
  finally
     ;
  end;
  selValue:=select('请选择产品类型','th','ssth','th','th',qry);
  If (Length(selValue)>0) and (qry.FieldByName('leaf').Value=1) then
  begin
    E_FItemNumber.Text:=qry.FieldByName('th').AsString;
    E_FProductName.Text:=qry.FieldByName('ssth').AsString;
    P_FItemId:=qry.FieldByName('FItemId').AsInteger;

  end
  else
    messagedlg('请选择明细！',mtInformation,[mbok],0);
  qry.Free;


end;

procedure TFrm_Edit_ItemList_1.E_FPartsCodePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.Connection:=mdlData.conn;
  try
    qry.SQL.Text:='select * from V_ProductParts where FProductName=:FProductName';
    qry.Parameters[0].Value:=Trim(E_FProductName.Text);
    qry.Open;
  finally
     ;
  end;
  selValue:=select('请选择部件级别','FPartsCode','FPartsCode','FPartsCode','FPartsCode;FPartsName',qry);
  If Length(selValue)>0 then
  begin
    E_FPartsCode.Text:=qry.FieldByName('FPartsCode').AsString;
    E_FPartsName.Text:=qry.FieldByName('FPartsName').AsString;
    If P_FPartsId=qry.FieldByName('FPartsId').AsInteger then
      P_IsFPartsId:=False
    else
    begin
      P_FPartsId:=qry.FieldByName('FPartsId').AsInteger;
      P_IsFPartsId:=True;
    end;
  end;
  qry.Free;

end;

procedure TFrm_Edit_ItemList_1.E_FInputNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.Connection:=mdlData.conn;
  try
    qry.SQL.Text:='select * from T_InputId ';
    qry.Open;
  finally
     ;
  end;
  selValue:=select('请选择导入人员','FInputName','FInputName','FInputName','FInputName',qry);
  If Length(selValue)>0 then
  begin
    E_FInputName.Text:=qry.FieldByName('FInputName').AsString;
    P_FInputId:=qry.FieldByName('FInputId').AsInteger;
  end;
  qry.Free;

end;

end.
