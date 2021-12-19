unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Samples.Spin,
  Vcl.ToolWin, Vcl.ComCtrls, System.Generics.Collections, Vcl.Mask, Vcl.ExtCtrls;

type
  TForm2 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    SpinEdit1: TSpinEdit;
    Label1: TLabel;
    Memo1: TMemo;
    StatusBar1: TStatusBar;
    ToolBar1: TToolBar;
    Button2: TButton;
    LabeledEdit1: TLabeledEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}


procedure TForm2.Button1Click(Sender: TObject);
var
  inputpuzzle: array of byte;
  i: uint64;
  longueurtab: uint64;
  jour: Integer;
begin
  setlength(inputpuzzle, 1);
  inputpuzzle := [1, 1, 3, 5, 1, 3, 2, 1, 5, 3, 1, 4, 4, 4, 1, 1, 1, 3, 1, 4, 3, 1, 2, 2, 2, 4, 1, 1, 5, 5, 4, 3, 1, 1, 1, 1, 1, 1, 3, 4, 1, 2, 2, 5, 1, 3, 5, 1, 3, 2, 5, 2, 2, 4, 1, 1, 1, 4, 3, 3, 3, 1, 1, 1, 1, 3, 1, 3, 3, 4, 4, 1, 1, 5, 4, 2, 2, 5, 4, 5, 2, 5, 1, 4, 2, 1, 5, 5, 5, 4, 3, 1, 1, 4, 1, 1, 3, 1, 3, 4, 1, 1, 2, 4, 2, 1, 1, 2, 3, 1, 1, 1, 4, 1, 3, 5, 5, 5, 5, 1, 2, 2, 1, 3, 1, 2, 5, 1, 4, 4, 5, 5, 4, 1, 1, 3, 3, 1, 5, 1, 1, 4, 1, 3, 3, 2, 4, 2, 4, 1, 5, 5, 1, 2, 5, 1, 5, 4, 3, 1, 1, 1, 5, 4, 1, 1, 4, 1, 2, 3, 1, 3, 5, 1, 1, 1, 2, 4, 5, 5, 5, 4, 1, 4, 1, 4, 1, 1, 1, 1, 1, 5, 2, 1, 1, 1, 1, 2, 3, 1, 4, 5, 5, 2, 4, 1, 5, 1, 3, 1, 4, 1, 1, 1, 4, 2, 3, 2, 3, 1, 5, 2, 1, 1, 4, 2, 1, 1, 5, 1, 4, 1, 1, 5, 5, 4, 3, 5, 1, 4, 3, 4, 4, 5, 1, 1, 1, 2, 1, 1, 2, 1, 1, 3, 2, 4, 5, 3, 5, 1, 2, 2, 2, 5, 1, 2, 5, 3, 5, 1, 1, 4, 5, 2, 1, 4, 1, 5, 2, 1, 1, 2, 5, 4, 1, 3, 5, 3, 1, 1, 3, 1, 4, 4, 2, 2, 4, 3, 1, 1];
  //
  // ne passe pas en mémoire, il faut faire en individuel et cumuler les scores par le nombre de présents
  // fait en python avec unique et counts à regarder

  for jour := 1 to SpinEdit1.Value do
    begin

      longueurtab := length(inputpuzzle);
      for i := 0 to longueurtab - 1 do
        begin
          if (inputpuzzle[i] = 0) then
            begin
              setlength(inputpuzzle, length(inputpuzzle) + 1);
              inputpuzzle[length(inputpuzzle) - 1] := 9;
            end;
        end;
      for i := 0 to length(inputpuzzle) - 1 do
        begin
          if (inputpuzzle[i] = 0) then
            inputpuzzle[i] := 6
          else
            inputpuzzle[i] := inputpuzzle[i] - 1
        end;

      Label1.Caption := 'Jour ' + jour.ToString + ' en cours de calcul';
      Application.ProcessMessages;
    end;
  Edit1.Text := length(inputpuzzle).ToString;
