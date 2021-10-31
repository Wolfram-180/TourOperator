unit stoim_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxExEdtr, cxLookAndFeelPainters, cxCheckBox, StdCtrls,
  cxSpinEdit, cxTextEdit, cxRadioGroup, cxGroupBox, DB, ADODB, cxButtons,
  dxDBTLCl, dxGrClms, dxDBGrid, dxTL, dxDBCtrl, dxCntner, ImgList,
  cxDropDownEdit, cxCalendar, cxControls, cxContainer, cxEdit, cxMaskEdit,
  dxDBTL, cxListBox;

type
  TFStoim = class(TForm)
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    cb1: TcxComboBox;
    cb2: TcxComboBox;
    de1: TcxDateEdit;
    de2: TcxDateEdit;
    rg9: TcxRadioGroup;
    DataSource1: TDataSource;
    ImageList: TImageList;
    Label3: TLabel;
    dxDBGrid2: TdxDBGrid;
    dxDBGrid2id: TdxDBGridMaskColumn;
    dxDBGrid2bl: TdxDBGridMaskColumn;
    dxDBGrid2usl: TdxDBGridColumn;
    dxDBGrid2v1: TdxDBGridMaskColumn;
    dxDBGrid2v2: TdxDBGridMaskColumn;
    dxDBGrid2c_za: TdxDBGridColumn;
    dxDBGrid2prodol: TdxDBGridColumn;
    dxDBGrid2c1: TdxDBGridCurrencyColumn;
    dxDBGrid2c2: TdxDBGridCurrencyColumn;
    dxDBGrid2val: TdxDBGridColumn;
    dxDBGrid2osn: TdxDBGridColumn;
    dxDBGrid2s_pit: TdxDBGridColumn;
    dxDBGrid2besp: TdxDBGridColumn;
    dxDBGrid2st_seb: TdxDBGridColumn;
    dxDBGrid2znach: TdxDBGridColumn;
    cxButton9: TcxButton;
    Label9: TLabel;
    dxDBGrid1: TdxDBGrid;
    dxDBGridMaskColumn1: TdxDBGridMaskColumn;
    dxDBGridMaskColumn2: TdxDBGridMaskColumn;
    dxDBGridColumn1: TdxDBGridColumn;
    dxDBGridMaskColumn3: TdxDBGridMaskColumn;
    dxDBGridMaskColumn4: TdxDBGridMaskColumn;
    dxDBGridColumn2: TdxDBGridColumn;
    dxDBGridColumn3: TdxDBGridColumn;
    dxDBGridCurrencyColumn1: TdxDBGridCurrencyColumn;
    dxDBGridCurrencyColumn2: TdxDBGridCurrencyColumn;
    dxDBGridColumn4: TdxDBGridColumn;
    dxDBGridColumn5: TdxDBGridColumn;
    dxDBGridColumn6: TdxDBGridColumn;
    dxDBGridColumn7: TdxDBGridColumn;
    dxDBGridColumn8: TdxDBGridColumn;
    dxDBGridColumn9: TdxDBGridColumn;
    cxButton12: TcxButton;
    q6: TADOQuery;
    ds6: TDataSource;
    ds5: TDataSource;
    q5: TADOQuery;
    gb1: TcxGroupBox;
    Label11: TLabel;
    Label12: TLabel;
    rg2: TcxRadioGroup;
    rb1: TcxRadioButton;
    rb2: TcxRadioButton;
    rb3: TcxRadioButton;
    te_pr: TcxTextEdit;
    t1: TcxTextEdit;
    cbval: TcxComboBox;
    rg1: TcxRadioGroup;
    se4: TcxSpinEdit;
    se5: TcxSpinEdit;
    se6: TcxSpinEdit;
    se7: TcxSpinEdit;
    rg3: TcxRadioGroup;
    t2: TcxTextEdit;
    cxButton4: TcxButton;
    b2: TcxButton;
    cxButton7: TcxButton;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    cxButton8: TcxButton;
    cb4__: TcxCheckBox;
    rg5: TcxRadioGroup;
    rg4: TcxRadioGroup;
    lb4: TcxListBox;
    cb3: TcxCheckBox;
    q3: TADOQuery;
    gr3: TdxDBGrid;
    ds3: TDataSource;
    gr3kat: TdxDBGridColumn;
    dxDBGrid4: TdxDBGrid;
    q4: TADOQuery;
    ds4: TDataSource;
    dxDBGrid4bl: TdxDBGridMaskColumn;
    dxDBGrid4d1: TdxDBGridDateColumn;
    dxDBGrid4d2: TdxDBGridDateColumn;
    q4id: TAutoIncField;
    q4bl: TIntegerField;
    q4d1: TDateTimeField;
    q4d2: TDateTimeField;
    q4id_kat: TIntegerField;
    q4id_pit: TIntegerField;
    q4a_b: TWideStringField;
    q4kat: TStringField;
    q4pit: TStringField;
    dxDBGrid4Column5: TdxDBGridColumn;
    dxDBGrid4Column6: TdxDBGridColumn;
    b1: TcxButton;
    date_1: TdxDBGridColumn;
    date_2: TdxDBGridColumn;
    date_1_st: TdxDBGridColumn;
    date_2_st: TdxDBGridColumn;
    b3: TcxButton;
    dxDBGrid1Column18: TdxDBGridColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cb1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure b2Click(Sender: TObject);
    procedure cxButton9Click(Sender: TObject);
    procedure cxButton12Click(Sender: TObject);
    procedure cb1PropertiesChange(Sender: TObject);
    procedure cb2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cb2PropertiesChange(Sender: TObject);
    procedure rg9PropertiesChange(Sender: TObject);
    procedure b1Click(Sender: TObject);
    procedure lb4Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
    procedure cxButton8Click(Sender: TObject);
    procedure se7KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure se6KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dxDBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure b3Click(Sender: TObject);
    procedure rg3PropertiesChange(Sender: TObject);
    procedure rb2Click(Sender: TObject);
    procedure rb1Click(Sender: TObject);
    procedure dxDBGrid2MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FStoim: TFStoim;

