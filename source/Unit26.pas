unit Unit26;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Buttons, DBCtrls, Mask, ADODB,
  cxLookAndFeelPainters, cxButtons, cxCheckBox, cxMaskEdit, cxTextEdit,
  cxControls, cxContainer, cxEdit, cxDropDownEdit, cxSpinEdit, cxTimeEdit;

type
  TFGostRed = class(TForm)
    q1: TADOQuery;
    ComboBox1: TcxComboBox;
    Edit2: TcxTextEdit;
    Edit3: TcxTextEdit;
    Edit13: TcxTextEdit;
    Edit14: TcxTextEdit;
    ComboBox2: TcxComboBox;
    cb1: TcxCheckBox;
    CheckBox2: TcxCheckBox;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    Label1: TLabel;
    te1: TcxTimeEdit;
    te2: TcxTimeEdit;
    Label2: TLabel;
    se1: TcxSpinEdit;
    se2: TcxSpinEdit;
    Label5: TLabel;
    cb3: TcxCheckBox;
    Label3: TLabel;
    Label4: TLabel;
    Label13: TLabel;
    Label6: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ComboBox1DropDown(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FGostRed: TFGostRed;

implementation

uses Unit23, unit17, Unit85,unit11;

{$R *.DFM}

procedure TFGostRed.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TFGostRed.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
FGostRed:=nil;
end;

procedure TFGostRed.ComboBox1DropDown(Sender: TObject);
var s: string;
i: integer;
begin

dm.podregq.first;

s:=combobox1.Text;

combobox1.Clear;

for i:=1 to dm.podregq.RecordCount do
begin
combobox1.properties.Items.add(dm.podregq.fieldbyname('podreg').asstring);
dm.podregq.next;
end;

combobox1.Text:=s;

end;

procedure TFGostRed.FormCreate(Sender: TObject);
var i: integer;
begin

dm.podregq.first;

for i:=1 to dm.podregq.RecordCount do
begin
combobox1.properties.Items.add(dm.podregq.fieldbyname('podreg').asstring);
dm.podregq.next;
end;

combobox1.text:=dm.gostin.fieldbyname('podregn').asstring;
te1.text:=dm.gostin.fieldbyname('rchz').asstring;
te2.text:=dm.gostin.fieldbyname('rchb').asstring;
codeid:=dm.gostin.fieldbyname('codeid').asstring;
edit2.text:=dm.gostin.fieldbyname('nazvanie').asstring;
edit3.text:=dm.gostin.fieldbyname('adres').asstring;
combobox2.text:=dm.gostin.fieldbyname('napr').asstring;
edit13.text:=dm.gostin.fieldbyname('dogovor').asstring;
edit14.text:=dm.gostin.fieldbyname('prim').asstring;

se1.text:=dm.gostin.fieldbyname('graf').asstring;
se2.text:=dm.gostin.fieldbyname('graf_b').asstring;

if dm.gostin.fieldbyname('ndt').asstring='да' then cb1.checked:=true else cb1.checked:=false;
if dm.gostin.fieldbyname('pr').asstring='да' then checkbox2.checked:=true else checkbox2.checked:=false;
if dm.gostin.fieldbyname('exk').asstring='да' then cb3.checked:=true else cb3.checked:=false;

end;

procedure TFGostRed.cxButton2Click(Sender: TObject);
begin
close;
end;

procedure TFGostRed.cxButton1Click(Sender: TObject);
var ndt,cd,pr,exk : string;
begin

if edit2.text='' then
begin
sm('Не указано название гостиницы.');
exit;
end;

if cb1.checked then ndt:='да' else ndt:='нет';
if checkbox2.checked then pr:='да' else pr:='нет';
if cb3.checked then exk:='да' else exk:='нет';

cd:=podregion_id(combobox1.Text);

ssql:='update gostinici set exk='+quotedstr(exk)+',graf_b='+se2.text+',graf='+se1.text+',pr='+quotedstr(pr)+',podRegrazm='+cd+',nazvanie='+quotedstr(edit2.Text)+',adres='+quotedstr(edit3.Text)+',dogovor='+quotedstr(edit13.Text)+',prim='+quotedstr(edit14.Text)+',rchz='+quotedstr(te1.Text)+',rchb='+quotedstr(te2.Text)+',ndt='+quotedstr(ndt)+',napr='+combobox2.text+' where codeid='+codeid;
executesql(q1,ssql);

dm.gostin.close;
dm.gostin.open;

dm.gostin.Locate('codeid', codeid, []);

close;

end;

end.
