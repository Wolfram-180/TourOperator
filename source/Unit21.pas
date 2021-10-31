unit Unit21;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxExEdtr, cxLookAndFeelPainters, cxControls, cxContainer,
  cxEdit, cxTextEdit, cxMaskEdit, StdCtrls, cxButtons, DB, ADODB, dxCntner,
  dxTL, dxDBCtrl, dxDBGrid, cxSpinEdit, cxDropDownEdit, cxCalendar,
  dxDBTLCl, dxGrClms;

type
  TFDati = class(TForm)
    dxDBGrid1: TdxDBGrid;
    ds1: TDataSource;
    b1: TcxButton;
    b2: TcxButton;
    b3: TcxButton;
    Label5: TLabel;
    de1: TcxDateEdit;
    Label1: TLabel;
    de2: TcxDateEdit;
    se1: TcxSpinEdit;
    Label2: TLabel;
    de3: TcxDateEdit;
    de4: TcxDateEdit;
    se2: TcxSpinEdit;
    dxDBGrid1id: TdxDBGridMaskColumn;
    dxDBGrid1d1: TdxDBGridDateColumn;
    dxDBGrid1d2: TdxDBGridDateColumn;
    dxDBGrid1graf: TdxDBGridMaskColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure b3Click(Sender: TObject);
    procedure b2Click(Sender: TObject);
    procedure b1Click(Sender: TObject);
    procedure dxDBGrid1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDati: TFDati;

implementation

uses Unit85,unit11;

{$R *.dfm}

procedure TFDati.FormClose(Sender: TObject; var Action: TCloseAction);
begin

Action := caFree;
FDati := nil;

end;

procedure TFDati.b3Click(Sender: TObject);
begin

if (de3.text='') or (de4.text='') then exit;

ssql:='delete from periods where id='+dm.periods.fieldbyname('id').asstring;
ExecuteSQL(dm.q1,ssql);

dm.periods.close;
dm.periods.open;

de1.text:='';
de2.text:='';
de3.text:='';
de4.text:='';

end;

procedure TFDati.b2Click(Sender: TObject);
begin

if (de3.text='') or (de4.text='') or (se2.text='') then exit;

ssql:='update periods set d1='+quotedstr(formatdatetime(dtf,de3.date))+', d2='+quotedstr(formatdatetime(dtf,de4.date))+', graf='+
se2.text+' where id='+dm.periods.fieldbyname('id').asstring;
ExecuteSQL(dm.q1,ssql);

dm.periods.close;
dm.periods.open;

end;

procedure TFDati.b1Click(Sender: TObject);
begin

if (de1.text='') or (de2.text='') or (se1.text='') then exit;

ssql:='select id from periods where d1='+quotedstr(formatdatetime(dtf,de1.date))+' and d2='+
quotedstr(formatdatetime(dtf,de2.date))+' and graf='+se1.text;
opensql(dm.q1,ssql);

if dm.q1.recordcount<>0 then
begin
showmessage('Этот период уже есть.');
exit;
end;

ssql:='insert into periods (d1,d2,graf) values ('+quotedstr(formatdatetime(dtf,de1.date))+','+
quotedstr(formatdatetime(dtf,de2.date))+','+se1.text+')';
ExecuteSQL(dm.q1,ssql);

dm.periods.close;
dm.periods.open;

ssql:='select max(id) from periods';
opensql(dm.q1,ssql);

dm.periods.Locate('id', dm.q1.fields[0].asinteger, []);

end;

procedure TFDati.dxDBGrid1Click(Sender: TObject);
begin

if dm.periods.recordcount=0 then exit;

de3.text:=dm.periods.fieldbyname('d1').asstring;
de4.text:=dm.periods.fieldbyname('d2').asstring;

se2.text:=dm.periods.fieldbyname('graf').asstring;

end;

procedure TFDati.FormCreate(Sender: TObject);
begin
de1.date:=date;
de2.date:=date+1;
end;

end.
