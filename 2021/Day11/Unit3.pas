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
    ButtonEtape1_1: TButton;
    SpinEditEtape: TSpinEdit;
    MemoInputPuzzle: TMemo;
    ButtonEtape1_2: TButton;
    ButtonEtape2_2: TButton;
    MemoInputSample: TMemo;
    Button1: TButton;
    Label1: TLabel;
    Button2: TButton;
    Label2: TLabel;
    Image1: TImage;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Splitter1: TSplitter;
    StringGridDemineur: TStringGrid;
    StringGridPuzzle: TStringGrid;
    LabeledEditResultPart1: TLabeledEdit;
    LabeledEditResultPart2: TLabeledEdit;
    SpinEditNbFlash: TSpinEdit;
    LabelnbFlash: TLabel;
    SpinEdit1: TSpinEdit;
    Label3: TLabel;
    CheckBox1: TCheckBox;
    SpinEdit2: TSpinEdit;
    Label4: TLabel;
    Button3: TButton;
    StatusBar1: TStatusBar;
    procedure ButtonEtape1_1Click(Sender: TObject);
    procedure ButtonEtape1_2Click(Sender: TObject);
    procedure ButtonEtape1_3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    NbFlashArray: Integer;
    procedure AffecterVoisin(j, i: Integer);
    procedure VoisinDecalage(j: Integer; i: Integer; OffsetVert: Integer; OffsetHorz: Integer);
    procedure VoisinDecalageArray(var GridPuzzle: Array2dint8; j: Integer; i: Integer; OffsetVert: Integer; OffsetHorz: Integer);
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
  SpinEditEtape.Value := 0;
  SpinEditNbFlash.Value := 0;
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
    for i := 0 to StringGridPuzzle.RowCount - 3 do
      begin
        for j := 0 to StringGridPuzzle.ColCount - 3 do
          begin

            StringGridDemineur.Cells[j + 1, i + 1] := '';
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
  nbEtape: Integer;
  SumFlashsimultane: Integer;
  g:  array of int8;

begin
  TempsDebut := Horloge;
  // Version cumul en mode tableau de byte plus propre et plus rapide
  // la version en stringgrid n'est pas optimale car fait beaucoup de conversion String->Integer, Integer->String
  // de plus à chaque fois que l'on modifie une case, la page actualise l'affichage.

  // Etape 1.1
  GridPuzzleRowCount := MemoInputPuzzle.Lines.Count + 2;
  GridPuzzleColCount := length(MemoInputPuzzle.Lines[0]) + 2;
  SetLength(GridPuzzle, GridPuzzleRowCount, GridPuzzleColCount); // toujours 2 colonnes et 2 lignes supplémentaire pour ne pas tester les frontières
  nbEtape := 0;
  NbFlashArray := 0;
  // remplissage à 99 de la frontière             permet d'eviter les tests >0 < colmax < lignemax
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

  for i := 1 to GridPuzzleRowCount - 2 do
    begin
      for j := 1 to GridPuzzleColCount - 2 do
        GridPuzzle[i, j] := strtoint(MemoInputPuzzle.Lines[i - 1][j]);
    end;
  while True do // break by finding all lighning
    begin
      nbEtape := nbEtape + 1;
      // monte tout le monde de 1
      for i := 1 to GridPuzzleRowCount - 2 do
        begin
          for j := 1 to GridPuzzleColCount - 2 do
            begin
              if GridPuzzle[j, i] >= 0 then // sinon a déjà flashé
                GridPuzzle[j, i] := (GridPuzzle[j, i] + 1);
              if (GridPuzzle[j, i] >= 10) then
                begin
                  // met à -1 ceux qui ont déjà flashé une fois
                  // mon erreur a été de mal lire l'énoncé au début, je pensais qu'on pouvait flashé plusieurs fois...
                  GridPuzzle[j, i] := -1;
                  NbFlashArray := NbFlashArray + 1;

                  VoisinDecalageArray(GridPuzzle, j, i, -1, -1);
                  VoisinDecalageArray(GridPuzzle, j, i, -1, 0);
                  VoisinDecalageArray(GridPuzzle, j, i, -1, +1);
                  VoisinDecalageArray(GridPuzzle, j, i, 0, +1);
                  VoisinDecalageArray(GridPuzzle, j, i, +1, +1);
                  VoisinDecalageArray(GridPuzzle, j, i, +1, 0);
                  VoisinDecalageArray(GridPuzzle, j, i, +1, -1);
                  VoisinDecalageArray(GridPuzzle, j, i, 0, -1);
                end;
            end;
        end;
      // remet tous ceux qui ont flashé à 0
      // compte combien de flash simultané
      SumFlashsimultane := 0;
      for i := 1 to GridPuzzleRowCount - 2 do
        begin
          for j := 1 to GridPuzzleColCount - 2 do
            begin
              if (GridPuzzle[j, i] < 0) then
                begin
                  GridPuzzle[j, i] := 0;
                  SumFlashsimultane := SumFlashsimultane + 1;
                end;
            end;
        end;

      if nbEtape = 100 then
        LabeledEditResultPart1.Text := NbFlashArray.ToString;
      // si le nombre de flash est égal à la taille du tableau
      if (SumFlashsimultane = (GridPuzzleRowCount - 2) * (GridPuzzleColCount - 2)) then
        begin
          LabeledEditResultPart2.Text := nbEtape.ToString;
          break;
        end;
    end;
  TempsFin := Horloge;
