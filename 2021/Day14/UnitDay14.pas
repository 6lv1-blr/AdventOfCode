unit UnitDay14;

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
    StringGridReplacement: TStringGrid;
    StringGridPuzzle: TStringGrid;
    LabeledEditResultPart1: TLabeledEdit;
    LabeledEditResultPart2: TLabeledEdit;
    StatusBar1: TStatusBar;
    ButtonEtape1_3: TButton;
    Button1: TButton;
    Button3: TButton;
    procedure ButtonEtape1_1SampleClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure ButtonEtape1_2Click(Sender: TObject);
    procedure ButtonEtape1_3Click(Sender: TObject);
    procedure ButtonEtape1_1Click(Sender: TObject);
    procedure ButtonEtape2_2Click(Sender: TObject);
  private
    NbFlashArray: Integer;
    ChaineInputPuzzle: String;
    DictionnaryAlphabet, DictionnaryPuzzle, DictionnaryPuzzleTemp: TObjectDictionary<String, Uint64>;
    DictionnaryReplacement: TObjectDictionary<String, String>;
    nbstepTotal: Integer;
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}


procedure TForm3.ButtonEtape1_1SampleClick(Sender: TObject);
var
  i: Integer;
  j: Integer;
  Key: String;
  numeroLigne: Integer;
  Sequence2lettres: String;
begin
  nbstepTotal := 0;
 
  StringGridPuzzle.RowCount := length(MemoInputSample.Lines[0]);
  StringGridReplacement.RowCount := MemoInputSample.Lines.Count + 2;
  try

    ChaineInputPuzzle := MemoInputSample.Lines[0];

    DictionnaryPuzzle := TObjectDictionary<String, Uint64>.create;
    DictionnaryPuzzleTemp := TObjectDictionary<String, Uint64>.create;
    for i := 1 to length(ChaineInputPuzzle) - 1 do
      begin
        Sequence2lettres := ChaineInputPuzzle[i] + ChaineInputPuzzle[i + 1];
        if DictionnaryPuzzle.ContainsKey(Sequence2lettres) then
          DictionnaryPuzzle[Sequence2lettres] := DictionnaryPuzzle[Sequence2lettres] + 1
        else
          DictionnaryPuzzle.Add(Sequence2lettres, 1);

      end;

    DictionnaryReplacement := TObjectDictionary<String, String>.create;

    for i := 1 to MemoInputSample.Lines.Count - 1 do
      begin
        if MemoInputSample.Lines[i] <> '' then
          DictionnaryReplacement.Add(copy(MemoInputSample.Lines[i], 1, 2), copy(MemoInputSample.Lines[i], 7, 1));

      end;

    numeroLigne := 0;
    for Key in DictionnaryReplacement.Keys do
      begin

        inc(numeroLigne);
        StringGridReplacement.Cells[1, numeroLigne] := Key;
        StringGridReplacement.Cells[2, numeroLigne] := DictionnaryReplacement.Items[Key];
      end;
    numeroLigne := 0;
    for Key in DictionnaryPuzzle.Keys do
      begin

        inc(numeroLigne);
        StringGridPuzzle.Cells[1, numeroLigne] := Key;
        StringGridPuzzle.Cells[2, numeroLigne] := DictionnaryPuzzle.Items[Key].tostring;
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
  Key: String;
  numeroLigne: Integer;
  Sequence2lettres: String;
begin
  nbstepTotal := 0;
  
  StringGridPuzzle.RowCount := length(MemoInputPuzzle.Lines[0]);
  StringGridReplacement.RowCount := MemoInputPuzzle.Lines.Count + 2;
  try

    ChaineInputPuzzle := MemoInputPuzzle.Lines[0];

    DictionnaryPuzzle := TObjectDictionary<String, Uint64>.create;
    DictionnaryPuzzleTemp := TObjectDictionary<String, Uint64>.create;
    for i := 1 to length(ChaineInputPuzzle) - 1 do
      begin
        Sequence2lettres := ChaineInputPuzzle[i] + ChaineInputPuzzle[i + 1];
        if DictionnaryPuzzle.ContainsKey(Sequence2lettres) then
          DictionnaryPuzzle[Sequence2lettres] := DictionnaryPuzzle[Sequence2lettres] + 1
        else
          DictionnaryPuzzle.Add(Sequence2lettres, 1);

      end;

    DictionnaryReplacement := TObjectDictionary<String, String>.create;

    for i := 1 to MemoInputPuzzle.Lines.Count - 1 do
      begin
        if MemoInputPuzzle.Lines[i] <> '' then
          DictionnaryReplacement.Add(copy(MemoInputPuzzle.Lines[i], 1, 2), copy(MemoInputPuzzle.Lines[i], 7, 1));

      end;

    numeroLigne := 0;
    for Key in DictionnaryReplacement.Keys do
      begin

        inc(numeroLigne);
        StringGridReplacement.Cells[1, numeroLigne] := Key;
        StringGridReplacement.Cells[2, numeroLigne] := DictionnaryReplacement.Items[Key];
      end;
    numeroLigne := 0;
    for Key in DictionnaryPuzzle.Keys do
      begin

        inc(numeroLigne);
        StringGridPuzzle.Cells[1, numeroLigne] := Key;
        StringGridPuzzle.Cells[2, numeroLigne] := DictionnaryPuzzle.Items[Key].tostring;
      end;

  finally

  end;

end;

procedure TForm3.ButtonEtape1_2Click(Sender: TObject);
var
  nbstep: Integer;
  numeroLigne: Integer;
  Key: String;
  Sequence2lettresOutput2: string;
  Sequence2lettresOutput1: string;
  Sequence2lettresInput: string;
  i: Integer;
  ReplacementCar: string;
