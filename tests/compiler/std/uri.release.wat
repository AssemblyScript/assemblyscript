(module
 (type $0 (func (param i32 i32) (result i32)))
 (type $1 (func (param i32) (result i32)))
 (type $2 (func))
 (type $3 (func (param i32)))
 (type $4 (func (param i32 i32)))
 (type $5 (func (param i32 i32 i32) (result i32)))
 (type $6 (func (param i32 i32 i32 i32)))
 (type $7 (func (result i32)))
 (type $8 (func (param i32 i32 i64)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
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
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 38804))
 (memory $0 1)
 (data $0 (i32.const 1036) "\1c")
 (data $0.1 (i32.const 1048) "\02")
 (data $1 (i32.const 1079) "\80\00\00\00\00\00\00\00\a0\00\00\00\00\00\00\00\c8\00\00\00\00\00\00\00\fa\00\00\00\00\00\00@\9c\00\00\00\00\00\00P\c3\00\00\00\00\00\00$\f4\00\00\00\00\00\80\96\98\00\00\00\00\00 \bc\be\00\00\00\00\00(k\ee\00\00\00\00\00\f9\02\95\00\00\00\00@\b7C\ba\00\00\00\00\10\a5\d4\e8\00\00\00\00*\e7\84\91\00\00\00\80\f4 \e6\b5\00\00\00\a01\a9_\e3\00\00\00\04\bf\c9\1b\8e\00\00\00\c5.\bc\a2\b1\00\00@v:k\0b\de\00\00\e8\89\04#\c7\8a\00\00b\ac\c5\ebx\ad\00\80z\17\b7&\d7\d8\00\90\acn2x\86\87\00\b4W\n?\16h\a9\00\a1\ed\cc\ce\1b\c2\d3\a0\84\14@aQY\84\c8\a5\19\90\b9\a5o\a5:\0f \f4\'\8f\cb\ce")
 (data $2 (i32.const 1296) "o\1b\8e(\10T\8e\af\daM\e4^\ae\f0\ec\07J\fb\9f\f4\98\'D\b1\9dwA\df\cf\11\cd\99\07\ef\99\85\0b?\fe\b2\15\aa\b4\dc\e6\a7\1f\86c\beZ\06\0b\a5\bc\b4\aaSkuz\07\ed\0f\08\bf,)Ud\7f\b6C\d5\b1\17L\c8;\1a\fb;\efi\c2\87F\b8B\a7\ee@OQ]=\eb\dd\e4PF\1a\12\ba\13\e4labM\f3\92\ea\af(\b6\ef&\e2\bb\8c6U\n\f7\89\04\89\0f`\cb\05\e9\b8\b6\bd!\c9\c1\bb\87\e9\00T\96_\9a\84x\db\8f\bf4\d0\bdr\04R\98\de\'\8a\92\95\00\9am\c1\94\82\17\0f<\05\b7u\00\00\00\00\00\00P\c3\00\00\00\00\00\00\00\00\05\e3L6\12\197\c5\00\00\00\00\00\00(l\d6\aa\80\9d\ef\f0\"\c7\f6~\b9\b7\d2:MBL\c8q\d5m\93\13\c9\ea8\1e\cd\19:\bc\03\1cU\ab\01\80\0c\t\cb\c6,\07\d3\bf\f5\ad\\\a1\90\08\137h\03\cd\10\8cz\c3\87\a8\db6.\ef\07\12\c2\b2\02\cf\bc\f4\03^\e4g\f9\94\c7\85\d7in\f8\06\d1R\ba\be\01\d763\e1|\a0\1c4\a8E\10\d3Q\a0\t\12\11H\de\1e1Vx\85\fa\a6\1e\d5f\a5>\7f\"t*U3\f1\ca\ba\0f)2\d7\96@\adGy\17|\a9t\088\c7\b1\d8J\d9\bc\"x\ae\81R7\18")
 (data $3 (i32.const 1664) "?6N\n@\18\00\00\00d\00\00@\00 $\00\00\00\00\00\00\00\0c\80\13\c8\82\1f\e0L^\0f\f60\d7\1b\00\00\00\00\00\00\00\fc\ff\f7\cd\d8\01\82n\d1?\cd@\01%d\db\r\r\00\00\00$\04\14@8qS\b4\1dx\11")
 (data $5 (i32.const 1872) "p\\\ea{\ce2~\8f\1a\c7C\c6\b0\b7\96\e5\ae\05\03\05\'\c6\ab\b7\bf7\cf\d0\b8\d1\ef\92\fe%\e5\1a\8eO\19\eb2\ebP\e2\a4?\14\bc\f5\88\r\b5P\99v\96!\dbH\bb\1a\c2\bd\f0\b4\15\07\c9{\ce\97\c0]\11l:\96\0b\13\9a\c7\1b\e0\c3V\df\84\f6\06\e3L6\12\197\c5\9e\b5p+\a8\ad\c5\9d\97\"\81E@|o\fc\dfNg\04\cd\c9\f2\c9\e6\0b\b96\d7\07\8f\a1\85\t\94\f8x9?\81:\0f \f4\'\8f\cb\ce\c8\a5\19\90\b9\a5o\a5\a0\84\14@aQY\84\00\a1\ed\cc\ce\1b\c2\d3\00\b4W\n?\16h\a9\00\90\acn2x\86\87\00\80z\17\b7&\d7\d8\00\00b\ac\c5\ebx\ad\00\00\e8\89\04#\c7\8a\00\00@v:k\0b\de\00\00\00\c5.\bc\a2\b1\00\00\00\04\bf\c9\1b\8e\00\00\00\a01\a9_\e3\00\00\00\80\f4 \e6\b5\00\00\00\00*\e7\84\91\00\00\00\00\10\a5\d4\e8\00\00\00\00@\b7C\ba\00\00\00\00\00\f9\02\95\00\00\00\00\00(k\ee\00\00\00\00\00 \bc\be\00\00\00\00\00\80\96\98\00\00\00\00\00\00$\f4\00\00\00\00\00\00P\c3\00\00\00\00\00\00@\9c\00\00\00\00\00\00\00\fa\00\00\00\00\00\00\00\c8\00\00\00\00\00\00\00\a0\00\00\00\00\00\00\00\80\cd\cc\cc\cc\cc\cc\cc\cc\0b\d7\a3p=\n\d7\a3<\dfO\8d\97n\12\83,e\19\e2X\17\b7\d1$\84G\1bG\ac\c5\a7\b6il\af\05\bd7\86\bdBz\e5\d5\94\bf\d6\fd\cea\84\11w\cc\ab\98\a5\b46A_p\89\bf\d5\ed\bd\ce\fe\e6\db\ff\aa$\cb\0b\ff\eb\af\cc\88Po\t\cc\bc\8c\14\0e\b4KB\13.\e1\10\d8\\\t5\dc$\b4\da\ac\b0:\f7|\1d\90\\\e1M\c4\be\94\95\e6J\b4\a462\aaw\b8\08]\1d\92\8e\ee\92\93\a6a\95\b6}J\1e\ec\eb\1a\11\92d\08\e5\bc\ef{\datP\a0\1d\97\b2,\f7\ba\80\00\c9\f1(\8a\92\95\00\9am\c1S;uD\cd\14\be\9aR\c5\ee\d3\ae\87\96\f7\db\9dXv%\06\12\c6I~\e0\91\b7\d1t\9e\0e\ca\00\83\f2\b5\87\fd?;\9a5\f5\f7\d2\ca2\fc\14^\f7_B\a2\f5\fcCK,\b3\ce\81\bb\949E\ad\1e\b1\cf")
 (data $6 (i32.const 2488) "\"\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$\"#$!\"#")
 (data $7 (i32.const 2745) "\01\01\01\01\01\00\00\00\00\01\01\00\00\01")
 (data $7.1 (i32.const 2769) "\01\01\01\01\01\01\01")
 (data $7.2 (i32.const 2802) "\01\01\01\01\00\01")
 (data $7.3 (i32.const 2834) "\01\01\01")
 (data $8 (i32.const 2844) "<")
 (data $8.1 (i32.const 2856) "\02\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
 (data $9 (i32.const 2908) "<")
 (data $9.1 (i32.const 2920) "\02\00\00\00 \00\00\00~\00l\00i\00b\00/\00r\00t\00/\00i\00t\00c\00m\00s\00.\00t\00s")
 (data $12 (i32.const 3036) "<")
 (data $12.1 (i32.const 3048) "\02\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data $13 (i32.const 3100) ",")
 (data $13.1 (i32.const 3112) "\02\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s")
 (data $15 (i32.const 3180) "<")
 (data $15.1 (i32.const 3192) "\02\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s")
 (data $16 (i32.const 3244) ",")
 (data $16.1 (i32.const 3256) "\02\00\00\00\1a\00\00\00U\00R\00I\00 \00m\00a\00l\00f\00o\00r\00m\00e\00d")
 (data $17 (i32.const 3292) "<")
 (data $17.1 (i32.const 3304) "\02\00\00\00 \00\00\00~\00l\00i\00b\00/\00u\00t\00i\00l\00/\00u\00r\00i\00.\00t\00s")
 (data $18 (i32.const 3356) "0123456789ABCDEF")
 (data $19 (i32.const 3372) ",")
 (data $19.1 (i32.const 3384) "\02\00\00\00\14\00\00\00s\00t\00d\00/\00u\00r\00i\00.\00t\00s")
 (data $20 (i32.const 3420) "\1c")
 (data $20.1 (i32.const 3432) "\02\00\00\00\02\00\00\00a")
 (data $21 (i32.const 3452) "\1c")
 (data $21.1 (i32.const 3464) "\02\00\00\00\04\00\00\00a\001")
 (data $22 (i32.const 3484) "\1c")
 (data $22.1 (i32.const 3496) "\02\00\00\00\06\00\00\00a\00b\00_")
 (data $23 (i32.const 3516) "\\")
 (data $23.1 (i32.const 3528) "\02\00\00\00H\00\00\00A\00B\00C\00D\00X\00Y\00Z\00a\00f\00g\00k\00l\00m\00n\00w\00y\00z\000\001\002\003\004\005\006\007\008\009\00-\00_\00.\00!\00~\00*\00\'\00(\00)")
 (data $24 (i32.const 3612) "\1c")
 (data $24.1 (i32.const 3624) "\02\00\00\00\02")
 (data $25 (i32.const 3644) "\1c")
 (data $25.1 (i32.const 3656) "\02\00\00\00\06\00\00\00%\000\000")
 (data $26 (i32.const 3676) "\1c")
 (data $26.1 (i32.const 3688) "\02\00\00\00\02\00\00\00+")
 (data $27 (i32.const 3708) "\1c")
 (data $27.1 (i32.const 3720) "\02\00\00\00\06\00\00\00%\002\00B")
 (data $28 (i32.const 3740) "\1c")
 (data $28.1 (i32.const 3752) "\02\00\00\00\06\00\00\00#\000\00=")
 (data $29 (i32.const 3772) ",")
 (data $29.1 (i32.const 3784) "\02\00\00\00\0e\00\00\00%\002\003\000\00%\003\00D")
 (data $30 (i32.const 3820) "\1c")
 (data $30.1 (i32.const 3832) "\02\00\00\00\n\00\00\00 \001\002\003\00 ")
 (data $31 (i32.const 3852) ",")
 (data $31.1 (i32.const 3864) "\02\00\00\00\12\00\00\00%\002\000\001\002\003\00%\002\000")
 (data $32 (i32.const 3900) "\1c")
 (data $32.1 (i32.const 3912) "\02\00\00\00\04\00\00\00?\00+")
 (data $33 (i32.const 3932) "\1c")
 (data $33.1 (i32.const 3944) "\02\00\00\00\0c\00\00\00%\003\00F\00%\002\00B")
 (data $34 (i32.const 3964) "\1c")
 (data $34.1 (i32.const 3976) "\02\00\00\00\n\00\00\00-\00?\001\00.\00-")
 (data $35 (i32.const 3996) ",")
 (data $35.1 (i32.const 4008) "\02\00\00\00\0e\00\00\00-\00%\003\00F\001\00.\00-")
 (data $36 (i32.const 4044) "\1c")
 (data $36.1 (i32.const 4056) "\02\00\00\00\0c\00\00\00<\d8\ed\dd<\d8\fa\dd<\d8N\df")
 (data $37 (i32.const 4076) "\\")
 (data $37.1 (i32.const 4088) "\02\00\00\00H\00\00\00%\00F\000\00%\009\00F\00%\008\007\00%\00A\00D\00%\00F\000\00%\009\00F\00%\008\007\00%\00B\00A\00%\00F\000\00%\009\00F\00%\008\00D\00%\008\00E")
 (data $38 (i32.const 4172) "\1c")
 (data $38.1 (i32.const 4184) "\02\00\00\00\n\00\00\00H\c5U\b1X\d58\c1\94\c6")
 (data $39 (i32.const 4204) "l")
 (data $39.1 (i32.const 4216) "\02\00\00\00Z\00\00\00%\00E\00C\00%\009\005\00%\008\008\00%\00E\00B\00%\008\005\00%\009\005\00%\00E\00D\00%\009\005\00%\009\008\00%\00E\00C\00%\008\004\00%\00B\008\00%\00E\00C\00%\009\00A\00%\009\004")
 (data $40 (i32.const 4316) "\1c")
 (data $40.1 (i32.const 4328) "\02\00\00\00\06\00\00\00~\00\7f\00\80")
 (data $41 (i32.const 4348) ",")
 (data $41.1 (i32.const 4360) "\02\00\00\00\14\00\00\00~\00%\007\00F\00%\00C\002\00%\008\000")
 (data $42 (i32.const 4396) "\1c")
 (data $42.1 (i32.const 4408) "\02\00\00\00\04\00\00\00\00\d8\ff\df")
 (data $43 (i32.const 4428) ",")
 (data $43.1 (i32.const 4440) "\02\00\00\00\18\00\00\00%\00F\000\00%\009\000\00%\008\00F\00%\00B\00F")
 (data $44 (i32.const 4476) "\1c")
 (data $44.1 (i32.const 4488) "\02\00\00\00\n\00\00\00{\da\01\dc-\00P\da\02\dc")
 (data $45 (i32.const 4508) "L")
 (data $45.1 (i32.const 4520) "\02\00\00\002\00\00\00%\00F\002\00%\00A\00E\00%\00B\000\00%\008\001\00-\00%\00F\002\00%\00A\004\00%\008\000\00%\008\002")
 (data $46 (i32.const 4588) "\1c")
 (data $46.1 (i32.const 4600) "\02\00\00\00\n\00\00\00\n\00\t\00\0b\00\0c\00\r")
 (data $47 (i32.const 4620) "<")
 (data $47.1 (i32.const 4632) "\02\00\00\00\1e\00\00\00%\000\00A\00%\000\009\00%\000\00B\00%\000\00C\00%\000\00D")
 (data $48 (i32.const 4684) ",")
 (data $48.1 (i32.const 4696) "\02\00\00\00\14\00\00\00;\00/\00?\00:\00@\00&\00=\00+\00$\00,")
 (data $49 (i32.const 4732) "L")
 (data $49.1 (i32.const 4744) "\02\00\00\00<\00\00\00%\003\00B\00%\002\00F\00%\003\00F\00%\003\00A\00%\004\000\00%\002\006\00%\003\00D\00%\002\00B\00%\002\004\00%\002\00C")
 (data $50 (i32.const 4812) "l")
 (data $50.1 (i32.const 4824) "\02\00\00\00\\\00\00\00h\00t\00t\00p\00:\00/\00/\00e\00n\00.\00w\00i\00k\00i\00p\00e\00d\00i\00a\00.\00o\00r\00g\00/\00w\00i\00k\00i\00/\00U\00T\00F\00-\008\00#\00D\00e\00s\00c\00r\00i\00p\00t\00i\00o\00n")
 (data $51 (i32.const 4924) "\8c")
 (data $51.1 (i32.const 4936) "\02\00\00\00t\00\00\00h\00t\00t\00p\00%\003\00A\00%\002\00F\00%\002\00F\00e\00n\00.\00w\00i\00k\00i\00p\00e\00d\00i\00a\00.\00o\00r\00g\00%\002\00F\00w\00i\00k\00i\00%\002\00F\00U\00T\00F\00-\008\00%\002\003\00D\00e\00s\00c\00r\00i\00p\00t\00i\00o\00n")
 (data $52 (i32.const 5069) "\01\00\00\01")
 (data $52.1 (i32.const 5095) "\01\00\01")
 (data $52.2 (i32.const 5126) "\01\01\01\01\00\01")
 (data $52.3 (i32.const 5158) "\01\01\01")
 (data $53 (i32.const 5164) ",")
 (data $53.1 (i32.const 5176) "\02\00\00\00\16\00\00\00;\00,\00/\00?\00:\00@\00&\00=\00+\00$\00#")
 (data $54 (i32.const 5212) "\1c")
 (data $54.1 (i32.const 5224) "\02\00\00\00\02\00\00\00 ")
 (data $55 (i32.const 5244) "\1c")
 (data $55.1 (i32.const 5256) "\02\00\00\00\06\00\00\00%\002\000")
 (data $56 (i32.const 5276) "\01\01\00\01\00\00\00\00\01\01\00\00\01")
 (data $56.1 (i32.const 5299) "\01\01\00\01\00\01\01")
 (data $57 (i32.const 5308) "\1c")
 (data $57.1 (i32.const 5320) "\02\00\00\00\06\00\00\00%\002\006")
 (data $58 (i32.const 5340) "\1c")
 (data $58.1 (i32.const 5352) "\02\00\00\00\02\00\00\00&")
 (data $59 (i32.const 5372) "\1c")
 (data $59.1 (i32.const 5384) "\02\00\00\00\06\00\00\00%\005\00E")
 (data $60 (i32.const 5404) "\1c")
 (data $60.1 (i32.const 5416) "\02\00\00\00\02\00\00\00^")
 (data $61 (i32.const 5436) "\1c")
 (data $61.1 (i32.const 5448) "\02\00\00\00\02\00\00\00\00\d8")
 (data $62 (i32.const 5468) "L")
 (data $62.1 (i32.const 5480) "\02\00\00\00<\00\00\00%\003\00b\00%\002\00f\00%\003\00f\00%\003\00a\00%\004\000\00%\003\00d\00%\002\00b\00%\002\004\00%\002\00c\00%\002\003")
 (data $63 (i32.const 5548) ",")
 (data $63.1 (i32.const 5560) "\02\00\00\00\14\00\00\00;\00/\00?\00:\00@\00=\00+\00$\00,\00#")
 (data $64 (i32.const 5596) "L")
 (data $64.1 (i32.const 5608) "\02\00\00\00<\00\00\00%\003\00B\00%\002\00F\00%\003\00F\00%\003\00A\00%\004\000\00%\003\00D\00%\002\00B\00%\002\004\00%\002\00C\00%\002\003")
 (data $65 (i32.const 5676) "|")
 (data $65.1 (i32.const 5688) "\02\00\00\00h\00\00\00h\00t\00t\00p\00:\00%\002\00F\00%\002\00F\00e\00n\00.\00w\00i\00k\00i\00p\00e\00d\00i\00a\00.\00o\00r\00g\00/\00w\00i\00k\00i\00/\00U\00T\00F\00-\008\00%\002\003\00D\00e\00s\00c\00r\00i\00p\00t\00i\00o\00n")
 (data $66 (i32.const 5804) "\1c")
 (data $66.1 (i32.const 5816) "\02\00\00\00\0c\00\00\00%\00D\00F\00%\008\000")
 (data $67 (i32.const 5836) "\1c")
 (data $67.1 (i32.const 5848) "\02\00\00\00\02\00\00\00\c0\07")
 (data $68 (i32.const 5868) "\1c")
 (data $68.1 (i32.const 5880) "\02\00\00\00\0c\00\00\00%\00C\002\00%\00B\00F")
 (data $69 (i32.const 5900) "\1c")
 (data $69.1 (i32.const 5912) "\02\00\00\00\02\00\00\00\bf")
 (data $70 (i32.const 5932) ",")
 (data $70.1 (i32.const 5944) "\02\00\00\00\0e\00\00\00\f7\00\b8\00W\00\ef\00\0f\00\f4\00V")
 (data $71 (i32.const 5980) "\1c")
 (data $71.1 (i32.const 5992) "\02\00\00\00\06\00\00\00\f4\00\b8\00\ef")
 (data $72 (i32.const 6016) "\04\00\00\00 \00\00\00 \00\00\00 ")
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
  i32.const 6036
  i32.lt_s
  if
   i32.const 38832
   i32.const 38880
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
   block $__inlined_func$~lib/util/string/compareImpl$88
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
      br_if $__inlined_func$~lib/util/string/compareImpl$88
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
 (func $~lib/uri/encodeURIComponent (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 6036
  i32.lt_s
  if
   i32.const 38832
   i32.const 38880
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  i32.const 2744
  call $~lib/util/uri/encode
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/uri/decodeURI (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 6036
  i32.lt_s
  if
   i32.const 38832
   i32.const 38880
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  i32.const 0
  call $~lib/util/uri/decode
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/uri/decodeURIComponent (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 6036
  i32.lt_s
  if
   i32.const 38832
   i32.const 38880
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  i32.const 1
  call $~lib/util/uri/decode
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/uri/encodeURI (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 6036
  i32.lt_s
  if
   i32.const 38832
   i32.const 38880
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  i32.const 5068
  call $~lib/util/uri/encode
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
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
     i32.const 2928
     i32.const 148
     i32.const 30
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    global.set $~lib/rt/itcms/iter
   end
   block $__inlined_func$~lib/rt/itcms/Object#unlink$132
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
     i32.const 38804
     i32.lt_u
     i32.and
     i32.eqz
     if
      i32.const 0
      i32.const 2928
      i32.const 128
      i32.const 18
      call $~lib/builtins/abort
      unreachable
     end
     br $__inlined_func$~lib/rt/itcms/Object#unlink$132
    end
    local.get $1
    i32.load offset=8
    local.tee $2
    i32.eqz
    if
     i32.const 0
     i32.const 2928
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
    i32.const 6016
    i32.load
    i32.gt_u
    if
     i32.const 3056
     i32.const 3120
     i32.const 21
     i32.const 28
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 2
    i32.shl
    i32.const 6020
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
      i32.const 38804
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
     i32.const 2928
     i32.const 229
     i32.const 20
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 38804
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
     i32.const 38804
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
       i32.const 3200
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
 (func $~lib/rt/itcms/__renew (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  local.get $0
  i32.const 20
  i32.sub
  local.tee $3
  i32.load
  i32.const -4
  i32.and
  i32.const 16
  i32.sub
  i32.le_u
  if
   local.get $3
   local.get $1
   i32.store offset=16
   local.get $0
   return
  end
  local.get $1
  local.get $3
  i32.load offset=12
  call $~lib/rt/itcms/__new
  local.tee $2
  local.get $0
  local.get $1
  local.get $3
  i32.load offset=16
  local.tee $0
  local.get $0
  local.get $1
  i32.gt_u
  select
  memory.copy
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
   i32.const 3200
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
   i32.const 3200
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
   i32.const 3200
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
   i32.const 3200
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
   i32.const 3200
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
    i32.const 3200
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
   i32.const 3200
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
   i32.const 3200
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
   i32.const 3200
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
   i32.const 2864
   i32.const 2928
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
   i32.const 2864
   i32.const 3200
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
    i32.const 3200
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
   i32.const 3200
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
   i32.const 3200
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
 (func $~lib/rt/__visit_members (param $0 i32)
  block $invalid
   block $~lib/arraybuffer/ArrayBufferView
    block $~lib/string/String
     block $~lib/arraybuffer/ArrayBuffer
      block $~lib/object/Object
       local.get $0
       i32.const 8
       i32.sub
       i32.load
       br_table $~lib/object/Object $~lib/arraybuffer/ArrayBuffer $~lib/string/String $~lib/arraybuffer/ArrayBufferView $invalid
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
  unreachable
 )
 (func $~lib/util/uri/encode (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  local.get $1
  i32.eqz
  if
   local.get $0
   return
  end
  local.get $1
  i32.const 1
  i32.shl
  local.tee $5
  i32.const 2
  call $~lib/rt/itcms/__new
  local.set $3
  loop $while-continue|0
   local.get $1
   local.get $4
   i32.gt_u
   if
    block $while-break|0
     local.get $4
     local.set $6
     loop $do-loop|1
      block $do-break|1
       local.get $0
       local.get $4
       i32.const 1
       i32.shl
       i32.add
       i32.load16_u
       local.tee $7
       i32.const 33
       i32.sub
       local.tee $8
       i32.const 94
       i32.ge_u
       br_if $do-break|1
       local.get $2
       local.get $8
       i32.add
       i32.load8_u
       br_if $do-break|1
       local.get $4
       i32.const 1
       i32.add
       local.tee $4
       local.get $1
       i32.lt_u
       br_if $do-loop|1
      end
     end
     local.get $4
     local.get $6
     i32.gt_u
     if
      local.get $4
      local.get $6
      i32.sub
      i32.const 1
      i32.shl
      local.tee $10
      local.get $9
      i32.add
      local.tee $8
      local.get $5
      i32.gt_u
      if
       local.get $3
       local.get $8
       local.tee $5
       call $~lib/rt/itcms/__renew
       local.set $3
      end
      local.get $3
      local.get $9
      i32.add
      local.get $0
      local.get $6
      i32.const 1
      i32.shl
      i32.add
      local.get $10
      memory.copy
      local.get $9
      local.get $10
      i32.add
      local.set $9
      local.get $1
      local.get $4
      i32.le_u
      br_if $while-break|0
     end
     local.get $7
     i32.const 55296
     i32.ge_u
     if
      local.get $7
      i32.const 57343
      i32.le_u
      local.get $7
      i32.const 56320
      i32.ge_u
      i32.and
      if
       i32.const 3264
       i32.const 3312
       i32.const 81
       i32.const 9
       call $~lib/builtins/abort
       unreachable
      end
      local.get $7
      i32.const 56319
      i32.le_u
      if
       local.get $1
       local.get $4
       i32.le_u
       if
        i32.const 3264
        i32.const 3312
        i32.const 85
        i32.const 11
        call $~lib/builtins/abort
        unreachable
       end
       local.get $0
       local.get $4
       i32.const 1
       i32.add
       local.tee $4
       i32.const 1
       i32.shl
       i32.add
       i32.load16_u
       local.tee $6
       i32.const 56320
       i32.lt_u
       local.get $6
       i32.const 57343
       i32.gt_u
       i32.or
       if
        i32.const 3264
        i32.const 3312
        i32.const 89
        i32.const 11
        call $~lib/builtins/abort
        unreachable
       end
       local.get $6
       i32.const 1023
       i32.and
       local.get $7
       i32.const 1023
       i32.and
       i32.const 10
       i32.shl
       i32.or
       i32.const 65536
       i32.add
       local.set $7
      end
     end
     local.get $9
     i32.const 6
     i32.const 24
     local.get $7
     i32.const 128
     i32.lt_u
     select
     i32.add
     local.tee $6
     local.get $5
     i32.gt_u
     if
      local.get $3
      local.get $6
      i32.const 1
      i32.shl
      local.get $6
      local.get $1
      i32.const 1
      i32.gt_u
      select
      local.tee $5
      call $~lib/rt/itcms/__renew
      local.set $3
     end
     local.get $7
     i32.const 128
     i32.lt_u
     if
      local.get $3
      local.get $9
      i32.add
      local.tee $6
      i32.const 37
      i32.store16
      local.get $6
      local.get $7
      i32.const 4
      i32.shr_u
      i32.const 15
      i32.and
      i32.const 3356
      i32.add
      i32.load8_u
      local.get $7
      i32.const 15
      i32.and
      i32.const 3356
      i32.add
      i32.load8_u
      i32.const 16
      i32.shl
      i32.or
      i32.store offset=2
     else
      local.get $7
      i32.const 2048
      i32.lt_u
      if
       local.get $3
       local.get $9
       i32.add
       local.tee $6
       i32.const 37
       i32.store16
       local.get $6
       local.get $7
       i32.const 6
       i32.shr_u
       i32.const 192
       i32.or
       local.tee $6
       i32.const 4
       i32.shr_u
       i32.const 15
       i32.and
       i32.const 3356
       i32.add
       i32.load8_u
       local.get $6
       i32.const 15
       i32.and
       i32.const 3356
       i32.add
       i32.load8_u
       i32.const 16
       i32.shl
       i32.or
       i32.store offset=2
      else
       local.get $7
       i32.const 65536
       i32.lt_u
       if
        local.get $3
        local.get $9
        i32.add
        local.tee $6
        i32.const 37
        i32.store16
        local.get $6
        local.get $7
        i32.const 12
        i32.shr_u
        i32.const 224
        i32.or
        local.tee $6
        i32.const 4
        i32.shr_u
        i32.const 15
        i32.and
        i32.const 3356
        i32.add
        i32.load8_u
        local.get $6
        i32.const 15
        i32.and
        i32.const 3356
        i32.add
        i32.load8_u
        i32.const 16
        i32.shl
        i32.or
        i32.store offset=2
       else
        local.get $3
        local.get $9
        i32.add
        local.tee $6
        i32.const 37
        i32.store16
        local.get $6
        local.get $7
        i32.const 18
        i32.shr_u
        i32.const 240
        i32.or
        local.tee $6
        i32.const 4
        i32.shr_u
        i32.const 3356
        i32.add
        i32.load8_u
        local.get $6
        i32.const 15
        i32.and
        i32.const 3356
        i32.add
        i32.load8_u
        i32.const 16
        i32.shl
        i32.or
        i32.store offset=2
        local.get $3
        local.get $9
        i32.const 6
        i32.add
        local.tee $9
        i32.add
        local.tee $6
        i32.const 37
        i32.store16
        local.get $6
        local.get $7
        i32.const 12
        i32.shr_u
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        local.tee $6
        i32.const 4
        i32.shr_u
        i32.const 3356
        i32.add
        i32.load8_u
        local.get $6
        i32.const 15
        i32.and
        i32.const 3356
        i32.add
        i32.load8_u
        i32.const 16
        i32.shl
        i32.or
        i32.store offset=2
       end
       local.get $3
       local.get $9
       i32.const 6
       i32.add
       local.tee $9
       i32.add
       local.tee $6
       i32.const 37
       i32.store16
       local.get $6
       local.get $7
       i32.const 6
       i32.shr_u
       i32.const 63
       i32.and
       i32.const 128
       i32.or
       local.tee $6
       i32.const 4
       i32.shr_u
       i32.const 3356
       i32.add
       i32.load8_u
       local.get $6
       i32.const 15
       i32.and
       i32.const 3356
       i32.add
       i32.load8_u
       i32.const 16
       i32.shl
       i32.or
       i32.store offset=2
      end
      local.get $3
      local.get $9
      i32.const 6
      i32.add
      local.tee $9
      i32.add
      local.tee $6
      i32.const 37
      i32.store16
      local.get $6
      local.get $7
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      local.tee $6
      i32.const 4
      i32.shr_u
      i32.const 3356
      i32.add
      i32.load8_u
      local.get $6
      i32.const 15
      i32.and
      i32.const 3356
      i32.add
      i32.load8_u
      i32.const 16
      i32.shl
      i32.or
      i32.store offset=2
     end
     local.get $9
     i32.const 6
     i32.add
     local.set $9
     local.get $4
     i32.const 1
     i32.add
     local.set $4
     br $while-continue|0
    end
   end
  end
  local.get $5
  local.get $9
  i32.gt_u
  if (result i32)
   local.get $3
   local.get $9
   call $~lib/rt/itcms/__renew
  else
   local.get $3
  end
 )
 (func $~lib/util/uri/decode (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  local.get $1
  i32.eqz
  if
   local.get $0
   return
  end
  local.get $1
  i32.const 1
  i32.shl
  i32.const 2
  call $~lib/rt/itcms/__new
  local.set $9
  loop $while-continue|0
   local.get $1
   local.get $3
   i32.gt_u
   if
    block $while-break|0
     local.get $3
     local.set $4
     loop $while-continue|1
      local.get $1
      local.get $3
      i32.gt_u
      if (result i32)
       local.get $0
       local.get $3
       i32.const 1
       i32.shl
       i32.add
       i32.load16_u
       local.tee $5
       i32.const 37
       i32.ne
      else
       i32.const 0
      end
      if
       local.get $3
       i32.const 1
       i32.add
       local.set $3
       br $while-continue|1
      end
     end
     local.get $3
     local.get $4
     i32.gt_u
     if
      local.get $6
      local.get $9
      i32.add
      local.get $0
      local.get $4
      i32.const 1
      i32.shl
      i32.add
      local.get $3
      local.get $4
      i32.sub
      i32.const 1
      i32.shl
      local.tee $4
      memory.copy
      local.get $4
      local.get $6
      i32.add
      local.set $6
      local.get $1
      local.get $3
      i32.le_u
      br_if $while-break|0
     end
     local.get $5
     i32.const 37
     i32.ne
     local.get $3
     i32.const 2
     i32.add
     local.get $1
     i32.ge_u
     i32.or
     if (result i32)
      i32.const 1
     else
      local.get $0
      local.get $3
      i32.const 1
      i32.add
      i32.const 1
      i32.shl
      i32.add
      local.tee $4
      i32.load16_u offset=2
      local.set $5
      local.get $4
      i32.load16_u
      local.tee $4
      i32.const 48
      i32.sub
      i32.const 10
      i32.lt_u
      if (result i32)
       i32.const 1
      else
       local.get $4
       i32.const 32
       i32.or
       i32.const 97
       i32.sub
       i32.const 6
       i32.lt_u
      end
      if (result i32)
       local.get $5
       i32.const 48
       i32.sub
       i32.const 10
       i32.lt_u
       if (result i32)
        i32.const 1
       else
        local.get $5
        i32.const 32
        i32.or
        i32.const 97
        i32.sub
        i32.const 6
        i32.lt_u
       end
      else
       i32.const 0
      end
      if (result i32)
       local.get $5
       i32.const 32
       i32.or
       i32.const 39
       i32.rem_u
       i32.const 9
       i32.sub
       local.get $4
       i32.const 32
       i32.or
       i32.const 39
       i32.rem_u
       i32.const 9
       i32.sub
       i32.const 4
       i32.shl
       i32.or
      else
       i32.const -1
      end
      local.tee $5
      i32.const -1
      i32.eq
     end
     if
      i32.const 3264
      i32.const 3312
      i32.const 164
      i32.const 7
      call $~lib/builtins/abort
      unreachable
     end
     local.get $3
     i32.const 3
     i32.add
     local.set $3
     local.get $5
     i32.const 128
     i32.lt_u
     if
      local.get $2
      if (result i32)
       i32.const 0
      else
       local.get $5
       i32.const 35
       i32.sub
       i32.const 30
       i32.lt_u
       if (result i32)
        local.get $5
        i32.const 5241
        i32.add
        i32.load8_u
       else
        i32.const 0
       end
      end
      if
       i32.const 37
       local.set $5
       local.get $3
       i32.const 2
       i32.sub
       local.set $3
      end
     else
      i32.const 1
      local.get $5
      i32.const 192
      i32.sub
      i32.const 56
      i32.lt_u
      if (result i32)
       local.get $5
       i32.const 24
       i32.shl
       i32.const -1
       i32.xor
       i32.clz
      else
       i32.const 0
      end
      local.tee $4
      i32.const 17
      i32.mul
      i32.const 2
      i32.shr_u
      i32.const 1
      i32.sub
      i32.shl
      local.set $8
      local.get $5
      i32.const 128
      local.get $4
      i32.shr_u
      i32.const 1
      i32.sub
      i32.const 0
      local.get $4
      select
      i32.and
      local.set $5
      loop $while-continue|2
       local.get $4
       i32.const 1
       i32.sub
       local.tee $4
       if
        block $while-break|2
         local.get $3
         i32.const 2
         i32.add
         local.get $1
         i32.ge_u
         if (result i32)
          i32.const 1
         else
          local.get $0
          local.get $3
          i32.const 1
          i32.shl
          i32.add
          i32.load16_u
          i32.const 37
          i32.ne
         end
         if (result i32)
          i32.const 1
         else
          local.get $0
          local.get $3
          i32.const 1
          i32.add
          i32.const 1
          i32.shl
          i32.add
          local.tee $10
          i32.load16_u offset=2
          local.set $7
          local.get $10
          i32.load16_u
          local.tee $10
          i32.const 48
          i32.sub
          i32.const 10
          i32.lt_u
          if (result i32)
           i32.const 1
          else
           local.get $10
           i32.const 32
           i32.or
           i32.const 97
           i32.sub
           i32.const 6
           i32.lt_u
          end
          if (result i32)
           local.get $7
           i32.const 48
           i32.sub
           i32.const 10
           i32.lt_u
           if (result i32)
            i32.const 1
           else
            local.get $7
            i32.const 32
            i32.or
            i32.const 97
            i32.sub
            i32.const 6
            i32.lt_u
           end
          else
           i32.const 0
          end
          if (result i32)
           local.get $7
           i32.const 32
           i32.or
           i32.const 39
           i32.rem_u
           i32.const 9
           i32.sub
           local.get $10
           i32.const 32
           i32.or
           i32.const 39
           i32.rem_u
           i32.const 9
           i32.sub
           i32.const 4
           i32.shl
           i32.or
          else
           i32.const -1
          end
          local.tee $7
          i32.const -1
          i32.eq
         end
         if
          i32.const 3264
          i32.const 3312
          i32.const 187
          i32.const 11
          call $~lib/builtins/abort
          unreachable
         end
         local.get $3
         i32.const 3
         i32.add
         local.set $3
         local.get $7
         i32.const 192
         i32.and
         i32.const 128
         i32.ne
         if
          i32.const 0
          local.set $5
          br $while-break|2
         end
         local.get $7
         i32.const 63
         i32.and
         local.get $5
         i32.const 6
         i32.shl
         i32.or
         local.set $5
         br $while-continue|2
        end
       end
      end
      local.get $8
      i32.const -1
      i32.eq
      local.get $5
      local.get $8
      i32.lt_u
      i32.or
      local.get $5
      i32.const 1114111
      i32.gt_u
      i32.or
      if (result i32)
       i32.const 1
      else
       local.get $5
       i32.const 57344
       i32.lt_u
       local.get $5
       i32.const 55296
       i32.ge_u
       i32.and
      end
      if
       i32.const 3264
       i32.const 3312
       i32.const 199
       i32.const 9
       call $~lib/builtins/abort
       unreachable
      end
      local.get $5
      i32.const 65536
      i32.ge_u
      if
       local.get $6
       local.get $9
       i32.add
       local.get $5
       i32.const 65536
       i32.sub
       local.tee $5
       i32.const 10
       i32.shr_u
       i32.const 55296
       i32.or
       local.get $5
       i32.const 1023
       i32.and
       i32.const 56320
       i32.or
       i32.const 16
       i32.shl
       i32.or
       i32.store
       local.get $6
       i32.const 4
       i32.add
       local.set $6
       br $while-continue|0
      end
     end
     local.get $6
     local.get $9
     i32.add
     local.get $5
     i32.store16
     local.get $6
     i32.const 2
     i32.add
     local.set $6
     br $while-continue|0
    end
   end
  end
  local.get $1
  i32.const 1
  i32.shl
  local.get $6
  i32.lt_u
  if
   i32.const 0
   i32.const 3312
   i32.const 216
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 1
  i32.shl
  local.get $6
  i32.gt_u
  if (result i32)
   local.get $9
   local.get $6
   call $~lib/rt/itcms/__renew
  else
   local.get $9
  end
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
   i32.const 3200
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
     i32.const 3200
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
  i32.const 38816
  i32.const 0
  i32.store
  i32.const 40384
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
    i32.const 38816
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
      i32.const 38816
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
  i32.const 38816
  i32.const 40388
  memory.size
  i64.extend_i32_s
  i64.const 16
  i64.shl
  call $~lib/rt/tlsf/addMemory
  i32.const 38816
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
   i32.const 3200
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
    i32.const 3200
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
    i32.const 3200
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
  i32.const 3056
  call $~lib/rt/itcms/__visit
  i32.const 2864
  call $~lib/rt/itcms/__visit
  i32.const 3264
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
     i32.const 2928
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
 (func $~start
  call $start:std/uri
 )
 (func $start:std/uri
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 6036
  i32.lt_s
  if
   i32.const 38832
   i32.const 38880
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  memory.size
  i32.const 16
  i32.shl
  i32.const 38804
  i32.sub
  i32.const 1
  i32.shr_u
  global.set $~lib/rt/itcms/threshold
  i32.const 2980
  i32.const 2976
  i32.store
  i32.const 2984
  i32.const 2976
  i32.store
  i32.const 2976
  global.set $~lib/rt/itcms/pinSpace
  i32.const 3012
  i32.const 3008
  i32.store
  i32.const 3016
  i32.const 3008
  i32.store
  i32.const 3008
  global.set $~lib/rt/itcms/toSpace
  i32.const 3156
  i32.const 3152
  i32.store
  i32.const 3160
  i32.const 3152
  i32.store
  i32.const 3152
  global.set $~lib/rt/itcms/fromSpace
  i32.const 1056
  call $~lib/uri/encodeURIComponent
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 1056
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 3392
   i32.const 4
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 3440
  call $~lib/uri/encodeURIComponent
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 3440
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 3392
   i32.const 5
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 3472
  call $~lib/uri/encodeURIComponent
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 3472
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 3392
   i32.const 6
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 3504
  call $~lib/uri/encodeURIComponent
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 3504
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 3392
   i32.const 7
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 3536
  call $~lib/uri/encodeURIComponent
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 3536
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 3392
   i32.const 8
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 3632
  call $~lib/uri/encodeURIComponent
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 3664
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 3392
   i32.const 12
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 3696
  call $~lib/uri/encodeURIComponent
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 3728
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 3392
   i32.const 13
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 3760
  call $~lib/uri/encodeURIComponent
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 3792
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 3392
   i32.const 14
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 3840
  call $~lib/uri/encodeURIComponent
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 3872
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 3392
   i32.const 15
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 3920
  call $~lib/uri/encodeURIComponent
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 3952
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 3392
   i32.const 16
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 3984
  call $~lib/uri/encodeURIComponent
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 4016
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 3392
   i32.const 17
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 4064
  call $~lib/uri/encodeURIComponent
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 4096
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 3392
   i32.const 18
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 4192
  call $~lib/uri/encodeURIComponent
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 4224
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 3392
   i32.const 19
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 4336
  call $~lib/uri/encodeURIComponent
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 4368
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 3392
   i32.const 20
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 4416
  call $~lib/uri/encodeURIComponent
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 4448
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 3392
   i32.const 21
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 4496
  call $~lib/uri/encodeURIComponent
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
   i32.const 3392
   i32.const 22
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 4608
  call $~lib/uri/encodeURIComponent
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 4640
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 3392
   i32.const 24
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 4704
  call $~lib/uri/encodeURIComponent
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 4752
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 3392
   i32.const 26
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 4832
  call $~lib/uri/encodeURIComponent
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 4944
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 3392
   i32.const 28
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1056
  call $~lib/uri/encodeURI
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 1056
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 3392
   i32.const 39
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 3440
  call $~lib/uri/encodeURI
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 3440
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 3392
   i32.const 40
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5184
  call $~lib/uri/encodeURI
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 5184
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 3392
   i32.const 41
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 3536
  call $~lib/uri/encodeURI
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 3536
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 3392
   i32.const 42
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5232
  call $~lib/uri/encodeURI
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 5264
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 3392
   i32.const 46
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 4336
  call $~lib/uri/encodeURI
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 4368
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 3392
   i32.const 47
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 4416
  call $~lib/uri/encodeURI
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 4448
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 3392
   i32.const 48
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 4608
  call $~lib/uri/encodeURI
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 4640
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 3392
   i32.const 50
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 4832
  call $~lib/uri/encodeURI
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 4832
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 3392
   i32.const 51
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1056
  call $~lib/uri/decodeURIComponent
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 1056
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 3392
   i32.const 62
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 3440
  call $~lib/uri/decodeURIComponent
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 3440
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 3392
   i32.const 63
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5328
  call $~lib/uri/decodeURIComponent
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 5360
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 3392
   i32.const 64
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5392
  call $~lib/uri/decodeURIComponent
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 5424
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 3392
   i32.const 65
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5456
  call $~lib/uri/decodeURIComponent
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 5456
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 3392
   i32.const 66
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 4416
  call $~lib/uri/decodeURIComponent
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 4416
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 3392
   i32.const 67
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5488
  call $~lib/uri/decodeURIComponent
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 5568
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 3392
   i32.const 68
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5616
  call $~lib/uri/decodeURIComponent
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 5568
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 3392
   i32.const 69
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5696
  call $~lib/uri/decodeURIComponent
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 4832
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 3392
   i32.const 70
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 4096
  call $~lib/uri/decodeURIComponent
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 4064
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 3392
   i32.const 75
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1056
  call $~lib/uri/decodeURI
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 1056
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 3392
   i32.const 85
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 3440
  call $~lib/uri/decodeURI
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 3440
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 3392
   i32.const 86
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5328
  call $~lib/uri/decodeURI
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 5328
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 3392
   i32.const 87
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5824
  call $~lib/uri/decodeURI
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 5856
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 3392
   i32.const 88
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5888
  call $~lib/uri/decodeURI
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 5920
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 3392
   i32.const 89
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5456
  call $~lib/uri/decodeURI
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 5456
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 3392
   i32.const 90
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 4416
  call $~lib/uri/decodeURI
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 4416
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 3392
   i32.const 91
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5488
  call $~lib/uri/decodeURI
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 5488
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 3392
   i32.const 92
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 4096
  call $~lib/uri/decodeURI
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 4064
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 3392
   i32.const 93
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5952
  call $~lib/uri/decodeURI
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 5952
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 3392
   i32.const 94
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 6000
  call $~lib/uri/decodeURI
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 6000
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 3392
   i32.const 95
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5696
  call $~lib/uri/decodeURI
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 5696
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 3392
   i32.const 96
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 38804
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/rt/itcms/state
  i32.const 0
  i32.gt_s
  if
   loop $while-continue|0
    global.get $~lib/rt/itcms/state
    if
     call $~lib/rt/itcms/step
     drop
     br $while-continue|0
    end
   end
  end
  call $~lib/rt/itcms/step
  drop
  loop $while-continue|1
   global.get $~lib/rt/itcms/state
   if
    call $~lib/rt/itcms/step
    drop
    br $while-continue|1
   end
  end
  global.get $~lib/rt/itcms/total
  i64.extend_i32_u
  i64.const 200
  i64.mul
  i64.const 100
  i64.div_u
  i32.wrap_i64
  i32.const 1024
  i32.add
  global.set $~lib/rt/itcms/threshold
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
)
