program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Unit2 in 'Unit2.pas' {Frame2: TFrame},
  Unit3 in 'Unit3.pas' {Frame3: TFrame},
  Unit4 in 'Unit4.pas' {Frame4: TFrame},
  Unit5 in 'Unit5.pas' {Frame5: TFrame},
  Unit6 in 'Unit6.pas' {Frame6: TFrame},
  Unit7 in 'Unit7.pas' {Frame7: TFrame},
  Unit8 in 'Unit8.pas' {Frame8: TFrame},
  Unit9 in 'Unit9.pas' {Frame9: TFrame},
  Unit10 in 'Unit10.pas' {Frame10: TFrame},
  Unit11 in 'Unit11.pas' {Frame11: TFrame},
  Unit12 in 'Unit12.pas' {QuickReport12: TQuickRep},
  Unit13 in 'Unit13.pas' {QuickReport13: TQuickRep},
  Unit14 in 'Unit14.pas' {Frame14: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Rental Mobil';
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TQuickReport12, QuickReport12);
  Application.CreateForm(TQuickReport13, QuickReport13);
  Application.Run;
end.
