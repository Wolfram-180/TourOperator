unit Unit85;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, FR_DSet, FR_DBSet, FR_Class, StdCtrls,
  cxDropDownEdit, Grids, DBGrids, FR_E_HTML2, Math, registry, frOLEExl,
  frRtfExp, frXMLExl, cxControls, cxContainer, cxListBox, OleServer,
  OleCtnrs,ComObj, dxExEdtr,  dxCntner, dxTL, dxDBCtrl, dxDBGrid,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxGroupBox,
  cxRadioGroup, cxTextEdit, cxMaskEdit, cxCalendar,
  cxLookAndFeelPainters, cxButtons, dxDBTLCl, dxGrClms, license;

type
  TDM = class(TDataModule)
    RegQ: TADOQuery;
    AgentQ: TADOQuery;
    Gostin: TADOQuery;
    Zaezd: TADOQuery;
    VSop: TADOQuery;
    Map: TADOQuery;
    PodRegQ: TADOQuery;
    TransQ: TADOQuery;
    Kat: TADOQuery;
    Pit: TADOQuery;
    ExkQ: TADOQuery;
    Avt: TADOQuery;
    VSopFio: TWideStringField;
    VSopNdok: TWideStringField;
    VSopAdres: TWideStringField;
    VSopDr: TDateTimeField;
    VSopTel: TWideStringField;
    ExkQCodeid: TAutoIncField;
    ExkQNaim: TWideStringField;
    ExkQCena: TWideStringField;
    ExkQOpis: TWideStringField;
    ac: TADOConnection;
    KomfQ: TADOQuery;
    AgentQRegion: TIntegerField;
    AgentQPodregion: TIntegerField;
    AgentQNaimen: TWideStringField;
    AgentQAdres: TWideStringField;
    AgentQTfe: TWideStringField;
    AgentQDirektor: TWideStringField;
    AgentQKL: TWideStringField;
    AgentQDogovor: TWideStringField;
    AgentQDFZ: TDateTimeField;
    AgentQKob: TWideStringField;
    AgentQKtr: TWideStringField;
    AgentQC: TWideStringField;
    AgentQInn: TWideStringField;
    AgentQKpp: TWideStringField;
    AgentQRs: TWideStringField;
    AgentQKs: TWideStringField;
    AgentQBik: TWideStringField;
    AgentQAdres_fak: TWideStringField;
    AgentQPokup: TWideStringField;
    AgentQBank: TWideStringField;
    AgentQFax: TWideStringField;
    AgentQEmail: TWideStringField;
    AgentQSite: TWideStringField;
    AgentQDzakl: TWideStringField;
    AgentQNdog: TWideStringField;
    AgentQMain: TWideStringField;
    AgentQZam: TWideStringField;
    AgentQoch: TIntegerField;
    AgentQoch2: TIntegerField;
    AgentQavtobusnoe: TStringField;
    AgentQtorg: TStringField;
    KatKat: TWideStringField;
    KatKr: TIntegerField;                                      
    PodRegQPodreg: TWideStringField;
    PodRegQNapr: TIntegerField;
    PodRegQPodm: TWideStringField;
    TransQSt: TBCDField;
    TransQp1: TIntegerField;
    TransQp2: TIntegerField;
    TransQp3: TIntegerField;
    TransQt1: TWideStringField;
    TransQt2: TWideStringField;
    GostinPodRegrazm: TIntegerField;
    GostinNazvanie: TWideStringField;
    GostinDogovor: TWideStringField;
    GostinAdres: TWideStringField;
    GostinPrim: TWideStringField;
    GostinNdt: TWideStringField;
    GostinNapr: TIntegerField;
    Gostinlist: TIntegerField;
    PitPit: TWideStringField;
    KomfQkomf: TWideStringField;
    AgentQreg: TStringField;
    AgentQpodreg: TStringField;
    TransQp1str: TStringField;
    TransQp2str: TStringField;
    TransQp3str: TStringField;
    RegQCodeid: TAutoIncField;
    RegQReg: TWideStringField;
    AgentQCodeid: TAutoIncField;
    KatCodeid: TAutoIncField;
    PodRegQCodeid: TIntegerField;
    TransQCodeid: TAutoIncField;
    GostinCodeid: TAutoIncField;
    PitCodeid: TAutoIncField;
    KomfQcodeid: TAutoIncField;
    Gostinpodregn: TStringField;
    ZaezdCodeid: TAutoIncField;
    Zaezdd1: TDateTimeField;
    Zaezdd2: TDateTimeField;
    Zaezdper: TWideStringField;
    Gostinrchb: TWideStringField;
    Gostinrchz: TWideStringField;
    Periods: TADOQuery;
    Periodsid: TAutoIncField;
    Periodsd1: TDateTimeField;
    Periodsd2: TDateTimeField;
    Periodsgraf: TIntegerField;
    Gostingraf: TIntegerField;
    TransQtrstr: TWideStringField;
    Gostingraf_b: TIntegerField;
    AgentQn: TIntegerField;
    Gostinpr: TWideStringField;
    Gostinexk: TWideStringField;
    PodRegQoch: TIntegerField;
    AgentQvverh: TIntegerField;
    AgentQorg: TIntegerField;
    q1: TADOQuery;
    q2: TADOQuery;
    q3: TADOQuery;
    TransQa_b: TWideStringField;
    UsersQ: TADOQuery;
    UsersQCodeid: TAutoIncField;
    UsersQName: TWideStringField;                            
    UsersQType: TWideStringField;
    UsersQPass: TWideStringField;
    qcl: TADOQuery;
    AutoIncField1: TAutoIncField;
    WideStringField1: TWideStringField;
    WideStringField2: TWideStringField;
    WideStringField3: TWideStringField;
    WideStringField4: TWideStringField;
    WideStringField5: TWideStringField;
    WideStringField6: TWideStringField;
    WideStringField7: TWideStringField;
    WideStringField8: TWideStringField;
    WideStringField9: TWideStringField;
    WideStringField10: TWideStringField;
    WideStringField11: TWideStringField;
    WideStringField12: TWideStringField;
    WideStringField13: TWideStringField;
    WideStringField14: TWideStringField;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    IntegerField5: TIntegerField;
    IntegerField6: TIntegerField;
    IntegerField7: TIntegerField;
    IntegerField8: TIntegerField;
    IntegerField9: TIntegerField;
    IntegerField10: TIntegerField;
    IntegerField11: TIntegerField;
    IntegerField12: TIntegerField;
    IntegerField13: TIntegerField;
    IntegerField14: TIntegerField;
    IntegerField15: TIntegerField;
    DateTimeField1: TDateTimeField;
    DateTimeField2: TDateTimeField;
    DateTimeField3: TDateTimeField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    WideStringField15: TWideStringField;
    WideStringField17: TWideStringField;
    BCDField1: TBCDField;
    WideStringField18: TWideStringField;
    StringField8: TStringField;
    qcloplata: TWideStringField;
    qclpodtv: TWideStringField;
    qclbez_pr: TWideStringField;
    qcldata_podtv: TDateTimeField;
    qcloplacheno: TBCDField;
    qclm: TStringField;
    q4: TADOQuery;
    qit: TADOQuery;
    dmdset: TfrDBDataSet;
    AgentQoper: TWideStringField;
    qg: TADOQuery;
    q5: TADOQuery;
    qit2: TADOQuery;
    dmdset2: TfrDBDataSet;
    hte: TfrHTML2Export;
    dmdset3: TfrDBDataSet;
    qit3: TADOQuery;
    fr: TfrReport;
    sp1: TADOStoredProc;
    worde: TfrRtfAdvExport;
    excele: TfrOLEExcelExport;
    XMLExE: TfrXMLExcelExport;
    Dops: TADOQuery;
    Dopcat: TADOQuery;
    Dopcatid: TIntegerField;
    Dopcatcat: TWideStringField;
    Dopsid: TAutoIncField;
    Dopsnaim: TWideStringField;
    Dopscat_id: TIntegerField;
    Dopscat: TStringField;
    sp1DATABASE_NAME: TWideStringField;
    sp1DATABASE_SIZE: TIntegerField;
    sp1REMARKS: TStringField;
    Nest_d: TADOQuery;
    Nest_did: TAutoIncField;
    Nest_dd1: TDateTimeField;
    Nest_dtip: TWideStringField;
    Nest_dv_v: TWideStringField;
    VSopid: TIntegerField;
    VSoptip: TWideStringField;
    Mapn: TIntegerField;
    Avtid: TAutoIncField;
    Avtmarka: TWideStringField;
    Avtnomer: TWideStringField;
    Avthoz: TWideStringField;
    Avtkont: TWideStringField;
    Avtet: TStringField;
    Avtpl1: TWideStringField;
    Avtpl2: TWideStringField;
    Avtvod1: TIntegerField;
    Avtvod2: TIntegerField;
    Avtsop: TIntegerField;
    Avtvod_n1: TStringField;
    Avtvod_n2: TStringField;
    Avtc: TWideStringField;
    Mapl1m: TWideStringField;
    Mapl2m: TWideStringField;
    Mapp1m: TWideStringField;
    Mapp2m: TWideStringField;
    Mapsr: TWideStringField;
    Mapln: TIntegerField;
    Mappn: TIntegerField;
    Mapsn: TIntegerField;
    Mapm1: TWideStringField;
    Mapm2: TWideStringField;
    Mapm: TWideStringField;
    Mapm3: TWideStringField;
    Mapm4: TWideStringField;
    RassQ: TADOQuery;
    RassQf: TWideStringField;
    RassQi: TWideStringField;
    RassQnz: TIntegerField;
    RassQdt_begin: TDateTimeField;
    RassQdt_end: TDateTimeField;
    RassQproezd: TWideStringField;
    RassQra: TWideStringField;
    RassQma: TWideStringField;
    RassQid: TAutoIncField;
    RassQid_avt: TWideStringField;
    RassQea: TWideStringField;
    RassQid_avt_o: TWideStringField;
    RassQeao: TWideStringField;
    RassQrao: TWideStringField;
    RassQmao: TWideStringField;
    RassQavt_nazv: TWideStringField;
    RassQavt_nazv_o: TWideStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure AgentQCalcFields(DataSet: TDataSet);
    procedure DataModuleDestroy(Sender: TObject);
    procedure frGetValue(const ParName: String; var ParValue: Variant);
    procedure MapCalcFields(DataSet: TDataSet);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;
  toprint,toshow,fst,all_st,stop,f5cl,exk: boolean;
  indent,c_g,c_z,avtopod,lid,nlid,zlid,kolchel,n_vauch,napr,reshim : integer;
  reg: tregistry;
  d1,d2,d,dtav,dtas : tdate;
  mest,nomera,datanach,usern,usert,host,password,user,och2,pods,pol,ssql,catalog,
  val,komf,komf_id,op1,op2,ch_n,usl,v1,v2,prav_id,vid,podreg_id,reg_id,gost_id,pit_id,kat_id,n_id,
  m_id,kmo,kmd,n,tip,sp,p,c_o,c_d,codeid,p_id,pr_ot,v_pr_pit,a_b,struc,p_p,d1s,d2s,per,d1d,d2d,c_za,
  prodol,st_seb,znach,osn,s_pit,besp,c1,c2,bl_id,dtf,nz,randid,ag_id,id_pers,id_tr,vikup,trans_id,
  tm1_id,tm2_id,tm3_id,proezd,tip_proezda,bez_mesta,z_op,gar_pis,nzs,nzs2,nzs1,ds,station,sharedf,
  dateroshd,ktn,spo,kol_m_o,kol_m_d,dt1,dt2,gorod,rchb,adres,bpr,cat_id,database,server,id_cl,struc_tip,dnopper,
  dkopper,serv_login,serv_pass,version : string;
  datan : tdatetime;
  stoim : extended;
  dtsp  : tstringlist;

procedure str_r                      (ii : integer);
procedure combo_podreg_on_reg_load   (sender : tobject; reg : string);
procedure combo_gost_on_podreg_load  (sender : tobject; a_b,podreg : string);
procedure combo_gost_podreg_load     (sender : tobject; a_b : string);
procedure reload_base;
procedure spis_db_load;
procedure lock_appl;
procedure reconnect;
procedure unlock_appl;
procedure mesta_v_nomere;
procedure blb_off;
procedure blb_on;
procedure stat_lock;
procedure stat_unlock;
procedure pr_on;
procedure pr_off;
procedure k_n_clear2;
procedure k_n_clear;
procedure vau_refr;
procedure vau_lock;
procedure vau_unlock;
procedure nest_off;
procedure nest_on;
procedure bl_sel_off       (mode : integer);
procedure vau_prep         (t,nest_tip : string);
procedure podtv_prep       (t,struc_tip:string);
procedure f_clear          (t : string);
procedure f_clear_b        (t : integer);
procedure z_clear          (t : string);
procedure z_cl_b           (mode : integer);
procedure sm               (t : string);
procedure garch            (t : string);
procedure pr               (posit,count : extended);
procedure nom_v_gost_bl    (g,dt1,dt2,kmo_n,kmd_n : string);
procedure mesta_v_nom_bl   (k1,k2 : integer);
procedure bl_otch          (g,dt1,dt2,kmo_n,kmd_n,option : string);
procedure q2refr_bl        (nnz : string);
procedure q2refr_nest      (nnz : string);
procedure q2refr           (nnz : string);
procedure pitanie_v_nom_bl (gost_id : string);
procedure nom_v_gost_zaez  (g,z : string);
procedure init_cl          (t : string);
procedure spis             (tip,per,dt1,dt2 : string; vid : integer; exprt : boolean);
procedure OpenSQL          (Source : TADOQuery; ssql : string);forward;
procedure ExecuteSQL       (Source : TADOQuery; ssql : string);forward;
procedure init_cl_b        (t,mode : string);
procedure agcbfill         (obj : tobject);
procedure ob_svodka        (tip : integer; ch : boolean; dt : tdate);
procedure _10dat           (d : tdate; t : integer; p : boolean);
procedure na_vibr          (d : tdate; cb1,cb2 : string);
procedure pitanie_v_nom_nest (gost_id:string);
procedure nom_v_gost_nest  (g,dt1,dt2,kmo_n,kmd_n,struc : string);
procedure mesta_v_nom_nest (k1,k2:integer);
procedure combo_dati_nest  (sender : tobject; struc_tip,in_out : string);
procedure vvod_oplati      (nz_opl,kopl,oplach,poln_opl,usr,tip : string);
procedure rassadka         (avi,et,napr,datest : string);
procedure combo_gost_vse_l (sender : tobject);
procedure avt_lock;
procedure avt_unlock;
procedure sr               (sender : tobject; fld,cnt : string);
procedure nest_zaez        (d1,d2 : string; tip : integer);
procedure GostAgen;

function pit_v_pakete  (p,g,s : string) : string;
function kol_sut       (nz : string) : integer;
function st_sebest     (nz,sts : string) : string;
function zap           (p : string) : string;
function p2            (p : string) : string;
function mesiac        (nazv : string) : string;
function g_id          (nazv : string) : string;
function k_id          (nazv : string) : string;
function a_id          (nazv : string) : string;
function t_id          (nazv : string) : string;
function vodsop_id     (nazv : string) : string;
function pitan_id      (nazv : string) : string;
function podregion_id  (nazv : string) : string;
function region_id     (nazv : string) : string;
function nomer_id      (nazv : string) : string;
function mesto_id      (nazv : string) : string;
function nomer_n       (nazv : string): string;
function c_c           (ssql : string): string;
function c_id          (ssql : string): string;
function gostin        (codgost : string) : string;
function kateg         (codkat : string) : string;
function pitan         (codpit : string) : string;
function agent         (codag : string) : string;
function bl_nom_p      (nom_poln_nazv : string) : string;
function newnzs        (oldnzs,nzudal : string) : string;
function nomer_n_bl    (nazv : string): string;
function mesto_n_bl    (nazv : string): string;
function resh_gost     (id_g : string): integer;
function mesto         (id : string): string;
function g_nazv        (nz : string) : string;
function g_id_podreg   (nazv,podreg_id: string):string;
function no_quotes     (str : string) : string;

implementation

uses unit11, Unit80, Unit5, Unit12, Unit6, Unit4, Unit2, Unit3,
  Unit20, Unit60, UNest_Vvod, UOplataVvod, UKarti;

{$R *.DFM}

procedure GostAgen;
var g : string;
begin

if (fstat.cb3.text='') or (fstat.cb5.text='') then
begin
sm('Не указан подрегион или название объекта.');
exit;
end;

g:=g_id_podreg(fstat.cb3.text,podregion_id(fstat.cb5.text));

stat_lock;

pr_on;

ssql:='delete from #usertemp'+randid;
executesql(dm.q1,ssql);

ssql:='SELECT DISTINCT a.id_ag, b.Naimen, c.Podreg fROM clients a LEFT OUTER JOIN agentstva b ON a.id_ag = b.Codeid LEFT OUTER JOIN podreg c ON b.Podregion = c.Codeid where id_gost='+
g+' and tip=1 and annul<>'+quotedstr('да')+' and data_zai>='+quotedstr(formatdatetime(dtf,strtodate(dnopper)))+' and data_zai<='+quotedstr(formatdatetime(dtf,strtodate(dkopper)));
opensql(dm.q1,ssql);

while not dm.q1.Eof do
begin

pr(dm.q1.RecNo,dm.q1.recordcount);

ssql:='SELECT COUNT(*) FROM clients WHERE (annul<>'+quotedstr('да')+
') AND (p IN (SELECT id FROM clients WHERE (p IN (SELECT a.id FROM clients a LEFT JOIN '+
' gostinici b ON a.id_gost = b.codeid WHERE a.tip=1 AND b.exk<>'+quotedstr('да')+
' AND a.a_b='+quotedstr('Авт.')+' AND annul<>'+
quotedstr('да')+' AND id_ag='+dm.q1.fields[0].asstring+
' AND id_gost='+g+
' and data_zai>='+quotedstr(formatdatetime(dtf,strtodate(dnopper)))+
' and data_zai<='+quotedstr(formatdatetime(dtf,strtodate(dkopper)))+'))))';
opensql(dm.q2,ssql);

ssql:='insert into #usertemp'+randid+' (ag,kolchel) values ('+
quotedstr(dm.q1.fields[1].asstring+' // '+dm.q1.fields[2].asstring)+','+
dm.q2.fields[0].asstring+')';

executesql(dm.q4,ssql);

dm.q1.next;
end;

pr_off;

stat_unlock;

ssql:='select * from #usertemp'+randid+' order by ag';
opensql(dm.qit,ssql);

with dm.fr do
begin
LoadFromFile(sharedf+'\reports\gost_prod.frf');
FindObject('memo16').memo.text:='Сводка по гостинице '+fstat.cb3.text+' в разрезе агентств.';
ShowReport;
end;

end;

procedure nest_zaez (d1,d2 : string; tip : integer);
var i,n,prvv,prvd,prsv,prsd,tv,ts,ov,os,tpts,tptv,tpov,tpos : integer;
    str,gost : string;
begin

stat_lock;

ssql:='delete from #usertemp'+randid;
executesql(dm.q1,ssql);

dtav:=strtodate(d1)-1;
dtas:=strtodate(d1);

str:='';

case tip of
1: str:=' and nest_tip='+quotedstr('А');
2: str:=' and nest_tip='+quotedstr('Б');
end;

ssql:='select distinct dt_begin,dt_end,id_gost,id,data_zai from clients where tip=1 '+
' and dt_begin>='+quotedstr(formatdatetime(dtf,strtodate(dnopper)))+
' and dt_end<='+quotedstr(formatdatetime(dtf,strtodate(dkopper)))+
' and annul<>'+quotedstr('да')+' and a_b='+quotedstr('Нест.')+
str+
' order by id_gost,dt_begin,dt_end,id';

opensql(dm.q1,ssql);

pr_on;

for i:=1 to dm.q1.recordcount do
begin

gost:=gostin(dm.q1.fieldbyname('id_gost').asstring);

pr(i,dm.q1.recordcount);

prvv:=0;
prvd:=0;
prsv:=0;
prsd:=0;
tv:=0;
ts:=0;
tptv:=0;
tpts:=0;
tpov:=0;
tpos:=0;
os:=0;
ov:=0;

ssql:='select id,tip_proezda,proezd from clients where p in (select id from clients where p='+
dm.q1.Fields[3].AsString+') and annul<>'+quotedstr('да');

opensql(dm.q2,ssql);

for n:=1 to dm.q2.recordcount do
begin

if dm.q1.fields[4].AsDateTime<=dtas then
begin

if (dm.q2.fields[1].asstring='взрослый') or (dm.q2.fields[1].asstring='ребенок 5-12') then prsv:=prsv+1;
if dm.q2.fields[1].asstring='ребенок до 5' then prsd:=prsd+1;

if ((dm.q2.fields[2].asstring='город-база-город') or (dm.q2.fields[2].asstring='город-база')) and
(dm.q2.fields[1].asstring<>'только проезд') then ts:=ts+1;
if ((dm.q2.fields[2].asstring='город-база-город') or (dm.q2.fields[2].asstring='база-город')) and
(dm.q2.fields[1].asstring<>'только проезд') then os:=os+1;

if ((dm.q2.fields[2].asstring='город-база-город') or (dm.q2.fields[2].asstring='город-база')) and
(dm.q2.fields[1].asstring='только проезд') then tpts:=tpts+1;
if ((dm.q2.fields[2].asstring='город-база-город') or (dm.q2.fields[2].asstring='база-город')) and
(dm.q2.fields[1].asstring='только проезд') then tpos:=tpos+1;

end;

if dm.q1.fields[4].AsDateTime<=dtav then
begin

if (dm.q2.fields[1].asstring='взрослый') or (dm.q2.fields[1].asstring='ребенок 5-12') then prvv:=prvv+1;
if dm.q2.fields[1].asstring='ребенок до 5' then prvd:=prvd+1;

if ((dm.q2.fields[2].asstring='город-база-город') or (dm.q2.fields[2].asstring='город-база')) and
(dm.q2.fields[1].asstring<>'только проезд') then tv:=tv+1;
if ((dm.q2.fields[2].asstring='город-база-город') or (dm.q2.fields[2].asstring='база-город')) and
(dm.q2.fields[1].asstring<>'только проезд') then ov:=ov+1;

if ((dm.q2.fields[2].asstring='город-база-город') or (dm.q2.fields[2].asstring='город-база')) and
(dm.q2.fields[1].asstring='только проезд') then tptv:=tptv+1;
if ((dm.q2.fields[2].asstring='город-база-город') or (dm.q2.fields[2].asstring='база-город')) and
(dm.q2.fields[1].asstring='только проезд') then tpov:=tpov+1;

end;

dm.q2.next;

end;

if dm.q1.fieldbyname('dt_end').AsDateTime<strtodate(d1) then datanach:='gr' else datanach:='wh';

ssql:='insert into #usertemp'+randid+
' (datan,d1,prvv,prvd,prsv,prsd,tv,ts,ov,os,gost,podreg,reg,per,tptv,tpts,tpov,tpos) values ('+
quotedstr(datanach)+','+
quotedstr(dm.q1.fieldbyname('dt_begin').asstring)+','+
inttostr(prvv)+','+
inttostr(prvd)+','+
inttostr(prsv)+','+
inttostr(prsd)+','+
inttostr(tv)+','+
inttostr(ts)+','+
inttostr(ov)+','+
inttostr(os)+','+
quotedstr(gost)+','+
quotedstr(dm.q1.fieldbyname('id_gost').asstring)+','+
quotedstr(dm.q1.fieldbyname('id_gost').asstring)+','+
quotedstr(dm.q1.fieldbyname('dt_begin').asstring+'-'+
dm.q1.fieldbyname('dt_end').asstring)+','+
inttostr(tptv)+','+
inttostr(tpts)+','+
inttostr(tpov)+','+
inttostr(tpos)+')';
executesql(dm.q3,ssql);

dm.q1.Next;
end;

ssql:='select * from #usertemp'+randid+' order by reg,podreg,gost,d1';
opensql(dm.qit,ssql);

stat_unlock;

pr_off;

dm.fr.LoadFromFile(sharedf+'\reports\stnc_nest.frf');
dm.fr.PrepareReport;
dm.fr.showreport;

end;

function g_nazv (nz : string) : string;
begin
ssql:='select b.nazvanie from clients a left join gostinici b on a.id_gost=b.codeid where a.tip=1 and a.nz='+nz;
opensql(dm.q3,ssql);

if dm.q3.recordcount<>0 then result:=dm.q3.fields[0].asstring else result:='';
end;

procedure sr (sender : tobject; fld,cnt : string);
begin
(sender as tadoquery).close;
(sender as tadoquery).open;
(sender as tadoquery).Locate(fld,strtoint(cnt),[]);
end;

procedure avt_lock;
begin
with fkarti do
begin
rg3.enabled:=false;
de.enabled:=false;
va.enabled:=false;
ca.enabled:=false;
e.enabled:=false;
b1.enabled:=false;
b4.enabled:=true;
b5.enabled:=true;
end;
end;

procedure avt_unlock;
begin
with fkarti do
begin
rg3.enabled:=true;
de.enabled:=true;
va.enabled:=true;
ca.enabled:=true;
e.enabled:=true;
b1.enabled:=true;
b4.enabled:=false;
b5.enabled:=false;
end;
end;

procedure combo_gost_vse_l (sender : tobject);
var i : integer;
begin

(sender as tcxcombobox).Properties.Items.Clear;

ssql:='select distinct nazvanie from gostinici';
opensql(dm.q1,ssql);

for i:=1 to dm.q1.RecordCount do
begin
(sender as tcxcombobox).properties.Items.add(dm.q1.fieldbyname('nazvanie').asstring);
dm.q1.next;
end;

end;

procedure rassadka (avi,et,napr,datest : string);
var
Excel: variant;
i, j: integer;
m1,m2,m,m3,m4,s : string;
begin

ssql:='select pl'+et+' from avt where id='+avi;
opensql(dm.q1,ssql);

if dm.q1.fields[0].asstring='' then
begin
sm('Не указана карта этажа.');
fkarti.b3.onclick(dm.q1);
exit;
end;

