unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls,
  Vcl.Samples.Spin, Vcl.Grids,
  Types, Generics.Collections, Vcl.Imaging.pngimage, Vcl.ComCtrls;

type
  Array2dint8 = array of array of int8;

  TForm3 = class(TForm)
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
    MemoInputSample: TMemo;
    Button1: TButton;
    Label1: TLabel;
    Button2: TButton;
    Button3: TButton;
    LabelEtape2_1Progress: TLabel;
    Label2: TLabel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    StringGridDemineur: TStringGrid;
    Splitter1: TSplitter;
    StringGridPuzzle: TStringGrid;
    procedure ButtonEtape1_1Click(Sender: TObject);
    procedure ButtonEtape1_2Click(Sender: TObject);
    procedure ButtonEtape1_3Click(Sender: TObject);
    procedure ButtonEtape2_1Click(Sender: TObject);
    procedure ButtonEtape2_2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    procedure AffecterVoisin(j, i: Integer);
    procedure VoisinDecalage(j: Integer; i: Integer; OffsetVert: Integer; OffsetHorz: Integer);
    procedure AffecterVoisinArray(var GridPuzzle, GridDemineur: Array2dint8; i: Integer; j: Integer; OffsetVert: Integer; OffsetHorz: Integer);
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
  StringGridPuzzle.DefaultColWidth := 25;
  StringGridPuzzle.DefaultRowHeight := 15;
  StringGridPuzzle.Font.Size := 8;
  StringGridDemineur.DefaultColWidth := 25;
  StringGridDemineur.DefaultRowHeight := 15;
  StringGridDemineur.Font.Size := 8;

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

procedure TForm3.AffecterVoisinArray(var GridPuzzle, GridDemineur: Array2dint8; i: Integer; j: Integer; OffsetVert: Integer; OffsetHorz: Integer);
begin
  if (GridPuzzle[i, j] < GridPuzzle[i + OffsetHorz, j + OffsetVert])
    and (GridPuzzle[i + OffsetHorz, j + OffsetVert] < 9) // on doit s'arreter et ne pas compter les 9
    and (GridDemineur[i + OffsetHorz, j + OffsetVert] = 0) // si cette case dans la grid demineur est déjà rempli c'est qu'on est déjà passé par là
  then
    begin
      GridDemineur[i + OffsetHorz, j + OffsetVert] := (OffsetHorz + 2 + OffsetVert + 10 + 2);
      // la séquence OffsetHorz + 2 + OffsetVert + 10 + 2 permet d'avoir 1 3 11 et 13 dans les voisinages
      AffecterVoisinArray(GridPuzzle, GridDemineur, i + OffsetHorz, j + OffsetVert, +1, 0);
      AffecterVoisinArray(GridPuzzle, GridDemineur, i + OffsetHorz, j + OffsetVert, -1, 0);
      AffecterVoisinArray(GridPuzzle, GridDemineur, i + OffsetHorz, j + OffsetVert, 0, +1);
      AffecterVoisinArray(GridPuzzle, GridDemineur, i + OffsetHorz, j + OffsetVert, 0, -1);

    end;
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
  MemoInputPuzzle.Clear;
  MemoInputPuzzle.PasteFromClipboard;
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

procedure TForm3.Button3Click(Sender: TObject);
var
  // pour limiter l'usage mémoire, utiliser des entiers signés sur 8 bits est largement suffisant
  // on n'utilisera plus 999 mais 99 sera largement bien
  GridPuzzle: Array2dint8;
  GridDemineur: Array2dint8;
  GridPuzzleRowCount: Integer;
  GridPuzzleColCount: Integer;
  i, j, k, l: Integer;
  sum_of_the_risk_levels: Integer;
  CompteBasin: Integer;
  MultiplyResult: Int64;
  ListBasin: TIntegerDynArray;
  TempsDebut: UInt64;
  TempsFin: UInt64;