end;

procedure TForm2.Button2Click(Sender: TObject);
var
  inputpuzzle: array of byte;
  i: int64;
  inputpuzzleDict: TObjectdictionary<byte, uint64>;
  j: Integer;
  compteurpoisson: uint64;
begin
  inputpuzzleDict := TObjectdictionary<byte, uint64>.Create;
  for i := 0 to 9 do
    inputpuzzleDict.Add(i, 0);
  setlength(inputpuzzle, 1);
  inputpuzzle := [1, 1, 3, 5, 1, 3, 2, 1, 5, 3, 1, 4, 4, 4, 1, 1, 1, 3, 1, 4, 3, 1, 2, 2, 2, 4, 1, 1, 5, 5, 4, 3, 1, 1, 1, 1, 1, 1, 3, 4, 1, 2, 2, 5, 1, 3, 5, 1, 3, 2, 5, 2, 2, 4, 1, 1, 1, 4, 3, 3, 3, 1, 1, 1, 1, 3, 1, 3, 3, 4, 4, 1, 1, 5, 4, 2, 2, 5, 4, 5, 2, 5, 1, 4, 2, 1, 5, 5, 5, 4, 3, 1, 1, 4, 1, 1, 3, 1, 3, 4, 1, 1, 2, 4, 2, 1, 1, 2, 3, 1, 1, 1, 4, 1, 3, 5, 5, 5, 5, 1, 2, 2, 1, 3, 1, 2, 5, 1, 4, 4, 5, 5, 4, 1, 1, 3, 3, 1, 5, 1, 1, 4, 1, 3, 3, 2, 4, 2, 4, 1, 5, 5, 1, 2, 5, 1, 5, 4, 3, 1, 1, 1, 5, 4, 1, 1, 4, 1, 2, 3, 1, 3, 5, 1, 1, 1, 2, 4, 5, 5, 5, 4, 1, 4, 1, 4, 1, 1, 1, 1, 1, 5, 2, 1, 1, 1, 1, 2, 3, 1, 4, 5, 5, 2, 4, 1, 5, 1, 3, 1, 4, 1, 1, 1, 4, 2, 3, 2, 3, 1, 5, 2, 1, 1, 4, 2, 1, 1, 5, 1, 4, 1, 1, 5, 5, 4, 3, 5, 1, 4, 3, 4, 4, 5, 1, 1, 1, 2, 1, 1, 2, 1, 1, 3, 2, 4, 5, 3, 5, 1, 2, 2, 2, 5, 1, 2, 5, 3, 5, 1, 1, 4, 5, 2, 1, 4, 1, 5, 2, 1, 1, 2, 5, 4, 1, 3, 5, 3, 1, 1, 3, 1, 4, 4, 2, 2, 4, 3, 1, 1];
  //inputpuzzle := [3, 4, 3, 1, 2];
  try
    for i := 0 to length(inputpuzzle) - 1 do
      begin
        inputpuzzleDict[inputpuzzle[i]] := inputpuzzleDict[inputpuzzle[i]] + 1;
      end;
    for i := 1 to 256 do
      begin
        // on ajoute les poissons arrivé à 0 à 9 car il seront à 8 dans la boucle suivante
        inputpuzzleDict[9] := inputpuzzleDict[0];
        // il deviennent 7 car seront à 6 dansn la boucle et du coup se rajoute aux 7 existants
        inputpuzzleDict[7] := inputpuzzleDict[0] + inputpuzzleDict[7];
        for j := 1 to 9 do
          inputpuzzleDict[j - 1] := inputpuzzleDict[j];
        inputpuzzleDict[9] := 0
      end;
    compteurpoisson := 0;
    for i := 0 to 9 do
      compteurpoisson := compteurpoisson + inputpuzzleDict[i];
   LabeledEdit1.Text:=compteurpoisson.ToString;

  except

  end;
end;

end.
