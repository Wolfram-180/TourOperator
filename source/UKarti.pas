unit UKarti;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxControls, cxContainer, cxListBox, OleServer, ExcelXP, StdCtrls,
  OleCtnrs,ComObj,unit85, dxExEdtr, DB, dxCntner, dxTL, dxDBCtrl, dxDBGrid,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxGroupBox,
  cxRadioGroup, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxLookAndFeelPainters, cxButtons, dxDBTLCl, dxGrClms;

type
  TFKarti = class(TForm)
    gr: TdxDBGrid;
    ds: TDataSource;
    grn: TdxDBGridColumn;
    grm1: TdxDBGridColumn;
    grm2: TdxDBGridColumn;
    grm: TdxDBGridColumn;
    grm3: TdxDBGridColumn;
    va: TcxComboBox;
    ca: TcxComboBox;
    cn: TcxComboBox;
    cp: TcxComboBox;
    co: TcxComboBox;
    rg1: TcxRadioGroup;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    de: TcxDateEdit;
    Label6: TLabel;
    c: TcxComboBox;
    Label7: TLabel;
    b1: TcxButton;
    rg2: TcxRadioGroup;
    e: TcxComboBox;
    st: TStaticText;
    rg3: TcxRadioGroup;
    b2: TcxButton;
    grm4: TdxDBGridColumn;
    dxDBGrid1: TdxDBGrid;
    ds2: TDataSource;
    b3: TcxButton;
    b4: TcxButton;
    b5: TcxButton;
    dxDBGrid1f: TdxDBGridColumn;
    dxDBGrid1i: TdxDBGridColumn;
    dxDBGrid1nz: TdxDBGridMaskColumn;
    dxDBGrid1dt_begin: TdxDBGridDateColumn;
    dxDBGrid1dt_end: TdxDBGridDateColumn;
    dxDBGrid1proezd: TdxDBGridColumn;
    dxDBGrid1ra: TdxDBGridColumn;
    dxDBGrid1ma: TdxDBGridColumn;
    dxDBGrid1id: TdxDBGridMaskColumn;
    dxDBGrid1id_avt: TdxDBGridColumn;
    dxDBGrid1ea: TdxDBGridColumn;
    dxDBGrid1id_avt_o: TdxDBGridColumn;
    dxDBGrid1eao: TdxDBGridColumn;
    dxDBGrid1rao: TdxDBGridColumn;
    dxDBGrid1mao: TdxDBGridColumn;
    dxDBGrid1avt_nazv: TdxDBGridColumn;
    dxDBGrid1avt_nazv_o: TdxDBGridColumn;
    b6: TcxButton;
    Label8: TLabel;
    cbpodreg: TcxComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure grClick(Sender: TObject);
    procedure b1Click(Sender: TObject);
    procedure dePropertiesChange(Sender: TObject);
    procedure vaMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cPropertiesChange(Sender: TObject);
    procedure cnMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cpMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure coMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure b3Click(Sender: TObject);
    procedure b2Click(Sender: TObject);
    procedure b4Click(Sender: TObject);
    procedure b5Click(Sender: TObject);
    procedure b6Click(Sender: TObject);
    procedure cbpodregMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var FKarti: TFKarti;

implementation

{$R *.dfm}

procedure TFKarti.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action := caFree;
FKarti := nil;
end;

procedure TFKarti.grClick(Sender: TObject);
begin

if (dm.map.recordcount=0) or (gr.FocusedField.FieldName='n') or
(dm.map.Fieldbyname(gr.FocusedField.FieldName).asstring='') then
begin
{l1.Caption:='';
l2.Caption:='';}
exit;
end;

{l1.Caption:='Место '+mesto(gr.FocusedField.FieldName);
l2.Caption:='Ряд '+dm.map.FieldByName('n').asstring; }

end;

procedure TFKarti.b1Click(Sender: TObject);
var avi,et,napr,datest: string;
begin

if ((rg2.itemindex=0) and (va.text='')) or ((rg2.itemindex=1) and (ca.text='')) or (de.text='') then
begin
sm('Не указаны необходимые данные.');
exit;
end;

ssql:='delete from #map'+randid;
executesql(dm.q1,ssql);

case rg2.itemindex of
0: avi:=copy(va.text,pos('#',va.text)+1,6);
1: avi:=copy(ca.text,pos('#',ca.text)+1,6);
end;

case rg3.itemindex of
0: napr:='туда';
1: napr:='обратно';
end;

et:=e.text;

datest:=de.text;

avt_lock;

b2.onclick(sender);

rassadka (avi,et,napr,datest);

end;

procedure TFKarti.dePropertiesChange(Sender: TObject);
var i : integer;
begin

c.Properties.Items.clear;