implementation

uses Unit85,unit11;

{$R *.dfm}

procedure TFStoim.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
FStoim:=nil;
end;

procedure TFStoim.cb1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin

if rg9.itemindex=0 then combo_gost_podreg_load(fstoim.cb1,'Авт.')
else combo_gost_podreg_load(fstoim.cb1,'Блок');

end;

procedure TFStoim.b2Click(Sender: TObject);
begin

if (q3.recordcount=0) or (de1.text='') or (de2.text='') or (de2.date<de1.date) or ((rg3.itemindex=6) and (lb4.itemindex=-1))
 or ((rb2.checked) and (rg1.itemindex=-1)) then
begin
sm('Не указаны или указаны неверные данные.');
exit;
end;

// инициализ. и обнуление
if t1.text='' then t1.text:='0';
if t2.text='' then t2.text:='0';

c_za:='';
usl:='';
prodol:='';
st_seb:='';
znach:='';
c1:='0';
c2:='0';
val:='';
v1:='0';
v2:='0';
osn:='';
s_pit:='';
besp:='';
pit_id:='';
//

if lb4.ItemIndex<>-1 then pit_id:=pitan_id(lb4.Items[lb4.ItemIndex]) else pit_id:='0';

case rg2.ItemIndex of
-1: begin
usl:='';
v1:='0';
v2:='0';
end;
0: begin
usl:='возраст';
v1:=se7.text;
v2:=se6.text;
c1:=te_pr.text;
end;
1: begin
usl:='кол. чел.';
v1:=se5.text;
v2:='0';
end;
2: begin
usl:='кол. сут.';
v1:=se4.text;
v2:='0';
end;
end;

case rg3.ItemIndex of
0: c_za:='номер';
1: c_za:='место';
2: c_za:='доп. место';
3: c_za:='без места';
4: c_za:='проезд с пр.';
5: c_za:='проезд без пр.';
6: c_za:='питание';
end;