begin
  nbstep := 10;
  for i := 1 to nbstep do
    begin
      DictionnaryPuzzleTemp.Clear;
      for Key in DictionnaryPuzzle.Keys do
        begin
          Sequence2lettresInput := Key[1] + Key[2];
          DictionnaryReplacement.TryGetValue(Sequence2lettresInput, ReplacementCar);
          Sequence2lettresOutput1 := Sequence2lettresInput[1] + ReplacementCar;
          Sequence2lettresOutput2 := ReplacementCar + Sequence2lettresInput[2];

          if DictionnaryPuzzleTemp.ContainsKey(Sequence2lettresOutput1) then
            DictionnaryPuzzleTemp[Sequence2lettresOutput1] := DictionnaryPuzzle[Sequence2lettresInput] + DictionnaryPuzzleTemp[Sequence2lettresOutput1]
          else
            DictionnaryPuzzleTemp.Add(Sequence2lettresOutput1, DictionnaryPuzzle[Sequence2lettresInput]);
          if DictionnaryPuzzleTemp.ContainsKey(Sequence2lettresOutput2) then
            DictionnaryPuzzleTemp[Sequence2lettresOutput2] := DictionnaryPuzzle[Sequence2lettresInput] + DictionnaryPuzzleTemp[Sequence2lettresOutput2]
          else
            DictionnaryPuzzleTemp.Add(Sequence2lettresOutput2, DictionnaryPuzzle[Sequence2lettresInput]);
          DictionnaryPuzzle[Sequence2lettresInput] := 0;
        end;
      DictionnaryPuzzle.Clear;
      for Key in DictionnaryPuzzleTemp.Keys do
        begin
          if DictionnaryPuzzle.ContainsKey(Key) then
            DictionnaryPuzzle[Key] := DictionnaryPuzzleTemp[Key]
          else
            DictionnaryPuzzle.Add(Key, DictionnaryPuzzleTemp[Key]);
          DictionnaryPuzzleTemp[Key] := 0;
        end;
    end;
  nbstepTotal := nbstep + nbstepTotal;
  StringGridReplacement.Cells[2, 0] := ((length(ChaineInputPuzzle) - 1) * power(2, nbstepTotal) + 1).tostring;
  numeroLigne := 0;
  StringGridPuzzle.RowCount := DictionnaryPuzzle.Count + 1;
  for Key in DictionnaryPuzzle.Keys do
    begin

      inc(numeroLigne);
      StringGridPuzzle.Cells[1, numeroLigne] := Key;
      StringGridPuzzle.Cells[2, numeroLigne] := DictionnaryPuzzle.Items[Key].tostring;
    end;

end;

procedure TForm3.ButtonEtape1_3Click(Sender: TObject);
var
  Key: String;
  numeroLigne: Integer;
  MinValue: Uint64;
  maxValue: Uint64;
  compteCaracteres: Uint64;
begin
  // compte les lettres
  // seulement la première lettre
  // plus la dernière lettre de la séquence de départ
  DictionnaryAlphabet := TObjectDictionary<String, Uint64>.create;
  for Key in DictionnaryPuzzle.Keys do
    begin
      if DictionnaryAlphabet.ContainsKey(Key[1]) then
        DictionnaryAlphabet[Key[1]] := DictionnaryPuzzle[Key] + DictionnaryAlphabet[Key[1]]
      else
        DictionnaryAlphabet.Add(Key[1], DictionnaryPuzzle[Key]);

    end;

  // la dernière lettre ne bouge jamais
  Key[1] := ChaineInputPuzzle[length(ChaineInputPuzzle)];
  if DictionnaryAlphabet.ContainsKey(Key[1]) then
    DictionnaryAlphabet[Key[1]] := DictionnaryAlphabet[Key[1]] + 1
  else
    DictionnaryAlphabet.Add(Key[1], 1);

  numeroLigne := 0;
  StringGridReplacement.RowCount := DictionnaryAlphabet.Count + 1;
  MinValue := 999999999999;
  maxValue := 0;
  compteCaracteres := 0;

  for Key in DictionnaryAlphabet.Keys do
    begin
      inc(numeroLigne);
      StringGridReplacement.Cells[1, numeroLigne] := Key;
      StringGridReplacement.Cells[2, numeroLigne] := DictionnaryAlphabet.Items[Key].tostring;
      if DictionnaryAlphabet.Items[Key] < MinValue then
        MinValue := DictionnaryAlphabet.Items[Key];
      if DictionnaryAlphabet.Items[Key] > maxValue then
        maxValue := DictionnaryAlphabet.Items[Key];
      compteCaracteres := DictionnaryAlphabet.Items[Key] + compteCaracteres;
    end;

  StringGridReplacement.Cells[1, 0] := compteCaracteres.tostring;
  StringGridReplacement.Cells[0, 1] := MinValue.tostring;
  StringGridReplacement.Cells[0, 2] := maxValue.tostring;
  StringGridReplacement.Cells[0, 3] := (maxValue - MinValue).tostring;
  if Sender = ButtonEtape2_2 then
    LabeledEditResultPart2.Text := (maxValue - MinValue).tostring
  else
    LabeledEditResultPart1.Text := (maxValue - MinValue).tostring;

end;

procedure TForm3.ButtonEtape2_2Click(Sender: TObject);
var
  i: Integer;
begin
  for i := 1 to 4 do
    begin
      ButtonEtape1_2Click(Sender);
    end;
  ButtonEtape1_3Click(Sender);
end;

function Horloge: Int64;
var
  Aux: Extended;
  lpPerformanceCount, Frequency: Int64;
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
