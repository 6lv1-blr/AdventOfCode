unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, RegularExpressions,
  Vcl.ComCtrls, Vcl.Grids, Vcl.Mask, Vcl.ExtCtrls;

type
  TfMain = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    MemoInputPuzzle: TMemo;
    ButtonGoEtape1: TButton;
    Memo2: TMemo;
    Memo3: TMemo;
    ButtonEtape1_1: TButton;
    ButtonEtape1_2: TButton;
    StringGrid1: TStringGrid;
    MemoEtape1: TMemo;
    LabeledEdit1: TLabeledEdit;
    ButtonEtape1_3: TButton;
    TabSheet3: TTabSheet;
    Memo1: TMemo;
    MemoEtape2_1Bis: TMemo;
    ButtonEtape2_1_4: TButton;
    ButtonEtape2_1_3: TButton;
    ButtonEtape2_1_1: TButton;
    ButtonGoEtape2_1: TButton;
    Memo5: TMemo;
    ButtonEtape2_1_2: TButton;
    ButtonEtape2_1_5: TButton;
    TabSheet4: TTabSheet;
    MemoEtape2_2: TMemo;
    Memo6: TMemo;
    ButtonEtape2_2_1: TButton;
    ButtonEtape2_2_3: TButton;
    ButtonEtape2_2_4: TButton;
    ButtonEtape2_2_5: TButton;
    StringGrid3: TStringGrid;
    MemoEtape2_1: TMemo;
    ButtonGoEtape2_2: TButton;
    ButtonEtape2_2_2: TButton;
    ButtonEtape2_2_6: TButton;
    LabeledEditResultEtape2: TLabeledEdit;
    procedure ButtonGoEtape1Click(Sender: TObject);
    procedure ButtonEtape1_1Click(Sender: TObject);
    procedure ButtonEtape1_2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ButtonEtape1_3Click(Sender: TObject);
    procedure ButtonEtape2_1_1Click(Sender: TObject);
    procedure ButtonGoEtape2_1Click(Sender: TObject);
    procedure ButtonEtape2_1_3Click(Sender: TObject);
    procedure ButtonEtape2_1_2Click(Sender: TObject);
    procedure ButtonEtape2_1_4Click(Sender: TObject);
    procedure ButtonEtape2_1_5Click(Sender: TObject);
    procedure ButtonEtape2_2_1Click(Sender: TObject);
    procedure ButtonGoEtape2_2Click(Sender: TObject);
    procedure ButtonEtape2_2_3Click(Sender: TObject);
    procedure ButtonEtape2_2_2Click(Sender: TObject);
    procedure ButtonEtape2_2_4Click(Sender: TObject);
    procedure ButtonEtape2_2_5Click(Sender: TObject);
    procedure ButtonEtape2_2_6Click(Sender: TObject);
  private
    { D�clarations priv�es }
  public
    { D�clarations publiques }
  end;

var
  fMain: TfMain;

implementation

{$R *.dfm}


procedure TfMain.ButtonGoEtape1Click(Sender: TObject);
begin
  MemoEtape1.Lines.Text := MemoInputPuzzle.Lines.Text;
  PageControl1.ActivePage := TabSheet2;
end;

procedure TfMain.ButtonEtape1_1Click(Sender: TObject);
begin
  // cherche une s�quence de n'importe quel caract�re '.*' avant une barre verticale '\|'  ,
  // le slash avant la barre verticale et pour pr�ciser que c'est vraiment un| qu'on cherche
  // car | est un caract�re sp�cial  comme +*-([.{ et d'autres
  // suivi d'une s�quence de n'importe quel caract�re .*
  // le fait qu'elle soit entour� de parenth�se permet de rappeler cette s�quence dans le remplacement

  // on remplace par $1  et un espace
  // le $1 fait r�f�rence � la s�quence entre parenth�se

  MemoEtape1.Lines.Text := TRegEx.Replace(MemoEtape1.Lines.Text, '.*\|(.*)', '$1 ');
end;

