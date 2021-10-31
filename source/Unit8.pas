unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxExEdtr, cxLookAndFeelPainters, StdCtrls, cxControls,
  cxContainer, cxCheckListBox, cxButtons, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, cxCurrencyEdit, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxSpinEdit,cxCheckBox, DB, ADODB, dxDBTLCl, dxGrClms;

type
  TFBonus = class(TForm)
    dbg1: TdxDBGrid;
    b1: TcxButton;
    cb1: TcxCheckListBox;
    Label1: TLabel;
    de1: TcxDateEdit;
    de2: TcxDateEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    se1: TcxSpinEdit;
    te1: TcxTextEdit;
    Label7: TLabel;
    cxButton1: TcxButton;
    dbg2: TdxDBGrid;
    cxButton3: TcxButton;
    l8: TLabel;
    e1: TcxTextEdit;
    e2: TcxTextEdit;
    ds1: TDataSource;
    ds2: TDataSource;
    q1: TADOQuery;
    q2: TADOQuery;
    q2nazv: TWideStringField;
    q2nomer_prog: TIntegerField;
    q2d1: TDateTimeField;
    q2d2: TDateTimeField;
    dbg1nazv: TdxDBGridColumn;
    dbg1nomer_prog: TdxDBGridMaskColumn;
    dbg1d1: TdxDBGridDateColumn;
    dbg1d2: TdxDBGridDateColumn;
    cxButton2: TcxButton;
    q1summa1: TBCDField;
    q1summa2: TBCDField;
    q1procent: TSmallintField;
    dbg2summa1: TdxDBGridCurrencyColumn;
    dbg2summa2: TdxDBGridCurrencyColumn;
    dbg2procent: TdxDBGridMaskColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure b1Click(Sender: TObject);
    procedure e1KeyPress(Sender: TObject; var Key: Char);
    procedure cxTextEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure e2KeyPress(Sender: TObject; var Key: Char);
    procedure dbg1Click(Sender: TObject);
    procedure dbg2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FBonus: TFBonus;

procedure dbg2_reload (nom_bpr : string);
procedure nah;

implementation

uses unit11,unit85;
{$R *.dfm}

procedure nah;
var i : integer;
begin

with fbonus do
begin

te1.enabled:=true;
de1.enabled:=true;
de2.enabled:=true;
cb1.enabled:=true;

de1.text:=datetostr(now);
de2.text:=datetostr(now);

e1.text:='0';
e2.text:='0';
se1.text:='0';
te1.text:='';

bpr:='0';

l8.caption:='№';

fbonus.q1.active:=false;

for i:=0 to cb1.Items.Count-1 do
begin
cb1.Items[i].checked:=false;
end;

end;

end;

procedure dbg2_reload (nom_bpr : string);
begin

ssql:='select distinct summa1,summa2,procent from bonuses where nomer_prog='+nom_bpr+' order by procent';
opensql(fbonus.q1,ssql);

if fbonus.q1.recordcount<>0 then fbonus.dbg2.OnClick(fbonus);

end;

procedure TFBonus.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action := caFree;
FBonus := nil;
end;

procedure TFBonus.FormCreate(Sender: TObject);
var i : integer;
begin

bpr:='0';

ssql:='select distinct a.napr from gostinici a left join bloki b on a.codeid=b.c_gost order by a.napr';
opensql(dm.q1,ssql);

cb1.Items.Clear;

for i:=1 to dm.q1.RecordCount do
begin

with cb1.Items.Add do
begin
  Text := dm.q1.fieldbyname('napr').asstring;
end;

dm.q1.next;
end;

ssql:='select distinct nazv,nomer_prog,d1,d2 from bonuses order by nomer_prog';
opensql(q2,ssql);

if q2.recordcount<>0 then dbg1.OnClick(sender) else nah;

end;

procedure TFBonus.b1Click(Sender: TObject);
var
i : integer;
chkd : boolean;
begin

if te1.Text='' then
begin
sm('Не введено название.');
exit;
end;

if (de1.Text='') or (de2.Text='') then
begin
sm('Не введен период.');
exit;
end;

chkd:=false;

for i:=0 to cb1.Items.Count-1 do
begin
if cb1.Items[i].Checked=true then chkd:=true;
end;

if chkd=false then
begin
sm('Не указано направление.');
exit;
end;

te1.enabled:=false;
cb1.enabled:=false;
de1.enabled:=false;
de2.enabled:=false;

