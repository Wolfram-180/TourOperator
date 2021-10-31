program Operator;

{%ToDo 'Operator.todo'}

uses
  Forms,
  Unit11 in 'Unit11.pas' {FMainForm},
  Unit15 in 'Unit15.pas' {FFirmMain},
  Unit16 in 'Unit16.pas' {FOrgDobav},
  Unit17 in 'Unit17.pas' {FOrgRed},
  Unit19 in 'Unit19.pas' {FTransfer},
  Unit23 in 'Unit23.pas' {FGostinMain},
  Unit24 in 'Unit24.pas' {FGostDobav},
  Unit26 in 'Unit26.pas' {FGostRed},
  Unit33 in 'Unit33.pas' {FKatNom},
  Unit36 in 'Unit36.pas' {FPitanie},
  Unit60 in 'Unit60.pas' {FSettings},
  Unit76 in 'Unit76.pas' {FBlForming},
  Unit79 in 'Unit79.pas' {FUsers},
  Unit80 in 'Unit80.pas' {FLogin},
  Unit85 in 'Unit85.pas' {DM: TDataModule},
  Unit10 in 'Unit10.pas' {FKomf},
  Unit12 in 'Unit12.pas' {FZaiavki},
  Unit20 in 'Unit20.pas' {FZai_vvod},
  Unit21 in 'Unit21.pas' {FDati},
  Unit1 in 'Unit1.pas' {FClSearch},
  Unit2 in 'Unit2.pas' {FPodtver},
  Unit3 in 'Unit3.pas' {FStat},
  Unit4 in 'Unit4.pas' {FVauch},
  Unit5 in 'Unit5.pas' {FBlz_vvod},
  Unit6 in 'Unit6.pas' {FProgress},
  stoim_u in 'stoim_u.pas' {FStoim},
  Unit8 in 'Unit8.pas' {FBonus},
  Unit9 in 'Unit9.pas' {FDop},
  Unit7 in 'Unit7.pas' {FDati_Nestand},
  UNestForm in 'UNestForm.pas' {FNestForming},
  UNest_Vvod in 'UNest_Vvod.pas' {FNest_vvod},
  URegPodrNastr in 'URegPodrNastr.pas' {FRegPodregNastr},
  UOplataVvod in 'UOplataVvod.pas' {FOplataVvod},
  UVodiSop in 'UVodiSop.pas' {FVodiSop},
  UKarti in 'UKarti.pas' {FKarti},
  UAvtob in 'UAvtob.pas' {FAvtob};
//  UTest in 'UTest.pas' {FTest}
//  license in 'license.pas';

{$R *.RES}

begin
  Application.Initialize;
  Application.Title := 'Оператор';
  Application.CreateForm(TFMainForm, FMainForm);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