procedure TfMain.ButtonEtape1_2Click(Sender: TObject);
begin

  // recherche des s�quences de 2 lettres pour le 1
  // recherche des s�quences de 3 lettres pour le 7
  // recherche des s�quences de 4 lettres pour le 4
  // recherche des s�quences de 7 lettres pour le 8
  // on se sert des espaces avant et apr�s pour ne pas trouver un bloc de 2 lettres dans un bloc de 5 lettres par exemples (d'o� le ' ' dans l'�tape 1.1
  // donc on cherche un espace ' '
  // suivi d'une lettre de a � z (on pourrait limiter de a � g) [a-z]
  // {2} pr�cise que le bloc pr�c�dent doit apparaitre exactement 2 fois.
  // le tout est entre parenth�se pour �tre utilis� dans le remplacement
  //

  MemoEtape1.Lines.Text := TRegEx.Replace(MemoEtape1.Lines.Text, ' ([a-z]{2}) ', ' 1-$1 ');
  MemoEtape1.Lines.Text := TRegEx.Replace(MemoEtape1.Lines.Text, ' ([a-z]{3}) ', ' 7-$1 ');
  MemoEtape1.Lines.Text := TRegEx.Replace(MemoEtape1.Lines.Text, ' ([a-z]{4}) ', ' 4-$1 ');
  MemoEtape1.Lines.Text := TRegEx.Replace(MemoEtape1.Lines.Text, ' ([a-z]{7}) ', ' 8-$1 ');

  // on le fait plusieurs fois car les patterns peuvent se chevaucher � cause des espaces, � l'extreme ' ab ab ab ab ' n�c�ssite normalement 2 passage
  // ' 1-ab ab 1-ab ab ' puis ' 1-ab 1-ab 1-ab 1-ab '

  MemoEtape1.Lines.Text := TRegEx.Replace(MemoEtape1.Lines.Text, ' ([a-z]{2}) ', ' 1-$1 ');
  MemoEtape1.Lines.Text := TRegEx.Replace(MemoEtape1.Lines.Text, ' ([a-z]{3}) ', ' 7-$1 ');
  MemoEtape1.Lines.Text := TRegEx.Replace(MemoEtape1.Lines.Text, ' ([a-z]{4}) ', ' 4-$1 ');
  MemoEtape1.Lines.Text := TRegEx.Replace(MemoEtape1.Lines.Text, ' ([a-z]{7}) ', ' 8-$1 ');

end;

procedure TfMain.ButtonEtape1_3Click(Sender: TObject);
begin

  // Compter les tirets permet de compter combien de chiffres sont pr�sents
  LabeledEdit1.Text := TRegEx.Matches(MemoEtape1.Lines.Text, '-').Count.ToString;

end;

procedure TfMain.ButtonEtape2_2_1Click(Sender: TObject);
var
  i: Integer;
begin

  // extrait que les r�sultats voir �tape 1.1

  MemoEtape2_2.Lines.Text := TRegEx.Replace(MemoEtape2_2.Lines.Text, '.*\|(.*)', '$1 ');

  // double les espaces pour simplifier la recherche de pattern et leur chevauchement
  MemoEtape2_2.Lines.Text := TRegEx.Replace(MemoEtape2_2.Lines.Text, ' ', '  ');

  // pour toutes les lignes affiche les correspondances trouv�es � l'�tape 2.1

  if MemoEtape2_1Bis.Lines.Count = MemoEtape2_2.Lines.Count then
    for i := 0 to MemoEtape2_2.Lines.Count - 1 do
      begin
        MemoEtape2_2.Lines[i] := MemoEtape2_2.Lines[i] + '|' + MemoEtape2_1Bis.Lines[i];
      end;

end;

procedure TfMain.ButtonEtape2_2_2Click(Sender: TObject);
begin
  // tri   des lettres dans les blocs
  // il y a peut �tre un moyen de faire ceci en une ligne mais l� c'est au dela de mon cerveau

  MemoEtape2_2.Lines.Text := TRegEx.Replace(MemoEtape2_2.Lines.Text, '([b-z]*)a([e-z]*)', 'a$1$2');
  MemoEtape2_2.Lines.Text := TRegEx.Replace(MemoEtape2_2.Lines.Text, '([c-z]*)b([e-z]*)', 'b$1$2');
  MemoEtape2_2.Lines.Text := TRegEx.Replace(MemoEtape2_2.Lines.Text, '([d-z]*)c([e-z]*)', 'c$1$2');
  MemoEtape2_2.Lines.Text := TRegEx.Replace(MemoEtape2_2.Lines.Text, '([e-z]*)d([e-z]*)', 'd$1$2');
  MemoEtape2_2.Lines.Text := TRegEx.Replace(MemoEtape2_2.Lines.Text, '([f-z]*)e([e-z]*)', 'e$1$2');
  MemoEtape2_2.Lines.Text := TRegEx.Replace(MemoEtape2_2.Lines.Text, '([g-z]*)f([e-z]*)', 'f$1$2');

