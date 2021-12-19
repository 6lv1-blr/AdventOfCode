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
    ButtonEtape1_3: TButton;
    ButtonEtape2_1: TButton;
    ButtonEtape2_2: TButton;
    ButtonEtape2_3: TButton;
    ButtonEtape2_4: TButton;
    ButtonEtape2_5: TButton;
    Button1: TButton;
    LabeledEditResultPart1: TLabeledEdit;
    Memo1: TMemo;
    StringGrid1: TStringGrid;
    LabeledEditResultPart2: TLabeledEdit;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ButtonEtape1_2Click(Sender: TObject);
    procedure ButtonEtape1_3Click(Sender: TObject);
    procedure ButtonEtape1_1Click(Sender: TObject);
    procedure ButtonEtape2_1Click(Sender: TObject);
    procedure ButtonEtape2_2Click(Sender: TObject);
    procedure ButtonEtape2_3Click(Sender: TObject);
    procedure ButtonEtape2_4Click(Sender: TObject);
    procedure ButtonEtape2_5Click(Sender: TObject);
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
  StringGridPuzzle.RowCount := MemoInputSample.Lines.Count + 2;
  StringGridPuzzle.ColCount := 4;
  StringGridPuzzle.ColWidths[1] := StringGridPuzzle.ColWidths[0] * 4;
  StringGrid1.ColWidths[0] := StringGridPuzzle.ColWidths[0] * 4;
  try
    for i := 0 to MemoInputSample.Lines.Count - 1 do
      begin
        StringGridPuzzle.Cells[1, i + 1] := MemoInputSample.Lines[i];

      end;

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

  StringGridPuzzle.RowCount := MemoInputPuzzle.Lines.Count + 2;
  StringGridPuzzle.ColCount := 4;
  StringGridPuzzle.ColWidths[1] := StringGridPuzzle.ColWidths[0] * 4;
  StringGrid1.ColWidths[0] := StringGridPuzzle.ColWidths[0] * 4;

  try
    for i := 0 to MemoInputPuzzle.Lines.Count - 1 do
      begin
        StringGridPuzzle.Cells[1, i + 1] := MemoInputPuzzle.Lines[i];

      end;

  finally

  end;

end;

procedure TForm4.ButtonEtape1_2Click(Sender: TObject);
var
  k: Integer;
  i: Integer;
begin
  // si ouvre augmente d'un quoiqu'il advienne
  // si on ferme, il faut que le compte soit pair ??
  // supprime en boucle les paires :
  for i := 0 to StringGridPuzzle.RowCount - 1 do
    begin
      for k := 0 to 100 do
        begin
          StringGridPuzzle.Cells[1, i + 1] := TRegEx.Replace(StringGridPuzzle.Cells[1, i + 1], '\[\]', '');
          StringGridPuzzle.Cells[1, i + 1] := TRegEx.Replace(StringGridPuzzle.Cells[1, i + 1], '\(\)', '');
          StringGridPuzzle.Cells[1, i + 1] := TRegEx.Replace(StringGridPuzzle.Cells[1, i + 1], '\{\}', '');
          StringGridPuzzle.Cells[1, i + 1] := TRegEx.Replace(StringGridPuzzle.Cells[1, i + 1], '<>', '');

        end;
    end;
end;

procedure TForm4.ButtonEtape1_3Click(Sender: TObject);
var
  k: Integer;
  i: Integer;
  sumsyntaxerror: Integer;
begin
  // si ouvre augmente d'un quoiqu'il advienne
  // si on ferme, il faut que le compte soit pair ??
  // supprime en boucle les paires :
  sumsyntaxerror := 0;
  for i := 0 to StringGridPuzzle.RowCount - 1 do
    begin
      for k := 0 to 0 do
        begin
          StringGridPuzzle.Cells[1, i + 1] := TRegEx.Replace(StringGridPuzzle.Cells[1, i + 1], '.*?(.)([\)\}\]>]).*', 'trouvé : $2 attendu inverse $1');
          if TRegEx.Match(StringGridPuzzle.Cells[1, i + 1], 'trouvé...>.*').Success then
            StringGridPuzzle.Cells[2, i + 1] := '25137';
          if TRegEx.Match(StringGridPuzzle.Cells[1, i + 1], 'trouvé...\].*').Success then
            StringGridPuzzle.Cells[2, i + 1] := '57';
          if TRegEx.Match(StringGridPuzzle.Cells[1, i + 1], 'trouvé...\).*').Success then
            StringGridPuzzle.Cells[2, i + 1] := '3';
          if TRegEx.Match(StringGridPuzzle.Cells[1, i + 1], 'trouvé...\}.*').Success then
            StringGridPuzzle.Cells[2, i + 1] := '1197';
          if StringGridPuzzle.Cells[2, i + 1] <> '' then
            sumsyntaxerror := StringGridPuzzle.Cells[2, i + 1].ToInteger + sumsyntaxerror
        end;
    end;
  LabeledEditResultPart1.Text := sumsyntaxerror.ToString;
