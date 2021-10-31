unit UNest_Vvod;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxExEdtr, cxLookAndFeelPainters, DB, ADODB, cxListBox, StdCtrls,
  cxButtons, cxCheckBox, cxGroupBox, cxRadioGroup, dxDBTLCl, dxTL,
  dxDBCtrl, dxCntner, dxDBTL, cxDropDownEdit, cxMaskEdit, cxCalendar,
  cxControls, cxContainer, cxEdit, cxTextEdit;

type
  TFNest_vvod = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label19: TLabel;
    Label41: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    IDL: TLabel;
    Label7: TLabel;
    Label12: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label18: TLabel;
    Label20: TLabel;
    te1: TcxTextEdit;
    te2: TcxTextEdit;
    te3: TcxTextEdit;
    de1: TcxDateEdit;
    te4: TcxTextEdit;
    te5: TcxTextEdit;
    te6: TcxTextEdit;
    polcb: TcxComboBox;
    tr1: TdxDBTreeList;
    tr1id: TdxDBTreeListMaskColumn;
    katColumn: TdxDBTreeListColumn;
    tr1n: TdxDBTreeListMaskColumn;
    tr1p: TdxDBTreeListMaskColumn;
    tr1id_n: TdxDBTreeListMaskColumn;
    tr1id_m: TdxDBTreeListMaskColumn;
    tr1f: TdxDBTreeListColumn;
    tr1i: TdxDBTreeListColumn;
    tr1o: TdxDBTreeListColumn;
    StoimCol: TdxDBTreeListColumn;
    tr1nd: TdxDBTreeListColumn;
    tr1pol: TdxDBTreeListColumn;
    tr1adres: TdxDBTreeListColumn;
    ColumnTransfer: TdxDBTreeListColumn;
    tr1tel: TdxDBTreeListColumn;
    tr1pods: TdxDBTreeListColumn;
    tr1per: TdxDBTreeListColumn;
    tr1nz: TdxDBTreeListMaskColumn;
    tr1tip: TdxDBTreeListMaskColumn;
    tr1id_ag: TdxDBTreeListMaskColumn;
    tr1id_gost: TdxDBTreeListMaskColumn;
    tr1id_pit: TdxDBTreeListMaskColumn;
    tr1id_kat: TdxDBTreeListMaskColumn;
    tr1id_pers: TdxDBTreeListMaskColumn;
    tr1dr: TdxDBTreeListDateColumn;
    AgColumn: TdxDBTreeListColumn;
    PitColumn: TdxDBTreeListColumn;
    ColumnTip: TdxDBTreeListColumn;
    vikupColumn: TdxDBTreeListColumn;
    OperColumn: TdxDBTreeListColumn;
    ColumnInf_pr: TdxDBTreeListColumn;
    agc: TcxComboBox;
    rg1: TcxRadioGroup;
    vmcb: TcxCheckBox;
    dzai: TcxDateEdit;
    dopl: TcxDateEdit;
    b2: TcxButton;
    katc: TcxComboBox;
    mlb: TcxListBox;
    pitlb: TcxListBox;
    b3: TcxButton;
    b4: TcxButton;
    b5: TcxButton;
    bmcb: TcxCheckBox;
    b6: TcxButton;
    b7: TcxButton;
    idte: TcxTextEdit;
    stoimte: TcxTextEdit;
    spote: TcxTextEdit;
    b12: TcxButton;
    trcb: TcxComboBox;
    cb1: TcxComboBox;
    cb2: TcxComboBox;
    garcb: TcxCheckBox;
    te7: TcxTextEdit;
    q1: TADOQuery;
    q2: TADOQuery;
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
    q2nz: TIntegerField;
    q2n: TIntegerField;
    q2p: TIntegerField;
    q2tip: TIntegerField;
    q2id_ag: TIntegerField;
    q2id_gost: TIntegerField;
    q2id_pit: TIntegerField;
    q2id_n: TIntegerField;
    q2id_m: TIntegerField;
    q2id_kat: TIntegerField;
    q2id_pers: TIntegerField;
    q2dr: TDateTimeField;
    q2data_zai: TDateTimeField;
    q2data_opl: TDateTimeField;
    q2agentcol: TStringField;
    q2pitcol: TStringField;
    q2katcol: TStringField;
    q2a_b: TWideStringField;
    q2annul: TWideStringField;
    q2stoim: TBCDField;
    q2oper: TWideStringField;
    q2oplata: TWideStringField;
    q2podtv: TWideStringField;
    q2bez_pr: TWideStringField;
    q2spo: TWideStringField;
    q2n_vauch: TIntegerField;
    q2data_podtv: TDateTimeField;
    q2data_vauch: TDateTimeField;
    q2oplacheno: TBCDField;
    q2sebest: TBCDField;
    q2id_tr: TIntegerField;
    q2trcol: TStringField;
    q2tip_proezda: TWideStringField;
    q2inf_pr: TWideStringField;
    ds2: TDataSource;
    rg2: TcxRadioGroup;
    rg3: TcxRadioGroup;
    Label21: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    tm3: TcxComboBox;
    tm2: TcxComboBox;
    tm1: TcxComboBox;
    cb11: TcxComboBox;
    cb12: TcxComboBox;
    q2proezd: TWideStringField;
    q2id_po: TIntegerField;
    q2id_pp: TIntegerField;
    q2id_pv: TIntegerField;
    q2new_cl: TIntegerField;
    q2dt_begin: TDateTimeField;
    q2dt_end: TDateTimeField;
    q2pocol: TStringField;
    q2ppcol: TStringField;
    q2pvcol: TStringField;
    Label10: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure b4Click(Sender: TObject);
    procedure b7Click(Sender: TObject);
    procedure cb11PropertiesChange(Sender: TObject);
    procedure b12Click(Sender: TObject);
    procedure rg3Click(Sender: TObject);
    procedure rg2Click(Sender: TObject);
    procedure vmcbClick(Sender: TObject);
    procedure katcPropertiesChange(Sender: TObject);
    procedure stoimteKeyPress(Sender: TObject; var Key: Char);
    procedure b5Click(Sender: TObject);
    procedure tr1Click(Sender: TObject);
    procedure b2Click(Sender: TObject);
    procedure agcPropertiesChange(Sender: TObject);
    procedure b3Click(Sender: TObject);
    procedure b6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FNest_vvod: TFNest_vvod;