begin
  TempsDebut := Horloge;
  // Version cumul en mode tableau de byte plus propre et plus rapide
  // la version en stringgrid n'est pas optimale car fait beaucoup de conversion String->Integer, Integer->String
  // de plus à chaque fois que l'on modifie une case, la page actualise l'affichage.

  // Etape 1.1
  GridPuzzleRowCount := MemoInputPuzzle.Lines.Count + 2;
  GridPuzzleColCount := length(MemoInputPuzzle.Lines[0]) + 2;
  SetLength(GridPuzzle, GridPuzzleRowCount, GridPuzzleColCount); // toujours 2 colonnes et 2 lignes supplémentaire pour ne pas tester les frontières
  SetLength(GridDemineur, GridPuzzleRowCount, GridPuzzleColCount); // toujours 2 colonnes et 2 lignes supplémentaire pour ne pas tester les frontières


    for i := 1 to GridPuzzleRowCount - 2 do
      begin
        for j := 1 to GridPuzzleColCount - 2 do
          GridPuzzle[i, j] := strtoint(MemoInputPuzzle.Lines[i - 1][j]);

      end;

    // remplissage à 99 de la frontière
    for i := 0 to GridPuzzleRowCount - 1 do
      begin
        GridPuzzle[i, 0] := 99;
        GridPuzzle[i, GridPuzzleColCount - 1] := 99;
      end;
    for j := 0 to GridPuzzleColCount - 1 do
      begin
        GridPuzzle[0, j] := 99;
        GridPuzzle[GridPuzzleRowCount - 1, j] := 99;

      end;



  // Etape 1.2

  for i := 1 to GridPuzzleRowCount - 2 do
    begin
      for j := 1 to GridPuzzleColCount - 2 do
        begin
          if (GridPuzzle[i, j] < GridPuzzle[i - 1, j]) and // voisin Gauche
            (GridPuzzle[i, j] < GridPuzzle[i + 1, j]) and // voisin Droite
            (GridPuzzle[i, j] < GridPuzzle[i, j - 1]) and // voisin Haut
            (GridPuzzle[i, j] < GridPuzzle[i, j + 1]) then // voisin Bas
            begin
              GridPuzzle[i, j] := -100 - GridPuzzle[i, j];
            end;
        end;
    end;

  // Etape 1.3
  sum_of_the_risk_levels := 0;
  for i := 1 to GridPuzzleRowCount - 2 do
    begin
      for j := 1 to GridPuzzleColCount - 2 do
        begin
          if GridPuzzle[i, j] < -0 then
            sum_of_the_risk_levels := sum_of_the_risk_levels + 1 - (GridPuzzle[i, j] + 100)

        end;
    end;
  // resultat part 1
  // LabeledEditResultPart1.Text := sum_of_the_risk_levels.ToString;

  // Etape 2.1

  ListBasin := TIntegerDynArray.Create();

  for i := 1 to GridPuzzleRowCount - 2 do
    begin
      for j := 1 to GridPuzzleColCount - 2 do
        begin
          if (GridPuzzle[i, j] < -0) then
            begin

              for k := 1 to GridPuzzleRowCount - 1 do
                begin
                  for l := 1 to GridPuzzleColCount - 1 do
                    begin
                      GridDemineur[k, l] := 0;
                    end;
                end;
              GridDemineur[i, j] := 1;

              AffecterVoisinArray(GridPuzzle, GridDemineur, i, j, +1, 0);
              AffecterVoisinArray(GridPuzzle, GridDemineur, i, j, -1, 0);
              AffecterVoisinArray(GridPuzzle, GridDemineur, i, j, 0, +1);
              AffecterVoisinArray(GridPuzzle, GridDemineur, i, j, 0, -1);

              CompteBasin := 0;
              for k := 1 to GridPuzzleRowCount - 1 do
                begin
                  for l := 1 to GridPuzzleColCount - 1 do
                    begin
                      if GridDemineur[k, l] <> 0 then
                        CompteBasin := CompteBasin + 1;

                    end;
                end;
              SetLength(ListBasin, length(ListBasin) + 1);
              ListBasin[length(ListBasin) - 1] := CompteBasin;

            end;
        end;
    end;

  TArray.Sort<Integer>(ListBasin);
  MultiplyResult := 1;
  for i := 1 to 3 do
    begin
      MultiplyResult := MultiplyResult * ListBasin[length(ListBasin) - i];

    end;
  TempsFin := Horloge;

  // resultat part 1
  LabeledEditResultPart1.Text := sum_of_the_risk_levels.ToString;
  // resultat part 2
  LabeledEditResultPart2.Text := MultiplyResult.ToString;
  LabelEtape2_1Progress.Caption := ((TempsFin - TempsDebut)).ToString + 'µs';

