unit UAvtob;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxExEdtr, DB, dxCntner, dxTL, dxDBCtrl, dxDBGrid,
  cxLookAndFeelPainters, StdCtrls, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxButtons, cxMaskEdit, cxDropDownEdit, cxDBEdit;

type
  TFAvtob = class(TForm)
    gr: TdxDBGrid;
    ds: TDataSource;
    dz: TcxButton;
    iz: TcxButton;
    uz: TcxButton;
    md: TcxTextEdit;
    mi: TcxTextEdit;
    nd: TcxTextEdit;
    ni: TcxTextEdit;
    hd: TcxTextEdit;
    hi: TcxTextEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    kd: TcxTextEdit;
    ki: TcxTextEdit;
    Label4: TLabel;
    Label5: TLabel;
    ed: TcxComboBox;
    ei: TcxComboBox;
    p1d: TcxTextEdit;
    p1i: TcxTextEdit;
    Label6: TLabel;
    o1d: TcxButton;
    o1i: TcxButton;
    p2d: TcxTextEdit;
    p2i: TcxTextEdit;
    Label7: TLabel;
    o2d: TcxButton;
    o2i: TcxButton;
    od: TOpenDialog;
    grid: TdxDBGridMaskColumn;
    grmarka: TdxDBGridColumn;
    grnomer: TdxDBGridColumn;
    grhoz: TdxDBGridColumn;
    grkont: TdxDBGridColumn;
    gret: TdxDBGridMaskColumn;
    grpl1: TdxDBGridColumn;
    grpl2: TdxDBGridColumn;
    grvod1: TdxDBGridMaskColumn;
    v1: TcxComboBox;
    Label9: TLabel;
    v2: TcxComboBox;
    Label10: TLabel;
    v1i: TcxComboBox;
    v2i: TcxComboBox;
    Label8: TLabel;
    ci: TcxComboBox;
    ce: TcxComboBox;
    grColumn10: TdxDBGridColumn;
    grColumn11: TdxDBGridColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure o1dClick(Sender: TObject);
    procedure o1iClick(Sender: TObject);
    procedure o2dClick(Sender: TObject);
    procedure o2iClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dzClick(Sender: TObject);
    procedure izClick(Sender: TObject);
    procedure uzClick(Sender: TObject);
    procedure grCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure grClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAvtob: TFAvtob;

implementation

uses unit85;

{$R *.dfm}

procedure TFAvtob.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action := caFree;
FAvtob := nil;
end;

procedure TFAvtob.o1dClick(Sender: TObject);
begin
if od.Execute then p1d.text:=extractfilename(od.FileName);
end;

procedure TFAvtob.o1iClick(Sender: TObject);
begin
if od.Execute then p1i.text:=extractfilename(od.FileName);
end;

procedure TFAvtob.o2dClick(Sender: TObject);
begin
if od.Execute then p2d.text:=extractfilename(od.FileName);
end;

procedure TFAvtob.o2iClick(Sender: TObject);
begin
if od.Execute then p2i.text:=extractfilename(od.FileName);
end;

procedure TFAvtob.FormCreate(Sender: TObject);
var i : integer;
begin
od.InitialDir:=ExtractFilePath(application.exename)+'maps\';

dm.VSop.first;

for i:=1 to dm.VSop.recordcount do
begin

if dm.VSop.fieldbyname('tip').asstring='водитель' then
begin
v1.Properties.Items.add(dm.VSop.fieldbyname('fio').asstring);
v2.Properties.Items.add(dm.VSop.fieldbyname('fio').asstring);
v1i.Properties.Items.add(dm.VSop.fieldbyname('fio').asstring);
v2i.Properties.Items.add(dm.VSop.fieldbyname('fio').asstring);
end;

dm.VSop.next;
end;

ce.Properties.Items.Clear;
ci.Properties.Items.Clear;

ssql:='select distinct graf from periods';
opensql(dm.q1,ssql);

if dm.q1.recordcount=0 then exit;

