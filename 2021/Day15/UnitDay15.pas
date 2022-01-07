unit UnitDay15;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls,
  Vcl.Samples.Spin,
  Vcl.Grids,
  Types, math,
  Vcl.Imaging.pngimage,
  Vcl.ComCtrls,
  System.Generics.Collections,
  System.RegularExpressions;

type
  Array2dint8 = array of array of int8;

  TForm3 = class(TForm)
    ButtonEtape1_1: TButton;
    MemoInputPuzzle: TMemo;
    ButtonEtape1_2: TButton;
    ButtonEtape2_2: TButton;
    MemoInputSample: TMemo;
    ButtonEtape1_1Sample: TButton;
    Label1: TLabel;
    Button2: TButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Splitter1: TSplitter;
    StringGridRisk: TStringGrid;
    StringGridPuzzle: TStringGrid;
    LabeledEditResultPart1: TLabeledEdit;
    LabeledEditResultPart2: TLabeledEdit;
    StatusBar1: TStatusBar;
    Button1: TButton;
    Button3: TButton;
    Label2: TLabel;
    Button4: TButton;
    procedure ButtonEtape1_1SampleClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure ButtonEtape1_2Click(Sender: TObject);
    procedure ButtonEtape1_3Click(Sender: TObject);
    procedure ButtonEtape1_1Click(Sender: TObject);
    procedure ButtonEtape2_2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    NbFlashArray: Integer;
    ChaineInputPuzzle: String;
    DictionnaryAlphabet, DictionnaryPuzzle, DictionnaryPuzzleTemp: TObjectDictionary<String, Uint64>;
    DictionnaryReplacement: TObjectDictionary<String, String>;
    nbstepTotal: Integer;
    nbcycle: Integer;
    InterruptionCalcul: Boolean;
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}


uses System.Diagnostics;

procedure TForm3.ButtonEtape1_1SampleClick(Sender: TObject);
var
  i, j: Integer;
begin
  InterruptionCalcul := True;
  StringGridPuzzle.DefaultColWidth := 25;
  StringGridPuzzle.DefaultRowHeight := 15;
  StringGridPuzzle.Font.Size := 8;
  StringGridRisk.DefaultColWidth := 25;
  StringGridRisk.DefaultRowHeight := 15;
  StringGridRisk.Font.Size := 8;

  StringGridPuzzle.RowCount := MemoInputSample.Lines.Count + 2;
  StringGridPuzzle.ColCount := length(MemoInputSample.Lines[0]) + 2;
  StringGridRisk.RowCount := MemoInputSample.Lines.Count + 2;
  StringGridRisk.ColCount := length(MemoInputSample.Lines[0]) + 2;
  try
    for i := 0 to MemoInputSample.Lines.Count - 1 do
      begin
        for j := 0 to length(MemoInputSample.Lines[i]) - 1 do
          StringGridPuzzle.Cells[j + 1, i + 1] := MemoInputSample.Lines[i][j + 1];

      end;
    for i := 0 to StringGridPuzzle.RowCount - 1 do
      begin
        StringGridPuzzle.Cells[0, i] := '99999999';
        StringGridPuzzle.Cells[StringGridPuzzle.ColCount - 1, i] := '99999999';

      end;
    for j := 0 to StringGridPuzzle.ColCount - 1 do
      begin
        StringGridPuzzle.Cells[j, 0] := '99999999';
        StringGridPuzzle.Cells[j, StringGridPuzzle.RowCount - 1] := '99999999';

      end;
    for i := 0 to StringGridPuzzle.RowCount - 3 do
      begin
        for j := 0 to StringGridPuzzle.ColCount - 3 do
          begin
            StringGridRisk.Cells[j + 1, i + 1] := '';
          end;
      end;

  finally

  end;

end;

procedure TForm3.Button1Click(Sender: TObject);
var
  i, j: Integer;
  x: Integer;
  y: Integer;
  maxy: Integer;
  maxx: Integer;
