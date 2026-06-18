(module
 (type $0 (func))
 (type $1 (func (param i32 i32) (result i32)))
 (type $2 (func (result i32)))
 (type $3 (func (param i32) (result i32)))
 (type $4 (func (param i32)))
 (type $5 (func (param i32 i32)))
 (type $6 (func (param i32 i32 i32 i32)))
 (type $7 (func (param i32 i32 i64)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (global $resolve-binary/a (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/total (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/threshold (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/state (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/visitCount (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/pinSpace (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/iter (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/toSpace (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/white (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/fromSpace (mut i32) (i32.const 0))
 (global $~lib/rt/tlsf/ROOT (mut i32) (i32.const 0))
 (global $resolve-binary/foo (mut i32) (i32.const 0))
 (global $resolve-binary/bar (mut i32) (i32.const 0))
 (global $resolve-binary/bar2 (mut i32) (i32.const 0))
 (global $resolve-binary/baz (mut i32) (i32.const 0))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 44736))
 (memory $0 1)
 (data $0 (i32.const 1036) "\1c")
 (data $0.1 (i32.const 1048) "\02\00\00\00\08\00\00\00t\00r\00u\00e")
 (data $1 (i32.const 1068) "\1c")
 (data $1.1 (i32.const 1080) "\02\00\00\00\n\00\00\00f\00a\00l\00s\00e")
 (data $2 (i32.const 1104) "p\\\ea{\ce2~\8f\1a\c7C\c6\b0\b7\96\e5\ae\05\03\05\'\c6\ab\b7\bf7\cf\d0\b8\d1\ef\92\fe%\e5\1a\8eO\19\eb2\ebP\e2\a4?\14\bc\f5\88\r\b5P\99v\96!\dbH\bb\1a\c2\bd\f0\b4\15\07\c9{\ce\97\c0]\11l:\96\0b\13\9a\c7\1b\e0\c3V\df\84\f6\06\e3L6\12\197\c5\9e\b5p+\a8\ad\c5\9d\97\"\81E@|o\fc\dfNg\04\cd\c9\f2\c9\e6\0b\b96\d7\07\8f\a1\85\t\94\f8x9?\81:\0f \f4\'\8f\cb\ce\c8\a5\19\90\b9\a5o\a5\a0\84\14@aQY\84\00\a1\ed\cc\ce\1b\c2\d3\00\b4W\n?\16h\a9\00\90\acn2x\86\87\00\80z\17\b7&\d7\d8\00\00b\ac\c5\ebx\ad\00\00\e8\89\04#\c7\8a\00\00@v:k\0b\de\00\00\00\c5.\bc\a2\b1\00\00\00\04\bf\c9\1b\8e\00\00\00\a01\a9_\e3\00\00\00\80\f4 \e6\b5\00\00\00\00*\e7\84\91\00\00\00\00\10\a5\d4\e8\00\00\00\00@\b7C\ba\00\00\00\00\00\f9\02\95\00\00\00\00\00(k\ee\00\00\00\00\00 \bc\be\00\00\00\00\00\80\96\98\00\00\00\00\00\00$\f4\00\00\00\00\00\00P\c3\00\00\00\00\00\00@\9c\00\00\00\00\00\00\00\fa\00\00\00\00\00\00\00\c8\00\00\00\00\00\00\00\a0\00\00\00\00\00\00\00\80\cd\cc\cc\cc\cc\cc\cc\cc\0b\d7\a3p=\n\d7\a3<\dfO\8d\97n\12\83,e\19\e2X\17\b7\d1$\84G\1bG\ac\c5\a7\b6il\af\05\bd7\86\bdBz\e5\d5\94\bf\d6\fd\cea\84\11w\cc\ab\98\a5\b46A_p\89\bf\d5\ed\bd\ce\fe\e6\db\ff\aa$\cb\0b\ff\eb\af\cc\88Po\t\cc\bc\8c\14\0e\b4KB\13.\e1\10\d8\\\t5\dc$\b4\da\ac\b0:\f7|\1d\90\\\e1M\c4\be\94\95\e6J\b4\a462\aaw\b8\08]\1d\92\8e\ee\92\93\a6a\95\b6}J\1e\ec\eb\1a\11\92d\08\e5\bc\ef{\datP\a0\1d\97\b2,\f7\ba\80\00\c9\f1(\8a\92\95\00\9am\c1S;uD\cd\14\be\9aR\c5\ee\d3\ae\87\96\f7\db\9dXv%\06\12\c6I~\e0\91\b7\d1t\9e\0e\ca\00\83\f2\b5\87\fd?;\9a5\f5\f7\d2\ca2\fc\14^\f7_B\a2\f5\fcCK,\b3\ce\81\bb\949E\ad\1e\b1\cf")
 (data $3 (i32.const 1720) "\"\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$\"#$!\"#")
 (data $4 (i32.const 1980) "<")
 (data $4.1 (i32.const 1992) "\02\00\00\00\"\00\00\00r\00e\00s\00o\00l\00v\00e\00-\00b\00i\00n\00a\00r\00y\00.\00t\00s")
 (data $5 (i32.const 2044) "|")
 (data $5.1 (i32.const 2056) "\02\00\00\00d\00\00\00t\00o\00S\00t\00r\00i\00n\00g\00(\00)\00 \00r\00a\00d\00i\00x\00 \00a\00r\00g\00u\00m\00e\00n\00t\00 \00m\00u\00s\00t\00 \00b\00e\00 \00b\00e\00t\00w\00e\00e\00n\00 \002\00 \00a\00n\00d\00 \003\006")
 (data $6 (i32.const 2172) "<")
 (data $6.1 (i32.const 2184) "\02\00\00\00&\00\00\00~\00l\00i\00b\00/\00u\00t\00i\00l\00/\00n\00u\00m\00b\00e\00r\00.\00t\00s")
 (data $7 (i32.const 2236) "\1c")
 (data $7.1 (i32.const 2248) "\02\00\00\00\02\00\00\000")
 (data $8 (i32.const 2268) "<")
 (data $8.1 (i32.const 2280) "\02\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
 (data $9 (i32.const 2332) "<")
 (data $9.1 (i32.const 2344) "\02\00\00\00 \00\00\00~\00l\00i\00b\00/\00r\00t\00/\00i\00t\00c\00m\00s\00.\00t\00s")
 (data $12 (i32.const 2460) "<")
 (data $12.1 (i32.const 2472) "\02\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data $13 (i32.const 2524) ",")
 (data $13.1 (i32.const 2536) "\02\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s")
 (data $15 (i32.const 2604) "<")
 (data $15.1 (i32.const 2616) "\02\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s")
 (data $16 (i32.const 2668) "0\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009")
 (data $17 (i32.const 3068) "\1c\04")
 (data $17.1 (i32.const 3080) "\02\00\00\00\00\04\00\000\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\000\00a\000\00b\000\00c\000\00d\000\00e\000\00f\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\001\00a\001\00b\001\00c\001\00d\001\00e\001\00f\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\002\00a\002\00b\002\00c\002\00d\002\00e\002\00f\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\003\00a\003\00b\003\00c\003\00d\003\00e\003\00f\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\004\00a\004\00b\004\00c\004\00d\004\00e\004\00f\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\005\00a\005\00b\005\00c\005\00d\005\00e\005\00f\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\006\00a\006\00b\006\00c\006\00d\006\00e\006\00f\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\007\00a\007\00b\007\00c\007\00d\007\00e\007\00f\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\008\00a\008\00b\008\00c\008\00d\008\00e\008\00f\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009\009\00a\009\00b\009\00c\009\00d\009\00e\009\00f\00a\000\00a\001\00a\002\00a\003\00a\004\00a\005\00a\006\00a\007\00a\008\00a\009\00a\00a\00a\00b\00a\00c\00a\00d\00a\00e\00a\00f\00b\000\00b\001\00b\002\00b\003\00b\004\00b\005\00b\006\00b\007\00b\008\00b\009\00b\00a\00b\00b\00b\00c\00b\00d\00b\00e\00b\00f\00c\000\00c\001\00c\002\00c\003\00c\004\00c\005\00c\006\00c\007\00c\008\00c\009\00c\00a\00c\00b\00c\00c\00c\00d\00c\00e\00c\00f\00d\000\00d\001\00d\002\00d\003\00d\004\00d\005\00d\006\00d\007\00d\008\00d\009\00d\00a\00d\00b\00d\00c\00d\00d\00d\00e\00d\00f\00e\000\00e\001\00e\002\00e\003\00e\004\00e\005\00e\006\00e\007\00e\008\00e\009\00e\00a\00e\00b\00e\00c\00e\00d\00e\00e\00e\00f\00f\000\00f\001\00f\002\00f\003\00f\004\00f\005\00f\006\00f\007\00f\008\00f\009\00f\00a\00f\00b\00f\00c\00f\00d\00f\00e\00f\00f")
 (data $18 (i32.const 4124) "\\")
 (data $18.1 (i32.const 4136) "\02\00\00\00H\00\00\000\001\002\003\004\005\006\007\008\009\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z")
 (data $19 (i32.const 4220) "\1c")
 (data $19.1 (i32.const 4232) "\02\00\00\00\02\00\00\001")
 (data $20 (i32.const 4252) "\1c")
 (data $20.1 (i32.const 4264) "\02\00\00\00\02\00\00\002")
 (data $21 (i32.const 4293) "\a0\f6?")
 (data $21.1 (i32.const 4305) "\c8\b9\f2\82,\d6\bf\80V7($\b4\fa<\00\00\00\00\00\80\f6?")
 (data $21.2 (i32.const 4337) "\08X\bf\bd\d1\d5\bf \f7\e0\d8\08\a5\1c\bd\00\00\00\00\00`\f6?")
 (data $21.3 (i32.const 4369) "XE\17wv\d5\bfmP\b6\d5\a4b#\bd\00\00\00\00\00@\f6?")
 (data $21.4 (i32.const 4401) "\f8-\87\ad\1a\d5\bf\d5g\b0\9e\e4\84\e6\bc\00\00\00\00\00 \f6?")
 (data $21.5 (i32.const 4433) "xw\95_\be\d4\bf\e0>)\93i\1b\04\bd\00\00\00\00\00\00\f6?")
 (data $21.6 (i32.const 4465) "`\1c\c2\8ba\d4\bf\cc\84LH/\d8\13=\00\00\00\00\00\e0\f5?")
 (data $21.7 (i32.const 4497) "\a8\86\860\04\d4\bf:\0b\82\ed\f3B\dc<\00\00\00\00\00\c0\f5?")
 (data $21.8 (i32.const 4529) "HiUL\a6\d3\bf`\94Q\86\c6\b1 =\00\00\00\00\00\a0\f5?")
 (data $21.9 (i32.const 4561) "\80\98\9a\ddG\d3\bf\92\80\c5\d4MY%=\00\00\00\00\00\80\f5?")
 (data $21.10 (i32.const 4593) " \e1\ba\e2\e8\d2\bf\d8+\b7\99\1e{&=\00\00\00\00\00`\f5?")
 (data $21.11 (i32.const 4625) "\88\de\13Z\89\d2\bf?\b0\cf\b6\14\ca\15=\00\00\00\00\00`\f5?")
 (data $21.12 (i32.const 4657) "\88\de\13Z\89\d2\bf?\b0\cf\b6\14\ca\15=\00\00\00\00\00@\f5?")
 (data $21.13 (i32.const 4689) "x\cf\fbA)\d2\bfv\daS($Z\16\bd\00\00\00\00\00 \f5?")
 (data $21.14 (i32.const 4721) "\98i\c1\98\c8\d1\bf\04T\e7h\bc\af\1f\bd\00\00\00\00\00\00\f5?")
 (data $21.15 (i32.const 4753) "\a8\ab\ab\\g\d1\bf\f0\a8\823\c6\1f\1f=\00\00\00\00\00\e0\f4?")
 (data $21.16 (i32.const 4785) "H\ae\f9\8b\05\d1\bffZ\05\fd\c4\a8&\bd\00\00\00\00\00\c0\f4?")
 (data $21.17 (i32.const 4817) "\90s\e2$\a3\d0\bf\0e\03\f4~\eek\0c\bd\00\00\00\00\00\a0\f4?")
 (data $21.18 (i32.const 4849) "\d0\b4\94%@\d0\bf\7f-\f4\9e\b86\f0\bc\00\00\00\00\00\a0\f4?")
 (data $21.19 (i32.const 4881) "\d0\b4\94%@\d0\bf\7f-\f4\9e\b86\f0\bc\00\00\00\00\00\80\f4?")
 (data $21.20 (i32.const 4913) "@^m\18\b9\cf\bf\87<\99\ab*W\r=\00\00\00\00\00`\f4?")
 (data $21.21 (i32.const 4945) "`\dc\cb\ad\f0\ce\bf$\af\86\9c\b7&+=\00\00\00\00\00@\f4?")
 (data $21.22 (i32.const 4977) "\f0*n\07\'\ce\bf\10\ff?TO/\17\bd\00\00\00\00\00 \f4?")
 (data $21.23 (i32.const 5009) "\c0Ok!\\\cd\bf\1bh\ca\bb\91\ba!=\00\00\00\00\00\00\f4?")
 (data $21.24 (i32.const 5041) "\a0\9a\c7\f7\8f\cc\bf4\84\9fhOy\'=\00\00\00\00\00\00\f4?")
 (data $21.25 (i32.const 5073) "\a0\9a\c7\f7\8f\cc\bf4\84\9fhOy\'=\00\00\00\00\00\e0\f3?")
 (data $21.26 (i32.const 5105) "\90-t\86\c2\cb\bf\8f\b7\8b1\b0N\19=\00\00\00\00\00\c0\f3?")
 (data $21.27 (i32.const 5137) "\c0\80N\c9\f3\ca\bff\90\cd?cN\ba<\00\00\00\00\00\a0\f3?")
 (data $21.28 (i32.const 5169) "\b0\e2\1f\bc#\ca\bf\ea\c1F\dcd\8c%\bd\00\00\00\00\00\a0\f3?")
 (data $21.29 (i32.const 5201) "\b0\e2\1f\bc#\ca\bf\ea\c1F\dcd\8c%\bd\00\00\00\00\00\80\f3?")
 (data $21.30 (i32.const 5233) "P\f4\9cZR\c9\bf\e3\d4\c1\04\d9\d1*\bd\00\00\00\00\00`\f3?")
 (data $21.31 (i32.const 5265) "\d0 e\a0\7f\c8\bf\t\fa\db\7f\bf\bd+=\00\00\00\00\00@\f3?")
 (data $21.32 (i32.const 5297) "\e0\10\02\89\ab\c7\bfXJSr\90\db+=\00\00\00\00\00@\f3?")
 (data $21.33 (i32.const 5329) "\e0\10\02\89\ab\c7\bfXJSr\90\db+=\00\00\00\00\00 \f3?")
 (data $21.34 (i32.const 5361) "\d0\19\e7\0f\d6\c6\bff\e2\b2\a3j\e4\10\bd\00\00\00\00\00\00\f3?")
 (data $21.35 (i32.const 5393) "\90\a7p0\ff\c5\bf9P\10\9fC\9e\1e\bd\00\00\00\00\00\00\f3?")
 (data $21.36 (i32.const 5425) "\90\a7p0\ff\c5\bf9P\10\9fC\9e\1e\bd\00\00\00\00\00\e0\f2?")
 (data $21.37 (i32.const 5457) "\b0\a1\e3\e5&\c5\bf\8f[\07\90\8b\de \bd\00\00\00\00\00\c0\f2?")
 (data $21.38 (i32.const 5489) "\80\cbl+M\c4\bf<x5a\c1\0c\17=\00\00\00\00\00\c0\f2?")
 (data $21.39 (i32.const 5521) "\80\cbl+M\c4\bf<x5a\c1\0c\17=\00\00\00\00\00\a0\f2?")
 (data $21.40 (i32.const 5553) "\90\1e \fcq\c3\bf:T\'M\86x\f1<\00\00\00\00\00\80\f2?")
 (data $21.41 (i32.const 5585) "\f0\1f\f8R\95\c2\bf\08\c4q\170\8d$\bd\00\00\00\00\00`\f2?")
 (data $21.42 (i32.const 5617) "`/\d5*\b7\c1\bf\96\a3\11\18\a4\80.\bd\00\00\00\00\00`\f2?")
 (data $21.43 (i32.const 5649) "`/\d5*\b7\c1\bf\96\a3\11\18\a4\80.\bd\00\00\00\00\00@\f2?")
 (data $21.44 (i32.const 5681) "\90\d0|~\d7\c0\bf\f4[\e8\88\96i\n=\00\00\00\00\00@\f2?")
 (data $21.45 (i32.const 5713) "\90\d0|~\d7\c0\bf\f4[\e8\88\96i\n=\00\00\00\00\00 \f2?")
 (data $21.46 (i32.const 5745) "\e0\db1\91\ec\bf\bf\f23\a3\\Tu%\bd\00\00\00\00\00\00\f2?")
 (data $21.47 (i32.const 5778) "+n\07\'\be\bf<\00\f0*,4*=\00\00\00\00\00\00\f2?")
 (data $21.48 (i32.const 5810) "+n\07\'\be\bf<\00\f0*,4*=\00\00\00\00\00\e0\f1?")
 (data $21.49 (i32.const 5841) "\c0[\8fT^\bc\bf\06\be_XW\0c\1d\bd\00\00\00\00\00\c0\f1?")
 (data $21.50 (i32.const 5873) "\e0J:m\92\ba\bf\c8\aa[\e859%=\00\00\00\00\00\c0\f1?")
 (data $21.51 (i32.const 5905) "\e0J:m\92\ba\bf\c8\aa[\e859%=\00\00\00\00\00\a0\f1?")
 (data $21.52 (i32.const 5937) "\a01\d6E\c3\b8\bfhV/M)|\13=\00\00\00\00\00\a0\f1?")
 (data $21.53 (i32.const 5969) "\a01\d6E\c3\b8\bfhV/M)|\13=\00\00\00\00\00\80\f1?")
 (data $21.54 (i32.const 6001) "`\e5\8a\d2\f0\b6\bf\das3\c97\97&\bd\00\00\00\00\00`\f1?")
 (data $21.55 (i32.const 6033) " \06?\07\1b\b5\bfW^\c6a[\02\1f=\00\00\00\00\00`\f1?")
 (data $21.56 (i32.const 6065) " \06?\07\1b\b5\bfW^\c6a[\02\1f=\00\00\00\00\00@\f1?")
 (data $21.57 (i32.const 6097) "\e0\1b\96\d7A\b3\bf\df\13\f9\cc\da^,=\00\00\00\00\00@\f1?")
 (data $21.58 (i32.const 6129) "\e0\1b\96\d7A\b3\bf\df\13\f9\cc\da^,=\00\00\00\00\00 \f1?")
 (data $21.59 (i32.const 6161) "\80\a3\ee6e\b1\bf\t\a3\8fv^|\14=\00\00\00\00\00\00\f1?")
 (data $21.60 (i32.const 6193) "\80\11\c00\n\af\bf\91\8e6\83\9eY-=\00\00\00\00\00\00\f1?")
 (data $21.61 (i32.const 6225) "\80\11\c00\n\af\bf\91\8e6\83\9eY-=\00\00\00\00\00\e0\f0?")
 (data $21.62 (i32.const 6257) "\80\19q\ddB\ab\bfLp\d6\e5z\82\1c=\00\00\00\00\00\e0\f0?")
 (data $21.63 (i32.const 6289) "\80\19q\ddB\ab\bfLp\d6\e5z\82\1c=\00\00\00\00\00\c0\f0?")
 (data $21.64 (i32.const 6321) "\c02\f6Xt\a7\bf\ee\a1\f24F\fc,\bd\00\00\00\00\00\c0\f0?")
 (data $21.65 (i32.const 6353) "\c02\f6Xt\a7\bf\ee\a1\f24F\fc,\bd\00\00\00\00\00\a0\f0?")
 (data $21.66 (i32.const 6385) "\c0\fe\b9\87\9e\a3\bf\aa\fe&\f5\b7\02\f5<\00\00\00\00\00\a0\f0?")
 (data $21.67 (i32.const 6417) "\c0\fe\b9\87\9e\a3\bf\aa\fe&\f5\b7\02\f5<\00\00\00\00\00\80\f0?")
 (data $21.68 (i32.const 6450) "x\0e\9b\82\9f\bf\e4\t~|&\80)\bd\00\00\00\00\00\80\f0?")
 (data $21.69 (i32.const 6482) "x\0e\9b\82\9f\bf\e4\t~|&\80)\bd\00\00\00\00\00`\f0?")
 (data $21.70 (i32.const 6513) "\80\d5\07\1b\b9\97\bf9\a6\fa\93T\8d(\bd\00\00\00\00\00@\f0?")
 (data $21.71 (i32.const 6546) "\fc\b0\a8\c0\8f\bf\9c\a6\d3\f6|\1e\df\bc\00\00\00\00\00@\f0?")
 (data $21.72 (i32.const 6578) "\fc\b0\a8\c0\8f\bf\9c\a6\d3\f6|\1e\df\bc\00\00\00\00\00 \f0?")
 (data $21.73 (i32.const 6610) "\10k*\e0\7f\bf\e4@\da\r?\e2\19\bd\00\00\00\00\00 \f0?")
 (data $21.74 (i32.const 6642) "\10k*\e0\7f\bf\e4@\da\r?\e2\19\bd\00\00\00\00\00\00\f0?")
 (data $21.75 (i32.const 6694) "\f0?")
 (data $21.76 (i32.const 6725) "\c0\ef?")
 (data $21.77 (i32.const 6738) "\89u\15\10\80?\e8+\9d\99k\c7\10\bd\00\00\00\00\00\80\ef?")
 (data $21.78 (i32.const 6769) "\80\93XV \90?\d2\f7\e2\06[\dc#\bd\00\00\00\00\00@\ef?")
 (data $21.79 (i32.const 6802) "\c9(%I\98?4\0cZ2\ba\a0*\bd\00\00\00\00\00\00\ef?")
 (data $21.80 (i32.const 6833) "@\e7\89]A\a0?S\d7\f1\\\c0\11\01=\00\00\00\00\00\c0\ee?")
 (data $21.81 (i32.const 6866) ".\d4\aef\a4?(\fd\bdus\16,\bd\00\00\00\00\00\80\ee?")
 (data $21.82 (i32.const 6897) "\c0\9f\14\aa\94\a8?}&Z\d0\95y\19\bd\00\00\00\00\00@\ee?")
 (data $21.83 (i32.const 6929) "\c0\dd\cds\cb\ac?\07(\d8G\f2h\1a\bd\00\00\00\00\00 \ee?")
 (data $21.84 (i32.const 6961) "\c0\06\c01\ea\ae?{;\c9O>\11\0e\bd\00\00\00\00\00\e0\ed?")
 (data $21.85 (i32.const 6993) "`F\d1;\97\b1?\9b\9e\rV]2%\bd\00\00\00\00\00\a0\ed?")
 (data $21.86 (i32.const 7025) "\e0\d1\a7\f5\bd\b3?\d7N\db\a5^\c8,=\00\00\00\00\00`\ed?")
 (data $21.87 (i32.const 7057) "\a0\97MZ\e9\b5?\1e\1d]<\06i,\bd\00\00\00\00\00@\ed?")
 (data $21.88 (i32.const 7089) "\c0\ea\n\d3\00\b7?2\ed\9d\a9\8d\1e\ec<\00\00\00\00\00\00\ed?")
 (data $21.89 (i32.const 7121) "@Y]^3\b9?\daG\bd:\\\11#=\00\00\00\00\00\c0\ec?")
 (data $21.90 (i32.const 7153) "`\ad\8d\c8j\bb?\e5h\f7+\80\90\13\bd\00\00\00\00\00\a0\ec?")
 (data $21.91 (i32.const 7185) "@\bc\01X\88\bc?\d3\acZ\c6\d1F&=\00\00\00\00\00`\ec?")
 (data $21.92 (i32.const 7217) " \n\839\c7\be?\e0E\e6\afh\c0-\bd\00\00\00\00\00@\ec?")
 (data $21.93 (i32.const 7249) "\e0\db9\91\e8\bf?\fd\n\a1O\d64%\bd\00\00\00\00\00\00\ec?")
 (data $21.94 (i32.const 7281) "\e0\'\82\8e\17\c1?\f2\07-\cex\ef!=\00\00\00\00\00\e0\eb?")
 (data $21.95 (i32.const 7313) "\f0#~+\aa\c1?4\998D\8e\a7,=\00\00\00\00\00\a0\eb?")
 (data $21.96 (i32.const 7345) "\80\86\0ca\d1\c2?\a1\b4\81\cbl\9d\03=\00\00\00\00\00\80\eb?")
 (data $21.97 (i32.const 7377) "\90\15\b0\fce\c3?\89rK#\a8/\c6<\00\00\00\00\00@\eb?")
 (data $21.98 (i32.const 7409) "\b03\83=\91\c4?x\b6\fdTy\83%=\00\00\00\00\00 \eb?")
 (data $21.99 (i32.const 7441) "\b0\a1\e4\e5\'\c5?\c7}i\e5\e83&=\00\00\00\00\00\e0\ea?")
 (data $21.100 (i32.const 7473) "\10\8c\beNW\c6?x.<,\8b\cf\19=\00\00\00\00\00\c0\ea?")
 (data $21.101 (i32.const 7505) "pu\8b\12\f0\c6?\e1!\9c\e5\8d\11%\bd\00\00\00\00\00\a0\ea?")
 (data $21.102 (i32.const 7537) "PD\85\8d\89\c7?\05C\91p\10f\1c\bd\00\00\00\00\00`\ea?")
 (data $21.103 (i32.const 7570) "9\eb\af\be\c8?\d1,\e9\aaT=\07\bd\00\00\00\00\00@\ea?")
 (data $21.104 (i32.const 7602) "\f7\dcZZ\c9?o\ff\a0X(\f2\07=\00\00\00\00\00\00\ea?")
 (data $21.105 (i32.const 7633) "\e0\8a<\ed\93\ca?i!VPCr(\bd\00\00\00\00\00\e0\e9?")
 (data $21.106 (i32.const 7665) "\d0[W\d81\cb?\aa\e1\acN\8d5\0c\bd\00\00\00\00\00\c0\e9?")
 (data $21.107 (i32.const 7697) "\e0;8\87\d0\cb?\b6\12TY\c4K-\bd\00\00\00\00\00\a0\e9?")
 (data $21.108 (i32.const 7729) "\10\f0\c6\fbo\cc?\d2+\96\c5r\ec\f1\bc\00\00\00\00\00`\e9?")
 (data $21.109 (i32.const 7761) "\90\d4\b0=\b1\cd?5\b0\15\f7*\ff*\bd\00\00\00\00\00@\e9?")
 (data $21.110 (i32.const 7793) "\10\e7\ff\0eS\ce?0\f4A`\'\12\c2<\00\00\00\00\00 \e9?")
 (data $21.111 (i32.const 7826) "\dd\e4\ad\f5\ce?\11\8e\bbe\15!\ca\bc\00\00\00\00\00\00\e9?")
 (data $21.112 (i32.const 7857) "\b0\b3l\1c\99\cf?0\df\0c\ca\ec\cb\1b=\00\00\00\00\00\c0\e8?")
 (data $21.113 (i32.const 7889) "XM`8q\d0?\91N\ed\16\db\9c\f8<\00\00\00\00\00\a0\e8?")
 (data $21.114 (i32.const 7921) "`ag-\c4\d0?\e9\ea<\16\8b\18\'=\00\00\00\00\00\80\e8?")
 (data $21.115 (i32.const 7953) "\e8\'\82\8e\17\d1?\1c\f0\a5c\0e!,\bd\00\00\00\00\00`\e8?")
 (data $21.116 (i32.const 7985) "\f8\ac\cb\\k\d1?\81\16\a5\f7\cd\9a+=\00\00\00\00\00@\e8?")
 (data $21.117 (i32.const 8017) "hZc\99\bf\d1?\b7\bdGQ\ed\a6,=\00\00\00\00\00 \e8?")
 (data $21.118 (i32.const 8049) "\b8\0emE\14\d2?\ea\baF\ba\de\87\n=\00\00\00\00\00\e0\e7?")
 (data $21.119 (i32.const 8081) "\90\dc|\f0\be\d2?\f4\04PJ\fa\9c*=\00\00\00\00\00\c0\e7?")
 (data $21.120 (i32.const 8113) "`\d3\e1\f1\14\d3?\b8<!\d3z\e2(\bd\00\00\00\00\00\a0\e7?")
 (data $21.121 (i32.const 8145) "\10\bevgk\d3?\c8w\f1\b0\cdn\11=\00\00\00\00\00\80\e7?")
 (data $21.122 (i32.const 8177) "03wR\c2\d3?\\\bd\06\b6T;\18=\00\00\00\00\00`\e7?")
 (data $21.123 (i32.const 8209) "\e8\d5#\b4\19\d4?\9d\e0\90\ec6\e4\08=\00\00\00\00\00@\e7?")
 (data $21.124 (i32.const 8241) "\c8q\c2\8dq\d4?u\d6g\t\ce\'/\bd\00\00\00\00\00 \e7?")
 (data $21.125 (i32.const 8273) "0\17\9e\e0\c9\d4?\a4\d8\n\1b\89 .\bd\00\00\00\00\00\00\e7?")
 (data $21.126 (i32.const 8305) "\a08\07\ae\"\d5?Y\c7d\81p\be.=\00\00\00\00\00\e0\e6?")
 (data $21.127 (i32.const 8337) "\d0\c8S\f7{\d5?\ef@]\ee\ed\ad\1f=\00\00\00\00\00\c0\e6?")
 (data $21.128 (i32.const 8369) "`Y\df\bd\d5\d5?\dce\a4\08*\0b\n\bd")
 (data $22 (i32.const 8398) "\f0?n\bf\88\1aO;\9b<53\fb\a9=\f6\ef?]\dc\d8\9c\13`q\bca\80w>\9a\ec\ef?\d1f\87\10z^\90\bc\85\7fn\e8\15\e3\ef?\13\f6g5R\d2\8c<t\85\15\d3\b0\d9\ef?\fa\8e\f9#\80\ce\8b\bc\de\f6\dd)k\d0\ef?a\c8\e6aN\f7`<\c8\9bu\18E\c7\ef?\99\d33[\e4\a3\90<\83\f3\c6\ca>\be\ef?m{\83]\a6\9a\97<\0f\89\f9lX\b5\ef?\fc\ef\fd\92\1a\b5\8e<\f7Gr+\92\ac\ef?\d1\9c/p=\be><\a2\d1\d32\ec\a3\ef?\0bn\90\894\03j\bc\1b\d3\fe\aff\9b\ef?\0e\bd/*RV\95\bcQ[\12\d0\01\93\ef?U\eaN\8c\ef\80P\bc\cc1l\c0\bd\8a\ef?\16\f4\d5\b9#\c9\91\bc\e0-\a9\ae\9a\82\ef?\afU\\\e9\e3\d3\80<Q\8e\a5\c8\98z\ef?H\93\a5\ea\15\1b\80\bc{Q}<\b8r\ef?=2\deU\f0\1f\8f\bc\ea\8d\8c8\f9j\ef?\bfS\13?\8c\89\8b<u\cbo\eb[c\ef?&\eb\11v\9c\d9\96\bc\d4\\\04\84\e0[\ef?`/:>\f7\ec\9a<\aa\b9h1\87T\ef?\9d8\86\cb\82\e7\8f\bc\1d\d9\fc\"PM\ef?\8d\c3\a6DAo\8a<\d6\8cb\88;F\ef?}\04\e4\b0\05z\80<\96\dc}\91I?\ef?\94\a8\a8\e3\fd\8e\96<8bunz8\ef?}Ht\f2\18^\87<?\a6\b2O\ce1\ef?\f2\e7\1f\98+G\80<\dd|\e2eE+\ef?^\08q?{\b8\96\bc\81c\f5\e1\df$\ef?1\ab\tm\e1\f7\82<\e1\de\1f\f5\9d\1e\ef?\fa\bfo\1a\9b!=\bc\90\d9\da\d0\7f\18\ef?\b4\n\0cr\827\8b<\0b\03\e4\a6\85\12\ef?\8f\cb\ce\89\92\14n<V/>\a9\af\0c\ef?\b6\ab\b0MuM\83<\15\b71\n\fe\06\ef?Lt\ac\e2\01B\86<1\d8L\fcp\01\ef?J\f8\d3]9\dd\8f<\ff\16d\b2\08\fc\ee?\04[\8e;\80\a3\86\bc\f1\9f\92_\c5\f6\ee?hPK\cc\edJ\92\bc\cb\a9:7\a7\f1\ee?\8e-Q\1b\f8\07\99\bcf\d8\05m\ae\ec\ee?\d26\94>\e8\d1q\bc\f7\9f\e54\db\e7\ee?\15\1b\ce\b3\19\19\99\bc\e5\a8\13\c3-\e3\ee?mL*\a7H\9f\85<\"4\12L\a6\de\ee?\8ai(z`\12\93\bc\1c\80\ac\04E\da\ee?[\89\17H\8f\a7X\bc*.\f7!\n\d6\ee?\1b\9aIg\9b,|\bc\97\a8P\d9\f5\d1\ee?\11\ac\c2`\edcC<-\89a`\08\ce\ee?\efd\06;\tf\96<W\00\1d\edA\ca\ee?y\03\a1\da\e1\ccn<\d0<\c1\b5\a2\c6\ee?0\12\0f?\8e\ff\93<\de\d3\d7\f0*\c3\ee?\b0\afz\bb\ce\90v<\'*6\d5\da\bf\ee?w\e0T\eb\bd\1d\93<\r\dd\fd\99\b2\bc\ee?\8e\a3q\004\94\8f\bc\a7,\9dv\b2\b9\ee?I\a3\93\dc\cc\de\87\bcBf\cf\a2\da\b6\ee?_8\0f\bd\c6\dex\bc\82O\9dV+\b4\ee?\f6\\{\ecF\12\86\bc\0f\92]\ca\a4\b1\ee?\8e\d7\fd\18\055\93<\da\'\b56G\af\ee?\05\9b\8a/\b7\98{<\fd\c7\97\d4\12\ad\ee?\tT\1c\e2\e1c\90<)TH\dd\07\ab\ee?\ea\c6\19P\85\c74<\b7FY\8a&\a9\ee?5\c0d+\e62\94<H!\ad\15o\a7\ee?\9fv\99aJ\e4\8c\bc\t\dcv\b9\e1\a5\ee?\a8M\ef;\c53\8c\bc\85U:\b0~\a4\ee?\ae\e9+\89xS\84\bc \c3\cc4F\a3\ee?XXVx\dd\ce\93\bc%\"U\828\a2\ee?d\19~\80\aa\10W<s\a9L\d4U\a1\ee?(\"^\bf\ef\b3\93\bc\cd;\7ff\9e\a0\ee?\82\b94\87\ad\12j\bc\bf\da\0bu\12\a0\ee?\ee\a9m\b8\efgc\bc/\1ae<\b2\9f\ee?Q\88\e0T=\dc\80\bc\84\94Q\f9}\9f\ee?\cf>Z~d\1fx\bct_\ec\e8u\9f\ee?\b0}\8b\c0J\ee\86\bct\81\a5H\9a\9f\ee?\8a\e6U\1e2\19\86\bc\c9gBV\eb\9f\ee?\d3\d4\t^\cb\9c\90<?]\deOi\a0\ee?\1d\a5M\b9\dc2{\bc\87\01\ebs\14\a1\ee?k\c0gT\fd\ec\94<2\c10\01\ed\a1\ee?Ul\d6\ab\e1\ebe<bN\cf6\f3\a2\ee?B\cf\b3/\c5\a1\88\bc\12\1a>T\'\a4\ee?47;\f1\b6i\93\bc\13\ceL\99\89\a5\ee?\1e\ff\19:\84^\80\bc\ad\c7#F\1a\a7\ee?nWr\d8P\d4\94\bc\ed\92D\9b\d9\a8\ee?\00\8a\0e[g\ad\90<\99f\8a\d9\c7\aa\ee?\b4\ea\f0\c1/\b7\8d<\db\a0*B\e5\ac\ee?\ff\e7\c5\9c`\b6e\bc\8cD\b5\162\af\ee?D_\f3Y\83\f6{<6w\15\99\ae\b1\ee?\83=\1e\a7\1f\t\93\bc\c6\ff\91\0b[\b4\ee?)\1el\8b\b8\a9]\bc\e5\c5\cd\b07\b7\ee?Y\b9\90|\f9#l\bc\0fR\c8\cbD\ba\ee?\aa\f9\f4\"CC\92\bcPN\de\9f\82\bd\ee?K\8ef\d7l\ca\85\bc\ba\07\cap\f1\c0\ee?\'\ce\91+\fc\afq<\90\f0\a3\82\91\c4\ee?\bbs\n\e15\d2m<##\e3\19c\c8\ee?c\"b\"\04\c5\87\bce\e5]{f\cc\ee?\d51\e2\e3\86\1c\8b<3-J\ec\9b\d0\ee?\15\bb\bc\d3\d1\bb\91\bc]%>\b2\03\d5\ee?\d21\ee\9c1\cc\90<X\b30\13\9e\d9\ee?\b3Zsn\84i\84<\bf\fdyUk\de\ee?\b4\9d\8e\97\cd\df\82\bcz\f3\d3\bfk\e3\ee?\873\cb\92w\1a\8c<\ad\d3Z\99\9f\e8\ee?\fa\d9\d1J\8f{\90\bcf\b6\8d)\07\ee\ee?\ba\ae\dcV\d9\c3U\bc\fb\15O\b8\a2\f3\ee?@\f6\a6=\0e\a4\90\bc:Y\e5\8dr\f9\ee?4\93\ad8\f4\d6h\bcG^\fb\f2v\ff\ee?5\8aXk\e2\ee\91\bcJ\06\a10\b0\05\ef?\cd\dd_\n\d7\fft<\d2\c1K\90\1e\0c\ef?\ac\98\92\fa\fb\bd\91\bc\t\1e\d7[\c2\12\ef?\b3\0c\af0\aens<\9cR\85\dd\9b\19\ef?\94\fd\9f\\2\e3\8e<z\d0\ff_\ab \ef?\acY\t\d1\8f\e0\84<K\d1W.\f1\'\ef?g\1aN8\af\cdc<\b5\e7\06\94m/\ef?h\19\92l,kg<i\90\ef\dc 7\ef?\d2\b5\cc\83\18\8a\80\bc\fa\c3]U\0b?\ef?o\fa\ff?]\ad\8f\bc|\89\07J-G\ef?I\a9u8\ae\r\90\bc\f2\89\r\08\87O\ef?\a7\07=\a6\85\a3t<\87\a4\fb\dc\18X\ef?\0f\"@ \9e\91\82\bc\98\83\c9\16\e3`\ef?\ac\92\c1\d5PZ\8e<\852\db\03\e6i\ef?Kk\01\acY:\84<`\b4\01\f3!s\ef?\1f>\b4\07!\d5\82\bc_\9b{3\97|\ef?\c9\rG;\b9*\89\bc)\a1\f5\14F\86\ef?\d3\88:`\04\b6t<\f6?\8b\e7.\90\ef?qr\9dQ\ec\c5\83<\83L\c7\fbQ\9a\ef?\f0\91\d3\8f\12\f7\8f\bc\da\90\a4\a2\af\a4\ef?}t#\e2\98\ae\8d\bc\f1g\8e-H\af\ef?\08 \aaA\bc\c3\8e<\'Za\ee\1b\ba\ef?2\eb\a9\c3\94+\84<\97\bak7+\c5\ef?\ee\85\d11\a9d\8a<@En[v\d0\ef?\ed\e3;\e4\ba7\8e\bc\14\be\9c\ad\fd\db\ef?\9d\cd\91M;\89w<\d8\90\9e\81\c1\e7\ef?\89\cc`A\c1\05S<\f1q\8f+\c2\f3\ef?")
 (data $24 (i32.const 10567) "\80\00\00\00\00\00\00\00\a0\00\00\00\00\00\00\00\c8\00\00\00\00\00\00\00\fa\00\00\00\00\00\00@\9c\00\00\00\00\00\00P\c3\00\00\00\00\00\00$\f4\00\00\00\00\00\80\96\98\00\00\00\00\00 \bc\be\00\00\00\00\00(k\ee\00\00\00\00\00\f9\02\95\00\00\00\00@\b7C\ba\00\00\00\00\10\a5\d4\e8\00\00\00\00*\e7\84\91\00\00\00\80\f4 \e6\b5\00\00\00\a01\a9_\e3\00\00\00\04\bf\c9\1b\8e\00\00\00\c5.\bc\a2\b1\00\00@v:k\0b\de\00\00\e8\89\04#\c7\8a\00\00b\ac\c5\ebx\ad\00\80z\17\b7&\d7\d8\00\90\acn2x\86\87\00\b4W\n?\16h\a9\00\a1\ed\cc\ce\1b\c2\d3\a0\84\14@aQY\84\c8\a5\19\90\b9\a5o\a5:\0f \f4\'\8f\cb\ce")
 (data $25 (i32.const 10784) "o\1b\8e(\10T\8e\af\daM\e4^\ae\f0\ec\07J\fb\9f\f4\98\'D\b1\9dwA\df\cf\11\cd\99\07\ef\99\85\0b?\fe\b2\15\aa\b4\dc\e6\a7\1f\86c\beZ\06\0b\a5\bc\b4\aaSkuz\07\ed\0f\08\bf,)Ud\7f\b6C\d5\b1\17L\c8;\1a\fb;\efi\c2\87F\b8B\a7\ee@OQ]=\eb\dd\e4PF\1a\12\ba\13\e4labM\f3\92\ea\af(\b6\ef&\e2\bb\8c6U\n\f7\89\04\89\0f`\cb\05\e9\b8\b6\bd!\c9\c1\bb\87\e9\00T\96_\9a\84x\db\8f\bf4\d0\bdr\04R\98\de\'\8a\92\95\00\9am\c1\94\82\17\0f<\05\b7u\00\00\00\00\00\00P\c3\00\00\00\00\00\00\00\00\05\e3L6\12\197\c5\00\00\00\00\00\00(l\d6\aa\80\9d\ef\f0\"\c7\f6~\b9\b7\d2:MBL\c8q\d5m\93\13\c9\ea8\1e\cd\19:\bc\03\1cU\ab\01\80\0c\t\cb\c6,\07\d3\bf\f5\ad\\\a1\90\08\137h\03\cd\10\8cz\c3\87\a8\db6.\ef\07\12\c2\b2\02\cf\bc\f4\03^\e4g\f9\94\c7\85\d7in\f8\06\d1R\ba\be\01\d763\e1|\a0\1c4\a8E\10\d3Q\a0\t\12\11H\de\1e1Vx\85\fa\a6\1e\d5f\a5>\7f\"t*U3\f1\ca\ba\0f)2\d7\96@\adGy\17|\a9t\088\c7\b1\d8J\d9\bc\"x\ae\81R7\18")
 (data $26 (i32.const 11152) "?6N\n@\18\00\00\00d\00\00@\00 $\00\00\00\00\00\00\00\0c\80\13\c8\82\1f\e0L^\0f\f60\d7\1b\00\00\00\00\00\00\00\fc\ff\f7\cd\d8\01\82n\d1?\cd@\01%d\db\r\r\00\00\00$\04\14@8qS\b4\1dx\11")
 (data $27 (i32.const 11238) "\f0?\00\00\00\00\00\00$@\00\00\00\00\00\00Y@\00\00\00\00\00@\8f@\00\00\00\00\00\88\c3@\00\00\00\00\00j\f8@\00\00\00\00\80\84.A\00\00\00\00\d0\12cA\00\00\00\00\84\d7\97A\00\00\00\00e\cd\cdA\00\00\00 _\a0\02B\00\00\00\e8vH7B\00\00\00\a2\94\1amB\00\00@\e5\9c0\a2B\00\00\90\1e\c4\bc\d6B\00\004&\f5k\0cC\00\80\e07y\c3AC\00\a0\d8\85W4vC\00\c8Ngm\c1\abC\00=\91`\e4X\e1C@\8c\b5x\1d\af\15DP\ef\e2\d6\e4\1aKD\92\d5M\06\cf\f0\80D")
 (data $28 (i32.const 11420) "\1c")
 (data $28.1 (i32.const 11432) "\02\00\00\00\06\00\00\004\00.\000")
 (data $29 (i32.const 11452) "\1c")
 (data $29.1 (i32.const 11464) "\02\00\00\00\02\00\00\004")
 (data $30 (i32.const 11484) "\1c")
 (data $30.1 (i32.const 11496) "\02\00\00\00\02\00\00\003")
 (data $31 (i32.const 11516) "\1c")
 (data $31.1 (i32.const 11528) "\02\00\00\00\04\00\00\00-\001")
 (data $32 (i32.const 11548) "\1c")
 (data $32.1 (i32.const 11560) "\02\00\00\00\04\00\00\00l\00t")
 (data $33 (i32.const 11580) "\1c")
 (data $33.1 (i32.const 11592) "\02\00\00\00\04\00\00\00g\00t")
 (data $34 (i32.const 11612) "\1c")
 (data $34.1 (i32.const 11624) "\02\00\00\00\04\00\00\00l\00e")
 (data $35 (i32.const 11644) "\1c")
 (data $35.1 (i32.const 11656) "\02\00\00\00\04\00\00\00g\00e")
 (data $36 (i32.const 11676) "\1c")
 (data $36.1 (i32.const 11688) "\02\00\00\00\04\00\00\00e\00q")
 (data $37 (i32.const 11708) "\1c")
 (data $37.1 (i32.const 11720) "\02\00\00\00\04\00\00\00n\00e")
 (data $38 (i32.const 11740) "\1c")
 (data $38.1 (i32.const 11752) "\02\00\00\00\06\00\00\00a\00d\00d")
 (data $39 (i32.const 11772) "\1c")
 (data $39.1 (i32.const 11784) "\02\00\00\00\06\00\00\00s\00u\00b")
 (data $40 (i32.const 11804) "\1c")
 (data $40.1 (i32.const 11816) "\02\00\00\00\06\00\00\00m\00u\00l")
 (data $41 (i32.const 11836) "\1c")
 (data $41.1 (i32.const 11848) "\02\00\00\00\06\00\00\00d\00i\00v")
 (data $42 (i32.const 11868) "\1c")
 (data $42.1 (i32.const 11880) "\02\00\00\00\06\00\00\00r\00e\00m")
 (data $43 (i32.const 11900) "\1c")
 (data $43.1 (i32.const 11912) "\02\00\00\00\06\00\00\00p\00o\00w")
 (data $44 (i32.const 11936) "\07\00\00\00 \00\00\00 \00\00\00 \00\00\00\00\00\00\00 \00\00\00 \00\00\00 ")
 (export "memory" (memory $0))
 (start $~start)
 (func $~lib/string/String.__eq (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 11968
  i32.lt_s
  if
   i32.const 44768
   i32.const 44816
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $0
  local.get $1
  i32.eq
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 1
   return
  end
  block $folding-inner0
   local.get $1
   i32.eqz
   local.get $0
   i32.eqz
   i32.or
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 1
   i32.shr_u
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $3
   local.get $1
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 1
   i32.shr_u
   i32.ne
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   local.get $3
   local.tee $0
   i32.const 4
   i32.ge_u
   if (result i32)
    local.get $2
    i32.const 7
    i32.and
    local.get $1
    i32.const 7
    i32.and
    i32.or
   else
    i32.const 1
   end
   i32.eqz
   if
    loop $do-loop|0
     local.get $2
     i64.load
     local.get $1
     i64.load
     i64.eq
     if
      local.get $2
      i32.const 8
      i32.add
      local.set $2
      local.get $1
      i32.const 8
      i32.add
      local.set $1
      local.get $0
      i32.const 4
      i32.sub
      local.tee $0
      i32.const 4
      i32.ge_u
      br_if $do-loop|0
     end
    end
   end
   block $__inlined_func$~lib/util/string/compareImpl$79
    loop $while-continue|1
     local.get $0
     local.tee $3
     i32.const 1
     i32.sub
     local.set $0
     local.get $3
     if
      local.get $2
      i32.load16_u
      local.tee $5
      local.get $1
      i32.load16_u
      local.tee $4
      i32.sub
      local.set $3
      local.get $4
      local.get $5
      i32.ne
      br_if $__inlined_func$~lib/util/string/compareImpl$79
      local.get $2
      i32.const 2
      i32.add
      local.set $2
      local.get $1
      i32.const 2
      i32.add
      local.set $1
      br $while-continue|1
     end
    end
    i32.const 0
    local.set $3
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $3
   i32.eqz
   return
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  i32.const 0
 )
 (func $~lib/number/I32#toString (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 11968
  i32.lt_s
  if
   i32.const 44768
   i32.const 44816
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  block $__inlined_func$~lib/util/number/itoa32$74
   local.get $0
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    i32.const 2256
    local.set $2
    br $__inlined_func$~lib/util/number/itoa32$74
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   local.get $0
   i32.sub
   local.get $0
   local.get $0
   i32.const 31
   i32.shr_u
   i32.const 1
   i32.shl
   local.tee $3
   select
   local.tee $0
   i32.const 100000
   i32.lt_u
   if (result i32)
    local.get $0
    i32.const 100
    i32.lt_u
    if (result i32)
     local.get $0
     i32.const 10
     i32.ge_u
     i32.const 1
     i32.add
    else
     local.get $0
     i32.const 10000
     i32.ge_u
     i32.const 3
     i32.add
     local.get $0
     i32.const 1000
     i32.ge_u
     i32.add
    end
   else
    local.get $0
    i32.const 10000000
    i32.lt_u
    if (result i32)
     local.get $0
     i32.const 1000000
     i32.ge_u
     i32.const 6
     i32.add
    else
     local.get $0
     i32.const 1000000000
     i32.ge_u
     i32.const 8
     i32.add
     local.get $0
     i32.const 100000000
     i32.ge_u
     i32.add
    end
   end
   local.tee $1
   i32.const 1
   i32.shl
   local.get $3
   i32.add
   i32.const 2
   call $~lib/rt/itcms/__new
   local.tee $2
   i32.store
   local.get $2
   local.get $3
   i32.add
   local.set $5
   loop $while-continue|0
    local.get $0
    i32.const 10000
    i32.ge_u
    if
     local.get $0
     i32.const 10000
     i32.rem_u
     local.set $4
     local.get $0
     i32.const 10000
     i32.div_u
     local.set $0
     local.get $5
     local.get $1
     i32.const 4
     i32.sub
     local.tee $1
     i32.const 1
     i32.shl
     i32.add
     local.get $4
     i32.const 100
     i32.div_u
     i32.const 2
     i32.shl
     i32.const 2668
     i32.add
     i64.load32_u
     local.get $4
     i32.const 100
     i32.rem_u
     i32.const 2
     i32.shl
     i32.const 2668
     i32.add
     i64.load32_u
     i64.const 32
     i64.shl
     i64.or
     i64.store
     br $while-continue|0
    end
   end
   local.get $0
   i32.const 100
   i32.ge_u
   if
    local.get $5
    local.get $1
    i32.const 2
    i32.sub
    local.tee $1
    i32.const 1
    i32.shl
    i32.add
    local.get $0
    i32.const 100
    i32.rem_u
    i32.const 2
    i32.shl
    i32.const 2668
    i32.add
    i32.load
    i32.store
    local.get $0
    i32.const 100
    i32.div_u
    local.set $0
   end
   local.get $0
   i32.const 10
   i32.ge_u
   if
    local.get $5
    local.get $1
    i32.const 2
    i32.sub
    i32.const 1
    i32.shl
    i32.add
    local.get $0
    i32.const 2
    i32.shl
    i32.const 2668
    i32.add
    i32.load
    i32.store
   else
    local.get $5
    local.get $1
    i32.const 1
    i32.sub
    i32.const 1
    i32.shl
    i32.add
    local.get $0
    i32.const 48
    i32.add
    i32.store16
   end
   local.get $3
   if
    local.get $2
    i32.const 45
    i32.store16
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
  end
  local.get $2
 )
 (func $~lib/rt/itcms/__visit (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.eqz
  if
   return
  end
  global.get $~lib/rt/itcms/white
  local.get $0
  i32.const 20
  i32.sub
  local.tee $1
  i32.load offset=4
  i32.const 3
  i32.and
  i32.eq
  if
   local.get $1
   global.get $~lib/rt/itcms/iter
   i32.eq
   if
    local.get $1
    i32.load offset=8
    local.tee $0
    i32.eqz
    if
     i32.const 0
     i32.const 2352
     i32.const 148
     i32.const 30
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    global.set $~lib/rt/itcms/iter
   end
   block $__inlined_func$~lib/rt/itcms/Object#unlink$164
    local.get $1
    i32.load offset=4
    i32.const -4
    i32.and
    local.tee $0
    i32.eqz
    if
     local.get $1
     i32.load offset=8
     i32.eqz
     local.get $1
     i32.const 44736
     i32.lt_u
     i32.and
     i32.eqz
     if
      i32.const 0
      i32.const 2352
      i32.const 128
      i32.const 18
      call $~lib/builtins/abort
      unreachable
     end
     br $__inlined_func$~lib/rt/itcms/Object#unlink$164
    end
    local.get $1
    i32.load offset=8
    local.tee $2
    i32.eqz
    if
     i32.const 0
     i32.const 2352
     i32.const 132
     i32.const 16
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $2
    i32.store offset=8
    local.get $2
    local.get $0
    local.get $2
    i32.load offset=4
    i32.const 3
    i32.and
    i32.or
    i32.store offset=4
   end
   global.get $~lib/rt/itcms/toSpace
   local.set $2
   local.get $1
   i32.load offset=12
   local.tee $0
   i32.const 2
   i32.le_u
   if (result i32)
    i32.const 1
   else
    local.get $0
    i32.const 11936
    i32.load
    i32.gt_u
    if
     i32.const 2480
     i32.const 2544
     i32.const 21
     i32.const 28
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 2
    i32.shl
    i32.const 11940
    i32.add
    i32.load
    i32.const 32
    i32.and
   end
   local.set $3
   local.get $2
   i32.load offset=8
   local.set $0
   local.get $1
   global.get $~lib/rt/itcms/white
   i32.eqz
   i32.const 2
   local.get $3
   select
   local.get $2
   i32.or
   i32.store offset=4
   local.get $1
   local.get $0
   i32.store offset=8
   local.get $0
   local.get $1
   local.get $0
   i32.load offset=4
   i32.const 3
   i32.and
   i32.or
   i32.store offset=4
   local.get $2
   local.get $1
   i32.store offset=8
   global.get $~lib/rt/itcms/visitCount
   i32.const 1
   i32.add
   global.set $~lib/rt/itcms/visitCount
  end
 )
 (func $~lib/rt/itcms/__new (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.const 1073741804
  i32.ge_u
  if
   i32.const 2288
   i32.const 2352
   i32.const 261
   i32.const 31
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/itcms/total
  global.get $~lib/rt/itcms/threshold
  i32.ge_u
  if
   block $__inlined_func$~lib/rt/itcms/interrupt$70
    i32.const 2048
    local.set $2
    loop $do-loop|0
     local.get $2
     call $~lib/rt/itcms/step
     i32.sub
     local.set $2
     global.get $~lib/rt/itcms/state
     i32.eqz
     if
      global.get $~lib/rt/itcms/total
      i32.const 1
      i32.shl
      i32.const 1024
      i32.add
      global.set $~lib/rt/itcms/threshold
      br $__inlined_func$~lib/rt/itcms/interrupt$70
     end
     local.get $2
     i32.const 0
     i32.gt_s
     br_if $do-loop|0
    end
    global.get $~lib/rt/itcms/total
    global.get $~lib/rt/itcms/total
    global.get $~lib/rt/itcms/threshold
    i32.sub
    i32.const 1024
    i32.lt_u
    i32.const 10
    i32.shl
    i32.add
    global.set $~lib/rt/itcms/threshold
   end
  end
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  local.set $4
  local.get $0
  i32.const 16
  i32.add
  local.tee $2
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 2288
   i32.const 2624
   i32.const 461
   i32.const 29
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  local.get $2
  i32.const 12
  i32.le_u
  if (result i32)
   i32.const 12
  else
   local.get $2
   i32.const 19
   i32.add
   i32.const -16
   i32.and
   i32.const 4
   i32.sub
  end
  local.tee $5
  call $~lib/rt/tlsf/searchBlock
  local.tee $2
  i32.eqz
  if
   local.get $5
   i32.const 256
   i32.ge_u
   if (result i32)
    local.get $5
    i32.const 536870910
    i32.lt_u
    if (result i32)
     local.get $5
     i32.const 1
     i32.const 27
     local.get $5
     i32.clz
     i32.sub
     i32.shl
     i32.add
     i32.const 1
     i32.sub
    else
     local.get $5
    end
   else
    local.get $5
   end
   i32.const 4
   local.get $4
   i32.load offset=1568
   memory.size
   local.tee $2
   i32.const 16
   i32.shl
   i32.const 4
   i32.sub
   i32.ne
   i32.shl
   i32.add
   i32.const 65535
   i32.add
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.set $3
   local.get $2
   local.get $3
   local.get $2
   local.get $3
   i32.gt_s
   select
   memory.grow
   i32.const 0
   i32.lt_s
   if
    local.get $3
    memory.grow
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
   local.get $4
   local.get $2
   i32.const 16
   i32.shl
   memory.size
   i64.extend_i32_s
   i64.const 16
   i64.shl
   call $~lib/rt/tlsf/addMemory
   local.get $4
   local.get $5
   call $~lib/rt/tlsf/searchBlock
   local.tee $2
   i32.eqz
   if
    i32.const 0
    i32.const 2624
    i32.const 499
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $5
  local.get $2
  i32.load
  i32.const -4
  i32.and
  i32.gt_u
  if
   i32.const 0
   i32.const 2624
   i32.const 501
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  local.get $2
  call $~lib/rt/tlsf/removeBlock
  local.get $2
  i32.load
  local.set $6
  local.get $5
  i32.const 4
  i32.add
  i32.const 15
  i32.and
  if
   i32.const 0
   i32.const 2624
   i32.const 361
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $6
  i32.const -4
  i32.and
  local.get $5
  i32.sub
  local.tee $3
  i32.const 16
  i32.ge_u
  if
   local.get $2
   local.get $5
   local.get $6
   i32.const 2
   i32.and
   i32.or
   i32.store
   local.get $2
   i32.const 4
   i32.add
   local.get $5
   i32.add
   local.tee $5
   local.get $3
   i32.const 4
   i32.sub
   i32.const 1
   i32.or
   i32.store
   local.get $4
   local.get $5
   call $~lib/rt/tlsf/insertBlock
  else
   local.get $2
   local.get $6
   i32.const -2
   i32.and
   i32.store
   local.get $2
   i32.const 4
   i32.add
   local.get $2
   i32.load
   i32.const -4
   i32.and
   i32.add
   local.tee $3
   local.get $3
   i32.load
   i32.const -3
   i32.and
   i32.store
  end
  local.get $2
  local.get $1
  i32.store offset=12
  local.get $2
  local.get $0
  i32.store offset=16
  global.get $~lib/rt/itcms/fromSpace
  local.tee $1
  i32.load offset=8
  local.set $3
  local.get $2
  local.get $1
  global.get $~lib/rt/itcms/white
  i32.or
  i32.store offset=4
  local.get $2
  local.get $3
  i32.store offset=8
  local.get $3
  local.get $2
  local.get $3
  i32.load offset=4
  i32.const 3
  i32.and
  i32.or
  i32.store offset=4
  local.get $1
  local.get $2
  i32.store offset=8
  global.get $~lib/rt/itcms/total
  local.get $2
  i32.load
  i32.const -4
  i32.and
  i32.const 4
  i32.add
  i32.add
  global.set $~lib/rt/itcms/total
  local.get $2
  i32.const 20
  i32.add
  local.tee $1
  i32.const 0
  local.get $0
  memory.fill
  local.get $1
 )
 (func $~lib/rt/tlsf/removeBlock (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  i32.load
  local.tee $3
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 2624
   i32.const 268
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const -4
  i32.and
  local.tee $3
  i32.const 12
  i32.lt_u
  if
   i32.const 0
   i32.const 2624
   i32.const 270
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 256
  i32.lt_u
  if (result i32)
   local.get $3
   i32.const 4
   i32.shr_u
  else
   i32.const 31
   i32.const 1073741820
   local.get $3
   local.get $3
   i32.const 1073741820
   i32.ge_u
   select
   local.tee $3
   i32.clz
   i32.sub
   local.tee $4
   i32.const 7
   i32.sub
   local.set $2
   local.get $3
   local.get $4
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
  end
  local.tee $3
  i32.const 16
  i32.lt_u
  local.get $2
  i32.const 23
  i32.lt_u
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 2624
   i32.const 284
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load offset=8
  local.set $5
  local.get $1
  i32.load offset=4
  local.tee $4
  if
   local.get $4
   local.get $5
   i32.store offset=8
  end
  local.get $5
  if
   local.get $5
   local.get $4
   i32.store offset=4
  end
  local.get $1
  local.get $0
  local.get $2
  i32.const 4
  i32.shl
  local.get $3
  i32.add
  i32.const 2
  i32.shl
  i32.add
  local.tee $1
  i32.load offset=96
  i32.eq
  if
   local.get $1
   local.get $5
   i32.store offset=96
   local.get $5
   i32.eqz
   if
    local.get $0
    local.get $2
    i32.const 2
    i32.shl
    i32.add
    local.tee $1
    i32.load offset=4
    i32.const -2
    local.get $3
    i32.rotl
    i32.and
    local.set $3
    local.get $1
    local.get $3
    i32.store offset=4
    local.get $3
    i32.eqz
    if
     local.get $0
     local.get $0
     i32.load
     i32.const -2
     local.get $2
     i32.rotl
     i32.and
     i32.store
    end
   end
  end
 )
 (func $~lib/rt/tlsf/insertBlock (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  i32.eqz
  if
   i32.const 0
   i32.const 2624
   i32.const 201
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load
  local.tee $3
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 2624
   i32.const 203
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 4
  i32.add
  local.get $1
  i32.load
  i32.const -4
  i32.and
  i32.add
  local.tee $4
  i32.load
  local.tee $2
  i32.const 1
  i32.and
  if
   local.get $0
   local.get $4
   call $~lib/rt/tlsf/removeBlock
   local.get $1
   local.get $3
   i32.const 4
   i32.add
   local.get $2
   i32.const -4
   i32.and
   i32.add
   local.tee $3
   i32.store
   local.get $1
   i32.const 4
   i32.add
   local.get $1
   i32.load
   i32.const -4
   i32.and
   i32.add
   local.tee $4
   i32.load
   local.set $2
  end
  local.get $3
  i32.const 2
  i32.and
  if
   local.get $1
   i32.const 4
   i32.sub
   i32.load
   local.tee $1
   i32.load
   local.tee $6
   i32.const 1
   i32.and
   i32.eqz
   if
    i32.const 0
    i32.const 2624
    i32.const 221
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   call $~lib/rt/tlsf/removeBlock
   local.get $1
   local.get $6
   i32.const 4
   i32.add
   local.get $3
   i32.const -4
   i32.and
   i32.add
   local.tee $3
   i32.store
  end
  local.get $4
  local.get $2
  i32.const 2
  i32.or
  i32.store
  local.get $3
  i32.const -4
  i32.and
  local.tee $2
  i32.const 12
  i32.lt_u
  if
   i32.const 0
   i32.const 2624
   i32.const 233
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  local.get $1
  i32.const 4
  i32.add
  local.get $2
  i32.add
  i32.ne
  if
   i32.const 0
   i32.const 2624
   i32.const 234
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  i32.const 4
  i32.sub
  local.get $1
  i32.store
  local.get $2
  i32.const 256
  i32.lt_u
  if (result i32)
   local.get $2
   i32.const 4
   i32.shr_u
  else
   i32.const 31
   i32.const 1073741820
   local.get $2
   local.get $2
   i32.const 1073741820
   i32.ge_u
   select
   local.tee $2
   i32.clz
   i32.sub
   local.tee $3
   i32.const 7
   i32.sub
   local.set $5
   local.get $2
   local.get $3
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
  end
  local.tee $2
  i32.const 16
  i32.lt_u
  local.get $5
  i32.const 23
  i32.lt_u
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 2624
   i32.const 251
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $5
  i32.const 4
  i32.shl
  local.get $2
  i32.add
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=96
  local.set $3
  local.get $1
  i32.const 0
  i32.store offset=4
  local.get $1
  local.get $3
  i32.store offset=8
  local.get $3
  if
   local.get $3
   local.get $1
   i32.store offset=4
  end
  local.get $0
  local.get $5
  i32.const 4
  i32.shl
  local.get $2
  i32.add
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  i32.store offset=96
  local.get $0
  local.get $0
  i32.load
  i32.const 1
  local.get $5
  i32.shl
  i32.or
  i32.store
  local.get $0
  local.get $5
  i32.const 2
  i32.shl
  i32.add
  local.tee $0
  local.get $0
  i32.load offset=4
  i32.const 1
  local.get $2
  i32.shl
  i32.or
  i32.store offset=4
 )
 (func $~lib/rt/__visit_members (param $0 i32)
  block $invalid
   block $resolve-binary/Baz
    block $resolve-binary/Bar
     block $resolve-binary/Foo
      block $~lib/arraybuffer/ArrayBufferView
       block $~lib/string/String
        block $~lib/arraybuffer/ArrayBuffer
         block $~lib/object/Object
          local.get $0
          i32.const 8
          i32.sub
          i32.load
          br_table $~lib/object/Object $~lib/arraybuffer/ArrayBuffer $~lib/string/String $~lib/arraybuffer/ArrayBufferView $resolve-binary/Foo $resolve-binary/Bar $resolve-binary/Baz $invalid
         end
         return
        end
        return
       end
       return
      end
      local.get $0
      i32.load
      call $~lib/rt/itcms/__visit
      return
     end
     return
    end
    return
   end
   return
  end
  unreachable
 )
 (func $~lib/object/Object#constructor (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 11968
  i32.lt_s
  if
   i32.const 44768
   i32.const 44816
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 0
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/number/F64#toString (result i32)
  (local $0 i32)
  (local $1 i64)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 11968
  i32.lt_s
  if
   i32.const 44768
   i32.const 44816
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  i32.const 10432
  local.set $0
  i64.const 4
  local.set $1
  i32.const 10434
  local.set $2
  loop $while-continue|0
   local.get $1
   i64.const 100
   i64.ge_u
   if
    local.get $2
    i32.const 4
    i32.sub
    local.tee $2
    local.get $1
    local.get $1
    i64.const 100
    i64.div_u
    local.tee $1
    i64.const 100
    i64.mul
    i64.sub
    i32.wrap_i64
    i32.const 2
    i32.shl
    i32.const 2668
    i32.add
    i32.load
    i32.store
    br $while-continue|0
   end
  end
  local.get $1
  i64.const 10
  i64.ge_u
  if
   i32.const 10432
   local.get $1
   i32.wrap_i64
   i32.const 2
   i32.shl
   i32.const 2668
   i32.add
   i32.load
   i32.store
  else
   i32.const 10432
   local.get $1
   i32.wrap_i64
   i32.const 48
   i32.add
   i32.store16
  end
  i32.const 1
  local.set $2
  block $~lib/util/number/dtoa_dotZero|inlined.0
   loop $while-continue|00
    local.get $0
    i32.const 10434
    i32.lt_u
    if
     local.get $0
     i32.load16_u
     local.tee $3
     i32.const 48
     i32.lt_u
     local.get $3
     i32.const 57
     i32.gt_u
     i32.or
     local.get $3
     i32.const 45
     i32.ne
     i32.and
     br_if $~lib/util/number/dtoa_dotZero|inlined.0
     local.get $0
     i32.const 2
     i32.add
     local.set $0
     br $while-continue|00
    end
   end
   i32.const 10434
   i32.const 46
   i32.store16
   i32.const 10436
   i32.const 48
   i32.store16
   i32.const 3
   local.set $2
  end
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.const 1
  i32.shl
  local.tee $0
  i32.const 2
  call $~lib/rt/itcms/__new
  local.tee $2
  i32.store
  local.get $2
  i32.const 10432
  local.get $0
  memory.copy
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $~lib/rt/tlsf/searchBlock (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  i32.const 256
  i32.lt_u
  if
   local.get $1
   i32.const 4
   i32.shr_u
   local.set $1
  else
   local.get $1
   i32.const 536870910
   i32.lt_u
   if
    local.get $1
    i32.const 1
    i32.const 27
    local.get $1
    i32.clz
    i32.sub
    i32.shl
    i32.add
    i32.const 1
    i32.sub
    local.set $1
   end
   local.get $1
   i32.const 31
   local.get $1
   i32.clz
   i32.sub
   local.tee $2
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
   local.set $1
   local.get $2
   i32.const 7
   i32.sub
   local.set $2
  end
  local.get $1
  i32.const 16
  i32.lt_u
  local.get $2
  i32.const 23
  i32.lt_u
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 2624
   i32.const 334
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=4
  i32.const -1
  local.get $1
  i32.shl
  i32.and
  local.tee $1
  if (result i32)
   local.get $0
   local.get $1
   i32.ctz
   local.get $2
   i32.const 4
   i32.shl
   i32.add
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=96
  else
   local.get $0
   i32.load
   i32.const -1
   local.get $2
   i32.const 1
   i32.add
   i32.shl
   i32.and
   local.tee $1
   if (result i32)
    local.get $0
    local.get $1
    i32.ctz
    local.tee $1
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=4
    local.tee $2
    i32.eqz
    if
     i32.const 0
     i32.const 2624
     i32.const 347
     i32.const 18
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $2
    i32.ctz
    local.get $1
    i32.const 4
    i32.shl
    i32.add
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=96
   else
    i32.const 0
   end
  end
 )
 (func $~lib/rt/tlsf/initialize
  (local $0 i32)
  (local $1 i32)
  memory.size
  local.tee $1
  i32.const 0
  i32.le_s
  if (result i32)
   i32.const 1
   local.get $1
   i32.sub
   memory.grow
   i32.const 0
   i32.lt_s
  else
   i32.const 0
  end
  if
   unreachable
  end
  i32.const 44736
  i32.const 0
  i32.store
  i32.const 46304
  i32.const 0
  i32.store
  loop $for-loop|0
   local.get $0
   i32.const 23
   i32.lt_u
   if
    local.get $0
    i32.const 2
    i32.shl
    i32.const 44736
    i32.add
    i32.const 0
    i32.store offset=4
    i32.const 0
    local.set $1
    loop $for-loop|1
     local.get $1
     i32.const 16
     i32.lt_u
     if
      local.get $0
      i32.const 4
      i32.shl
      local.get $1
      i32.add
      i32.const 2
      i32.shl
      i32.const 44736
      i32.add
      i32.const 0
      i32.store offset=96
      local.get $1
      i32.const 1
      i32.add
      local.set $1
      br $for-loop|1
     end
    end
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
  i32.const 44736
  i32.const 46308
  memory.size
  i64.extend_i32_s
  i64.const 16
  i64.shl
  call $~lib/rt/tlsf/addMemory
  i32.const 44736
  global.set $~lib/rt/tlsf/ROOT
 )
 (func $~lib/rt/tlsf/addMemory (param $0 i32) (param $1 i32) (param $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $2
  local.get $1
  i64.extend_i32_u
  i64.lt_u
  if
   i32.const 0
   i32.const 2624
   i32.const 382
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 19
  i32.add
  i32.const -16
  i32.and
  i32.const 4
  i32.sub
  local.set $1
  local.get $0
  i32.load offset=1568
  local.tee $3
  if
   local.get $3
   i32.const 4
   i32.add
   local.get $1
   i32.gt_u
   if
    i32.const 0
    i32.const 2624
    i32.const 389
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $3
   local.get $1
   i32.const 16
   i32.sub
   local.tee $5
   i32.eq
   if
    local.get $3
    i32.load
    local.set $4
    local.get $5
    local.set $1
   end
  else
   local.get $0
   i32.const 1572
   i32.add
   local.get $1
   i32.gt_u
   if
    i32.const 0
    i32.const 2624
    i32.const 402
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $2
  i32.wrap_i64
  i32.const -16
  i32.and
  local.get $1
  i32.sub
  local.tee $3
  i32.const 20
  i32.lt_u
  if
   return
  end
  local.get $1
  local.get $4
  i32.const 2
  i32.and
  local.get $3
  i32.const 8
  i32.sub
  local.tee $3
  i32.const 1
  i32.or
  i32.or
  i32.store
  local.get $1
  i32.const 0
  i32.store offset=4
  local.get $1
  i32.const 0
  i32.store offset=8
  local.get $1
  i32.const 4
  i32.add
  local.get $3
  i32.add
  local.tee $3
  i32.const 2
  i32.store
  local.get $0
  local.get $3
  i32.store offset=1568
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/insertBlock
 )
 (func $~lib/rt/itcms/visitRoots
  (local $0 i32)
  (local $1 i32)
  global.get $resolve-binary/foo
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $resolve-binary/bar
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $resolve-binary/bar2
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $resolve-binary/baz
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  i32.const 2480
  call $~lib/rt/itcms/__visit
  i32.const 2288
  call $~lib/rt/itcms/__visit
  i32.const 3088
  call $~lib/rt/itcms/__visit
  i32.const 4144
  call $~lib/rt/itcms/__visit
  global.get $~lib/rt/itcms/pinSpace
  local.tee $1
  i32.load offset=4
  i32.const -4
  i32.and
  local.set $0
  loop $while-continue|0
   local.get $0
   local.get $1
   i32.ne
   if
    local.get $0
    i32.load offset=4
    i32.const 3
    i32.and
    i32.const 3
    i32.ne
    if
     i32.const 0
     i32.const 2352
     i32.const 160
     i32.const 16
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 20
    i32.add
    call $~lib/rt/__visit_members
    local.get $0
    i32.load offset=4
    i32.const -4
    i32.and
    local.set $0
    br $while-continue|0
   end
  end
 )
 (func $resolve-binary/Bar#constructor (result i32)
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 11968
  i32.lt_s
  if
   i32.const 44768
   i32.const 44816
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 5
  call $~lib/rt/itcms/__new
  local.tee $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $~lib/object/Object#constructor
  local.tee $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~start
  call $start:resolve-binary
 )
 (func $~lib/rt/itcms/step (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  block $break|0
   block $case2|0
    block $case1|0
     block $case0|0
      global.get $~lib/rt/itcms/state
      br_table $case0|0 $case1|0 $case2|0 $break|0
     end
     i32.const 1
     global.set $~lib/rt/itcms/state
     i32.const 0
     global.set $~lib/rt/itcms/visitCount
     call $~lib/rt/itcms/visitRoots
     global.get $~lib/rt/itcms/toSpace
     global.set $~lib/rt/itcms/iter
     global.get $~lib/rt/itcms/visitCount
     return
    end
    global.get $~lib/rt/itcms/white
    i32.eqz
    local.set $1
    global.get $~lib/rt/itcms/iter
    i32.load offset=4
    i32.const -4
    i32.and
    local.set $0
    loop $while-continue|1
     local.get $0
     global.get $~lib/rt/itcms/toSpace
     i32.ne
     if
      local.get $0
      global.set $~lib/rt/itcms/iter
      local.get $1
      local.get $0
      i32.load offset=4
      local.tee $2
      i32.const 3
      i32.and
      i32.ne
      if
       local.get $0
       local.get $2
       i32.const -4
       i32.and
       local.get $1
       i32.or
       i32.store offset=4
       i32.const 0
       global.set $~lib/rt/itcms/visitCount
       local.get $0
       i32.const 20
       i32.add
       call $~lib/rt/__visit_members
       global.get $~lib/rt/itcms/visitCount
       return
      end
      local.get $0
      i32.load offset=4
      i32.const -4
      i32.and
      local.set $0
      br $while-continue|1
     end
    end
    i32.const 0
    global.set $~lib/rt/itcms/visitCount
    call $~lib/rt/itcms/visitRoots
    global.get $~lib/rt/itcms/toSpace
    global.get $~lib/rt/itcms/iter
    i32.load offset=4
    i32.const -4
    i32.and
    i32.eq
    if
     global.get $~lib/memory/__stack_pointer
     local.set $0
     loop $while-continue|0
      local.get $0
      i32.const 44736
      i32.lt_u
      if
       local.get $0
       i32.load
       call $~lib/rt/itcms/__visit
       local.get $0
       i32.const 4
       i32.add
       local.set $0
       br $while-continue|0
      end
     end
     global.get $~lib/rt/itcms/iter
     i32.load offset=4
     i32.const -4
     i32.and
     local.set $0
     loop $while-continue|2
      local.get $0
      global.get $~lib/rt/itcms/toSpace
      i32.ne
      if
       local.get $1
       local.get $0
       i32.load offset=4
       local.tee $2
       i32.const 3
       i32.and
       i32.ne
       if
        local.get $0
        local.get $2
        i32.const -4
        i32.and
        local.get $1
        i32.or
        i32.store offset=4
        local.get $0
        i32.const 20
        i32.add
        call $~lib/rt/__visit_members
       end
       local.get $0
       i32.load offset=4
       i32.const -4
       i32.and
       local.set $0
       br $while-continue|2
      end
     end
     global.get $~lib/rt/itcms/fromSpace
     local.set $0
     global.get $~lib/rt/itcms/toSpace
     global.set $~lib/rt/itcms/fromSpace
     local.get $0
     global.set $~lib/rt/itcms/toSpace
     local.get $1
     global.set $~lib/rt/itcms/white
     local.get $0
     i32.load offset=4
     i32.const -4
     i32.and
     global.set $~lib/rt/itcms/iter
     i32.const 2
     global.set $~lib/rt/itcms/state
    end
    global.get $~lib/rt/itcms/visitCount
    return
   end
   global.get $~lib/rt/itcms/iter
   local.tee $0
   global.get $~lib/rt/itcms/toSpace
   i32.ne
   if
    local.get $0
    i32.load offset=4
    local.tee $1
    i32.const -4
    i32.and
    global.set $~lib/rt/itcms/iter
    global.get $~lib/rt/itcms/white
    i32.eqz
    local.get $1
    i32.const 3
    i32.and
    i32.ne
    if
     i32.const 0
     i32.const 2352
     i32.const 229
     i32.const 20
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 44736
    i32.lt_u
    if
     local.get $0
     i32.const 0
     i32.store offset=4
     local.get $0
     i32.const 0
     i32.store offset=8
    else
     global.get $~lib/rt/itcms/total
     local.get $0
     i32.load
     i32.const -4
     i32.and
     i32.const 4
     i32.add
     i32.sub
     global.set $~lib/rt/itcms/total
     local.get $0
     i32.const 4
     i32.add
     local.tee $0
     i32.const 44736
     i32.ge_u
     if
      global.get $~lib/rt/tlsf/ROOT
      i32.eqz
      if
       call $~lib/rt/tlsf/initialize
      end
      global.get $~lib/rt/tlsf/ROOT
      local.get $0
      i32.const 4
      i32.sub
      local.set $2
      local.get $0
      i32.const 15
      i32.and
      i32.const 1
      local.get $0
      select
      if (result i32)
       i32.const 1
      else
       local.get $2
       i32.load
       i32.const 1
       i32.and
      end
      if
       i32.const 0
       i32.const 2624
       i32.const 562
       i32.const 3
       call $~lib/builtins/abort
       unreachable
      end
      local.get $2
      local.get $2
      i32.load
      i32.const 1
      i32.or
      i32.store
      local.get $2
      call $~lib/rt/tlsf/insertBlock
     end
    end
    i32.const 10
    return
   end
   global.get $~lib/rt/itcms/toSpace
   global.get $~lib/rt/itcms/toSpace
   i32.store offset=4
   global.get $~lib/rt/itcms/toSpace
   global.get $~lib/rt/itcms/toSpace
   i32.store offset=8
   i32.const 0
   global.set $~lib/rt/itcms/state
  end
  i32.const 0
 )
 (func $start:resolve-binary
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 11968
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 1056
   i32.store
   i32.const 1056
   i32.const 1056
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 2000
    i32.const 2
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 1088
   i32.store
   i32.const 1088
   i32.const 1088
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 2000
    i32.const 7
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 1056
   i32.store
   i32.const 1056
   i32.const 1056
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 2000
    i32.const 12
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 1088
   i32.store
   i32.const 1088
   i32.const 1088
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 2000
    i32.const 17
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 1088
   i32.store
   i32.const 1088
   i32.const 1088
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 2000
    i32.const 22
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 1056
   i32.store
   i32.const 1056
   i32.const 1056
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 2000
    i32.const 27
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   memory.size
   i32.const 16
   i32.shl
   i32.const 44736
   i32.sub
   i32.const 1
   i32.shr_u
   global.set $~lib/rt/itcms/threshold
   i32.const 2404
   i32.const 2400
   i32.store
   i32.const 2408
   i32.const 2400
   i32.store
   i32.const 2400
   global.set $~lib/rt/itcms/pinSpace
   i32.const 2436
   i32.const 2432
   i32.store
   i32.const 2440
   i32.const 2432
   i32.store
   i32.const 2432
   global.set $~lib/rt/itcms/toSpace
   i32.const 2580
   i32.const 2576
   i32.store
   i32.const 2584
   i32.const 2576
   i32.store
   i32.const 2576
   global.set $~lib/rt/itcms/fromSpace
   i32.const 1
   global.set $resolve-binary/a
   i32.const 1
   call $~lib/number/I32#toString
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const 4240
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 2000
    i32.const 36
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $resolve-binary/a
   i32.const 1
   i32.add
   global.set $resolve-binary/a
   global.get $resolve-binary/a
   call $~lib/number/I32#toString
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const 4272
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 2000
    i32.const 41
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $resolve-binary/a
   i32.const 1
   i32.sub
   global.set $resolve-binary/a
   global.get $resolve-binary/a
   call $~lib/number/I32#toString
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const 4240
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 2000
    i32.const 46
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $resolve-binary/a
   i32.const 1
   i32.shl
   global.set $resolve-binary/a
   global.get $resolve-binary/a
   call $~lib/number/I32#toString
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const 4272
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 2000
    i32.const 51
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   call $~lib/number/F64#toString
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const 11440
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 2000
    i32.const 57
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 4
   global.set $resolve-binary/a
   i32.const 2
   global.set $resolve-binary/a
   i32.const 2
   call $~lib/number/I32#toString
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const 4272
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 2000
    i32.const 63
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $resolve-binary/a
   i32.const 3
   i32.rem_s
   global.set $resolve-binary/a
   global.get $resolve-binary/a
   call $~lib/number/I32#toString
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const 4272
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 2000
    i32.const 68
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $resolve-binary/a
   i32.const 1
   i32.shl
   global.set $resolve-binary/a
   global.get $resolve-binary/a
   call $~lib/number/I32#toString
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const 11472
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 2000
    i32.const 73
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $resolve-binary/a
   i32.const 1
   i32.shr_s
   global.set $resolve-binary/a
   global.get $resolve-binary/a
   call $~lib/number/I32#toString
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const 4272
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 2000
    i32.const 78
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $resolve-binary/a
   i32.const 1
   i32.shr_u
   global.set $resolve-binary/a
   global.get $resolve-binary/a
   call $~lib/number/I32#toString
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const 4240
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 2000
    i32.const 83
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $resolve-binary/a
   i32.const 3
   i32.and
   global.set $resolve-binary/a
   global.get $resolve-binary/a
   call $~lib/number/I32#toString
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const 4240
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 2000
    i32.const 88
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $resolve-binary/a
   i32.const 3
   i32.or
   global.set $resolve-binary/a
   global.get $resolve-binary/a
   call $~lib/number/I32#toString
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const 11504
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 2000
    i32.const 93
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $resolve-binary/a
   i32.const 2
   i32.xor
   global.set $resolve-binary/a
   global.get $resolve-binary/a
   call $~lib/number/I32#toString
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const 4240
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 2000
    i32.const 98
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 3
   call $~lib/number/I32#toString
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const 11504
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 2000
    i32.const 105
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   i32.const -1
   call $~lib/number/I32#toString
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const 11536
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 2000
    i32.const 110
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 2
   call $~lib/number/I32#toString
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const 4272
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 2000
    i32.const 115
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 2
   call $~lib/number/I32#toString
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const 4272
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 2000
    i32.const 120
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 1
   call $~lib/number/I32#toString
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const 4240
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 2000
    i32.const 125
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 4
   call $~lib/number/I32#toString
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const 11472
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 2000
    i32.const 132
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   call $~lib/number/F64#toString
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const 11440
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 2000
    i32.const 139
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   call $~lib/number/F64#toString
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const 11440
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 2000
    i32.const 146
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 4
   call $~lib/number/I32#toString
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const 11472
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 2000
    i32.const 153
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 1
   call $~lib/number/I32#toString
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const 4240
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 2000
    i32.const 158
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 3
   call $~lib/number/I32#toString
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const 11504
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 2000
    i32.const 163
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 1
   call $~lib/number/I32#toString
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const 4240
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 2000
    i32.const 170
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 3
   call $~lib/number/I32#toString
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const 11504
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 2000
    i32.const 175
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 2
   call $~lib/number/I32#toString
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const 4272
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 2000
    i32.const 180
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 2
   call $~lib/number/I32#toString
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const 4272
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 2000
    i32.const 187
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   call $~lib/number/I32#toString
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const 2256
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 2000
    i32.const 192
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 1
   call $~lib/number/I32#toString
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const 4240
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 2000
    i32.const 197
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 2
   call $~lib/number/I32#toString
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const 4272
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 2000
    i32.const 202
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 11968
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   call $~lib/object/Object#constructor
   local.tee $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   global.set $resolve-binary/foo
   global.get $~lib/memory/__stack_pointer
   global.get $resolve-binary/foo
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   global.get $resolve-binary/foo
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   i32.const 11568
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 11568
   i32.store
   i32.const 11568
   i32.const 11568
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 2000
    i32.const 263
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $resolve-binary/foo
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   global.get $resolve-binary/foo
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   i32.const 11600
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 11600
   i32.store
   i32.const 11600
   i32.const 11600
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 2000
    i32.const 268
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $resolve-binary/foo
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   global.get $resolve-binary/foo
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   i32.const 11632
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 11632
   i32.store
   i32.const 11632
   i32.const 11632
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 2000
    i32.const 273
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $resolve-binary/foo
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   global.get $resolve-binary/foo
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   i32.const 11664
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 11664
   i32.store
   i32.const 11664
   i32.const 11664
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 2000
    i32.const 278
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $resolve-binary/foo
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   global.get $resolve-binary/foo
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   i32.const 11696
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 11696
   i32.store
   i32.const 11696
   i32.const 11696
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 2000
    i32.const 283
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $resolve-binary/foo
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   global.get $resolve-binary/foo
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   i32.const 11728
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 11728
   i32.store
   i32.const 11728
   i32.const 11728
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 2000
    i32.const 288
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $resolve-binary/foo
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   global.get $resolve-binary/foo
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   i32.const 11760
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 11760
   i32.store
   i32.const 11760
   i32.const 11760
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 2000
    i32.const 293
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $resolve-binary/foo
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   global.get $resolve-binary/foo
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   i32.const 11792
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 11792
   i32.store
   i32.const 11792
   i32.const 11792
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 2000
    i32.const 298
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $resolve-binary/foo
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   global.get $resolve-binary/foo
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   i32.const 11824
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 11824
   i32.store
   i32.const 11824
   i32.const 11824
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 2000
    i32.const 303
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $resolve-binary/foo
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   global.get $resolve-binary/foo
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   i32.const 11856
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 11856
   i32.store
   i32.const 11856
   i32.const 11856
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 2000
    i32.const 308
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $resolve-binary/foo
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   global.get $resolve-binary/foo
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   i32.const 11888
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 11888
   i32.store
   i32.const 11888
   i32.const 11888
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 2000
    i32.const 313
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $resolve-binary/foo
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   global.get $resolve-binary/foo
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   i32.const 11920
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 11920
   i32.store
   i32.const 11920
   i32.const 11920
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 2000
    i32.const 318
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   call $resolve-binary/Bar#constructor
   global.set $resolve-binary/bar
   call $resolve-binary/Bar#constructor
   global.set $resolve-binary/bar2
   global.get $~lib/memory/__stack_pointer
   global.get $resolve-binary/bar
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   global.get $resolve-binary/bar2
   local.tee $0
   i32.store offset=8
   local.get $0
   global.set $resolve-binary/bar
   global.get $~lib/memory/__stack_pointer
   global.get $resolve-binary/bar
   local.tee $0
   i32.store
   global.get $resolve-binary/bar2
   local.get $0
   i32.ne
   if
    i32.const 0
    i32.const 2000
    i32.const 336
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $resolve-binary/bar
   global.get $resolve-binary/bar2
   i32.ne
   if
    i32.const 0
    i32.const 2000
    i32.const 341
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 11968
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 6
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   call $~lib/object/Object#constructor
   local.tee $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   global.set $resolve-binary/baz
   global.get $~lib/memory/__stack_pointer
   global.get $resolve-binary/baz
   i32.store
   global.get $~lib/memory/__stack_pointer
   global.get $resolve-binary/baz
   local.tee $0
   i32.store
   global.get $resolve-binary/baz
   local.get $0
   i32.ne
   if
    i32.const 0
    i32.const 2000
    i32.const 366
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $resolve-binary/baz
   i32.store
   global.get $~lib/memory/__stack_pointer
   global.get $resolve-binary/baz
   local.tee $0
   i32.store
   global.get $resolve-binary/baz
   local.get $0
   i32.ne
   if
    i32.const 0
    i32.const 2000
    i32.const 372
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 44768
  i32.const 44816
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
)
