unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls,
  Vcl.Samples.Spin, Vcl.Grids;

type
  TForm3 = class(TForm)
    StringGridPuzzle: TStringGrid;
    StringGridBasin: TStringGrid;
    ButtonEtape1_1: TButton;
    SpinEdit1: TSpinEdit;
    LabeledEditResultPart2: TLabeledEdit;
    MemoInputPuzzle: TMemo;
    ButtonEtape2_1: TButton;
    ButtonEtape1_2: TButton;
    ButtonEtape1_3: TButton;
    LabeledEditResultPart1: TLabeledEdit;
    ButtonEtape2_2: TButton;
    ButtonEtape2_3: TButton;
    ButtonEtape2_4: TButton;
    StringGridDemineur: TStringGrid;
    ButtonEtape2_5: TButton;
    MemoInputSample: TMemo;
    Button1: TButton;
    Label1: TLabel;
    Button2: TButton;
    procedure ButtonEtape1_1Click(Sender: TObject);
    procedure ButtonEtape1_2Click(Sender: TObject);
    procedure ButtonEtape1_3Click(Sender: TObject);
    procedure ButtonEtape2_1Click(Sender: TObject);
    procedure ButtonEtape2_2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    procedure AffecterVoisin(j, i: Integer);
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}


procedure TForm3.Button1Click(Sender: TObject);
var
  i: Integer;
  j: Integer;
begin
  StringGridPuzzle.RowCount := MemoInputSample.Lines.Count + 2;
  StringGridPuzzle.ColCount := length(MemoInputSample.Lines[0]) + 2;
  StringGridDemineur.RowCount := MemoInputSample.Lines.Count + 2;
  StringGridDemineur.ColCount := length(MemoInputSample.Lines[0]) + 2;
  try
    for i := 0 to MemoInputSample.Lines.Count - 1 do
      begin
        for j := 0 to length(MemoInputSample.Lines[i]) - 1 do
          StringGridPuzzle.Cells[j + 1, i + 1] := MemoInputSample.Lines[i][j + 1];

      end;
    for i := 0 to StringGridPuzzle.RowCount - 1 do
      begin
        StringGridPuzzle.Cells[0, i] := '999';
        StringGridPuzzle.Cells[StringGridPuzzle.ColCount - 1, i] := '999';

      end;
    for j := 0 to StringGridPuzzle.ColCount - 1 do
      begin
        StringGridPuzzle.Cells[j, 0] := '999';
        StringGridPuzzle.Cells[j, StringGridPuzzle.RowCount - 1] := '999';

      end;

  finally

  end;
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
MemoInputPuzzle.Clear;
MemoInputPuzzle.PasteFromClipboard;
end;

procedure TForm3.ButtonEtape1_1Click(Sender: TObject);
var
  i: Integer;
  j: Integer;
begin
  StringGridPuzzle.RowCount := MemoInputPuzzle.Lines.Count + 2;
  StringGridPuzzle.ColCount := length(MemoInputPuzzle.Lines[0]) + 2;
  StringGridDemineur.RowCount := MemoInputPuzzle.Lines.Count + 2;
  StringGridDemineur.ColCount := length(MemoInputPuzzle.Lines[0]) + 2;
  try
    for i := 0 to MemoInputPuzzle.Lines.Count - 1 do
      begin
        for j := 0 to length(MemoInputPuzzle.Lines[i]) - 1 do
          StringGridPuzzle.Cells[j + 1, i + 1] := MemoInputPuzzle.Lines[i][j + 1];

      end;
    for i := 0 to StringGridPuzzle.RowCount - 1 do
      begin
        StringGridPuzzle.Cells[0, i] := '999';
        StringGridPuzzle.Cells[StringGridPuzzle.ColCount - 1, i] := '999';

      end;
    for j := 0 to StringGridPuzzle.ColCount - 1 do
      begin
        StringGridPuzzle.Cells[j, 0] := '999';
        StringGridPuzzle.Cells[j, StringGridPuzzle.RowCount - 1] := '999';

      end;

  finally

  end;