begin
  InterruptionCalcul := True;

  StringGridPuzzle.DefaultColWidth := 15;
  StringGridPuzzle.DefaultRowHeight := 15;
  StringGridPuzzle.Font.Size := 8;
  StringGridRisk.DefaultColWidth := 30;
  StringGridRisk.DefaultRowHeight := 15;
  StringGridRisk.Font.Size := 8;

  StringGridPuzzle.RowCount := MemoInputPuzzle.Lines.Count * 5 + 2;
  StringGridPuzzle.ColCount := length(MemoInputPuzzle.Lines[0]) * 5 + 2;
  StringGridRisk.RowCount := MemoInputPuzzle.Lines.Count * 5 + 2;
  StringGridRisk.ColCount := length(MemoInputPuzzle.Lines[0]) * 5 + 2;
  try
    for i := 0 to MemoInputPuzzle.Lines.Count - 1 do
      begin
        for j := 0 to length(MemoInputPuzzle.Lines[i]) - 1 do
          StringGridPuzzle.Cells[j + 1, i + 1] := MemoInputPuzzle.Lines[i][j + 1];

      end;
    maxy := MemoInputPuzzle.Lines.Count;
    maxx := length(MemoInputPuzzle.Lines[0]);
    for i := 1 to 4 do
      for x := 1 to maxx do
        for y := 1 to maxy do
          StringGridPuzzle.Cells[(i * maxx) + x, y] := (((i + StringGridPuzzle.Cells[x, y].ToInteger - 1) mod 9) + 1).ToString;

    maxx := maxx * 5;

    for i := 1 to 4 do
      for x := 1 to maxx do
        for y := 1 to maxy do
          StringGridPuzzle.Cells[x, (i * maxy) + y] := (((i + StringGridPuzzle.Cells[x, y].ToInteger - 1) mod 9) + 1).ToString;

    maxy := maxy * 5;
    for i := 0 to StringGridPuzzle.RowCount - 1 do
      begin
        StringGridPuzzle.Cells[0, i] := '99999999';
        StringGridPuzzle.Cells[StringGridPuzzle.ColCount - 1, i] := '99999999';
        StringGridRisk.Cells[0, i] := '99999999';
        StringGridRisk.Cells[StringGridPuzzle.ColCount - 1, i] := '99999999';

      end;
    for j := 0 to StringGridPuzzle.ColCount - 1 do
      begin
        StringGridPuzzle.Cells[j, 0] := '99999999';
        StringGridPuzzle.Cells[j, StringGridPuzzle.RowCount - 1] := '99999999';
        StringGridRisk.Cells[j, 0] := '99999999';
        StringGridRisk.Cells[j, StringGridPuzzle.RowCount - 1] := '99999999';

      end;
    for i := 0 to StringGridPuzzle.RowCount - 3 do
      begin
        for j := 0 to StringGridPuzzle.ColCount - 3 do
          begin
            StringGridRisk.Cells[j + 1, i + 1] := '';
          end;
      end;

  finally

  end;

end;

procedure TForm3.Button2Click(Sender: TObject);
begin
  MemoInputPuzzle.Clear;
  MemoInputPuzzle.PasteFromClipboard;
end;

procedure TForm3.Button3Click(Sender: TObject);
var
  i, j: Integer;
  x: Integer;
  y: Integer;
  maxy: Integer;
  maxx: Integer;
begin
  InterruptionCalcul := True;
  StringGridPuzzle.DefaultColWidth := 25;
  StringGridPuzzle.DefaultRowHeight := 15;
  StringGridPuzzle.Font.Size := 8;
  StringGridRisk.DefaultColWidth := 25;
  StringGridRisk.DefaultRowHeight := 15;
  StringGridRisk.Font.Size := 8;

  StringGridPuzzle.RowCount := MemoInputSample.Lines.Count * 5 + 2;
  StringGridPuzzle.ColCount := length(MemoInputSample.Lines[0]) * 5 + 2;
  StringGridRisk.RowCount := MemoInputSample.Lines.Count * 5 + 2;
  StringGridRisk.ColCount := length(MemoInputSample.Lines[0]) * 5 + 2;
  try
    for i := 0 to MemoInputSample.Lines.Count - 1 do
      begin
        for j := 0 to length(MemoInputSample.Lines[i]) - 1 do
          StringGridPuzzle.Cells[j + 1, i + 1] := MemoInputSample.Lines[i][j + 1];

      end;
    maxy := MemoInputSample.Lines.Count;
    maxx := length(MemoInputSample.Lines[0]);
    for i := 1 to 4 do
      for x := 1 to maxx do
        for y := 1 to maxy do
          StringGridPuzzle.Cells[(i * maxx) + x, y] := (((i + StringGridPuzzle.Cells[x, y].ToInteger - 1) mod 9) + 1).ToString;

    maxx := maxx * 5;

    for i := 1 to 4 do
      for x := 1 to maxx do
        for y := 1 to maxy do
          StringGridPuzzle.Cells[x, (i * maxy) + y] := (((i + StringGridPuzzle.Cells[x, y].ToInteger - 1) mod 9) + 1).ToString;

    maxy := maxy * 5;
    for i := 0 to StringGridPuzzle.RowCount - 1 do
      begin
        StringGridPuzzle.Cells[0, i] := '99999999';
        StringGridPuzzle.Cells[StringGridPuzzle.ColCount - 1, i] := '99999999';
        StringGridRisk.Cells[0, i] := '99999999';
        StringGridRisk.Cells[StringGridPuzzle.ColCount - 1, i] := '99999999';

      end;
    for j := 0 to StringGridPuzzle.ColCount - 1 do
      begin
        StringGridPuzzle.Cells[j, 0] := '99999999';
        StringGridPuzzle.Cells[j, StringGridPuzzle.RowCount - 1] := '99999999';
        StringGridRisk.Cells[j, 0] := '99999999';
        StringGridRisk.Cells[j, StringGridPuzzle.RowCount - 1] := '99999999';

      end;
    for i := 0 to StringGridPuzzle.RowCount - 3 do
      begin
        for j := 0 to StringGridPuzzle.ColCount - 3 do
          begin
            StringGridRisk.Cells[j + 1, i + 1] := '';
          end;
      end;

  finally

  end;

