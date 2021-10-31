unit Unit12;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxControls, dxExEdtr, dxCntner, dxTL, dxDBCtrl, dxDBTL,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, StdCtrls,
  DB, ADODB, jpeg, ExtCtrls, dxDBTLCl, Menus, cxCalendar, cxLabel,
  cxLookAndFeelPainters, cxButtons, cxImage, cxGroupBox, cxRadioGroup, cxPC;

type
  TFZaiavki = class(TForm)
    NestPG: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cb1: TcxComboBox;
    cb2: TcxComboBox;
    q1: TADOQuery;
    tr2: TdxDBTreeList;
    q2: TADOQuery;
    ds2: TDataSource;
    q3: TADOQuery;
    ds3: TDataSource;
    tr2d1: TdxDBTreeListDateColumn;
    tr2per: TdxDBTreeListColumn;
    tr2kmo: TdxDBTreeListMaskColumn;
    tr2kmd: TdxDBTreeListMaskColumn;
    tr2komf: TdxDBTreeListColumn;
    tr2n: TdxDBTreeListMaskColumn;
    tr2nz: TdxDBTreeListMaskColumn;
    tr2kat: TdxDBTreeListColumn;
    pm1: TPopupMenu;
    N1: TMenuItem;
    q4: TADOQuery;
    q3agentcol: TStringField;
    pm2: TPopupMenu;
    N3: TMenuItem;
    tr1: TdxDBTreeList;
    tr1per: TdxDBTreeListColumn;
    tr1nz: TdxDBTreeListMaskColumn;
    tr1f: TdxDBTreeListColumn;
    StoimColumn: TdxDBTreeListColumn;
    N5: TMenuItem;
    ColumnDataPodtv: TdxDBTreeListColumn;
    ColumnPodtv: TdxDBTreeListColumn;
    ColumnOplata: TdxDBTreeListColumn;
    ColumnOplacheno: TdxDBTreeListColumn;
    ColumnBez_pr: TdxDBTreeListColumn;
    N4: TMenuItem;
    ColumnSPO: TdxDBTreeListColumn;
    tr3: TdxDBTreeList;
    dxDBTreeListColumn1: TdxDBTreeListColumn;
    dxDBTreeListMaskColumn2: TdxDBTreeListMaskColumn;
    dxDBTreeListColumn2: TdxDBTreeListColumn;
    dxDBTreeListColumn12: TdxDBTreeListColumn;
    dxDBTreeListColumn23: TdxDBTreeListColumn;
    dxDBTreeListColumn24: TdxDBTreeListColumn;
    dxDBTreeListColumn25: TdxDBTreeListColumn;
    dxDBTreeListColumn26: TdxDBTreeListColumn;
    dxDBTreeListColumn27: TdxDBTreeListColumn;
    tr4: TdxDBTreeList;
    dxDBTreeListColumn28: TdxDBTreeListColumn;
    dxDBTreeListColumn29: TdxDBTreeListColumn;
    dxDBTreeListMaskColumn22: TdxDBTreeListMaskColumn;
    dxDBTreeListMaskColumn23: TdxDBTreeListMaskColumn;
    dxDBTreeListMaskColumn24: TdxDBTreeListMaskColumn;
    dxDBTreeListMaskColumn25: TdxDBTreeListMaskColumn;
    dxDBTreeListColumn30: TdxDBTreeListColumn;
    cb3: TcxComboBox;
    cb4: TcxComboBox;
    q5: TADOQuery;
    StringField1: TStringField;
    ds5: TDataSource;
    q6: TADOQuery;
    ds6: TDataSource;
    pm3: TPopupMenu;
    MenuItem1: TMenuItem;
    pm4: TPopupMenu;
    MenuItem3: TMenuItem;
    q3d_nach: TDateField;
    ColumnD_Nach: TdxDBTreeListColumn;
    q5d_nach: TDateField;
    Label15: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    de1: TcxDateEdit;
    de2: TcxDateEdit;
    cb6: TcxComboBox;
    b4: TcxButton;
    b5: TcxButton;
    cxLabel4: TcxLabel;
    cb7: TcxComboBox;
    tr3Column11: TdxDBTreeListColumn;
    tr4Column8: TdxDBTreeListColumn;
    tr1Column12: TdxDBTreeListColumn;
    tr3Column12: TdxDBTreeListColumn;
    rg1: TcxRadioGroup;
    N2: TMenuItem;
    N6: TMenuItem;
    ColumnN_ID: TdxDBTreeListColumn;
    q3pod_y_n: TStringField;
    ColumnPods: TdxDBTreeListColumn;
    N7: TMenuItem;
    N8: TMenuItem;
    cxTabSheet3: TcxTabSheet;
    tr5: TdxDBTreeList;
    dxDBTreeListColumn3: TdxDBTreeListColumn;
    dxDBTreeListColumn4: TdxDBTreeListColumn;
    dxDBTreeListMaskColumn1: TdxDBTreeListMaskColumn;
    dxDBTreeListColumn5: TdxDBTreeListColumn;
    dxDBTreeListColumn6: TdxDBTreeListColumn;
    dxDBTreeListColumn7: TdxDBTreeListColumn;
    dxDBTreeListColumn8: TdxDBTreeListColumn;
    dxDBTreeListColumn9: TdxDBTreeListColumn;
    dxDBTreeListColumn10: TdxDBTreeListColumn;
    dxDBTreeListColumn11: TdxDBTreeListColumn;
    dxDBTreeListColumn13: TdxDBTreeListColumn;
    tr6: TdxDBTreeList;
    dxDBTreeListColumn14: TdxDBTreeListColumn;
    dxDBTreeListColumn15: TdxDBTreeListColumn;
    dxDBTreeListColumn16: TdxDBTreeListColumn;
    dxDBTreeListMaskColumn3: TdxDBTreeListMaskColumn;
    dxDBTreeListMaskColumn4: TdxDBTreeListMaskColumn;
    dxDBTreeListMaskColumn5: TdxDBTreeListMaskColumn;
    dxDBTreeListMaskColumn6: TdxDBTreeListMaskColumn;
    dxDBTreeListColumn17: TdxDBTreeListColumn;
    dxDBTreeListColumn18: TdxDBTreeListColumn;
    cb8: TcxComboBox;
    cb9: TcxComboBox;
    cb10: TcxComboBox;
    b15: TcxButton;
    q7: TADOQuery;
    DateField1: TDateField;
    StringField2: TStringField;
    ds7: TDataSource;
    q8: TADOQuery;
    ds8: TDataSource;
    pm6: TPopupMenu;
    MenuItem2: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    pm5: TPopupMenu;
    MenuItem7: TMenuItem;
    cb11: TcxComboBox;
    cb12: TcxComboBox;
    cxLabel5: TcxLabel;
    cb14: TcxComboBox;
    cxLabel6: TcxLabel;
    cb15: TcxComboBox;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    tr5Column12: TdxDBTreeListColumn;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    q3id: TAutoIncField;
    q3id_gost: TIntegerField;
    q3id_ag: TIntegerField;
    q3per: TWideStringField;
    q3nz: TIntegerField;
    q3stoim: TBCDField;
    q3spo: TWideStringField;
    q3oplacheno: TBCDField;
    q3oplata: TWideStringField;
    q3f: TWideStringField;
    q3bez_pr: TWideStringField;
    q3data_podtv: TDateTimeField;
    q3podtv: TWideStringField;
    q3p: TIntegerField;
    q3tip: TIntegerField;
    q5tip: TIntegerField;
    q5p: TIntegerField;
    q5id: TAutoIncField;
    q5id_gost: TIntegerField;
    q5id_ag: TIntegerField;
    q5per: TWideStringField;
    q5nz: TIntegerField;
    q5stoim: TBCDField;
    q5spo: TWideStringField;
    q5oplacheno: TBCDField;
    q5oplata: TWideStringField;
    q5f: TWideStringField;
    q5bez_pr: TWideStringField;
    q5data_podtv: TDateTimeField;
    q5podtv: TWideStringField;
    q7tip: TIntegerField;
    q7p: TIntegerField;
    q7id: TAutoIncField;
    q7id_gost: TIntegerField;
    q7id_ag: TIntegerField;
    q7per: TWideStringField;
    q7nz: TIntegerField;
    q7stoim: TBCDField;
    q7spo: TWideStringField;
    q7oplacheno: TBCDField;
    q7oplata: TWideStringField;
    q7f: TWideStringField;
    q7bez_pr: TWideStringField;
    q7data_podtv: TDateTimeField;
    q7podtv: TWideStringField;
    q7nest_tip: TWideStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cb1PropertiesChange(Sender: TObject);
    procedure cb2PropertiesChange(Sender: TObject);
    procedure cb1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure tr2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cb2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure N1Click(Sender: TObject);
    procedure tr1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure N3Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure cb3MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cb3PropertiesChange(Sender: TObject);
    procedure cb4MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cb4PropertiesChange(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure tr3MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure q3CalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure b4Click(Sender: TObject);
    procedure q5CalcFields(DataSet: TDataSet);
    procedure b5Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure de1PropertiesChange(Sender: TObject);
    procedure tr4MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure N7Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure cb8MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cb8PropertiesChange(Sender: TObject);
    procedure cb9MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cb9PropertiesChange(Sender: TObject);
    procedure tr5MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure tr6MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure MenuItem7Click(Sender: TObject);
    procedure cb10PropertiesChange(Sender: TObject);
    procedure cb11PropertiesChange(Sender: TObject);
    procedure cb12PropertiesChange(Sender: TObject);
    procedure b15Click(Sender: TObject);
    procedure tr6Click(Sender: TObject);
    procedure q7CalcFields(DataSet: TDataSet);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FZaiavki: TFZaiavki;

implementation

uses unit11,unit85,Unit20, Unit2, Unit4, Unit5, Unit7, UNest_Vvod;

{$R *.dfm}

procedure TFZaiavki.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action := caFree;
FZaiavki := nil;
end;

procedure TFZaiavki.cb1PropertiesChange(Sender: TObject);
begin
podreg_id:=podregion_id(cb1.Text);
cb2.Properties.Items.Clear;
q2.close;
q3.close;
end;

procedure TFZaiavki.cb2PropertiesChange(Sender: TObject);
begin

if (cb1.Text='') or (cb2.text='') then
begin
q3.close;
q2.close;
exit;
end;

gost_id:=g_id_podreg(cb2.Text,podregion_id(cb1.text));

ssql:='select a.tip,a.p,a.id,a.c_gost,a.c_kat,a.per,a.n,a.d1,a.nz,a.kmo,a.kmd,a.komf,d.kat from bloki a left join kat d on a.C_kat = d.codeid where tip<>2 and tip<>3 and a.c_gost='+gost_id+
' and a.a_b='+quotedstr('Авт.')+
' and d1>='+quotedstr(formatdatetime(dtf,strtodate(dnopper)))+' and d1<='+quotedstr(formatdatetime(dtf,strtodate(dkopper)));
opensql(q2,ssql);

if q2.RecordCount<>0 then
begin
tr2.enabled:=true;
tr1.enabled:=true;
end
else
begin
tr2.enabled:=false;
tr1.enabled:=false;
end;

ssql:='select tip,p,id,id_gost,id_ag,per,nz,stoim,spo,oplacheno,oplata,f,bez_pr,data_podtv,podtv from '+
'clients where id_gost='+gost_id+' and a_b='+quotedstr('Авт.')+
' and tip=1 and annul<>'+quotedstr('да')+
' and dt_begin>='+quotedstr(formatdatetime(dtf,strtodate(dnopper)))+' and dt_begin<='+quotedstr(formatdatetime(dtf,strtodate(dkopper)))+' order by per';
opensql(q3,ssql);

end;

procedure TFZaiavki.cb1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
combo_gost_podreg_load (FZaiavki.cb1,'Авт.');
end;

procedure TFZaiavki.tr2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin

if (q2.fieldbyname('tip').asstring='1') and (button=mbright) then
begin
pm1.Popup(getclientorigin.x+x+tr1.width,getclientorigin.y+y);
end;

end;

procedure TFZaiavki.cb2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
//if (podreg_id<>'0') and (podreg_id<>'') then
combo_gost_on_podreg_load(FZaiavki.cb2,'Авт.',podregion_id(FZaiavki.cb1.text));
end;

procedure TFZaiavki.N1Click(Sender: TObject);
begin

z_op:='АД';

nlid:=q2.fieldbyname('id').asinteger;

gost_id:=q2.fieldbyname('c_gost').asstring;
kat_id:=q2.fieldbyname('c_kat').asstring;
per:=q2.fieldbyname('per').asstring;
n_id:=q2.fieldbyname('id').asstring;
n:=q2.fieldbyname('n').asstring;
nz:='0';

stoim:=0;

if not assigned(FZai_vvod) then Application.CreateForm(TFZai_vvod, FZai_vvod);
FZai_vvod.Show;

end;

procedure TFZaiavki.tr1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin

if (cb1.text='') or (cb2.text='') or (q3.recordcount=0) then exit;

if (q3.fieldbyname('tip').asstring='1') and (button=mbright) then
pm2.Popup(getclientorigin.x+x,getclientorigin.y+y);

end;

procedure TFZaiavki.N3Click(Sender: TObject);
begin

z_op:='АИ';

zlid:=q2.fieldbyname('id').asinteger;

gost_id:=q3.fieldbyname('id_gost').asstring;
ag_id:=q3.fieldbyname('id_ag').asstring;
per:=q3.fieldbyname('per').asstring;
nz:=q3.fieldbyname('nz').asstring;

stoim:=q3.fieldbyname('stoim').asfloat;
spo:=q3.fieldbyname('spo').asstring;

if not assigned(FZai_vvod) then Application.CreateForm(TFZai_vvod, FZai_vvod);
FZai_vvod.Show;

end;

procedure TFZaiavki.N5Click(Sender: TObject);
begin

nz:=q3.fieldbyname('nz').asstring;
per:=q3.fieldbyname('per').asstring;

if not assigned(fpodtver) then Application.CreateForm(Tfpodtver, fpodtver);
fpodtver.Show;

end;

procedure TFZaiavki.N4Click(Sender: TObject);
begin

nz:=q3.fieldbyname('nz').asstring;
per:=q3.fieldbyname('per').asstring;
gost_id:=q3.fieldbyname('id_gost').asstring;

if not assigned(fvauch) then Application.CreateForm(Tfvauch, fvauch);
fvauch.Show;

end;

procedure TFZaiavki.cb3MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
combo_gost_podreg_load (FZaiavki.cb3,'Блок');
end;

procedure TFZaiavki.cb3PropertiesChange(Sender: TObject);
begin
podreg_id:=podregion_id(cb3.Text);
blb_off;
end;

procedure TFZaiavki.cb4MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
if (podreg_id<>'0') and (podreg_id<>'') then
combo_gost_on_podreg_load (FZaiavki.cb4,'Блок',podreg_id);
end;

procedure TFZaiavki.cb4PropertiesChange(Sender: TObject);
begin

if (cb3.Text='') or (cb4.text='') then
begin
blb_off;
exit;
end;

gost_id:=g_id_podreg(cb4.Text,podregion_id(cb3.text));

ssql:='select a.tip,a.p,a.id,a.c_gost,a.c_kat,a.per,a.n,a.d1,a.nz,a.kmo,a.kmd,a.komf,a.n_id,d.kat from bloki a left join kat d on a.C_kat = d.codeid where tip<>2 and tip<>3 and a.c_gost='+gost_id+
' and a.a_b='+quotedstr('Блок')+
' and d1>='+quotedstr(formatdatetime(dtf,strtodate(dnopper)))+' and d1<='+quotedstr(formatdatetime(dtf,strtodate(dkopper)));
opensql(q6,ssql);

if q6.RecordCount<>0 then
begin
tr4.enabled:=true;
tr3.enabled:=true;
if f5cl=false then tr4.onmousedown(Sender,mbleft,[],1,1);
f5cl:=false;
end
else
begin
tr4.enabled:=false;
tr3.enabled:=false;
end;

ssql:='select tip,p,id,id_gost,id_ag,per,nz,stoim,spo,oplacheno,oplata,f,bez_pr,data_podtv,podtv from clients where id_gost='+gost_id+' and a_b='+quotedstr('Блок')+
' and tip=1 and annul<>'+quotedstr('да')+
' and dt_begin>='+quotedstr(formatdatetime(dtf,strtodate(dnopper)))+' and dt_begin<='+quotedstr(formatdatetime(dtf,strtodate(dkopper)))+
' order by per';
opensql(q5,ssql);

reshim:=resh_gost(gost_id);

blb_on;

end;

procedure TFZaiavki.MenuItem1Click(Sender: TObject);
begin

z_op:='БД';
nz:='0';
stoim:=0;

gost_id:=q6.fieldbyname('c_gost').asstring;
per:=q6.fieldbyname('per').asstring;
kol_m_o:=q6.fieldbyname('kmo').asstring;
kol_m_d:=q6.fieldbyname('kmd').asstring;

if not assigned(FBlz_vvod) then Application.CreateForm(TFBlz_vvod, FBlz_vvod);
FBlz_vvod.Show;

end;

procedure TFZaiavki.MenuItem3Click(Sender: TObject);
begin

z_op:='БИ';

zlid:=q5.fieldbyname('id').asinteger;

gost_id:=q5.fieldbyname('id_gost').asstring;
ag_id:=q5.fieldbyname('id_ag').asstring;
per:=q5.fieldbyname('per').asstring;
nz:=q5.fieldbyname('nz').asstring;

kol_m_o:=cb6.text;
kol_m_d:=cb7.text;

stoim:=q5.fieldbyname('stoim').asfloat;
spo:=q5.fieldbyname('spo').asstring;

if not assigned(FBLZ_vvod) then Application.CreateForm(TFBLZ_vvod, FBLZ_vvod);
FBLZ_vvod.Show;

end;

procedure TFZaiavki.tr3MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin

if (cb3.text='') or (cb3.text='') or (q5.recordcount=0) then exit;

if (q5.fieldbyname('tip').asstring='1') and (button=mbright) then
pm4.Popup(getclientorigin.x+x,getclientorigin.y+y);

end;

procedure TFZaiavki.q3CalcFields(DataSet: TDataSet);
begin

q3.FieldByName('d_nach').AsDateTime:=strtodate(copy(q3.FieldByName('per').Asstring,1,10));

ssql:='select count(*) from clients where nz='+q3.FieldByName('nz').asstring+
' and pods='+quotedstr('да')+
' and annul<>'+quotedstr('да');
opensql(dm.q1,ssql);

if dm.q1.fields[0].asinteger<>0 then q3.FieldByName('pod_y_n').AsString:='П' else
q3.FieldByName('pod_y_n').AsString:=''; 

end;

procedure TFZaiavki.FormCreate(Sender: TObject);
begin
de1.date:=now;
de2.date:=now;
end;

procedure TFZaiavki.b4Click(Sender: TObject);
begin

if de1.date=de2.date then
begin
sm('Вторая дата должна отличаться от первой.');
exit;
end;

if (de1.date<strtodate(dnopper)) or (de1.date>strtodate(dkopper)) then
begin
sm('Дата начала заезда не входит в операционный период.');
exit;
end;

z_op:='БД';
nz:='0';
stoim:=0;

gost_id:=q6.fieldbyname('c_gost').asstring;
per:=de1.text+'-'+de2.text;
kol_m_o:=cb6.text;
kol_m_d:=cb7.text;

if not assigned(FBlz_vvod) then Application.CreateForm(TFBlz_vvod, FBlz_vvod);
FBlz_vvod.Show;

end;

procedure TFZaiavki.q5CalcFields(DataSet: TDataSet);
begin
q5.FieldByName('d_nach').AsDateTime:=strtodate(copy(q5.FieldByName('per').Asstring,1,10));
end;

procedure TFZaiavki.b5Click(Sender: TObject);
begin

bl_otch (gost_id,de1.text,de2.text,cb6.text,cb7.text,inttostr(rg1.itemindex));

end;

procedure TFZaiavki.N2Click(Sender: TObject);
begin

nz:=q5.fieldbyname('nz').asstring;
per:=q5.fieldbyname('per').asstring;

if not assigned(fpodtver) then Application.CreateForm(Tfpodtver, fpodtver);
fpodtver.Show;

end;

procedure TFZaiavki.N6Click(Sender: TObject);
begin

nz:=q5.fieldbyname('nz').asstring;
per:=q5.fieldbyname('per').asstring;
gost_id:=q5.fieldbyname('id_gost').asstring;

if not assigned(fvauch) then Application.CreateForm(Tfvauch, fvauch);
fvauch.Show;

end;

procedure TFZaiavki.de1PropertiesChange(Sender: TObject);
begin
de2.date:=de1.date+1;
end;

procedure TFZaiavki.tr4MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin

{//if (q6.fieldbyname('tip').asstring='1') and (button=mbright) then pm3.Popup(getclientorigin.x+x+tr3.width,getclientorigin.y+y);
if button=mbleft then
begin
de1.Text:=q6.fieldbyname('d1').AsString;
de2.date:=strtodate(q6.fieldbyname('d1').AsString)+5;
end; }

end;

procedure TFZaiavki.N7Click(Sender: TObject);
begin
//sm(st_sebest(q5.fieldbyname('nz').asstring,'seb'));
end;

procedure TFZaiavki.N8Click(Sender: TObject);
begin
//sm(st_sebest(q3.fieldbyname('nz').asstring,'seb'));
end;

procedure TFZaiavki.cb8MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
combo_gost_podreg_load (FZaiavki.cb8,'Нест.');
end;

procedure TFZaiavki.cb8PropertiesChange(Sender: TObject);
begin
podreg_id:=podregion_id(cb8.Text);
nest_off;
end;

procedure TFZaiavki.cb9MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
if cb8.text='' then exit;
combo_gost_on_podreg_load(FZaiavki.cb9,'Нест.',podreg_id);
end;

procedure TFZaiavki.cb9PropertiesChange(Sender: TObject);
var utoch : string;
begin

if (cb8.Text='') or (cb9.text='') then
begin
nest_off;
exit;
end;

gost_id:=g_id_podreg(cb9.Text,podregion_id(cb8.text));

dm.nest_d.first;

cb11.properties.items.Clear;
cb12.properties.items.clear;

if cb10.text='все' then utoch:='';
if cb10.text='автобусные' then utoch:=' and per='+quotedstr('А');
if cb10.text='блочные' then utoch:=' and per='+quotedstr('Б');

if cb10.text='автобусные' then
begin
combo_dati_nest (FZaiavki.cb11,'А','въезд');
combo_dati_nest (FZaiavki.cb12,'А','выезд');
end;

if cb10.text='блочные' then
begin
combo_dati_nest (FZaiavki.cb11,'Б','');
combo_dati_nest (FZaiavki.cb12,'Б','');
end;

ssql:='select a.tip,a.p,a.id,a.c_gost,a.c_kat,a.per,a.n,a.d1,a.nz,a.kmo,a.kmd,a.komf,a.n_id,d.kat from bloki a left join kat d on a.C_kat = d.codeid where'+
' tip<>2 and tip<>3 and a.c_gost='+gost_id+' and a.a_b='+quotedstr('Нест.')+
' and d1>='+quotedstr(formatdatetime(dtf,strtodate(dnopper)))+' and d1<='+quotedstr(formatdatetime(dtf,strtodate(dkopper)));

opensql(q8,ssql);

if q8.RecordCount<>0 then
begin
tr5.enabled:=true;
tr6.enabled:=true;
nest_on;

ssql:='select nest_tip,tip,p,id,id_gost,id_ag,per,nz,stoim,spo,oplacheno,oplata,f,bez_pr,data_podtv,podtv from clients where id_gost='+gost_id+' and a_b='+quotedstr('Нест.')+
' and tip=1 and annul<>'+quotedstr('да')+
' and dt_begin>='+quotedstr(formatdatetime(dtf,strtodate(dnopper)))+' and dt_begin<='+quotedstr(formatdatetime(dtf,strtodate(dkopper)));
opensql(q7,ssql);

reshim:=2;

if cb10.text='все' then b15.Enabled:=false else b15.Enabled:=true;

end
else
begin
tr5.enabled:=false;
tr6.enabled:=false;
end;

end;

procedure TFZaiavki.tr5MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin

if (cb8.text='') or (cb9.text='') or (q7.recordcount=0) then exit;

if (q7.fieldbyname('tip').asstring='1') and (button=mbright) then
pm6.Popup(getclientorigin.x+x,getclientorigin.y+y);

end;

procedure TFZaiavki.tr6MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
{if (q8.fieldbyname('tip').asstring='1') and (button=mbright) then
pm5.Popup(getclientorigin.x+x+tr5.width,getclientorigin.y+y);  }
end;

procedure TFZaiavki.MenuItem7Click(Sender: TObject);
begin

{z_op:='НД';
nz:='0';
stoim:=0;

gost_id:=q8.fieldbyname('c_gost').asstring;
per:=q8.fieldbyname('per').asstring;
kol_m_o:=q8.fieldbyname('kmo').asstring;
kol_m_d:=q8.fieldbyname('kmd').asstring;

if not assigned(FNest_vvod) then Application.CreateForm(TFNest_vvod, FNest_vvod);
FNest_vvod.Show; }

end;

procedure TFZaiavki.cb10PropertiesChange(Sender: TObject);
begin
cb9.Properties.OnChange(sender);
end;

procedure TFZaiavki.cb11PropertiesChange(Sender: TObject);
begin
cb12.text:='';
end;

procedure TFZaiavki.cb12PropertiesChange(Sender: TObject);
begin

if (cb11.text='') or (cb12.text='') then exit;

if strtodate(cb12.text)<=strtodate(cb11.text) then
begin
sm('Указана некорректная дата выезда.');
cb12.text:='';
exit;
end;

end;

procedure TFZaiavki.b15Click(Sender: TObject);
begin

if (cb11.text=cb12.text) or (cb11.text='') or (cb12.text='') then
begin
sm('Ошибочно указан период.');
exit;
end;

z_op:='НД';
nz:='0';
stoim:=0;

gost_id:=q8.fieldbyname('c_gost').asstring;
per:=q8.fieldbyname('per').asstring;
kol_m_o:=cb14.text;
kol_m_d:=cb15.text;

dt1:=cb11.text;
dt2:=cb12.text;

if cb10.text='автобусные' then struc_tip:='А';
if cb10.text='блочные' then struc_tip:='Б';

if not assigned(FNest_vvod) then Application.CreateForm(TFNest_vvod, FNest_vvod);
FNest_vvod.Show;

end;

procedure TFZaiavki.tr6Click(Sender: TObject);
begin

if q8.recordcount=0 then exit;

{if (q8.fieldbyname('tip').asstring='1') then }
//cb11.text:=q8.fieldbyname('d1').asstring;
//else cb11.text:='';

end;

procedure TFZaiavki.q7CalcFields(DataSet: TDataSet);
begin
q7.FieldByName('d_nach').AsDateTime:=strtodate(copy(q7.FieldByName('per').Asstring,1,10));
end;

procedure TFZaiavki.MenuItem2Click(Sender: TObject);
begin

z_op:='НИ';

zlid:=q7.fieldbyname('id').asinteger;

gost_id:=q7.fieldbyname('id_gost').asstring;
ag_id:=q7.fieldbyname('id_ag').asstring;
per:=q7.fieldbyname('per').asstring;
nz:=q7.fieldbyname('nz').asstring;

kol_m_o:=cb14.text;
kol_m_d:=cb15.text;

stoim:=q7.fieldbyname('stoim').asfloat;
spo:=q7.fieldbyname('spo').asstring;

if not assigned(FNest_vvod) then Application.CreateForm(TFNest_vvod, FNest_vvod);
FNest_vvod.Show;

end;

procedure TFZaiavki.MenuItem4Click(Sender: TObject);
begin
nz:=q7.fieldbyname('nz').asstring;
per:=q7.fieldbyname('per').asstring;

if not assigned(fpodtver) then Application.CreateForm(Tfpodtver, fpodtver);
fpodtver.Show;
end;

procedure TFZaiavki.MenuItem5Click(Sender: TObject);
begin
nz:=q7.fieldbyname('nz').asstring;
per:=q7.fieldbyname('per').asstring;
gost_id:=q7.fieldbyname('id_gost').asstring;

if not assigned(fvauch) then Application.CreateForm(Tfvauch, fvauch);
fvauch.Show;
end;

procedure TFZaiavki.N9Click(Sender: TObject);
begin
vvod_oplati(q3.fieldbyname('nz').asstring,q3.fieldbyname('stoim').asstring,
q3.fieldbyname('oplacheno').asstring,q3.fieldbyname('oplata').asstring,user,'авт');
end;

procedure TFZaiavki.N10Click(Sender: TObject);
begin
vvod_oplati(q5.fieldbyname('nz').asstring,q5.fieldbyname('stoim').asstring,
q5.fieldbyname('oplacheno').asstring,q5.fieldbyname('oplata').asstring,user,'блок');
end;

procedure TFZaiavki.N11Click(Sender: TObject);
begin
vvod_oplati(q7.fieldbyname('nz').asstring,q7.fieldbyname('stoim').asstring,
q7.fieldbyname('oplacheno').asstring,q7.fieldbyname('oplata').asstring,user,'нест');
end;

end.