end;

procedure TForm3.ButtonEtape1_2Click(Sender: TObject);
var
  i: Integer;
  j: Integer;
begin

  SpinEdit1.Value := 0;
 SpinEdit1.OnChange:=nil;
  for i := 0 to MemoInputPuzzle.Lines.Count - 1 do
    begin
      for j := 0 to length(MemoInputPuzzle.Lines[i]) - 1 do
        begin
          if (StringGridPuzzle.Cells[j + 1, i + 1].ToInteger < StringGridPuzzle.Cells[j + 1 - 1, i + 1].ToInteger) and
            (StringGridPuzzle.Cells[j + 1, i + 1].ToInteger < StringGridPuzzle.Cells[j + 1 + 1, i + 1].ToInteger) and
            (StringGridPuzzle.Cells[j + 1, i + 1].ToInteger < StringGridPuzzle.Cells[j + 1, i + 1 + 1].ToInteger) and
            (StringGridPuzzle.Cells[j + 1, i + 1].ToInteger < StringGridPuzzle.Cells[j + 1, i + 1 - 1].ToInteger) then
            begin
              StringGridPuzzle.Cells[j + 1, i + 1] := '-10' + StringGridPuzzle.Cells[j + 1, i + 1];
              SpinEdit1.Value := SpinEdit1.Value + 1;
            end;
        end;
    end;
    SpinEdit1.OnChange:=ButtonEtape2_1Click;
end;

procedure TForm3.ButtonEtape1_3Click(Sender: TObject);
var
  i: Integer;
  j: Integer;
  sum_of_the_risk_levels: Integer;
begin
  sum_of_the_risk_levels := 0;
  for i := 0 to MemoInputPuzzle.Lines.Count - 1 do
    begin
      for j := 0 to length(MemoInputPuzzle.Lines[i]) - 1 do
        begin
          if StringGridPuzzle.Cells[j + 1, i + 1].ToInteger < -0 then
            sum_of_the_risk_levels := sum_of_the_risk_levels + 1 - (StringGridPuzzle.Cells[j + 1, i + 1].ToInteger + 100)

        end;
    end;
  LabeledEditResultPart1.Text := sum_of_the_risk_levels.ToString;
end;

procedure TForm3.ButtonEtape2_1Click(Sender: TObject);

var
  i, k, l: Integer;
  j: Integer;
  CompteBasin: Integer;
  MultiplyResult: int64;
begin
  StringGridBasin.RowCount := 1;
  for i := 0 to MemoInputPuzzle.Lines.Count - 1 do
    begin
      for j := 0 to length(MemoInputPuzzle.Lines[i]) - 1 do
        begin
          StringGridDemineur.Cells[j + 1, i + 1] := '';
        end;
    end;

  for i := 0 to MemoInputPuzzle.Lines.Count - 1 do
    begin
      for j := 0 to length(MemoInputPuzzle.Lines[i]) - 1 do
        begin
          if (StringGridBasin.RowCount <= SpinEdit1.Value) and (StringGridPuzzle.Cells[j + 1, i + 1].ToInteger < -0) then
            begin

              for k := 0 to MemoInputPuzzle.Lines.Count - 1 do
                begin
                  for l := 0 to length(MemoInputPuzzle.Lines[k]) - 1 do
                    begin
                      StringGridDemineur.Cells[l + 1, k + 1] := '';
                    end;
                end;
              StringGridDemineur.Cells[j + 1, i + 1] := '1';
              AffecterVoisin(j, i);

              CompteBasin := 0;
              for k := 0 to MemoInputPuzzle.Lines.Count - 1 do
                begin
                  for l := 0 to length(MemoInputPuzzle.Lines[k]) - 1 do
                    begin
                      if StringGridDemineur.Cells[l + 1, k + 1] <> '' then
                        CompteBasin := CompteBasin + 1;

                    end;
                end;

              StringGridBasin.Cells[1, StringGridBasin.RowCount - 1] := CompteBasin.ToString;
              StringGridBasin.RowCount := StringGridBasin.RowCount + 1
            end

        end;
    end;

  MultiplyResult := 1;
  for i := 0 to StringGridBasin.RowCount - 2 do
    begin
      // ne passe pas car débordement d'entier mais le résultat est sur la multiplication des 3 premiers
      // MultiplyResult := MultiplyResult * StringGridBasin.Cells[1, i].ToInteger;

    end;
  LabeledEditResultPart2.Text := MultiplyResult.ToString;