implementation

uses Unit85, Unit12;

{$R *.dfm}

procedure TFNest_vvod.FormClose(Sender: TObject; var Action: TCloseAction);
var k,f : string;
begin

ssql:='select f,proezd from clients where nz='+nz+' and id_pers<>0 and tip<>0 and annul<>'+quotedstr('да');
opensql(q1,ssql);

spo:='';

if q1.recordcount<>0 then
begin

k:=inttostr(q1.recordcount-1);
f:=q1.fieldbyname('f').asstring;

if k='0' then k:='' else k:=' + '+k;

end;

ssql:='update clients set f='+quotedstr(f+k)+' where nz='+nz+' and tip=1';
executesql(q1,ssql);

ssql:='update clients set new_cl=0 where nz='+nz;
executesql(q1,ssql);

// удаление записи, определившей и зафикс. № заявки
ssql:='delete from clients where nz='+nz+' and tip=0';
executesql(q1,ssql);

action:=cafree;
FNest_vvod:=nil;

if fzaiavki<>nil then fzaiavki.cb9.Properties.OnChange(sender);

end;

procedure TFNest_vvod.FormCreate(Sender: TObject);
var i: integer;
begin

stoimte.text:=floattostr(stoim);

lid:=0;

if (stoimte.text='0') and (user='Admin') then stoimte.text:='1000';

// агентства
dm.agentq.first;
for i:=1 to dm.agentq.recordcount do
begin
agc.properties.Items.add(dm.agentq.fieldbyname('naimen').asstring+' // '+dm.agentq.fieldbyname('podreg').asstring);
dm.agentq.next;
end;

// вар-ты трансфера
dm.transq.first;
for i:=1 to dm.transq.recordcount do
begin
if (dm.transq.fieldbyname('a_b').asstring='нестандарт') or (dm.transq.fieldbyname('a_b').asstring='все') then
trcb.properties.Items.add(dm.transq.fieldbyname('trstr').asstring);
dm.transq.next;
end;

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

// заполнение датами выбранного типа

cb11.properties.items.Clear;
cb12.properties.items.clear;

if struc_tip='А' then
begin
combo_dati_nest (FNest_vvod.cb11,'А','въезд');
combo_dati_nest (FNest_vvod.cb12,'А','выезд');
end;

if struc_tip='Б' then
begin
combo_dati_nest (FNest_vvod.cb11,'Б','');
combo_dati_nest (FNest_vvod.cb12,'Б','');
end;

