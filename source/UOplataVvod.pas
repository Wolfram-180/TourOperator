unit UOplataVvod;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxLookAndFeelPainters, cxMaskEdit, cxDropDownEdit,
  cxCurrencyEdit, cxControls, cxContainer, cxEdit, cxTextEdit, StdCtrls,
  cxButtons;

type
  TFOplataVvod = class(TForm)
    Label1: TLabel;
    lus: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    cxButton1: TcxButton;
    Label6: TLabel;
    lnz: TLabel;
    cb_po: TcxComboBox;
    ce_kopl: TcxTextEdit;
    te_opl: TcxTextEdit;
    ltip: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton1Click(Sender: TObject);
    procedure te_oplKeyPress(Sender: TObject; var Key: Char);
    procedure ce_koplKeyPress(Sender: TObject; var Key: Char);
    procedure te_oplPropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FOplataVvod: TFOplataVvod;

implementation

uses unit85, Unit12;

{$R *.dfm}

procedure TFOplataVvod.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := caFree;
FOplataVvod := nil;
end;

procedure TFOplataVvod.cxButton1Click(Sender: TObject);
begin
ce_kopl.text:=zap(ce_kopl.text);
te_opl.text:=zap(te_opl.text);

ssql:='update clients set stoim=CAST('+quotedstr(ce_kopl.Text)+' as money),oplacheno=CAST('+
quotedstr(te_opl.Text)+' as money),oplata='+quotedstr(cb_po.text)+',oper='+quotedstr(lus.caption)+
'  where nz='+lnz.caption+' and tip=1';
executesql(dm.q1,ssql);

sm('Изменения внесены.');

if ltip.caption='авт' then fzaiavki.cb2.properties.onchange(sender);
if ltip.caption='блок' then fzaiavki.cb4.properties.onchange(sender);
if ltip.caption='нест' then fzaiavki.cb9.properties.onchange(sender);

end;

procedure TFOplataVvod.te_oplKeyPress(Sender: TObject; var Key: Char);
begin
if (not (key in ['0'..'9','.'])) and (key<>#8) then
begin
key:=#0;
end;
end;

procedure TFOplataVvod.ce_koplKeyPress(Sender: TObject; var Key: Char);
begin
if (not (key in ['0'..'9','.'])) and (key<>#8) then
begin
key:=#0;
end;
end;

procedure TFOplataVvod.te_oplPropertiesChange(Sender: TObject);
begin
if zap(te_opl.text)=zap(ce_kopl.text) then cb_po.text:='да' else cb_po.text:='нет';
end;

end.
