unit Unit11;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, ComCtrls,  ExtCtrls, StdCtrls,registry,ToolWin,jpeg;

type
  TFMainForm = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N3: TMenuItem;
    ToolBar1: TToolBar;
    clb: TToolButton;
    perb: TToolButton;
    agb: TToolButton;
    gostb: TToolButton;
    otb: TToolButton;
    PopupMenu1: TPopupMenu;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    PopupMenu3: TPopupMenu;
    PopupMenu4: TPopupMenu;
    N19: TMenuItem;
    N20: TMenuItem;
    N21: TMenuItem;
    N24: TMenuItem;
    regb: TToolButton;
    PopupMenu6: TPopupMenu;
    N27: TMenuItem;
    PopupMenu5: TPopupMenu;
    N28: TMenuItem;
    N29: TMenuItem;
    PopupMenu7: TPopupMenu;
    N34: TMenuItem;
    N35: TMenuItem;
    N37: TMenuItem;
    N43: TMenuItem;
    ToolButton10: TToolButton;
    ToolButton15: TToolButton;
    ToolButton16: TToolButton;
    ToolButton18: TToolButton;
    N5: TMenuItem;
    blb: TToolButton;
    PopupMenu8: TPopupMenu;
    N51: TMenuItem;
    ToolButton2: TToolButton;
    ToolButton4: TToolButton;
    N52: TMenuItem;
    Image1: TImage;
    N9: TMenuItem;
    N4: TMenuItem;
    N2: TMenuItem;
    N10: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
    N18: TMenuItem;
    procedure N3Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure clbClick(Sender: TObject);
    procedure agbClick(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N19Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure N24Click(Sender: TObject);
    procedure N27Click(Sender: TObject);
    procedure perbClick(Sender: TObject);
    procedure gostbClick(Sender: TObject);
    procedure otbClick(Sender: TObject);
    procedure regbClick(Sender: TObject);
    procedure N28Click(Sender: TObject);
    procedure N34Click(Sender: TObject);
    procedure N35Click(Sender: TObject);
    procedure N37Click(Sender: TObject);
    procedure N43Click(Sender: TObject);
    procedure N51Click(Sender: TObject);
    procedure blbClick(Sender: TObject);
    procedure N52Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N29Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure N14Click(Sender: TObject);
    procedure N16Click(Sender: TObject);
    procedure N15Click(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure N17Click(Sender: TObject);
    procedure N20Click(Sender: TObject);
    procedure N18Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMainForm: TFMainForm;

implementation

uses Unit85, Unit12, Unit23, Unit33, Unit36, Unit21, Unit19, Unit60,
  Unit65, Unit79, Unit61, Unit77, Unit15, Unit8, Unit76,
  Unit10, Unit1, Unit3, stoim_u, Unit9, Unit7, UNestForm, URegPodrNastr,
  UVodiSop, UKarti, UAvtob, UTest;

{$R *.DFM}

procedure TFMainForm.N3Click(Sender: TObject);
begin
fmainform.Close;
end;

procedure TFMainForm.N5Click(Sender: TObject);
begin
reconnect;
end;

procedure TFMainForm.clbClick(Sender: TObject);
begin
if not assigned(fZaiavki) then Application.CreateForm(TfZaiavki, fZaiavki);
fZaiavki.Show;
end;

procedure TFMainForm.agbClick(Sender: TObject);
begin
popupmenu5.Popup(getclientorigin.X+agb.left,getclientorigin.Y+agb.Height);
end;

procedure TFMainForm.N6Click(Sender: TObject);
begin
if not assigned(FGostinMain) then application.CreateForm(tFGostinMain, FGostinMain);
FGostinMain.show;
end;

procedure TFMainForm.N7Click(Sender: TObject);
begin
if not assigned(FKatNom) then application.CreateForm(tFKatNom, FKatNom);
FKatNom.show;
end;

procedure TFMainForm.N8Click(Sender: TObject);
begin
if not assigned(FPitanie) then application.CreateForm(tFPitanie, FPitanie);
FPitanie.show;
end;

procedure TFMainForm.N9Click(Sender: TObject);
begin
if not assigned(FDati) then application.Createform(TFDati, FDati);
FDati.Show;
end;

procedure TFMainForm.N19Click(Sender: TObject);
begin
if not assigned(FTransfer) then application.CreateForm(tFTransfer, FTransfer);
FTransfer.show;
end;

procedure TFMainForm.FormCreate(Sender: TObject);
begin

n10.Visible:=false;

reg:=tregistry.create;
reg.rootkey:=HKEY_LOCAL_MACHINE;
try
        if reg.keyexists('SOFTWARE\Operator')=false then
        begin

        reg.CreateKey('\SOFTWARE\Operator') ;
        reg.OpenKey('\SOFTWARE\Operator', true);

        indent:=1;
        dtf:='dd.mm.yyyy';
        sharedf:=ExtractFilePath(application.exename);
        server:='';
        id_cl:='';
        database:='';
        dnopper:=formatdatetime('dd.mm.yyyy',now);
        dkopper:=formatdatetime('dd.mm.yyyy',now+365);
        serv_login:='op';
        serv_pass:='mp';

        reg.WriteInteger('indent', 1);
        reg.WriteString('dtf', 'dd.mm.yyyy');
        reg.WriteString('sharedf', sharedf);
        reg.WriteString('database', '');
        reg.WriteString('server', '');
        reg.WriteString('id_cl', '');
        reg.WriteString('dnopper', dnopper);
        reg.WriteString('dkopper', dkopper);
        reg.WriteString('serv_login', serv_login);
        reg.WriteString('serv_pass', serv_pass);

        end
        else
        begin
        reg.OpenKey('\SOFTWARE\Operator', true);

        indent:=reg.readinteger('indent');
        dtf:=reg.ReadString('dtf');
        sharedf:=reg.ReadString('sharedf');
        database:=reg.ReadString('database');
        server:=reg.ReadString('server');
        id_cl:=reg.ReadString('id_cl');
        dnopper:=reg.ReadString('dnopper');
        dkopper:=reg.ReadString('dkopper');
        serv_login:=reg.ReadString('serv_login');
        serv_pass:=reg.ReadString('serv_pass');

        end;
        finally
        reg.free;
        end;

end;

procedure TFMainForm.N24Click(Sender: TObject);
begin
if not assigned(FSettings) then application.CreateForm(tFSettings, FSettings);
FSettings.show;
end;

procedure TFMainForm.N27Click(Sender: TObject);
begin
if not assigned(FUsers) then application.CreateForm(tFUsers, FUsers);
FUsers.show;
end;

procedure TFMainForm.perbClick(Sender: TObject);
begin
popupmenu4.Popup(getclientorigin.X+perb.left,getclientorigin.Y+perb.Height);
end;

procedure TFMainForm.gostbClick(Sender: TObject);
begin
popupmenu1.Popup(getclientorigin.X+gostb.left,getclientorigin.Y+gostb.Height);
end;

procedure TFMainForm.otbClick(Sender: TObject);
begin
if not assigned(FStat) then application.CreateForm(tFStat, FStat);
FStat.show;
end;

procedure TFMainForm.regbClick(Sender: TObject);
begin
if not assigned(FRegPodregNastr) then application.CreateForm(tFRegPodregNastr, FRegPodregNastr);
FRegPodregNastr.show;
end;

procedure TFMainForm.N28Click(Sender: TObject);
begin
if not assigned(FFirmMain) then application.CreateForm(tFFirmMain, FFirmMain);
FFirmMain.show;
end;

procedure TFMainForm.N34Click(Sender: TObject);
begin
if not assigned(fZaiavki) then Application.CreateForm(TfZaiavki, fZaiavki);
fZaiavki.Show;
end;

procedure TFMainForm.N35Click(Sender: TObject);
begin
if not assigned(FClSearch) then Application.CreateForm(TFClSearch, FClSearch);
FClSearch.Show;
end;

procedure TFMainForm.N37Click(Sender: TObject);
begin
if not assigned(FStat) then application.CreateForm(tFStat, FStat);
FStat.show;
end;

procedure TFMainForm.N43Click(Sender: TObject);
begin
reload_base;
sm('БД перезагружена.');
end;

procedure TFMainForm.N51Click(Sender: TObject);
begin
if not assigned(FBlForming) then application.Createform(tFBlForming, FBlForming);
FBlForming.Show;
end;

procedure TFMainForm.blbClick(Sender: TObject);  
begin
popupmenu8.Popup(getclientorigin.X+blb.left,getclientorigin.Y+blb.Height);
end;

procedure TFMainForm.N52Click(Sender: TObject);
begin
if not assigned(FKomf) then application.CreateForm(tFKomf, FKomf);
FKomf.show;
end;

procedure TFMainForm.N2Click(Sender: TObject);
begin
if not assigned(FStoim) then application.CreateForm(tFStoim, FStoim);
FStoim.show;
end;

procedure TFMainForm.N29Click(Sender: TObject);
begin
if not assigned(FBonus) then application.CreateForm(tFBonus, FBonus);
FBonus.show;
end;

procedure TFMainForm.N12Click(Sender: TObject);
begin
if not assigned(FDop) then application.CreateForm(tFDop, FDop);
FDop.show;
end;

procedure TFMainForm.N13Click(Sender: TObject);
begin
if not assigned(FDati_Nestand) then application.Createform(TFDati_Nestand, FDati_Nestand);
FDati_Nestand.Show;
end;

procedure TFMainForm.N14Click(Sender: TObject);
begin
if not assigned(FNestForming) then application.Createform(tFNestForming, FNestForming);
FNestForming.Show;
end;

procedure TFMainForm.N16Click(Sender: TObject);
begin
sm('Оператор '+version+'. Все права на данную программу принадлежат Ульвису Сергею Сергеевичу.');
end;

procedure TFMainForm.N15Click(Sender: TObject);
begin
sm('Извините, в разработке.');
end;

procedure TFMainForm.N21Click(Sender: TObject);
begin
if not assigned(FVodiSop) then application.CreateForm(tFVodiSop, FVodiSop);
FVodiSop.show;
end;

procedure TFMainForm.N17Click(Sender: TObject);
begin
if not assigned(FKarti) then application.CreateForm(tFKarti, FKarti);
FKarti.show;
end;

procedure TFMainForm.N20Click(Sender: TObject);
begin
if not assigned(FAvtob) then application.CreateForm(tFAvtob, FAvtob);
FAvtob.show;
end;

procedure TFMainForm.N18Click(Sender: TObject);
begin

if user<>'Admin' then
begin
sm('Данная возможность доступна только администратору системы.');
exit;
end;

if not assigned(FTest) then application.CreateForm(tFTest, FTest);
FTest.show;

end;

end.

