object Form5: TForm5
  Left = 0
  Top = 0
  Caption = 'Form5'
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
  object Label2: TLabel
    Left = 710
    Top = 631
    Width = 266
    Height = 45
    Anchors = [akRight, akBottom]
    Caption = 
      'choisir ci dessous un des diff'#233'rent sample puis cliquer sur le b' +
      'outon semple (apr'#232's un clear treeview si besoin)'
    WordWrap = True
  end
  object ButtonEtape1_1: TButton
    Left = 770
    Top = 8
    Width = 75
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Etape 1 et 2'
    TabOrder = 0
    OnClick = ButtonEtape1_1Click
  end
  object MemoInputPuzzle: TMemo
    Left = 0
    Top = 625
    Width = 289
    Height = 186
    Anchors = [akLeft, akBottom]
    Lines.Strings = (
      
        '420D598021E0084A07C98EC91DCAE0B880287912A925799429825980593D7DCD' +
        '400820329480BF21003CC0086028910097520230C80813401D8CC00F60188180' +
        '5705003CC00E200E98400F50031801D160048E5AFEFD5E5C02B93F2F4C11CADB' +
        'BB799CB294C5FDB8E12C40139B7C98AFA8B2600DCBAF4D3A4C27CB54EA6F5390' +
        'B1004B93E2F40097CA2ECF70C1001F296EF9A647F5BFC48C012C0090E675DF64' +
        '4A675DF645A7E6FE600BE004872B1B4AAB5273ED601D2CD240145F802F2CFD31' +
        'EFBD4D64DD802738333992F9FFE69CAF088C010E0040A5CC65CD25774830A803' +
        '72F9D78FA4F56CB6CDDC148034E9B8D2F189FD002AF3918AECD2310095360090' +
        '0021D1863142400043214C668CB31F073005A6E467600BCB1F4B1D2805930092' +
        'F99C69C6292409CE6C4A4F530F100365E8CC600ACCDB75F8A50025F2361C9D24' +
        '8EF25B662014870035600042A1DC77890200D41086B0FE4E918D82CC015C00DC' +
        'C0010F8FF112358002150DE194529E9F7B9EE064C015B005C401B8470F60C080' +
        '371460CC469BA7091802F39BE6252858720AC2098B596D40208A53CBF3594092' +
        'FF7B41B3004A5DB25C864A37EF82C401C9BCFE94B7EBE2D961892E0C1006A32C' +
        '4160094CDF53E1E4CDF53E1D8005FD3B8B7642D3B4EB9C4D819194C0159F1ED0' +
        '0526B38ACF6D73915F3005EC0179C359E129EFDEFEEF1950005988E001C9C799'
      
        'ABCE39588BB2DA86EB9ACA22840191C8DFBE1DC005EE55167EFF89510010B322' +
        '925A7F85A40194680252885238D7374C457A6830C012965AE00D4C40188B306E' +
        '3580021319239C2298C4ED288A1802B1AF001A298FD53E63F54B7004A68B25A9' +
        '4BEBAAA00276980330CE0942620042E3944289A600DC388351BDC00C9DCDCFC8' +
        '050E00043E2AC788EE200EC2088919C0010A82F0922710040F289B28E524632A' +
        'E0')
    ScrollBars = ssBoth
    TabOrder = 1
    WordWrap = False
  end
  object MemoInputSample: TMemo
    Left = 415
    Top = 627
    Width = 289
    Height = 186
    Anchors = [akLeft, akBottom]
    Lines.Strings = (
      '8A004A801A8002F478')
    ScrollBars = ssBoth
    TabOrder = 2
    WordWrap = False
  end
  object ButtonEtape1_1Sample: TButton
    Left = 851
    Top = 8
    Width = 129
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Etape 1 et 2  Sur Sample'
    TabOrder = 3
    OnClick = ButtonEtape1_1SampleClick
  end
  object Button2: TButton
    Left = 295
    Top = 724
    Width = 114
    Height = 56
    Anchors = [akLeft, akBottom]
    Caption = 'Coller le presse papier dans le memo'
    TabOrder = 4
    WordWrap = True
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 5
    Width = 764
    Height = 620
    ActivePage = TabSheet2
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 5
    object TabSheet1: TTabSheet
      Caption = 'TabSheet1'
      object Splitter1: TSplitter
        Left = 303
        Top = 0
        Height = 590
        Align = alRight
        ExplicitLeft = 168
        ExplicitTop = 96
        ExplicitHeight = 100
      end
      object StringGridRisk: TStringGrid
        Left = 306
        Top = 0
        Width = 450
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
        Width = 303
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
    EditLabel.Caption = 'Resultat Part 1  /attendu sample : 16'
    TabOrder = 6
    Text = ''
  end
  object LabeledEditResultPart2: TLabeledEdit
    Left = 766
    Top = 587
    Width = 195
    Height = 23
    Anchors = [akTop, akRight]
    EditLabel.Width = 180
    EditLabel.Height = 15
    EditLabel.Caption = 'Resultat Part 2  sur C200B40A82 : 3'
    TabOrder = 7
    Text = ''
  end
  object ButtonClearTreeView: TButton
    Left = 851
    Top = 39
    Width = 129
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Clear TreeView'
    TabOrder = 8
    OnClick = ButtonClearTreeViewClick
  end
  object ListBox1: TListBox
    Left = 710
    Top = 682
    Width = 273
    Height = 126
    Anchors = [akLeft, akBottom]
    ItemHeight = 15
    Items.Strings = (
      'C200B40A82'
      'D2FE28'
      '38006F45291200'
      'EE00D40C823060'
      '8A004A801A8002F478'
      '620080001611562C8802118E34'
      'C0015000016115A2E0802F182340'
      'A0016C880162017C3686B18A3D4780')
    TabOrder = 9
    OnClick = ListBox1Click
  end
end
