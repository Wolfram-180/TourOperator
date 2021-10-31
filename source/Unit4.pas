unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxExEdtr, cxLookAndFeelPainters, DB, FR_Class, FR_E_HTML2,
  FR_DSet, FR_DBSet, ADODB, cxMaskEdit, cxDropDownEdit, cxControls,
  cxContainer, cxEdit, cxTextEdit, StdCtrls, cxButtons, dxDBTLCl, dxTL,
  dxDBCtrl, dxCntner, dxDBTL, cxCalendar;

type
  TFVauch = class(TForm)
    Label7: TLabel;
    tr1: TdxDBTreeList;
    tr1id: TdxDBTreeListMaskColumn;
    katColumn: TdxDBTreeListColumn;
    tr1f: TdxDBTreeListColumn;
    tr1i: TdxDBTreeListColumn;
    tr1o: TdxDBTreeListColumn;
    StoimCol: TdxDBTreeListColumn;
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
    AgColumn: TdxDBTreeListColumn;
    PitColumn: TdxDBTreeListColumn;
    MestoColumn: TdxDBTreeListColumn;
    trColumn: TdxDBTreeListColumn;
    Tm1Column: TdxDBTreeListColumn;
    Tm2Column: TdxDBTreeListColumn;
    Tm3Column: TdxDBTreeListColumn;
    BezMestaColumn: TdxDBTreeListColumn;
    proezdColumn: TdxDBTreeListColumn;
    tip_proezdaColumn: TdxDBTreeListColumn;
    vikupColumn: TdxDBTreeListColumn;
    OperColumn: TdxDBTreeListColumn;
    b1: TcxButton;
    te4: TcxTextEdit;
    b2: TcxButton;
    b3: TcxButton;
    q1: TADOQuery;
    fr1: TfrReport;
    ds1: TfrDBDataSet;
    hte1: TfrHTML2Export;
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
    qcla_b: TWideStringField;
    qclannul: TWideStringField;
    qcloper: TWideStringField;
    qclstoim: TBCDField;
    qclm: TWideStringField;
    qall: TADOQuery;
    AutoIncField2: TAutoIncField;
    WideStringField19: TWideStringField;
    WideStringField20: TWideStringField;
    WideStringField21: TWideStringField;
    WideStringField22: TWideStringField;
    WideStringField23: TWideStringField;
    WideStringField24: TWideStringField;
    WideStringField25: TWideStringField;
    WideStringField26: TWideStringField;
    WideStringField27: TWideStringField;
    WideStringField28: TWideStringField;
    WideStringField29: TWideStringField;
    WideStringField30: TWideStringField;
    WideStringField31: TWideStringField;
    WideStringField32: TWideStringField;
    IntegerField16: TIntegerField;
    IntegerField17: TIntegerField;
    IntegerField18: TIntegerField;
    IntegerField19: TIntegerField;
    IntegerField20: TIntegerField;
    IntegerField21: TIntegerField;
    IntegerField22: TIntegerField;
    IntegerField23: TIntegerField;
    IntegerField24: TIntegerField;
    IntegerField25: TIntegerField;
    IntegerField26: TIntegerField;
    IntegerField27: TIntegerField;
    IntegerField28: TIntegerField;
    IntegerField29: TIntegerField;
    IntegerField30: TIntegerField;
    DateTimeField4: TDateTimeField;
    DateTimeField5: TDateTimeField;
    DateTimeField6: TDateTimeField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    StringField13: TStringField;
    StringField14: TStringField;
    WideStringField33: TWideStringField;
    WideStringField34: TWideStringField;
    WideStringField35: TWideStringField;
    BCDField2: TBCDField;
    WideStringField36: TWideStringField;
    qalln_vauch: TIntegerField;
    qallgostin: TStringField;
    qallgost_gor: TStringField;
    de1: TcxDateEdit;
    Label1: TLabel;
    qalloplata: TWideStringField;
    qallpodtv: TWideStringField;
    qallbez_pr: TWideStringField;
    qalldata_podtv: TDateTimeField;
    qalldata_vauch: TDateTimeField;
    qalloplacheno: TBCDField;
    qallnapr: TIntegerField;
    b4: TcxButton;
    qallz: TADOQuery;
    ds2: TDataSource;
    Label2: TLabel;
    Label3: TLabel;
    cb1: TcxComboBox;
    cb2: TcxComboBox;
    qallnest_tip: TWideStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure b1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure b2Click(Sender: TObject);
    procedure b3Click(Sender: TObject);
    procedure b4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FVauch: TFVauch;