cb11.text:=dt1;
cb12.text:=dt2;

// виды питания
pitanie_v_nom_nest(gost_id);

// есди добавление

if z_op='НД' then
begin

cb1.text:=kol_m_o;
cb2.text:=kol_m_d;

ag_id:='0';

// даты заявки и оплаты
dzai.date:=date;
if strtodate(dt1)-date>3 then dopl.date:=date+3 else dopl.date:=date+1;

tm1.text:='Тула';
tm3.text:='Тула';
ssql:='select b.podreg from gostinici a left join podreg b on a.podregrazm=b.codeid where a.codeid='+gost_id;
opensql(q1,ssql);
tm2.text:=q1.fieldbyname('podreg').asstring;

// закрываем проезд
if struc_tip='Б' then rg2.ItemIndex:=3;
rg2.OnClick(sender);

// номера, где есть места на выбранный период
nom_v_gost_nest(gost_id,dt1,dt2,kol_m_o,kol_m_d,struc_tip);

// свободные места выбранного номера
n_id:=bl_nom_p(katc.text);
if n_id<>'' then mesta_v_nom_nest(strtoint(cb1.text),strtoint(cb2.text));

// № заявки
ssql:='select max(nz) from clients';
opensql(q1,ssql);

nz:=inttostr(q1.fields[0].asinteger+1);

ssql:='insert into clients (nz,tip,p) values ('+nz+',0,-1)';
executesql(q1,ssql);

// заголовок
label10.caption:=fzaiavki.cb9.text;//gostin(gost_id);
label28.Caption:=nz;
label30.caption:=fzaiavki.cb8.text;

q2refr_nest(nz); 

end;

// если изменение

if z_op='НИ' then
begin

cb1.text:='';
cb2.text:='';

bl_sel_off(2);

// заголовок
//label10.caption:='Объект размещения: '+gostin(gost_id)+' № заявки: '+nz;

label10.caption:=fzaiavki.cb9.text;//gostin(gost_id);
label28.Caption:=nz;
label30.caption:=fzaiavki.cb8.text;

agc.text:=agent(ag_id);

q2refr_nest(nz);

spote.text:=spo;

tr1.OnClick(sender);

end;

end;

procedure TFNest_vvod.b4Click(Sender: TObject);
begin
pitlb.ItemIndex:=-1;
end;

procedure TFNest_vvod.b7Click(Sender: TObject);
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

procedure TFNest_vvod.cb11PropertiesChange(Sender: TObject);
begin
k_n_clear2;
end;

procedure TFNest_vvod.b12Click(Sender: TObject);
begin

nom_v_gost_nest(gost_id,cb11.text,cb12.text,cb1.text,cb2.text,struc_tip);

// свободные места выбранного номера
n_id:=bl_nom_p(katc.text);
if n_id<>'' then mesta_v_nom_nest(strtoint(cb1.text),strtoint(cb2.text));

end;

procedure TFNest_vvod.rg3Click(Sender: TObject);
begin
if (rg3.itemindex=2) or (rg3.itemindex=3) then bmcb.checked:=true else bmcb.checked:=false;
end;

procedure TFNest_vvod.rg2Click(Sender: TObject);
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

procedure TFNest_vvod.vmcbClick(Sender: TObject);
begin

if vmcb.checked then
begin
f_clear_b(2);
te1.text:='место выкуплено';
trcb.text:='';
end;

end;

procedure TFNest_vvod.katcPropertiesChange(Sender: TObject);
begin

if (katc.text<>'') and (z_op<>'НИ') then
begin
n_id:=bl_nom_p(katc.text);
if n_id<>'' then mesta_v_nom_nest(strtoint(cb1.text),strtoint(cb2.text));
end else mlb.clear;

end;

