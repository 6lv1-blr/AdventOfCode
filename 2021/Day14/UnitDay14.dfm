object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Advent of Code Day 11-2021 6lv1-Blr'
  ClientHeight = 819
  ClientWidth = 1111
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  PixelsPerInch = 96
  DesignSize = (
    1111
    819)
  TextHeight = 15
  object Label1: TLabel
    Left = 295
    Top = 651
    Width = 98
    Height = 75
    Anchors = [akLeft, akBottom]
    Caption = 
      '<--- Coller votre input puzzle ici en supprimant  d'#39'abord tout c' +
      'elui pr'#233'sent'
    WordWrap = True
  end
  object ButtonEtape1_1: TButton
    Left = 897
    Top = 8
    Width = 75
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Etape 1.1'
    TabOrder = 0
    OnClick = ButtonEtape1_1Click
  end
  object MemoInputPuzzle: TMemo
    Left = 0
    Top = 634
    Width = 289
    Height = 186
    Anchors = [akLeft, akBottom]
    Lines.Strings = (
      'KBKPHKHHNBCVCHPSPNHF'
      ''
      'OP -> H'
      'CF -> C'
      'BB -> V'
      'KH -> O'
      'CV -> S'
      'FV -> O'
      'FS -> K'
      'KO -> C'
      'PP -> S'
      'SH -> K'
      'FH -> O'
      'NF -> H'
      'PN -> P'
      'BO -> H'
      'OK -> K'
      'PO -> P'
      'SF -> K'
      'BF -> P'
      'HH -> S'
      'KP -> H'
      'HB -> N'
      'NP -> V'
      'KK -> P'
      'PF -> P'
      'BK -> V'
      'OF -> H'
      'FO -> S'
      'VC -> P'
      'FK -> B'
      'NK -> S'
      'CB -> B'
      'PV -> C'
      'CO -> N'
      'BN -> C'
      'HV -> H'
      'OC -> N'
      'NB -> O'
      'CS -> S'
      'HK -> C'
      'VS -> F'
      'BH -> C'
      'PC -> S'
      'KC -> O'
      'VO -> P'
      'FB -> K'
      'BV -> V'
      'VN -> N'
      'ON -> F'
      'VH -> H'
      'CN -> O'
      'HO -> O'
      'SV -> O'
      'SS -> H'
      'KF -> N'
      'SP -> C'
      'NS -> V'
      'SO -> F'
      'BC -> P'
      'HC -> C'
      'FP -> H'
      'OH -> S'
      'OB -> S'
      'HF -> V'
      'SC -> B'
      'SN -> N'
      'VK -> C'
      'NC -> V'
      'VV -> S'
      'SK -> K'
      'PK -> K'
      'PS -> N'
      'KB -> S'
      'KS -> C'
      'NN -> C'
      'OO -> C'
      'BS -> B'
      'NV -> H'
      'FF -> P'
      'FC -> N'
      'OS -> H'
      'KN -> N'
      'VP -> B'
      'PH -> N'
      'NH -> S'
      'OV -> O'
      'FN -> V'
      'CP -> B'
      'NO -> V'
      'CK -> C'
      'VF -> B'
      'HS -> B'
      'KV -> K'
      'VB -> H'
      'SB -> S'
      'BP -> S'
      'CC -> F'
      'HP -> B'
      'PB -> P'
      'HN -> P'
      'CH -> O')
    ScrollBars = ssBoth
    TabOrder = 1
    WordWrap = False
  end
  object ButtonEtape1_2: TButton
    Left = 897
    Top = 39
    Width = 75
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Etape 1.2'
    TabOrder = 2
    OnClick = ButtonEtape1_2Click
  end
  object ButtonEtape2_2: TButton
    Left = 897
    Top = 231
    Width = 75
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Etape 2.2'
    TabOrder = 3
    OnClick = ButtonEtape2_2Click
  end
  object MemoInputSample: TMemo
    Left = 415
    Top = 634
    Width = 289
    Height = 186
    Anchors = [akLeft, akBottom]
    Lines.Strings = (
      'NNCB'
      ''
      'CH -> B'
      'HH -> N'
      'CB -> H'
      'NH -> C'
      'HB -> C'
      'HC -> B'
      'HN -> C'
      'NN -> C'
      'BH -> H'
      'NC -> B'
      'NB -> B'
      'BN -> B'
      'BB -> N'
      'BC -> B'
      'CC -> N'
      'CN -> C')
    ScrollBars = ssBoth
    TabOrder = 4
    WordWrap = False
  end
  object ButtonEtape1_1Sample: TButton
    Left = 978
    Top = 8
    Width = 129
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Etape 1.1 Sur Sample'
    TabOrder = 5
    OnClick = ButtonEtape1_1SampleClick
  end
  object Button2: TButton
    Left = 295
    Top = 732
    Width = 114
    Height = 56
    Anchors = [akLeft, akBottom]
    Caption = 'Coller le presse papier dans le memo'
    TabOrder = 6
    WordWrap = True
    OnClick = Button2Click
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 5
    Width = 891
    Height = 628
    ActivePage = TabSheet1
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 7
    object TabSheet1: TTabSheet
      Caption = 'TabSheet1'
      object Splitter1: TSplitter
        Left = 430
        Top = 0
        Height = 598
        Align = alRight
        ExplicitLeft = 168
        ExplicitTop = 96
        ExplicitHeight = 100
      end
      object StringGridReplacement: TStringGrid
        Left = 433
        Top = 0
        Width = 450
        Height = 598
        Align = alRight
        ColCount = 3
        DefaultColWidth = 120
        DefaultRowHeight = 25
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object StringGridPuzzle: TStringGrid
        Left = 0
        Top = 0
        Width = 430
        Height = 598
        Align = alClient
        ColCount = 3
        DefaultColWidth = 120
        DefaultRowHeight = 25
        FixedCols = 0
        FixedRows = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing, goTabs, goFixedRowDefAlign]
        ParentFont = False
        TabOrder = 1
      end
    end
  end
  object LabeledEditResultPart1: TLabeledEdit
    Left = 893
    Top = 536
    Width = 121
    Height = 23
    Anchors = [akTop, akRight]
    EditLabel.Width = 201
    EditLabel.Height = 15
    EditLabel.Caption = 'Resultat Part 1  /attendu sample : 1588'
    TabOrder = 8
    Text = ''
  end
  object LabeledEditResultPart2: TLabeledEdit
    Left = 893
    Top = 587
    Width = 121
    Height = 23
    Anchors = [akTop, akRight]
    EditLabel.Width = 211
    EditLabel.Height = 15
    EditLabel.Caption = 'Resultat Part 2  /sample : 2188189693529'
    TabOrder = 9
    Text = ''
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 800
    Width = 1111
    Height = 19
    Panels = <>
  end
  object ButtonEtape1_3: TButton
    Left = 897
    Top = 70
    Width = 75
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Etape 1.3'
    TabOrder = 11
    OnClick = ButtonEtape1_3Click
  end
  object Button1: TButton
    Left = 897
    Top = 200
    Width = 75
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Etape 2.1'
    TabOrder = 12
    OnClick = ButtonEtape1_1Click
  end
  object Button3: TButton
    Left = 974
    Top = 200
    Width = 129
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Etape 2.1 Sur Sample'
    TabOrder = 13
    OnClick = ButtonEtape1_1SampleClick
  end
end