for i:=1 to dm.q1.recordcount do
begin
ce.Properties.Items.Add(dm.q1.fieldbyname('graf').AsString);
ci.Properties.Items.Add(dm.q1.fieldbyname('graf').AsString);
dm.q1.next;
end;

end;

procedure TFAvtob.dzClick(Sender: TObject);
begin

if nd.Text='' then exit;

///////////////////////////////////////////////
ssql:='select count(*) from avt';
opensql(dm.q1,ssql);

if dm.q1.fields[0].asinteger>=2 then
begin
sm('Извините, демонстрационное ограничение.');
exit;
end;
///////////////////////////////////////////////

ssql:='select id from avt where nomer='+quotedstr(nd.Text);
opensql(dm.q1,ssql);

if dm.q1.RecordCount<>0 then
begin
sm('Автобус с таким номером уже введен.');
exit;
end;

ssql:='insert into avt (marka,nomer,hoz,kont,et,pl1,pl2,vod1,vod2,c) values ('+
quotedstr(md.Text)+','+quotedstr(nd.Text)+','+quotedstr(hd.Text)+','+quotedstr(kd.Text)
+','+quotedstr(ed.Text)+','+quotedstr(p1d.Text)+','+quotedstr(p2d.Text)+','+
quotedstr(vodsop_id(v1.text))+','+quotedstr(vodsop_id(v2.text))+','+quotedstr(ci.text)+')';
ExecuteSQL(dm.q1,ssql);

dm.avt.close;
dm.avt.open;

ssql:='select MAX(id) from avt';
opensql(dm.q1,ssql);

dm.avt.Locate('id', dm.q1.fields[0].asinteger, []);
end;

procedure TFAvtob.izClick(Sender: TObject);
var tv: string;
begin

if ni.Text='' then exit;

tv:=dm.avt.FieldByName('id').asstring;

ssql:='update avt set marka='+quotedstr(mi.Text)+',nomer='+quotedstr(ni.Text)+',hoz='+
quotedstr(hi.Text)+',kont='+quotedstr(ki.Text)+',et='+quotedstr(ei.Text)+',pl1='+
quotedstr(p1i.Text)+',pl2='+quotedstr(p2i.Text)+',vod1='+quotedstr(vodsop_id(v1i.text))+
',vod2='+quotedstr(vodsop_id(v2i.text))+',c='+quotedstr(ce.text)+' where id='+tv;
ExecuteSQL(dm.q1,ssql);

dm.avt.close;
dm.avt.open;

dm.avt.Locate('id', tv, []);

end;

procedure TFAvtob.uzClick(Sender: TObject);
begin

// проверок никаких!!!

ssql:='delete from avt where id='+dm.avt.fieldbyname('id').asstring;
ExecuteSQL(dm.q1,ssql);

dm.avt.close;
dm.avt.open;

end;

procedure TFAvtob.grCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
  ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
  ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
  var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
  var ADone: Boolean);
begin
 if not ANode.Focused then
  if odd(ANode.Index) then AColor:=clWhite
                      else AColor:=$00FEE9D6;
end;

procedure TFAvtob.grClick(Sender: TObject);
begin

if dm.avt.recordcount<>0 then
begin
mi.Text:=dm.avt.fieldbyname('marka').asstring;
ni.Text:=dm.avt.fieldbyname('nomer').asstring;
hi.Text:=dm.avt.fieldbyname('hoz').asstring;
ki.Text:=dm.avt.fieldbyname('kont').asstring;
ei.Text:=dm.avt.fieldbyname('et').asstring;
p1i.Text:=dm.avt.fieldbyname('pl1').asstring;
p2i.Text:=dm.avt.fieldbyname('pl2').asstring;
v1i.Text:=dm.avt.fieldbyname('vod_n1').asstring;
v2i.Text:=dm.avt.fieldbyname('vod_n2').asstring;
ce.Text:=dm.avt.fieldbyname('c').asstring;
end;

end;

end.
