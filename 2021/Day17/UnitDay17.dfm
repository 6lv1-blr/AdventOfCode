object Form7: TForm7
  Left = 0
  Top = 0
  Caption = 'Form7'
  ClientHeight = 811
  ClientWidth = 984
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  PixelsPerInch = 96
  DesignSize = (
    984
    811)
  TextHeight = 15
  object Label1: TLabel
    Left = 295
    Top = 643
    Width = 98
    Height = 75
    Anchors = [akLeft, akBottom]
    Caption = 
      '<--- Coller votre input puzzle ici en supprimant  d'#39'abord tout c' +
      'elui pr'#233'sent'
    WordWrap = True
    ExplicitTop = 651
  end
  object ButtonEtape1_1: TButton
    Left = 770
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
    Top = 627
    Width = 289
    Height = 186
    Anchors = [akLeft, akBottom]
    Lines.Strings = (
      'target area: x=155..182, y=-117..-67')
    ScrollBars = ssBoth
    TabOrder = 1
    WordWrap = False
  end
  object ButtonEtape1_2: TButton
    Left = 770
    Top = 39
    Width = 151
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Etape 1.2 et Etape 2'
    TabOrder = 2
    OnClick = ButtonEtape1_2Click
  end
  object MemoInputSample: TMemo
    Left = 415
    Top = 625
    Width = 289
    Height = 186
    Anchors = [akLeft, akBottom]
    Lines.Strings = (
      'target area: x=20..30, y=-10..-5')
    ScrollBars = ssBoth
    TabOrder = 3
    WordWrap = False
  end
  object ButtonEtape1_1Sample: TButton
    Left = 851
    Top = 8
    Width = 129
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Etape 1.1 Sur Sample'
    TabOrder = 4
    OnClick = ButtonEtape1_1SampleClick
  end
  object Button2: TButton
    Left = 295
    Top = 724
    Width = 114
    Height = 56
    Anchors = [akLeft, akBottom]
    Caption = 'Coller le presse papier dans le memo'
    TabOrder = 5
    WordWrap = True
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 5
    Width = 764
    Height = 620
    ActivePage = TabSheet1
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 6
    object TabSheet1: TTabSheet
      Caption = 'TabSheet1'
      object Splitter1: TSplitter
        Left = 613
        Top = 0
        Height = 590
        Align = alRight
        ExplicitLeft = 168
        ExplicitTop = 96
        ExplicitHeight = 100
      end
      object StringGridAlgoImage: TStringGrid
        Left = 616
        Top = 0
        Width = 140
        Height = 590
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
        Width = 613
        Height = 590
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
    object TabSheet2: TTabSheet
      Caption = 'TabSheet2'
      ImageIndex = 1
      object TreeView1: TTreeView
        Left = 0
        Top = 0
        Width = 756
        Height = 590
        Align = alClient
        Indent = 19
        TabOrder = 0
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'TabSheet3'
      ImageIndex = 2
      object MemoBinaire: TMemo
        Left = 0
        Top = 0
        Width = 756
        Height = 590
        Align = alClient
        ScrollBars = ssBoth
        TabOrder = 0
        WordWrap = False
      end
    end
  end
  object LabeledEditResultPart1: TLabeledEdit
    Left = 766
    Top = 536
    Width = 121
    Height = 23
    Anchors = [akTop, akRight]
    EditLabel.Width = 189
    EditLabel.Height = 15
    EditLabel.Caption = 'Resultat Part 1  /attendu sample : 45'
    TabOrder = 7
    Text = ''
  end
  object LabeledEditResultPart2: TLabeledEdit
    Left = 766
    Top = 587
    Width = 121
    Height = 23
    Anchors = [akTop, akRight]
    EditLabel.Width = 154
    EditLabel.Height = 15
    EditLabel.Caption = 'Resultat Part 2  /sample :  112'
    TabOrder = 8
    Text = ''
  end
end
