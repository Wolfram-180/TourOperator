unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, StdCtrls, cxButtons, dxDBTLCl,
  dxGrClms, dxTL, dxDBCtrl, dxDBGrid, dxCntner, unit85, dxExEdtr,
  cxLookAndFeelPainters;

type
  TFDati_Nestand = class(TForm)
    Label5: TLabel;
    Label2: TLabel;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1id: TdxDBGridMaskColumn;
    dxDBGrid1d1: TdxDBGridDateColumn;
    dxDBGrid1graf: TdxDBGridMaskColumn;
    b1: TcxButton;
    b2: TcxButton;
    b3: TcxButton;
    de1: TcxDateEdit;
    de3: TcxDateEdit;
    ds1: TDataSource;
    cb1: TcxComboBox;
    cb2: TcxComboBox;
    Label1: TLabel;
    cb3: TcxComboBox;
    cb4: TcxComboBox;
    dxDBGrid1Column4: TdxDBGridColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure b1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure b2Click(Sender: TObject);
    procedure b3Click(Sender: TObject);
    procedure dxDBGrid1Click(Sender: TObject);
    procedure cb1PropertiesChange(Sender: TObject);
    procedure cb2PropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDati_Nestand: TFDati_Nestand;

implementation

{$R *.dfm}

procedure TFDati_Nestand.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := caFree;
FDati_Nestand := nil;
end;

procedure TFDati_Nestand.b1Click(Sender: TObject);
begin

if (de1.text='') or (cb1.text='') then exit;

ssql:='select count(*) from nest_d where d1='+quotedstr(formatdatetime(dtf,de1.date))+
' and tip='+quotedstr(cb1.text)+
' and v_v='+quotedstr(cb3.text);
opensql(dm.q1,ssql);

if dm.q1.fields[0].Value<>0 then
begin
showmessage('Эта дата уже введена.');
exit;
end;

ssql:='insert into nest_d (d1,tip,v_v) values ('+
quotedstr(formatdatetime(dtf,de1.date))+','+quotedstr(cb1.text)+','+
quotedstr(cb3.text)+')';
ExecuteSQL(dm.q1,ssql);

dm.nest_d.close;
dm.nest_d.open;

ssql:='select max(id) from nest_d';
opensql(dm.q1,ssql);

dm.nest_d.Locate('id', dm.q1.fields[0].asinteger, []);

end;

procedure TFDati_Nestand.FormCreate(Sender: TObject);
begin
de1.date:=date;
end;

procedure TFDati_Nestand.b2Click(Sender: TObject);
begin

if (de3.text='') or (cb2.text='') then exit;

ssql:='select count(*) from nest_d where d1='+quotedstr(formatdatetime(dtf,de3.date))+
' and tip='+quotedstr(cb2.text)+
' and v_v='+quotedstr(cb4.text);
opensql(dm.q1,ssql);

if dm.q1.fields[0].Value<>0 then
begin
showmessage('Эта дата уже введена.');
exit;
end;

ssql:='update nest_d set d1='+quotedstr(formatdatetime(dtf,de3.date))+', tip='+
quotedstr(cb2.text)+', v_v='+
quotedstr(cb4.text)+' where id='+dm.nest_d.fieldbyname('id').asstring;
ExecuteSQL(dm.q1,ssql);

dm.nest_d.close;
dm.nest_d.open;

end;

procedure TFDati_Nestand.b3Click(Sender: TObject);
begin

if (de3.text='') then exit;

ssql:='delete from nest_d where id='+dm.nest_d.fieldbyname('id').asstring;
ExecuteSQL(dm.q1,ssql);

dm.nest_d.close;
dm.nest_d.open;

de1.text:='';
de3.text:='';
cb1.text:='';
cb2.text:='';

end;

procedure TFDati_Nestand.dxDBGrid1Click(Sender: TObject);
begin

if dm.nest_d.recordcount=0 then exit;

de3.text:=dm.nest_d.fieldbyname('d1').asstring;
cb2.text:=dm.nest_d.fieldbyname('tip').asstring;
cb4.text:=dm.nest_d.fieldbyname('v_v').asstring;

end;

procedure TFDati_Nestand.cb1PropertiesChange(Sender: TObject);
begin
if cb1.text='Б' then cb3.text:='';
end;

procedure TFDati_Nestand.cb2PropertiesChange(Sender: TObject);
begin
if cb2.text='Б' then cb4.text:='';
end;

end.
