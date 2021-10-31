unit Unit60;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Buttons, unit11, registry, Mask,
  cxLookAndFeelPainters, cxSpinEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxControls, cxContainer, cxEdit, cxCheckBox, cxButtons,unit85,
  cxCalendar;

type
  TFSettings = class(TForm)
    Label2: TLabel;
    cxButton1: TcxButton;
    Label8: TLabel;
    te3: TcxTextEdit;
    Label1: TLabel;
    te4: TcxTextEdit;
    Label3: TLabel;
    cxButton2: TcxButton;
    cb1: TComboBox;
    Label4: TLabel;
    te1: TcxTextEdit;
    Label5: TLabel;
    te2: TcxTextEdit;
    de1: TcxDateEdit;
    de2: TcxDateEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    te7: TcxTextEdit;
    Label10: TLabel;
    te8: TcxTextEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure te3PropertiesChange(Sender: TObject);
    procedure te4PropertiesChange(Sender: TObject);
    procedure cb1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cxButton2Click(Sender: TObject);
    procedure te1PropertiesChange(Sender: TObject);
    procedure te2PropertiesChange(Sender: TObject);
    procedure cb1Change(Sender: TObject);
    procedure de1PropertiesChange(Sender: TObject);
    procedure de2PropertiesChange(Sender: TObject);
    procedure te7PropertiesChange(Sender: TObject);
    procedure te8PropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSettings: TFSettings;

implementation

{$R *.DFM}

procedure TFSettings.FormClose(Sender: TObject; var Action: TCloseAction);
begin
sm('Для применения изменений необходимо перезапустить программу.');
action:=cafree;
FSettings:=nil;
end;

procedure TFSettings.FormCreate(Sender: TObject);
begin

te3.text:=dtf;
te4.text:=sharedf;

spis_db_load;

te1.text:=server;
te2.text:=id_cl;

te7.text:=serv_login;
te8.text:=serv_pass;

de1.text:=dnopper;
de2.text:=dkopper;

end;

procedure TFSettings.cxButton1Click(Sender: TObject);
begin
close;
end;

procedure TFSettings.te3PropertiesChange(Sender: TObject);
begin
reg:=tregistry.create;
reg.rootkey:=HKEY_LOCAL_MACHINE;
reg.OpenKey('\SOFTWARE\Operator', true);
reg.writestring('dtf', te3.text);
dtf:=reg.Readstring('dtf');
reg.free;
end;

procedure TFSettings.te4PropertiesChange(Sender: TObject);
begin
reg:=tregistry.create;
reg.rootkey:=HKEY_LOCAL_MACHINE;
reg.OpenKey('\SOFTWARE\Operator', true);
reg.writestring('sharedf', te4.text);
sharedf:=reg.Readstring('sharedf');
reg.free;
end;

procedure TFSettings.cb1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
spis_db_load;
end;

procedure TFSettings.cxButton2Click(Sender: TObject);
begin

server:=te1.text;

database:=cb1.text;

If Application.MessageBox(pchar('Вы уверены, что хотите подключиться к '+
cb1.text+' ?'), pchar('Переключение БД'), MB_YESNO) = idYES Then
begin
reconnect;
sm('БД перезагружена.');

reg:=tregistry.create;
reg.rootkey:=HKEY_LOCAL_MACHINE;
try
reg.OpenKey('\SOFTWARE\Operator', true);
reg.WriteString('database', database);
finally
reg.free;
end;

end;

end;

procedure TFSettings.te1PropertiesChange(Sender: TObject);
begin
reg:=tregistry.create;
reg.rootkey:=HKEY_LOCAL_MACHINE;
reg.OpenKey('\SOFTWARE\Operator', true);
reg.writestring('server', te1.text);
//server:=reg.Readstring('server');
reg.free;
end;

procedure TFSettings.te2PropertiesChange(Sender: TObject);
begin
reg:=tregistry.create;
reg.rootkey:=HKEY_LOCAL_MACHINE;
reg.OpenKey('\SOFTWARE\Operator', true);
reg.writestring('id_cl', te2.text);
id_cl:=reg.Readstring('id_cl');
reg.free;
end;

procedure TFSettings.cb1Change(Sender: TObject);
begin

database:=cb1.text;

reg:=tregistry.create;
reg.rootkey:=HKEY_LOCAL_MACHINE;
try
reg.OpenKey('\SOFTWARE\Operator', true);
reg.WriteString('database', database);
finally
reg.free;
end;

end;

procedure TFSettings.de1PropertiesChange(Sender: TObject);
begin
reg:=tregistry.create;
reg.rootkey:=HKEY_LOCAL_MACHINE;
reg.OpenKey('\SOFTWARE\Operator', true);
reg.writestring('dnopper', de1.text);
dnopper:=reg.Readstring('dnopper');
reg.free;
end;

procedure TFSettings.de2PropertiesChange(Sender: TObject);
begin
reg:=tregistry.create;
reg.rootkey:=HKEY_LOCAL_MACHINE;
reg.OpenKey('\SOFTWARE\Operator', true);
reg.writestring('dkopper', de2.text);
dkopper:=reg.Readstring('dkopper');
reg.free;
end;

procedure TFSettings.te7PropertiesChange(Sender: TObject);
begin
reg:=tregistry.create;
reg.rootkey:=HKEY_LOCAL_MACHINE;
reg.OpenKey('\SOFTWARE\Operator', true);
reg.writestring('serv_login', te7.text);
serv_login:=reg.Readstring('serv_login');
reg.free;
end;

procedure TFSettings.te8PropertiesChange(Sender: TObject);
begin
reg:=tregistry.create;
reg.rootkey:=HKEY_LOCAL_MACHINE;
reg.OpenKey('\SOFTWARE\Operator', true);
reg.writestring('serv_pass', te8.text);
serv_pass:=reg.Readstring('serv_pass');
reg.free;
end;

end.
