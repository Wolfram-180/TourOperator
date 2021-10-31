unit Unit17;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Db, DBTables, ADODB, cxLookAndFeelPainters,
  cxGroupBox, cxRadioGroup, cxTextEdit, cxControls, cxContainer, cxEdit,
  cxMaskEdit, cxDropDownEdit, cxButtons, cxMemo;

type
  TFOrgRed = class(TForm)
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
    StaticText1: TStaticText;
    Edit18: TEdit;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label38: TLabel;
    Label39: TLabel;
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
    Edit1: TcxTextEdit;
    Edit2: TcxTextEdit;
    Edit19: TcxTextEdit;
    Edit17: TcxTextEdit;
    RadioGroup1: TcxRadioGroup;
    ComboBox5: TcxComboBox;
    rg1: TcxRadioGroup;
    cb1: TCheckBox;
    cxMemo1: TcxMemo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure Edit3KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ComboBox1PropertiesChange(Sender: TObject);
    procedure ComboBox2PropertiesChange(Sender: TObject);
    procedure ComboBox1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FOrgRed: TFOrgRed;
  codeid: integer;

implementation

uses Unit15, unit77, Unit85, unit11, Unit16;

{$R *.DFM}

procedure TFOrgRed.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
FOrgRed:=nil;
end;

procedure TFOrgRed.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TFOrgRed.Edit3Change(Sender: TObject);
begin
edit17.text:=edit3.text;
end;

procedure TFOrgRed.FormCreate(Sender: TObject);
begin

combobox1.text:=dm.agentq.fieldbyname('reg').asstring;
combobox2.text:=dm.agentq.fieldbyname('podreg').asstring;
edit3.text:=dm.agentq.fieldbyname('naimen').asstring;
edit4.text:=dm.agentq.fieldbyname('adres').asstring;
edit5.text:=dm.agentq.fieldbyname('tfe').asstring;
edit6.text:=dm.agentq.fieldbyname('direktor').asstring;
edit7.text:=dm.agentq.fieldbyname('kl').asstring;
edit1.text:=dm.agentq.fieldbyname('fax').asstring;
edit2.text:=dm.agentq.fieldbyname('email').asstring;
edit19.text:=dm.agentq.fieldbyname('site').asstring;
edit16.text:=dm.agentq.fieldbyname('adres_fak').asstring;
edit17.text:=dm.agentq.fieldbyname('pokup').asstring;

combobox5.text:=dm.agentq.fieldbyname('och').asstring;

if dm.agentq.fieldbyname('c').asstring='m' then radiogroup1.ItemIndex:=0 else radiogroup1.ItemIndex:=1;

if dm.agentq.fieldbyname('vverh').asstring='0' then cb1.checked:=true else cb1.checked:=false;

if dm.agentq.fieldbyname('org').asstring='0' then rg1.ItemIndex:=0 else rg1.ItemIndex:=1;

end;

procedure TFOrgRed.cxButton1Click(Sender: TObject);
var c, och, och2, vverh, org, ri, pri : string;
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

ssql:='update agentstva set vverh='+vverh+
',org='+org+
',och2='+quotedstr(och2)+
',och='+quotedstr(och)+
',region='+ri+
',podregion='+pri+
',naimen='+quotedstr(edit3.Text)+
',adres='+quotedstr(edit4.Text)+
',tfe='+quotedstr(edit5.Text)+
',direktor='+quotedstr(edit6.Text)+
',kl='+quotedstr(edit7.Text)+
',c='+quotedstr(c)+
',adres_fak='+quotedstr(edit16.text)+
',pokup='+quotedstr(edit1.text)+
',fax='+quotedstr(edit17.text)+
',email='+quotedstr(edit2.text)+
',site='+quotedstr(edit19.text)+
',oper='+quotedstr(user)+
' where codeid='+ag_id;
executesql(dm.q1,ssql);

dm.agentq.close;
dm.agentq.open;

dm.agentq.Locate('codeid', ag_id, []);

close; 
end;

procedure TFOrgRed.cxButton2Click(Sender: TObject);
begin
close;
end;

procedure TFOrgRed.Edit3KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
edit17.Text:=edit3.text;
end;

procedure TFOrgRed.ComboBox1PropertiesChange(Sender: TObject);
begin

combobox2.Properties.Items.Clear;
combobox2.text:='';
if combobox1.Text='' then exit;

combo_podreg_on_reg_load (FOrgRed.combobox2,region_id(FOrgRed.combobox1.text));

end;

procedure TFOrgRed.ComboBox2PropertiesChange(Sender: TObject);
begin
if combobox1.Text='' then exit;
podreg_id:=podregion_id(ComboBox2.text);
end;

procedure TFOrgRed.ComboBox1MouseDown(Sender: TObject;
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
