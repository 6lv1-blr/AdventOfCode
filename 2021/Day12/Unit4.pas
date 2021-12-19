unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids, RegularExpressions,
  Vcl.Mask, Vcl.ExtCtrls;

type
  TForm4 = class(TForm)
    MemoInputPuzzle: TMemo;
    MemoInputSample: TMemo;
    Button2: TButton;
    StringGridPuzzle: TStringGrid;
    ButtonEtape1_1: TButton;
    ButtonEtape1_2: TButton;
    ButtonEtape2_1: TButton;
    Button1: TButton;
    LabeledEditResultPart1: TLabeledEdit;
    Memo1: TMemo;
    Memo2: TMemo;
    ButtonEtape2_2: TButton;
    Label1: TLabel;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ButtonEtape1_2Click(Sender: TObject);
    procedure ButtonEtape1_1Click(Sender: TObject);
    procedure ButtonEtape2_1Click(Sender: TObject);
    function ParcoursGraphe(const ListePath: TStringList): TStringList;
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}


procedure TForm4.Button1Click(Sender: TObject);
var
  i: Integer;
  j: Integer;
  k: Integer;
begin
  StringGridPuzzle.Cols[1].Clear;
  StringGridPuzzle.Cols[2].Clear;
  StringGridPuzzle.Cols[3].Clear;
  StringGridPuzzle.Cols[4].Clear;

  StringGridPuzzle.RowCount := MemoInputSample.Lines.Count + 3;
  StringGridPuzzle.ColCount := 4;
  StringGridPuzzle.ColWidths[1] := StringGridPuzzle.ColWidths[0] * 4;

  try
    for i := 0 to MemoInputSample.Lines.Count - 1 do
      begin
        StringGridPuzzle.Cells[1, i + 3] := MemoInputSample.Lines[i];

      end;
    StringGridPuzzle.Cells[1, 2] := 'Twice>';
    StringGridPuzzle.Cells[1, 0] := 'start';
    StringGridPuzzle.Cells[1, 1] := 'start';

  finally

  end;

end;

procedure TForm4.Button2Click(Sender: TObject);
begin
  MemoInputPuzzle.Clear;
  MemoInputPuzzle.PasteFromClipboard;
end;

procedure TForm4.ButtonEtape1_1Click(Sender: TObject);
var
  i: Integer;
  j: Integer;
  k: Integer;
begin
  StringGridPuzzle.Cols[1].Clear;
  StringGridPuzzle.Cols[2].Clear;
  StringGridPuzzle.Cols[3].Clear;
  StringGridPuzzle.Cols[4].Clear;

  StringGridPuzzle.RowCount := MemoInputPuzzle.Lines.Count + 3;
  StringGridPuzzle.ColCount := 4;
  StringGridPuzzle.ColWidths[1] := StringGridPuzzle.ColWidths[0] * 4;

  try
    for i := 0 to MemoInputPuzzle.Lines.Count - 1 do
      begin
        StringGridPuzzle.Cells[1, i + 3] := MemoInputPuzzle.Lines[i];

      end;
    StringGridPuzzle.Cells[1, 2] := 'Twice>';
    StringGridPuzzle.Cells[1, 0] := 'start';
    StringGridPuzzle.Cells[1, 1] := 'start';

  finally

  end;

end;

procedure TForm4.ButtonEtape1_2Click(Sender: TObject);
var
  k: Integer;
  i: Integer;
  ListePath: TStringList;
begin
  // si ouvre augmente d'un quoiqu'il advienne
  // si on ferme, il faut que le compte soit pair ??
  // supprime en boucle les paires :
  Memo2.Clear;
  Application.ProcessMessages;
  ListePath := TStringList.Create();
  for i := 0 to StringGridPuzzle.RowCount do
    ListePath.Add(StringGridPuzzle.Cells[1, i]);
  ParcoursGraphe(ListePath);
  LabeledEditResultPart1.Text := Memo2.Lines.Count.ToString;
end;

