unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxLookAndFeelPainters, dxExEdtr, DB, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, cxControls, cxContainer, cxEdit, cxTextEdit, StdCtrls,
  cxButtons, cxMaskEdit, cxDropDownEdit, dxDBTLCl, dxGrClms;

type
  TFDop = class(TForm)
    b1: TcxButton;
    b2: TcxButton;
    b3: TcxButton;
    te3: TcxTextEdit;
    te4: TcxTextEdit;
    g1: TdxDBGrid;
    ds1: TDataSource;
    b4: TcxButton;
    b5: TcxButton;
    b6: TcxButton;
    g2: TdxDBGrid;
    ds2: TDataSource;
    cb1: TcxComboBox;
    cb2: TcxComboBox;
    g1id: TdxDBGridMaskColumn;
    g1cat: TdxDBGridColumn;
    g2id: TdxDBGridMaskColumn;
    g2naim: TdxDBGridColumn;
    g2cat_id: TdxDBGridMaskColumn;
    g2cat: TdxDBGridLookupColumn;
    te1: TcxTextEdit;
    te2: TcxTextEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure b1Click(Sender: TObject);
    procedure b2Click(Sender: TObject);
    procedure b3Click(Sender: TObject);
    procedure b4Click(Sender: TObject);
    procedure b5Click(Sender: TObject);
    procedure b6Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure g1Click(Sender: TObject);
    procedure g1CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure g2CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure cb1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cb2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cb1PropertiesChange(Sender: TObject);
    procedure cb2PropertiesChange(Sender: TObject);
    procedure g2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDop: TFDop;

implementation

uses unit85;

{$R *.dfm}

procedure TFDop.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
FDop:=nil;
end;

procedure TFDop.b1Click(Sender: TObject);
begin

if te1.Text='' then exit;

ssql:='select id from dopcat where cat='+quotedstr(te1.Text);
opensql(dm.q1,ssql);

if dm.q1.RecordCount<>0 then
begin
sm('Такая категория дополнения уже есть.');
exit;
end;

ssql:='insert into dopcat (cat) values ('+quotedstr(te1.Text)+')';
ExecuteSQL(dm.q1,ssql);

dm.dopcat.close;
dm.dopcat.open;

ssql:='select MAX(id) from dopcat';
opensql(dm.q1,ssql);

dm.dopcat.Locate('id', dm.q1.fields[0].asinteger, []);
       
end;

procedure TFDop.b2Click(Sender: TObject);
var tv: string;
begin

if te2.Text='' then exit;

tv:=dm.dopcat.FieldByName('id').asstring;

ssql:='update dopcat set cat='+quotedstr(te2.Text)+' where id='+tv;
ExecuteSQL(dm.q1,ssql);

dm.dopcat.close;
dm.dopcat.open;

dm.dopcat.Locate('id', tv, []);

end;

procedure TFDop.b3Click(Sender: TObject);
begin

ssql:='delete from dopcat where id='+dm.dopcat.fieldbyname('id').asstring;
ExecuteSQL(dm.q1,ssql);

dm.dopcat.close;
dm.dopcat.open;

end;

procedure TFDop.b4Click(Sender: TObject);
begin

if (te3.Text='') or (cb1.text='') or (cat_id='') then exit;

cb1.properties.onchange(sender);

ssql:='select id from dops where naim='+quotedstr(te3.Text)+' and cat_id='+cat_id;
opensql(dm.q1,ssql);

if dm.q1.RecordCount<>0 then
begin
sm('Такой вид дополнения уже есть.');
exit;
end;

ssql:='insert into dops (naim,cat_id) values ('+quotedstr(te3.Text)+','+cat_id+')';
ExecuteSQL(dm.q1,ssql);

dm.dops.close;
dm.dops.open;

ssql:='select MAX(id) from dops';
opensql(dm.q1,ssql);

dm.dops.Locate('id', dm.q1.fields[0].asinteger, []);

end;

procedure TFDop.b5Click(Sender: TObject);
var tv: string;
begin

if (te4.Text='') or (cb2.text='') or (cat_id='') then exit;

cb2.properties.onchange(sender);

tv:=dm.dops.FieldByName('id').asstring;

ssql:='update dops set naim='+quotedstr(te4.Text)+',cat_id='+cat_id+' where id='+tv;
ExecuteSQL(dm.q1,ssql);

dm.dops.close;
dm.dops.open;

dm.dops.Locate('id', tv, []);
    
end;

procedure TFDop.b6Click(Sender: TObject);
begin

ssql:='delete from dops where id='+dm.dops.fieldbyname('id').asstring;
ExecuteSQL(dm.q1,ssql);

dm.dops.close;
dm.dops.open;

end;

procedure TFDop.FormCreate(Sender: TObject);
var i : integer;
begin

dm.dopcat.close;
dm.dopcat.open;

dm.dops.close;
dm.dops.open;

cat_id:='';

ssql:='select cat from dopcat';
opensql(dm.q1,ssql);

for i:=1 to dm.q1.recordcount do
begin
cb1.Properties.Items.Add(dm.q1.Fields[0].asstring);
cb2.Properties.Items.Add(dm.q1.Fields[0].asstring);
dm.q1.next;
end;

end;

procedure TFDop.g1Click(Sender: TObject);
begin
te2.Text:=dm.dopcat.fieldbyname('cat').asstring;
end;

procedure TFDop.g1CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
  ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
  ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
  var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
  var ADone: Boolean);
begin
if not ANode.Focused then
 if odd(ANode.Index) then AColor:=clWhite
                     else AColor:=$00C5E9C0;
end;

procedure TFDop.g2CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
  ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
  ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
  var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
  var ADone: Boolean);
begin
if not ANode.Focused then
 if odd(ANode.Index) then AColor:=clWhite
                     else AColor:=$00C5E9C0;
end;

procedure TFDop.cb1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var i : integer;
begin

cb1.Properties.Items.Clear;

ssql:='select cat from dopcat';
opensql(dm.q1,ssql);

for i:=1 to dm.q1.recordcount do
begin
cb1.Properties.Items.Add(dm.q1.Fields[0].asstring);
dm.q1.next;
end;

end;

procedure TFDop.cb2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var i : integer;
begin

cb2.Properties.Items.Clear;

ssql:='select cat from dopcat';
opensql(dm.q1,ssql);

for i:=1 to dm.q1.recordcount do
begin
cb2.Properties.Items.Add(dm.q1.Fields[0].asstring);
dm.q1.next;
end;

end;

procedure TFDop.cb1PropertiesChange(Sender: TObject);
begin

ssql:='select id from dopcat where cat='+quotedstr(cb1.text);
opensql(dm.q1,ssql);

cat_id:=dm.q1.fieldbyname('id').asstring;

end;

procedure TFDop.cb2PropertiesChange(Sender: TObject);
begin

ssql:='select id from dopcat where cat='+quotedstr(cb2.text);
opensql(dm.q1,ssql);

cat_id:=dm.q1.fieldbyname('id').asstring;

end;

procedure TFDop.g2Click(Sender: TObject);
begin
te4.Text:=dm.dops.fieldbyname('naim').asstring;
cb2.Text:=dm.dops.fieldbyname('cat').asstring;
end;

end.
