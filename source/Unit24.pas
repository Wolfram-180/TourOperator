unit Unit24;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Buttons, Mask, ADODB, cxTextEdit, cxControls,
  cxContainer, cxEdit, cxMaskEdit, cxDropDownEdit, cxCheckBox,
  cxLookAndFeelPainters, cxButtons, cxSpinEdit, cxTimeEdit;

type
  TFGostDobav = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label13: TLabel;
    Label3: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label4: TLabel;
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
    Label6: TLabel;
    te1: TcxTimeEdit;
    te2: TcxTimeEdit;
    Label7: TLabel;
    Label8: TLabel;
    se1: TcxSpinEdit;
    se2: TcxSpinEdit;
    Label10: TLabel;
    cb3: TcxCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FGostDobav: TFGostDobav;

implementation

uses Unit23,Unit85,unit11;

{$R *.DFM}

procedure TFGostDobav.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
FGostDobav:=nil;
end;

procedure TFGostDobav.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TFGostDobav.FormCreate(Sender: TObject);
var i: integer;
begin

dm.podregq.first;

for i:=1 to dm.podregq.RecordCount do
begin
combobox1.properties.Items.add(dm.podregq.fieldbyname('podreg').asstring);
dm.podregq.next;
end;

end;

procedure TFGostDobav.cxButton1Click(Sender: TObject);
var ndt,pr,exk: string;
begin

if edit2.text='' then
begin
sm('Не указано название гостиницы.');
exit;
end;

ssql:='select count(*) from gostinici where nazvanie='+quotedstr(edit2.Text);
opensql(q1,ssql);

if q1.Fields[0].AsInteger<>0 then
begin
sm('Дублируется название объекта размещения. Операция отменена. Измените название.');
exit;
end;

if cb1.checked then ndt:='да' else ndt:='нет';
if checkbox2.checked then pr:='да' else pr:='нет';
if cb3.checked then exk:='да' else exk:='нет';

podreg_id:=podregion_id(combobox1.Text);

ssql:='insert into gostinici (oper,exk,graf_b,graf,pr,podRegrazm,nazvanie,adres,dogovor,prim,rchb,rchz,ndt,napr) values ('+quotedstr(user)+','+quotedstr(exk)+','+se2.text+','+se1.text+','+quotedstr(pr)+','+podreg_id+','+quotedstr(edit2.Text)+','+quotedstr(edit3.Text)+','+quotedstr(edit13.Text)+','+quotedstr(edit14.Text)+','+quotedstr(te1.Text)+','+quotedstr(te2.Text)+','+quotedstr(ndt)+','+combobox2.text+')';
executesql(q1,ssql);

dm.gostin.close;
dm.gostin.open;

ssql:='select MAX(codeid) from gostinici';
opensql(q1,ssql);

dm.gostin.Locate('codeid', q1.fields[0].asinteger, []);

close;

end;

procedure TFGostDobav.cxButton2Click(Sender: TObject);
begin
close;
end;

end.
