object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Advent of Code Day 15-2021 6lv1-Blr  Djikstra Risque'
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
  object Label2: TLabel
    Left = 920
    Top = 262
    Width = 34
    Height = 15
    Caption = 'Label2'
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
      
        '1153122486338196417261639921288211131723142991381714663988573539' +
        '371125147579911789799911191116969182'
      
        '1831332932365721112271938859551961274184513439211372318789319176' +
        '946137219492492161941188122228928142'
      
        '9821911543414142186827941122266167714126412612261328558992198212' +
        '729611567923298114131222451713511114'
      
        '7246861617121926197913771333862216431691242331821373133472917112' +
        '415411291112194329821255594119385913'
      
        '7283532811518311511133564162553362112249591513461311252729218443' +
        '397781539589433111319711824661393631'
      
        '2515929137212718342949516922111713621859318118719617839125124564' +
        '721161658335944181553941811143591517'
      
        '4916512552144322517215234299958319381621661767349167411222321248' +
        '229439251953192958644239143882919241'
      
        '6262117322113477913692595649873914143546632433711128717141141195' +
        '552948491953485631229194119276499991'
      
        '7392251899873812797958691238437453551415231331821364182879918291' +
        '981738573962231152511911211128951113'
      
        '8413992251188993837397124261942199712837511841216512261395311785' +
        '116811331719185479137512367447923291'
      
        '5231148122926582218424829117852548196215169569393712471373474748' +
        '341292612868417935562413892295951885'
      
        '6969394124432223195175331296521928139597331582718251211495645114' +
        '941612246194231312174117214121281842'
      
        '1492115983511981562257418211112925117322921195483112122256639228' +
        '399618419541416852185938991328915818'
      
        '3337387528424632949433449211831892186689931141431821341112121116' +
        '121183221372428184716111222586158651'
      
        '2919993831163121652312168296893876448879562949946693212289822132' +
        '922233191147264817817431124414532533'
      
        '9831131365513121681981321111241225246211721245114513343139123311' +
        '189247841338544122968113145391142716'
      
        '1727694314953352984564533684197836278119128336766459163262254212' +
        '898918649112624992813951781316416374'
      
        '2271812917172151781117223114852112121981121667671421934421226898' +
        '295554752996914271128911169789451951'
      
        '9641181231223141385164135392637559471954819529821233561311577143' +
        '643837514229221871189471954194331152'
      
        '4842773719613551934224188641425166389122136165128121415358911721' +
        '153164127212813948168736781136952951'
      
        '1192227966237198835311112231914836119223535631325132172552427754' +
        '922112812179423656275381194611522453'
      
        '4587521661134142224185212119671223232647264672526518611961218313' +
        '988518799959611424294177988911237867'
      
        '7841978128159981542211119531397179123564484381479727821915161363' +
        '181216177352158299813648446813627222'
      
        '7284166795958241131999192919211621771144435542434154129323533329' +
        '121215444282759763242637299473619699'
      
        '1521878281243112584389365171394192883659218227373853328197872435' +
        '319181781919941925172732491338886311'
      
        '1327321441516991964782129484116368713248197522187147122388963111' +
        '996334499727625711211235126217275463'
      
        '5432221784759463981982328941214217778116531411971739126861352255' +
        '217191611697312757994113151311379972'
      
        '1185912419912167768598675227235243957241898718929234342122112138' +
        '667448683289595212416151634918119782'
      
        '2142391197693165425931997914283877473934922668732952746725116377' +
        '382215211222574165995121111118383226'
      
        '2517671922159312542191175127158214971341213911213276212516415975' +
        '771618811321511144775331189114464662'
      
        '7422195152192114261215487181219928252132916876218849814118182116' +
        '115931338892173123147871155216241119'
      
        '3619695411396123442155212519261891139921251199959962859246511384' +
        '671182317569141243719313574613299114'
      
        '2895333123772993112294182624661491247795159971883633469119158351' +
        '982981542649324118914796267121748913'
      
        '1421145424229377289371813129244589145113287748254253711637741529' +
        '919416291278816369198475199772891934'
      
        '4226139942429431915575192843585749419348133173935216599874822673' +
        '919238822771191128122524833751214529'
      
        '1682417751943991485271671248268311378571948341453293291196141934' +
        '239152143595141717431161329855424112'
      
        '9916921853141162653286394526948121272378729683198391723494146711' +
        '544133983626379417921189376352821798'
      
        '3251721727717131197339261311211519541459852173796114841169131848' +
        '229719476992898439988142411881982514'
      
        '4224411911215323811873118144131911362211323994194273231611315238' +
        '461136131411252251162414111299942115'
      
        '2245998155138161121631272285319936718281123752141998833128632147' +
        '447117622119239893148242825136988411'
      
        '5128199191117746931424197696535944336182191931232292669562695112' +
        '789951271493241291449919211342319956'
      
        '6185982121672329189115713515854662969113811769468312383127983222' +
        '331916531821851915411131158716583266'
      
        '5447295461711381231589918947462282687649213121842921247116618391' +
        '182167591292292272427141281715111177'
      
        '8257924948412473451961749898696413137392994416792374818227237143' +
        '259116197488773961321624141163921432'
      
        '5189182291437314198489212141482184531697461226931512711191277526' +
        '274712938812991613191947812232211244'
      
        '4555193184311911877999628197321551669874119131381183472179843972' +
        '338461241911119924731168169352182272'
      
        '1121437621439149119353295941221222611786169917291122315558611419' +
        '191633395499286111392381131171511238'
      
        '3181921181713184161942383164918982475421419929329239389548923261' +
        '242417419233827235774153744131399151'
      
        '2144212113563135873312739193234226974131375159978272831447529333' +
        '649424911425997613845276711174127394'
      
        '3139444361591195812958262711719931339591119823111113659752771219' +
        '379921513182322111739482111579992212'
      
        '5621114341514728539451953111111724132613731214322289351224233177' +
        '342291112529731353511549332152218981'
      
        '6158168164191463855184279714113662914367391459179668815811157124' +
        '186552341548726599639264298312521815'
      
        '1995166266961996427961626535695212999191152112511338187611994115' +
        '221111513691288611241921111251372396'
      
        '1339761931754125912894291611219167392229911558394529712234844524' +
        '138351824911642926117836229449412319'
      
        '9127349377251112496211472777128795852299174781996397114134149188' +
        '119193322618691616951273511925125149'
      
        '8979991927511499882118151229977284915581711491442571271831929283' +
        '464123921696618123459172952156541118'
      
        '1911692955379514126841178174387511771789182282127314533841585231' +
        '141954116191778276825221831612429254'
      
        '5812355192199983562136559621645794551755421236216311141149191254' +
        '313741187262232164511315391297811915'
      
        '3424115732536482892978161186279711991592926127111589527519294376' +
        '927741975118126955891355141746112114'
      
        '6989941658111289514721269122153856231312841221973781139894173114' +
        '171591227833319376143957344117411911'
      
        '6125319278191932229114977252161577595177236842461172428859131892' +
        '491678152164849198117325377432911476'
      
        '1152159324115134285596152231419112191947931122416535331212222762' +
        '281719735281322382683941829919252797'
      
        '1119721171315374228473139951219963744542691955341851975111136422' +
        '261596313992998971487819823291188481'
      
        '7916691142991816614421279131181771221333191348939869225827422531' +
        '914334297979111781117184291912141817'
      
        '4459327512328523319571281171326141578961259819944448411558661132' +
        '918284758431913397353129322141161339'
      
        '2636366417937791462122113461636413998893541599942374691221751914' +
        '312218911394582119131724772161614249'
      
        '2312134166373181653911821772162314821142231391492122319111729983' +
        '112421444715911629144339121416957937'
      
        '3112516582317416535542536957174341267787173494338391217911299591' +
        '219692263281699341161832522294199592'
      
        '9514591666441193718119658181314241938166223118279113851527114813' +
        '726452723842267929929348492111811581'
      
        '2482729124382111776179548733255881848149314161382118317221111921' +
        '159882699921428496911916531781511634'
      
        '9673188569811459713271234169339644147411196161312836419131114224' +
        '582591681121732551983658361231121738'
      
        '5977261429276572591351918817394787862812237116862142154391916283' +
        '123565283389128193466927821786719949'
      
        '1769231445614929166298921531456368161915897211818781845929893127' +
        '147256121829334316761162311125197837'
      
        '1312932111292124723831423127589975348261278421245946222431414328' +
        '266141181139541218291313371199864618'
      
        '1591541125718121791926128149145611995157614226342145453466331146' +
        '123719411716214432222151824877286273'
      
        '5619772119639321277117794132142411693117313872211776175416651697' +
        '194197314115755297937932111148312514'
      
        '3178155419234246512532322711217369829144825612481941883499963679' +
        '121511192214851616393725262185717671'
      
        '8114544152321812691913671222116334143125135245317392176495119442' +
        '215315158941951195112914646111416558'
      
        '2741424121962339159791233465491165831161141431641127346424975111' +
        '522251556164932982924154345265421893'
      
        '9921292358581466829119129911354441116986795112151124693382512674' +
        '629191214183823931133116279292839481'
      
        '4569992111222111767136498792647332989342421348986559111618194724' +
        '271412113395213251221446621936113217'
      
        '4991122344121493911982135121517399926352621891628211138999762133' +
        '631115524112414391988299737366143123'
      
        '1114219232723168147329499525731115791152145213242183484163395711' +
        '685154619941295185822161212821127794'
      
        '3839939524162212272145271115941119628111292192143171182921748857' +
        '216541211912191929681297597929989911'
      
        '6189222318123913691725491531195561764199223114289691819733939824' +
        '312544261311413928241912419255471755'
      
        '6426739442179681969621433347831187114554482194517792954314812523' +
        '872919511933951481153159254111697312'
      
        '3891136638118997612371161161869992758221428676819193193631251844' +
        '929339437511925493964819195151911142'
      
        '3115528121186224125618416185811129492665191334214154857416725217' +
        '848287113213313571291989451911312351'
      
        '1921697432735261814811926199115788283324123249786652194311225419' +
        '818513851175191913114233615261679173'
      
        '9444991493136334111115319771955169591434195411111175815119829517' +
        '874288512561129573999727849941111891'
      
        '1431112211573298299618391113146347462491189192712317692165138111' +
        '135921811621112921281114883152314218'
      
        '5349597921218431142281944271195411131831918391119511453181163891' +
        '916131323533571231586827199329874375'
      
        '2393311319453249344541783217229449844183323339879189832259959321' +
        '537131883822116122414429411226898557'
      
        '5457346279314981225362682181133799953141791522219253884328373198' +
        '344561547931335524431911513277866156'
      
        '9699896735252183122231391818121491312934119311392547291169316419' +
        '871163336631292698139515916993934313'
      
        '8556743922581192811645225163415825162574946272881497914233171916' +
        '774511883981111996335911294624327449'
      
        '7521896193918149224732111989318369361944639558148182889252323156' +
        '955979551215231329134223563528193297'
      
        '1911494977559119125389742991144919361368163938188656739221192361' +
        '834613121494215789387959266616116631'
      
        '9511636215215555892846453398163358213162129919192181114219891142' +
        '443311555291982463217261131119391179'
      
        '1549621141231921135259218425986586892253161313771915914851811321' +
        '611989191411321126995515519721279591')
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
      '1163751742'
      '1381373672'
      '2136511328'
      '3694931569'
      '7463417111'
      '1319128137'
      '1359912421'
      '3125421639'
      '1293138521'
      '2311944581')
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
      object StringGridRisk: TStringGrid
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
        RowHeights = (
          25
          25
          25
          25
          25)
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
    EditLabel.Width = 189
    EditLabel.Height = 15
    EditLabel.Caption = 'Resultat Part 1  /attendu sample : 40'
    TabOrder = 8
    Text = ''
  end
  object LabeledEditResultPart2: TLabeledEdit
    Left = 893
    Top = 587
    Width = 121
    Height = 23
    Anchors = [akTop, akRight]
    EditLabel.Width = 133
    EditLabel.Height = 15
    EditLabel.Caption = 'Resultat Part 2  /sample : '
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
    OnClick = Button1Click
  end
  object Button3: TButton
    Left = 974
    Top = 200
    Width = 129
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Etape 2.1 Sur Sample'
    TabOrder = 13
    OnClick = Button3Click
  end
end
