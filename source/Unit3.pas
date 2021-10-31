unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, FR_DSet, FR_DBSet, FR_Class, StdCtrls,
  cxLookAndFeelPainters, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxButtons, Grids, DBGrids,
  cxCheckBox, cxGroupBox, cxRadioGroup, ExtCtrls, FR_E_HTML2, frHTMExp,
  FR_E_TXT, FR_E_HTM, cxLabel;

type
  TFStat = class(TForm)
    b1: TcxButton;
    de1: TcxDateEdit;
    cb1: TcxComboBox;
    cb2: TcxComboBox;
    Label1: TLabel;
    Label2: TLabel;
    b2: TcxButton;
    cb3: TcxComboBox;
    cb4: TcxComboBox;
    chb1: TcxCheckBox;
    Label3: TLabel;
    cb5: TcxComboBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    cb6: TcxComboBox;
    Label7: TLabel;
    cb7: TcxComboBox;
    Label8: TLabel;
    cb8: TcxComboBox;
    te2: TcxTextEdit;
    Label10: TLabel;
    Label11: TLabel;
    cb9: TcxComboBox;
    chb2: TcxCheckBox;
    chb3: TcxCheckBox;
    b8: TcxButton;
    chb4: TcxCheckBox;
    rg1: TcxRadioGroup;
    b9: TcxButton;
    te3: TcxTextEdit;
    Label12: TLabel;
    cb10: TcxComboBox;
    b12: TcxButton;
    cb11: TcxComboBox;
    Label13: TLabel;
    rg2: TcxRadioGroup;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    rg3: TcxRadioGroup;
    b13: TcxButton;
    Bevel4: TBevel;
    Label14: TLabel;
    de2: TcxDateEdit;
    b14: TcxButton;
    rg4: TcxRadioGroup;
    Label15: TLabel;
    cb12: TcxComboBox;
    b15: TcxButton;
    b16: TcxButton;
    Label9: TLabel;
    cb14: TcxComboBox;
    cb15: TcxCheckBox;
    rg8: TcxRadioGroup;
    cb18: TcxComboBox;
    cxLabel7: TcxLabel;
    cb19: TcxComboBox;
    cxLabel8: TcxLabel;
    cb20: TcxComboBox;
    nzaez: TcxButton;
    rg7: TcxRadioGroup;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure b1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure b2Click(Sender: TObject);
    procedure cb3MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cb4MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cb5MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cb9MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure b8Click(Sender: TObject);
    procedure b9Click(Sender: TObject);
    procedure cb11PropertiesChange(Sender: TObject);
    procedure b12Click(Sender: TObject);
    procedure chb3PropertiesChange(Sender: TObject);
    procedure b14Click(Sender: TObject);
    procedure b15Click(Sender: TObject);
    procedure b16Click(Sender: TObject);
    procedure rg4Click(Sender: TObject);
    procedure cb18PropertiesChange(Sender: TObject);
    procedure cb6MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cb7MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cb8MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cb14MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure nzaezClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FStat: TFStat;

implementation

uses unit11,unit85;

{$R *.dfm}

procedure TFStat.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action := caFree;
FStat := nil;
end;

procedure TFStat.b1Click(Sender: TObject);
begin
if chb3.checked then rg2.itemindex:=0;
ob_svodka(rg2.itemindex,chb3.checked,de1.date);
end;

procedure TFStat.FormCreate(Sender: TObject);
var i : integer;
begin

all_st:=false;

de1.date:=date;
de2.date:=date;

cb1.properties.items.clear;

ssql:='select distinct napr from gostinici order by napr';
opensql(dm.q1,ssql);

if dm.q1.recordcount<>0 then
begin

for i:=1 to dm.q1.recordcount do
begin
if dm.q1.fields[0].asstring<>'' then cb1.properties.items.add(dm.q1.fields[0].asstring);
dm.q1.next;
end;

end;

cb2.properties.items.clear;

ssql:='select distinct graf from gostinici order by graf';
opensql(dm.q1,ssql);

if dm.q1.recordcount<>0 then
begin

for i:=1 to dm.q1.recordcount do
begin
if dm.q1.fields[0].asstring<>'' then cb2.properties.items.add(dm.q1.fields[0].asstring);
dm.q1.next;
end;

end;

// агентства
agcbfill(fstat.cb11);
if cb11.Properties.Items.Count<>0 then cb11.text:=cb11.properties.items[0];

rg4.onclick(sender);

if strtodate('15.07.2006')<=date then
begin
nzaez.Visible:=false;
b16.Visible:=false;
end;

