unit Unit36;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxTL, dxDBCtrl, dxDBGrid, Db, DBTables, StdCtrls, dxCntner, dxExEdtr,
  ADODB, cxLookAndFeelPainters, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxButtons;

type
  TFPitanie = class(TForm)
    dxDBGrid1: TdxDBGrid;
    ds1: TDataSource;
    dxDBGrid1Pit: TdxDBGridMaskColumn;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    edit1: TcxTextEdit;
    edit3: TcxTextEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxDBGrid1CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
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
  FPitanie: TFPitanie;

implementation

uses unit85;

{$R *.DFM}

procedure TFPitanie.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
FPitanie:=nil;
end;

procedure TFPitanie.dxDBGrid1CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
 if not ANode.Focused then
  if odd(ANode.Index) then AColor:=clWhite
                      else AColor:=$00C5E9C0;
end;

procedure TFPitanie.dxDBGrid1Click(Sender: TObject);
begin
if dm.pit.recordcount<>0 then edit3.Text:=dm.pit.fieldbyname('pit').asstring;
end;

procedure TFPitanie.cxButton1Click(Sender: TObject);
begin
if edit1.Text='' then exit;

ssql:='select codeid from pit where pit='+quotedstr(edit1.Text);
opensql(dm.q1,ssql);

if dm.q1.RecordCount<>0 then
begin
sm('Такой вид питания уже есть.');
exit;
end;

ssql:='insert into pit (pit) values ('+quotedstr(edit1.Text)+')';
ExecuteSQL(dm.q1,ssql);

dm.pit.close;
dm.pit.open;

ssql:='select MAX(codeid) from pit';
opensql(dm.q1,ssql);

dm.pit.Locate('codeid', dm.q1.fields[0].asinteger, []);

end;

procedure TFPitanie.cxButton2Click(Sender: TObject);
var tv: string;
begin

if edit3.Text='' then exit;

tv:=dm.pit.FieldByName('codeid').asstring;

ssql:='update pit set pit='+quotedstr(edit3.Text)+' where codeid='+tv;
ExecuteSQL(dm.q1,ssql);

dm.pit.close;
dm.pit.open;

dm.pit.Locate('codeid', tv, []);

end;

procedure TFPitanie.cxButton3Click(Sender: TObject);
begin

ssql:='delete from pit where codeid='+dm.pit.fieldbyname('codeid').asstring;
ExecuteSQL(dm.q1,ssql);

dm.pit.close;
dm.pit.open;

end;

end.
