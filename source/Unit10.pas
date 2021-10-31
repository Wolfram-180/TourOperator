unit Unit10;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxExEdtr, cxLookAndFeelPainters, DB, ADODB, cxControls,
  cxContainer, cxEdit, cxTextEdit, StdCtrls, cxButtons, dxTL, dxDBCtrl,
  dxDBGrid, dxCntner;

type
  TFKomf = class(TForm)
    dxDBGrid1: TdxDBGrid;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    edit1: TcxTextEdit;
    edit3: TcxTextEdit;
    ds1: TDataSource;
    dxDBGrid1codeid: TdxDBGridMaskColumn;
    dxDBGrid1komf: TdxDBGridColumn;
    procedure dxDBGrid1Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxDBGrid1CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FKomf: TFKomf;

implementation

uses Unit85;

{$R *.dfm}

procedure TFKomf.dxDBGrid1Click(Sender: TObject);
begin
edit3.Text:=dm.komfq.fieldbyname('komf').asstring;
end;

procedure TFKomf.cxButton3Click(Sender: TObject);
begin

if dm.komfq.recordcount=0 then exit;

ssql:='delete from komf where codeid='+dm.komfq.fieldbyname('codeid').asstring;
executesql(dm.q1,ssql);

dm.komfq.close;
dm.komfq.open;

edit1.Clear;
edit3.Clear;

end;

procedure TFKomf.cxButton1Click(Sender: TObject);
begin

if edit1.Text='' then exit;

ssql:='select codeid from komf where komf='+quotedstr(edit1.Text);
opensql(dm.q1,ssql);

if dm.q1.RecordCount<>0 then
begin
sm('Такой вид удобств уже есть.');
exit;
end;

ssql:='insert into komf (komf) values ('+quotedstr(edit1.Text)+')';
executesql(dm.q1,ssql);

dm.komfq.close;
dm.komfq.open;

ssql:='select MAX(codeid) as cod from komf';
opensql(dm.q1,ssql);

dm.komfq.Locate('codeid', dm.q1.fieldbyname('cod').asinteger, []);

end;

procedure TFKomf.cxButton2Click(Sender: TObject);
var tv : integer;
begin

if (dm.komfq.recordcount=0) or (edit3.Text='') then exit;

tv:=dm.komfq.FieldByName('codeid').asinteger;

ssql:='update komf set komf='+quotedstr(edit3.Text)+' where codeid='+dm.komfq.FieldByName('codeid').asstring;
executesql(dm.q1,ssql);

dm.komfq.close;
dm.komfq.open;

dm.komfq.Locate('codeid', tv, []);

end;

procedure TFKomf.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
Fkomf:=nil;
end;

procedure TFKomf.dxDBGrid1CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
  ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
  ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
  var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
  var ADone: Boolean);
begin
 if not ANode.Focused then
  if odd(ANode.Index) then AColor:=clWhite
                      else AColor:=$00C5E9C0;
end;

end.