end;

procedure TfMain.ButtonEtape2_2_3Click(Sender: TObject);
var
  i: Integer;
begin
  // fait pour les 4 chiffres de consignes
  for i := 1 to 4 do
    MemoEtape2_2.Lines.Text := TRegEx.Replace(MemoEtape2_2.Lines.Text, ' ([a-z]*) (.*\|.*)( \d-\1 )', '$3$2$3');

end;

procedure TfMain.ButtonEtape2_2_4Click(Sender: TObject);
begin
  MemoEtape2_2.Lines.Text := TRegEx.Replace(MemoEtape2_2.Lines.Text, '(.*)\|.*', '$1');
end;

procedure TfMain.ButtonEtape2_2_5Click(Sender: TObject);
begin
  MemoEtape2_2.Lines.Text := TRegEx.Replace(MemoEtape2_2.Lines.Text, ' (\d)\-[a-z]* ', '$1');
end;

procedure TfMain.ButtonEtape2_2_6Click(Sender: TObject);
var
  i: Integer;
  SommeAffichage: Integer;
  ErreurNonDecode: Boolean;
  outputvalue: Integer;
begin
  SommeAffichage := 0;
  ErreurNonDecode := false;
  for i := 0 to MemoEtape2_2.Lines.Count - 1 do
    begin
      if TryStrToInt(MemoEtape2_2.Lines[i].Trim, outputvalue) then
        SommeAffichage := SommeAffichage + outputvalue
      else
        ErreurNonDecode := true;
    end;
  if ErreurNonDecode then
    ShowMessage('au moins une ligne n''a pas �t� d�cod�');

  LabeledEditResultEtape2.Text := SommeAffichage.ToString;
end;

procedure TfMain.ButtonGoEtape2_2Click(Sender: TObject);
begin
  PageControl1.ActivePage := TabSheet4;
  MemoEtape2_2.Lines.Text := MemoInputPuzzle.Lines.Text;
end;

procedure TfMain.ButtonGoEtape2_1Click(Sender: TObject);
begin
  MemoEtape2_1.Lines.Text := MemoInputPuzzle.Lines.Text;
  PageControl1.ActivePage := TabSheet3;
end;

procedure TfMain.ButtonEtape2_1_1Click(Sender: TObject);
begin
  // cherche une s�quence de n'importe quel caract�re '.*' avant une barre verticale '\|'  ,
  // le slash avant la barre verticale et pour pr�ciser que c'est vraiment un| qu'on cherche
  // car | est un caract�re sp�cial  comme +*-([.{ et d'autres
  // suivi d'une s�quence de n'importe quel caract�re .*
  // le fait qu'elle soit entour� de parenth�se permet de rappeler cette s�quence dans le remplacement

  // on remplace par $1  et un espace
  // le $1 fait r�f�rence � la s�quence entre parenth�se

  MemoEtape2_1.Lines.Text := TRegEx.Replace(MemoEtape2_1.Lines.Text, '\| ', '');

  // remet un espace au d�but et � la fin
  MemoEtape2_1.Lines.Text := TRegEx.Replace(MemoEtape2_1.Lines.Text, '(.*)', ' $1 ');
  // double les espaces pour simplifier la recherche de pattern et leur chevauchement
  MemoEtape2_1.Lines.Text := TRegEx.Replace(MemoEtape2_1.Lines.Text, ' ', '  ');
end;

procedure TfMain.ButtonEtape2_1_2Click(Sender: TObject);
begin

  // tri   des lettres dans les blocs
  // il y a peut �tre un moyen de faire ceci en une ligne mais l� c'est au dela de mon cerveau

  MemoEtape2_1.Lines.Text := TRegEx.Replace(MemoEtape2_1.Lines.Text, '([b-z]*)a([e-z]*)', 'a$1$2');
  MemoEtape2_1.Lines.Text := TRegEx.Replace(MemoEtape2_1.Lines.Text, '([c-z]*)b([e-z]*)', 'b$1$2');
  MemoEtape2_1.Lines.Text := TRegEx.Replace(MemoEtape2_1.Lines.Text, '([d-z]*)c([e-z]*)', 'c$1$2');
  MemoEtape2_1.Lines.Text := TRegEx.Replace(MemoEtape2_1.Lines.Text, '([e-z]*)d([e-z]*)', 'd$1$2');
  MemoEtape2_1.Lines.Text := TRegEx.Replace(MemoEtape2_1.Lines.Text, '([f-z]*)e([e-z]*)', 'e$1$2');
  MemoEtape2_1.Lines.Text := TRegEx.Replace(MemoEtape2_1.Lines.Text, '([g-z]*)f([e-z]*)', 'f$1$2');