end;

procedure TForm3.Button4Click(Sender: TObject);
begin
  InterruptionCalcul := True;

end;

procedure TForm3.ButtonEtape1_1Click(Sender: TObject);
var
  i: Integer;
  j: Integer;
begin
  InterruptionCalcul := True;
  StringGridPuzzle.DefaultColWidth := 25;
  StringGridPuzzle.DefaultRowHeight := 15;
  StringGridPuzzle.Font.Size := 8;
  StringGridRisk.DefaultColWidth := 25;
  StringGridRisk.DefaultRowHeight := 15;
  StringGridRisk.Font.Size := 8;

  StringGridPuzzle.RowCount := MemoInputPuzzle.Lines.Count + 2;
  StringGridPuzzle.ColCount := length(MemoInputPuzzle.Lines[0]) + 2;
  StringGridRisk.RowCount := MemoInputPuzzle.Lines.Count + 2;
  StringGridRisk.ColCount := length(MemoInputPuzzle.Lines[0]) + 2;
  try
    for i := 0 to MemoInputPuzzle.Lines.Count - 1 do
      begin
        for j := 0 to length(MemoInputPuzzle.Lines[i]) - 1 do
          StringGridPuzzle.Cells[j + 1, i + 1] := MemoInputPuzzle.Lines[i][j + 1];

      end;
    for i := 0 to StringGridPuzzle.RowCount - 1 do
      begin
        StringGridPuzzle.Cells[0, i] := '99999999';
        StringGridPuzzle.Cells[StringGridPuzzle.ColCount - 1, i] := '99999999';
        StringGridRisk.Cells[0, i] := '99999999';
        StringGridRisk.Cells[StringGridPuzzle.ColCount - 1, i] := '99999999';

      end;
    for j := 0 to StringGridPuzzle.ColCount - 1 do
      begin
        StringGridPuzzle.Cells[j, 0] := '99999999';
        StringGridPuzzle.Cells[j, StringGridPuzzle.RowCount - 1] := '99999999';
        StringGridRisk.Cells[j, 0] := '99999999';
        StringGridRisk.Cells[j, StringGridPuzzle.RowCount - 1] := '99999999';

      end;
    for i := 0 to StringGridPuzzle.RowCount - 3 do
      begin
        for j := 0 to StringGridPuzzle.ColCount - 3 do
          begin

            StringGridRisk.Cells[j + 1, i + 1] := '';
          end;

      end;

  finally

  end;
end;

procedure TForm3.ButtonEtape1_2Click(Sender: TObject);
var
  maxx, maxy: int64;
  x, y, z, a, b, c, d, i, j: int64;
  AuMoins1Modif: Boolean;
  Temps: TStopWatch;

