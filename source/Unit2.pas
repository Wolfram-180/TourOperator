unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxExEdtr, DB, ADODB, dxDBTLCl, dxTL, dxDBCtrl, dxCntner, dxDBTL,
  cxLookAndFeelPainters, cxMaskEdit, cxDropDownEdit, StdCtrls, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxButtons, frHTMExp, FR_Class,
  FR_E_HTML2, FR_DSet, FR_DBSet, FR_Desgn;

type
  TFPodtver = class(TForm)
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
    ds2: TDataSource;
    qag: TADOQuery;
    q1: TADOQuery;
    b1: TcxButton;
    te1: TcxTextEdit;
    Label1: TLabel;
    cb1: TcxComboBox;
    Label2: TLabel;
    cb2: TcxComboBox;
    Label3: TLabel;
    te3: TcxTextEdit;
    Label4: TLabel;
    te2: TcxTextEdit;
    Label5: TLabel;
    Label6: TLabel;
    cb3: TcxComboBox;
    fr1: TfrReport;
    ds1: TfrDBDataSet;
    hte1: TfrHTML2Export;
    te4: TcxTextEdit;
    Label7: TLabel;
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
    qagCodeid: TAutoIncField;
    qagRegion: TIntegerField;
    qagPodregion: TIntegerField;
    qagNaimen: TWideStringField;
    qagAdres: TWideStringField;
    qagTfe: TWideStringField;
    qagDirektor: TWideStringField;
    qagKL: TWideStringField;
    qagDogovor: TWideStringField;
    qagDFZ: TDateTimeField;
    qagKob: TWideStringField;
    qagKtr: TWideStringField;
    qagC: TWideStringField;
    qagInn: TWideStringField;
    qagKpp: TWideStringField;
    qagRs: TWideStringField;
    qagKs: TWideStringField;
    qagBik: TWideStringField;
    qagAdres_fak: TWideStringField;
    qagPokup: TWideStringField;
    qagBank: TWideStringField;
    qagFax: TWideStringField;
    qagEmail: TWideStringField;
    qagSite: TWideStringField;
    qagDzakl: TWideStringField;
    qagNdog: TWideStringField;
    qagMain: TWideStringField;
    qagZam: TWideStringField;
    qagoch: TIntegerField;
    qagoch2: TIntegerField;
    qagavtobusnoe: TStringField;
    qagtorg: TStringField;
    qagpodreg: TStringField;
    qallgostin: TStringField;
    qcla_b: TWideStringField;
    qclannul: TWideStringField;
    qcloper: TWideStringField;
    qclstoim: TBCDField;
    qclm: TWideStringField;
    qrazm: TADOQuery;
    qrazmid_kat: TIntegerField;
    ds3: TfrDBDataSet;
    qrazmkatcol: TStringField;
    b2: TcxButton;
    b3: TcxButton;
    Label8: TLabel;
    te5: TcxTextEdit;
    qrazmpods: TStringField;
    qrazmdpm: TStringField;
    qrazmid_n: TIntegerField;
    qrazmid: TIntegerField;
    qalloplata: TWideStringField;
    qallpodtv: TWideStringField;
    qallbez_pr: TWideStringField;
    qallspo: TWideStringField;
    qalln_vauch: TIntegerField;
    qalldata_podtv: TDateTimeField;
    qalldata_vauch: TDateTimeField;
    qalloplacheno: TBCDField;
    qallsebest: TBCDField;
    qallnew_cl: TIntegerField;
    qallinf_pr: TWideStringField;
    qrazma_b: TStringField;
    frDesigner1: TfrDesigner;
    qallnest_tip: TWideStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure b1Click(Sender: TObject);
    procedure b2Click(Sender: TObject);
    procedure b3Click(Sender: TObject);
    procedure fr1PrintReport;
    procedure qrazmCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPodtver: TFPodtver;

implementation

uses Unit85,unit11;

{$R *.dfm}

procedure TFPodtver.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action := caFree;
Fpodtver := nil;
end;

procedure TFPodtver.FormCreate(Sender: TObject);
var i: integer;
begin

dm.pit.first;

