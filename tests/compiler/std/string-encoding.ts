var str = "𐐷hi𤭢";
// utf8  : f0 90 90 b7 68 69 f0 a4 ad a2 [00]
// utf16 : d801_dc37 0068 0069 d852_df62

// UTF-16

function testUTF16Length(): void {
  assert(String.UTF16.byteLength(str) == 12);
}
testUTF16Length();

function testUTF16Encode(): void {
  var buf = String.UTF16.encode(str);
  var ptr = changetype<usize>(buf);
  assert(buf.byteLength == 12);
  assert(load<u8>(ptr, 0) == 0x01);
  assert(load<u8>(ptr, 1) == 0xD8);
  assert(load<u8>(ptr, 2) == 0x37);
  assert(load<u8>(ptr, 3) == 0xDC);
  assert(load<u8>(ptr, 4) == 0x68);
  assert(load<u8>(ptr, 5) == 0x00);
  assert(load<u8>(ptr, 6) == 0x69);
  assert(load<u8>(ptr, 7) == 0x00);
  assert(load<u8>(ptr, 8) == 0x52);
  assert(load<u8>(ptr, 9) == 0xD8);
  assert(load<u8>(ptr, 10) == 0x62);
  assert(load<u8>(ptr, 11) == 0xDF);
}
testUTF16Encode();

function testUTF16Decode(): void {
  var buf = String.UTF16.encode(str);
  assert(String.UTF16.decode(buf) == str);
}
testUTF16Decode();

function testUTF16DecodeUnsafe(): void {
  var buf = String.UTF16.encode(str);
  var len = String.UTF16.byteLength(str);
  var ptr = changetype<usize>(buf);

  assert(String.UTF16.decodeUnsafe(ptr, 0) == "");
  assert(String.UTF16.decodeUnsafe(ptr, len) == str);
  assert(String.UTF16.decodeUnsafe(ptr, 4) == "𐐷");
  assert(String.UTF16.decodeUnsafe(ptr + 4, 2) == "h");
  assert(String.UTF16.decodeUnsafe(ptr + 4, 4) == "hi");
  assert(String.UTF16.decodeUnsafe(ptr + 8, 4) == "𤭢");
  assert(String.UTF16.decodeUnsafe(ptr + 12, 0) == "");
}
testUTF16DecodeUnsafe();

// UTF-8

function testUTF8Length(): void {
  assert(String.UTF8.byteLength(str) == 10);
  assert(String.UTF8.byteLength(str, true) == 11);
}
testUTF8Length();

function testUTF8Encode(): void {
  var buf = String.UTF8.encode(str);
  var ptr = changetype<usize>(buf);
  assert(buf.byteLength == 10);
  assert(load<u8>(ptr, 0) == 0xF0);
  assert(load<u8>(ptr, 1) == 0x90);
  assert(load<u8>(ptr, 2) == 0x90);
  assert(load<u8>(ptr, 3) == 0xB7);
  assert(load<u8>(ptr, 4) == 0x68);
  assert(load<u8>(ptr, 5) == 0x69);
  assert(load<u8>(ptr, 6) == 0xF0);
  assert(load<u8>(ptr, 7) == 0xA4);
  assert(load<u8>(ptr, 8) == 0xAD);
  assert(load<u8>(ptr, 9) == 0xA2);
}
testUTF8Encode();

function testUTF8EncodeNullTerminated(): void {
  var buf = String.UTF8.encode(str, true);
  var ptr = changetype<usize>(buf);
  assert(buf.byteLength == 11);
  assert(load<u8>(ptr, 0) == 0xF0);
  assert(load<u8>(ptr, 1) == 0x90);
  assert(load<u8>(ptr, 2) == 0x90);
  assert(load<u8>(ptr, 3) == 0xB7);
  assert(load<u8>(ptr, 4) == 0x68);
  assert(load<u8>(ptr, 5) == 0x69);
  assert(load<u8>(ptr, 6) == 0xF0);
  assert(load<u8>(ptr, 7) == 0xA4);
  assert(load<u8>(ptr, 8) == 0xAD);
  assert(load<u8>(ptr, 9) == 0xA2);
  assert(load<u8>(ptr, 10) == 0x00);
}
testUTF8EncodeNullTerminated();