begin
  Temps.StartNew;
  Temps.Start;
  InterruptionCalcul := True;

  // from https://github.com/mikewarot/Advent_of_Code_in_Pascal/tree/master/2021

  for i := 0 to StringGridRisk.RowCount - 1 do
    begin
      for j := 0 to StringGridRisk.ColCount - 1 do
        begin

          StringGridRisk.Cells[j, i] := '99999999';
        end;

    end;

  // rempli le risque de la diagonale en premier

  maxx := StringGridRisk.ColCount - 2;
  maxy := StringGridRisk.RowCount - 2;
  StringGridRisk.Cells[maxx, maxy] := StringGridPuzzle.Cells[maxx, maxy];
  for x := maxx - 1 downto 1 do
    begin
      StringGridRisk.Cells[x + 1, x] := (StringGridRisk.Cells[x + 1, x + 1].ToInt64 + StringGridPuzzle.Cells[x + 1, x].ToInt64).ToString;
      StringGridRisk.Cells[x, x] := (StringGridRisk.Cells[x + 1, x].ToInt64 + StringGridPuzzle.Cells[x, x].ToInt64).ToString;
    end;
  Application.ProcessMessages;
  sleep(1000);
  InterruptionCalcul := False;

  AuMoins1Modif := True;

  for i := 1 to (maxx) * 10 do
    begin
      if not AuMoins1Modif then // si rien n'a changé alors on a le minimum
        break;
      AuMoins1Modif := False;
      for x := 1 to maxx do
        for y := 1 to maxy do
          begin
            if not InterruptionCalcul then
              begin
                a := 99999999;
                if x < maxx then
                  a := StringGridRisk.Cells[x + 1, y].ToInteger + StringGridPuzzle.Cells[x, y].ToInt64;
                b := 99999999;
                if y < maxy then
                  b := StringGridRisk.Cells[x, y + 1].ToInteger + StringGridPuzzle.Cells[x, y].ToInt64;
                c := 99999999;
                if x > 1 then
                  c := StringGridRisk.Cells[x - 1, y].ToInteger + StringGridPuzzle.Cells[x, y].ToInt64;
                d := 99999999;
                if y > 1 then
                  d := StringGridRisk.Cells[x, y - 1].ToInteger + StringGridPuzzle.Cells[x, y].ToInt64;
                z := 99999999;
                if a < z then
                  z := a;
                if b < z then
                  z := b;
                if c < z then
                  z := c;
                if d < z then
                  z := d;
                if (x = maxx) AND (y = maxy) then
                  z := StringGridPuzzle.Cells[x, y].ToInt64;
                if z <> StringGridRisk.Cells[x, y].ToInt64 then
                  begin
                    StringGridRisk.Cells[x, y] := z.ToString;
                    AuMoins1Modif := True;
                  end;

                nbcycle := nbcycle + 1;
                if (nbcycle > 10850) and (StringGridPuzzle.Cells[x, y].ToInt64 < 9999) then
                  begin

                    // StringGridRisk.Col := x+1;
                    // StringGridRisk.row := y+1;
                    nbcycle := 0;
                  end;
                if (x = maxx) and (y = maxy) then
                  begin
                    Label1.Caption := i.ToString;
                    Application.ProcessMessages;
                  end;
              end;
          end; // for y

    end;
  if not InterruptionCalcul then
    LabeledEditResultPart1.Text := inttostr(StringGridRisk.Cells[1, 1].ToInt64 - StringGridPuzzle.Cells[1, 1].ToInt64);
  Temps.Stop;
  Label2.Caption := Label1.Caption + '  ' + Temps.ElapsedMilliseconds.ToString + ' ms';

end;

procedure TForm3.ButtonEtape1_3Click(Sender: TObject);
var
  Key: String;
  numeroLigne: Integer;
  MinValue: Uint64;
  maxValue: Uint64;
  compteCaracteres: Uint64;
begin

end;

procedure TForm3.ButtonEtape2_2Click(Sender: TObject);
var
  i: Integer;
begin

  ButtonEtape1_2Click(Sender);
  LabeledEditResultPart2.Text := LabeledEditResultPart1.Text;

end;

procedure TForm3.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  InterruptionCalcul := True;
end;

function Horloge: int64;
var
  Aux: Extended;
  lpPerformanceCount, Frequency: int64;
begin

  try
    if QueryPerformanceCounter(lpPerformanceCount) then
      begin // il y en a une. On va l'utiliser
        QueryPerformanceFrequency(Frequency);
        Aux := 1000000.0 / Frequency;
        Aux := Aux * lpPerformanceCount;
        Result := Round(Aux);
      end
    else // il n'y a pas d'horloge haute précision sur le micro. On se contente de GetTickCount
      Result := (GetTickCount * 1000);
  except
    Result := (GetTickCount * 1000);
  end;
end;

end.
