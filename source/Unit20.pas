unit Unit20;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxMaskEdit, cxDropDownEdit, cxCalendar, cxControls, cxContainer,
  cxEdit, cxTextEdit, StdCtrls, dxExEdtr, dxCntner, dxTL, dxDBCtrl, dxDBTL,
  cxGroupBox, cxRadioGroup, cxCheckBox, cxLookAndFeelPainters, cxButtons,
  cxListBox, DB, ADODB, cxSpinEdit, ExtCtrls, jpeg, dxGrClms, dxDBGrid,
  dxDBTLCl;

type
  TFZai_vvod = class(TForm)
    te1: TcxTextEdit;
    te2: TcxTextEdit;
    te3: TcxTextEdit;
    de1: TcxDateEdit;
    te4: TcxTextEdit;
    te5: TcxTextEdit;
    te6: TcxTextEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    polcb: TcxComboBox;
    Label9: TLabel;
    tr1: TdxDBTreeList;
    trcb: TcxComboBox;
    Label11: TLabel;
    agc: TcxComboBox;
    Label16: TLabel;
    Label17: TLabel;
    rg1: TcxRadioGroup;
    rg2: TcxRadioGroup;
    vmcb: TcxCheckBox;
    tm3: TcxComboBox;
    tm2: TcxComboBox;
    tm1: TcxComboBox;
    Label19: TLabel;
    Label41: TLabel;
    dzai: TcxDateEdit;
    dopl: TcxDateEdit;
    garcb: TcxCheckBox;
    b2: TcxButton;
    Label18: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    katc: TcxComboBox;
    mlb: TcxListBox;
    Label23: TLabel;
    pitlb: TcxListBox;
    b3: TcxButton;
    q1: TADOQuery;
    b4: TcxButton;
    b5: TcxButton;
    bmcb: TcxCheckBox;
    q2: TADOQuery;
    ds2: TDataSource;
    tr1id: TdxDBTreeListMaskColumn;
    tr1f: TdxDBTreeListColumn;
    tr1i: TdxDBTreeListColumn;
    tr1o: TdxDBTreeListColumn;
    tr1nd: TdxDBTreeListColumn;
    tr1pol: TdxDBTreeListColumn;
    tr1adres: TdxDBTreeListColumn;
    tr1tel: TdxDBTreeListColumn;
    tr1pods: TdxDBTreeListColumn;
    tr1per: TdxDBTreeListColumn;
    tr1nz: TdxDBTreeListMaskColumn;
    tr1n: TdxDBTreeListMaskColumn;
    tr1p: TdxDBTreeListMaskColumn;
    tr1tip: TdxDBTreeListMaskColumn;
    tr1id_ag: TdxDBTreeListMaskColumn;
    tr1id_gost: TdxDBTreeListMaskColumn;
    tr1id_tr: TdxDBTreeListMaskColumn;
    tr1id_pit: TdxDBTreeListMaskColumn;
    tr1id_n: TdxDBTreeListMaskColumn;
    tr1id_m: TdxDBTreeListMaskColumn;
    tr1id_kat: TdxDBTreeListMaskColumn;
    tr1id_po: TdxDBTreeListMaskColumn;
    tr1id_pp: TdxDBTreeListMaskColumn;
    tr1id_pv: TdxDBTreeListMaskColumn;
    tr1id_pers: TdxDBTreeListMaskColumn;
    tr1dr: TdxDBTreeListDateColumn;
    Label10: TLabel;
    q2id: TAutoIncField;
    q2f: TWideStringField;
    q2i: TWideStringField;
    q2o: TWideStringField;
    q2nd: TWideStringField;
    q2pol: TWideStringField;
    q2adres: TWideStringField;
    q2tel: TWideStringField;
    q2pods: TWideStringField;
    q2per: TWideStringField;
    q2vikup: TWideStringField;
    q2gar_pis: TWideStringField;
    q2bezmesta: TWideStringField;
    q2proezd: TWideStringField;
    q2tip_proezda: TWideStringField;
    q2nz: TIntegerField;
    q2n: TIntegerField;
    q2p: TIntegerField;
    q2tip: TIntegerField;
    q2id_ag: TIntegerField;
    q2id_gost: TIntegerField;
    q2id_tr: TIntegerField;
    q2id_pit: TIntegerField;
    q2id_n: TIntegerField;
    q2id_m: TIntegerField;
    q2id_kat: TIntegerField;
    q2id_po: TIntegerField;
    q2id_pp: TIntegerField;
    q2id_pv: TIntegerField;
    q2id_pers: TIntegerField;
    q2dr: TDateTimeField;
    q2data_zai: TDateTimeField;
    q2data_opl: TDateTimeField;
    q2agentcol: TStringField;
    AgColumn: TdxDBTreeListColumn;
    q2trcol: TStringField;
    q2pitcol: TStringField;
    q2katcol: TStringField;
    q2pocol: TStringField;
    q2ppcol: TStringField;
    q2pvcol: TStringField;
    katColumn: TdxDBTreeListColumn;
    PitColumn: TdxDBTreeListColumn;
    Tm1Column: TdxDBTreeListColumn;
    Tm2Column: TdxDBTreeListColumn;
    Tm3Column: TdxDBTreeListColumn;
    trColumn: TdxDBTreeListColumn;
    BezMestaColumn: TdxDBTreeListColumn;
    proezdColumn: TdxDBTreeListColumn;
    tip_proezdaColumn: TdxDBTreeListColumn;
    vikupColumn: TdxDBTreeListColumn;
    b6: TcxButton;
    b7: TcxButton;
    idte: TcxTextEdit;
    IDL: TLabel;
    q2a_b: TWideStringField;
    q2m: TWideStringField;
    MestoColumn: TdxDBTreeListColumn;
    b9: TcxButton;
    b8: TcxButton;
    stoimte: TcxTextEdit;
    Label7: TLabel;
    q2annul: TWideStringField;
    q2stoim: TBCDField;
    StoimCol: TdxDBTreeListColumn;
    q2oper: TWideStringField;
    OperColumn: TdxDBTreeListColumn;
    rg3: TcxRadioGroup;
    spote: TcxTextEdit;
    Label12: TLabel;
    q2oplata: TWideStringField;
    q2podtv: TWideStringField;
    q2bez_pr: TWideStringField;
    q2spo: TWideStringField;
    q2n_vauch: TIntegerField;
    q2data_podtv: TDateTimeField;
    q2data_vauch: TDateTimeField;
    q2oplacheno: TBCDField;
    q2sebest: TBCDField;
    b10: TcxButton;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure b1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure b4Click(Sender: TObject);
    procedure b2Click(Sender: TObject);
    procedure katcPropertiesChange(Sender: TObject);
    procedure agcPropertiesChange(Sender: TObject);
    procedure bmcbClick(Sender: TObject);
    procedure trcbPropertiesChange(Sender: TObject);
    procedure pitanie_v_nomere;
    procedure tr1Click(Sender: TObject);
    procedure b5Click(Sender: TObject);
    procedure b3Click(Sender: TObject);
    procedure b8Click(Sender: TObject);
    procedure b9Click(Sender: TObject);
    procedure b6Click(Sender: TObject);
    procedure b7Click(Sender: TObject);
    procedure stoimteKeyPress(Sender: TObject; var Key: Char);
    procedure rg2Click(Sender: TObject);
    procedure vmcbClick(Sender: TObject);
    procedure dzaiPropertiesChange(Sender: TObject);
    procedure garcbClick(Sender: TObject);
    procedure rg3Click(Sender: TObject);
    procedure b10Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FZai_vvod: TFZai_vvod;

