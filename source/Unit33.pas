unit Unit33;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxTL, dxDBCtrl, dxDBGrid, dxCntner, Db, DBTables, StdCtrls, dxExEdtr,
  ComCtrls, ADODB, cxLookAndFeelPainters, cxMaskEdit, cxSpinEdit,
  cxSpinButton, cxButtons, cxControls, cxContainer, cxEdit, cxTextEdit;

type
  TFKatNom = class(TForm)
    DataSource1: TDataSource;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1Codeid: TdxDBGridMaskColumn;
    dxDBGrid1Kat: TdxDBGridMaskColumn;
    dxDBGrid1Column3: TdxDBGridColumn;
    Label1: TLabel;
    Q1: TADOQuery;
    Label4: TLabel;
    edit1: TcxTextEdit;
    Edit3: TcxTextEdit;
    edit2: TcxTextEdit;
    edit4: TcxTextEdit;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxSpinButton1: TcxSpinButton;
    cxSpinButton2: TcxSpinButton;
    procedure dxDBGrid1CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button4Click(Sender: TObject);
    procedure dxDBGrid1Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FKatNom: TFKatNom;

implementation

uses unit85;

//обработан

{$R *.DFM}

procedure TFKatNom.dxDBGrid1CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
 if not ANode.Focused then
  if odd(ANode.Index) then AColor:=clWhite
                      else AColor:=$00F8E6E4;
end;

procedure TFKatNom.Button1Click(Sender: TObject);
var tv : integer;
begin

if edit1.Text='' then exit;
if edit2.Text='' then exit;

with q1 do
begin
close;
SQL.Clear;
SQL.add('select codeid from kat where kat='+quotedstr(edit1.Text)+' and kr='+edit2.text);
open;
end;

if q1.RecordCount<>0 then
begin
sm('“акой тип номера уже есть.');
exit;
end;

with q1 do
begin
close;
SQL.Clear;
SQL.add('insert into kat (kat, kr) values ('+quotedstr(edit1.Text)+','+edit2.text+')');
ExecSQL;
end;

dm.kat.close;
dm.kat.open;

with q1 do
begin
close;
SQL.Clear;
SQL.add('select MAX(codeid) as codid from kat');
open;
end;

tv:=q1.fieldbyname('codid').asinteger;
dm.kat.Locate('codeid', tv, []);

end;

procedure TFKatNom.Button3Click(Sender: TObject);
var tv : integer;
begin

tv:=dm.kat.fieldbyname('codeid').value;

{with q1 do
begin
Close;
SQL.Clear;
SQL.add('select count(*) from gostnom where c_kat='+inttostr(tv));
open;
end;

if q1.fields[0].asinteger<>0 then
begin
showmessage('Ёта категори€ номера используетс€! —начала удалите ее из таблицы "√остиницы-номера"');
exit;
end; }

with q1 do
begin
close;
sql.clear;
sql.Add('delete from kat where codeid='+inttostr(tv));
ExecSQL;
end;

dm.kat.close;
dm.kat.open;

if dm.kat.RecordCount=0 then exit;

with q1 do
begin
close;
SQL.Clear;
SQL.add('select codeid from kat where codeid='+inttostr(tv-1));
open;
end;

if q1.RecordCount<>0 then tv:=q1.fieldbyname('codeid').asinteger else
begin

with q1 do
begin
close;
SQL.Clear;
SQL.add('select codeid from kat where codeid='+inttostr(tv+1));
open;
end;

tv:=q1.fieldbyname('codeid').asinteger;

end;

dm.kat.Locate('codeid', tv, []);

end;

procedure TFKatNom.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
FKatNom:=nil;
end;

procedure TFKatNom.Button4Click(Sender: TObject);
var tv : integer;
begin

if edit3.Text='' then exit;
if edit4.Text='' then exit;

tv:=dm.kat.FieldByName('codeid').value;

with q1 do
begin
close;
SQL.Clear;
SQL.add('update kat set kat='+quotedstr(edit3.Text)+',kr='+edit4.text+' where codeid='+inttostr(tv));
ExecSQL;
end;

dm.kat.close;
dm.kat.open;

dm.kat.Locate('codeid', tv, []);

end;

procedure TFKatNom.dxDBGrid1Click(Sender: TObject);
begin
edit3.Text:=dm.Kat.fieldbyname('kat').asstring;
edit4.Text:=dm.Kat.fieldbyname('kr').asstring;
end;

procedure TFKatNom.cxButton1Click(Sender: TObject);
var tv : integer;
begin

if edit1.Text='' then exit;
if edit2.Text='' then exit;

with q1 do
begin
close;
SQL.Clear;
SQL.add('select codeid from kat where kat='+quotedstr(edit1.Text)+' and kr='+edit2.text);
open;
end;

if q1.RecordCount<>0 then
begin
sm('“акой тип номера уже есть.');
exit;
end;

with q1 do
begin
close;
SQL.Clear;
SQL.add('insert into kat (kat, kr) values ('+quotedstr(edit1.Text)+','+edit2.text+')');
ExecSQL;
end;

dm.kat.close;
dm.kat.open;

with q1 do
begin
close;
SQL.Clear;
SQL.add('select MAX(codeid) as codid from kat');
open;
end;

tv:=q1.fieldbyname('codid').asinteger;
dm.kat.Locate('codeid', tv, []);

end;

procedure TFKatNom.cxButton2Click(Sender: TObject);
var tv : integer;
begin

if edit3.Text='' then exit;
if edit4.Text='' then exit;

tv:=dm.kat.FieldByName('codeid').value;

with q1 do
begin
close;
SQL.Clear;
SQL.add('update kat set kat='+quotedstr(edit3.Text)+',kr='+edit4.text+' where codeid='+inttostr(tv));
ExecSQL;
end;

dm.kat.close;
dm.kat.open;

dm.kat.Locate('codeid', tv, []);

end;

procedure TFKatNom.cxButton3Click(Sender: TObject);
var tv : integer;
begin

tv:=dm.kat.fieldbyname('codeid').value;

ssql:='select count(*) from bloki where c_kat='+inttostr(tv);
opensql(dm.q1,ssql);

if dm.q1.Fields[0].AsInteger>0 then
begin
sm('Ёта категори€ номера используетс€.');
exit;
end;

with q1 do
begin
close;
sql.clear;
sql.Add('delete from kat where codeid='+inttostr(tv));
ExecSQL;
end;

dm.kat.close;
dm.kat.open;

if dm.kat.RecordCount=0 then exit;

with q1 do
begin
close;
SQL.Clear;
SQL.add('select codeid from kat where codeid='+inttostr(tv-1));
open;
end;

if q1.RecordCount<>0 then tv:=q1.fieldbyname('codeid').asinteger else
begin

with q1 do
begin
close;
SQL.Clear;
SQL.add('select codeid from kat where codeid='+inttostr(tv+1));
open;
end;

tv:=q1.fieldbyname('codeid').asinteger;

end;

dm.kat.Locate('codeid', tv, []);

end;

end.
