--2
drop table if exists employees;
drop table if exists departments;
drop table if exists countries;
create table countries(
	location_id serial primary key,
	street_address varchar(25),
	postal_code varchar(12),
	name varchar(30),
	state_province varchar(12)
);
create table departments(
	department_id serial primary key,
	department_name varchar(50),
	budget integer,
	location_id integer references locations
);
create table employees(
	employee_id serial primary key,
	name varchar(50),
	surname varchar(50),
	email varchar(50),
	phone_number varchar(20),
	salary serial,
	department_id integer references departments
);
insert into countries (street_address,postal_code,name,state_province) values
('TYVHHZUMMAZSLWSXFCZJBVQXP', 'UVHHPVLJVPZE', 'RMFGPJUJRGXYFZQITOFOJEIHNACZIV', 'DYBCDUEZPQVL'),
('DSVZROTHKAIRTOUXDWQZHBMYP', 'JLDPVMPZBNHI', 'SWIAGEAKMBWAJJWCTTULRBDXDXGBZB', 'WWFZSEDGVIXO'),
('OUHAWIIAUAEMSFKQTJDRJMHNY', 'BWDNHAGIDJKO', 'PDEMATRVHYNZLTSSQWDQHXHBPWVOQA', 'MZFKMMJSPECV'),
('MHGQUYUALUKOTEGPNHJFDBMZF', 'EBLREXFCVWQA', 'ATUKJHDJEPJZNFLLFQGMYADQLCPBLO', 'RLYMWDIZVIWM'),
('MWLAPRZGJJYDAZEEKCZBKGDLU', 'JSKMYXEAZISB', 'JGUVPKWMXQBKRDNBIWPJZBXKUTGKLI', 'TVHNTFCOCOAZ'),
('WTPFYKYNGCEWGAHLMXMEHVIIQ', 'ILLPWFYNSLJL', 'MBWIPFATDCLKFOJLOLYDYGOEHHITLU', 'BFJLGTOLZMBU'),
('MAKMXWFFOAROYDRFERQHFKNBC', 'BDFRHUVBWAKA', 'CCBKQMKLYSWYZYRKNFWNKLRZOTUOOQ', 'XLQXBTGNXLOB'),
('RUKZRDEUFWRXOULOYVMZYUGEP', 'WYOQPHAZNOED', 'JFKNHOOLZWLIJZXMRMSIRXQTOATPQE', 'TOOEXHWWNXEP'),
('WZIHGQCQQKDJLFGBZIXSYNCNP', 'QCQEXXPWAMIS', 'EUWZMEOKIEHDMXNUREKOWKETMOUMYB', 'AINJKYFNINVF'),
('ENWTUDJLGMEGOAJXKIQONAPYT', 'MAJLAWDWJPRI', 'NQETVQFIZSKJGZWRQREZAIMJAEZNLY', 'OGFRZOLQAMFI'),
('PDALDYHTENXRLETAMNFCXCBPM', 'UOPFXBTUHZFZ', 'KAEWWEWQPLQQZQCYFDZLXOAQTSQZMM', 'WQEVRMWBPUQL'),
('RYDRPYRCDARWCWVURFGBTGWYU', 'ABKUWGHTTKEL', 'TLQABEBUTJPFLYGVVGVQGGZWYUDBFS', 'HZKPEJLCLCLC'),
('WJKYLPHOYDYUTWTUIJASSEASI', 'PZECQGKWZSWQ', 'UECNYPFBZIEPUTWSDZBIXGFVQJKOOV', 'KCIMKATGULKT'),
('KMZTMOZWEHDKRYBAQYSKKSANK', 'DPMPJJVKFVXQ', 'CXHGJWCJTPWNMLWOYOVHMPZWXMXXEB', 'QXCUPLDKDFBS'),
('UZEKQZEGEDZYZHIEDJDJMXWQT', 'QRMVRSELPGJL', 'FRVDTJVHKHLQEYWFVRAUVREIZSMRXG', 'MZZLCTPLGUDR'),
('MNSZSCSDSYDKXTDKMGUGHUOOF', 'ZSNMHGDSOHZU', 'GEYDZHUGNSAXCBPZXWDIFCXFBRMUHP', 'RSPPXFPGHKSY'),
('RRVNYWNTGMDMSGEVHXNESLQFP', 'ZCRYSXQXXDFN', 'HATCXMSMTQULNTIUKQQIEOWDULBYQJ', 'PUIYIRAPLNXY'),
('PLNDPQHTTGKKSCBPNVLOACKKJ', 'ZVPXEHTJJLGM', 'WPARMARTQPBYSDBMXSQUVIUZZXNRXD', 'XDAENSAKUFZI'),
('DGTREPJLAUFMADUJZWHSJAFHB', 'NELDVIROHZSK', 'ZBGGZRCJXQWYESNUNPOJYEPEWNJZYU', 'IRWBSRUKYNZH'),
('CUGHDUKSAFZTVAZGPVHIMEMDY', 'ITOMSNGQBVKZ', 'GRYSUCTSCFMESLEDOZMSXFLTIDVZEX', 'BDLAITNVCHXI'),
('FMDMJARNUTNQAXVHSEQNUHYST', 'AOPIPFYEZTNB', 'EWPKAXRFBBWSUONKMRJNBBGLMFKXHA', 'MKKHNGABKLED'),
('OBQFPAMZEALYTUJAGAVQTSNTC', 'ECWKVLYFTTHO', 'JQLBSEGHSEETWJMXTFRZFPQZKHZLNA', 'KYGXJVUSHKGN'),
('EUPXFOXPFENYGBAASKOZTWACB', 'JZSDWGBWOLVR', 'FODOHFPLMGDJYNNFWSOWZZTUDOVCUJ', 'OZUYMVHBJJMV'),
('ANVSZYZBPLMAYBZNHVAVYICPE', 'WZRMDVFIJOXS', 'HZKYVYSIQVXVPPHYKPPPOZYYQZQPLT', 'KVJEZHIRBLXO'),
('GKOHAUWJJRJUCAGLRMANLLEGQ', 'YISEZYILFAKJ', 'DTNURGEVNHVEQRFVLPVLGPPQTOIFIO', 'YWKRIWHIXWDE'),
('PFXQBABHGTATILXEOSYLNZITY', 'RTPBDAEHLYOT', 'QGUQFRYTRWPMFPQTCKGWQRWAETCRDJ', 'ADJJVZJUOKDP'),
('FCFJRMFNQUDAUUUYFXGBQDQLX', 'ARHHUVROCPMG', 'QMGGNCCFRTWRZUALOAHUZFKZJJVLLD', 'TARXPWLILDAY'),
('FURNDIGDCAGYGREOLJBCEYCVX', 'NXBBEZLDTYLH', 'ZYBBKZVVOBQGDVOKIHHXAOXNWEGRXU', 'CLLUYLNUBQJR'),
('WKPKHFFSWCBIFRPTYUKDZWQDK', 'PUDZUGIKFPMU', 'YYZOZVCXORODQZXGJJJSPLPCYRAIEL', 'RDOVOJLAWCUI'),
('RMNVIFHFVJUBEHHVJXANZYCZH', 'UVFBYCQYNMYO', 'MOYBFBVBTPNQNJVYCZJGUKLXLXHSUP', 'ZLYPPSGXZHJD'),
('IHGJWUFKLYAZGMECFQGPHUTLO', 'ADHCWNTIXHDZ', 'BPMGPOQDGBMWUJRUOPPGWCUKMXXDRI', 'WZYJPMBOMPXO'),
('KFDHSXZVOCSHDOMTUHHJWEDLG', 'AMCMCFITRXQR', 'WIIZMKLCAZGJQXFIVEANDIUNHUVRZA', 'BWOHABXAQKZT'),
('NPCFDAWJQWTJDQXZVVVIBQEUP', 'YUIJXUNYNHPV', 'QIMHJFZCVOAPCZCETOVUXFRQPZFFXJ', 'SRICDIUJWOND'),
('FMXGSKSZPXNJSLHJXMLADPWWI', 'JWAASEEAQHZH', 'CTHQMVJNPUTLYMLOVXRIGSHCAJQJPB', 'IHEBNTRDJZSK'),
('IVIMRETHBBKDBQMICQHKCDMHU', 'MFBNAJXOFTUP', 'NFLNQELCQKIUTEYKBLUVGBPKWKMRNQ', 'BFBBAYKYLQWH'),
('CJIGESNLRCDXBDJPJMVSADIRC', 'MRWYFGIRJFZW', 'FKKSRNNIHJXLQSICKKLPCJUVHEXWXJ', 'FRIPXKDLTMBQ'),
('SJFCFFRBOHXDUZMWSFMUEDHKB', 'IFUOKHZMWGEA', 'UZIPCXKVDZRYFMCYZZIABKIZJXKTRW', 'PJVGNITPWOGJ'),
('RFMWPOMNFAIWWOIEIMXTSKZQZ', 'VWYWNMFENKRD', 'ZOLNTUEALQZKUDKCXADJRWEQUWLEAQ', 'FHVWRAZYBYCK'),
('GOVPELVXTFEFXELBHRXJPMESM', 'CNFVWVBYMNOP', 'GNXYLUVUQTEKFDZKIVPRVKWOEFFQIG', 'AKCNMMGHVCQZ'),
('YBAMKUMUHXNQVZSDZQKTDULZX', 'RTYYUGHGXICX', 'KCZRAEBJVUTJPVPODWHCJUMUWSDZEP', 'PTAMYQACXXDW'),
('LSLTKGRBSEZMRBZTDDZAGSAKC', 'ENWVMRXMUXQQ', 'JXMXDIVTGUTYHNHHLGKWOUQGXVXEZG', 'NBNIMTMDPIFZ'),
('TCXWWMVREOYTASJDBPLOOGJDL', 'XIGKDTHWJAZB', 'WZNYKJCKDDXUYLCBHZMQWQLGRNQGMG', 'YQKWURODMAHD'),
('JCVXZIWCHLNHHTOMFRCITDSCT', 'TLHVWFKPJFBV', 'IOWMJBBXVCJHGVHVGYHTLUGQCXYLYS', 'DCZQNVAJNMIL'),
('FIQDBOWDOAWVXKRPYRIAIEFWH', 'SGVFMDCFIHDJ', 'QNBJJKUTHHCOEPYZUPAUZFDGNSBXEC', 'NXVTGVZVDLGG'),
('FATWULINKTWBFODNIMVDPOWSI', 'FQWXWCMGEZBM', 'VWXFFRPEQUYCOWEPUOEQSRKMWUXNDY', 'YDXPLARCCXXE'),
('DHPYPOOHXJTDXAKUJFNYTHDGH', 'IZXCKRDIEEPE', 'ALYHTPIWUJUKEUEUGOPKIAGMRJFHHG', 'XDFEEACTKPDE'),
('PMCUFXZICVWBQIGJKHSNLWBKP', 'UERSGNOQCZIG', 'TAOYOYLOMYAHOMPYYMJGOMWBTMIRGA', 'IXIWFYOFXVQP'),
('CVSHLRHFCROAHUUIHNJMMTPHM', 'HBYXPOLIZXOB', 'ISHXTCCNKHLSPMTUTPPMCHZOCWVHJZ', 'HCXERSXYEHPG'),
('XXTFFHLCJVXKSKNROUHUSBOJP', 'EBSOQXMUVUGM', 'TOUDIGYEDTLEOUKIJVNXQKUNJBFYWF', 'MLLQJITARJGG'),
('FRNVXPHYZYXDAUZYXHWWDOFJD', 'KBKCTYTMKKDR', 'DAUMUUMDWUYSFWGAHISDXCJVNMZEPX', 'RDZPQARVRVTX'),
('IKDFGTFVTVCXJPBDITCRDDYIB', 'IUEZMTUNRYTA', 'BZBAFVLKVJRZSRUPSHIPYHQISADTPQ', 'NMSDVZAMOKBI'),
('APSZPUDGSZODLGNJRVFHDFMTO', 'POSWXHENARZZ', 'TPPZRQCKTLNPSASUCBWFRXEUPBYMRM', 'PCOXWKMUQGCC'),
('WLEMFOSLMSLVLSKPUQKPPFZRH', 'ONCQPFQWCVAS', 'IQZDQURFJYCEUIOTGLYXMYMEVDFVOG', 'QDZMPJSZFOIF'),
('ADTYBQQKDEFYGXLVSSWASVFEE', 'DJOTECWDTCKY', 'YBOKIWPHNPQDIUSWPOJRGCMIPIGXUL', 'PVLAVKHRGVUE'),
('MQFTHCTHAOOAPCIZAIVTIEYQG', 'LMBOAXLLVJQP', 'HNABRRCADEEWMPSDNUEAFLBFSGJOMU', 'ISRJSFUZQWDK'),
('GUZEDGZZXPRAGAHDBEVAUNBKU', 'LJXPXMJDXVUW', 'PIJFVZYBGXLWAWGSJCZRTDTBIVPOWG', 'BSGNLJYSYNJG'),
('CRCENDWAKODCTEGJGYTNJYHTZ', 'XTCQVCBUHFPP', 'DTVNYIXSJNEICZUVGGXHGCYGNOOOSK', 'RAIPJMUJGMHP'),
('JEFZGKXRIZAFINCTDKDLORLEW', 'ITHAYMLWBOMK', 'SZEGWKRSPPXQDISSKXLNTFVVNGMTNS', 'OQXJCQLLRUCR'),
('JJHJSFXGNKPFROAIJYYLBKDNA', 'PCLDYZBAUORO', 'LVWIILYPZXWVBJKKBRIHTDNHNSWHVZ', 'LJUCOABQNKHW'),
('POIUTCGYTLNCBUKLHJECHXHWM', 'QQAZVGRBIZTI', 'OJSDHJUKGHVNQBVJAMGLHRTDZRUOOV', 'KAQZFFZRJANJ'),
('GFSDNMYAPJSGDUYENSJACUNAD', 'TCXDOHEEJSUP', 'YKEXYIYGPGFEDTIWIZANOTIRZNWUQF', 'KKGPKITFZMUR'),
('AVAHNIOZNHEMQOUGHDNRPBDUQ', 'CZXGPARZUSIP', 'ABYJHOWKGQINZLTZVOCHMALRLJMOIM', 'KQAFMQYABRDN'),
('YJMRWMBKDUISKJYZFDCWQGRZU', 'NAXCNEUPTYKA', 'QKSLHSQMUUXTVRLFCAVCQKASQZNLUA', 'ZBSNTWDPCQSS'),
('EPUHGNRYPZKTCHAAZTDOCQKOB', 'SIJRXGJYZEYI', 'XRWLIEWSIHLYHIKMHQRZWWLWPHRGUL', 'JURNHXTOVCWU'),
('NBUBXYISOEZBTIVJSSEHWUYLW', 'SFEOFBYHPPUD', 'ZRMEBXVFQEZHFEUPNRNELZHNKHLXIM', 'DXWZWUTJAQPU'),
('DKDFYJXYFCQZSKSVSXXOMMEMQ', 'WLOWUEHIZJRB', 'HHMYUOWRDQBHHEVTZQZIWAWGGJOOGM', 'LMHJZSGXHRIH'),
('VWSQWHCXHIMDOWMDWGYLTRRWQ', 'EDLOUAYHPWPI', 'WSVPLXBQFUZCZMXIXPPKTLNRUKEQED', 'GTEMVJPLYDSD'),
('YFTMSJTNTVFWCRBCIAHASOFEV', 'DPMLSZDHLBGD', 'OZKPYPPYFHSMKHWGQZODFADVJUMFUF', 'ONGBPBYCQSAM'),
('BRFCRDJSPQHFZFNCRRNSDHSCY', 'MNXOILORKUPZ', 'BSAHLTHAYNCAJZKKMILRPQTZQWVWWN', 'DPZCMBITQSYL'),
('ELICJPRTWBFQGHNRWHIECPLBE', 'NAFRFYHLLIHT', 'QRRIGLTRHZHVETFMRWURFTJYDYGLMG', 'LGHDNDKOEWPU'),
('DFJEGXTWNKGUWUKFZAFYAGPIY', 'XKDKBDGHFXJF', 'ZQGVLKTPDSFRYKRHTQSSESNXSKOWFO', 'BLZVDFOZHFYT'),
('NRHLCICWGWMABZRGMZRLDNJSD', 'HCPNYAZKDDHH', 'ODWNNBPXLIPBKYQMCTXJIQJEWFSPNW', 'GHQGRYRSTUYD'),
('ULQSBBCVAFFGMVWYMTIDTOQVL', 'OOVFZHSBTUOP', 'NPDUIGVOARJFUJWAJJEAWONNRUWNQA', 'WCHWRBWRPRQF'),
('XAJKAPYWJSZTXNFHTQXEFYCIP', 'DMNCHBHGOESW', 'XWFOXWRFQGWCIJLTMDOVHDJMXQCJMK', 'KOSOPDJUUFQX'),
('HCGIISQQJLSQOPYNMRIDIIQJB', 'OUDWLAQAHOXS', 'GGUJIGATFVVKRQQTHOCTUKELXEOXFB', 'ETOLIIUXFGSH'),
('TZABCMEAZENLMJMKPQTDUKYYF', 'HIAQBMBPNGBH', 'LDCVKJHUUHXSVFSHMNBOBXVRHGUYFG', 'MCXNTZKGRJGG'),
('HPFUBAZSAWGGWXFYPMSBNJBSA', 'SFKODQEWQTMI', 'YKLYYDONUXOTAEZANDIJCTJOBVTJVE', 'KHWJJZCZXVZC'),
('QWIHHYMLZIHFZBDSDCDKMFFND', 'LXAKBTNUAFIV', 'BBYHXBTTOOVQXSPSLFTQQJYIDEOMSI', 'GFDRFMUGQBBS'),
('CRXCKQEJJBZQAVVPIYYWAWBNP', 'KEVBJUEEMOBG', 'GEKRYUJHCXWGPIOZQHMIYQMGRRDYST', 'EWJDNICPNQVQ'),
('MKFRMBGCGCMOMEJTYQPWPQNDP', 'IHMGEWITOEFJ', 'IMEAHDIPABLGZKPUBLQPHHRMDNDWXO', 'NJTBZZLSNJCT'),
('TNWXFHESOMPUBGHFEGORLBBZS', 'UAVLFQPPCHAG', 'PTGPRPWPYHECWIVJBOWBRSOEMAITGX', 'MMSHPDXIDUHO'),
('LHHAIYIBASWLWLSLQICJAQRWH', 'MSCFEUKXPPMS', 'EXNJFPJQPXPKRARURWIUUXJKRYIMDB', 'ONNOKMJUWWHM'),
('KDCQOTFSEPPVFZIKZIJNLAUKT', 'DRYGBPPZFLIZ', 'PSCQKXZQAJBVZHKIPJHQFDRJTRJFSO', 'MAYIVAZTOKCY'),
('APFVSTTWEWEBOGCXREJCRJKZO', 'SIIVRSURCNUO', 'ZXWRWDYRSWPUETLJDXAYDDOBLPHLSE', 'RBNTOLKCIKLV'),
('HBAQVFZHYSOIVIGUQMASODHJI', 'PHVXOIBVVAFB', 'BKKHYTXEXWTNLJARPGSOOIHIQKWNNO', 'CGLKKJTDAXSJ'),
('LOGHEIDPCEVZUFOFRXRSDEHVT', 'XSBPOFZNGPOA', 'YUIKSACXCOWAKKPWRVTOLAHUZHLPNC', 'LGRIRYOIFYAJ'),
('NOZRGBTMZDNKYMNXAQQIJYDCZ', 'FYLKSKZBWJTD', 'GUXPOWLSHFBDMLRPCZBVTIDHDXXZCI', 'RILEZLTGQEDZ'),
('BAZACNLAIQQMTSHIWTMTEJDRM', 'ACFTRGBUVZSU', 'OVMIHBKEFQGNIVAJPWDZCMAPBUVIVR', 'FTJXRPUAZFQY'),
('SJFEVMGCMTQKUKLQAGNRHTSOY', 'GFGCFRQJDYJS', 'AKRKDREAEALPKWMELIINRFLXKKHMUT', 'BWXIRAMNXNEO'),
('LNGIDDKPJYTVQCMFJZEPYCWTE', 'FYZBCFHHVPXG', 'RSAVHITRYGPJGQBSDPXEZYICMRSBSU', 'FFORPCNRCGLM'),
('PRBDSPMNYCSABSMISZDBCEKGP', 'RRTNNHZKBZMV', 'XWVVTFLCRLDMDJKOVPDZMPQUSSSSNH', 'CSMZBSPMPJPT'),
('AXJHQXQEJRZLRSQXGTTVWHORK', 'VTDJDEWOVRRD', 'BNKBKAPAQKHQYSRHXIOWANAYHJSVOE', 'HUAXPSTRAWAE'),
('QGEAVAFWXEQRGJVAGHHKSUDGD', 'PLCKNQHMNNWG', 'KVPGKWBWXAKPIRMGUJIWYKXDMRVVQQ', 'FMNMIBZILOKD'),
('KHEOPRTTNRCKWSOXCIUODZKVJ', 'RMYIONWDYKRJ', 'MLPVYBCXEACCOFQOMQECLVKQIFEIGH', 'NIHFZYBRPTVT'),
('MBLZGMGQIEHEXMHXSFIWMAUPG', 'UPZVWNNEQHKU', 'LPLGURANNMZMTUFNFCUVZDQRXTXAZO', 'ORKRQAYIZCJN'),
('BFHGBHCCCSMVLSRZLXPUQYCYI', 'TVAGDGQFOPLH', 'SJMSSJBVETVGABGTKDSNCHPYMUPDXG', 'OKPTYVWGDSSM'),
('XYXJJHBGPKFUBQIVLCYEPBMYA', 'BGVJWNCAIDIP', 'BMXFMMEJFMGOECZEGOJXPJILUPOJVF', 'BODHCQIKVKKW'),
('LMSCVCQAEBFYBJIXHQBLNNZUP', 'AFKVSWRXSYJG', 'HHCUMGLUZZKZLUKJIZZAXWHEZSMAKI', 'QLBUJHVYJWBC'),
('IHSNZPLHDCQQDPPKWFNEZUUPR', 'IQIVXRQDTGCM', 'UNOGPABEQTVZCSAOAHZRHSTZEUSSBN', 'SWWYQIYFEGYL'),
('VNBOHEYNXONVAAZZSEHDKRRDG', 'COFZTUZEJRNI', 'YMESIOPQSNCVMMBTABKBVRZZPIEBMO', 'HIYSANWARMAI');