end;

procedure TForm3.ButtonEtape1_1Click(Sender: TObject);
var
  i: Integer;
  j: Integer;
begin
  SpinEditEtape.Value := 0;
  SpinEditNbFlash.Value := 0;
  StringGridPuzzle.DefaultColWidth := 25;
  StringGridPuzzle.DefaultRowHeight := 15;
  StringGridPuzzle.Font.Size := 8;
  StringGridDemineur.DefaultColWidth := 25;
  StringGridDemineur.DefaultRowHeight := 15;
  StringGridDemineur.Font.Size := 8;

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
    for i := 0 to StringGridPuzzle.RowCount - 3 do
      begin
        for j := 0 to StringGridPuzzle.ColCount - 3 do
          begin

            StringGridDemineur.Cells[j + 1, i + 1] := '';
          end;

      end;

  finally

  end;
end;

procedure TForm3.ButtonEtape1_2Click(Sender: TObject);
var
  i: Integer;
  j: Integer;
  k: Integer;
  SumFlashsimultane: uint;
begin
  // incrémente toute les cellules de 1
  // si 9 boucle sur les voisin
  for k := 1 to SpinEdit2.Value do
    begin
      SpinEditEtape.Value := SpinEditEtape.Value + 1;
      SpinEditEtape.OnChange := nil;
      // monte tout le monde de 1
      for i := 0 to StringGridPuzzle.RowCount - 3 do
        begin
          for j := 0 to StringGridPuzzle.ColCount - 3 do
            begin
              if StringGridPuzzle.Cells[j + 1, i + 1].tointeger >= 0 then // sinon a déjà flashé
                StringGridPuzzle.Cells[j + 1, i + 1] := (StringGridPuzzle.Cells[j + 1, i + 1].tointeger + 1).ToString;
              if (StringGridPuzzle.Cells[j + 1, i + 1].tointeger >= 10) then
                begin
                  // met à -1 ceux qui ont déjà flashé une fois
                  // mon erreur a été de mal lire l'énoncé au début, je pensais qu'on pouvait flashé plusieurs fois...
                  StringGridPuzzle.Cells[j + 1, i + 1] := '-1';
                  SpinEditNbFlash.Value := SpinEditNbFlash.Value + 1;
                  VoisinDecalage(j, i, -1, -1);
                  VoisinDecalage(j, i, -1, 0);
                  VoisinDecalage(j, i, -1, +1);
                  VoisinDecalage(j, i, 0, +1);
                  VoisinDecalage(j, i, +1, +1);
                  VoisinDecalage(j, i, +1, 0);
                  VoisinDecalage(j, i, +1, -1);
                  VoisinDecalage(j, i, 0, -1);
                end;
            end;
        end;
      // remet tous ceux qui ont flashé à 0
      // compte combien de flash simultané
      SumFlashsimultane := 0;
      for i := 0 to StringGridPuzzle.RowCount - 3 do
        begin
          for j := 0 to StringGridPuzzle.ColCount - 3 do
            begin

              if (StringGridPuzzle.Cells[j + 1, i + 1].tointeger < 0) then
                begin
                  StringGridPuzzle.Cells[j + 1, i + 1] := '0';
                  if StringGridDemineur.Cells[j + 1, i + 1] = '' then
                    StringGridDemineur.Cells[j + 1, i + 1] := '1'
                  else
                    StringGridDemineur.Cells[j + 1, i + 1] := (StringGridDemineur.Cells[j + 1, i + 1].tointeger + 1).ToString;
                  SumFlashsimultane := SumFlashsimultane + 1;
                end;

            end;

        end;
      SpinEdit1.Value := SumFlashsimultane;
      if k = 100 then
        LabeledEditResultPart1.Text := SpinEditNbFlash.Value.ToString;
      if CheckBox1.Checked
        and
      // si le nombre de flash est égal à la taille du tableau
        (SumFlashsimultane = (StringGridPuzzle.RowCount - 2) * (StringGridPuzzle.ColCount - 2))
      then
        begin
          LabeledEditResultPart2.Text := k.ToString;
          break;
        end;
    end;
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