end;

procedure TfMain.ButtonEtape2_1_3Click(Sender: TObject);
var
  i: Integer;
begin
  // ( [a-z]*)( .*)(\1)( .*)
  // le \1 dans le pattern recherche le premier bloc entre parenth�se
  // c'est ce qui d�fini le doublon
  // du coup en remplacement on veut �liminer le 3�me bloc d'o� le $1$2$4

  // je teste beaucoup mes regexp sous notepad++ pour m'assurer de leur fonctionnement

  // toujours besoin de le refaire car n'�limine qu'un doublon � la fois
  for i := 0 to 14 do
    MemoEtape2_1.Lines.Text := TRegEx.Replace(MemoEtape2_1.Lines.Text, '( [a-z]+ )(.*)(\1)', '$1$2');

end;

procedure TfMain.ButtonEtape2_1_4Click(Sender: TObject);
begin

  // voir l'�tape 1.2

  MemoEtape2_1.Lines.Text := TRegEx.Replace(MemoEtape2_1.Lines.Text, ' ([a-z]{2}) ', ' 1-$1 ');
  MemoEtape2_1.Lines.Text := TRegEx.Replace(MemoEtape2_1.Lines.Text, ' ([a-z]{3}) ', ' 7-$1 ');
  MemoEtape2_1.Lines.Text := TRegEx.Replace(MemoEtape2_1.Lines.Text, ' ([a-z]{4}) ', ' 4-$1 ');
  MemoEtape2_1.Lines.Text := TRegEx.Replace(MemoEtape2_1.Lines.Text, ' ([a-z]{7}) ', ' 8-$1 ');

  // nouveaut� pour l'�tape 2 pour les cas avec plusieurs possibilit�s

  MemoEtape2_1.Lines.Text := TRegEx.Replace(MemoEtape2_1.Lines.Text, ' ([a-z]{5}) ', ' 235-$1 ');
  MemoEtape2_1.Lines.Text := TRegEx.Replace(MemoEtape2_1.Lines.Text, ' ([a-z]{6}) ', ' 690-$1 ');

end;

procedure TfMain.ButtonEtape2_1_5Click(Sender: TObject);
var
  i: Integer;