function testUTF8Decode(): void {
  var buf = String.UTF8.encode(str);
  assert(String.UTF8.decode(buf) == str);
}
testUTF8Decode();

function testUTF8DecodeNullTerminated(): void {
  var buf = String.UTF8.encode(str, true);
  assert(String.UTF8.decode(buf, true) == str);
  var str2 = "123\0456";
  assert(String.UTF8.byteLength(str2, true) == 4);
  var buf2 = String.UTF8.encode(str2, true);
  assert(buf2.byteLength == 4);
  var str3 = "123";
  assert(String.UTF8.byteLength(str3, true) == 4);
  assert(String.UTF8.decode(buf2, true) == str3);
  var buf3 = String.UTF8.encode(str2, false);
  assert(String.UTF8.decode(buf3, true) == str3);
}
testUTF8DecodeNullTerminated();

function testUTF8DecodeUnsafe(): void {
  var buf = String.UTF8.encode(str, true);
  var len = String.UTF8.byteLength(str, false); // !
  var ptr = changetype<usize>(buf);

  assert(String.UTF8.decodeUnsafe(ptr, 0) == "");
  assert(String.UTF8.decodeUnsafe(ptr, len) == str);
  assert(String.UTF8.decodeUnsafe(ptr, 4) == "𐐷");
  assert(String.UTF8.decodeUnsafe(ptr + 4, 2) == "hi");
  assert(String.UTF8.decodeUnsafe(ptr + 6, 4) == "𤭢");
  assert(String.UTF8.decodeUnsafe(ptr + 10, 0) == "");

  assert(String.UTF8.decodeUnsafe(ptr + 4, 100, true) == "hi𤭢");
  assert(String.UTF8.decodeUnsafe(ptr + 6, 100, true) == "𤭢");
  assert(String.UTF8.decodeUnsafe(ptr + 10, 100, true) == "");
}
testUTF8DecodeUnsafe();

function testLarge(str: string): void {
  var buf8 = String.UTF8.encode(str);
  assert(String.UTF8.decode(buf8) == str);
  var buf16 = String.UTF16.encode(str);
  assert(String.UTF16.decode(buf16) == str);
}