end;

procedure TForm4.ButtonEtape2_1Click(Sender: TObject);
var
  k: Integer;
  i: Integer;
  sumsyntaxerror: Integer;
begin
  sumsyntaxerror := 0;
  for i := 0 to StringGridPuzzle.RowCount - 1 do
    begin
      for k := 0 to 0 do
        begin
          if not TRegEx.Match(StringGridPuzzle.Cells[1, i + 1], 'trouvé.*').Success then
            begin
              StringGridPuzzle.Cells[3, i + 1] := StringGridPuzzle.Cells[1, i + 1];
              StringGridPuzzle.Cells[3, i + 1] := TRegEx.Replace(StringGridPuzzle.Cells[3, i + 1], '\(', '1');
              StringGridPuzzle.Cells[3, i + 1] := TRegEx.Replace(StringGridPuzzle.Cells[3, i + 1], '\[', '2');
              StringGridPuzzle.Cells[3, i + 1] := TRegEx.Replace(StringGridPuzzle.Cells[3, i + 1], '\{', '3');
              StringGridPuzzle.Cells[3, i + 1] := TRegEx.Replace(StringGridPuzzle.Cells[3, i + 1], '<', '4');

            end;

        end;

    end;
end;

procedure TForm4.ButtonEtape2_2Click(Sender: TObject);

var
  k: Integer;
  i: Integer;
  sumsyntaxerror: uint64;
begin
  sumsyntaxerror := 0;
  StringGridPuzzle.ColCount := 5;
  StringGrid1.RowCount := 1;
  for i := 0 to StringGridPuzzle.RowCount - 1 do
    begin
      sumsyntaxerror := 0;
      for k := length(StringGridPuzzle.Cells[3, i + 1]) - 1 downto 0 do
        begin
          try
            sumsyntaxerror := sumsyntaxerror * 5 + strtoint(StringGridPuzzle.Cells[3, i + 1][k + 1]);

          except
            ShowMessage('erreur' + i.ToString + '   ' + k.ToString);

          end;
        end;
      StringGridPuzzle.Cells[4, i + 1] := sumsyntaxerror.ToString;
      if sumsyntaxerror > 0 then
        begin
          StringGrid1.Cells[0, StringGrid1.RowCount - 1] := sumsyntaxerror.ToString;
          StringGrid1.RowCount := StringGrid1.RowCount + 1;
        end;
    end;
  StringGrid1.RowCount := StringGrid1.RowCount - 1;
end;

procedure TForm4.ButtonEtape2_3Click(Sender: TObject);
begin
  Memo1.Clear;
  Memo1.Lines := StringGridPuzzle.Cols[4];
end;

function StringListSortCompare(List: TStringList; Index1, Index2: Integer): Int64;
begin
  Result := StrToInt64Def(List[Index2], 0) - StrToInt64Def(List[Index1], 0)
end;

procedure TForm4.ButtonEtape2_4Click(Sender: TObject);
var
  i: Integer;
  Buffer: TStringList;
  MultiplyResult: Integer;
begin
  Buffer := TStringList.Create;
  for i := 0 to StringGrid1.RowCount - 1 do
    begin
      Buffer.Assign(StringGrid1.Cols[i]);
      // tri par ordre ascii par défaut
      // Buffer.Sort;
      // tri par nombre
      Buffer.CustomSort(@StringListSortCompare);
      StringGrid1.Cols[i].Assign(Buffer);
    end;
  FreeAndNil(Buffer);

end;

procedure TForm4.ButtonEtape2_5Click(Sender: TObject);
begin
  Memo1.Clear;
  Memo1.Lines := StringGrid1.Cols[0];
  LabeledEditResultPart2.Text := Memo1.Lines[Memo1.Lines.Count div 2]
end;

end.
