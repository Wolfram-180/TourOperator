unit Unit19;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxTL, dxDBCtrl, dxDBGrid, Db, DBTables, dxCntner, StdCtrls, dxExEdtr,
  ADODB, cxLookAndFeelPainters, cxButtons, cxControls, cxContainer, cxEdit,
  cxTextEdit, dxDBTLCl, dxGrClms, cxMaskEdit, cxDropDownEdit, cxGroupBox,
  cxRadioGroup;

type
  TFTransfer = class(TForm)
    dxDBGrid1: TdxDBGrid;
    DataSource1: TDataSource;
    q1: TADOQuery;
    b1: TcxButton;
    b2: TcxButton;
    b3: TcxButton;
    sti: TcxTextEdit;
    ste: TcxTextEdit;
    Label2: TLabel;
    p1i: TcxComboBox;
    p2i: TcxComboBox;
    p3i: TcxComboBox;
    p1e: TcxComboBox;
    p2e: TcxComboBox;
    p3e: TcxComboBox;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    t1i: TcxMaskEdit;
    Label6: TLabel;
    t2i: TcxMaskEdit;
    t1e: TcxMaskEdit;
    t2e: TcxMaskEdit;
    dxDBGrid1Codeid: TdxDBGridMaskColumn;
    dxDBGrid1St: TdxDBGridCurrencyColumn;
    dxDBGrid1p1: TdxDBGridMaskColumn;
    dxDBGrid1p2: TdxDBGridMaskColumn;
    dxDBGrid1p3: TdxDBGridMaskColumn;
    dxDBGrid1t1: TdxDBGridColumn;
    dxDBGrid1t2: TdxDBGridColumn;
    dxDBGrid1p1str: TdxDBGridLookupColumn;
    dxDBGrid1p2str: TdxDBGridLookupColumn;
    dxDBGrid1p3str: TdxDBGridLookupColumn;
    rg1: TcxRadioGroup;
    ColumnA_B: TdxDBGridColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxDBGrid1CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure stiKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure b1Click(Sender: TObject);
    procedure steKeyPress(Sender: TObject; var Key: Char);
    procedure dxDBGrid1Click(Sender: TObject);
    procedure b2Click(Sender: TObject);
    procedure b3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FTransfer: TFTransfer;

implementation

uses Unit20, Unit21, unit17, unit85, unit11;

{$R *.DFM}

procedure TFTransfer.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
fTransfer:=nil;
end;

procedure TFTransfer.dxDBGrid1CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
 if not ANode.Focused then
  if odd(ANode.Index) then AColor:=clWhite
                      else AColor:=$00E6FFE6;
end;

procedure TFTransfer.stiKeyPress(Sender: TObject; var Key: Char);
begin

if (not (key in ['0'..'9','.'])) and (key<>#8) then
begin
key:=#0;
end;

end;

procedure TFTransfer.FormCreate(Sender: TObject);
var i: integer;
begin

dm.podregq.first;

for i:=1 to dm.podregq.RecordCount do
begin

p1i.properties.Items.Add(dm.podregq.fieldbyname('podreg').asstring);
p2i.properties.Items.Add(dm.podregq.fieldbyname('podreg').asstring);
p3i.properties.Items.Add(dm.podregq.fieldbyname('podreg').asstring);
p1e.properties.Items.Add(dm.podregq.fieldbyname('podreg').asstring);
p2e.properties.Items.Add(dm.podregq.fieldbyname('podreg').asstring);
p3e.properties.Items.Add(dm.podregq.fieldbyname('podreg').asstring);

dm.podregq.next;

end;

end;

procedure TFTransfer.b1Click(Sender: TObject);
var p1,p2,p3 : string;
begin

if (p1i.Text='') or (p2i.Text='') or (p3i.Text='')  or (t1i.Text='')  or (t2i.Text='') or (sti.Text='') then exit;

p1:=podregion_id(p1i.Text);

if p1='' then exit;

p2:=podregion_id(p2i.Text);

if p2='' then exit;

p3:=podregion_id(p3i.Text);

if p3='' then exit;

ssql:='insert into tr (oper,st,p1,p2,p3,t1,t2,trstr,a_b) values ('+quotedstr(user)+',CAST('+quotedstr(sti.Text)+' as money),'+
quotedstr(p1)+','+quotedstr(p2)+','+quotedstr(p3)+','+quotedstr(t1i.text)+','+quotedstr(t2i.text)+','+quotedstr(p1i.text+' - '+
p2i.text+' - '+p3i.text)+','+quotedstr(rg1.properties.Items[rg1.itemindex].Caption)+')';
executesql(dm.q1,ssql);

dm.transq.close;
dm.transq.open;

ssql:='select MAX(codeid) as codid from tr';
opensql(dm.q1,ssql);

dm.transq.Locate('codeid', dm.q1.fieldbyname('codid').asinteger, []);

end;

procedure TFTransfer.steKeyPress(Sender: TObject; var Key: Char);
begin

if (not (key in ['0'..'9','.'])) and (key<>#8) then
begin
key:=#0;
end;

end;

procedure TFTransfer.dxDBGrid1Click(Sender: TObject);
begin

p1e.text:=dm.transq.fieldbyname('p1str').asstring;
p2e.text:=dm.transq.fieldbyname('p2str').asstring;
p3e.text:=dm.transq.fieldbyname('p3str').asstring;

t1e.text:=dm.transq.fieldbyname('t1').asstring;
t2e.text:=dm.transq.fieldbyname('t2').asstring;

ste.text:=dm.transq.fieldbyname('st').asstring;

if dm.transq.fieldbyname('a_b').asstring='авт.' then rg1.ItemIndex:=0;
if dm.transq.fieldbyname('a_b').asstring='блок' then rg1.ItemIndex:=1;
if dm.transq.fieldbyname('a_b').asstring='нестандарт' then rg1.ItemIndex:=2;
if dm.transq.fieldbyname('a_b').asstring='все' then rg1.ItemIndex:=3;

end;

procedure TFTransfer.b2Click(Sender: TObject);
var tv : integer;
p1,p2,p3 : string;
begin

if (p1e.Text='') or (p2e.Text='') or (p3e.Text='')  or
(t1e.Text='')  or (t2e.Text='') or (ste.Text='') then exit;

tv:=dm.transq.FieldByName('codeid').value;

p1:=podregion_id(p1e.Text);

if p1='' then exit;

p2:=podregion_id(p2e.Text);

if p2='' then exit;

p3:=podregion_id(p3e.Text);

if p3='' then exit;

ssql:='update tr set st=CAST('+quotedstr(ste.Text)+' as money), p1='+quotedstr(p1)+
',p2='+quotedstr(p2)+',p3='+quotedstr(p3)+',t1='+quotedstr(t1e.text)+
',t2='+quotedstr(t2e.text)+',trstr='+quotedstr(p1e.text+'-'+p2e.text+'-'+p3e.text)+
',a_b='+quotedstr(rg1.properties.Items[rg1.itemindex].Caption)+' where codeid='+
inttostr(tv);
executesql(dm.q1,ssql);

dm.transq.close;
dm.transq.open;

dm.transq.Locate('codeid', tv, []);

end;

procedure TFTransfer.b3Click(Sender: TObject);
begin

if dm.transq.recordcount=0 then exit;

ssql:='delete from tr where codeid='+dm.transq.fieldbyname('codeid').asstring;
executesql(dm.q1,ssql);

dm.transq.close;
dm.transq.open;

end;

end.
