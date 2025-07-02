unit Main_BOMServer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FrmGridBass, ExtCtrls, StdCtrls, DsFancyButton, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  dxmdaset, cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid,
  cxTextEdit, cxDropDownEdit, cxCalendar, cxMaskEdit, cxContainer, cxLabel,
  cxDBLookupComboBox, ADODB, cxButtonEdit, Grids, DBGrids, ComCtrls,
  ToolWin, ImgList, FR_DSet, FR_DBSet, FR_Class, Buttons, cxCurrencyEdit,
  cxCheckBox, RzShellDialogs, cxListBox,
  dxtree, dxdbtree, RzTabs, RzPanel, RzSplit, cxImage,
  cxImageComboBox, jpeg;

type
  TFrm_BOMServer = class(TFrm_GridBass)
    ImageList: TImageList;
    Panel1: TPanel;
    ToolBar1: TToolBar;
    TB_EXIT: TToolButton;
    MData: TdxMemData;
    DS_MData: TDataSource;
    TB_Delete: TToolButton;
    E_th1: TcxButtonEdit;
    E_th2: TcxButtonEdit;
    ToolButton3: TToolButton;
    frReport: TfrReport;
    frDBDataSet: TfrDBDataSet;
    cxGrid: TcxGrid;
    cxGV: TcxGridDBTableView;
    LB: TcxGridDBColumn;
    TH: TcxGridDBColumn;
    mc: TcxGridDBColumn;
    gg: TcxGridDBColumn;
    djjz: TcxGridDBColumn;
    zz: TcxGridDBColumn;
    ssth: TcxGridDBColumn;
    SL: TcxGridDBColumn;
    scgy: TcxGridDBColumn;
    clbh: TcxGridDBColumn;
    jldw: TcxGridDBColumn;
    TH2: TcxGridDBColumn;
    TH1: TcxGridDBColumn;
    FItemID: TcxGridDBColumn;
    l: TcxGridDBColumn;
    w: TcxGridDBColumn;
    isedit: TcxGridDBColumn;
    id: TcxGridDBColumn;
    cxGL: TcxGridLevel;
    img: TcxGridDBColumn;
    SaveDialog1: TSaveDialog;
    Sel: TcxGridDBColumn;
    ImageList1: TImageList;
    clmcgg: TcxGridDBColumn;
    zsl: TcxGridDBColumn;
    slms: TcxGridDBColumn;
    ToolButton2: TToolButton;
    ToolButton1: TToolButton;
    FStatus: TcxGridDBColumn;
    procedure FormResize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TB_EXITClick(Sender: TObject);
    procedure E_th1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure P_select;
    procedure ToolButton3Click(Sender: TObject);
    procedure TB_DeleteClick(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
 private
    P_BOMTable:string;

    { Private declarations }
  public
    { Public declarations }

  end;

var
  Frm_BOMServer: TFrm_BOMServer;
implementation

uses FRMDATA, COMMON, FRMMAIN, FrmSelect;

{$R *.dfm}


procedure TFrm_BOMServer.P_select;
var qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.Connection:=mdlData.conn;
  qry.CommandTimeout:=500;
  try
    If (Trim(E_th1.Text)<>'') and (Trim(E_th2.Text)='') then
    begin
      qry.SQL.Text:='select * from V_'+P_BOMTable+' where th1=:th1 order by th1,jb,FFullNum';
      qry.Parameters.FindParam('th1').Value:=Trim(E_th1.Text);
    end;
    If (Trim(E_th1.Text)<>'') and (Trim(E_th2.Text)<>'')then
    begin
      qry.SQL.Text:='select * from V_'+P_BOMTable+' where th1=:th1 and th2=:th2 order by th1,jb,FFullNum';
      qry.Parameters.FindParam('th1').Value:=Trim(E_th1.Text);
      qry.Parameters.FindParam('th2').Value:=Trim(E_th2.Text);
    end;
    qry.Open;
  finally
     ;
  end;

  Mdata.CopyFromDataSet(qry);
  Mdata.Active:=True;
  Mdata.First;
  cxGvColumn(cxGv,Mdata);
  qry.Free;
end;

procedure TFrm_BOMServer.FormResize(Sender: TObject);
begin
  inherited;
  L_title.Caption:='BOM数据维护';
  Self.Caption:='BOM数据维护';
end;

procedure TFrm_BOMServer.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=cafree;
  Frm_BOMServer:=nil;
end;

procedure TFrm_BOMServer.TB_EXITClick(Sender: TObject);
begin
  inherited;
  Self.Close;
end;

procedure TFrm_BOMServer.E_th1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var selValue,P_FFullNumber : string;
    qry,qry1: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.Connection:=mdlData.conn;
  qry.CommandTimeout:=500;

  qry1:=TADOQuery.Create(Self);
  qry1.Connection:=mdlData.conn;
  qry1.CommandTimeout:=500;

  try
    qry.SQL.Text:='select th,ssth,FFullNumber from V_DesignBOM_Structure where js<=2 order by js';
    qry.Open;
    qry.Open;
  finally
     ;
  end;
  If qry.RecordCount>0 then
  begin
    selValue:=select('请选择项目及部件','th','ssth','th','ssth;th',qry);
    If length(selValue)>0 then
    begin
      E_th1.Text:=qry.FieldByName('ssth').AsString;
      E_th2.Text:=qry.FieldByName('th').AsString;
//      P_FFullNumber:=copy(qry.FieldByName('FFullNumber').AsString,1,4);
      P_FFullNumber:=qry.FieldByName('FFullNumber').AsString;
    end;

{
    try
      If Trim(E_th2.Text)='' then
      begin
        qry1.SQL.Text:='select distinct FStatus from V_'+P_BOMTable+' where th1=:th1 and FStatus=1';
        qry1.Parameters[0].Value:=Trim(E_th1.Text);
      end
      else
      begin
        qry1.SQL.Text:='select distinct FStatus from V_'+P_BOMTable+' where th1=:th1 and th2=:th2 and FStatus=1';
        qry1.Parameters[0].Value:=Trim(E_th1.Text);
        qry1.Parameters[1].Value:=Trim(E_th2.Text);
      end;
      qry1.Open;
    finally
       ;
    end;
    If qry1.RecordCount>0 then
    begin
      TB_Delete.Visible:=False;
    end
    else
    begin
      TB_Delete.Visible:=True;
    end;

    qry.Free; }
  end;
end;

procedure TFrm_BOMServer.ToolButton3Click(Sender: TObject);
begin
  inherited;
  ExportToExcel(cxGrid,True,TRue);
end;

procedure TFrm_BOMServer.TB_DeleteClick(Sender: TObject);
var qry: TADOQuery;
P_FFullNumber:string;
begin
  qry:=TADOQuery.Create(Self);
  qry.Connection:=mdlData.conn;
  qry.CommandTimeout:=500;

  If ShowMsg('是否删除【'+Trim(E_th1.Text)+'】【.'+Trim(E_th2.Text)+'】的数据？','提示信息') then
  begin
    try
      qry.SQL.Text:='Delete from T_Public where th+mc+gg in '
                   +'(select distinct th+mc+gg from V_DesignBOM_Structure where FFUllNumber like '''+P_FFullNumber+'%'' '
                   +'and th+mc+gg not in (select th+mc+gg from V_DesignBOM_Structure where FFUllNumber not like '''+P_FFullNumber+'%''))';
      qry.ExecSQL;
    finally
       ;
    end;
    try
      qry.SQL.Text:='Delete from T_DesignBOM_Structure where FullNumber like '''+P_FFullNumber+'%''';
      qry.ExecSQL;
    finally
       ;
    end;
    ShowMsg('【'+Trim(E_th1.Text)+'】【.'+Trim(E_th2.Text)+'】的数据已删除完毕！','提示');
  end;
  qry.Free;
end;

procedure TFrm_BOMServer.ToolButton2Click(Sender: TObject);

begin
  inherited;
{  If ShowMsg('是否进行数据备份？','提示信息') then
  begin

    If (Trim(E_th1.Text)<>'') and (Trim(E_th2.Text)='') then
    begin
      SaveDialog1.FileName:='('+Trim(E_th1.Text)+')'+FormatDateTime('yyyymmdd',now())+'.dbf';
      a:='('+Trim(E_th1.Text)+')'+FormatDateTime('yyyymmdd',now())+'.dbf';
      b:=Trim(E_th1.Text);
    end;
    If (Trim(E_th1.Text)<>'') and (Trim(E_th2.Text)<>'') then
    begin
      SaveDialog1.FileName:='('+Trim(E_th1.Text)+')['+copy(Trim(E_th2.Text),pos('.',Trim(E_th2.Text))+1,(length(Trim(E_th2.Text))-pos('.',Trim(E_th2.Text))))+']'+FormatDateTime('yyyymmdd',now())+'.dbf';
      a:='('+Trim(E_th1.Text)+')['+copy(Trim(E_th2.Text),pos('.',Trim(E_th2.Text))+1,(length(Trim(E_th2.Text))-pos('.',Trim(E_th2.Text))))+']'+FormatDateTime('yyyymmdd',now())+'.dbf';
      b:=Trim(E_th1.Text)+'/'+Trim(E_th2.Text);
    end;

    SaveDialog1.Execute;
    self.P_select;
    If Mdata.RecordCount>0 then
    begin
      SMExportToDBF1.FileName:=ExtractFilePath(SaveDialog1.FileName)+a;
      SMExportToDBF1.Execute;
      messagedlg('项目【'+b+'】已成功导出备份到【'+ExtractFilePath(SaveDialog1.FileName)+a+'】文件中！',mtInformation,[mbok],0);
    end;
  end;
}
end;

end.