insert into departments (department_name,budget,location_id) values
('IRPMQIURFAYMFHIYCRZMTHXGRERNDFSMCSCVXMXZAIFDVVVAYS', 25969, 88),
('CAWSSZPOLNDMFHLOVDPPSGELMCYNZSFHBIGBYCASQRPQWMFXYB', 27398, 65),
('YLKBZXDNABRBRANQTNGKWVARLNAJHHLKAHWTEMKIWJBTGJKSFQ', 19143, 14),
('NSQVXUOGBACSILJWZXICHOQAHIESGBAHEQEXXVGHQLNQHVLGIR', 29838, 42),
('GZUXBCVJICJSEHHQLPBEPHXROSSVHKXOMSPMARDEUIGZLHYNNV', 18876, 38),
('REBDYAFDYGJBFIGOFMYQLHEGCOJLGFSAKJTPBQECLBRWQSLHLT', 505, 99),
('QVYQIAZAYAUROAPMLABVCHAXHEMISDVKLKYSPNGNHWNQMTFMMA', 9273, 94),
('LLSCLYOHOGVAQWUJWYKATREWFQKUOIGEOCLLPQOVSJOGSPKQOI', 22530, 33),
('ZHYUKXIMVULBFEQORAOJJZORKROWZXEBLPJUEOHXCTOQOEXQQT', 4844, 7),
('GGRIFCQWXIAOGRLRVTQZWMXNCEDSISWXOPGGFGCKBJSCLAGINU', 26217, 4),
('WTRJQKOCMPIABWCYZCDROIVWFAFIHCNUYLSPIMENXPAGZUJWGM', 29126, 11),
('LXYZOMZIGNQBHUKHBGSLZGUFDTBPYCYUNQFLSYGZUUOHKKKGQZ', 15472, 91),
('ZKNSUADRESHQMOSBVWUSUCWTLTRSPRGIYNMDIANOUGNNWLTHHU', 31867, 100),
('XZCIQJTZNPFBKBEHMPJVSUPGCOFDAAGRJZRKWSAYOTLIECTTHL', 3423, 53),
('VEQQJSJKVLOYHHJGQFQKJIOFVJCTDJYEJTNZBJHFPPOMEOCTOO', 6916, 78),
('LELBTMJGVPHXMHBUDHJELYBEUSTGNUKRKLIDRUGYZWQSMUBLIE', 17665, 52),
('ZPWXKAWSCIIFVAGNXQSYOCLIYWYAWUKDKCSZCYVQFSRMJWZZGE', 15904, 68),
('LQJTDFFGGUCWWVCGFSZTNYBVWNJZBKHBQYUAIRXQBKRTKKZHCA', 11301, 29),
('XWEQLYJRKDAGCQOQLOKKLRWWVGDAVCGVZULOENLKSMTWCNOKMI', 19407, 51),
('ALFXLZIKDOIPUVBCQWYRCZXIQJMXKNHBZZPXVFMLSXXZPDKBGH', 7454, 85),
('YJGQAPJVWYWZHBVRXXOZTZJAAMMAWIPIKAAFIJFJWZFHVPATSF', 7125, 34),
('NXEVMHVPJPMNHAVXCIMRBCCCOQAZDBBYHOYYFQYLVWBJSRSIEW', 18499, 58),
('MPMPSQTSMVYMZWRDRPHWHJIEWZOZEXEALGUJPOVGMLKZFJBVWS', 1085, 77),
('UFOKEWPXMLRTBXWREGPISFEUAPUODAQEJUBGMOFLMSAHZQGXUP', 2159, 95),
('OHGRZIBTWTUIKEXYIHUSQZKHPYHCJXVGJIORDLPLLDMWZTVJXQ', 30164, 95),
('GIGDATDRQMECMANJSGNNRLUSGVXOKHMREIQNGFGVWEMYHHYGFX', 18306, 8),
('XTAFVSQVRMPMBTMIMEQSLFFRMLNHVASVXPUTQIISZFLXESZSJS', 10410, 35),
('SMZLESOMSRCPMJEFAQRPFQWXMXRGLZJTCJBFSQEEUKJNBNCBWC', 29406, 79),
('XZFHFKWFLZDNFSHOFJHDOXGHKCUEFPFGASIUBWZRVUYDNMTXBL', 22676, 74),
('ZQJISJAFPHXYDKHPZXOOCSETTFNPSHIFGPYMKKWDVHKUEZDQAU', 32747, 82),
('BKIEQUMNIHLTPWLJQUPBBIKDLRWCKLLGXCCAPIXCXEFDYIPWGL', 4525, 87),
('LUGLXSHKQLXAACCZLHGIJRYSRZTADXRGHQGINOSFPGEKKEVQES', 148, 34),
('MKUPWBVFCKIOIQYGQJRPBAKLMGEMATYIARHWRUBEAKAOEIBVNH', 3280, 98),
('BFTCVKVPKJWOFTAAYQNJCRNYZBTUWAGIIXJOIEMDDWONFLLIJW', 18376, 45),
('WKXJCPGDRYQBWFEONXAJRXMAMTABOTOEGFBQYQNZZMEIWIVBZZ', 7199, 50),
('PDAZQUIWOXRSVNRUFMAVVEKMZUEFHUFAYJUOEIAUAPBXMJTMUL', 7673, 1),
('XJMZRSRTRYANAEZWZVYIZPOIDZWWIEDZQITOBMSXBTHLQSDNYJ', 10111, 75),
('TDLHLJGPRURXJYGTFOOPULBHQWIAHQOCCHZCZROAXZLHEAXMHG', 1440, 63),
('TQSGHYNJGQGNJXBGRXIWFMXWOUGBNYQJZMCHUMSQMCULRZDLGW', 14618, 53),
('AVKVERRLOXUGIVDSRKSMWEMPRQPGGIZRXCAIWCYIATQTOECWHE', 4024, 81),
('AFGAWKKECTHAPTPGAVXXZJBDHNWELARAXKYXGSEORXKGACAFNX', 6620, 43),
('KSROWKQBLQZSMXIBRDJZLWFAYYBRKQBSIMORHBPUYEUPBGALWP', 16447, 49),
('RYDSIDCNGIMCTRLTGYYEVQSXRNMYIQJBUVPTHSSIEIBBEFIFTH', 32246, 37),
('CNUTXWDILKEPKLLYEXNOQCNSMACUPCIAKPRWLIEOLLQSRUXMJR', 696, 12),
('EPPKFBQRMYHVRSADSXYELWQSHANQYCDERZXAARBZKRTDIGRJZG', 16734, 46),
('RBOEZCHJTMBOQTZSROZCVDYLYRTFITDDVTSNVKOKAEGLHRYJRJ', 11947, 11),
('EWURPHKYDHHAPIACPWYDJZAUNFGZJYEBOYQSQMEADCDXADZUSM', 13389, 42),
('DZBOFRNGXHVZRDRXTXSCBKJDLCTJYCHNFPUUPVJNUMTGCVVQRC', 7203, 17),
('ICGUYOQUERZGQTNGQIXZLDGFEKSQDJAIIWBLGPPQBOUNYVTQXT', 30656, 13),
('ARXXLWUJDWGYOPGOCOGYFDVPXJCHQCQCRWXDSWWKWVVKBAHKWF', 18479, 31),
('RHPHUJWJDGVGITKKLGPZRAYNRDMQJDHWKINYIHUVTJBYSVSINA', 27127, 86),
('QZDPVRLGPYLKDCQDMBUABRNDTGEATQOZYICVRRRZNWBYKLTKRL', 2401, 79),
('KYGIFWIZJAMMIQNPSARHKVRTLXNYFIVXLQAQDLIUOOLBGBHZLH', 8953, 78),
('EHSFLGQMWABYUWZYXBXIVUMWXKHSAMBLGUGFHPOZZRSNVGTDYV', 21587, 74),
('UBUCRGZZPAQUVCFIGQUGBFBSHNRGZQEQHDZKNNJHLDUTZIWXUK', 270, 43),
('KUQLVKHZSIPVHQLLMDLZBPFJQUJPPQUQFWMLDBTJAAGRKYFFEZ', 4125, 25),
('AWGTHQUFPOBWVNRDIMSEOCKKUZHYJUMZNQFSVKUUQENJCGDQTF', 17732, 81),
('FSDVDRFIKEZNURIVBMJIKJVVCHLNUUGARUHRSGCPJMIWBHIAQS', 31456, 4),
('NYVASTJAQRQPMCJNLGUKWETTZMJGIULEXFRZZOYBYSSZLWVWBW', 16363, 48),
('DGLXLEIWLUMOGXAHEBYLEQHGBLYCLEQDTUOLCIXZOJUBVEYMAC', 7742, 2),
('NNHNDHCKZHYMHAUHMCESQVFMBCWULQWHZTPAFBTQIQPYRIUFZC', 3352, 87),
('VTHZFJEGFTDBVQBWTOSDVXZGFWMQXAZOWMCAZJCGZAATKMTSLG', 21471, 62),
('EUCTFZZUMUEWQLYABKDNEVCOIPYVHXMVUGBZGJLMUTBVVFFNWM', 24870, 58),
('KJZOAFAIRSVMYWOIIAETMYMFAYKQBDKOWGLSAXTOKWXSCQVNJG', 23022, 26),
('PVMWYLYRKAIUNQPWNLYKDXFGRJJIEZWEURDVVBYYIXINFJLMSS', 25904, 33),
('JKLUAPAGGTMUTUHTMQSVWZBMZPWTDVWPUJFFPEBETULHGUDWTB', 30618, 82),
('VDVTQTUQJEJWXQBRUWGJPZZLIPNUFMDIXRKLWEPCHNWCKNCTUT', 9112, 20),
('PRBFAJLIRBKGYDQAGAKMDFQKOELSQFXWBCNWVQEEJMJDJEUDNW', 12694, 22),
('ENSFAVKHNIIIJPVVKGADGYYVJUPSVCRCZVJSCEXVNLHIHYHTXQ', 1155, 5),
('URBBRYFTIGGJEANCLMMEMCKJGBWNKWKAIMEEVQEGXIONSAOSRR', 3737, 65),
('YYFKHADYCISLBFIRILECZUQXVRIEHWDNZGTAWJOQSAZVIPOZQP', 23131, 17),
('FOKMYNQNMSXRNMWQTLXCKIREHCMCSGYYPLUJYIGOSFBPCGCXUA', 27614, 43),
('RMIYAKGDPGEUFXVPVWESIHKRMHKAATERAUFAKGIEZCRVVHRUQP', 32332, 84),
('TPKZZAYDZJOHPLTQEVBOZUENCMOJRNEJHWJHVPUDTSKKGQUJFX', 24997, 24),
('NDZOUQLIRBHKVMOOMBPYPECOOXWOPHKWWDACPZMRZLITQUVQQS', 31943, 88),
('GNGSJBRYHZBUPVTQJIKLIROLYAAEUOPEIDBWNMRYSBLBGDQTDQ', 14257, 46),
('AHZHBELEHXVSXRTQQYJKCDSAETFUDVLGNPZUOSLMZRRSISAGFV', 20995, 89),
('PFIPGMQTZERRGJBFUYXJPKOUIQFROECNWNOZUXXZHBDOYNFVSQ', 27080, 2),
('QQQTYYQXGFRLARWODOIRUKGTAUJHYYVDWGUHHGCUOPIZCVYNWG', 13942, 32),
('BXALGYAAVRBCWYMLJQDSLGLEEFMTRLLZVSZGDBCLSNQCYXKZII', 15414, 36),
('TTKFIYZFWVREIDSJSMVCPVUPNELIXLVCGOKFCUIEEWVCSQHPVP', 31584, 95),
('NSHGWTXBXJTDOFTVKVHLOWNLGBCNQKSWUSWIRKWATDYPXVDZOL', 24649, 15),
('TVOBBFSSQLHXXFVGBSLVXNOFBDZAGIJGUBMRLMLYIHBILKTTZG', 30529, 91),
('NUFSHPOZANPLJMXOXQRCEWUEGMVAFAHODYWRIEXRYDTZWJWXKZ', 10454, 18),
('LJRQQRWWTNZPDNLXNOZHPIXLCWFTCXBSYWKGMEMHUPDFLDZJWB', 606, 42),
('UDJYCUECSAULYOPFLJHEZUNPFQAAEGUTSWBTYSKYBGYYXEVESK', 20148, 98),
('VMJIZXKIJUBFNHVNTZRWNOHMDCQUQHUGTDPLXAUOIUTTDOKYIA', 832, 65),
('ZSGUWSRWLUARVDJPYDIRADCNLTNJTXFXMZTYYZBLVNNYNWKPHF', 17724, 1),
('PHAOIIURFZUWGLZABXJCBEYKSRJPVMYKUSZVRYDXDVKWRZGZUR', 2868, 16),
('WPCOVCGKUVPOBNKNLHZKJDHASFMZKHLDFNVVAMFYURKRXSYHMQ', 7887, 17),
('BMTKCIURWOLUKYLXECRXCENBJRHMUAWFKCFDUWCKMIKJNYPXCS', 717, 89),
('ZZQNZANFYFMNPLWDEGYFWTXQQLNQQGSSKQLNGLOFPXMONTJRYS', 335, 86),
('TQBKZBRZBNMDZKVSHUZKREHSYDPBYPPIKZCGCCMVWWNHAZRQQJ', 26205, 25),
('WGRWFZNQIRMZONFKHSIXPNALXYLRMRLCLWOHDAYFKYHMDIWDAE', 10916, 48),
('FTNXUIVTPWFHWEFYAJVOMCOFHJDDROYEFQSQXGDDACVVPLKWBY', 4736, 74),
('ITIDSWXFJSTWXMDJUZOVMDVFEFHMETEHAWJBAVWVNIVPVFGVVR', 1337, 39),
('PJZXMZDFASSYCYFCBSKCQGWMADLFSVTEQEQCKVQRELHLOHDDXV', 8337, 50),
('CSSGJCSSODGUMOEACYOHGCYNIAXCEHITLEGMNIXHALBERFBKNQ', 19581, 93),
('OXIHDZYXUVQTCMWRKIIWFBBVFKFGOIPMLRRGWWGZKHDJQSYFKW', 21298, 27),
('DJSNSZXHTILMXETZPXBAXKRSLRJZNJYQQZSLKXQATRCDWESBZI', 16739, 35);



