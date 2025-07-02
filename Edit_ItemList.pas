unit Edit_ItemList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRMBASSDIALOGS, cxLookAndFeelPainters, StdCtrls, cxButtons,
  ExtCtrls, ComCtrls, MenuBar, ToolWin, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxCheckBox,
  cxButtonEdit, cxCurrencyEdit, cxDropDownEdit, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, cxTextEdit, cxContainer,
  cxMaskEdit, cxCalendar, dxtree, dxdbtree, RzButton, RzPanel, RzSplit,
  ADODB, dxmdaset, Grids, DBGrids, Buttons, cxLabel, cxTimeEdit, cxBlobEdit;

type
  TFrm_Edit_ItemList = class(TFrm_bassDialogs)
    Panel_upper: TPanel;
    L_Title: TLabel;
    cxGrid: TcxGrid;
    cxGV: TcxGridDBTableView;
    FFullNumber: TcxGridDBColumn;
    FPartsCode: TcxGridDBColumn;
    FPartsNumber: TcxGridDBColumn;
    FInputDate: TcxGridDBColumn;
    cxGL: TcxGridLevel;
    MData: TdxMemData;
    Label2: TLabel;
    MDatajsl: TFloatField;
    MDatajdj: TFloatField;
    MDataxh: TIntegerField;
    MDatajje: TFloatField;
    Label1: TLabel;
    E_FItemNumber: TcxButtonEdit;
    Label3: TLabel;
    E_FItemNO: TcxTextEdit;
    IsApp: TcxGridDBColumn;
    DS_mData: TDataSource;
    E_FItemId: TcxButtonEdit;
    FPartsId: TcxGridDBColumn;
    FPartsName: TcxGridDBColumn;
    E_FProductId: TcxTextEdit;
    procedure OKBtnClick(Sender: TObject);
    procedure E_FItemNumberKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure E_dahPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure E_th2PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure IsAppGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: String);
  private
    { Private declarations    }

  public
    P_state:integer;
    P_IsEdit,P_IsApp,P_Chang:bool;
   { Public declarations }
  end;

var
  Frm_Edit_ItemList: TFrm_Edit_ItemList;

implementation

uses FrmData, FrmSelect, Common, FrmMain, Main_ItemList;

{$R *.dfm}

procedure TFrm_Edit_ItemList.OKBtnClick(Sender: TObject);
var qry: TADOQuery;

begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;

  mData.Edit;
  mData.Post;
  If Trim(E_FItemNumber.Text)='' then
  begin
    Messagedlg(Errormsg0002+'0002',mtError,[mbok],0);
    E_FItemNumber.SetFocus ;
    Exit;
  end;

  If P_state=1 then  //修改
  begin
    If Messagedlg('是否要保存修改的数据？',mtInformation,[mbyes,mbno],0)=mrno then
       Exit;
  end;
  If P_state=0 then  //新增
  begin
    If Messagedlg('是否要保存新增的数据？',mtInformation,[mbyes,mbno],0)=mrno then
       Exit;
  end;

  try
    qry.SQL.Text:='Delete from T_ItemList where FItemId=:FItemId ';
    qry.Parameters.ParamByName('FItemId').Value:=Trim(E_FItemId.Text);
    qry.ExecSQL;
  finally
    ;
  end;

  MData.First;
  while not Mdata.EoF do
  begin
    if mData['IsApp'] then
    begin
      try
        qry.SQL.Text:='Insert into T_ItemList(FItemId,FPartsId,FPartsNumber,FFullNumber,FIsFinsh,FInputDate,FInputid)'
                     +'values (:FItemId,:FPartsId,:FPartsNumber,:FFullNumber,:FIsFinsh,:FInputDate,:FInputid)';
        qry.Parameters.FindParam('FItemId').value:=Trim(E_FItemId.Text);
        qry.Parameters.FindParam('FPartsId').value:=mData['FPartsId'];
        qry.Parameters.FindParam('FPartsNumber').value:=mData['FPartsNumber'];
        qry.Parameters.FindParam('FFullNumber').value:=mData['FFullNumber'];
        qry.Parameters.FindParam('FIsFinsh').value:=mData['FIsFinsh'];
        qry.Parameters.FindParam('FInputDate').value:=mData['FInputDate'];
        qry.Parameters.FindParam('FInputid').value:=mData['FInputid'];
        qry.ExecSQL;
      finally
        ;
      end;
    end;
    mData.Next;
  end;
  If P_state=1 then  //修改
  begin
    Messagedlg(Infmsg0003,mtInformation,[mbok],0);
    Close;
    Self.Close ;
  end;
  If P_state=0 then  //新增
  begin
    Messagedlg(Infmsg0001,mtInformation,[mbok],0);
  end;
 If  P_state=0 then          //继续增加
  begin
    E_FItemNumber.SetFocus ;
    E_FItemNumber.Text :='';
  end
  else
    Self.Close ;

end;

procedure TFrm_Edit_ItemList.E_FItemNumberKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   if (key=13) or (key=40) then { 判断是按执行键}
   Begin
     key:=0;
     perform(WM_NEXTDLGCTL,0,0);{移动到下一个控件}
   end;

