unit Unit79;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Db, DBTables, ADODB, cxMaskEdit, cxDropDownEdit, cxEdit,
  cxTextEdit, cxControls, cxContainer, cxListBox, cxLookAndFeelPainters,
  cxButtons;

type
  TFUsers = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label1: TLabel;
    q1: TADOQuery;
    ListBox1: TcxListBox;
    Edit2: TcxTextEdit;
    Edit1: TcxTextEdit;
    Edit3: TcxTextEdit;
    ComboBox1: TcxComboBox;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure cxListBox1Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FUsers: TFUsers;

    //обработан

implementation

uses unit85,unit11;

{$R *.DFM}

procedure TFUsers.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
FUsers:=nil;
end;

procedure TFUsers.FormCreate(Sender: TObject);
var i: integer;
begin

listbox1.clear;
edit1.clear;
edit2.clear;
edit3.clear;
combobox1.Text:='';

with q1 do
begin
sql.clear;
sql.add('select * from users');
open;
end;

for i:=1 to q1.recordcount do
begin
listbox1.Items.Add(q1.fieldbyname('name').asstring);
q1.next;
end;

end;

procedure TFUsers.Button2Click(Sender: TObject);
begin

if edit2.text='' then exit;

with q1 do
begin
close;
sql.clear;
sql.add('select codeid from users where name='+quotedstr(edit2.text));
open;
end;

if q1.RecordCount<>0 then
begin
sm('Этот пользователь уже зарегистрирован.');
exit;
end;

with q1 do
begin
close;
sql.clear;
sql.add('insert into users (name, type) values ('+quotedstr(edit2.text)+','+quotedstr('Менеджер')+')');
execsql;
end;

FUsers.OnCreate(sender);

end;

procedure TFUsers.Button3Click(Sender: TObject);
var i: integer;
begin

if edit2.text='' then exit;

for i:=0 to listbox1.Items.Count-1 do
begin

if listbox1.Selected[i] then
begin

with q1 do
begin
close;
sql.clear;
sql.add('delete from users where name='+quotedstr(listbox1.Items[i]));
execsql;
end;
combobox1.text:='';
edit1.clear;
edit2.clear;

end;

end;

FUsers.OnCreate(sender);

end;

procedure TFUsers.ListBox1Click(Sender: TObject);
var i: integer;
begin

for i:=0 to listbox1.Items.Count-1 do
begin
if listbox1.Selected[i] then
///////
begin
edit2.Text:=listbox1.Items[i];
edit3.Text:=listbox1.Items[i];

with q1 do
begin
close;
sql.clear;
sql.add('select type, pass from users where name='+quotedstr(listbox1.Items[i]));
open;
end;

combobox1.text:=q1.fieldbyname('type').asstring;

if combobox1.text<>'Администратор' then edit1.Properties.PasswordChar:=#0 else edit1.Properties.PasswordChar:='*';

edit1.text:=q1.fieldbyname('pass').asstring;

end;
/////////
end;

end;

procedure TFUsers.Button1Click(Sender: TObject);
var cdd: integer;
begin

if edit2.text='' then exit;

with q1 do
begin
close;
sql.clear;
sql.add('select codeid from users where name='+quotedstr(edit2.text));
open;
end;
cdd:=q1.fieldbyname('codeid').value;

with q1 do
begin
close;
sql.clear;
sql.add('update users set name='+quotedstr(edit3.text)+',type='+quotedstr(combobox1.text)+',pass='+quotedstr(edit1.text)+' where codeid='+inttostr(cdd));
execsql;
end;

FUsers.OnCreate(sender);

end;

procedure TFUsers.cxListBox1Click(Sender: TObject);
var i: integer;
begin

for i:=0 to listbox1.Items.Count-1 do
begin
if listbox1.Selected[i] then
///////
begin
edit2.Text:=listbox1.Items[i];
edit3.Text:=listbox1.Items[i];

with q1 do
begin
close;
sql.clear;
sql.add('select type, pass from users where name='+quotedstr(listbox1.Items[i]));
open;
end;

combobox1.text:=q1.fieldbyname('type').asstring;

if usert='Администратор' then edit1.Properties.EchoMode:=eemNormal else edit1.Properties.EchoMode:=eemPassword;

if combobox1.text<>'Администратор' then edit1.Properties.EchoMode:=eemNormal else edit1.Properties.EchoMode:=eemPassword;

edit1.text:=q1.fieldbyname('pass').asstring;

end;

end;

end;

procedure TFUsers.cxButton1Click(Sender: TObject);
var cdd: integer;
begin

if edit2.text='' then exit;

with q1 do
begin
close;
sql.clear;
sql.add('select codeid from users where name='+quotedstr(edit2.text));
open;
end;

cdd:=q1.fieldbyname('codeid').asinteger;

with q1 do
begin
close;
sql.clear;
sql.add('update users set name='+quotedstr(edit3.text)+',type='+quotedstr(combobox1.text)+',pass='+quotedstr(edit1.text)+' where codeid='+inttostr(cdd));
execsql;
end;

FUsers.OnCreate(sender);

end;

procedure TFUsers.cxButton3Click(Sender: TObject);
begin

if edit2.text='' then exit;

with q1 do
begin
close;
sql.clear;
sql.add('select codeid from users where name='+quotedstr(edit2.text));
open;
end;

if q1.RecordCount<>0 then
begin
sm('Этот пользователь уже зарегистрирован.');
exit;
end;

with q1 do
begin
close;
sql.clear;
sql.add('insert into users (name, type) values ('+quotedstr(edit2.text)+','+quotedstr('Менеджер')+')');
execsql;
end;

FUsers.OnCreate(sender);

end;

procedure TFUsers.cxButton2Click(Sender: TObject);
var i: integer;
begin

if edit2.text='' then exit;

for i:=0 to listbox1.Items.Count-1 do
begin

if listbox1.Selected[i] then
begin

with q1 do
begin
close;
sql.clear;
sql.add('delete from users where name='+quotedstr(listbox1.Items[i]));
execsql;
end;
combobox1.text:='';
edit1.clear;
edit2.clear;

end;

end;

FUsers.OnCreate(sender);

end;

end.
 