end;

procedure TForm3.ButtonEtape1_1Click(Sender: TObject);
var
  i: Integer;
  j: Integer;
begin
  StringGridPuzzle.DefaultColWidth := 10;
  StringGridPuzzle.DefaultRowHeight := 10;
  StringGridPuzzle.Font.Size := 5;
  StringGridDemineur.DefaultColWidth := 10;
  StringGridDemineur.DefaultRowHeight := 10;
  StringGridDemineur.Font.Size := 5;

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
  SpinEdit1.OnChange := nil;
  for i := 0 to StringGridPuzzle.RowCount - 2 do
    begin
      for j := 0 to StringGridPuzzle.ColCount - 2 do
        begin
          if (StringGridPuzzle.Cells[j + 1, i + 1].tointeger < StringGridPuzzle.Cells[j + 1 - 1, i + 1].tointeger) and
            (StringGridPuzzle.Cells[j + 1, i + 1].tointeger < StringGridPuzzle.Cells[j + 1 + 1, i + 1].tointeger) and
            (StringGridPuzzle.Cells[j + 1, i + 1].tointeger < StringGridPuzzle.Cells[j + 1, i + 1 + 1].tointeger) and
            (StringGridPuzzle.Cells[j + 1, i + 1].tointeger < StringGridPuzzle.Cells[j + 1, i + 1 - 1].tointeger) then
            begin
              StringGridPuzzle.Cells[j + 1, i + 1] := '-10' + StringGridPuzzle.Cells[j + 1, i + 1];
              SpinEdit1.Value := SpinEdit1.Value + 1;
            end;
        end;
    end;
  SpinEdit1.OnChange := ButtonEtape2_1Click;
end;

procedure TForm3.ButtonEtape1_3Click(Sender: TObject);
var
  i: Integer;
  j: Integer;
  sum_of_the_risk_levels: Integer;
begin
  sum_of_the_risk_levels := 0;
  for i := 0 to StringGridPuzzle.RowCount - 2 do
    begin
      for j := 0 to StringGridPuzzle.ColCount - 2 do
        begin
          if StringGridPuzzle.Cells[j + 1, i + 1].tointeger < -0 then
            sum_of_the_risk_levels := sum_of_the_risk_levels + 1 - (StringGridPuzzle.Cells[j + 1, i + 1].tointeger + 100)

        end;
    end;
  LabeledEditResultPart1.Text := sum_of_the_risk_levels.ToString;
end;

procedure TForm3.ButtonEtape2_1Click(Sender: TObject);

var
  i, k, l: Integer;
  j: Integer;
  CompteBasin: Integer;
  MultiplyResult: Int64;