begin
  // MemoEtape2_1.Lines.Text := TRegEx.Replace(MemoEtape2_1.Lines.Text, '([b-z]*)a([e-z]*)', 'a$1$2');
  // d�double
  MemoEtape2_1.Lines.Text := TRegEx.Replace(MemoEtape2_1.Lines.Text, '(.*)', '$1  ===> $1');

  // filtre 690 pour extraire 90 index commun avec 7
  for i := 0 to 14 do
    MemoEtape2_1.Lines.Text := TRegEx.Replace(MemoEtape2_1.Lines.Text, '( 7-)([a-z])([a-z])([a-z])(.*==>.*)( 690-)([a-z]{0,3}\2[a-z]{0,3}\3[a-z]{0,3}\4[a-z]{0,3} .*)', '$1$2$3$4$5 90-$7');

  // filtre 690 pour extraire 9 index commun avec 4
  for i := 0 to 14 do
    MemoEtape2_1.Lines.Text := TRegEx.Replace(MemoEtape2_1.Lines.Text, '( 4-)([a-z])([a-z])([a-z])([a-z])(.*==>.*)( 90-)([a-z]{0,3}\2[a-z]{0,3}\3[a-z]{0,3}\4[a-z]{0,3}\5[a-z]{0,3} .*)', '$1$2$3$4$5$6 9-$8');

  // filtre 235 pour extraire 3 index commun avec 7
  for i := 0 to 14 do
    MemoEtape2_1.Lines.Text := TRegEx.Replace(MemoEtape2_1.Lines.Text, '( 7-)([a-z])([a-z])([a-z])(.*==>.*)( 235-)([a-z]{0,3}\2[a-z]{0,3}\3[a-z]{0,3}\4[a-z]{0,3} .*)', '$1$2$3$4$5 3-$7');



  // premi�re solution pour r�soudre le 2 et 5 restant
  // mais facile en notepad ++
  // plus compliqu�e � expliquer !

  // filtre 25 pour extraire 5 index commun avec 9 en mode 9 > 5
  // for i := 0 to 14 do
  // MemoEtape2_1.Lines.Text := TRegEx.Replace(MemoEtape2_1.Lines.Text, '( 235-)([a-z])([a-z])([a-z])([a-z])([a-z])(.*==>.*)( 9-)([a-z]{0,3}\2[a-z]{0,3}\3[a-z]{0,3}\4[a-z]{0,3}\5[a-z]{0,3}\6[a-z]{0,3} .*)', ' 5-$2$3$4$5$6$7$8$9');




  // deuxi�me solution
  // 7 cas possibles sur le chiffre 9
  // une seule barre est �teinte, et cette barre est diff�rente entre le 2 et le 5
  // elle permet de r�soudre le seul
  // ' 9-abcdef' alors barre g du 5 contiendra g
  // ' 9-abcdeg' alors barre g du 5 contiendra g
  // ' 9-abcdfg' alors barre g du 5 contiendra g
  // ' 9-abcefg' alors barre g du 5 contiendra g
  // ' 9-abdefg' alors barre g du 5 contiendra g
  // ' 9-acdefg' alors barre g du 5 contiendra g
  // ' 9-bcdefg' alors barre g du 5 contiendra g

  MemoEtape2_1.Lines.Text := TRegEx.Replace(MemoEtape2_1.Lines.Text, '(.* 9-abcdef .*)', '2doitcontenir:g $1');
  MemoEtape2_1.Lines.Text := TRegEx.Replace(MemoEtape2_1.Lines.Text, '(.* 9-abcdeg .*)', '2doitcontenir:f $1');
  MemoEtape2_1.Lines.Text := TRegEx.Replace(MemoEtape2_1.Lines.Text, '(.* 9-abcdfg .*)', '2doitcontenir:e $1');
  MemoEtape2_1.Lines.Text := TRegEx.Replace(MemoEtape2_1.Lines.Text, '(.* 9-abcefg .*)', '2doitcontenir:d $1');
  MemoEtape2_1.Lines.Text := TRegEx.Replace(MemoEtape2_1.Lines.Text, '(.* 9-abdefg .*)', '2doitcontenir:c $1');
  MemoEtape2_1.Lines.Text := TRegEx.Replace(MemoEtape2_1.Lines.Text, '(.* 9-acdefg .*)', '2doitcontenir:b $1');
  MemoEtape2_1.Lines.Text := TRegEx.Replace(MemoEtape2_1.Lines.Text, '(.* 9-bcdefg .*)', '2doitcontenir:a $1');

  // filtre 235 pour extraire 2 avec info pr�c�dente issue du 9
  for i := 0 to 14 do
    MemoEtape2_1.Lines.Text := TRegEx.Replace(MemoEtape2_1.Lines.Text, '(2doitcontenir\:)([a-z])(.*==>.*)( 235-)([a-z]*\2[a-z]* .*)', '$1$2$3 2-$5');

  // les 9 �tants extraits, les 90 sont forc�ment des 0
  for i := 0 to 14 do
    MemoEtape2_1.Lines.Text := TRegEx.Replace(MemoEtape2_1.Lines.Text, '(.*==>.*)( 90-)', '$1 0-');
  // les 9 et 0 �tants extraits, les 690 sont forc�ment des 6
  for i := 0 to 14 do
    MemoEtape2_1.Lines.Text := TRegEx.Replace(MemoEtape2_1.Lines.Text, '(.*==>.*)( 690-)', '$1 6-');
  // les 3 et 2 �tants extraits, les 235 sont forc�ment des 5
  for i := 0 to 14 do
    MemoEtape2_1.Lines.Text := TRegEx.Replace(MemoEtape2_1.Lines.Text, '(.*==>.*)( 235-)', '$1 5-');

  // � ce point on a toutes les correspondance :
  MemoEtape2_1Bis.Lines.Text := TRegEx.Replace(MemoEtape2_1.Lines.Text, '(.*==>)(.*)', '$2');

end;

procedure TfMain.FormCreate(Sender: TObject);
begin
  PageControl1.ActivePage := TabSheet1;
end;

end.