insert into employees (name,surname,email,phone_number,department_id) values('JQXUQOVFJFBJIAPMYRHOHCYVSXBVMNPSBZHIFVPLDQUTOZILAG', 'UKSSWWWFRDXBFAGFWNSEUHQHPYAJENOFVQQINBUMQAAIPVFUIY', 'DLBCOQJTWRSFHOGQHGXJDZJH@EQQYZTFNVQGRDIBI.PYDJLLNV', 20182257057136273373, 55),
('BDOJEGAEEZMGUBTLVITKTASFXNMLXCNSDRAURLKCDZLEGGKLUN', 'NCADOBSCSMGBQZMIBZBSIFGBQWHADTFWKQGEHMQQIWBXFVBCAO', 'GYLZFLEUTZNRLVDEPIIVHKZU@ZDPUILICNJRTFURW.UMFPELDW', 64391601670500423594, 9),
('GICUBGGRCHXSDAYRKWZIBTIEYIYCHTPEHYUVELQSAUCRURETAD', 'DCYFHQVLDBDWMVPSKZMGLMKXAAKQRZIRMNUVFKZUYASEJFDPMW', 'KVLXSPLDCEDTSRKRRSFMISSX@QABKUGWNNGJVQZZG.XACNMZUH', 67748816711002584459, 54),
('DDJYNHIMKQZRFYDYZDVAKGTTAMBKTOZDMWRNXXLERPDIKUGVYD', 'MDAQHDKWSKRBKBPRKUNJYQJIPCPERVLQKZRBTLRLBLYNPDJERG', 'KVCLPDBSRHXQRHVKKZHRTFMM@HAENVPBRBELGDTHG.XVESAUZS', 55598171648662053455, 65),
('UPYIJQYNVSOIXTYAQEIIXAOTBZPYCIASBJAZQLRQMTWKPJRFFQ', 'FJVPELABFHBOCYDEGREJSMRBKWNNSUKTVSCCEGJVJARRTCNQZF', 'MUCYYFQCOBTMVQTYFFWPCUSM@LWLNVHYMBNYYOANW.QIHGGOMK', 33307475759475927255, 17),
('MIVFCQKVLXLTWVZKWWKCTHHDQAUTQQDBYPCHRUFSNDOFASTXKB', 'OLXDPXYSVPSELTIMDBTXKNBJEARVFOEYLYTMEJBNYYWVNFYQDW', 'GUCQKAFQXCPOKUSORYZYKZKN@SZEFYTZWCMUJWXEC.SBAUMHZE', 18277106175263827983, 61),
('IMVENCUGXDUNGCJLTHAEFPDSRVXLZZLYHSXFOECSLEJEUGKEPZ', 'TTXRYMBYNYOJOAFBDDTQSQRZWIBHFLEBMXSPGPXRXFJFWKAEFF', 'ENTRELHBVWUKLOWKUMDVUHBQ@HHNSQKKPNIFLGNYD.OFDUGRDG', 00471005942881573183, 52),
('EWYDHAPRVADECYCVJNIIPQGAOYVEDDIOVCEHMAKMRKJSSXCDBM', 'HLPQJDTQHEQLEHNZDVPXZXCSWZFGHGDAEBRKPHPIASDATLWOVE', 'CJVVVUGJAYUJAUHRDUPUEKZB@ATUQXNMBMNETVMSQ.XLWZFEFA', 22058365888232778049, 93),
('JCHPURXFYEWMIGOVBAQSCLALGQPLKNXHGNAAUMDIFQBBWBNUTR', 'CXSGIQWMIIIVIDRWVBLPZLRDWEQYVJGXFYEDCNMKIDZPAHPLXS', 'POZRCLTOWUVAIQAKXETJHCBH@JMREVKLYJJGRYICK.CTMDASQK', 43360691002551500856, 47),
('EWXXQONLZZAOAYPDZDMBSTVISVXXJOJIRRBMTVIZPRJFJLVDUM', 'JSASMLKZYQOVVNVRQKGBGCBTARFVJLPWZZCSHORVVWOGVIZZQF', 'BUNGRDERQINXPVTMQOLRLDNU@HOOGZOMXGHUVHRWI.NYPJKTSI', 48398962018938031011, 60),
('CBQPTXIGITTKASTOEITARULPXYOTTJIHMEWQPBHHBKGRMPAXTG', 'DRZXTPZYSMCQMHLBZSIINBPGKJSHVRXZJLWOYOKBOFIFJNEDXL', 'EKDIQQKFTREIEQGPEGFHFTZJ@JHNUMIBNBOTFYFMS.GGTOLOKQ', 38885746590106431910, 41),
('CWKNKHKEZREDPWAGHZOGMOOVAAFYCUQCKOLIYLUTHCQGBSTCKO', 'BOTESUXNHHMBGQSIAULPKTPUWQDYJGRSZQDFFERGZVYGEXGYUH', 'UMUEREWBUCEAFOTPQMLMUUNG@XSKUPFHTIVWCATML.DNCYNJEO', 37473852101700054041, 36),
('FIKXUJVCPSFBSGNWJTSHSQFGEBRTWCWXUUSJOVVPPMMRWEUIVZ', 'KNEJHKDQRPKXIBPCMABRVQUUESYUKZQJIQTVSLHXSZCHNLDRJO', 'BRXWOAFNOJQZRFKCBMEOVIBP@AZJUXXBOMGLCRUVT.JMRJXGNZ', 66462705154415202949, 5),
('ULEYPZKOQGBMPQOBCHGGWNDVMTHHWYSKFXVHYWQZBHZIVOENTA', 'BMJTGLUQJTXXWNZSQTXAZRPKHZSBPSZZWOUKSZDZBAZKEWFACH', 'IOWKGDPBGJSQOBLYKMKVZJUO@RBZCWLXXWCZJBJLK.RKQUELDW', 33148621746444689637, 44),
('QAAGGSDFFUVJVXLZGSNQUBKHTIFVLJECGRQLIVNRRLALNQBUOI', 'CQXPMFIDGVEAJDXTALHKZWKTZRACGDMFNTIFDOSWVHTBCQFRGD', 'TVISINZFKKPOXLXTPUIFORBS@MKGRZHLFEXGMNENB.HSSRJRQK', 87665137468005119478, 55),
('ZFZQKGYEUPCIQXSRKISVXYRPMDWSKYLVDQYHGWHBNVFLQUVURE', 'OPAHMUQOEVQIZEIBOSSUCGXECKXZGIRSJQPNWLEMQFHOLEVSKE', 'LDFYCLZVYVHVQXYBXBVRLAGC@ZNDYUXUDZLRPFUNG.JNIOZRXV', 38828330614013145103, 77),
('KHKLZYHQTAQYLSOCSXUJOIENDDROYUTXUDLFWBUOHFGLULCFNI', 'WUBCCBMKMKMLDTUPPSSWBVUEXWNXUUISQIBMKNPMOTETNTZULL', 'QIHAALESECSXSOLISVDVUUBB@TIZYWDNOLDUKGYFW.BIXNOOCV', 55483056904994707484, 42),
('OCHEQAMTDFGLINMHBNBBKRUQSENHEZLHTCAOMHVVSSAIEOKHUJ', 'UQGSDSRUBQGTGNJWAEDWNKNISNTEBNRXMCCLSUPUDOZLEWUGMT', 'VFKUXHGBQDCSSWPLGDADMMQW@NUNVCSNFBXUDFDFC.AZKXBHTQ', 80782433792890243601, 83),
('GPBFZUEIKBQYGPJJRBFRWQPPOPPOYGCZBFDQXXQYBGSWQEEVVM', 'BLFSHCCNPQOVGWMVSVNRAAJYXEWKCTJMBBLFHNENLGOQZKLXAM', 'CDCKKVDGQMCXTXSXCUFAAINA@XOWBIZWDXHJLSKUP.VOMKZABX', 00644739166512780537, 8),
('VVLIVHJARWTQWJQCRXLIPIGDMQJZMVQEPJQAGEKUCGHCYWKSZZ', 'GHCWOPOXZSHICXBIQFCNZRNHVRLEAUHVGEUQDWBFOZGOVIUFPN', 'MJZENWMFXYFLQVBEXTXMDRHZ@LALWFZXQDBRXKSMQ.SWAEATJH', 80258119945476084392, 20),
('JFPJZFKYDUXSJNKAWALMJDSTMDAOYGSSYVIBGBDYEHTYBSXZIS', 'RNYMEHUSCVPEKAASPUTOPVZAFTHIEIKYCBNTBUQJWOKHYMZOLD', 'WIJGDFVKOOEUEXSNJYNOEQWN@DBYJWBFMIFUNKAKE.ETBMLHVS', 71290918928826040111, 30),
('PEDBQQIIFOVPDYOTSYSDWOUVVWZPQAMIIJOOJXLHXXDWBYYRFL', 'GIRQCKQHKWVHULRIJGNWOVTSQZJBZXSIQOASURTFOVUIAGYGAW', 'TAGTRUXGYXPCTTSJLZRXCGRW@QXWCGJKOTXQGHYUI.IWBXRTHP', 76435794086515874940, 6),
('MJBLCBAWEZATMWXOKXGEZYHEOGHOZXXHKVOBUGTHWZWJXUGNLX', 'COXFPKWAJLKDMJWBASHDYBCARBNXOMAGRMZPIAVROFUEKWAJNM', 'RDLRAJXWPIYSAVKYXPSBPHMJ@VNDSFRIDENUKJXEP.GOXPTXLD', 73857145354100156052, 51),
('RASRONJNVAXMCGLGHGYUJQBRCJFGRUEIIZOCWTISYITGFBGZRH', 'XFSDOIMHPSEPMBSJDNVYAKBPVZDUIOLYAJGEUWBRXOAFHLMRDM', 'WKSUHHYKBHCATVRSVAFJMGHD@ZBJYHYMLAYLPGACD.SLUDSXCG', 01830139967206090158, 20),
('JBSBLMLNBXPFOPDUURFNOWHUOPPMTFHNWEGIEINCPGOTEFDLQJ', 'NQVQFMNLGXUTUVERNUEJLAOJINDCTNQWBOMAZDXFDJLTQEEXCW', 'JHZHVTPSRPYDWIATUSYUZPWZ@RPRPNDJPITTBUUBF.HWRPVTOQ', 39425419775511624721, 92),
('GOIMOMVYXIBCLHBYDMOUJRRGQYAHQNARXZITTTEJCMNENQUNAE', 'NEDXFIHTMOGMYRBSPQIOJGYSJPSNEMVKNNOIMFPUMYDNKKSVGR', 'JFOKLJMOYYAYVAPUAESZZHRF@EQIXMFDETNDADTRQ.NMZOPOTI', 47999870240614934718, 59),
('IPHIRRKDJQRHWYMGSAENTJBWJZUSVSHZHVYVFVEQXSIPXAPMTT', 'DKPZFVZXVRXXACPVAFNLROSXCMQLIFRZPNXOTEZUORMBACJEFY', 'FCYDSQVZSUKRBOFWWCJHZAXX@MZBKYFBDUGMTGYUR.ELVUZMSV', 24465020705995546002, 14),
('TKAHNCUVETQPQVRTIJIAZDKZJABXDYWLLZNFEODWKTPUDEKRTS', 'QHVIDLITVMEULIVZUQFZJCPSGHBEWPKWGQSPFARRULQBIYRTRK', 'HMOEPUFINNZXGOAOVOOIHMDP@TEJCMUKRXDVAUIWI.EEKOKQQM', 48171802493061986986, 84),
('DEDVETDPRWCDUGTDCWSRRVAVVWBGNJJZXTZHDFEBCASFYINKPP', 'QZBZPQAMSCDYRMFVVWMQLFVVMXQTVJBFUYJHKMWRJXWZHOSQFR', 'WXFBTDWVPAZVFEAMUEDJMKFY@LRXMYAPMRSWHAHPF.CLWRCWSJ', 33855002017204244284, 92),
('EIOWDTCSCVMUAIVFZCEAPSBNBRVCVCFTYZGNKKVYUSHEMPPRBV', 'JZOIILZGGVGGVIDSMDZFOAHFSGDRUECNWIGBYDNXEQLIXPOGTU', 'STYPXCUYPQDGUZMELRSPLASD@KNJNOJIUPSWGHTDM.WJBKEADL', 13447431312231294697, 58),
('LWNMNTXLTQSGCJJHXDJATPLEFKHPMIXRDKIRWANBESOGGJCLNT', 'HTZLQVRZOTMSVCZIWJWFOLXINFRDULNEJWXVCMBVOJAIJIBDTR', 'DGXXLZPKWJVUZRQMOOQXQRAH@HFVSBNRBIMVNQICB.XCSAWJKR', 27281998745085074495, 35),
('SEKENKWUHPXRJPJKPGEPZPDEWGNCZAJYWPHWLMPFKHWWBREPQX', 'NJXHFPZXRLOMMQPHOHDGTGTVYGRZNGZOFXNHYQQZLMQPMRTWHL', 'XYGXTNTIGODRMKWEMRYWJCFG@OQEPVSIDKIGLIEZO.ZLMTNGTE', 15534010181201045858, 86),
('TFWJSXHLHAJAFMRTWZNXBDTJFQEXIKCBBPCRBNBUZOGTTIVLHU', 'LDEYWFOIHNZBADKCYOAXBFYONRJRTOSESFCWDCXRTCYZYGYFBJ', 'NKELSSEQAOLFFXYRZTNVRHWP@CWCRDITWEYAFLWAH.PLTGPDUC', 48087055593373668896, 24),
('AJHDAMJGYTNGDKAXEVPZEBQQWSCKJKBOOMTUJRZISDYJVQBFWS', 'HVWIXYJKFPBRFAUECACKRRWWCXINCOGYMSXLIPNZDTDIONSIVA', 'QNZAQKDXBNMZTFBNQXBNYGYZ@FMZYXEWFBYDNBOQE.YMCIDSXM', 94559245340290834208, 45),
('HVBJRJSVIBNPYBQIKHISSPSAYPRGXGANRRBPGZODVUQKXZNETC', 'VWKBQQPAIJLASAMNWWPTSTPFZCJRQXOZMUOHAPAVHFHZYZYKAJ', 'KUZXWEIFWKVSULMIQFNJIDKQ@FSPITNGTWBWPPKXP.YWJZVFJP', 37481138668222585812, 93),
('NIUOATFDYCPYUOXCXBMNERAGCHBHZVSDEPERIYUFTMSLYTKFOL', 'FXPWODKLHRAHNRRTGOQSLDBFQQUDMMWQBOFSRFFYVKRLEDBTIR', 'TTCFDUHGDUUEGEFQREJXHKOS@TNFRLAELYRDANOIT.QIWXEUZN', 05274623664174283048, 5),
('BOZWXITLGNNXOYXKVIWTRXSGYIQUAHMSHRFYPRYASDOFJZOTNO', 'NWXPYCIWWOKFARXKFFKAHMAFKLWGQCIWOXQKXPEQAXDJESPPLX', 'MXPWPSWUKFJTTNWGPGVAMKEI@UHPCNAUBYBYOHOXP.YZCJDAHH', 36933900147597353423, 97),
('YFDCTYAZWLRIMIOVHHKHURZMEATMCTHRFYWPNVYGUBVTGWZKYI', 'RDVLLEJVWLRWBBJFDCRZWWYREUWHRVKNPPXPLGXCDQPUXISUNH', 'FEDDQKYEMHYXPWXTIQIDUBAG@MUCZOZVFDNZARUYV.EZDKRRLY', 82783552413371412466, 70),
('BNEKHINULSXAHPTXPXZLAESKSLDVFLNMGYMLNYILSKICPBYELK', 'TYQGHKOLGKZQEUFIDJCEUPMAANTAXALVAVWDNLOKRQMSAXKBWC', 'VFGMCTAMKNYEWVIYNUSWINMZ@HQDFEQKGKASZTFKB.GHHBYXDZ', 99491399670015613036, 28),
('PZKZEHLBUTCAXICHFBMZAFBFTABTGERCRWFNPVBITCFLLRZAAJ', 'CNWZMFGGUOEYCNMLGTEYVJZIKMOECHROWWODHYJXSWLNQAWHEK', 'NENKWLYXLRFIPAAJQDYGNSIT@QBNTODHIIHPOHSBJ.QINJYZFQ', 14595160698873931098, 37),
('UJGCJGTTHCFQPISERREKYIECONXVKNITOSRTNHHAAVVCGZHUTG', 'KZCLGWCDHUCTWJIYGLCFXQCAQAUSCODXJUIUCEJPLSBFMFVFPD', 'ESVRJDMLQPDPKIAHPAWFXRXP@XMQXPXVCCSFKZISE.GJPEZUPH', 70877068629384818816, 73),
('KCTVYMDKKGABNXRNWJQBCQUOACDTXOXHKKRLQCQWWJEWLWOJVC', 'GVHBMCEKMQFVITKZWJTWXWXPYALLBAUVTCKMAIWYMZLKDVTVTQ', 'VBUYJGFBDUNBZSFTAYEALMGH@NDTLTJAWTZKQQTHM.ZJTKENGL', 59252745586441800277, 21),
('ZSOXMUINMVAANCIQCZAJSHCWHCWSJCORHJSPSGUSBQOULUJGDA', 'AFCLZDIYTIQBYDZEPPQYSWYKYZTVMYIQLTSBPKOFSQTOGXFURF', 'AXLELOXMFTKDNWSNQSNTUNRQ@XQCNPNYXQSGECHAH.UZZOACKG', 22774312880813567555, 63),
('MAGTNNJTTQKRSNBCFHCOYVDNXFIFKCXILDSYOYFCZGGRKQDBUL', 'WSEIMROKQQXEUALNRVOZURSKPWYBJTFPEQFVXDINFBCIYSWDCK', 'VVSCVCZTTMTWRVRVJTUBNTDW@CRJNVKJREOQNJAUX.UYPXVQLT', 99168222561984979863, 93),
('OVQGMEUBKJSYHDBJPBXWPVCSQYRLZPZUVBKMEBVIJGJRPIRDNX', 'NUYRVCTAHWQJRGWIAWSMDNIWORAVUTMSNSSUCGDTBJZHRFUDMK', 'FQXJMFLIGAYIPPXLORBFDXWO@WBKRPWKKKRDUPCJV.PUAFSMPQ', 88596187096705474716, 74),
('KKYNTUKCDKERFQNOGJCWXBJPADDSUVPJFKKBBYWGKMNMSVXGYE', 'BUBXTBVMUIAZHVKWTZZLBAZVYVJAIJGBLWYHLNUBYKMAHJPXSS', 'FOEJSCZFDFNLGOXJDCVRPCWV@KHLTGPAZGTBLGCTS.SFJGUMVH', 40609568164416893379, 22),
('LGHAYRTOGOMYVIIAAJDQFWBWFHAUJLIITAPHSFHAPOQZZIOJIB', 'BTVTULWRSQSYJOUJYDOKFKSLAXFHLNKPPKIMBJFFVMAFURKSDA', 'TEFFOZRWOZLCEMHBIWKCOPLX@CABJDVBUWMANWMVY.UQFKCPAO', 67296704865210212831, 56),
('RPYTSWKFVZABRXHFGBVSQNILHUNAXOKSOOMJDAVGFSUUVRIVLT', 'TTHQWQTDZLEUAVOMZAGYBWKMADDTUBSJMTEEWRHKHCFJTOWICD', 'TNLDGWRUMOLEXLCIIKGAUVUU@VEUZYEBZRZFNKKTH.ZIHUDGBX', 47751233290347606878, 7),
('KECBVTZAGLKXVFXKISRFHXFEUZWCDJYCVOHNCQOJMYTKCUBTXH', 'MINEXOZAUQTFNLGVEGFSNOJGRXNIULMLFILPHDVBQFTPZYAMXN', 'UUMHHRQJXWDMGZBACUTAIIAJ@VDLZRREIREGXDVFF.PEPTZDIN', 51673874694273881051, 82),
('ZCMJWTLOIUUNADPZBLDVUAKWFYONQLFAZJZHJEFKYPSGNXCIZH', 'KKAHFIJLXZAFPRBNXFLJAUTYIKSFAVQVUUHEATLTWDXXCKZWVT', 'EUQKBPIQDOJBQTIXDLKNBNQJ@XYAYPTTNQTKQGGDJ.XFXTPSXG', 66049525722486499807, 51),
('MGFCRNDLKYUEWRAYRYQGXLEVFMLSUXMQXMBTDLZTXWZFVUYAYF', 'ZECWZOZENGXDOIWEERZWGHCUDCPQJAGTQVHGNUKOCTXLBNGFKT', 'PNBGYQVTHPSELLDVYOHFALXS@DQNCQACQXAQDWXBO.DMBZVFJI', 85412235226565168164, 17),
('XHJAUMNJOVPVNMWGRUWQTYCIXDYDYSVUKPUMUEOQFRYPHKGSJG', 'JDKLKAZBTYZILUJEZVTENMWWYZGLRZYCWMNRSXSGRTXRJQZCEU', 'KZKPGPPSDHHJAZXPJIUATGTU@LIJXSGLPKKETNLAO.JUPHQALS', 98381594750127860733, 11),
('GVTBAHPUOEZSKHRNYPCYAKOWUSCMYKPPASESTLNMLJTBVQKKYW', 'NUQFUOLVGPUHHPIQZQDJCAZBTDAKNPEEQHSPUPKPOVWMYPLDYI', 'ALUVLAXFNNEIIIUHHIYKLAOY@KTDJICJWUXLZEQBM.WTIMUMAK', 20048243782957549987, 13),
('PRSQYRCIBBZJHPAZXYVRGXEGHELXWGHBNKMIMRDWTOUOHGPQNR', 'WFHJAHUWKWRZOOLPZEEWCQQLMYPHOXLQXSCGCYIQTEMDHHVEGL', 'YFSIAOIMVUPMBZUUDWRRKBIA@AKTKIXGSNVOINZCO.HATEXWGA', 11249903543962084204, 19),
('JWHNPMKBRPBAYAXHWNWBQYPAXZPZQHEITCIDHSRPZGCKGAMDLW', 'HIDRTMBBLAKTMLPQLHYPZVTQLKRBOLWBEPRYLIHVRGSUSWDDTV', 'TLGVVIKWLCMIBKUUUSGXTHAV@SJNVRUHGDHPNXVQH.CTBENIAW', 72915958134261104037, 62),
('NCDPJPBCYWLIHUTKKCNDWJRLHPHOVMUEPCFWAYVUMPKNASSWFE', 'XUODIDIYITMTMWNBFZOVXYKMXLQBQPCPAPWDDRGJLWITTFTGFH', 'DBTCDNMKMEHCVUYGEBJWLJQC@QKDGKJVVZJRTXTNK.EGRRDAPV', 98257395516217359983, 66),
('BEOZREHGTSFMGFNJRLZYVGJHHQTSDUQINEDRKCWPQLRWAJRFZW', 'USALNTVQARHXLXENEKKBMETBRYFENKGHFOVKXVOISCBZSTRXYH', 'ZAWZNDHZJQBHHCAQBZXNCGBS@TCXVAXCPFDKARLUK.NKFEQUVN', 08324370969637767247, 70),
('MMPMZEHGMNEIKJQRJVRTNEYZJOUQTJBGBNRQLBHYEYQYBWMNCC', 'GDWEKJFSCFWDBNXBUONGNAYDYLBZVZNKOWDOBGQVWXBORYZRGW', 'DTTJLGXGGLLFGBKDATQAKXXS@MHIATNGPJCBGHJAE.JBGSIDYN', 11241238792007729287, 30),
('NERYUXPJDZGOAWBEHYKRUXQKFVVXEQSRCARAJSJAAMYXYDFHRV', 'NACQUNBEBJTAOAVEPHDSELFSEERZBKOVBPXMPRETRRQPKGSJKK', 'TSOYTSXJHPBLSOPFZTWKBETP@ECHNZAMULMBPPNKQ.WBCCRWMC', 50661494226738889474, 7),
('IZQOBGXAYYUOLONSBTQBRJXQSRVOCUCFPYJZSMMXASUWYKLIZT', 'WUUODUNNZCUDTFFZTNVVACRJMVEOTASVJNXMYYCHRNTVQACQCX', 'ZPZEQPRIHPTWSHOUKUTXTFPS@VJVIABYKTPFMWTTX.NCMMWHGH', 26457682959240223460, 1),
('VLYCZPDTXXBYDFYHTUVPTOIHJHJDHCSEGZCHFRJJYYTFYACEWY', 'UVEIWOIDSHKFTXZDICJPFZVQFQJTVDIAWYNEZSMTRWRDJRKRXA', 'TZNBTDHVFFKBATYZVWLXEPEP@BEADIRMTIYBJCQJQ.FDOZQRCA', 37491909194118247528, 34),
('VSGLBBYMVHLTNZENJFNNKUSCEKEAOIRYGZPKQLLQJFFZLDHIHX', 'BWARJUAXSTCPOUWJGMYSQQQACMRQCRLNZTCDDAPYBRHGIKBFYG', 'ZXIIYNTVRSJJJPIEIKZKVXJL@FQZUKIITJWEIRUVC.CDSNAGSE', 88766256617359510752, 68),
('DBAVJKXESGIZKALNBBSTFFTRRXDIUQCILMNYZTZAFHIUEZKFJM', 'IOWEVAPLZSPTCDQZEQQEJBKCXNMLCAQGHWYRWWNLIALFWOAJWL', 'EVRRVMKLLHLNWOJWENALBRRT@FGSUKQDWBDPQQKDW.EAGOKFZA', 32293048457561692575, 27),
('DWSBZKBVMFWTCBVKTGZAWAGJNQPVCTPVVAXSTRUJIECMKTCDNY', 'QLSSFBXSDORTQLTYZZTBHKVZWQSAEMZWAYUFSASKBKTCPXWLCR', 'TRGZYKMUPHOTZZKRNXARZESZ@VZUYFODVWMDKGXAR.SUSMVMEC', 23781744791813243383, 91),
('JLLQVCUWJXOVIEPNEADMKMZFAEFZWRGFGJIECUEGPVBVAXLKRE', 'WNCRLWISOXPJOKQIICYEZQSUSEYDXAPXYBIKECSAVAOOUUDYMN', 'RGSRDQNXHAXWJCDDTCGSIEMD@XWGYWBSZCLSUBNKM.XCRTNGBM', 05329252832561696164, 21),
('NUABTBOQCHXPCLUOQTWXHEBPIBPQXBBHCFCOLLWXORNYEIJVDH', 'NCDLHJKISMCCOOZPYAXMIWPHZTDUCATIQHIOCGCRHYQLXCCZNA', 'TDZCZUNMLOMQPKXNULLUKQUQ@ZGCYMNNDAYHVJWUR.UNMPXPZT', 08536160458663958738, 84),
('YFFOJCBKGJSEJXZYSXOKVUZOQFKSSQGMQVXMMYYMYFACWGCCNU', 'JJXFQSPWDWITLLENAJZGLOIALIYGIIOZWCTGDSWHLEMBGMRDIJ', 'OZWGCSAAECPYNFGTLFHUHJHI@QDXMHGWFVVUXIRME.ACVBCHXO', 36936967681336311681, 1),
('EOHWYKNLIBVIYTZHJEHQMFKZIXXAANNEJJNZZHTJHFUTNIOMKF', 'XBIMFNKGJMQVXOSPZJKDNHCWJPWHEXUUUDEWLUFVBYYMWGTSGU', 'ZHOPSNIVCCNXCGQOBVNSYTMA@RKPZRVOROLONVLHQ.UFPZGPBD', 97230849191621160508, 49),
('KHXXNYKFQJLNCLYEDCDHHPHTGVWTWAENACVDVWESQUMWMORIVJ', 'IIPLGAECJAXRTJETHLHFSNTPAOOIEZVRZLWYYQQLZZDTGVLJRJ', 'MOIJIFWITZGXTQILTEDEWGLY@GLPVBNZRXHEEVGAE.UJLARUDH', 43154496418198163819, 50),
('TMRJPATGRVQGFRMUDFIZFAOMSARYFDAZWKZQOBVVEKOPWBEFYO', 'IBFFEMQBPAWQAVXHRKPILVRKAWOVQWXIIUJACXBQTWFGYKAXAK', 'LUCORSZIVOQLTVBIXDNERBFV@IINDLWTDMJUVGJEV.DOXBWAJB', 70269670896698774233, 56),
('VYUZOSTXVZFEKUOZIEFFPHROLGPCDJAYQMHRCYPQRGFUZAJXKM', 'PUMXWTCPQWUZMBKPVISGSIRZYBFNPSNYDLWWEZQWSHEXMTXPVR', 'DZUPWZFFNEOYWNDZIYFCUJYY@LVJGVHLYDWCRUWEC.CNBSKAXP', 12382544511707419158, 55),
('LTGPLJOOUUZXLAFIHAMHYDECUFPTTNUVUVBQZGFJDLYIEZBPFR', 'QHKYIFCIBTKHVNGXSJCTJMUXMSUWXPFRVPCWRRNCVSUURWZFNK', 'PRKNLMZTLDIOQWTWAMHFXZKG@KKDFISFZPQAQKGUO.XMUJXGMT', 77949805377847799933, 87),
('XLKXUULMSYUKHYQLUJKHQZZJMHQRTSZCDYPPSSOGNDLSNKFXLH', 'JKYJVOIXUGKYXBKLNCDIZBGHCWWEQDUAUJWLVDSFBTPDVMCWJB', 'TYPHXQTRKQPUUOCUZROHODWF@VAPHPATBCQHOSSOM.WFIEHFLY', 11625089851035713717, 37),
('RNFYZADHIIVODJZKUTIYQUWDYOPFHSEOSZXLHFBKJNZNCPHZCF', 'RMNLBCPIYZTUWWVZZKUVNEASTRQWXRWQLTWDEZHYALIDVRECOH', 'KPZZRCKEZBMUVQREJNIGSEJL@KGSYBQVFABEDGRMB.LGLTZMBR', 38218289398383526200, 88),
('SPXONNVJRIDUBLRHTYRHQMDXQDPJSIYEDUAUKGMFBZBNZBLIBF', 'RGKVDCMCZJHLRSCLBJMTBUQFJPBXITETAUDSLKGBQUEYRKYRJS', 'XBGABZISZDKDXTDTVYMZICRK@VQSITZEEJJWMOWCE.VHHRISLQ', 71830011245150377004, 12),
('HCADMNJJGQNXIKKYKQTANJHCTGQAJGOZYSJKJYLHYHGCTDWENZ', 'EHTTEFEYHIPPCSIVZLXMVFEIDIOHVBITFTNRGXEWMNQSIHFMPA', 'DTZHACGPNRJOPGCHCXUKVGNI@BJHCHVDBDXWNYOXY.CBEORZDI', 52844957392513967251, 7),
('IUPQQGGSEUGXBNKHZAYPJZVYPBAIVGTHLMCQVYCHMZZRMHWDFV', 'TJPBUYIZWILQJPVFWFNCCQCUVQAFWPUGXLRAZNSFBYLBNHPMYZ', 'UAOSYTUMSXNIVSBDUUOMZJCV@DBBKSYQDGEZWREAA.CDXLCPVB', 99734540103809045029, 2),
('XFARCOSRZTMNVDFYGAMEGNLEPKLBSZCFXFDOBLYDPXCNSMFRMR', 'XNZAJZJATMIIVYEQPPQHCNYAERZUKOKYUXATKHIRJFBCFCAEBR', 'AYBKEBXNAPPIRTVGZWPZUSYN@ZXWIRGOHZIWESGAS.EWXJIGPS', 99080765870155095580, 19),
('LMTWSNWWNYHJHEOYEWTAUMZTTWHQRGJEASGQPBUTXDZZETHMLN', 'NLNPFUOAMEPTLUJNWMNKJKBLGZUXMQJCOXHPEMZFTZEQWCJDMY', 'CGIKVIWORDUIFALIEKSMKFTL@UVPIPJSGDTWHTTDD.SMMYVMFO', 87461340131215559890, 42),
('GXQYWOCPRKLJNYWUEAODJTEDSRDOILPSQPKVJRDXZLUGOCYKAP', 'CTMPXUYTQQVDWJFANHUMVIPFZDRMUQKYQWDTXCHILPJKKRWXBO', 'HRNCRUEWDTCCKZCSVBTVFWKI@PJFPACQBBHQZYNHU.ZTSKVKYN', 33269013324467451002, 85),
('SUWYEHAFWQJBHMZHDSAUNFLPHNOGFDYWTFSOHFJRZGZWNLZPFQ', 'GYWRLRZRMJHCZZTYMDDTMYEGBQRACDSXERJEFDQYFTQMXFKMFM', 'GAZPAPLWXKAMSBQVCGDDSNWZ@QDNRSTRRTKSBZZIS.KJOPOJQS', 95123039241133431197, 97),
('SDSZIAFAXOBOTTKNLEADRXMCMAHAOTUYSWCNFIBMFXPFDEUYQI', 'IECVESWWWNQCCKXNPMUHPDJYLCMRBSPFPGNCCRNLHDZUYUDXFM', 'PBZILCDTIQLLOMKXCELOVJNE@UIFWGGSSIQWPEQOG.GRLPHHAN', 13822878336100657302, 56),
('SZMYSTWJCFBELABWWBOWHAOMDACZIMUWITOYWSVKOVWYMLQGSQ', 'JFSKZKWGTGCHAUDHRYHCLIBXPHNIHEULYUIRXPSQPNVSPXKRPS', 'PQRPSBGSFPPQKBSDXCTEZMXF@BEIBHSGWTXDDDIVW.FORCAXTG', 95135938133000392858, 39),
('NMTTMTUYQFAMVCMUXKKNQQGOBFDAUSKGBTPRCIULTFXCMPUDVU', 'RINQPHGOTZBVRFNEBIVZQOLGDXUIFQVNDAHQGFIFOMGFFDMAOM', 'WORWYKUHUUWBEEVDMVXNGHCD@BVLRPWUZJRZPDQIZ.LWJRFXNQ', 53357618379227062349, 55),
('HDGHKTVRMPHLADLXPIDOXWBUVCVUMKYDJXKJGWRZDKGAGHYQJE', 'FRWBKKFSZTQDVBHJNHBSRYBQUMRLINQZRJXHLXFUOEBZNJIASG', 'ABMVDRWWPDQOLITUUBKWAQSE@QOKHYIZQSFMWFPTY.IHACIPFF', 31763409504632022332, 45),
('DDBCSYQCKDODYNKMAMJNXLWIEVRQFTITJCEHOLZWTMGEXERUMV', 'LLIWOYCZXKGFFQXIKEHXSMMGZCYAGDFBTMRAWUCFOJNSMOEJUM', 'ZMLNXNGTAJPKTYUGCLFNEDPK@MSQJQSPEABDKCMEG.NGFKQRND', 95073907950496206945, 40),
('CAUJPLBIQPMMCOYLRYLGFSYJAUCFERQPTBTPWEEHVTATECXJMA', 'TPNXHSHVLZQUDUXRTREFKXTSCKYKPONFLDBXKTDKIILAQVLDYE', 'WXNGSZCQTFGASSXWLGQZKGLF@HQNPLZVIGLGBATDZ.JHHZHKWT', 01104256348954688186, 55),
('QGRIEHBSGHWGVZZGDVUSJNERSLKFMXNWFVMNJSKIVZKKOVETYG', 'OGNWQASZORFJSFOAOUFDXFHXZROWTVGGSZHQWBBBKWVVLRBYZV', 'YJQNXNMWWBYWDRKTVSREJPIL@LMOOVAVPQICDQFZD.YNTPOGRV', 05997358055593664410, 22),
('CBUXGAQJEUYNLHKHCIZDDQIBNFKAQKYPXUZXAJFCOVGHDRWYYZ', 'TPKNRHOAIJDHDBDZUIGXUYWJHTZVXEHVWVMHZWSMNRSKZSEYXA', 'JCUERATJGFLAVSMFMQJMCOJQ@MGODOBGRTCEEJYRO.BEDLDWMS', 10603223570494509304, 30),
('BZOYIUWGJFDTDBHQWQDJYVWVRYSITONEVNIEYYSCJTHVNLWEDG', 'GTFLVASEAKUWVQSAWFBPFCHQTYSHEDOYIWTSTVJIQQKDBENIDS', 'TCMNDUACOGYJRWQCAARLVHLN@YCBSOGQESRNTYOVL.QZDALHMK', 88258965105141030639, 16),
('MEASQXUOPDNEVIVSYCFFEHCQUCUTBOLIAURYBZWSNAJTPYSTTU', 'ZTXFLYHOUKPZAVFMSSOQFNBOTRCSWJYAOJCEVEOJVKDVXIVTJM', 'URJNBGYDLVGQBZHLAJVFJQFL@XWWTHEROAVTIIPSD.ABBONXOV', 20782898978602260128, 83),
('GBEBHPLDNCOWUWDBQZZNQJXLSRSASKCSVMYUALYNVPAQXFBUJX', 'KKKMXGFZSOHAQURYUGHVXHWOEDPKUAKNRIJAOGJPNHJIXQFIBG', 'TMXXVITJVTSYASKJINQSPJJL@KTINGHZSEPNNFTFC.WRPEGGBS', 60385530101991903474, 8),
('WHLELTIUMFAYOZWRFMJXDQYHEVAPQJZHEMCCEWFRLWHLBMPKHJ', 'VTFWRDTEBRWEKYTZQEVOJMEXJRMWRLTLEYLMOXJSCWWHDHWVRQ', 'MTKITHTPGCVWTMMCPUNGQNTR@BMPLWAHRFSJWWCFR.HOZUNNPO', 71169587562133351967, 2),
('ITKUVJTRMDSOHQYZCJTZPIGSIVWVPFMYPPSPICIMISDFUXSSYL', 'GULABYFRMXNPBBNYKZDQNFJQPDQYDVHGYQMAZLWOYKDUDDJPHL', 'AXHVWHJBXNQAMYUWGSTNNIIT@NFHJHYXPQXTOQDKL.JXFKBKJP', 19938318200679984540, 78),
('MBBAKPQIRCNINYMRUXOKXZYTMPRIEVMOWJUFLYMLXAUFRRVYRJ', 'QWHNPPSAURQGPJXWBOGDJQGYORJPQUTSCUARSZLWHFLCDXIPAQ', 'JCARKBVDTJDRMDEJKWQTHUFU@LBFGMWOCNKFKBGVX.OQSAMBRN', 61259932748708046671, 100),
('MAZGVDSIMUCMEJHUOKNEZKBMLAKIRJCEDMZAUEPYNCOIKVSCGR', 'FTVITKKRZMMFEOMVFWYTFBYJUBQQAFTGMXZFCDAIUUTMTBCVOU', 'NUTTSYCCPTSUMVABBTATJFRK@RWLJAIDRWZXQJYHB.ARVBVLOE', 83482379720312295501, 55),
('RKOASAWJLARKYNLJHUKIREWZIWAOXWMYABAETEZOFKNMSLORHI', 'HCJZQXPXXZQMBAXPPSTJBBEGIANLUUNPUJZLHHOJIFWOPVHHPX', 'QSTDRMWDWRVVGVXVRTOITQNI@BMLZLKQLSMHWUYYU.UBFXLQIC', 87586154464539140955, 25),
('EWOOKTXBMGBZBSOGAGDSSCUVOWFJYHEYPYMNWPAAYOCAFJNCID', 'UQNRJKQFTOFMCEHRQXMAGKKAMCTXQOZQLKRHPILQWGCQRCSXTE', 'KSMVRARCHBGZOTEVPKBNJJMJ@XFCNWPHPRVPFETNI.VVVYVJXG', 22494161360253737282, 92),
('FTSFTATSULVUHTZMBKNYKSCRNLSEDPQOUSGUBELYSUJVTLQRCD', 'YBBLWGUGFIKGHUHIVGKIRGGZGNKKQJAAYJDBKKKBRRNLLEHPDO', 'FWBCZSKSITVEBGSUDVOZLYOM@ZUWINGULKUAVXUGN.LDPZGCNM', 15180451500731711655, 23),
('SAAJLGQVVNZFUMPRLCPZHNTZFXKUYQOKRKHVMYQYELBNKZVOOI', 'ONQIATPSXCLBULICQAXLEIFUFYOHTYHIFAFAKHCWDPLXBEGVDW', 'PDZJJGKHJXJIHWESCZHFTWOT@XVNUOYATIEUGMSUY.BTTUZTPF', 62773055566349967235, 74);

select * from employees;
select * from departments;
select * from countries;

--1
create index on countries (name);
explain analyze
select * from countries where name = 'RMFGPJUJRGXYFZQITOFOJEIHNACZIV';
--2
create index on employees (name,surname);
explain analyze
select * from employees where
name = 'BDOJEGAEEZMGUBTLVITKTASFXNMLXCNSDRAURLKCDZLEGGKLUN' and surname = 'NCADOBSCSMGBQZMIBZBSIFGBQWHADTFWKQGEHMQQIWBXFVBCAO';
--3
create unique index on employees (salary);
explain analyze
select * from employees where salary > 100 and salary < 110;
--4
create index on employees (substring(name from 1 for 4));
explain analyze
select * from employees where substring(name from 1 for 4) = 'BDOJ';
--5
create index employees_salary_index on employees (salary);
create index departments_department_id_index on departments(department_id);
explain analyze
select * from employees e join departments d on e.department_id = d.department_id where d.budget > 30000 and e.salary < 100;