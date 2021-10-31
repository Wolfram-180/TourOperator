unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxControls, cxContainer, cxEdit, cxProgressBar,
  cxLookAndFeelPainters, StdCtrls, cxButtons;

type
  TFProgress = class(TForm)
    pb1: TcxProgressBar;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FProgress: TFProgress;

implementation

{$R *.dfm}

procedure TFProgress.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action := caFree;
FProgress := nil;
end;

procedure TFProgress.FormCreate(Sender: TObject);
begin
pb1.Position:=0;
end;

end.
