program AdventOfCode2021Day15;

uses
  Vcl.Forms,
  UnitDay15 in 'UnitDay15.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
