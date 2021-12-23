unit UnitDay22;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.Grids, System.RegularExpressions;

type
  TForm6 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    ButtonEtape1_1: TButton;
    MemoInputPuzzle: TMemo;
    MemoInputSample: TMemo;
    ButtonEtape1_1Sample: TButton;
    Button2: TButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Splitter1: TSplitter;
    StringGridRisk: TStringGrid;
    StringGridPuzzle: TStringGrid;
    TabSheet2: TTabSheet;
    TreeView1: TTreeView;
    TabSheet3: TTabSheet;
    MemoScriptOpenScad: TMemo;
    LabeledEditResultPart1: TLabeledEdit;
    LabeledEditResultPart2: TLabeledEdit;
    ListBox1: TListBox;
    Button1: TButton;
    Memo1: TMemo;
    procedure ButtonEtape1_1Click(Sender: TObject);
    procedure ButtonEtape1_1SampleClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

  TCuboid = record
    XOrigine, YOrigine, ZOrigine: Int64;
    XFin, YFin, ZFin: Int64;
    XTaille, YTaille, ZTaille: UInt64;
    finBlocUnionOrDifference, OnOrOff: Boolean;
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}


procedure TForm6.Button1Click(Sender: TObject);
begin

  MemoScriptOpenScad.CopyToClipboard;
end;

procedure TForm6.ButtonEtape1_1Click(Sender: TObject);
var
  Cuboid: Array of TCuboid;
  i: Integer;
  TotalUnion: Integer;
  TotalDifference: Integer;
  j: Integer;
  StringTabulation: string;
  StringFinDeBloc: string;
