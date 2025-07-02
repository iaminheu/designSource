program DesignBOM;

uses
  Forms,
  FrmData in 'FrmData.pas' {mdlData: TDataModule},
  FrmMain in 'FrmMain.pas' {Frm_main},
  Common in 'Common.pas',
  NeoForm in 'NeoForm.pas' {zypNeoForm},
  FRMBASSDIALOGS in 'FRMBASSDIALOGS.pas' {Frm_bassDialogs},
  LOGO in 'LOGO.pas' {Frm_Logo},
  Setup in 'Setup.pas' {Frm_setup},
  FrmAbout in 'FrmAbout.pas' {Frm_about},
  FrmGridBass in 'FrmGridBass.pas' {Frm_GridBass},
  FrmSelect in 'FrmSelect.pas' {Frm_Select},
  PROGRASS in 'PROGRASS.pas' {Frm_prograss},
  ProgBar in 'ProgBar.pas' {Frm_progbar},
  FrmMessage in 'FrmMessage.pas' {Frm_message},
  Main_Converse in 'Main_Converse.pas' {Frm_Converse},
  Main_systemuser in 'Main_systemuser.pas' {Frm_SysTemUser},
  Main_PermissionCheck in 'Main_PermissionCheck.pas' {Frm_PermissionCheck},
  Main_StockQry in 'Main_StockQry.pas' {Frm_StockQry},
  Main_Permission in 'Main_Permission.pas' {Frm_Permission},
  Main_DesignBOM_Dcc in 'Main_DesignBOM_Dcc.pas' {Frm_DesignBOM_Dcc},
  Main_FileItem in 'Main_FileItem.pas' {Frm_FileItem},
  Main_DesignBOM in 'Main_DesignBOM.pas' {Frm_DesignBOM},
  Main_Item in 'Main_Item.pas' {Frm_Item},
  Main_ItemList in 'Main_ItemList.pas' {Frm_ItemList},
  Main_ProductParts in 'Main_ProductParts.pas' {Frm_ProductParts},
  Main_DesignBOMPick in 'Main_DesignBOMPick.pas' {Frm_DesignBOMPick},
  Main_TechItem in 'Main_TechItem.pas' {Frm_TechItem},
  Main_StockBOM in 'Main_StockBOM.pas' {Frm_StockBOM};

{$R *.res}
begin
  Application.Initialize;
  {$ifndef DEBUG}
  //显示FLASH封面
  Frm_face:=TFrm_face.Create(Application);
  Frm_face.AlphaBlend :=false;
  Frm_face.Show;
  Frm_face.Update;
  {$endif}
  application.ProcessMessages;
  //创建主窗口
  Application.Title := '设计BOM系统';
  Application.CreateForm(TmdlData, mdlData);
  Application.CreateForm(TFrm_main, Frm_main);
  frm_main.Show ;
  frm_main.update;
  {$ifndef DEBUG}
  Frm_face.AlphaBlend :=true;
  Frm_face.Update ;
  {$endif}
  //创建登录窗口

  {$ifndef DEBUG}
  while frm_face.AlphaBlendValue >15 do
  begin
     frm_face.AlphaBlendValue := frm_face.AlphaBlendValue-10;
  end;
  //关闭FLASH
  frm_face.Close ;
  frm_face.Free ;
  {$endif}
  //  ShowLogWindow;
//  Frm_logo.showmodal; //显示登录窗口
//  frm_logo.free;
  Application.Run;
end.
