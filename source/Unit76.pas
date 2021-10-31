unit Unit76;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Db, DBTables, dxExEdtr, dxDBTLCl, dxTL, dxDBCtrl, dxCntner,
  dxDBTL, cxDropDownEdit, cxCalendar, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, ImgList, ADODB, cxLookAndFeelPainters, cxButtons,
  cxCheckBox, cxSpinEdit, cxRadioGroup, cxGroupBox, dxGrClms, dxDBGrid,
  cxPC, cxListBox, ExtCtrls, jpeg, Menus;

type
  TFBlForming = class(TForm)
    q1: TADOQuery;
    DataSource1: TDataSource;
    ImageList: TImageList;
    q3: TADOQuery;
    DataSource3: TDataSource;
    q2: TADOQuery;
    DataSource2: TDataSource;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    cb1: TcxComboBox;
    cb2: TcxComboBox;
    cb3: TcxComboBox;
    de1: TcxDateEdit;
    de2: TcxDateEdit;
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
    dxDBTreeListDateColumn1: TdxDBTreeListDateColumn;
    dxDBTreeListDateColumn2: TdxDBTreeListDateColumn;
    dxDBTreeListDateColumn3: TdxDBTreeListDateColumn;
    dxDBTreeListMaskColumn10: TdxDBTreeListMaskColumn;
    dxDBTreeListColumn8: TdxDBTreeListColumn;
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
    rg9: TcxRadioGroup;
    Label1: TLabel;
    Label2: TLabel;
    lb1: TcxListBox;
    b12: TcxButton;
    b13: TcxButton;
    cxButton5: TcxButton;
    cxButton6: TcxButton;
    b14: TcxButton;
    b15: TcxButton;
    q4: TADOQuery;
    DataSource4: TDataSource;
    sozd_pit: TcxButton;
    tr_pit: TdxDBTreeList;
    tr_pitid: TdxDBTreeListMaskColumn;
    tr_pitc_gost: TdxDBTreeListMaskColumn;
    tr_pitc_pit: TdxDBTreeListMaskColumn;
    tr_pitn_id: TdxDBTreeListMaskColumn;
    tr_pitper: TdxDBTreeListColumn;
    tr_pitd1: TdxDBTreeListDateColumn;
    tr_pitd2: TdxDBTreeListDateColumn;
    tr_pito_f: TdxDBTreeListColumn;
    tr_pita_b: TdxDBTreeListColumn;
    tr_pitvkl: TdxDBTreeListColumn;
    tr_pitp: TdxDBTreeListMaskColumn;
    tr_pitpit: TdxDBTreeListColumn;
    pitudal: TcxButton;
    cxButton1: TcxButton;
    b4: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cb1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cb1PropertiesChange(Sender: TObject);
    procedure cb2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cb2PropertiesChange(Sender: TObject);
    procedure b2Click(Sender: TObject);
    procedure b1Click(Sender: TObject);
    procedure cb3MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure treeClick(Sender: TObject);
    procedure rg9Click(Sender: TObject);
    procedure sozd_pitClick(Sender: TObject);
    procedure b12Click(Sender: TObject);
    procedure b13Click(Sender: TObject);
    procedure b15Click(Sender: TObject);
    procedure b14Click(Sender: TObject);
    procedure tr_pitClick(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure cb3PropertiesChange(Sender: TObject);
    procedure pitudalClick(Sender: TObject);
    procedure nom_podgot;
    procedure nom_inst;
    procedure nom_zaversh;
    procedure cxButton5Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure b4Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FBlForming: TFBlForming;

implementation

uses  Unit85, unit11;

{$R *.DFM}

procedure TFBlForming.nom_podgot;
var i: integer;
begin

if (de1.Text='') or (de2.Text='') or (gost_id='0') or (q3.recordcount=0) then exit;

d:=de1.Date;
d1:=de1.Date;
d2:=de2.Date;

i:=strtoint(floattostr(d2-d1));

if (i<0) or ((de1.text+'-'+de2.text)<>cb3.text) then
begin
sm('Задан ошибочный период.');
exit;
end;

d1s:=formatdatetime('dd.mm.yyyy',d1); //!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
d2s:=formatdatetime('dd.mm.yyyy',d2);

per:=de1.text+'-'+de2.text;

d1d:=de1.text;
d2d:=de2.text;

sp:=q3.fieldbyname('codeid').asstring;

struc:=q3.fieldbyname('a_b').asstring;

// поиск пересечений   - ОТКЛЮЧЕН
//p_id:=c_id('select id from bloki where (d1<'+quotedstr(d1s)+' and d2>'+quotedstr(d1s)+') or (d1<'+quotedstr(d1s)+' and d2='+quotedstr(d1s)+') or (d1<'+quotedstr(d1s)+' and d2>'+quotedstr(d2s)+') or (d2='+quotedstr(d1s)+' and d2<'+quotedstr(d2s)+') or (d2>'+quotedstr(d1s)+' and d2<'+quotedstr(d2s)+') or (d1>'+quotedstr(d1s)+' and d1<'+quotedstr(d2s)+') or (d1<'+quotedstr(d1s)+' and d2>'+quotedstr(d2s)+' and d1<'+quotedstr(d2s)+') and c_gost='+gost_id+' and a_b='+quotedstr(struc));

p_id:='';

if p_id='' then // если пересечений нет
begin

p:=c_id('select id from bloki where d1='+quotedstr(d1d)+' and d2='+quotedstr(d2d)+' and c_gost='+
gost_id+' and a_b='+quotedstr(struc));

// + pitanie
//p_p:=c_id('select id from perpit where d1='+quotedstr(d1s)+' and d2='+quotedstr(d2s)+' and c_gost='+gost_id+' and a_b='+quotedstr(struc));

if p='' then // если готового периода нет - создаем
begin

ssql:='insert into bloki (per,d1,d2,c_gost,p,a_b) values ('+quotedstr(per)+','+quotedstr(d1d)+','+quotedstr(d2d)+','+gost_id+',-1,'+quotedstr(struc)+')';
executesql(q1,ssql);

ssql:='select max(id) from bloki where c_gost='+gost_id+' and a_b='+quotedstr(struc);
opensql(q1,ssql);

p:=q1.fields[0].asstring;

end;

end
else
begin  // если есть пересечение
sm('Указанный период пересекается с другим периодом, указанным для данного объекта.');
exit;
end;

end;

procedure TFBlForming.nom_inst;
var j,k : integer;
inst : boolean;
begin

ds:=formatdatetime('dd.mm.yyyy',d);

kmo:=q3.FieldByName('kmo').asstring;
kmd:=q3.FieldByName('kmd').asstring;
n_id:=q3.fieldbyname('codeid').asstring;
kat_id:=q3.FieldByName('c_kat').asstring;
komf:=q3.FieldByName('komf').asstring;
komf_id:=q3.FieldByName('c_komf').asstring;
n:=q3.FieldByName('n').asstring;
tip:=q3.FieldByName('tip').asstring;

// проверка наличия выбранного номера в этом периоде

if struc='Блок' then
ssql:='select count(*) from bloki where n_id='+n_id+' and c_gost='+gost_id+' and d in ('+
quotedstr(datetostr(strtodate(d1d)+1))+','+quotedstr(datetostr(strtodate(d2d)-1))+') and a_b='+
quotedstr('Блок')
else
ssql:='select count(*) from bloki where n_id='+n_id+' and c_gost='+gost_id+' and per='+
quotedstr(de1.text+'-'+de2.text)+' and a_b='+quotedstr('Авт.');

opensql(q1,ssql);

if q1.fields[0].asinteger<>0 then
begin
sm('Этот номер в период уже внесен.');
inst:=true;
end
else inst:=false;

if inst<>true then // проверка на наличие номера в периоде
begin

ssql:='insert into bloki (per,d1,d2,d,p,n,tip,c_gost,c_kat,n_id,m_id,komf,c_komf,kmo,kmd,a_b) values ('+quotedstr(per)+','+quotedstr(d1s)+','+quotedstr(d2s)+','+quotedstr(ds)+','+p+','+n+','+tip+','+gost_id+','+kat_id+','+n_id+',0,'+quotedstr(komf)+','+quotedstr(komf_id)+','+kmo+','+kmd+','+quotedstr(struc)+')';
executesql(q1,ssql);

ssql:='select max(id) from bloki where p='+p+' and a_b='+quotedstr(struc);
opensql(q1,ssql);

p:=q1.fields[0].asstring;

q3.next;

for j:=1 to strtoint(floattostr(d2-d1))+1 do
begin

ds:=formatdatetime(dtf,d);

   for k:=1 to strtoint(kmo) do
   begin

   m_id:=q3.fieldbyname('codeid').asstring;

    n:=q3.FieldByName('n').asstring;
    tip:=q3.FieldByName('tip').asstring;
    kat_id:=q3.FieldByName('c_kat').asstring;

    ssql:='insert into bloki (per,d1,d2,d,p,n,tip,c_gost,c_kat,n_id,m_id,komf,c_komf,kmo,kmd,a_b) values ('+quotedstr(per)+','+quotedstr(d1s)+','+quotedstr(d2s)+','+quotedstr(ds)+','+p+','+n+','+tip+','+gost_id+','+kat_id+','+n_id+','+m_id+','+quotedstr(komf)+','+quotedstr(komf_id)+','+kmo+','+kmd+','+quotedstr(struc)+')';
    executesql(q1,ssql);

   q3.next;
   end;


   for k:=1 to strtoint(kmd) do
   begin

   m_id:=q3.fieldbyname('codeid').asstring;

    n:=q3.FieldByName('n').asstring;
    tip:=q3.FieldByName('tip').asstring;
    kat_id:=q3.FieldByName('c_kat').asstring;

    ssql:='insert into bloki (per,d1,d2,d,p,n,tip,c_gost,c_kat,n_id,m_id,komf,c_komf,kmo,kmd,a_b) values ('+quotedstr(per)+','+quotedstr(d1s)+','+quotedstr(d2s)+','+quotedstr(ds)+','+p+','+n+','+tip+','+gost_id+','+kat_id+','+n_id+','+m_id+','+quotedstr(komf)+','+quotedstr(komf_id)+','+kmo+','+kmd+','+quotedstr(struc)+')';
    executesql(q1,ssql);

   q3.next;
   end;

d:=de1.Date+j;
q3.Locate('codeid',sp,[]);
q3.next;

end; // все даты введены для выбранного номера

end;

end;

procedure TFBlForming.nom_zaversh;
begin

q2.close;
q2.open;
tr2.FullCollapse;
q3.Locate('codeid',sp,[]);

end;

procedure TFBlForming.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action := caFree;
FBlForming := nil;
end;

procedure TFBlForming.Button2Click(Sender: TObject);
begin
close;
end;

procedure TFBlForming.FormCreate(Sender: TObject);
begin

{
cb1.Text:='Адлер';
cb2.Text:='гостиница ''Тетис-Вятка''';
}

//cb2.Properties.OnChange(sender);

de1.date:=date;
de2.date:=date+1;

end;

procedure TFBlForming.cb1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
{var i,j : integer;
est : boolean;  }
begin

case rg9.itemindex of
0: combo_gost_podreg_load (cb1,'Авт.');
1: combo_gost_podreg_load (cb1,'Блок');
-1: combo_gost_podreg_load (cb1,'все');
end;

{
cb1.properties.items.clear;

ssql:='select distinct c_gost from bloki';
opensql(dm.q1,ssql);

for i:=1 to dm.q1.RecordCount do
begin

est:=false;

ssql:='select b.podreg from gostinici a left join podreg b on(a.podregrazm=b.codeid) where a.codeid='+dm.q1.fieldbyname('c_gost').asstring;
opensql(dm.q2,ssql);

for j:=0 to cb1.Properties.Items.Count-1 do
begin

if dm.q2.fieldbyname('podreg').asstring=cb1.properties.Items[j] then est:=true;

end;

if (est=false) and (dm.q2.fieldbyname('podreg').asstring<>'') then cb1.properties.Items.add(dm.q2.fieldbyname('podreg').asstring);

dm.q1.next;
end;
 }
end;

procedure TFBlForming.cb1PropertiesChange(Sender: TObject);
begin

//podreg_id:=c_c('select codeid from podreg where podreg='+quotedstr(cb1.text));

podreg_id:=podregion_id(cb1.text);

cb2.Clear;
cb2.text:='';

end;

procedure TFBlForming.cb2MouseDown(Sender: TObject; Button: TMouseButton;
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
cb2.properties.Items.add(dm.gostin.fieldbyname('nazvanie').asstring);
dm.gostin.next;

end;

end;

end;

procedure TFBlForming.cb2PropertiesChange(Sender: TObject);
begin

if cb2.text='' then exit;

gost_id:=g_id_podreg(cb2.Text,podregion_id(cb1.text));

if rg9.ItemIndex=0 then
begin
struc:='Авт.';
//cxbutton6.visible:=false;
cxbutton6.visible:=true;
end
else
begin
struc:='Блок';
cxbutton6.visible:=true;
end;

ssql:='select a.*,d.kat from bloki a left join kat d on a.C_kat = d.codeid where a.c_gost='+
gost_id+' and a.a_b='+quotedstr(struc)+
' and d1>='+quotedstr(formatdatetime(dtf,strtodate(dnopper)))+' and d1<='+quotedstr(formatdatetime(dtf,strtodate(dkopper)));
opensql(q2,ssql);

ssql:='select a.*,d.kat from gostnom a left join kat d on a.C_kat = d.codeid where a.c_gost = '+
gost_id+' and a.a_b='+quotedstr(struc);
opensql(q3,ssql);

ssql:='select a.*,c.pit from perpit a left join pit c on a.c_pit = c.codeid where a.c_gost = '+
gost_id+' and a.a_b='+quotedstr(struc)+' and p<>0 and ex='+quotedstr('нет')+
' and d1>='+quotedstr(formatdatetime(dtf,strtodate(dnopper)))+' and d1<='+quotedstr(formatdatetime(dtf,strtodate(dkopper)));
opensql(q4,ssql);

end;

procedure TFBlForming.b2Click(Sender: TObject);
begin

if q2.RecordCount=0 then exit;

if (q2.fieldbyname('p').asstring<>'-1') and ((q2.fieldbyname('tip').asstring='2') or (q2.fieldbyname('tip').asstring='3')) then
begin
sm('Выберите номер, но не место, ибо не подлежит место удалению без номера, содержится в котором, дабы избежать информационного переполнения и захламления данных базы.');
exit;
end;

if (q2.fieldbyname('p').asstring<>'-1') and (q2.fieldbyname('tip').asstring='1') then
begin

ssql:='select count(*) from clients where id_n='+q2.fieldbyname('id').asstring+' and annul<>'+quotedstr('да');
opensql(q1,ssql);

if q1.Fields[0].asinteger<>0 then
begin
sm('В этом номере есть клиенты. Сначала удалите их.');
exit;
end;

ssql:='delete from bloki where id='+q2.fieldbyname('id').asstring+
' or p='+q2.fieldbyname('id').asstring;
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

ssql:='delete from bloki where id='+q2.fieldbyname('id').asstring+
' or p='+q2.fieldbyname('id').asstring;
executesql(q1,ssql);

end;

q2.close;
q2.open;

end;

procedure TFBlForming.b1Click(Sender: TObject);
begin

if (rg9.itemindex=-1) or ((de1.text+'-'+de2.text)<>cb3.text) then
begin
sm('Не указаны необходимые данные.');
exit;
end;

nom_podgot;

nom_inst;

nom_zaversh;

end;

procedure TFBlForming.cb3MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var i: integer;
g : string;
begin

if gost_id='' then exit;

cb3.Properties.Items.Clear;
cb3.Text:='';

if rg9.ItemIndex=0
then ssql:='select graf from gostinici where codeid='+gost_id
else ssql:='select graf_b from gostinici where codeid='+gost_id;
opensql(q1,ssql);

if q1.recordcount=0 then exit;

g:=q1.fields[0].AsString;

ssql:='select * from periods where graf='+g+' and d1>='+quotedstr(formatdatetime(dtf,strtodate(dnopper)))+
' and d2<='+quotedstr(formatdatetime(dtf,strtodate(dkopper)))+' order by d1,d2';
opensql(q1,ssql);

for i:=0 to q1.recordcount-1 do
begin
cb3.Properties.Items.Add(q1.fieldbyname('d1').AsString+'-'+q1.fieldbyname('d2').AsString);
q1.next;
end;

end;

procedure TFBlForming.treeClick(Sender: TObject);
begin

if q2.FieldByName('tip').asinteger<>1 then
begin

lb1.clear;

b12.Enabled:=false;
b13.Enabled:=false;
b14.Enabled:=false;
b15.Enabled:=false;

end
else 
begin

b12.Enabled:=true;
b13.Enabled:=true;
b14.Enabled:=true;
b15.Enabled:=true;

p_id:=q2.FieldByName('p').asstring;

// питание
lb1.Clear;
                                             // важно!!! id - относится к конкр. в блоках, зависимо от периода, n_id - к номеру в гостинице независимо от периода, делаю ЗАвисимо (переделка)
ssql:='select count(*) from perpit where n_id='+q2.FieldByName('id').asstring+' and per='+quotedstr(q2.FieldByName('per').asstring);
opensql(q1,ssql);

if q1.fields[0].asinteger=0 then
begin

ssql:='select a.*,c.pit from perpit a left join pit c on a.c_pit = c.codeid where a.c_gost = '+gost_id+' and a.a_b='+quotedstr(struc)+' and per='+quotedstr(q2.FieldByName('per').asstring)+' and vkl='+quotedstr('да');
opensql(q1,ssql);

if q1.recordcount<>0 then lb1.items.add(q1.fieldbyname('pit').asstring);

end
else
begin

ssql:='select a.*,c.pit from perpit a left join pit c on a.c_pit = c.codeid where a.c_gost = '+gost_id+' and a.a_b='+quotedstr(struc)+' and per='+quotedstr(q2.FieldByName('per').asstring)+' and vkl='+quotedstr('да')+' and n_id='+q2.FieldByName('id').asstring;
opensql(q1,ssql);

if q1.recordcount<>0 then lb1.items.add(q1.fieldbyname('pit').asstring);

end;

if lb1.Items.Count=0 then
begin
b12.enabled:=false;
b13.enabled:=true;
end
else
begin
b12.enabled:=true;
b13.enabled:=false;
end;

end;

end;

procedure TFBlForming.rg9Click(Sender: TObject);
begin

cb2.Properties.OnChange(sender);
cb3.clear;

end;

procedure TFBlForming.sozd_pitClick(Sender: TObject);
var i: integer;
begin

if (de1.Text='') or (de2.Text='') or (gost_id='0') or (q3.recordcount=0)
or ((de1.text+'-'+de2.text)<>cb3.text) then
begin
sm('Не указаны необходимые данные.');
exit;
end;

d1:=de1.Date;
d2:=de2.Date;

i:=strtoint(floattostr(d2-d1));

if (i<0) then
begin
sm('Задан ошибочный период.');
exit;
end;

d1s:=formatdatetime(dtf,d1);
d2s:=formatdatetime(dtf,d2);

per:=de1.text+'-'+de2.text;

d1d:=de1.text;
d2d:=de2.text;

if rg9.itemindex=0 then struc:='Авт.' else struc:='Блок';

// поиск пересечений - ОТКЛЮЧЕН
p_id:='';//c_id('select id from bloki where (d1<'+quotedstr(d1s)+' and d2>'+quotedstr(d1s)+') or (d1<'+quotedstr(d1s)+' and d2='+quotedstr(d1s)+') or (d1<'+quotedstr(d1s)+' and d2>'+quotedstr(d2s)+') or (d2='+quotedstr(d1s)+' and d2<'+quotedstr(d2s)+') or (d2>'+quotedstr(d1s)+' and d2<'+quotedstr(d2s)+') or (d1>'+quotedstr(d1s)+' and d1<'+quotedstr(d2s)+') or (d1<'+quotedstr(d1s)+' and d2>'+quotedstr(d2s)+' and d1<'+quotedstr(d2s)+') and c_gost='+gost_id+' and a_b='+quotedstr(struc));

if p_id='' then // если пересечений нет
begin

ssql:='delete from perpit where c_gost='+gost_id+' and a_b='+quotedstr(struc)+
' and per='+quotedstr(per);
executesql(q1,ssql);

ssql:='insert into perpit (per,d1,d2,c_gost,p,a_b) values ('+quotedstr(per)+','+
quotedstr(d1s)+','+quotedstr(d2s)+','+gost_id+',-1,'+quotedstr(struc)+')';
executesql(q1,ssql);

ssql:='select max(id) from perpit where c_gost='+gost_id+' and a_b='+quotedstr(struc);
opensql(q1,ssql);

p_p:=q1.fields[0].asstring;

end
else
begin  // если есть пересечение
sm('Указанный период пересекается с другим периодом, указанным для данного объекта.');
exit;
end;

ssql:='select * from gostpit where c_gost='+gost_id+' and a_b='+quotedstr(struc);
opensql(q4,ssql);

for i:=0 to q4.recordcount-1 do
begin

ssql:='insert into perpit (d1,d2,per,c_gost,p,a_b,c_pit,vkl) values ('+
quotedstr(copy(per,1,10))+','+quotedstr(copy(per,12,10))+','+quotedstr(per)+','+gost_id+','+
p_p+','+quotedstr(struc)+','+q4.fieldbyname('c_pit').asstring+','+
quotedstr(q4.fieldbyname('vkl').asstring)+')';
executesql(q1,ssql);

q4.next;

end;

ssql:='select a.*,c.pit from perpit a left join pit c on a.c_pit = c.codeid where a.c_gost = '+
gost_id+' and a.a_b='+quotedstr(struc)+' and ex='+quotedstr('нет')+' and d1>='+quotedstr(formatdatetime(dtf,strtodate(dnopper)))+
' and d2<='+quotedstr(formatdatetime(dtf,strtodate(dkopper)));
opensql(q4,ssql);

end;

procedure TFBlForming.b12Click(Sender: TObject);
begin

if q4.recordcount=0 then exit;

ssql:='delete from perpit where c_gost='+gost_id+' and a_b='+quotedstr(struc)+' and per='+quotedstr(q2.FieldByName('per').asstring)+' and n_id='+q2.FieldByName('n_id').asstring;
executesql(q1,ssql);

ssql:='insert into perpit (c_gost,a_b,per,vkl,n_id) values ('+gost_id+','+quotedstr(struc)+','+quotedstr(q2.FieldByName('per').asstring)+','+quotedstr('нет')+','+q2.FieldByName('id').asstring+')';
executesql(q1,ssql);

tree.OnClick(sender);

end;

procedure TFBlForming.b13Click(Sender: TObject);
begin

if q4.recordcount=0 then exit;

pit_id:=c_c('select codeid from pit where pit='+quotedstr(q4.fieldbyname('pit').asstring));

ssql:='delete from perpit where c_gost='+gost_id+' and a_b='+quotedstr(struc)+' and per='+quotedstr(q2.FieldByName('per').asstring)+' and n_id='+q2.FieldByName('n_id').asstring;
executesql(q1,ssql);

ssql:='insert into perpit (c_gost,a_b,per,vkl,n_id,c_pit,ex) values ('+gost_id+','+quotedstr(struc)+','+quotedstr(q2.FieldByName('per').asstring)+','+quotedstr('да')+','+q2.FieldByName('id').asstring+','+pit_id+','+quotedstr('да')+')';
executesql(q1,ssql);

tree.OnClick(sender);

end;

procedure TFBlForming.b15Click(Sender: TObject);
begin

if q4.recordcount=0 then exit;

pit_id:=c_c('select codeid from pit where pit='+quotedstr(q4.fieldbyname('pit').asstring));

ssql:='update perpit set o_f='+quotedstr('нет')+' where id='+q4.FieldByName('id').asstring;
executesql(q1,ssql);

lid:=q4.FieldByName('id').asinteger;

q4.close;
q4.open;

q4.Locate('id',lid,[]);

end;

procedure TFBlForming.b14Click(Sender: TObject);
begin

if q4.recordcount=0 then exit;

pit_id:=c_c('select codeid from pit where pit='+quotedstr(q4.fieldbyname('pit').asstring));

ssql:='update perpit set o_f='+quotedstr('да')+' where id='+q4.FieldByName('id').asstring;
executesql(q1,ssql);

lid:=q4.FieldByName('id').asinteger;

q4.close;
q4.open;

q4.Locate('id',lid,[]);

end;

procedure TFBlForming.tr_pitClick(Sender: TObject);
begin

if q4.fieldbyname('o_f').asstring='да' then
begin
b12.enabled:=true;
b13.enabled:=true;
end
else
begin
b12.enabled:=false;
b13.enabled:=false;
end;

if q4.fieldbyname('pit').asstring<>'' then
begin
b12.enabled:=true;
b13.enabled:=true;
b14.enabled:=true;
b15.enabled:=true;
pitudal.enabled:=true;
end
else
begin
b12.enabled:=false;
b13.enabled:=false;
b14.enabled:=false;
b15.enabled:=false;
pitudal.enabled:=false;
end;

end;

procedure TFBlForming.cxButton6Click(Sender: TObject);
begin

ssql:='delete from bloki where c_gost='+gost_id+' and a_b='+quotedstr(struc)+
' and d1>='+quotedstr(formatdatetime(dtf,strtodate(dnopper)))+' and d1<='+quotedstr(formatdatetime(dtf,strtodate(dkopper)));
executesql(q1,ssql);

q2.close;
q2.open;

end;

procedure TFBlForming.cb3PropertiesChange(Sender: TObject);
begin

if cb3.text='' then exit;

de1.text:=copy(cb3.text, 1, 10);
de2.text:=copy(cb3.text, 12, 10);

end;

procedure TFBlForming.pitudalClick(Sender: TObject);
begin

if q4.recordcount=0 then exit;

ssql:='delete from perpit where c_gost='+gost_id+' and a_b='+
quotedstr(struc)+' and per='+quotedstr(q4.FieldByName('per').asstring)+
' and id='+q4.FieldByName('id').asstring;
executesql(q1,ssql);

ssql:='select a.*,c.pit from perpit a left join pit c on a.c_pit = c.codeid where a.c_gost = '+
gost_id+' and a.a_b='+quotedstr(struc)+' and p<>0 and ex='+quotedstr('нет');
opensql(q4,ssql);

tr_pit.FullExpand;

end;

procedure TFBlForming.cxButton5Click(Sender: TObject);
var kol : integer;
begin

if  ((de1.text+'-'+de2.text)<>cb3.text) then
begin
sm('Не указаны необходимые данные.');
exit;
end;

q3.first;

for kol:=1 to q3.recordcount do
begin

if q3.fieldbyname('tip').asstring='1' then b1.OnClick(sender);

q3.next;
end;

nom_zaversh;

sozd_pit.onclick(sender);

end;

procedure TFBlForming.cxButton1Click(Sender: TObject);
begin

if q4.recordcount=0 then exit;

ssql:='delete from perpit where c_gost='+gost_id+' and a_b='+quotedstr(struc)+
' and per='+quotedstr(q4.FieldByName('per').asstring);
executesql(q1,ssql);

ssql:='select a.*,c.pit from perpit a left join pit c on a.c_pit = c.codeid where a.c_gost = '+
gost_id+' and a.a_b='+quotedstr(struc)+' and p<>0 and ex='+quotedstr('нет');
opensql(q4,ssql);

tr_pit.FullExpand;

end;

procedure TFBlForming.b4Click(Sender: TObject);
begin
rg9.itemindex:=-1;
end;

end.
