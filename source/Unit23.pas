unit Unit23;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, dxCntner, dxTL, dxDBCtrl, dxDBGrid, FR_Ctrls,
  dxDBTLCl, dxGrClms, StdCtrls, dxExEdtr, cxLookAndFeelPainters, ADODB,
  cxButtons, cxPC, cxControls, cxListBox, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLabel, cxCheckBox, cxSpinEdit, cxMemo,
  cxGroupBox, cxSpinButton, dxDBTL, ImgList,  dxEditor, dxEdLib,
  dxDBELib, cxRadioGroup;

type
  TFGostinMain = class(TForm)
    ds1: TDataSource;
    dz: TcxButton;
    iz: TcxButton;
    uz: TcxButton;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1r: TdxDBGridLookupColumn;
    dxDBGrid1Nazvanie: TdxDBGridMaskColumn;
    dxDBGrid1Dogovor: TdxDBGridMaskColumn;
    dxDBGrid1Adres: TdxDBGridMaskColumn;
    dxDBGrid1Prim: TdxDBGridMaskColumn;
    dxDBGrid1Napr: TdxDBGridColumn;
    ColumnList: TdxDBGridColumn;
    ColumnPR: TdxDBGridColumn;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label9: TLabel;
    cb1: TcxComboBox;
    cb2: TcxComboBox;
    lb1: TcxListBox;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    c1: TcxCheckBox;
    Label4: TLabel;
    lb3: TcxListBox;
    b4: TcxButton;
    b5: TcxButton;
    Label5: TLabel;
    lb4: TcxListBox;
    cb3: TcxCheckBox;
    cxGroupBox1: TcxGroupBox;
    cxGroupBox2: TcxGroupBox;
    Label13: TLabel;
    lb5: TcxListBox;
    cxButton11: TcxButton;
    cxButton12: TcxButton;
    lb6: TcxListBox;
    Label14: TLabel;
    m1: TcxMemo;
    m2: TcxMemo;
    Label15: TLabel;
    Label16: TLabel;
    c4: TcxCheckBox;
    t1: TcxTextEdit;
    Label17: TLabel;
    bins: TcxButton;
    Label21: TLabel;
    cxButton14: TcxButton;
    cxButton15: TcxButton;
    t2: TcxTextEdit;
    Label18: TLabel;
    c5: TcxCheckBox;
    t3: TcxTextEdit;
    Label19: TLabel;
    c6: TcxCheckBox;
    se1: TcxSpinEdit;
    Label20: TLabel;
    cxButton16: TcxButton;
    ds2: TDataSource;
    q2: TADOQuery;
    tree: TdxDBTreeList;
    IL: TImageList;
    treecodeid: TdxDBTreeListMaskColumn;
    treec_gost: TdxDBTreeListMaskColumn;
    treec_kat: TdxDBTreeListMaskColumn;
    treekomf: TdxDBTreeListColumn;
    treec_komf: TdxDBTreeListColumn;
    treep: TdxDBTreeListMaskColumn;
    treen: TdxDBTreeListMaskColumn;
    treekmo: TdxDBTreeListMaskColumn;
    treekmd: TdxDBTreeListMaskColumn;
    treetip: TdxDBTreeListMaskColumn;
    treeop1: TdxDBTreeListColumn;
    treeop2: TdxDBTreeListColumn;
    treem: TdxDBTreeListColumn;
    treeg_id: TdxDBTreeListMaskColumn;
    treenazvanie: TdxDBTreeListColumn;
    treekat: TdxDBTreeListColumn;
    id: TdxDBGridColumn;
    treea_b: TdxDBTreeListColumn;
    gridrchb: TdxDBGridColumn;
    gridrchz: TdxDBGridColumn;
    rg1: TcxRadioGroup;
    cxButton6: TcxButton;
    cxButton7: TcxButton;
    ColumnGraf_a: TdxDBGridColumn;
    ColumnGraf_b: TdxDBGridColumn;
    ColumnNDT: TdxDBGridColumn;
    ColumnExk: TdxDBGridColumn;
    q1: TADOQuery;
    b1: TcxButton;
    cxButton8: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxDBGrid1CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure izClick(Sender: TObject);
    procedure uzClick(Sender: TObject);
    procedure cb1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cb2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cb2PropertiesChange(Sender: TObject);
    procedure cb1PropertiesChange(Sender: TObject);
    procedure cxTabSheet2Show(Sender: TObject);
    procedure c1Click(Sender: TObject);
    procedure b4Click(Sender: TObject);
    procedure b5Click(Sender: TObject);
    procedure lb4Click(Sender: TObject);
    procedure c4Click(Sender: TObject);
    procedure c5Click(Sender: TObject);
    procedure c6Click(Sender: TObject);
    procedure binsClick(Sender: TObject);
    procedure cxButton11Click(Sender: TObject);
    procedure cxButton12Click(Sender: TObject);
    procedure treeClick(Sender: TObject);
    procedure dxDBGrid2Click(Sender: TObject);
    procedure DBTreeListClick(Sender: TObject);
    procedure treeGetStateIndex(Sender: TObject; Node: TdxTreeListNode;
      var Index: Integer);
    procedure dxDBTreeList1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cxButton14Click(Sender: TObject);
    procedure cxButton15Click(Sender: TObject);
    procedure cxButton16Click(Sender: TObject);
    procedure rg1Click(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
    procedure cb3PropertiesChange(Sender: TObject);
    procedure dzClick(Sender: TObject);
    procedure cb2MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure b1Click(Sender: TObject);
    procedure cxButton8Click(Sender: TObject);
    procedure dxDBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FGostinMain: TFGostinMain;

implementation

uses Unit24, Unit26, unit85,unit11;

{$R *.DFM}

procedure TFGostinMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
FGostinMain:=nil;
end;

procedure TFGostinMain.dxDBGrid1CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
 if not ANode.Focused then
  if odd(ANode.Index) then AColor:=clWhite
                      else AColor:=$00C7C7FE;
end;

procedure TFGostinMain.izClick(Sender: TObject);
begin
codeid:=dm.gostin.fieldbyname('codeid').asstring;
if not assigned(fGostRed) then application.CreateForm(tfGostRed, fGostRed);
fGostRed.show;
end;

procedure TFGostinMain.uzClick(Sender: TObject);
begin

If Application.MessageBox('Удалить запись?', 'Удаление объекта размещения', MB_YESNO) = idYES Then
begin

ssql:='select count(*) from clients where id_gost='+dm.gostin.fieldbyname('codeid').asstring+' and annul<>'+
quotedstr('да');
opensql(dm.q1,ssql);

if dm.q1.fields[0].asinteger<>0 then
begin
sm('С этим объектом связаны туристы! Для удаления он не должен использоваться.');
exit;
end;

ssql:='delete from gostinici where codeid='+dm.gostin.fieldbyname('codeid').asstring;
executesql(dm.q1,ssql);

dm.gostin.close;
dm.gostin.open;

sm('Объект удален.');

end;

end;

procedure TFGostinMain.cb1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin

case rg1.itemindex of
0: combo_gost_podreg_load (cb1,'Авт.');
1: combo_gost_podreg_load (cb1,'Блок');
2: combo_gost_podreg_load (cb1,'Нест.');
-1: combo_gost_podreg_load (cb1,'все');
end;

end;

procedure TFGostinMain.cb2MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin

if cb1.text='' then exit
else
begin

podreg_id:=podregion_id(cb1.text);

case rg1.itemindex of

0: combo_gost_on_podreg_load (cb2,'Авт.',podreg_id);
1: combo_gost_on_podreg_load (cb2,'Блок',podreg_id);
2: combo_gost_on_podreg_load (cb2,'Нест.',podreg_id);
-1: combo_gost_on_podreg_load (cb2,'все',podreg_id);

end;

{
if rg1.itemindex=0 then combo_gost_on_podreg_load (FGostinMain.cb2,'все',podreg_id)
else combo_gost_on_podreg_load (FGostinMain.cb2,'все',podreg_id);
}

end;

end;

procedure TFGostinMain.cb2PropertiesChange(Sender: TObject);
var n: integer;
begin

if (cb1.text='') or (cb2.text='') then exit;

gost_id:=g_id_podreg(cb2.Text,podregion_id(cb1.text));

lb4.Clear;

str_r(rg1.ItemIndex);

ssql:='select d.pit from (gostpit a left join gostinici c on a.C_gost = c.codeid) left join pit d on a.C_pit = d.codeid where c_gost = '+
gost_id+' and a.a_b='+quotedstr(struc);
opensql(q1,ssql);

for n:=1 to q1.RecordCount do
begin
lb4.Items.Add(q1.fieldbyname('pit').asstring);
q1.Next;
end;

tree.RootValue:='-1';

ssql:='select a.*,c.nazvanie,d.kat from (gostnom a left join gostinici c on a.C_gost = c.codeid) left join kat d on a.C_kat = d.codeid where a.c_gost = '+
gost_id+' and a.a_b='+quotedstr(struc);
opensql(q2,ssql);

end;

procedure TFGostinMain.cb1PropertiesChange(Sender: TObject);
begin

podreg_id:=podregion_id(cb1.text);

end;

procedure TFGostinMain.cxTabSheet2Show(Sender: TObject);
var i: integer;
begin

lb1.items.clear;
lb3.items.clear;
lb5.items.clear;

rg1.itemindex:=-1;

dm.kat.first;

for i:=1 to dm.kat.RecordCount do
begin
lb1.Items.Add(dm.kat.fieldbyname('kat').value);
dm.kat.Next;
end;

dm.pit.first;

for i:=1 to dm.pit.RecordCount do
begin
lb3.Items.Add(dm.pit.fieldbyname('pit').value);
dm.pit.Next;
end;

dm.komfq.first;

for i:=1 to dm.komfq.RecordCount do
begin
lb5.Items.Add(dm.komfq.fieldbyname('komf').value);
dm.komfq.Next;
end;

end;

procedure TFGostinMain.c1Click(Sender: TObject);
var vkl : string;
begin

if cb2.Text='' then exit;

if lb4.ItemIndex=-1 then exit;

g_id_podreg(cb2.Text,podregion_id(cb1.text));

if cb3.Checked then vkl:='y' else vkl:='n';

pit_id:=pitan_id(lb4.Items[lb4.itemindex]);

ssql:='select vkl from gostpit where c_gost='+gost_id;
opensql(q1,ssql);

if (q1.RecordCount<>0) and (cb3.Checked) then sm('Предупреждение! В этой гостинице уже есть включенное питание!');

ssql:='update gostpit set vkl='+quotedstr(vkl)+' where c_pit='+pit_id+' and c_gost='+gost_id;
executesql(q1,ssql);

end;

procedure TFGostinMain.b4Click(Sender: TObject);
var i:integer;
begin

if cb2.Text='' then exit;
if lb3.Items.count=0 then exit;
if lb3.ItemIndex=-1 then exit;

if lb4.Items.count<>0 then
begin

for i:=0 to lb4.Items.Count-1 do
begin

if lb3.Items[lb3.ItemIndex]=lb4.Items[i] then exit;

end;

end;

//if rg1.ItemIndex=0 then struc:='Авт.' else struc:='Блок';

str_r(rg1.ItemIndex);

g_id_podreg(cb2.Text,podregion_id(cb1.text));

pit_id:=pitan_id(lb3.Items[lb3.itemindex]);

ssql:='insert into gostpit (c_gost,c_pit,a_b) values ('+gost_id+','+pit_id+','+quotedstr(struc)+')';
executesql(q1,ssql);

lb4.Items.Add(lb3.Items[lb3.itemindex]);

end;

procedure TFGostinMain.b5Click(Sender: TObject);
begin

str_r(rg1.ItemIndex);

if (cb2.Text='') or (lb4.Items.count=0) or (lb4.ItemIndex=-1) then exit;

g_id_podreg(cb2.Text,podregion_id(cb1.text));

pit_id:=pitan_id(lb4.Items[lb4.itemindex]);

ssql:='delete from gostpit where c_gost='+gost_id+' and c_pit='+pit_id+' and a_b='+quotedstr(struc);
executesql(q1,ssql);

cb3.Checked:=false;

lb4.Items.delete(lb4.ItemIndex);

end;

procedure TFGostinMain.lb4Click(Sender: TObject);
begin

if cb2.Text='' then exit;

if lb4.ItemIndex=-1 then exit;

g_id_podreg(cb2.Text,podregion_id(cb1.text));

pit_id:=pitan_id(lb4.Items[lb4.itemindex]);

if pit_v_pakete(pit_id,gost_id,'Авт.')='да' then cb3.Checked:=true else cb3.Checked:=false;

end;

procedure TFGostinMain.c4Click(Sender: TObject);
begin

if c4.Checked then
begin
t1.Enabled:=true;
c5.Enabled:=true;
end
else
begin
t1.Enabled:=false;

t1.Text:='';
t2.Text:='';
t3.text:='';

c5.Enabled:=false;
c5.Checked:=false;
end;

end;

procedure TFGostinMain.c5Click(Sender: TObject);
begin

if c5.Checked then
begin
t2.Enabled:=true;
c6.Enabled:=true;
end
else
begin
t2.Enabled:=false;
c6.Enabled:=false;
c6.Checked:=false;

t2.Text:='';
t3.text:='';

end;

end;

procedure TFGostinMain.c6Click(Sender: TObject);
begin

if c6.Checked then
begin
t3.Enabled:=true;
end
else
begin
t3.Enabled:=false;

t3.text:='';

end;

end;

procedure TFGostinMain.binsClick(Sender: TObject);
var i,j: integer;
komf: string;
begin

if (cb2.Text='') or (lb1.itemindex=-1) or (rg1.itemindex=-1) then
begin
sm('Не указаны необходимые данные.');
exit;
end;

if ((c4.Checked) and (t1.Text='')) or ((c5.Checked) and (t2.Text='')) or ((c6.Checked) and (t3.Text='')) then
begin
sm('Не хватает описания доп. мест.');
exit;
end;

gost_id:=g_id_podreg(cb2.Text,podregion_id(cb1.text));

case rg1.ItemIndex of
0: a_b:='Авт.';
1: a_b:='Блок';
2: a_b:='Нест.';
end;

for j:=1 to strtoint(se1.Text) do
begin

c_o:=k_id('осн. место');
c_d:=k_id('доп. место');

ssql:='select codeid, kr from kat where kat='+quotedstr(lb1.Items[lb1.itemindex]);
opensql(q1,ssql);

kat_id:=q1.fieldbyname('codeid').asstring;
kmo:=q1.FieldByName('kr').asstring;
kmd:='0';
tip:='1';
p:='-1';
komf:='';
komf_id:='';

op1:=m1.Text;
op2:=m2.Text;

if c4.Checked then kmd:=inttostr(strtoint(kmd)+1);
if c5.Checked then kmd:=inttostr(strtoint(kmd)+1);
if c6.Checked then kmd:=inttostr(strtoint(kmd)+1);

// комфорт
if lb6.Count<>0 then
begin

for i:=0 to lb6.Count-1 do
begin

if komf='' then komf:=komf+lb6.items[i] else komf:=komf+', '+lb6.items[i];

ssql:='select codeid from komf where komf='+quotedstr(lb6.Items[i]);
opensql(q1,ssql);

if komf_id='' then komf_id:=komf_id+q1.Fields[0].AsString else komf_id:=komf_id+','+q1.Fields[0].AsString;

end;

end;
//комфорт end

ssql:='select max(n) from gostnom where c_gost='+gost_id+' and c_kat='+kat_id;
opensql(q1,ssql);

n:=inttostr(q1.fields[0].asinteger+1);

ssql:='insert into gostnom (c_gost,n,c_kat,komf,c_komf,kmd,kmo,tip,op1,op2,p,a_b) values ('+gost_id+','+n+','+
kat_id+','+quotedstr(komf)+','+quotedstr(komf_id)+','+kmd+','+kmo+','+tip+','+quotedstr(op1)+','+
quotedstr(op2)+','+p+','+quotedstr(a_b)+')';
executesql(q1,ssql);

ssql:='select max(codeid) from gostnom where c_gost='+gost_id+' and c_kat='+kat_id;
opensql(q1,ssql);

p:=q1.fields[0].asstring;

// введена основная запись номера

for i:=1 to strtoint(kmo) do
begin

tip:='2';

ssql:='insert into gostnom (c_gost,n,tip,p,m,c_kat,kmo,kmd,a_b) values ('+gost_id+','+inttostr(i)+',2,'+p+
','+quotedstr('осн. место')+','+c_o+','+kmo+','+kmd+','+quotedstr(a_b)+')';
executesql(q1,ssql);

end;

// введены основные места

if kmd<>'0' then
begin

tip:='3';

if c4.Checked then
begin

op1:=t1.Text;

ssql:='insert into gostnom (c_gost,n,tip,p,m,op1,c_kat,kmo,kmd,a_b) values ('+gost_id+',1,3,'+p+','+
quotedstr('доп. место')+','+quotedstr(t1.text)+','+c_d+','+kmo+','+kmd+','+quotedstr(a_b)+')';
executesql(q1,ssql);

end;

if c5.Checked then
begin

op1:=t2.Text;

ssql:='insert into gostnom (c_gost,n,tip,p,m,op1,c_kat,kmo,kmd,a_b) values ('+gost_id+',2,3,'+p+','+
quotedstr('доп. место')+','+quotedstr(t2.text)+','+c_d+','+kmo+','+kmd+','+quotedstr(a_b)+')';
executesql(q1,ssql);

end;

if c6.Checked then
begin

op1:=t3.Text;

ssql:='insert into gostnom (c_gost,n,tip,p,m,op1,c_kat,kmo,kmd,a_b) values ('+gost_id+',3,3,'+p+','+
quotedstr('доп. место')+','+quotedstr(t3.text)+','+c_d+','+kmo+','+kmd+','+quotedstr(a_b)+')';
executesql(q1,ssql);

end;

end;

end;

cb2.Properties.OnChange(sender);

end;

procedure TFGostinMain.cxButton11Click(Sender: TObject);
var i : integer;
begin

if (cb2.Text='') or (lb5.Items.count=0) or (lb5.ItemIndex=-1) then exit;

if lb6.Items.count<>0 then
begin

for i:=0 to lb6.Items.Count-1 do
begin
if lb5.Items[lb5.ItemIndex]=lb6.Items[i] then exit;
end;

end;

lb6.Items.Add(lb5.Items[lb5.itemindex]);

end;

procedure TFGostinMain.cxButton12Click(Sender: TObject);
begin

if cb2.Text='' then exit;
if lb6.Items.count=0 then exit;
if lb6.ItemIndex=-1 then exit;

lb6.Items.delete(lb6.ItemIndex);

end;

procedure TFGostinMain.treeClick(Sender: TObject);
var z,d_c,i: integer;
k,k1,n_id,n_n: string;
begin

lb6.Items.Clear;
c4.Checked:=false;
m1.Clear;
m2.Clear;

if (q2.recordcount=0) or (q2.FieldByName('kat').asstring='осн. место') or
(q2.FieldByName('kat').asstring='доп. место') then exit;

if q2.FieldByName('a_b').asstring='Авт.' then rg1.ItemIndex:=0;
if q2.FieldByName('a_b').asstring='Блок' then rg1.ItemIndex:=1;
if q2.FieldByName('a_b').asstring='Нест.' then rg1.ItemIndex:=2;

n_id:=q2.Fieldbyname('codeid').asstring;
n_n:=q2.Fieldbyname('n').asstring;

// разбираемся с комфортом
if q2.Fieldbyname('c_komf').asstring<>'' then
begin

k:=q2.Fieldbyname('c_komf').asstring;

while pos(',',k)<>0 do
begin

z:=pos(',',k);

k1:=copy(k,1,z);

delete(k,1,z);

k1:=copy(k1,1,length(k1)-1);

ssql:='select komf from komf where codeid='+k1;
opensql(q1,ssql);

lb6.Items.Add(q1.Fields[0].asstring);

end;

ssql:='select komf from komf where codeid='+k;
opensql(q1,ssql);

lb6.Items.Add(q1.Fields[0].asstring);

end;
//комфорт кончился

//доп. места - количество, описание

ssql:='select * from gostnom where p='+n_id+' and tip=3';
opensql(q1,ssql);

if q1.RecordCount<>0 then
begin

d_c:=q1.RecordCount;

for i:=1 to d_c do
begin

if i=1 then
begin
c4.Checked:=true;
t1.Text:=q1.FieldByName('op1').asstring;
end;

if i=2 then
begin
q1.Next;
c5.Checked:=true;
t2.Text:=q1.FieldByName('op1').asstring;
end;

if i=3 then
begin
q1.Next;
c6.Checked:=true;
t3.Text:=q1.FieldByName('op1').asstring;
end;

end;

end;
// все с доп. местами

//описания

m1.Text:=q2.FieldByName('op1').asstring;
m2.Text:=q2.FieldByName('op2').asstring;

end;

procedure TFGostinMain.dxDBGrid2Click(Sender: TObject);
begin
sm(q2.FieldByName('kat').asstring);
end;

procedure TFGostinMain.DBTreeListClick(Sender: TObject);
begin
sm(q2.FieldByName('kat').asstring);
end;

procedure TFGostinMain.treeGetStateIndex(Sender: TObject;
  Node: TdxTreeListNode; var Index: Integer);
begin
  if Node.Expanded then
    Index := 2
  else Index := 1;
end;

procedure TFGostinMain.dxDBTreeList1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
sm(q2.FieldByName('kat').asstring);
end;

procedure TFGostinMain.cxButton14Click(Sender: TObject);
begin

cb2.Properties.OnChange(sender);

lb1.ItemIndex:=-1;
lb5.ItemIndex:=-1;
lb6.Items.Clear;

m1.Clear;
m2.Clear;

c4.Checked:=false;
c5.Checked:=false;
c6.Checked:=false;
cb3.Checked:=false;

t1.Text:='';
t2.Text:='';
t3.text:='';

se1.Text:='1';

end;

procedure TFGostinMain.cxButton15Click(Sender: TObject);
begin

if (q2.FieldByName('tip').asinteger=2) or (q2.FieldByName('tip').asinteger=3) or (q2.RecordCount=0) then exit;

ssql:='select count(*) from bloki where n_id='+q2.FieldByName('codeid').asstring;
opensql(dm.q1,ssql);

if dm.q1.fields[0].asinteger<>0 then
begin
sm('Этот номер зарегистрирован в номерном фонде. Для удаления из гостиницы в первую очередь его нужно удалить из номерного фонда.');
exit;
end;

ssql:='delete from gostnom where codeid='+q2.FieldByName('codeid').asstring;
executesql(dm.q1,ssql);

ssql:='delete from gostnom where p='+q2.FieldByName('codeid').asstring;
executesql(dm.q1,ssql);

cb2.Properties.OnChange(sender);

end;

procedure TFGostinMain.cxButton16Click(Sender: TObject);
var gost_id, kat_id, kmo, kmd, tip, p, i, n : integer;
komf, op1, op2 : string;
begin

if (q2.FieldByName('tip').asinteger=2) or (q2.FieldByName('tip').asinteger=3) or
(q2.RecordCount=0) or (cb2.Text='') then exit;

if ((c4.Checked) and (t1.Text='')) or ((c5.Checked) and (t2.Text='')) or ((c6.Checked) and (t3.Text='')) then
begin
sm('Не хватает описания доп. мест.');
exit;
end;

c_o:=k_id('осн. место');
c_d:=k_id('доп. место');

gost_id:=q2.fieldbyname('c_gost').asinteger;
n:=q2.fieldbyname('n').asinteger;
kat_id:=q2.fieldbyname('c_kat').asinteger;
kmo:=q2.fieldbyname('kmo').asinteger;
kmd:=0;
tip:=1;
p:=-1;
komf:='';
komf_id:='';

case rg1.ItemIndex of
0: a_b:='Авт.';
1: a_b:='Блок';
2: a_b:='Нест.';
end;

ssql:='delete from gostnom where codeid='+q2.FieldByName('codeid').asstring;
executesql(q1,ssql);

ssql:='delete from gostnom where p='+q2.FieldByName('codeid').asstring;
executesql(q1,ssql);

op1:=m1.Text;
op2:=m2.Text;

if c4.Checked then kmd:=kmd+1;
if c5.Checked then kmd:=kmd+1;
if c6.Checked then kmd:=kmd+1;

// комфорт
if lb6.Count<>0 then
begin

for i:=0 to lb6.Count-1 do
begin

if komf='' then komf:=komf+lb6.items[i] else komf:=komf+', '+lb6.items[i];

ssql:='select codeid from komf where komf='+quotedstr(lb6.Items[i]);
opensql(q1,ssql);

if komf_id='' then komf_id:=komf_id+q1.Fields[0].AsString else komf_id:=komf_id+','+q1.Fields[0].AsString;

end;

end;
//комфорт end

ssql:='insert into gostnom (c_gost,n,c_kat,komf,c_komf,kmd,kmo,tip,op1,op2,p,a_b) values ('+
inttostr(gost_id)+','+inttostr(n)+','+inttostr(kat_id)+','+quotedstr(komf)+','+quotedstr(komf_id)+','+
inttostr(kmd)+','+inttostr(kmo)+','+inttostr(tip)+','+quotedstr(op1)+','+quotedstr(op2)+','+inttostr(p)+','+
quotedstr(a_b)+')';
executesql(q1,ssql);

ssql:='select max(codeid) from gostnom where c_gost='+inttostr(gost_id)+' and c_kat='+inttostr(kat_id);
opensql(q1,ssql);

p:=q1.fields[0].asinteger;

// введена основная запись номера

for i:=1 to kmo do
begin

//tip:=2;

ssql:='insert into gostnom (c_gost,n,tip,p,m,c_kat) values ('+inttostr(gost_id)+','+inttostr(i)+',2,'+
inttostr(p)+','+quotedstr('осн. место')+','+c_o+')';
executesql(q1,ssql);

end;

// введены основные места

if kmd<>0 then
begin

//tip:=3;

if c4.Checked then
begin

op1:=t1.Text;

ssql:='insert into gostnom (c_gost,n,tip,p,m,op1,c_kat) values ('+inttostr(gost_id)+',1,3,'+inttostr(p)+','+
quotedstr('доп. место')+','+quotedstr(t1.text)+','+c_d+')';
executesql(q1,ssql);

end;

if c5.Checked then
begin

op1:=t2.Text;

ssql:='insert into gostnom (c_gost,n,tip,p,m,op1,c_kat) values ('+inttostr(gost_id)+',2,3,'+inttostr(p)+','+
quotedstr('доп. место')+','+quotedstr(t2.text)+','+c_d+')';
executesql(q1,ssql);

end;

if c6.Checked then
begin

op1:=t3.Text;

ssql:='insert into gostnom (c_gost,n,tip,p,m,op1,c_kat) values ('+inttostr(gost_id)+',3,3,'+inttostr(p)+','+
quotedstr('доп. место')+','+quotedstr(t3.text)+','+c_d+')';
executesql(q1,ssql);

end;

end;

cb2.Properties.OnChange(sender);

ssql:='select max(codeid) from gostnom where c_kat='+inttostr(kat_id)+' and n='+inttostr(n);
opensql(q1,ssql);

lid:=q1.fields[0].asinteger;

q2.Locate('codeid', lid, []);

end;

procedure TFGostinMain.rg1Click(Sender: TObject);
begin
cb2.Properties.OnChange(sender); 
cb3.Checked:=false;
end;

procedure TFGostinMain.cxButton6Click(Sender: TObject);
var i: integer;
begin

ssql:='update gostnom set a_b='+quotedstr('Авт.')+' where codeid='+q2.fieldbyname('codeid').asstring+' or p='+
q2.fieldbyname('codeid').asstring;
executesql(q1,ssql);

i:=q2.fieldbyname('codeid').asinteger;

cb2.properties.onchange(sender);

if q2.recordcount<>0 then q2.locate('codeid',i,[]);

end;

procedure TFGostinMain.cxButton7Click(Sender: TObject);
var i: integer;
begin

ssql:='update gostnom set a_b='+quotedstr('Блок')+' where codeid='+q2.fieldbyname('codeid').asstring+' or p='+
q2.fieldbyname('codeid').asstring;
executesql(q1,ssql);

i:=q2.fieldbyname('codeid').asinteger;

cb2.properties.onchange(sender);

if q2.recordcount<>0 then q2.locate('codeid',i,[]);

end;

procedure TFGostinMain.cb3PropertiesChange(Sender: TObject);
var vkl : string;
begin

if cb2.Text='' then exit;

if lb4.ItemIndex=-1 then exit;

g_id_podreg(cb2.Text,podregion_id(cb1.text));

if cb3.Checked then vkl:='да' else vkl:='нет';

pit_id:=c_c('select codeid from pit where pit='+quotedstr(lb4.Items[lb4.itemindex]));

ssql:='update gostpit set vkl='+quotedstr(vkl)+' where c_pit='+pit_id+' and c_gost='+gost_id+' and a_b='+
quotedstr(struc);
executesql(q1,ssql);

end;

procedure TFGostinMain.dzClick(Sender: TObject);
begin

if not assigned(FGostDobav) then application.CreateForm(tFGostDobav, FGostDobav);
FGostDobav.show;

end;

procedure TFGostinMain.cb2MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
if rg1.itemindex=0 then combo_gost_on_podreg_load (FGostinMain.cb1,'Авт.',podreg_id)
else combo_gost_on_podreg_load (FGostinMain.cb1,'Блок',podreg_id);
end;

procedure TFGostinMain.b1Click(Sender: TObject);
begin
rg1.itemindex:=-1;
end;

procedure TFGostinMain.cxButton8Click(Sender: TObject);
var i: integer;
begin

ssql:='update gostnom set a_b='+quotedstr('Нест.')+' where codeid='+q2.fieldbyname('codeid').asstring+' or p='+
q2.fieldbyname('codeid').asstring;
executesql(q1,ssql);

i:=q2.fieldbyname('codeid').asinteger;

cb2.properties.onchange(sender);

if q2.recordcount<>0 then q2.locate('codeid',i,[]);

end;

procedure TFGostinMain.dxDBGrid1DblClick(Sender: TObject);
begin
iz.onclick(sender);
end;

end.