implementation

uses Unit85,unit11,unit12;
{$R *.dfm}

procedure TFZai_vvod.FormClose(Sender: TObject; var Action: TCloseAction);
var k,f,bez_pr : string;
begin

ssql:='select f,proezd from clients where nz='+nz+' and id_pers<>0 and tip<>0 and annul<>'+quotedstr('да');
opensql(q1,ssql);

bez_pr:='БП';

spo:='';

if q1.recordcount<>0 then
begin

k:=inttostr(q1.recordcount-1);
f:=q1.fieldbyname('f').asstring;

if q1.fieldbyname('proezd').asstring<>'без проезда' then bez_pr:='';

if k='0' then k:='' else k:=' + '+k;

end;

ssql:='update clients set f='+quotedstr(f+k)+',bez_pr='+quotedstr(bez_pr)+' where nz='+nz+' and tip=1';
executesql(q1,ssql);

// удаление записи, определившей и зафикс. № заявки
ssql:='delete from clients where nz='+nz+' and tip=0';
executesql(q1,ssql);

Action := caFree;
FZai_vvod := nil;

if fzaiavki<>nil then fzaiavki.cb2.Properties.OnChange(sender);

end;

procedure TFZai_vvod.b1Click(Sender: TObject);
begin

rg3.ItemIndex:=-1;

end;

procedure TFZai_vvod.FormCreate(Sender: TObject);
var i: integer;
begin

b8.enabled:=false;
b9.enabled:=false;

lid:=0;

stoimte.text:=floattostr(stoim);

if (stoimte.text='0') and (user='Admin') then stoimte.text:='1000';

// агентства
dm.agentq.first;
for i:=1 to dm.agentq.recordcount do
begin
agc.properties.Items.add(dm.agentq.fieldbyname('naimen').asstring+' // '+dm.agentq.fieldbyname('podreg').asstring);
dm.agentq.next;
end;

