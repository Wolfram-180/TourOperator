unit UNestForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxExEdtr, cxLookAndFeelPainters, ImgList, DB, ADODB, cxListBox,
  StdCtrls, cxButtons, dxDBTLCl, dxTL, dxDBCtrl, dxCntner, dxDBTL,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxGroupBox, cxRadioGroup;

type
  TFNestForming = class(TForm)
    Label4: TLabel;
    Label5: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    cb1: TcxComboBox;
    cb2: TcxComboBox;
    tr2: TdxDBTreeList;
    dxDBTreeListMaskColumn1: TdxDBTreeListMaskColumn;
    dxDBTreeListMaskColumn2: TdxDBTreeListMaskColumn;
    dxDBTreeListMaskColumn3: TdxDBTreeListMaskColumn;
    dxDBTreeListColumn1: TdxDBTreeListColumn;
    dxDBTreeListColumn2: TdxDBTreeListColumn;
    dxDBTreeListMaskColumn4: TdxDBTreeListMaskColumn;
    dxDBTreeListMaskColumn5: TdxDBTreeListMaskColumn;
    dxDBTreeListColumn3: TdxDBTreeListColumn;
    dxDBTreeListMaskColumn6: TdxDBTreeListMaskColumn;
    dxDBTreeListColumn4: TdxDBTreeListColumn;
    dxDBTreeListColumn5: TdxDBTreeListColumn;
    dxDBTreeListColumn6: TdxDBTreeListColumn;
    dxDBTreeListMaskColumn7: TdxDBTreeListMaskColumn;
    dxDBTreeListMaskColumn8: TdxDBTreeListMaskColumn;
    tree: TdxDBTreeList;
    dxDBTreeListMaskColumn9: TdxDBTreeListMaskColumn;
    dxDBTreeListColumn7: TdxDBTreeListColumn;
    dxDBTreeListDateColumn2: TdxDBTreeListDateColumn;
    dxDBTreeListMaskColumn10: TdxDBTreeListMaskColumn;
    dxDBTreeListMaskColumn11: TdxDBTreeListMaskColumn;
    dxDBTreeListMaskColumn12: TdxDBTreeListMaskColumn;
    dxDBTreeListMaskColumn13: TdxDBTreeListMaskColumn;
    dxDBTreeListMaskColumn14: TdxDBTreeListMaskColumn;
    dxDBTreeListMaskColumn15: TdxDBTreeListMaskColumn;
    dxDBTreeListMaskColumn16: TdxDBTreeListMaskColumn;
    dxDBTreeListColumn9: TdxDBTreeListColumn;
    dxDBTreeListColumn10: TdxDBTreeListColumn;
    dxDBTreeListMaskColumn17: TdxDBTreeListMaskColumn;
    dxDBTreeListMaskColumn18: TdxDBTreeListMaskColumn;
    dxDBTreeListMaskColumn19: TdxDBTreeListMaskColumn;
    cxButton2: TcxButton;
    b1: TcxButton;
    lb1: TcxListBox;
    b12: TcxButton;
    b13: TcxButton;
    cxButton5: TcxButton;
    cxButton6: TcxButton;
    b14: TcxButton;
    b15: TcxButton;
    sozd_pit: TcxButton;
    tr_pit: TdxDBTreeList;
    tr_pitid: TdxDBTreeListMaskColumn;
    tr_pitc_gost: TdxDBTreeListMaskColumn;
    tr_pitc_pit: TdxDBTreeListMaskColumn;
    tr_pitn_id: TdxDBTreeListMaskColumn;
    tr_pitper: TdxDBTreeListColumn;
    tr_pitd1: TdxDBTreeListDateColumn;
    tr_pitpit: TdxDBTreeListColumn;
    tr_pito_f: TdxDBTreeListColumn;
    tr_pita_b: TdxDBTreeListColumn;
    tr_pitvkl: TdxDBTreeListColumn;
    tr_pitp: TdxDBTreeListMaskColumn;
    pitudal: TcxButton;
    q1: TADOQuery;
    DataSource1: TDataSource;
    ImageList: TImageList;
    q3: TADOQuery;
    DataSource3: TDataSource;
    q2: TADOQuery;
    DataSource2: TDataSource;
    q4: TADOQuery;
    DataSource4: TDataSource;
    rg1: TcxRadioGroup;
    treeColumn16: TdxDBTreeListColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cb1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cb1PropertiesChange(Sender: TObject);
    procedure cb2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cb2PropertiesChange(Sender: TObject);
    procedure rg1PropertiesChange(Sender: TObject);
    procedure b1Click(Sender: TObject);
    procedure nest_nom_inst;
    procedure nest_nom_zaversh;
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure sozd_pitClick(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FNestForming: TFNestForming;

implementation

uses Unit85;

{$R *.dfm}

procedure TFNestForming.nest_nom_inst;
var i,k : integer;
inst : boolean;
min_d,max_d : string;
begin

sp:=q3.fieldbyname('codeid').asstring;

ssql:='select min(d1) as min_d,max(d1) as max_d from nest_d where d1>='+quotedstr(formatdatetime(dtf,strtodate(dnopper)))+
' and d1<='+quotedstr(formatdatetime(dtf,strtodate(dkopper)));
opensql(q1,ssql);

if q1.recordcount<>0 then
begin
min_d:=q1.fieldbyname('min_d').asstring;
max_d:=q1.fieldbyname('max_d').asstring;
end
else
begin
sm('Не введены даты.');
exit;
end;

struc:='Нест.';

//////////////////// даты по автобусному графику (с первой до последней) -- не факт

struc_tip:='';

d1:=strtodate(min_d);
d2:=strtodate(max_d);

d:=d1;

pr_on;

for i:=1 to strtoint(floattostr(d2-d1))+1 do
begin

pr(i,strtoint(floattostr(d2-d1))+1);

ds:=formatdatetime(dtf,d);

// проверка наличия текущей даты
ssql:='select id from bloki where c_gost='+gost_id+' and a_b='+quotedstr(struc)+' and d1='+
quotedstr(ds)+' and per='+quotedstr(struc_tip);
opensql(q1,ssql);

if q1.recordcount<>0 then
begin
p:=q1.fields[0].asstring;
end
else
begin

ssql:='insert into bloki (c_gost,a_b,d1,d,per) values ('+gost_id+','+quotedstr(struc)+','+
quotedstr(ds)+','+quotedstr(ds)+','+quotedstr(struc_tip)+')';
executesql(q1,ssql);

ssql:='select max(id) from bloki where c_gost='+gost_id+' and a_b='+quotedstr(struc)+' and per='+
quotedstr(struc_tip);
opensql(q1,ssql);

p:=q1.fields[0].asstring;

end;

kmo:=q3.FieldByName('kmo').asstring;
kmd:=q3.FieldByName('kmd').asstring;
n_id:=q3.fieldbyname('codeid').asstring;
kat_id:=q3.FieldByName('c_kat').asstring;
komf:=q3.FieldByName('komf').asstring;
komf_id:=q3.FieldByName('c_komf').asstring;
n:=q3.FieldByName('n').asstring;
tip:=q3.FieldByName('tip').asstring;

// проверка наличия выбранного номера в этой дате
ssql:='select count(*) from bloki where n_id='+n_id+' and c_gost='+gost_id+
' and a_b='+quotedstr(struc)+' and p='+p+' and d1='+quotedstr(ds)+' and per='+
quotedstr(struc_tip);

opensql(q1,ssql);

if q1.fields[0].asinteger<>0 then
begin
inst:=true;
end
else inst:=false;

if inst=false then // если номера нет - вставляем
begin

ssql:='insert into bloki (d1,d,p,n,tip,c_gost,c_kat,n_id,m_id,komf,c_komf,kmo,kmd,a_b,per) values ('+
quotedstr(ds)+','+quotedstr(ds)+','+p+','+n+','+tip+','+gost_id+','+kat_id+','+n_id+',0,'+quotedstr(komf)+','+
quotedstr(komf_id)+','+kmo+','+kmd+','+quotedstr(struc)+','+quotedstr(struc_tip)+')';
executesql(q1,ssql);

ssql:='select max(id) from bloki where p='+p+' and a_b='+quotedstr(struc)+' and per='+
quotedstr(struc_tip);
opensql(q1,ssql);

p:=q1.fields[0].asstring;

q3.next;
  // основные места
   for k:=1 to strtoint(kmo) do
   begin

   m_id:=q3.fieldbyname('codeid').asstring;

    n:=q3.FieldByName('n').asstring;
    tip:=q3.FieldByName('tip').asstring;
    kat_id:=q3.FieldByName('c_kat').asstring;

    ssql:='insert into bloki (d1,d,p,n,tip,c_gost,c_kat,n_id,m_id,komf,c_komf,kmo,kmd,a_b,per) values ('+
    quotedstr(ds)+','+quotedstr(ds)+','+p+','+n+','+tip+','+gost_id+','+kat_id+','+n_id+','+m_id+','+quotedstr(komf)+','+
    quotedstr(komf_id)+','+kmo+','+kmd+','+quotedstr(struc)+','+quotedstr(struc_tip)+')';
    executesql(q1,ssql);

   q3.next;
   end;

   // доп. места
   for k:=1 to strtoint(kmd) do
   begin

   m_id:=q3.fieldbyname('codeid').asstring;

    n:=q3.FieldByName('n').asstring;
    tip:=q3.FieldByName('tip').asstring;
    kat_id:=q3.FieldByName('c_kat').asstring;

    ssql:='insert into bloki (d1,d,p,n,tip,c_gost,c_kat,n_id,m_id,komf,c_komf,kmo,kmd,a_b,per) values ('+
    quotedstr(ds)+','+quotedstr(ds)+','+p+','+n+','+tip+','+gost_id+','+kat_id+','+n_id+','+m_id+','+quotedstr(komf)+','+
    quotedstr(komf_id)+','+kmo+','+kmd+','+quotedstr(struc)+','+quotedstr(struc_tip)+')';
    executesql(q1,ssql);

   q3.next;
   end;

end;

q3.Locate('codeid',sp,[]);

d:=d1+i;
end;

pr_off;

end;

procedure TFNestForming.nest_nom_zaversh;
begin

q2.close;
q2.open;
tr2.FullCollapse;
q3.Locate('codeid',sp,[]);

end;

procedure TFNestForming.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
FNestForming:=nil;
end;

procedure TFNestForming.cb1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
if rg1.ItemIndex=0 then combo_gost_podreg_load (cb1,'все') else combo_gost_podreg_load (cb1,'Нест.');
end;

procedure TFNestForming.cb1PropertiesChange(Sender: TObject);
begin
podreg_id:=podregion_id(cb1.text);
cb2.Clear;
cb2.text:='';
end;

procedure TFNestForming.cb2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var i: integer;
begin

cb2.properties.items.clear;

if cb1.text='' then exit
else
begin

dm.gostin.first;

for i:=1 to dm.gostin.RecordCount do
begin

  if dm.gostin.fieldbyname('podregrazm').asstring=podreg_id then
  begin

  if rg1.itemindex=0 then cb2.properties.Items.add(dm.gostin.fieldbyname('nazvanie').asstring) else
    begin
      ssql:='select count(*) from bloki where c_gost='+dm.gostin.fieldbyname('codeid').asstring
      +' and a_b='+quotedstr('Нест.');
      opensql(q1,ssql);
      if q1.fields[0].asinteger>0 then cb2.properties.Items.add(dm.gostin.fieldbyname('nazvanie').asstring);
    end;

  end;

dm.gostin.next;

end;

end;

end;

procedure TFNestForming.cb2PropertiesChange(Sender: TObject);
begin

if cb2.text='' then exit;

gost_id:=g_id_podreg(cb2.Text,podregion_id(cb1.text));

struc:='Нест.';

ssql:='select a.*,d.kat from gostnom a left join kat d on a.C_kat = d.codeid where a.c_gost = '+
gost_id+' and a.a_b='+quotedstr(struc);
opensql(q3,ssql);

ssql:='select a.*,d.kat from bloki a left join kat d on a.C_kat = d.codeid where a.c_gost='+
gost_id+' and a.a_b='+quotedstr(struc)+
' and d1>='+quotedstr(formatdatetime(dtf,strtodate(dnopper)))+' and d1<='+quotedstr(formatdatetime(dtf,strtodate(dkopper)));
opensql(q2,ssql);

ssql:='select a.*,c.pit from perpit a left join pit c on a.c_pit = c.codeid where a.c_gost = '+
gost_id+' and a.a_b='+quotedstr(struc)+' and p<>0 and ex='+quotedstr('нет')+
' and d1>='+quotedstr(formatdatetime(dtf,strtodate(dnopper)))+' and d1<='+quotedstr(formatdatetime(dtf,strtodate(dkopper)));
opensql(q4,ssql);

{
  a.id in (select p from bloki where (c_gost='+g+')  and (a_b='+quotedstr('Блок')+
') and (m_id<>0) and '+'((d in ('+dres+')))) order by n_id';
}

end;

procedure TFNestForming.rg1PropertiesChange(Sender: TObject);
begin

cb2.Properties.OnChange(sender);

end;

procedure TFNestForming.b1Click(Sender: TObject);
begin

if (rg1.itemindex=0) or (q3.recordcount=0) or (gost_id='0') then
begin
sm('Не указана структура.');
exit;
end;

nest_nom_inst;

nest_nom_zaversh;

end;

procedure TFNestForming.cxButton2Click(Sender: TObject);
begin

if q2.RecordCount=0 then exit;

if (q2.fieldbyname('p').asstring<>'-1') and ((q2.fieldbyname('tip').asstring='2') or (q2.fieldbyname('tip').asstring='3')) then
begin
sm('Выберите номер, но не место, ибо не подлежит место удалению без номера, содержится в котором, дабы избежать информационного переполнения и захламления данных базы.');
exit;
end;

if (q2.fieldbyname('p').asstring<>'-1') and (q2.fieldbyname('tip').asstring='1') then
begin

  ssql:='select count(*) from clients where id_n='+q2.fieldbyname('id').asstring+
  ' and annul<>'+quotedstr('да');
  opensql(q1,ssql);

  if q1.Fields[0].asinteger<>0 then
    begin
    sm(' В этом номере есть клиенты. Сначала удалите их.');
    exit;
  end;

  ssql:='delete from bloki where id='+q2.fieldbyname('id').asstring+' or p='+
  q2.fieldbyname('id').asstring;
  executesql(q1,ssql);
end;

if q2.fieldbyname('p').asstring='-1' then
begin

  ssql:='select count(*) from bloki where p='+q2.fieldbyname('id').asstring;
  opensql(q1,ssql);

  if q1.Fields[0].asinteger<>0 then
    begin
      sm('В периоде еще есть номера. Сначала удалите их.');
      exit;
    end;

ssql:='delete from bloki where id='+q2.fieldbyname('id').asstring+' or p='+
q2.fieldbyname('id').asstring;
executesql(q1,ssql);

end;

q2.close;
q2.open;

end;

procedure TFNestForming.cxButton6Click(Sender: TObject);
begin

ssql:='delete from bloki where c_gost='+gost_id+' and a_b='+quotedstr(struc)+
' and d1>='+quotedstr(formatdatetime(dtf,strtodate(dnopper)))+' and d1<='+quotedstr(formatdatetime(dtf,strtodate(dkopper)));
executesql(q1,ssql);

ssql:='delete from perpit where c_gost='+gost_id+' and a_b='+quotedstr(struc)+
' and d1>='+quotedstr(formatdatetime(dtf,strtodate(dnopper)))+' and d1<='+quotedstr(formatdatetime(dtf,strtodate(dkopper)));
executesql(q1,ssql);

q2.close;
q2.open;

q4.close;
q4.open;

end;

procedure TFNestForming.sozd_pitClick(Sender: TObject);
var i,j: integer;
min_d,max_d : string;
begin

if (rg1.itemindex=0) or (q3.recordcount=0) or (gost_id='0') then
begin
sm('Не указана структура.');
exit;
end;

ssql:='select min(d1) as min_d,max(d1) as max_d from nest_d where d1>='+quotedstr(formatdatetime(dtf,strtodate(dnopper)))+
' and d1<='+quotedstr(formatdatetime(dtf,strtodate(dkopper)));
opensql(q1,ssql);

if q1.recordcount<>0 then
begin
min_d:=q1.fieldbyname('min_d').asstring;
max_d:=q1.fieldbyname('max_d').asstring;
end
else
begin
sm('Не введены даты.');
exit;
end;

d1:=strtodate(min_d);
d2:=strtodate(max_d);

d:=d1;

pr_on;

ssql:='delete from perpit where c_gost='+gost_id+' and a_b='+
quotedstr(struc)+' and d1>='+quotedstr(formatdatetime(dtf,strtodate(dnopper)))+
' and d1<='+quotedstr(formatdatetime(dtf,strtodate(dkopper)));
executesql(q1,ssql);

for i:=1 to strtoint(floattostr(d2-d1))+1 do
begin

pr(i,strtoint(floattostr(d2-d1))+1);

ds:=formatdatetime(dtf,d);

struc:='Нест.';

d1s:=ds;

/////////////////////////////////////////////

ssql:='insert into perpit (d1,c_gost,p,a_b) values ('+quotedstr(d1s)+','+gost_id+',-1,'+
quotedstr(struc)+')';
executesql(q1,ssql);

ssql:='select max(id) from perpit where c_gost='+gost_id+' and a_b='+quotedstr(struc)+' and d1>='+quotedstr(formatdatetime(dtf,strtodate(dnopper)))+
' and d1<='+quotedstr(formatdatetime(dtf,strtodate(dkopper)));
opensql(q1,ssql);

p_p:=q1.fields[0].asstring;

ssql:='select * from gostpit where c_gost='+gost_id+' and a_b='+quotedstr(struc);
opensql(q4,ssql);

for j:=0 to q4.recordcount-1 do
begin

ssql:='insert into perpit (d1,c_gost,p,a_b,c_pit,vkl) values ('+quotedstr(d1s)+','+gost_id+','+p_p+','+
quotedstr(struc)+','+q4.fieldbyname('c_pit').asstring+','+
quotedstr(q4.fieldbyname('vkl').asstring)+')';
executesql(q1,ssql);

q4.next;

end;
/////////////////////////////////////

d:=d1+i;

end;

ssql:='select a.*,c.pit from perpit a left join pit c on a.c_pit = c.codeid where a.c_gost = '+
gost_id+' and a.a_b='+quotedstr(struc)+' and ex='+quotedstr('нет')+' and d1>='+quotedstr(formatdatetime(dtf,strtodate(dnopper)))+
' and d1<='+quotedstr(formatdatetime(dtf,strtodate(dkopper)));
opensql(q4,ssql);

pr_off;
 
end;

procedure TFNestForming.cxButton5Click(Sender: TObject);
var kol : integer;
begin

if (rg1.itemindex=0) or (q3.recordcount=0) or (gost_id='0') then
begin
sm('Не указана структура.');
exit;
end;

q3.first;

for kol:=1 to q3.recordcount do
begin

if q3.fieldbyname('tip').asstring='1' then b1.OnClick(sender);

q3.next;
end;

nest_nom_zaversh;

sozd_pit.onclick(sender);

end;

end.