end;

procedure TFStat.b2Click(Sender: TObject);
begin
if (cb1.text='') or (cb2.text='') then exit;
na_vibr(de1.date,cb1.text,cb2.text);
end;

procedure TFStat.cb3MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
if cb5.text='' then exit;
combo_gost_on_podreg_load (Fstat.cb3,'все',podregion_id(fstat.cb5.text));
end;

procedure TFStat.cb4MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var i: integer;
begin

if cb3.text='' then exit;

cb4.properties.items.clear;

ssql:='select distinct per,d1 from bloki where c_gost='+g_id_podreg(cb3.text,podregion_id(cb5.text))+
' and d1>='+quotedstr(formatdatetime(dtf,strtodate(dnopper)))+' and d1<='+quotedstr(formatdatetime(dtf,strtodate(dkopper)))+' order by d1';
opensql(dm.q1,ssql);

for i:=1 to dm.q1.recordcount do
begin
if dm.q1.fieldbyname('per').asstring<>'' then cb4.properties.items.add(dm.q1.fieldbyname('per').asstring);
dm.q1.next;
end;

end;

procedure TFStat.cb5MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
combo_gost_podreg_load(FStat.cb5,'все');
end;

procedure TFStat.cb9MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var i: integer;
begin

dm.transq.first;

cb9.Properties.items.clear;

for i:=1 to dm.transq.RecordCount do
begin

cb9.properties.Items.Add(dm.transq.fieldbyname('trstr').asstring);

dm.transq.next;

end;

end;

procedure TFStat.b8Click(Sender: TObject);
begin
_10dat(de1.date,rg3.itemindex,chb4.checked);
end;

procedure TFStat.b9Click(Sender: TObject);
begin

all_st:=true;

cb1.text:='2';
cb2.text:='1';
b2.onclick(sender);

cb1.text:='2';
cb2.text:='2';
b2.onclick(sender);

cb1.text:='2';
cb2.text:='3';
b2.onclick(sender);

cb1.text:='3';
cb2.text:='1';
b2.onclick(sender);

cb1.text:='3';
cb2.text:='2';
b2.onclick(sender);

cb1.text:='3';
cb2.text:='3';
b2.onclick(sender);

cb1.text:='4';
cb2.text:='1';
b2.onclick(sender);

cb1.text:='4';
cb2.text:='3';
b2.onclick(sender);

rg2.ItemIndex:=0;
b1.onclick(sender);

all_st:=false;

end;

procedure TFStat.cb11PropertiesChange(Sender: TObject);
begin
ag_id:=a_id(cb11.text);
end;

procedure TFStat.b12Click(Sender: TObject);
var i,j,k  : integer;
a_b_ : string;
begin

j:=0;

if cb11.text='' then
begin
sm('Не выбрано агентство.');
exit;
end;

stat_lock;

dm.agentq.first;

if rg8.itemindex=0 then a_b_:='Авт.';
if rg8.itemindex=1 then a_b_:='Блок';
if rg8.itemindex=2 then a_b_:='Нест.';

ssql:='delete from #usertemp'+randid;
executesql(dm.q1,ssql);

ssql:='select a.id,a.data_zai,a.f,a.per,a.stoim,a.oplacheno,b.nazvanie from clients a left join gostinici b on'+
' a.id_gost=b.codeid where a.tip=1 and a.id_ag='+ag_id+' and a.annul<>'+quotedstr('да')+' and a.data_zai<='+
quotedstr(datetostr(de2.date))+' and a.data_zai>='+quotedstr(datetostr(de1.date))+
' and b.exk<>'+quotedstr('да')+' and a.a_b='+quotedstr(a_b_)
+' and data_zai>='+quotedstr(formatdatetime(dtf,strtodate(dnopper)))+' and data_zai<='+quotedstr(formatdatetime(dtf,strtodate(dkopper)));
opensql(dm.q1,ssql);

pr_on;

for i:=1 to dm.q1.recordcount do
begin

pr(i,dm.q1.recordcount);

ssql:='select id from clients where p='+dm.q1.fields[0].asstring+
' and annul<>'+quotedstr('да');
opensql(dm.q2,ssql);

for k:=1 to dm.q2.recordcount do
begin

ssql:='select count(*) from clients where p='+dm.q2.fields[0].asstring+
' and annul<>'+quotedstr('да');
opensql(dm.q3,ssql);

j:=j+dm.q3.fields[0].asinteger;

dm.q2.next;

end;