procedure TFNest_vvod.stoimteKeyPress(Sender: TObject; var Key: Char);
begin
if (not (key in ['0'..'9','.'])) and (key<>#8) then
begin
key:=#0;
end;
end;

procedure TFNest_vvod.b5Click(Sender: TObject);
begin
close;
end;

procedure TFNest_vvod.tr1Click(Sender: TObject);
var i: integer;
begin

tip:=q2.fieldbyname('tip').asstring;
m_id:=q2.fieldbyname('id_m').asstring;
n_id:=q2.fieldbyname('id_n').asstring;
n:=q2.fieldbyname('n').asstring;

// заглавная запись заявки
if tip='1' then
begin
dzai.text:=q2.FieldByName('data_zai').asstring;
dopl.text:=q2.FieldByName('data_opl').asstring;
z_cl_b(2);
katc.text:='';
pitlb.ItemIndex:=-1;
stoimte.text:=q2.FieldByName('stoim').asstring;
spote.text:=q2.FieldByName('spo').asstring;
te7.text:=q2.FieldByName('inf_pr').asstring;
end;

// // заглавная запись номера
if tip='2' then
begin
z_cl_b(2);

// категория номера
katc.text:=q2.fieldbyname('katcol').asstring+' # '+n+' & '+n_id;

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

ssql:='select id_kat,n,id_n from clients where id='+q2.fieldbyname('p').asstring;
opensql(dm.q2,ssql);

katc.text:=kateg(dm.q2.fieldbyname('id_kat').asstring)+' # '+dm.q2.fieldbyname('n').asstring+' & '+
dm.q2.fieldbyname('id_n').asstring;

// указание вида питания для человека среди имеющихся, если выделена запись человека
pitlb.ItemIndex:=-1;
for i:=0 to pitlb.items.Count-1 do
begin
if pitlb.Items[i]=q2.fieldbyname('pitcol').asstring then pitlb.ItemIndex:=i;
end;

end;

end;

procedure TFNest_vvod.b2Click(Sender: TObject);
var i,j: integer;
dt : tdatetime;
dts, dres : string;
begin

/////////////////////////////////////////////////////////
     {
ssql:='select count(*) from clients where annul='+quotedstr('нет')+' and a_b='+quotedstr('Нест.');
opensql(q1,ssql);

if q1.fields[0].asinteger>=15 then
begin
sm('Извините, демонстрационное ограничение. Не более 15 записей.');
exit;
end;
      }
/////////////////////////////////////////////////////////

if ag_id='0' then
begin
showmessage('Не выбрано агентство.');
exit;
end;

if (mlb.itemindex=-1) and (bmcb.checked=false) then
begin
showmessage('Не указано место.');
exit;
end;

if katc.text='' then
begin
showmessage('Не указан номер.');
exit;
end;

if (te1.text='') and (vmcb.checked=false) then
begin
showmessage('Не введена фамилия.');
exit;
end;

if (stoimte.text='0') or (stoimte.text='') then
begin
showmessage('Не указана стоимость.');
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

bl_sel_off(2);

// удаление записи, определившей и зафикс. № заявки
ssql:='delete from clients where nz='+nz+' and tip=0';
executesql(q1,ssql);

// заглавная запись заявки

garch('н');

per:=cb11.text+'-'+cb12.text;

ag_id:=a_id(agc.text);
gost_id:=g_id_podreg(label10.Caption,podregion_id(label30.Caption));
nz:=label28.Caption;

ssql:='if not exists (select * from clients where nz='+nz+
' and tip=1) insert into clients (nz,id_gost,id_ag,per,tip,p,data_zai,data_opl,a_b,gar_pis,stoim,'+
'oper,spo,inf_pr,dt_begin,dt_end,nest_tip) values ('+nz+','+gost_id+','+ag_id+','+quotedstr(per)+',1,-1,'+
quotedstr(formatdatetime(dtf,dzai.date))+','+quotedstr(formatdatetime(dtf,dopl.date))+','+
quotedstr('Нест.')+','+quotedstr(gar_pis)+',CAST('+quotedstr(stoimte.Text)+' as money),'+
quotedstr(user)+','+quotedstr(spote.text)+','+quotedstr(te7.text)+','+quotedstr(cb11.text)+','+
quotedstr(cb12.text)+','+quotedstr(struc_tip)+')';
executesql(q1,ssql);

agc.Enabled:=false;

ssql:='select id from clients where nz='+nz+' and tip=1';
opensql(q1,ssql);
p:=q1.fields[0].asstring;

// заглавная запись номера
n_id:=bl_nom_p(katc.text);

ssql:='select id from clients where nz='+nz+' and tip=2 and id_n='+n_id;
opensql(q1,ssql);

if q1.recordcount<>0 then p:=q1.fields[0].asstring
else
begin

ssql:='insert into clients (nz,tip,id_n,id_kat,n,p,a_b) values ('+nz+',2,'+n_id+','+
k_id(katc.text)+','+nomer_n_bl(katc.text)+','+p+','+quotedstr('Нест.')+')';
executesql(q1,ssql);

ssql:='select id from clients where nz='+nz+' and tip=2 and id_n='+n_id;
opensql(q1,ssql);

p:=q1.fields[0].asstring;

end;

init_cl_b('i','н');

if bmcb.checked=false then
begin
kat_id:=k_id(mlb.Items[mlb.itemindex]);
n:='0';
end
else
begin
kat_id:='0';
n:='0';
end;

ssql:='insert into clients (new_cl,id_kat,n,f,i,o,nd,pol,adres,tel,nz,p,tip,id_pers,bezmesta,id_pit,'+
'id_tr,tip_proezda,vikup,pods,a_b,id_po,id_pp,id_pv,proezd,dt_begin,dt_end) values (1,'+kat_id+','+n+','+quotedstr(te1.text)+','+quotedstr(te2.text)+','+
quotedstr(te3.text)+','+quotedstr(te4.text)+','+quotedstr(polcb.text)+','+quotedstr(te5.text)+','+quotedstr(te6.text)+
','+nz+','+p+',3,'+id_pers+','+quotedstr(bez_mesta)+','+pit_id+','+trans_id+','+quotedstr(tip_proezda)+','+
quotedstr(vikup)+','+quotedstr(pods)+','+quotedstr('Блок')+','+tm1_id+','+tm2_id+','+tm3_id+','+quotedstr(proezd)+','+quotedstr(cb11.text)+','+
quotedstr(cb12.text)+')';

executesql(q1,ssql);

if de1.text<>'  .  .    ' then
begin
ssql:='update clients set dr='+quotedstr(formatdatetime(dtf,de1.date))+' where id_pers='+id_pers;
executesql(q1,ssql);
end;

// update блоков - указание (с учетом периода) для номера и места № заявки и № человека

// только если без места неакт.

if bmcb.checked=false then
begin

dt1:=cb11.text;
dt2:=cb12.text;

j:=strtoint(floattostr(strtodate(dt2)-strtodate(dt1)));

if struc='А' then
begin
dt:=(strtodate(dt1)+1); // уменьшаю период на день с начала
j:=j-2;                 // уменьшаю период на день до конца - то что -2 - нормально
end
else
dt:=strtodate(dt1);

dts:=datetostr(dt);

for i:=0 to j do 
begin
dres:=dres+char(#39)+dts+char(#39)+' , ';
dt  := dt + 1;
dts := datetostr(dt);
end;

dres:=copy(dres,1,length(dres)-3);

// крайние даты

if struc='А' then
begin
dt1:=floattostr(strtodate(dt1)+1); //  изменяю dt1, dt2 для автобусного типа для нормальной дальнейшей отработки
dt2:=floattostr(strtodate(dt2)-1);
end;

// dt1

ssql:='select min(id) from bloki where c_gost='+gost_id+
' and a_b='+quotedstr('Нест.')+' and m_id<>0 and d='+quotedstr(dt1)+
' and id_p_2pd=0 and c_kat='+kat_id+' and n_id='+n_id;
opensql(dm.q1,ssql);

ssql:='update bloki set id_p_2pd='+id_pers+' where id='+dm.q1.fields[0].asstring;
executesql(dm.q2,ssql);

// dt2
ssql:='select min(id) from bloki where c_gost='+gost_id+
' and a_b='+quotedstr('Нест.')+' and m_id<>0 and d='+quotedstr(dt2)+
' and id_p_1pd=0 and c_kat='+kat_id+' and n_id='+n_id;
opensql(dm.q1,ssql);

ssql:='update bloki set id_p_1pd='+id_pers+' where id='+dm.q1.fields[0].asstring;
executesql(dm.q2,ssql);

// центровые

if j<>1 then
begin

dt:=(strtodate(dt1)+1); // уменьшаю период на день с начала
dts:=datetostr(dt);

for i:=1 to j-1 do // уменьшаю период на день до конца
begin

ssql:='select min(id) from bloki where c_gost='+gost_id+' and a_b='+quotedstr('Нест.')+
' and m_id<>0 and d='+quotedstr(dts)+' and id_pers=0 and c_kat='+kat_id+' and n_id='+n_id;
opensql(dm.q1,ssql);

ssql:='update bloki set id_pers='+id_pers+',id_p_1pd='+id_pers+',id_p_2pd='+id_pers+
' where id='+dm.q1.fields[0].asstring;
executesql(dm.q2,ssql);

dt  := dt + 1;
dts := datetostr(dt);

end;

end;

end;

q2refr_nest(nz);

mesta_v_nom_nest(strtoint(cb1.text),strtoint(cb2.text));

z_cl_b(2);

te1.SetFocus;

end;

procedure TFNest_vvod.agcPropertiesChange(Sender: TObject);
begin
ag_id:=a_id(agc.text);
end;

procedure TFNest_vvod.b3Click(Sender: TObject);
begin

if q2.recordcount=0 then
begin
showmessage('Заявка пуста.');
exit;
end;

tip:=q2.fieldbyname('tip').asstring;
n_id:=bl_nom_p(katc.text);

if tip='1' then
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

exit;
end;

if tip='2' then
begin
                                         
ssql:='select count(id) from clients where p='+q2.fieldbyname('id').asstring+
' and annul<>'+quotedstr('да');
opensql(q1,ssql);

if q1.fields[0].asinteger<>0 then
begin
showmessage('В этом номере еще заняты места. Освободите их перед аннуляцией номера.');
exit;
end;

ssql:='update clients set annul='+quotedstr('да')+' where id='+q2.fieldbyname('id').asstring;
executesql(q1,ssql);

ssql:='update bloki set nz=0 where id='+n_id+' and nz='+nz;
executesql(q1,ssql);

end;

if tip='3' then
begin

ssql:='update clients set annul='+quotedstr('да')+' where id='+q2.fieldbyname('id').asstring;
executesql(q1,ssql);

ssql:='update bloki set id_p_2pd=0,id_p_1pd=0,id_pers=0 where (a_b='+quotedstr('Нест.')+
') and (id_p_2pd='+q2.fieldbyname('id_pers').asstring+' or id_p_1pd='+
q2.fieldbyname('id_pers').asstring+' or id_pers='+q2.fieldbyname('id_pers').asstring+')';
executesql(dm.q2,ssql);

end;

q2refr_nest(nz);

z_cl_b(2);

end;

procedure TFNest_vvod.b6Click(Sender: TObject);
begin

if q2.recordcount=0 then
begin
showmessage('Заявка пуста.');
exit;
end;

if tip='' then
begin
showmessage('Ничего не выбрано.');
exit;
end;

if (dzai.text='') or (dopl.text='') then
begin
showmessage('Не указаны даты.');
exit;
end;

// запятая в цене
stoimte.text:=zap(stoimte.text);

tip:=q2.fieldbyname('tip').asstring;

if bmcb.checked then bez_mesta:='да' else bez_mesta:='нет';

if (tip='1') and (agc.text<>'') then
begin

garch('н');

ag_id:=a_id(agc.text);

ssql:='update clients set spo='+quotedstr(spote.text)+','+
'stoim=CAST('+quotedstr(stoimte.Text)+' as money), id_ag='+ag_id+
', data_zai='+quotedstr(formatdatetime(dtf,dzai.date))+', data_opl='+
quotedstr(formatdatetime(dtf,dopl.date))+', gar_pis='+quotedstr(gar_pis)+
',inf_pr='+quotedstr(te7.text)+
' where nz='+nz+' and tip=1';
executesql(q1,ssql);

end;

if tip='3' then
begin

init_cl_b('','н');

ssql:='update clients set f='+quotedstr(te1.text)+',i='+quotedstr(te2.text)+',o='+quotedstr(te3.text)+
',nd='+quotedstr(te4.text)+',dr='+quotedstr(formatdatetime(dtf,de1.date))+',pol='+quotedstr(polcb.text)+
',adres='+quotedstr(te5.text)+',tel='+quotedstr(te6.text)+',bezmesta='+quotedstr(bez_mesta)+
',id_pit='+pit_id+',id_tr='+trans_id+
',id_po='+tm1_id+',id_pp='+tm2_id+',id_pv='+tm3_id+
',proezd='+quotedstr(proezd)+',tip_proezda='+quotedstr(tip_proezda)+',vikup='+quotedstr(vikup)+
',pods='+quotedstr(pods)+' where id='+q2.fieldbyname('id').asstring;

if (te1.text='') and (te2.text='') and (te3.text='') then
begin
sm('ФИО не может быть полностью пустым.');
exit;
end
else executesql(q1,ssql);

end;

q2refr_nest(nz);

end;

end.
