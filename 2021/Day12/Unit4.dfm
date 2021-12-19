object Form4: TForm4
  Left = 0
  Top = 0
  Caption = 'Advent of Code Day 12-2021 6lv1-Blr'
  ClientHeight = 568
  ClientWidth = 957
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  PixelsPerInch = 96
  DesignSize = (
    957
    568)
  TextHeight = 15
  object Label1: TLabel
    Left = 743
    Top = 343
    Width = 206
    Height = 58
    Caption = 
      'Je n'#39'ai pas pris le temps de faire une version optimis'#233'e en arra' +
      'y. la partie 2 prend pas mal de temps '#224' s'#39'ex'#233'cuter du coup.'
    WordWrap = True
  end
  object MemoInputPuzzle: TMemo
    Left = 0
    Top = 450
    Width = 249
    Height = 113
    Anchors = [akLeft, akBottom]
    Lines.Strings = (
      'FK-gc'
      'gc-start'
      'gc-dw'
      'sp-FN'
      'dw-end'
      'FK-start'
      'dw-gn'
      'AN-gn'
      'yh-gn'
      'yh-start'
      'sp-AN'
      'ik-dw'
      'FK-dw'
      'end-sp'
      'yh-FK'
      'gc-gn'
      'AN-end'
      'dw-AN'
      'gn-sp'
      'gn-FK'
      'sp-FK'
      'yh-gc')
    ScrollBars = ssBoth
    TabOrder = 0
    WordWrap = False
  end
  object MemoInputSample: TMemo
    Left = 375
    Top = 450
    Width = 249
    Height = 113
    Anchors = [akLeft, akBottom]
    Lines.Strings = (
      'dc-end'
      'HN-start'
      'start-kj'
      'dc-start'
      'dc-HN'
      'LN-dc'
      'HN-end'
      'kj-sa'
      'kj-HN'
      'kj-dc')
    ScrollBars = ssVertical
    TabOrder = 1
    WordWrap = False
  end
  object Button2: TButton
    Left = 255
    Top = 491
    Width = 114
    Height = 56
    Anchors = [akLeft, akBottom]
    Caption = 'Coller le presse papier dans le memo'
    TabOrder = 2
    WordWrap = True
    OnClick = Button2Click
  end
  object StringGridPuzzle: TStringGrid
    Left = 8
    Top = 8
    Width = 257
    Height = 436
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 3
  end
  object ButtonEtape1_1: TButton
    Left = 744
    Top = 8
    Width = 75
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Etape 1.1'
    TabOrder = 4
    OnClick = ButtonEtape1_1Click
  end
  object ButtonEtape1_2: TButton
    Left = 744
    Top = 39
    Width = 75
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Etape 1.2'
    TabOrder = 5
    OnClick = ButtonEtape1_2Click
  end
  object ButtonEtape2_1: TButton
    Left = 744
    Top = 152
    Width = 75
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Etape 2.1'
    TabOrder = 6
    OnClick = ButtonEtape2_1Click
  end
  object Button1: TButton
    Left = 825
    Top = 8
    Width = 129
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Etape 1.1 Sur Sample'
    TabOrder = 7
    OnClick = Button1Click
  end
  object LabeledEditResultPart1: TLabeledEdit
    Left = 743
    Top = 266
    Width = 121
    Height = 23
    Anchors = [akTop, akRight]
    EditLabel.Width = 101
    EditLabel.Height = 15
    EditLabel.Caption = 'Resultat Part 1 ou 2'
    TabOrder = 8
    Text = ''
  end
  object Memo1: TMemo
    Left = 679
    Top = 447
    Width = 249
    Height = 113
    Anchors = [akLeft, akBottom]
    ScrollBars = ssVertical
    TabOrder = 9
    WordWrap = False
  end
  object Memo2: TMemo
    Left = 271
    Top = 8
    Width = 466
    Height = 433
    TabOrder = 10
  end
  object ButtonEtape2_2: TButton
    Left = 743
    Top = 183
    Width = 75
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Etape 2.2'
    TabOrder = 11
    OnClick = ButtonEtape1_2Click
  end
end