end;

function StringListSortCompare(List: TStringList; Index1, Index2: Integer): Integer;
begin
  Result := StrToIntDef(List[Index2], 0) - StrToIntDef(List[Index1], 0)
end;

procedure TForm3.ButtonEtape2_2Click(Sender: TObject);
var
  i: Integer;
  Buffer: TStringList;
  MultiplyResult: Integer;
begin
  Buffer := TStringList.Create;
  for i := 0 to StringGridBasin.RowCount - 1 do
    begin
      Buffer.Assign(StringGridBasin.Cols[i]);
      Buffer.CustomSort(@StringListSortCompare);
      StringGridBasin.Cols[i].Assign(Buffer);
    end;
  FreeAndNil(Buffer);
  MultiplyResult := 1;
  for i := 0 to 3 - 1 do
    begin
      MultiplyResult := MultiplyResult * StringGridBasin.Cells[1, i].ToInteger;

    end;
  LabeledEditResultPart2.Text := MultiplyResult.ToString;

end;

procedure TForm3.AffecterVoisin(j, i: Integer);
begin
  try
    if (StringGridPuzzle.Cells[j + 1, i + 1].ToInteger < StringGridPuzzle.Cells[j + 1 - 1, i + 1].ToInteger) and
      (StringGridPuzzle.Cells[j + 1 - 1, i + 1].ToInteger < 9)
      and (StringGridDemineur.Cells[j + 1 - 1, i + 1] = '')
    then
      begin
        StringGridDemineur.Cells[j + 1 - 1, i + 1] := '2';
        AffecterVoisin(j - 1, i);
      end;
  except
    ShowMessage(StringGridDemineur.Cells[j + 1, i + 1]);

  end;
  try
    if (StringGridPuzzle.Cells[j + 1, i + 1].ToInteger < StringGridPuzzle.Cells[j + 1 + 1, i + 1].ToInteger) and
      (StringGridPuzzle.Cells[j + 1 + 1, i + 1].ToInteger < 9)
      and (StringGridDemineur.Cells[j + 1 + 1, i + 1] = '')
    then
      begin
        StringGridDemineur.Cells[j + 1 + 1, i + 1] := '3';
        AffecterVoisin(j + 1, i);
      end;
  except
    ShowMessage(StringGridDemineur.Cells[j + 1, i + 1]);

  end;
  try
    if (StringGridPuzzle.Cells[j + 1, i + 1].ToInteger < StringGridPuzzle.Cells[j + 1, i + 1 + 1].ToInteger) and
      (StringGridPuzzle.Cells[j + 1, i + 1 + 1].ToInteger < 9)
      and (StringGridDemineur.Cells[j + 1, i + 1 + 1] = '')
    then
      begin
        StringGridDemineur.Cells[j + 1, i + 1 + 1] := '4';
        AffecterVoisin(j, i + 1);
      end;
  except
    ShowMessage(StringGridDemineur.Cells[j + 1, i + 1]);

  end;
  try
    if (StringGridPuzzle.Cells[j + 1, i + 1].ToInteger < StringGridPuzzle.Cells[j + 1, i + 1 - 1].ToInteger) and
      (StringGridPuzzle.Cells[j + 1, i + 1 - 1].ToInteger < 9)
      and (StringGridDemineur.Cells[j + 1, i + 1 - 1] = '')
    then
      begin
        StringGridDemineur.Cells[j + 1, i + 1 - 1] := '5';
        AffecterVoisin(j, i - 1);
      end;
  except
    ShowMessage(StringGridDemineur.Cells[j + 1, i + 1]);

  end;
end;

end.
