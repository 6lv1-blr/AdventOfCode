program AdventOfCode2021Day17;

uses
  Vcl.Forms,
  UnitDay17 in 'UnitDay17.pas' {Form7};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm7, Form7);
  Application.Run;
end.
