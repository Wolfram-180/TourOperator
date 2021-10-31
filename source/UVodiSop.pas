unit UVodiSop;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxExEdtr, cxLookAndFeelPainters, cxDBEdit, DB, StdCtrls,
  cxButtons, cxControls, cxContainer, cxEdit, cxTextEdit, dxDBGrid, dxTL,
  dxDBCtrl, dxCntner, cxMaskEdit, cxDropDownEdit, dxDBTLCl, dxGrClms,
  cxCalendar;

type
  TFVodiSop = class(TForm)
    Label1: TLabel;
    dxDBGrid1: TdxDBGrid;
    e1: TcxTextEdit;
    e2: TcxTextEdit;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    ds1: TDataSource;
    dxDBGrid1Fio: TdxDBGridColumn;
    dxDBGrid1Ndok: TdxDBGridColumn;
    dxDBGrid1Adres: TdxDBGridColumn;
    dxDBGrid1Dr: TdxDBGridDateColumn;
    dxDBGrid1Tel: TdxDBGridColumn;
    dxDBGrid1id: TdxDBGridMaskColumn;
    dxDBGrid1tip: TdxDBGridColumn;
    e3: TcxTextEdit;
    e4: TcxTextEdit;
    cb1: TcxComboBox;
    cb2: TcxComboBox;
    d1: TcxDateEdit;
    d2: TcxDateEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    e5: TcxTextEdit;
    e6: TcxTextEdit;
    Label5: TLabel;
    e7: TcxTextEdit;
    e8: TcxTextEdit;
    Label6: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxDBGrid1CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure dxDBGrid1Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FVodiSop: TFVodiSop;

implementation

uses unit85;

{$R *.dfm}

procedure TFVodiSop.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
FVodiSop:=nil;
end;

procedure TFVodiSop.dxDBGrid1CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
 if not ANode.Focused then
  if odd(ANode.Index) then AColor:=clWhite
                      else AColor:=$00F8E6E4;
end;

procedure TFVodiSop.dxDBGrid1Click(Sender: TObject);
begin
e2.Text:=dm.vsop.fieldbyname('fio').asstring;
cb2.Text:=dm.vsop.fieldbyname('tip').asstring;
e4.Text:=dm.vsop.fieldbyname('ndok').asstring;
d2.Text:=dm.vsop.fieldbyname('dr').asstring;
e6.Text:=dm.vsop.fieldbyname('adres').asstring;
e8.Text:=dm.vsop.fieldbyname('tel').asstring;
end;

procedure TFVodiSop.cxButton1Click(Sender: TObject);
begin

if e1.Text='' then exit;

ssql:='select id from vodsop where fio='+quotedstr(e1.Text);
opensql(dm.q1,ssql);

if dm.q1.RecordCount<>0 then
begin
sm('Такой водитель уже есть.');
exit;
end;

ssql:='insert into vodsop (fio,ndok,adres,dr,tel,tip) values ('+
quotedstr(e1.Text)+','+quotedstr(e3.Text)+','+quotedstr(e5.Text)+','+
quotedstr(d1.Text)+','+quotedstr(e7.Text)+','+quotedstr(cb1.Text)+')';
executesql(dm.q1,ssql);

dm.vsop.close;
dm.vsop.open;

ssql:='select MAX(id) as cod from vodsop';
opensql(dm.q1,ssql);

dm.vsop.Locate('id', dm.q1.fieldbyname('cod').asinteger, []);

end;

procedure TFVodiSop.cxButton3Click(Sender: TObject);
begin

if dm.vsop.recordcount=0 then exit;

If Application.MessageBox(pchar('Вы уверены, что хотите удалить '+
dm.vsop.fieldbyname('fio').asstring+' ?'), pchar('Удаление водителя \ сопровождающего'),
 MB_YESNO) = idYES Then
begin

ssql:='delete from vodsop where id='+dm.vsop.fieldbyname('id').asstring;
executesql(dm.q1,ssql);

dm.vsop.close;
dm.vsop.open;

e2.Clear;
cb2.text:='';
e6.Clear;
e8.Clear;
e4.Clear;

end;

end;

procedure TFVodiSop.cxButton2Click(Sender: TObject);
var tv : integer;
begin

if (dm.vsop.recordcount=0) or (e2.Text='') then exit;

tv:=dm.vsop.FieldByName('id').asinteger;

ssql:='update vodsop set fio='+quotedstr(e2.Text)+',ndok='+quotedstr(e4.Text)+
',adres='+quotedstr(e6.Text)+',dr='+quotedstr(d2.Text)+',tel='+quotedstr(e8.Text)+
',tip='+quotedstr(cb2.Text)+' where id='+dm.vsop.FieldByName('id').asstring;
executesql(dm.q1,ssql);

dm.vsop.close;
dm.vsop.open;

dm.vsop.Locate('id', tv, []);

end;

end.