ssql:='insert into #usertemp'+randid+' (f,gost,per,kolchel,kopl,oplacheno,d) values ('+
quotedstr(dm.q1.fieldbyname('f').asstring)+','+
quotedstr(dm.q1.fieldbyname('nazvanie').asstring)+','+
quotedstr(dm.q1.fieldbyname('per').asstring)+','+
quotedstr(inttostr(j))+','+
quotedstr(dm.q1.fieldbyname('stoim').asstring)+','+
quotedstr(dm.q1.fieldbyname('oplacheno').asstring)+','+
quotedstr(copy(dm.q1.fieldbyname('per').asstring,1,10))+')';

executesql(dm.q4,ssql);

j:=0;

dm.q1.next;

end;

pr_off;

stat_unlock;

ssql:='select * from #usertemp'+randid+' order by gost,d';
opensql(dm.qit,ssql);

with dm.fr do
begin
LoadFromFile(sharedf+'\reports\ag_prod.frf');
FindObject('memo16').memo.text:='Сводка по агентству '+cb11.text+' на период '+
de1.text+' - '+de2.text;
ShowReport;
end;

end;

procedure TFStat.chb3PropertiesChange(Sender: TObject);
begin
if chb3.checked then rg2.itemindex:=0;
end;

procedure TFStat.b14Click(Sender: TObject);
begin

all_st:=true;

cb1.text:='25';
cb2.text:='25';
b2.onclick(sender);

cb1.text:='21';
cb2.text:='80';
b2.onclick(sender);

cb1.text:='21';
cb2.text:='81';
b2.onclick(sender);

cb1.text:='21';
cb2.text:='82';
b2.onclick(sender);

rg2.ItemIndex:=3;
b1.onclick(sender);

all_st:=false;

end;

procedure TFStat.b15Click(Sender: TObject);
begin

if cb12.Text<>'гостиница - агентства' then
spis(cb12.Text,cb4.text,de1.text,de2.text,rg4.itemindex,false)
else

begin
if strtodate('15.07.2006')<=date then exit;
GostAgen;
end;

end;

procedure TFStat.b16Click(Sender: TObject);
begin
spis(cb12.Text,cb4.text,de1.text,de2.text,rg4.itemindex,true);
end;

procedure TFStat.rg4Click(Sender: TObject);
begin

if rg4.itemindex=3 then
begin

cb19.properties.items.Clear;
cb20.properties.items.clear;

if cb18.text='А' then
begin
combo_dati_nest (FStat.cb19,'А','въезд');
combo_dati_nest (FStat.cb20,'А','выезд');
end;

if cb18.text='Б' then
begin
combo_dati_nest (FStat.cb19,'Б','');
combo_dati_nest (FStat.cb20,'Б','');
end;

end;

end;

procedure TFStat.cb18PropertiesChange(Sender: TObject);
begin
rg4.onclick(sender);
end;

procedure TFStat.cb6MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var i : integer;
begin

cb6.properties.items.clear;

dm.vsop.close;
dm.vsop.open;

for i:=1 to dm.vsop.recordcount do
begin
if dm.vsop.fieldbyname('tip').asstring='водитель' then cb6.properties.Items.add(dm.vsop.fieldbyname('fio').asstring);
dm.vsop.next;
end;

end;

procedure TFStat.cb7MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var i : integer;
begin

cb7.properties.items.clear;

dm.vsop.close;
dm.vsop.open;

for i:=1 to dm.vsop.recordcount do
begin
if dm.vsop.fieldbyname('tip').asstring='водитель' then cb7.properties.Items.add(dm.vsop.fieldbyname('fio').asstring);
dm.vsop.next;
end;

end;

procedure TFStat.cb8MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var i : integer;
begin

cb8.properties.items.clear;

dm.vsop.close;
dm.vsop.open;

for i:=1 to dm.vsop.recordcount do
begin
if dm.vsop.fieldbyname('tip').asstring='сопровождающий' then cb8.properties.Items.add(dm.vsop.fieldbyname('fio').asstring);
dm.vsop.next;
end;

end;

procedure TFStat.cb14MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var i : integer;
begin

cb14.properties.items.clear;

dm.avt.close;
dm.avt.open;

for i:=1 to dm.avt.recordcount do
begin
cb14.properties.Items.add(dm.avt.fieldbyname('marka').asstring+' '+dm.avt.fieldbyname('nomer').asstring);
dm.avt.next;
end;

end;

procedure TFStat.nzaezClick(Sender: TObject);
begin
nest_zaez(de1.Text,de2.Text,rg7.itemindex);
end;

end.