case rg4.ItemIndex of
0: prodol:='сутки';
1: prodol:='период';
end;

case rg5.ItemIndex of
0: st_seb:='стоимость';
1: st_seb:='себестоимость';
end;

if rb1.Checked then
begin
znach:='значение';
c1:=t1.text;
c2:=t2.text;
val:=cbval.text;
end;

if rb2.Checked then
begin

znach:='процент';
c1:=te_pr.text;

case rg1.ItemIndex of
0: osn:='места';
1: osn:='путевки';
end;

//if cb4.checked then s_pit:='да' else s_pit:='нет';

end;

if rb3.Checked then
begin
znach:='бесплатно';
end;

// № правила

ssql:='select max(bl) from pravila';
opensql(dm.q1,ssql);
bl_id:=inttostr(dm.q1.Fields[0].asinteger+1);

lid:=q3.FieldByName('codeid').asinteger;

if rg3.itemindex<>6 then // если не питание
ssql:='insert into pravila (bl,usl,v1,v2,c_za,prodol,c1,c2,val,osn,s_pit,besp,st_seb,znach,d1,d2,'+
'id_gost,id_kat,a_b,id_pit) values ('+
bl_id+','+quotedstr(usl)+','+v1+','+v2+','+quotedstr(c_za)+','+quotedstr(prodol)+','+
c1+','+c2+','+quotedstr(val)+','+quotedstr(osn)+','+quotedstr(s_pit)+','+
quotedstr(besp)+','+quotedstr(st_seb)+','+quotedstr(znach)+','+quotedstr(de1.text)+','+quotedstr(de2.text)+','+
gost_id+','+q3.fieldbyname('codeid').asstring+','+quotedstr(struc)+',0)'
else
ssql:='insert into pravila (bl,usl,v1,v2,c_za,prodol,c1,c2,val,osn,s_pit,besp,st_seb,znach,d1,d2,'+
'id_gost,id_pit,a_b,id_kat) values ('+
bl_id+','+quotedstr(usl)+','+v1+','+v2+','+quotedstr(c_za)+','+quotedstr(prodol)+','+
c1+','+c2+','+quotedstr(val)+','+quotedstr(osn)+','+quotedstr(s_pit)+','+
quotedstr(besp)+','+quotedstr(st_seb)+','+quotedstr(znach)+','+quotedstr(de1.text)+','+quotedstr(de2.text)+','+
gost_id+','+pit_id+','+quotedstr(struc)+',0)';

executesql(dm.q1,ssql);

cb2.properties.OnChange(sender);
q3.locate('codeid',lid,[]);

end;

procedure TFStoim.cxButton9Click(Sender: TObject);
begin

if q5.recordcount=0 then exit;

ssql:='delete from pravila where id='+q5.fieldbyname('id').asstring;
executesql(dm.q1,ssql);

ssql:='select * from pravila where id_gost='+gost_id+' and a_b='+quotedstr(struc)+' and st_seb='+quotedstr('стоимость');
opensql(q5,ssql);

ssql:='select * from pravila where id_gost='+gost_id+' and a_b='+quotedstr(struc);
opensql(q4,ssql);

end;

procedure TFStoim.cxButton12Click(Sender: TObject);
begin

if q6.recordcount=0 then exit;

ssql:='delete from pravila where id='+q6.fieldbyname('id').asstring;
executesql(dm.q1,ssql);

ssql:='select * from pravila where id_gost='+gost_id+' and a_b='+quotedstr(struc)+' and st_seb='+quotedstr('себестоимость');
opensql(q6,ssql);

ssql:='select * from pravila where id_gost='+gost_id+' and a_b='+quotedstr(struc);
opensql(q4,ssql);

end;

procedure TFStoim.cb1PropertiesChange(Sender: TObject);
begin
podreg_id:=podregion_id(cb1.text);
cb2.text:='';
end;

procedure TFStoim.cb2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin

if cb1.text='' then exit
else
begin

podreg_id:=podregion_id(cb1.text);