// заголовок
label10.caption:=fzaiavki.cb2.text;//gostin(gost_id);
label15.caption:=per;
label25.caption:=nz;
label27.caption:=fzaiavki.cb1.text;
                                                                   // nz дальше может переопределиться
// (.)-ки маршрута
ssql:='select distinct podreg from podreg';
opensql(q1,ssql);
tm1.properties.items.Clear;
tm2.properties.items.Clear;
tm3.properties.items.Clear;
if q1.recordcount<>0 then
begin
for i:=1 to q1.recordcount do
begin
tm1.properties.items.add(q1.fieldbyname('podreg').asstring);
tm2.properties.items.add(q1.fieldbyname('podreg').asstring);
tm3.properties.items.add(q1.fieldbyname('podreg').asstring);
q1.next;
end;
end;

// вар-ты трансфера
{ssql:='select t1.podreg,t2.podreg,t3.podreg from tr t left join podreg t1 on(t1.codeid=t.p1) left join podreg t2 on(t2.codeid=t.p2) left join podreg t3 on(t3.codeid=t.p3) where t.a_b='+quotedstr('авт.');
opensql(q1,ssql);
if q1.recordcount<>0 then
begin
for i:=1 to q1.recordcount do
begin
trcb.properties.Items.add(q1.fields[0].asstring+'-'+q1.fields[1].asstring+'-'+q1.fields[2].asstring);
q1.next;
end;
end;   }

// вар-ты трансфера
dm.transq.first;
for i:=1 to dm.transq.recordcount do
begin
if (dm.transq.fieldbyname('a_b').asstring='авт.') or (dm.transq.fieldbyname('a_b').asstring='все') then
trcb.properties.Items.add(dm.transq.fieldbyname('trstr').asstring);
dm.transq.next;
end;

// категории номеров
nom_v_gost_zaez(gost_id,per);

// есди автобус - добавление

if z_op='АД' then
begin

tm1.text:='Тула';
tm3.text:='Тула';

ssql:='select b.podreg from gostinici a left join podreg b on a.podregrazm=b.codeid where a.codeid='+gost_id;
opensql(q1,ssql);
tm2.text:=q1.fieldbyname('podreg').asstring;

ag_id:='0';

// даты заявки и оплаты

dzai.date:=date;

if strtodate(copy(per,1,10))-date>3 then dopl.date:=date+3 else dopl.date:=date+1;

katc.text:=kateg(kat_id)+' # '+n;

// свободные места выбранного номера
mesta_v_nomere;

// виды питания
pitanie_v_nomere;

// № заявки
ssql:='select max(nz) from clients';  // пункт 00000005 (поиск)
opensql(dm.q1,ssql);

nz:=inttostr(dm.q1.fields[0].asinteger+1);

ssql:='insert into clients (nz,tip,p) values ('+nz+',0,-1)';
executesql(dm.q1,ssql);

// проверка на существующее подселение
ssql:='select id,pol from clients where p in (select id from clients where tip=2 and id_n='+n_id+') and pods='+quotedstr('да')+' and annul<>'+quotedstr('да');
opensql(dm.q1,ssql);

if q1.recordcount<>0 then
begin
rg1.itemindex:=1;
polcb.text:=dm.q1.fieldbyname('pol').asstring;
end;

// заголовок label10.caption:='Объект размещения: '+gostin(gost_id)+'   Заезд: '+per+'   № заявки: '+nz;

// заголовок
label10.caption:=fzaiavki.cb2.text;//gostin(gost_id);
label15.caption:=per;
label25.caption:=nz;
label27.caption:=fzaiavki.cb1.text;

q2refr(nz); //////!!!!!!!!!!!!!

end;

// если автобус - изменение

if z_op='АИ' then
begin

agc.text:=agent(ag_id);

{ssql:='select min(id) from clients where nz='+nz+' and id_pers<>0';
opensql(q1,ssql);
dzai.text:=q2.fieldbyname('data_zai').asstring;
dopl.text:=q2.fieldbyname('data_opl').asstring;  }

spote.text:=spo;

q2refr(nz);

if q2.fieldbyname('gar_pis').asstring='да' then garcb.checked:=true else garcb.checked:=false;

//q2.locate('id',q1.fields[0].asinteger, []);
//tr1.OnClick(sender);

end;

end;

procedure TFZai_vvod.b4Click(Sender: TObject);
begin

pitlb.ItemIndex:=-1;

end;

procedure TFZai_vvod.b2Click(Sender: TObject);
begin

/////////////////////////////////////////////////////////
       {
ssql:='select count(*) from clients where annul='+quotedstr('нет')+' and a_b='+quotedstr('Авт.');
opensql(q1,ssql);

if q1.fields[0].asinteger>=15 then
begin
sm('Извините, демонстрационное ограничение. Не более 15 записей.');
exit;
end;
         }
/////////////////////////////////////////////////////////

