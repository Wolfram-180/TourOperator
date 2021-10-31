unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxLookAndFeelPainters, dxExEdtr, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, DB, ADODB, StdCtrls, cxButtons, cxControls, cxContainer,
  cxEdit, cxTextEdit, dxDBTLCl, dxGrClms;

type
  TFClSearch = class(TForm)
    Label1: TLabel;
    te1: TcxTextEdit;
    b1: TcxButton;
    ds1: TDataSource;
    q1: TADOQuery;
    q1id: TAutoIncField;
    q1f: TWideStringField;
    q1i: TWideStringField;
    q1o: TWideStringField;
    q1nd: TWideStringField;
    q1pol: TWideStringField;
    q1adres: TWideStringField;
    q1tel: TWideStringField;
    q1pods: TWideStringField;
    q1per: TWideStringField;
    q1vikup: TWideStringField;
    q1gar_pis: TWideStringField;
    q1bezmesta: TWideStringField;
    q1proezd: TWideStringField;
    q1tip_proezda: TWideStringField;
    q1nz: TIntegerField;
    q1n: TIntegerField;
    q1p: TIntegerField;
    q1tip: TIntegerField;
    q1id_ag: TIntegerField;
    q1id_gost: TIntegerField;
    q1id_tr: TIntegerField;
    q1id_pit: TIntegerField;
    q1id_n: TIntegerField;
    q1id_m: TIntegerField;
    q1id_kat: TIntegerField;
    q1id_po: TIntegerField;
    q1id_pp: TIntegerField;
    q1id_pv: TIntegerField;
    q1id_pers: TIntegerField;
    q1dr: TDateTimeField;
    q1data_zai: TDateTimeField;
    q1data_opl: TDateTimeField;
    q1agentcol: TStringField;
    q1trcol: TStringField;
    q1pitcol: TStringField;
    q1katcol: TStringField;
    q1pocol: TStringField;
    q1ppcol: TStringField;
    q1pvcol: TStringField;
    q1a_b: TWideStringField;
    g1: TdxDBGrid;
    l1: TLabel;
    q1annul: TWideStringField;
    q1oper: TWideStringField;
    q1oplata: TWideStringField;
    q1podtv: TWideStringField;
    q1bez_pr: TWideStringField;
    q1n_vauch: TIntegerField;
    q1data_podtv: TDateTimeField;
    q1data_vauch: TDateTimeField;
    q1stoim: TBCDField;
    q1oplacheno: TBCDField;
    Label3: TLabel;
    te2: TcxTextEdit;
    b2: TcxButton;
    q1spo: TWideStringField;
    q1new_cl: TIntegerField;
    q1sebest: TBCDField;
    g1id: TdxDBGridMaskColumn;
    g1f: TdxDBGridColumn;
    g1i: TdxDBGridColumn;
    g1o: TdxDBGridColumn;
    g1nd: TdxDBGridColumn;
    g1pol: TdxDBGridColumn;
    g1adres: TdxDBGridColumn;
    g1tel: TdxDBGridColumn;
    g1pods: TdxDBGridColumn;
    g1per: TdxDBGridColumn;
    g1vikup: TdxDBGridColumn;
    g1gar_pis: TdxDBGridColumn;
    g1bezmesta: TdxDBGridColumn;
    g1proezd: TdxDBGridColumn;
    g1tip_proezda: TdxDBGridColumn;
    g1nz: TdxDBGridMaskColumn;
    g1n: TdxDBGridMaskColumn;
    g1p: TdxDBGridMaskColumn;
    g1tip: TdxDBGridMaskColumn;
    g1id_ag: TdxDBGridMaskColumn;
    g1id_gost: TdxDBGridMaskColumn;
    g1id_tr: TdxDBGridMaskColumn;
    g1id_pit: TdxDBGridMaskColumn;
    g1id_n: TdxDBGridMaskColumn;
    g1id_m: TdxDBGridMaskColumn;
    g1id_kat: TdxDBGridMaskColumn;
    g1id_po: TdxDBGridMaskColumn;
    g1id_pp: TdxDBGridMaskColumn;
    g1id_pv: TdxDBGridMaskColumn;
    g1id_pers: TdxDBGridMaskColumn;
    g1dr: TdxDBGridDateColumn;
    g1data_zai: TdxDBGridDateColumn;
    g1data_opl: TdxDBGridDateColumn;
    g1agentcol: TdxDBGridLookupColumn;
    g1trcol: TdxDBGridLookupColumn;
    g1pitcol: TdxDBGridLookupColumn;
    g1katcol: TdxDBGridLookupColumn;
    g1pocol: TdxDBGridLookupColumn;
    g1ppcol: TdxDBGridLookupColumn;
    g1pvcol: TdxDBGridLookupColumn;
    g1a_b: TdxDBGridColumn;
    g1annul: TdxDBGridColumn;
    g1oper: TdxDBGridColumn;
    g1oplata: TdxDBGridColumn;
    g1podtv: TdxDBGridColumn;
    g1bez_pr: TdxDBGridColumn;
    g1n_vauch: TdxDBGridMaskColumn;
    g1data_podtv: TdxDBGridDateColumn;
    g1data_vauch: TdxDBGridDateColumn;
    g1stoim: TdxDBGridCurrencyColumn;
    g1oplacheno: TdxDBGridCurrencyColumn;
    g1spo: TdxDBGridColumn;
    g1new_cl: TdxDBGridMaskColumn;
    g1sebest: TdxDBGridCurrencyColumn;
    l2: TLabel;
    cxButton1: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure b1Click(Sender: TObject);
    procedure g1Click(Sender: TObject);
    procedure b2Click(Sender: TObject);
    procedure g1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FClSearch: TFClSearch;

