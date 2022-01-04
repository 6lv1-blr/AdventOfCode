unit UnitDay16;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.Mask, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.StdCtrls, Math, System.RegularExpressions;

type

  TSizeBits = (sb8Bits, sb16Bits, sb32Bits, sb64Bits);

  TResPacket = record
    Length: Integer;
    Valeur: Int64;
  end;

  TForm5 = class(TForm)
    Label1: TLabel;
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
    LabeledEditResultPart1: TLabeledEdit;
    LabeledEditResultPart2: TLabeledEdit;
    TabSheet2: TTabSheet;
    TreeView1: TTreeView;
    TabSheet3: TTabSheet;
    MemoBinaire: TMemo;
    ButtonClearTreeView: TButton;
    ListBox1: TListBox;
    Label2: TLabel;
    procedure ButtonEtape1_1Click(Sender: TObject);
    procedure ButtonEtape1_1SampleClick(Sender: TObject);
    procedure ButtonClearTreeViewClick(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
  private
    SommeVersion: Integer;
    function DecoderPacket(ChaineADecoder: string; Racine: TTreeNode): TResPacket;
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}


function HexStrToBinStr(const AHexStr: string): string;
var
  i, j: Integer;
  NbIgnore: Integer;
const
  HexParts: array [0 .. $F] of string =
    (
    { 0 } '0000',
    { 1 } '0001',
    { 2 } '0010',
    { 3 } '0011',
    { 4 } '0100',
    { 5 } '0101',
    { 6 } '0110',
    { 7 } '0111',
    { 8 } '1000',
    { 9 } '1001',
    { A } '1010',
    { B } '1011',
    { C } '1100',
    { D } '1101',
    { E } '1110',
    { F } '1111'
    );
begin
  SetLength(Result, 4 * AHexStr.Length);
  NbIgnore := 0;
  j := 1;
  for i := 1 to AHexStr.Length do
    begin
      case AHexStr[i] of
        '0' .. '9':
          Move(HexParts[Ord(AHexStr[i]) - Ord('0')][1], Result[j], sizeof(char) * 4);
        'A' .. 'F':
          Move(HexParts[$A + Ord(AHexStr[i]) - Ord('A')][1], Result[j], sizeof(char) * 4);
        'a' .. 'f':
          Move(HexParts[$A + Ord(AHexStr[i]) - Ord('a')][1], Result[j], sizeof(char) * 4);
        #0 .. #13:
          begin
            NbIgnore := NbIgnore + 1;
          end
      else
        raise EConvertError.CreateFmt('Invalid hexadecimal string "%s".', [AHexStr]);
      end;
      Inc(j, 4);
    end;
  SetLength(Result, 4 * AHexStr.Length - 4 * NbIgnore);
end;

procedure TForm5.ButtonClearTreeViewClick(Sender: TObject);
begin
  TreeView1.Items.Clear;
end;

procedure TForm5.ButtonEtape1_1Click(Sender: TObject);
var
  RacineTree: TTreeNode;
  SansRetourChariot: string;

