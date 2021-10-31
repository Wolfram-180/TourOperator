unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs;

type
  TFDati_Nestand = class(TForm)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
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

end.
