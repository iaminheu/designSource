unit FrmGridBass;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, DB, ADODB, Grids, DBGrids, ComCtrls,cxGrid,cxExportGrid4Link,
  ToolWin, ImgList, jpeg;
const
  extExcel=0;
  extHTML=1;
  extXML=2;
  extText=3;

type
  TFrm_GridBass = class(TForm)
    Image: TImage;
    L_title: TLabel;
    P_back: TPanel;
    Panel_down: TPanel;
    Bevel_bass: TBevel;
    P_main: TPanel;
    procedure TB_EXITClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function ExportGridData(AGrid: TcxGrid; const ExtType: Integer;
      AExpand, ASaveAll: Bool): bool;
    function ExportToExcel(AGrid: TcxGrid; AExpand, ASaveAll: Bool): bool;
    function ExportToHTML(AGrid: TcxGrid; AExpand, ASaveAll: Bool): bool;
    function ExportToText(AGrid: TcxGrid; AExpand, ASaveAll: Bool): bool;
    function ExportToXML(AGrid: TcxGrid; AExpand, ASaveAll: Bool): bool;

  end;

var
  Frm_GridBass: TFrm_GridBass;

implementation

//uses FrmWorkMain;


{$R *.dfm}

procedure TFrm_GridBass.TB_EXITClick(Sender: TObject);
begin
   self.Close;
end;

procedure TFrm_GridBass.FormResize(Sender: TObject);
begin
   L_title.Caption :=self.Caption;
   L_title.left:=0;
   L_title.top:=1;
   L_title.Width :=self.Width;
   Image.Width :=self.Width;
end;

procedure TFrm_GridBass.FormShow(Sender: TObject);
begin
   self.Resize ;
end;

function SelSaveFile(var FileName:string;
        const ExtType:Integer;const Caption:string='另存为'): bool;
const
 ExtNames:array[0..3,0..2]of string=(
        ('电子表格|*.xls','*.xls','.xls'),
        ('HTML|*.html','*.html','.html'),
        ('XML|*.xml','*.xml','.xml'),
        ('文本文件|*.txt','*.txt','.txt')
        );
var
  FdlgSave: TSaveDialog;
  iSize : Integer;
  Ext: string;
begin
  FdlgSave:=TSaveDialog.Create(Application);
 try
   FdlgSave.Filter:=ExtNames[ExtType][0];
   FdlgSave.Title:=Caption;
   FdlgSave.DefaultExt:=ExtNames[ExtType][1];
   FdlgSave.InitialDir:=ExtractFilePath(Application.ExeName);
   result:=FdlgSave.Execute;
   if not result then exit;
   FileName:=LowerCase(Fdlgsave.FileName);
   iSize:=Length(ExtNames[ExtType][2]);
   Ext:=Copy(FileName,length(FileName)-iSize+1,iSize);
   if not(Ext=ExtNames[ExtType][2])
    then FileName :=ChangeFileExt(FileName,ExtNames[ExtType][2]);
   if FileExists(FileName) then
      If messagedlg('文件['+FileName+']已存在，是否覆盖原文件？',mtInformation,[mbyes,mbno],0)=mryes
         then result:=true
         else result:=false;
 finally
   fdlgSave.Free;
 end;
end;

function TFrm_GridBass.ExportGridData(AGrid: TcxGrid; const ExtType: Integer;
  AExpand, ASaveAll: Bool): bool;
var
 sFileName:string;
begin
 result:=SelSaveFile(sFileName,ExtType);
 if not Result
  then begin   messagedlg('导出失败！',mtInformation,[mbok],0);exit;end;
 try
  case ExtType of
   extExcel:ExportGrid4ToExcel(sFileName,AGrid,AExpand,ASaveAll);
   extHTML:ExportGrid4ToHtml(sFileName,AGrid,AExpand,ASaveAll);
   extXML:ExportGrid4ToXML(sFileName,AGrid,AExpand,ASaveAll);
   extText:ExportGrid4ToText(sFileName,AGrid,AExpand,ASaveAll,',');
  end;
  messagedlg(format('恭喜你，已成功将数据导出到%s文件中！',[sFileName]),mtInformation,[mbok],0);
 except
  on e:Exception do begin
   messagedlg(format('导出失败，错误信息为%s!',[e.Message]),mtInformation,[mbok],0);
   result:=false;
  end;
 end;
end;

function TFrm_GridBass.ExportToText(AGrid: TcxGrid; AExpand, ASaveAll: Bool): bool;
begin
 result:=ExportGridData(AGrid,extText,AExpand,ASaveAll);
end;

function TFrm_GridBass.ExportToExcel(AGrid: TcxGrid; AExpand, ASaveAll: Bool): bool;
begin
 result:=ExportGridData(AGrid,extExcel,AExpand,ASaveAll);
end;

function TFrm_GridBass.ExportToXML(AGrid: TcxGrid; AExpand, ASaveAll: Bool): bool;
begin
 result:=ExportGridData(AGrid,extXML,AExpand,ASaveAll);
end;

function TFrm_GridBass.ExportToHTML(AGrid: TcxGrid; AExpand, ASaveAll: Bool): bool;
begin
 result:=ExportGridData(AGrid,extHTML,AExpand,ASaveAll);
end;

end.