for i:=1 to dm.pit.recordcount do
begin
cb1.Properties.Items.Add(dm.pit.fieldbyname('pit').asstring);
cb2.Properties.Items.Add(dm.pit.fieldbyname('pit').asstring);
dm.pit.next;
end;

te4.text:=user;

ssql:='select a.*,b.m from clients a full outer join gostnom b on a.id_m=b.codeid where a.tip<>0 and a.nz='+nz+' and a.annul<>'+quotedstr('да');
opensql(qall,ssql);

ssql:='select a.*,b.m from clients a full outer join gostnom b on a.id_m=b.codeid where a.tip=3 and a.nz='+nz+' and a.annul<>'+quotedstr('да')+' order by a.p';
opensql(qcl,ssql);

ssql:='select id,id_kat,id_n,a_b from clients where tip=2 and nz='+nz+' and annul<>'+quotedstr('да')+' order by id';
opensql(qrazm,ssql);

ssql:='select * from agentstva where codeid='+qall.fieldbyname('id_ag').asstring;
opensql(qag,ssql);

fpodtver.qall.first;
dm.gostin.locate('codeid',fpodtver.qall.fieldbyname('id_gost').asinteger,[]);

gorod:=dm.gostin.fieldbyname('podregn').asstring;
rchb:=dm.gostin.fieldbyname('rchb').asstring;

if dm.gostin.fieldbyname('exk').asstring='да' then exk:=true else exk:=false;

te3.Text:=qall.fieldbyname('stoim').asstring;

//sm(st_sebest(q3.fieldbyname('nz').asstring)); !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

end;

procedure TFPodtver.b1Click(Sender: TObject);
begin
podtv_prep(qall.fieldbyname('a_b').asstring,qall.fieldbyname('nest_tip').asstring);
fr1.showreport;
end;

procedure TFPodtver.b2Click(Sender: TObject);
begin
podtv_prep(qall.fieldbyname('a_b').asstring,qall.fieldbyname('nest_tip').asstring);
fr1.PrintPreparedReport('',1,true,frall);
end;

procedure TFPodtver.b3Click(Sender: TObject);
begin
podtv_prep(qall.fieldbyname('a_b').asstring,qall.fieldbyname('nest_tip').asstring);
fr1.ExportTo(hte1,sharedf+'\exported\подтв_заявки_'+nz+'_.html');
end;

procedure TFPodtver.fr1PrintReport;
begin

ssql:='select podtv from clients where tip=1 and nz='+nz+' and annul<>'+quotedstr('да');
opensql(q1,ssql);

if q1.fields[0].asstring='нет' then
begin

ssql:='update clients set data_podtv='+quotedstr(formatdatetime(dtf,date))+',podtv='+quotedstr('да')+',oper='+quotedstr(user)+' where tip=1 and nz='+nz+' and annul<>'+quotedstr('да');
executesql(q1,ssql);

end;

end;

procedure TFPodtver.qrazmCalcFields(DataSet: TDataSet);
var pds,dpm : string;
i : integer;
begin

if qrazm.fieldbyname('a_b').asstring='Авт.' then
begin

ssql:='select a.pods,b.m from clients a full outer join gostnom b on a.id_m=b.codeid where a.tip=3 and a.p='+qrazm.fieldbyname('id').asstring+' and nz='+nz+' and annul<>'+quotedstr('да');
opensql(q1,ssql);

pds:='';
dpm:='';

for i:=1 to q1.recordcount do
begin

if q1.fieldbyname('pods').asstring='да' then pds:=' с подс.';
if q1.fieldbyname('m').asstring='доп. место' then dpm:=' + доп. место';

q1.next;
end;

end
else
begin

ssql:='select a.pods,b.kat from clients a left join kat b on a.id_kat=b.codeid where a.tip=3 and a.p='+qrazm.fieldbyname('id').asstring+' and nz='+nz+' and annul<>'+quotedstr('да');
opensql(q1,ssql);

pds:='';
dpm:='';

for i:=1 to q1.recordcount do
begin

if q1.fieldbyname('pods').asstring='да' then pds:=' с подс.';
if q1.fieldbyname('kat').asstring='доп. место' then dpm:=' + доп. место';

q1.next;
end;

end;

qrazm.fieldbyname('pds').asstring:=pds;
qrazm.fieldbyname('dpm').asstring:=dpm;

end;

end.
