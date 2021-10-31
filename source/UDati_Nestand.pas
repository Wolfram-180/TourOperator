unit UDati_Nestand;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms;

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

uses unit11,unit85,Unit20, Unit2, Unit4, Unit5;

{$R *.dfm}

procedure TFDati_Nestand.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action := caFree;
FDati_Nestand := nil;
end;

end.