// https://www.w3.org/2001/06/utf-8-test/UTF-8-demo.html
testLarge(`Mathematics and Sciences:

∮ E⋅da = Q,  n → ∞, ∑ f(i) = ∏ g(i), ∀x∈ℝ: ⌈x⌉ = −⌊−x⌋, α ∧ ¬β = ¬(¬α ∨ β),

ℕ ⊆ ℕ₀ ⊂ ℤ ⊂ ℚ ⊂ ℝ ⊂ ℂ, ⊥ < a ≠ b ≡ c ≤ d ≪ ⊤ ⇒ (A ⇔ B),

2H₂ + O₂ ⇌ 2H₂O, R = 4.7 kΩ, ⌀ 200 mm

Linguistics and dictionaries:

ði ıntəˈnæʃənəl fəˈnɛtık əsoʊsiˈeıʃn
Y [ˈʏpsilɔn], Yen [jɛn], Yoga [ˈjoːgɑ]

APL:

((V⍳V)=⍳⍴V)/V←,V    ⌷←⍳→⍴∆∇⊃‾⍎⍕⌈

Nicer typography in plain text files:

╔══════════════════════════════════════════╗
║                                          ║
║   • ‘single’ and “double” quotes         ║
║                                          ║
║   • Curly apostrophes: “We’ve been here” ║
║                                          ║
║   • Latin-1 apostrophe and accents: '´\`  ║
║                                          ║
║   • ‚deutsche‘ „Anführungszeichen“       ║
║                                          ║
║   • †, ‡, ‰, •, 3–4, —, −5/+5, ™, …      ║
║                                          ║
║   • ASCII safety test: 1lI|, 0OD, 8B     ║
║                      ╭─────────╮         ║
║   • the euro symbol: │ 14.95 € │         ║
║                      ╰─────────╯         ║
╚══════════════════════════════════════════╝

Greek (in Polytonic):

The Greek anthem:

Σὲ γνωρίζω ἀπὸ τὴν κόψη
τοῦ σπαθιοῦ τὴν τρομερή,
σὲ γνωρίζω ἀπὸ τὴν ὄψη
ποὺ μὲ βία μετράει τὴ γῆ.

᾿Απ᾿ τὰ κόκκαλα βγαλμένη
τῶν ῾Ελλήνων τὰ ἱερά
καὶ σὰν πρῶτα ἀνδρειωμένη
χαῖρε, ὦ χαῖρε, ᾿Ελευθεριά!

From a speech of Demosthenes in the 4th century BC:

Οὐχὶ ταὐτὰ παρίσταταί μοι γιγνώσκειν, ὦ ἄνδρες ᾿Αθηναῖοι,
ὅταν τ᾿ εἰς τὰ πράγματα ἀποβλέψω καὶ ὅταν πρὸς τοὺς
λόγους οὓς ἀκούω· τοὺς μὲν γὰρ λόγους περὶ τοῦ
τιμωρήσασθαι Φίλιππον ὁρῶ γιγνομένους, τὰ δὲ πράγματ᾿
εἰς τοῦτο προήκοντα,  ὥσθ᾿ ὅπως μὴ πεισόμεθ᾿ αὐτοὶ
πρότερον κακῶς σκέψασθαι δέον. οὐδέν οὖν ἄλλο μοι δοκοῦσιν
οἱ τὰ τοιαῦτα λέγοντες ἢ τὴν ὑπόθεσιν, περὶ ἧς βουλεύεσθαι,
οὐχὶ τὴν οὖσαν παριστάντες ὑμῖν ἁμαρτάνειν. ἐγὼ δέ, ὅτι μέν
ποτ᾿ ἐξῆν τῇ πόλει καὶ τὰ αὑτῆς ἔχειν ἀσφαλῶς καὶ Φίλιππον
τιμωρήσασθαι, καὶ μάλ᾿ ἀκριβῶς οἶδα· ἐπ᾿ ἐμοῦ γάρ, οὐ πάλαι
γέγονεν ταῦτ᾿ ἀμφότερα· νῦν μέντοι πέπεισμαι τοῦθ᾿ ἱκανὸν
προλαβεῖν ἡμῖν εἶναι τὴν πρώτην, ὅπως τοὺς συμμάχους
σώσομεν. ἐὰν γὰρ τοῦτο βεβαίως ὑπάρξῃ, τότε καὶ περὶ τοῦ
τίνα τιμωρήσεταί τις καὶ ὃν τρόπον ἐξέσται σκοπεῖν· πρὶν δὲ
τὴν ἀρχὴν ὀρθῶς ὑποθέσθαι, μάταιον ἡγοῦμαι περὶ τῆς
τελευτῆς ὁντινοῦν ποιεῖσθαι λόγον.

Δημοσθένους, Γ´ ᾿Ολυνθιακὸς

Georgian:

From a Unicode conference invitation:

გთხოვთ ახლავე გაიაროთ რეგისტრაცია Unicode-ის მეათე საერთაშორისო
კონფერენციაზე დასასწრებად, რომელიც გაიმართება 10-12 მარტს,
ქ. მაინცში, გერმანიაში. კონფერენცია შეჰკრებს ერთად მსოფლიოს
ექსპერტებს ისეთ დარგებში როგორიცაა ინტერნეტი და Unicode-ი,
ინტერნაციონალიზაცია და ლოკალიზაცია, Unicode-ის გამოყენება
ოპერაციულ სისტემებსა, და გამოყენებით პროგრამებში, შრიფტებში,
ტექსტების დამუშავებასა და მრავალენოვან კომპიუტერულ სისტემებში.

Russian:

From a Unicode conference invitation:

Зарегистрируйтесь сейчас на Десятую Международную Конференцию по
Unicode, которая состоится 10-12 марта 1997 года в Майнце в Германии.
Конференция соберет широкий круг экспертов по  вопросам глобального
Интернета и Unicode, локализации и интернационализации, воплощению и
применению Unicode в различных операционных системах и программных
приложениях, шрифтах, верстке и многоязычных компьютерных системах.

Thai (UCS Level 2):

Excerpt from a poetry on The Romance of The Three Kingdoms (a Chinese
classic 'San Gua'):

[----------------------------|------------------------]
  ๏ แผ่นดินฮั่นเสื่อมโทรมแสนสังเวช  พระปกเกศกองบู๊กู้ขึ้นใหม่
สิบสองกษัตริย์ก่อนหน้าแลถัดไป       สององค์ไซร้โง่เขลาเบาปัญญา
  ทรงนับถือขันทีเป็นที่พึ่ง           บ้านเมืองจึงวิปริตเป็นนักหนา
โฮจิ๋นเรียกทัพทั่วหัวเมืองมา         หมายจะฆ่ามดชั่วตัวสำคัญ
  เหมือนขับไสไล่เสือจากเคหา      รับหมาป่าเข้ามาเลยอาสัญ
ฝ่ายอ้องอุ้นยุแยกให้แตกกัน          ใช้สาวนั้นเป็นชนวนชื่นชวนใจ
  พลันลิฉุยกุยกีกลับก่อเหตุ          ช่างอาเพศจริงหนาฟ้าร้องไห้
ต้องรบราฆ่าฟันจนบรรลัย           ฤๅหาใครค้ำชูกู้บรรลังก์ ฯ

(The above is a two-column text. If combining characters are handled
correctly, the lines of the second column should be aligned with the
| character above.)

Ethiopian:

Proverbs in the Amharic language:

ሰማይ አይታረስ ንጉሥ አይከሰስ።
ብላ ካለኝ እንደአባቴ በቆመጠኝ።
ጌጥ ያለቤቱ ቁምጥና ነው።
ደሀ በሕልሙ ቅቤ ባይጠጣ ንጣት በገደለው።
የአፍ ወለምታ በቅቤ አይታሽም።
አይጥ በበላ ዳዋ ተመታ።
ሲተረጉሙ ይደረግሙ።
ቀስ በቀስ፥ ዕንቁላል በእግሩ ይሄዳል።
ድር ቢያብር አንበሳ ያስር።
ሰው እንደቤቱ እንጅ እንደ ጉረቤቱ አይተዳደርም።
እግዜር የከፈተውን ጉሮሮ ሳይዘጋው አይድርም።
የጎረቤት ሌባ፥ ቢያዩት ይስቅ ባያዩት ያጠልቅ።
ሥራ ከመፍታት ልጄን ላፋታት።
ዓባይ ማደሪያ የለው፥ ግንድ ይዞ ይዞራል።
የእስላም አገሩ መካ የአሞራ አገሩ ዋርካ።
ተንጋሎ ቢተፉ ተመልሶ ባፉ።
ወዳጅህ ማር ቢሆን ጨርስህ አትላሰው።
እግርህን በፍራሽህ ልክ ዘርጋ።

Runes:

ᚻᛖ ᚳᚹᚫᚦ ᚦᚫᛏ ᚻᛖ ᛒᚢᛞᛖ ᚩᚾ ᚦᚫᛗ ᛚᚪᚾᛞᛖ ᚾᚩᚱᚦᚹᛖᚪᚱᛞᚢᛗ ᚹᛁᚦ ᚦᚪ ᚹᛖᛥᚫ

(Old English, which transcribed into Latin reads 'He cwaeth that he
bude thaem lande northweardum with tha Westsae.' and means 'He said
that he lived in the northern land near the Western Sea.')

Braille:

⡌⠁⠧⠑ ⠼⠁⠒  ⡍⠜⠇⠑⠹⠰⠎ ⡣⠕⠌

⡍⠜⠇⠑⠹ ⠺⠁⠎ ⠙⠑⠁⠙⠒ ⠞⠕ ⠃⠑⠛⠔ ⠺⠊⠹⠲ ⡹⠻⠑ ⠊⠎ ⠝⠕ ⠙⠳⠃⠞
⠱⠁⠞⠑⠧⠻ ⠁⠃⠳⠞ ⠹⠁⠞⠲ ⡹⠑ ⠗⠑⠛⠊⠌⠻ ⠕⠋ ⠙⠊⠎ ⠃⠥⠗⠊⠁⠇ ⠺⠁⠎
⠎⠊⠛⠝⠫ ⠃⠹ ⠹⠑ ⠊⠇⠻⠛⠹⠍⠁⠝⠂ ⠹⠑ ⠊⠇⠻⠅⠂ ⠹⠑ ⠥⠝⠙⠻⠞⠁⠅⠻⠂
⠁⠝⠙ ⠹⠑ ⠡⠊⠑⠋ ⠍⠳⠗⠝⠻⠲ ⡎⠊⠗⠕⠕⠛⠑ ⠎⠊⠛⠝⠫ ⠊⠞⠲ ⡁⠝⠙
⡎⠊⠗⠕⠕⠛⠑⠰⠎ ⠝⠁⠍⠑ ⠺⠁⠎ ⠛⠕⠕⠙ ⠥⠏⠕⠝ ⠰⡡⠁⠝⠛⠑⠂ ⠋⠕⠗ ⠁⠝⠹⠹⠔⠛ ⠙⠑
⠡⠕⠎⠑ ⠞⠕ ⠏⠥⠞ ⠙⠊⠎ ⠙⠁⠝⠙ ⠞⠕⠲

⡕⠇⠙ ⡍⠜⠇⠑⠹ ⠺⠁⠎ ⠁⠎ ⠙⠑⠁⠙ ⠁⠎ ⠁ ⠙⠕⠕⠗⠤⠝⠁⠊⠇⠲

⡍⠔⠙⠖ ⡊ ⠙⠕⠝⠰⠞ ⠍⠑⠁⠝ ⠞⠕ ⠎⠁⠹ ⠹⠁⠞ ⡊ ⠅⠝⠪⠂ ⠕⠋ ⠍⠹
⠪⠝ ⠅⠝⠪⠇⠫⠛⠑⠂ ⠱⠁⠞ ⠹⠻⠑ ⠊⠎ ⠏⠜⠞⠊⠊⠥⠇⠜⠇⠹ ⠙⠑⠁⠙ ⠁⠃⠳⠞
⠁ ⠙⠕⠕⠗⠤⠝⠁⠊⠇⠲ ⡊ ⠍⠊⠣⠞ ⠙⠁⠧⠑ ⠃⠑⠲ ⠔⠊⠇⠔⠫⠂ ⠍⠹⠎⠑⠇⠋⠂ ⠞⠕
⠗⠑⠛⠜⠙ ⠁ ⠊⠕⠋⠋⠔⠤⠝⠁⠊⠇ ⠁⠎ ⠹⠑ ⠙⠑⠁⠙⠑⠌ ⠏⠊⠑⠊⠑ ⠕⠋ ⠊⠗⠕⠝⠍⠕⠝⠛⠻⠹
⠔ ⠹⠑ ⠞⠗⠁⠙⠑⠲ ⡃⠥⠞ ⠹⠑ ⠺⠊⠎⠙⠕⠍ ⠕⠋ ⠳⠗ ⠁⠝⠊⠑⠌⠕⠗⠎
⠊⠎ ⠔ ⠹⠑ ⠎⠊⠍⠊⠇⠑⠆ ⠁⠝⠙ ⠍⠹ ⠥⠝⠙⠁⠇⠇⠪⠫ ⠙⠁⠝⠙⠎
⠩⠁⠇⠇ ⠝⠕⠞ ⠙⠊⠌⠥⠗⠃ ⠊⠞⠂ ⠕⠗ ⠹⠑ ⡊⠳⠝⠞⠗⠹⠰⠎ ⠙⠕⠝⠑ ⠋⠕⠗⠲ ⡹⠳
⠺⠊⠇⠇ ⠹⠻⠑⠋⠕⠗⠑ ⠏⠻⠍⠊⠞ ⠍⠑ ⠞⠕ ⠗⠑⠏⠑⠁⠞⠂ ⠑⠍⠏⠙⠁⠞⠊⠊⠁⠇⠇⠹⠂ ⠹⠁⠞
⡍⠜⠇⠑⠹ ⠺⠁⠎ ⠁⠎ ⠙⠑⠁⠙ ⠁⠎ ⠁ ⠙⠕⠕⠗⠤⠝⠁⠊⠇⠲

(The first couple of paragraphs of "A Christmas Carol" by Dickens)

Compact font selection example text:

ABCDEFGHIJKLMNOPQRSTUVWXYZ /0123456789
abcdefghijklmnopqrstuvwxyz £©µÀÆÖÞßéöÿ
–—‘“”„†•…‰™œŠŸž€ ΑΒΓΔΩαβγδω АБВГДабвгд
∀∂∈ℝ∧∪≡∞ ↑↗↨↻⇣ ┐┼╔╘░►☺♀ ﬁ�⑀₂ἠḂӥẄɐː⍎אԱა

Greetings in various languages:

Hello world, Καλημέρα κόσμε, コンニチハ

Box drawing alignment tests:                                          █
                                                                    ▉
╔══╦══╗  ┌──┬──┐  ╭──┬──╮  ╭──┬──╮  ┏━━┳━━┓  ┎┒┏┑   ╷  ╻ ┏┯┓ ┌┰┐    ▊ ╱╲╱╲╳╳╳
║┌─╨─┐║  │╔═╧═╗│  │╒═╪═╕│  │╓─╁─╖│  ┃┌─╂─┐┃  ┗╃╄┙  ╶┼╴╺╋╸┠┼┨ ┝╋┥    ▋ ╲╱╲╱╳╳╳
║│╲ ╱│║  │║   ║│  ││ │ ││  │║ ┃ ║│  ┃│ ╿ │┃  ┍╅╆┓   ╵  ╹ ┗┷┛ └┸┘    ▌ ╱╲╱╲╳╳╳
╠╡ ╳ ╞╣  ├╢   ╟┤  ├┼─┼─┼┤  ├╫─╂─╫┤  ┣┿╾┼╼┿┫  ┕┛┖┚     ┌┄┄┐ ╎ ┏┅┅┓ ┋ ▍ ╲╱╲╱╳╳╳
║│╱ ╲│║  │║   ║│  ││ │ ││  │║ ┃ ║│  ┃│ ╽ │┃  ░░▒▒▓▓██ ┊  ┆ ╎ ╏  ┇ ┋ ▎
║└─╥─┘║  │╚═╤═╝│  │╘═╪═╛│  │╙─╀─╜│  ┃└─╂─┘┃  ░░▒▒▓▓██ ┊  ┆ ╎ ╏  ┇ ┋ ▏
╚══╩══╝  └──┴──┘  ╰──┴──╯  ╰──┴──╯  ┗━━┻━━┛           └╌╌┘ ╎ ┗╍╍┛ ┋  ▁▂▃▄▅▆▇█
`);