if rg9.itemindex=0 then combo_gost_on_podreg_load (fstoim.cb2,'Авт.',podreg_id)
else combo_gost_on_podreg_load (fstoim.cb2,'Блок',podreg_id);

end;

end;

procedure TFStoim.cb2PropertiesChange(Sender: TObject);
var i: integer;
begin

if (cb1.text='') or (cb2.text='') then exit;

gost_id:=g_id_podreg(cb2.Text,podregion_id(cb1.text));

if rg9.ItemIndex=0 then struc:='Авт.' else struc:='Блок';

ssql:='select a.codeid,d.pit from gostpit a left join pit d on a.C_pit = d.codeid where a.c_gost='+gost_id+' and a.a_b='+quotedstr(struc);
opensql(dm.q1,ssql);

lb4.Items.Clear;

for i:=1 to dm.q1.RecordCount do
begin
lb4.Items.Add(dm.q1.fieldbyname('pit').asstring);
dm.q1.Next;
end;

ssql:='select distinct d.kat,d.codeid from gostnom a left join kat d on a.C_kat = d.codeid where a.c_gost='+gost_id+' and p=-1 and a.a_b='+quotedstr(struc)+' order by kat';
opensql(q3,ssql);

ssql:='select * from pravila where id_gost='+gost_id+' and a_b='+quotedstr(struc)+' and st_seb='+quotedstr('стоимость');
opensql(q5,ssql);

ssql:='select a.*,b.kat from pravila a left join kat b on a.id_kat=b.codeid where a.id_gost='+gost_id+' and a.a_b='+quotedstr(struc)+' and a.st_seb='+quotedstr('себестоимость');
opensql(q6,ssql);

ssql:='select * from pravila where id_gost='+gost_id+' and a_b='+quotedstr(struc);
opensql(q4,ssql);

end;

procedure TFStoim.rg9PropertiesChange(Sender: TObject);
begin
cb2.Properties.OnChange(sender);
end;

procedure TFStoim.b1Click(Sender: TObject);
begin
lb4.ItemIndex:=-1;
cb3.Checked:=false;
end;

procedure TFStoim.lb4Click(Sender: TObject);
begin

if (cb2.Text='') or (lb4.ItemIndex=-1) then exit;

pit_id:=pitan_id(lb4.Items[lb4.ItemIndex]);

ssql:='select vkl from gostpit where c_pit='+pit_id+' and c_gost='+gost_id+' and a_b='+quotedstr(struc);
opensql(dm.q1,ssql);

if dm.q1.fieldbyname('vkl').asstring='да' then cb3.Checked:=true else cb3.Checked:=false;

end;

procedure TFStoim.cxButton4Click(Sender: TObject);
begin
sm('Функция недоступна');
end;

procedure TFStoim.cxButton7Click(Sender: TObject);
begin
sm('Функция недоступна');
end;

procedure TFStoim.cxButton8Click(Sender: TObject);
begin
rg2.ItemIndex:=-1;
end;

procedure TFStoim.se7KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if key=VK_RIGHT then se6.SetFocus;

end;

procedure TFStoim.se6KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if key=VK_LEFT then se7.SetFocus;

end;

procedure TFStoim.dxDBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin

if q6.recordcount=0 then exit;

q4.Locate('bl',q6.fieldbyname('bl').asinteger,[]);

if q4.fieldbyname('kat').asstring<>'' then
begin
q3.Locate('codeid',q4.fieldbyname('id_kat').asinteger,[]);
b1.onclick(sender);
end;

if q4.fieldbyname('pit').asstring<>'' then
begin
{if lb4.Items.IndexOf(q4.fieldbyname('pit').asstring)<>-1 then }
lb4.ItemIndex:=lb4.Items.IndexOf(q4.fieldbyname('pit').asstring);
end;

if q6.fieldbyname('usl').asstring='' then
begin
rg2.ItemIndex:=-1;
se4.text:='1';
se5.text:='1';
se6.text:='1';
se7.text:='1';
end;

