program AdventOfCode2021Day14;

uses
  Vcl.Forms,
  UnitDay14 in 'UnitDay14.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