end;

procedure TFrm_Edit_ItemList.E_dahPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.Connection:=mdlData.conn;
  try
    qry.SQL.Text:='select *  from V_Item order by FItemNumber';
    qry.Open;
  finally
     ;
  end;
  selValue:=select('请选择图号','FItemNumber','FItemNumber','FItemNumber','FItemNumber',qry);
  If Length(selValue)>0 then
  begin
    E_FItemNumber.Text:=qry.FieldByName('FItemNumber').AsString;
    E_FItemId.Text:=qry.FieldByName('FItemId').AsString;
    E_FItemNo.Text:=qry.FieldByName('FItemNo').AsString;
    E_FProductId.Text:=qry.FieldByName('FProductId').AsString;
  end;



  try
    qry.SQL.Text:='select IsEdit=cast(0 as bit),'''+Trim(E_FItemNumber.Text)+''' as FItemNumber,'
                 +'isnull(b.FItemId,'''') as FItemId, '
                 +'case isnull(b.FItemId,'''') when '''' then cast(0 as bit) else cast(1 as bit) end as IsApp,'''
                 +Trim(E_FItemNo.Text)+''' as FItemNo, a.FPartsId, '
                 +'case isnull(b.FpartsNumber,'''') when '''' then '''+Trim(E_FItemNumber.Text)+'''+''.''+a.FPartsCode else b.FpartsNumber end as FpartsNumber,'
                 +'case isnull(b.FFullNumber,'''') when '''' then '''+Trim(E_FItemNo.Text)+'''+''.''+Replicate(''0'',3-len(cast(a.FPartsCode as int)))+cast(cast(a.FPartsCode as int) as Varchar)  else b.FFullNumber end as FFullNumber,'
                 +'ISNULL(b.FIsFinsh, 0) AS FIsFinsh, b.FInputDate, b.FInputId,a.* from '
                 +'(select * from V_ProductParts where FProductid=:FProductid ) as a left outer join '
                 +'(select * from V_ItemList where FProductid=:FProductid and FItemid=:FItemid  ) as b on a.FProductid=b.FProductid and a.FPartsCode=b.FPartsCode order by FFullNumber ';
    qry.Parameters[0].Value:=Trim(E_FProductId.Text);
    qry.Parameters[1].Value:=Trim(E_FProductId.Text);
    //qry.Parameters[2].Value:=P_FItemid;
    qry.Open;
  finally
     ;
  end;
  If qry.RecordCount>0 then
  begin
    Mdata.CopyFromDataSet(qry);
    Mdata.Active:=True;
    Mdata.First;
  end;
  qry.Free;

end;

procedure TFrm_Edit_ItemList.E_th2PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  try
    qry.SQL.Text:='Select distinct th2 from V_DesignBOM where th1=:th1 order by th2';
    qry.Parameters.FindParam('th1').Value:=Trim(E_FItemNumber.Text);
    qry.Open;
  finally
     ;
  end;
  If qry.RecordCount=1 then
     (Sender as TcxButtonEdit).EditingText:=qry.FieldByName('th2').AsString
  else
  begin
    selValue:=select('选择二级图号！','th2','th2','th2','th2',qry);
    If Length(selValue)>0 then
       (Sender as TcxButtonEdit).EditingText:=qry.FieldByName('th2').AsString
    else
      messagedlg('请选择二级图号！',mtInformation,[mbok],0);
  end;


  try
    qry.SQL.Text:='Select IsEdit=cast(0 as bit),case isnull(a.scbjlb,'''') when '''' then cast(0 as bit) else cast(1 as bit) end as IsApp, '
                 +'isnull(a.dah,'''') as dah,b.th1,b.th2,'
                 +'b.scbjlb,isnull(jglb,''未排计划'') as jglb,isnull(jgbm,''除尘器厂'') as jgbm,isnull(jgbz,''龙马车间'') as jgbz,'
                 +'case isnull(jhwgDate,'''') when '''' then '
                 +'Convert(varchar(10),DateName(yyyy,getdate())+''-''+DateName(mm,getdate())+''-''+DateName(dd,getdate())) '
                 +'else jhwgDate end as jhwgDate '
                 +'from V_btscjh as a right outer join '
                 +'(Select distinct scbjlb,th1,th2 from V_DesignBOM  where th1=:th1 and th2=:th2 ) as b '
                 +'on a.scbjlb=b.scbjlb and a.th1=b.th1 and a.th2=b.th2 order by b.scbjlb';
    qry.Parameters.FindParam('th1').value:=Trim(E_FItemNumber.Text);
   // qry.Parameters.FindParam('th2').value:=Trim(E_th2.Text);
    qry.Open;
  finally
     ;
  end;
  If qry.RecordCount>0 then
  begin
    Mdata.CopyFromDataSet(qry);
    Mdata.Active:=True;
    Mdata.First;
  end;
  qry.Free;
end;

procedure TFrm_Edit_ItemList.IsAppGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: String);
begin
  inherited;
  If IsApp.EditValue=True then
  begin
    FFullNumber.EditValue:=Trim(E_FItemNo.Text)+'.'+FPartsCode.EditValue;
  end;

end;

end.