function TForm4.ParcoursGraphe(const ListePath: TStringList): TStringList;
var
  ValeurCourante: string;
  i: Integer;
  j: Integer;
  ListePathPossible: TStringList;
  CountAvantSuppr: Integer;
  ValeurPrecedente: String;
  IndexJDeleted: Boolean;
begin
  try
    ValeurPrecedente := ListePath.Strings[0];
    ValeurCourante := ListePath.Strings[1];
    ListePath.Strings[2] := ListePath.Strings[2] + '>' + ValeurCourante;

    // listepath[0] = Cave Précédente
    // listepath[1] = Cave en cours de découverte
    // listepath[2] = Chemin parcouru
    // si end, alors stop et ajoute le chemin parcouru
    // s'arrete si c'est la fin
    if ValeurCourante = 'end' then
      begin
        Memo2.Lines.Add(ListePath.Strings[2]);
        LabeledEditResultPart1.Text := Memo2.Lines.Count.ToString;
        Application.ProcessMessages;
      end
    else
      for i := 3 to ListePath.Count - 1 do
        begin
          if ListePath.Strings[2].StartsWith('Twice') and TRegEx.IsMatch(ValeurCourante, '^[a-z]*$') and TRegEx.IsMatch(ListePath.Strings[2], '(>' + ValeurCourante + '>).*') then
            begin
              // chemin qui n'atteint pas end
              // Memo2.Lines.Add('Abort : +' + ListePath.Strings[2]);
              // Memo1.Lines[0] := 'Abort : +' + ListePath.Strings[2];
              // déjaVisitée
            end
          else
            if TRegEx.IsMatch(ListePath.Strings[i], '(.+-)?(' + ValeurCourante + ')(-.+)?') then
            begin

              ListePath.Strings[1] := TRegEx.Replace(TRegEx.Replace(ListePath.Strings[i], '(.+-)?(' + ValeurCourante + ')(-.+)?', '$1$3'), '-', '');

              // supprime des possibilités tous les chemins si la cave est en minuscule.
              ListePathPossible := TStringList.Create;
              ListePathPossible.assign(ListePath);

              // si on visite une case minuscule
              if TRegEx.IsMatch(ValeurPrecedente, '^[a-z]*$') then
                try
                  CountAvantSuppr := ListePathPossible.Count;
                  for j := CountAvantSuppr - 1 downto 3 do
                    begin
                      if (TRegEx.IsMatch(ListePath.Strings[j], '(.+-)(' + ValeurPrecedente + ')'))
                        or (TRegEx.IsMatch(ListePath.Strings[j], '(.+-)(' + ValeurPrecedente + ')(.+-)'))
                      then
                        begin // si on l'a déjà visité deux fois
                          if (TRegEx.IsMatch(ListePathPossible.Strings[2], '^Twice')) then
                            ListePathPossible.Delete(j)
                          else if ValeurPrecedente = 'start' then
                            begin

                              ListePathPossible.Delete(j);
                            end;
                        end
                      else if ListePath.Strings[j].Contains('start-') then
                        begin
                          ListePathPossible.Delete(j);
                        end;

                    end;
                finally

                end;
              // si on visite une case minuscule et qu'on l'avait déjà visité interdit toute autres doublons
              if TRegEx.IsMatch(ValeurCourante, '^[a-z]*$') then
                if not(TRegEx.IsMatch(ListePathPossible.Strings[2], '^Twice')) then
                  if TRegEx.IsMatch(ListePathPossible.Strings[2] + '>', '(>' + ValeurCourante + '>).*\1') then
                    begin
                      ListePathPossible.Strings[2] := 'Twice>' + ListePathPossible.Strings[2] + '>Twice';
                    end;
              ListePathPossible.Strings[0] := ValeurCourante;
              ParcoursGraphe(ListePathPossible);
            end;
        end;
  finally

  end;
end;

procedure TForm4.ButtonEtape2_1Click(Sender: TObject);
var
  i: Integer;
  j: Integer;
  k: Integer;
begin

  StringGridPuzzle.Cells[1, 2] := '';
  StringGridPuzzle.Cells[1, 0] := 'start';
  StringGridPuzzle.Cells[1, 1] := 'start';

end;

end.
