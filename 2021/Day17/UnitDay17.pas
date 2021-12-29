unit UnitDay17;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.Grids, math, System.RegularExpressions;

type
  TForm7 = class(TForm)
    Label1: TLabel;
    ButtonEtape1_1: TButton;
    MemoInputPuzzle: TMemo;
    ButtonEtape1_2: TButton;
    MemoInputSample: TMemo;
    ButtonEtape1_1Sample: TButton;
    Button2: TButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Splitter1: TSplitter;
    StringGridAlgoImage: TStringGrid;
    StringGridPuzzle: TStringGrid;
    TabSheet2: TTabSheet;
    TreeView1: TTreeView;
    TabSheet3: TTabSheet;
    MemoBinaire: TMemo;
    LabeledEditResultPart1: TLabeledEdit;
    LabeledEditResultPart2: TLabeledEdit;
    procedure ButtonEtape1_1SampleClick(Sender: TObject);
    procedure ButtonEtape1_2Click(Sender: TObject);
    procedure ButtonEtape1_1Click(Sender: TObject);
  private
    nbstep: Integer;
    nballume: Integer;
    InputData: string;
    function ValeurVoisin(j: Integer; i: Integer): Integer;
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form7: TForm7;

implementation

{$R *.dfm}


procedure TForm7.ButtonEtape1_1Click(Sender: TObject);
begin
  InputData := MemoInputPuzzle.Lines[0];
  ButtonEtape1_2Click(Sender);
end;

procedure TForm7.ButtonEtape1_1SampleClick(Sender: TObject);
begin
  InputData := MemoInputSample.Lines[0];
  ButtonEtape1_2Click(Sender);
end;

procedure TForm7.ButtonEtape1_2Click(Sender: TObject);
var
  xVelocity: Integer;
  yVelocity: Integer;
  xMin: Integer;
  xMax: Integer;
  yMin: Integer;
  yMax: Integer;
  xMinString: String;
  xMaxString: String;
  yMinString: String;
  yMaxString: String;
  xCurrent: Integer;
  yCurrent: Integer;
  impact: Boolean;
  yCurrentVelocity: Integer;
  xCurrentVelocity: Integer;
begin

  // Le y monte progressivement en ralentissant puis redescend de facon symétrique
  // du coup le y repasse obligatoirement par 0
  // le xvelocity min à 18 se trouve en cherchant quel n*(n+1)/2 tape dans notre intervalle
  // mais je fait commencer à 1 car peu gourmand en temps

  xMinString := Tregex.Replace(InputData, '.*x=(-?\d+)\.\..*', '$1');
  xMaxString := Tregex.Replace(InputData, '.*x=\d+\.\.(-?\d+),.*', '$1');
  yMinString := Tregex.Replace(InputData, '.*y=(-?\d+)\.\..*', '$1');
  yMaxString := Tregex.Replace(InputData, '.*y=-?\d+\.\.(-?\d+)', '$1');
  StringGridPuzzle.RowCount := 1;
  xMin := xMinString.ToInteger;
  xMax := xMaxString.ToInteger;
  yMin := yMinString.ToInteger;
  yMax := yMaxString.ToInteger;

  // target area: x=155..182, y=-117..-67
  // l'étape 1 est assez simple car 1 seule équation
  LabeledEditResultPart1.Text := ((abs(yMin) - 1) * (abs(yMin) - 1 + 1) / 2).tostring;

  for xVelocity := 1 to xMax do
    begin

      for yVelocity := yMin - 1 to -yMin - 1 do
        begin
          xCurrent := 0;
          yCurrent := 0;
          xCurrentVelocity := xVelocity;
          yCurrentVelocity := yVelocity;

          impact := false;
          while (xCurrent <= xMax) and (yCurrent >= yMin) do
            begin
              xCurrent := xCurrent + xCurrentVelocity;
              yCurrent := yCurrent + yCurrentVelocity;
              xCurrentVelocity := max(0, xCurrentVelocity - 1);
              yCurrentVelocity := yCurrentVelocity - 1;
              if (xCurrent >= xMin) and (xCurrent <= xMax) and (yCurrent >= yMin) and (yCurrent <= yMax) then
                impact := True;        //quelquefois on peut passer à coté comme 17 -4 dans l'exemple
            end;
          if impact then
            Begin
              StringGridPuzzle.RowCount := StringGridPuzzle.RowCount + 1;
              StringGridPuzzle.Cells[1, StringGridPuzzle.RowCount - 1] := xVelocity.tostring;
              StringGridPuzzle.Cells[2, StringGridPuzzle.RowCount - 1] := yVelocity.tostring;
              StringGridPuzzle.Cells[0, StringGridPuzzle.RowCount - 1] := (StringGridPuzzle.RowCount - 1).tostring;
            End;
        end;
    end;
  LabeledEditResultPart2.Text := StringGridPuzzle.Cells[0, StringGridPuzzle.RowCount - 1];

end;

function TForm7.ValeurVoisin(j: Integer; i: Integer): Integer;
begin

end;

end.
