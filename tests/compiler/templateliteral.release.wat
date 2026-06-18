(module
 (type $0 (func (param i32 i32) (result i32)))
 (type $1 (func (param i32) (result i32)))
 (type $2 (func))
 (type $3 (func (param i32)))
 (type $4 (func (param f64) (result i32)))
 (type $5 (func (param i32 i32)))
 (type $6 (func (param i32 i32 i32 i32)))
 (type $7 (func (param i32 i32 i32)))
 (type $8 (func (param i32 i32 i64)))
 (type $9 (func (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (global $~lib/util/dtoa/gPow10Hi (mut i64) (i64.const 0))
 (global $~lib/util/dtoa/gPow10Lo (mut i64) (i64.const 0))
 (global $~lib/util/dtoa/gBcd (mut i64) (i64.const 0))
 (global $~lib/util/dtoa/gBcdLen (mut i32) (i32.const 0))
 (global $~lib/util/dtoa/gDigHi (mut i64) (i64.const 0))
 (global $~lib/util/dtoa/gDigLo (mut i64) (i64.const 0))
 (global $~lib/util/dtoa/gDigits (mut i32) (i32.const 0))
 (global $~lib/util/dtoa/gSig (mut i64) (i64.const 0))
 (global $~lib/util/dtoa/gExp (mut i32) (i32.const 0))
 (global $~lib/util/dtoa/gLastDigit (mut i32) (i32.const 0))
 (global $~lib/util/dtoa/gHasLastDigit (mut i32) (i32.const 0))
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
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 39408))
 (global $~started (mut i32) (i32.const 0))
 (memory $0 1)
 (data $0 (i32.const 1036) "\1c")
 (data $0.1 (i32.const 1048) "\02\00\00\00\02\00\00\00a")
 (data $1 (i32.const 1068) "\1c")
 (data $1.1 (i32.const 1080) "\02\00\00\00\02\00\00\00b")
 (data $2 (i32.const 1104) "p\\\ea{\ce2~\8f\1a\c7C\c6\b0\b7\96\e5\ae\05\03\05\'\c6\ab\b7\bf7\cf\d0\b8\d1\ef\92\fe%\e5\1a\8eO\19\eb2\ebP\e2\a4?\14\bc\f5\88\r\b5P\99v\96!\dbH\bb\1a\c2\bd\f0\b4\15\07\c9{\ce\97\c0]\11l:\96\0b\13\9a\c7\1b\e0\c3V\df\84\f6\06\e3L6\12\197\c5\9e\b5p+\a8\ad\c5\9d\97\"\81E@|o\fc\dfNg\04\cd\c9\f2\c9\e6\0b\b96\d7\07\8f\a1\85\t\94\f8x9?\81:\0f \f4\'\8f\cb\ce\c8\a5\19\90\b9\a5o\a5\a0\84\14@aQY\84\00\a1\ed\cc\ce\1b\c2\d3\00\b4W\n?\16h\a9\00\90\acn2x\86\87\00\80z\17\b7&\d7\d8\00\00b\ac\c5\ebx\ad\00\00\e8\89\04#\c7\8a\00\00@v:k\0b\de\00\00\00\c5.\bc\a2\b1\00\00\00\04\bf\c9\1b\8e\00\00\00\a01\a9_\e3\00\00\00\80\f4 \e6\b5\00\00\00\00*\e7\84\91\00\00\00\00\10\a5\d4\e8\00\00\00\00@\b7C\ba\00\00\00\00\00\f9\02\95\00\00\00\00\00(k\ee\00\00\00\00\00 \bc\be\00\00\00\00\00\80\96\98\00\00\00\00\00\00$\f4\00\00\00\00\00\00P\c3\00\00\00\00\00\00@\9c\00\00\00\00\00\00\00\fa\00\00\00\00\00\00\00\c8\00\00\00\00\00\00\00\a0\00\00\00\00\00\00\00\80\cd\cc\cc\cc\cc\cc\cc\cc\0b\d7\a3p=\n\d7\a3<\dfO\8d\97n\12\83,e\19\e2X\17\b7\d1$\84G\1bG\ac\c5\a7\b6il\af\05\bd7\86\bdBz\e5\d5\94\bf\d6\fd\cea\84\11w\cc\ab\98\a5\b46A_p\89\bf\d5\ed\bd\ce\fe\e6\db\ff\aa$\cb\0b\ff\eb\af\cc\88Po\t\cc\bc\8c\14\0e\b4KB\13.\e1\10\d8\\\t5\dc$\b4\da\ac\b0:\f7|\1d\90\\\e1M\c4\be\94\95\e6J\b4\a462\aaw\b8\08]\1d\92\8e\ee\92\93\a6a\95\b6}J\1e\ec\eb\1a\11\92d\08\e5\bc\ef{\datP\a0\1d\97\b2,\f7\ba\80\00\c9\f1(\8a\92\95\00\9am\c1S;uD\cd\14\be\9aR\c5\ee\d3\ae\87\96\f7\db\9dXv%\06\12\c6I~\e0\91\b7\d1t\9e\0e\ca\00\83\f2\b5\87\fd?;\9a5\f5\f7\d2\ca2\fc\14^\f7_B\a2\f5\fcCK,\b3\ce\81\bb\949E\ad\1e\b1\cf")
 (data $3 (i32.const 1720) "\"\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$\"#$!\"#")
 (data $4 (i32.const 1980) "<")
 (data $4.1 (i32.const 1992) "\02\00\00\00$\00\00\00t\00e\00m\00p\00l\00a\00t\00e\00l\00i\00t\00e\00r\00a\00l\00.\00t\00s")
 (data $5 (i32.const 2044) "\1c")
 (data $5.1 (i32.const 2056) "\02")
 (data $6 (i32.const 2076) "<")
 (data $6.1 (i32.const 2088) "\02\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
 (data $7 (i32.const 2140) "<")
 (data $7.1 (i32.const 2152) "\02\00\00\00 \00\00\00~\00l\00i\00b\00/\00r\00t\00/\00i\00t\00c\00m\00s\00.\00t\00s")
 (data $10 (i32.const 2268) "<")
 (data $10.1 (i32.const 2280) "\02\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data $11 (i32.const 2332) ",")
 (data $11.1 (i32.const 2344) "\02\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s")
 (data $13 (i32.const 2412) "<")
 (data $13.1 (i32.const 2424) "\02\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s")
 (data $14 (i32.const 2476) "\1c")
 (data $14.1 (i32.const 2488) "\02\00\00\00\04\00\00\00a\00b")
 (data $15 (i32.const 2508) "\1c")
 (data $15.1 (i32.const 2520) "\02\00\00\00\06\00\00\00(\00A\00=")
 (data $16 (i32.const 2540) "\1c")
 (data $16.1 (i32.const 2552) "\02\00\00\00\08\00\00\00,\00 \00B\00=")
 (data $17 (i32.const 2572) "\1c")
 (data $17.1 (i32.const 2584) "\02\00\00\00\02\00\00\00)")
 (data $18 (i32.const 2604) ",\00\00\00\03\00\00\00\00\00\00\00\04\00\00\00\14\00\00\00\e0\t\00\00\00\00\00\00\00\n\00\00\00\00\00\00 \n")
 (data $19 (i32.const 2652) ",")
 (data $19.1 (i32.const 2664) "\02\00\00\00\14\00\00\00(\00A\00=\00a\00,\00 \00B\00=\00b\00)")
 (data $20 (i32.const 2700) "|")
 (data $20.1 (i32.const 2712) "\02\00\00\00d\00\00\00t\00o\00S\00t\00r\00i\00n\00g\00(\00)\00 \00r\00a\00d\00i\00x\00 \00a\00r\00g\00u\00m\00e\00n\00t\00 \00m\00u\00s\00t\00 \00b\00e\00 \00b\00e\00t\00w\00e\00e\00n\00 \002\00 \00a\00n\00d\00 \003\006")
 (data $21 (i32.const 2828) "<")
 (data $21.1 (i32.const 2840) "\02\00\00\00&\00\00\00~\00l\00i\00b\00/\00u\00t\00i\00l\00/\00n\00u\00m\00b\00e\00r\00.\00t\00s")
 (data $22 (i32.const 2892) "\1c")
 (data $22.1 (i32.const 2904) "\02\00\00\00\02\00\00\000")
 (data $23 (i32.const 2924) "0\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009")
 (data $24 (i32.const 3324) "\1c\04")
 (data $24.1 (i32.const 3336) "\02\00\00\00\00\04\00\000\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\000\00a\000\00b\000\00c\000\00d\000\00e\000\00f\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\001\00a\001\00b\001\00c\001\00d\001\00e\001\00f\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\002\00a\002\00b\002\00c\002\00d\002\00e\002\00f\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\003\00a\003\00b\003\00c\003\00d\003\00e\003\00f\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\004\00a\004\00b\004\00c\004\00d\004\00e\004\00f\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\005\00a\005\00b\005\00c\005\00d\005\00e\005\00f\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\006\00a\006\00b\006\00c\006\00d\006\00e\006\00f\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\007\00a\007\00b\007\00c\007\00d\007\00e\007\00f\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\008\00a\008\00b\008\00c\008\00d\008\00e\008\00f\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009\009\00a\009\00b\009\00c\009\00d\009\00e\009\00f\00a\000\00a\001\00a\002\00a\003\00a\004\00a\005\00a\006\00a\007\00a\008\00a\009\00a\00a\00a\00b\00a\00c\00a\00d\00a\00e\00a\00f\00b\000\00b\001\00b\002\00b\003\00b\004\00b\005\00b\006\00b\007\00b\008\00b\009\00b\00a\00b\00b\00b\00c\00b\00d\00b\00e\00b\00f\00c\000\00c\001\00c\002\00c\003\00c\004\00c\005\00c\006\00c\007\00c\008\00c\009\00c\00a\00c\00b\00c\00c\00c\00d\00c\00e\00c\00f\00d\000\00d\001\00d\002\00d\003\00d\004\00d\005\00d\006\00d\007\00d\008\00d\009\00d\00a\00d\00b\00d\00c\00d\00d\00d\00e\00d\00f\00e\000\00e\001\00e\002\00e\003\00e\004\00e\005\00e\006\00e\007\00e\008\00e\009\00e\00a\00e\00b\00e\00c\00e\00d\00e\00e\00e\00f\00f\000\00f\001\00f\002\00f\003\00f\004\00f\005\00f\006\00f\007\00f\008\00f\009\00f\00a\00f\00b\00f\00c\00f\00d\00f\00e\00f\00f")
 (data $25 (i32.const 4380) "\\")
 (data $25.1 (i32.const 4392) "\02\00\00\00H\00\00\000\001\002\003\004\005\006\007\008\009\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z")
 (data $26 (i32.const 4476) "\1c")
 (data $26.1 (i32.const 4488) "\02\00\00\00\02\00\00\001")
 (data $27 (i32.const 4508) "\1c")
 (data $27.1 (i32.const 4520) "\02\00\00\00\04\00\00\001\002")
 (data $28 (i32.const 4540) ",\00\00\00\03\00\00\00\00\00\00\00\04\00\00\00\14\00\00\00\e0\t\00\00\00\00\00\00\00\n\00\00\00\00\00\00 \n")
 (data $29 (i32.const 4588) ",")
 (data $29.1 (i32.const 4600) "\02\00\00\00\14\00\00\00(\00A\00=\001\00,\00 \00B\00=\002\00)")
 (data $31 (i32.const 4775) "\80\00\00\00\00\00\00\00\a0\00\00\00\00\00\00\00\c8\00\00\00\00\00\00\00\fa\00\00\00\00\00\00@\9c\00\00\00\00\00\00P\c3\00\00\00\00\00\00$\f4\00\00\00\00\00\80\96\98\00\00\00\00\00 \bc\be\00\00\00\00\00(k\ee\00\00\00\00\00\f9\02\95\00\00\00\00@\b7C\ba\00\00\00\00\10\a5\d4\e8\00\00\00\00*\e7\84\91\00\00\00\80\f4 \e6\b5\00\00\00\a01\a9_\e3\00\00\00\04\bf\c9\1b\8e\00\00\00\c5.\bc\a2\b1\00\00@v:k\0b\de\00\00\e8\89\04#\c7\8a\00\00b\ac\c5\ebx\ad\00\80z\17\b7&\d7\d8\00\90\acn2x\86\87\00\b4W\n?\16h\a9\00\a1\ed\cc\ce\1b\c2\d3\a0\84\14@aQY\84\c8\a5\19\90\b9\a5o\a5:\0f \f4\'\8f\cb\ce")
 (data $32 (i32.const 4992) "o\1b\8e(\10T\8e\af\daM\e4^\ae\f0\ec\07J\fb\9f\f4\98\'D\b1\9dwA\df\cf\11\cd\99\07\ef\99\85\0b?\fe\b2\15\aa\b4\dc\e6\a7\1f\86c\beZ\06\0b\a5\bc\b4\aaSkuz\07\ed\0f\08\bf,)Ud\7f\b6C\d5\b1\17L\c8;\1a\fb;\efi\c2\87F\b8B\a7\ee@OQ]=\eb\dd\e4PF\1a\12\ba\13\e4labM\f3\92\ea\af(\b6\ef&\e2\bb\8c6U\n\f7\89\04\89\0f`\cb\05\e9\b8\b6\bd!\c9\c1\bb\87\e9\00T\96_\9a\84x\db\8f\bf4\d0\bdr\04R\98\de\'\8a\92\95\00\9am\c1\94\82\17\0f<\05\b7u\00\00\00\00\00\00P\c3\00\00\00\00\00\00\00\00\05\e3L6\12\197\c5\00\00\00\00\00\00(l\d6\aa\80\9d\ef\f0\"\c7\f6~\b9\b7\d2:MBL\c8q\d5m\93\13\c9\ea8\1e\cd\19:\bc\03\1cU\ab\01\80\0c\t\cb\c6,\07\d3\bf\f5\ad\\\a1\90\08\137h\03\cd\10\8cz\c3\87\a8\db6.\ef\07\12\c2\b2\02\cf\bc\f4\03^\e4g\f9\94\c7\85\d7in\f8\06\d1R\ba\be\01\d763\e1|\a0\1c4\a8E\10\d3Q\a0\t\12\11H\de\1e1Vx\85\fa\a6\1e\d5f\a5>\7f\"t*U3\f1\ca\ba\0f)2\d7\96@\adGy\17|\a9t\088\c7\b1\d8J\d9\bc\"x\ae\81R7\18")
 (data $33 (i32.const 5360) "?6N\n@\18\00\00\00d\00\00@\00 $\00\00\00\00\00\00\00\0c\80\13\c8\82\1f\e0L^\0f\f60\d7\1b\00\00\00\00\00\00\00\fc\ff\f7\cd\d8\01\82n\d1?\cd@\01%d\db\r\r\00\00\00$\04\14@8qS\b4\1dx\11")
 (data $34 (i32.const 5446) "\f0?\00\00\00\00\00\00$@\00\00\00\00\00\00Y@\00\00\00\00\00@\8f@\00\00\00\00\00\88\c3@\00\00\00\00\00j\f8@\00\00\00\00\80\84.A\00\00\00\00\d0\12cA\00\00\00\00\84\d7\97A\00\00\00\00e\cd\cdA\00\00\00 _\a0\02B\00\00\00\e8vH7B\00\00\00\a2\94\1amB\00\00@\e5\9c0\a2B\00\00\90\1e\c4\bc\d6B\00\004&\f5k\0cC\00\80\e07y\c3AC\00\a0\d8\85W4vC\00\c8Ngm\c1\abC\00=\91`\e4X\e1C@\8c\b5x\1d\af\15DP\ef\e2\d6\e4\1aKD\92\d5M\06\cf\f0\80D")
 (data $35 (i32.const 5628) "\1c")
 (data $35.1 (i32.const 5640) "\02\00\00\00\06\00\00\001\00.\000")
 (data $36 (i32.const 5660) "\1c")
 (data $36.1 (i32.const 5672) "\02\00\00\00\0c\00\00\001\00.\000\002\00.\000")
 (data $37 (i32.const 5692) ",\00\00\00\03\00\00\00\00\00\00\00\04\00\00\00\14\00\00\00\e0\t\00\00\00\00\00\00\00\n\00\00\00\00\00\00 \n")
 (data $38 (i32.const 5740) ",")
 (data $38.1 (i32.const 5752) "\02\00\00\00\1c\00\00\00(\00A\00=\001\00.\000\00,\00 \00B\00=\002\00.\000\00)")
 (data $39 (i32.const 5788) "\1c")
 (data $39.1 (i32.const 5800) "\02\00\00\00\02\00\00\002")
 (data $40 (i32.const 5820) "\1c")
 (data $40.1 (i32.const 5832) "\02\00\00\00\08\00\00\00p\00r\00e\00f")
 (data $41 (i32.const 5852) "\1c")
 (data $41.1 (i32.const 5864) "\02\00\00\00\n\00\00\00p\00r\00e\00f\002")
 (data $42 (i32.const 5884) "\1c")
 (data $42.1 (i32.const 5896) "\02\00\00\00\n\00\00\00p\00r\00e\00f\00b")
 (data $43 (i32.const 5916) "\1c")
 (data $43.1 (i32.const 5928) "\02\00\00\00\08\00\00\00s\00u\00f\00f")
 (data $44 (i32.const 5948) "\1c")
 (data $44.1 (i32.const 5960) "\02\00\00\00\n\00\00\002\00s\00u\00f\00f")
 (data $45 (i32.const 5980) "\1c")
 (data $45.1 (i32.const 5992) "\02\00\00\00\n\00\00\00b\00s\00u\00f\00f")
 (data $46 (i32.const 6012) "\1c")
 (data $46.1 (i32.const 6024) "\02\00\00\00\04\00\00\002\00b")
 (data $47 (i32.const 6044) "\1c")
 (data $47.1 (i32.const 6056) "\02\00\00\00\08\00\00\00r\00e\00f\00#")
 (data $48 (i32.const 6076) "\1c")
 (data $48.1 (i32.const 6088) "\02\00\00\00\n\00\00\00r\00e\00f\00#\001")
 (data $49 (i32.const 6108) ",")
 (data $49.1 (i32.const 6120) "\02\00\00\00\14\00\00\00r\00e\00f\00#\001\00r\00e\00f\00#\002")
 (data $50 (i32.const 6156) ",\00\00\00\03\00\00\00\00\00\00\00\04\00\00\00\14\00\00\00\e0\t\00\00\00\00\00\00\00\n\00\00\00\00\00\00 \n")
 (data $51 (i32.const 6204) "<")
 (data $51.1 (i32.const 6216) "\02\00\00\00$\00\00\00(\00A\00=\00r\00e\00f\00#\001\00,\00 \00B\00=\00r\00e\00f\00#\002\00)")
 (data $52 (i32.const 6268) "\1c")
 (data $52.1 (i32.const 6280) "\02\00\00\00\06\00\00\00c\00:\00 ")
 (data $53 (i32.const 6300) "\1c")
 (data $53.1 (i32.const 6312) "\02\00\00\00\n\00\00\00;\00 \00d\00:\00 ")
 (data $54 (i32.const 6332) ",\00\00\00\03\00\00\00\00\00\00\00\04\00\00\00\10\00\00\00\90\18\00\00\00\00\00\00\b0\18")
 (data $55 (i32.const 6380) "\1c")
 (data $55.1 (i32.const 6392) "\02\00\00\00\08\00\00\00n\00u\00l\00l")
 (data $56 (i32.const 6412) "<")
 (data $56.1 (i32.const 6424) "\02\00\00\00\"\00\00\00c\00:\00 \00r\00e\00f\00#\003\00;\00 \00d\00:\00 \00n\00u\00l\00l")
 (data $57 (i32.const 6476) "\1c")
 (data $57.1 (i32.const 6488) "\02\00\00\00\02\00\00\00c")
 (data $58 (i32.const 6508) "\1c")
 (data $58.1 (i32.const 6520) "\02\00\00\00\02\00\00\00:")
 (data $59 (i32.const 6540) "\1c\00\00\00\03\00\00\00\00\00\00\00\04\00\00\00\0c\00\00\00\00\00\00\00\80\19")
 (data $60 (i32.const 6572) "\1c")
 (data $60.1 (i32.const 6584) "\02\00\00\00\n\00\00\00a\00:\00b\00:\00c")
 (data $61 (i32.const 6608) "\07\00\00\00 \00\00\00 \00\00\00 \00\00\00\00\00\00\00\04A\00\00 ")
 (export "memory" (memory $0))
 (export "_start" (func $~start))
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
  i32.const 6640
  i32.lt_s
  if
   i32.const 39440
   i32.const 39488
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
   block $__inlined_func$~lib/util/string/compareImpl$89
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
      br_if $__inlined_func$~lib/util/string/compareImpl$89
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
 (func $~lib/rt/itcms/__link (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $1
  i32.eqz
  if
   return
  end
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 2160
   i32.const 295
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/itcms/white
  local.get $1
  i32.const 20
  i32.sub
  local.tee $1
  i32.load offset=4
  i32.const 3
  i32.and
  i32.eq
  if
   local.get $0
   i32.const 20
   i32.sub
   local.tee $0
   i32.load offset=4
   i32.const 3
   i32.and
   local.tee $3
   global.get $~lib/rt/itcms/white
   i32.eqz
   i32.eq
   if
    local.get $0
    local.get $1
    local.get $2
    select
    call $~lib/rt/itcms/Object#makeGray
   else
    global.get $~lib/rt/itcms/state
    i32.const 1
    i32.eq
    local.get $3
    i32.const 3
    i32.eq
    i32.and
    if
     local.get $1
     call $~lib/rt/itcms/Object#makeGray
    end
   end
  end
 )
 (func $~lib/string/String#concat (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 6640
  i32.lt_s
  if
   i32.const 39440
   i32.const 39488
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const -2
  i32.and
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const -2
  i32.and
  local.tee $3
  local.get $2
  i32.add
  local.tee $4
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 2064
   return
  end
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.const 2
  call $~lib/rt/itcms/__new
  local.tee $4
  i32.store offset=4
  local.get $4
  local.get $0
  local.get $2
  memory.copy
  local.get $2
  local.get $4
  i32.add
  local.get $1
  local.get $3
  memory.copy
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
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
  i32.const 6640
  i32.lt_s
  if
   i32.const 39440
   i32.const 39488
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  block $__inlined_func$~lib/util/number/itoa32$75
   local.get $0
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    i32.const 2912
    local.set $2
    br $__inlined_func$~lib/util/number/itoa32$75
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
     i32.const 2924
     i32.add
     i64.load32_u
     local.get $4
     i32.const 100
     i32.rem_u
     i32.const 2
     i32.shl
     i32.const 2924
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
    i32.const 2924
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
    i32.const 2924
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
  local.get $0
  i32.eqz
  if
   return
  end
  global.get $~lib/rt/itcms/white
  local.get $0
  i32.const 20
  i32.sub
  local.tee $0
  i32.load offset=4
  i32.const 3
  i32.and
  i32.eq
  if
   local.get $0
   call $~lib/rt/itcms/Object#makeGray
   global.get $~lib/rt/itcms/visitCount
   i32.const 1
   i32.add
   global.set $~lib/rt/itcms/visitCount
  end
 )
 (func $~lib/staticarray/StaticArray<~lib/string/String>#join (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 6640
  i32.lt_s
  if
   i32.const 39440
   i32.const 39488
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 2
  i32.shr_u
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 2064
  i32.store
  local.get $0
  local.get $1
  call $~lib/util/string/joinStringArray
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
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
   i32.const 2096
   i32.const 2160
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
   i32.const 2096
   i32.const 2432
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
    i32.const 2432
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
   i32.const 2432
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
   i32.const 2432
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
 (func $templateliteral/Ref#toString (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 6640
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $0
   i32.load
   call $~lib/number/I32#toString
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 6640
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   global.get $~lib/memory/__stack_pointer
   i32.const 6064
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   i32.const 6064
   local.get $0
   call $~lib/string/String#concat
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 39440
  i32.const 39488
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/number/F64#toString (param $0 f64) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 6640
  i32.lt_s
  if
   i32.const 39440
   i32.const 39488
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  i32.const 4640
  local.set $1
  local.get $0
  call $~lib/util/dtoa/dtoa_buffered
  local.tee $2
  i32.const 1
  i32.shl
  i32.const 4640
  i32.add
  local.set $3
  block $~lib/util/number/dtoa_dotZero|inlined.0
   loop $while-continue|0
    local.get $1
    local.get $3
    i32.lt_u
    if
     local.get $1
     i32.load16_u
     local.tee $4
     i32.const 48
     i32.lt_u
     local.get $4
     i32.const 57
     i32.gt_u
     i32.or
     local.get $4
     i32.const 45
     i32.ne
     i32.and
     br_if $~lib/util/number/dtoa_dotZero|inlined.0
     local.get $1
     i32.const 2
     i32.add
     local.set $1
     br $while-continue|0
    end
   end
   local.get $3
   i32.const 46
   i32.store16
   local.get $3
   i32.const 48
   i32.store16 offset=2
   local.get $2
   i32.const 2
   i32.add
   local.set $2
  end
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.const 1
  i32.shl
  local.tee $1
  i32.const 2
  call $~lib/rt/itcms/__new
  local.tee $2
  i32.store
  local.get $2
  i32.const 4640
  local.get $1
  memory.copy
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
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
   i32.const 2432
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
   i32.const 2432
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
   i32.const 2432
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
   i32.const 2432
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
   i32.const 2432
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
    i32.const 2432
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
   i32.const 2432
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
   i32.const 2432
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
   i32.const 2432
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
 (func $~lib/rt/itcms/Object#makeGray (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  global.get $~lib/rt/itcms/iter
  i32.eq
  if
   local.get $0
   i32.load offset=8
   local.tee $1
   i32.eqz
   if
    i32.const 0
    i32.const 2160
    i32.const 148
    i32.const 30
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   global.set $~lib/rt/itcms/iter
  end
  block $__inlined_func$~lib/rt/itcms/Object#unlink$164
   local.get $0
   i32.load offset=4
   i32.const -4
   i32.and
   local.tee $1
   i32.eqz
   if
    local.get $0
    i32.load offset=8
    i32.eqz
    local.get $0
    i32.const 39408
    i32.lt_u
    i32.and
    i32.eqz
    if
     i32.const 0
     i32.const 2160
     i32.const 128
     i32.const 18
     call $~lib/builtins/abort
     unreachable
    end
    br $__inlined_func$~lib/rt/itcms/Object#unlink$164
   end
   local.get $0
   i32.load offset=8
   local.tee $2
   i32.eqz
   if
    i32.const 0
    i32.const 2160
    i32.const 132
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   local.get $2
   i32.store offset=8
   local.get $2
   local.get $1
   local.get $2
   i32.load offset=4
   i32.const 3
   i32.and
   i32.or
   i32.store offset=4
  end
  global.get $~lib/rt/itcms/toSpace
  local.set $2
  local.get $0
  i32.load offset=12
  local.tee $1
  i32.const 2
  i32.le_u
  if (result i32)
   i32.const 1
  else
   local.get $1
   i32.const 6608
   i32.load
   i32.gt_u
   if
    i32.const 2288
    i32.const 2352
    i32.const 21
    i32.const 28
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   i32.const 2
   i32.shl
   i32.const 6612
   i32.add
   i32.load
   i32.const 32
   i32.and
  end
  local.set $3
  local.get $2
  i32.load offset=8
  local.set $1
  local.get $0
  global.get $~lib/rt/itcms/white
  i32.eqz
  i32.const 2
  local.get $3
  select
  local.get $2
  i32.or
  i32.store offset=4
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $1
  local.get $0
  local.get $1
  i32.load offset=4
  i32.const 3
  i32.and
  i32.or
  i32.store offset=4
  local.get $2
  local.get $0
  i32.store offset=8
 )
 (func $~lib/rt/__visit_members (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  block $invalid
   block $templateliteral/RecursiveObject
    block $templateliteral/Ref
     block $~lib/staticarray/StaticArray<~lib/string/String>
      block $~lib/arraybuffer/ArrayBufferView
       block $~lib/string/String
        block $~lib/arraybuffer/ArrayBuffer
         block $~lib/object/Object
          local.get $0
          i32.const 8
          i32.sub
          i32.load
          br_table $~lib/object/Object $~lib/arraybuffer/ArrayBuffer $~lib/string/String $~lib/arraybuffer/ArrayBufferView $~lib/staticarray/StaticArray<~lib/string/String> $templateliteral/Ref $templateliteral/RecursiveObject $invalid
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
     local.get $0
     local.get $0
     i32.const 20
     i32.sub
     i32.load offset=16
     i32.add
     local.set $1
     loop $while-continue|0
      local.get $0
      local.get $1
      i32.lt_u
      if
       local.get $0
       i32.load
       local.tee $2
       if
        local.get $2
        call $~lib/rt/itcms/__visit
       end
       local.get $0
       i32.const 4
       i32.add
       local.set $0
       br $while-continue|0
      end
     end
     return
    end
    return
   end
   local.get $0
   i32.load
   call $~lib/rt/itcms/__visit
   local.get $0
   i32.load offset=4
   call $~lib/rt/itcms/__visit
   return
  end
  unreachable
 )
 (func $templateliteral/Ref#constructor (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 6640
  i32.lt_s
  if
   i32.const 39440
   i32.const 39488
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.const 5
  call $~lib/rt/itcms/__new
  local.tee $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $templateliteral/RecursiveObject#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 6640
  i32.lt_s
  if
   i32.const 39440
   i32.const 39488
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
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.const 6
  call $~lib/rt/itcms/__new
  local.tee $2
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  local.get $2
  local.get $0
  i32.store
  local.get $2
  local.get $0
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $2
  local.get $1
  i32.store offset=4
  local.get $2
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  i32.const 12
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
   i32.const 2432
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
     i32.const 2432
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
  i32.const 39408
  i32.const 0
  i32.store
  i32.const 40976
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
    i32.const 39408
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
      i32.const 39408
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
  i32.const 39408
  i32.const 40980
  memory.size
  i64.extend_i32_s
  i64.const 16
  i64.shl
  call $~lib/rt/tlsf/addMemory
  i32.const 39408
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
   i32.const 2432
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
    i32.const 2432
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
    i32.const 2432
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
  i32.const 2288
  call $~lib/rt/itcms/__visit
  i32.const 2096
  call $~lib/rt/itcms/__visit
  i32.const 3344
  call $~lib/rt/itcms/__visit
  i32.const 4400
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
     i32.const 2160
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
 (func $templateliteral/RecursiveObject#toString (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 6640
  i32.lt_s
  if
   i32.const 39440
   i32.const 39488
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 20
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.tee $1
  i32.store offset=4
  local.get $1
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.load
   global.get $~lib/memory/__stack_pointer
   i32.const 20
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load
  local.tee $0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  call $templateliteral/RecursiveObject#toString
  local.tee $1
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 6560
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=16
  i32.const 6560
  local.get $0
  i32.store
  i32.const 6560
  local.get $0
  i32.const 1
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  i32.const 6560
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=16
  i32.const 6568
  local.get $1
  i32.store
  i32.const 6560
  local.get $1
  i32.const 1
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  i32.const 6560
  i32.store
  i32.const 6560
  call $~lib/staticarray/StaticArray<~lib/string/String>#join
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~start
  global.get $~started
  if
   return
  end
  i32.const 1
  global.set $~started
  call $start:templateliteral
 )
 (func $~lib/util/string/joinStringArray (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 6640
  i32.lt_s
  if
   i32.const 39440
   i32.const 39488
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  local.get $1
  i32.const 1
  i32.sub
  local.tee $4
  i32.const 0
  i32.lt_s
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 2064
   return
  end
  local.get $4
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load
   local.tee $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   i32.const 2064
   local.get $0
   select
   return
  end
  loop $for-loop|0
   local.get $1
   local.get $3
   i32.gt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    local.get $3
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $5
    i32.store offset=4
    local.get $5
    if
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store offset=8
     local.get $2
     local.get $5
     i32.const 20
     i32.sub
     i32.load offset=16
     i32.const 1
     i32.shr_u
     i32.add
     local.set $2
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  i32.const 0
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 2064
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.const 2060
  i32.load
  i32.const 1
  i32.shr_u
  local.tee $1
  local.get $4
  i32.mul
  i32.add
  i32.const 1
  i32.shl
  i32.const 2
  call $~lib/rt/itcms/__new
  local.tee $5
  i32.store offset=12
  i32.const 0
  local.set $2
  loop $for-loop|1
   local.get $2
   local.get $4
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    local.get $2
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $6
    i32.store offset=4
    local.get $6
    if
     global.get $~lib/memory/__stack_pointer
     local.get $6
     i32.store offset=8
     local.get $5
     local.get $3
     i32.const 1
     i32.shl
     i32.add
     local.get $6
     local.get $6
     i32.const 20
     i32.sub
     i32.load offset=16
     i32.const 1
     i32.shr_u
     local.tee $6
     i32.const 1
     i32.shl
     memory.copy
     local.get $3
     local.get $6
     i32.add
     local.set $3
    end
    local.get $1
    if
     local.get $5
     local.get $3
     i32.const 1
     i32.shl
     i32.add
     i32.const 2064
     local.get $1
     i32.const 1
     i32.shl
     memory.copy
     local.get $1
     local.get $3
     i32.add
     local.set $3
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|1
   end
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  local.get $4
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.tee $0
  i32.store offset=4
  local.get $0
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   local.get $5
   local.get $3
   i32.const 1
   i32.shl
   i32.add
   local.get $0
   local.get $0
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const -2
   i32.and
   memory.copy
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
 )
 (func $~lib/util/dtoa/dtoa_buffered (param $0 f64) (result i32)
  (local $1 i64)
  (local $2 i32)
  (local $3 i64)
  (local $4 i64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i64)
  (local $10 i64)
  (local $11 i64)
  (local $12 i64)
  (local $13 i64)
  (local $14 i64)
  (local $15 i64)
  (local $16 i32)
  (local $17 i32)
  (local $18 i64)
  local.get $0
  i64.reinterpret_f64
  local.tee $1
  i64.const 1
  i64.shl
  i64.const 53
  i64.shr_u
  i32.wrap_i64
  local.set $5
  local.get $1
  i64.const 4503599627370495
  i64.and
  local.set $3
  local.get $1
  i64.const 63
  i64.shr_u
  i32.wrap_i64
  local.set $2
  block $~lib/util/dtoa/formatDecodedDouble|inlined.0
   local.get $5
   i32.const 1
   i32.sub
   i32.const 2046
   i32.lt_u
   local.tee $6
   i32.eqz
   if
    local.get $5
    if
     local.get $3
     i64.const 0
     i64.ne
     if
      i32.const 4640
      i32.const 78
      i32.store16
      i32.const 4642
      i32.const 97
      i32.store16
      i32.const 4644
      i32.const 78
      i32.store16
      i32.const 4646
      local.set $6
      br $~lib/util/dtoa/formatDecodedDouble|inlined.0
     end
     local.get $2
     if (result i32)
      i32.const 4640
      i32.const 45
      i32.store16
      i32.const 4642
     else
      i32.const 4640
     end
     local.tee $2
     i64.const 73
     i64.store16
     local.get $2
     i64.const 110
     i64.store16 offset=2
     local.get $2
     i64.const 102
     i64.store16 offset=4
     local.get $2
     i64.const 105
     i64.store16 offset=6
     local.get $2
     i64.const 110
     i64.store16 offset=8
     local.get $2
     i64.const 105
     i64.store16 offset=10
     local.get $2
     i64.const 116
     i64.store16 offset=12
     local.get $2
     i64.const 121
     i64.store16 offset=14
     local.get $2
     i32.const 16
     i32.add
     local.set $6
     br $~lib/util/dtoa/formatDecodedDouble|inlined.0
    end
    local.get $3
    i64.eqz
    if
     i32.const 4640
     i32.const 48
     i32.store16
     i32.const 4642
     local.set $6
     br $~lib/util/dtoa/formatDecodedDouble|inlined.0
    end
   end
   local.get $2
   if (result i32)
    i32.const 4640
    i32.const 45
    i32.store16
    i32.const 4642
   else
    i32.const 4640
   end
   local.set $2
   local.get $6
   if
    local.get $3
    i64.const 4503599627370496
    i64.or
    local.set $1
    local.get $5
    i32.const 1075
    i32.sub
    local.tee $7
    i32.const 0
    i32.lt_s
    if (result i64)
     i32.const 0
     local.get $7
     i32.sub
     local.tee $7
     i32.const 52
     i32.le_s
     if (result i64)
      local.get $1
      local.get $7
      i64.extend_i32_s
      local.tee $4
      i64.shr_u
      i64.const 0
      i64.const 1
      local.get $4
      i64.shl
      i64.const 1
      i64.sub
      local.get $1
      i64.and
      i64.eqz
      select
     else
      i64.const 0
     end
    else
     local.get $7
     i32.const 11
     i32.lt_s
     if (result i64)
      local.get $1
      local.get $7
      i64.extend_i32_s
      i64.shl
      local.tee $1
      i64.const 10000000000000000
      i64.ge_u
      if (result i64)
       i64.const 0
      else
       local.get $1
      end
     else
      i64.const 0
     end
    end
    local.tee $1
    i64.const 0
    i64.ne
    if
     local.get $2
     local.get $1
     i64.const 1000000000000000
     i64.lt_u
     if (result i32)
      block $~lib/util/dtoa/decimalLen15|inlined.0 (result i32)
       local.get $1
       i64.const 100000000
       i64.lt_u
       if
        local.get $1
        i64.const 10000
        i64.lt_u
        if
         i32.const 1
         i32.const 2
         local.get $1
         i64.const 10
         i64.lt_u
         select
         local.get $1
         i64.const 100
         i64.lt_u
         br_if $~lib/util/dtoa/decimalLen15|inlined.0
         drop
         i32.const 3
         i32.const 4
         local.get $1
         i64.const 1000
         i64.lt_u
         select
         br $~lib/util/dtoa/decimalLen15|inlined.0
        end
        i32.const 5
        i32.const 6
        local.get $1
        i64.const 100000
        i64.lt_u
        select
        local.get $1
        i64.const 1000000
        i64.lt_u
        br_if $~lib/util/dtoa/decimalLen15|inlined.0
        drop
        i32.const 7
        i32.const 8
        local.get $1
        i64.const 10000000
        i64.lt_u
        select
        br $~lib/util/dtoa/decimalLen15|inlined.0
       end
       local.get $1
       i64.const 1000000000000
       i64.lt_u
       if
        i32.const 9
        i32.const 10
        local.get $1
        i64.const 1000000000
        i64.lt_u
        select
        local.get $1
        i64.const 10000000000
        i64.lt_u
        br_if $~lib/util/dtoa/decimalLen15|inlined.0
        drop
        i32.const 11
        i32.const 12
        local.get $1
        i64.const 100000000000
        i64.lt_u
        select
        br $~lib/util/dtoa/decimalLen15|inlined.0
       end
       i32.const 13
       i32.const 14
       local.get $1
       i64.const 10000000000000
       i64.lt_u
       select
       local.get $1
       i64.const 100000000000000
       i64.lt_u
       br_if $~lib/util/dtoa/decimalLen15|inlined.0
       drop
       i32.const 15
      end
     else
      i32.const 16
     end
     local.tee $6
     i32.const 1
     i32.shl
     i32.add
     local.set $5
     loop $while-continue|0
      local.get $1
      i64.const 100
      i64.ge_u
      if
       local.get $5
       i32.const 4
       i32.sub
       local.tee $5
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
       i32.const 2924
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
      local.get $2
      local.get $1
      i32.wrap_i64
      i32.const 2
      i32.shl
      i32.const 2924
      i32.add
      i32.load
      i32.store
     else
      local.get $2
      local.get $1
      i32.wrap_i64
      i32.const 48
      i32.add
      i32.store16
     end
     local.get $2
     local.get $6
     i32.const 1
     i32.shl
     i32.add
     local.set $6
     br $~lib/util/dtoa/formatDecodedDouble|inlined.0
    end
   end
   local.get $6
   if
    block $~lib/util/dtoa/toDecimalDoubleNormal|inlined.0
     local.get $5
     i32.const 1075
     i32.sub
     local.set $6
     local.get $3
     i64.eqz
     if
      local.get $6
      i32.const -1
      local.get $6
      i32.const 315653
      i32.mul
      i32.const 131072
      i32.sub
      i32.const 20
      i32.shr_s
      local.tee $5
      i32.sub
      local.tee $6
      i32.const 217707
      i32.mul
      i32.const 16
      i32.shr_s
      i32.add
      local.set $7
      local.get $6
      i32.const 293
      i32.add
      local.tee $6
      i32.const 10
      i32.add
      local.tee $8
      i32.const 28
      i32.rem_s
      i32.const 3
      i32.shl
      i32.const 4768
      i32.add
      i64.load
      local.set $3
      local.get $8
      i32.const 28
      i32.div_s
      i32.const 4
      i32.shl
      i32.const 4992
      i32.add
      local.tee $8
      i64.load
      local.set $1
      local.get $8
      i64.load offset=8
      local.tee $4
      i64.const 4294967295
      i64.and
      local.set $9
      local.get $4
      i64.const 32
      i64.shr_u
      local.tee $10
      local.get $3
      i64.const 4294967295
      i64.and
      local.tee $11
      i64.mul
      local.get $9
      local.get $11
      i64.mul
      i64.const 32
      i64.shr_u
      i64.add
      local.set $12
      local.get $1
      i64.const 32
      i64.shr_u
      local.tee $13
      local.get $11
      i64.mul
      local.get $1
      i64.const 4294967295
      i64.and
      local.tee $14
      local.get $11
      i64.mul
      i64.const 32
      i64.shr_u
      i64.add
      local.set $11
      local.get $3
      i64.const 32
      i64.shr_u
      local.tee $15
      local.get $10
      i64.mul
      local.get $12
      i64.const 32
      i64.shr_u
      i64.add
      local.get $9
      local.get $15
      i64.mul
      local.get $12
      i64.const 4294967295
      i64.and
      i64.add
      i64.const 32
      i64.shr_u
      i64.add
      local.tee $9
      local.get $1
      local.get $3
      i64.mul
      i64.add
      local.tee $10
      local.get $9
      i64.lt_u
      i64.extend_i32_u
      local.get $13
      local.get $15
      i64.mul
      local.get $11
      i64.const 32
      i64.shr_u
      i64.add
      local.get $14
      local.get $15
      i64.mul
      local.get $11
      i64.const 4294967295
      i64.and
      i64.add
      i64.const 32
      i64.shr_u
      i64.add
      i64.add
      local.tee $1
      i64.const 63
      i64.shr_u
      i64.eqz
      if (result i64)
       local.get $1
       i64.const 1
       i64.shl
       local.get $10
       i64.const 63
       i64.shr_u
       i64.or
       local.set $1
       local.get $10
       i64.const 1
       i64.shl
       local.get $3
       local.get $4
       i64.mul
       i64.const 63
       i64.shr_u
       i64.or
      else
       local.get $10
      end
      local.get $6
      i32.const 5
      i32.shr_s
      i32.const 2
      i32.shl
      i32.const 5360
      i32.add
      i64.load32_u
      local.get $6
      i32.const 31
      i32.and
      i64.extend_i32_s
      i64.shr_u
      i64.const 1
      i64.and
      i64.sub
      local.get $1
      global.set $~lib/util/dtoa/gPow10Hi
      global.set $~lib/util/dtoa/gPow10Lo
      global.get $~lib/util/dtoa/gPow10Hi
      local.tee $1
      i64.const 11
      local.get $7
      i64.extend_i32_s
      local.tee $3
      i64.sub
      i64.shr_u
      local.set $4
      local.get $1
      local.get $3
      i64.const 53
      i64.add
      local.tee $9
      i64.shl
      local.tee $10
      local.get $9
      i64.shr_u
      i64.const 5
      i64.mul
      i64.const 1
      i64.const 9
      local.get $3
      i64.sub
      i64.shl
      i64.add
      i64.const 10
      local.get $3
      i64.sub
      i64.shr_u
      local.set $3
      i64.const 10
      i64.const 2
      local.get $1
      i32.const 0
      local.get $7
      i32.sub
      i64.extend_i32_s
      i64.shr_u
      local.tee $1
      i64.const 55
      i64.shr_u
      i64.const 5
      i64.mul
      local.get $10
      i64.const 54
      i64.shr_u
      i64.const 5
      i64.mul
      local.tee $9
      i64.const 511
      i64.and
      i64.lt_u
      if (result i64)
       local.get $9
       i64.const 9
       i64.shr_u
       i64.const 1
       i64.add
      else
       local.get $3
      end
      local.get $10
      i64.const 4611686018427387904
      i64.eq
      select
      i64.const 0
      local.get $1
      i64.const 1
      i64.shr_u
      local.get $10
      i64.le_u
      select
      local.get $1
      i64.const -1
      local.get $10
      i64.sub
      i64.gt_u
      select
      local.tee $1
      i64.const 10
      i64.eq
      if
       local.get $4
       i64.const 1
       i64.add
       global.set $~lib/util/dtoa/gSig
       i32.const 0
       global.set $~lib/util/dtoa/gLastDigit
       i32.const 0
       global.set $~lib/util/dtoa/gHasLastDigit
      else
       local.get $1
       i64.eqz
       if
        local.get $4
        global.set $~lib/util/dtoa/gSig
        i32.const 0
        global.set $~lib/util/dtoa/gLastDigit
        i32.const 0
        global.set $~lib/util/dtoa/gHasLastDigit
       else
        local.get $4
        global.set $~lib/util/dtoa/gSig
        local.get $1
        i32.wrap_i64
        global.set $~lib/util/dtoa/gLastDigit
        i32.const 1
        global.set $~lib/util/dtoa/gHasLastDigit
       end
      end
      local.get $5
      global.set $~lib/util/dtoa/gExp
      br $~lib/util/dtoa/toDecimalDoubleNormal|inlined.0
     end
     local.get $6
     i32.const -1
     local.get $5
     i32.const 1075
     i32.sub
     i32.const 78913
     i32.mul
     i32.const 18
     i32.shr_s
     local.tee $6
     i32.sub
     local.tee $7
     i32.const 217707
     i32.mul
     i32.const 16
     i32.shr_s
     i32.add
     local.tee $8
     i32.const 7
     i32.add
     local.set $16
     local.get $7
     i32.const 293
     i32.add
     local.tee $5
     i32.const 10
     i32.add
     local.tee $17
     i32.const 28
     i32.rem_s
     i32.const 3
     i32.shl
     i32.const 4768
     i32.add
     i64.load
     local.set $4
     local.get $17
     i32.const 28
     i32.div_s
     i32.const 4
     i32.shl
     i32.const 4992
     i32.add
     local.tee $17
     i64.load
     local.set $9
     local.get $17
     i64.load offset=8
     local.tee $10
     i64.const 4294967295
     i64.and
     local.set $11
     local.get $10
     i64.const 32
     i64.shr_u
     local.tee $12
     local.get $4
     i64.const 4294967295
     i64.and
     local.tee $1
     i64.mul
     local.get $1
     local.get $11
     i64.mul
     i64.const 32
     i64.shr_u
     i64.add
     local.set $13
     local.get $9
     i64.const 32
     i64.shr_u
     local.tee $14
     local.get $1
     i64.mul
     local.get $9
     i64.const 4294967295
     i64.and
     local.tee $15
     local.get $1
     i64.mul
     i64.const 32
     i64.shr_u
     i64.add
     local.set $18
     local.get $4
     i64.const 32
     i64.shr_u
     local.tee $1
     local.get $12
     i64.mul
     local.get $13
     i64.const 32
     i64.shr_u
     i64.add
     local.get $1
     local.get $11
     i64.mul
     local.get $13
     i64.const 4294967295
     i64.and
     i64.add
     i64.const 32
     i64.shr_u
     i64.add
     local.tee $11
     local.get $4
     local.get $9
     i64.mul
     i64.add
     local.tee $9
     local.get $11
     i64.lt_u
     i64.extend_i32_u
     local.get $1
     local.get $14
     i64.mul
     local.get $18
     i64.const 32
     i64.shr_u
     i64.add
     local.get $1
     local.get $15
     i64.mul
     local.get $18
     i64.const 4294967295
     i64.and
     i64.add
     i64.const 32
     i64.shr_u
     i64.add
     i64.add
     local.tee $1
     i64.const 63
     i64.shr_u
     i64.eqz
     if (result i64)
      local.get $1
      i64.const 1
      i64.shl
      local.get $9
      i64.const 63
      i64.shr_u
      i64.or
      local.set $1
      local.get $9
      i64.const 1
      i64.shl
      local.get $4
      local.get $10
      i64.mul
      i64.const 63
      i64.shr_u
      i64.or
     else
      local.get $9
     end
     local.get $5
     i32.const 5
     i32.shr_s
     i32.const 2
     i32.shl
     i32.const 5360
     i32.add
     i64.load32_u
     local.get $5
     i32.const 31
     i32.and
     i64.extend_i32_s
     i64.shr_u
     i64.const 1
     i64.and
     i64.sub
     local.get $1
     global.set $~lib/util/dtoa/gPow10Hi
     global.set $~lib/util/dtoa/gPow10Lo
     global.get $~lib/util/dtoa/gPow10Lo
     local.get $7
     i32.const 0
     i32.lt_s
     i64.extend_i32_u
     i64.add
     global.set $~lib/util/dtoa/gPow10Lo
     local.get $3
     i64.const 4503599627370496
     i64.or
     local.tee $1
     local.get $16
     i64.extend_i32_s
     i64.shl
     local.tee $3
     global.get $~lib/util/dtoa/gPow10Hi
     local.tee $4
     i64.mul
     local.set $9
     global.get $~lib/util/dtoa/gPow10Lo
     local.tee $10
     i64.const 4294967295
     i64.and
     local.set $11
     local.get $10
     i64.const 32
     i64.shr_u
     local.tee $10
     local.get $3
     i64.const 4294967295
     i64.and
     local.tee $12
     i64.mul
     local.get $11
     local.get $12
     i64.mul
     i64.const 32
     i64.shr_u
     i64.add
     local.set $13
     local.get $4
     i64.const 32
     i64.shr_u
     local.tee $14
     local.get $12
     i64.mul
     local.get $4
     i64.const 4294967295
     i64.and
     local.tee $15
     local.get $12
     i64.mul
     i64.const 32
     i64.shr_u
     i64.add
     local.set $12
     local.get $9
     local.get $3
     i64.const 32
     i64.shr_u
     local.tee $3
     local.get $10
     i64.mul
     local.get $13
     i64.const 32
     i64.shr_u
     i64.add
     local.get $3
     local.get $11
     i64.mul
     local.get $13
     i64.const 4294967295
     i64.and
     i64.add
     i64.const 32
     i64.shr_u
     i64.add
     i64.add
     local.tee $10
     local.get $9
     i64.lt_u
     i64.extend_i32_u
     local.get $3
     local.get $14
     i64.mul
     local.get $12
     i64.const 32
     i64.shr_u
     i64.add
     local.get $3
     local.get $15
     i64.mul
     local.get $12
     i64.const 4294967295
     i64.and
     i64.add
     i64.const 32
     i64.shr_u
     i64.add
     i64.add
     local.tee $3
     i64.const 58
     i64.shl
     local.get $10
     i64.const 6
     i64.shr_u
     i64.or
     local.tee $9
     i64.const 10
     i64.mul
     local.set $10
     local.get $3
     i64.const 6
     i64.shr_u
     local.set $3
     i64.const 10
     local.get $10
     local.get $10
     i64.const -9223372036854775802
     i64.const 0
     local.get $9
     i64.const 4611686018427387904
     i64.ne
     select
     i64.add
     i64.gt_u
     i64.extend_i32_u
     local.get $9
     i64.const 32
     i64.shr_u
     i64.const 10
     i64.mul
     local.get $9
     i64.const 4294967295
     i64.and
     i64.const 10
     i64.mul
     i64.const 32
     i64.shr_u
     i64.add
     i64.const 32
     i64.shr_u
     i64.add
     i64.const 0
     i64.const 1
     local.get $1
     i64.const 1
     i64.and
     i64.sub
     local.get $4
     i32.const 0
     local.get $8
     i32.sub
     i64.extend_i32_s
     i64.shr_u
     i64.add
     local.tee $1
     local.get $9
     i64.le_u
     select
     i64.const -1
     local.get $9
     i64.sub
     local.get $1
     i64.lt_u
     select
     local.tee $1
     i64.const 10
     i64.eq
     if
      local.get $3
      i64.const 1
      i64.add
      global.set $~lib/util/dtoa/gSig
      i32.const 0
      global.set $~lib/util/dtoa/gLastDigit
      i32.const 0
      global.set $~lib/util/dtoa/gHasLastDigit
     else
      local.get $1
      i64.eqz
      if
       local.get $3
       global.set $~lib/util/dtoa/gSig
       i32.const 0
       global.set $~lib/util/dtoa/gLastDigit
       i32.const 0
       global.set $~lib/util/dtoa/gHasLastDigit
      else
       local.get $3
       global.set $~lib/util/dtoa/gSig
       local.get $1
       i32.wrap_i64
       global.set $~lib/util/dtoa/gLastDigit
       i32.const 1
       global.set $~lib/util/dtoa/gHasLastDigit
      end
     end
     local.get $6
     global.set $~lib/util/dtoa/gExp
    end
   else
    i32.const 5352
    i64.load
    local.tee $4
    i64.const 4294967295
    i64.and
    local.set $1
    i32.const 4848
    i64.load
    local.tee $9
    i64.const 32
    i64.shr_u
    local.set $10
    local.get $4
    i64.const 32
    i64.shr_u
    local.tee $11
    local.get $9
    i64.const 4294967295
    i64.and
    local.tee $12
    i64.mul
    local.get $1
    local.get $12
    i64.mul
    i64.const 32
    i64.shr_u
    i64.add
    local.set $13
    i32.const 5344
    i64.load
    local.tee $14
    i64.const 32
    i64.shr_u
    local.set $15
    local.get $10
    local.get $11
    i64.mul
    local.get $13
    i64.const 32
    i64.shr_u
    i64.add
    local.get $1
    local.get $10
    i64.mul
    local.get $13
    i64.const 4294967295
    i64.and
    i64.add
    i64.const 32
    i64.shr_u
    i64.add
    local.tee $1
    local.get $9
    local.get $14
    i64.mul
    i64.add
    local.tee $11
    local.get $1
    i64.lt_u
    i64.extend_i32_u
    local.get $10
    local.get $15
    i64.mul
    local.get $12
    local.get $15
    i64.mul
    local.get $12
    local.get $14
    i64.const 4294967295
    i64.and
    local.tee $1
    i64.mul
    i64.const 32
    i64.shr_u
    i64.add
    local.tee $12
    i64.const 32
    i64.shr_u
    i64.add
    local.get $1
    local.get $10
    i64.mul
    local.get $12
    i64.const 4294967295
    i64.and
    i64.add
    i64.const 32
    i64.shr_u
    i64.add
    i64.add
    local.tee $1
    i64.const 63
    i64.shr_u
    i64.eqz
    if (result i64)
     local.get $1
     i64.const 1
     i64.shl
     local.get $11
     i64.const 63
     i64.shr_u
     i64.or
     local.set $1
     local.get $11
     i64.const 1
     i64.shl
     local.get $4
     local.get $9
     i64.mul
     i64.const 63
     i64.shr_u
     i64.or
    else
     local.get $11
    end
    i32.const 5436
    i64.load32_u
    i64.const 8
    i64.shr_u
    i64.const 1
    i64.and
    i64.sub
    local.get $1
    global.set $~lib/util/dtoa/gPow10Hi
    global.set $~lib/util/dtoa/gPow10Lo
    local.get $3
    i64.const 5
    i64.shl
    local.tee $1
    global.get $~lib/util/dtoa/gPow10Hi
    local.tee $4
    i64.mul
    local.set $9
    global.get $~lib/util/dtoa/gPow10Lo
    local.tee $10
    i64.const 4294967295
    i64.and
    local.set $11
    local.get $10
    i64.const 32
    i64.shr_u
    local.tee $10
    local.get $1
    i64.const 4294967295
    i64.and
    local.tee $12
    i64.mul
    local.get $11
    local.get $12
    i64.mul
    i64.const 32
    i64.shr_u
    i64.add
    local.set $13
    local.get $4
    i64.const 32
    i64.shr_u
    local.tee $14
    local.get $12
    i64.mul
    local.get $4
    i64.const 4294967295
    i64.and
    local.tee $15
    local.get $12
    i64.mul
    i64.const 32
    i64.shr_u
    i64.add
    local.set $12
    i64.const 10
    local.get $9
    local.get $1
    i64.const 32
    i64.shr_u
    local.tee $1
    local.get $10
    i64.mul
    local.get $13
    i64.const 32
    i64.shr_u
    i64.add
    local.get $1
    local.get $11
    i64.mul
    local.get $13
    i64.const 4294967295
    i64.and
    i64.add
    i64.const 32
    i64.shr_u
    i64.add
    i64.add
    local.tee $10
    local.get $9
    i64.lt_u
    i64.extend_i32_u
    local.get $1
    local.get $14
    i64.mul
    local.get $12
    i64.const 32
    i64.shr_u
    i64.add
    local.get $1
    local.get $15
    i64.mul
    local.get $12
    i64.const 4294967295
    i64.and
    i64.add
    i64.const 32
    i64.shr_u
    i64.add
    i64.add
    local.tee $1
    i64.const 58
    i64.shl
    local.get $10
    i64.const 6
    i64.shr_u
    i64.or
    local.tee $9
    i64.const 10
    i64.mul
    local.tee $10
    i64.const 9223372036854775802
    i64.sub
    local.get $10
    i64.lt_u
    i64.extend_i32_u
    local.get $9
    i64.const 32
    i64.shr_u
    i64.const 10
    i64.mul
    local.get $9
    i64.const 4294967295
    i64.and
    i64.const 10
    i64.mul
    i64.const 32
    i64.shr_u
    i64.add
    i64.const 32
    i64.shr_u
    i64.add
    i64.const 0
    i64.const 1
    local.get $3
    i64.const 1
    i64.and
    i64.sub
    local.get $4
    i64.const 2
    i64.shr_u
    i64.add
    local.tee $3
    local.get $9
    i64.le_u
    select
    i64.const -1
    local.get $9
    i64.sub
    local.get $3
    i64.lt_u
    select
    local.set $3
    local.get $1
    i64.const 6
    i64.shr_u
    local.set $1
    local.get $3
    i64.const 10
    i64.eq
    if
     local.get $1
     i64.const 1
     i64.add
     global.set $~lib/util/dtoa/gSig
     i32.const 0
     global.set $~lib/util/dtoa/gLastDigit
     i32.const 0
     global.set $~lib/util/dtoa/gHasLastDigit
    else
     local.get $3
     i64.eqz
     if
      local.get $1
      global.set $~lib/util/dtoa/gSig
      i32.const 0
      global.set $~lib/util/dtoa/gLastDigit
      i32.const 0
      global.set $~lib/util/dtoa/gHasLastDigit
     else
      local.get $1
      global.set $~lib/util/dtoa/gSig
      local.get $3
      i32.wrap_i64
      global.set $~lib/util/dtoa/gLastDigit
      i32.const 1
      global.set $~lib/util/dtoa/gHasLastDigit
     end
    end
    i32.const -324
    global.set $~lib/util/dtoa/gExp
   end
   global.get $~lib/util/dtoa/gSig
   i64.const 1000000000000000
   i64.lt_u
   if
    block $~lib/util/dtoa/normalizeDoubleShortest|inlined.0
     global.get $~lib/util/dtoa/gSig
     i64.const 10
     i64.mul
     global.get $~lib/util/dtoa/gLastDigit
     i64.extend_i32_s
     i64.const 0
     global.get $~lib/util/dtoa/gHasLastDigit
     select
     i64.add
     local.tee $1
     i64.const 1000000000000000
     i64.ge_u
     if
      local.get $1
      global.set $~lib/util/dtoa/gSig
      global.get $~lib/util/dtoa/gExp
      i32.const 1
      i32.sub
      global.set $~lib/util/dtoa/gExp
      br $~lib/util/dtoa/normalizeDoubleShortest|inlined.0
     end
     i32.const 16
     block $~lib/util/dtoa/decimalLen15|inlined.1 (result i32)
      local.get $1
      i64.const 100000000
      i64.lt_u
      if
       local.get $1
       i64.const 10000
       i64.lt_u
       if
        i32.const 1
        i32.const 2
        local.get $1
        i64.const 10
        i64.lt_u
        select
        local.get $1
        i64.const 100
        i64.lt_u
        br_if $~lib/util/dtoa/decimalLen15|inlined.1
        drop
        i32.const 3
        i32.const 4
        local.get $1
        i64.const 1000
        i64.lt_u
        select
        br $~lib/util/dtoa/decimalLen15|inlined.1
       end
       i32.const 5
       i32.const 6
       local.get $1
       i64.const 100000
       i64.lt_u
       select
       local.get $1
       i64.const 1000000
       i64.lt_u
       br_if $~lib/util/dtoa/decimalLen15|inlined.1
       drop
       i32.const 7
       i32.const 8
       local.get $1
       i64.const 10000000
       i64.lt_u
       select
       br $~lib/util/dtoa/decimalLen15|inlined.1
      end
      local.get $1
      i64.const 1000000000000
      i64.lt_u
      if
       i32.const 9
       i32.const 10
       local.get $1
       i64.const 1000000000
       i64.lt_u
       select
       local.get $1
       i64.const 10000000000
       i64.lt_u
       br_if $~lib/util/dtoa/decimalLen15|inlined.1
       drop
       i32.const 11
       i32.const 12
       local.get $1
       i64.const 100000000000
       i64.lt_u
       select
       br $~lib/util/dtoa/decimalLen15|inlined.1
      end
      i32.const 13
      i32.const 14
      local.get $1
      i64.const 10000000000000
      i64.lt_u
      select
      local.get $1
      i64.const 100000000000000
      i64.lt_u
      br_if $~lib/util/dtoa/decimalLen15|inlined.1
      drop
      i32.const 15
     end
     i32.sub
     local.tee $5
     i32.const 3
     i32.shl
     i32.const 5440
     i32.add
     f64.load
     i64.trunc_sat_f64_u
     local.get $1
     i64.mul
     global.set $~lib/util/dtoa/gSig
     global.get $~lib/util/dtoa/gExp
     local.get $5
     i32.const 1
     i32.add
     i32.sub
     global.set $~lib/util/dtoa/gExp
    end
    i32.const 0
    global.set $~lib/util/dtoa/gLastDigit
    i32.const 0
    global.set $~lib/util/dtoa/gHasLastDigit
   end
   global.get $~lib/util/dtoa/gHasLastDigit
   local.set $5
   global.get $~lib/util/dtoa/gSig
   i64.const 1000000000000000
   i64.ge_u
   local.tee $6
   global.get $~lib/util/dtoa/gExp
   i32.const 15
   i32.add
   i32.add
   local.set $7
   global.get $~lib/util/dtoa/gSig
   local.tee $1
   i64.const 100000000
   i64.div_u
   local.tee $3
   i64.const 109951163
   i64.mul
   i64.const 40
   i64.shr_u
   i64.const 4294957296
   i64.mul
   local.get $3
   i64.add
   local.tee $4
   i64.const 5243
   i64.mul
   i64.const 19
   i64.shr_u
   i64.const 545460846719
   i64.and
   i64.const 65436
   i64.mul
   local.get $4
   i64.add
   local.tee $4
   i64.const 103
   i64.mul
   i64.const 10
   i64.shr_u
   i64.const 4222189076152335
   i64.and
   i64.const 246
   i64.mul
   local.get $4
   i64.add
   local.tee $4
   i64.const 8
   i64.shr_u
   i64.const 71777214294589695
   i64.and
   local.get $4
   i64.const 71777214294589695
   i64.and
   i64.const 8
   i64.shl
   i64.or
   local.tee $4
   i64.const 16
   i64.shr_u
   i64.const 281470681808895
   i64.and
   local.get $4
   i64.const 281470681808895
   i64.and
   i64.const 16
   i64.shl
   i64.or
   i64.const 32
   i64.rotr
   local.tee $4
   global.set $~lib/util/dtoa/gBcd
   i64.const 70
   local.get $4
   i64.const 1
   i64.shl
   i64.const 1
   i64.or
   i64.clz
   i64.sub
   i64.const 3
   i64.shr_u
   i32.wrap_i64
   global.set $~lib/util/dtoa/gBcdLen
   global.get $~lib/util/dtoa/gBcd
   local.set $4
   global.get $~lib/util/dtoa/gBcdLen
   local.set $8
   block $~lib/util/dtoa/toDigits64Swar|inlined.0
    local.get $1
    local.get $3
    i64.const 100000000
    i64.mul
    i64.sub
    local.tee $1
    i64.eqz
    if
     local.get $4
     i64.const 3472328296227680304
     i64.add
     global.set $~lib/util/dtoa/gDigHi
     i64.const 3472328296227680304
     global.set $~lib/util/dtoa/gDigLo
     local.get $8
     global.set $~lib/util/dtoa/gDigits
     br $~lib/util/dtoa/toDigits64Swar|inlined.0
    end
    local.get $1
    local.get $1
    i64.const 109951163
    i64.mul
    i64.const 40
    i64.shr_u
    i64.const 4294957296
    i64.mul
    i64.add
    local.tee $1
    i64.const 5243
    i64.mul
    i64.const 19
    i64.shr_u
    i64.const 545460846719
    i64.and
    i64.const 65436
    i64.mul
    local.get $1
    i64.add
    local.tee $1
    i64.const 103
    i64.mul
    i64.const 10
    i64.shr_u
    i64.const 4222189076152335
    i64.and
    i64.const 246
    i64.mul
    local.get $1
    i64.add
    local.tee $1
    i64.const 8
    i64.shr_u
    i64.const 71777214294589695
    i64.and
    local.get $1
    i64.const 71777214294589695
    i64.and
    i64.const 8
    i64.shl
    i64.or
    local.tee $1
    i64.const 16
    i64.shr_u
    i64.const 281470681808895
    i64.and
    local.get $1
    i64.const 281470681808895
    i64.and
    i64.const 16
    i64.shl
    i64.or
    i64.const 32
    i64.rotr
    local.tee $1
    global.set $~lib/util/dtoa/gBcd
    i64.const 70
    local.get $1
    i64.const 1
    i64.shl
    i64.const 1
    i64.or
    i64.clz
    i64.sub
    i64.const 3
    i64.shr_u
    i32.wrap_i64
    global.set $~lib/util/dtoa/gBcdLen
    local.get $4
    i64.const 3472328296227680304
    i64.add
    global.set $~lib/util/dtoa/gDigHi
    global.get $~lib/util/dtoa/gBcd
    i64.const 3472328296227680304
    i64.add
    global.set $~lib/util/dtoa/gDigLo
    global.get $~lib/util/dtoa/gBcdLen
    i32.const 8
    i32.add
    global.set $~lib/util/dtoa/gDigits
   end
   local.get $7
   i32.const 20
   i32.le_s
   local.get $7
   i32.const -6
   i32.ge_s
   i32.and
   if
    local.get $7
    i32.const 0
    i32.lt_s
    if
     local.get $2
     i64.const 48
     i64.store16
     local.get $2
     i64.const 48
     i64.store16 offset=2
     local.get $2
     i64.const 48
     i64.store16 offset=4
     local.get $2
     i64.const 48
     i64.store16 offset=6
     local.get $2
     i64.const 48
     i64.store16 offset=8
     local.get $2
     i64.const 48
     i64.store16 offset=10
     local.get $2
     i64.const 48
     i64.store16 offset=12
     local.get $2
     i64.const 48
     i64.store16 offset=14
    end
    global.get $~lib/util/dtoa/gLastDigit
    i64.extend_i32_s
    i64.const 0
    local.get $5
    select
    i64.const 48
    i64.add
    local.set $3
    i32.const 16
    global.get $~lib/util/dtoa/gDigits
    i32.const 1
    i32.sub
    local.get $5
    select
    local.set $5
    global.get $~lib/util/dtoa/gDigHi
    local.set $9
    global.get $~lib/util/dtoa/gDigLo
    local.set $1
    block $~lib/util/dtoa/writeFixed|inlined.0
     local.get $7
     i32.const 16
     i32.ge_s
     if
      local.get $2
      local.get $9
      i64.const 255
      i64.and
      i64.store16
      local.get $2
      local.get $9
      i64.const 8
      i64.shr_u
      i64.const 255
      i64.and
      i64.store16 offset=2
      local.get $2
      local.get $9
      i64.const 16
      i64.shr_u
      i64.const 255
      i64.and
      i64.store16 offset=4
      local.get $2
      local.get $9
      i64.const 24
      i64.shr_u
      i64.const 255
      i64.and
      i64.store16 offset=6
      local.get $2
      local.get $9
      i64.const 32
      i64.shr_u
      i64.const 255
      i64.and
      i64.store16 offset=8
      local.get $2
      local.get $9
      i64.const 40
      i64.shr_u
      i64.const 255
      i64.and
      i64.store16 offset=10
      local.get $2
      local.get $9
      i64.const 48
      i64.shr_u
      i64.const 255
      i64.and
      i64.store16 offset=12
      local.get $2
      local.get $9
      i64.const 56
      i64.shr_u
      i64.store16 offset=14
      local.get $2
      local.get $1
      i64.const 255
      i64.and
      i64.store16 offset=16
      local.get $2
      local.get $1
      i64.const 8
      i64.shr_u
      i64.const 255
      i64.and
      i64.store16 offset=18
      local.get $2
      local.get $1
      i64.const 16
      i64.shr_u
      i64.const 255
      i64.and
      i64.store16 offset=20
      local.get $2
      local.get $1
      i64.const 24
      i64.shr_u
      i64.const 255
      i64.and
      i64.store16 offset=22
      local.get $2
      local.get $1
      i64.const 32
      i64.shr_u
      i64.const 255
      i64.and
      i64.store16 offset=24
      local.get $2
      local.get $1
      i64.const 40
      i64.shr_u
      i64.const 255
      i64.and
      i64.store16 offset=26
      local.get $2
      local.get $1
      i64.const 48
      i64.shr_u
      i64.const 255
      i64.and
      i64.store16 offset=28
      local.get $2
      local.get $1
      i64.const 56
      i64.shr_u
      i64.store16 offset=30
      local.get $2
      local.get $3
      i64.store16 offset=32
      local.get $2
      local.get $7
      i32.const 1
      i32.add
      i32.const 1
      i32.shl
      i32.add
      local.set $6
      local.get $2
      i32.const 34
      i32.add
      local.set $5
      loop $for-loop|1
       local.get $5
       local.get $6
       i32.lt_u
       if
        local.get $5
        i64.const 48
        i64.store16
        local.get $5
        i64.const 48
        i64.store16 offset=2
        local.get $5
        i64.const 48
        i64.store16 offset=4
        local.get $5
        i64.const 48
        i64.store16 offset=6
        local.get $5
        i64.const 48
        i64.store16 offset=8
        local.get $5
        i64.const 48
        i64.store16 offset=10
        local.get $5
        i64.const 48
        i64.store16 offset=12
        local.get $5
        i64.const 48
        i64.store16 offset=14
        local.get $5
        i32.const 16
        i32.add
        local.set $5
        br $for-loop|1
       end
      end
      br $~lib/util/dtoa/writeFixed|inlined.0
     end
     local.get $5
     i32.const 1
     i32.add
     local.tee $5
     i32.const 1
     i32.add
     local.get $5
     local.get $7
     i32.const 0
     i32.ge_s
     local.tee $5
     select
     local.set $6
     local.get $2
     i32.const 1
     local.get $7
     i32.sub
     local.get $7
     i32.const 31
     i32.shr_s
     i32.and
     i32.const 1
     i32.shl
     i32.add
     local.tee $8
     local.get $9
     i64.const 255
     i64.and
     i64.store16
     local.get $8
     local.get $9
     i64.const 8
     i64.shr_u
     i64.const 255
     i64.and
     i64.store16 offset=2
     local.get $8
     local.get $9
     i64.const 16
     i64.shr_u
     i64.const 255
     i64.and
     i64.store16 offset=4
     local.get $8
     local.get $9
     i64.const 24
     i64.shr_u
     i64.const 255
     i64.and
     i64.store16 offset=6
     local.get $8
     local.get $9
     i64.const 32
     i64.shr_u
     i64.const 255
     i64.and
     i64.store16 offset=8
     local.get $8
     local.get $9
     i64.const 40
     i64.shr_u
     i64.const 255
     i64.and
     i64.store16 offset=10
     local.get $8
     local.get $9
     i64.const 48
     i64.shr_u
     i64.const 255
     i64.and
     i64.store16 offset=12
     local.get $8
     local.get $9
     i64.const 56
     i64.shr_u
     i64.store16 offset=14
     local.get $8
     local.get $1
     i64.const 255
     i64.and
     i64.store16 offset=16
     local.get $8
     local.get $1
     i64.const 8
     i64.shr_u
     i64.const 255
     i64.and
     i64.store16 offset=18
     local.get $8
     local.get $1
     i64.const 16
     i64.shr_u
     i64.const 255
     i64.and
     i64.store16 offset=20
     local.get $8
     local.get $1
     i64.const 24
     i64.shr_u
     i64.const 255
     i64.and
     i64.store16 offset=22
     local.get $8
     local.get $1
     i64.const 32
     i64.shr_u
     i64.const 255
     i64.and
     i64.store16 offset=24
     local.get $8
     local.get $1
     i64.const 40
     i64.shr_u
     i64.const 255
     i64.and
     i64.store16 offset=26
     local.get $8
     local.get $1
     i64.const 48
     i64.shr_u
     i64.const 255
     i64.and
     i64.store16 offset=28
     local.get $8
     local.get $1
     i64.const 56
     i64.shr_u
     i64.store16 offset=30
     local.get $8
     local.get $3
     i64.store16 offset=32
     local.get $5
     if
      local.get $1
      local.set $4
      local.get $7
      i32.const 1
      i32.add
      local.tee $2
      i32.const 3
      i32.shl
      local.tee $5
      i32.const 64
      i32.lt_s
      if (result i64)
       local.get $1
       i64.const 64
       local.get $5
       i64.extend_i32_s
       local.tee $10
       i64.sub
       local.tee $11
       i64.shl
       local.get $9
       local.get $10
       i64.shr_u
       i64.or
       local.set $1
       local.get $3
       local.get $11
       i64.shl
       local.get $4
       local.get $10
       i64.shr_u
       i64.or
      else
       local.get $5
       i32.const 64
       i32.ne
       if (result i64)
        local.get $5
        i32.const 128
        i32.lt_s
        if (result i64)
         local.get $3
         i64.const 64
         local.get $5
         i32.const -64
         i32.add
         i64.extend_i32_s
         local.tee $4
         i64.sub
         i64.shl
         local.get $1
         local.get $4
         i64.shr_u
         i64.or
         local.set $1
         local.get $3
         local.get $4
         i64.shr_u
        else
         local.get $3
         local.set $1
         i64.const 0
        end
       else
        local.get $3
       end
      end
      local.set $3
      local.get $2
      i32.const 1
      i32.add
      i32.const 1
      i32.shl
      local.get $8
      i32.add
      local.tee $5
      local.get $1
      i64.const 255
      i64.and
      i64.store16
      local.get $5
      local.get $1
      i64.const 8
      i64.shr_u
      i64.const 255
      i64.and
      i64.store16 offset=2
      local.get $5
      local.get $1
      i64.const 16
      i64.shr_u
      i64.const 255
      i64.and
      i64.store16 offset=4
      local.get $5
      local.get $1
      i64.const 24
      i64.shr_u
      i64.const 255
      i64.and
      i64.store16 offset=6
      local.get $5
      local.get $1
      i64.const 32
      i64.shr_u
      i64.const 255
      i64.and
      i64.store16 offset=8
      local.get $5
      local.get $1
      i64.const 40
      i64.shr_u
      i64.const 255
      i64.and
      i64.store16 offset=10
      local.get $5
      local.get $1
      i64.const 48
      i64.shr_u
      i64.const 255
      i64.and
      i64.store16 offset=12
      local.get $5
      local.get $1
      i64.const 56
      i64.shr_u
      i64.store16 offset=14
      local.get $2
      i32.const 9
      i32.add
      local.tee $5
      local.get $6
      i32.lt_s
      if
       local.get $5
       i32.const 1
       i32.shl
       local.get $8
       i32.add
       local.tee $5
       local.get $3
       i64.const 255
       i64.and
       i64.store16
       local.get $5
       local.get $3
       i64.const 8
       i64.shr_u
       i64.const 255
       i64.and
       i64.store16 offset=2
       local.get $5
       local.get $3
       i64.const 16
       i64.shr_u
       i64.const 255
       i64.and
       i64.store16 offset=4
       local.get $5
       local.get $3
       i64.const 24
       i64.shr_u
       i64.const 255
       i64.and
       i64.store16 offset=6
       local.get $5
       local.get $3
       i64.const 32
       i64.shr_u
       i64.const 255
       i64.and
       i64.store16 offset=8
       local.get $5
       local.get $3
       i64.const 40
       i64.shr_u
       i64.const 255
       i64.and
       i64.store16 offset=10
       local.get $5
       local.get $3
       i64.const 48
       i64.shr_u
       i64.const 255
       i64.and
       i64.store16 offset=12
       local.get $5
       local.get $3
       i64.const 56
       i64.shr_u
       i64.store16 offset=14
      end
      local.get $8
      local.get $2
      i32.const 1
      i32.shl
      i32.add
      i32.const 46
      i32.store16
     else
      local.get $2
      i32.const 46
      i32.store16 offset=2
     end
     local.get $8
     local.get $6
     i32.const 1
     i32.shl
     i32.add
     local.set $6
    end
    br $~lib/util/dtoa/formatDecodedDouble|inlined.0
   end
   local.get $2
   local.get $6
   i32.const 1
   i32.shl
   i32.add
   local.tee $6
   global.get $~lib/util/dtoa/gDigHi
   local.tee $1
   i64.const 255
   i64.and
   i64.store16
   local.get $6
   local.get $1
   i64.const 8
   i64.shr_u
   i64.const 255
   i64.and
   i64.store16 offset=2
   local.get $6
   local.get $1
   i64.const 16
   i64.shr_u
   i64.const 255
   i64.and
   i64.store16 offset=4
   local.get $6
   local.get $1
   i64.const 24
   i64.shr_u
   i64.const 255
   i64.and
   i64.store16 offset=6
   local.get $6
   local.get $1
   i64.const 32
   i64.shr_u
   i64.const 255
   i64.and
   i64.store16 offset=8
   local.get $6
   local.get $1
   i64.const 40
   i64.shr_u
   i64.const 255
   i64.and
   i64.store16 offset=10
   local.get $6
   local.get $1
   i64.const 48
   i64.shr_u
   i64.const 255
   i64.and
   i64.store16 offset=12
   local.get $6
   local.get $1
   i64.const 56
   i64.shr_u
   i64.store16 offset=14
   local.get $6
   global.get $~lib/util/dtoa/gDigLo
   local.tee $1
   i64.const 255
   i64.and
   i64.store16 offset=16
   local.get $6
   local.get $1
   i64.const 8
   i64.shr_u
   i64.const 255
   i64.and
   i64.store16 offset=18
   local.get $6
   local.get $1
   i64.const 16
   i64.shr_u
   i64.const 255
   i64.and
   i64.store16 offset=20
   local.get $6
   local.get $1
   i64.const 24
   i64.shr_u
   i64.const 255
   i64.and
   i64.store16 offset=22
   local.get $6
   local.get $1
   i64.const 32
   i64.shr_u
   i64.const 255
   i64.and
   i64.store16 offset=24
   local.get $6
   local.get $1
   i64.const 40
   i64.shr_u
   i64.const 255
   i64.and
   i64.store16 offset=26
   local.get $6
   local.get $1
   i64.const 48
   i64.shr_u
   i64.const 255
   i64.and
   i64.store16 offset=28
   local.get $6
   local.get $1
   i64.const 56
   i64.shr_u
   i64.store16 offset=30
   local.get $6
   global.get $~lib/util/dtoa/gLastDigit
   i32.const 48
   i32.add
   i32.store16 offset=32
   local.get $2
   local.get $2
   i32.load16_u offset=2
   i32.store16
   local.get $2
   i32.const 46
   i32.store16 offset=2
   local.get $6
   i32.const 17
   global.get $~lib/util/dtoa/gDigits
   local.get $5
   select
   i32.const 1
   i32.shl
   i32.add
   local.tee $5
   local.get $5
   local.get $2
   i32.const 4
   i32.add
   i32.eq
   i32.const 1
   i32.shl
   i32.sub
   local.tee $2
   i32.const 101
   i32.store16
   local.get $2
   local.get $7
   i32.const 31
   i32.shr_s
   local.tee $5
   i32.const 2
   i32.and
   i32.const 43
   i32.add
   i32.store16 offset=2
   local.get $2
   i32.const 4
   i32.add
   local.set $2
   block $~lib/util/dtoa/writeExponent|inlined.0 (result i32)
    local.get $5
    local.get $7
    i32.xor
    local.get $5
    i32.sub
    local.tee $5
    i32.const 100
    i32.ge_s
    if
     local.get $2
     local.get $5
     i32.const 5243
     i32.mul
     i32.const 19
     i32.shr_u
     local.tee $6
     i32.const 48
     i32.add
     i32.store16
     local.get $2
     local.get $5
     local.get $6
     i32.const 100
     i32.mul
     i32.sub
     i32.const 2
     i32.shl
     i32.const 2924
     i32.add
     i32.load
     i32.store offset=2
     local.get $2
     i32.const 6
     i32.add
     br $~lib/util/dtoa/writeExponent|inlined.0
    end
    local.get $5
    i32.const 10
    i32.ge_s
    if
     local.get $2
     local.get $5
     i32.const 2
     i32.shl
     i32.const 2924
     i32.add
     i32.load
     i32.store
     local.get $2
     i32.const 4
     i32.add
     br $~lib/util/dtoa/writeExponent|inlined.0
    end
    local.get $2
    local.get $5
    i32.const 48
    i32.add
    i32.store16
    local.get $2
    i32.const 2
    i32.add
   end
   local.set $6
  end
  local.get $6
  i32.const 4640
  i32.sub
  i32.const 1
  i32.shr_u
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
      i32.const 39408
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
     i32.const 2160
     i32.const 229
     i32.const 20
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 39408
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
     i32.const 39408
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
       i32.const 2432
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
 (func $start:templateliteral
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  memory.size
  i32.const 16
  i32.shl
  i32.const 39408
  i32.sub
  i32.const 1
  i32.shr_u
  global.set $~lib/rt/itcms/threshold
  i32.const 2212
  i32.const 2208
  i32.store
  i32.const 2216
  i32.const 2208
  i32.store
  i32.const 2208
  global.set $~lib/rt/itcms/pinSpace
  i32.const 2244
  i32.const 2240
  i32.store
  i32.const 2248
  i32.const 2240
  i32.store
  i32.const 2240
  global.set $~lib/rt/itcms/toSpace
  i32.const 2388
  i32.const 2384
  i32.store
  i32.const 2392
  i32.const 2384
  i32.store
  i32.const 2384
  global.set $~lib/rt/itcms/fromSpace
  global.get $~lib/memory/__stack_pointer
  i32.const 28
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 6640
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 28
   memory.fill
   global.get $~lib/memory/__stack_pointer
   i32.const 1056
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 1088
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 1056
   i32.store offset=8
   i32.const 1056
   i32.const 1056
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 2000
    i32.const 4
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 1056
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   i32.const 1088
   i32.store offset=16
   i32.const 1056
   i32.const 1088
   call $~lib/string/String#concat
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   local.get $0
   i32.const 2496
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 2000
    i32.const 5
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 1056
   i32.store offset=20
   global.get $~lib/memory/__stack_pointer
   i32.const 1088
   i32.store offset=24
   global.get $~lib/memory/__stack_pointer
   i32.const 2624
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   i32.const 1056
   i32.store offset=16
   i32.const 2628
   i32.const 1056
   i32.store
   i32.const 2624
   i32.const 1056
   i32.const 1
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   i32.const 2624
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   i32.const 1088
   i32.store offset=16
   i32.const 2636
   i32.const 1088
   i32.store
   i32.const 2624
   i32.const 1088
   i32.const 1
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   i32.const 2624
   i32.store offset=12
   i32.const 2624
   call $~lib/staticarray/StaticArray<~lib/string/String>#join
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   local.get $0
   i32.const 2672
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 2000
    i32.const 6
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 28
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 20
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 6640
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 20
   memory.fill
   i32.const 1
   call $~lib/number/I32#toString
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const 4496
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 2000
    i32.const 13
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 1
   call $~lib/number/I32#toString
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   i32.const 2
   call $~lib/number/I32#toString
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   local.get $0
   local.get $1
   call $~lib/string/String#concat
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const 4528
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 2000
    i32.const 14
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 1
   call $~lib/number/I32#toString
   local.tee $0
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   i32.const 2
   call $~lib/number/I32#toString
   local.tee $1
   i32.store offset=16
   global.get $~lib/memory/__stack_pointer
   i32.const 4560
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   i32.const 4564
   local.get $0
   i32.store
   i32.const 4560
   local.get $0
   i32.const 1
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   i32.const 4560
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   i32.const 4572
   local.get $1
   i32.store
   i32.const 4560
   local.get $1
   i32.const 1
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   i32.const 4560
   i32.store offset=4
   i32.const 4560
   call $~lib/staticarray/StaticArray<~lib/string/String>#join
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const 4608
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 2000
    i32.const 15
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 20
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 20
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 6640
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 20
   memory.fill
   f64.const 1
   call $~lib/number/F64#toString
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const 5648
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 2000
    i32.const 22
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   f64.const 1
   call $~lib/number/F64#toString
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   f64.const 2
   call $~lib/number/F64#toString
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   local.get $0
   local.get $1
   call $~lib/string/String#concat
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const 5680
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 2000
    i32.const 23
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   f64.const 1
   call $~lib/number/F64#toString
   local.tee $0
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   f64.const 2
   call $~lib/number/F64#toString
   local.tee $1
   i32.store offset=16
   global.get $~lib/memory/__stack_pointer
   i32.const 5712
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   i32.const 5716
   local.get $0
   i32.store
   i32.const 5712
   local.get $0
   i32.const 1
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   i32.const 5712
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   i32.const 5724
   local.get $1
   i32.store
   i32.const 5712
   local.get $1
   i32.const 1
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   i32.const 5712
   i32.store offset=4
   i32.const 5712
   call $~lib/staticarray/StaticArray<~lib/string/String>#join
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const 5760
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 2000
    i32.const 24
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 20
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 6640
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 1088
   i32.store
   i32.const 2
   call $~lib/number/I32#toString
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $0
   i32.const 5808
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 2000
    i32.const 31
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 1088
   i32.store offset=4
   i32.const 1088
   i32.const 1088
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 2000
    i32.const 32
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 2
   call $~lib/number/I32#toString
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   i32.const 5840
   local.get $0
   call $~lib/string/String#concat
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $0
   i32.const 5872
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 2000
    i32.const 33
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 1088
   i32.store offset=8
   i32.const 5840
   i32.const 1088
   call $~lib/string/String#concat
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $0
   i32.const 5904
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 2000
    i32.const 34
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 2
   call $~lib/number/I32#toString
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   local.get $0
   i32.const 5936
   call $~lib/string/String#concat
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $0
   i32.const 5968
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 2000
    i32.const 35
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 1088
   i32.store offset=8
   i32.const 1088
   i32.const 5936
   call $~lib/string/String#concat
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $0
   i32.const 6000
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 2000
    i32.const 36
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 2
   call $~lib/number/I32#toString
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 1088
   i32.store offset=12
   local.get $0
   i32.const 1088
   call $~lib/string/String#concat
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $0
   i32.const 6032
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 2000
    i32.const 37
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 32
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 6640
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 32
   memory.fill
   global.get $~lib/memory/__stack_pointer
   i32.const 1
   call $templateliteral/Ref#constructor
   local.tee $2
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 2
   call $templateliteral/Ref#constructor
   local.tee $0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=12
   local.get $2
   call $templateliteral/Ref#toString
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   local.get $1
   i32.const 6096
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 2000
    i32.const 51
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=20
   local.get $2
   call $templateliteral/Ref#toString
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=20
   local.get $0
   call $templateliteral/Ref#toString
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=16
   local.get $1
   local.get $3
   call $~lib/string/String#concat
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   local.get $1
   i32.const 6128
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 2000
    i32.const 52
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $2
   call $templateliteral/Ref#toString
   local.tee $1
   i32.store offset=24
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $0
   call $templateliteral/Ref#toString
   local.tee $0
   i32.store offset=28
   global.get $~lib/memory/__stack_pointer
   i32.const 6176
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=16
   i32.const 6180
   local.get $1
   i32.store
   i32.const 6176
   local.get $1
   i32.const 1
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   i32.const 6176
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=16
   i32.const 6188
   local.get $0
   i32.store
   i32.const 6176
   local.get $0
   i32.const 1
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   i32.const 6176
   i32.store offset=12
   i32.const 6176
   call $~lib/staticarray/StaticArray<~lib/string/String>#join
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   local.get $0
   i32.const 6224
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 2000
    i32.const 53
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 32
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 28
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 6640
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 28
   memory.fill
   global.get $~lib/memory/__stack_pointer
   i32.const 3
   call $templateliteral/Ref#constructor
   local.tee $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $0
   call $templateliteral/Ref#toString
   local.tee $0
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store offset=16
   global.get $~lib/memory/__stack_pointer
   i32.const 6400
   i32.store offset=20
   global.get $~lib/memory/__stack_pointer
   i32.const 6352
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=24
   i32.const 6356
   local.get $0
   i32.store
   i32.const 6352
   local.get $0
   i32.const 1
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   i32.const 6352
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 6400
   i32.store offset=24
   i32.const 6364
   i32.const 6400
   i32.store
   i32.const 6352
   i32.const 6400
   i32.const 1
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   i32.const 6352
   i32.store offset=8
   i32.const 6352
   call $~lib/staticarray/StaticArray<~lib/string/String>#join
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $0
   i32.const 6432
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 2000
    i32.const 60
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 28
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 20
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 6640
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 20
   memory.fill
   global.get $~lib/memory/__stack_pointer
   i32.const 6496
   i32.const 0
   call $templateliteral/RecursiveObject#constructor
   local.tee $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 1088
   local.get $0
   call $templateliteral/RecursiveObject#constructor
   local.tee $0
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 1056
   local.get $0
   call $templateliteral/RecursiveObject#constructor
   local.tee $0
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=16
   local.get $0
   call $templateliteral/RecursiveObject#toString
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $0
   i32.const 6592
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 2000
    i32.const 125
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 20
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 39440
  i32.const 39488
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
)