function StringListSortCompare(List: TStringList; Index1, Index2: Integer): Integer;
begin
  Result := StrToIntDef(List[Index2], 0) - StrToIntDef(List[Index1], 0)
end;

procedure TForm3.AffecterVoisin(j, i: Integer);
begin

end;

procedure TForm3.VoisinDecalage(j: Integer; i: Integer; OffsetVert: Integer; OffsetHorz: Integer);
begin
  try
    // change la selection courante pour voir le remplissage en 'direct' !
    if
      (SpinEditEtape.Value < 3)
    then // seulement si on proche du début ou de la fin du calcul (ou si on en a pas beaucoup comme dans l'exemple)
      begin
        StringGridPuzzle.Col := j + 1 + OffsetHorz;
        StringGridPuzzle.Row := i + 1 + OffsetVert;
        Application.ProcessMessages;
        sleep(10);
      end;

    if StringGridPuzzle.Cells[j + 1 + OffsetHorz, i + 1 + OffsetVert] <> '999' then
      if StringGridPuzzle.Cells[j + 1 + OffsetHorz, i + 1 + OffsetVert].tointeger >= 0 then // a déjà flashé
        begin
          StringGridPuzzle.Cells[j + 1 + OffsetHorz, i + 1 + OffsetVert] := (StringGridPuzzle.Cells[j + 1 + OffsetHorz, i + 1 + OffsetVert].tointeger + 1).ToString;
          if (StringGridPuzzle.Cells[j + 1 + OffsetHorz, i + 1 + OffsetVert].tointeger >= 10) then
            begin
              StringGridPuzzle.Cells[j + 1 + OffsetHorz, i + 1 + OffsetVert] := '-1';
              SpinEditNbFlash.Value := SpinEditNbFlash.Value + 1;

              VoisinDecalage(j + OffsetHorz, i + OffsetVert, -1, -1);
              VoisinDecalage(j + OffsetHorz, i + OffsetVert, -1, 0);
              VoisinDecalage(j + OffsetHorz, i + OffsetVert, -1, +1);
              VoisinDecalage(j + OffsetHorz, i + OffsetVert, 0, +1);
              VoisinDecalage(j + OffsetHorz, i + OffsetVert, +1, +1);
              VoisinDecalage(j + OffsetHorz, i + OffsetVert, +1, 0);
              VoisinDecalage(j + OffsetHorz, i + OffsetVert, +1, -1);
              VoisinDecalage(j + OffsetHorz, i + OffsetVert, 0, -1);
            end;

        end;
  except
    ShowMessage(StringGridDemineur.Cells[j + 1, i + 1]);
  end;

end;

procedure TForm3.VoisinDecalageArray(var GridPuzzle: Array2dint8; j: Integer; i: Integer; OffsetVert: Integer; OffsetHorz: Integer);
begin
  try

    if GridPuzzle[j + OffsetHorz, i + OffsetVert] <> 99 then
      if GridPuzzle[j + OffsetHorz, i + OffsetVert] >= 0 then // a déjà flashé
        begin
          GridPuzzle[j + OffsetHorz, i + OffsetVert] := GridPuzzle[j + OffsetHorz, i + OffsetVert] + 1;
          if (GridPuzzle[j + OffsetHorz, i + OffsetVert] >= 10) then
            begin
              GridPuzzle[j + OffsetHorz, i + OffsetVert] := -1;
              NbFlashArray := NbFlashArray + 1;

              VoisinDecalageArray(GridPuzzle, j + OffsetHorz, i + OffsetVert, -1, -1);
              VoisinDecalageArray(GridPuzzle, j + OffsetHorz, i + OffsetVert, -1, 0);
              VoisinDecalageArray(GridPuzzle, j + OffsetHorz, i + OffsetVert, -1, +1);
              VoisinDecalageArray(GridPuzzle, j + OffsetHorz, i + OffsetVert, 0, +1);
              VoisinDecalageArray(GridPuzzle, j + OffsetHorz, i + OffsetVert, +1, +1);
              VoisinDecalageArray(GridPuzzle, j + OffsetHorz, i + OffsetVert, +1, 0);
              VoisinDecalageArray(GridPuzzle, j + OffsetHorz, i + OffsetVert, +1, -1);
              VoisinDecalageArray(GridPuzzle, j + OffsetHorz, i + OffsetVert, 0, -1);
            end;

        end;
  except
    ShowMessage(StringGridDemineur.Cells[j + 1, i + 1]);
  end;

end;

end.