agc.Properties.OnChange(sender);

if ag_id='0' then
begin
sm('Не выбрано агентство.');
exit;
end;

if (mlb.itemindex=-1) and (bmcb.checked=false) then
begin
sm('Не указано место.');
exit;
end;

if katc.text='' then
begin
sm('Не указан номер.');
exit;
end;

if (te1.text='') and (vmcb.checked=false) then
begin
sm('Не введена фамилия.');
exit;
end;

if q2.recordcount=0 then if (stoimte.text='0') or (stoimte.text='') then
begin
sm('Не указана стоимость.');
exit;
end;

if de1.text='01.01.1900' then
begin
if application.messagebox('Для данного клиента будет установлена дата рождения 01.01.1900 г., подтверждаете?',
'Подтверждение даты рождения',MB_YESNO+MB_ICONQUESTION)=IDNO
then exit;
end;

// запятая в цене
stoimte.text:=zap(stoimte.text);

// заглавная запись заявки

garch('а');

ag_id:=a_id(agc.text);
gost_id:=g_id_podreg(label10.Caption,podregion_id(label27.Caption));
nz:=label25.Caption;

// удаление записи, определившей и зафикс. № заявки
ssql:='delete from clients where nz='+nz+' and tip=0';
executesql(q1,ssql);

ssql:='if not exists (select * from clients where nz='+nz+' and tip=1) insert into clients '+
'(nz,id_gost,id_ag,per,tip,p,data_zai,data_opl,a_b,gar_pis,stoim,oper,spo,dt_begin,dt_end) values ('+nz+','+
gost_id+','+ag_id+','+quotedstr(per)+',1,-1,'+quotedstr(formatdatetime(dtf,dzai.date))+','+
quotedstr(formatdatetime(dtf,dopl.date))+','+quotedstr('Авт.')+','+quotedstr(gar_pis)+',CAST('+
quotedstr(stoimte.Text)+' as money),'+quotedstr(user)+','+quotedstr(spote.text)+','+
quotedstr(copy(per,1,10))+','+quotedstr(copy(per,12,10))+')';
executesql(q1,ssql);

agc.Enabled:=false;

ssql:='select id from clients where nz='+nz+' and tip=1';
opensql(q1,ssql);
p:=q1.fields[0].asstring;

// заглавная запись номера

n_id:=nomer_id(katc.text);

ssql:='select id from clients where nz='+nz+' and tip=2 and id_n='+n_id;
opensql(q1,ssql);

if q1.recordcount<>0 then p:=q1.fields[0].asstring
else
begin

ssql:='insert into clients (nz,tip,id_n,id_kat,n,p,a_b) values ('+nz+',2,'+n_id+','+k_id(katc.text)+','+nomer_n(katc.text)+','+p+','+quotedstr('Авт.')+')';
executesql(q1,ssql);

ssql:='select id from clients where nz='+nz+' and tip=2 and id_n='+n_id;
opensql(q1,ssql);

p:=q1.fields[0].asstring;

end;

init_cl('i');

if de1.text<>'  .  .    ' then
ssql:='insert into clients (f,i,o,nd,dr,pol,adres,tel,nz,p,tip,id_pers,id_m,bezmesta,id_pit,id_tr,id_po,id_pp,'+
'id_pv,proezd,tip_proezda,vikup,pods,a_b,dt_begin,dt_end) values ('+quotedstr(te1.text)+','+quotedstr(te2.text)+','+
quotedstr(te3.text)+','+quotedstr(te4.text)+','+quotedstr(formatdatetime(dtf,de1.date))+','+quotedstr(polcb.text)+
','+quotedstr(te5.text)+','+quotedstr(te6.text)+','+nz+','+p+',3,'+id_pers+','+m_id+','+
quotedstr(bez_mesta)+','+
pit_id+','+
trans_id+','+
tm1_id+','+tm2_id+','+tm3_id+','+
quotedstr(proezd)+','+
quotedstr(tip_proezda)+','+
quotedstr(vikup)+','+
quotedstr(pods)+','+
quotedstr('Авт.')+','+
quotedstr(copy(per,1,10))+','+quotedstr(copy(per,12,10))+')'
else
ssql:='insert into clients (f,i,o,nd,pol,adres,tel,nz,p,tip,id_pers,id_m,bezmesta,id_pit,id_tr,id_po,id_pp,id_pv,proezd,tip_proezda,vikup,pods,a_b,dt_begin,dt_end) values ('+quotedstr(te1.text)+','+quotedstr(te2.text)+','+quotedstr(te3.text)+','+quotedstr(te4.text)+','+quotedstr(polcb.text)+','+quotedstr(te5.text)+','+quotedstr(te6.text)+','+nz+','+p+',3,'+id_pers+','+m_id+','+quotedstr(bez_mesta)+','+pit_id+','+trans_id+','+tm1_id+','+tm2_id+','+tm3_id+','+quotedstr(proezd)+','+quotedstr(tip_proezda)+','+quotedstr(vikup)+','+quotedstr(pods)+','+quotedstr('Авт.')+','+
quotedstr(copy(per,1,10))+','+quotedstr(copy(per,12,10))+')';