// https://www.cl.cam.ac.uk/~mgk25/ucs/examples/quickbrown.txt
testLarge(`Sentences that contain all letters commonly used in a language
--------------------------------------------------------------

Markus Kuhn <http://www.cl.cam.ac.uk/~mgk25/> -- 2012-04-11

This is an example of a plain-text file encoded in UTF-8.


Danish (da)
---------

  Quizdeltagerne spiste jordbær med fløde, mens cirkusklovnen
  Wolther spillede på xylofon.
  (= Quiz contestants were eating strawbery with cream while Wolther
  the circus clown played on xylophone.)

German (de)
-----------

  Falsches Üben von Xylophonmusik quält jeden größeren Zwerg
  (= Wrongful practicing of xylophone music tortures every larger dwarf)

  Zwölf Boxkämpfer jagten Eva quer über den Sylter Deich
  (= Twelve boxing fighters hunted Eva across the dike of Sylt)

  Heizölrückstoßabdämpfung
  (= fuel oil recoil absorber)
  (jqvwxy missing, but all non-ASCII letters in one word)

Greek (el)
----------

  Γαζέες καὶ μυρτιὲς δὲν θὰ βρῶ πιὰ στὸ χρυσαφὶ ξέφωτο
  (= No more shall I see acacias or myrtles in the golden clearing)

  Ξεσκεπάζω τὴν ψυχοφθόρα βδελυγμία
  (= I uncover the soul-destroying abhorrence)

English (en)
------------

  The quick brown fox jumps over the lazy dog

Spanish (es)
------------

  El pingüino Wenceslao hizo kilómetros bajo exhaustiva lluvia y
  frío, añoraba a su querido cachorro.
  (Contains every letter and every accent, but not every combination
  of vowel + acute.)

French (fr)
-----------

  Portez ce vieux whisky au juge blond qui fume sur son île intérieure, à
  côté de l'alcôve ovoïde, où les bûches se consument dans l'âtre, ce
  qui lui permet de penser à la cænogenèse de l'être dont il est question
  dans la cause ambiguë entendue à Moÿ, dans un capharnaüm qui,
  pense-t-il, diminue çà et là la qualité de son œuvre.

  l'île exiguë
  Où l'obèse jury mûr
  Fête l'haï volapük,
  Âne ex aéquo au whist,
  Ôtez ce vœu déçu.

  Le cœur déçu mais l'âme plutôt naïve, Louÿs rêva de crapaüter en
  canoë au delà des îles, près du mälström où brûlent les novæ.

Irish Gaelic (ga)
-----------------

  D'fhuascail Íosa, Úrmhac na hÓighe Beannaithe, pór Éava agus Ádhaimh

Hungarian (hu)
--------------

  Árvíztűrő tükörfúrógép
  (= flood-proof mirror-drilling machine, only all non-ASCII letters)

Icelandic (is)
--------------

  Kæmi ný öxi hér ykist þjófum nú bæði víl og ádrepa

  Sævör grét áðan því úlpan var ónýt
  (some ASCII letters missing)

Japanese (jp)
-------------

  Hiragana: (Iroha)

  いろはにほへとちりぬるを
  わかよたれそつねならむ
  うゐのおくやまけふこえて
  あさきゆめみしゑひもせす

  Katakana:

  イロハニホヘト チリヌルヲ ワカヨタレソ ツネナラム
  ウヰノオクヤマ ケフコエテ アサキユメミシ ヱヒモセスン

Hebrew (iw)
-----------

  ? דג סקרן שט בים מאוכזב ולפתע מצא לו חברה איך הקליטה

Polish (pl)
-----------

  Pchnąć w tę łódź jeża lub ośm skrzyń fig
  (= To push a hedgehog or eight bins of figs in this boat)

Russian (ru)
------------

  В чащах юга жил бы цитрус? Да, но фальшивый экземпляр!
  (= Would a citrus live in the bushes of south? Yes, but only a fake one!)

  Съешь же ещё этих мягких французских булок да выпей чаю
  (= Eat some more of these fresh French loafs and have some tea)

Thai (th)
---------

  [--------------------------|------------------------]
  ๏ เป็นมนุษย์สุดประเสริฐเลิศคุณค่า  กว่าบรรดาฝูงสัตว์เดรัจฉาน
  จงฝ่าฟันพัฒนาวิชาการ           อย่าล้างผลาญฤๅเข่นฆ่าบีฑาใคร
  ไม่ถือโทษโกรธแช่งซัดฮึดฮัดด่า     หัดอภัยเหมือนกีฬาอัชฌาสัย
  ปฏิบัติประพฤติกฎกำหนดใจ        พูดจาให้จ๊ะๆ จ๋าๆ น่าฟังเอย ฯ

  [The copyright for the Thai example is owned by The Computer
  Association of Thailand under the Royal Patronage of His Majesty the
  King.]

Turkish (tr)
------------

  Pijamalı hasta, yağız şoföre çabucak güvendi.
  (=Patient with pajamas, trusted swarthy driver quickly)
`);