begin
  TreeView1.Items.Clear;
  MemoBinaire.Clear;
  MemoBinaire.Lines.Add(HexStrToBinStr(MemoInputPuzzle.Text));
  RacineTree := TreeView1.Items.Add(nil, 'Racine');
  SommeVersion := 0;

  SansRetourChariot := MemoInputPuzzle.Lines.Text;
  SansRetourChariot := SansRetourChariot.Replace(#13, '');
  SansRetourChariot := SansRetourChariot.Replace(#10, '');
  SansRetourChariot := SansRetourChariot.Replace(#0, '');

  SansRetourChariot := HexStrToBinStr(SansRetourChariot);
  DecoderPacket(SansRetourChariot, RacineTree);

  TreeView1.FullExpand;
  RacineTree.Text := SommeVersion.tostring;

  LabeledEditResultPart1.Text := SommeVersion.tostring;
  LabeledEditResultPart2.Text := TreeView1.Items[TreeView1.Items.Count - 1].Text.substring('Resultat'.Length);
  PageControl1.ActivePage := TabSheet2;

end;

procedure TForm5.ButtonEtape1_1SampleClick(Sender: TObject);
var
  i: Integer;
  j: Integer;
  SectionBinaire: String;
  RacineTree: TTreeNode;

begin
  MemoBinaire.Clear;
  MemoBinaire.Lines.Add(HexStrToBinStr(MemoInputSample.Lines[0]));
  RacineTree := TreeView1.Items.Add(nil, 'Racine');
  SommeVersion := 0;
  DecoderPacket(MemoBinaire.Lines[0], RacineTree);
  TreeView1.FullExpand;
  RacineTree.Text := SommeVersion.tostring;

  LabeledEditResultPart1.Text := SommeVersion.tostring;
  LabeledEditResultPart2.Text := TreeView1.Items[TreeView1.Items.Count - 1].Text.substring('Resultat'.Length);

end;

function BinToInt64(S: string; ASizeBits: TSizeBits): Int64;
var
  i: Integer;
  j: Integer;
  FSizeBits: byte;
begin
  Result := 0;
  j := 0;
  case ASizeBits of
    sb8Bits:
      FSizeBits := 8;
    sb16Bits:
      FSizeBits := 16;
    sb32Bits:
      FSizeBits := 32;
    sb64Bits:
      FSizeBits := 64;
  end;
  while Length(S) < FSizeBits do
    S := '0' + S;
  for i := Length(S) downto 2 do
    begin
      if Odd(byte(S[i])) then
        Result := Result + Round(Power(2, j));
      Inc(j);
    end;
  if S[1] = '1' then
    Result := Result - Round(Power(2, FSizeBits) / 2);
end;

function TForm5.DecoderPacket(ChaineADecoder: string; Racine: TTreeNode): TResPacket;
var
  PacketVersion: String;
  PacketTypeID: String;
  PositionBlocLiteral: Integer;
  SectionBit: String;
  ResteDecodePacket, NbPacketOrNbBits: String;
  Racine1: TTreeNode;
  nbbit: Integer;
  nbbitlu: Int64;
  k: Integer;
  LiteralTreeNode: TTreeNode;
  nbSubPacket: Int64;
  NbSectionBit: Integer;
  ValeurLiteral: Int64;
  PacketVersionNombre: Int64;
  PrevSibling: TTreeNode;
  ResultTemp: TResPacket;
  TableauDeResultatsPacket: Array of Int64;
  i: Integer;
  PacketTypeIDNombre: Int64;
begin
  PacketVersion := copy(ChaineADecoder, 1, 3);
  PacketVersionNombre := BinToInt64('00000' + PacketVersion, sb8Bits);
  SommeVersion := PacketVersionNombre + SommeVersion;
  PacketTypeID := copy(ChaineADecoder, 4, 3);

  PacketTypeIDNombre := BinToInt64('00000' + PacketTypeID, sb8Bits);

  SetLength(TableauDeResultatsPacket, 0);
  if ChaineADecoder = '' then
    Result.Length := 0
  else if TreeView1.Items.Count < 1000000 then
    begin
      PositionBlocLiteral := 0;
      if PacketTypeID = '100' then // literalValue
        begin
          // parcours les blocs de 5 bits jusqu'à un 0 entete
          LiteralTreeNode := TreeView1.Items.AddChild(Racine, 'Literal Version ' + PacketVersion);
          NbSectionBit := 0;
          ValeurLiteral := 0;
          repeat
            SectionBit := copy(ChaineADecoder, 8 + PositionBlocLiteral * 5, 4);
            MemoBinaire.Lines.Add('Literalbits' + SectionBit);
            TreeView1.Items.AddChild(LiteralTreeNode, 'value ' + SectionBit + ' ' + BinToInt64('0000' + SectionBit, sb8Bits).tostring);
            ValeurLiteral := ValeurLiteral * 16 + BinToInt64('0000' + SectionBit, sb8Bits);
            NbSectionBit := NbSectionBit + 1;
            PositionBlocLiteral := PositionBlocLiteral + 1;

            if copy(ChaineADecoder, 2 + PositionBlocLiteral * 5, 1) = '' then
              begin
                ShowMessage('non consistant');
              end;
          until (copy(ChaineADecoder, 2 + PositionBlocLiteral * 5, 1) = '0') or (copy(ChaineADecoder, 2 + PositionBlocLiteral * 5, 1) = '');

          LiteralTreeNode.Text := 'Literal Version ' + PacketVersionNombre.tostring + ' Value ' + ValeurLiteral.tostring;

          Result.Valeur := ValeurLiteral;
          Result.Length := 6 + PositionBlocLiteral * 5;
          TreeView1.Items.AddChild(Racine, 'Utilise ' + TRegex.Replace(copy(ChaineADecoder, 1, Result.Length), '(\d\d\d)(\d\d\d)(.*)', '$1 $2 $3'));
          TreeView1.Items.AddChild(Racine, 'Utilise ' + Result.Length.tostring + ' bits');
        end
      else // OperatorPacket
        begin
          // parcours les blocs de 5 bits jusqu'à un 0 entete
          // repeat
          NbPacketOrNbBits := copy(ChaineADecoder, 7, 1);

          if NbPacketOrNbBits = '0' then // number of bit
            begin
              nbbitlu := 0;
              nbbit := BinToInt64('0' + copy(ChaineADecoder, 8, 15), sb16Bits);
              Racine1 := TreeView1.Items.AddChild(Racine, 'Operator Type ' + PacketTypeIDNombre.tostring + ' Operator Version ' + PacketVersionNombre.tostring + ' with ' + nbbit.tostring + ' bits');
              // doit extraire le nombre de bit
              while nbbitlu < nbbit do
                begin
                  ResteDecodePacket := copy(ChaineADecoder, 8 + 15 + nbbitlu, Length(ChaineADecoder));
                  // TreeView1.Items.AddChild(Racine, 'RestePacket : ' + ResteDecodePacket);
                  ResultTemp := DecoderPacket(ResteDecodePacket, Racine1);
                  SetLength(TableauDeResultatsPacket, Length(TableauDeResultatsPacket) + 1);
                  TableauDeResultatsPacket[Length(TableauDeResultatsPacket) - 1] := ResultTemp.Valeur;
                  nbbitlu := nbbitlu + ResultTemp.Length;
                  if ResteDecodePacket = '' then
                    begin
                      nbbit := 0;
                    end
                  else
                    begin
                      ResteDecodePacket := copy(ChaineADecoder, 8 + 15, 8 + 15 + nbbitlu);
                    end;
                end;
              Result.Length := 8 + 14 + nbbitlu;
              if nbbit <> nbbitlu then
                ShowMessage('Non consistant');
              TreeView1.Items.AddChild(Racine, 'Utilise ' + TRegex.Replace(copy(ChaineADecoder, 1, Result.Length), '([\d]{3})([\d]{3})([\d]{15})(.*)', '$1 $2 $3 $4'));
              TreeView1.Items.AddChild(Racine, 'Utilise ' + Result.Length.tostring + ' bits');
            end
          else // number of Packet
            begin
              nbSubPacket := BinToInt64('00000' + copy(ChaineADecoder, 8, 11) + '', sb16Bits);
              Racine1 := TreeView1.Items.AddChild(Racine, 'Operator Type ' + PacketTypeIDNombre.tostring + 'Operator Version ' + PacketVersionNombre.tostring + ' with ' + nbSubPacket.tostring + ' packets');
              nbbitlu := 0;
              // doit extraire le nombre de packet
              for k := 1 to nbSubPacket do
                begin
                  ResteDecodePacket := copy(ChaineADecoder, 8 + 11 + nbbitlu, Length(ChaineADecoder));
                  // TreeView1.Items.AddChild(Racine, 'RestePacket : ' + ResteDecodePacket);

                  if ResteDecodePacket = '' then
                    begin
                      MemoInputSample.Lines.Text := ChaineADecoder;
                    end
                  else
                    begin
                      ResultTemp := DecoderPacket(ResteDecodePacket, Racine1);
                      SetLength(TableauDeResultatsPacket, Length(TableauDeResultatsPacket) + 1);
                      TableauDeResultatsPacket[Length(TableauDeResultatsPacket) - 1] := ResultTemp.Valeur;

                      nbbitlu := nbbitlu + ResultTemp.Length;
                    end;
                end;
              PrevSibling := Racine1.GetPrevSibling;
              // if PrevSibling <> nil then
              // Racine1.MoveTo(PrevSibling, naInsert);
              ResteDecodePacket := copy(ChaineADecoder, 8 + 11, 8 + 11 + nbbitlu);
              Result.Length := 8 + 10 + nbbitlu;
              TreeView1.Items.AddChild(Racine, 'Utilise ' + TRegex.Replace(copy(ChaineADecoder, 1, Result.Length), '([\d]{3})([\d]{3})([\d]{11})(.*)', '$1 $2 $3 $4'));
              TreeView1.Items.AddChild(Racine, 'Utilise ' + Result.Length.tostring + ' bits');
            end;

          case PacketTypeIDNombre of
            0:
              begin
                Result.Valeur := 0;
                for i := 0 to Length(TableauDeResultatsPacket) - 1 do
                  begin
                    Result.Valeur := Result.Valeur + TableauDeResultatsPacket[i];
                  end;
              end;
            1:
              begin
                Result.Valeur := 1;
                for i := 0 to Length(TableauDeResultatsPacket) - 1 do
                  begin
                    Result.Valeur := Result.Valeur * TableauDeResultatsPacket[i];
                  end;

              end;
            2:
              begin
                Result.Valeur := TableauDeResultatsPacket[0];
                for i := 0 to Length(TableauDeResultatsPacket) - 1 do
                  begin
                    Result.Valeur := min(Result.Valeur, TableauDeResultatsPacket[i]);
                  end;

              end;
            3:
              begin
                Result.Valeur := TableauDeResultatsPacket[0];
                for i := 0 to Length(TableauDeResultatsPacket) - 1 do
                  begin
                    Result.Valeur := max(Result.Valeur, TableauDeResultatsPacket[i]);
                  end;
              end;
            5:
              begin
                if TableauDeResultatsPacket[0] > TableauDeResultatsPacket[1] then
                  Result.Valeur := 1
                else
                  Result.Valeur := 0;
              end;
            6:
              begin
                if TableauDeResultatsPacket[0] < TableauDeResultatsPacket[1] then
                  Result.Valeur := 1
                else
                  Result.Valeur := 0;
              end;
            7:
              begin
                if TableauDeResultatsPacket[0] = TableauDeResultatsPacket[1] then
                  Result.Valeur := 1
                else
                  Result.Valeur := 0;
              end;
          end;
          TreeView1.Items.AddChild(Racine, 'Resulat ' + Result.Valeur.tostring);

          MemoBinaire.Lines.Add('Operator ' + PacketTypeID + '  ' + SectionBit + ' ' + Result.Valeur.tostring);
          // until copy(ChaineADecoder, 7 + PositionBlocLiteral * 5, 1) = '0';
        end;
    end
  else
    ShowMessage('maxtree');

end;

procedure TForm5.ListBox1Click(Sender: TObject);
begin
  MemoInputSample.Clear;
  MemoInputSample.Lines.Add(ListBox1.Items[ListBox1.ItemIndex]);
end;

end.
