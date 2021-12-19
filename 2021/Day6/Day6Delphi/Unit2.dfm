object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Advent of Code Day 6-2021 6lv1-Blr'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  PixelsPerInch = 96
  TextHeight = 15
  object Label1: TLabel
    Left = 112
    Top = 112
    Width = 3
    Height = 15
  end
  object Button1: TButton
    Left = 72
    Top = 99
    Width = 105
    Height = 25
    Caption = 'Lance le Calcul'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 48
    Top = 171
    Width = 521
    Height = 23
    TabOrder = 1
  end
  object SpinEdit1: TSpinEdit
    Left = 192
    Top = 100
    Width = 121
    Height = 24
    MaxValue = 0
    MinValue = 0
    TabOrder = 2
    Value = 80
  end
  object Memo1: TMemo
    Left = 72
    Top = 35
    Width = 329
    Height = 57
    Lines.Strings = (
      'Chez moi commence '#224' s'#233'rieusement ralentir aux alentours '
      'de 130'
      'n'#39'arrive pas '#224' 256'
      ''
      'voir le mod'#232'le en python sur comment faire en plusieurs '
      'passes')
    TabOrder = 3
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 422
    Width = 624
    Height = 19
    Panels = <>
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 624
    Height = 29
    Caption = 'ToolBar1'
    TabOrder = 5
  end
  object Button2: TButton
    Left = 280
    Top = 232
    Width = 225
    Height = 25
    Caption = 'Mode Dictionnaire'
    TabOrder = 6
    OnClick = Button2Click
  end
  object LabeledEdit1: TLabeledEdit
    Left = 312
    Top = 304
    Width = 121
    Height = 23
    EditLabel.Width = 67
    EditLabel.Height = 15
    EditLabel.Caption = 'LabeledEdit1'
    TabOrder = 7
    Text = ''
  end
end