executesql(q1,ssql);

// update блоков - указание (с учетом периода) для номера и места № заявки и № человека
// если заявка на этот номер уже есть (подселение), то создается составной номер заявки на номер

ssql:='select nz from bloki where (nz like '+quotedstr(',')+') or (nz<>'+quotedstr('0')+') and id='+n_id;
opensql(q1,ssql);

if q1.recordcount<>0 then
begin

if pos(nz,q1.fieldbyname('nz').asstring)<>0
then ssql:='update bloki set nz='+quotedstr(q1.fieldbyname('nz').asstring)+' where id='+n_id
else ssql:='update bloki set nz='+quotedstr(q1.fieldbyname('nz').asstring+', '+nz)+' where id='+n_id;

executesql(q1,ssql);

ssql:='update bloki set nz='+quotedstr(nz)+',id_pers='+id_pers+' where m_id='+m_id+' and p='+n_id;
executesql(q1,ssql);

end
else
begin

ssql:='update bloki set nz='+quotedstr(nz)+' where (m_id='+m_id+' and p='+n_id+') or id='+n_id;
executesql(q1,ssql);

ssql:='update bloki set id_pers='+id_pers+' where m_id='+m_id+' and p='+n_id;
executesql(q1,ssql);

end;

mesta_v_nomere;

q2refr(nz);

z_clear('1');

te1.SetFocus;

end;

procedure TFZai_vvod.katcPropertiesChange(Sender: TObject);
begin

n_id:=nomer_id(katc.text);
mesta_v_nomere;
pitanie_v_nomere;

end;

procedure TFZai_vvod.agcPropertiesChange(Sender: TObject);
begin

ag_id:=a_id(agc.text);

end;

procedure TFZai_vvod.bmcbClick(Sender: TObject);
begin

if bmcb.checked then
begin
mlb.itemindex:=-1;
pitlb.itemindex:=-1;
end;

end;

procedure TFZai_vvod.trcbPropertiesChange(Sender: TObject);
begin
id_tr:=t_id(trcb.text);
end;

procedure TFZai_vvod.pitanie_v_nomere;
var i: integer;
begin

// виды питания
pitlb.Items.Clear;
ssql:='select distinct b.pit from perpit a left join pit b on a.c_pit=b.codeid where a.per='+quotedstr(per)+' and a.c_gost='+gost_id+' and a.o_f='+quotedstr('да')+' and a.c_pit<>0 and a.a_b='+quotedstr('Авт.');
opensql(q1,ssql);
for i:=1 to q1.recordcount do
begin
pitlb.Items.add(q1.fieldbyname('pit').asstring);
q1.next;
end;

// включенное питание ( без перекрытия )
ssql:='select b.pit from perpit a left join pit b on a.c_pit=b.codeid where a.per='+quotedstr(per)+' and a.c_gost='+gost_id+' and a.o_f='+quotedstr('да')+' and a.c_pit<>0 and a.a_b='+quotedstr('Авт.')+' and vkl='+quotedstr('да')+' and ex='+quotedstr('нет');
opensql(q1,ssql);
if q1.recordcount<>0 then
begin
for i:=0 to pitlb.items.Count-1 do
begin
if pitlb.Items[i]=q1.fieldbyname('pit').asstring then pitlb.ItemIndex:=i;
q1.next;
end;
end;

// включенное питание ( с перекрытием )
if n_id<>'' then
begin

ssql:='select b.pit from perpit a left join pit b on a.c_pit=b.codeid where a.per='+quotedstr(per)+' and a.c_gost='+gost_id+' and a.o_f='+quotedstr('да')+' and a.c_pit<>0 and a.a_b='+quotedstr('Авт.')+' and ex='+quotedstr('да')+' and n_id='+n_id+' and vkl='+quotedstr('да');
opensql(q1,ssql);
if q1.recordcount<>0 then
begin
for i:=0 to pitlb.items.Count-1 do
begin
if pitlb.Items[i]=q1.fieldbyname('pit').asstring then pitlb.ItemIndex:=i;
q1.next;
end;
end;

end;

end;

procedure TFZai_vvod.tr1Click(Sender: TObject);
var i: integer;
begin

tip:=q2.fieldbyname('tip').asstring;
m_id:=q2.fieldbyname('id_m').asstring;
n_id:=q2.fieldbyname('id_n').asstring;
n:=q2.fieldbyname('n').asstring;