begin
  StringGridBasin.RowCount := 1;
  for i := 0 to StringGridPuzzle.RowCount - 2 do
    begin
      for j := 0 to StringGridPuzzle.ColCount - 2 do
        begin
          StringGridDemineur.Cells[j + 1, i + 1] := '';
        end;
    end;

  for i := 0 to StringGridPuzzle.RowCount - 2 do
    begin
      for j := 0 to StringGridPuzzle.ColCount - 2 do
        begin
          if (StringGridBasin.RowCount <= SpinEdit1.Value) and (StringGridPuzzle.Cells[j + 1, i + 1].tointeger < -0) then
            begin

              for k := 0 to StringGridPuzzle.RowCount - 2 do
                begin
                  for l := 0 to StringGridPuzzle.ColCount - 2 do
                    begin
                      StringGridDemineur.Cells[l + 1, k + 1] := '';
                    end;
                end;
              StringGridDemineur.Cells[j + 1, i + 1] := '1';
              StringGridDemineur.Col := j + 1;
              StringGridDemineur.Row := i + 1;
              AffecterVoisin(j, i);

              CompteBasin := 0;
              for k := 0 to StringGridPuzzle.RowCount - 2 do
                begin
                  for l := 0 to StringGridPuzzle.ColCount - 2 do
                    begin
                      if StringGridDemineur.Cells[l + 1, k + 1] <> '' then
                        CompteBasin := CompteBasin + 1;

                    end;
                end;

              StringGridBasin.Cells[1, StringGridBasin.RowCount - 1] := CompteBasin.ToString;
              StringGridBasin.RowCount := StringGridBasin.RowCount + 1
            end;
          LabelEtape2_1Progress.Caption := (StringGridBasin.RowCount - 1).ToString + '/' + SpinEdit1.Value.ToString;
          Application.ProcessMessages;

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
      MultiplyResult := MultiplyResult * StringGridBasin.Cells[1, i].tointeger;

    end;
  LabeledEditResultPart2.Text := MultiplyResult.ToString;

end;

procedure TForm3.AffecterVoisin(j, i: Integer);
var
  RectSelection: TGridRect;
begin

  RectSelection := StringGridDemineur.Selection;
  RectSelection.Left := j + 1;
  RectSelection.Top := i + 1;
  RectSelection.Right := j + 1;
  RectSelection.Bottom := i + 1;

  // change la selection courante pour voir le remplissage en 'direct' !
  if
    (StringGridBasin.RowCount >= SpinEdit1.Value - 3)
    or (StringGridBasin.RowCount <= 3)
  then // seulement si on proche du début ou de la fin du calcul (ou si on en a pas beaucoup comme dans l'exemple)
    begin
      StringGridDemineur.Col := j + 1;
      StringGridDemineur.Row := i + 1;
      Application.ProcessMessages;
      sleep(100);
    end;
  VoisinDecalage(j, i, +1, 0);
  VoisinDecalage(j, i, -1, 0);
  VoisinDecalage(j, i, 0, +1);
  VoisinDecalage(j, i, 0, -1);

end;

procedure TForm3.VoisinDecalage(j: Integer; i: Integer; OffsetVert: Integer; OffsetHorz: Integer);
begin
  try
    if (StringGridPuzzle.Cells[j + 1, i + 1].tointeger < StringGridPuzzle.Cells[j + 1 + OffsetHorz, i + 1 + OffsetVert].tointeger)
      and (StringGridPuzzle.Cells[j + 1 + OffsetHorz, i + 1 + OffsetVert].tointeger < 9) // on doit s'arreter et ne pas compter les 9
      and (StringGridDemineur.Cells[j + 1 + OffsetHorz, i + 1 + OffsetVert] = '') // si cette case dans la grid demineur est déjà rempli c'est qu'on est déjà passé par là
    then
      begin
        StringGridDemineur.Cells[j + 1 + OffsetHorz, i + 1 + OffsetVert] := (OffsetVert + 2 + OffsetHorz + 10 + 2).ToString;
        // la séquence OffsetVert + 2 + OffsetHorz + 10 + 2 permet d'avoir 1 3 11 et 13 dans les voisinages
        AffecterVoisin(j + OffsetHorz, i + OffsetVert);
      end;
  except
    ShowMessage(StringGridDemineur.Cells[j + 1, i + 1]);
  end;
end;

end.