ssql:='select distinct graf from periods where d'+inttostr(rg3.itemindex+1)+'='+quotedstr(de.text);
opensql(dm.q1,ssql);

if dm.q1.recordcount=0 then exit;

c.text:=dm.q1.fields[0].asstring;

for i:=1 to dm.q1.recordcount do
begin
c.Properties.Items.add(dm.q1.fields[0].asstring);
dm.q1.next;
end;

dm.q1.first;

c.text:=dm.q1.fields[0].asstring;

end;

procedure TFKarti.vaMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var i : integer;
begin

va.Properties.Items.clear;

ssql:='select id,marka,nomer from avt';
opensql(dm.q1,ssql);

if dm.q1.recordcount=0 then exit;

for i:=1 to dm.q1.recordcount do
begin
va.Properties.Items.add(dm.q1.fields[1].asstring+' '+dm.q1.fields[2].asstring+' #'+dm.q1.fields[0].asstring);
dm.q1.next;
end;

dm.q1.first;

va.text:=dm.q1.fields[1].asstring+' '+dm.q1.fields[2].asstring+' #'+dm.q1.fields[0].asstring;

end;

procedure TFKarti.cPropertiesChange(Sender: TObject);
var i : integer;
begin

ca.Properties.Items.clear;

if c.text='' then exit;

ssql:='select id,marka,nomer from avt where c='+c.text;
opensql(dm.q1,ssql);

if dm.q1.recordcount=0 then exit;

for i:=1 to dm.q1.recordcount do
begin
ca.Properties.Items.add(dm.q1.fields[1].asstring+' '+dm.q1.fields[2].asstring+' #'+dm.q1.fields[0].asstring);
dm.q1.next;
end;

dm.q1.first;

ca.text:=dm.q1.fields[1].asstring+' '+dm.q1.fields[2].asstring+' #'+dm.q1.fields[0].asstring;

end;

procedure TFKarti.cnMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var i : integer;
begin

cn.Properties.Items.clear;

ssql:='select distinct napr from gostinici';
opensql(dm.q1,ssql);

if dm.q1.recordcount=0 then exit;

for i:=1 to dm.q1.recordcount do
begin
cn.Properties.Items.add(dm.q1.fields[0].asstring);
dm.q1.next;
end;

dm.q1.first;

cn.text:=dm.q1.fields[0].asstring;

end;

procedure TFKarti.cpMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
combo_gost_podreg_load (fkarti.cp,'все');
end;

procedure TFKarti.coMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin

if cbpodreg.Text='' then exit;
combo_gost_on_podreg_load(FKarti.co,'все',podregion_id(FKarti.cbpodreg.text));

//combo_gost_vse_l (fkarti.co);
end;

procedure TFKarti.b3Click(Sender: TObject);
begin
ssql:='delete from #map'+randid;
executesql(dm.q1,ssql);

dm.Map.Close;
dm.Map.open;

avt_unlock;
end;

procedure TFKarti.b2Click(Sender: TObject);
var napr_pr,dt_b_e : string;
begin

case rg3.itemindex of
0:
begin
napr_pr:=' and ((proezd='+quotedstr('город-база-город')+') or (proezd='+quotedstr('город-база')+'))';
dt_b_e:='dt_begin';
end;
1:
begin
napr_pr:=' and ((proezd='+quotedstr('город-база-город')+') or (proezd='+quotedstr('база-город')+'))';
dt_b_e:='dt_end';
end;
end;

ssql:='select id,f,i,nz,dt_begin,dt_end,proezd,id_avt,ea,ra,ma,id_avt_o,eao,rao,mao,avt_nazv,avt_nazv_o from clients where (p in (select id from clients where p in (select id from clients where (id_gost='+
g_id(co.text)+') and ('+dt_b_e+'='+quotedstr(de.text)+') and (annul='+quotedstr('нет')+') and (tip=1)'+
'))) and annul='+quotedstr('нет')+' and a_b in ('+quotedstr('Авт.')+','+quotedstr('Блок')+')'+napr_pr;
opensql(dm.rassq,ssql);

end;

procedure TFKarti.b4Click(Sender: TObject);
var avt_id_t_o,avt_nazv_t_o,avt_ea_t_o,avt_ra_t_o,avt_ma_t_o,avi,avnazv,et : string;
begin

if (dm.map.recordcount=0) or (dm.rassq.recordcount=0) or (gr.FocusedField.FieldName='n') or
(dm.map.Fieldbyname(gr.FocusedField.FieldName).asstring='') then
begin
sm('Не указаны необходимые данные.');
exit;
end;

if (dm.map.Fieldbyname(gr.FocusedField.FieldName).asstring<>'СМ') then
begin
sm('Место занято.');
exit;
end;