if m_id='0' then b8.enabled:=false else b8.enabled:=true;// освободить
if (m_id<>'0') or (mlb.itemindex=-1) then b9.enabled:=false else b9.enabled:=true;// занять

// заглавная запись заявки
if tip='1' then
begin
dzai.text:=q2.FieldByName('data_zai').asstring;
dopl.text:=q2.FieldByName('data_opl').asstring;
z_clear('2');
katc.text:='';
pitlb.ItemIndex:=-1;
stoimte.text:=q2.FieldByName('stoim').asstring;
spote.text:=q2.FieldByName('spo').asstring;
end;

// // заглавная запись номера
if tip='2' then
begin
z_clear('3');

// категория номера
katc.text:=q2.fieldbyname('katcol').asstring+' # '+n;
stoimte.text:=q2.FieldByName('stoim').asstring;

pitlb.ItemIndex:=-1;
end;

// запись клиента
if tip='3' then
begin

// данные клиента
te1.text:=q2.fieldbyname('f').asstring;
te2.text:=q2.fieldbyname('i').asstring;
te3.text:=q2.fieldbyname('o').asstring;
te4.text:=q2.fieldbyname('nd').asstring;
te5.text:=q2.fieldbyname('adres').asstring;
te6.text:=q2.fieldbyname('tel').asstring;
idte.Text:=q2.fieldbyname('id_pers').asstring;
polcb.text:=q2.fieldbyname('pol').asstring;
de1.Text:=q2.fieldbyname('dr').asstring;

// трансфер
trcb.text:=q2.fieldbyname('trcol').asstring;

//tm1,tm2,tm3
tm1.text:=q2.fieldbyname('pocol').asstring;
tm2.text:=q2.fieldbyname('ppcol').asstring;
tm3.text:=q2.fieldbyname('pvcol').asstring;

// proezd
if q2.fieldbyname('proezd').asstring='город-база-город' then rg2.ItemIndex:=0;
if q2.fieldbyname('proezd').asstring='город-база' then rg2.ItemIndex:=1;
if q2.fieldbyname('proezd').asstring='база-город' then rg2.ItemIndex:=2;
if q2.fieldbyname('proezd').asstring='без проезда' then rg2.ItemIndex:=3;

// tip proezda
if q2.fieldbyname('tip_proezda').asstring='взрослый' then rg3.ItemIndex:=0;
if q2.fieldbyname('tip_proezda').asstring='ребенок 5-12' then rg3.ItemIndex:=1;
if q2.fieldbyname('tip_proezda').asstring='ребенок до 5' then rg3.ItemIndex:=2;
if q2.fieldbyname('tip_proezda').asstring='только проезд' then rg3.ItemIndex:=3;

// podselenie,bezmesta,vikup
if q2.fieldbyname('pods').asstring='да' then rg1.ItemIndex:=1 else rg1.ItemIndex:=0;
if q2.fieldbyname('bezmesta').asstring='да' then bmcb.checked:=true else bmcb.checked:=false;
if q2.fieldbyname('vikup').asstring='да' then vmcb.checked:=true else vmcb.checked:=false;

ssql:='select id_kat,n from clients where id='+q2.fieldbyname('p').asstring;
opensql(q1,ssql);

katc.text:=kateg(q1.fieldbyname('id_kat').asstring)+' # '+q1.fieldbyname('n').asstring;

// указание вида питания для человека среди имеющихся, если выделена запись человека
pitlb.ItemIndex:=-1;
for i:=0 to pitlb.items.Count-1 do
begin
if pitlb.Items[i]=q2.fieldbyname('pitcol').asstring then pitlb.ItemIndex:=i;
end;

end;

end;

procedure TFZai_vvod.b5Click(Sender: TObject);
begin
close;
end;

procedure TFZai_vvod.b3Click(Sender: TObject);
begin

if q2.recordcount=0 then
begin
sm('Заявка пуста.');
exit;
end;

tip:=q2.fieldbyname('tip').asstring;
n_id:=nomer_id(katc.text);

if tip='1' then
begin

if messagedlg('Вы уверены, что хотите аннулировать заявку?', mtConfirmation, [mbYes, mbNo], 0)=mryes then
begin

ssql:='select count(id) from clients where annul<>'+quotedstr('да')+' and nz='+nz+' and tip<>0';
opensql(q1,ssql);

if q1.fields[0].asinteger>1 then
begin
sm('В первую очередь необходимо удалить всё содержимое заявки.');
exit;
end;

ssql:='update clients set annul='+quotedstr('да')+' where nz='+nz;
executesql(q1,ssql);

close;

fzaiavki.cb2.Properties.OnChange(sender);

end;

exit;
end;

if tip='2' then
begin
                                         //  id_m<>0 and nz='+nz+' and
ssql:='select count(id) from clients where p='+q2.fieldbyname('id').asstring+' and annul<>'+quotedstr('да');
opensql(q1,ssql);