implementation

uses Unit85,unit11;

{$R *.dfm}

procedure TFClSearch.FormClose(Sender: TObject; var Action: TCloseAction);
begin

Action := caFree;
Fclsearch := nil;

end;

procedure TFClSearch.b1Click(Sender: TObject);
begin

if te1.text='' then exit;

ssql:='select * from clients where f like '+quotedstr('%'+te1.text+'%');
opensql(q1,ssql);

end;

procedure TFClSearch.g1Click(Sender: TObject);
begin

if q1.recordcount=0 then exit;

if q1.fieldbyname('p').asstring<>'-1' then
ssql:='select * from clients where id=(select p from clients where id='+q1.fieldbyname('p').asstring+')'
else
ssql:='select * from clients where id='+q1.fieldbyname('id').asstring;
opensql(dm.q2,ssql);

if dm.q2.recordcount<>0 then
begin
l1.caption:='Объект размещения: '+gostin(dm.q2.fieldbyname('id_gost').asstring)+' Период: '+dm.q2.fieldbyname('per').asstring;
l2.caption:='№ заявки: '+dm.q2.fieldbyname('nz').asstring+' Агентство: '+agent(dm.q2.fieldbyname('id_ag').asstring);
end;

end;

procedure TFClSearch.b2Click(Sender: TObject);
begin

if te2.text='' then exit;

ssql:='select * from clients where nz='+te2.text;
opensql(q1,ssql);

end;

procedure TFClSearch.g1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
g1.OnClick(sender);
end;

procedure TFClSearch.cxButton1Click(Sender: TObject);
begin

if q1.recordcount=0 then exit;

//ssql:='update bloki set nz=0,id_pers=0 where m_id='+q1.fieldbyname('id_m').asstring+' and p='+n_id;
//executesql(dm.q1,ssql);

ssql:='update clients set annul='+quotedstr('да')+' where id='+q1.fieldbyname('id').asstring;
executesql(dm.q1,ssql);

sm(q1.fieldbyname('f').asstring+' '+q1.fieldbyname('i').asstring+
' '+q1.fieldbyname('o').asstring+' аннулирован.');

b1.OnClick(sender);

end;

end.
