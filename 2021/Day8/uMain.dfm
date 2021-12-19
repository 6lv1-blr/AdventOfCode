object fMain: TfMain
  Left = 0
  Top = 0
  Caption = 'Advent of Code 2012 Day 8 --- Sylvain Bouillon'
  ClientHeight = 672
  ClientWidth = 1122
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 15
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1122
    Height = 672
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Intro et PuzzleInput'
      DesignSize = (
        1114
        642)
      object MemoInputPuzzle: TMemo
        Left = 0
        Top = 0
        Width = 763
        Height = 642
        Align = alLeft
        Anchors = [akLeft, akTop, akRight, akBottom]
        Lines.Strings = (
          
            'gbdfcae ebcg cfg gc facegb fecab acfge cbfgda fedag caebfd | ecb' +
            'g bfcagd faegc gcf'
          
            'eacgf efcab fgc fedagc gdeaf cged aebfgd adcgfbe gc bdgcaf | fgb' +
            'acd cfega ecdg cg'
          
            'dfgae gcadef efb eb dcabf bgde edfba bcfaeg egcdfab fbgade | bge' +
            'd eafdb eb gfdea'
          
            'aefdb cafdgeb egdfac egdcba fcbd efd eadcb caefbd df aegbf | cfa' +
            'deg abfedgc fde bfcd'
          
            'dc deafg ecd dbaefc adcfeg cfged ecbfg acdg cafdegb gfeadb | dcg' +
            'a edc adfebcg ecgfb'
          
            'befdc bcfge befad degfab cde aecbfd gcedaf eafcgdb dc bcad | bde' +
            'afc cde ebdcafg daebgcf'
          
            'cd egdacfb fdc fecgb gabdf fbcdg fcgdeb gdcfea debc ecfbga | gfe' +
            'cb fbgecd bcgef dc'
          
            'fagcdbe gec gbdea ce bgedc aecd cgbeaf cfbdg gebcda dbfgae | cfb' +
            'aged cgbeaf ceg gadfbe'
          
            'gcbaf gfdb bdafc df adf adcbefg dcfeag cebad adfgcb faecgb | afd' +
            ' agfedc dcbfa gdfabc'
          
            'fbae cef fecdbg afbcg cefbga fe acdfgb gadce fbdacge fcage | fe ' +
            'abef gfbac cef'
          
            'cfdebg bg beg cabfeg fbgd acged ecgbd fdcbe cfbeda cebgadf | fbe' +
            'dc gadce gdaec bcfed'
          
            'gba ab fgbcd gedaf bcadge afbdgc cdgfbe agdfcbe bcfa bdfga | gab' +
            ' gdbfc ba fgdbcae'
          
            'fabdgce bfdgac cbaed dcb bgade fbaec fcde edbfac gfabec cd | dc ' +
            'cefd dc cd'
          
            'afc dbecafg fagce fbega fbgc edgca agecbf bafged eacdfb cf | cf ' +
            'bfdcaeg gfbc gfbc'
          
            'gedcb ebda cgbdfa fcaeg gab bfgdce ba agbce bdgecfa dgebca | bdg' +
            'fce cebagd cbdgfae dcfbeg'
          
            'egbacf acdfe gfecb egdfcb dfgaceb dfb dgcb fdbce db bdeafg | fdb' +
            ' db db bdf'
          
            'cfeg eabcf gdefcab bef geabc bfcad egbadf cfgbae egcdba fe | fge' +
            'c gaecfdb cagbef ef'
          
            'bafde dbgeac feacgbd cbaef bed bfgaed gafecd bgdf bd eafgd | db ' +
            'cfgdae caegdfb fabed'
          
            'afg bacg cdbgf gcdfab fdcae gafdeb dbgfce ga dcafg cedabfg | gaf' +
            ' bdafgc agbc ga'
          
            'edgca bafdcg acbdg cbdeag dce fgcea gdcfeb aebd ed gfdabce | ebg' +
            'cad daeb edcga ced'
          
            'agecf abfegc dbefcga ad dafc fegdb adg afgde bdcega ecagdf | fad' +
            'eg dfac dga da'
          
            'ceagdb gedac acfdbg cda bgecafd adgeb dcefg ca beac abgfde | aeg' +
            'bd baegd bdcagf abcdeg'
          
            'egaf bagdce dcgabf ea eab cgbfa cdfebga fbcae dfcbe fgbace | gdf' +
            'aceb gfea dbcfe eba'
          
            'cfbega bge eg cgdebaf gedbc adeg bceadg bfadcg agbcd cdefb | ge ' +
            'ge cfedb fbgadec'
          
            'afc ca cabe gbefcd aebcgdf acedf gbafdc eagfd edcfab dfbce | gbf' +
            'dcea fca aecbfd ceba'
          
            'af bcdag agbfde fdbca ebdfc adf dbefcga abedfc aefc dbgcfe | af ' +
            'acfe adf adcfbe'
          
            'badfe agebd gfaced gbdcafe aecfd fab dbfc geacbf adbcfe bf | fb ' +
            'ebagfc beadf dface'
          
            'bfeda gabefd agbedc ec fcadeb dfbaecg cea fdec afceb agfcb | fbc' +
            'ae cfde eac fedc'
          
            'ebcf eafgcb egdfba dfcag bacge faceg afe gdceab ef dgcbaef | fcb' +
            'e febc bcaeg cbfe'
          
            'dafbc afdebg egfc ce eagbcd ceafgbd fgeba cbefa eac fcgeba | afe' +
            'gb cdagbe cbdaf gfaeb'
          
            'ecd dface cdgafe gcabfd edbgcfa gdacf fecg cdbaeg ec efbad | edb' +
            'af gcafd dcgbaf dafgceb'
          
            'gd fagbec bdfg gde cfgbe cefdbg gbdeacf agdcef bdceg bcdea | dg ' +
            'gcfeba dg ebdcg'
          
            'bg bgdeac abdg cgb fcbade gdbceaf fbdgce dbeca gaebc aegfc | cgb' +
            ' befgdc fedgcb gbc'
          
            'gac cgeda egcbafd gfdbce fadec ag degbca agecbf dagb gebcd | cde' +
            'gb degcbaf cedaf edafc'
          
            'ecfab bfacdg bdga gb cfgba bfg gefdacb cegdfb fagdc cafedg | bfg' +
            ' cefba gb aedbcgf'
          
            'dgfce aeg cfbdgae acfgeb ebcafd ag gafed gaebfd bdga dbfea | gae' +
            ' cfbdae abedfg bgfdae'
          
            'cgbad cbaf fbgeda dfgcab fdcebg dbfcg decag cdagbfe bga ab | dfc' +
            'abg cbfa fcedgab adfcbeg'
          
            'cegbadf edfgba cafeg dc agdebc dbgfe cdbefg dec dbcf edfcg | bdf' +
            'c facdegb adfegb egbfd'
          
            'bedf cefadg ced ed bcegd gefabc agcdbfe cdgab gcfbe fgcdbe | ed ' +
            'cde bdgec dbecfg'
          
            'egfcab debfa ecd bfgec cdgb cd bdcef dgebcf ecdabgf egcadf | bec' +
            'fd cbgd gcdb fcbed'
          
            'bc dbfge gbecf caefdg gefabc abgdcf bfc baec efcag cebgafd | bae' +
            'c fegbc agfec cgbef'
          
            'bacegfd fbdgca egbcf fabce bdaefc dcaef dagefc ba dbae cab | dae' +
            'b cbefa cab ab'
          
            'fgab cgdfae fcgebd gb bcg dbaegcf cabed gadcb gcafd gbfadc | gbc' +
            ' adcgf dgecbf cgb'
          
            'gdaeb df cgaebdf dfbe cbdagf eabdcg gfd aecgf aefdgb agedf | dfg' +
            ' gfcea febd ebdag'
          
            'ecbaf cagfdb aecgf gac ebga defagcb baedfc gfcde ag gfbeca | cad' +
            'bfg gaecbf agbfec fecba'
          
            'edbgaf fbd egdbfca dagf gabde bdfge fd bgcfe efbcda eacdbg | fbd' +
            ' ebcdaf dbgaefc gefbda'
          
            'acdbg aefcdg cdg cegb acebfd abgdf cg fbegadc gcbdae eabdc | gc ' +
            'edafbcg gadbc cg'
          
            'fgcd bgdafe bacge dg facgde acfde agdec gdefbca deg aebcfd | gd ' +
            'eagdc ged ged'
          
            'egfa efdcba dfbgc cbfea ga abcfg edgcab bga fecgdab aebfcg | bga' +
            ' faegcbd bfeadc badcge'
          
            'bfeda ceagdb bf ebfacd edacb acefbdg begcdf bafc agfde feb | fb ' +
            'fb fbac bcegad'
          
            'bfdcea dcbgaf cbega dbage cea ce cbafg gefc bgacfed bfecag | abg' +
            'fc ec cegf acdefb'
          
            'adgfce cdag cd fgecab cfgae ced fdbae gebdfc agbcefd ecafd | dfc' +
            'ae dc fdcae ebafcg'
          
            'dbeag begfad bfdegac dcb cb gcfda ecdgfb ceab gcabd dcebag | cbd' +
            ' cb cegbda bgcdef'
          
            'cdfaeb fgebad ea dcbgfa gcaebdf cegbd bdcae fabcd cfae eba | cae' +
            'f bafdce afec gfdbea'
          
            'bcfega gcbea bdfgeca gabcd bd gdcabe dafcg ecdb dba ebfadg | fce' +
            'adbg fbaceg db bd'
          
            'gadcbe dgb debcaf fabgcd bcgfe bdgcf acfedbg gd cafdb gdaf | eaf' +
            'dcb bcfade badceg bdacfg'
          
            'gafce cabde cdf aefbdgc efacgd fgeacb ceafd df efgd badfgc | edf' +
            'g acbegf dfc gedf'
          
            'afgce gbdecf bae adebcgf bgedca abecg abcd baefgd ba gbdec | ab ' +
            'dfagcbe gbeca ab'
          
            'de dcgaf gcfbed gdebfca acegb cde bcgafe abed gdacbe gecda | ed ' +
            'afgcedb deagc gcdaf'
          
            'gcdef ebfadc da dabefg daf fbaeg gaefcb dfeag gbdfcea bgad | gad' +
            'fbe bafgce dgba afd'
          
            'bdfeg gecf fc egdfcb gcbedaf bfc dfcbe cbdfga baced abedfg | fcg' +
            'e fgdecb dcgfabe fgdeb'
          
            'bdf acbdfg bdaefg aefgbc abcde dagebfc fd dfcg cabdf cgfab | bfa' +
            'dc cabfg gfcdab fbaegc'
          
            'af cdfbega edbfac dfbgc fac adef adecb becagd acdfb efcbga | bca' +
            'gfde bdfcae gfdecab eacbd'
          
            'egfcad bdgeac fdac fed cdage fd gcbfed baegf gfedcab gedfa | adc' +
            'eg fd afebg egdca'
          
            'fegba ecbafgd cfegba cgdab efbgad ec fadcge ecg bcef cegba | bga' +
            'dc ce fecgdba baceg'
          
            'bdfaeg abgedc efadg bafd gfeba fcdebga adg aecgbf da ecfdg | ad ' +
            'ad dfba befcgad'
          
            'efadcg dacfb cfgab bfde eafdc decfbag decbfa bd bcd acebgd | deb' +
            'f cafde gcdafe fcgebad'
          
            'agd cgadef gcdebfa gd facge bdfgea eagbfc dcgaf cafdb ecdg | cbg' +
            'fae ebfcga agcef bfdeag'
          
            'dfbge abefgd aefbcg dcfegb ba fgbad gedafbc bdea fba dcafg | agf' +
            'db fab fba fcbgde'
          
            'fcdab agbecd eacgfb gc fgeabd gdabc dgbea cbfdeag cag dceg | fca' +
            'db fbcad degba gca'
          
            'eag cbefg dfeagbc cdfbga egcba dcegba dace agedbf ae gadbc | ceg' +
            'ba age agbdc dbcafg'
          
            'cdbag gfb dgceba cbfa gfdbac faebcgd deafg dgbaf fbegcd bf | eag' +
            'df febgcd fbdag gdfbce'
          
            'cdbgf afcebg acfdbe ed ced bdefagc dcgbea fbeac cbdfe adef | cfb' +
            'de de dec ecd'
          
            'dfc fbcde dfcbga ecbgd egbdca fd eabfc edbfgc efdg cdfegab | df ' +
            'dgef fgbaedc df'
          
            'fcg egcbd gacefb dfgbc abfcgde bfdga cfed cf gdebac gbecdf | bfd' +
            'cg fgc fbcdg agdbf'
          
            'fcabg acfbedg bfcgde ecbad agef ecfgba ecf fe dafbgc baecf | aeg' +
            'fbc cfe dbace fec'
          
            'edbagc cefbda bfdeg af agcf gfebdca fgdcab dgcba baf fabdg | bca' +
            'def dfgcab abdcfe gedfb'
          
            'acegf efbgcd dgbefac cgd bedga cbad agcedb dc egadc feagdb | bad' +
            'cgef cd dcgbfae cd'
          
            'bfc cdafeb bcega gdcf afgdbe egbfd caebfdg gcefb cf debcgf | gce' +
            'bf bgedf dfbgea fc'
          
            'dgfaceb gcdf dabcg fd dfgba aefcbd bdacge gfabe afd dcagbf | dae' +
            'cgfb gbecda dacbfe gdcba'
          
            'fbgedc bfcda cfg dafbge fecdbag cagfd aecg agfde cg adgcfe | ecd' +
            'fagb gfceda gaebdf gbfdea'
          
            'afbe gfa gfdcb af febcadg faegcb bcgea aedcbg eagfcd afgcb | bag' +
            'cf gfdeca abfe af'
          
            'caefg efd fd abedc fcgd egdcaf egafbd gfcbea dafec abgedcf | gae' +
            'bcf fcedga def egcafbd'
          
            'dcfab gefdcb bda da baefc baedcfg gfda dbceag cbfagd fbgdc | cde' +
            'bga efdgbc fbcgead beafc'
          
            'bgfed fdaegcb bedagc da bdacfg gda eacfgb cadf dafgb cabgf | dgc' +
            'eab da dfbeg bcegad'
          
            'cedab fc adbfec faegcb adbgf cfa ecdf ebagcfd dcbfa ecgabd | bec' +
            'daf cefd abdfc efcd'
          
            'cdgbea aeg agdec dafgbc gbed aegbcf ge aecfbgd cagbd cafde | cea' +
            'fd bagcd gacdb cgbad'
          
            'dgfeb bedag cgdefa df gfdaeb cbdega gfdceba gbfec dafb gfd | fab' +
            'ecdg bdfa bdaf dfba'
          
            'gdfe acdbf ed bdegcf cegbfa cebfd deb badegfc fbcge bgaced | ebd' +
            ' efgcabd bfcda dfeg'
          
            'abfcedg gec fcgdbe gaebc gebfac efbdca gfea acbfe gbdca ge | agf' +
            'e cge cdbgfe bcfdea'
          
            'fgbaed dacegb dacef egafd aecbgf adfcebg bdfg ged agfbe gd | agd' +
            'fceb gd dg fbgd'
          
            'egdb acgbef edfac bd fgecb gbadfec bcafgd bcd bedcf gdecbf | bdc' +
            ' bedg gdbe efbgc'
          
            'cagbef acgbf fgcabde cgd gbda dg dbfgec ecafd dgfca dagbcf | agb' +
            'cfe dcgfa dbagcf cgdafeb'
          
            'cb efbgc cgfae cgb gceafd beca fbcgae gefdb cbgadf dcfabeg | bge' +
            'acf bacedfg cbdgfa dfgbe'
          
            'cgbedf facgdb agfdc cga cafed gfcbd gcdbeaf degacb fbag ag | gba' +
            'f acfed gafcd cgfda'
          
            'egbdfca cadf bdafgc cbgfea cbgde bdcfg gfc cf fdbag gebdfa | eac' +
            'dgfb fcda dfac adefcgb'
          
            'fdgea abcd ac cfabge cdbfeg gdebac acg gcdebaf gadce bcedg | gac' +
            ' abefgc ac gcaed'
          
            'eafdc eafbc agbe begcadf ba gcefba fgcbda gdbfce cba ecbgf | ba ' +
            'ab abeg adcgbf'
          
            'afg ga bdafe eadfg dagc gefcab edbcgf ceagfd ecgdf aedcbfg | agd' +
            'c daefb debcafg fdaeb'
          
            'baf cbdgf afbecd gdcabfe dcfabg fadeg gbac gbadf ab cedgbf | fcd' +
            'eba cbga afbdg bgca'
          
            'ebdfgca ebfdag gb bgf fdeagc gdbe cdfgba egfab abcef agdfe | gb ' +
            'gfbdea gdeb eafbg'
          
            'agbcdf fe gebad fea becf ecfbga cgabf aegfb fedgca acgbedf | ebg' +
            'da ebdgacf fcbe aef'
          
            'gdbef bgfadec gfeab eab gdcfbe ab bfadeg fdab dcaebg acgfe | fga' +
            'dbe fbedgc dgefb aeb'
          
            'adcbf fbdg bcf dcbag fecad cgafbd fb acdefgb bgefac dgcabe | dfc' +
            'ab cfb bf cdeaf'
          
            'dfgbca cdebagf cfe fcbga aefdg geafc bdecgf ce bgefac aceb | bac' +
            'e aebc gfbac efc'
          
            'adfegcb gcbaf fa adgcb acf efgacb fgcbed eadfbc agef fbgce | aef' +
            'g acf gafe cfa'
          
            'fdegbc fcbad ec ebgaf gecfdba feacb caefgb degfba ecb geac | ecb' +
            ' ecb cfadb ebafc'
          
            'fegabc ebcgafd gfacde ge fcgeb ceg bagcf dcfbe ebga bdcfga | cef' +
            'abdg fdceb abgcf gfeadc'
          
            'fdabcg bgafc fcbeag edbfg gadfceb ad adb dfca dcbgae dfabg | bde' +
            'gf faedbcg da caegfbd'
          
            'cgfae gdbeca decaf fd dfbc fad dabegf daebc bedafgc efbcda | dec' +
            'fa fgcbdae fcbead dbegcaf'
          
            'dbeaf cb fabecdg bcfda gabfdc cbfg agdfce abc edgcba cgadf | bcd' +
            'efag bcgf dafbc badcgf'
          
            'gbdcfa becfdg fdbcgea fgc cg fecdg efdgb ecadf gceb gadefb | gcb' +
            'e fgcebda daecgbf aebcfgd'
          
            'cdega dgcaeb cbgea egdcaf gfacedb begfda cebfg cbda bag ba | ab ' +
            'egdac beafdcg faegcdb'
          
            'gab cgfab cfage fbaedc bcdg gb gacfbd defcagb gdebaf fadbc | bg ' +
            'fbacde gfabc dceagbf'
          
            'ge ebg cgdfb cedba bedgc ecag deagcb bfceda gdcfeab egdbfa | bge' +
            ' beg bafged cadbeg'
          
            'eabd ebacf ecd fdcbg dbafegc ed ceagdf fgceab ecfbda cdbef | dec' +
            ' dfcabe dec befca'
          
            'afbgdec cedb dc agdbf cegbf bfcedg cdg bdgfc baecgf ecfdag | cd ' +
            'dgefbc fdgcb cd'
          
            'gebdaf dgfae afe gafcbed agcfd febd edabg gbfeca bcdega fe | ebd' +
            'ag fedb egafd aegcbf'
          
            'gebdcf abefdcg deg bgdfc fcde gbfea gedabc edbgf ed bgfcda | efd' +
            'bg fedacbg gbfacd fbdeg'
          
            'bcgd edagc gaebd bcdaeg fabedc bgefa fcadge agbfcde db adb | cgb' +
            'dfae bdagcef badegc dab'
          
            'df fdb bfadceg bgeadf afbdce efdg dgbae dafbg cafbg abdgec | gdf' +
            'e afcgb ebcgafd fbgacde'
          
            'gabce gdfaeb bcad cebdgfa fgcbae efgcd dga da cgdea cdeabg | ad ' +
            'agd gda gfedc'
          
            'fcabge edbfg fcaebd ea dcbagef gace gafcdb bafcg eaf fgbea | dcf' +
            'bage aceg afbdceg ebcafd'
          
            'bafe egfcda be bfgaec gbe egcfbad fcaeg bdcaeg bgecf cfbdg | fab' +
            'gced bfea gbcef gcfeb'
          
            'badfeg fgecb af cgaebd acfdbge gaf afcged gfaeb dfab egbad | fa ' +
            'fga abfd gabde'
          
            'afceg bcdfge fcaebg baegdcf cfg eabcdg bgfa efcad gcabe fg | abf' +
            'g gf fbgecd acebgd'
          
            'acbedgf fb efgdc bgf gbcfd bgfdac dagcb fdbeag ebcdga fcab | bf ' +
            'gdebaf fb bf'
          
            'aecf cgbdefa bacged efbcga fdgcab febag af agf dgfeb ecabg | bcg' +
            'daf af cadfbge efca'
          
            'egfda fgceab acd bfcadeg dc dcega bfdcea gcdb cdbega eacbg | gab' +
            'ecd cd befgcad gdcb'
          
            'gecda dfegacb cgfae cdbfag fcbeag afg gf fbge dafecb caebf | dfa' +
            'ebc cfeab gf agdfbc'
          
            'gdafe cdgaeb egfdba da bfdgec gbfed eagcf egdbafc fbad dag | agf' +
            'de dga dcgbfe abcdfeg'
          
            'acgdb gadfce cbefdga becad bcegdf bacgdf afbg ga dag dbcgf | abd' +
            'gc gdeacf acdfbg ecdab'
          
            'gdfa eadbc gcafe dgc dg fcagde bcgfea decgfb egcda fbecagd | ceg' +
            'da cgdea gd dg'
          
            'ga egdbcfa aegcb cag egbcd gadceb gbcefd decafg badg cabfe | bag' +
            'd cagfed gacdfeb cbegd'
          
            'cb deafc bcgd agfceb dbfega ecb deacb aebgd cbafdge ebdacg | dcg' +
            'b adceb edgba ceb'
          
            'edgfab acgb becfdag bgf cgbdf cgfad dacbfg bg ecdbf afegdc | gfb' +
            ' bg gcfade gfbdeac'
          
            'caebg cgaf acgdfbe begcaf cf fdgeb agedcb ebgfc cfe fbcdea | dbf' +
            'eagc cfe fbeagdc cf'
          
            'ageb bg adcbfge fcgea cbgaef cbdfa gfb fedacg bfgca fdcgeb | fbg' +
            ' afdcb ecgbdfa cgfdbe'
          
            'dgbfe aeg ea dcea dbeagfc fbacgd ecbdag gadbc bcafge adgbe | aed' +
            'c ae gbdef daec'
          
            'dbafcg dbgaefc adfc egdab fdg df agefbc bdgcfe fbacg gdfba | bed' +
            'gacf gcbaef cdfgab cafd'
          
            'eg fdgcabe gcadbe aebdc gced bagfde gea gbeac afbcg ecdbaf | agf' +
            'bc fgdabe fcdgaeb feabcd'
          
            'fedb gfe defabgc caedg cgadbf feagd bdagfe fgbda efagbc ef | fe ' +
            'fgcbea ef dbfe'
          
            'bc agcb dfceg bafgdc gfabd fbdcg bcd ecgfbda ebadgf fbaedc | cbd' +
            ' fabcgd cgbfd bc'
          
            'ebfgc dbeg ed gefdc cde gfbecd fgdca caedfb gdbafec gefcab | fgd' +
            'ecb dgfce fbecg cabgfe'
          
            'ab ebda bfagdc becgd aecfg bag daecgb ebcag gbacdfe cfgbde | abe' +
            'dgc eafgc ebacg ab'
          
            'ecdbag dagbfe badef fcaed adc cd efbagdc cafge cfaebd dfbc | dcf' +
            'b dca acd gcdabe'
          
            'cedbgaf ecbfg dagfec dgbea bdca gfdaeb ecgbd dbecga cd edc | ecb' +
            'dga cde edbag dc'
          
            'egbfcd gbcafe ed defga dbgfa bcgdeaf cdea def eacdgf gacfe | bgf' +
            'ad ecda gbfad gcdefb'
          
            'dafge cea fdace agdc dbgfea ebdfgca dcbfe acedfg abecfg ca | def' +
            'ac gcad ac ca'
          
            'ecdba fbac eabcdf beadgfc acd efacgd ac agedbf bfdea ecgbd | aec' +
            'bd agbefd bdgec dgebc'
          
            'bfegda bdage gdf gfdae bdfgace fgeb afdec fgdacb gf deagcb | fba' +
            'egcd fegb aedgb dfg'
          
            'cdaf fd bcdfge agebf dcgfae gfead baedcg gdcea egdbacf dgf | efg' +
            'ab df eagfd afgbe'
          
            'egfca egcb ceafdb fbc fbcaeg dgbfa cdfeagb fgcba agdcef cb | cb ' +
            'gcdfae eabgfc fgbca'
          
            'gdbca fdecba gdecfb feagbd ceb adfbgec bdgec ec efgdb cfge | ec ' +
            'ecbgd dacefb abfged'
          
            'edbcag cabd ecfdgb aegfd eagfcbd ac cga feagcb ebdgc dgeca | acf' +
            'bdeg dfgea cga dgeca'
          
            'ebgacf adcf bcgedfa gdcabe abedf aef edabc fa befgd bfdaec | aef' +
            'db af cebad fae'
          
            'dageb de gde dgfbce cgdba gabefd afbge cgdebfa aefd ceafbg | efg' +
            'bda agbdecf bfaegcd edg'
          
            'ce dec becf efdgb edfgcb ecbdag gdaefb beafgdc dagfc fecgd | ce ' +
            'fdbage gcdfeba gbcadef'
          
            'ecgfa ebadcf ed gcdfab cdefa gfdaeb dbec dbfgace cdbfa dfe | dce' +
            'b cdfab ed ceagf'
          
            'cadg efgcdb gbcfad feabc agfcb afcdgbe dgbfa gcb fagbde gc | gde' +
            'cbf adfgbc fbcgade gafbc'
          
            'gdcefa gefdb bcfeg eabc fagdbc ecagf bcf afcebg cb bfgaedc | fcg' +
            'dba agbecf fcgeba fgdceab'
          
            'afgbc be cbeaf gfeb ebcdfag cfdbag cdfae cfegba cbeagd abe | gde' +
            'cbaf cagfb bfgaec cabfdge'
          
            'eb egdb dcagb abe gcdabe agbce dgabcf fedbca fdcebag gfeca | gdb' +
            'e agdcb gfcae cgadbf'
          
            'dbagc bcaedfg gade cadeb efgabc cabedg gca fgdbc ecafdb ag | dag' +
            'e cagdb dgcaeb cdgab'
          
            'gbecd eacdg cgb egacdbf gfdbec efbg bfced bg bdfcea bafgdc | acb' +
            'fde bg gb gb'
          
            'fgbadc fbdag dbecg fbae dacgef ega ae afcbged ebgfad bgaed | ae ' +
            'bacfgd bfea agdbef'
          
            'dacfeg gecfd ad gadbfe gadbfec gda acde fcedgb acbfg fdcag | gef' +
            'cd cdegf agd ad'
          
            'caegbd cfdeba edbac cfbegad fe fbea fdagc cef acdef bedgcf | ef ' +
            'cdafgeb fce edfca'
          
            'dgcae cedbfag facbdg fdc eacdbf bfegda dfcae fdbae cf cfeb | cf ' +
            'febgcda dfc cdf'
          
            'edfag dbeacg dbecafg agc gcefa gc bcfea cdfg fbdgae gefadc | dfa' +
            'cge fagbecd feacbdg bfaged'
          
            'abefdg fgdec ecadf efcdab ac dbeaf acdb acf cdegfab gecbfa | fca' +
            ' fdbega decaf cgafdeb'
          
            'bceafd fegcad edcagbf dbcage decba bafd df fcd bcfge cbfed | ebg' +
            'fc eacbdf gadebc df'
          
            'egba cgdafbe begfc gacdfb dceaf cefbdg gfa ag gcebaf aecfg | acb' +
            'gfd gabe fbgeac agfec'
          
            'cdgeb fdecag agdbefc gefbac cdaf ade fegdab cgead ad caefg | ecb' +
            'gdaf dgceb cfgae dea'
          
            'cafbde fbgac edcg agdfeb eg dacgef fgcea aefdc dceagfb eag | afg' +
            'ec fbcga ceafgd bgceadf'
          
            'cefbg ceabd gd edbacgf aedfbc gaedcb cdbeg abfdcg gdc gead | cgd' +
            ' dgea gd cebad'
          
            'fadbg dagecf fea fbecga adce ae bedfcg egacbdf fdgec fdage | dca' +
            'e caed dbefcg adgfb'
          
            'acged aec efgdcb ac fagc abdge abfdegc fdeacg cfaedb gedfc | egb' +
            'cafd gaefcdb cae cagdfe'
          
            'fcbdage bafgec cab fcbae ac abdegf dbfec fbgae eagc cbfadg | acb' +
            ' dafegb acb bfeagdc'
          
            'af egfda gebdf gebdfa aefcdbg fbecda fgba daf cdeag dgbcfe | eag' +
            'dc cefbgda daf daf'
          
            'dgebcf gcf agcbd fbecd fbcdg ebacgf aebfcd fdeg fegdabc fg | dac' +
            'gb dfge fcdbe gedf'
          
            'bfacdg gafcb gefbd cd dgcfb dagc bdfagec bceadf fagceb bdc | beg' +
            'fd gbdfe afgcdbe fbeacgd'
          
            'bagf afe bdcaeg fdcbe af dafbe cbedgaf gfebad gdaeb aefcdg | bae' +
            'dcgf fa af cgadbef'
          
            'acdgf becgfa acd cagbf agcdbe fdba da bdcfag gfdec dcgafeb | bag' +
            'fc da dca fdbacg'
          
            'cdabfe adbfc ecbaf cdae cdbfge dabgfc bfgae bec ce gadcbef | fae' +
            'cbd beadcfg dcae cgfedab'
          
            'bceag agd aced gdbafce bcfgae agdeb ad fabdcg fdbge egcbad | gac' +
            'eb agd bdagec da'
          
            'cag dfgbeac ecdbgf ag gfabc ebag fabgec deafgc adcfb fcegb | dga' +
            'ecf aebg bgea dcbfa'
          
            'afdb degbc agedcf da aed beacfg dgfecba efcab bdface cbdea | fbe' +
            'ca aecbd gdecaf ade'
          
            'cafebg afedcb gfeabcd fgcb cfa afdeg fc ecgab dacebg cfeag | bcg' +
            'f bgcae gdfea bgcf'
          
            'feg gfcaed cfabdge gf degafb fdegc edfcab edgbc agcf cfade | gf ' +
            'gf gacf egf'
          
            'ceadf ecdgf eacbd cebagd dcabfge eaf fdceab fbad fgebca af | cef' +
            'adb cefad bfad abedc'
          
            'gefabd cabdfeg dgceab dagef bdfacg egfdc edgab af feba fda | gea' +
            'dcb dagfceb fda af'
          
            'dfcea adgce dfebc gecfdba fadgbe dcefga cfga aebcdg efa fa | fa ' +
            'fae af gaedbf'
          
            'agbfd acbgedf faecb cegbad dgabfe gbc fcdg cfagb gc afdbgc | cg ' +
            'cg dfgbae cdfg'
          
            'efg bfacg feab efcagd fe bcagedf edgbc ebgcf afbegc bcfgda | dge' +
            'cfa ef fgcba efba'
          
            'aebfdc bcfage dgbacf gface gbaecfd dfgce geab acfbg ea eac | cab' +
            'fg ea cfagb eagb'
          
            'gba gdcea cdbfg acgdb gbecadf bfgecd dgcfab abfc ba fdeagb | ab ' +
            'febagdc dfgbac fdagcb'
          
            'dfcb gcebd dfgaec efdgc eagcb dfaebg afedcbg gbd gbcfde bd | gad' +
            'ebfc db febdga bgd'
          
            'eabd adcbg ceafg ecb be eacdbg acegb gbfcde adgcbf ecfdgba | cgf' +
            'ebad cbe ebacg dfgceb'
          
            'cefbgd cgdfa bagfced dabe fgceab abfeg gdbaef gbfad db gdb | aef' +
            'dgb bd abdfegc fgabed')
        ScrollBars = ssBoth
        TabOrder = 0
        WordWrap = False
      end
      object ButtonGoEtape1: TButton
        Left = 1033
        Top = 72
        Width = 75
        Height = 25
        Anchors = [akTop, akRight]
        Caption = 'Etape 1'
        TabOrder = 1
        OnClick = ButtonGoEtape1Click
      end
      object Memo2: TMemo
        Left = 769
        Top = 0
        Width = 258
        Height = 97
        Anchors = [akTop, akRight]
        Lines.Strings = (
          'Etape 1 Compte le nombre de 1 4 7 et 8')
        TabOrder = 2
      end
      object ButtonGoEtape2_1: TButton
        Left = 1031
        Top = 175
        Width = 75
        Height = 25
        Anchors = [akTop, akRight]
        Caption = 'Etape 2.1'
        TabOrder = 3
        OnClick = ButtonGoEtape2_1Click
      end
      object Memo5: TMemo
        Left = 769
        Top = 103
        Width = 258
        Height = 97
        Anchors = [akTop, akRight]
        Lines.Strings = (
          'Etape 2.1 Cherche les Combinaisons'
          '')
        TabOrder = 4
      end
      object MemoDonneesExemple: TMemo
        Left = 769
        Top = 320
        Width = 342
        Height = 319
        Anchors = [akTop, akRight, akBottom]
        Lines.Strings = (
          
            'be cfbegad cbdgef fgaecd cgeb fdcge agebfd fecdb fabcd edb | fdg' +
            'acbe cefdb cefbgd gcbe'
          
            'edbfga begcd cbg gc gcadebf fbgde acbgfd abcde gfcbed gfec | fcg' +
            'edb cgb dgebacf gc'
          
            'fgaebd cg bdaec gdafb agbcfd gdcbef bgcad gfac gcb cdgabef | cg ' +
            'cg fdcagb cbg'
          
            'fbegcd cbd adcefb dageb afcb bc aefdc ecdab fgdeca fcdbega | efa' +
            'bcd cedba gadfec cb'
          
            'aecbfdg fbg gf bafeg dbefa fcge gcbea fcaegb dgceab fcbdga | gec' +
            'f egdcabf bgf bfgea'
          
            'fgeab ca afcebg bdacfeg cfaedg gcfdb baec bfadeg bafgc acf | geb' +
            'dcfa ecba ca fadegcb'
          
            'dbcfg fgd bdegcaf fgec aegbdf ecdfab fbedc dacgb gdcebf gf | cef' +
            'g dcbef fcge gbcadfe'
          
            'bdfegc cbegaf gecbf dfcage bdacg ed bedf ced adcbefg gebcd | ed ' +
            'bcgafe cdgba cbgef'
          
            'egadfb cdbfeg cegd fecab cgb gbdefca cg fgcdab egfdb bfceg | gbd' +
            'fcae bgc cg cgb'
          
            'gcafb gcf dcaebfg ecagb gf abcdeg gaef cafbge fdbac fegbdc | fga' +
            'e cfgab fg bagce')
        ScrollBars = ssBoth
        TabOrder = 5
        WordWrap = False
      end
      object ButtondonneesExemple: TButton
        Left = 808
        Top = 289
        Width = 185
        Height = 25
        Caption = '<== donn'#233'es de l'#39'exemple'
        TabOrder = 6
        OnClick = ButtondonneesExempleClick
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Etape1'
      ImageIndex = 1
      DesignSize = (
        1114
        642)
      object Memo3: TMemo
        Left = 469
        Top = 0
        Width = 258
        Height = 593
        Anchors = [akTop, akRight, akBottom]
        Lines.Strings = (
          'Etape 1 Compte le nombre de 1 4 7 et 8'
          ''
          'Etape1.1'
          'Vu que c'#39'est seulement sur la derni'#232're section apr'#232's |'
          ''
          
            '  // cherche une s'#233'quence de n'#39'importe quel caract'#232're '#39'.*'#39' avant' +
            ' une barre verticale '#39'\|'#39'  ,'
          
            '  // le slash avant la barre verticale et pour pr'#233'ciser que c'#39'es' +
            't vraiment un| qu'#39'on cherche'
          '  // car | est un caract'#232're sp'#233'cial  comme +*-([.{ et d'#39'autres'
          '  // suivi d'#39'une s'#233'quence de n'#39'importe quel caract'#232're .*'
          
            '  // le fait qu'#39'elle soit entour'#233' de parenth'#232'se permet de rappel' +
            'er cette s'#233'quence dans le remplacement'
          ''
          '  // on remplace par $1  et un espace'
          '  // le $1 fait r'#233'f'#233'rence '#224' la s'#233'quence entre parenth'#232'se'
          ''
          
            '  MemoEtape1.Lines.Text := TRegEx.Replace(MemoEtape1.Lines.Text,' +
            ' '#39'.*\|(.*)'#39', '#39'$1 '#39');'
          ''
          'Etape1.2'
          ''
          'si que 2 lettres forc'#233'ment 1'
          'si 3 lettres 7'
          'si 4 lettres 4'
          'si 7 lettres 8'
          ''
          'Recherche et remplace les s'#233'quences'
          ''
          'Etape1.3'
          ''
          'Compte les s'#233'quences remplac'#233'es')
        ScrollBars = ssBoth
        TabOrder = 0
      end
      object ButtonEtape1_1: TButton
        Left = 733
        Top = 135
        Width = 75
        Height = 25
        Anchors = [akTop, akRight]
        Caption = 'Etape 1.1'
        TabOrder = 1
        OnClick = ButtonEtape1_1Click
      end
      object ButtonEtape1_2: TButton
        Left = 733
        Top = 303
        Width = 75
        Height = 25
        Anchors = [akTop, akRight]
        Caption = 'Etape 1.2'
        TabOrder = 2
        OnClick = ButtonEtape1_2Click
      end
      object StringGrid1: TStringGrid
        Left = 816
        Top = 0
        Width = 298
        Height = 642
        Align = alRight
        TabOrder = 3
      end
      object MemoEtape1: TMemo
        Left = 0
        Top = 0
        Width = 462
        Height = 642
        Align = alLeft
        Anchors = [akLeft, akTop, akRight, akBottom]
        Lines.Strings = (
          
            'gbdfcae ebcg cfg gc facegb fecab acfge cbfgda fedag caebfd | ecb' +
            'g bfcagd faegc gcf'
          
            'eacgf efcab fgc fedagc gdeaf cged aebfgd adcgfbe gc bdgcaf | fgb' +
            'acd cfega ecdg cg'
          
            'dfgae gcadef efb eb dcabf bgde edfba bcfaeg egcdfab fbgade | bge' +
            'd eafdb eb gfdea'
          
            'aefdb cafdgeb egdfac egdcba fcbd efd eadcb caefbd df aegbf | cfa' +
            'deg abfedgc fde bfcd'
          
            'dc deafg ecd dbaefc adcfeg cfged ecbfg acdg cafdegb gfeadb | dcg' +
            'a edc adfebcg ecgfb'
          
            'befdc bcfge befad degfab cde aecbfd gcedaf eafcgdb dc bcad | bde' +
            'afc cde ebdcafg daebgcf'
          
            'cd egdacfb fdc fecgb gabdf fbcdg fcgdeb gdcfea debc ecfbga | gfe' +
            'cb fbgecd bcgef dc'
          
            'fagcdbe gec gbdea ce bgedc aecd cgbeaf cfbdg gebcda dbfgae | cfb' +
            'aged cgbeaf ceg gadfbe'
          
            'gcbaf gfdb bdafc df adf adcbefg dcfeag cebad adfgcb faecgb | afd' +
            ' agfedc dcbfa gdfabc'
          
            'fbae cef fecdbg afbcg cefbga fe acdfgb gadce fbdacge fcage | fe ' +
            'abef gfbac cef'
          
            'cfdebg bg beg cabfeg fbgd acged ecgbd fdcbe cfbeda cebgadf | fbe' +
            'dc gadce gdaec bcfed'
          
            'gba ab fgbcd gedaf bcadge afbdgc cdgfbe agdfcbe bcfa bdfga | gab' +
            ' gdbfc ba fgdbcae'
          
            'fabdgce bfdgac cbaed dcb bgade fbaec fcde edbfac gfabec cd | dc ' +
            'cefd dc cd'
          
            'afc dbecafg fagce fbega fbgc edgca agecbf bafged eacdfb cf | cf ' +
            'bfdcaeg gfbc gfbc'
          
            'gedcb ebda cgbdfa fcaeg gab bfgdce ba agbce bdgecfa dgebca | bdg' +
            'fce cebagd cbdgfae dcfbeg'
          
            'egbacf acdfe gfecb egdfcb dfgaceb dfb dgcb fdbce db bdeafg | fdb' +
            ' db db bdf'
          
            'cfeg eabcf gdefcab bef geabc bfcad egbadf cfgbae egcdba fe | fge' +
            'c gaecfdb cagbef ef'
          
            'bafde dbgeac feacgbd cbaef bed bfgaed gafecd bgdf bd eafgd | db ' +
            'cfgdae caegdfb fabed'
          
            'afg bacg cdbgf gcdfab fdcae gafdeb dbgfce ga dcafg cedabfg | gaf' +
            ' bdafgc agbc ga'
          
            'edgca bafdcg acbdg cbdeag dce fgcea gdcfeb aebd ed gfdabce | ebg' +
            'cad daeb edcga ced'
          
            'agecf abfegc dbefcga ad dafc fegdb adg afgde bdcega ecagdf | fad' +
            'eg dfac dga da'
          
            'ceagdb gedac acfdbg cda bgecafd adgeb dcefg ca beac abgfde | aeg' +
            'bd baegd bdcagf abcdeg'
          
            'egaf bagdce dcgabf ea eab cgbfa cdfebga fbcae dfcbe fgbace | gdf' +
            'aceb gfea dbcfe eba'
          
            'cfbega bge eg cgdebaf gedbc adeg bceadg bfadcg agbcd cdefb | ge ' +
            'ge cfedb fbgadec'
          
            'afc ca cabe gbefcd aebcgdf acedf gbafdc eagfd edcfab dfbce | gbf' +
            'dcea fca aecbfd ceba'
          
            'af bcdag agbfde fdbca ebdfc adf dbefcga abedfc aefc dbgcfe | af ' +
            'acfe adf adcfbe'
          
            'badfe agebd gfaced gbdcafe aecfd fab dbfc geacbf adbcfe bf | fb ' +
            'ebagfc beadf dface'
          
            'bfeda gabefd agbedc ec fcadeb dfbaecg cea fdec afceb agfcb | fbc' +
            'ae cfde eac fedc'
          
            'ebcf eafgcb egdfba dfcag bacge faceg afe gdceab ef dgcbaef | fcb' +
            'e febc bcaeg cbfe'
          
            'dafbc afdebg egfc ce eagbcd ceafgbd fgeba cbefa eac fcgeba | afe' +
            'gb cdagbe cbdaf gfaeb'
          
            'ecd dface cdgafe gcabfd edbgcfa gdacf fecg cdbaeg ec efbad | edb' +
            'af gcafd dcgbaf dafgceb'
          
            'gd fagbec bdfg gde cfgbe cefdbg gbdeacf agdcef bdceg bcdea | dg ' +
            'gcfeba dg ebdcg'
          
            'bg bgdeac abdg cgb fcbade gdbceaf fbdgce dbeca gaebc aegfc | cgb' +
            ' befgdc fedgcb gbc'
          
            'gac cgeda egcbafd gfdbce fadec ag degbca agecbf dagb gebcd | cde' +
            'gb degcbaf cedaf edafc'
          
            'ecfab bfacdg bdga gb cfgba bfg gefdacb cegdfb fagdc cafedg | bfg' +
            ' cefba gb aedbcgf'
          
            'dgfce aeg cfbdgae acfgeb ebcafd ag gafed gaebfd bdga dbfea | gae' +
            ' cfbdae abedfg bgfdae'
          
            'cgbad cbaf fbgeda dfgcab fdcebg dbfcg decag cdagbfe bga ab | dfc' +
            'abg cbfa fcedgab adfcbeg'
          
            'cegbadf edfgba cafeg dc agdebc dbgfe cdbefg dec dbcf edfcg | bdf' +
            'c facdegb adfegb egbfd'
          
            'bedf cefadg ced ed bcegd gefabc agcdbfe cdgab gcfbe fgcdbe | ed ' +
            'cde bdgec dbecfg'
          
            'egfcab debfa ecd bfgec cdgb cd bdcef dgebcf ecdabgf egcadf | bec' +
            'fd cbgd gcdb fcbed'
          
            'bc dbfge gbecf caefdg gefabc abgdcf bfc baec efcag cebgafd | bae' +
            'c fegbc agfec cgbef'
          
            'bacegfd fbdgca egbcf fabce bdaefc dcaef dagefc ba dbae cab | dae' +
            'b cbefa cab ab'
          
            'fgab cgdfae fcgebd gb bcg dbaegcf cabed gadcb gcafd gbfadc | gbc' +
            ' adcgf dgecbf cgb'
          
            'gdaeb df cgaebdf dfbe cbdagf eabdcg gfd aecgf aefdgb agedf | dfg' +
            ' gfcea febd ebdag'
          
            'ecbaf cagfdb aecgf gac ebga defagcb baedfc gfcde ag gfbeca | cad' +
            'bfg gaecbf agbfec fecba'
          
            'edbgaf fbd egdbfca dagf gabde bdfge fd bgcfe efbcda eacdbg | fbd' +
            ' ebcdaf dbgaefc gefbda'
          
            'acdbg aefcdg cdg cegb acebfd abgdf cg fbegadc gcbdae eabdc | gc ' +
            'edafbcg gadbc cg'
          
            'fgcd bgdafe bacge dg facgde acfde agdec gdefbca deg aebcfd | gd ' +
            'eagdc ged ged'
          
            'egfa efdcba dfbgc cbfea ga abcfg edgcab bga fecgdab aebfcg | bga' +
            ' faegcbd bfeadc badcge'
          
            'bfeda ceagdb bf ebfacd edacb acefbdg begcdf bafc agfde feb | fb ' +
            'fb fbac bcegad'
          
            'bfdcea dcbgaf cbega dbage cea ce cbafg gefc bgacfed bfecag | abg' +
            'fc ec cegf acdefb'
          
            'adgfce cdag cd fgecab cfgae ced fdbae gebdfc agbcefd ecafd | dfc' +
            'ae dc fdcae ebafcg'
          
            'dbeag begfad bfdegac dcb cb gcfda ecdgfb ceab gcabd dcebag | cbd' +
            ' cb cegbda bgcdef'
          
            'cdfaeb fgebad ea dcbgfa gcaebdf cegbd bdcae fabcd cfae eba | cae' +
            'f bafdce afec gfdbea'
          
            'bcfega gcbea bdfgeca gabcd bd gdcabe dafcg ecdb dba ebfadg | fce' +
            'adbg fbaceg db bd'
          
            'gadcbe dgb debcaf fabgcd bcgfe bdgcf acfedbg gd cafdb gdaf | eaf' +
            'dcb bcfade badceg bdacfg'
          
            'gafce cabde cdf aefbdgc efacgd fgeacb ceafd df efgd badfgc | edf' +
            'g acbegf dfc gedf'
          
            'afgce gbdecf bae adebcgf bgedca abecg abcd baefgd ba gbdec | ab ' +
            'dfagcbe gbeca ab'
          
            'de dcgaf gcfbed gdebfca acegb cde bcgafe abed gdacbe gecda | ed ' +
            'afgcedb deagc gcdaf'
          
            'gcdef ebfadc da dabefg daf fbaeg gaefcb dfeag gbdfcea bgad | gad' +
            'fbe bafgce dgba afd'
          
            'bdfeg gecf fc egdfcb gcbedaf bfc dfcbe cbdfga baced abedfg | fcg' +
            'e fgdecb dcgfabe fgdeb'
          
            'bdf acbdfg bdaefg aefgbc abcde dagebfc fd dfcg cabdf cgfab | bfa' +
            'dc cabfg gfcdab fbaegc'
          
            'af cdfbega edbfac dfbgc fac adef adecb becagd acdfb efcbga | bca' +
            'gfde bdfcae gfdecab eacbd'
          
            'egfcad bdgeac fdac fed cdage fd gcbfed baegf gfedcab gedfa | adc' +
            'eg fd afebg egdca'
          
            'fegba ecbafgd cfegba cgdab efbgad ec fadcge ecg bcef cegba | bga' +
            'dc ce fecgdba baceg'
          
            'bdfaeg abgedc efadg bafd gfeba fcdebga adg aecgbf da ecfdg | ad ' +
            'ad dfba befcgad'
          
            'efadcg dacfb cfgab bfde eafdc decfbag decbfa bd bcd acebgd | deb' +
            'f cafde gcdafe fcgebad'
          
            'agd cgadef gcdebfa gd facge bdfgea eagbfc dcgaf cafdb ecdg | cbg' +
            'fae ebfcga agcef bfdeag'
          
            'dfbge abefgd aefbcg dcfegb ba fgbad gedafbc bdea fba dcafg | agf' +
            'db fab fba fcbgde'
          
            'fcdab agbecd eacgfb gc fgeabd gdabc dgbea cbfdeag cag dceg | fca' +
            'db fbcad degba gca'
          
            'eag cbefg dfeagbc cdfbga egcba dcegba dace agedbf ae gadbc | ceg' +
            'ba age agbdc dbcafg'
          
            'cdbag gfb dgceba cbfa gfdbac faebcgd deafg dgbaf fbegcd bf | eag' +
            'df febgcd fbdag gdfbce'
          
            'cdbgf afcebg acfdbe ed ced bdefagc dcgbea fbeac cbdfe adef | cfb' +
            'de de dec ecd'
          
            'dfc fbcde dfcbga ecbgd egbdca fd eabfc edbfgc efdg cdfegab | df ' +
            'dgef fgbaedc df'
          
            'fcg egcbd gacefb dfgbc abfcgde bfdga cfed cf gdebac gbecdf | bfd' +
            'cg fgc fbcdg agdbf'
          
            'fcabg acfbedg bfcgde ecbad agef ecfgba ecf fe dafbgc baecf | aeg' +
            'fbc cfe dbace fec'
          
            'edbagc cefbda bfdeg af agcf gfebdca fgdcab dgcba baf fabdg | bca' +
            'def dfgcab abdcfe gedfb'
          
            'acegf efbgcd dgbefac cgd bedga cbad agcedb dc egadc feagdb | bad' +
            'cgef cd dcgbfae cd'
          
            'bfc cdafeb bcega gdcf afgdbe egbfd caebfdg gcefb cf debcgf | gce' +
            'bf bgedf dfbgea fc'
          
            'dgfaceb gcdf dabcg fd dfgba aefcbd bdacge gfabe afd dcagbf | dae' +
            'cgfb gbecda dacbfe gdcba'
          
            'fbgedc bfcda cfg dafbge fecdbag cagfd aecg agfde cg adgcfe | ecd' +
            'fagb gfceda gaebdf gbfdea'
          
            'afbe gfa gfdcb af febcadg faegcb bcgea aedcbg eagfcd afgcb | bag' +
            'cf gfdeca abfe af'
          
            'caefg efd fd abedc fcgd egdcaf egafbd gfcbea dafec abgedcf | gae' +
            'bcf fcedga def egcafbd'
          
            'dcfab gefdcb bda da baefc baedcfg gfda dbceag cbfagd fbgdc | cde' +
            'bga efdgbc fbcgead beafc'
          
            'bgfed fdaegcb bedagc da bdacfg gda eacfgb cadf dafgb cabgf | dgc' +
            'eab da dfbeg bcegad'
          
            'cedab fc adbfec faegcb adbgf cfa ecdf ebagcfd dcbfa ecgabd | bec' +
            'daf cefd abdfc efcd'
          
            'cdgbea aeg agdec dafgbc gbed aegbcf ge aecfbgd cagbd cafde | cea' +
            'fd bagcd gacdb cgbad'
          
            'dgfeb bedag cgdefa df gfdaeb cbdega gfdceba gbfec dafb gfd | fab' +
            'ecdg bdfa bdaf dfba'
          
            'gdfe acdbf ed bdegcf cegbfa cebfd deb badegfc fbcge bgaced | ebd' +
            ' efgcabd bfcda dfeg'
          
            'abfcedg gec fcgdbe gaebc gebfac efbdca gfea acbfe gbdca ge | agf' +
            'e cge cdbgfe bcfdea'
          
            'fgbaed dacegb dacef egafd aecbgf adfcebg bdfg ged agfbe gd | agd' +
            'fceb gd dg fbgd'
          
            'egdb acgbef edfac bd fgecb gbadfec bcafgd bcd bedcf gdecbf | bdc' +
            ' bedg gdbe efbgc'
          
            'cagbef acgbf fgcabde cgd gbda dg dbfgec ecafd dgfca dagbcf | agb' +
            'cfe dcgfa dbagcf cgdafeb'
          
            'cb efbgc cgfae cgb gceafd beca fbcgae gefdb cbgadf dcfabeg | bge' +
            'acf bacedfg cbdgfa dfgbe'
          
            'cgbedf facgdb agfdc cga cafed gfcbd gcdbeaf degacb fbag ag | gba' +
            'f acfed gafcd cgfda'
          
            'egbdfca cadf bdafgc cbgfea cbgde bdcfg gfc cf fdbag gebdfa | eac' +
            'dgfb fcda dfac adefcgb'
          
            'fdgea abcd ac cfabge cdbfeg gdebac acg gcdebaf gadce bcedg | gac' +
            ' abefgc ac gcaed'
          
            'eafdc eafbc agbe begcadf ba gcefba fgcbda gdbfce cba ecbgf | ba ' +
            'ab abeg adcgbf'
          
            'afg ga bdafe eadfg dagc gefcab edbcgf ceagfd ecgdf aedcbfg | agd' +
            'c daefb debcafg fdaeb'
          
            'baf cbdgf afbecd gdcabfe dcfabg fadeg gbac gbadf ab cedgbf | fcd' +
            'eba cbga afbdg bgca'
          
            'ebdfgca ebfdag gb bgf fdeagc gdbe cdfgba egfab abcef agdfe | gb ' +
            'gfbdea gdeb eafbg'
          
            'agbcdf fe gebad fea becf ecfbga cgabf aegfb fedgca acgbedf | ebg' +
            'da ebdgacf fcbe aef'
          
            'gdbef bgfadec gfeab eab gdcfbe ab bfadeg fdab dcaebg acgfe | fga' +
            'dbe fbedgc dgefb aeb'
          
            'adcbf fbdg bcf dcbag fecad cgafbd fb acdefgb bgefac dgcabe | dfc' +
            'ab cfb bf cdeaf'
          
            'dfgbca cdebagf cfe fcbga aefdg geafc bdecgf ce bgefac aceb | bac' +
            'e aebc gfbac efc'
          
            'adfegcb gcbaf fa adgcb acf efgacb fgcbed eadfbc agef fbgce | aef' +
            'g acf gafe cfa'
          
            'fdegbc fcbad ec ebgaf gecfdba feacb caefgb degfba ecb geac | ecb' +
            ' ecb cfadb ebafc'
          
            'fegabc ebcgafd gfacde ge fcgeb ceg bagcf dcfbe ebga bdcfga | cef' +
            'abdg fdceb abgcf gfeadc'
          
            'fdabcg bgafc fcbeag edbfg gadfceb ad adb dfca dcbgae dfabg | bde' +
            'gf faedbcg da caegfbd'
          
            'cgfae gdbeca decaf fd dfbc fad dabegf daebc bedafgc efbcda | dec' +
            'fa fgcbdae fcbead dbegcaf'
          
            'dbeaf cb fabecdg bcfda gabfdc cbfg agdfce abc edgcba cgadf | bcd' +
            'efag bcgf dafbc badcgf'
          
            'gbdcfa becfdg fdbcgea fgc cg fecdg efdgb ecadf gceb gadefb | gcb' +
            'e fgcebda daecgbf aebcfgd'
          
            'cdega dgcaeb cbgea egdcaf gfacedb begfda cebfg cbda bag ba | ab ' +
            'egdac beafdcg faegcdb'
          
            'gab cgfab cfage fbaedc bcdg gb gacfbd defcagb gdebaf fadbc | bg ' +
            'fbacde gfabc dceagbf'
          
            'ge ebg cgdfb cedba bedgc ecag deagcb bfceda gdcfeab egdbfa | bge' +
            ' beg bafged cadbeg'
          
            'eabd ebacf ecd fdcbg dbafegc ed ceagdf fgceab ecfbda cdbef | dec' +
            ' dfcabe dec befca'
          
            'afbgdec cedb dc agdbf cegbf bfcedg cdg bdgfc baecgf ecfdag | cd ' +
            'dgefbc fdgcb cd'
          
            'gebdaf dgfae afe gafcbed agcfd febd edabg gbfeca bcdega fe | ebd' +
            'ag fedb egafd aegcbf'
          
            'gebdcf abefdcg deg bgdfc fcde gbfea gedabc edbgf ed bgfcda | efd' +
            'bg fedacbg gbfacd fbdeg'
          
            'bcgd edagc gaebd bcdaeg fabedc bgefa fcadge agbfcde db adb | cgb' +
            'dfae bdagcef badegc dab'
          
            'df fdb bfadceg bgeadf afbdce efdg dgbae dafbg cafbg abdgec | gdf' +
            'e afcgb ebcgafd fbgacde'
          
            'gabce gdfaeb bcad cebdgfa fgcbae efgcd dga da cgdea cdeabg | ad ' +
            'agd gda gfedc'
          
            'fcabge edbfg fcaebd ea dcbagef gace gafcdb bafcg eaf fgbea | dcf' +
            'bage aceg afbdceg ebcafd'
          
            'bafe egfcda be bfgaec gbe egcfbad fcaeg bdcaeg bgecf cfbdg | fab' +
            'gced bfea gbcef gcfeb'
          
            'badfeg fgecb af cgaebd acfdbge gaf afcged gfaeb dfab egbad | fa ' +
            'fga abfd gabde'
          
            'afceg bcdfge fcaebg baegdcf cfg eabcdg bgfa efcad gcabe fg | abf' +
            'g gf fbgecd acebgd'
          
            'acbedgf fb efgdc bgf gbcfd bgfdac dagcb fdbeag ebcdga fcab | bf ' +
            'gdebaf fb bf'
          
            'aecf cgbdefa bacged efbcga fdgcab febag af agf dgfeb ecabg | bcg' +
            'daf af cadfbge efca'
          
            'egfda fgceab acd bfcadeg dc dcega bfdcea gcdb cdbega eacbg | gab' +
            'ecd cd befgcad gdcb'
          
            'gecda dfegacb cgfae cdbfag fcbeag afg gf fbge dafecb caebf | dfa' +
            'ebc cfeab gf agdfbc'
          
            'gdafe cdgaeb egfdba da bfdgec gbfed eagcf egdbafc fbad dag | agf' +
            'de dga dcgbfe abcdfeg'
          
            'acgdb gadfce cbefdga becad bcegdf bacgdf afbg ga dag dbcgf | abd' +
            'gc gdeacf acdfbg ecdab'
          
            'gdfa eadbc gcafe dgc dg fcagde bcgfea decgfb egcda fbecagd | ceg' +
            'da cgdea gd dg'
          
            'ga egdbcfa aegcb cag egbcd gadceb gbcefd decafg badg cabfe | bag' +
            'd cagfed gacdfeb cbegd'
          
            'cb deafc bcgd agfceb dbfega ecb deacb aebgd cbafdge ebdacg | dcg' +
            'b adceb edgba ceb'
          
            'edgfab acgb becfdag bgf cgbdf cgfad dacbfg bg ecdbf afegdc | gfb' +
            ' bg gcfade gfbdeac'
          
            'caebg cgaf acgdfbe begcaf cf fdgeb agedcb ebgfc cfe fbcdea | dbf' +
            'eagc cfe fbeagdc cf'
          
            'ageb bg adcbfge fcgea cbgaef cbdfa gfb fedacg bfgca fdcgeb | fbg' +
            ' afdcb ecgbdfa cgfdbe'
          
            'dgbfe aeg ea dcea dbeagfc fbacgd ecbdag gadbc bcafge adgbe | aed' +
            'c ae gbdef daec'
          
            'dbafcg dbgaefc adfc egdab fdg df agefbc bdgcfe fbacg gdfba | bed' +
            'gacf gcbaef cdfgab cafd'
          
            'eg fdgcabe gcadbe aebdc gced bagfde gea gbeac afbcg ecdbaf | agf' +
            'bc fgdabe fcdgaeb feabcd'
          
            'fedb gfe defabgc caedg cgadbf feagd bdagfe fgbda efagbc ef | fe ' +
            'fgcbea ef dbfe'
          
            'bc agcb dfceg bafgdc gfabd fbdcg bcd ecgfbda ebadgf fbaedc | cbd' +
            ' fabcgd cgbfd bc'
          
            'ebfgc dbeg ed gefdc cde gfbecd fgdca caedfb gdbafec gefcab | fgd' +
            'ecb dgfce fbecg cabgfe'
          
            'ab ebda bfagdc becgd aecfg bag daecgb ebcag gbacdfe cfgbde | abe' +
            'dgc eafgc ebacg ab'
          
            'ecdbag dagbfe badef fcaed adc cd efbagdc cafge cfaebd dfbc | dcf' +
            'b dca acd gcdabe'
          
            'cedbgaf ecbfg dagfec dgbea bdca gfdaeb ecgbd dbecga cd edc | ecb' +
            'dga cde edbag dc'
          
            'egbfcd gbcafe ed defga dbgfa bcgdeaf cdea def eacdgf gacfe | bgf' +
            'ad ecda gbfad gcdefb'
          
            'dafge cea fdace agdc dbgfea ebdfgca dcbfe acedfg abecfg ca | def' +
            'ac gcad ac ca'
          
            'ecdba fbac eabcdf beadgfc acd efacgd ac agedbf bfdea ecgbd | aec' +
            'bd agbefd bdgec dgebc'
          
            'bfegda bdage gdf gfdae bdfgace fgeb afdec fgdacb gf deagcb | fba' +
            'egcd fegb aedgb dfg'
          
            'cdaf fd bcdfge agebf dcgfae gfead baedcg gdcea egdbacf dgf | efg' +
            'ab df eagfd afgbe'
          
            'egfca egcb ceafdb fbc fbcaeg dgbfa cdfeagb fgcba agdcef cb | cb ' +
            'gcdfae eabgfc fgbca'
          
            'gdbca fdecba gdecfb feagbd ceb adfbgec bdgec ec efgdb cfge | ec ' +
            'ecbgd dacefb abfged'
          
            'edbcag cabd ecfdgb aegfd eagfcbd ac cga feagcb ebdgc dgeca | acf' +
            'bdeg dfgea cga dgeca'
          
            'ebgacf adcf bcgedfa gdcabe abedf aef edabc fa befgd bfdaec | aef' +
            'db af cebad fae'
          
            'dageb de gde dgfbce cgdba gabefd afbge cgdebfa aefd ceafbg | efg' +
            'bda agbdecf bfaegcd edg'
          
            'ce dec becf efdgb edfgcb ecbdag gdaefb beafgdc dagfc fecgd | ce ' +
            'fdbage gcdfeba gbcadef'
          
            'ecgfa ebadcf ed gcdfab cdefa gfdaeb dbec dbfgace cdbfa dfe | dce' +
            'b cdfab ed ceagf'
          
            'cadg efgcdb gbcfad feabc agfcb afcdgbe dgbfa gcb fagbde gc | gde' +
            'cbf adfgbc fbcgade gafbc'
          
            'gdcefa gefdb bcfeg eabc fagdbc ecagf bcf afcebg cb bfgaedc | fcg' +
            'dba agbecf fcgeba fgdceab'
          
            'afgbc be cbeaf gfeb ebcdfag cfdbag cdfae cfegba cbeagd abe | gde' +
            'cbaf cagfb bfgaec cabfdge'
          
            'eb egdb dcagb abe gcdabe agbce dgabcf fedbca fdcebag gfeca | gdb' +
            'e agdcb gfcae cgadbf'
          
            'dbagc bcaedfg gade cadeb efgabc cabedg gca fgdbc ecafdb ag | dag' +
            'e cagdb dgcaeb cdgab'
          
            'gbecd eacdg cgb egacdbf gfdbec efbg bfced bg bdfcea bafgdc | acb' +
            'fde bg gb gb'
          
            'fgbadc fbdag dbecg fbae dacgef ega ae afcbged ebgfad bgaed | ae ' +
            'bacfgd bfea agdbef'
          
            'dacfeg gecfd ad gadbfe gadbfec gda acde fcedgb acbfg fdcag | gef' +
            'cd cdegf agd ad'
          
            'caegbd cfdeba edbac cfbegad fe fbea fdagc cef acdef bedgcf | ef ' +
            'cdafgeb fce edfca'
          
            'dgcae cedbfag facbdg fdc eacdbf bfegda dfcae fdbae cf cfeb | cf ' +
            'febgcda dfc cdf'
          
            'edfag dbeacg dbecafg agc gcefa gc bcfea cdfg fbdgae gefadc | dfa' +
            'cge fagbecd feacbdg bfaged'
          
            'abefdg fgdec ecadf efcdab ac dbeaf acdb acf cdegfab gecbfa | fca' +
            ' fdbega decaf cgafdeb'
          
            'bceafd fegcad edcagbf dbcage decba bafd df fcd bcfge cbfed | ebg' +
            'fc eacbdf gadebc df'
          
            'egba cgdafbe begfc gacdfb dceaf cefbdg gfa ag gcebaf aecfg | acb' +
            'gfd gabe fbgeac agfec'
          
            'cdgeb fdecag agdbefc gefbac cdaf ade fegdab cgead ad caefg | ecb' +
            'gdaf dgceb cfgae dea'
          
            'cafbde fbgac edcg agdfeb eg dacgef fgcea aefdc dceagfb eag | afg' +
            'ec fbcga ceafgd bgceadf'
          
            'cefbg ceabd gd edbacgf aedfbc gaedcb cdbeg abfdcg gdc gead | cgd' +
            ' dgea gd cebad'
          
            'fadbg dagecf fea fbecga adce ae bedfcg egacbdf fdgec fdage | dca' +
            'e caed dbefcg adgfb'
          
            'acged aec efgdcb ac fagc abdge abfdegc fdeacg cfaedb gedfc | egb' +
            'cafd gaefcdb cae cagdfe'
          
            'fcbdage bafgec cab fcbae ac abdegf dbfec fbgae eagc cbfadg | acb' +
            ' dafegb acb bfeagdc'
          
            'af egfda gebdf gebdfa aefcdbg fbecda fgba daf cdeag dgbcfe | eag' +
            'dc cefbgda daf daf'
          
            'dgebcf gcf agcbd fbecd fbcdg ebacgf aebfcd fdeg fegdabc fg | dac' +
            'gb dfge fcdbe gedf'
          
            'bfacdg gafcb gefbd cd dgcfb dagc bdfagec bceadf fagceb bdc | beg' +
            'fd gbdfe afgcdbe fbeacgd'
          
            'bagf afe bdcaeg fdcbe af dafbe cbedgaf gfebad gdaeb aefcdg | bae' +
            'dcgf fa af cgadbef'
          
            'acdgf becgfa acd cagbf agcdbe fdba da bdcfag gfdec dcgafeb | bag' +
            'fc da dca fdbacg'
          
            'cdabfe adbfc ecbaf cdae cdbfge dabgfc bfgae bec ce gadcbef | fae' +
            'cbd beadcfg dcae cgfedab'
          
            'bceag agd aced gdbafce bcfgae agdeb ad fabdcg fdbge egcbad | gac' +
            'eb agd bdagec da'
          
            'cag dfgbeac ecdbgf ag gfabc ebag fabgec deafgc adcfb fcegb | dga' +
            'ecf aebg bgea dcbfa'
          
            'afdb degbc agedcf da aed beacfg dgfecba efcab bdface cbdea | fbe' +
            'ca aecbd gdecaf ade'
          
            'cafebg afedcb gfeabcd fgcb cfa afdeg fc ecgab dacebg cfeag | bcg' +
            'f bgcae gdfea bgcf'
          
            'feg gfcaed cfabdge gf degafb fdegc edfcab edgbc agcf cfade | gf ' +
            'gf gacf egf'
          
            'ceadf ecdgf eacbd cebagd dcabfge eaf fdceab fbad fgebca af | cef' +
            'adb cefad bfad abedc'
          
            'gefabd cabdfeg dgceab dagef bdfacg egfdc edgab af feba fda | gea' +
            'dcb dagfceb fda af'
          
            'dfcea adgce dfebc gecfdba fadgbe dcefga cfga aebcdg efa fa | fa ' +
            'fae af gaedbf'
          
            'agbfd acbgedf faecb cegbad dgabfe gbc fcdg cfagb gc afdbgc | cg ' +
            'cg dfgbae cdfg'
          
            'efg bfacg feab efcagd fe bcagedf edgbc ebgcf afbegc bcfgda | dge' +
            'cfa ef fgcba efba'
          
            'aebfdc bcfage dgbacf gface gbaecfd dfgce geab acfbg ea eac | cab' +
            'fg ea cfagb eagb'
          
            'gba gdcea cdbfg acgdb gbecadf bfgecd dgcfab abfc ba fdeagb | ab ' +
            'febagdc dfgbac fdagcb'
          
            'dfcb gcebd dfgaec efdgc eagcb dfaebg afedcbg gbd gbcfde bd | gad' +
            'ebfc db febdga bgd'
          
            'eabd adcbg ceafg ecb be eacdbg acegb gbfcde adgcbf ecfdgba | cgf' +
            'ebad cbe ebacg dfgceb'
          
            'cefbgd cgdfa bagfced dabe fgceab abfeg gdbaef gbfad db gdb | aef' +
            'dgb bd abdfegc fgabed')
        ScrollBars = ssBoth
        TabOrder = 4
      end
      object LabeledEdit1: TLabeledEdit
        Left = 468
        Top = 616
        Width = 121
        Height = 23
        Anchors = [akRight, akBottom]
        EditLabel.Width = 113
        EditLabel.Height = 15
        EditLabel.Caption = 'Votre R'#233'sultat Etape 1'
        TabOrder = 5
        Text = ''
      end
      object ButtonEtape1_3: TButton
        Left = 733
        Top = 408
        Width = 75
        Height = 25
        Anchors = [akTop, akRight]
        Caption = 'Etape 1.3'
        TabOrder = 6
        OnClick = ButtonEtape1_3Click
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Etape2.1'
      ImageIndex = 2
      DesignSize = (
        1114
        642)
      object Memo1: TMemo
        Left = 317
        Top = 0
        Width = 258
        Height = 593
        Anchors = [akTop, akRight, akBottom]
        Lines.Strings = (
          'Etape 2.1 extrait les combinaisons uniques et leurs possibilit'#233's'
          ''
          'Etape 2.1.1'
          '  // cette fois ci on prend en compte toutes les combinaisons'
          '  // on supprime la barre verticale'
          ''
          'Etape 2.1.2'
          ''
          'Trie les s'#233'quences de lettre par ordre alphab'#233'tique'
          ''
          'Etape 2.1.3'
          ''
          'Supprime les doublons (facultatif)'
          ''
          'Etape 2.1.4'
          ''
          'si que 2 lettres forc'#233'ment 1'
          'si 3 lettres 7'
          'si 4 lettres 4'
          'si 7 lettres 8'
          'si 5 lettre 2 3 ou 5'
          'si 6 lettres 6 9 ou 0'
          ''
          'Recherche et remplace les s'#233'quences'
          ''
          'Etape 2.1.5'
          ''
          'fait la combinaisons des possibilit'#233's '
          'pour les autres Chiffres'
          '')
        ScrollBars = ssBoth
        TabOrder = 0
      end
      object MemoEtape2_1Bis: TMemo
        Left = 662
        Top = 0
        Width = 452
        Height = 642
        Align = alRight
        ScrollBars = ssBoth
        TabOrder = 1
      end
      object ButtonEtape2_1_4: TButton
        Left = 581
        Top = 296
        Width = 75
        Height = 25
        Anchors = [akTop, akRight]
        Caption = 'Etape 2.1.4'
        TabOrder = 2
        OnClick = ButtonEtape2_1_4Click
      end
      object ButtonEtape2_1_3: TButton
        Left = 581
        Top = 183
        Width = 75
        Height = 25
        Anchors = [akTop, akRight]
        Caption = 'Etape 2.1.3'
        TabOrder = 3
        OnClick = ButtonEtape2_1_3Click
      end
      object ButtonEtape2_1_1: TButton
        Left = 581
        Top = 55
        Width = 75
        Height = 25
        Anchors = [akTop, akRight]
        Caption = 'Etape 2.1.1'
        TabOrder = 4
        OnClick = ButtonEtape2_1_1Click
      end
      object ButtonEtape2_1_2: TButton
        Left = 581
        Top = 119
        Width = 75
        Height = 25
        Anchors = [akTop, akRight]
        Caption = 'Etape 2.1.2'
        TabOrder = 5
        OnClick = ButtonEtape2_1_2Click
      end
      object ButtonEtape2_1_5: TButton
        Left = 581
        Top = 400
        Width = 75
        Height = 25
        Anchors = [akTop, akRight]
        Caption = 'Etape 2.1.5'
        TabOrder = 6
        OnClick = ButtonEtape2_1_5Click
      end
      object MemoEtape2_1: TMemo
        Left = 0
        Top = 0
        Width = 313
        Height = 642
        Align = alLeft
        Anchors = [akLeft, akTop, akRight, akBottom]
        Lines.Strings = (
          
            'gbdfcae ebcg cfg gc facegb fecab acfge cbfgda fedag caebfd | ecb' +
            'g bfcagd faegc gcf'
          
            'eacgf efcab fgc fedagc gdeaf cged aebfgd adcgfbe gc bdgcaf | fgb' +
            'acd cfega ecdg cg'
          
            'dfgae gcadef efb eb dcabf bgde edfba bcfaeg egcdfab fbgade | bge' +
            'd eafdb eb gfdea'
          
            'aefdb cafdgeb egdfac egdcba fcbd efd eadcb caefbd df aegbf | cfa' +
            'deg abfedgc fde bfcd'
          
            'dc deafg ecd dbaefc adcfeg cfged ecbfg acdg cafdegb gfeadb | dcg' +
            'a edc adfebcg ecgfb'
          
            'befdc bcfge befad degfab cde aecbfd gcedaf eafcgdb dc bcad | bde' +
            'afc cde ebdcafg daebgcf'
          
            'cd egdacfb fdc fecgb gabdf fbcdg fcgdeb gdcfea debc ecfbga | gfe' +
            'cb fbgecd bcgef dc'
          
            'fagcdbe gec gbdea ce bgedc aecd cgbeaf cfbdg gebcda dbfgae | cfb' +
            'aged cgbeaf ceg gadfbe'
          
            'gcbaf gfdb bdafc df adf adcbefg dcfeag cebad adfgcb faecgb | afd' +
            ' agfedc dcbfa gdfabc'
          
            'fbae cef fecdbg afbcg cefbga fe acdfgb gadce fbdacge fcage | fe ' +
            'abef gfbac cef'
          
            'cfdebg bg beg cabfeg fbgd acged ecgbd fdcbe cfbeda cebgadf | fbe' +
            'dc gadce gdaec bcfed'
          
            'gba ab fgbcd gedaf bcadge afbdgc cdgfbe agdfcbe bcfa bdfga | gab' +
            ' gdbfc ba fgdbcae'
          
            'fabdgce bfdgac cbaed dcb bgade fbaec fcde edbfac gfabec cd | dc ' +
            'cefd dc cd'
          
            'afc dbecafg fagce fbega fbgc edgca agecbf bafged eacdfb cf | cf ' +
            'bfdcaeg gfbc gfbc'
          
            'gedcb ebda cgbdfa fcaeg gab bfgdce ba agbce bdgecfa dgebca | bdg' +
            'fce cebagd cbdgfae dcfbeg'
          
            'egbacf acdfe gfecb egdfcb dfgaceb dfb dgcb fdbce db bdeafg | fdb' +
            ' db db bdf'
          
            'cfeg eabcf gdefcab bef geabc bfcad egbadf cfgbae egcdba fe | fge' +
            'c gaecfdb cagbef ef'
          
            'bafde dbgeac feacgbd cbaef bed bfgaed gafecd bgdf bd eafgd | db ' +
            'cfgdae caegdfb fabed'
          
            'afg bacg cdbgf gcdfab fdcae gafdeb dbgfce ga dcafg cedabfg | gaf' +
            ' bdafgc agbc ga'
          
            'edgca bafdcg acbdg cbdeag dce fgcea gdcfeb aebd ed gfdabce | ebg' +
            'cad daeb edcga ced'
          
            'agecf abfegc dbefcga ad dafc fegdb adg afgde bdcega ecagdf | fad' +
            'eg dfac dga da'
          
            'ceagdb gedac acfdbg cda bgecafd adgeb dcefg ca beac abgfde | aeg' +
            'bd baegd bdcagf abcdeg'
          
            'egaf bagdce dcgabf ea eab cgbfa cdfebga fbcae dfcbe fgbace | gdf' +
            'aceb gfea dbcfe eba'
          
            'cfbega bge eg cgdebaf gedbc adeg bceadg bfadcg agbcd cdefb | ge ' +
            'ge cfedb fbgadec'
          
            'afc ca cabe gbefcd aebcgdf acedf gbafdc eagfd edcfab dfbce | gbf' +
            'dcea fca aecbfd ceba'
          
            'af bcdag agbfde fdbca ebdfc adf dbefcga abedfc aefc dbgcfe | af ' +
            'acfe adf adcfbe'
          
            'badfe agebd gfaced gbdcafe aecfd fab dbfc geacbf adbcfe bf | fb ' +
            'ebagfc beadf dface'
          
            'bfeda gabefd agbedc ec fcadeb dfbaecg cea fdec afceb agfcb | fbc' +
            'ae cfde eac fedc'
          
            'ebcf eafgcb egdfba dfcag bacge faceg afe gdceab ef dgcbaef | fcb' +
            'e febc bcaeg cbfe'
          
            'dafbc afdebg egfc ce eagbcd ceafgbd fgeba cbefa eac fcgeba | afe' +
            'gb cdagbe cbdaf gfaeb'
          
            'ecd dface cdgafe gcabfd edbgcfa gdacf fecg cdbaeg ec efbad | edb' +
            'af gcafd dcgbaf dafgceb'
          
            'gd fagbec bdfg gde cfgbe cefdbg gbdeacf agdcef bdceg bcdea | dg ' +
            'gcfeba dg ebdcg'
          
            'bg bgdeac abdg cgb fcbade gdbceaf fbdgce dbeca gaebc aegfc | cgb' +
            ' befgdc fedgcb gbc'
          
            'gac cgeda egcbafd gfdbce fadec ag degbca agecbf dagb gebcd | cde' +
            'gb degcbaf cedaf edafc'
          
            'ecfab bfacdg bdga gb cfgba bfg gefdacb cegdfb fagdc cafedg | bfg' +
            ' cefba gb aedbcgf'
          
            'dgfce aeg cfbdgae acfgeb ebcafd ag gafed gaebfd bdga dbfea | gae' +
            ' cfbdae abedfg bgfdae'
          
            'cgbad cbaf fbgeda dfgcab fdcebg dbfcg decag cdagbfe bga ab | dfc' +
            'abg cbfa fcedgab adfcbeg'
          
            'cegbadf edfgba cafeg dc agdebc dbgfe cdbefg dec dbcf edfcg | bdf' +
            'c facdegb adfegb egbfd'
          
            'bedf cefadg ced ed bcegd gefabc agcdbfe cdgab gcfbe fgcdbe | ed ' +
            'cde bdgec dbecfg'
          
            'egfcab debfa ecd bfgec cdgb cd bdcef dgebcf ecdabgf egcadf | bec' +
            'fd cbgd gcdb fcbed'
          
            'bc dbfge gbecf caefdg gefabc abgdcf bfc baec efcag cebgafd | bae' +
            'c fegbc agfec cgbef'
          
            'bacegfd fbdgca egbcf fabce bdaefc dcaef dagefc ba dbae cab | dae' +
            'b cbefa cab ab'
          
            'fgab cgdfae fcgebd gb bcg dbaegcf cabed gadcb gcafd gbfadc | gbc' +
            ' adcgf dgecbf cgb'
          
            'gdaeb df cgaebdf dfbe cbdagf eabdcg gfd aecgf aefdgb agedf | dfg' +
            ' gfcea febd ebdag'
          
            'ecbaf cagfdb aecgf gac ebga defagcb baedfc gfcde ag gfbeca | cad' +
            'bfg gaecbf agbfec fecba'
          
            'edbgaf fbd egdbfca dagf gabde bdfge fd bgcfe efbcda eacdbg | fbd' +
            ' ebcdaf dbgaefc gefbda'
          
            'acdbg aefcdg cdg cegb acebfd abgdf cg fbegadc gcbdae eabdc | gc ' +
            'edafbcg gadbc cg'
          
            'fgcd bgdafe bacge dg facgde acfde agdec gdefbca deg aebcfd | gd ' +
            'eagdc ged ged'
          
            'egfa efdcba dfbgc cbfea ga abcfg edgcab bga fecgdab aebfcg | bga' +
            ' faegcbd bfeadc badcge'
          
            'bfeda ceagdb bf ebfacd edacb acefbdg begcdf bafc agfde feb | fb ' +
            'fb fbac bcegad'
          
            'bfdcea dcbgaf cbega dbage cea ce cbafg gefc bgacfed bfecag | abg' +
            'fc ec cegf acdefb'
          
            'adgfce cdag cd fgecab cfgae ced fdbae gebdfc agbcefd ecafd | dfc' +
            'ae dc fdcae ebafcg'
          
            'dbeag begfad bfdegac dcb cb gcfda ecdgfb ceab gcabd dcebag | cbd' +
            ' cb cegbda bgcdef'
          
            'cdfaeb fgebad ea dcbgfa gcaebdf cegbd bdcae fabcd cfae eba | cae' +
            'f bafdce afec gfdbea'
          
            'bcfega gcbea bdfgeca gabcd bd gdcabe dafcg ecdb dba ebfadg | fce' +
            'adbg fbaceg db bd'
          
            'gadcbe dgb debcaf fabgcd bcgfe bdgcf acfedbg gd cafdb gdaf | eaf' +
            'dcb bcfade badceg bdacfg'
          
            'gafce cabde cdf aefbdgc efacgd fgeacb ceafd df efgd badfgc | edf' +
            'g acbegf dfc gedf'
          
            'afgce gbdecf bae adebcgf bgedca abecg abcd baefgd ba gbdec | ab ' +
            'dfagcbe gbeca ab'
          
            'de dcgaf gcfbed gdebfca acegb cde bcgafe abed gdacbe gecda | ed ' +
            'afgcedb deagc gcdaf'
          
            'gcdef ebfadc da dabefg daf fbaeg gaefcb dfeag gbdfcea bgad | gad' +
            'fbe bafgce dgba afd'
          
            'bdfeg gecf fc egdfcb gcbedaf bfc dfcbe cbdfga baced abedfg | fcg' +
            'e fgdecb dcgfabe fgdeb'
          
            'bdf acbdfg bdaefg aefgbc abcde dagebfc fd dfcg cabdf cgfab | bfa' +
            'dc cabfg gfcdab fbaegc'
          
            'af cdfbega edbfac dfbgc fac adef adecb becagd acdfb efcbga | bca' +
            'gfde bdfcae gfdecab eacbd'
          
            'egfcad bdgeac fdac fed cdage fd gcbfed baegf gfedcab gedfa | adc' +
            'eg fd afebg egdca'
          
            'fegba ecbafgd cfegba cgdab efbgad ec fadcge ecg bcef cegba | bga' +
            'dc ce fecgdba baceg'
          
            'bdfaeg abgedc efadg bafd gfeba fcdebga adg aecgbf da ecfdg | ad ' +
            'ad dfba befcgad'
          
            'efadcg dacfb cfgab bfde eafdc decfbag decbfa bd bcd acebgd | deb' +
            'f cafde gcdafe fcgebad'
          
            'agd cgadef gcdebfa gd facge bdfgea eagbfc dcgaf cafdb ecdg | cbg' +
            'fae ebfcga agcef bfdeag'
          
            'dfbge abefgd aefbcg dcfegb ba fgbad gedafbc bdea fba dcafg | agf' +
            'db fab fba fcbgde'
          
            'fcdab agbecd eacgfb gc fgeabd gdabc dgbea cbfdeag cag dceg | fca' +
            'db fbcad degba gca'
          
            'eag cbefg dfeagbc cdfbga egcba dcegba dace agedbf ae gadbc | ceg' +
            'ba age agbdc dbcafg'
          
            'cdbag gfb dgceba cbfa gfdbac faebcgd deafg dgbaf fbegcd bf | eag' +
            'df febgcd fbdag gdfbce'
          
            'cdbgf afcebg acfdbe ed ced bdefagc dcgbea fbeac cbdfe adef | cfb' +
            'de de dec ecd'
          
            'dfc fbcde dfcbga ecbgd egbdca fd eabfc edbfgc efdg cdfegab | df ' +
            'dgef fgbaedc df'
          
            'fcg egcbd gacefb dfgbc abfcgde bfdga cfed cf gdebac gbecdf | bfd' +
            'cg fgc fbcdg agdbf'
          
            'fcabg acfbedg bfcgde ecbad agef ecfgba ecf fe dafbgc baecf | aeg' +
            'fbc cfe dbace fec'
          
            'edbagc cefbda bfdeg af agcf gfebdca fgdcab dgcba baf fabdg | bca' +
            'def dfgcab abdcfe gedfb'
          
            'acegf efbgcd dgbefac cgd bedga cbad agcedb dc egadc feagdb | bad' +
            'cgef cd dcgbfae cd'
          
            'bfc cdafeb bcega gdcf afgdbe egbfd caebfdg gcefb cf debcgf | gce' +
            'bf bgedf dfbgea fc'
          
            'dgfaceb gcdf dabcg fd dfgba aefcbd bdacge gfabe afd dcagbf | dae' +
            'cgfb gbecda dacbfe gdcba'
          
            'fbgedc bfcda cfg dafbge fecdbag cagfd aecg agfde cg adgcfe | ecd' +
            'fagb gfceda gaebdf gbfdea'
          
            'afbe gfa gfdcb af febcadg faegcb bcgea aedcbg eagfcd afgcb | bag' +
            'cf gfdeca abfe af'
          
            'caefg efd fd abedc fcgd egdcaf egafbd gfcbea dafec abgedcf | gae' +
            'bcf fcedga def egcafbd'
          
            'dcfab gefdcb bda da baefc baedcfg gfda dbceag cbfagd fbgdc | cde' +
            'bga efdgbc fbcgead beafc'
          
            'bgfed fdaegcb bedagc da bdacfg gda eacfgb cadf dafgb cabgf | dgc' +
            'eab da dfbeg bcegad'
          
            'cedab fc adbfec faegcb adbgf cfa ecdf ebagcfd dcbfa ecgabd | bec' +
            'daf cefd abdfc efcd'
          
            'cdgbea aeg agdec dafgbc gbed aegbcf ge aecfbgd cagbd cafde | cea' +
            'fd bagcd gacdb cgbad'
          
            'dgfeb bedag cgdefa df gfdaeb cbdega gfdceba gbfec dafb gfd | fab' +
            'ecdg bdfa bdaf dfba'
          
            'gdfe acdbf ed bdegcf cegbfa cebfd deb badegfc fbcge bgaced | ebd' +
            ' efgcabd bfcda dfeg'
          
            'abfcedg gec fcgdbe gaebc gebfac efbdca gfea acbfe gbdca ge | agf' +
            'e cge cdbgfe bcfdea'
          
            'fgbaed dacegb dacef egafd aecbgf adfcebg bdfg ged agfbe gd | agd' +
            'fceb gd dg fbgd'
          
            'egdb acgbef edfac bd fgecb gbadfec bcafgd bcd bedcf gdecbf | bdc' +
            ' bedg gdbe efbgc'
          
            'cagbef acgbf fgcabde cgd gbda dg dbfgec ecafd dgfca dagbcf | agb' +
            'cfe dcgfa dbagcf cgdafeb'
          
            'cb efbgc cgfae cgb gceafd beca fbcgae gefdb cbgadf dcfabeg | bge' +
            'acf bacedfg cbdgfa dfgbe'
          
            'cgbedf facgdb agfdc cga cafed gfcbd gcdbeaf degacb fbag ag | gba' +
            'f acfed gafcd cgfda'
          
            'egbdfca cadf bdafgc cbgfea cbgde bdcfg gfc cf fdbag gebdfa | eac' +
            'dgfb fcda dfac adefcgb'
          
            'fdgea abcd ac cfabge cdbfeg gdebac acg gcdebaf gadce bcedg | gac' +
            ' abefgc ac gcaed'
          
            'eafdc eafbc agbe begcadf ba gcefba fgcbda gdbfce cba ecbgf | ba ' +
            'ab abeg adcgbf'
          
            'afg ga bdafe eadfg dagc gefcab edbcgf ceagfd ecgdf aedcbfg | agd' +
            'c daefb debcafg fdaeb'
          
            'baf cbdgf afbecd gdcabfe dcfabg fadeg gbac gbadf ab cedgbf | fcd' +
            'eba cbga afbdg bgca'
          
            'ebdfgca ebfdag gb bgf fdeagc gdbe cdfgba egfab abcef agdfe | gb ' +
            'gfbdea gdeb eafbg'
          
            'agbcdf fe gebad fea becf ecfbga cgabf aegfb fedgca acgbedf | ebg' +
            'da ebdgacf fcbe aef'
          
            'gdbef bgfadec gfeab eab gdcfbe ab bfadeg fdab dcaebg acgfe | fga' +
            'dbe fbedgc dgefb aeb'
          
            'adcbf fbdg bcf dcbag fecad cgafbd fb acdefgb bgefac dgcabe | dfc' +
            'ab cfb bf cdeaf'
          
            'dfgbca cdebagf cfe fcbga aefdg geafc bdecgf ce bgefac aceb | bac' +
            'e aebc gfbac efc'
          
            'adfegcb gcbaf fa adgcb acf efgacb fgcbed eadfbc agef fbgce | aef' +
            'g acf gafe cfa'
          
            'fdegbc fcbad ec ebgaf gecfdba feacb caefgb degfba ecb geac | ecb' +
            ' ecb cfadb ebafc'
          
            'fegabc ebcgafd gfacde ge fcgeb ceg bagcf dcfbe ebga bdcfga | cef' +
            'abdg fdceb abgcf gfeadc'
          
            'fdabcg bgafc fcbeag edbfg gadfceb ad adb dfca dcbgae dfabg | bde' +
            'gf faedbcg da caegfbd'
          
            'cgfae gdbeca decaf fd dfbc fad dabegf daebc bedafgc efbcda | dec' +
            'fa fgcbdae fcbead dbegcaf'
          
            'dbeaf cb fabecdg bcfda gabfdc cbfg agdfce abc edgcba cgadf | bcd' +
            'efag bcgf dafbc badcgf'
          
            'gbdcfa becfdg fdbcgea fgc cg fecdg efdgb ecadf gceb gadefb | gcb' +
            'e fgcebda daecgbf aebcfgd'
          
            'cdega dgcaeb cbgea egdcaf gfacedb begfda cebfg cbda bag ba | ab ' +
            'egdac beafdcg faegcdb'
          
            'gab cgfab cfage fbaedc bcdg gb gacfbd defcagb gdebaf fadbc | bg ' +
            'fbacde gfabc dceagbf'
          
            'ge ebg cgdfb cedba bedgc ecag deagcb bfceda gdcfeab egdbfa | bge' +
            ' beg bafged cadbeg'
          
            'eabd ebacf ecd fdcbg dbafegc ed ceagdf fgceab ecfbda cdbef | dec' +
            ' dfcabe dec befca'
          
            'afbgdec cedb dc agdbf cegbf bfcedg cdg bdgfc baecgf ecfdag | cd ' +
            'dgefbc fdgcb cd'
          
            'gebdaf dgfae afe gafcbed agcfd febd edabg gbfeca bcdega fe | ebd' +
            'ag fedb egafd aegcbf'
          
            'gebdcf abefdcg deg bgdfc fcde gbfea gedabc edbgf ed bgfcda | efd' +
            'bg fedacbg gbfacd fbdeg'
          
            'bcgd edagc gaebd bcdaeg fabedc bgefa fcadge agbfcde db adb | cgb' +
            'dfae bdagcef badegc dab'
          
            'df fdb bfadceg bgeadf afbdce efdg dgbae dafbg cafbg abdgec | gdf' +
            'e afcgb ebcgafd fbgacde'
          
            'gabce gdfaeb bcad cebdgfa fgcbae efgcd dga da cgdea cdeabg | ad ' +
            'agd gda gfedc'
          
            'fcabge edbfg fcaebd ea dcbagef gace gafcdb bafcg eaf fgbea | dcf' +
            'bage aceg afbdceg ebcafd'
          
            'bafe egfcda be bfgaec gbe egcfbad fcaeg bdcaeg bgecf cfbdg | fab' +
            'gced bfea gbcef gcfeb'
          
            'badfeg fgecb af cgaebd acfdbge gaf afcged gfaeb dfab egbad | fa ' +
            'fga abfd gabde'
          
            'afceg bcdfge fcaebg baegdcf cfg eabcdg bgfa efcad gcabe fg | abf' +
            'g gf fbgecd acebgd'
          
            'acbedgf fb efgdc bgf gbcfd bgfdac dagcb fdbeag ebcdga fcab | bf ' +
            'gdebaf fb bf'
          
            'aecf cgbdefa bacged efbcga fdgcab febag af agf dgfeb ecabg | bcg' +
            'daf af cadfbge efca'
          
            'egfda fgceab acd bfcadeg dc dcega bfdcea gcdb cdbega eacbg | gab' +
            'ecd cd befgcad gdcb'
          
            'gecda dfegacb cgfae cdbfag fcbeag afg gf fbge dafecb caebf | dfa' +
            'ebc cfeab gf agdfbc'
          
            'gdafe cdgaeb egfdba da bfdgec gbfed eagcf egdbafc fbad dag | agf' +
            'de dga dcgbfe abcdfeg'
          
            'acgdb gadfce cbefdga becad bcegdf bacgdf afbg ga dag dbcgf | abd' +
            'gc gdeacf acdfbg ecdab'
          
            'gdfa eadbc gcafe dgc dg fcagde bcgfea decgfb egcda fbecagd | ceg' +
            'da cgdea gd dg'
          
            'ga egdbcfa aegcb cag egbcd gadceb gbcefd decafg badg cabfe | bag' +
            'd cagfed gacdfeb cbegd'
          
            'cb deafc bcgd agfceb dbfega ecb deacb aebgd cbafdge ebdacg | dcg' +
            'b adceb edgba ceb'
          
            'edgfab acgb becfdag bgf cgbdf cgfad dacbfg bg ecdbf afegdc | gfb' +
            ' bg gcfade gfbdeac'
          
            'caebg cgaf acgdfbe begcaf cf fdgeb agedcb ebgfc cfe fbcdea | dbf' +
            'eagc cfe fbeagdc cf'
          
            'ageb bg adcbfge fcgea cbgaef cbdfa gfb fedacg bfgca fdcgeb | fbg' +
            ' afdcb ecgbdfa cgfdbe'
          
            'dgbfe aeg ea dcea dbeagfc fbacgd ecbdag gadbc bcafge adgbe | aed' +
            'c ae gbdef daec'
          
            'dbafcg dbgaefc adfc egdab fdg df agefbc bdgcfe fbacg gdfba | bed' +
            'gacf gcbaef cdfgab cafd'
          
            'eg fdgcabe gcadbe aebdc gced bagfde gea gbeac afbcg ecdbaf | agf' +
            'bc fgdabe fcdgaeb feabcd'
          
            'fedb gfe defabgc caedg cgadbf feagd bdagfe fgbda efagbc ef | fe ' +
            'fgcbea ef dbfe'
          
            'bc agcb dfceg bafgdc gfabd fbdcg bcd ecgfbda ebadgf fbaedc | cbd' +
            ' fabcgd cgbfd bc'
          
            'ebfgc dbeg ed gefdc cde gfbecd fgdca caedfb gdbafec gefcab | fgd' +
            'ecb dgfce fbecg cabgfe'
          
            'ab ebda bfagdc becgd aecfg bag daecgb ebcag gbacdfe cfgbde | abe' +
            'dgc eafgc ebacg ab'
          
            'ecdbag dagbfe badef fcaed adc cd efbagdc cafge cfaebd dfbc | dcf' +
            'b dca acd gcdabe'
          
            'cedbgaf ecbfg dagfec dgbea bdca gfdaeb ecgbd dbecga cd edc | ecb' +
            'dga cde edbag dc'
          
            'egbfcd gbcafe ed defga dbgfa bcgdeaf cdea def eacdgf gacfe | bgf' +
            'ad ecda gbfad gcdefb'
          
            'dafge cea fdace agdc dbgfea ebdfgca dcbfe acedfg abecfg ca | def' +
            'ac gcad ac ca'
          
            'ecdba fbac eabcdf beadgfc acd efacgd ac agedbf bfdea ecgbd | aec' +
            'bd agbefd bdgec dgebc'
          
            'bfegda bdage gdf gfdae bdfgace fgeb afdec fgdacb gf deagcb | fba' +
            'egcd fegb aedgb dfg'
          
            'cdaf fd bcdfge agebf dcgfae gfead baedcg gdcea egdbacf dgf | efg' +
            'ab df eagfd afgbe'
          
            'egfca egcb ceafdb fbc fbcaeg dgbfa cdfeagb fgcba agdcef cb | cb ' +
            'gcdfae eabgfc fgbca'
          
            'gdbca fdecba gdecfb feagbd ceb adfbgec bdgec ec efgdb cfge | ec ' +
            'ecbgd dacefb abfged'
          
            'edbcag cabd ecfdgb aegfd eagfcbd ac cga feagcb ebdgc dgeca | acf' +
            'bdeg dfgea cga dgeca'
          
            'ebgacf adcf bcgedfa gdcabe abedf aef edabc fa befgd bfdaec | aef' +
            'db af cebad fae'
          
            'dageb de gde dgfbce cgdba gabefd afbge cgdebfa aefd ceafbg | efg' +
            'bda agbdecf bfaegcd edg'
          
            'ce dec becf efdgb edfgcb ecbdag gdaefb beafgdc dagfc fecgd | ce ' +
            'fdbage gcdfeba gbcadef'
          
            'ecgfa ebadcf ed gcdfab cdefa gfdaeb dbec dbfgace cdbfa dfe | dce' +
            'b cdfab ed ceagf'
          
            'cadg efgcdb gbcfad feabc agfcb afcdgbe dgbfa gcb fagbde gc | gde' +
            'cbf adfgbc fbcgade gafbc'
          
            'gdcefa gefdb bcfeg eabc fagdbc ecagf bcf afcebg cb bfgaedc | fcg' +
            'dba agbecf fcgeba fgdceab'
          
            'afgbc be cbeaf gfeb ebcdfag cfdbag cdfae cfegba cbeagd abe | gde' +
            'cbaf cagfb bfgaec cabfdge'
          
            'eb egdb dcagb abe gcdabe agbce dgabcf fedbca fdcebag gfeca | gdb' +
            'e agdcb gfcae cgadbf'
          
            'dbagc bcaedfg gade cadeb efgabc cabedg gca fgdbc ecafdb ag | dag' +
            'e cagdb dgcaeb cdgab'
          
            'gbecd eacdg cgb egacdbf gfdbec efbg bfced bg bdfcea bafgdc | acb' +
            'fde bg gb gb'
          
            'fgbadc fbdag dbecg fbae dacgef ega ae afcbged ebgfad bgaed | ae ' +
            'bacfgd bfea agdbef'
          
            'dacfeg gecfd ad gadbfe gadbfec gda acde fcedgb acbfg fdcag | gef' +
            'cd cdegf agd ad'
          
            'caegbd cfdeba edbac cfbegad fe fbea fdagc cef acdef bedgcf | ef ' +
            'cdafgeb fce edfca'
          
            'dgcae cedbfag facbdg fdc eacdbf bfegda dfcae fdbae cf cfeb | cf ' +
            'febgcda dfc cdf'
          
            'edfag dbeacg dbecafg agc gcefa gc bcfea cdfg fbdgae gefadc | dfa' +
            'cge fagbecd feacbdg bfaged'
          
            'abefdg fgdec ecadf efcdab ac dbeaf acdb acf cdegfab gecbfa | fca' +
            ' fdbega decaf cgafdeb'
          
            'bceafd fegcad edcagbf dbcage decba bafd df fcd bcfge cbfed | ebg' +
            'fc eacbdf gadebc df'
          
            'egba cgdafbe begfc gacdfb dceaf cefbdg gfa ag gcebaf aecfg | acb' +
            'gfd gabe fbgeac agfec'
          
            'cdgeb fdecag agdbefc gefbac cdaf ade fegdab cgead ad caefg | ecb' +
            'gdaf dgceb cfgae dea'
          
            'cafbde fbgac edcg agdfeb eg dacgef fgcea aefdc dceagfb eag | afg' +
            'ec fbcga ceafgd bgceadf'
          
            'cefbg ceabd gd edbacgf aedfbc gaedcb cdbeg abfdcg gdc gead | cgd' +
            ' dgea gd cebad'
          
            'fadbg dagecf fea fbecga adce ae bedfcg egacbdf fdgec fdage | dca' +
            'e caed dbefcg adgfb'
          
            'acged aec efgdcb ac fagc abdge abfdegc fdeacg cfaedb gedfc | egb' +
            'cafd gaefcdb cae cagdfe'
          
            'fcbdage bafgec cab fcbae ac abdegf dbfec fbgae eagc cbfadg | acb' +
            ' dafegb acb bfeagdc'
          
            'af egfda gebdf gebdfa aefcdbg fbecda fgba daf cdeag dgbcfe | eag' +
            'dc cefbgda daf daf'
          
            'dgebcf gcf agcbd fbecd fbcdg ebacgf aebfcd fdeg fegdabc fg | dac' +
            'gb dfge fcdbe gedf'
          
            'bfacdg gafcb gefbd cd dgcfb dagc bdfagec bceadf fagceb bdc | beg' +
            'fd gbdfe afgcdbe fbeacgd'
          
            'bagf afe bdcaeg fdcbe af dafbe cbedgaf gfebad gdaeb aefcdg | bae' +
            'dcgf fa af cgadbef'
          
            'acdgf becgfa acd cagbf agcdbe fdba da bdcfag gfdec dcgafeb | bag' +
            'fc da dca fdbacg'
          
            'cdabfe adbfc ecbaf cdae cdbfge dabgfc bfgae bec ce gadcbef | fae' +
            'cbd beadcfg dcae cgfedab'
          
            'bceag agd aced gdbafce bcfgae agdeb ad fabdcg fdbge egcbad | gac' +
            'eb agd bdagec da'
          
            'cag dfgbeac ecdbgf ag gfabc ebag fabgec deafgc adcfb fcegb | dga' +
            'ecf aebg bgea dcbfa'
          
            'afdb degbc agedcf da aed beacfg dgfecba efcab bdface cbdea | fbe' +
            'ca aecbd gdecaf ade'
          
            'cafebg afedcb gfeabcd fgcb cfa afdeg fc ecgab dacebg cfeag | bcg' +
            'f bgcae gdfea bgcf'
          
            'feg gfcaed cfabdge gf degafb fdegc edfcab edgbc agcf cfade | gf ' +
            'gf gacf egf'
          
            'ceadf ecdgf eacbd cebagd dcabfge eaf fdceab fbad fgebca af | cef' +
            'adb cefad bfad abedc'
          
            'gefabd cabdfeg dgceab dagef bdfacg egfdc edgab af feba fda | gea' +
            'dcb dagfceb fda af'
          
            'dfcea adgce dfebc gecfdba fadgbe dcefga cfga aebcdg efa fa | fa ' +
            'fae af gaedbf'
          
            'agbfd acbgedf faecb cegbad dgabfe gbc fcdg cfagb gc afdbgc | cg ' +
            'cg dfgbae cdfg'
          
            'efg bfacg feab efcagd fe bcagedf edgbc ebgcf afbegc bcfgda | dge' +
            'cfa ef fgcba efba'
          
            'aebfdc bcfage dgbacf gface gbaecfd dfgce geab acfbg ea eac | cab' +
            'fg ea cfagb eagb'
          
            'gba gdcea cdbfg acgdb gbecadf bfgecd dgcfab abfc ba fdeagb | ab ' +
            'febagdc dfgbac fdagcb'
          
            'dfcb gcebd dfgaec efdgc eagcb dfaebg afedcbg gbd gbcfde bd | gad' +
            'ebfc db febdga bgd'
          
            'eabd adcbg ceafg ecb be eacdbg acegb gbfcde adgcbf ecfdgba | cgf' +
            'ebad cbe ebacg dfgceb'
          
            'cefbgd cgdfa bagfced dabe fgceab abfeg gdbaef gbfad db gdb | aef' +
            'dgb bd abdfegc fgabed')
        ScrollBars = ssBoth
        TabOrder = 7
      end
      object ButtonGoEtape2_2: TButton
        Left = 581
        Top = 471
        Width = 75
        Height = 25
        Anchors = [akTop, akRight]
        Caption = '>> Etape2.2'
        TabOrder = 8
        OnClick = ButtonGoEtape2_2Click
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Etape 2.2'
      ImageIndex = 3
      DesignSize = (
        1114
        642)
      object MemoEtape2_2: TMemo
        Left = 0
        Top = 0
        Width = 399
        Height = 642
        Align = alLeft
        Anchors = [akLeft, akTop, akRight, akBottom]
        Lines.Strings = (
          
            'gbdfcae ebcg cfg gc facegb fecab acfge cbfgda fedag caebfd | ecb' +
            'g bfcagd faegc gcf'
          
            'eacgf efcab fgc fedagc gdeaf cged aebfgd adcgfbe gc bdgcaf | fgb' +
            'acd cfega ecdg cg'
          
            'dfgae gcadef efb eb dcabf bgde edfba bcfaeg egcdfab fbgade | bge' +
            'd eafdb eb gfdea'
          
            'aefdb cafdgeb egdfac egdcba fcbd efd eadcb caefbd df aegbf | cfa' +
            'deg abfedgc fde bfcd'
          
            'dc deafg ecd dbaefc adcfeg cfged ecbfg acdg cafdegb gfeadb | dcg' +
            'a edc adfebcg ecgfb'
          
            'befdc bcfge befad degfab cde aecbfd gcedaf eafcgdb dc bcad | bde' +
            'afc cde ebdcafg daebgcf'
          
            'cd egdacfb fdc fecgb gabdf fbcdg fcgdeb gdcfea debc ecfbga | gfe' +
            'cb fbgecd bcgef dc'
          
            'fagcdbe gec gbdea ce bgedc aecd cgbeaf cfbdg gebcda dbfgae | cfb' +
            'aged cgbeaf ceg gadfbe'
          
            'gcbaf gfdb bdafc df adf adcbefg dcfeag cebad adfgcb faecgb | afd' +
            ' agfedc dcbfa gdfabc'
          
            'fbae cef fecdbg afbcg cefbga fe acdfgb gadce fbdacge fcage | fe ' +
            'abef gfbac cef'
          
            'cfdebg bg beg cabfeg fbgd acged ecgbd fdcbe cfbeda cebgadf | fbe' +
            'dc gadce gdaec bcfed'
          
            'gba ab fgbcd gedaf bcadge afbdgc cdgfbe agdfcbe bcfa bdfga | gab' +
            ' gdbfc ba fgdbcae'
          
            'fabdgce bfdgac cbaed dcb bgade fbaec fcde edbfac gfabec cd | dc ' +
            'cefd dc cd'
          
            'afc dbecafg fagce fbega fbgc edgca agecbf bafged eacdfb cf | cf ' +
            'bfdcaeg gfbc gfbc'
          
            'gedcb ebda cgbdfa fcaeg gab bfgdce ba agbce bdgecfa dgebca | bdg' +
            'fce cebagd cbdgfae dcfbeg'
          
            'egbacf acdfe gfecb egdfcb dfgaceb dfb dgcb fdbce db bdeafg | fdb' +
            ' db db bdf'
          
            'cfeg eabcf gdefcab bef geabc bfcad egbadf cfgbae egcdba fe | fge' +
            'c gaecfdb cagbef ef'
          
            'bafde dbgeac feacgbd cbaef bed bfgaed gafecd bgdf bd eafgd | db ' +
            'cfgdae caegdfb fabed'
          
            'afg bacg cdbgf gcdfab fdcae gafdeb dbgfce ga dcafg cedabfg | gaf' +
            ' bdafgc agbc ga'
          
            'edgca bafdcg acbdg cbdeag dce fgcea gdcfeb aebd ed gfdabce | ebg' +
            'cad daeb edcga ced'
          
            'agecf abfegc dbefcga ad dafc fegdb adg afgde bdcega ecagdf | fad' +
            'eg dfac dga da'
          
            'ceagdb gedac acfdbg cda bgecafd adgeb dcefg ca beac abgfde | aeg' +
            'bd baegd bdcagf abcdeg'
          
            'egaf bagdce dcgabf ea eab cgbfa cdfebga fbcae dfcbe fgbace | gdf' +
            'aceb gfea dbcfe eba'
          
            'cfbega bge eg cgdebaf gedbc adeg bceadg bfadcg agbcd cdefb | ge ' +
            'ge cfedb fbgadec'
          
            'afc ca cabe gbefcd aebcgdf acedf gbafdc eagfd edcfab dfbce | gbf' +
            'dcea fca aecbfd ceba'
          
            'af bcdag agbfde fdbca ebdfc adf dbefcga abedfc aefc dbgcfe | af ' +
            'acfe adf adcfbe'
          
            'badfe agebd gfaced gbdcafe aecfd fab dbfc geacbf adbcfe bf | fb ' +
            'ebagfc beadf dface'
          
            'bfeda gabefd agbedc ec fcadeb dfbaecg cea fdec afceb agfcb | fbc' +
            'ae cfde eac fedc'
          
            'ebcf eafgcb egdfba dfcag bacge faceg afe gdceab ef dgcbaef | fcb' +
            'e febc bcaeg cbfe'
          
            'dafbc afdebg egfc ce eagbcd ceafgbd fgeba cbefa eac fcgeba | afe' +
            'gb cdagbe cbdaf gfaeb'
          
            'ecd dface cdgafe gcabfd edbgcfa gdacf fecg cdbaeg ec efbad | edb' +
            'af gcafd dcgbaf dafgceb'
          
            'gd fagbec bdfg gde cfgbe cefdbg gbdeacf agdcef bdceg bcdea | dg ' +
            'gcfeba dg ebdcg'
          
            'bg bgdeac abdg cgb fcbade gdbceaf fbdgce dbeca gaebc aegfc | cgb' +
            ' befgdc fedgcb gbc'
          
            'gac cgeda egcbafd gfdbce fadec ag degbca agecbf dagb gebcd | cde' +
            'gb degcbaf cedaf edafc'
          
            'ecfab bfacdg bdga gb cfgba bfg gefdacb cegdfb fagdc cafedg | bfg' +
            ' cefba gb aedbcgf'
          
            'dgfce aeg cfbdgae acfgeb ebcafd ag gafed gaebfd bdga dbfea | gae' +
            ' cfbdae abedfg bgfdae'
          
            'cgbad cbaf fbgeda dfgcab fdcebg dbfcg decag cdagbfe bga ab | dfc' +
            'abg cbfa fcedgab adfcbeg'
          
            'cegbadf edfgba cafeg dc agdebc dbgfe cdbefg dec dbcf edfcg | bdf' +
            'c facdegb adfegb egbfd'
          
            'bedf cefadg ced ed bcegd gefabc agcdbfe cdgab gcfbe fgcdbe | ed ' +
            'cde bdgec dbecfg'
          
            'egfcab debfa ecd bfgec cdgb cd bdcef dgebcf ecdabgf egcadf | bec' +
            'fd cbgd gcdb fcbed'
          
            'bc dbfge gbecf caefdg gefabc abgdcf bfc baec efcag cebgafd | bae' +
            'c fegbc agfec cgbef'
          
            'bacegfd fbdgca egbcf fabce bdaefc dcaef dagefc ba dbae cab | dae' +
            'b cbefa cab ab'
          
            'fgab cgdfae fcgebd gb bcg dbaegcf cabed gadcb gcafd gbfadc | gbc' +
            ' adcgf dgecbf cgb'
          
            'gdaeb df cgaebdf dfbe cbdagf eabdcg gfd aecgf aefdgb agedf | dfg' +
            ' gfcea febd ebdag'
          
            'ecbaf cagfdb aecgf gac ebga defagcb baedfc gfcde ag gfbeca | cad' +
            'bfg gaecbf agbfec fecba'
          
            'edbgaf fbd egdbfca dagf gabde bdfge fd bgcfe efbcda eacdbg | fbd' +
            ' ebcdaf dbgaefc gefbda'
          
            'acdbg aefcdg cdg cegb acebfd abgdf cg fbegadc gcbdae eabdc | gc ' +
            'edafbcg gadbc cg'
          
            'fgcd bgdafe bacge dg facgde acfde agdec gdefbca deg aebcfd | gd ' +
            'eagdc ged ged'
          
            'egfa efdcba dfbgc cbfea ga abcfg edgcab bga fecgdab aebfcg | bga' +
            ' faegcbd bfeadc badcge'
          
            'bfeda ceagdb bf ebfacd edacb acefbdg begcdf bafc agfde feb | fb ' +
            'fb fbac bcegad'
          
            'bfdcea dcbgaf cbega dbage cea ce cbafg gefc bgacfed bfecag | abg' +
            'fc ec cegf acdefb'
          
            'adgfce cdag cd fgecab cfgae ced fdbae gebdfc agbcefd ecafd | dfc' +
            'ae dc fdcae ebafcg'
          
            'dbeag begfad bfdegac dcb cb gcfda ecdgfb ceab gcabd dcebag | cbd' +
            ' cb cegbda bgcdef'
          
            'cdfaeb fgebad ea dcbgfa gcaebdf cegbd bdcae fabcd cfae eba | cae' +
            'f bafdce afec gfdbea'
          
            'bcfega gcbea bdfgeca gabcd bd gdcabe dafcg ecdb dba ebfadg | fce' +
            'adbg fbaceg db bd'
          
            'gadcbe dgb debcaf fabgcd bcgfe bdgcf acfedbg gd cafdb gdaf | eaf' +
            'dcb bcfade badceg bdacfg'
          
            'gafce cabde cdf aefbdgc efacgd fgeacb ceafd df efgd badfgc | edf' +
            'g acbegf dfc gedf'
          
            'afgce gbdecf bae adebcgf bgedca abecg abcd baefgd ba gbdec | ab ' +
            'dfagcbe gbeca ab'
          
            'de dcgaf gcfbed gdebfca acegb cde bcgafe abed gdacbe gecda | ed ' +
            'afgcedb deagc gcdaf'
          
            'gcdef ebfadc da dabefg daf fbaeg gaefcb dfeag gbdfcea bgad | gad' +
            'fbe bafgce dgba afd'
          
            'bdfeg gecf fc egdfcb gcbedaf bfc dfcbe cbdfga baced abedfg | fcg' +
            'e fgdecb dcgfabe fgdeb'
          
            'bdf acbdfg bdaefg aefgbc abcde dagebfc fd dfcg cabdf cgfab | bfa' +
            'dc cabfg gfcdab fbaegc'
          
            'af cdfbega edbfac dfbgc fac adef adecb becagd acdfb efcbga | bca' +
            'gfde bdfcae gfdecab eacbd'
          
            'egfcad bdgeac fdac fed cdage fd gcbfed baegf gfedcab gedfa | adc' +
            'eg fd afebg egdca'
          
            'fegba ecbafgd cfegba cgdab efbgad ec fadcge ecg bcef cegba | bga' +
            'dc ce fecgdba baceg'
          
            'bdfaeg abgedc efadg bafd gfeba fcdebga adg aecgbf da ecfdg | ad ' +
            'ad dfba befcgad'
          
            'efadcg dacfb cfgab bfde eafdc decfbag decbfa bd bcd acebgd | deb' +
            'f cafde gcdafe fcgebad'
          
            'agd cgadef gcdebfa gd facge bdfgea eagbfc dcgaf cafdb ecdg | cbg' +
            'fae ebfcga agcef bfdeag'
          
            'dfbge abefgd aefbcg dcfegb ba fgbad gedafbc bdea fba dcafg | agf' +
            'db fab fba fcbgde'
          
            'fcdab agbecd eacgfb gc fgeabd gdabc dgbea cbfdeag cag dceg | fca' +
            'db fbcad degba gca'
          
            'eag cbefg dfeagbc cdfbga egcba dcegba dace agedbf ae gadbc | ceg' +
            'ba age agbdc dbcafg'
          
            'cdbag gfb dgceba cbfa gfdbac faebcgd deafg dgbaf fbegcd bf | eag' +
            'df febgcd fbdag gdfbce'
          
            'cdbgf afcebg acfdbe ed ced bdefagc dcgbea fbeac cbdfe adef | cfb' +
            'de de dec ecd'
          
            'dfc fbcde dfcbga ecbgd egbdca fd eabfc edbfgc efdg cdfegab | df ' +
            'dgef fgbaedc df'
          
            'fcg egcbd gacefb dfgbc abfcgde bfdga cfed cf gdebac gbecdf | bfd' +
            'cg fgc fbcdg agdbf'
          
            'fcabg acfbedg bfcgde ecbad agef ecfgba ecf fe dafbgc baecf | aeg' +
            'fbc cfe dbace fec'
          
            'edbagc cefbda bfdeg af agcf gfebdca fgdcab dgcba baf fabdg | bca' +
            'def dfgcab abdcfe gedfb'
          
            'acegf efbgcd dgbefac cgd bedga cbad agcedb dc egadc feagdb | bad' +
            'cgef cd dcgbfae cd'
          
            'bfc cdafeb bcega gdcf afgdbe egbfd caebfdg gcefb cf debcgf | gce' +
            'bf bgedf dfbgea fc'
          
            'dgfaceb gcdf dabcg fd dfgba aefcbd bdacge gfabe afd dcagbf | dae' +
            'cgfb gbecda dacbfe gdcba'
          
            'fbgedc bfcda cfg dafbge fecdbag cagfd aecg agfde cg adgcfe | ecd' +
            'fagb gfceda gaebdf gbfdea'
          
            'afbe gfa gfdcb af febcadg faegcb bcgea aedcbg eagfcd afgcb | bag' +
            'cf gfdeca abfe af'
          
            'caefg efd fd abedc fcgd egdcaf egafbd gfcbea dafec abgedcf | gae' +
            'bcf fcedga def egcafbd'
          
            'dcfab gefdcb bda da baefc baedcfg gfda dbceag cbfagd fbgdc | cde' +
            'bga efdgbc fbcgead beafc'
          
            'bgfed fdaegcb bedagc da bdacfg gda eacfgb cadf dafgb cabgf | dgc' +
            'eab da dfbeg bcegad'
          
            'cedab fc adbfec faegcb adbgf cfa ecdf ebagcfd dcbfa ecgabd | bec' +
            'daf cefd abdfc efcd'
          
            'cdgbea aeg agdec dafgbc gbed aegbcf ge aecfbgd cagbd cafde | cea' +
            'fd bagcd gacdb cgbad'
          
            'dgfeb bedag cgdefa df gfdaeb cbdega gfdceba gbfec dafb gfd | fab' +
            'ecdg bdfa bdaf dfba'
          
            'gdfe acdbf ed bdegcf cegbfa cebfd deb badegfc fbcge bgaced | ebd' +
            ' efgcabd bfcda dfeg'
          
            'abfcedg gec fcgdbe gaebc gebfac efbdca gfea acbfe gbdca ge | agf' +
            'e cge cdbgfe bcfdea'
          
            'fgbaed dacegb dacef egafd aecbgf adfcebg bdfg ged agfbe gd | agd' +
            'fceb gd dg fbgd'
          
            'egdb acgbef edfac bd fgecb gbadfec bcafgd bcd bedcf gdecbf | bdc' +
            ' bedg gdbe efbgc'
          
            'cagbef acgbf fgcabde cgd gbda dg dbfgec ecafd dgfca dagbcf | agb' +
            'cfe dcgfa dbagcf cgdafeb'
          
            'cb efbgc cgfae cgb gceafd beca fbcgae gefdb cbgadf dcfabeg | bge' +
            'acf bacedfg cbdgfa dfgbe'
          
            'cgbedf facgdb agfdc cga cafed gfcbd gcdbeaf degacb fbag ag | gba' +
            'f acfed gafcd cgfda'
          
            'egbdfca cadf bdafgc cbgfea cbgde bdcfg gfc cf fdbag gebdfa | eac' +
            'dgfb fcda dfac adefcgb'
          
            'fdgea abcd ac cfabge cdbfeg gdebac acg gcdebaf gadce bcedg | gac' +
            ' abefgc ac gcaed'
          
            'eafdc eafbc agbe begcadf ba gcefba fgcbda gdbfce cba ecbgf | ba ' +
            'ab abeg adcgbf'
          
            'afg ga bdafe eadfg dagc gefcab edbcgf ceagfd ecgdf aedcbfg | agd' +
            'c daefb debcafg fdaeb'
          
            'baf cbdgf afbecd gdcabfe dcfabg fadeg gbac gbadf ab cedgbf | fcd' +
            'eba cbga afbdg bgca'
          
            'ebdfgca ebfdag gb bgf fdeagc gdbe cdfgba egfab abcef agdfe | gb ' +
            'gfbdea gdeb eafbg'
          
            'agbcdf fe gebad fea becf ecfbga cgabf aegfb fedgca acgbedf | ebg' +
            'da ebdgacf fcbe aef'
          
            'gdbef bgfadec gfeab eab gdcfbe ab bfadeg fdab dcaebg acgfe | fga' +
            'dbe fbedgc dgefb aeb'
          
            'adcbf fbdg bcf dcbag fecad cgafbd fb acdefgb bgefac dgcabe | dfc' +
            'ab cfb bf cdeaf'
          
            'dfgbca cdebagf cfe fcbga aefdg geafc bdecgf ce bgefac aceb | bac' +
            'e aebc gfbac efc'
          
            'adfegcb gcbaf fa adgcb acf efgacb fgcbed eadfbc agef fbgce | aef' +
            'g acf gafe cfa'
          
            'fdegbc fcbad ec ebgaf gecfdba feacb caefgb degfba ecb geac | ecb' +
            ' ecb cfadb ebafc'
          
            'fegabc ebcgafd gfacde ge fcgeb ceg bagcf dcfbe ebga bdcfga | cef' +
            'abdg fdceb abgcf gfeadc'
          
            'fdabcg bgafc fcbeag edbfg gadfceb ad adb dfca dcbgae dfabg | bde' +
            'gf faedbcg da caegfbd'
          
            'cgfae gdbeca decaf fd dfbc fad dabegf daebc bedafgc efbcda | dec' +
            'fa fgcbdae fcbead dbegcaf'
          
            'dbeaf cb fabecdg bcfda gabfdc cbfg agdfce abc edgcba cgadf | bcd' +
            'efag bcgf dafbc badcgf'
          
            'gbdcfa becfdg fdbcgea fgc cg fecdg efdgb ecadf gceb gadefb | gcb' +
            'e fgcebda daecgbf aebcfgd'
          
            'cdega dgcaeb cbgea egdcaf gfacedb begfda cebfg cbda bag ba | ab ' +
            'egdac beafdcg faegcdb'
          
            'gab cgfab cfage fbaedc bcdg gb gacfbd defcagb gdebaf fadbc | bg ' +
            'fbacde gfabc dceagbf'
          
            'ge ebg cgdfb cedba bedgc ecag deagcb bfceda gdcfeab egdbfa | bge' +
            ' beg bafged cadbeg'
          
            'eabd ebacf ecd fdcbg dbafegc ed ceagdf fgceab ecfbda cdbef | dec' +
            ' dfcabe dec befca'
          
            'afbgdec cedb dc agdbf cegbf bfcedg cdg bdgfc baecgf ecfdag | cd ' +
            'dgefbc fdgcb cd'
          
            'gebdaf dgfae afe gafcbed agcfd febd edabg gbfeca bcdega fe | ebd' +
            'ag fedb egafd aegcbf'
          
            'gebdcf abefdcg deg bgdfc fcde gbfea gedabc edbgf ed bgfcda | efd' +
            'bg fedacbg gbfacd fbdeg'
          
            'bcgd edagc gaebd bcdaeg fabedc bgefa fcadge agbfcde db adb | cgb' +
            'dfae bdagcef badegc dab'
          
            'df fdb bfadceg bgeadf afbdce efdg dgbae dafbg cafbg abdgec | gdf' +
            'e afcgb ebcgafd fbgacde'
          
            'gabce gdfaeb bcad cebdgfa fgcbae efgcd dga da cgdea cdeabg | ad ' +
            'agd gda gfedc'
          
            'fcabge edbfg fcaebd ea dcbagef gace gafcdb bafcg eaf fgbea | dcf' +
            'bage aceg afbdceg ebcafd'
          
            'bafe egfcda be bfgaec gbe egcfbad fcaeg bdcaeg bgecf cfbdg | fab' +
            'gced bfea gbcef gcfeb'
          
            'badfeg fgecb af cgaebd acfdbge gaf afcged gfaeb dfab egbad | fa ' +
            'fga abfd gabde'
          
            'afceg bcdfge fcaebg baegdcf cfg eabcdg bgfa efcad gcabe fg | abf' +
            'g gf fbgecd acebgd'
          
            'acbedgf fb efgdc bgf gbcfd bgfdac dagcb fdbeag ebcdga fcab | bf ' +
            'gdebaf fb bf'
          
            'aecf cgbdefa bacged efbcga fdgcab febag af agf dgfeb ecabg | bcg' +
            'daf af cadfbge efca'
          
            'egfda fgceab acd bfcadeg dc dcega bfdcea gcdb cdbega eacbg | gab' +
            'ecd cd befgcad gdcb'
          
            'gecda dfegacb cgfae cdbfag fcbeag afg gf fbge dafecb caebf | dfa' +
            'ebc cfeab gf agdfbc'
          
            'gdafe cdgaeb egfdba da bfdgec gbfed eagcf egdbafc fbad dag | agf' +
            'de dga dcgbfe abcdfeg'
          
            'acgdb gadfce cbefdga becad bcegdf bacgdf afbg ga dag dbcgf | abd' +
            'gc gdeacf acdfbg ecdab'
          
            'gdfa eadbc gcafe dgc dg fcagde bcgfea decgfb egcda fbecagd | ceg' +
            'da cgdea gd dg'
          
            'ga egdbcfa aegcb cag egbcd gadceb gbcefd decafg badg cabfe | bag' +
            'd cagfed gacdfeb cbegd'
          
            'cb deafc bcgd agfceb dbfega ecb deacb aebgd cbafdge ebdacg | dcg' +
            'b adceb edgba ceb'
          
            'edgfab acgb becfdag bgf cgbdf cgfad dacbfg bg ecdbf afegdc | gfb' +
            ' bg gcfade gfbdeac'
          
            'caebg cgaf acgdfbe begcaf cf fdgeb agedcb ebgfc cfe fbcdea | dbf' +
            'eagc cfe fbeagdc cf'
          
            'ageb bg adcbfge fcgea cbgaef cbdfa gfb fedacg bfgca fdcgeb | fbg' +
            ' afdcb ecgbdfa cgfdbe'
          
            'dgbfe aeg ea dcea dbeagfc fbacgd ecbdag gadbc bcafge adgbe | aed' +
            'c ae gbdef daec'
          
            'dbafcg dbgaefc adfc egdab fdg df agefbc bdgcfe fbacg gdfba | bed' +
            'gacf gcbaef cdfgab cafd'
          
            'eg fdgcabe gcadbe aebdc gced bagfde gea gbeac afbcg ecdbaf | agf' +
            'bc fgdabe fcdgaeb feabcd'
          
            'fedb gfe defabgc caedg cgadbf feagd bdagfe fgbda efagbc ef | fe ' +
            'fgcbea ef dbfe'
          
            'bc agcb dfceg bafgdc gfabd fbdcg bcd ecgfbda ebadgf fbaedc | cbd' +
            ' fabcgd cgbfd bc'
          
            'ebfgc dbeg ed gefdc cde gfbecd fgdca caedfb gdbafec gefcab | fgd' +
            'ecb dgfce fbecg cabgfe'
          
            'ab ebda bfagdc becgd aecfg bag daecgb ebcag gbacdfe cfgbde | abe' +
            'dgc eafgc ebacg ab'
          
            'ecdbag dagbfe badef fcaed adc cd efbagdc cafge cfaebd dfbc | dcf' +
            'b dca acd gcdabe'
          
            'cedbgaf ecbfg dagfec dgbea bdca gfdaeb ecgbd dbecga cd edc | ecb' +
            'dga cde edbag dc'
          
            'egbfcd gbcafe ed defga dbgfa bcgdeaf cdea def eacdgf gacfe | bgf' +
            'ad ecda gbfad gcdefb'
          
            'dafge cea fdace agdc dbgfea ebdfgca dcbfe acedfg abecfg ca | def' +
            'ac gcad ac ca'
          
            'ecdba fbac eabcdf beadgfc acd efacgd ac agedbf bfdea ecgbd | aec' +
            'bd agbefd bdgec dgebc'
          
            'bfegda bdage gdf gfdae bdfgace fgeb afdec fgdacb gf deagcb | fba' +
            'egcd fegb aedgb dfg'
          
            'cdaf fd bcdfge agebf dcgfae gfead baedcg gdcea egdbacf dgf | efg' +
            'ab df eagfd afgbe'
          
            'egfca egcb ceafdb fbc fbcaeg dgbfa cdfeagb fgcba agdcef cb | cb ' +
            'gcdfae eabgfc fgbca'
          
            'gdbca fdecba gdecfb feagbd ceb adfbgec bdgec ec efgdb cfge | ec ' +
            'ecbgd dacefb abfged'
          
            'edbcag cabd ecfdgb aegfd eagfcbd ac cga feagcb ebdgc dgeca | acf' +
            'bdeg dfgea cga dgeca'
          
            'ebgacf adcf bcgedfa gdcabe abedf aef edabc fa befgd bfdaec | aef' +
            'db af cebad fae'
          
            'dageb de gde dgfbce cgdba gabefd afbge cgdebfa aefd ceafbg | efg' +
            'bda agbdecf bfaegcd edg'
          
            'ce dec becf efdgb edfgcb ecbdag gdaefb beafgdc dagfc fecgd | ce ' +
            'fdbage gcdfeba gbcadef'
          
            'ecgfa ebadcf ed gcdfab cdefa gfdaeb dbec dbfgace cdbfa dfe | dce' +
            'b cdfab ed ceagf'
          
            'cadg efgcdb gbcfad feabc agfcb afcdgbe dgbfa gcb fagbde gc | gde' +
            'cbf adfgbc fbcgade gafbc'
          
            'gdcefa gefdb bcfeg eabc fagdbc ecagf bcf afcebg cb bfgaedc | fcg' +
            'dba agbecf fcgeba fgdceab'
          
            'afgbc be cbeaf gfeb ebcdfag cfdbag cdfae cfegba cbeagd abe | gde' +
            'cbaf cagfb bfgaec cabfdge'
          
            'eb egdb dcagb abe gcdabe agbce dgabcf fedbca fdcebag gfeca | gdb' +
            'e agdcb gfcae cgadbf'
          
            'dbagc bcaedfg gade cadeb efgabc cabedg gca fgdbc ecafdb ag | dag' +
            'e cagdb dgcaeb cdgab'
          
            'gbecd eacdg cgb egacdbf gfdbec efbg bfced bg bdfcea bafgdc | acb' +
            'fde bg gb gb'
          
            'fgbadc fbdag dbecg fbae dacgef ega ae afcbged ebgfad bgaed | ae ' +
            'bacfgd bfea agdbef'
          
            'dacfeg gecfd ad gadbfe gadbfec gda acde fcedgb acbfg fdcag | gef' +
            'cd cdegf agd ad'
          
            'caegbd cfdeba edbac cfbegad fe fbea fdagc cef acdef bedgcf | ef ' +
            'cdafgeb fce edfca'
          
            'dgcae cedbfag facbdg fdc eacdbf bfegda dfcae fdbae cf cfeb | cf ' +
            'febgcda dfc cdf'
          
            'edfag dbeacg dbecafg agc gcefa gc bcfea cdfg fbdgae gefadc | dfa' +
            'cge fagbecd feacbdg bfaged'
          
            'abefdg fgdec ecadf efcdab ac dbeaf acdb acf cdegfab gecbfa | fca' +
            ' fdbega decaf cgafdeb'
          
            'bceafd fegcad edcagbf dbcage decba bafd df fcd bcfge cbfed | ebg' +
            'fc eacbdf gadebc df'
          
            'egba cgdafbe begfc gacdfb dceaf cefbdg gfa ag gcebaf aecfg | acb' +
            'gfd gabe fbgeac agfec'
          
            'cdgeb fdecag agdbefc gefbac cdaf ade fegdab cgead ad caefg | ecb' +
            'gdaf dgceb cfgae dea'
          
            'cafbde fbgac edcg agdfeb eg dacgef fgcea aefdc dceagfb eag | afg' +
            'ec fbcga ceafgd bgceadf'
          
            'cefbg ceabd gd edbacgf aedfbc gaedcb cdbeg abfdcg gdc gead | cgd' +
            ' dgea gd cebad'
          
            'fadbg dagecf fea fbecga adce ae bedfcg egacbdf fdgec fdage | dca' +
            'e caed dbefcg adgfb'
          
            'acged aec efgdcb ac fagc abdge abfdegc fdeacg cfaedb gedfc | egb' +
            'cafd gaefcdb cae cagdfe'
          
            'fcbdage bafgec cab fcbae ac abdegf dbfec fbgae eagc cbfadg | acb' +
            ' dafegb acb bfeagdc'
          
            'af egfda gebdf gebdfa aefcdbg fbecda fgba daf cdeag dgbcfe | eag' +
            'dc cefbgda daf daf'
          
            'dgebcf gcf agcbd fbecd fbcdg ebacgf aebfcd fdeg fegdabc fg | dac' +
            'gb dfge fcdbe gedf'
          
            'bfacdg gafcb gefbd cd dgcfb dagc bdfagec bceadf fagceb bdc | beg' +
            'fd gbdfe afgcdbe fbeacgd'
          
            'bagf afe bdcaeg fdcbe af dafbe cbedgaf gfebad gdaeb aefcdg | bae' +
            'dcgf fa af cgadbef'
          
            'acdgf becgfa acd cagbf agcdbe fdba da bdcfag gfdec dcgafeb | bag' +
            'fc da dca fdbacg'
          
            'cdabfe adbfc ecbaf cdae cdbfge dabgfc bfgae bec ce gadcbef | fae' +
            'cbd beadcfg dcae cgfedab'
          
            'bceag agd aced gdbafce bcfgae agdeb ad fabdcg fdbge egcbad | gac' +
            'eb agd bdagec da'
          
            'cag dfgbeac ecdbgf ag gfabc ebag fabgec deafgc adcfb fcegb | dga' +
            'ecf aebg bgea dcbfa'
          
            'afdb degbc agedcf da aed beacfg dgfecba efcab bdface cbdea | fbe' +
            'ca aecbd gdecaf ade'
          
            'cafebg afedcb gfeabcd fgcb cfa afdeg fc ecgab dacebg cfeag | bcg' +
            'f bgcae gdfea bgcf'
          
            'feg gfcaed cfabdge gf degafb fdegc edfcab edgbc agcf cfade | gf ' +
            'gf gacf egf'
          
            'ceadf ecdgf eacbd cebagd dcabfge eaf fdceab fbad fgebca af | cef' +
            'adb cefad bfad abedc'
          
            'gefabd cabdfeg dgceab dagef bdfacg egfdc edgab af feba fda | gea' +
            'dcb dagfceb fda af'
          
            'dfcea adgce dfebc gecfdba fadgbe dcefga cfga aebcdg efa fa | fa ' +
            'fae af gaedbf'
          
            'agbfd acbgedf faecb cegbad dgabfe gbc fcdg cfagb gc afdbgc | cg ' +
            'cg dfgbae cdfg'
          
            'efg bfacg feab efcagd fe bcagedf edgbc ebgcf afbegc bcfgda | dge' +
            'cfa ef fgcba efba'
          
            'aebfdc bcfage dgbacf gface gbaecfd dfgce geab acfbg ea eac | cab' +
            'fg ea cfagb eagb'
          
            'gba gdcea cdbfg acgdb gbecadf bfgecd dgcfab abfc ba fdeagb | ab ' +
            'febagdc dfgbac fdagcb'
          
            'dfcb gcebd dfgaec efdgc eagcb dfaebg afedcbg gbd gbcfde bd | gad' +
            'ebfc db febdga bgd'
          
            'eabd adcbg ceafg ecb be eacdbg acegb gbfcde adgcbf ecfdgba | cgf' +
            'ebad cbe ebacg dfgceb'
          
            'cefbgd cgdfa bagfced dabe fgceab abfeg gdbaef gbfad db gdb | aef' +
            'dgb bd abdfegc fgabed')
        ScrollBars = ssBoth
        TabOrder = 0
      end
      object Memo6: TMemo
        Left = 405
        Top = 3
        Width = 258
        Height = 593
        Anchors = [akTop, akRight, akBottom]
        Lines.Strings = (
          'Etape 2.2 Lie les combinaisons avec la consigne'
          ''
          'Etape 2.2.1'
          '  Extrait les r'#233'sultats et combine avec les combinaisons'
          ''
          ''
          'Etape 2.2.2'
          ''
          
            'retrie la consigne par ordre alphab'#233'tque dans les blocs (comme d' +
            'ans etape 2.1)'
          ''
          'Etape 2.2.3'
          ''
          'affecte les nombres '#224' la consigne'
          ''
          'Etape 2.2.4'
          ''
          'Supprime les combinaisons'
          ''
          'Etape 2.2.5'
          ''
          'Supprime les lettres'
          ''
          ''
          'Etape 2.2.6'
          ''
          'Compte r'#233'sultats ')
        ScrollBars = ssBoth
        TabOrder = 1
      end
      object ButtonEtape2_2_1: TButton
        Left = 669
        Top = 47
        Width = 75
        Height = 25
        Anchors = [akTop, akRight]
        Caption = 'Etape 2.2.2'
        TabOrder = 2
        OnClick = ButtonEtape2_2_1Click
      end
      object ButtonEtape2_2_3: TButton
        Left = 669
        Top = 183
        Width = 75
        Height = 25
        Anchors = [akTop, akRight]
        Caption = 'Etape 2.2.3'
        TabOrder = 3
        OnClick = ButtonEtape2_2_3Click
      end
      object ButtonEtape2_2_4: TButton
        Left = 669
        Top = 239
        Width = 75
        Height = 25
        Anchors = [akTop, akRight]
        Caption = 'Etape 2.2.4'
        TabOrder = 4
        OnClick = ButtonEtape2_2_4Click
      end
      object ButtonEtape2_2_5: TButton
        Left = 669
        Top = 304
        Width = 75
        Height = 25
        Anchors = [akTop, akRight]
        Caption = 'Etape 2.2.5'
        TabOrder = 5
        OnClick = ButtonEtape2_2_5Click
      end
      object StringGrid3: TStringGrid
        Left = 750
        Top = 0
        Width = 364
        Height = 642
        Align = alRight
        TabOrder = 6
      end
      object ButtonEtape2_2_2: TButton
        Left = 669
        Top = 119
        Width = 75
        Height = 25
        Anchors = [akTop, akRight]
        Caption = 'Etape 2.2.2'
        TabOrder = 7
        OnClick = ButtonEtape2_2_2Click
      end
      object ButtonEtape2_2_6: TButton
        Left = 669
        Top = 376
        Width = 75
        Height = 25
        Anchors = [akTop, akRight]
        Caption = 'Etape 2.2.6'
        TabOrder = 8
        OnClick = ButtonEtape2_2_6Click
      end
      object LabeledEditResultEtape2: TLabeledEdit
        Left = 405
        Top = 619
        Width = 121
        Height = 23
        Anchors = [akRight, akBottom]
        EditLabel.Width = 113
        EditLabel.Height = 15
        EditLabel.Caption = 'Votre R'#233'sultat Etape 2'
        TabOrder = 9
        Text = ''
      end
    end
  end
end
