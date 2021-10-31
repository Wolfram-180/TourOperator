unit URegPodrNastr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxExEdtr, cxLookAndFeelPainters, StdCtrls, DB, ADODB, cxButtons,
  cxControls, cxContainer, cxEdit, cxTextEdit, dxTL, dxDBCtrl, dxDBGrid,
  dxCntner, cxListBox;

type
  TFRegPodregNastr = class(TForm)
    reg_grid: TdxDBGrid;
    reg_gridCodeid: TdxDBGridMaskColumn;
    reg_gridReg: TdxDBGridMaskColumn;
    e1: TcxTextEdit;
    e0: TcxTextEdit;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    DataSource1: TDataSource;
    Label1: TLabel;
    podreg_grid: TdxDBGrid;
    dxDBGrid1Podreg: TdxDBGridMaskColumn;
    e3: TcxTextEdit;
    e2: TcxTextEdit;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    cxButton6: TcxButton;
    DataSource2: TDataSource;
    Label2: TLabel;
    lb2: TcxListBox;
    cxButton8: TcxButton;
    cxButton7: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure podreg_gridClick(Sender: TObject);
    procedure reg_gridClick(Sender: TObject);
    procedure reg_gridCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure podreg_gridCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
    procedure cxButton8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRegPodregNastr: TFRegPodregNastr;

implementation

uses Unit85;

{$R *.dfm}

procedure TFRegPodregNastr.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
FRegPodregNastr:=nil;
end;

procedure TFRegPodregNastr.podreg_gridClick(Sender: TObject);
begin
e3.Text:=dm.podregq.fieldbyname('podreg').asstring;
end;

procedure TFRegPodregNastr.reg_gridClick(Sender: TObject);
var i: integer;
begin
e1.Text:=dm.regq.fieldbyname('reg').asstring;

lb2.Clear;

ssql:='select b.podreg, a.cr from rpr a left join podreg b on a.cpr = b.codeid where a.cr='+dm.regq.fieldbyname('codeid').asstring;
opensql(dm.q1,ssql);

{if q1.recordcount<>0 then
begin }

  for i:=1 to dm.q1.recordcount do
  begin
  lb2.Items.Add(dm.q1.fieldbyname('podreg').asstring);
  dm.q1.Next;
  end;

//end;

end;

procedure TFRegPodregNastr.reg_gridCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
 if not ANode.Focused then
  if odd(ANode.Index) then AColor:=clWhite
                      else AColor:=$00B7F9DA;
end;

procedure TFRegPodregNastr.podreg_gridCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
 if not ANode.Focused then
  if odd(ANode.Index) then AColor:=clWhite
                      else AColor:=$00DBE4F2;
end;

procedure TFRegPodregNastr.cxButton4Click(Sender: TObject);
begin

if e2.Text='' then exit;

if podregion_id(e2.Text)<>'0' then
begin
sm('“акой подрегион уже есть.');
exit;
end;

ssql:='insert into podreg (podreg, podm) values ('+quotedstr(e2.Text)+','+quotedstr('нет')+')';
executesql(dm.q1,ssql);

dm.podregq.close;
dm.podregq.open;

ssql:='select MAX(codeid) from podreg';
opensql(dm.q1,ssql);

dm.podregq.Locate('codeid',dm.q1.fields[0].asinteger , []);

end;

procedure TFRegPodregNastr.cxButton1Click(Sender: TObject);
begin
if e0.Text='' then exit;

if region_id(e0.Text)<>'0' then
begin
sm('“акой регион уже есть.');
exit;
end;

ssql:='insert into reg (reg) values ('+quotedstr(e0.Text)+')';
executesql(dm.q1,ssql);

dm.regq.close;
dm.regq.open;

ssql:='select MAX(codeid) as codeid from reg';
opensql(dm.q1,ssql);

dm.regq.Locate('codeid', dm.q1.fields[0].asinteger, []);

end;

procedure TFRegPodregNastr.cxButton5Click(Sender: TObject);
begin
if e3.Text='' then exit;

lid:=dm.podregq.FieldByName('codeid').value;

ssql:='update podreg set podreg='+quotedstr(e3.Text)+',podm='+quotedstr('нет')+' where codeid='+inttostr(lid);
executesql(dm.q1,ssql);

dm.podregq.close;
dm.podregq.open;

dm.podregq.Locate('codeid', lid, []);
end;

procedure TFRegPodregNastr.cxButton2Click(Sender: TObject);
begin
if e1.Text='' then exit;

lid:=dm.regq.FieldByName('codeid').value;

ssql:='update reg set reg='+quotedstr(e1.Text)+' where codeid='+inttostr(lid);
executesql(dm.q1,ssql);

dm.regq.close;
dm.regq.open;

dm.regq.Locate('codeid', lid, []);
end;

procedure TFRegPodregNastr.cxButton6Click(Sender: TObject);
begin
lid:=dm.podregq.FieldByName('codeid').value;

ssql:='select count(*) from agentstva where podregion='+inttostr(lid);
opensql(dm.q1,ssql);

if dm.q1.fields[0].asinteger<>0 then
begin
sm('Ётот подрегион указан дл€ агентства! ƒл€ удалени€ он не должен использоватьс€.');
exit;
end;

ssql:='delete from podreg where codeid='+inttostr(lid);
executesql(dm.q1,ssql);

dm.podregq.close;
dm.podregq.open;

if dm.podregq.RecordCount=0 then exit;

end;

procedure TFRegPodregNastr.cxButton3Click(Sender: TObject);
begin

ssql:='select region from agentstva where region='+dm.regq.FieldByName('codeid').asstring;
opensql(dm.q1,ssql);

if dm.q1.RecordCount<>0 then
begin
sm('Ётот регион указан дл€ агентства! ƒл€ удалени€ он не должен использоватьс€.');
exit;
end;

ssql:='select cr from rpr where cr='+dm.regq.FieldByName('codeid').asstring;
opensql(dm.q1,ssql);

if dm.q1.RecordCount<>0 then
begin
sm('ƒл€ этого региона указаны подрегионы. ”далите соответстви€.');
exit;
end;

ssql:='delete from reg where codeid='+dm.regq.FieldByName('codeid').asstring;
executesql(dm.q1,ssql);

dm.regq.close;
dm.regq.open;

end;

procedure TFRegPodregNastr.cxButton7Click(Sender: TObject);
begin

if (e1.Text='') or (e3.Text='') then exit;

ssql:='select a.cr,b.reg from rpr a right join reg b on a.cr=b.codeid where cpr='+
dm.podregq.FieldByName('codeid').asstring;
opensql(dm.q1,ssql);

if dm.q1.fields[0].asinteger<>0 then
begin
sm('ѕодрегион уже используетс€ дл€ региона '+dm.q1.FieldByName('reg').asstring+'.');
exit;
end;

ssql:='insert into rpr (cr, cpr) values ('+dm.regq.FieldByName('codeid').asstring+','+
dm.podregq.FieldByName('codeid').asstring+')';
executesql(dm.q1,ssql);

reg_grid.OnClick(sender);

end;

procedure TFRegPodregNastr.cxButton8Click(Sender: TObject);
var i: integer;
    p: string;
begin

if e1.Text='' then exit;

for i:=0 to lb2.Count-1 do
begin
if lb2.Selected[i] then p:=lb2.Items[i];
end;

ssql:='delete from rpr where cpr='+podregion_id(p);
executesql(dm.q1,ssql);

reg_grid.OnClick(sender);

end;

end.
