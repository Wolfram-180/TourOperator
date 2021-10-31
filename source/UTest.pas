unit UTest;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxLookAndFeelPainters, StdCtrls, cxButtons, cxControls,
  cxContainer, cxEdit, cxTextEdit, Unit85, DB, ADODB, Grids, DBGrids,
  cxMemo, cxPC;

type
  TFTest = class(TForm)
    b: TcxButton;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    q1: TADOQuery;
    pc: TcxPageControl;
    ts1: TcxTabSheet;
    m1: TcxMemo;
    ts2: TcxTabSheet;
    m2: TcxMemo;
    ts3: TcxTabSheet;
    ts4: TcxTabSheet;
    m3: TcxMemo;
    m4: TcxMemo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bClick(Sender: TObject);
    procedure b2Click(Sender: TObject);
    procedure b3Click(Sender: TObject);
    procedure b4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FTest: TFTest;

implementation

{$R *.dfm}

procedure TFTest.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action := caFree;
FTest:= nil;
end;

procedure TFTest.bClick(Sender: TObject);
begin

if pc.ActivePage=ts1 then ssql:=m1.Lines.Text;
if pc.ActivePage=ts2 then ssql:=m2.Lines.Text;
if pc.ActivePage=ts3 then ssql:=m3.Lines.Text;
if pc.ActivePage=ts4 then ssql:=m4.Lines.Text;

opensql(q1,ssql);

//sm(dm.q1.fields[0].asstring);

{ssql:='select tip,p,id,id_gost,id_ag,per,nz,f from clients where
' and tip=1 and annul<>'+quotedstr('да')+
' and dt_begin>='+quotedstr(formatdatetime(dtf,strtodate(dnopper)))+' and dt_begin<='+quotedstr(formatdatetime(dtf,strtodate(dkopper)))+' order by per';
opensql(q3,ssql);  }

{ssql:='select count(*) from clients where tip=1 and annul<>'+quotedstr('да')+
' and dt_begin>='+quotedstr(formatdatetime(dtf,strtodate(dnopper)))+
' and dt_begin<='+quotedstr(formatdatetime(dtf,strtodate(dkopper)))+' order by per';
opensql(dm.q1,ssql);  }

{ssql:='select id from clients where tip=1 and annul<>'+quotedstr('да')+
' and dt_begin>='+quotedstr(formatdatetime(dtf,strtodate(dnopper)))+
' and dt_begin<='+quotedstr(formatdatetime(dtf,strtodate(dkopper)))+' order by per';
opensql(dm.q1,ssql); }

{'select count(*) from clients where (p in (select id from clients where (p in'+
'(select a.id from clients a left join gostinici b on a.id_gost=b.codeid where '+
'a.tip=1 and a.annul<>'+quotedstr('да')+' and b.exk<>'+quotedstr('да')+' and a.a_b='+
quotedstr('Ѕлок')+' and annul<>'+quotedstr('да')+
' and data_zai>='+quotedstr(formatdatetime(dtf,strtodate(dnopper)))+' and data_zai<='+
quotedstr(formatdatetime(dtf,strtodate(dkopper)))+' and id_ag in (select codeid from agentstva))))) and annul<>'
+quotedstr('да');}

end;

procedure TFTest.b2Click(Sender: TObject);
begin
ssql:=m2.Lines.Text;
opensql(q1,ssql);
end;

procedure TFTest.b3Click(Sender: TObject);
begin
ssql:=m3.Lines.Text;
opensql(q1,ssql);
end;

procedure TFTest.b4Click(Sender: TObject);
begin
ssql:=m4.Lines.Text;
opensql(q1,ssql);
end;

end.