begin
  // format
  // off x=-93533..-4276,y=-16170..68771,z=-104985..-24507

  // http://manifold.metamatic.us/#benifit
  // donne       2758514936282230.5 en x10 et 224 en x1 au lieu de 2758514936282235

  // https://www.think3d.in/landing-pages/3d-model-price-calculator/
  // donne 2,758,514,936,282,237       en x1
  // 2,758,514,936,282,224.128   en x10
  // 1214313344725521152 en x10 sur mon jeu de données

  // python from             https://github.com/mcanet/STL-Volume-Model-Calculator/blob/master/mesure_volume.py
  // donne 2758514936282.238 cm3 en x1
  // donne 2758514936282230.5 en x10
  // donne 1214313344725 sur mon jeu de données et ce n'est pas la bonne réponse
  // donne 1214313344725.5265 et ni 26 ni 27 ne sont ok

  // Blender d'après https://www.reddit.com/user/td_brokeit/
  // donne 2758514936282238
  // donne 2758514936658135.552 sur le x10
  // donne 1214313344725.530 sur mon jeu de test toujours faux

  TotalDifference := 0;
  TotalUnion := 0;
  MemoScriptOpenScad.Clear;
  SetLength(Cuboid, MemoInputPuzzle.Lines.Count);
  for i := 0 to MemoInputPuzzle.Lines.Count - 1 do
    begin
      Cuboid[i].finBlocUnionOrDifference := False;
      Cuboid[i].OnOrOff := Tregex.IsMatch(MemoInputPuzzle.Lines[i], '^on ');
      Cuboid[i].XOrigine := Tregex.Replace(MemoInputPuzzle.Lines[i], '.*x=(-?\d+)\.\.(-?\d+).*', '$1').ToInteger * 10;
      Cuboid[i].YOrigine := Tregex.Replace(MemoInputPuzzle.Lines[i], '.*y=(-?\d+)\.\.(-?\d+).*', '$1').ToInteger * 10;
      Cuboid[i].ZOrigine := Tregex.Replace(MemoInputPuzzle.Lines[i], '.*z=(-?\d+)\.\.(-?\d+).*', '$1').ToInteger * 10;
      Cuboid[i].XFin := Tregex.Replace(MemoInputPuzzle.Lines[i], '.*x=(-?\d+)\..(-?\d+).*', '$2').ToInteger * 10;
      Cuboid[i].YFin := Tregex.Replace(MemoInputPuzzle.Lines[i], '.*y=(-?\d+)\..(-?\d+).*', '$2').ToInteger * 10;
      Cuboid[i].ZFin := Tregex.Replace(MemoInputPuzzle.Lines[i], '.*z=(-?\d+)\..(-?\d+).*', '$2').ToInteger * 10;
      Cuboid[i].XTaille := Cuboid[i].XFin - Cuboid[i].XOrigine + 10;
      Cuboid[i].YTaille := Cuboid[i].YFin - Cuboid[i].YOrigine + 10;
      Cuboid[i].ZTaille := Cuboid[i].ZFin - Cuboid[i].ZOrigine + 10;
      if i >= 1 then
        if Cuboid[i - 1].OnOrOff <> Cuboid[i].OnOrOff then
          begin
            Cuboid[i - 1].finBlocUnionOrDifference := True;
            TotalUnion := TotalUnion + 1;
          end;

    end;
  for i := 1 to (TotalUnion + 1) div 2 do
    begin
      StringTabulation := '';
      for j := 1 to i - 1 do
        StringTabulation := StringTabulation + ' ';
      MemoScriptOpenScad.Lines.Add(StringTabulation + 'difference(){' + #13 + #10 + StringTabulation + ' union(){');
    end;
  for i := 0 to MemoInputPuzzle.Lines.Count - 1 do
    begin
      StringTabulation := '';
      for j := 1 to TotalUnion div 2 do
        StringTabulation := StringTabulation + ' ';
      StringFinDeBloc := '';
      if Cuboid[i].finBlocUnionOrDifference then
        begin
          // if Cuboid[i].OnOrOff then
          TotalUnion := TotalUnion - 1;
          StringFinDeBloc := #13 + #10 + StringTabulation + '}';
        end;
      MemoScriptOpenScad.Lines.Add(StringTabulation + 'translate([' + Cuboid[i].XOrigine.ToString + ',' + Cuboid[i].YOrigine.ToString + ',' + Cuboid[i].ZOrigine.ToString +
        ']) cube([' + Cuboid[i].XTaille.ToString + ',' + Cuboid[i].YTaille.ToString + ',' + Cuboid[i].ZTaille.ToString + ']);' + '// ' + Cuboid[i].OnOrOff.ToString() + StringFinDeBloc);
    end;
    //si le dernier est un off on doit fermer le bloc différence
  if not Cuboid[Length(Cuboid) - 1].OnOrOff then
    MemoScriptOpenScad.Lines.Add('}');

end;

procedure TForm6.ButtonEtape1_1SampleClick(Sender: TObject);
var
  Cuboid: Array of TCuboid;
  i: Integer;
  TotalUnion: Integer;
  TotalDifference: Integer;
  j: Integer;
  StringTabulation: string;
  StringFinDeBloc: string;
begin
  // format
  // off x=-93533..-4276,y=-16170..68771,z=-104985..-24507

  // http://manifold.metamatic.us/#benifit
  // donne       2758514936282230.5 en x10 et 224 en x1 au lieu de 2758514936282235

  // https://www.think3d.in/landing-pages/3d-model-price-calculator/
  // donne 2,758,514,936,282,237       en x1
  // 2,758,514,936,282,224.128   en x10
  // 1214313344725521152 en x10 sur mon jeu de données

  // python from             https://github.com/mcanet/STL-Volume-Model-Calculator/blob/master/mesure_volume.py
  // donne 2758514936282.238 cm3 en x1
  // donne 2758514936282230.5 en x10
  // donne 1214313344725 sur mon jeu de données et ce n'est pas la bonne réponse
  // donne 1214313344725.5265 et ni 26 ni 27 ne sont ok

  // Blender d'après https://www.reddit.com/user/td_brokeit/
  // donne 2758514936282238
  // donne 2758514936658135.552 sur le x10
  // donne 1214313344725.530 sur mon jeu de test toujours faux

  TotalDifference := 0;
  TotalUnion := 0;
  MemoScriptOpenScad.Clear;
  SetLength(Cuboid, MemoInputSample.Lines.Count);
  for i := 0 to MemoInputSample.Lines.Count - 1 do
    begin
      Cuboid[i].finBlocUnionOrDifference := False;
      Cuboid[i].OnOrOff := Tregex.IsMatch(MemoInputSample.Lines[i], '^on ');
      Cuboid[i].XOrigine := Tregex.Replace(MemoInputSample.Lines[i], '.*x=(-?\d+)\.\.(-?\d+).*', '$1').ToInteger * 10;
      Cuboid[i].YOrigine := Tregex.Replace(MemoInputSample.Lines[i], '.*y=(-?\d+)\.\.(-?\d+).*', '$1').ToInteger * 10;
      Cuboid[i].ZOrigine := Tregex.Replace(MemoInputSample.Lines[i], '.*z=(-?\d+)\.\.(-?\d+).*', '$1').ToInteger * 10;
      Cuboid[i].XFin := Tregex.Replace(MemoInputSample.Lines[i], '.*x=(-?\d+)\..(-?\d+).*', '$2').ToInteger * 10;
      Cuboid[i].YFin := Tregex.Replace(MemoInputSample.Lines[i], '.*y=(-?\d+)\..(-?\d+).*', '$2').ToInteger * 10;
      Cuboid[i].ZFin := Tregex.Replace(MemoInputSample.Lines[i], '.*z=(-?\d+)\..(-?\d+).*', '$2').ToInteger * 10;
      Cuboid[i].XTaille := Cuboid[i].XFin - Cuboid[i].XOrigine + 10;
      Cuboid[i].YTaille := Cuboid[i].YFin - Cuboid[i].YOrigine + 10;
      Cuboid[i].ZTaille := Cuboid[i].ZFin - Cuboid[i].ZOrigine + 10;
      if i >= 1 then
        if Cuboid[i - 1].OnOrOff <> Cuboid[i].OnOrOff then
          begin
            Cuboid[i - 1].finBlocUnionOrDifference := True;
            TotalUnion := TotalUnion + 1;
          end;

    end;
  for i := 1 to (TotalUnion + 1) div 2 do
    begin
      StringTabulation := '';
      for j := 1 to i - 1 do
        StringTabulation := StringTabulation + ' ';
      MemoScriptOpenScad.Lines.Add(StringTabulation + 'difference(){' + #13 + #10 + StringTabulation + ' union(){');
    end;
  for i := 0 to MemoInputSample.Lines.Count - 1 do
    begin
      StringTabulation := '';
      for j := 1 to TotalUnion div 2 do
        StringTabulation := StringTabulation + ' ';
      StringFinDeBloc := '';
      if Cuboid[i].finBlocUnionOrDifference then
        begin
          // if Cuboid[i].OnOrOff then
          TotalUnion := TotalUnion - 1;
          StringFinDeBloc := #13 + #10 + StringTabulation + '}';
        end;
      MemoScriptOpenScad.Lines.Add(StringTabulation + 'translate([' + Cuboid[i].XOrigine.ToString + ',' + Cuboid[i].YOrigine.ToString + ',' + Cuboid[i].ZOrigine.ToString +
        ']) cube([' + Cuboid[i].XTaille.ToString + ',' + Cuboid[i].YTaille.ToString + ',' + Cuboid[i].ZTaille.ToString + ']);' + '// ' + Cuboid[i].OnOrOff.ToString() + StringFinDeBloc);
    end;
    //si le dernier est un off on doit fermer le bloc différence
  if not Cuboid[Length(Cuboid) - 1].OnOrOff then
    MemoScriptOpenScad.Lines.Add('}');


end;

end.
