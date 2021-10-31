unit Unit16;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Db, DBTables, ExtCtrls, ADODB, cxLookAndFeelPainters,
  cxTextEdit, cxControls, cxContainer, cxEdit, cxMaskEdit, cxDropDownEdit,
  cxButtons, cxGroupBox, cxRadioGroup, cxMemo;

type
  TFOrgDobav = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    GroupBox1: TGroupBox;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    Edit14: TEdit;
    Edit15: TEdit;
    Label18: TLabel;
    Label19: TLabel;
    StaticText1: TStaticText;
    Edit2: TEdit;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    cb1: TCheckBox;
    Label10: TLabel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    ComboBox1: TcxComboBox;
    ComboBox2: TcxComboBox;
    Edit3: TcxTextEdit;
    Edit4: TcxTextEdit;
    Edit16: TcxTextEdit;
    Edit5: TcxTextEdit;
    Edit7: TcxTextEdit;
    Edit6: TcxTextEdit;
    Edit17: TcxTextEdit;
    Edit18: TcxTextEdit;
    Edit19: TcxTextEdit;
    Edit1: TcxTextEdit;
    RadioGroup1: TcxRadioGroup;
    ComboBox5: TcxComboBox;
    rg1: TcxRadioGroup;
    Label25: TLabel;
    cxMemo1: TcxMemo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure ComboBox2PropertiesChange(Sender: TObject);
    procedure ComboBox1PropertiesChange(Sender: TObject);
    procedure Edit4KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit3KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ComboBox1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FOrgDobav: TFOrgDobav;

implementation

uses Unit15, {Unit56,} unit77, Unit85, unit11;

{$R *.DFM}

procedure TFOrgDobav.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
FOrgDobav:=nil;
end;

procedure TFOrgDobav.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TFOrgDobav.Edit3Change(Sender: TObject);
begin
edit1.Text:=edit3.text;
end;

procedure TFOrgDobav.cxButton1Click(Sender: TObject);
var c, och, {och2,} vverh, org, ri, pri : string;
begin

if radiogroup1.ItemIndex=-1 then
begin
sm('Не указано, какие цены использовать.');
exit;
end;

if combobox5.text='0' then
begin
sm('Неверно указана очередность.');
exit;
end;

if (combobox1.text='') or (combobox2.text='') then
begin
sm('Не указаны необходимые данные.');
exit;
end;

och:=combobox5.text;

if cb1.checked then vverh:='0' else vverh:='1';

if rg1.itemindex=0 then org:='0' else org:='1';

if radiogroup1.ItemIndex=0 then c:='m' else c:='t';

ri:=region_id(combobox1.text);

pri:=podregion_id(combobox2.text);

ssql:='insert into agentstva (oper,och,region,podregion,naimen,adres,tfe,direktor,kl,c,adres_fak,pokup,fax,email,site,vverh,org)'+
' values ('+quotedstr(user)+','+quotedstr(och)+','+ri+','+ pri +','+quotedstr(edit3.Text)+','+
quotedstr(edit4.Text)+','+quotedstr(edit5.Text)+','+quotedstr(edit6.Text)+','+quotedstr(edit7.Text)+','+quotedstr(c)+','+
quotedstr(edit16.text)+','+quotedstr(edit1.text)+','+quotedstr(edit17.text)+','+quotedstr(edit18.text)+','+quotedstr(edit19.text)+
','+vverh+','+org+')';
executesql(dm.q1,ssql);

dm.agentq.close;
dm.agentq.open;

ssql:='select MAX(codeid) as codid from agentstva';
opensql(dm.q1,ssql);

dm.agentq.Locate('codeid', dm.q1.fieldbyname('codid').asinteger, []);

close;

end;

procedure TFOrgDobav.cxButton2Click(Sender: TObject);
begin
close;
end;

procedure TFOrgDobav.ComboBox2PropertiesChange(Sender: TObject);
begin
if combobox1.Text='' then exit;
podreg_id:=podregion_id(ComboBox2.text);
end;

procedure TFOrgDobav.ComboBox1PropertiesChange(Sender: TObject);
begin

combobox2.Properties.Items.Clear;
combobox2.text:='';
if combobox1.Text='' then exit;

combo_podreg_on_reg_load (FOrgDobav.combobox2,region_id(combobox1.text));

end;

procedure TFOrgDobav.Edit4KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
edit16.Text:=edit4.text;
end;

procedure TFOrgDobav.Edit3KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
edit1.Text:=edit3.text;
end;

procedure TFOrgDobav.ComboBox1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var i : integer;
begin

combobox1.Properties.Items.Clear;
combobox2.Properties.Items.Clear;

dm.regq.first;

for i:=1 to dm.regq.RecordCount do
begin
combobox1.properties.Items.add(dm.regq.fieldbyname('reg').asstring);
dm.regq.next;
end;

end;

end.