case rg3.itemindex of

0:
if dm.rassq.Fieldbyname('id_avt').asstring<>'' then
begin
sm('Клиент уже занимает место.');
exit;
end;

1:
if dm.rassq.Fieldbyname('id_avt_o').asstring<>'' then
begin
sm('Клиент уже занимает место.');
exit;
end;

end;

case rg2.itemindex of
0: avi:=copy(va.text,pos('#',va.text)+1,6);
1: avi:=copy(ca.text,pos('#',ca.text)+1,6);
end;

case rg3.itemindex of
0:
begin
avt_id_t_o:='id_avt';
avt_nazv_t_o:='avt_nazv';
avt_ea_t_o:='ea';
avt_ra_t_o:='ra';
avt_ma_t_o:='ma';
end;
1:
begin
avt_id_t_o:='id_avt_o';
avt_nazv_t_o:='avt_nazv_o';
avt_ea_t_o:='eao';
avt_ra_t_o:='rao';
avt_ma_t_o:='mao';
end;
end;

et:=e.text;

case rg2.itemindex of
0: avnazv:=copy(va.text,1,pos('#',va.text)-1);
1: avnazv:=copy(ca.text,1,pos('#',ca.text)-1);
end;

ssql:='update clients set '+
avt_id_t_o+'='+quotedstr(avi)+','+
avt_nazv_t_o+'='+quotedstr(avnazv)+','+
avt_ea_t_o+'='+quotedstr(et)+','+
avt_ra_t_o+'='+quotedstr(dm.map.FieldByName('n').asstring)+','+
avt_ma_t_o+'='+quotedstr(mesto(gr.FocusedField.FieldName))+
' where id='+dm.rassq.Fieldbyname('id').asstring;

executesql(dm.q1,ssql);

sr(dm.rassq,'id',dm.rassq.Fieldbyname('id').asstring);

{idloc:=dm.rassq.Fieldbyname('id').asstring;

dm.rassq.close;
dm.rassq.open;
dm.rassq.locate('id',idloc,[]); }

b1.onclick(sender);

end;

procedure TFKarti.b5Click(Sender: TObject);
var avt_id_t_o,avt_nazv_t_o,avt_ea_t_o,avt_ra_t_o,avt_ma_t_o : string;
begin

if dm.rassq.recordcount=0 then
begin
sm('Не указаны необходимые данные.');
exit;
end;

case rg3.itemindex of
0:
begin
avt_id_t_o:='id_avt';
avt_nazv_t_o:='avt_nazv';
avt_ea_t_o:='ea';
avt_ra_t_o:='ra';
avt_ma_t_o:='ma';
end;
1:
begin
avt_id_t_o:='id_avt_o';
avt_nazv_t_o:='avt_nazv_o';
avt_ea_t_o:='eao';
avt_ra_t_o:='rao';
avt_ma_t_o:='mao';
end;
end;

ssql:='update clients set '+
avt_id_t_o+'='+quotedstr('')+','+
avt_nazv_t_o+'='+quotedstr('')+','+
avt_ea_t_o+'='+quotedstr('')+','+
avt_ra_t_o+'='+quotedstr('')+','+
avt_ma_t_o+'='+quotedstr('')+
' where id='+dm.rassq.Fieldbyname('id').asstring;

executesql(dm.q1,ssql);

//idloc:=dm.rassq.Fieldbyname('id').asstring;

{dm.rassq.close;
dm.rassq.open;
dm.rassq.locate('id',idloc,[]);}

sr(dm.rassq,'id',dm.rassq.Fieldbyname('id').asstring);

b1.onclick(sender);

end;

procedure TFKarti.b6Click(Sender: TObject);
var a : string;
begin

if de.Date>=strtodate('30.06.2006') then
begin
sm('Извините, в ознакомительном режиме рассадка работает для заездов до 30 июня 2006 г. Стоимость перевода в полный режим: 3000 руб.');
exit;
end;

b1.onclick(sender);

ssql:='select * from #map'+randid;
opensql(dm.qit,ssql);

dm.fr.LoadFromFile(sharedf+'\reports\rass.frf');

case rg2.itemindex of
0: a:=va.text;
1: a:=ca.text;
end;

dm.fr.FindObject('memo3').memo.text:='Автобус: '+a+' Дата: '+de.text+' Направление: '+rg3.Properties.Items[rg3.itemindex].Caption;

dm.fr.PrepareReport;
dm.fr.ShowReport;

//if all_st=false then dm.fr.ShowReport else dm.fr.PrintPreparedReport('', 1, true, frall);

end;

procedure TFKarti.cbpodregMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
combo_gost_podreg_load (FKarti.cbpodreg,'все');
end;

end.
