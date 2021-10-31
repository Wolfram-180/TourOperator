unit Unit15;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, Db, DBTables, StdCtrls, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, Menus, dxDBTLCl, dxGrClms, dxExEdtr, ADODB,
  cxLookAndFeelPainters, cxButtons;

type
  TFFirmMain = class(TForm)
    DataSource1: TDataSource;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1Column1: TdxDBGridColumn;
    dxDBGrid1Column2: TdxDBGridColumn;
    dxDBGrid1Column4: TdxDBGridColumn;
    dxDBGrid1Column5: TdxDBGridColumn;
    dxDBGrid1Column8: TdxDBGridColumn;
    dxDBGrid1r: TdxDBGridLookupColumn;
    dxDBGrid1pr: TdxDBGridLookupColumn;
    dxDBGrid1Column14: TdxDBGridColumn;
    adr_fak: TdxDBGridColumn;
    pokup: TdxDBGridColumn;
    fax: TdxDBGridColumn;
    email: TdxDBGridColumn;
    site: TdxDBGridColumn;
    ColumnOCH: TdxDBGridColumn;
    Button1: TcxButton;
    Button2: TcxButton;
    Button3: TcxButton;
    ColumnN: TdxDBGridCalcColumn;
    ColumnCod: TdxDBGridColumn;
    ColumnOp: TdxDBGridColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxDBGrid1CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dxDBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FFirmMain: TFFirmMain;

implementation

uses Unit16, Unit17, unit85,unit11;

{$R *.DFM}

procedure tFFirmMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
FFirmMain:=nil;
end;

procedure TFFirmMain.dxDBGrid1CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
 if not ANode.Focused then
  if odd(ANode.Index) then AColor:=clWhite
                      else AColor:=$00F5C0FA;
end;

procedure TFFirmMain.Button1Click(Sender: TObject);
begin
if not assigned(FOrgDobav) then application.Createform(tFOrgDobav, FOrgDobav);
FOrgDobav.show;
end;

procedure TFFirmMain.Button2Click(Sender: TObject);
begin

ag_id:=dm.agentq.fieldbyname('codeid').asstring;

if not assigned(FOrgRed) then application.Createform(tFOrgRed, FOrgRed);
FOrgRed.show;

end;

procedure TFFirmMain.cxButton3Click(Sender: TObject);
begin

If Application.MessageBox('Удалить запись?', 'Удаление организации', MB_YESNO) = idYES Then

begin

ssql:='select count(*) from clients where id_ag='+
dm.agentq.fieldbyname('codeid').asstring;
OPENsql(dm.q1,ssql);

if dm.q1.fields[0].asinteger<>0 then
begin
sm('От этой фирмы есть заявки! Для удаления она не должна использоваться.');
exit;
end;

ssql:='delete from agentstva where codeid='+dm.agentq.fieldbyname('codeid').asstring;
executesql(dm.q1,ssql);

dm.agentq.close;
dm.agentq.open;

end;

end;

procedure TFFirmMain.FormActivate(Sender: TObject);
begin
dm.agentq.close;
dm.agentq.open;
end;

procedure TFFirmMain.dxDBGrid1DblClick(Sender: TObject);
begin
button2.onclick(sender);
end;

end.