Excel := CreateOleObject('Excel.Application');
Excel.Workbooks.Open(extractfiledir(application.exename)+'\maps\'+dm.q1.fields[0].asstring);
Excel.Visible:=false;

for i := 1 to 20 do
begin

 for j := 1 to 5 do
 begin

 s := Excel.Sheets[1].Cells[i,j].Text;

  case j of
  1: if s='m' then m1:='СМ';
  2: if s='m' then m2:='СМ';
  3: if s='m' then m:='СМ';
  4: if s='m' then m3:='СМ';
  5: if s='m' then m4:='СМ';
  end;

 end;

if (m1<>'') or (m2<>'') or (m3<>'') or (m4<>'') or (m<>'') then
begin
ssql:='insert into #map'+randid+' (n,m1,m2,m,m3,m4) values ('+inttostr(i)+','+quotedstr(m1)+','+quotedstr(m2)+','+quotedstr(m)+
','+quotedstr(m3)+','+quotedstr(m4)+')';
executesql(dm.q1,ssql);
end;

m1:='';
m2:='';
m:='';
m3:='';
m4:='';

end;

excel.quit;

if napr='туда' then
begin

ssql:='select id,f,i,nz,ra,ma from clients where ((proezd='+quotedstr('город-база-город')+') or (proezd='+
quotedstr('город-база')+')) and tip=3 and annul='+quotedstr('нет')+' and id_avt='+quotedstr(avi)+' and ea='+
quotedstr(et)+' and dt_begin='+quotedstr(FormatDateTime(dtf,strtodate(datest)));
opensql(dm.q1,ssql);

for i:=1 to dm.q1.recordcount do
begin

if dm.q1.FieldByName('ma').asstring='5' then m:='m' else m:='m'+dm.q1.FieldByName('ma').asstring;

ssql:='update #map'+randid+' set '+m+'='+quotedstr(dm.q1.FieldByName('f').asstring+' '+
dm.q1.FieldByName('i').asstring+' НЗ:'+
dm.q1.FieldByName('nz').asstring+' Г:'+g_nazv(dm.q1.FieldByName('nz').asstring))+' where n='+dm.q1.FieldByName('ra').asstring;
executesql(dm.q2,ssql);

dm.q1.next;
end;

end;

if napr='обратно' then
begin

ssql:='select id,f,i,nz,rao,mao from clients where ((proezd='+quotedstr('город-база-город')+') or (proezd='+
quotedstr('база-город')+')) and tip=3 and annul='+quotedstr('нет')+' and id_avt_o='+quotedstr(avi)+' and eao='+
quotedstr(et)+' and dt_end='+quotedstr(FormatDateTime(dtf,strtodate(datest)));
opensql(dm.q1,ssql);

for i:=1 to dm.q1.recordcount do
begin

if dm.q1.FieldByName('mao').asstring='5' then m:='m' else m:='m'+dm.q1.FieldByName('mao').asstring;

ssql:='update #map'+randid+' set '+m+'='+quotedstr(dm.q1.FieldByName('f').asstring+' '+
dm.q1.FieldByName('i').asstring+' НЗ:'+
dm.q1.FieldByName('nz').asstring+' Г:'+g_nazv(dm.q1.FieldByName('nz').asstring))+
' where n='+dm.q1.FieldByName('rao').asstring;
executesql(dm.q2,ssql);

dm.q1.next;
end;

end;

dm.Map.Close;
dm.Map.open;

end;

function vodsop_id (nazv: string):string;
begin

ssql:='select id from vodsop where fio='+quotedstr(nazv);
opensql(dm.q1,ssql);

result:=dm.q1.FieldByName('id').asstring;

end;

function mesto (id : string): string;
begin
result:=copy(id,2,1);
if result='' then result:='5';
end;

procedure vvod_oplati (nz_opl,kopl,oplach,poln_opl,usr,tip : string);
begin
if not assigned(FOplataVvod) then application.CreateForm(tFOplataVvod, FOplataVvod);
FOplataVvod.show;

with FOplataVvod do
begin
ce_kopl.text:=kopl;
te_opl.text:=oplach;
cb_po.text:=poln_opl;

lnz.caption:=nz_opl;
lus.caption:=usr;

ltip.caption:=tip;
end;

end;

procedure combo_dati_nest (sender : tobject; struc_tip,in_out : string);
var i : integer;
begin

(sender as tcxcombobox).Properties.Items.Clear;

dm.nest_d.close;
dm.nest_d.open;
dm.nest_d.first;

for i:=1 to dm.nest_d.recordcount do
begin

d:=dm.nest_d.fields[1].asdatetime;
ds:=formatdatetime(dtf,d);

if (struc_tip='А')
 and (dm.nest_d.fields[2].asstring='А')
 and (dm.nest_d.fields[3].asstring='въезд')
 and (in_out='въезд')
 then (sender as tcxcombobox).properties.Items.add(ds);

if (struc_tip='А')
 and (dm.nest_d.fields[2].asstring='А')
 and (dm.nest_d.fields[3].asstring='выезд')
 and (in_out='выезд')
 then (sender as tcxcombobox).properties.Items.add(ds);

if (struc_tip='Б')
 and (dm.nest_d.fields[2].asstring='Б')
 then (sender as tcxcombobox).properties.Items.add(ds);

if (struc_tip='') 
 then (sender as tcxcombobox).properties.Items.add(ds);

dm.nest_d.next;
end;

end;

procedure str_r (ii : integer);
begin

case ii of
0: struc:='Авт.';
1: struc:='Блок';
2: struc:='Нест.';
end;

end;

procedure reconnect;
begin

if server='' then
begin
sm('Укажите конфигурационные параметры.');
exit;
end;

if (dm.ac.connected) and (randid<>'') then
begin

try
ssql:='drop table #map'+randid;
executesql(dm.q1,ssql);
except
sm('Не удалось удалить таблицу #map'+randid);
exit;
end;

try
ssql:='drop table #usertemp'+randid;
executesql(dm.q1,ssql);
except
sm('Не удалось удалить таблицу #usertemp'+randid);
exit;
end;

try
ssql:='drop table #usertempitog'+randid;
executesql(dm.q1,ssql);
except
sm('Не удалось удалить таблицу #usertempitog'+randid);
exit;
end;

end;

if dm.ac.connected then dm.ac.connected:=false;

lock_appl;

dm.ac.connectionstring:='Provider=SQLOLEDB.1;Password='+serv_pass+';Persist Security Info=True;User ID='+serv_login+';'+
'Initial Catalog='+database+';Data Source='+server+';Use Procedure for Prepare=1;Auto Translate=True;'+
'Packet Size=4096;Workstation ID='+id_cl+';Use Encryption for Data=False;Tag with column collation '+
'when possible=False';

try
begin
dm.ac.connected:=true;
end
except
begin
sm('Не удалось подключится к серверу.');
exit;
end
end;

if not assigned(FLogin) then Application.CreateForm(TFLogin, FLogin);
FLogin.Show;

randomize;
randid:=inttostr(random(999999999));

ssql:='CREATE TABLE #usertemp'+randid+' ('+
'[id][int] IDENTITY (1, 1) NOT NULL ,'+
'[mes] [nvarchar] (10) COLLATE Cyrillic_General_CI_AS NULL ,'+
'[dat] [nvarchar] (11) COLLATE Cyrillic_General_CI_AS NULL ,'+
'[pd] [nvarchar] (4) COLLATE Cyrillic_General_CI_AS NULL  ,'+
'[d] [datetime] NULL ,'+
'[d1] [datetime] NULL ,'+
'[ag] [nvarchar] (80) COLLATE Cyrillic_General_CI_AS NULL ,'+
'[gost] [nvarchar] (80) COLLATE Cyrillic_General_CI_AS NULL ,'+
'[per] [nvarchar] (25) COLLATE Cyrillic_General_CI_AS NULL ,'+
'[kolchel] [nvarchar] (3) COLLATE Cyrillic_General_CI_AS NULL ,'+
'[kopl] [nvarchar] (12) COLLATE Cyrillic_General_CI_AS NULL ,'+
'[oplacheno] [nvarchar] (12) COLLATE Cyrillic_General_CI_AS NULL ,'+
'[f] [nvarchar] (50) COLLATE Cyrillic_General_CI_AS NULL ,'+
'[datan] [nvarchar] (3) COLLATE Cyrillic_General_CI_AS NULL ,'+
'[tps][int] ,'+
'[tpv][int] ,'+
'[podreg] [nvarchar] (50) COLLATE Cyrillic_General_CI_AS NULL ,'+
'[reg] [nvarchar] (50) COLLATE Cyrillic_General_CI_AS NULL ,'+
'[och][int] ,'+
'[c][int] ,'+
'[vverh][int] ,'+
'[d11][int] ,'+
'[d22][int] ,'+
'[d33][int] ,'+
'[d44][int] ,'+
'[d55][int] ,'+
'[d66][int] ,'+
'[d77][int] ,'+
'[d88][int] ,'+
'[d99][int] ,'+
'[prvv][int] ,'+
'[prvd][int] ,'+
'[prsv][int] ,'+
'[prsd][int] ,'+
'[tv][int] ,'+
'[ts][int] ,'+
'[ov][int] ,'+
'[os][int] ,'+
'[tptv][int] ,'+
'[tpts][int] ,'+
'[tpov][int] ,'+
'[tpos][int] ,'+
'[i] [nvarchar] (50) COLLATE Cyrillic_General_CI_AS NULL ,'+
'[o] [nvarchar] (50) COLLATE Cyrillic_General_CI_AS NULL ,'+
'[adr] [nvarchar] (200) COLLATE Cyrillic_General_CI_AS NULL ,'+
'[nd] [nvarchar] (50) COLLATE Cyrillic_General_CI_AS NULL ,'+
'[pit] [nvarchar] (50) COLLATE Cyrillic_General_CI_AS NULL ,'+
'[pod] [nvarchar] (50) COLLATE Cyrillic_General_CI_AS NULL ,'+
'[tr] [nvarchar] (50) COLLATE Cyrillic_General_CI_AS NULL ,'+
'[mar] [nvarchar] (50) COLLATE Cyrillic_General_CI_AS NULL ,'+
'[pr] [nvarchar] (50) COLLATE Cyrillic_General_CI_AS NULL ,'+
'[kat] [nvarchar] (50) COLLATE Cyrillic_General_CI_AS NULL ,'+
'[gor] [nvarchar] (50) COLLATE Cyrillic_General_CI_AS NULL ,'+
'[nz] [nvarchar] (50) COLLATE Cyrillic_General_CI_AS NULL ,'+
'[dr] [nvarchar] (50) COLLATE Cyrillic_General_CI_AS NULL ,'+
'[m] [nvarchar] (50) COLLATE Cyrillic_General_CI_AS NULL ,'+
'[d_opl] [nvarchar] (50) COLLATE Cyrillic_General_CI_AS NULL ,'+
'[id_n] [nvarchar] (50) COLLATE Cyrillic_General_CI_AS NULL ,'+
'[n_vauch] [nvarchar] (50) COLLATE Cyrillic_General_CI_AS NULL ,'+
'[st_nom] [nvarchar] (50) COLLATE Cyrillic_General_CI_AS NULL ,'+
'[n] [nvarchar] (3) COLLATE Cyrillic_General_CI_AS NULL) ON [PRIMARY]';

executesql(dm.q1,ssql);

ssql:='CREATE TABLE #usertempitog'+randid+' ('+
'[id][int] IDENTITY (1, 1) NOT NULL ,'+
'[per] [nvarchar] (30) COLLATE Cyrillic_General_CI_AS NULL ,'+
'[d1] [datetime] NULL ,'+
'[datan] [nvarchar] (3) COLLATE Cyrillic_General_CI_AS NULL ,'+
'[prvv][int] ,'+
'[prvd][int] ,'+
'[prsv][int] ,'+
'[prsd][int] ,'+
'[tv][int] ,'+
'[ts][int] ,'+
'[ov][int] ,'+
'[os][int] ,'+
'[tptv][int] ,'+
'[tpts][int] ,'+
'[tpov][int] ,'+
'[tpos][int]) ON [PRIMARY]';

executesql(dm.q1,ssql);

ssql:='CREATE TABLE #map'+randid+' ([n] [int] ,	[l1m] [nvarchar] (50) COLLATE Cyrillic_General_CI_AS NULL ,	[l2m] [nvarchar] (50) COLLATE Cyrillic_General_CI_AS NULL , [p1m] [nvarchar] (50) COLLATE Cyrillic_General_CI_AS NULL ,'+
'	[p2m] [nvarchar] (50) COLLATE Cyrillic_General_CI_AS NULL , [sr] [nvarchar] (50) COLLATE Cyrillic_General_CI_AS NULL , [ln] [int] NULL , [pn] [int] NULL ,[sn] [int] NULL , [m1] [nvarchar] (250) COLLATE Cyrillic_General_CI_AS NULL ,'+
'[m2][nvarchar](250) COLLATE Cyrillic_General_CI_AS NULL,[m][nvarchar](250) COLLATE Cyrillic_General_CI_AS NULL , [m3] [nvarchar] (250) COLLATE Cyrillic_General_CI_AS NULL ,[m4] [nvarchar] (250) COLLATE Cyrillic_General_CI_AS NULL'+
') ON [PRIMARY]';

executesql(dm.q1,ssql);

reload_base;

end;

procedure spis_db_load;
var i : integer;
begin

fsettings.cb1.Items.Clear;

with dm.sp1 do
begin
parameters.Clear;
procedurename:='sp_databases';
Open;
end;

for i:=1 to dm.sp1.RecordCount do
begin
fsettings.cb1.Items.Add(dm.sp1.fields[0].asstring);
dm.sp1.Next;
end;

fsettings.cb1.text:=database;

if dm.sp1.Active then dm.sp1.Active:=false;

end;

procedure combo_podreg_on_reg_load (sender : tobject; reg : string);
var i : integer;
begin

(sender as tcxcombobox).Properties.Items.Clear;

ssql:='select distinct a.podreg from podreg a left join rpr b'+
' on a.codeid=b.cpr left join reg c on b.cr=c.codeid where c.codeid='+reg+' order by a.podreg';
opensql(dm.q1,ssql);

for i:=1 to dm.q1.RecordCount do
begin
(sender as tcxcombobox).properties.Items.add(dm.q1.fieldbyname('podreg').asstring);
dm.q1.next;
end;

end;

procedure combo_gost_on_podreg_load (sender : tobject; a_b,podreg : string);
var i : integer;
begin

(sender as tcxcombobox).Properties.Items.Clear;

if a_b='все' then
ssql:='select distinct nazvanie from gostinici where podregrazm='+podreg+' order by nazvanie'
else
if a_b='всё' then
ssql:='select distinct nazvanie from gostinici order by nazvanie'
else

{
ssql:='select distinct a.nazvanie from gostinici a left join bloki b'+
' on a.codeid=b.c_gost where b.a_b='+quotedstr(a_b)+' and a.podregrazm='+podreg+' order by a.nazvanie';
}

  if a_b='Авт.' then
  ssql:='select distinct nazvanie from gostinici '+
  '  where graf<>0 and podregrazm='+podreg+' order by nazvanie';

  if (a_b='Блок') or (a_b='Нест.') then
  ssql:='select distinct nazvanie from gostinici '+
  '  where graf_b<>0 and podregrazm='+podreg+' order by nazvanie';

opensql(dm.q1,ssql);

for i:=1 to dm.q1.RecordCount do
begin
(sender as tcxcombobox).properties.Items.add(dm.q1.fieldbyname('nazvanie').asstring);
dm.q1.next;
end;

end;

procedure combo_gost_podreg_load (sender : tobject; a_b : string);
var i : integer;
begin

(sender as tcxcombobox).Properties.Items.Clear;

if a_b='все' then
ssql:='select distinct b.podreg from gostinici a left join podreg b on a.podregrazm=b.codeid left join bloki c'+
' on a.codeid=c.c_gost order by b.podreg'
else

{
ssql:='select distinct b.podreg from gostinici a left join podreg b on a.podregrazm=b.codeid left join bloki c'+
' on a.codeid=c.c_gost where c.a_b='+quotedstr(a_b)+' order by b.podreg';
}

  if a_b='Авт.' then
  ssql:='select distinct b.podreg from gostinici a left join podreg b on a.podregrazm=b.codeid '+
  '  where a.graf<>0 order by b.podreg';

  if (a_b='Блок') or (a_b='Нест.') then
  ssql:='select distinct b.podreg from gostinici a left join podreg b on a.podregrazm=b.codeid '+
  '  where a.graf_b<>0 order by b.podreg';

try
opensql(dm.q1,ssql);

for i:=1 to dm.q1.RecordCount do
begin
(sender as tcxcombobox).properties.Items.add(dm.q1.fieldbyname('podreg').asstring);
dm.q1.next;
end;
except
sm('Не указаны необходимые данные.');
end;

end;

function pit_v_pakete  (p,g,s : string) : string;
begin

ssql:='select vkl from gostpit where c_pit='+p+' and c_gost='+g+' and a_b='+quotedstr(s);
opensql(dm.q4,ssql);

if dm.q4.fieldbyname('vkl').asstring='да' then result:='да' else result:='нет';

end;

function kol_sut (nz : string) : integer;
var ab,idg,rch,pr : string;
    d1,d2 : tdate;
begin

ssql:='select a_b,id_gost,per from clients where tip=1 and nz='+quotedstr(nz);
opensql(dm.q1,ssql);

ab:=dm.q1.fields[0].asstring;

if ab='Авт.' then result:=10
else
begin

idg:=dm.q1.fields[1].asstring;
pr:=dm.q1.fields[2].asstring;
d1:=strtodate(copy(pr,1,10));
d2:=strtodate(copy(pr,12,10));

ssql:='select rchb from gostinici where codeid='+quotedstr(idg);

opensql(dm.q1,ssql);

rch:=dm.q1.fields[0].asstring;

if rch='12:00:00' then
result:=strtoint(floattostr(d2-d1))
else
result:=strtoint(floattostr(d2-d1+1));

end;

end;

function st_sebest (nz,sts : string) : string;
var ks,i,j,k,kr : integer;
    ab,idg,rch,pr,idkat,kat,tip,sstr,pstr,vozr : string;
    d1,d : tdate;
    Year, Month, Day, YearN : word;
    c,summa,cp : currency;
begin

c:=0;
summa:=0;

ks:=kol_sut(nz);

ssql:='select a.a_b,a.id_gost,a.per,e.rchb,e.rchz from clients a left join gostinici e on a.id_gost=e.codeid where nz='+
quotedstr(nz)+' and a.tip=1 and annul<>'+quotedstr('да');
opensql(dm.q1,ssql);

ab:=dm.q1.fieldbyname('a_b').asstring;
idg:=dm.q1.fieldbyname('id_gost').asstring;
pr:=dm.q1.fieldbyname('per').asstring;
if ab='Блок' then rch:=dm.q1.fieldbyname('rchb').asstring else rch:=dm.q1.fieldbyname('rchz').asstring;
d1:=strtodate(copy(pr,1,10));

ssql:='select a.*,c.m,b.pit,d.kat,e.rchb,e.rchz from (((clients a full outer join gostnom c on a.id_m=c.codeid) left join'+
' pit b on a.id_pit=b.codeid) left join kat d on a.id_kat=d.codeid) left join gostinici e on a.id_gost=e.codeid where nz='+
quotedstr(nz)+' and a.tip=3 and annul<>'+quotedstr('да');
opensql(dm.q1,ssql);

// расчет
for i:=1 to dm.q1.recordcount do
begin

ssql:='delete from #usertemp'+randid;
executesql(dm.q3,ssql);

tip:=dm.q1.fieldbyname('tip_proezda').asstring;

ssql:='select a.id_kat,b.kat,b.kr from clients a left join kat b on a.id_kat=b.codeid where nz='+
quotedstr(nz)+' and tip=2 and annul<>'+quotedstr('да')+' and a.id='+dm.q1.fieldbyname('p').asstring;
opensql(dm.q2,ssql);

idkat:=dm.q2.fieldbyname('id_kat').asstring;
kr:=dm.q2.fieldbyname('kr').asinteger;
kat:=dm.q2.fieldbyname('kat').asstring;

DecodeDate(dm.q1.fieldbyname('dr').AsDateTime, Year, Month, Day);
DecodeDate(now,YearN,Month,Day);

vozr := inttostr(YearN - Year);

  for j:=0 to ks-1 do // на каждый день
  begin

  d:=d1+j;

  // питание

    if (dm.q1.fieldbyname('pit').asstring<>'') and (dm.q1.fieldbyname('pit').asstring<>'нет') then
    begin

    ssql:='select c1 from pravila where st_seb='+quotedstr('себестоимость')+
    ' and id_gost='+idg+
    ' and a_b='+quotedstr(ab)+
    ' and c_za='+quotedstr('питание')+
    ' and d1<='+quotedstr(FormatDateTime(dtf,d))+
    ' and d2>='+quotedstr(FormatDateTime(dtf,d))+
    ' and id_pit='+dm.q1.fieldbyname('id_pit').asstring;
    opensql(dm.q3,ssql);

      if dm.q3.recordcount<>0 then
      cp:=dm.q3.fieldbyname('c1').AsCurrency
      else
      cp:=0;

    end
    else
    cp:=0;

    // проживание

    if dm.q1.fieldbyname('bezmesta').asstring='да' then // НЕ учитывается только проезд, доработать
    begin

    // без места, только цена для условия с возрастом
    ssql:='select c1,znach,osn from pravila where st_seb='+quotedstr('себестоимость')+' and id_gost='+idg+
    ' and a_b='+quotedstr(ab)+' and c_za='+quotedstr('без места')+
    ' and id_kat='+dm.q2.fieldbyname('id_kat').asstring+
    ' and d1<='+quotedstr(FormatDateTime(dtf,d))+' and d2>='+quotedstr(FormatDateTime(dtf,d))+' and usl='+
    quotedstr('возраст')+' and v1<='+vozr+' and v2>='+vozr;
    opensql(dm.q3,ssql);

    c:=dm.q3.fieldbyname('c1').AsCurrency/kr;
    
    end;

//// если с местом

    if dm.q1.fieldbyname('bezmesta').asstring='нет' then
    begin

      if (dm.q1.fieldbyname('m').asstring='осн. место') or (dm.q1.fieldbyname('kat').asstring='осн. место') then
      begin

      // проверка, есть ли условие на этот номер на возраст
      ssql:='select * from pravila where st_seb='+quotedstr('себестоимость')+' and id_gost='+idg+' and '+
      'id_kat='+dm.q2.fieldbyname('id_kat').asstring+' and a_b='+quotedstr(ab)+' and c_za='+quotedstr('номер')+
      ' and d1<='+quotedstr(FormatDateTime(dtf,d))+' and d2>='+quotedstr(FormatDateTime(dtf,d))+' and usl='+
      quotedstr('возраст');
      opensql(dm.q3,ssql);

      // нет условия на возраст для этого номера
        if dm.q3.recordcount=0 then
        begin 

        ssql:='select c1 from pravila where st_seb='+quotedstr('себестоимость')+' and id_gost='+idg+' and '+
        'id_kat='+dm.q2.fieldbyname('id_kat').asstring+' and a_b='+quotedstr(ab)+' and c_za='+quotedstr('номер')+
        ' and d1<='+quotedstr(FormatDateTime(dtf,d))+' and d2>='+quotedstr(FormatDateTime(dtf,d))+' and usl='+
        quotedstr('');
        opensql(dm.q3,ssql);

          if dm.q3.recordcount<>0 then
          begin // если есть правило на номер, делим сумму за номер на кол-во мест в номере и даем человеку
          c:=dm.q3.fieldbyname('c1').AsCurrency/kr;
          end
          else
          begin // если нет правила на номер, ищем правило на такое место (без условий)
          ssql:='select c1 from pravila where st_seb='+quotedstr('себестоимость')+' and id_gost='+idg+
          ' and a_b='+quotedstr(ab)+' and c_za='+quotedstr('место')+
          ' and id_kat='+dm.q2.fieldbyname('id_kat').asstring+
          ' and d1<='+quotedstr(FormatDateTime(dtf,d))+' and d2>='+quotedstr(FormatDateTime(dtf,d))+' and usl='+
          quotedstr('');
          opensql(dm.q3,ssql);
          c:=dm.q3.fieldbyname('c1').AsCurrency;
          end;

        end
        else
        begin // есть условие на возраст для этого номера

        ssql:='select c1 from pravila where st_seb='+quotedstr('себестоимость')+' and id_gost='+idg+' and '+
        'id_kat='+dm.q2.fieldbyname('id_kat').asstring+' and a_b='+quotedstr(ab)+' and c_za='+quotedstr('номер')+
        ' and d1<='+quotedstr(FormatDateTime(dtf,d))+' and d2>='+quotedstr(FormatDateTime(dtf,d))+' and usl='+
        quotedstr('возраст')+' and v1<='+vozr+' and v2>='+vozr;
        opensql(dm.q3,ssql);

          if dm.q3.recordcount<>0 then
          begin // если есть правило на номер, делим сумму за номер на кол-во мест в номере и даем человеку
          c:=dm.q3.fieldbyname('c1').AsCurrency/kr;
          end
          else
          begin // если нет правила на номер, ищем правило на такое место
          ssql:='select c1 from pravila where st_seb='+quotedstr('себестоимость')+' and id_gost='+idg+
          ' and a_b='+quotedstr(ab)+' and c_za='+quotedstr('место')+
          ' and id_kat='+dm.q2.fieldbyname('id_kat').asstring+
          ' and d1<='+quotedstr(FormatDateTime(dtf,d))+' and d2>='+quotedstr(FormatDateTime(dtf,d))+' and usl='+
          quotedstr('возраст')+' and v1<='+vozr+' and v2>='+vozr;
          opensql(dm.q3,ssql);
          c:=dm.q3.fieldbyname('c1').AsCurrency;
          end;

        end;

      end;

////

    if (dm.q1.fieldbyname('m').asstring='доп. место') or (dm.q1.fieldbyname('kat').asstring='доп. место') then
    begin

    // проверка, есть ли условие на это место на возраст
    ssql:='select * from pravila where st_seb='+quotedstr('себестоимость')+' and id_gost='+idg+
    ' and a_b='+quotedstr(ab)+' and c_za='+quotedstr('доп. место')+
    ' and id_kat='+dm.q2.fieldbyname('id_kat').asstring+
    ' and d1<='+quotedstr(FormatDateTime(dtf,d))+' and d2>='+quotedstr(FormatDateTime(dtf,d))+' and usl='+
    quotedstr('возраст');
    opensql(dm.q3,ssql);

      if dm.q3.recordcount=0 then
      begin // нет условия на возраст для этого места    

      ssql:='select c1,znach,osn from pravila where st_seb='+quotedstr('себестоимость')+' and id_gost='+idg+
      ' and a_b='+quotedstr(ab)+' and c_za='+quotedstr('доп. место')+
      ' and id_kat='+dm.q2.fieldbyname('id_kat').asstring+
      ' and d1<='+quotedstr(FormatDateTime(dtf,d))+' and d2>='+quotedstr(FormatDateTime(dtf,d))+' and usl='+
      quotedstr('');
      opensql(dm.q3,ssql);

        if dm.q3.fieldbyname('znach').asstring='значение' then c:=dm.q3.fieldbyname('c1').AsCurrency;

        if dm.q3.fieldbyname('znach').asstring='процент' then
        begin

          if dm.q3.fieldbyname('osn').asstring='места' then
          begin    // отсчет будет от цены осн. места без приколов
          ssql:='select max(c1) from pravila where st_seb='+quotedstr('себестоимость')+' and id_gost='+idg+
          ' and a_b='+quotedstr(ab)+' and c_za='+quotedstr('место')+
          ' and id_kat='+dm.q2.fieldbyname('id_kat').asstring+
          ' and d1<='+quotedstr(FormatDateTime(dtf,d))+' and d2>='+quotedstr(FormatDateTime(dtf,d))+' and usl='+
          quotedstr('');
          opensql(dm.q4,ssql);

          c:=dm.q4.fields[0].AsCurrency-(dm.q4.fields[0].AsCurrency/100*dm.q3.fields[0].AsCurrency);

          end;

          if dm.q3.fieldbyname('osn').asstring='путевки' then
          begin   // аналог месту
          ssql:='select max(c1) from pravila where st_seb='+quotedstr('себестоимость')+' and id_gost='+idg+
          ' and a_b='+quotedstr(ab)+' and c_za='+quotedstr('место')+
          ' and id_kat='+dm.q2.fieldbyname('id_kat').asstring+
          ' and d1<='+quotedstr(FormatDateTime(dtf,d))+' and d2>='+quotedstr(FormatDateTime(dtf,d))+' and usl='+
          quotedstr('');
          opensql(dm.q4,ssql);
          c:=dm.q4.fields[0].AsCurrency-(dm.q4.fields[0].AsCurrency/100*dm.q3.fields[0].AsCurrency);

          end;

          if dm.q3.fieldbyname('znach').asstring='бесплатно' then c:=0;
        end;

      end
      else
      begin // есть условие на возраст для этого места

      ssql:='select c1,znach,osn from pravila where st_seb='+quotedstr('себестоимость')+' and id_gost='+idg+' and '+
      'id_kat='+dm.q2.fieldbyname('id_kat').asstring+' and a_b='+quotedstr(ab)+' and c_za='+quotedstr('доп. место')+
      ' and d1<='+quotedstr(FormatDateTime(dtf,d))+' and d2>='+quotedstr(FormatDateTime(dtf,d))+' and usl='+
      quotedstr('возраст')+' and v1<='+vozr+' and v2>='+vozr;
      opensql(dm.q3,ssql);

        if dm.q3.fieldbyname('znach').asstring='значение' then c:=dm.q3.fieldbyname('c1').AsCurrency;

        if dm.q3.fieldbyname('znach').asstring='процент' then
        begin

          if dm.q3.fieldbyname('osn').asstring='места' then
          begin    // отсчет будет от цены осн. места
          ssql:='select max(c1) from pravila where st_seb='+quotedstr('себестоимость')+' and id_gost='+idg+
          ' and a_b='+quotedstr(ab)+' and c_za='+quotedstr('место')+
          ' and id_kat='+dm.q2.fieldbyname('id_kat').asstring+
          ' and d1<='+quotedstr(FormatDateTime(dtf,d))+' and d2>='+quotedstr(FormatDateTime(dtf,d));{+' and usl='+
          quotedstr('возраст');}
          opensql(dm.q4,ssql);
          c:=dm.q4.fields[0].AsCurrency-(dm.q4.fields[0].AsCurrency/100*dm.q3.fields[0].AsCurrency);
          end;

          if dm.q3.fieldbyname('osn').asstring='путевки' then
          begin   // аналог месту

          ssql:='select max(c1) from pravila where st_seb='+quotedstr('себестоимость')+' and id_gost='+idg+
          ' and a_b='+quotedstr(ab)+' and c_za='+quotedstr('место')+
          ' and id_kat='+dm.q2.fieldbyname('id_kat').asstring+
          ' and d1<='+quotedstr(FormatDateTime(dtf,d))+' and d2>='+quotedstr(FormatDateTime(dtf,d));{+' and usl='+
          quotedstr('возраст');}
          opensql(dm.q4,ssql);
          c:=dm.q4.fields[0].AsCurrency-(dm.q4.fields[0].AsCurrency/100*dm.q3.fields[0].AsCurrency);
          end;

        end;

      end;

      if dm.q3.fieldbyname('znach').asstring='бесплатно' then c:=0;

    end;

    c:=roundto(c,-2);
    cp:=roundto(cp,-2);

    ssql:='insert into #usertemp'+randid+' (kopl,pit) values ('+quotedstr(currtostr(c))+','+quotedstr(currtostr(cp))+')';
    executesql(dm.q3,ssql);

    summa:=summa+c+cp;

  end;

end; // конец на каждый день

//
ssql:='select distinct kopl from #usertemp'+randid;
opensql(dm.q2,ssql);

for k:=0 to dm.q2.recordcount-1 do
begin

ssql:='select count(*) from #usertemp'+randid+' where kopl='+quotedstr(dm.q2.fieldbyname('kopl').asstring);
opensql(dm.q3,ssql);

if pstr='' then pstr:=dm.q2.fieldbyname('kopl').asstring+'*'+dm.q3.fields[0].asstring else
pstr:=pstr+'+'+dm.q2.fieldbyname('kopl').asstring+'*'+dm.q3.fields[0].asstring;

dm.q2.next;
end;
//

//
ssql:='select distinct pit from #usertemp'+randid;
opensql(dm.q2,ssql);

for k:=0 to dm.q2.recordcount-1 do
begin

ssql:='select count(*) from #usertemp'+randid+' where pit='+quotedstr(dm.q2.fieldbyname('pit').asstring);
opensql(dm.q3,ssql);

  if dm.q2.fieldbyname('pit').asstring<>'0' then
  begin
  pstr:=pstr+'+'+dm.q2.fieldbyname('pit').asstring+'*'+dm.q3.fields[0].asstring;
  end;

dm.q2.next;
end;
//

dm.q1.next;

if pos('*',pstr)>2 then if sstr='' then sstr:=pstr else sstr:=sstr+'+'+pstr;
pstr:='';

end; // конец расчета

ssql:='update clients set sebest=(convert(money,'+quotedstr(zap(currtostr(summa)))+')),str_rasch_sebest='+
quotedstr(sstr)+' where tip=1 and nz='+quotedstr(nz);
executesql(dm.q2,ssql);

result:=sstr+' = '+currtostr(summa);

end;  

{
procedure ag_1den_vse (d : tdate);
var a,b,e1,e2 : integer;
begin
{
stat_lock;

ssql:='delete from #usertemp'+randid;
executesql(dm.q1,ssql);

for i:=1 to dm.agentq.recordcount do
begin

pr(i,dm.AgentQ.recordcount);

ssql:='select a.id,a.data_zai,a.a_b,b.exk from clients a left join gostinici b on a.id_gost=b.codeid'+
' where tip=1 and annul<>'+quotedstr('да')+' and data_zai<='+quotedstr(datetostr(d))+
' and b.napr<>0';
opensql(dm.q1,ssql);

pr_on;

for i:=1 to dm.q1.recordcount do
begin

pr(i,dm.q1.recordcount);

ssql:='select id from clients where p='+dm.q1.fields[0].asstring+' and annul<>'+quotedstr('да');
opensql(dm.q2,ssql);

for k:=1 to dm.q2.recordcount do
begin

ssql:='select count(*) from clients where p='+dm.q2.fields[0].asstring+' and annul<>'+quotedstr('да');
opensql(dm.q3,ssql);

if (dm.q1.fields[2].asstring='Авт.') and (dm.q1.fields[3].asstring='нет') then a:=a+dm.q3.fields[0].asinteger;
if (dm.q1.fields[2].asstring='Авт.') and (dm.q1.fields[3].asstring='да') then e1:=e1+dm.q3.fields[0].asinteger;
if (dm.q1.fields[2].asstring='Блок') and (dm.q1.fields[3].asstring='нет') then b:=b+dm.q3.fields[0].asinteger;
if (dm.q1.fields[2].asstring='Блок') and (dm.q1.fields[3].asstring='да') then e2:=e2+dm.q3.fields[0].asinteger;

dm.q2.next;

end;

ssql:='insert into  () values ('+
quotedstr(dm.q1.fieldbyname('f').asstring)+','+
quotedstr(dm.q1.fieldbyname('nazvanie').asstring)+','+
quotedstr(dm.q1.fieldbyname('per').asstring)+','+
quotedstr(inttostr(j))+','+
quotedstr(dm.q1.fieldbyname('stoim').asstring)+','+
quotedstr(dm.q1.fieldbyname('oplacheno').asstring)+','+
quotedstr(copy(dm.q1.fieldbyname('per').asstring,1,10))+')';

executesql(dm.q4,ssql);

dm.q1.next;

end;

pr_off;

stat_unlock;

ssql:='select * from #usertemp'+randid+' order by ';
opensql(dm.qit,ssql);

with dm.fr do
begin
LoadFromFile(sharedf+'reports\ag_1den_vse.frf');
//FindObject('memo16').memo.text:='Сводка по агентству '+cb11.text+' на '+de1.text;
ShowReport;
end;

end;
}

procedure na_vibr (d : tdate; cb1,cb2 : string);
var i,j,k,l,n,prvv,prvd,prsv,prsd,tpv,tps,tv,ts,ov1,ov2,ov3,os1,os2,os3,tpts,tptv,tpos1,tpos2,tpos3,tpov1,tpov2,tpov3,tpov,tpos,ittv,itts,itov,itos,osnm,dopolm : integer;
    zzd,gst,nom_list : string;
begin

stat_lock;

os2:=0;
ov2:=0;
ov3:=0;
os3:=0;

tpos2:=0;
tpov2:=0;
tpos3:=0;
tpov3:=0;

ssql:='delete from #usertemp'+randid;
executesql(dm.q1,ssql);

ssql:='delete from #usertempitog'+randid;
executesql(dm.q1,ssql);

ssql:='select distinct a.c_gost,a.per,a.a_b,b.podregrazm,a.d1,b.nazvanie,b.podregrazm,b.napr,c.podreg,d.cr,e.reg from (((bloki a left join gostinici b on a.c_gost=b.codeid) left join podreg c on b.podregrazm=c.codeid) left join rpr d on b.podregrazm=d.cpr)';
ssql:=ssql+' left join reg e on d.cr=e.codeid where a.a_b='+quotedstr('Авт.')+' and b.graf='+cb2+' and b.napr='+
cb1+' and d1>='+quotedstr(formatdatetime(dtf,strtodate(dnopper)))+' and d1<='+quotedstr(formatdatetime(dtf,strtodate(dkopper)))+' order by reg,podreg,nazvanie,d1';
opensql(dm.q1,ssql);

dtav:=d-1;
dtas:=d;

fst:=true;

pr_on;

for i:=1 to dm.q1.recordcount do
begin

pr(i,dm.q1.recordcount);

{ssql:='select distinct a.kmd,a.kmo,b.kat,a.c_kat,a.c_gost from gostnom a left join kat b on a.c_kat=b.codeid where c_gost='+
dm.q1.fieldbyname('c_gost').asstring+' and tip=1 and a_b='+quotedstr('Авт.');
opensql(dm.q2,ssql);}

osnm:=0;
dopolm:=0;
nom_list:='';

{
for l:=1 to dm.q2.recordcount do
begin

ssql:='select count(*) from gostnom where c_gost='+dm.q1.fieldbyname('c_gost').asstring+' and c_kat='+
dm.q2.fieldbyname('c_kat').asstring+' and tip=1 and a_b='+quotedstr('Авт.');
opensql(dm.q3,ssql);

nom_list:=nom_list+dm.q3.fields[0].asstring+' X '+dm.q2.fieldbyname('kat').asstring+'; ';

if dm.q2.fieldbyname('kmo').asstring<>'0' then osnm:=osnm+dm.q3.fields[0].asinteger*dm.q2.fieldbyname('kmo').asinteger;
if dm.q2.fieldbyname('kmd').asstring<>'0' then dopolm:=dopolm+dm.q3.fields[0].asinteger*dm.q2.fieldbyname('kmd').asinteger;

dm.q2.next;
end;

nom_list:=nom_list+' осн. мест: '+inttostr(osnm)+' доп. мест: '+inttostr(dopolm);
}

gst:=dm.q1.fieldbyname('nazvanie').asstring;

prvv:=0;
prvd:=0;
prsv:=0;
prsd:=0;
tpv:=0;
tps:=0;
tv:=0;
ts:=0;
tptv:=0;
tpts:=0;

ssql:='select id,data_zai from clients where id_gost='+dm.q1.fields[0].asstring+' and per='+
quotedstr(dm.q1.fields[1].asstring)+' and annul<>'+
quotedstr('да')+' and data_zai<='+quotedstr(datetostr(d));
opensql(dm.q2,ssql);

for j:=1 to dm.q2.recordcount do
begin

ssql:='select id from clients where p='+dm.q2.fields[0].asstring+' and annul<>'+quotedstr('да');
opensql(dm.q3,ssql);

for k:=1 to dm.q3.recordcount do
begin

ssql:='select id,tip_proezda,proezd from clients where p='+dm.q3.fields[0].asstring+
' and annul<>'+quotedstr('да');
opensql(dm.q4,ssql);

for n:=1 to dm.q4.recordcount do
begin

if dm.q2.fields[1].AsDateTime<=dtas then
begin

if (dm.q4.fields[1].asstring='взрослый') or (dm.q4.fields[1].asstring='ребенок 5-12') then prsv:=prsv+1;
if dm.q4.fields[1].asstring='ребенок до 5' then prsd:=prsd+1;

if ((dm.q4.fields[2].asstring='город-база-город') or (dm.q4.fields[2].asstring='город-база')) and
(dm.q4.fields[1].asstring<>'только проезд') then ts:=ts+1;
if ((dm.q4.fields[2].asstring='город-база-город') or (dm.q4.fields[2].asstring='база-город')) and
(dm.q4.fields[1].asstring<>'только проезд') then os2:=os2+1;

if ((dm.q4.fields[2].asstring='город-база-город') or (dm.q4.fields[2].asstring='город-база')) and
(dm.q4.fields[1].asstring='только проезд') then tpts:=tpts+1;
if ((dm.q4.fields[2].asstring='город-база-город') or (dm.q4.fields[2].asstring='база-город')) and
(dm.q4.fields[1].asstring='только проезд') then tpos2:=tpos2+1;

end;

if dm.q2.fields[1].AsDateTime<=dtav then
begin

if (dm.q4.fields[1].asstring='взрослый') or (dm.q4.fields[1].asstring='ребенок 5-12') then prvv:=prvv+1;
if dm.q4.fields[1].asstring='ребенок до 5' then prvd:=prvd+1;

if ((dm.q4.fields[2].asstring='город-база-город') or (dm.q4.fields[2].asstring='город-база')) and
(dm.q4.fields[1].asstring<>'только проезд') then tv:=tv+1;
if ((dm.q4.fields[2].asstring='город-база-город') or (dm.q4.fields[2].asstring='база-город')) and
(dm.q4.fields[1].asstring<>'только проезд') then ov2:=ov2+1;

if ((dm.q4.fields[2].asstring='город-база-город') or (dm.q4.fields[2].asstring='город-база')) and
(dm.q4.fields[1].asstring='только проезд') then tptv:=tptv+1;
if ((dm.q4.fields[2].asstring='город-база-город') or (dm.q4.fields[2].asstring='база-город')) and
(dm.q4.fields[1].asstring='только проезд') then tpov2:=tpov2+1;

end;

dm.q4.next;

end;

dm.q3.next;

end;

dm.q2.next;

end;

if fst=true then
begin

os1:=0;
ov1:=0;
os3:=os2;
ov3:=ov2;

tpos1:=0;
tpov1:=0;
tpos3:=tpos2;
tpov3:=tpov2;

end
else
begin

os1:=os3;
ov1:=ov3;
os3:=os2;
ov3:=ov2;

tpos1:=tpos3;
tpov1:=tpov3;
tpos3:=tpos2;
tpov3:=tpov2;

end;

os2:=0;
ov2:=0;

tpos2:=0;
tpov2:=0;

if dm.q1.fieldbyname('d1').AsDateTime<d then datanach:='gr' else datanach:='wh';

ssql:='insert into #usertemp'+randid+' (datan, d1, prvv, prvd, prsv, prsd, tv, ts, ov, os, gost, podreg,'+
'reg, per, tptv, tpts, tpov, tpos, adr) values ('+quotedstr(datanach)+','+
quotedstr(dm.q1.fieldbyname('d1').asstring)+','+inttostr(prvv)+','+inttostr(prvd)+','+inttostr(prsv)+','+
inttostr(prsd)+','+inttostr(tv)+','+inttostr(ts)+','+inttostr(ov1)+','+inttostr(os1)+','+
quotedstr(dm.q1.fieldbyname('nazvanie').asstring)+','+quotedstr(dm.q1.fieldbyname('podreg').asstring)+','+
quotedstr(dm.q1.fieldbyname('reg').asstring)+','+quotedstr(dm.q1.fieldbyname('per').asstring)+','+
inttostr(tptv)+','+inttostr(tpts)+','+inttostr(tpov1)+','+inttostr(tpos1)+','+quotedstr(nom_list)+')';
executesql(dm.q5,ssql);

dm.q1.next;

fst:=false;

if gst<>dm.q1.fieldbyname('nazvanie').asstring then
begin

fst:=true;
os2:=0;
os3:=0;
ov2:=0;
ov3:=0;

tpos2:=0;
tpos3:=0;
tpov2:=0;
tpov3:=0;

end;

end;

// итог

ssql:='select distinct per,d1 from #usertemp'+randid+' order by d1';
opensql(dm.q1,ssql);

for i:=1 to dm.q1.recordcount do
begin

ssql:='select sum(prvv),sum(prvd),sum(prsv),sum(prsd),sum(tv),sum(ts),sum(ov),sum(os),sum(tptv),'+
'sum(tpts),sum(tpov),sum(tpos) from #usertemp'+randid+' where per='+
quotedstr(dm.q1.fieldbyname('per').asstring);
opensql(dm.q2,ssql);

if dm.q1.fieldbyname('d1').AsDateTime<d then datanach:='gr' else datanach:='wh';

ssql:='insert into #usertempitog'+randid+
' (prvv,prvd,prsv,prsd,tv,ts,ov,os,tptv,tpts,tpov,tpos,d1,per,datan) values ('+
dm.q2.fields[0].asstring+','+dm.q2.fields[1].asstring+','+dm.q2.fields[2].asstring+','+
dm.q2.fields[3].asstring+','+dm.q2.fields[4].asstring+','+dm.q2.fields[5].asstring+','+
dm.q2.fields[6].asstring+','+dm.q2.fields[7].asstring+','+dm.q2.fields[8].asstring+','+
dm.q2.fields[9].asstring+','+dm.q2.fields[10].asstring+','+dm.q2.fields[11].asstring+','+
quotedstr(dm.q1.fields[1].asstring)+','+quotedstr(dm.q1.fields[0].asstring)+
','+quotedstr(datanach)+')';
executesql(dm.q3,ssql);

dm.q1.next;
end;

ssql:='select * from #usertemp'+randid+' order by reg,podreg,gost,d1';
opensql(dm.qit,ssql);

ssql:='select * from #usertempitog'+randid+' order by d1';
opensql(dm.qit2,ssql);

stat_unlock;

pr_off;

dm.fr.LoadFromFile(sharedf+'\reports\stnc.frf');
dm.fr.PrepareReport;
if all_st=false then dm.fr.ShowReport else dm.fr.PrintPreparedReport('', 1, true, frall);

end;

procedure TDM.DataModuleCreate(Sender: TObject);
begin
version:='1.212';
reconnect;
end;

procedure TDM.AgentQCalcFields(DataSet: TDataSet);
begin
AgentQ.FieldByName('n').asinteger:=abs(AgentQ.recno);
end;

procedure TDM.DataModuleDestroy(Sender: TObject);
begin

if server<>'' then
begin
ssql:='drop table #usertemp'+randid;
executesql(dm.q1,ssql);

ssql:='drop table #usertempitog'+randid;
executesql(dm.q1,ssql);

ssql:='drop table #map'+randid;
executesql(dm.q1,ssql);
end;

end;

procedure TDM.frGetValue(const ParName: String; var ParValue: Variant);
begin

if parname='d2' then parvalue:=FormatDateTime('dd.mm.yy', dtas);
if parname='d1' then parvalue:=FormatDateTime('dd.mm.yy', dtav);
if parname='d' then parvalue:=FormatDateTime('dd.mm.yy', dtas);

if parname='dt1' then parvalue:=FormatDateTime('dd.mm.yy',strtodate(dtsp.strings[7]));
if parname='dt2' then parvalue:=FormatDateTime('dd.mm.yy',strtodate(dtsp.strings[6]));
if parname='dt3' then parvalue:=FormatDateTime('dd.mm.yy',strtodate(dtsp.strings[5]));
if parname='dt4' then parvalue:=FormatDateTime('dd.mm.yy',strtodate(dtsp.strings[4]));
if parname='dt5' then parvalue:=FormatDateTime('dd.mm.yy',strtodate(dtsp.strings[3]));
if parname='dt6' then parvalue:=FormatDateTime('dd.mm.yy',strtodate(dtsp.strings[2]));
if parname='dt7' then parvalue:=FormatDateTime('dd.mm.yy',strtodate(dtsp.strings[1]));
if parname='dt8' then parvalue:=FormatDateTime('dd.mm.yy',strtodate(dtsp.strings[0]));

end;


procedure _10dat (d : tdate; t : integer; p : boolean);
var i,j,k,l,d1,d2,d3,d4,d5,d6,d7,d8,d9,sch_iter  : integer;
    c,rstr,a_b_ : string;
    dts_ok : boolean;
    all,prcnt: extended;
begin

pr_on;
stat_lock;

dtas:=d;
dtav:=d-1;

dtsp:=tstringlist.create;
dts_ok:=false;
i:=1;

if t=0 then a_b_:='Авт.';
if t=1 then a_b_:='Блок';
if t=2 then a_b_:='Нест.';

sch_iter:=0;

{ssql:='select count(*) from clients where (p in (select id from clients where (p in'+
'(select a.id from clients a left join gostinici b on a.id_gost=b.codeid where '+
'a.tip=1 and a.annul<>'+quotedstr('да')+' and b.exk<>'+quotedstr('да')+' and a.a_b='+
quotedstr(a_b_)+' and annul<>'+quotedstr('да')+')))) and annul<>'+quotedstr('да')+
' and data_zai>='+quotedstr(formatdatetime(dtf,strtodate(dnopper)))+' and data_zai<='+quotedstr(dkopper); }

ssql:='select count(*) from clients where (p in (select id from clients where (p in'+
'(select a.id from clients a left join gostinici b on a.id_gost=b.codeid where '+
'a.tip=1 and a.annul<>'+quotedstr('да')+' and b.exk<>'+quotedstr('да')+' and a.a_b='+
quotedstr(a_b_)+' and annul<>'+quotedstr('да')+' and data_zai>='+quotedstr(formatdatetime(dtf,strtodate(dnopper)))+' and data_zai<='+
quotedstr(formatdatetime(dtf,strtodate(dkopper)))+')))) and annul<>'+quotedstr('да');

opensql(dm.q2,ssql);

all:=dm.q2.fields[0].asinteger;

while dts_ok=false do
begin

ssql:='select count(*) from clients a left join gostinici b on a.id_gost=b.codeid where a.tip=1 and a.annul<>'+
quotedstr('да')+' and a.data_zai='+quotedstr(datetostr(d-i))+' and b.exk<>'+quotedstr('да')+
' and a.a_b='+quotedstr(a_b_)+' and data_zai>='+quotedstr(formatdatetime(dtf,strtodate(dnopper)))+' and data_zai<='+quotedstr(formatdatetime(dtf,strtodate(dkopper)));
opensql(dm.q1,ssql);

if dm.q1.fields[0].asinteger<>0 then
begin
dtsp.add(datetostr(d-i));
if dtsp.count>=8 then dts_ok:=true; // еще 1 день на итог - 7
end;

i:=i+1;

/////////////////

//sch_iter:=sch_iter+1; sch_iter

if i>60 then
begin
sm('Просмотрено более 60 дней, необходимого количества дат заявок не найдено.');
pr_off;
stat_unlock;
exit;
end;

/////////////////

end;

dm.agentq.first;

ssql:='delete from #usertemp'+randid;
executesql(dm.q1,ssql);

for i:=1 to dm.agentq.recordcount do
begin

pr(i,dm.AgentQ.recordcount);

d1:=0;
d2:=0;
d3:=0;
d4:=0;
d5:=0;
d6:=0;
d7:=0;
d8:=0;
d9:=0;

for l:=0 to 6 do
begin

ssql:='select a.id,a.data_zai from clients a left join gostinici b on a.id_gost=b.codeid where a.tip=1 and a.id_ag='+
dm.agentq.fieldbyname('codeid').asstring+' and a.annul<>'+quotedstr('да')+' and a.data_zai='+
quotedstr(dtsp.Strings[l])+' and b.exk<>'+quotedstr('да')+' and a.a_b='+quotedstr(a_b_)
+' and data_zai>='+quotedstr(formatdatetime(dtf,strtodate(dnopper)))+' and data_zai<='+quotedstr(formatdatetime(dtf,strtodate(dkopper)));
opensql(dm.q2,ssql);

for j:=1 to dm.q2.recordcount do
begin

ssql:='select id from clients where p='+dm.q2.fields[0].asstring+' and annul<>'+quotedstr('да');
opensql(dm.q3,ssql);

for k:=1 to dm.q3.recordcount do
begin

ssql:='select count(*) from clients where p='+dm.q3.fields[0].asstring+' and annul<>'+quotedstr('да');
opensql(dm.q1,ssql);

if l=0 then d8:=d8+dm.q1.fields[0].asinteger;
if l=1 then d7:=d7+dm.q1.fields[0].asinteger;
if l=2 then d6:=d6+dm.q1.fields[0].asinteger;
if l=3 then d5:=d5+dm.q1.fields[0].asinteger;
if l=4 then d4:=d4+dm.q1.fields[0].asinteger;
if l=5 then d3:=d3+dm.q1.fields[0].asinteger;
if l=6 then d2:=d2+dm.q1.fields[0].asinteger;

dm.q3.next;

end;

dm.q2.next;

end;

end;

//
ssql:='select a.id,a.data_zai from clients a left join gostinici b on a.id_gost=b.codeid where a.tip=1 and a.id_ag='+
dm.agentq.fieldbyname('codeid').asstring+' and a.annul<>'+quotedstr('да')+' and a.data_zai<='+
quotedstr(datetostr(d))+' and b.exk<>'+quotedstr('да')+' and a.a_b='+quotedstr(a_b_)+
' and data_zai>='+quotedstr(formatdatetime(dtf,strtodate(dnopper)))+' and data_zai<='+quotedstr(formatdatetime(dtf,strtodate(dkopper)));
opensql(dm.q2,ssql);

for j:=1 to dm.q2.recordcount do
begin
ssql:='select id from clients where p='+dm.q2.fields[0].asstring+' and annul<>'+quotedstr('да');
opensql(dm.q3,ssql);
for k:=1 to dm.q3.recordcount do
begin
ssql:='select count(*) from clients where p='+dm.q3.fields[0].asstring+' and annul<>'+quotedstr('да');
opensql(dm.q1,ssql);
d9:=d9+dm.q1.fields[0].asinteger;
dm.q3.next;
end;
dm.q2.next;
end;
//

//
ssql:='select a.id,a.data_zai from clients a left join gostinici b on a.id_gost=b.codeid where a.tip=1 and a.id_ag='+
dm.agentq.fieldbyname('codeid').asstring+' and a.annul<>'+quotedstr('да')+' and a.data_zai<='+
quotedstr(dtsp.Strings[7])+' and b.exk<>'+quotedstr('да')+' and a.a_b='+quotedstr(a_b_)
+' and data_zai>='+quotedstr(formatdatetime(dtf,strtodate(dnopper)))+' and data_zai<='+quotedstr(formatdatetime(dtf,strtodate(dkopper)));
opensql(dm.q2,ssql);

for j:=1 to dm.q2.recordcount do
begin
ssql:='select id from clients where p='+dm.q2.fields[0].asstring+' and annul<>'+quotedstr('да');
opensql(dm.q3,ssql);
for k:=1 to dm.q3.recordcount do
begin
ssql:='select count(*) from clients where p='+dm.q3.fields[0].asstring+' and annul<>'+quotedstr('да');
opensql(dm.q1,ssql);
d1:=d1+dm.q1.fields[0].asinteger;
dm.q3.next;
end;
dm.q2.next;
end;
//

if dm.agentq.fieldbyname('och').asstring='1' then rstr:='Тула';
if dm.agentq.fieldbyname('och').asstring='2' then rstr:='Тульская область';
if dm.agentq.fieldbyname('och').asstring='3' then rstr:='Москва';
if dm.agentq.fieldbyname('och').asstring='4' then rstr:='Московская область';

if (dm.agentq.fieldbyname('och').asstring='5') and (dm.agentq.fieldbyname('c').asstring='t')
then rstr:='Прочие (тульские цены)';
if (dm.agentq.fieldbyname('och').asstring='5') and (dm.agentq.fieldbyname('c').asstring='m')
then rstr:='Прочие (московские цены)';

if (dm.agentq.fieldbyname('och').asstring='6') and (dm.agentq.fieldbyname('c').asstring='t')
then rstr:='Предприятия (тульские цены)';
if (dm.agentq.fieldbyname('och').asstring='6') and (dm.agentq.fieldbyname('c').asstring='m')
then rstr:='Предприятия (московские цены)';

if dm.agentq.fieldbyname('c').asstring='t' then c:='0' else c:='1';

if p=true then
begin
ssql:='insert into #usertemp'+randid+' (och,ag,podreg,c,vverh,d11,d22,d33,d44,d55,d66,d77,d88,d99,reg) values ('+
dm.agentq.fieldbyname('och').asstring+','+
quotedstr(dm.agentq.fieldbyname('naimen').asstring)+','+
quotedstr(dm.agentq.fieldbyname('podreg').asstring)+','+c+','+
dm.agentq.fieldbyname('vverh').asstring+','+inttostr(d1)+','+inttostr(d2)+','+
inttostr(d3)+','+inttostr(d4)+','+inttostr(d5)+','+inttostr(d6)+','+inttostr(d7)+','+
inttostr(d8)+','+inttostr(d9)+','+quotedstr(rstr)+')';
executesql(dm.q1,ssql);
end
else
begin

if (d1<>0) or (d2<>0) or (d3<>0) or (d4<>0) or (d5<>0) or (d6<>0) or (d7<>0) or (d8<>0) or (d9<>0) then
begin
ssql:='insert into #usertemp'+randid+' (och,ag,podreg,c,vverh,d11,d22,d33,d44,d55,d66,d77,d88,d99,reg) values ('+
dm.agentq.fieldbyname('och').asstring+','+
quotedstr(dm.agentq.fieldbyname('naimen').asstring)+','+
quotedstr(dm.agentq.fieldbyname('podreg').asstring)+','+c+','+
dm.agentq.fieldbyname('vverh').asstring+','+inttostr(d1)+','+
inttostr(d2)+','+inttostr(d3)+','+inttostr(d4)+','+inttostr(d5)+','+inttostr(d6)+','+
inttostr(d7)+','+inttostr(d8)+','+inttostr(d9)+','+quotedstr(rstr)+')';
executesql(dm.q1,ssql);
end;

end;

dm.agentq.next;

end;

ssql:='CREATE TABLE [dbo].[#usertempitog_1_'+randid+'] ('+
'[nazv] [nvarchar] (100) COLLATE Cyrillic_General_CI_AS NULL ,'+
'[allp] [nvarchar] (20) COLLATE Cyrillic_General_CI_AS NULL ,'+
'[procnt] [nvarchar] (20) COLLATE Cyrillic_General_CI_AS NULL ,'+
')';
executesql(dm.q1,ssql);

ssql:='CREATE TABLE [dbo].[#usertempitog_2_'+randid+'] ('+
'[reg] [nvarchar] (100) COLLATE Cyrillic_General_CI_AS NULL ,'+
'[c] [nvarchar] (5) COLLATE Cyrillic_General_CI_AS NULL ,'+
'[allp] [nvarchar] (10) COLLATE Cyrillic_General_CI_AS NULL ,'+
'[procnt] [nvarchar] (10) COLLATE Cyrillic_General_CI_AS NULL ,'+
')';
executesql(dm.q1,ssql);

//
ssql:='select ag,d99,podreg from #usertemp'+randid+' where vverh=0';
opensql(dm.q1,ssql);

for i:=1 to dm.q1.recordcount do
begin

prcnt:=dm.q1.fieldbyname('d99').asfloat/(all/100);
prcnt:=roundto(prcnt,-2);

ssql:='insert into #usertempitog_1_'+randid+' (nazv,allp,procnt) values ('+
quotedstr(dm.q1.fieldbyname('ag').asstring+' / '+dm.q1.fieldbyname('podreg').asstring)+','+
quotedstr(dm.q1.fieldbyname('d99').asstring)+','+
quotedstr(floattostr(prcnt))+')';
executesql(dm.q2,ssql);

dm.q1.next;
end;
//

//  
ssql:='select distinct reg,c from #usertemp'+randid;
opensql(dm.q1,ssql);

for i:=1 to dm.q1.recordcount do
begin

ssql:='select sum(d99) from #usertemp'+randid+' where reg='+
quotedstr(dm.q1.fields[0].asstring)+' and c='+quotedstr(dm.q1.fieldbyname('c').asstring);
opensql(dm.q2,ssql);

prcnt:=dm.q2.fields[0].asfloat/(all/100);
prcnt:=roundto(prcnt,-2);

ssql:='insert into #usertempitog_2_'+randid+' (reg,allp,procnt,c) values ('+
quotedstr(dm.q1.fieldbyname('reg').asstring)+','+
quotedstr(dm.q2.fields[0].asstring)+','+
quotedstr(floattostr(prcnt))+','+
quotedstr(dm.q1.fieldbyname('c').asstring)+')';
executesql(dm.q3,ssql);
dm.q1.next;

end;

pr_off;
stat_unlock;

ssql:='select * from #usertemp'+randid+' order by c,och,podreg,vverh';
opensql(dm.qit,ssql);

ssql:='select * from #usertempitog_1_'+randid;
opensql(dm.qit2,ssql);

ssql:='select * from #usertempitog_2_'+randid+' order by c,allp';
opensql(dm.qit3,ssql);

with dm.fr do
begin
LoadFromFile(sharedf+'\reports\ag_prod_10_dat.frf');

if t=0 then FindObject('memo16').memo.text:='10 дат по агентствам на [d] (автобусы)';
if t=1 then FindObject('memo16').memo.text:='10 дат по агентствам на [d] (блоки)';
if t=2 then FindObject('memo16').memo.text:='10 дат по агентствам на [d] (нестандарт)';

ShowReport;
end;

ssql:='drop table #usertempitog_1_'+randid;
executesql(dm.q1,ssql);

ssql:='drop table #usertempitog_2_'+randid;
executesql(dm.q1,ssql);

dtsp.free;

end;

procedure ob_svodka (tip : integer; ch : boolean; dt : tdate);
var i,j,k,n,prvv,prvd,prsv,prsd,tpv,tps  : integer;
vid,bezpr : string;
begin

stat_lock;

pr_on;

case tip of

0:
begin
vid:='a.a_b='+quotedstr('Авт.')+' and b.exk<>'+quotedstr('да');
if ch=true then bezpr:=' and proezd='+quotedstr('без проезда');
end;

1:vid:='a.a_b='+quotedstr('Блок')+' and b.exk<>'+quotedstr('да');

2:vid:='b.exk<>'+quotedstr('да');

3:vid:='b.exk='+quotedstr('да');

4:vid:='a.a_b='+quotedstr('Нест.')+' and b.exk<>'+quotedstr('да');

end;

ssql:='select distinct a.a_b,a.c_gost,b.codeid,b.exk,b.nazvanie,b.podregrazm,c.podreg,d.cr,e.reg from'+
' (((bloki a left join gostinici b on a.c_gost=b.codeid) left join podreg c on b.podregrazm=c.codeid)'+
' left join rpr d on b.podregrazm=d.cpr) left join reg e on d.cr=e.codeid where '+
vid+' and d1>='+quotedstr(formatdatetime(dtf,strtodate(dnopper)))+' and d1<='+quotedstr(formatdatetime(dtf,strtodate(dkopper)))+' order by e.reg,b.nazvanie';
opensql(dm.q1,ssql);

ssql:='delete from #usertemp'+randid;
executesql(dm.q2,ssql);

dtav:=dt-1;
dtas:=dt;

for i:=1 to dm.q1.recordcount do
begin

pr(i,dm.q1.recordcount);

prvv:=0;
prvd:=0;
prsv:=0;
prsd:=0;
tpv:=0;
tps:=0;

ssql:='select a.id,a.data_zai,a.f from clients a left join gostinici b on a.id_gost=b.codeid where id_gost='+
//dm.q1.fields[1].asstring+' and annul<>'+quotedstr('да')+' and data_zai<='+quotedstr(datetostr(dtas));
dm.q1.fields[1].asstring+' and annul<>'+quotedstr('да')+' and data_zai<='+quotedstr(formatdatetime(dtf,dtas))
+' and data_zai>='+quotedstr(formatdatetime(dtf,strtodate(dnopper)));  // эти 2 строки вместо той одной

case tip of
0: ssql:=ssql+' and a.a_b='+quotedstr('Авт.')+' and b.exk<>'+quotedstr('да');
1: ssql:=ssql+' and a.a_b='+quotedstr('Блок')+' and b.exk<>'+quotedstr('да');
2: ssql:=ssql+' and b.exk<>'+quotedstr('да');
3: ssql:=ssql+' and b.exk='+quotedstr('да');
4: ssql:=ssql+' and a.a_b='+quotedstr('Нест.')+' and b.exk<>'+quotedstr('да');
end;

opensql(dm.q2,ssql);

for j:=1 to dm.q2.recordcount do
begin

ssql:='select id from clients where p='+dm.q2.fields[0].asstring+' and annul<>'+quotedstr('да');
opensql(dm.q3,ssql);

for k:=1 to dm.q3.recordcount do
begin

ssql:='select id,tip_proezda from clients where p='+dm.q3.fields[0].asstring+' and annul<>'+quotedstr('да')+bezpr;
opensql(dm.q4,ssql);

for n:=1 to dm.q4.recordcount do
begin

if (tip=3) and (dm.q1.fieldbyname('a_b').asstring='Блок') then  // для блочной экс., где считаем кол-во людей по формату: 12 человек = №12
begin

if dm.q2.fields[1].AsDateTime=dtas then

begin
if pos('№',dm.q2.fields[2].asstring)<>0 then prsv:=prsv+strtoint(copy(dm.q2.fields[2].asstring,(pos('№',dm.q2.fields[2].asstring)+1),(length(dm.q2.fields[2].asstring)-pos('№',dm.q2.fields[2].asstring))));
if pos('#',dm.q2.fields[2].asstring)<>0 then prsv:=prsv+strtoint(copy(dm.q2.fields[2].asstring,(pos('#',dm.q2.fields[2].asstring)+1),(length(dm.q2.fields[2].asstring)-pos('#',dm.q2.fields[2].asstring))));
end;

if dm.q2.fields[1].AsDateTime<=dtav then
begin
if pos('№',dm.q2.fields[2].asstring)<>0 then prvv:=prvv+strtoint(copy(dm.q2.fields[2].asstring,(pos('№',dm.q2.fields[2].asstring)+1),(length(dm.q2.fields[2].asstring)-pos('№',dm.q2.fields[2].asstring))));
if pos('#',dm.q2.fields[2].asstring)<>0 then prvv:=prvv+strtoint(copy(dm.q2.fields[2].asstring,(pos('#',dm.q2.fields[2].asstring)+1),(length(dm.q2.fields[2].asstring)-pos('#',dm.q2.fields[2].asstring))));
end;

end
else
begin

if dm.q2.fields[1].AsDateTime=dtas then
begin
if (dm.q4.fields[1].asstring='взрослый') or (dm.q4.fields[1].asstring='ребенок 5-12') then prsv:=prsv+1;
if dm.q4.fields[1].asstring='ребенок до 5' then prsd:=prsd+1;
if dm.q4.fields[1].asstring='только проезд' then tps:=tps+1;
end;

if dm.q2.fields[1].AsDateTime<=dtav then
begin
if (dm.q4.fields[1].asstring='взрослый') or (dm.q4.fields[1].asstring='ребенок 5-12') then prvv:=prvv+1;
if dm.q4.fields[1].asstring='ребенок до 5' then prvd:=prvd+1;
if dm.q4.fields[1].asstring='только проезд' then tpv:=tpv+1;
end;

end;

dm.q4.next;

end;

dm.q3.next;

end;

dm.q2.next;

end;

ssql:='insert into #usertemp'+randid+' (prvv, prvd, prsv, prsd, gost, podreg, reg, tps, tpv) values ('+inttostr(prvv)+','+inttostr(prvd)+','+inttostr(prsv)+','+inttostr(prsd)+','+quotedstr(dm.q1.fieldbyname('nazvanie').asstring)+','+quotedstr(dm.q1.fieldbyname('podreg').asstring)+','+quotedstr(dm.q1.fieldbyname('reg').asstring)+','+inttostr(tps)+','+inttostr(tpv)+')';
executesql(dm.q5,ssql);

dm.q1.next;

end;

ssql:='select * from #usertemp'+randid+' order by reg,podreg,gost';
opensql(dm.qit,ssql);

dm.fr.LoadFromFile(sharedf+'\reports\svodka.frf');

dm.fr.PrepareReport;

if all_st=false then dm.fr.ShowReport else dm.fr.PrintPreparedReport('', 1, true, frall);

stat_unlock;
pr_off;

end;

procedure agcbfill (obj : tobject);
var i : integer;
begin

if (obj is tcxcombobox) then
begin

dm.agentq.first;

with (obj as tcxcombobox) do
begin

clear;

if dm.agentq.recordcount<>0 then
begin

for i:=1 to dm.agentq.recordcount do
begin
properties.Items.add(dm.agentq.fieldbyname('naimen').asstring+' // '+dm.agentq.fieldbyname('podreg').asstring);
dm.agentq.next;
end;

end;

end;

end;

end;

function zap (p : string) : string;
var pp : string;
begin

if pos(',',p)<>0 then
pp:=copy(p,1,pos(',',p)-1)+'.'+copy(p,pos(',',p)+1,length(p)-pos(',',p))
else
pp:=p;

if pos(' ',pp)<>0 then
begin

while pos(' ',pp)<>0 do
 begin
 pp:=copy(pp,1,pos(' ',pp)-1)+''+copy(pp,pos(' ',pp)+1,length(pp)-pos(' ',pp));
 end;

end;

result:=pp;

end;

function mesiac (nazv : string) : string;
var n : integer;
begin

n:=strtoint(copy(nazv,4,2));

case n of
1: result:='январь';
2: result:='февраль';
3: result:='март';
4: result:='апрель';
5: result:='май';
6: result:='июнь';
7: result:='июль';
8: result:='август';
9: result:='сентябрь';
10: result:='октябрь';
11: result:='ноябрь';
12: result:='декабрь';
end;

end;

procedure sm (t : string);
begin
showmessage(t);
end;

function resh_gost (id_g: string):integer;
begin

ssql:='select rchb from gostinici where codeid='+id_g;
opensql(dm.q1,ssql);

if (dm.q1.FieldByName('rchb').asstring='08:00:00') or (dm.q1.FieldByName('rchb').asstring='09:00:00')
then result:=1
else
result:=2;

end;

procedure bl_otch (g,dt1,dt2,kmo_n,kmd_n,option : string);
var i,j,k: integer;
dt : tdatetime;
dts, dres, mes : string;
begin

j:=strtoint(floattostr(strtodate(dt2)-strtodate(dt1)));

if j<=1 then
begin
sm('Выбран некорректный период.');
exit;
end;

ssql:='delete from #usertemp'+randid;
executesql(dm.q1,ssql);

if reshim=2 then
begin

dt:=strtodate(dt1);
dres:='';

for i:=0 to j do
begin
dts  := datetostr(dt+i);
dres := dres+char(#39)+dts+char(#39)+' , ';
end;

dres:=copy(dres,1,length(dres)-3);

ssql:='select distinct a.c_kat,a.n_id,a.n,b.kat from bloki a left join kat b on a.c_kat=b.codeid'+
' where a.id in (select p from bloki where (c_gost='+g+')  and (a_b='+quotedstr('Блок')+
') and (m_id<>0) and '+'((d in ('+dres+')))) order by n_id';
opensql(dm.q1,ssql);

pr_on;

for k:=1 to dm.q1.recordcount do // список номеров
begin

pr(k,dm.q1.recordcount);

dt:=(strtodate(dt1));
dts:=datetostr(dt);

for i:=1 to j+1 do               // перечень дат
begin

mes:=mesiac(dts);

ssql:='select count(*) from bloki where c_gost='+g+
'  and a_b='+quotedstr('Блок')+' and '+
'((d='+quotedstr(dts)+') and (id_p_1pd<>0)) and ((tip=2) or (tip=3)) and (p in (select id from bloki where n_id='+
dm.q1.fieldbyname('n_id').asstring+'))';
opensql(dm.q2,ssql);

ssql:='insert into #usertemp'+randid+' (kat,mes,dat,pd,n) values ('+quotedstr(dm.q1.fieldbyname('kat').asstring+
' # '+dm.q1.fieldbyname('n').asstring+' & '+dm.q1.fieldbyname('n_id').asstring)+
','+quotedstr(mes)+','+quotedstr(copy(dts,1,2))+','+quotedstr('1ПД')+','+quotedstr(dm.q2.fields[0].asstring)+')';
executesql(dm.q3,ssql);

ssql:='select count(*) from bloki where c_gost='+g+
'  and a_b='+quotedstr('Блок')+' and '+
'((d='+quotedstr(dts)+') and (id_p_2pd<>0)) and ((tip=2) or (tip=3)) and (p in (select id from bloki where n_id='+
dm.q1.fieldbyname('n_id').asstring+'))';
opensql(dm.q2,ssql);

ssql:='insert into #usertemp'+randid+' (kat,mes,dat,pd,n) values ('+quotedstr(dm.q1.fieldbyname('kat').asstring+
' # '+dm.q1.fieldbyname('n').asstring+' & '+dm.q1.fieldbyname('n_id').asstring)+
','+quotedstr(mes)+','+quotedstr(copy(dts,1,2))+','+quotedstr('2ПД')+','+quotedstr(dm.q2.fields[0].asstring)+')';
executesql(dm.q3,ssql);

dt   := dt + 1;
dts  := datetostr(dt);
end;

dm.q1.next;
end;

ssql:='select distinct kat from #usertemp'+randid;
opensql(dm.qit,ssql);

ssql:='select kat,mes,dat,pd,n from #usertemp'+randid;
opensql(dm.qit2,ssql);

pr_off;

with dm.fr do
begin
LoadFromFile(sharedf+'\reports\bl_otch.frf');
//FindObject('memo16').memo.text:='Сводка по агентству '+cb11.text+' на '+de1.text;
ShowReport;
end;

end
else        
begin

end;

end;

procedure f_clear_b (t:integer);
begin

case t of
1: begin

with FBlz_vvod do
begin

te1.text:='';
te2.text:='';
te3.text:='';
te4.text:='';
te5.text:='';
te6.text:='';
idte.text:='';

end;
end;

2: begin

with FNest_vvod do
begin

te1.text:='';
te2.text:='';
te3.text:='';
te4.text:='';
te5.text:='';
te6.text:='';
idte.text:='';

end;
end;

end;

end;

procedure k_n_clear;
begin
with FBlz_vvod do
begin
katc.Clear;
mlb.Clear;
end;
end;

procedure k_n_clear2;
begin
with FNest_vvod do
begin
katc.Clear;
mlb.Clear;
end;
end;

function mesto_n_bl (nazv: string):string;
begin
result:=copy(nazv, pos('#',nazv)+2, length(nazv)-pos('#',nazv));
end;

procedure mesta_v_nom_bl (k1,k2:integer);
var i: integer;           
begin

ssql:='select count(*) from clients where nz='+nz+
' and new_cl=1 and id_kat=(select codeid from kat where kat='+quotedstr('осн. место')+')';
opensql(dm.q1,ssql);

k1:=k1-dm.q1.fields[0].asinteger;

ssql:='select count(*) from clients where nz='+nz+
' and new_cl=1 and id_kat=(select codeid from kat where kat='+quotedstr('доп. место')+')';
opensql(dm.q1,ssql);

k2:=k2-dm.q1.fields[0].asinteger;

FBlz_vvod.mlb.Items.Clear;

for i:=1 to k1 do
begin
FBlz_vvod.mlb.Items.add('осн. место');
end;

for i:=1 to k2 do
begin
FBlz_vvod.mlb.Items.add('доп. место');
end;

if FBlz_vvod.mlb.Items.count<>0 then FBlz_vvod.mlb.itemindex:=0; 

end;

procedure mesta_v_nom_nest (k1,k2:integer);
var i: integer;
begin

ssql:='select count(*) from clients where nz='+nz+
' and new_cl=1 and id_kat=(select codeid from kat where kat='+quotedstr('осн. место')+')';
opensql(dm.q1,ssql);

k1:=k1-dm.q1.fields[0].asinteger;

ssql:='select count(*) from clients where nz='+nz+
' and new_cl=1 and id_kat=(select codeid from kat where kat='+quotedstr('доп. место')+')';
opensql(dm.q1,ssql);

k2:=k2-dm.q1.fields[0].asinteger;

FNest_vvod.mlb.Items.Clear;

for i:=1 to k1 do
begin
FNest_vvod.mlb.Items.add('осн. место');
end;

for i:=1 to k2 do
begin
FNest_vvod.mlb.Items.add('доп. место');
end;

if FNest_vvod.mlb.Items.count<>0 then FNest_vvod.mlb.itemindex:=0; 

end;

procedure bl_sel_off (mode : integer);
begin

case mode of
1: begin
with fblz_vvod do
begin
de2.enabled:=false;
de3.enabled:=false;
cb1.enabled:=false;
cb2.enabled:=false;
b12.enabled:=false;
katc.enabled:=false;
end;
end;

2: begin
with fnest_vvod do
begin
cb11.enabled:=false;
cb12.enabled:=false;
cb1.enabled:=false;
cb2.enabled:=false;
b12.enabled:=false;
katc.enabled:=false;
end;
end;

end;

end;

procedure init_cl_b (t,mode : string);
begin

if mode='б' then
begin

if t='i' then
begin

// без места или ид места
if fblz_vvod.bmcb.Checked then
begin
bez_mesta:='да';
m_id:='0';
end
else
begin
bez_mesta:='нет';
m_id:='0';
end;

// ид человека
if fblz_vvod.idte.text='' then
begin
ssql:='select max(id_pers) from clients';
opensql(dm.q1,ssql);
id_pers:=inttostr(dm.q1.fields[0].asinteger+1);
end
else id_pers:=fblz_vvod.idte.text;

ssql:='insert into clients (nz,id_pers,tip) values ('+nz+','+id_pers+',0)';
executesql(dm.q1,ssql);

end;

// ид питания
if fblz_vvod.pitlb.itemindex<>-1 then pit_id:=pitan_id(fblz_vvod.pitlb.Items[fblz_vvod.pitlb.itemindex]) else pit_id:='0';

// ид трансфера
if fblz_vvod.trcb.text<>'' then trans_id:=t_id(fblz_vvod.trcb.text) else trans_id:='0';

proezd:='';
tip_proezda:='';

// тип проезда
case fblz_vvod.rg3.itemindex of
0: tip_proezda:='взрослый';
1: tip_proezda:='ребенок 5-12';
2: tip_proezda:='ребенок до 5';
end;

// выкупленное место
if fblz_vvod.vmcb.Checked then vikup:='да' else vikup:='нет';

// подселение                                                                                                                                                                                                                                                                                  
if fblz_vvod.rg1.itemindex=0 then pods:='нет' else pods:='да';

end; // конец mode='б'

if mode='н' then
begin

if t='i' then
begin

// без места или ид места
if FNest_vvod.bmcb.Checked then
begin
bez_mesta:='да';
m_id:='0';
end
else
begin
bez_mesta:='нет';
m_id:='0';
end;

// ид человека
if FNest_vvod.idte.text='' then
begin
ssql:='select max(id_pers) from clients';
opensql(dm.q1,ssql);
id_pers:=inttostr(dm.q1.fields[0].asinteger+1);
end
else id_pers:=FNest_vvod.idte.text;

ssql:='insert into clients (nz,id_pers,tip) values ('+nz+','+id_pers+',0)';
executesql(dm.q1,ssql);

end;

// ид питания
if FNest_vvod.pitlb.itemindex<>-1 then pit_id:=pitan_id(FNest_vvod.pitlb.Items[FNest_vvod.pitlb.itemindex])
else pit_id:='0';

// ид трансфера
if FNest_vvod.trcb.text<>'' then trans_id:=t_id(FNest_vvod.trcb.text) else trans_id:='0';

{tm1_id:='0';   
tm2_id:='0';
tm3_id:='0';

proezd:='';
tip_proezda:=''; }

// ид ТМ1
if FNest_vvod.tm1.text<>'' then tm1_id:=podregion_id(FNest_vvod.tm1.text) else tm1_id:='0';
// ид ТМ2
if FNest_vvod.tm2.text<>'' then tm2_id:=podregion_id(FNest_vvod.tm2.text) else tm2_id:='0';
// ид ТМ3
if FNest_vvod.tm3.text<>'' then tm3_id:=podregion_id(FNest_vvod.tm3.text) else tm3_id:='0';

// проезд
case FNest_vvod.rg2.itemindex of
0: proezd:='город-база-город';
1: proezd:='город-база';
2: proezd:='база-город';
3: proezd:='без проезда';
end;

// тип проезда
case FNest_vvod.rg3.itemindex of
0: tip_proezda:='взрослый';
1: tip_proezda:='ребенок 5-12';
2: tip_proezda:='ребенок до 5';
3: tip_proezda:='только проезд';
end;

// выкупленное место
if FNest_vvod.vmcb.Checked then vikup:='да' else vikup:='нет';

// подселение                                                                                                                                                                                                                                                                                  
if FNest_vvod.rg1.itemindex=0 then pods:='нет' else pods:='да';

end; // конец mode='н'

end;

procedure pitanie_v_nom_bl (gost_id:string);
var i: integer;
begin

FBlz_vvod.pitlb.clear;

ssql:='select distinct b.pit from gostpit a left join pit b on a.c_pit=b.codeid where a_b='+quotedstr('Блок')+' and c_gost='+gost_id;
opensql(dm.q1,ssql);

for i:=1 to dm.q1.recordcount do
begin
FBlz_vvod.pitlb.items.add(dm.q1.fields[0].asstring);
dm.q1.next;
end;

end;

procedure pitanie_v_nom_nest (gost_id:string);
var i: integer;
begin

fnest_vvod.pitlb.clear;

ssql:='select distinct b.pit from gostpit a left join pit b on a.c_pit=b.codeid where a_b='+quotedstr('Нест.')+' and c_gost='+gost_id;
opensql(dm.q1,ssql);

for i:=1 to dm.q1.recordcount do
begin
fnest_vvod.pitlb.items.add(dm.q1.fields[0].asstring);
dm.q1.next;
end;

end;

procedure blb_off;
begin
with FZaiavki do
begin
q5.close;
q6.close;
b4.enabled:=false;
b5.enabled:=false;
cb4.Properties.Items.Clear;
end;
end;

procedure blb_on;
begin
with FZaiavki do
begin
b4.enabled:=true;
b5.enabled:=true;
end;
end;

procedure nest_off;
begin
with FZaiavki do
begin
q7.close;
q8.close;
b15.enabled:=false;
cb9.Properties.Items.Clear;
end;
end;

procedure nest_on;
begin
with FZaiavki do
begin
b15.enabled:=true;
end;
end;

function bl_nom_p (nom_poln_nazv: string) :string;
var i: integer;
nnn : string;
begin
i:=pos('&',nom_poln_nazv);
nnn:=copy(nom_poln_nazv,pos('&',nom_poln_nazv)+2,10);
result:=nnn;
end;

procedure q2refr_bl (nnz : string);
begin

ssql:='select * from clients where tip<>0'+
' and nz='+nnz+' and annul<>'+quotedstr('да');
opensql(FBlz_vvod.q2,ssql);

FBlz_vvod.idte.text:='';

if FBlz_vvod.q2.recordcount<>0 then
begin
with FBlz_vvod do
begin
tr1.FullExpand;
q2.first;
tr1.onclick(FBlz_vvod.b4);
q2.Last;
tr1.onclick(FBlz_vvod.b4);
f_clear_b(1);
end;
end;

end;

procedure q2refr_nest (nnz : string);
begin

ssql:='select * from clients where tip<>0'+
' and nz='+nnz+' and annul<>'+quotedstr('да');
opensql(FNest_vvod.q2,ssql);

FNest_vvod.idte.text:='';

if FNest_vvod.q2.recordcount<>0 then
begin
with FNest_vvod do
begin
tr1.FullExpand;
q2.first;
tr1.onclick(FNest_vvod.b4);
q2.Last;
tr1.onclick(FNest_vvod.b4);
f_clear_b(2);
end;
end;

end;

procedure nom_v_gost_bl (g,dt1,dt2,kmo_n,kmd_n : string);
var i,j,k,l: integer;
dt : tdatetime;
dts, dres, k_add : string;
est,udovl : boolean;
begin

FBlz_vvod.katc.properties.items.clear;
FBlz_vvod.katc.text:='';

if reshim=2 then
begin

j:=strtoint(floattostr(strtodate(dt2)-strtodate(dt1)));

if j<0 then
begin
sm('Выбран некорректный период.');
exit;
end;

dt:=(strtodate(dt1)+1); // уменьшаю период на день с начала
dts:=datetostr(dt);

for i:=1 to j-1 do // уменьшаю период на день до конца
begin

dres:=dres+char(#39)+dts+char(#39)+' , ';

dt  := dt + 1;
dts := datetostr(dt);

end;

dres:=copy(dres,1,length(dres)-3);

if j<>1 then ssql:='select distinct c_kat,n_id,n from bloki where id in (select p from bloki where (c_gost='+g+
')  and (a_b='+quotedstr('Блок')+
') and (m_id<>0) and '+
'((d in ('+dres+') and (id_pers=0)) or (((d='+quotedstr(dt1)+
') and (id_p_2pd=0)) or ((d='+quotedstr(dt2)+
')) and (id_p_1pd=0)))) order by n_id'

else

ssql:='select distinct c_kat,n_id,n from bloki where id in (select p from bloki where (c_gost='+g+
')  and (a_b='+quotedstr('Блок')+
') and (m_id<>0) and '+
'(((d='+quotedstr(dt1)+
') and (id_p_2pd=0)) or ((d='+quotedstr(dt2)+
')) and (id_p_1pd=0))) order by n_id';

opensql(dm.q1,ssql);

pr_on;

for i:=1 to dm.q1.recordcount do
begin

pr(i,dm.q1.recordcount);

dts:=dt1;
udovl:=true;

for l:=1 to j+1 do 
begin

if (l=1) and (kmo_n<>'0') and (udovl=true) then
begin
ssql:='select count(*) from bloki where (c_gost='+g+
')  and (a_b='+quotedstr('Блок')+') and '+
'((d='+quotedstr(dts)+') and (id_p_2pd=0)) and (tip=2) and (p in (select id from bloki where c_kat='+
dm.q1.fieldbyname('c_kat').asstring+' and n_id='+dm.q1.fieldbyname('n_id').asstring+
' and n='+dm.q1.fieldbyname('n').asstring+'))';
opensql(dm.q2,ssql);
if dm.q2.fields[0].asinteger<strtoint(kmo_n) then udovl:=false;
end;

if (l<>1) and (l<>j+1) and (kmo_n<>'0') and (udovl=true) then
begin
ssql:='select count(*) from bloki where (c_gost='+g+
')  and (a_b='+quotedstr('Блок')+') and '+
'(d='+quotedstr(dts)+') and (tip=2) and (id_pers=0) and (p in (select id from bloki where c_kat='+
dm.q1.fieldbyname('c_kat').asstring+' and n_id='+dm.q1.fieldbyname('n_id').asstring+
' and n='+dm.q1.fieldbyname('n').asstring+'))';
opensql(dm.q2,ssql);
if dm.q2.fields[0].asinteger<strtoint(kmo_n) then udovl:=false;
end;

if (l=j+1) and (kmo_n<>'0') and (udovl=true) then
begin
ssql:='select count(*) from bloki where (c_gost='+g+
')  and (a_b='+quotedstr('Блок')+') and '+
'((d='+quotedstr(dts)+') and (id_p_1pd=0)) and (tip=2) and (p in (select id from bloki where c_kat='+
dm.q1.fieldbyname('c_kat').asstring+' and n_id='+dm.q1.fieldbyname('n_id').asstring+' and n='+
dm.q1.fieldbyname('n').asstring+'))';
opensql(dm.q2,ssql);
if dm.q2.fields[0].asinteger<strtoint(kmo_n) then udovl:=false;
end;

// на доп. места

if (l=1) and (kmd_n<>'0') and (udovl=true) then
begin
ssql:='select count(*) from bloki where (c_gost='+g+
')  and (a_b='+quotedstr('Блок')+') and '+
'((d='+quotedstr(dts)+') and (id_p_2pd=0)) and (tip=3) and (p in (select id from bloki where c_kat='+
dm.q1.fieldbyname('c_kat').asstring+' and n_id='+dm.q1.fieldbyname('n_id').asstring+' and n='+
dm.q1.fieldbyname('n').asstring+'))';
opensql(dm.q2,ssql);
if dm.q2.fields[0].asinteger<strtoint(kmd_n) then udovl:=false;
end;

if (l<>1) and (l<>j+1) and (kmd_n<>'0') and (udovl=true) then
begin
ssql:='select count(*) from bloki where (c_gost='+g+
')  and (a_b='+quotedstr('Блок')+') and '+
'(d='+quotedstr(dts)+') and (tip=3) and (id_pers=0) and (p in (select id from bloki where c_kat='+
dm.q1.fieldbyname('c_kat').asstring+' and n_id='+dm.q1.fieldbyname('n_id').asstring+' and n='+
dm.q1.fieldbyname('n').asstring+'))';
opensql(dm.q2,ssql);
if dm.q2.fields[0].asinteger<strtoint(kmd_n) then udovl:=false;
end;

if (l=j+1) and (kmd_n<>'0') and (udovl=true) then
begin
ssql:='select count(*) from bloki where (c_gost='+g+
')  and (a_b='+quotedstr('Блок')+') and '+
'((d='+quotedstr(dts)+') and (id_p_1pd=0)) and (tip=3) and (p in (select id from bloki where c_kat='+
dm.q1.fieldbyname('c_kat').asstring+' and n_id='+dm.q1.fieldbyname('n_id').asstring+' and n='+
dm.q1.fieldbyname('n').asstring+'))';
opensql(dm.q2,ssql);
if dm.q2.fields[0].asinteger<strtoint(kmd_n) then udovl:=false;
end;

dts := datetostr(strtodate(dts)+1);

end;

if udovl=true then
begin

est:=false;

k_add:=kateg(dm.q1.fieldbyname('c_kat').asstring)+' # '+dm.q1.fieldbyname('n').asstring+
' & '+dm.q1.fieldbyname('n_id').asstring;

for k:=0 to FBlz_vvod.katc.properties.items.count-1 do
begin
if FBlz_vvod.katc.properties.items[k]=k_add then est:=true;
end;

if (est=false) and (kateg(dm.q1.fieldbyname('c_kat').asstring)<>'') then
FBlz_vvod.katc.properties.items.add(k_add);

end;

dm.q1.next;

end;

if FBlz_vvod.katc.Properties.Items.Count<>0 then FBlz_vvod.katc.text:=FBlz_vvod.katc.Properties.Items[0];

pr_off;

end
else // если режим=1, т.е. нет запара с половинами номеров !!!
begin

j:=strtoint(floattostr(strtodate(dt2)-strtodate(dt1)));

if j<0 then
begin
sm('Выбран некорректный период.');
exit;
end;

dt:=(strtodate(dt1));
dts:=datetostr(dt);

for i:=1 to j+1 do
begin

dres:=dres+char(#39)+dts+char(#39)+' , ';

dt  := dt + 1;
dts := datetostr(dt);

end;

dres:=copy(dres,1,length(dres)-3);

if j<>1 then ssql:='select distinct c_kat,n_id,n from bloki where id in (select p from bloki where (c_gost='+g+
')  and (a_b='+quotedstr('Блок')+
') and (m_id<>0) and '+
'((d in ('+dres+') and (id_pers=0)))) order by n_id'

else

ssql:='select distinct c_kat,n_id,n from bloki where id in (select p from bloki where (c_gost='+g+
')  and (a_b='+quotedstr('Блок')+
') and (m_id<>0) and '+
'(((d='+quotedstr(dt1)+
') and (id_pers=0)) or ((d='+quotedstr(dt2)+
')) and (id_pers=0))) order by n_id';

opensql(dm.q1,ssql);

pr_on;

for i:=1 to dm.q1.recordcount do
begin

pr(i,dm.q1.recordcount);

dts:=dt1;
udovl:=true;

for l:=1 to j+1 do 
begin

if (l=1) and (kmo_n<>'0') and (udovl=true) then
begin
ssql:='select count(*) from bloki where (c_gost='+g+
')  and (a_b='+quotedstr('Блок')+') and '+
'((d='+quotedstr(dts)+') and (id_pers=0)) and (tip=2) and (p in (select id from bloki where c_kat='+
dm.q1.fieldbyname('c_kat').asstring+' and n_id='+dm.q1.fieldbyname('n_id').asstring+
' and n='+dm.q1.fieldbyname('n').asstring+'))';
opensql(dm.q2,ssql);
if dm.q2.fields[0].asinteger<strtoint(kmo_n) then udovl:=false;
end;

if (l<>1) and (l<>j+1) and (kmo_n<>'0') and (udovl=true) then
begin
ssql:='select count(*) from bloki where (c_gost='+g+
')  and (a_b='+quotedstr('Блок')+') and '+
'(d='+quotedstr(dts)+') and (tip=2) and (p in (select id from bloki where c_kat='+
dm.q1.fieldbyname('c_kat').asstring+' and n_id='+dm.q1.fieldbyname('n_id').asstring+
' and n='+dm.q1.fieldbyname('n').asstring+'))';
opensql(dm.q2,ssql);
if dm.q2.fields[0].asinteger<strtoint(kmo_n) then udovl:=false;
end;

if (l=j+1) and (kmo_n<>'0') and (udovl=true) then
begin
ssql:='select count(*) from bloki where (c_gost='+g+
')  and (a_b='+quotedstr('Блок')+') and '+
'((d='+quotedstr(dts)+') and (id_pers=0)) and (tip=2) and (p in (select id from bloki where c_kat='+
dm.q1.fieldbyname('c_kat').asstring+' and n_id='+dm.q1.fieldbyname('n_id').asstring+' and n='+
dm.q1.fieldbyname('n').asstring+'))';
opensql(dm.q2,ssql);
if dm.q2.fields[0].asinteger<strtoint(kmo_n) then udovl:=false;
end;

// на доп. места

if (l=1) and (kmd_n<>'0') and (udovl=true) then
begin
ssql:='select count(*) from bloki where (c_gost='+g+
')  and (a_b='+quotedstr('Блок')+') and '+
'((d='+quotedstr(dts)+') and (id_pers=0)) and (tip=3) and (p in (select id from bloki where c_kat='+
dm.q1.fieldbyname('c_kat').asstring+' and n_id='+dm.q1.fieldbyname('n_id').asstring+' and n='+
dm.q1.fieldbyname('n').asstring+'))';
opensql(dm.q2,ssql);
if dm.q2.fields[0].asinteger<strtoint(kmd_n) then udovl:=false;
end;

if (l<>1) and (l<>j+1) and (kmd_n<>'0') and (udovl=true) then
begin
ssql:='select count(*) from bloki where (c_gost='+g+
')  and (a_b='+quotedstr('Блок')+') and '+
'(d='+quotedstr(dts)+') and (tip=3) and (p in (select id from bloki where c_kat='+
dm.q1.fieldbyname('c_kat').asstring+' and n_id='+dm.q1.fieldbyname('n_id').asstring+' and n='+
dm.q1.fieldbyname('n').asstring+'))';
opensql(dm.q2,ssql);
if dm.q2.fields[0].asinteger<strtoint(kmd_n) then udovl:=false;
end;

if (l=j+1) and (kmd_n<>'0') and (udovl=true) then
begin
ssql:='select count(*) from bloki where (c_gost='+g+
')  and (a_b='+quotedstr('Блок')+') and '+
'((d='+quotedstr(dts)+') and (id_pers=0)) and (tip=3) and (p in (select id from bloki where c_kat='+
dm.q1.fieldbyname('c_kat').asstring+' and n_id='+dm.q1.fieldbyname('n_id').asstring+' and n='+
dm.q1.fieldbyname('n').asstring+'))';
opensql(dm.q2,ssql);
if dm.q2.fields[0].asinteger<strtoint(kmd_n) then udovl:=false;
end;

dts := datetostr(strtodate(dts)+1);

end;

if udovl=true then
begin

est:=false;

k_add:=kateg(dm.q1.fieldbyname('c_kat').asstring)+' # '+dm.q1.fieldbyname('n').asstring+
' & '+dm.q1.fieldbyname('n_id').asstring;

for k:=0 to FBlz_vvod.katc.properties.items.count-1 do
begin
if FBlz_vvod.katc.properties.items[k]=k_add then est:=true;
end;

if (est=false) and (kateg(dm.q1.fieldbyname('c_kat').asstring)<>'') then
FBlz_vvod.katc.properties.items.add(k_add);

end;

dm.q1.next;

end;

if FBlz_vvod.katc.Properties.Items.Count<>0 then FBlz_vvod.katc.text:=FBlz_vvod.katc.Properties.Items[0];

pr_off;

end;

end;

procedure pr (posit,count:extended);
begin
fprogress.pb1.Position:=round(posit*100/count);
fprogress.Refresh;
end;

procedure pr_on;
begin

if not assigned(fprogress) then Application.CreateForm(Tfprogress, fprogress);
fprogress.Show;

end;

procedure pr_off;
begin
fprogress.close;
end;

procedure vau_lock;
begin
fvauch.b1.enabled:=false;
fvauch.b2.enabled:=false;
fvauch.b3.enabled:=false;
fvauch.b4.enabled:=false;
end;

procedure vau_unlock;
begin
fvauch.b1.enabled:=true;
fvauch.b2.enabled:=true;
fvauch.b3.enabled:=true;
fvauch.b4.enabled:=true;
end;

procedure vau_refr;
begin
ssql:='select a.*,b.m,c.napr from (clients a full outer join gostnom b on a.id_m=b.codeid) left join gostinici c on a.id_gost=c.codeid where a.tip<>0 and a.nz='+nz+' and a.annul<>'+quotedstr('да');
opensql(fvauch.qall,ssql);
fvauch.tr1.FullExpand;
fvauch.qall.locate('id',lid,[]);
end;

procedure podtv_prep (t,struc_tip:string);
var i,tippr: integer;
pod,dm,per_z,opl_do,daten,datek,nest_tip : string;
tolkopr : boolean;
begin

fpodtver.qall.first;
fpodtver.qcl.first;

pod:='';

per_z:=fpodtver.qall.fieldbyname('per').asstring;
nest_tip:=fpodtver.qall.fieldbyname('nest_tip').asstring;
spo:=fpodtver.qall.fieldbyname('spo').asstring;

tolkopr:=false;
tippr:=0;

if fpodtver.cb3.text='наличн.' then opl_do:=' до '+
fpodtver.qall.fieldbyname('data_opl').asstring else opl_do:=' по счету № '+fpodtver.te5.text;

//

for i:=1 to fpodtver.qcl.recordcount do
begin

if fpodtver.qcl.fieldbyname('pods').asstring='да' then pod:='+';
if fpodtver.qcl.fieldbyname('m').asstring='доп. место' then dm:='да' else dm:='нет';

fpodtver.qcl.next;
end;

//

fpodtver.qcl.first;

if (fpodtver.qcl.fieldbyname('tip_proezda').asstring='только проезд') and (tippr=0) then
begin
if fpodtver.qcl.fieldbyname('proezd').asstring='город-база-город' then tippr:=6;
if fpodtver.qcl.fieldbyname('proezd').asstring='город-база' then tippr:=2;
if fpodtver.qcl.fieldbyname('proezd').asstring='база-город' then tippr:=5;
tolkopr:=true;
end;

if (fpodtver.qcl.fieldbyname('proezd').asstring='без проезда') and (tippr=0) then tippr:=4;

if ((fpodtver.qcl.fieldbyname('tip_proezda').asstring<>'только проезд') or
(fpodtver.qcl.fieldbyname('proezd').asstring<>'без проезда')) and (tippr=0) then
begin
if fpodtver.qcl.fieldbyname('proezd').asstring='город-база-город' then tippr:=1;
if fpodtver.qcl.fieldbyname('proezd').asstring='город-база' then tippr:=2;
if fpodtver.qcl.fieldbyname('proezd').asstring='база-город' then tippr:=3;
end;

//

if struc_tip<>'Б' then
begin

case tippr of

0:
begin
if t='Авт.' then
begin
sm('Не определен тип проезда. Обратитесь к разработчику.');
exit;
end;

daten:=copy(per_z,1,10);
datek:=copy(per_z,12,10);
end;

1:
begin
daten:=copy(per_z,1,10);
datek:=copy(per_z,12,10);
end;

2:
begin
daten:=copy(per_z,1,10);
datek:='---';
end;

3:
begin
daten:='---';
datek:=copy(per_z,12,10);
end;

4:
begin
daten:=datetostr(strtodate(copy(per_z,1,10))+1);
datek:=datetostr(strtodate(copy(per_z,12,10))-1);
end;

5:
begin
daten:='---';
datek:=datetostr(strtodate(copy(per_z,12,10))-1);
end;

6:
begin
daten:=copy(per_z,1,10);
datek:=datetostr(strtodate(copy(per_z,12,10))-1);
end;

end;

end
else
begin // когда t=Нест и struc_tip=Б
daten:=copy(per_z,1,10);
datek:=copy(per_z,12,10);
end;

per_z:=daten+' - '+datek;

//

if tolkopr=true then
begin

with fpodtver.fr1 do
begin

LoadFromFile(sharedf+'\reports\podt_tp.frf');

FindObject('memo47').memo.text:=fpodtver.cb3.text;
FindObject('memo19').memo.text:=fpodtver.te1.text;
FindObject('memo38').memo.text:=fpodtver.te2.text;
FindObject('memo40').memo.text:=fpodtver.te3.text;
FindObject('memo45').memo.text:=fpodtver.te4.text;

FindObject('memo86').memo.text:=per_z;
FindObject('memo36').memo.text:=opl_do;
FindObject('mspo').memo.text:=spo;

preparereport;
end;

end
else
begin

with fpodtver.fr1 do
begin

if t='Авт.' then
begin

LoadFromFile(sharedf+'\reports\podt.frf');

if exk=false then
 begin
  if t='Нест.' then
  begin
  if nest_tip='А' then FindObject('memo3').memo.text:='Нестандартный заезд по программе "Автобусом к морю" '+floattostr(strtodate(datek)-strtodate(daten)+1)+' д. '+floattostr(strtodate(datek)-strtodate(daten))+' н.';
  end
  else FindObject('memo3').memo.text:='Программа "Автобусом к морю"';
 end
else
begin
FindObject('memo30').memo.text:='';
FindObject('memo48').memo.text:='';
FindObject('memo53').memo.text:='';
FindObject('memo3').memo.text:='Экскурсионная программа';
end;

FindObject('memo31').memo.text:=fpodtver.cb1.text;
FindObject('memo42').memo.text:=fpodtver.cb2.text;
FindObject('memo47').memo.text:=fpodtver.cb3.text;

FindObject('memo36').memo.text:=opl_do;

if pod='+' then FindObject('memo56').memo.text:='Заявка подтверждается только при нахождении подселения.';

FindObject('memo19').memo.text:=fpodtver.te1.text;
FindObject('memo38').memo.text:=fpodtver.te2.text;
FindObject('memo40').memo.text:=fpodtver.te3.text;

FindObject('memo45').memo.text:=fpodtver.te4.text;

FindObject('memo86').memo.text:=per_z;
FindObject('mspo').memo.text:=spo;

if tippr=4 then FindObject('memo48').memo.text:='заезд в гостиницу после 13.00 ч., выезд из гостиницы до 12.00 ч.';
if tippr=4 then FindObject('memo53').memo.text:='Расселение туристов только по ваучерам "МП-ТУР". Ваучер выдается после полной оплаты тура.';

preparereport;

end
else
begin

LoadFromFile(sharedf+'\reports\podtbl.frf');

if exk=false then
begin
  if t='Нест.' then
  begin
  if nest_tip='Б' then FindObject('memo3').memo.text:='Нестандартный заезд по программе "Блоки" '+floattostr(strtodate(datek)-strtodate(daten)+1)+' д. '+floattostr(strtodate(datek)-strtodate(daten))+' н.';
  if nest_tip='А' then FindObject('memo3').memo.text:='Нестандартный заезд по программе "Автобусом к морю" '+floattostr(strtodate(datek)-strtodate(daten)+1)+' д. '+floattostr(strtodate(datek)-strtodate(daten))+' н.';
  end
  else
  FindObject('memo3').memo.text:='Программа "Блоки"';
end
else
begin
  FindObject('memo3').memo.text:='Экскурсионная программа';
  FindObject('memo53').memo.text:='';
  FindObject('memo14').memo.text:='';
  FindObject('memo21').memo.text:='';
  FindObject('memo20').memo.text:='';
  FindObject('memo31').memo.text:='';
  FindObject('memo42').memo.text:='';
  FindObject('memo43').memo.text:='';
  FindObject('memo54').visible:=false;
  FindObject('memo64').visible:=false;
  FindObject('memo65').visible:=false;
  FindObject('memo66').visible:=false;
  FindObject('masterdata1').visible:=false;
end;

FindObject('memo30').memo.text:=gorod;
FindObject('memo48').memo.text:=rchb;

FindObject('memo31').memo.text:=fpodtver.cb1.text;
FindObject('memo42').memo.text:=fpodtver.cb2.text;
FindObject('memo47').memo.text:=fpodtver.cb3.text;

FindObject('memo36').memo.text:=opl_do;

if pod='+' then FindObject('memo56').memo.text:='Заявка подтверждается только при нахождении подселения.';

FindObject('memo19').memo.text:=fpodtver.te1.text;
FindObject('memo38').memo.text:=fpodtver.te2.text;
FindObject('memo40').memo.text:=fpodtver.te3.text;

FindObject('memo45').memo.text:=fpodtver.te4.text;

FindObject('memo86').memo.text:=per_z;
FindObject('mspo').memo.text:=spo;

preparereport;

end;

end;

end;

end;

procedure vau_prep (t,nest_tip : string);
var dm,pds,daten,datek : string;
i,tippr : integer;
tolkopr : boolean;
begin

ssql:='select a.*,b.m from clients a full outer join gostnom b on a.id_m=b.codeid where a.tip=3 and a.p='+
inttostr(lid)+' and a.nz='+nz+' and a.annul<>'+quotedstr('да');
opensql(fvauch.qcl,ssql);

dm:='';
pds:='';
ktn:='';

tolkopr:=false;

tippr:=0;

for i:=1 to fvauch.qcl.recordcount do
begin

if fvauch.qcl.fieldbyname('pods').asstring='да' then pds:=' с подс.';
if (fvauch.qcl.fieldbyname('m').asstring='доп. место') or
(fvauch.qcl.fieldbyname('katcol').asstring='доп. место') then dm:=' + доп. место';

fvauch.qcl.next;
end;

fvauch.qcl.first;

if (fvauch.qcl.fieldbyname('tip_proezda').asstring='только проезд') and (tippr=0) then
begin

if fvauch.qcl.fieldbyname('proezd').asstring='город-база-город' then tippr:=1;
if fvauch.qcl.fieldbyname('proezd').asstring='город-база' then tippr:=2;
if fvauch.qcl.fieldbyname('proezd').asstring='база-город' then tippr:=5;

tolkopr:=true;

end;

if (fvauch.qcl.fieldbyname('proezd').asstring='без проезда') and (tippr=0) then tippr:=4;

if ((fvauch.qcl.fieldbyname('tip_proezda').asstring<>'только проезд') or
(fvauch.qcl.fieldbyname('proezd').asstring<>'без проезда')) and (tippr=0) then
begin

if fvauch.qcl.fieldbyname('proezd').asstring='город-база-город' then tippr:=1;
if fvauch.qcl.fieldbyname('proezd').asstring='город-база' then tippr:=2;
if fvauch.qcl.fieldbyname('proezd').asstring='база-город' then tippr:=3;

end;

with fvauch.fr1 do
begin

if tolkopr=true then LoadFromFile(sharedf+'\reports\vau_bp.frf')
else
begin

if t='Авт.' then
begin
if tippr=4 then LoadFromFile(sharedf+'\reports\vaubezpr.frf') else LoadFromFile(sharedf+'\reports\vau.frf');
end
else
begin
LoadFromFile(sharedf+'\reports\vaubl.frf');
FindObject('memo62').memo.text:=adres;
FindObject('memo64').memo.text:=adres;
FindObject('memo6').memo.text:=rchb;
FindObject('memo34').memo.text:=rchb;

FindObject('memo27').memo.text:=fvauch.cb1.text;
FindObject('memo35').memo.text:=fvauch.cb2.text;
FindObject('memo57').memo.text:=fvauch.cb1.text;
FindObject('memo59').memo.text:=fvauch.cb2.text;

end;

ktn:=fvauch.qall.fieldbyname('katcol').asstring+pds+dm;
FindObject('memo15').memo.text:=ktn;
FindObject('memo31').memo.text:=ktn;

end;

if fvauch.qall.fieldbyname('n_vauch').asstring<>'0' then
begin
n_vauch:=fvauch.qall.fieldbyname('n_vauch').asinteger;
FindObject('memo30').memo.text:=fvauch.qall.fieldbyname('data_vauch').asstring;
end
else
begin

ssql:='select max(n_vauch) from clients';
opensql(fvauch.q1,ssql);

n_vauch:=fvauch.q1.fields[0].asinteger+1;

ssql:='update clients set n_vauch='+inttostr(n_vauch)+',data_vauch='+quotedstr(fvauch.de1.text)+
' where id='+fvauch.qall.fieldbyname('id').asstring;
executesql(fvauch.q1,ssql);

FindObject('memo30').memo.text:=fvauch.de1.text;

end;

fvauch.qall.first;

//

if t='Авт.' then
begin

case tippr of
0:
begin
sm('Не определен тип проезда. Обратитесь к разработчику.');
exit;
end;
1:
begin
daten:=copy(fvauch.qall.fieldbyname('per').asstring,1,10);
datek:=copy(fvauch.qall.fieldbyname('per').asstring,12,10);
end;
2:
begin
daten:=copy(fvauch.qall.fieldbyname('per').asstring,1,10);
datek:='---';
end;
3:
begin
daten:='---';
datek:=copy(fvauch.qall.fieldbyname('per').asstring,12,10);
end;
4:
begin
daten:=datetostr(strtodate(copy(fvauch.qall.fieldbyname('per').asstring,1,10))+1);
datek:=datetostr(strtodate(copy(fvauch.qall.fieldbyname('per').asstring,12,10))-1);
end;
5:
begin
daten:='---';
datek:=datetostr(strtodate(copy(fvauch.qall.fieldbyname('per').asstring,12,10))-1);
end;

end;

//

napr:=fvauch.qall.fieldbyname('napr').asinteger;

if tippr<>4 then
begin

case napr of
2:
begin
FindObject('m1').memo.text:='Выезд из Тулы: в 12:00 ч.';
FindObject('m2').memo.text:='Время в пути: 26 ч.';
FindObject('m3').memo.text:='Прибытие в Тулу: 20:00.';
end;
3:
begin
FindObject('m1').memo.text:='Выезд из Тулы: в 13:00 ч.';
FindObject('m2').memo.text:='Время в пути: 22 ч.';
FindObject('m3').memo.text:='Прибытие в Тулу: 17:00.';
end;
4:
begin
FindObject('m1').memo.text:='Выезд из Тулы: в 13:00 ч.';
FindObject('m2').memo.text:='Время в пути: 22 ч.';
FindObject('m3').memo.text:='Прибытие в Тулу: 17:00.';
end;

end;

end;

end
else
begin
daten:=copy(fvauch.qall.fieldbyname('per').asstring,1,10);
datek:=copy(fvauch.qall.fieldbyname('per').asstring,12,10);
end;

if tolkopr=true then
FindObject('memo7').memo.text:='В А У Ч Е Р  Н А  П Р О Е З Д  № '+inttostr(n_vauch)
else
begin

if t='Нест.' then
begin
  if nest_tip='Б' then FindObject('memo7').memo.text:='Ваучер № '+inttostr(n_vauch)+ '. Нестандартный заезд по программе "Блоки" '+floattostr(strtodate(datek)-strtodate(daten)+1)+' д. '+floattostr(strtodate(datek)-strtodate(daten))+' н.';
  if nest_tip='А' then FindObject('memo7').memo.text:='Ваучер № '+inttostr(n_vauch)+ '. Нестандартный заезд по программе "Автобусом к морю" '+floattostr(strtodate(datek)-strtodate(daten)+1)+' д. '+floattostr(strtodate(datek)-strtodate(daten))+' н.';
end
else
FindObject('memo7').memo.text:='В А У Ч Е Р № '+inttostr(n_vauch);

FindObject('memo13').memo.text:=fvauch.qall.fieldbyname('gostin').asstring;
FindObject('memo51').memo.text:=fvauch.qall.fieldbyname('gost_gor').asstring;
FindObject('memo32').memo.text:=fvauch.qall.fieldbyname('gostin').asstring;
FindObject('memo36').memo.text:=fvauch.qall.fieldbyname('gost_gor').asstring;

end;

FindObject('memo10').memo.text:=daten;
FindObject('memo11').memo.text:=datek;

FindObject('memo23').memo.text:=daten;
FindObject('memo26').memo.text:=datek;

fvauch.qall.locate('id',lid,[]);

preparereport;

end;

end;

procedure spis (tip,per,dt1,dt2 : string; vid : integer; exprt : boolean);
var g,napr_pr,rchb,nest_tip : string;
    i,j,k: integer;
begin

pr_on;

ssql:='delete from #usertemp'+randid;
executesql(dm.q1,ssql);

if vid<>0 then per:=dt1+'-'+dt2;

kolchel:=0;
g:=g_id_podreg(fstat.cb3.text,podregion_id(fstat.cb5.text));

case vid of ///////////////////////////////////// АВТОБУС //////////////////////////////////////////////
0:
begin

if tip<>'трансфер' then
begin

if (fstat.cb3.text='') or (fstat.cb4.text='') or (fstat.cb5.text='') or (fstat.cb12.text='') then
begin
showmessage('Не указаны необходимые данные.');
pr_off;
exit;
end;

case fstat.rg1.itemindex of
0: napr_pr:='';
1: napr_pr:=' and ((proezd='+quotedstr('город-база-город')+') or (proezd='+quotedstr('город-база')+'))';
2: napr_pr:=' and ((proezd='+quotedstr('город-база-город')+') or (proezd='+quotedstr('база-город')+'))';
end;

ssql:='select a.*,b.naimen,c.podreg,d.exk from ((clients a left join agentstva b on a.id_ag=b.codeid)'+
' left join podreg c on b.podregion=c.codeid) left join gostinici d on'+
' a.id_gost=d.codeid where id_gost='+g+' and per='+quotedstr(per)+' and annul<>'+quotedstr('да')+
' and tip=1 and exk<>'+quotedstr('да')+' and a_b='+quotedstr('Авт.');
opensql(dm.q1,ssql);

for i:=1 to dm.q1.recordcount do
begin

pr(i,dm.q1.recordcount);

ssql:='select a.*,b.kat from clients a left join kat b on a.id_kat=b.codeid where p='+
dm.q1.fieldbyname('id').asstring+' and annul<>'+quotedstr('да')+' and tip=2';
opensql(dm.q2,ssql);

for j:=1 to dm.q2.recordcount do
begin

ssql:='select a.*,b.m from clients a full outer join gostnom b on a.id_m=b.codeid where (a.p='+
dm.q2.fieldbyname('id').asstring+') and (annul<>'+quotedstr('да')+') and (a.tip=3)'+
napr_pr;
opensql(dm.qcl,ssql);

for k:=1 to dm.qcl.recordcount do
begin

ssql:='insert into #usertemp'+randid+
' (f,i,o,adr,nd,pit,pod,tr,mar,pr,kat,ag,gor,kopl,nz,dr,m,d_opl,id_n,n_vauch,st_nom,oplacheno) values ('+
quotedstr(dm.qcl.fieldbyname('f').asstring)+','+
quotedstr(dm.qcl.fieldbyname('i').asstring)+
','+quotedstr(dm.qcl.fieldbyname('o').asstring)+','+
quotedstr(dm.qcl.fieldbyname('adres').asstring)+','+
quotedstr(dm.qcl.fieldbyname('nd').asstring)+
','+quotedstr(dm.qcl.fieldbyname('pitcol').asstring)+','+
quotedstr(dm.qcl.fieldbyname('pods').asstring)+
','+quotedstr(dm.qcl.fieldbyname('trcol').asstring)+','+
quotedstr(dm.qcl.fieldbyname('pocol').asstring+
'-'+dm.qcl.fieldbyname('ppcol').asstring+'-'+
dm.qcl.fieldbyname('pvcol').asstring)+','+
quotedstr(dm.qcl.fieldbyname('proezd').asstring)+','+
quotedstr(dm.q2.fieldbyname('kat').asstring)+','+
quotedstr(dm.q1.fieldbyname('naimen').asstring)+','+
quotedstr(dm.q1.fieldbyname('podreg').asstring);
ssql:=ssql+','+quotedstr(dm.q1.fieldbyname('stoim').asstring)+','+
quotedstr(dm.q1.fieldbyname('nz').asstring)+
','+quotedstr(dm.qcl.fieldbyname('dr').asstring)+','+
quotedstr(dm.qcl.fieldbyname('m').asstring)+','+
quotedstr(dm.q1.fieldbyname('data_opl').asstring)+','+
quotedstr(dm.q2.fieldbyname('id').asstring)+','+
quotedstr(dm.q2.fieldbyname('n_vauch').asstring)+','+
quotedstr(dm.q2.fieldbyname('stoim').asstring)+','+
quotedstr(dm.q1.fieldbyname('oplacheno').asstring)+')';

if (dm.qcl.fieldbyname('proezd').asstring='без проезда') and (tip='в автобус') then
begin
// не вписываем если без проезда в список в автобус
end
else
begin
if dm.qcl.fieldbyname('vikup').asstring<>'да' then kolchel:=kolchel+1;
executesql(dm.q5,ssql);
end;

dm.qcl.next;
end;

dm.q2.next;
end;

dm.q1.next;
end;

end
else
begin // если транcфер
//

ssql:='select a.nz,b.nazvanie,b.ndt from clients a left join gostinici b on a.id_gost=b.codeid where per like '+
quotedstr('%'+dt1+'%')+' and tip=1 and annul<>'+quotedstr('да')+' and a.a_b='+quotedstr('Авт.');
opensql(dm.q1,ssql);

for i:=1 to dm.q1.recordcount do
begin

pr(i,dm.q1.recordcount);

ssql:='select a.f,a.i,a.o,b.trstr from clients a left join tr b on a.id_tr=b.codeid where tip=3 and nz='+
dm.q1.fieldbyname('nz').asstring+' and annul<>'+quotedstr('да')+' and id_tr<>0 and b.trstr<>'+
quotedstr('нет-нет-нет');
opensql(dm.q2,ssql);

for j:=1 to dm.q2.recordcount do
begin
ssql:='';
if (fstat.cb9.Text='нет') or (fstat.cb9.Text='') then
begin
if fstat.chb2.Checked=false then
begin
if dm.q1.FieldByName('ndt').asstring<>'да' then
ssql:='insert into #usertemp'+randid+' (f,i,o,tr,id_n,gost) values ('+
quotedstr(dm.q2.fieldbyname('f').asstring)+','+quotedstr(dm.q2.fieldbyname('i').asstring)+','+
quotedstr(dm.q2.fieldbyname('o').asstring)+','+quotedstr(dm.q2.fieldbyname('trstr').asstring)+','+
quotedstr('')+','+quotedstr(dm.q1.fieldbyname('nazvanie').asstring)+')';
end
else
begin
if dm.q1.FieldByName('ndt').asstring='да' then
ssql:='insert into #usertemp'+randid+' (f,i,o,tr,id_n,gost) values ('+
quotedstr(dm.q2.fieldbyname('f').asstring)+','+quotedstr(dm.q2.fieldbyname('i').asstring)+','+
quotedstr(dm.q2.fieldbyname('o').asstring)+','+quotedstr(dm.q2.fieldbyname('trstr').asstring)+','+
quotedstr('')+','+quotedstr(dm.q1.fieldbyname('nazvanie').asstring)+')';
end;
end
else
begin
if fstat.chb2.Checked=false then
begin
if (dm.q1.FieldByName('ndt').asstring<>'да') and (dm.q2.FieldByName('trstr').asstring=fstat.cb9.text) then
ssql:='insert into #usertemp'+randid+' (f,i,o,tr,id_n,gost) values ('+
quotedstr(dm.q2.fieldbyname('f').asstring)+','+quotedstr(dm.q2.fieldbyname('i').asstring)+','+
quotedstr(dm.q2.fieldbyname('o').asstring)+','+quotedstr(dm.q2.fieldbyname('trstr').asstring)+','+
quotedstr('')+','+quotedstr(dm.q1.fieldbyname('nazvanie').asstring)+')';
end
else
begin
if (dm.q1.FieldByName('ndt').asstring='да') and (dm.q2.FieldByName('trstr').asstring=fstat.cb9.text) then
ssql:='insert into #usertemp'+randid+' (f,i,o,tr,id_n,gost) values ('+
quotedstr(dm.q2.fieldbyname('f').asstring)+','+quotedstr(dm.q2.fieldbyname('i').asstring)+','+
quotedstr(dm.q2.fieldbyname('o').asstring)+','+quotedstr(dm.q2.fieldbyname('trstr').asstring)+','+
quotedstr('')+','+quotedstr(dm.q1.fieldbyname('nazvanie').asstring)+')';
end;
end;
if ssql<>'' then executesql(dm.q3,ssql);
dm.q2.next;
end;
dm.q1.next;
end;

end;

if tip<>'трансфер' then
ssql:='select * from #usertemp'+randid+' order by id_n'
else
ssql:='select * from #usertemp'+randid+' order by gost';

opensql(dm.qit,ssql);

if tip='в автобус' then
begin
if fstat.chb1.Checked then
dm.fr.LoadFromFile(sharedf+'\reports\v_avt_adr.frf')
else
dm.fr.LoadFromFile(sharedf+'\reports\v_avt.frf');
with dm.fr do
begin
FindObject('memo36').memo.text:=fstat.cb6.text;
FindObject('memo43').memo.text:=fstat.cb7.text;
FindObject('memo38').memo.text:=fstat.cb8.text;
FindObject('memo45').memo.text:=fstat.te2.text;
FindObject('memo19').memo.text:=fstat.cb3.text;
FindObject('memo34').memo.text:=fstat.cb14.text;
FindObject('memo17').memo.text:=fstat.cb4.text;
FindObject('memo9').memo.text:=inttostr(kolchel);
end;
end;

if tip='в гостиницу' then
begin
dm.fr.LoadFromFile(sharedf+'\reports\v_gost.frf');
with dm.fr do
begin
FindObject('memo38').memo.text:=fstat.cb8.text;
FindObject('memo45').memo.text:=fstat.te2.text;
FindObject('memo19').memo.text:=fstat.cb3.text;
FindObject('memo17').memo.text:=datetostr(strtodate(copy(per,1,10))+1)+'-'+
datetostr(strtodate(copy(per,12,10))-1);
FindObject('memo9').memo.text:=inttostr(kolchel);
end;
end;

if tip='страхование' then
begin
dm.fr.LoadFromFile(sharedf+'\reports\strah.frf');
with dm.fr do
begin
FindObject('memo3').memo.text:='№ '+fstat.te3.text+' от '+datetostr(now)+' по Программе';
FindObject('memo4').memo.text:='страхования '+fstat.cb10.text+' ОАО "Военно-страховая компания".';
FindObject('memo6').memo.text:='Срок действия полиса: '+datetostr(strtodate(copy(per,1,10))+1)+' по '+
datetostr(strtodate(copy(per,12,10))-1);
FindObject('memo7').memo.text:='Территория страхования: '+fstat.cb5.text;
FindObject('memo9').memo.text:=inttostr(kolchel);
end;
end;

if tip='бухгалтеру' then
begin
dm.fr.LoadFromFile(sharedf+'\reports\buhg.frf');
with dm.fr do
begin
FindObject('memo19').memo.text:=fstat.cb3.text;
FindObject('memo17').memo.text:=per;
end;
end;

if tip='трансфер' then
begin
with dm.fr do
begin
LoadFromFile(sharedf+'\reports\tr.frf');
FindObject('memo3').memo.text:=dt1;
FindObject('memo12').memo.text:=inttostr(dm.qit.recordcount);
end;
if fstat.chb2.Checked then
dm.fr.FindObject('memo3').memo.text:='Список людей на трансфер (2е время) '+dt1
else
dm.fr.FindObject('memo3').memo.text:='Список людей на трансфер (1е время) '+dt1;
end;

end;

1:
begin  // БЛОКИ !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

if ((fstat.cb3.text='') or (fstat.cb5.text='') or
(fstat.cb12.text='')) and (fstat.cb15.checked=false) then
begin
showmessage('Не указаны необходимые или указаны неверные данные.');
pr_off;
exit;
end;

if fstat.cb12.text='в автобус' then
begin
showmessage('В поле "Тип отчета" укажите любое значение кроме "в автобус".');
pr_off;
exit;
end;

pr_on;

if tip<>'трансфер' then
begin

case fstat.rg1.itemindex of
0: napr_pr:='';
1: napr_pr:=' and ((proezd='+quotedstr('город-база-город')+') or (proezd='+quotedstr('город-база')+'))';
2: napr_pr:=' and ((proezd='+quotedstr('город-база-город')+') or (proezd='+quotedstr('база-город')+'))';
end;

if fstat.cb15.checked=false then
ssql:='select a.*,b.naimen,c.podreg,d.exk,d.rchb,d.nazvanie from ((clients a left join agentstva b on a.id_ag=b.codeid)'+
' left join podreg c on b.podregion=c.codeid) left join gostinici d on'+
' a.id_gost=d.codeid where (dt_begin between '+quotedstr(dt1)+' and '+quotedstr(dt2)+') and annul<>'+quotedstr('да')+
' and tip=1 and exk<>'+quotedstr('да')+' and a_b='+quotedstr('Блок')+'and a.id_gost='+g+' order by a.per'
else // если все, то без уточнения гостиницы
ssql:='select a.*,b.naimen,c.podreg,d.exk,d.rchb,d.nazvanie from ((clients a left join agentstva b on a.id_ag=b.codeid)'+
' left join podreg c on b.podregion=c.codeid) left join gostinici d on'+
' a.id_gost=d.codeid where (dt_begin between '+quotedstr(dt1)+' and '+quotedstr(dt2)+') and annul<>'+quotedstr('да')+
' and tip=1 and exk<>'+quotedstr('да')+' and a_b='+quotedstr('Блок')+' order by a.per';

opensql(dm.q1,ssql);

rchb:=dm.q1.fieldbyname('rchb').asstring;

for i:=1 to dm.q1.recordcount do
begin

pr(i,dm.q1.recordcount);

ssql:='select a.*,b.kat from clients a left join kat b on a.id_kat=b.codeid where p='+
dm.q1.fieldbyname('id').asstring+' and annul<>'+quotedstr('да')+' and tip=2';
opensql(dm.q2,ssql);

for j:=1 to dm.q2.recordcount do
begin

ssql:='select a.*,b.m from clients a full outer join gostnom b on a.id_m=b.codeid where (a.p='+
dm.q2.fieldbyname('id').asstring+') and (annul<>'+quotedstr('да')+') and (a.tip=3)'+
napr_pr;
opensql(dm.qcl,ssql);

for k:=1 to dm.qcl.recordcount do
begin

ssql:='insert into #usertemp'+randid+
' (f,i,o,adr,nd,pit,pod,tr,mar,pr,kat,ag,gor,kopl,nz,dr,m,d_opl,id_n,n_vauch,st_nom,per,gost,d,oplacheno) values ('+
quotedstr(dm.qcl.fieldbyname('f').asstring)+','+
quotedstr(dm.qcl.fieldbyname('i').asstring)+
','+quotedstr(dm.qcl.fieldbyname('o').asstring)+','+
quotedstr(dm.qcl.fieldbyname('adres').asstring)+','+
quotedstr(dm.qcl.fieldbyname('nd').asstring)+
','+quotedstr(dm.qcl.fieldbyname('pitcol').asstring)+','+
quotedstr(dm.qcl.fieldbyname('pods').asstring)+
','+quotedstr(dm.qcl.fieldbyname('trcol').asstring)+','+
quotedstr(dm.qcl.fieldbyname('pocol').asstring+
'-'+
dm.qcl.fieldbyname('ppcol').asstring+'-'+
dm.qcl.fieldbyname('pvcol').asstring)+','+
quotedstr(dm.qcl.fieldbyname('proezd').asstring)+','+
quotedstr(dm.q2.fieldbyname('kat').asstring)+','+
quotedstr(dm.q1.fieldbyname('naimen').asstring)+','+
quotedstr(dm.q1.fieldbyname('podreg').asstring);
ssql:=ssql+','+quotedstr(dm.q1.fieldbyname('stoim').asstring)+','+
quotedstr(dm.q1.fieldbyname('nz').asstring)+
','+quotedstr(dm.qcl.fieldbyname('dr').asstring)+','+
quotedstr(dm.qcl.fieldbyname('katcol').asstring)+','+
quotedstr(dm.q1.fieldbyname('data_opl').asstring)+','+
quotedstr(dm.q2.fieldbyname('id').asstring)+','+
quotedstr(dm.q2.fieldbyname('n_vauch').asstring)+','+
quotedstr(dm.q2.fieldbyname('stoim').asstring)+','+
quotedstr(dm.q1.fieldbyname('dt_begin').asstring+'-'+dm.q1.fieldbyname('dt_end').asstring)+','+
quotedstr(dm.q1.fieldbyname('nazvanie').asstring)+','+
quotedstr(dm.q1.fieldbyname('dt_begin').asstring)+','+
quotedstr(dm.q1.fieldbyname('oplacheno').asstring)+')';

if dm.qcl.fieldbyname('vikup').asstring<>'да' then kolchel:=kolchel+1;
executesql(dm.q5,ssql);

dm.qcl.next;
end;

dm.q2.next;
end;

dm.q1.next;
end;

end
else
begin // если транcфер

ssql:='select a.nz,b.nazvanie,b.ndt from clients a left join gostinici b on a.id_gost=b.codeid where'+
' tip=1 and (dt_begin between '+quotedstr(dt1)+' and '+quotedstr(dt2)+') and annul<>'+quotedstr('да')+' and a.a_b='+quotedstr('Блок');
opensql(dm.q1,ssql);

for i:=1 to dm.q1.recordcount do
begin

pr(i,dm.q1.recordcount);

ssql:='select a.f,a.i,a.o,b.trstr from clients a left join tr b on a.id_tr=b.codeid where tip=3 and nz='+
dm.q1.fieldbyname('nz').asstring+' and annul<>'+quotedstr('да')+' and id_tr<>0 and b.trstr<>'+
quotedstr('нет-нет-нет');
opensql(dm.q2,ssql);

for j:=1 to dm.q2.recordcount do
begin
ssql:='';
if (fstat.cb9.Text='нет') or (fstat.cb9.Text='') then
begin
if fstat.chb2.Checked=false then
begin
if dm.q1.FieldByName('ndt').asstring<>'да' then
ssql:='insert into #usertemp'+randid+' (f,i,o,tr,id_n,gost,per) values ('+
quotedstr(dm.q2.fieldbyname('f').asstring)+','+quotedstr(dm.q2.fieldbyname('i').asstring)+','+
quotedstr(dm.q2.fieldbyname('o').asstring)+','+quotedstr(dm.q2.fieldbyname('trstr').asstring)+','+
quotedstr('')+','+quotedstr(dm.q1.fieldbyname('nazvanie').asstring)+','+
quotedstr(dm.q1.fieldbyname('dt_begin').asstring+'-'+dm.q1.fieldbyname('dt_end').asstring)+')';
end
else
begin
if dm.q1.FieldByName('ndt').asstring='да' then
ssql:='insert into #usertemp'+randid+' (f,i,o,tr,id_n,gost,per) values ('+
quotedstr(dm.q2.fieldbyname('f').asstring)+','+quotedstr(dm.q2.fieldbyname('i').asstring)+','+
quotedstr(dm.q2.fieldbyname('o').asstring)+','+quotedstr(dm.q2.fieldbyname('trstr').asstring)+','+
quotedstr('')+','+quotedstr(dm.q1.fieldbyname('nazvanie').asstring)+','+
quotedstr(dm.q1.fieldbyname('dt_begin').asstring+'-'+dm.q1.fieldbyname('dt_end').asstring)+')';
end;
end
else
begin
if fstat.chb2.Checked=false then
begin
if (dm.q1.FieldByName('ndt').asstring<>'да') and (dm.q2.FieldByName('trstr').asstring=fstat.cb9.text) then
ssql:='insert into #usertemp'+randid+' (f,i,o,tr,id_n,gost,per) values ('+
quotedstr(dm.q2.fieldbyname('f').asstring)+','+quotedstr(dm.q2.fieldbyname('i').asstring)+','+
quotedstr(dm.q2.fieldbyname('o').asstring)+','+quotedstr(dm.q2.fieldbyname('trstr').asstring)+','+
quotedstr('')+','+quotedstr(dm.q1.fieldbyname('nazvanie').asstring)+','+
quotedstr(dm.q1.fieldbyname('dt_begin').asstring+'-'+dm.q1.fieldbyname('dt_end').asstring)+')';
end
else
begin
if (dm.q1.FieldByName('ndt').asstring='да') and (dm.q2.FieldByName('trstr').asstring=fstat.cb9.text) then
ssql:='insert into #usertemp'+randid+' (f,i,o,tr,id_n,gost,per) values ('+
quotedstr(dm.q2.fieldbyname('f').asstring)+','+quotedstr(dm.q2.fieldbyname('i').asstring)+','+
quotedstr(dm.q2.fieldbyname('o').asstring)+','+quotedstr(dm.q2.fieldbyname('trstr').asstring)+','+
quotedstr('')+','+quotedstr(dm.q1.fieldbyname('nazvanie').asstring)+','+
quotedstr(dm.q1.fieldbyname('dt_begin').asstring+'-'+dm.q1.fieldbyname('dt_end').asstring)+')';
end;
end;
if ssql<>'' then executesql(dm.q3,ssql);
dm.q2.next;
end;
dm.q1.next;
end;

end;

if tip<>'трансфер' then
ssql:='select * from #usertemp'+randid+' order by d,id_n'
else
ssql:='select * from #usertemp'+randid+' order by gost';

opensql(dm.qit,ssql);

if tip='в гостиницу' then
begin
dm.fr.LoadFromFile(sharedf+'\reports\v_gost_bl.frf');
with dm.fr do
begin
FindObject('memo38').memo.text:=fstat.cb8.text;
FindObject('memo45').memo.text:=fstat.te2.text;
FindObject('memo19').memo.text:=fstat.cb3.text;
FindObject('memo17').memo.text:=dt1+'-'+dt2;
FindObject('memo9').memo.text:=inttostr(kolchel);
end;
end;

if tip='страхование' then
begin
dm.fr.LoadFromFile(sharedf+'\reports\strah_bl.frf');
with dm.fr do
begin
FindObject('memo3').memo.text:='№ '+fstat.te3.text+' от '+datetostr(now)+' по Программе';
FindObject('memo4').memo.text:='страхования '+fstat.cb10.text+' ОАО "Военно-страховая компания".';
FindObject('memo6').memo.text:='Срок действия полиса: указан ниже.';
FindObject('memo7').memo.text:='Территория страхования: '+fstat.cb5.text;
FindObject('memo9').memo.text:=inttostr(kolchel);
end;
end;

if tip='бухгалтеру' then
begin

if fstat.cb15.checked=false then
begin

ssql:='select rchb from gostinici where codeid='+g;
opensql(dm.q1,ssql);
rchb:=dm.q1.fieldbyname('rchb').asstring;

with dm.fr do
begin
LoadFromFile(sharedf+'\reports\buhg_bl.frf');
FindObject('memo19').memo.text:=fstat.cb3.text;
FindObject('memo17').memo.text:=dt1+'-'+dt2;
FindObject('memo38').memo.text:=rchb;
end;

end
else
begin

dm.fr.LoadFromFile(sharedf+'\reports\buhg_bl_vse.frf');
dm.fr.FindObject('memo17').memo.text:=dt1+'-'+dt2;

end;
end;

if tip='трансфер' then
begin
with dm.fr do
begin
LoadFromFile(sharedf+'\reports\tr_bl.frf');
FindObject('memo3').memo.text:='На период: '+dt1+'-'+dt2;
FindObject('memo12').memo.text:=inttostr(dm.qit.recordcount);
end;
if fstat.chb2.Checked then
dm.fr.FindObject('memo3').memo.text:='Список людей на трансфер (2е время) на период '+dt1+'-'+dt2
else
dm.fr.FindObject('memo3').memo.text:='Список людей на трансфер (1е время) на период '+dt1+'-'+dt2;
end;

end;

//////////////////////////////////////////  ЭКСКУРСИОНКА //////////////////////////

2:
begin

if tip<>'трансфер' then
begin

if (fstat.cb3.text='') or (fstat.cb5.text='') or (fstat.cb12.text='') then
begin
showmessage('Не указаны необходимые данные.');
pr_off;
exit;
end;

case fstat.rg1.itemindex of
0: napr_pr:='';
1: napr_pr:=' and ((proezd='+quotedstr('город-база-город')+') or (proezd='+quotedstr('город-база')+'))';
2: napr_pr:=' and ((proezd='+quotedstr('город-база-город')+') or (proezd='+quotedstr('база-город')+'))';
end;

ssql:='select a.*,b.naimen,c.podreg,d.exk from ((clients a left join agentstva b on a.id_ag=b.codeid)'+
' left join podreg c on b.podregion=c.codeid) left join gostinici d on'+
' a.id_gost=d.codeid where id_gost='+g+' and per='+quotedstr(per)+' and annul<>'+quotedstr('да')+
' and tip=1 and exk='+quotedstr('да');//+' and a_b='+quotedstr('Авт.');
opensql(dm.q1,ssql);

for i:=1 to dm.q1.recordcount do
begin

pr(i,dm.q1.recordcount);

ssql:='select a.*,b.kat from clients a left join kat b on a.id_kat=b.codeid where p='+
dm.q1.fieldbyname('id').asstring+' and annul<>'+quotedstr('да')+' and tip=2';
opensql(dm.q2,ssql);

for j:=1 to dm.q2.recordcount do
begin

ssql:='select a.*,b.m from clients a full outer join gostnom b on a.id_m=b.codeid where (a.p='+
dm.q2.fieldbyname('id').asstring+') and (annul<>'+quotedstr('да')+') and (a.tip=3)'+
napr_pr;
opensql(dm.qcl,ssql);

for k:=1 to dm.qcl.recordcount do
begin

ssql:='insert into #usertemp'+randid+
' (f,i,o,adr,nd,pit,pod,tr,mar,pr,kat,ag,gor,kopl,nz,dr,m,d_opl,id_n,n_vauch,st_nom) values ('+
quotedstr(dm.qcl.fieldbyname('f').asstring)+','+
quotedstr(dm.qcl.fieldbyname('i').asstring)+
','+quotedstr(dm.qcl.fieldbyname('o').asstring)+','+
quotedstr(dm.qcl.fieldbyname('adres').asstring)+','+
quotedstr(dm.qcl.fieldbyname('nd').asstring)+
','+quotedstr(dm.qcl.fieldbyname('pitcol').asstring)+','+
quotedstr(dm.qcl.fieldbyname('pods').asstring)+
','+quotedstr(dm.qcl.fieldbyname('trcol').asstring)+','+
quotedstr(dm.qcl.fieldbyname('pocol').asstring+
'-'+
dm.qcl.fieldbyname('ppcol').asstring+'-'+
dm.qcl.fieldbyname('pvcol').asstring)+','+
quotedstr(dm.qcl.fieldbyname('proezd').asstring)+','+
quotedstr(dm.q2.fieldbyname('kat').asstring)+','+
quotedstr(dm.q1.fieldbyname('naimen').asstring)+','+
quotedstr(dm.q1.fieldbyname('podreg').asstring);
ssql:=ssql+','+quotedstr(dm.q1.fieldbyname('stoim').asstring)+','+
quotedstr(dm.q1.fieldbyname('nz').asstring)+
','+quotedstr(dm.qcl.fieldbyname('dr').asstring)+','+
quotedstr(dm.qcl.fieldbyname('m').asstring)+','+
quotedstr(dm.q1.fieldbyname('data_opl').asstring)+','+
quotedstr(dm.q2.fieldbyname('id').asstring)+','+
quotedstr(dm.q2.fieldbyname('n_vauch').asstring)+','+
quotedstr(dm.q2.fieldbyname('stoim').asstring)+')';

if (dm.qcl.fieldbyname('proezd').asstring='без проезда') and (tip='в автобус') then
begin
// не вписываем если без проезда в список в автобус
end
else
begin
if dm.qcl.fieldbyname('vikup').asstring<>'да' then kolchel:=kolchel+1;
executesql(dm.q5,ssql);
end;

dm.qcl.next;
end;

dm.q2.next;
end;

dm.q1.next;
end;

end
else
begin // если транcфер - в экскурсионке его нет
sm('Трансфер не связан с экскурсионкой.');
exit;

//
 
end;

if tip<>'трансфер' then
ssql:='select * from #usertemp'+randid+' order by id_n'
else
ssql:='select * from #usertemp'+randid+' order by gost';

opensql(dm.qit,ssql);

if tip='в автобус' then
begin
if fstat.chb1.Checked then
dm.fr.LoadFromFile(sharedf+'\reports\v_avt_adr.frf')
else
dm.fr.LoadFromFile(sharedf+'\reports\v_avt.frf');
with dm.fr do
begin
FindObject('memo36').memo.text:=fstat.cb6.text;
FindObject('memo43').memo.text:=fstat.cb7.text;
FindObject('memo38').memo.text:=fstat.cb8.text;
FindObject('memo45').memo.text:=fstat.te2.text;
FindObject('memo19').memo.text:=fstat.cb3.text;
FindObject('memo34').memo.text:=fstat.cb14.text;
FindObject('memo17').memo.text:=fstat.cb4.text;
FindObject('memo9').memo.text:=inttostr(kolchel);
end;
end;

if tip='в гостиницу' then
begin
dm.fr.LoadFromFile(sharedf+'\reports\v_gost.frf');
with dm.fr do
begin
FindObject('memo38').memo.text:=fstat.cb8.text;
FindObject('memo45').memo.text:=fstat.te2.text;
FindObject('memo19').memo.text:=fstat.cb3.text;
FindObject('memo17').memo.text:=datetostr(strtodate(copy(per,1,10))+1)+'-'+
datetostr(strtodate(copy(per,12,10))-1);
FindObject('memo9').memo.text:=inttostr(kolchel);
end;
end;

if tip='страхование' then
begin
dm.fr.LoadFromFile(sharedf+'\reports\strah.frf');
with dm.fr do
begin
FindObject('memo3').memo.text:='№ '+fstat.te3.text+' от '+datetostr(now)+' по Программе';
FindObject('memo4').memo.text:='страхования '+fstat.cb10.text+' ОАО "Военно-страховая компания".';
FindObject('memo6').memo.text:='Срок действия полиса: '+datetostr(strtodate(copy(per,1,10))+1)+' по '+
datetostr(strtodate(copy(per,12,10))-1);
FindObject('memo7').memo.text:='Территория страхования: '+fstat.cb5.text;
FindObject('memo9').memo.text:=inttostr(kolchel);
end;
end;

if tip='бухгалтеру' then
begin
dm.fr.LoadFromFile(sharedf+'\reports\buhg.frf');
with dm.fr do
begin
FindObject('memo19').memo.text:=fstat.cb3.text;
FindObject('memo17').memo.text:=per;
end;
end;

if tip='трансфер' then
begin
with dm.fr do
begin
LoadFromFile(sharedf+'\reports\tr.frf');
FindObject('memo3').memo.text:=dt1;
FindObject('memo12').memo.text:=inttostr(dm.qit.recordcount);
end;
if fstat.chb2.Checked then
dm.fr.FindObject('memo3').memo.text:='Список людей на трансфер (2е время) '+dt1
else
dm.fr.FindObject('memo3').memo.text:='Список людей на трансфер (1е время) '+dt1;
end;

end;

////////////////////////////////////////  НЕСТАНДАРТ  /////////////////////////////////

3:
begin

if (fstat.cb3.text='') or (fstat.cb5.text='') or (fstat.cb12.text='') or
((fstat.cb19.text='') and (fstat.cb20.text='')) { and (fstat.cb15.checked=false)} then
begin
showmessage('Не указаны необходимые или указаны неверные данные.');
pr_off;
exit;
end;

pr_on;

dt1:=fstat.cb19.text;
dt2:=fstat.cb20.text;
nest_tip:=fstat.cb18.text;

if tip<>'трансфер' then
begin

case fstat.rg1.itemindex of
0:
begin
napr_pr:='';
ssql:='select a.*,b.naimen,c.podreg,d.exk,d.rchb,d.nazvanie from ((clients a left join agentstva b on a.id_ag=b.codeid)'+
' left join podreg c on b.podregion=c.codeid) left join gostinici d on'+
' a.id_gost=d.codeid where id_gost='+g+' and dt_begin='+quotedstr(dt1)+' and dt_end='+
quotedstr(dt2)+' and annul<>'+quotedstr('да')+
' and tip=1 and exk<>'+quotedstr('да')+' and a_b='+quotedstr('Нест.')+' and a.nest_tip='+
quotedstr(nest_tip)+' order by a.per';
end;
1:
begin
napr_pr:=' and ((proezd='+quotedstr('город-база-город')+') or (proezd='+quotedstr('город-база')+'))';
ssql:='select a.*,b.naimen,c.podreg,d.exk,d.rchb,d.nazvanie from ((clients a left join agentstva b on a.id_ag=b.codeid)'+
' left join podreg c on b.podregion=c.codeid) left join gostinici d on'+
' a.id_gost=d.codeid where id_gost='+g+' and dt_begin='+quotedstr(dt1)+' and annul<>'+quotedstr('да')+
' and tip=1 and exk<>'+quotedstr('да')+' and a_b='+quotedstr('Нест.')+' and a.nest_tip='+
quotedstr(nest_tip)+' order by a.per';
end;
2:
begin
napr_pr:=' and ((proezd='+quotedstr('город-база-город')+') or (proezd='+quotedstr('база-город')+'))';
ssql:='select a.*,b.naimen,c.podreg,d.exk,d.rchb,d.nazvanie from ((clients a left join agentstva b on a.id_ag=b.codeid)'+
' left join podreg c on b.podregion=c.codeid) left join gostinici d on'+
' a.id_gost=d.codeid where id_gost='+g+' and dt_end='+
quotedstr(dt2)+' and annul<>'+quotedstr('да')+
' and tip=1 and exk<>'+quotedstr('да')+' and a_b='+quotedstr('Нест.')+' and a.nest_tip='+
quotedstr(nest_tip)+' order by a.per';
end;
end;

 // если все, то без уточнения гостиницы
if fstat.cb15.checked=true then
ssql:='select a.*,b.naimen,c.podreg,d.exk,d.rchb,d.nazvanie from ((clients a left join agentstva b on a.id_ag=b.codeid)'+
' left join podreg c on b.podregion=c.codeid) left join gostinici d on'+
' a.id_gost=d.codeid where dt_begin='+quotedstr(dt1)+' and dt_end='+
quotedstr(dt2)+' and annul<>'+quotedstr('да')+
' and tip=1 and exk<>'+quotedstr('да')+' and a_b='+quotedstr('Нест.')+' and a.nest_tip='+
quotedstr(nest_tip)+' order by a.per';

opensql(dm.q1,ssql);

rchb:=dm.q1.fieldbyname('rchb').asstring;

for i:=1 to dm.q1.recordcount do
begin

pr(i,dm.q1.recordcount);

ssql:='select a.*,b.kat from clients a left join kat b on a.id_kat=b.codeid where p='+
dm.q1.fieldbyname('id').asstring+' and annul<>'+quotedstr('да')+' and tip=2';
opensql(dm.q2,ssql);

for j:=1 to dm.q2.recordcount do
begin

ssql:='select a.*,b.m from clients a full outer join gostnom b on a.id_m=b.codeid where (a.p='+
dm.q2.fieldbyname('id').asstring+') and (annul<>'+quotedstr('да')+') and (a.tip=3)'+
napr_pr;
opensql(dm.qcl,ssql);

for k:=1 to dm.qcl.recordcount do
begin

ssql:='insert into #usertemp'+randid+
' (f,i,o,adr,nd,pit,pod,tr,mar,pr,kat,ag,gor,kopl,nz,dr,m,d_opl,id_n,n_vauch,st_nom,per,gost,d,oplacheno) values ('+
quotedstr(dm.qcl.fieldbyname('f').asstring)+','+
quotedstr(dm.qcl.fieldbyname('i').asstring)+
','+quotedstr(dm.qcl.fieldbyname('o').asstring)+','+
quotedstr(dm.qcl.fieldbyname('adres').asstring)+','+
quotedstr(dm.qcl.fieldbyname('nd').asstring)+
','+quotedstr(dm.qcl.fieldbyname('pitcol').asstring)+','+
quotedstr(dm.qcl.fieldbyname('pods').asstring)+
','+quotedstr(dm.qcl.fieldbyname('trcol').asstring)+','+
quotedstr(dm.qcl.fieldbyname('pocol').asstring+
'-'+
dm.qcl.fieldbyname('ppcol').asstring+'-'+
dm.qcl.fieldbyname('pvcol').asstring)+','+
quotedstr(dm.qcl.fieldbyname('proezd').asstring)+','+
quotedstr(dm.q2.fieldbyname('kat').asstring)+','+
quotedstr(dm.q1.fieldbyname('naimen').asstring)+','+
quotedstr(dm.q1.fieldbyname('podreg').asstring);
ssql:=ssql+','+quotedstr(dm.q1.fieldbyname('stoim').asstring)+','+
quotedstr(dm.q1.fieldbyname('nz').asstring)+
','+quotedstr(dm.qcl.fieldbyname('dr').asstring)+','+
quotedstr(dm.qcl.fieldbyname('katcol').asstring)+','+
quotedstr(dm.q1.fieldbyname('data_opl').asstring)+','+
quotedstr(dm.q2.fieldbyname('id').asstring)+','+
quotedstr(dm.q2.fieldbyname('n_vauch').asstring)+','+
quotedstr(dm.q2.fieldbyname('stoim').asstring)+','+
quotedstr(dm.q1.fieldbyname('dt_begin').asstring+'-'+dm.q1.fieldbyname('dt_end').asstring)+
','+quotedstr(dm.q1.fieldbyname('nazvanie').asstring)+','+
quotedstr(dm.q1.fieldbyname('dt_begin').asstring)+','+
quotedstr(dm.q1.fieldbyname('oplacheno').asstring)+')';

if dm.qcl.fieldbyname('vikup').asstring<>'да' then kolchel:=kolchel+1;
executesql(dm.q5,ssql);

dm.qcl.next;
end;

dm.q2.next;
end;

dm.q1.next;
end;

end
else
begin // если транcфер

ssql:='select a.nz,b.nazvanie,b.ndt,a.dt_begin,a.dt_end from clients a left join gostinici b on a.id_gost=b.codeid where'+
' tip=1 and (dt_begin between '+quotedstr(dt1)+' and '+quotedstr(dt2)+') and annul<>'+
quotedstr('да')+' and a.a_b='+quotedstr('Нест.');
opensql(dm.q1,ssql);

for i:=1 to dm.q1.recordcount do
begin

pr(i,dm.q1.recordcount);

ssql:='select a.f,a.i,a.o,b.trstr from clients a left join tr b on a.id_tr=b.codeid where tip=3 and nz='+
dm.q1.fieldbyname('nz').asstring+' and annul<>'+quotedstr('да')+' and id_tr<>0 and b.trstr<>'+
quotedstr('нет-нет-нет');
opensql(dm.q2,ssql);

for j:=1 to dm.q2.recordcount do
begin
ssql:='';
if (fstat.cb9.Text='нет') or (fstat.cb9.Text='') then
begin
if fstat.chb2.Checked=false then
begin
if dm.q1.FieldByName('ndt').asstring<>'да' then
ssql:='insert into #usertemp'+randid+' (f,i,o,tr,id_n,gost,per) values ('+
quotedstr(dm.q2.fieldbyname('f').asstring)+','+quotedstr(dm.q2.fieldbyname('i').asstring)+','+
quotedstr(dm.q2.fieldbyname('o').asstring)+','+quotedstr(dm.q2.fieldbyname('trstr').asstring)+','+
quotedstr('')+','+quotedstr(dm.q1.fieldbyname('nazvanie').asstring)+','+
quotedstr(dm.q1.fieldbyname('dt_begin').asstring+'-'+dm.q1.fieldbyname('dt_end').asstring)+')';
end
else
begin
if dm.q1.FieldByName('ndt').asstring='да' then
ssql:='insert into #usertemp'+randid+' (f,i,o,tr,id_n,gost,per) values ('+
quotedstr(dm.q2.fieldbyname('f').asstring)+','+quotedstr(dm.q2.fieldbyname('i').asstring)+','+
quotedstr(dm.q2.fieldbyname('o').asstring)+','+quotedstr(dm.q2.fieldbyname('trstr').asstring)+','+
quotedstr('')+','+quotedstr(dm.q1.fieldbyname('nazvanie').asstring)+','+
quotedstr(dm.q1.fieldbyname('dt_begin').asstring+'-'+dm.q1.fieldbyname('dt_end').asstring)+')';
end;
end
else
begin
if fstat.chb2.Checked=false then
begin
if (dm.q1.FieldByName('ndt').asstring<>'да') and (dm.q2.FieldByName('trstr').asstring=fstat.cb9.text) then
ssql:='insert into #usertemp'+randid+' (f,i,o,tr,id_n,gost,per) values ('+
quotedstr(dm.q2.fieldbyname('f').asstring)+','+quotedstr(dm.q2.fieldbyname('i').asstring)+','+
quotedstr(dm.q2.fieldbyname('o').asstring)+','+quotedstr(dm.q2.fieldbyname('trstr').asstring)+','+
quotedstr('')+','+quotedstr(dm.q1.fieldbyname('nazvanie').asstring)+','+
quotedstr(dm.q1.fieldbyname('dt_begin').asstring+'-'+dm.q1.fieldbyname('dt_end').asstring)+')';
end
else
begin
if (dm.q1.FieldByName('ndt').asstring='да') and (dm.q2.FieldByName('trstr').asstring=fstat.cb9.text) then
ssql:='insert into #usertemp'+randid+' (f,i,o,tr,id_n,gost,per) values ('+
quotedstr(dm.q2.fieldbyname('f').asstring)+','+quotedstr(dm.q2.fieldbyname('i').asstring)+','+
quotedstr(dm.q2.fieldbyname('o').asstring)+','+quotedstr(dm.q2.fieldbyname('trstr').asstring)+','+
quotedstr('')+','+quotedstr(dm.q1.fieldbyname('nazvanie').asstring)+','+
quotedstr(dm.q1.fieldbyname('dt_begin').asstring+'-'+dm.q1.fieldbyname('dt_end').asstring)+')';
end;
end;
if ssql<>'' then executesql(dm.q3,ssql);
dm.q2.next;
end;
dm.q1.next;
end;

end;

if tip<>'трансфер' then
ssql:='select * from #usertemp'+randid+' order by d,id_n'
else
ssql:='select * from #usertemp'+randid+' order by gost';

opensql(dm.qit,ssql);

if tip='в гостиницу' then
begin
dm.fr.LoadFromFile(sharedf+'\reports\v_gost_bl.frf');
with dm.fr do
begin
FindObject('memo38').memo.text:=fstat.cb8.text;
FindObject('memo45').memo.text:=fstat.te2.text;
FindObject('memo19').memo.text:=fstat.cb3.text;
FindObject('memo17').memo.text:=dt1+'-'+dt2;
FindObject('memo9').memo.text:=inttostr(kolchel);
end;
end;

if tip='в автобус' then
begin
if fstat.chb1.Checked then
dm.fr.LoadFromFile(sharedf+'\reports\v_avt_adr.frf')
else
dm.fr.LoadFromFile(sharedf+'\reports\v_avt.frf');
with dm.fr do
begin
FindObject('memo36').memo.text:=fstat.cb6.text;
FindObject('memo43').memo.text:=fstat.cb7.text;
FindObject('memo38').memo.text:=fstat.cb8.text;
FindObject('memo45').memo.text:=fstat.te2.text;
FindObject('memo19').memo.text:=fstat.cb3.text;
FindObject('memo34').memo.text:=fstat.cb14.text;
FindObject('memo17').memo.text:=dt1+'-'+dt2;//fstat.cb4.text;
FindObject('memo9').memo.text:=inttostr(kolchel);
end;
end;

if tip='страхование' then
begin
dm.fr.LoadFromFile(sharedf+'\reports\strah_bl.frf');
with dm.fr do
begin
FindObject('memo3').memo.text:='№ '+fstat.te3.text+' от '+datetostr(now)+' по Программе';
FindObject('memo4').memo.text:='страхования '+fstat.cb10.text+' ОАО "Военно-страховая компания".';
FindObject('memo6').memo.text:='Срок действия полиса: указан ниже.';
FindObject('memo7').memo.text:='Территория страхования: '+fstat.cb5.text;
FindObject('memo9').memo.text:=inttostr(kolchel);
end;
end;

if tip='бухгалтеру' then
begin

if fstat.cb15.checked=false then
begin

ssql:='select rchb from gostinici where codeid='+g;
opensql(dm.q1,ssql);
rchb:=dm.q1.fieldbyname('rchb').asstring;

with dm.fr do
begin
LoadFromFile(sharedf+'\reports\buhg_bl.frf');
FindObject('memo19').memo.text:=fstat.cb3.text;
FindObject('memo17').memo.text:=dt1+'-'+dt2;
FindObject('memo38').memo.text:=rchb;
end;

end
else
begin

dm.fr.LoadFromFile(sharedf+'\reports\buhg_bl_vse.frf');
dm.fr.FindObject('memo17').memo.text:=dt1+'-'+dt2;

end;
end;

if tip='трансфер' then
begin
with dm.fr do
begin
LoadFromFile(sharedf+'\reports\tr_bl.frf');
FindObject('memo3').memo.text:='На период: '+dt1+'-'+dt2;
FindObject('memo12').memo.text:=inttostr(dm.qit.recordcount);
end;
if fstat.chb2.Checked then
dm.fr.FindObject('memo3').memo.text:='Список людей на трансфер (2е время) на период '+dt1+'-'+dt2
else
dm.fr.FindObject('memo3').memo.text:='Список людей на трансфер (1е время) на период '+dt1+'-'+dt2;
end;

end;

//

end;

dm.fr.preparereport;

if exprt=false then
dm.fr.showreport
else
begin
dm.fr.ExportTo(dm.hte,sharedf+'\exported\'+tip+'_'+no_quotes(fstat.cb3.text)+'_'+per+'_.html');
dm.fr.ExportTo(dm.excele,sharedf+'\exported\'+tip+'_'+no_quotes(fstat.cb3.text)+'_'+per+'_.xls');
end;

pr_off;

end;

procedure stat_lock;
begin

with fstat do
begin
b1.enabled:=false;
b2.enabled:=false;
b8.enabled:=false;
b9.enabled:=false;
b12.enabled:=false;
b14.enabled:=false;
b13.enabled:=false;
b15.enabled:=false;
b16.enabled:=false;
nzaez.enabled:=false;
end;

end;

procedure stat_unlock;
begin

with fstat do
begin
b1.enabled:=true;
b2.enabled:=true;
b8.enabled:=true;
b9.enabled:=true;
b12.enabled:=true;
b14.enabled:=true;
b13.enabled:=true;
b15.enabled:=true;
b16.enabled:=true;
nzaez.enabled:=true;
end;

end;

procedure f_clear (t:string);
begin

// очистка полей
with fzai_vvod do
begin

te1.text:='';
te2.text:='';
te3.text:='';
te4.text:='';
te5.text:='';
te6.text:='';
idte.text:='';
end;

end;

function newnzs (oldnzs,nzudal: string) :string;
var a,nwn : string;
pz,i : integer;
lb1 : tstringlist;
begin

lb1:=tstringlist.create;

while pos(' ',oldnzs)<>0 do
begin

pz:=pos(' ',oldnzs);

oldnzs:=copy(oldnzs,1,(pz-1))+copy(oldnzs,(pz+1),length(oldnzs) );

end;

while length(oldnzs)<>0 do
begin
     
pz:=pos(',',oldnzs);

if pz<>0 then
begin
a:=copy(oldnzs,1,pz-1);
delete(oldnzs,1,pz);
end
else
begin
a:=oldnzs;
oldnzs:='';
end;

if a<>nzudal then lb1.Add(a);

end;

for i:=0 to lb1.Count-1 do
begin
if nwn='' then nwn:=lb1.strings[i] else nwn:=nwn+', '+lb1.strings[i];
end;

result:=nwn;

end;

procedure garch(t:string);
begin

if t='а' then if fzai_vvod.garcb.Checked then gar_pis:='да' else gar_pis:='нет';
if t='б' then if FBlz_vvod.garcb.Checked then gar_pis:='да' else gar_pis:='нет';
if t='н' then if FNest_vvod.garcb.Checked then gar_pis:='да' else gar_pis:='нет';

end;

procedure init_cl (t : string);
begin

// запись человека в номер на выбранное место
// инициализация переменных

if t='i' then
begin

// без места или ид места
if fzai_vvod.bmcb.Checked then
begin
bez_mesta:='да';
m_id:='0';
end
else
begin
bez_mesta:='нет';
m_id:=mesto_id(fzai_vvod.mlb.items[fzai_vvod.mlb.itemindex]);
end;

// ид человека
ssql:='select max(id_pers) from clients';
opensql(dm.q1,ssql);

id_pers:=inttostr(dm.q1.fields[0].asinteger+1);

ssql:='insert into clients (nz,id_pers,tip) values ('+nz+','+id_pers+',0)';
executesql(dm.q1,ssql);

end;

// ид питания
if fzai_vvod.pitlb.itemindex<>-1 then pit_id:=pitan_id(fzai_vvod.pitlb.Items[fzai_vvod.pitlb.itemindex]) else pit_id:='0';

// ид трансфера
if fzai_vvod.trcb.text<>'' then trans_id:=t_id(fzai_vvod.trcb.text) else trans_id:='0';

// ид ТМ1
if fzai_vvod.tm1.text<>'' then tm1_id:=podregion_id(fzai_vvod.tm1.text) else tm1_id:='0';
// ид ТМ2
if fzai_vvod.tm2.text<>'' then tm2_id:=podregion_id(fzai_vvod.tm2.text) else tm2_id:='0';
// ид ТМ3
if fzai_vvod.tm3.text<>'' then tm3_id:=podregion_id(fzai_vvod.tm3.text) else tm3_id:='0';

// проезд
case fzai_vvod.rg2.itemindex of
0: proezd:='город-база-город';
1: proezd:='город-база';
2: proezd:='база-город';
3: proezd:='без проезда';
end;

// тип проезда
case fzai_vvod.rg3.itemindex of
0: tip_proezda:='взрослый';
1: tip_proezda:='ребенок 5-12';
2: tip_proezda:='ребенок до 5';
3: tip_proezda:='только проезд';
end;

// выкупленное место
if fzai_vvod.vmcb.Checked then vikup:='да' else vikup:='нет';

// подселение                                                                                                                                                                                                                                                                                  
if fzai_vvod.rg1.itemindex=0 then pods:='нет' else pods:='да';

end;

function pitan (codpit: string) :string;
begin
ssql:='select pit from pit where codeid='+codpit;
opensql(dm.q1,ssql);

result:=dm.q1.FieldByName('pit').asstring;
end;

procedure z_cl_b (mode : integer);
begin

case mode of
1: begin
with fblz_vvod do
begin

te1.text:='';
te2.text:='';
te3.text:='';
te4.text:='';
te5.text:='';
te6.text:='';

bmcb.checked:=false;
vmcb.checked:=false;

rg3.itemindex:=0;

idte.text:='';

end;
end;

2: begin
with fnest_vvod do
begin

te1.text:='';
te2.text:='';
te3.text:='';
te4.text:='';
te5.text:='';
te6.text:='';

bmcb.checked:=false;
vmcb.checked:=false;

rg3.itemindex:=0;
//rg2.itemindex:=0;

idte.text:='';

end;
end;
end;
end;

procedure z_clear(t : string);
begin

// очистка полей
with fzai_vvod do
begin

te1.text:='';
te2.text:='';
te3.text:='';
te4.text:='';
te5.text:='';
te6.text:='';

bmcb.checked:=false;
vmcb.checked:=false;

rg1.itemindex:=0;
rg3.onclick(fzai_vvod.b4);
rg2.onclick(fzai_vvod.b4);

b8.enabled:=false;
b9.enabled:=false;

idte.text:='';

end;

end;

procedure nom_v_gost_zaez (g,z:string);
var i: integer;
begin

ssql:='select distinct a.n,b.kat from bloki a left join kat b on a.c_kat=b.codeid where a.per='+quotedstr(z)+' and a.c_gost='+g+' and a.nz='+quotedstr('0')+' and a.tip=1 and a.a_b='+quotedstr('Авт.');
opensql(dm.q1,ssql);

for i:=1 to dm.q1.recordcount do
begin
fzai_vvod.katc.properties.Items.add(dm.q1.fieldbyname('kat').asstring+' # '+dm.q1.fieldbyname('n').asstring);
dm.q1.next;
end;

end;

procedure q2refr (nnz: string);
begin

ssql:='select a.*,b.m from clients a full outer join gostnom b on a.id_m=b.codeid where a.tip<>0 and a.nz='+nnz+' and a.annul<>'+quotedstr('да');
opensql(fzai_vvod.q2,ssql);

fzai_vvod.idte.text:='';

if fzai_vvod.q2.recordcount<>0 then
begin
with fzai_vvod do
begin
tr1.FullExpand;
q2.first;
tr1.onclick(fzai_vvod.b4);
q2.Last;
tr1.onclick(fzai_vvod.b4);
f_clear('1');
end;
end;
end;

function p2 (p: string):string;
begin

ssql:='select p from clients where id='+p;
opensql(dm.q1,ssql);

result:=dm.q1.FieldByName('p').asstring;

end;

function agent (codag: string) :string;
begin

ssql:='select a.naimen,b.podreg from agentstva a left join podreg b on a.podregion=b.codeid where a.codeid='+codag;
opensql(dm.q1,ssql);

result:=dm.q1.FieldByName('naimen').asstring+' // '+dm.q1.FieldByName('podreg').asstring;

end;

procedure reload_base;
begin

dm.RegQ.close;
dm.regq.open;

dm.agentQ.close;
dm.agentQ.open;

dm.gostin.close;
dm.gostin.open;

dm.podregq.close;
dm.podregq.open;

dm.transq.close;
dm.transq.open;

dm.kat.close;
dm.kat.open;

dm.pit.close;
dm.pit.open;

dm.komfq.close;
dm.komfq.open;

dm.vsop.close;
dm.vsop.open;

ssql:='select * from periods where d1>='+quotedstr(formatdatetime(dtf,strtodate(dnopper)))+
' and d2<='+quotedstr(formatdatetime(dtf,strtodate(dkopper)))+' order by d1';
opensql(dm.periods,ssql);

ssql:='select * from nest_d where d1>='+quotedstr(formatdatetime(dtf,strtodate(dnopper)))+
' and d1<='+quotedstr(formatdatetime(dtf,strtodate(dkopper)))+' order by d1';
opensql(dm.nest_d,ssql);

dm.dopcat.close;
dm.dopcat.open;

dm.dops.close;
dm.dops.open;

dm.avt.close;
dm.avt.open;

ssql:='select * from #map'+randid;
opensql(dm.map,ssql)

end;

procedure lock_appl;
begin

FMainForm.ToolBar1.Enabled:=false;

FMainForm.n27.Enabled:=false;
FMainForm.n43.Enabled:=false;
FMainForm.n5.Enabled:=false;

end;

procedure unlock_appl;
begin

with FMainForm do
begin

ToolBar1.Enabled:=true;

gostb.Enabled:=true;
perb.Enabled:=true;
otb.Enabled:=true;
clb.Enabled:=true;
agb.Enabled:=true;
regb.Enabled:=true;

n27.Enabled:=true;
n43.Enabled:=true;
n5.Enabled:=true;

end;

end;

function g_id (nazv: string):string;
begin

ssql:='select codeid from gostinici where nazvanie='+quotedstr(nazv);
opensql(dm.q1,ssql);

if dm.q1.recordcount=0 then result:='0' else result:=dm.q1.FieldByName('codeid').asstring;

end;

function g_id_podreg (nazv,podreg_id: string):string;
begin

ssql:='select codeid from gostinici where nazvanie='+quotedstr(nazv)+' and podregrazm='+podreg_id;
opensql(dm.q1,ssql);

if dm.q1.recordcount=0 then result:='0' else result:=dm.q1.FieldByName('codeid').asstring;
end;

function podregion_id (nazv: string):string;
begin

if dm.sp1.Active then dm.sp1.Active:=false;

with dm.sp1 do
begin

parameters.Clear;
procedurename:='podreg_id';
parameters.refresh;

parameters.parambyname('@podreg').value:=nazv;
execproc;
end;

if dm.sp1.Parameters.ParamByName('@podreg').Value<>null then
result:=dm.sp1.Parameters.ParamByName('@podreg').Value
else
result:='0';

end;

function region_id (nazv: string):string;
begin

with dm.sp1 do
begin

parameters.Clear;
procedurename:='reg_id';
parameters.refresh;

parameters.parambyname('@reg').value:=nazv;
execproc;
end;

if dm.sp1.Parameters.ParamByName('@reg').Value<>null then
result:=dm.sp1.Parameters.ParamByName('@reg').Value
else
result:='0';

end;

function pitan_id (nazv: string):string;
begin

ssql:='select codeid from pit where pit='+quotedstr(nazv);
opensql(dm.q1,ssql);

result:=dm.q1.FieldByName('codeid').asstring;

end;

function k_id (nazv: string):string;
var kat : string;
begin

if pos('#',nazv)<>0 then kat:=copy(nazv, 1, pos('#',nazv)-2) else kat:=nazv;

ssql:='select codeid from kat where kat='+quotedstr(kat);
opensql(dm.q1,ssql);

result:=dm.q1.FieldByName('codeid').asstring;

end;

procedure OpenSQL (Source:TADOQuery;ssql:string);
begin

with Source do
begin
Sql.Clear;
SQL.Add(sSQL);
Close;
Open;
end;

end;

procedure ExecuteSQL (Source:TADOQuery;ssql:string);
begin

with Source do
begin
close;
Sql.Clear;
SQL.Add(sSQL);
ExecSql;
end;

end;

function c_c (ssql:string):string;
begin
opensql(dm.q1,ssql);
result:=dm.q1.fieldbyname('codeid').asstring;
end;

function c_id (ssql:string):string;
begin
opensql(dm.q1,ssql);
result:=dm.q1.fieldbyname('id').asstring;
end;

function kateg (codkat: string) :string;
begin

ssql:='select kat from kat where codeid='+codkat;
opensql(dm.q5,ssql);

result:=dm.q5.FieldByName('kat').asstring;

end;

function gostin (codgost: string) :string;
begin

ssql:='select nazvanie from gostinici where codeid='+codgost;
opensql(dm.q5,ssql);

result:=dm.q5.FieldByName('nazvanie').asstring;

end;

function a_id (nazv: string):string;
var gor, ag: string;
begin

if pos('//',nazv)=0 then result:='0' else
begin

gor:=copy(nazv, pos('//',nazv)+3, length(nazv)-pos('//',nazv));
ag:=copy(nazv, 1, pos('//',nazv)-2);

if gor<>'' then
begin
ssql:='select codeid from agentstva where naimen='+quotedstr(ag)+' and podregion=(select codeid from podreg where podreg='+quotedstr(gor)+')';
opensql(dm.q1,ssql);

result:=dm.q1.FieldByName('codeid').asstring;
end
else
result:='0';

end;

end;

function t_id (nazv: string):string;
begin

ssql:='select codeid from tr where trstr='+quotedstr(nazv);
opensql(dm.q1,ssql);

result:=dm.q1.FieldByName('codeid').asstring;

end;

function nomer_id (nazv: string):string;
var nom, id: string;
begin

id:=copy(nazv, pos('#',nazv)+2, length(nazv)-pos('#',nazv));
nom:=copy(nazv, 1, pos('#',nazv)-2);

if nom<>'' then
begin

ssql:='select id from bloki where n='+id+' and c_gost='+gost_id+' and per='+quotedstr(per)+' and a_b='+quotedstr('Авт.')+' and c_kat=(select codeid from kat where kat='+quotedstr(nom)+')';
opensql(dm.q1,ssql);

if dm.q1.FieldByName('id').asstring='' then
result:='0'
else
result:=dm.q1.FieldByName('id').asstring;

end;

end;

function nomer_n (nazv: string):string;
begin
result:=copy(nazv, pos('#',nazv)+2, length(nazv)-pos('#',nazv));
end;

function nomer_n_bl (nazv: string):string;
begin
result:=copy(nazv, pos('#',nazv)+2, pos('&',nazv)-pos('#',nazv)-2);//length(nazv)-pos('&',nazv)-3);
                           //        2-х мест. "стандартный" # 1 & 10282
end;

function mesto_id (nazv: string) :string;
var mesto, id: string;
begin

id:=copy(nazv, pos('#',nazv)+2, length(nazv)-pos('#',nazv));
mesto:=copy(nazv, 1, pos('#',nazv)-2);

if mesto<>'' then
begin

if mesto='осн. место' then ssql:='select m_id from bloki where n='+id+' and c_gost='+gost_id+' and per='+quotedstr(per)+' and a_b='+quotedstr('Авт.')+' and p='+n_id+' and tip=2';
if mesto='доп. место' then ssql:='select m_id from bloki where n='+id+' and c_gost='+gost_id+' and per='+quotedstr(per)+' and a_b='+quotedstr('Авт.')+' and p='+n_id+' and tip=3';

opensql(dm.q1,ssql);

if dm.q1.FieldByName('m_id').asstring='' then
result:='0'
else
result:=dm.q1.FieldByName('m_id').asstring;

end;

end;

procedure mesta_v_nomere;
var i: integer;
begin

if n_id<>'' then
begin

FZai_vvod.mlb.Items.Clear;

ssql:='select distinct a.n,b.kat from bloki a left join kat b on a.c_kat=b.codeid where a.per='+quotedstr(per)+' and a.c_gost='+gost_id+' and a.id_pers=0 and (a.tip=2 or a.tip=3) and a.a_b='+quotedstr('Авт.')+' and p='+n_id+' order by b.kat desc';
opensql(dm.q1,ssql);

for i:=1 to dm.q1.recordcount do
begin
FZai_vvod.mlb.Items.add(dm.q1.fieldbyname('kat').asstring+' # '+dm.q1.fieldbyname('n').asstring);
dm.q1.next;
end;

if FZai_vvod.mlb.Items.count<>0 then FZai_vvod.mlb.itemindex:=0;

end;

end;

procedure nom_v_gost_nest (g,dt1,dt2,kmo_n,kmd_n,struc : string);
var i,j,k,l: integer;
dt : tdatetime;
dts, dres, k_add : string;
est,udovl : boolean;
begin

FNest_vvod.katc.properties.items.clear;
FNest_vvod.katc.text:='';

j:=strtoint(floattostr(strtodate(dt2)-strtodate(dt1)));

if j<0 then
begin
sm('Выбран некорректный период.');
exit;
end;

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

if j<>1 then

ssql:='select distinct c_kat,n_id,n from bloki where id in (select p from bloki where (c_gost='+g+
')  and (a_b='+quotedstr('Нест.')+') and (m_id<>0) and ((d in ('+dres+
') and (id_pers=0)) OR (((d='+quotedstr(dt1)+') OR (id_p_2pd=0)) OR ((d='+quotedstr(dt2)+
')) and (id_p_1pd=0)))) order by n_id'

else

ssql:='select distinct c_kat,n_id,n from bloki where id in (select p from bloki where (c_gost='+
g+')  and (a_b='+quotedstr('Нест.')+') and (m_id<>0) and (((d='+quotedstr(dt1)+
') and (id_p_2pd=0)) OR ((d='+quotedstr(dt2)+')) and (id_p_1pd=0))) order by n_id'; 

opensql(dm.q1,ssql);

pr_on;

for i:=1 to dm.q1.recordcount do
begin   // ++

pr(i,dm.q1.recordcount);

dts:=dt1;
udovl:=true;

for l:=1 to j+1 do 
begin    // +++

if (l=1) and (kmo_n<>'0') and (udovl=true) then
begin
ssql:='select count(*) from bloki where (c_gost='+g+')  and (a_b='+quotedstr('Нест.')+') and '+
'((d='+quotedstr(dts)+') and (id_p_2pd=0)) and (tip=2) and (p in (select id from bloki where c_kat='+
dm.q1.fieldbyname('c_kat').asstring+' and n_id='+dm.q1.fieldbyname('n_id').asstring+
' and n='+dm.q1.fieldbyname('n').asstring+'))';
opensql(dm.q2,ssql);
if dm.q2.fields[0].asinteger<strtoint(kmo_n) then udovl:=false;
end;

if (l<>1) and (l<>j+1) and (kmo_n<>'0') and (udovl=true) then
begin
ssql:='select count(*) from bloki where (c_gost='+g+
')  and (a_b='+quotedstr('Нест.')+') and '+
'(d='+quotedstr(dts)+') and (tip=2) and (id_pers=0) and (p in (select id from bloki where c_kat='+
dm.q1.fieldbyname('c_kat').asstring+' and n_id='+dm.q1.fieldbyname('n_id').asstring+
' and n='+dm.q1.fieldbyname('n').asstring+'))';
opensql(dm.q2,ssql);
if dm.q2.fields[0].asinteger<strtoint(kmo_n) then udovl:=false;
end;

if (l=j+1) and (kmo_n<>'0') and (udovl=true) then
begin
ssql:='select count(*) from bloki where (c_gost='+g+
')  and (a_b='+quotedstr('Нест.')+') and '+
'((d='+quotedstr(dts)+') and (id_p_1pd=0)) and (tip=2) and (p in (select id from bloki where c_kat='+
dm.q1.fieldbyname('c_kat').asstring+' and n_id='+dm.q1.fieldbyname('n_id').asstring+' and n='+
dm.q1.fieldbyname('n').asstring+'))';
opensql(dm.q2,ssql);
if dm.q2.fields[0].asinteger<strtoint(kmo_n) then udovl:=false;
end;

// на доп. места

if (l=1) and (kmd_n<>'0') and (udovl=true) then
begin
ssql:='select count(*) from bloki where (c_gost='+g+
')  and (a_b='+quotedstr('Нест.')+') and '+
'((d='+quotedstr(dts)+') and (id_p_2pd=0)) and (tip=3) and (p in (select id from bloki where c_kat='+
dm.q1.fieldbyname('c_kat').asstring+' and n_id='+dm.q1.fieldbyname('n_id').asstring+' and n='+
dm.q1.fieldbyname('n').asstring+'))';
opensql(dm.q2,ssql);
if dm.q2.fields[0].asinteger<strtoint(kmd_n) then udovl:=false;
end;

if (l<>1) and (l<>j+1) and (kmd_n<>'0') and (udovl=true) then
begin
ssql:='select count(*) from bloki where (c_gost='+g+
')  and (a_b='+quotedstr('Нест.')+') and '+
'(d='+quotedstr(dts)+') and (tip=3) and (id_pers=0) and (p in (select id from bloki where c_kat='+
dm.q1.fieldbyname('c_kat').asstring+' and n_id='+dm.q1.fieldbyname('n_id').asstring+' and n='+
dm.q1.fieldbyname('n').asstring+'))';
opensql(dm.q2,ssql);
if dm.q2.fields[0].asinteger<strtoint(kmd_n) then udovl:=false;
end;

if (l=j+1) and (kmd_n<>'0') and (udovl=true) then
begin
ssql:='select count(*) from bloki where (c_gost='+g+
')  and (a_b='+quotedstr('Нест.')+') and '+
'((d='+quotedstr(dts)+') and (id_p_1pd=0)) and (tip=3) and (p in (select id from bloki where c_kat='+
dm.q1.fieldbyname('c_kat').asstring+' and n_id='+dm.q1.fieldbyname('n_id').asstring+' and n='+
dm.q1.fieldbyname('n').asstring+'))';
opensql(dm.q2,ssql);
if dm.q2.fields[0].asinteger<strtoint(kmd_n) then udovl:=false;
end;

dts := datetostr(strtodate(dts)+1);

end;  // +++

if udovl=true then
begin

est:=false;

k_add:=kateg(dm.q1.fieldbyname('c_kat').asstring)+' # '+dm.q1.fieldbyname('n').asstring+
' & '+dm.q1.fieldbyname('n_id').asstring;

for k:=0 to FNest_vvod.katc.properties.items.count-1 do
begin
if FNest_vvod.katc.properties.items[k]=k_add then est:=true;
end;

if (est=false) and (kateg(dm.q1.fieldbyname('c_kat').asstring)<>'') then
FNest_vvod.katc.properties.items.add(k_add);

end;

dm.q1.next;

end; // ++

if FNest_vvod.katc.Properties.Items.Count<>0 then FNest_vvod.katc.text:=FNest_vvod.katc.Properties.Items[0];

pr_off;

end;

function no_quotes (str : string) : string;
begin

while pos('"',str)<>0 do
begin
str:=copy(str,1,pos('"',str)-1)+copy(str,pos('"',str)+1,length(str)-pos('"',str));
end;

result:=str;

end;

///////////////////////////////

{

CREATE VIEW dbo.slv_Client_Baza_Gost
AS
SELECT     p.id, p.nz, CONVERT(smalldatetime, SUBSTRING(p.per, 7, 4) + '-' + SUBSTRING(p.per, 4, 2) + '-' + SUBSTRING(p.per, 1, 2)) AS Datan, SUBSTRING(p.per, 
                      1, 5) + '-' + SUBSTRING(p.per, 12, 5) AS per, p.f AS famil, p.data_opl, p.data_zai, p.oplacheno, p.stoim, p.id_ag, p1.Naimen AS name_ag, 
                      p1.Podreg AS podreg_ag, p.id_gost AS C_Gostin, p3.Nazvanie AS name_gost, p3.podreg AS podreg_gost, p.annul
FROM         dbo.clients p INNER JOIN
                      dbo.SLV_AG p1 ON p.id_ag = p1.Cod_AG INNER JOIN
                      dbo.SLV_Gost p3 ON p.id_gost = p3.Cod_Gost
WHERE     (p.tip = 1)

////////

CREATE VIEW dbo.slv_ClientFull
AS
SELECT     p.id, p.nz, CONVERT(smalldatetime, SUBSTRING(p.per, 7, 4) + '-' + SUBSTRING(p.per, 4, 2) + '-' + SUBSTRING(p.per, 1, 2)) AS Datan, SUBSTRING(p.per, 
                      1, 5) + '-' + SUBSTRING(p.per, 12, 5) AS per, p.f AS famil, p.data_opl, p.data_zai, p.oplacheno,
                      stoim=
                      CASE 
                      WHEN p.annul='???'  THEN p.stoim
                      WHEN p.annul='??'    THEN 0 END, 
                      p.sebest, p.id_ag, p1.Naimen AS name_ag, 
                      p1.Podreg AS podreg_ag, p.id_gost AS C_Gostin, p3.Nazvanie AS name_gost, p3.podreg AS podreg_gost, p4.id_kat, p4.raz, p.annul
FROM         dbo.clients1 p INNER JOIN
                      dbo.SLV_AG p1 ON p.id_ag = p1.Cod_AG INNER JOIN
                      dbo.SLV_Gost p3 ON p.id_gost = p3.Cod_Gost INNER JOIN
                      dbo.clients2 p4 ON p.id = p4.p

/////////

CREATE VIEW dbo.slv_ClientFull1
AS
SELECT     p.id, p.nz, p.Datan, p.per, p.famil, p.data_opl, p.data_zai, p.oplacheno,
                   stoim=
                      CASE 
                      WHEN p.annul='???'  THEN p.stoim
                      WHEN p.annul='??'    THEN 0 END, 
                    p.sebest, p.id_ag, p.name_ag, p.podreg_ag, p.C_Gostin, p.name_gost, 
                      p.podreg_gost, p.id_kat, p.raz, p1.Kat, p.annul
FROM         dbo.slv_ClientFull p INNER JOIN
                      dbo.kat p1 ON p.id_kat = p1.Codeid

////////

CREATE VIEW slv_MainDolg
as
select cod_ag,StartDate,'???? ?? '+CONVERT(varchar(12) ,StartDate,104) as Napr,
sum(Dolg) as StartDolg 
from slv_MainDolg_AG 
group by StartDate,cod_AG

///////

CREATE view SLV_Sebest
as
SELECT     p.id, p.nz, CONVERT(smalldatetime, SUBSTRING(p.per, 7, 4) + '-' + SUBSTRING(p.per, 4, 2) + '-' + SUBSTRING(p.per, 1, 2)) AS Datan, p.per AS Zaezd, 
                      p.f AS FIO, p.oplacheno, p.stoim, p.sebest, p.id_ag AS C_Agentstvo, p1.Naimen, p1.Podreg AS podregAg, p.id_gost AS C_Gost, p3.Nazvanie, 
                      p3.podreg AS podregGost, p.annul
FROM         dbo.clients p INNER JOIN
                      dbo.SLV_AG p1 ON p.id_ag = p1.Cod_AG INNER JOIN
                      dbo.SLV_Gost p3 ON p.id_gost = p3.Cod_Gost
WHERE     (p.tip = '1')


CAST('+
quotedstr(stoimte.Text)+' as money)

// запятая в цене
stoimte.text:=zap(stoimte.text);

}

procedure TDM.MapCalcFields(DataSet: TDataSet);
begin
map.FieldByName('n').asinteger:=abs(map.recno);
end;

end.
