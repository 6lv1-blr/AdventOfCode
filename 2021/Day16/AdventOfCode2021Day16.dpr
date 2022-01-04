program AdventOfCode2021Day16;

uses
  Vcl.Forms,
  UnitDay16 in 'UnitDay16.pas' {Form5};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm5, Form5);
  Application.Run;
end.