implementation

uses Unit85,unit11;

{$R *.dfm}

procedure TFVauch.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action := caFree;
fvauch := nil;
end;

procedure TFVauch.b1Click(Sender: TObject);
begin

if qall.fieldbyname('tip').asstring<>'2' then
begin
showmessage('Выберите номер.');
exit;
end;

vau_lock;

lid:=qall.fieldbyname('id').asinteger;

ssql:='select nest_tip from clients where id='+qall.fieldbyname('p').asstring;
opensql(q1,ssql);

vau_prep(qall.fieldbyname('a_b').asstring,q1.fieldbyname('nest_tip').asstring);

fr1.showreport;

vau_refr;

vau_unlock;

end;

procedure TFVauch.FormCreate(Sender: TObject);
var i: integer;
begin

dm.pit.first;

for i:=1 to dm.pit.recordcount do
begin
cb1.Properties.Items.Add(dm.pit.fieldbyname('pit').asstring);
cb2.Properties.Items.Add(dm.pit.fieldbyname('pit').asstring);
dm.pit.next;
end;

dm.pit.first;

te4.text:=user;

de1.date:=date;

ssql:='select a.*,b.m,c.napr from (clients a full outer join gostnom b on a.id_m=b.codeid) left join gostinici c on a.id_gost=c.codeid where a.tip<>0 and a.nz='+nz+' and a.annul<>'+quotedstr('да');
opensql(qall,ssql);

qall.first;
dm.gostin.locate('codeid',qall.fieldbyname('id_gost').asinteger,[]);
rchb:=dm.gostin.fieldbyname('rchb').asstring;
adres:=dm.gostin.fieldbyname('adres').asstring;

tr1.FullExpand;

end;

procedure TFVauch.b2Click(Sender: TObject);
begin

if qall.fieldbyname('tip').asstring<>'2' then
begin
showmessage('Выберите номер.');
exit;
end;

vau_lock;

lid:=qall.fieldbyname('id').asinteger;

vau_prep(qall.fieldbyname('a_b').asstring,qall.fieldbyname('nest_tip').asstring);

fr1.PrintPreparedReport('',1,true,frall);

vau_refr;

vau_unlock;

end;

procedure TFVauch.b3Click(Sender: TObject);
begin

if qall.fieldbyname('tip').asstring<>'2' then
begin
showmessage('Выберите номер.');
exit;
end;

vau_lock;

lid:=qall.fieldbyname('id').asinteger;

vau_prep(qall.fieldbyname('a_b').asstring,qall.fieldbyname('nest_tip').asstring);

fr1.ExportTo(hte1,sharedf+'\exported\ваучер_'+inttostr(n_vauch)+'_.html');

vau_refr;

vau_unlock;

end;

procedure TFVauch.b4Click(Sender: TObject);
var i,j: integer;
begin

qall.first;
if qall.fieldbyname('a_b').asstring='Блок' then
begin
sm('Данная функция недоступна для блочных номеров.');
exit;
end;

vau_lock;

ssql:='select nz from clients where tip=1 and annul<>'+quotedstr('да')+' and per='+quotedstr(per)+' and id_gost='+gost_id;
opensql(qallz,ssql);

for i:=1 to qallz.recordcount do
begin

nz:=qallz.fieldbyname('nz').asstring;

ssql:='select a.*,b.m,c.napr from (clients a full outer join gostnom b on a.id_m=b.codeid) left join gostinici c on a.id_gost=c.codeid where a.tip<>0 and a.nz='+nz+' and a.annul<>'+quotedstr('да');
opensql(qall,ssql);

for j:=1 to qall.recordcount do
begin

if qall.fieldbyname('tip').asinteger=2 then
begin

lid:=qall.fieldbyname('id').asinteger;
vau_prep(qall.fieldbyname('a_b').asstring,qall.fieldbyname('nest_tip').asstring);
fr1.PrintPreparedReport('',1,true,frall);

end;

qall.next;

end;

qallz.next;

end;

vau_unlock;

end;

end.
