program AdventOfCode2021Day22;

uses
  Vcl.Forms,
  UnitDay22 in 'UnitDay22.pas' {Form6};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm6, Form6);
  Application.Run;
end.
