unit Unit80;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, unit11, ADODB, MPlayer,
  cxLookAndFeelPainters, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxButtons, cxMaskEdit, cxDropDownEdit, ExtCtrls,unit85, cxMemo;

type
  TFLogin = class(TForm)
    b1: TcxButton;
    Edit1: TcxTextEdit;
    cb1: TcxComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Timer1: TTimer;
    procedure b1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure cxMemo1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FLogin: TFLogin;

implementation

{$R *.DFM}

procedure TFLogin.b1Click(Sender: TObject);
begin

if cb1.text='' then
begin
sm('Не указан логин.');
exit;
end;

ssql:='select pass, type, name from users where pass='+quotedstr(edit1.text)+' and name='+quotedstr(cb1.text);
opensql(dm.q1,ssql);

if dm.q1.recordcount=0 then
begin
sm('Такой учетной записи не существует или введен ошибочный пароль.');
edit1.text:='';
exit;
end;

usert:=dm.q1.FieldByName('type').asstring;
user:=dm.q1.FieldByName('name').asstring;

unlock_appl;

FMainForm.N10.Visible:=true;

if usert<>'Администратор' then
begin
FMainForm.N27.Visible:=false;
FMainForm.N10.Visible:=false;
end;

close;

end;

procedure TFLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin

action:=cafree;
FLogin:=nil;

end;

procedure TFLogin.FormCreate(Sender: TObject);
var i : integer;
begin

if dm.usersq.Active=false then dm.usersq.open;

for i:=1 to dm.usersq.RecordCount do
begin
cb1.properties.items.add(dm.usersq.fieldbyname('name').asstring);
dm.usersq.next;
end;

end;

procedure TFLogin.FormActivate(Sender: TObject);
begin

cb1.SetFocus;
  
{edit1.text:='123';
cb1.text:='Admin'; }

end;

procedure TFLogin.Timer1Timer(Sender: TObject);
begin
if cb1.text='Admin' then b1.onclick(sender);
end;

procedure TFLogin.cxMemo1Click(Sender: TObject);
begin
cb1.setfocus;
end;

end.
