unit Unit71;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OleCtrls, SHDocVw, HTTPApp, DBWeb, DBXpressWeb, Grids, DBGrids,
  DB, HTTPProd, DSProd, ADODB, dxExEdtr, dxDBTLCl, dxGrClms, dxDBGrid,
  dxTL, dxDBCtrl, dxCntner, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView,
  cxControls, cxGridCustomView, cxClasses, cxGridLevel, cxGrid;

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
