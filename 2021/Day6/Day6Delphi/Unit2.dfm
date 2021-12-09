object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
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
    Left = 88
    Top = 64
    Width = 105
    Height = 25
    Caption = 'Lance le Calcul'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 64
    Top = 136
    Width = 521
    Height = 23
    TabOrder = 1
  end
  object SpinEdit1: TSpinEdit
    Left = 208
    Top = 65
    Width = 121
    Height = 24
    MaxValue = 0
    MinValue = 0
    TabOrder = 2
    Value = 80
  end
  object Memo1: TMemo
    Left = 88
    Top = 0
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
end