if e1.text='' then e1.text:='0';
if e2.text='' then e2.text:='0';

if bpr='0' then
begin

ssql:='select max(nomer_prog) from bonuses';
opensql(dm.q1,ssql);

if dm.q1.recordcount=0 then bpr:='1' else bpr:=inttostr(dm.q1.fields[0].asinteger+1);

end;

l8.caption:='№ '+bpr;

// запятая в цене
e1.text:=zap(e1.text);
e2.text:=zap(e2.text);

for i:=0 to cb1.Items.Count-1 do
 begin

  if cb1.Items[i].Checked then
  begin

  ssql:='insert into bonuses (nazv,d1,d2,summa1,summa2,procent,napr,nomer_prog) values ('+
  quotedstr(te1.text)+','+quotedstr(formatdatetime(dtf,de1.date))+','+quotedstr(formatdatetime(dtf,de2.date))+
  ',CAST('+quotedstr(e1.Text)+' as money),CAST('+quotedstr(e2.Text)+' as money),'+se1.text+','+cb1.Items[i].text+','+bpr+')';
  executesql(dm.q1,ssql);

  end;

 end;

ssql:='select distinct nazv,nomer_prog,d1,d2 from bonuses order by nomer_prog';
opensql(q2,ssql);

if q2.recordcount<>0 then
begin
q2.last;
dbg2_reload(q2.fields[1].asstring);
end;

end;

procedure TFBonus.e1KeyPress(Sender: TObject; var Key: Char);
begin
if (not (key in ['0'..'9','.'])) and (key<>#8) then
begin
key:=#0;
end;
end;

procedure TFBonus.cxTextEdit1KeyPress(Sender: TObject; var Key: Char);
begin
if (not (key in ['0'..'9','.'])) and (key<>#8) then
begin
key:=#0;
end;
end;

procedure TFBonus.e2KeyPress(Sender: TObject; var Key: Char);
begin
if (not (key in ['0'..'9','.'])) and (key<>#8) then
begin
key:=#0;
end;
end;

procedure TFBonus.dbg1Click(Sender: TObject);
var i,j : integer;
begin

if q2.recordcount<>0 then
begin

dbg2_reload(q2.fields[1].asstring);

te1.text:=q2.fieldbyname('nazv').asstring;
l8.caption:='№ '+q2.fieldbyname('nomer_prog').asstring;

de1.text:=q2.fieldbyname('d1').asstring;
de2.text:=q2.fieldbyname('d2').asstring;

ssql:='select napr from bonuses where nomer_prog='+q2.fieldbyname('nomer_prog').asstring;
opensql(dm.q1,ssql);

for i:=0 to cb1.Items.Count-1 do
begin
cb1.Items[i].checked:=false;
end;

for i:=0 to cb1.Items.Count-1 do
begin

dm.q1.first;

for j:=1 to dm.q1.recordcount do
begin

if cb1.Items[i].text=dm.q1.fields[0].asstring then cb1.Items[i].checked:=true;

dm.q1.next; 

end;

end;

end;

end;

procedure TFBonus.dbg2Click(Sender: TObject);
begin

if q1.recordcount<>0 then
begin

e1.text:=q1.fieldbyname('summa1').asstring;
e2.text:=q1.fieldbyname('summa2').asstring;

se1.text:=q1.fieldbyname('procent').asstring;

end;

end;

procedure TFBonus.cxButton3Click(Sender: TObject);
begin

if q2.recordcount<>0 then
begin

If Application.MessageBox('Удалить бонусную программу?', pchar('Удаление бонусной программы '+
q2.fieldbyname('nazv').asstring), MB_YESNO) = idYES Then

begin
ssql:='delete from bonuses where nomer_prog='+q2.fieldbyname('nomer_prog').asstring;
executesql(dm.q1,ssql);
end else exit;

end;

fbonus.OnCreate(sender);

end;

procedure TFBonus.cxButton2Click(Sender: TObject);
begin
nah;
end;

procedure TFBonus.cxButton1Click(Sender: TObject);
begin

ssql:='delete from bonuses where nomer_prog='+q2.fieldbyname('nomer_prog').asstring+
' and summa1=CAST('+quotedstr(e1.Text)+' as money) and summa2=CAST('+quotedstr(e2.Text)+' as money) and procent='+se1.text;
executesql(dm.q1,ssql);

dbg1.onclick(sender);

end;

end.