if q1.fields[0].asinteger<>0 then
begin
sm('В этом номере еще заняты места. Освободите их перед аннуляцией номера.');
exit;
end;

ssql:='update clients set annul='+quotedstr('да')+' where id='+q2.fieldbyname('id').asstring;
executesql(q1,ssql);

ssql:='select nz from bloki where id='+n_id;
opensql(q1,ssql);

nzs:=q1.fields[0].AsString;

if pos(',',nzs)<>0 then
begin

nzs:=newnzs(nzs,nz);

ssql:='update bloki set nz='+quotedstr(nzs)+' where id='+n_id;
executesql(q1,ssql);

end
else
                           
ssql:='update bloki set nz=0 where id='+n_id;
executesql(q1,ssql);

end;

if tip='3' then
begin

ssql:='update bloki set nz=0,id_pers=0 where m_id='+q2.fieldbyname('id_m').asstring+' and p='+n_id;
executesql(q1,ssql);

ssql:='update clients set annul='+quotedstr('да')+' where id='+q2.fieldbyname('id').asstring;
executesql(q1,ssql);

end;

nom_v_gost_zaez(gost_id,per);
mesta_v_nomere;
pitanie_v_nomere;
q2refr(nz);

// очистка полей
z_clear('4');

end;

procedure TFZai_vvod.b8Click(Sender: TObject);
begin

if (q2.fieldbyname('id_m').asstring='0') or (q2.recordcount=0) then exit;

n_id:=nomer_id(katc.text);

ssql:='update bloki set nz=0,id_pers=0 where m_id='+q2.fieldbyname('id_m').asstring+' and p='+n_id;
executesql(q1,ssql);

ssql:='update clients set id_m=0, bezmesta='+quotedstr('да')+' where id='+q2.fieldbyname('id').asstring;
executesql(q1,ssql);

mesta_v_nomere;

q2refr(nz);

end;

procedure TFZai_vvod.b9Click(Sender: TObject);
begin

if (q2.fieldbyname('id_m').asstring<>'0') or (q2.recordcount=0) or (mlb.itemindex=-1) or (tip='1') or (tip='2') then exit;

id_pers:=q2.fieldbyname('id_pers').asstring;

n_id:=nomer_id(katc.text);

m_id:=mesto_id(mlb.Items[mlb.Itemindex]);

ssql:='update bloki set nz='+nz+',id_pers='+id_pers+' where m_id='+m_id+' and p='+n_id;
executesql(q1,ssql);

ssql:='update clients set id_m='+m_id+', bezmesta='+quotedstr('нет')+' where id='+q2.fieldbyname('id').asstring;
executesql(q1,ssql);

mesta_v_nomere;

q2refr(nz);

end;

procedure TFZai_vvod.b6Click(Sender: TObject);
begin

if q2.recordcount=0 then
begin
sm('Заявка пуста.');
exit;
end;

if (dzai.text='') or (dopl.text='') then
begin
sm('Не указаны даты.');
exit;
end;

if tip='' then
begin
sm('Ничего не выбрано.');
exit;
end;

// запятая в цене
stoimte.text:=zap(stoimte.text);

//lid:=q2.fieldbyname('id').asinteger;
tip:=q2.fieldbyname('tip').asstring;

if bmcb.checked then bez_mesta:='да' else bez_mesta:='нет';

if (tip='1') and (agc.text<>'') then
begin

garch('а');

ag_id:=a_id(agc.text);

ssql:='update clients set spo='+quotedstr(spote.text)+','+
'stoim=CAST('+quotedstr(stoimte.Text)+' as money), id_ag='+ag_id+
', data_zai='+quotedstr(formatdatetime(dtf,dzai.date))+', data_opl='+
quotedstr(formatdatetime(dtf,dopl.date))+', gar_pis='+quotedstr(gar_pis)+
' where nz='+nz+' and tip=1';
executesql(q1,ssql);

end;

if tip='2' then
begin

ssql:='select count(id) from clients where id_m<>0 and nz='+nz+' and p='+
q2.fieldbyname('id').asstring+' and annul<>'+quotedstr('да');
opensql(q1,ssql);

if q1.fields[0].asinteger<>0 then
begin
showmessage('В этом номере еще заняты места. Освободите их перед сменой номера.');
exit;
end; 

// освобождаем номер
// проверка на составной номер и если так, удаление из списка заявок номера данной

ssql:='select nz from bloki where id='+q2.fieldbyname('id_n').asstring;
opensql(q1,ssql);

nzs:=q1.fields[0].AsString;

if pos(',',nzs)<>0 then
begin
nzs:=newnzs(nzs,nz);
ssql:='update bloki set nz='+quotedstr(nzs)+' where id='+q2.fieldbyname('id_n').asstring;
end
else
ssql:='update bloki set nz=0 where id='+q2.fieldbyname('id_n').asstring;