if q6.fieldbyname('usl').asstring='возраст' then
begin
rg2.ItemIndex:=0;
se4.text:='1';
se5.text:='1';
se6.text:=q6.fieldbyname('v2').asstring;
se7.text:=q6.fieldbyname('v1').asstring;
te_pr.text:=q6.fieldbyname('c1').asstring;
end;

if q6.fieldbyname('usl').asstring='кол. чел.' then
begin
rg2.ItemIndex:=1;
se4.text:='1';
se5.text:=q6.fieldbyname('v1').asstring;
se6.text:='1';
se7.text:='1';
end;

if q6.fieldbyname('usl').asstring='кол. сут.' then
begin
rg2.ItemIndex:=2;
se4.text:=q6.fieldbyname('v1').asstring;
se5.text:='1';
se6.text:='1';
se7.text:='1';
end;

if q6.fieldbyname('c_za').asstring='номер' then rg3.itemindex:=0;
if q6.fieldbyname('c_za').asstring='место' then rg3.itemindex:=1;
if q6.fieldbyname('c_za').asstring='доп. место' then rg3.itemindex:=2;
if q6.fieldbyname('c_za').asstring='без места' then rg3.itemindex:=3;
if q6.fieldbyname('c_za').asstring='проезд с пр.' then rg3.itemindex:=4;
if q6.fieldbyname('c_za').asstring='проезд без пр.' then rg3.itemindex:=5;
if q6.fieldbyname('c_za').asstring='питание' then rg3.itemindex:=6;

if q6.fieldbyname('prodol').asstring='сутки' then rg4.itemindex:=0;
if q6.fieldbyname('prodol').asstring='период' then rg4.itemindex:=1;

if q6.fieldbyname('st_seb').asstring='стоимость' then rg5.itemindex:=0;
if q6.fieldbyname('st_seb').asstring='себестоимость' then rg5.itemindex:=1;

de1.text:=q6.fieldbyname('d1').asstring;
de2.text:=q6.fieldbyname('d2').asstring;

if q6.fieldbyname('znach').asstring='значение' then
begin

rb1.checked:=true;
t1.text:=q6.fieldbyname('c1').asstring;
cbval.text:=q6.fieldbyname('val').asstring;

rb2.checked:=false;
te_pr.text:='0';
rg1.ItemIndex:=-1;

rb3.Checked:=false;

end;

if q6.fieldbyname('znach').asstring='процент' then
begin

rb1.checked:=false;
t1.text:='0';
cbval.text:='';

rb2.checked:=true;
te_pr.text:=q6.fieldbyname('c1').asstring;
if q6.fieldbyname('osn').asstring='места' then rg1.itemindex:=0;
if q6.fieldbyname('osn').asstring='путевки' then rg1.itemindex:=1;

rb3.Checked:=false;

end;

if q6.fieldbyname('znach').asstring='бесплатно' then
begin

rb1.checked:=false;
t1.text:='0';
cbval.text:='';

rb2.checked:=false;
te_pr.text:='0';
rg1.ItemIndex:=-1;

rb3.Checked:=true;

end;

end;

procedure TFStoim.b3Click(Sender: TObject);
begin

if q6.recordcount=0 then exit;

cxbutton12.onclick(sender);
b2.onclick(sender);

end;

procedure TFStoim.rg3PropertiesChange(Sender: TObject);
begin
if rg3.itemindex<>6 then lb4.ItemIndex:=-1;
end;

procedure TFStoim.rb2Click(Sender: TObject);
begin
rg1.itemindex:=0;
end;

procedure TFStoim.rb1Click(Sender: TObject);
begin
cbval.text:='R';
end;

procedure TFStoim.dxDBGrid2MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin

if q5.recordcount=0 then exit;

q4.Locate('bl',q5.fieldbyname('bl').asinteger,[]);

if q4.fieldbyname('kat').asstring<>'' then
begin
q3.Locate('codeid',q4.fieldbyname('id_kat').asinteger,[]);
b1.onclick(sender);
end;

if q4.fieldbyname('pit').asstring<>'' then
begin
lb4.ItemIndex:=lb4.Items.IndexOf(q4.fieldbyname('pit').asstring);
end;

end;

end.