executesql(q1,ssql);

kat_id:=k_id(katc.text);
n_id:=nomer_id(katc.text);
n:=nomer_n(katc.text);

ssql:='update clients set id_kat='+kat_id+',id_n='+n_id+',n='+n+' where nz='+nz+
' and tip=2 and id='+q2.fieldbyname('id').asstring;
executesql(q1,ssql);

// проверка на составн. nz
ssql:='select nz from bloki where (m_id='+m_id+' and p='+n_id+') or id='+n_id;
opensql(q1,ssql);

if pos(',',q1.fieldbyname('nz').asstring)<>0 then
ssql:='update bloki set nz='+quotedstr(nzs+', '+nz)+',id_pers=0 where id='+n_id
else
ssql:='update bloki set nz='+quotedstr(nz)+',id_pers=0 where id='+n_id;

executesql(q1,ssql);

end;

if tip='3' then
begin

init_cl('');

ssql:='update clients set f='+quotedstr(te1.text)+',i='+quotedstr(te2.text)+',o='+quotedstr(te3.text)+
',nd='+quotedstr(te4.text)+',dr='+quotedstr(formatdatetime(dtf,de1.date))+',pol='+quotedstr(polcb.text)+
',adres='+quotedstr(te5.text)+',tel='+quotedstr(te6.text)+',bezmesta='+quotedstr(bez_mesta)+
',id_pit='+pit_id+',id_tr='+trans_id+',id_po='+tm1_id+',id_pp='+tm2_id+',id_pv='+tm3_id+
',proezd='+quotedstr(proezd)+',tip_proezda='+quotedstr(tip_proezda)+',vikup='+quotedstr(vikup)+
',pods='+quotedstr(pods)+' where id='+q2.fieldbyname('id').asstring;

if (te1.text='') and (te2.text='') and (te3.text='') then
begin
sm('ФИО не может быть полностью пустым.');
exit;
end
else executesql(q1,ssql);             

end;

q2refr(nz);

end;

procedure TFZai_vvod.b7Click(Sender: TObject);
begin

if idte.text<>'' then
begin

ssql:='select f,i,o,nd,adres,tel,pol,dr from clients where id_pers='+idte.text;
opensql(q1,ssql);

if q1.recordcount<>0 then
begin

te1.text:=q1.fieldbyname('f').asstring;
te2.text:=q1.fieldbyname('i').asstring;
te3.text:=q1.fieldbyname('o').asstring;
te4.text:=q1.fieldbyname('nd').asstring;
te5.text:=q1.fieldbyname('adres').asstring;
te6.text:=q1.fieldbyname('tel').asstring;
polcb.text:=q1.fieldbyname('pol').asstring;
de1.Text:=q1.fieldbyname('dr').asstring;

end
else
begin
showmessage('Клиента с таким ID нет.');
exit;
end;

end
else showmessage('Не введен ID.');

end;

procedure TFZai_vvod.stoimteKeyPress(Sender: TObject; var Key: Char);
begin

if (not (key in ['0'..'9','.'])) and (key<>#8) then
begin
key:=#0;
end;

end;

procedure TFZai_vvod.rg2Click(Sender: TObject);
begin

case rg2.itemindex of

1: tm3.text:='нет';
2: tm1.text:='нет';
3: begin
   tm1.text:='нет';
//   tm2.text:='нет';
   tm3.text:='нет';
   end;

end;

end;

procedure TFZai_vvod.vmcbClick(Sender: TObject);
begin

if vmcb.checked then
begin
f_clear('2');
te1.text:='место выкуплено';
trcb.text:='';
tm1.text:='нет';
tm2.text:='нет';
tm3.text:='нет';
end;

end;

procedure TFZai_vvod.dzaiPropertiesChange(Sender: TObject);
begin

if dzai.text='' then
begin
showmessage('Произошло незапланированное изменение данных. Обратитесь к разработчику.');
exit;
end;

end;

procedure TFZai_vvod.garcbClick(Sender: TObject);
begin
garch('а');
end;

procedure TFZai_vvod.rg3Click(Sender: TObject);
begin
if (rg3.itemindex=2) or (rg3.itemindex=3) then bmcb.checked:=true else bmcb.checked:=false;
end;

procedure TFZai_vvod.b10Click(Sender: TObject);
begin

tip:=q2.fieldbyname('tip').asstring;

// запятая в цене
stoimte.text:=zap(stoimte.text);

if tip='2' then
begin

ssql:='update clients set stoim=CAST('+quotedstr(stoimte.Text)+' as money) where id='+q2.fieldbyname('id').asstring;
executesql(dm.q1,ssql);

q2refr(nz);

end
else
begin
sm('Для изменения цены номера выберите заголовочную стороку номера.');
exit;
end;

end;

end.
