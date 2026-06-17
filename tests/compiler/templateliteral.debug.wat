(module
 (type $0 (func (param i32) (result i32)))
 (type $1 (func (param i32 i32)))
 (type $2 (func))
 (type $3 (func (param i32 i32) (result i32)))
 (type $4 (func (param i32)))
 (type $5 (func (param i32 i32 i32)))
 (type $6 (func (param i32 i32 i32) (result i32)))
 (type $7 (func (param i32 i32 i32 i32 i32) (result i32)))
 (type $8 (func (param i32 i32 i32 i32)))
 (type $9 (func (param i32 i32 i64) (result i32)))
 (type $10 (func (result i32)))
 (type $11 (func (param i32 i64 i32)))
 (type $12 (func (param i64 i32) (result i32)))
 (type $13 (func (param i32 i64 i32 i32)))
 (type $14 (func (param i64) (result i64)))
 (type $15 (func (param i64)))
 (type $16 (func (param i32 f64) (result i32)))
 (type $17 (func (param f64 i32) (result i32)))
 (type $18 (func (param f64) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (global $~lib/util/dtoa/gPow10Hi (mut i64) (i64.const 0))
 (global $~lib/util/dtoa/gPow10Lo (mut i64) (i64.const 0))
 (global $~lib/util/dtoa/POW10_MINOR i32 (i32.const 80))
 (global $~lib/util/dtoa/POW10_MAJOR i32 (i32.const 304))
 (global $~lib/util/dtoa/POW10_FIXUPS i32 (i32.const 672))
 (global $~lib/util/dtoa/DIV10K_EXP i32 (i32.const 40))
 (global $~lib/util/dtoa/DIV10K_SIG i64 (i64.const 109951163))
 (global $~lib/util/dtoa/NEG10K i64 (i64.const 4294957296))
 (global $~lib/util/dtoa/DIV100_EXP i32 (i32.const 19))
 (global $~lib/util/dtoa/DIV100_SIG i64 (i64.const 5243))
 (global $~lib/util/dtoa/NEG100 i64 (i64.const 65436))
 (global $~lib/util/dtoa/DIV10_EXP i32 (i32.const 10))
 (global $~lib/util/dtoa/DIV10_SIG i64 (i64.const 103))
 (global $~lib/util/dtoa/NEG10 i64 (i64.const 246))
 (global $~lib/util/dtoa/ZEROS i64 (i64.const 3472328296227680304))
 (global $~lib/util/dtoa/gBcd (mut i64) (i64.const 0))
 (global $~lib/util/dtoa/gBcdLen (mut i32) (i32.const 0))
 (global $~lib/util/dtoa/gDigHi (mut i64) (i64.const 0))
 (global $~lib/util/dtoa/gDigLo (mut i64) (i64.const 0))
 (global $~lib/util/dtoa/gDigNum (mut i32) (i32.const 0))
 (global $~lib/util/dtoa/gSig (mut i64) (i64.const 0))
 (global $~lib/util/dtoa/gExp (mut i32) (i32.const 0))
 (global $~lib/util/dtoa/gLastDigit (mut i32) (i32.const 0))
 (global $~lib/util/dtoa/gHasLastDigit (mut i32) (i32.const 0))
 (global $~lib/util/dtoa/DOUBLE_EXP_OFFSET i32 (i32.const 1075))
 (global $~lib/util/dtoa/EXTRA_SHIFT i32 (i32.const 6))
 (global $~lib/util/dtoa/BIASED_HALF i64 (i64.const -9223372036854775802))
 (global $~lib/util/dtoa/DOUBLE_MAX_DIGITS10 i32 (i32.const 17))
 (global $~lib/util/dtoa/MIN_FIXED_DEC_EXP i32 (i32.const -6))
 (global $~lib/util/dtoa/MAX_FIXED_DEC_EXP i32 (i32.const 20))
 (global $~lib/util/dtoa/SCRATCH i32 (i32.const 752))
 (global $~lib/util/dtoa/POW10_FLOAT_HI i32 (i32.const 880))
 (global $~lib/util/dtoa/H37 i32 (i32.const 1496))
 (global $~lib/util/dtoa/FLOAT_EXP_OFFSET i32 (i32.const 150))
 (global $~lib/util/dtoa/FLOAT_BIT i32 (i32.const 36))
 (global $~lib/util/dtoa/FLOAT_ONE_BIAS i64 (i64.const 17179869177))
 (global $~lib/util/dtoa/FLOAT_MAX_DIGITS10 i32 (i32.const 9))
 (global $~lib/shared/runtime/Runtime.Stub i32 (i32.const 0))
 (global $~lib/shared/runtime/Runtime.Minimal i32 (i32.const 1))
 (global $~lib/shared/runtime/Runtime.Incremental i32 (i32.const 2))
 (global $~lib/native/ASC_SHRINK_LEVEL i32 (i32.const 0))
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
 (global $~lib/native/ASC_LOW_MEMORY_LIMIT i32 (i32.const 0))
 (global $~lib/native/ASC_FEATURE_SIMD i32 (i32.const 0))
 (global $~lib/rt/__rtti_base i32 (i32.const 5712))
 (global $~lib/memory/__data_end i32 (i32.const 5744))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 38512))
 (global $~lib/memory/__heap_base i32 (i32.const 38512))
 (global $~started (mut i32) (i32.const 0))
 (memory $0 1)
 (data $0 (i32.const 12) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\02\00\00\00a\00\00\00\00\00\00\00\00\00\00\00")
 (data $1 (i32.const 44) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\02\00\00\00b\00\00\00\00\00\00\00\00\00\00\00")
 (data $2 (i32.const 80) "\00\00\00\00\00\00\00\80\00\00\00\00\00\00\00\a0\00\00\00\00\00\00\00\c8\00\00\00\00\00\00\00\fa\00\00\00\00\00\00@\9c\00\00\00\00\00\00P\c3\00\00\00\00\00\00$\f4\00\00\00\00\00\80\96\98\00\00\00\00\00 \bc\be\00\00\00\00\00(k\ee\00\00\00\00\00\f9\02\95\00\00\00\00@\b7C\ba\00\00\00\00\10\a5\d4\e8\00\00\00\00*\e7\84\91\00\00\00\80\f4 \e6\b5\00\00\00\a01\a9_\e3\00\00\00\04\bf\c9\1b\8e\00\00\00\c5.\bc\a2\b1\00\00@v:k\0b\de\00\00\e8\89\04#\c7\8a\00\00b\ac\c5\ebx\ad\00\80z\17\b7&\d7\d8\00\90\acn2x\86\87\00\b4W\n?\16h\a9\00\a1\ed\cc\ce\1b\c2\d3\a0\84\14@aQY\84\c8\a5\19\90\b9\a5o\a5:\0f \f4\'\8f\cb\ce")
 (data $3 (i32.const 304) "o\1b\8e(\10T\8e\af\daM\e4^\ae\f0\ec\07J\fb\9f\f4\98\'D\b1\9dwA\df\cf\11\cd\99\07\ef\99\85\0b?\fe\b2\15\aa\b4\dc\e6\a7\1f\86c\beZ\06\0b\a5\bc\b4\aaSkuz\07\ed\0f\08\bf,)Ud\7f\b6C\d5\b1\17L\c8;\1a\fb;\efi\c2\87F\b8B\a7\ee@OQ]=\eb\dd\e4PF\1a\12\ba\13\e4labM\f3\92\ea\af(\b6\ef&\e2\bb\8c6U\n\f7\89\04\89\0f`\cb\05\e9\b8\b6\bd!\c9\c1\bb\87\e9\00T\96_\9a\84x\db\8f\bf4\d0\bdr\04R\98\de\'\8a\92\95\00\9am\c1\94\82\17\0f<\05\b7u\00\00\00\00\00\00P\c3\00\00\00\00\00\00\00\00\05\e3L6\12\197\c5\00\00\00\00\00\00(l\d6\aa\80\9d\ef\f0\"\c7\f6~\b9\b7\d2:MBL\c8q\d5m\93\13\c9\ea8\1e\cd\19:\bc\03\1cU\ab\01\80\0c\t\cb\c6,\07\d3\bf\f5\ad\\\a1\90\08\137h\03\cd\10\8cz\c3\87\a8\db6.\ef\07\12\c2\b2\02\cf\bc\f4\03^\e4g\f9\94\c7\85\d7in\f8\06\d1R\ba\be\01\d763\e1|\a0\1c4\a8E\10\d3Q\a0\t\12\11H\de\1e1Vx\85\fa\a6\1e\d5f\a5>\7f\"t*U3\f1\ca\ba\0f)2\d7\96@\adGy\17|\a9t\088\c7\b1\d8J\d9\bc\"x\ae\81R7\18")
 (data $4 (i32.const 672) "?6N\n@\18\00\00\00d\00\00@\00 $\00\00\00\00\00\00\00\0c\80\13\c8\82\1f\e0L^\0f\f60\d7\1b\00\00\00\00\00\00\00\fc\ff\f7\cd\d8\01\82n\d1?\cd@\01%d\db\r\r\00\00\00$\04\14@8qS\b4\1dx\11\00\00\00\00")
 (data $5 (i32.const 752) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $6 (i32.const 880) "p\\\ea{\ce2~\8f\1a\c7C\c6\b0\b7\96\e5\ae\05\03\05\'\c6\ab\b7\bf7\cf\d0\b8\d1\ef\92\fe%\e5\1a\8eO\19\eb2\ebP\e2\a4?\14\bc\f5\88\r\b5P\99v\96!\dbH\bb\1a\c2\bd\f0\b4\15\07\c9{\ce\97\c0]\11l:\96\0b\13\9a\c7\1b\e0\c3V\df\84\f6\06\e3L6\12\197\c5\9e\b5p+\a8\ad\c5\9d\97\"\81E@|o\fc\dfNg\04\cd\c9\f2\c9\e6\0b\b96\d7\07\8f\a1\85\t\94\f8x9?\81:\0f \f4\'\8f\cb\ce\c8\a5\19\90\b9\a5o\a5\a0\84\14@aQY\84\00\a1\ed\cc\ce\1b\c2\d3\00\b4W\n?\16h\a9\00\90\acn2x\86\87\00\80z\17\b7&\d7\d8\00\00b\ac\c5\ebx\ad\00\00\e8\89\04#\c7\8a\00\00@v:k\0b\de\00\00\00\c5.\bc\a2\b1\00\00\00\04\bf\c9\1b\8e\00\00\00\a01\a9_\e3\00\00\00\80\f4 \e6\b5\00\00\00\00*\e7\84\91\00\00\00\00\10\a5\d4\e8\00\00\00\00@\b7C\ba\00\00\00\00\00\f9\02\95\00\00\00\00\00(k\ee\00\00\00\00\00 \bc\be\00\00\00\00\00\80\96\98\00\00\00\00\00\00$\f4\00\00\00\00\00\00P\c3\00\00\00\00\00\00@\9c\00\00\00\00\00\00\00\fa\00\00\00\00\00\00\00\c8\00\00\00\00\00\00\00\a0\00\00\00\00\00\00\00\80\cd\cc\cc\cc\cc\cc\cc\cc\0b\d7\a3p=\n\d7\a3<\dfO\8d\97n\12\83,e\19\e2X\17\b7\d1$\84G\1bG\ac\c5\a7\b6il\af\05\bd7\86\bdBz\e5\d5\94\bf\d6\fd\cea\84\11w\cc\ab\98\a5\b46A_p\89\bf\d5\ed\bd\ce\fe\e6\db\ff\aa$\cb\0b\ff\eb\af\cc\88Po\t\cc\bc\8c\14\0e\b4KB\13.\e1\10\d8\\\t5\dc$\b4\da\ac\b0:\f7|\1d\90\\\e1M\c4\be\94\95\e6J\b4\a462\aaw\b8\08]\1d\92\8e\ee\92\93\a6a\95\b6}J\1e\ec\eb\1a\11\92d\08\e5\bc\ef{\datP\a0\1d\97\b2,\f7\ba\80\00\c9\f1(\8a\92\95\00\9am\c1S;uD\cd\14\be\9aR\c5\ee\d3\ae\87\96\f7\db\9dXv%\06\12\c6I~\e0\91\b7\d1t\9e\0e\ca\00\83\f2\b5\87\fd?;\9a5\f5\f7\d2\ca2\fc\14^\f7_B\a2\f5\fcCK,\b3\ce\81\bb\949E\ad\1e\b1\cf")
 (data $7 (i32.const 1496) "\"\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$\"#$!\"#")
 (data $8 (i32.const 1756) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00$\00\00\00t\00e\00m\00p\00l\00a\00t\00e\00l\00i\00t\00e\00r\00a\00l\00.\00t\00s\00\00\00\00\00\00\00\00\00")
 (data $9 (i32.const 1820) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $10 (i32.const 1852) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e\00\00\00\00\00")
 (data $11 (i32.const 1916) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00 \00\00\00~\00l\00i\00b\00/\00r\00t\00/\00i\00t\00c\00m\00s\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $12 (i32.const 1984) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $13 (i32.const 2016) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $14 (i32.const 2044) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e\00\00\00\00\00\00\00\00\00")
 (data $15 (i32.const 2108) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s\00\00\00\00\00\00\00\00\00")
 (data $16 (i32.const 2160) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $17 (i32.const 2188) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $18 (i32.const 2252) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\04\00\00\00a\00b\00\00\00\00\00\00\00\00\00")
 (data $19 (i32.const 2284) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\06\00\00\00(\00A\00=\00\00\00\00\00\00\00")
 (data $20 (i32.const 2316) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\08\00\00\00,\00 \00B\00=\00\00\00\00\00")
 (data $21 (i32.const 2348) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\02\00\00\00)\00\00\00\00\00\00\00\00\00\00\00")
 (data $22 (i32.const 2380) ",\00\00\00\03\00\00\00\00\00\00\00\04\00\00\00\14\00\00\00\00\t\00\00\00\00\00\00 \t\00\00\00\00\00\00@\t\00\00\00\00\00\00\00\00\00\00")
 (data $23 (i32.const 2428) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\14\00\00\00(\00A\00=\00a\00,\00 \00B\00=\00b\00)\00\00\00\00\00\00\00\00\00")
 (data $24 (i32.const 2476) "|\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00d\00\00\00t\00o\00S\00t\00r\00i\00n\00g\00(\00)\00 \00r\00a\00d\00i\00x\00 \00a\00r\00g\00u\00m\00e\00n\00t\00 \00m\00u\00s\00t\00 \00b\00e\00 \00b\00e\00t\00w\00e\00e\00n\00 \002\00 \00a\00n\00d\00 \003\006\00\00\00\00\00\00\00\00\00")
 (data $25 (i32.const 2604) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00&\00\00\00~\00l\00i\00b\00/\00u\00t\00i\00l\00/\00n\00u\00m\00b\00e\00r\00.\00t\00s\00\00\00\00\00\00\00")
 (data $26 (i32.const 2668) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\02\00\00\000\00\00\00\00\00\00\00\00\00\00\00")
 (data $27 (i32.const 2700) "0\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009\00")
 (data $28 (i32.const 3100) "\1c\04\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00\04\00\000\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\000\00a\000\00b\000\00c\000\00d\000\00e\000\00f\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\001\00a\001\00b\001\00c\001\00d\001\00e\001\00f\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\002\00a\002\00b\002\00c\002\00d\002\00e\002\00f\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\003\00a\003\00b\003\00c\003\00d\003\00e\003\00f\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\004\00a\004\00b\004\00c\004\00d\004\00e\004\00f\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\005\00a\005\00b\005\00c\005\00d\005\00e\005\00f\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\006\00a\006\00b\006\00c\006\00d\006\00e\006\00f\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\007\00a\007\00b\007\00c\007\00d\007\00e\007\00f\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\008\00a\008\00b\008\00c\008\00d\008\00e\008\00f\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009\009\00a\009\00b\009\00c\009\00d\009\00e\009\00f\00a\000\00a\001\00a\002\00a\003\00a\004\00a\005\00a\006\00a\007\00a\008\00a\009\00a\00a\00a\00b\00a\00c\00a\00d\00a\00e\00a\00f\00b\000\00b\001\00b\002\00b\003\00b\004\00b\005\00b\006\00b\007\00b\008\00b\009\00b\00a\00b\00b\00b\00c\00b\00d\00b\00e\00b\00f\00c\000\00c\001\00c\002\00c\003\00c\004\00c\005\00c\006\00c\007\00c\008\00c\009\00c\00a\00c\00b\00c\00c\00c\00d\00c\00e\00c\00f\00d\000\00d\001\00d\002\00d\003\00d\004\00d\005\00d\006\00d\007\00d\008\00d\009\00d\00a\00d\00b\00d\00c\00d\00d\00d\00e\00d\00f\00e\000\00e\001\00e\002\00e\003\00e\004\00e\005\00e\006\00e\007\00e\008\00e\009\00e\00a\00e\00b\00e\00c\00e\00d\00e\00e\00e\00f\00f\000\00f\001\00f\002\00f\003\00f\004\00f\005\00f\006\00f\007\00f\008\00f\009\00f\00a\00f\00b\00f\00c\00f\00d\00f\00e\00f\00f\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $29 (i32.const 4156) "\\\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00H\00\00\000\001\002\003\004\005\006\007\008\009\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z\00\00\00\00\00")
 (data $30 (i32.const 4252) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\02\00\00\001\00\00\00\00\00\00\00\00\00\00\00")
 (data $31 (i32.const 4284) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\04\00\00\001\002\00\00\00\00\00\00\00\00\00")
 (data $32 (i32.const 4316) ",\00\00\00\03\00\00\00\00\00\00\00\04\00\00\00\14\00\00\00\00\t\00\00\00\00\00\00 \t\00\00\00\00\00\00@\t\00\00\00\00\00\00\00\00\00\00")
 (data $33 (i32.const 4364) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\14\00\00\00(\00A\00=\001\00,\00 \00B\00=\002\00)\00\00\00\00\00\00\00\00\00")
 (data $34 (i32.const 4416) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $35 (i32.const 4544) "\00\00\00\00\00\00\f0?\00\00\00\00\00\00$@\00\00\00\00\00\00Y@\00\00\00\00\00@\8f@\00\00\00\00\00\88\c3@\00\00\00\00\00j\f8@\00\00\00\00\80\84.A\00\00\00\00\d0\12cA\00\00\00\00\84\d7\97A\00\00\00\00e\cd\cdA\00\00\00 _\a0\02B\00\00\00\e8vH7B\00\00\00\a2\94\1amB\00\00@\e5\9c0\a2B\00\00\90\1e\c4\bc\d6B\00\004&\f5k\0cC\00\80\e07y\c3AC\00\a0\d8\85W4vC\00\c8Ngm\c1\abC\00=\91`\e4X\e1C@\8c\b5x\1d\af\15DP\ef\e2\d6\e4\1aKD\92\d5M\06\cf\f0\80D")
 (data $36 (i32.const 4732) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\06\00\00\001\00.\000\00\00\00\00\00\00\00")
 (data $37 (i32.const 4764) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\0c\00\00\001\00.\000\002\00.\000\00")
 (data $38 (i32.const 4796) ",\00\00\00\03\00\00\00\00\00\00\00\04\00\00\00\14\00\00\00\00\t\00\00\00\00\00\00 \t\00\00\00\00\00\00@\t\00\00\00\00\00\00\00\00\00\00")
 (data $39 (i32.const 4844) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\1c\00\00\00(\00A\00=\001\00.\000\00,\00 \00B\00=\002\00.\000\00)\00")
 (data $40 (i32.const 4892) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\02\00\00\002\00\00\00\00\00\00\00\00\00\00\00")
 (data $41 (i32.const 4924) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\08\00\00\00p\00r\00e\00f\00\00\00\00\00")
 (data $42 (i32.const 4956) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\n\00\00\00p\00r\00e\00f\002\00\00\00")
 (data $43 (i32.const 4988) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\n\00\00\00p\00r\00e\00f\00b\00\00\00")
 (data $44 (i32.const 5020) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\08\00\00\00s\00u\00f\00f\00\00\00\00\00")
 (data $45 (i32.const 5052) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\n\00\00\002\00s\00u\00f\00f\00\00\00")
 (data $46 (i32.const 5084) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\n\00\00\00b\00s\00u\00f\00f\00\00\00")
 (data $47 (i32.const 5116) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\04\00\00\002\00b\00\00\00\00\00\00\00\00\00")
 (data $48 (i32.const 5148) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\08\00\00\00r\00e\00f\00#\00\00\00\00\00")
 (data $49 (i32.const 5180) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\n\00\00\00r\00e\00f\00#\001\00\00\00")
 (data $50 (i32.const 5212) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\14\00\00\00r\00e\00f\00#\001\00r\00e\00f\00#\002\00\00\00\00\00\00\00\00\00")
 (data $51 (i32.const 5260) ",\00\00\00\03\00\00\00\00\00\00\00\04\00\00\00\14\00\00\00\00\t\00\00\00\00\00\00 \t\00\00\00\00\00\00@\t\00\00\00\00\00\00\00\00\00\00")
 (data $52 (i32.const 5308) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00$\00\00\00(\00A\00=\00r\00e\00f\00#\001\00,\00 \00B\00=\00r\00e\00f\00#\002\00)\00\00\00\00\00\00\00\00\00")
 (data $53 (i32.const 5372) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\06\00\00\00c\00:\00 \00\00\00\00\00\00\00")
 (data $54 (i32.const 5404) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\n\00\00\00;\00 \00d\00:\00 \00\00\00")
 (data $55 (i32.const 5436) ",\00\00\00\03\00\00\00\00\00\00\00\04\00\00\00\10\00\00\00\10\15\00\00\00\00\00\000\15\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $56 (i32.const 5484) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\08\00\00\00n\00u\00l\00l\00\00\00\00\00")
 (data $57 (i32.const 5516) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\"\00\00\00c\00:\00 \00r\00e\00f\00#\003\00;\00 \00d\00:\00 \00n\00u\00l\00l\00\00\00\00\00\00\00\00\00\00\00")
 (data $58 (i32.const 5580) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\02\00\00\00c\00\00\00\00\00\00\00\00\00\00\00")
 (data $59 (i32.const 5612) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\02\00\00\00:\00\00\00\00\00\00\00\00\00\00\00")
 (data $60 (i32.const 5644) "\1c\00\00\00\03\00\00\00\00\00\00\00\04\00\00\00\0c\00\00\00\00\00\00\00\00\16\00\00\00\00\00\00")
 (data $61 (i32.const 5676) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\n\00\00\00a\00:\00b\00:\00c\00\00\00")
 (data $62 (i32.const 5712) "\07\00\00\00 \00\00\00 \00\00\00 \00\00\00\00\00\00\00\04A\00\00 \00\00\00\00\00\00\00")
 (table $0 1 1 funcref)
 (elem $0 (i32.const 1))
 (export "memory" (memory $0))
 (export "_start" (func $~start))
 (func $~lib/rt/common/OBJECT#get:rtSize (param $this i32) (result i32)
  local.get $this
  i32.load offset=16
 )
 (func $~lib/string/String#get:length (param $this i32) (result i32)
  local.get $this
  i32.const 20
  i32.sub
  call $~lib/rt/common/OBJECT#get:rtSize
  i32.const 1
  i32.shr_u
  return
 )
 (func $~lib/util/string/compareImpl (param $str1 i32) (param $index1 i32) (param $str2 i32) (param $index2 i32) (param $len i32) (result i32)
  (local $ptr1 i32)
  (local $ptr2 i32)
  (local $7 i32)
  (local $a i32)
  (local $b i32)
  local.get $str1
  local.get $index1
  i32.const 1
  i32.shl
  i32.add
  local.set $ptr1
  local.get $str2
  local.get $index2
  i32.const 1
  i32.shl
  i32.add
  local.set $ptr2
  i32.const 0
  i32.const 2
  i32.lt_s
  drop
  local.get $len
  i32.const 4
  i32.ge_u
  if (result i32)
   local.get $ptr1
   i32.const 7
   i32.and
   local.get $ptr2
   i32.const 7
   i32.and
   i32.or
   i32.eqz
  else
   i32.const 0
  end
  if
   block $do-break|0
    loop $do-loop|0
     local.get $ptr1
     i64.load
     local.get $ptr2
     i64.load
     i64.ne
     if
      br $do-break|0
     end
     local.get $ptr1
     i32.const 8
     i32.add
     local.set $ptr1
     local.get $ptr2
     i32.const 8
     i32.add
     local.set $ptr2
     local.get $len
     i32.const 4
     i32.sub
     local.set $len
     local.get $len
     i32.const 4
     i32.ge_u
     br_if $do-loop|0
    end
   end
  end
  loop $while-continue|1
   local.get $len
   local.tee $7
   i32.const 1
   i32.sub
   local.set $len
   local.get $7
   if
    local.get $ptr1
    i32.load16_u
    local.set $a
    local.get $ptr2
    i32.load16_u
    local.set $b
    local.get $a
    local.get $b
    i32.ne
    if
     local.get $a
     local.get $b
     i32.sub
     return
    end
    local.get $ptr1
    i32.const 2
    i32.add
    local.set $ptr1
    local.get $ptr2
    i32.const 2
    i32.add
    local.set $ptr2
    br $while-continue|1
   end
  end
  i32.const 0
  return
 )
 (func $~lib/rt/itcms/Object#set:nextWithColor (param $this i32) (param $nextWithColor i32)
  local.get $this
  local.get $nextWithColor
  i32.store offset=4
 )
 (func $~lib/rt/itcms/Object#set:prev (param $this i32) (param $prev i32)
  local.get $this
  local.get $prev
  i32.store offset=8
 )
 (func $~lib/rt/itcms/initLazy (param $space i32) (result i32)
  local.get $space
  local.get $space
  call $~lib/rt/itcms/Object#set:nextWithColor
  local.get $space
  local.get $space
  call $~lib/rt/itcms/Object#set:prev
  local.get $space
  return
 )
 (func $~lib/rt/itcms/Object#get:nextWithColor (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $~lib/rt/itcms/Object#get:next (param $this i32) (result i32)
  local.get $this
  call $~lib/rt/itcms/Object#get:nextWithColor
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  return
 )
 (func $~lib/rt/itcms/Object#get:color (param $this i32) (result i32)
  local.get $this
  call $~lib/rt/itcms/Object#get:nextWithColor
  i32.const 3
  i32.and
  return
 )
 (func $~lib/rt/itcms/visitRoots (param $cookie i32)
  (local $pn i32)
  (local $iter i32)
  local.get $cookie
  call $~lib/rt/__visit_globals
  global.get $~lib/rt/itcms/pinSpace
  local.set $pn
  local.get $pn
  call $~lib/rt/itcms/Object#get:next
  local.set $iter
  loop $while-continue|0
   local.get $iter
   local.get $pn
   i32.ne
   if
    i32.const 1
    drop
    local.get $iter
    call $~lib/rt/itcms/Object#get:color
    i32.const 3
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 1936
     i32.const 160
     i32.const 16
     call $~lib/builtins/abort
     unreachable
    end
    local.get $iter
    i32.const 20
    i32.add
    local.get $cookie
    call $~lib/rt/__visit_members
    local.get $iter
    call $~lib/rt/itcms/Object#get:next
    local.set $iter
    br $while-continue|0
   end
  end
 )
 (func $~lib/rt/itcms/Object#set:color (param $this i32) (param $color i32)
  local.get $this
  local.get $this
  call $~lib/rt/itcms/Object#get:nextWithColor
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.get $color
  i32.or
  call $~lib/rt/itcms/Object#set:nextWithColor
 )
 (func $~lib/rt/itcms/Object#get:prev (param $this i32) (result i32)
  local.get $this
  i32.load offset=8
 )
 (func $~lib/rt/itcms/Object#set:next (param $this i32) (param $obj i32)
  local.get $this
  local.get $obj
  local.get $this
  call $~lib/rt/itcms/Object#get:nextWithColor
  i32.const 3
  i32.and
  i32.or
  call $~lib/rt/itcms/Object#set:nextWithColor
 )
 (func $~lib/rt/itcms/Object#unlink (param $this i32)
  (local $next i32)
  (local $prev i32)
  local.get $this
  call $~lib/rt/itcms/Object#get:next
  local.set $next
  local.get $next
  i32.const 0
  i32.eq
  if
   i32.const 1
   drop
   local.get $this
   call $~lib/rt/itcms/Object#get:prev
   i32.const 0
   i32.eq
   if (result i32)
    local.get $this
    global.get $~lib/memory/__heap_base
    i32.lt_u
   else
    i32.const 0
   end
   i32.eqz
   if
    i32.const 0
    i32.const 1936
    i32.const 128
    i32.const 18
    call $~lib/builtins/abort
    unreachable
   end
   return
  end
  local.get $this
  call $~lib/rt/itcms/Object#get:prev
  local.set $prev
  i32.const 1
  drop
  local.get $prev
  i32.eqz
  if
   i32.const 0
   i32.const 1936
   i32.const 132
   i32.const 16
   call $~lib/builtins/abort
   unreachable
  end
  local.get $next
  local.get $prev
  call $~lib/rt/itcms/Object#set:prev
  local.get $prev
  local.get $next
  call $~lib/rt/itcms/Object#set:next
 )
 (func $~lib/rt/itcms/Object#get:rtId (param $this i32) (result i32)
  local.get $this
  i32.load offset=12
 )
 (func $~lib/shared/typeinfo/Typeinfo#get:flags (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $~lib/rt/__typeinfo (param $id i32) (result i32)
  (local $ptr i32)
  global.get $~lib/rt/__rtti_base
  local.set $ptr
  local.get $id
  local.get $ptr
  i32.load
  i32.gt_u
  if
   i32.const 2064
   i32.const 2128
   i32.const 21
   i32.const 28
   call $~lib/builtins/abort
   unreachable
  end
  local.get $ptr
  i32.const 4
  i32.add
  local.get $id
  i32.const 4
  i32.mul
  i32.add
  call $~lib/shared/typeinfo/Typeinfo#get:flags
  return
 )
 (func $~lib/rt/itcms/Object#get:isPointerfree (param $this i32) (result i32)
  (local $rtId i32)
  local.get $this
  call $~lib/rt/itcms/Object#get:rtId
  local.set $rtId
  local.get $rtId
  i32.const 2
  i32.le_u
  if (result i32)
   i32.const 1
  else
   local.get $rtId
   call $~lib/rt/__typeinfo
   i32.const 32
   i32.and
   i32.const 0
   i32.ne
  end
  return
 )
 (func $~lib/rt/itcms/Object#linkTo (param $this i32) (param $list i32) (param $withColor i32)
  (local $prev i32)
  local.get $list
  call $~lib/rt/itcms/Object#get:prev
  local.set $prev
  local.get $this
  local.get $list
  local.get $withColor
  i32.or
  call $~lib/rt/itcms/Object#set:nextWithColor
  local.get $this
  local.get $prev
  call $~lib/rt/itcms/Object#set:prev
  local.get $prev
  local.get $this
  call $~lib/rt/itcms/Object#set:next
  local.get $list
  local.get $this
  call $~lib/rt/itcms/Object#set:prev
 )
 (func $~lib/rt/itcms/Object#makeGray (param $this i32)
  (local $1 i32)
  local.get $this
  global.get $~lib/rt/itcms/iter
  i32.eq
  if
   local.get $this
   call $~lib/rt/itcms/Object#get:prev
   local.tee $1
   i32.eqz
   if (result i32)
    i32.const 0
    i32.const 1936
    i32.const 148
    i32.const 30
    call $~lib/builtins/abort
    unreachable
   else
    local.get $1
   end
   global.set $~lib/rt/itcms/iter
  end
  local.get $this
  call $~lib/rt/itcms/Object#unlink
  local.get $this
  global.get $~lib/rt/itcms/toSpace
  local.get $this
  call $~lib/rt/itcms/Object#get:isPointerfree
  if (result i32)
   global.get $~lib/rt/itcms/white
   i32.eqz
  else
   i32.const 2
  end
  call $~lib/rt/itcms/Object#linkTo
 )
 (func $~lib/rt/itcms/__visit (param $ptr i32) (param $cookie i32)
  (local $obj i32)
  local.get $ptr
  i32.eqz
  if
   return
  end
  local.get $ptr
  i32.const 20
  i32.sub
  local.set $obj
  i32.const 0
  drop
  local.get $obj
  call $~lib/rt/itcms/Object#get:color
  global.get $~lib/rt/itcms/white
  i32.eq
  if
   local.get $obj
   call $~lib/rt/itcms/Object#makeGray
   global.get $~lib/rt/itcms/visitCount
   i32.const 1
   i32.add
   global.set $~lib/rt/itcms/visitCount
  end
 )
 (func $~lib/rt/itcms/visitStack (param $cookie i32)
  (local $ptr i32)
  global.get $~lib/memory/__stack_pointer
  local.set $ptr
  loop $while-continue|0
   local.get $ptr
   global.get $~lib/memory/__heap_base
   i32.lt_u
   if
    local.get $ptr
    i32.load
    local.get $cookie
    call $~lib/rt/itcms/__visit
    local.get $ptr
    i32.const 4
    i32.add
    local.set $ptr
    br $while-continue|0
   end
  end
 )
 (func $~lib/rt/common/BLOCK#get:mmInfo (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $~lib/rt/itcms/Object#get:size (param $this i32) (result i32)
  i32.const 4
  local.get $this
  call $~lib/rt/common/BLOCK#get:mmInfo
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  i32.add
  return
 )
 (func $~lib/rt/tlsf/Root#set:flMap (param $this i32) (param $flMap i32)
  local.get $this
  local.get $flMap
  i32.store
 )
 (func $~lib/rt/common/BLOCK#set:mmInfo (param $this i32) (param $mmInfo i32)
  local.get $this
  local.get $mmInfo
  i32.store
 )
 (func $~lib/rt/tlsf/Block#set:prev (param $this i32) (param $prev i32)
  local.get $this
  local.get $prev
  i32.store offset=4
 )
 (func $~lib/rt/tlsf/Block#set:next (param $this i32) (param $next i32)
  local.get $this
  local.get $next
  i32.store offset=8
 )
 (func $~lib/rt/tlsf/Block#get:prev (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $~lib/rt/tlsf/Block#get:next (param $this i32) (result i32)
  local.get $this
  i32.load offset=8
 )
 (func $~lib/rt/tlsf/Root#get:flMap (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $~lib/rt/tlsf/removeBlock (param $root i32) (param $block i32)
  (local $blockInfo i32)
  (local $size i32)
  (local $fl i32)
  (local $sl i32)
  (local $6 i32)
  (local $7 i32)
  (local $boundedSize i32)
  (local $prev i32)
  (local $next i32)
  (local $root|11 i32)
  (local $fl|12 i32)
  (local $sl|13 i32)
  (local $root|14 i32)
  (local $fl|15 i32)
  (local $sl|16 i32)
  (local $head i32)
  (local $root|18 i32)
  (local $fl|19 i32)
  (local $slMap i32)
  (local $root|21 i32)
  (local $fl|22 i32)
  (local $slMap|23 i32)
  local.get $block
  call $~lib/rt/common/BLOCK#get:mmInfo
  local.set $blockInfo
  i32.const 1
  drop
  local.get $blockInfo
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 2208
   i32.const 268
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $blockInfo
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.set $size
  i32.const 1
  drop
  local.get $size
  i32.const 12
  i32.ge_u
  i32.eqz
  if
   i32.const 0
   i32.const 2208
   i32.const 270
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $size
  i32.const 256
  i32.lt_u
  if
   i32.const 0
   local.set $fl
   local.get $size
   i32.const 4
   i32.shr_u
   local.set $sl
  else
   local.get $size
   local.tee $6
   i32.const 1073741820
   local.tee $7
   local.get $6
   local.get $7
   i32.lt_u
   select
   local.set $boundedSize
   i32.const 31
   local.get $boundedSize
   i32.clz
   i32.sub
   local.set $fl
   local.get $boundedSize
   local.get $fl
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 1
   i32.const 4
   i32.shl
   i32.xor
   local.set $sl
   local.get $fl
   i32.const 8
   i32.const 1
   i32.sub
   i32.sub
   local.set $fl
  end
  i32.const 1
  drop
  local.get $fl
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $sl
   i32.const 16
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 2208
   i32.const 284
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $block
  call $~lib/rt/tlsf/Block#get:prev
  local.set $prev
  local.get $block
  call $~lib/rt/tlsf/Block#get:next
  local.set $next
  local.get $prev
  if
   local.get $prev
   local.get $next
   call $~lib/rt/tlsf/Block#set:next
  end
  local.get $next
  if
   local.get $next
   local.get $prev
   call $~lib/rt/tlsf/Block#set:prev
  end
  local.get $block
  block $~lib/rt/tlsf/GETHEAD|inlined.0 (result i32)
   local.get $root
   local.set $root|11
   local.get $fl
   local.set $fl|12
   local.get $sl
   local.set $sl|13
   local.get $root|11
   local.get $fl|12
   i32.const 4
   i32.shl
   local.get $sl|13
   i32.add
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=96
   br $~lib/rt/tlsf/GETHEAD|inlined.0
  end
  i32.eq
  if
   local.get $root
   local.set $root|14
   local.get $fl
   local.set $fl|15
   local.get $sl
   local.set $sl|16
   local.get $next
   local.set $head
   local.get $root|14
   local.get $fl|15
   i32.const 4
   i32.shl
   local.get $sl|16
   i32.add
   i32.const 2
   i32.shl
   i32.add
   local.get $head
   i32.store offset=96
   local.get $next
   i32.eqz
   if
    block $~lib/rt/tlsf/GETSL|inlined.0 (result i32)
     local.get $root
     local.set $root|18
     local.get $fl
     local.set $fl|19
     local.get $root|18
     local.get $fl|19
     i32.const 2
     i32.shl
     i32.add
     i32.load offset=4
     br $~lib/rt/tlsf/GETSL|inlined.0
    end
    local.set $slMap
    local.get $root
    local.set $root|21
    local.get $fl
    local.set $fl|22
    local.get $slMap
    i32.const 1
    local.get $sl
    i32.shl
    i32.const -1
    i32.xor
    i32.and
    local.tee $slMap
    local.set $slMap|23
    local.get $root|21
    local.get $fl|22
    i32.const 2
    i32.shl
    i32.add
    local.get $slMap|23
    i32.store offset=4
    local.get $slMap
    i32.eqz
    if
     local.get $root
     local.get $root
     call $~lib/rt/tlsf/Root#get:flMap
     i32.const 1
     local.get $fl
     i32.shl
     i32.const -1
     i32.xor
     i32.and
     call $~lib/rt/tlsf/Root#set:flMap
    end
   end
  end
 )
 (func $~lib/rt/tlsf/insertBlock (param $root i32) (param $block i32)
  (local $blockInfo i32)
  (local $block|3 i32)
  (local $right i32)
  (local $rightInfo i32)
  (local $block|6 i32)
  (local $block|7 i32)
  (local $left i32)
  (local $leftInfo i32)
  (local $size i32)
  (local $fl i32)
  (local $sl i32)
  (local $13 i32)
  (local $14 i32)
  (local $boundedSize i32)
  (local $root|16 i32)
  (local $fl|17 i32)
  (local $sl|18 i32)
  (local $head i32)
  (local $root|20 i32)
  (local $fl|21 i32)
  (local $sl|22 i32)
  (local $head|23 i32)
  (local $root|24 i32)
  (local $fl|25 i32)
  (local $root|26 i32)
  (local $fl|27 i32)
  (local $slMap i32)
  i32.const 1
  drop
  local.get $block
  i32.eqz
  if
   i32.const 0
   i32.const 2208
   i32.const 201
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $block
  call $~lib/rt/common/BLOCK#get:mmInfo
  local.set $blockInfo
  i32.const 1
  drop
  local.get $blockInfo
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 2208
   i32.const 203
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  block $~lib/rt/tlsf/GETRIGHT|inlined.0 (result i32)
   local.get $block
   local.set $block|3
   local.get $block|3
   i32.const 4
   i32.add
   local.get $block|3
   call $~lib/rt/common/BLOCK#get:mmInfo
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   br $~lib/rt/tlsf/GETRIGHT|inlined.0
  end
  local.set $right
  local.get $right
  call $~lib/rt/common/BLOCK#get:mmInfo
  local.set $rightInfo
  local.get $rightInfo
  i32.const 1
  i32.and
  if
   local.get $root
   local.get $right
   call $~lib/rt/tlsf/removeBlock
   local.get $block
   local.get $blockInfo
   i32.const 4
   i32.add
   local.get $rightInfo
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   local.tee $blockInfo
   call $~lib/rt/common/BLOCK#set:mmInfo
   block $~lib/rt/tlsf/GETRIGHT|inlined.1 (result i32)
    local.get $block
    local.set $block|6
    local.get $block|6
    i32.const 4
    i32.add
    local.get $block|6
    call $~lib/rt/common/BLOCK#get:mmInfo
    i32.const 3
    i32.const -1
    i32.xor
    i32.and
    i32.add
    br $~lib/rt/tlsf/GETRIGHT|inlined.1
   end
   local.set $right
   local.get $right
   call $~lib/rt/common/BLOCK#get:mmInfo
   local.set $rightInfo
  end
  local.get $blockInfo
  i32.const 2
  i32.and
  if
   block $~lib/rt/tlsf/GETFREELEFT|inlined.0 (result i32)
    local.get $block
    local.set $block|7
    local.get $block|7
    i32.const 4
    i32.sub
    i32.load
    br $~lib/rt/tlsf/GETFREELEFT|inlined.0
   end
   local.set $left
   local.get $left
   call $~lib/rt/common/BLOCK#get:mmInfo
   local.set $leftInfo
   i32.const 1
   drop
   local.get $leftInfo
   i32.const 1
   i32.and
   i32.eqz
   if
    i32.const 0
    i32.const 2208
    i32.const 221
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $root
   local.get $left
   call $~lib/rt/tlsf/removeBlock
   local.get $left
   local.set $block
   local.get $block
   local.get $leftInfo
   i32.const 4
   i32.add
   local.get $blockInfo
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   local.tee $blockInfo
   call $~lib/rt/common/BLOCK#set:mmInfo
  end
  local.get $right
  local.get $rightInfo
  i32.const 2
  i32.or
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $blockInfo
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.set $size
  i32.const 1
  drop
  local.get $size
  i32.const 12
  i32.ge_u
  i32.eqz
  if
   i32.const 0
   i32.const 2208
   i32.const 233
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  drop
  local.get $block
  i32.const 4
  i32.add
  local.get $size
  i32.add
  local.get $right
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 2208
   i32.const 234
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $right
  i32.const 4
  i32.sub
  local.get $block
  i32.store
  local.get $size
  i32.const 256
  i32.lt_u
  if
   i32.const 0
   local.set $fl
   local.get $size
   i32.const 4
   i32.shr_u
   local.set $sl
  else
   local.get $size
   local.tee $13
   i32.const 1073741820
   local.tee $14
   local.get $13
   local.get $14
   i32.lt_u
   select
   local.set $boundedSize
   i32.const 31
   local.get $boundedSize
   i32.clz
   i32.sub
   local.set $fl
   local.get $boundedSize
   local.get $fl
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 1
   i32.const 4
   i32.shl
   i32.xor
   local.set $sl
   local.get $fl
   i32.const 8
   i32.const 1
   i32.sub
   i32.sub
   local.set $fl
  end
  i32.const 1
  drop
  local.get $fl
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $sl
   i32.const 16
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 2208
   i32.const 251
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  block $~lib/rt/tlsf/GETHEAD|inlined.1 (result i32)
   local.get $root
   local.set $root|16
   local.get $fl
   local.set $fl|17
   local.get $sl
   local.set $sl|18
   local.get $root|16
   local.get $fl|17
   i32.const 4
   i32.shl
   local.get $sl|18
   i32.add
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=96
   br $~lib/rt/tlsf/GETHEAD|inlined.1
  end
  local.set $head
  local.get $block
  i32.const 0
  call $~lib/rt/tlsf/Block#set:prev
  local.get $block
  local.get $head
  call $~lib/rt/tlsf/Block#set:next
  local.get $head
  if
   local.get $head
   local.get $block
   call $~lib/rt/tlsf/Block#set:prev
  end
  local.get $root
  local.set $root|20
  local.get $fl
  local.set $fl|21
  local.get $sl
  local.set $sl|22
  local.get $block
  local.set $head|23
  local.get $root|20
  local.get $fl|21
  i32.const 4
  i32.shl
  local.get $sl|22
  i32.add
  i32.const 2
  i32.shl
  i32.add
  local.get $head|23
  i32.store offset=96
  local.get $root
  local.get $root
  call $~lib/rt/tlsf/Root#get:flMap
  i32.const 1
  local.get $fl
  i32.shl
  i32.or
  call $~lib/rt/tlsf/Root#set:flMap
  local.get $root
  local.set $root|26
  local.get $fl
  local.set $fl|27
  block $~lib/rt/tlsf/GETSL|inlined.1 (result i32)
   local.get $root
   local.set $root|24
   local.get $fl
   local.set $fl|25
   local.get $root|24
   local.get $fl|25
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=4
   br $~lib/rt/tlsf/GETSL|inlined.1
  end
  i32.const 1
  local.get $sl
  i32.shl
  i32.or
  local.set $slMap
  local.get $root|26
  local.get $fl|27
  i32.const 2
  i32.shl
  i32.add
  local.get $slMap
  i32.store offset=4
 )
 (func $~lib/rt/tlsf/addMemory (param $root i32) (param $start i32) (param $endU64 i64) (result i32)
  (local $end i32)
  (local $root|4 i32)
  (local $tail i32)
  (local $tailInfo i32)
  (local $size i32)
  (local $leftSize i32)
  (local $left i32)
  (local $root|10 i32)
  (local $tail|11 i32)
  local.get $endU64
  i32.wrap_i64
  local.set $end
  i32.const 1
  drop
  local.get $start
  i64.extend_i32_u
  local.get $endU64
  i64.le_u
  i32.eqz
  if
   i32.const 0
   i32.const 2208
   i32.const 382
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $start
  i32.const 4
  i32.add
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  i32.const 4
  i32.sub
  local.set $start
  local.get $end
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  local.set $end
  block $~lib/rt/tlsf/GETTAIL|inlined.0 (result i32)
   local.get $root
   local.set $root|4
   local.get $root|4
   i32.load offset=1568
   br $~lib/rt/tlsf/GETTAIL|inlined.0
  end
  local.set $tail
  i32.const 0
  local.set $tailInfo
  local.get $tail
  if
   i32.const 1
   drop
   local.get $start
   local.get $tail
   i32.const 4
   i32.add
   i32.ge_u
   i32.eqz
   if
    i32.const 0
    i32.const 2208
    i32.const 389
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $start
   i32.const 16
   i32.sub
   local.get $tail
   i32.eq
   if
    local.get $start
    i32.const 16
    i32.sub
    local.set $start
    local.get $tail
    call $~lib/rt/common/BLOCK#get:mmInfo
    local.set $tailInfo
   else
   end
  else
   i32.const 1
   drop
   local.get $start
   local.get $root
   i32.const 1572
   i32.add
   i32.ge_u
   i32.eqz
   if
    i32.const 0
    i32.const 2208
    i32.const 402
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $end
  local.get $start
  i32.sub
  local.set $size
  local.get $size
  i32.const 4
  i32.const 12
  i32.add
  i32.const 4
  i32.add
  i32.lt_u
  if
   i32.const 0
   return
  end
  local.get $size
  i32.const 2
  i32.const 4
  i32.mul
  i32.sub
  local.set $leftSize
  local.get $start
  local.set $left
  local.get $left
  local.get $leftSize
  i32.const 1
  i32.or
  local.get $tailInfo
  i32.const 2
  i32.and
  i32.or
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $left
  i32.const 0
  call $~lib/rt/tlsf/Block#set:prev
  local.get $left
  i32.const 0
  call $~lib/rt/tlsf/Block#set:next
  local.get $start
  i32.const 4
  i32.add
  local.get $leftSize
  i32.add
  local.set $tail
  local.get $tail
  i32.const 0
  i32.const 2
  i32.or
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $root
  local.set $root|10
  local.get $tail
  local.set $tail|11
  local.get $root|10
  local.get $tail|11
  i32.store offset=1568
  local.get $root
  local.get $left
  call $~lib/rt/tlsf/insertBlock
  i32.const 1
  return
 )
 (func $~lib/rt/tlsf/initialize
  (local $rootOffset i32)
  (local $pagesBefore i32)
  (local $pagesNeeded i32)
  (local $root i32)
  (local $root|4 i32)
  (local $tail i32)
  (local $fl i32)
  (local $root|7 i32)
  (local $fl|8 i32)
  (local $slMap i32)
  (local $sl i32)
  (local $root|11 i32)
  (local $fl|12 i32)
  (local $sl|13 i32)
  (local $head i32)
  (local $memStart i32)
  i32.const 0
  drop
  global.get $~lib/memory/__heap_base
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  local.set $rootOffset
  memory.size
  local.set $pagesBefore
  local.get $rootOffset
  i32.const 1572
  i32.add
  i32.const 65535
  i32.add
  i32.const 65535
  i32.const -1
  i32.xor
  i32.and
  i32.const 16
  i32.shr_u
  local.set $pagesNeeded
  local.get $pagesNeeded
  local.get $pagesBefore
  i32.gt_s
  if (result i32)
   local.get $pagesNeeded
   local.get $pagesBefore
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
  local.get $rootOffset
  local.set $root
  local.get $root
  i32.const 0
  call $~lib/rt/tlsf/Root#set:flMap
  local.get $root
  local.set $root|4
  i32.const 0
  local.set $tail
  local.get $root|4
  local.get $tail
  i32.store offset=1568
  i32.const 0
  local.set $fl
  loop $for-loop|0
   local.get $fl
   i32.const 23
   i32.lt_u
   if
    local.get $root
    local.set $root|7
    local.get $fl
    local.set $fl|8
    i32.const 0
    local.set $slMap
    local.get $root|7
    local.get $fl|8
    i32.const 2
    i32.shl
    i32.add
    local.get $slMap
    i32.store offset=4
    i32.const 0
    local.set $sl
    loop $for-loop|1
     local.get $sl
     i32.const 16
     i32.lt_u
     if
      local.get $root
      local.set $root|11
      local.get $fl
      local.set $fl|12
      local.get $sl
      local.set $sl|13
      i32.const 0
      local.set $head
      local.get $root|11
      local.get $fl|12
      i32.const 4
      i32.shl
      local.get $sl|13
      i32.add
      i32.const 2
      i32.shl
      i32.add
      local.get $head
      i32.store offset=96
      local.get $sl
      i32.const 1
      i32.add
      local.set $sl
      br $for-loop|1
     end
    end
    local.get $fl
    i32.const 1
    i32.add
    local.set $fl
    br $for-loop|0
   end
  end
  local.get $rootOffset
  i32.const 1572
  i32.add
  local.set $memStart
  i32.const 0
  drop
  local.get $root
  local.get $memStart
  memory.size
  i64.extend_i32_s
  i64.const 16
  i64.shl
  call $~lib/rt/tlsf/addMemory
  drop
  local.get $root
  global.set $~lib/rt/tlsf/ROOT
 )
 (func $~lib/rt/tlsf/checkUsedBlock (param $ptr i32) (result i32)
  (local $block i32)
  local.get $ptr
  i32.const 4
  i32.sub
  local.set $block
  local.get $ptr
  i32.const 0
  i32.ne
  if (result i32)
   local.get $ptr
   i32.const 15
   i32.and
   i32.eqz
  else
   i32.const 0
  end
  if (result i32)
   local.get $block
   call $~lib/rt/common/BLOCK#get:mmInfo
   i32.const 1
   i32.and
   i32.eqz
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 2208
   i32.const 562
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $block
  return
 )
 (func $~lib/rt/tlsf/freeBlock (param $root i32) (param $block i32)
  i32.const 0
  drop
  local.get $block
  local.get $block
  call $~lib/rt/common/BLOCK#get:mmInfo
  i32.const 1
  i32.or
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $root
  local.get $block
  call $~lib/rt/tlsf/insertBlock
 )
 (func $~lib/rt/tlsf/__free (param $ptr i32)
  local.get $ptr
  global.get $~lib/memory/__heap_base
  i32.lt_u
  if
   return
  end
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  local.get $ptr
  call $~lib/rt/tlsf/checkUsedBlock
  call $~lib/rt/tlsf/freeBlock
 )
 (func $~lib/rt/itcms/free (param $obj i32)
  local.get $obj
  global.get $~lib/memory/__heap_base
  i32.lt_u
  if
   local.get $obj
   i32.const 0
   call $~lib/rt/itcms/Object#set:nextWithColor
   local.get $obj
   i32.const 0
   call $~lib/rt/itcms/Object#set:prev
  else
   global.get $~lib/rt/itcms/total
   local.get $obj
   call $~lib/rt/itcms/Object#get:size
   i32.sub
   global.set $~lib/rt/itcms/total
   i32.const 0
   drop
   local.get $obj
   i32.const 4
   i32.add
   call $~lib/rt/tlsf/__free
  end
 )
 (func $~lib/rt/itcms/step (result i32)
  (local $obj i32)
  (local $1 i32)
  (local $black i32)
  (local $from i32)
  block $break|0
   block $case2|0
    block $case1|0
     block $case0|0
      global.get $~lib/rt/itcms/state
      local.set $1
      local.get $1
      i32.const 0
      i32.eq
      br_if $case0|0
      local.get $1
      i32.const 1
      i32.eq
      br_if $case1|0
      local.get $1
      i32.const 2
      i32.eq
      br_if $case2|0
      br $break|0
     end
     i32.const 1
     global.set $~lib/rt/itcms/state
     i32.const 0
     global.set $~lib/rt/itcms/visitCount
     i32.const 0
     call $~lib/rt/itcms/visitRoots
     global.get $~lib/rt/itcms/toSpace
     global.set $~lib/rt/itcms/iter
     global.get $~lib/rt/itcms/visitCount
     i32.const 1
     i32.mul
     return
    end
    global.get $~lib/rt/itcms/white
    i32.eqz
    local.set $black
    global.get $~lib/rt/itcms/iter
    call $~lib/rt/itcms/Object#get:next
    local.set $obj
    loop $while-continue|1
     local.get $obj
     global.get $~lib/rt/itcms/toSpace
     i32.ne
     if
      local.get $obj
      global.set $~lib/rt/itcms/iter
      local.get $obj
      call $~lib/rt/itcms/Object#get:color
      local.get $black
      i32.ne
      if
       local.get $obj
       local.get $black
       call $~lib/rt/itcms/Object#set:color
       i32.const 0
       global.set $~lib/rt/itcms/visitCount
       local.get $obj
       i32.const 20
       i32.add
       i32.const 0
       call $~lib/rt/__visit_members
       global.get $~lib/rt/itcms/visitCount
       i32.const 1
       i32.mul
       return
      end
      local.get $obj
      call $~lib/rt/itcms/Object#get:next
      local.set $obj
      br $while-continue|1
     end
    end
    i32.const 0
    global.set $~lib/rt/itcms/visitCount
    i32.const 0
    call $~lib/rt/itcms/visitRoots
    global.get $~lib/rt/itcms/iter
    call $~lib/rt/itcms/Object#get:next
    local.set $obj
    local.get $obj
    global.get $~lib/rt/itcms/toSpace
    i32.eq
    if
     i32.const 0
     call $~lib/rt/itcms/visitStack
     global.get $~lib/rt/itcms/iter
     call $~lib/rt/itcms/Object#get:next
     local.set $obj
     loop $while-continue|2
      local.get $obj
      global.get $~lib/rt/itcms/toSpace
      i32.ne
      if
       local.get $obj
       call $~lib/rt/itcms/Object#get:color
       local.get $black
       i32.ne
       if
        local.get $obj
        local.get $black
        call $~lib/rt/itcms/Object#set:color
        local.get $obj
        i32.const 20
        i32.add
        i32.const 0
        call $~lib/rt/__visit_members
       end
       local.get $obj
       call $~lib/rt/itcms/Object#get:next
       local.set $obj
       br $while-continue|2
      end
     end
     global.get $~lib/rt/itcms/fromSpace
     local.set $from
     global.get $~lib/rt/itcms/toSpace
     global.set $~lib/rt/itcms/fromSpace
     local.get $from
     global.set $~lib/rt/itcms/toSpace
     local.get $black
     global.set $~lib/rt/itcms/white
     local.get $from
     call $~lib/rt/itcms/Object#get:next
     global.set $~lib/rt/itcms/iter
     i32.const 2
     global.set $~lib/rt/itcms/state
    end
    global.get $~lib/rt/itcms/visitCount
    i32.const 1
    i32.mul
    return
   end
   global.get $~lib/rt/itcms/iter
   local.set $obj
   local.get $obj
   global.get $~lib/rt/itcms/toSpace
   i32.ne
   if
    local.get $obj
    call $~lib/rt/itcms/Object#get:next
    global.set $~lib/rt/itcms/iter
    i32.const 1
    drop
    local.get $obj
    call $~lib/rt/itcms/Object#get:color
    global.get $~lib/rt/itcms/white
    i32.eqz
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 1936
     i32.const 229
     i32.const 20
     call $~lib/builtins/abort
     unreachable
    end
    local.get $obj
    call $~lib/rt/itcms/free
    i32.const 10
    return
   end
   global.get $~lib/rt/itcms/toSpace
   global.get $~lib/rt/itcms/toSpace
   call $~lib/rt/itcms/Object#set:nextWithColor
   global.get $~lib/rt/itcms/toSpace
   global.get $~lib/rt/itcms/toSpace
   call $~lib/rt/itcms/Object#set:prev
   i32.const 0
   global.set $~lib/rt/itcms/state
   br $break|0
  end
  i32.const 0
  return
 )
 (func $~lib/rt/itcms/interrupt
  (local $budget i32)
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 1024
  i32.const 200
  i32.mul
  i32.const 100
  i32.div_u
  local.set $budget
  loop $do-loop|0
   local.get $budget
   call $~lib/rt/itcms/step
   i32.sub
   local.set $budget
   global.get $~lib/rt/itcms/state
   i32.const 0
   i32.eq
   if
    i32.const 0
    drop
    i32.const 200
    i32.const 100
    i32.rem_u
    i32.const 0
    i32.eq
    drop
    global.get $~lib/rt/itcms/total
    i32.const 200
    i32.const 100
    i32.div_u
    i32.mul
    i32.const 1024
    i32.add
    global.set $~lib/rt/itcms/threshold
    i32.const 0
    drop
    return
   end
   local.get $budget
   i32.const 0
   i32.gt_s
   br_if $do-loop|0
  end
  i32.const 0
  drop
  global.get $~lib/rt/itcms/total
  i32.const 1024
  global.get $~lib/rt/itcms/total
  global.get $~lib/rt/itcms/threshold
  i32.sub
  i32.const 1024
  i32.lt_u
  i32.mul
  i32.add
  global.set $~lib/rt/itcms/threshold
  i32.const 0
  drop
 )
 (func $~lib/rt/tlsf/computeSize (param $size i32) (result i32)
  local.get $size
  i32.const 12
  i32.le_u
  if (result i32)
   i32.const 12
  else
   local.get $size
   i32.const 4
   i32.add
   i32.const 15
   i32.add
   i32.const 15
   i32.const -1
   i32.xor
   i32.and
   i32.const 4
   i32.sub
  end
  return
 )
 (func $~lib/rt/tlsf/prepareSize (param $size i32) (result i32)
  local.get $size
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 1872
   i32.const 2208
   i32.const 461
   i32.const 29
   call $~lib/builtins/abort
   unreachable
  end
  local.get $size
  call $~lib/rt/tlsf/computeSize
  return
 )
 (func $~lib/rt/tlsf/roundSize (param $size i32) (result i32)
  local.get $size
  i32.const 536870910
  i32.lt_u
  if (result i32)
   local.get $size
   i32.const 1
   i32.const 27
   local.get $size
   i32.clz
   i32.sub
   i32.shl
   i32.add
   i32.const 1
   i32.sub
  else
   local.get $size
  end
  return
 )
 (func $~lib/rt/tlsf/searchBlock (param $root i32) (param $size i32) (result i32)
  (local $fl i32)
  (local $sl i32)
  (local $requestSize i32)
  (local $root|5 i32)
  (local $fl|6 i32)
  (local $slMap i32)
  (local $head i32)
  (local $flMap i32)
  (local $root|10 i32)
  (local $fl|11 i32)
  (local $root|12 i32)
  (local $fl|13 i32)
  (local $sl|14 i32)
  (local $root|15 i32)
  (local $fl|16 i32)
  (local $sl|17 i32)
  local.get $size
  i32.const 256
  i32.lt_u
  if
   i32.const 0
   local.set $fl
   local.get $size
   i32.const 4
   i32.shr_u
   local.set $sl
  else
   local.get $size
   call $~lib/rt/tlsf/roundSize
   local.set $requestSize
   i32.const 4
   i32.const 8
   i32.mul
   i32.const 1
   i32.sub
   local.get $requestSize
   i32.clz
   i32.sub
   local.set $fl
   local.get $requestSize
   local.get $fl
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 1
   i32.const 4
   i32.shl
   i32.xor
   local.set $sl
   local.get $fl
   i32.const 8
   i32.const 1
   i32.sub
   i32.sub
   local.set $fl
  end
  i32.const 1
  drop
  local.get $fl
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $sl
   i32.const 16
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 2208
   i32.const 334
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  block $~lib/rt/tlsf/GETSL|inlined.2 (result i32)
   local.get $root
   local.set $root|5
   local.get $fl
   local.set $fl|6
   local.get $root|5
   local.get $fl|6
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=4
   br $~lib/rt/tlsf/GETSL|inlined.2
  end
  i32.const 0
  i32.const -1
  i32.xor
  local.get $sl
  i32.shl
  i32.and
  local.set $slMap
  i32.const 0
  local.set $head
  local.get $slMap
  i32.eqz
  if
   local.get $root
   call $~lib/rt/tlsf/Root#get:flMap
   i32.const 0
   i32.const -1
   i32.xor
   local.get $fl
   i32.const 1
   i32.add
   i32.shl
   i32.and
   local.set $flMap
   local.get $flMap
   i32.eqz
   if
    i32.const 0
    local.set $head
   else
    local.get $flMap
    i32.ctz
    local.set $fl
    block $~lib/rt/tlsf/GETSL|inlined.3 (result i32)
     local.get $root
     local.set $root|10
     local.get $fl
     local.set $fl|11
     local.get $root|10
     local.get $fl|11
     i32.const 2
     i32.shl
     i32.add
     i32.load offset=4
     br $~lib/rt/tlsf/GETSL|inlined.3
    end
    local.set $slMap
    i32.const 1
    drop
    local.get $slMap
    i32.eqz
    if
     i32.const 0
     i32.const 2208
     i32.const 347
     i32.const 18
     call $~lib/builtins/abort
     unreachable
    end
    block $~lib/rt/tlsf/GETHEAD|inlined.2 (result i32)
     local.get $root
     local.set $root|12
     local.get $fl
     local.set $fl|13
     local.get $slMap
     i32.ctz
     local.set $sl|14
     local.get $root|12
     local.get $fl|13
     i32.const 4
     i32.shl
     local.get $sl|14
     i32.add
     i32.const 2
     i32.shl
     i32.add
     i32.load offset=96
     br $~lib/rt/tlsf/GETHEAD|inlined.2
    end
    local.set $head
   end
  else
   block $~lib/rt/tlsf/GETHEAD|inlined.3 (result i32)
    local.get $root
    local.set $root|15
    local.get $fl
    local.set $fl|16
    local.get $slMap
    i32.ctz
    local.set $sl|17
    local.get $root|15
    local.get $fl|16
    i32.const 4
    i32.shl
    local.get $sl|17
    i32.add
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=96
    br $~lib/rt/tlsf/GETHEAD|inlined.3
   end
   local.set $head
  end
  local.get $head
  return
 )
 (func $~lib/rt/tlsf/growMemory (param $root i32) (param $size i32)
  (local $pagesBefore i32)
  (local $root|3 i32)
  (local $pagesNeeded i32)
  (local $5 i32)
  (local $6 i32)
  (local $pagesWanted i32)
  (local $pagesAfter i32)
  i32.const 0
  drop
  local.get $size
  i32.const 256
  i32.ge_u
  if
   local.get $size
   call $~lib/rt/tlsf/roundSize
   local.set $size
  end
  memory.size
  local.set $pagesBefore
  local.get $size
  i32.const 4
  local.get $pagesBefore
  i32.const 16
  i32.shl
  i32.const 4
  i32.sub
  block $~lib/rt/tlsf/GETTAIL|inlined.1 (result i32)
   local.get $root
   local.set $root|3
   local.get $root|3
   i32.load offset=1568
   br $~lib/rt/tlsf/GETTAIL|inlined.1
  end
  i32.ne
  i32.shl
  i32.add
  local.set $size
  local.get $size
  i32.const 65535
  i32.add
  i32.const 65535
  i32.const -1
  i32.xor
  i32.and
  i32.const 16
  i32.shr_u
  local.set $pagesNeeded
  local.get $pagesBefore
  local.tee $5
  local.get $pagesNeeded
  local.tee $6
  local.get $5
  local.get $6
  i32.gt_s
  select
  local.set $pagesWanted
  local.get $pagesWanted
  memory.grow
  i32.const 0
  i32.lt_s
  if
   local.get $pagesNeeded
   memory.grow
   i32.const 0
   i32.lt_s
   if
    unreachable
   end
  end
  memory.size
  local.set $pagesAfter
  local.get $root
  local.get $pagesBefore
  i32.const 16
  i32.shl
  local.get $pagesAfter
  i64.extend_i32_s
  i64.const 16
  i64.shl
  call $~lib/rt/tlsf/addMemory
  drop
 )
 (func $~lib/rt/tlsf/prepareBlock (param $root i32) (param $block i32) (param $size i32)
  (local $blockInfo i32)
  (local $remaining i32)
  (local $spare i32)
  (local $block|6 i32)
  (local $block|7 i32)
  local.get $block
  call $~lib/rt/common/BLOCK#get:mmInfo
  local.set $blockInfo
  i32.const 1
  drop
  local.get $size
  i32.const 4
  i32.add
  i32.const 15
  i32.and
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 2208
   i32.const 361
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $blockInfo
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.get $size
  i32.sub
  local.set $remaining
  local.get $remaining
  i32.const 4
  i32.const 12
  i32.add
  i32.ge_u
  if
   local.get $block
   local.get $size
   local.get $blockInfo
   i32.const 2
   i32.and
   i32.or
   call $~lib/rt/common/BLOCK#set:mmInfo
   local.get $block
   i32.const 4
   i32.add
   local.get $size
   i32.add
   local.set $spare
   local.get $spare
   local.get $remaining
   i32.const 4
   i32.sub
   i32.const 1
   i32.or
   call $~lib/rt/common/BLOCK#set:mmInfo
   local.get $root
   local.get $spare
   call $~lib/rt/tlsf/insertBlock
  else
   local.get $block
   local.get $blockInfo
   i32.const 1
   i32.const -1
   i32.xor
   i32.and
   call $~lib/rt/common/BLOCK#set:mmInfo
   block $~lib/rt/tlsf/GETRIGHT|inlined.3 (result i32)
    local.get $block
    local.set $block|7
    local.get $block|7
    i32.const 4
    i32.add
    local.get $block|7
    call $~lib/rt/common/BLOCK#get:mmInfo
    i32.const 3
    i32.const -1
    i32.xor
    i32.and
    i32.add
    br $~lib/rt/tlsf/GETRIGHT|inlined.3
   end
   block $~lib/rt/tlsf/GETRIGHT|inlined.2 (result i32)
    local.get $block
    local.set $block|6
    local.get $block|6
    i32.const 4
    i32.add
    local.get $block|6
    call $~lib/rt/common/BLOCK#get:mmInfo
    i32.const 3
    i32.const -1
    i32.xor
    i32.and
    i32.add
    br $~lib/rt/tlsf/GETRIGHT|inlined.2
   end
   call $~lib/rt/common/BLOCK#get:mmInfo
   i32.const 2
   i32.const -1
   i32.xor
   i32.and
   call $~lib/rt/common/BLOCK#set:mmInfo
  end
 )
 (func $~lib/rt/tlsf/allocateBlock (param $root i32) (param $size i32) (result i32)
  (local $payloadSize i32)
  (local $block i32)
  local.get $size
  call $~lib/rt/tlsf/prepareSize
  local.set $payloadSize
  local.get $root
  local.get $payloadSize
  call $~lib/rt/tlsf/searchBlock
  local.set $block
  local.get $block
  i32.eqz
  if
   local.get $root
   local.get $payloadSize
   call $~lib/rt/tlsf/growMemory
   local.get $root
   local.get $payloadSize
   call $~lib/rt/tlsf/searchBlock
   local.set $block
   i32.const 1
   drop
   local.get $block
   i32.eqz
   if
    i32.const 0
    i32.const 2208
    i32.const 499
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
  end
  i32.const 1
  drop
  local.get $block
  call $~lib/rt/common/BLOCK#get:mmInfo
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.get $payloadSize
  i32.ge_u
  i32.eqz
  if
   i32.const 0
   i32.const 2208
   i32.const 501
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $root
  local.get $block
  call $~lib/rt/tlsf/removeBlock
  local.get $root
  local.get $block
  local.get $payloadSize
  call $~lib/rt/tlsf/prepareBlock
  i32.const 0
  drop
  local.get $block
  return
 )
 (func $~lib/rt/tlsf/__alloc (param $size i32) (result i32)
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  local.get $size
  call $~lib/rt/tlsf/allocateBlock
  i32.const 4
  i32.add
  return
 )
 (func $~lib/rt/itcms/Object#set:rtId (param $this i32) (param $rtId i32)
  local.get $this
  local.get $rtId
  i32.store offset=12
 )
 (func $~lib/rt/itcms/Object#set:rtSize (param $this i32) (param $rtSize i32)
  local.get $this
  local.get $rtSize
  i32.store offset=16
 )
 (func $~lib/rt/itcms/__new (param $size i32) (param $id i32) (result i32)
  (local $obj i32)
  (local $ptr i32)
  local.get $size
  i32.const 1073741804
  i32.ge_u
  if
   i32.const 1872
   i32.const 1936
   i32.const 261
   i32.const 31
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/itcms/total
  global.get $~lib/rt/itcms/threshold
  i32.ge_u
  if
   call $~lib/rt/itcms/interrupt
  end
  i32.const 16
  local.get $size
  i32.add
  call $~lib/rt/tlsf/__alloc
  i32.const 4
  i32.sub
  local.set $obj
  local.get $obj
  local.get $id
  call $~lib/rt/itcms/Object#set:rtId
  local.get $obj
  local.get $size
  call $~lib/rt/itcms/Object#set:rtSize
  local.get $obj
  global.get $~lib/rt/itcms/fromSpace
  global.get $~lib/rt/itcms/white
  call $~lib/rt/itcms/Object#linkTo
  global.get $~lib/rt/itcms/total
  local.get $obj
  call $~lib/rt/itcms/Object#get:size
  i32.add
  global.set $~lib/rt/itcms/total
  local.get $obj
  i32.const 20
  i32.add
  local.set $ptr
  local.get $ptr
  i32.const 0
  local.get $size
  memory.fill
  local.get $ptr
  return
 )
 (func $~lib/rt/itcms/__link (param $parentPtr i32) (param $childPtr i32) (param $expectMultiple i32)
  (local $child i32)
  (local $parent i32)
  (local $parentColor i32)
  local.get $childPtr
  i32.eqz
  if
   return
  end
  i32.const 1
  drop
  local.get $parentPtr
  i32.eqz
  if
   i32.const 0
   i32.const 1936
   i32.const 295
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $childPtr
  i32.const 20
  i32.sub
  local.set $child
  local.get $child
  call $~lib/rt/itcms/Object#get:color
  global.get $~lib/rt/itcms/white
  i32.eq
  if
   local.get $parentPtr
   i32.const 20
   i32.sub
   local.set $parent
   local.get $parent
   call $~lib/rt/itcms/Object#get:color
   local.set $parentColor
   local.get $parentColor
   global.get $~lib/rt/itcms/white
   i32.eqz
   i32.eq
   if
    local.get $expectMultiple
    if
     local.get $parent
     call $~lib/rt/itcms/Object#makeGray
    else
     local.get $child
     call $~lib/rt/itcms/Object#makeGray
    end
   else
    local.get $parentColor
    i32.const 3
    i32.eq
    if (result i32)
     global.get $~lib/rt/itcms/state
     i32.const 1
     i32.eq
    else
     i32.const 0
    end
    if
     local.get $child
     call $~lib/rt/itcms/Object#makeGray
    end
   end
  end
 )
 (func $~lib/staticarray/StaticArray<~lib/string/String>#__uset (param $this i32) (param $index i32) (param $value i32)
  local.get $this
  local.get $index
  i32.const 2
  i32.shl
  i32.add
  local.get $value
  i32.store
  i32.const 1
  drop
  local.get $this
  local.get $value
  i32.const 1
  call $~lib/rt/itcms/__link
 )
 (func $~lib/staticarray/StaticArray<~lib/string/String>#get:length (param $this i32) (result i32)
  local.get $this
  i32.const 20
  i32.sub
  call $~lib/rt/common/OBJECT#get:rtSize
  i32.const 2
  i32.shr_u
  return
 )
 (func $~lib/util/number/decimalCount32 (param $value i32) (result i32)
  local.get $value
  i32.const 100000
  i32.lt_u
  if
   local.get $value
   i32.const 100
   i32.lt_u
   if
    i32.const 1
    local.get $value
    i32.const 10
    i32.ge_u
    i32.add
    return
   else
    i32.const 3
    local.get $value
    i32.const 10000
    i32.ge_u
    i32.add
    local.get $value
    i32.const 1000
    i32.ge_u
    i32.add
    return
   end
   unreachable
  else
   local.get $value
   i32.const 10000000
   i32.lt_u
   if
    i32.const 6
    local.get $value
    i32.const 1000000
    i32.ge_u
    i32.add
    return
   else
    i32.const 8
    local.get $value
    i32.const 1000000000
    i32.ge_u
    i32.add
    local.get $value
    i32.const 100000000
    i32.ge_u
    i32.add
    return
   end
   unreachable
  end
  unreachable
 )
 (func $~lib/util/number/utoa32_dec_lut (param $buffer i32) (param $num i32) (param $offset i32)
  (local $t i32)
  (local $r i32)
  (local $d1 i32)
  (local $d2 i32)
  (local $digits1 i64)
  (local $digits2 i64)
  (local $t|9 i32)
  (local $d1|10 i32)
  (local $digits i32)
  (local $digits|12 i32)
  (local $digit i32)
  loop $while-continue|0
   local.get $num
   i32.const 10000
   i32.ge_u
   if
    local.get $num
    i32.const 10000
    i32.div_u
    local.set $t
    local.get $num
    i32.const 10000
    i32.rem_u
    local.set $r
    local.get $t
    local.set $num
    local.get $r
    i32.const 100
    i32.div_u
    local.set $d1
    local.get $r
    i32.const 100
    i32.rem_u
    local.set $d2
    i32.const 2700
    local.get $d1
    i32.const 2
    i32.shl
    i32.add
    i64.load32_u
    local.set $digits1
    i32.const 2700
    local.get $d2
    i32.const 2
    i32.shl
    i32.add
    i64.load32_u
    local.set $digits2
    local.get $offset
    i32.const 4
    i32.sub
    local.set $offset
    local.get $buffer
    local.get $offset
    i32.const 1
    i32.shl
    i32.add
    local.get $digits1
    local.get $digits2
    i64.const 32
    i64.shl
    i64.or
    i64.store
    br $while-continue|0
   end
  end
  local.get $num
  i32.const 100
  i32.ge_u
  if
   local.get $num
   i32.const 100
   i32.div_u
   local.set $t|9
   local.get $num
   i32.const 100
   i32.rem_u
   local.set $d1|10
   local.get $t|9
   local.set $num
   local.get $offset
   i32.const 2
   i32.sub
   local.set $offset
   i32.const 2700
   local.get $d1|10
   i32.const 2
   i32.shl
   i32.add
   i32.load
   local.set $digits
   local.get $buffer
   local.get $offset
   i32.const 1
   i32.shl
   i32.add
   local.get $digits
   i32.store
  end
  local.get $num
  i32.const 10
  i32.ge_u
  if
   local.get $offset
   i32.const 2
   i32.sub
   local.set $offset
   i32.const 2700
   local.get $num
   i32.const 2
   i32.shl
   i32.add
   i32.load
   local.set $digits|12
   local.get $buffer
   local.get $offset
   i32.const 1
   i32.shl
   i32.add
   local.get $digits|12
   i32.store
  else
   local.get $offset
   i32.const 1
   i32.sub
   local.set $offset
   i32.const 48
   local.get $num
   i32.add
   local.set $digit
   local.get $buffer
   local.get $offset
   i32.const 1
   i32.shl
   i32.add
   local.get $digit
   i32.store16
  end
 )
 (func $~lib/util/number/utoa_hex_lut (param $buffer i32) (param $num i64) (param $offset i32)
  loop $while-continue|0
   local.get $offset
   i32.const 2
   i32.ge_u
   if
    local.get $offset
    i32.const 2
    i32.sub
    local.set $offset
    local.get $buffer
    local.get $offset
    i32.const 1
    i32.shl
    i32.add
    i32.const 3120
    local.get $num
    i32.wrap_i64
    i32.const 255
    i32.and
    i32.const 2
    i32.shl
    i32.add
    i32.load
    i32.store
    local.get $num
    i64.const 8
    i64.shr_u
    local.set $num
    br $while-continue|0
   end
  end
  local.get $offset
  i32.const 1
  i32.and
  if
   local.get $buffer
   i32.const 3120
   local.get $num
   i32.wrap_i64
   i32.const 6
   i32.shl
   i32.add
   i32.load16_u
   i32.store16
  end
 )
 (func $~lib/util/number/ulog_base (param $num i64) (param $base i32) (result i32)
  (local $value i32)
  (local $b64 i64)
  (local $b i64)
  (local $e i32)
  block $~lib/util/number/isPowerOf2<i32>|inlined.0 (result i32)
   local.get $base
   local.set $value
   local.get $value
   i32.popcnt
   i32.const 1
   i32.eq
   br $~lib/util/number/isPowerOf2<i32>|inlined.0
  end
  if
   i32.const 63
   local.get $num
   i64.clz
   i32.wrap_i64
   i32.sub
   i32.const 31
   local.get $base
   i32.clz
   i32.sub
   i32.div_u
   i32.const 1
   i32.add
   return
  end
  local.get $base
  i64.extend_i32_s
  local.set $b64
  local.get $b64
  local.set $b
  i32.const 1
  local.set $e
  loop $while-continue|0
   local.get $num
   local.get $b
   i64.ge_u
   if
    local.get $num
    local.get $b
    i64.div_u
    local.set $num
    local.get $b
    local.get $b
    i64.mul
    local.set $b
    local.get $e
    i32.const 1
    i32.shl
    local.set $e
    br $while-continue|0
   end
  end
  loop $while-continue|1
   local.get $num
   i64.const 1
   i64.ge_u
   if
    local.get $num
    local.get $b64
    i64.div_u
    local.set $num
    local.get $e
    i32.const 1
    i32.add
    local.set $e
    br $while-continue|1
   end
  end
  local.get $e
  i32.const 1
  i32.sub
  return
 )
 (func $~lib/util/number/utoa64_any_core (param $buffer i32) (param $num i64) (param $offset i32) (param $radix i32)
  (local $base i64)
  (local $shift i64)
  (local $mask i64)
  (local $q i64)
  local.get $radix
  i64.extend_i32_s
  local.set $base
  local.get $radix
  local.get $radix
  i32.const 1
  i32.sub
  i32.and
  i32.const 0
  i32.eq
  if
   local.get $radix
   i32.ctz
   i32.const 7
   i32.and
   i64.extend_i32_s
   local.set $shift
   local.get $base
   i64.const 1
   i64.sub
   local.set $mask
   loop $do-loop|0
    local.get $offset
    i32.const 1
    i32.sub
    local.set $offset
    local.get $buffer
    local.get $offset
    i32.const 1
    i32.shl
    i32.add
    i32.const 4176
    local.get $num
    local.get $mask
    i64.and
    i32.wrap_i64
    i32.const 1
    i32.shl
    i32.add
    i32.load16_u
    i32.store16
    local.get $num
    local.get $shift
    i64.shr_u
    local.set $num
    local.get $num
    i64.const 0
    i64.ne
    br_if $do-loop|0
   end
  else
   loop $do-loop|1
    local.get $offset
    i32.const 1
    i32.sub
    local.set $offset
    local.get $num
    local.get $base
    i64.div_u
    local.set $q
    local.get $buffer
    local.get $offset
    i32.const 1
    i32.shl
    i32.add
    i32.const 4176
    local.get $num
    local.get $q
    local.get $base
    i64.mul
    i64.sub
    i32.wrap_i64
    i32.const 1
    i32.shl
    i32.add
    i32.load16_u
    i32.store16
    local.get $q
    local.set $num
    local.get $num
    i64.const 0
    i64.ne
    br_if $do-loop|1
   end
  end
 )
 (func $~lib/number/I32#toString (param $this i32) (param $radix i32) (result i32)
  local.get $this
  local.get $radix
  call $~lib/util/number/itoa32
  return
 )
 (func $~lib/polyfills/bswap<u64> (param $value i64) (result i64)
  (local $a i64)
  (local $b i64)
  (local $v i64)
  i32.const 1
  drop
  i32.const 8
  i32.const 1
  i32.eq
  drop
  i32.const 8
  i32.const 2
  i32.eq
  drop
  i32.const 8
  i32.const 4
  i32.eq
  drop
  i32.const 8
  i32.const 8
  i32.eq
  drop
  local.get $value
  i64.const 8
  i64.shr_u
  i64.const 71777214294589695
  i64.and
  local.set $a
  local.get $value
  i64.const 71777214294589695
  i64.and
  i64.const 8
  i64.shl
  local.set $b
  local.get $a
  local.get $b
  i64.or
  local.set $v
  local.get $v
  i64.const 16
  i64.shr_u
  i64.const 281470681808895
  i64.and
  local.set $a
  local.get $v
  i64.const 281470681808895
  i64.and
  i64.const 16
  i64.shl
  local.set $b
  local.get $a
  local.get $b
  i64.or
  i64.const 32
  i64.rotr
  return
 )
 (func $~lib/util/dtoa/toBcd8 (param $abcdefgh i64)
  (local $abcd_efgh i64)
  (local $ab_cd_ef_gh i64)
  (local $a_b_c_d_e_f_g_h i64)
  (local $bcd i64)
  local.get $abcdefgh
  global.get $~lib/util/dtoa/NEG10K
  local.get $abcdefgh
  global.get $~lib/util/dtoa/DIV10K_SIG
  i64.mul
  global.get $~lib/util/dtoa/DIV10K_EXP
  i64.extend_i32_s
  i64.shr_u
  i64.mul
  i64.add
  local.set $abcd_efgh
  local.get $abcd_efgh
  global.get $~lib/util/dtoa/NEG100
  local.get $abcd_efgh
  global.get $~lib/util/dtoa/DIV100_SIG
  i64.mul
  global.get $~lib/util/dtoa/DIV100_EXP
  i64.extend_i32_s
  i64.shr_u
  i64.const 545460846719
  i64.and
  i64.mul
  i64.add
  local.set $ab_cd_ef_gh
  local.get $ab_cd_ef_gh
  global.get $~lib/util/dtoa/NEG10
  local.get $ab_cd_ef_gh
  global.get $~lib/util/dtoa/DIV10_SIG
  i64.mul
  global.get $~lib/util/dtoa/DIV10_EXP
  i64.extend_i32_s
  i64.shr_u
  i64.const 4222189076152335
  i64.and
  i64.mul
  i64.add
  local.set $a_b_c_d_e_f_g_h
  local.get $a_b_c_d_e_f_g_h
  call $~lib/polyfills/bswap<u64>
  local.set $bcd
  local.get $bcd
  global.set $~lib/util/dtoa/gBcd
  i32.const 70
  i64.extend_i32_s
  local.get $bcd
  i64.const 1
  i64.shl
  i64.const 1
  i64.or
  i64.clz
  i64.sub
  i64.const 8
  i64.div_u
  i32.wrap_i64
  global.set $~lib/util/dtoa/gBcdLen
 )
 (func $~lib/util/dtoa/dtoa_buffered (param $buffer i32) (param $value f64) (result i32)
  (local $buf i32)
  (local $value|3 f64)
  (local $bits i64)
  (local $binExp i32)
  (local $binSig i64)
  (local $buf|7 i32)
  (local $bits|8 i64)
  (local $binExp|9 i32)
  (local $binSig|10 i64)
  (local $neg i32)
  (local $isNormal i32)
  (local $buf|13 i32)
  (local $buf|14 i32)
  (local $neg|15 i32)
  (local $p i32)
  (local $ascii i64)
  (local $off i32)
  (local $base i32)
  (local $q i32)
  (local $c i64)
  (local $intValue i64)
  (local $shift i32)
  (local $mask i64)
  (local $buf|25 i32)
  (local $value|26 i64)
  (local $v i64)
  (local $v|28 i64)
  (local $len i32)
  (local $p|30 i32)
  (local $v|31 i64)
  (local $q|32 i64)
  (local $binSig|33 i64)
  (local $rawExp i32)
  (local $regular i32)
  (local $c|36 i64)
  (local $q|37 i32)
  (local $decExp i32)
  (local $powExp i32)
  (local $h i32)
  (local $power i32)
  (local $i i32)
  (local $m i64)
  (local $hoff i32)
  (local $hHi i64)
  (local $hLo i64)
  (local $a i64)
  (local $b i64)
  (local $a0 i64)
  (local $a1 i64)
  (local $b0 i64)
  (local $b1 i64)
  (local $w0 i64)
  (local $t i64)
  (local $w1 i64)
  (local $w2 i64)
  (local $h1 i64)
  (local $c0 i64)
  (local $c1 i64)
  (local $a|60 i64)
  (local $b|61 i64)
  (local $a0|62 i64)
  (local $a1|63 i64)
  (local $b0|64 i64)
  (local $b1|65 i64)
  (local $w0|66 i64)
  (local $t|67 i64)
  (local $w1|68 i64)
  (local $w2|69 i64)
  (local $c2 i64)
  (local $hi i64)
  (local $lo i64)
  (local $pow10Hi i64)
  (local $integral i64)
  (local $halfUlp i64)
  (local $dotOne i64)
  (local $one i64)
  (local $integral|78 i64)
  (local $one|79 i64)
  (local $decExp|80 i32)
  (local $decExp|81 i32)
  (local $powExp|82 i32)
  (local $h|83 i32)
  (local $shift|84 i32)
  (local $power|85 i32)
  (local $i|86 i32)
  (local $m|87 i64)
  (local $hoff|88 i32)
  (local $hHi|89 i64)
  (local $hLo|90 i64)
  (local $a|91 i64)
  (local $b|92 i64)
  (local $a0|93 i64)
  (local $a1|94 i64)
  (local $b0|95 i64)
  (local $b1|96 i64)
  (local $w0|97 i64)
  (local $t|98 i64)
  (local $w1|99 i64)
  (local $w2|100 i64)
  (local $h1|101 i64)
  (local $c0|102 i64)
  (local $c1|103 i64)
  (local $a|104 i64)
  (local $b|105 i64)
  (local $a0|106 i64)
  (local $a1|107 i64)
  (local $b0|108 i64)
  (local $b1|109 i64)
  (local $w0|110 i64)
  (local $t|111 i64)
  (local $w1|112 i64)
  (local $w2|113 i64)
  (local $c2|114 i64)
  (local $hi|115 i64)
  (local $lo|116 i64)
  (local $pHi i64)
  (local $pLo i64)
  (local $y i64)
  (local $a|120 i64)
  (local $b|121 i64)
  (local $a0|122 i64)
  (local $a1|123 i64)
  (local $b0|124 i64)
  (local $b1|125 i64)
  (local $w0|126 i64)
  (local $t|127 i64)
  (local $w1|128 i64)
  (local $w2|129 i64)
  (local $a|130 i64)
  (local $plo64 i64)
  (local $a|132 i64)
  (local $b|133 i64)
  (local $a0|134 i64)
  (local $a1|135 i64)
  (local $b0|136 i64)
  (local $b1|137 i64)
  (local $w0|138 i64)
  (local $t|139 i64)
  (local $w1|140 i64)
  (local $w2|141 i64)
  (local $lo|142 i64)
  (local $p_hi i64)
  (local $integral|144 i64)
  (local $dotOne|145 i64)
  (local $halfUlp|146 i64)
  (local $x i64)
  (local $y|148 i64)
  (local $c|149 i64)
  (local $lo|150 i64)
  (local $a|151 i64)
  (local $b|152 i64)
  (local $a0|153 i64)
  (local $a1|154 i64)
  (local $b0|155 i64)
  (local $b1|156 i64)
  (local $w0|157 i64)
  (local $t|158 i64)
  (local $w1|159 i64)
  (local $w2|160 i64)
  (local $hi|161 i64)
  (local $one|162 i64)
  (local $integral|163 i64)
  (local $one|164 i64)
  (local $decExp|165 i32)
  (local $binSig|166 i64)
  (local $rawExp|167 i32)
  (local $regular|168 i32)
  (local $binSig|169 i64)
  (local $rawExp|170 i32)
  (local $regular|171 i32)
  (local $c|172 i64)
  (local $q|173 i32)
  (local $decExp|174 i32)
  (local $powExp|175 i32)
  (local $h|176 i32)
  (local $power|177 i32)
  (local $i|178 i32)
  (local $m|179 i64)
  (local $hoff|180 i32)
  (local $hHi|181 i64)
  (local $hLo|182 i64)
  (local $a|183 i64)
  (local $b|184 i64)
  (local $a0|185 i64)
  (local $a1|186 i64)
  (local $b0|187 i64)
  (local $b1|188 i64)
  (local $w0|189 i64)
  (local $t|190 i64)
  (local $w1|191 i64)
  (local $w2|192 i64)
  (local $h1|193 i64)
  (local $c0|194 i64)
  (local $c1|195 i64)
  (local $a|196 i64)
  (local $b|197 i64)
  (local $a0|198 i64)
  (local $a1|199 i64)
  (local $b0|200 i64)
  (local $b1|201 i64)
  (local $w0|202 i64)
  (local $t|203 i64)
  (local $w1|204 i64)
  (local $w2|205 i64)
  (local $c2|206 i64)
  (local $hi|207 i64)
  (local $lo|208 i64)
  (local $pow10Hi|209 i64)
  (local $integral|210 i64)
  (local $halfUlp|211 i64)
  (local $dotOne|212 i64)
  (local $one|213 i64)
  (local $integral|214 i64)
  (local $one|215 i64)
  (local $decExp|216 i32)
  (local $decExp|217 i32)
  (local $powExp|218 i32)
  (local $h|219 i32)
  (local $shift|220 i32)
  (local $power|221 i32)
  (local $i|222 i32)
  (local $m|223 i64)
  (local $hoff|224 i32)
  (local $hHi|225 i64)
  (local $hLo|226 i64)
  (local $a|227 i64)
  (local $b|228 i64)
  (local $a0|229 i64)
  (local $a1|230 i64)
  (local $b0|231 i64)
  (local $b1|232 i64)
  (local $w0|233 i64)
  (local $t|234 i64)
  (local $w1|235 i64)
  (local $w2|236 i64)
  (local $h1|237 i64)
  (local $c0|238 i64)
  (local $c1|239 i64)
  (local $a|240 i64)
  (local $b|241 i64)
  (local $a0|242 i64)
  (local $a1|243 i64)
  (local $b0|244 i64)
  (local $b1|245 i64)
  (local $w0|246 i64)
  (local $t|247 i64)
  (local $w1|248 i64)
  (local $w2|249 i64)
  (local $c2|250 i64)
  (local $hi|251 i64)
  (local $lo|252 i64)
  (local $pHi|253 i64)
  (local $pLo|254 i64)
  (local $y|255 i64)
  (local $a|256 i64)
  (local $b|257 i64)
  (local $a0|258 i64)
  (local $a1|259 i64)
  (local $b0|260 i64)
  (local $b1|261 i64)
  (local $w0|262 i64)
  (local $t|263 i64)
  (local $w1|264 i64)
  (local $w2|265 i64)
  (local $a|266 i64)
  (local $plo64|267 i64)
  (local $a|268 i64)
  (local $b|269 i64)
  (local $a0|270 i64)
  (local $a1|271 i64)
  (local $b0|272 i64)
  (local $b1|273 i64)
  (local $w0|274 i64)
  (local $t|275 i64)
  (local $w1|276 i64)
  (local $w2|277 i64)
  (local $lo|278 i64)
  (local $p_hi|279 i64)
  (local $integral|280 i64)
  (local $dotOne|281 i64)
  (local $halfUlp|282 i64)
  (local $x|283 i64)
  (local $y|284 i64)
  (local $c|285 i64)
  (local $lo|286 i64)
  (local $a|287 i64)
  (local $b|288 i64)
  (local $a0|289 i64)
  (local $a1|290 i64)
  (local $b0|291 i64)
  (local $b1|292 i64)
  (local $w0|293 i64)
  (local $t|294 i64)
  (local $w1|295 i64)
  (local $w2|296 i64)
  (local $hi|297 i64)
  (local $one|298 i64)
  (local $integral|299 i64)
  (local $one|300 i64)
  (local $decExp|301 i32)
  (local $binExp|302 i32)
  (local $decExp|303 i32)
  (local $binExp|304 i32)
  (local $decExp|305 i32)
  (local $pow10BinExp i32)
  (local $shift|307 i32)
  (local $power|308 i32)
  (local $i|309 i32)
  (local $m|310 i64)
  (local $hoff|311 i32)
  (local $hHi|312 i64)
  (local $hLo|313 i64)
  (local $a|314 i64)
  (local $b|315 i64)
  (local $a0|316 i64)
  (local $a1|317 i64)
  (local $b0|318 i64)
  (local $b1|319 i64)
  (local $w0|320 i64)
  (local $t|321 i64)
  (local $w1|322 i64)
  (local $w2|323 i64)
  (local $h1|324 i64)
  (local $c0|325 i64)
  (local $c1|326 i64)
  (local $a|327 i64)
  (local $b|328 i64)
  (local $a0|329 i64)
  (local $a1|330 i64)
  (local $b0|331 i64)
  (local $b1|332 i64)
  (local $w0|333 i64)
  (local $t|334 i64)
  (local $w1|335 i64)
  (local $w2|336 i64)
  (local $c2|337 i64)
  (local $hi|338 i64)
  (local $lo|339 i64)
  (local $pHi|340 i64)
  (local $pLo|341 i64)
  (local $y|342 i64)
  (local $a|343 i64)
  (local $b|344 i64)
  (local $a0|345 i64)
  (local $a1|346 i64)
  (local $b0|347 i64)
  (local $b1|348 i64)
  (local $w0|349 i64)
  (local $t|350 i64)
  (local $w1|351 i64)
  (local $w2|352 i64)
  (local $a|353 i64)
  (local $plo64|354 i64)
  (local $a|355 i64)
  (local $b|356 i64)
  (local $a0|357 i64)
  (local $a1|358 i64)
  (local $b0|359 i64)
  (local $b1|360 i64)
  (local $w0|361 i64)
  (local $t|362 i64)
  (local $w1|363 i64)
  (local $w2|364 i64)
  (local $lo|365 i64)
  (local $p_hi|366 i64)
  (local $integral|367 i64)
  (local $dotOne|368 i64)
  (local $halfUlp|369 i64)
  (local $x|370 i64)
  (local $y|371 i64)
  (local $c|372 i64)
  (local $lo|373 i64)
  (local $a|374 i64)
  (local $b|375 i64)
  (local $a0|376 i64)
  (local $a1|377 i64)
  (local $b0|378 i64)
  (local $b1|379 i64)
  (local $w0|380 i64)
  (local $t|381 i64)
  (local $w1|382 i64)
  (local $w2|383 i64)
  (local $hi|384 i64)
  (local $one|385 i64)
  (local $integral|386 i64)
  (local $one|387 i64)
  (local $decExp|388 i32)
  (local $full i64)
  (local $v|390 i64)
  (local $scale i32)
  (local $mul i64)
  (local $hasLastDigit i32)
  (local $hasExtraDigit i32)
  (local $decExp|395 i32)
  (local $start i32)
  (local $value|397 i64)
  (local $value|398 i64)
  (local $hi|399 i64)
  (local $lo|400 i64)
  (local $hiBcd i64)
  (local $hiLen i32)
  (local $buf|403 i32)
  (local $start|404 i32)
  (local $decExp|405 i32)
  (local $hasLastDigit|406 i32)
  (local $p|407 i32)
  (local $ascii|408 i64)
  (local $off|409 i32)
  (local $base|410 i32)
  (local $lastDigitChar i64)
  (local $numDigits i32)
  (local $dHi i64)
  (local $dLo i64)
  (local $p|415 i32)
  (local $ascii|416 i64)
  (local $off|417 i32)
  (local $base|418 i32)
  (local $p|419 i32)
  (local $ascii|420 i64)
  (local $off|421 i32)
  (local $base|422 i32)
  (local $endByte i32)
  (local $z i32)
  (local $p|425 i32)
  (local $ascii|426 i64)
  (local $off|427 i32)
  (local $base|428 i32)
  (local $n i32)
  (local $endPos i32)
  (local $startPos i32)
  (local $p|432 i32)
  (local $ascii|433 i64)
  (local $off|434 i32)
  (local $base|435 i32)
  (local $p|436 i32)
  (local $ascii|437 i64)
  (local $off|438 i32)
  (local $base|439 i32)
  (local $k i32)
  (local $d16 i64)
  (local $s i32)
  (local $fHi i64)
  (local $fLo i64)
  (local $s2 i32)
  (local $p|446 i32)
  (local $ascii|447 i64)
  (local $off|448 i32)
  (local $base|449 i32)
  (local $p|450 i32)
  (local $ascii|451 i64)
  (local $off|452 i32)
  (local $base|453 i32)
  (local $buf|454 i32)
  (local $start|455 i32)
  (local $decExp|456 i32)
  (local $hasLastDigit|457 i32)
  (local $hasExtraDigit|458 i32)
  (local $bcdSize i32)
  (local $p|460 i32)
  (local $ascii|461 i64)
  (local $off|462 i32)
  (local $base|463 i32)
  (local $p|464 i32)
  (local $ascii|465 i64)
  (local $off|466 i32)
  (local $base|467 i32)
  (local $lead i32)
  (local $buf|469 i32)
  (local $decExp|470 i32)
  (local $m|471 i32)
  (local $e i32)
  (local $d i32)
  block $~lib/util/dtoa/formatDouble|inlined.0 (result i32)
   local.get $buffer
   local.set $buf
   local.get $value
   local.set $value|3
   local.get $value|3
   i64.reinterpret_f64
   local.set $bits
   local.get $bits
   i64.const 1
   i64.shl
   i64.const 53
   i64.shr_u
   i32.wrap_i64
   local.set $binExp
   local.get $bits
   i64.const 1
   i64.const 52
   i64.shl
   i64.const 1
   i64.sub
   i64.and
   local.set $binSig
   block $~lib/util/dtoa/formatDecodedDouble|inlined.0 (result i32)
    local.get $buf
    local.set $buf|7
    local.get $bits
    local.set $bits|8
    local.get $binExp
    local.set $binExp|9
    local.get $binSig
    local.set $binSig|10
    local.get $bits|8
    i64.const 63
    i64.shr_u
    i64.const 0
    i64.ne
    local.set $neg
    local.get $binExp|9
    i32.const 1
    i32.sub
    i32.const 2046
    i32.lt_u
    local.set $isNormal
    local.get $isNormal
    i32.eqz
    if
     local.get $binExp|9
     i32.const 0
     i32.ne
     if
      local.get $binSig|10
      i64.const 0
      i64.ne
      if
       block $~lib/util/dtoa/writeNaN|inlined.0 (result i32)
        local.get $buf|7
        local.set $buf|13
        local.get $buf|13
        i32.const 78
        i32.store16
        local.get $buf|13
        i32.const 97
        i32.store16 offset=2
        local.get $buf|13
        i32.const 78
        i32.store16 offset=4
        local.get $buf|13
        i32.const 6
        i32.add
        br $~lib/util/dtoa/writeNaN|inlined.0
       end
       br $~lib/util/dtoa/formatDecodedDouble|inlined.0
      end
      block $~lib/util/dtoa/writeInfinity|inlined.0 (result i32)
       local.get $buf|7
       local.set $buf|14
       local.get $neg
       local.set $neg|15
       local.get $neg|15
       if
        local.get $buf|14
        i32.const 45
        i32.store16
        local.get $buf|14
        i32.const 2
        i32.add
        local.set $buf|14
       end
       local.get $buf|14
       local.set $p
       i64.const 8751735898823355977
       local.set $ascii
       i32.const 0
       local.set $off
       local.get $p
       local.get $off
       i32.add
       local.set $base
       i32.const 0
       drop
       local.get $base
       local.get $ascii
       i64.const 255
       i64.and
       i32.wrap_i64
       i32.store16
       local.get $base
       local.get $ascii
       i64.const 8
       i64.shr_u
       i64.const 255
       i64.and
       i32.wrap_i64
       i32.store16 offset=2
       local.get $base
       local.get $ascii
       i64.const 16
       i64.shr_u
       i64.const 255
       i64.and
       i32.wrap_i64
       i32.store16 offset=4
       local.get $base
       local.get $ascii
       i64.const 24
       i64.shr_u
       i64.const 255
       i64.and
       i32.wrap_i64
       i32.store16 offset=6
       local.get $base
       local.get $ascii
       i64.const 32
       i64.shr_u
       i64.const 255
       i64.and
       i32.wrap_i64
       i32.store16 offset=8
       local.get $base
       local.get $ascii
       i64.const 40
       i64.shr_u
       i64.const 255
       i64.and
       i32.wrap_i64
       i32.store16 offset=10
       local.get $base
       local.get $ascii
       i64.const 48
       i64.shr_u
       i64.const 255
       i64.and
       i32.wrap_i64
       i32.store16 offset=12
       local.get $base
       local.get $ascii
       i64.const 56
       i64.shr_u
       i32.wrap_i64
       i32.store16 offset=14
       local.get $buf|14
       i32.const 16
       i32.add
       br $~lib/util/dtoa/writeInfinity|inlined.0
      end
      br $~lib/util/dtoa/formatDecodedDouble|inlined.0
     end
     local.get $binSig|10
     i64.const 0
     i64.eq
     if
      local.get $buf|7
      i32.const 48
      i32.store16
      local.get $buf|7
      i32.const 2
      i32.add
      br $~lib/util/dtoa/formatDecodedDouble|inlined.0
     end
    end
    local.get $neg
    if
     local.get $buf|7
     i32.const 45
     i32.store16
     local.get $buf|7
     i32.const 2
     i32.add
     local.set $buf|7
    end
    local.get $isNormal
    if
     local.get $binExp|9
     global.get $~lib/util/dtoa/DOUBLE_EXP_OFFSET
     i32.sub
     local.set $q
     local.get $binSig|10
     i64.const 1
     i64.const 52
     i64.shl
     i64.or
     local.set $c
     i64.const 0
     local.set $intValue
     local.get $q
     i32.const 0
     i32.lt_s
     if
      i32.const 0
      local.get $q
      i32.sub
      local.set $shift
      local.get $shift
      i32.const 52
      i32.le_s
      if
       i64.const 1
       local.get $shift
       i64.extend_i32_s
       i64.shl
       i64.const 1
       i64.sub
       local.set $mask
       local.get $c
       local.get $mask
       i64.and
       i64.const 0
       i64.eq
       if
        local.get $c
        local.get $shift
        i64.extend_i32_s
        i64.shr_u
        local.set $intValue
       end
      end
     else
      local.get $q
      i32.const 11
      i32.lt_s
      if
       local.get $c
       local.get $q
       i64.extend_i32_s
       i64.shl
       local.set $intValue
       local.get $intValue
       i64.const 10000000000000000
       i64.ge_u
       if
        i64.const 0
        local.set $intValue
       end
      end
     end
     local.get $intValue
     i64.const 0
     i64.ne
     if
      block $~lib/util/dtoa/writeUInt16|inlined.0 (result i32)
       local.get $buf|7
       local.set $buf|25
       local.get $intValue
       local.set $value|26
       block $~lib/util/dtoa/decimalLen16|inlined.0 (result i32)
        local.get $value|26
        local.set $v
        local.get $v
        i64.const 1000000000000000
        i64.lt_u
        if (result i32)
         block $~lib/util/dtoa/decimalLen15|inlined.0 (result i32)
          local.get $v
          local.set $v|28
          local.get $v|28
          i64.const 100000000
          i64.lt_u
          if
           local.get $v|28
           i64.const 10000
           i64.lt_u
           if
            local.get $v|28
            i64.const 100
            i64.lt_u
            if
             local.get $v|28
             i64.const 10
             i64.lt_u
             if (result i32)
              i32.const 1
             else
              i32.const 2
             end
             br $~lib/util/dtoa/decimalLen15|inlined.0
            end
            local.get $v|28
            i64.const 1000
            i64.lt_u
            if (result i32)
             i32.const 3
            else
             i32.const 4
            end
            br $~lib/util/dtoa/decimalLen15|inlined.0
           end
           local.get $v|28
           i64.const 1000000
           i64.lt_u
           if
            local.get $v|28
            i64.const 100000
            i64.lt_u
            if (result i32)
             i32.const 5
            else
             i32.const 6
            end
            br $~lib/util/dtoa/decimalLen15|inlined.0
           end
           local.get $v|28
           i64.const 10000000
           i64.lt_u
           if (result i32)
            i32.const 7
           else
            i32.const 8
           end
           br $~lib/util/dtoa/decimalLen15|inlined.0
          end
          local.get $v|28
          i64.const 1000000000000
          i64.lt_u
          if
           local.get $v|28
           i64.const 10000000000
           i64.lt_u
           if
            local.get $v|28
            i64.const 1000000000
            i64.lt_u
            if (result i32)
             i32.const 9
            else
             i32.const 10
            end
            br $~lib/util/dtoa/decimalLen15|inlined.0
           end
           local.get $v|28
           i64.const 100000000000
           i64.lt_u
           if (result i32)
            i32.const 11
           else
            i32.const 12
           end
           br $~lib/util/dtoa/decimalLen15|inlined.0
          end
          local.get $v|28
          i64.const 100000000000000
          i64.lt_u
          if
           local.get $v|28
           i64.const 10000000000000
           i64.lt_u
           if (result i32)
            i32.const 13
           else
            i32.const 14
           end
           br $~lib/util/dtoa/decimalLen15|inlined.0
          end
          i32.const 15
          br $~lib/util/dtoa/decimalLen15|inlined.0
         end
        else
         i32.const 16
        end
        br $~lib/util/dtoa/decimalLen16|inlined.0
       end
       local.set $len
       local.get $buf|25
       local.get $len
       i32.const 1
       i32.shl
       i32.add
       local.set $p|30
       local.get $value|26
       local.set $v|31
       loop $while-continue|0
        local.get $v|31
        i64.const 100
        i64.ge_u
        if
         local.get $v|31
         i64.const 100
         i64.div_u
         local.set $q|32
         local.get $p|30
         i32.const 4
         i32.sub
         local.set $p|30
         local.get $p|30
         i32.const 2700
         local.get $v|31
         local.get $q|32
         i64.const 100
         i64.mul
         i64.sub
         i32.wrap_i64
         i32.const 2
         i32.shl
         i32.add
         i32.load
         i32.store
         local.get $q|32
         local.set $v|31
         br $while-continue|0
        end
       end
       local.get $v|31
       i64.const 10
       i64.ge_u
       if
        local.get $buf|25
        i32.const 2700
        local.get $v|31
        i32.wrap_i64
        i32.const 2
        i32.shl
        i32.add
        i32.load
        i32.store
       else
        local.get $buf|25
        i32.const 48
        local.get $v|31
        i32.wrap_i64
        i32.add
        i32.store16
       end
       local.get $buf|25
       local.get $len
       i32.const 1
       i32.shl
       i32.add
       br $~lib/util/dtoa/writeUInt16|inlined.0
      end
      br $~lib/util/dtoa/formatDecodedDouble|inlined.0
     end
    end
    local.get $isNormal
    if
     block $~lib/util/dtoa/toDecimalDoubleNormal|inlined.0
      local.get $binSig|10
      local.set $binSig|33
      local.get $binExp|9
      local.set $rawExp
      local.get $binSig|10
      i64.const 0
      i64.ne
      local.set $regular
      local.get $binSig|33
      i64.const 1
      i64.const 52
      i64.shl
      i64.or
      local.set $c|36
      local.get $rawExp
      global.get $~lib/util/dtoa/DOUBLE_EXP_OFFSET
      i32.sub
      local.set $q|37
      local.get $regular
      i32.eqz
      if
       local.get $q|37
       i32.const 315653
       i32.mul
       i32.const 131072
       i32.sub
       i32.const 20
       i32.shr_s
       local.set $decExp
       i32.const 0
       local.get $decExp
       i32.sub
       i32.const 1
       i32.sub
       local.set $powExp
       local.get $q|37
       local.get $powExp
       i32.const 217707
       i32.mul
       i32.const 16
       i32.shr_s
       i32.add
       local.set $h
       block $~lib/util/dtoa/loadPow10HiXjb64|inlined.0 (result i64)
        local.get $powExp
        local.set $power
        local.get $power
        i32.const 293
        i32.add
        local.set $i
        global.get $~lib/util/dtoa/POW10_MINOR
        local.get $i
        i32.const 10
        i32.add
        i32.const 28
        i32.rem_s
        i32.const 3
        i32.shl
        i32.add
        i64.load
        local.set $m
        global.get $~lib/util/dtoa/POW10_MAJOR
        local.get $i
        i32.const 10
        i32.add
        i32.const 28
        i32.div_s
        i32.const 4
        i32.shl
        i32.add
        local.set $hoff
        local.get $hoff
        i64.load
        local.set $hHi
        local.get $hoff
        i64.load offset=8
        local.set $hLo
        block $~lib/util/dtoa/mulhi64|inlined.0 (result i64)
         local.get $hLo
         local.set $a
         local.get $m
         local.set $b
         local.get $a
         i64.const 4294967295
         i64.and
         local.set $a0
         local.get $a
         i64.const 32
         i64.shr_u
         local.set $a1
         local.get $b
         i64.const 4294967295
         i64.and
         local.set $b0
         local.get $b
         i64.const 32
         i64.shr_u
         local.set $b1
         local.get $a0
         local.get $b0
         i64.mul
         local.set $w0
         local.get $a1
         local.get $b0
         i64.mul
         local.get $w0
         i64.const 32
         i64.shr_u
         i64.add
         local.set $t
         local.get $t
         i64.const 4294967295
         i64.and
         local.set $w1
         local.get $t
         i64.const 32
         i64.shr_u
         local.set $w2
         local.get $a0
         local.get $b1
         i64.mul
         local.get $w1
         i64.add
         local.set $w1
         local.get $a1
         local.get $b1
         i64.mul
         local.get $w2
         i64.add
         local.get $w1
         i64.const 32
         i64.shr_u
         i64.add
         br $~lib/util/dtoa/mulhi64|inlined.0
        end
        local.set $h1
        local.get $hLo
        local.get $m
        i64.mul
        local.set $c0
        local.get $h1
        local.get $hHi
        local.get $m
        i64.mul
        i64.add
        local.set $c1
        local.get $c1
        local.get $h1
        i64.lt_u
        i64.extend_i32_u
        block $~lib/util/dtoa/mulhi64|inlined.1 (result i64)
         local.get $hHi
         local.set $a|60
         local.get $m
         local.set $b|61
         local.get $a|60
         i64.const 4294967295
         i64.and
         local.set $a0|62
         local.get $a|60
         i64.const 32
         i64.shr_u
         local.set $a1|63
         local.get $b|61
         i64.const 4294967295
         i64.and
         local.set $b0|64
         local.get $b|61
         i64.const 32
         i64.shr_u
         local.set $b1|65
         local.get $a0|62
         local.get $b0|64
         i64.mul
         local.set $w0|66
         local.get $a1|63
         local.get $b0|64
         i64.mul
         local.get $w0|66
         i64.const 32
         i64.shr_u
         i64.add
         local.set $t|67
         local.get $t|67
         i64.const 4294967295
         i64.and
         local.set $w1|68
         local.get $t|67
         i64.const 32
         i64.shr_u
         local.set $w2|69
         local.get $a0|62
         local.get $b1|65
         i64.mul
         local.get $w1|68
         i64.add
         local.set $w1|68
         local.get $a1|63
         local.get $b1|65
         i64.mul
         local.get $w2|69
         i64.add
         local.get $w1|68
         i64.const 32
         i64.shr_u
         i64.add
         br $~lib/util/dtoa/mulhi64|inlined.1
        end
        i64.add
        local.set $c2
        local.get $c2
        i64.const 63
        i64.shr_u
        i64.const 0
        i64.ne
        if
         local.get $c2
         local.set $hi
         local.get $c1
         local.set $lo
        else
         local.get $c2
         i64.const 1
         i64.shl
         local.get $c1
         i64.const 63
         i64.shr_u
         i64.or
         local.set $hi
         local.get $c1
         i64.const 1
         i64.shl
         local.get $c0
         i64.const 63
         i64.shr_u
         i64.or
         local.set $lo
        end
        local.get $lo
        global.get $~lib/util/dtoa/POW10_FIXUPS
        local.get $i
        i32.const 5
        i32.shr_s
        i32.const 2
        i32.shl
        i32.add
        i64.load32_u
        local.get $i
        i32.const 31
        i32.and
        i64.extend_i32_s
        i64.shr_u
        i64.const 1
        i64.and
        i64.sub
        local.set $lo
        local.get $hi
        global.set $~lib/util/dtoa/gPow10Hi
        local.get $lo
        global.set $~lib/util/dtoa/gPow10Lo
        global.get $~lib/util/dtoa/gPow10Hi
        br $~lib/util/dtoa/loadPow10HiXjb64|inlined.0
       end
       local.set $pow10Hi
       local.get $pow10Hi
       i64.const 11
       local.get $h
       i64.extend_i32_s
       i64.sub
       i64.shr_u
       local.set $integral
       local.get $pow10Hi
       i32.const 0
       local.get $h
       i32.sub
       i64.extend_i32_s
       i64.shr_u
       local.set $halfUlp
       local.get $pow10Hi
       i64.const 53
       local.get $h
       i64.extend_i32_s
       i64.add
       i64.shl
       local.set $dotOne
       local.get $dotOne
       i64.const 53
       local.get $h
       i64.extend_i32_s
       i64.add
       i64.shr_u
       i64.const 5
       i64.mul
       i64.const 1
       i64.const 9
       local.get $h
       i64.extend_i32_s
       i64.sub
       i64.shl
       i64.add
       i64.const 10
       local.get $h
       i64.extend_i32_s
       i64.sub
       i64.shr_u
       local.set $one
       local.get $dotOne
       i64.const 54
       i64.shr_u
       i64.const 5
       i64.mul
       i64.const 511
       i64.and
       local.get $halfUlp
       i64.const 55
       i64.shr_u
       i64.const 5
       i64.mul
       i64.gt_u
       if (result i64)
        local.get $dotOne
        i64.const 54
        i64.shr_u
        i64.const 5
        i64.mul
        i64.const 9
        i64.shr_u
        i64.const 1
        i64.add
       else
        local.get $one
       end
       local.set $one
       local.get $dotOne
       i64.const 1
       i64.const 62
       i64.shl
       i64.eq
       if (result i64)
        i64.const 2
       else
        local.get $one
       end
       local.set $one
       local.get $halfUlp
       i64.const 1
       i64.shr_u
       local.get $dotOne
       i64.gt_u
       if (result i64)
        i64.const 0
       else
        local.get $one
       end
       local.set $one
       local.get $halfUlp
       i64.const 0
       i64.const -1
       i64.xor
       local.get $dotOne
       i64.sub
       i64.gt_u
       if (result i64)
        i64.const 10
       else
        local.get $one
       end
       local.set $one
       local.get $integral
       local.set $integral|78
       local.get $one
       local.set $one|79
       local.get $decExp
       local.set $decExp|80
       local.get $one|79
       i64.const 10
       i64.eq
       if
        local.get $integral|78
        i64.const 1
        i64.add
        global.set $~lib/util/dtoa/gSig
        i32.const 0
        global.set $~lib/util/dtoa/gLastDigit
        i32.const 0
        global.set $~lib/util/dtoa/gHasLastDigit
       else
        local.get $one|79
        i64.const 0
        i64.eq
        if
         local.get $integral|78
         global.set $~lib/util/dtoa/gSig
         i32.const 0
         global.set $~lib/util/dtoa/gLastDigit
         i32.const 0
         global.set $~lib/util/dtoa/gHasLastDigit
        else
         local.get $integral|78
         global.set $~lib/util/dtoa/gSig
         local.get $one|79
         i32.wrap_i64
         global.set $~lib/util/dtoa/gLastDigit
         i32.const 1
         global.set $~lib/util/dtoa/gHasLastDigit
        end
       end
       local.get $decExp|80
       global.set $~lib/util/dtoa/gExp
       br $~lib/util/dtoa/toDecimalDoubleNormal|inlined.0
      end
      local.get $rawExp
      global.get $~lib/util/dtoa/DOUBLE_EXP_OFFSET
      i32.sub
      i32.const 78913
      i32.mul
      i32.const 18
      i32.shr_s
      local.set $decExp|81
      i32.const 0
      local.get $decExp|81
      i32.sub
      i32.const 1
      i32.sub
      local.set $powExp|82
      local.get $q|37
      local.get $powExp|82
      i32.const 217707
      i32.mul
      i32.const 16
      i32.shr_s
      i32.add
      local.set $h|83
      local.get $h|83
      i32.const 1
      i32.add
      global.get $~lib/util/dtoa/EXTRA_SHIFT
      i32.add
      local.set $shift|84
      local.get $powExp|82
      local.set $power|85
      local.get $power|85
      i32.const 293
      i32.add
      local.set $i|86
      global.get $~lib/util/dtoa/POW10_MINOR
      local.get $i|86
      i32.const 10
      i32.add
      i32.const 28
      i32.rem_s
      i32.const 3
      i32.shl
      i32.add
      i64.load
      local.set $m|87
      global.get $~lib/util/dtoa/POW10_MAJOR
      local.get $i|86
      i32.const 10
      i32.add
      i32.const 28
      i32.div_s
      i32.const 4
      i32.shl
      i32.add
      local.set $hoff|88
      local.get $hoff|88
      i64.load
      local.set $hHi|89
      local.get $hoff|88
      i64.load offset=8
      local.set $hLo|90
      block $~lib/util/dtoa/mulhi64|inlined.2 (result i64)
       local.get $hLo|90
       local.set $a|91
       local.get $m|87
       local.set $b|92
       local.get $a|91
       i64.const 4294967295
       i64.and
       local.set $a0|93
       local.get $a|91
       i64.const 32
       i64.shr_u
       local.set $a1|94
       local.get $b|92
       i64.const 4294967295
       i64.and
       local.set $b0|95
       local.get $b|92
       i64.const 32
       i64.shr_u
       local.set $b1|96
       local.get $a0|93
       local.get $b0|95
       i64.mul
       local.set $w0|97
       local.get $a1|94
       local.get $b0|95
       i64.mul
       local.get $w0|97
       i64.const 32
       i64.shr_u
       i64.add
       local.set $t|98
       local.get $t|98
       i64.const 4294967295
       i64.and
       local.set $w1|99
       local.get $t|98
       i64.const 32
       i64.shr_u
       local.set $w2|100
       local.get $a0|93
       local.get $b1|96
       i64.mul
       local.get $w1|99
       i64.add
       local.set $w1|99
       local.get $a1|94
       local.get $b1|96
       i64.mul
       local.get $w2|100
       i64.add
       local.get $w1|99
       i64.const 32
       i64.shr_u
       i64.add
       br $~lib/util/dtoa/mulhi64|inlined.2
      end
      local.set $h1|101
      local.get $hLo|90
      local.get $m|87
      i64.mul
      local.set $c0|102
      local.get $h1|101
      local.get $hHi|89
      local.get $m|87
      i64.mul
      i64.add
      local.set $c1|103
      local.get $c1|103
      local.get $h1|101
      i64.lt_u
      i64.extend_i32_u
      block $~lib/util/dtoa/mulhi64|inlined.3 (result i64)
       local.get $hHi|89
       local.set $a|104
       local.get $m|87
       local.set $b|105
       local.get $a|104
       i64.const 4294967295
       i64.and
       local.set $a0|106
       local.get $a|104
       i64.const 32
       i64.shr_u
       local.set $a1|107
       local.get $b|105
       i64.const 4294967295
       i64.and
       local.set $b0|108
       local.get $b|105
       i64.const 32
       i64.shr_u
       local.set $b1|109
       local.get $a0|106
       local.get $b0|108
       i64.mul
       local.set $w0|110
       local.get $a1|107
       local.get $b0|108
       i64.mul
       local.get $w0|110
       i64.const 32
       i64.shr_u
       i64.add
       local.set $t|111
       local.get $t|111
       i64.const 4294967295
       i64.and
       local.set $w1|112
       local.get $t|111
       i64.const 32
       i64.shr_u
       local.set $w2|113
       local.get $a0|106
       local.get $b1|109
       i64.mul
       local.get $w1|112
       i64.add
       local.set $w1|112
       local.get $a1|107
       local.get $b1|109
       i64.mul
       local.get $w2|113
       i64.add
       local.get $w1|112
       i64.const 32
       i64.shr_u
       i64.add
       br $~lib/util/dtoa/mulhi64|inlined.3
      end
      i64.add
      local.set $c2|114
      local.get $c2|114
      i64.const 63
      i64.shr_u
      i64.const 0
      i64.ne
      if
       local.get $c2|114
       local.set $hi|115
       local.get $c1|103
       local.set $lo|116
      else
       local.get $c2|114
       i64.const 1
       i64.shl
       local.get $c1|103
       i64.const 63
       i64.shr_u
       i64.or
       local.set $hi|115
       local.get $c1|103
       i64.const 1
       i64.shl
       local.get $c0|102
       i64.const 63
       i64.shr_u
       i64.or
       local.set $lo|116
      end
      local.get $lo|116
      global.get $~lib/util/dtoa/POW10_FIXUPS
      local.get $i|86
      i32.const 5
      i32.shr_s
      i32.const 2
      i32.shl
      i32.add
      i64.load32_u
      local.get $i|86
      i32.const 31
      i32.and
      i64.extend_i32_s
      i64.shr_u
      i64.const 1
      i64.and
      i64.sub
      local.set $lo|116
      local.get $hi|115
      global.set $~lib/util/dtoa/gPow10Hi
      local.get $lo|116
      global.set $~lib/util/dtoa/gPow10Lo
      global.get $~lib/util/dtoa/gPow10Lo
      local.get $power|85
      i32.const 0
      i32.lt_s
      i64.extend_i32_u
      i64.add
      global.set $~lib/util/dtoa/gPow10Lo
      global.get $~lib/util/dtoa/gPow10Hi
      local.set $pHi
      global.get $~lib/util/dtoa/gPow10Lo
      local.set $pLo
      local.get $c|36
      local.get $shift|84
      i64.extend_i32_s
      i64.shl
      local.set $y
      block $~lib/util/dtoa/mulhi64|inlined.4 (result i64)
       local.get $pHi
       local.set $a|120
       local.get $y
       local.set $b|121
       local.get $a|120
       i64.const 4294967295
       i64.and
       local.set $a0|122
       local.get $a|120
       i64.const 32
       i64.shr_u
       local.set $a1|123
       local.get $b|121
       i64.const 4294967295
       i64.and
       local.set $b0|124
       local.get $b|121
       i64.const 32
       i64.shr_u
       local.set $b1|125
       local.get $a0|122
       local.get $b0|124
       i64.mul
       local.set $w0|126
       local.get $a1|123
       local.get $b0|124
       i64.mul
       local.get $w0|126
       i64.const 32
       i64.shr_u
       i64.add
       local.set $t|127
       local.get $t|127
       i64.const 4294967295
       i64.and
       local.set $w1|128
       local.get $t|127
       i64.const 32
       i64.shr_u
       local.set $w2|129
       local.get $a0|122
       local.get $b1|125
       i64.mul
       local.get $w1|128
       i64.add
       local.set $w1|128
       local.get $a1|123
       local.get $b1|125
       i64.mul
       local.get $w2|129
       i64.add
       local.get $w1|128
       i64.const 32
       i64.shr_u
       i64.add
       br $~lib/util/dtoa/mulhi64|inlined.4
      end
      local.set $a|130
      local.get $pHi
      local.get $y
      i64.mul
      local.set $plo64
      local.get $plo64
      block $~lib/util/dtoa/mulhi64|inlined.5 (result i64)
       local.get $pLo
       local.set $a|132
       local.get $y
       local.set $b|133
       local.get $a|132
       i64.const 4294967295
       i64.and
       local.set $a0|134
       local.get $a|132
       i64.const 32
       i64.shr_u
       local.set $a1|135
       local.get $b|133
       i64.const 4294967295
       i64.and
       local.set $b0|136
       local.get $b|133
       i64.const 32
       i64.shr_u
       local.set $b1|137
       local.get $a0|134
       local.get $b0|136
       i64.mul
       local.set $w0|138
       local.get $a1|135
       local.get $b0|136
       i64.mul
       local.get $w0|138
       i64.const 32
       i64.shr_u
       i64.add
       local.set $t|139
       local.get $t|139
       i64.const 4294967295
       i64.and
       local.set $w1|140
       local.get $t|139
       i64.const 32
       i64.shr_u
       local.set $w2|141
       local.get $a0|134
       local.get $b1|137
       i64.mul
       local.get $w1|140
       i64.add
       local.set $w1|140
       local.get $a1|135
       local.get $b1|137
       i64.mul
       local.get $w2|141
       i64.add
       local.get $w1|140
       i64.const 32
       i64.shr_u
       i64.add
       br $~lib/util/dtoa/mulhi64|inlined.5
      end
      i64.add
      local.set $lo|142
      local.get $a|130
      local.get $lo|142
      local.get $plo64
      i64.lt_u
      i64.extend_i32_u
      i64.add
      local.set $p_hi
      local.get $p_hi
      global.get $~lib/util/dtoa/EXTRA_SHIFT
      i64.extend_i32_s
      i64.shr_u
      local.set $integral|144
      local.get $p_hi
      i64.const 64
      global.get $~lib/util/dtoa/EXTRA_SHIFT
      i64.extend_i32_s
      i64.sub
      i64.shl
      local.get $lo|142
      global.get $~lib/util/dtoa/EXTRA_SHIFT
      i64.extend_i32_s
      i64.shr_u
      i64.or
      local.set $dotOne|145
      local.get $pHi
      i32.const 0
      local.get $h|83
      i32.sub
      i64.extend_i32_s
      i64.shr_u
      i64.const 1
      local.get $c|36
      i64.const 1
      i64.and
      i64.sub
      i64.add
      local.set $halfUlp|146
      block $~lib/util/dtoa/umul128AddHi64|inlined.0 (result i64)
       local.get $dotOne|145
       local.set $x
       i64.const 10
       local.set $y|148
       local.get $dotOne|145
       i64.const 1
       i64.const 62
       i64.shl
       i64.eq
       if (result i64)
        i64.const 0
       else
        global.get $~lib/util/dtoa/BIASED_HALF
       end
       local.set $c|149
       local.get $x
       local.get $y|148
       i64.mul
       local.set $lo|150
       block $~lib/util/dtoa/mulhi64|inlined.6 (result i64)
        local.get $x
        local.set $a|151
        local.get $y|148
        local.set $b|152
        local.get $a|151
        i64.const 4294967295
        i64.and
        local.set $a0|153
        local.get $a|151
        i64.const 32
        i64.shr_u
        local.set $a1|154
        local.get $b|152
        i64.const 4294967295
        i64.and
        local.set $b0|155
        local.get $b|152
        i64.const 32
        i64.shr_u
        local.set $b1|156
        local.get $a0|153
        local.get $b0|155
        i64.mul
        local.set $w0|157
        local.get $a1|154
        local.get $b0|155
        i64.mul
        local.get $w0|157
        i64.const 32
        i64.shr_u
        i64.add
        local.set $t|158
        local.get $t|158
        i64.const 4294967295
        i64.and
        local.set $w1|159
        local.get $t|158
        i64.const 32
        i64.shr_u
        local.set $w2|160
        local.get $a0|153
        local.get $b1|156
        i64.mul
        local.get $w1|159
        i64.add
        local.set $w1|159
        local.get $a1|154
        local.get $b1|156
        i64.mul
        local.get $w2|160
        i64.add
        local.get $w1|159
        i64.const 32
        i64.shr_u
        i64.add
        br $~lib/util/dtoa/mulhi64|inlined.6
       end
       local.set $hi|161
       local.get $hi|161
       local.get $lo|150
       local.get $c|149
       i64.add
       local.get $lo|150
       i64.lt_u
       i64.extend_i32_u
       i64.add
       br $~lib/util/dtoa/umul128AddHi64|inlined.0
      end
      local.set $one|162
      local.get $dotOne|145
      local.get $halfUlp|146
      i64.lt_u
      if (result i64)
       i64.const 0
      else
       local.get $one|162
      end
      local.set $one|162
      i64.const 0
      i64.const -1
      i64.xor
      local.get $dotOne|145
      i64.sub
      local.get $halfUlp|146
      i64.lt_u
      if (result i64)
       i64.const 10
      else
       local.get $one|162
      end
      local.set $one|162
      local.get $integral|144
      local.set $integral|163
      local.get $one|162
      local.set $one|164
      local.get $decExp|81
      local.set $decExp|165
      local.get $one|164
      i64.const 10
      i64.eq
      if
       local.get $integral|163
       i64.const 1
       i64.add
       global.set $~lib/util/dtoa/gSig
       i32.const 0
       global.set $~lib/util/dtoa/gLastDigit
       i32.const 0
       global.set $~lib/util/dtoa/gHasLastDigit
      else
       local.get $one|164
       i64.const 0
       i64.eq
       if
        local.get $integral|163
        global.set $~lib/util/dtoa/gSig
        i32.const 0
        global.set $~lib/util/dtoa/gLastDigit
        i32.const 0
        global.set $~lib/util/dtoa/gHasLastDigit
       else
        local.get $integral|163
        global.set $~lib/util/dtoa/gSig
        local.get $one|164
        i32.wrap_i64
        global.set $~lib/util/dtoa/gLastDigit
        i32.const 1
        global.set $~lib/util/dtoa/gHasLastDigit
       end
      end
      local.get $decExp|165
      global.set $~lib/util/dtoa/gExp
     end
    else
     block $~lib/util/dtoa/toDecimalDouble|inlined.0
      local.get $binSig|10
      local.set $binSig|166
      i32.const 0
      local.set $rawExp|167
      i32.const 1
      local.set $regular|168
      local.get $rawExp|167
      i32.const 0
      i32.ne
      if
       block $~lib/util/dtoa/toDecimalDoubleNormal|inlined.1
        local.get $binSig|166
        local.set $binSig|169
        local.get $rawExp|167
        local.set $rawExp|170
        local.get $regular|168
        local.set $regular|171
        local.get $binSig|169
        i64.const 1
        i64.const 52
        i64.shl
        i64.or
        local.set $c|172
        local.get $rawExp|170
        global.get $~lib/util/dtoa/DOUBLE_EXP_OFFSET
        i32.sub
        local.set $q|173
        local.get $regular|171
        i32.eqz
        if
         local.get $q|173
         i32.const 315653
         i32.mul
         i32.const 131072
         i32.sub
         i32.const 20
         i32.shr_s
         local.set $decExp|174
         i32.const 0
         local.get $decExp|174
         i32.sub
         i32.const 1
         i32.sub
         local.set $powExp|175
         local.get $q|173
         local.get $powExp|175
         i32.const 217707
         i32.mul
         i32.const 16
         i32.shr_s
         i32.add
         local.set $h|176
         block $~lib/util/dtoa/loadPow10HiXjb64|inlined.1 (result i64)
          local.get $powExp|175
          local.set $power|177
          local.get $power|177
          i32.const 293
          i32.add
          local.set $i|178
          global.get $~lib/util/dtoa/POW10_MINOR
          local.get $i|178
          i32.const 10
          i32.add
          i32.const 28
          i32.rem_s
          i32.const 3
          i32.shl
          i32.add
          i64.load
          local.set $m|179
          global.get $~lib/util/dtoa/POW10_MAJOR
          local.get $i|178
          i32.const 10
          i32.add
          i32.const 28
          i32.div_s
          i32.const 4
          i32.shl
          i32.add
          local.set $hoff|180
          local.get $hoff|180
          i64.load
          local.set $hHi|181
          local.get $hoff|180
          i64.load offset=8
          local.set $hLo|182
          block $~lib/util/dtoa/mulhi64|inlined.7 (result i64)
           local.get $hLo|182
           local.set $a|183
           local.get $m|179
           local.set $b|184
           local.get $a|183
           i64.const 4294967295
           i64.and
           local.set $a0|185
           local.get $a|183
           i64.const 32
           i64.shr_u
           local.set $a1|186
           local.get $b|184
           i64.const 4294967295
           i64.and
           local.set $b0|187
           local.get $b|184
           i64.const 32
           i64.shr_u
           local.set $b1|188
           local.get $a0|185
           local.get $b0|187
           i64.mul
           local.set $w0|189
           local.get $a1|186
           local.get $b0|187
           i64.mul
           local.get $w0|189
           i64.const 32
           i64.shr_u
           i64.add
           local.set $t|190
           local.get $t|190
           i64.const 4294967295
           i64.and
           local.set $w1|191
           local.get $t|190
           i64.const 32
           i64.shr_u
           local.set $w2|192
           local.get $a0|185
           local.get $b1|188
           i64.mul
           local.get $w1|191
           i64.add
           local.set $w1|191
           local.get $a1|186
           local.get $b1|188
           i64.mul
           local.get $w2|192
           i64.add
           local.get $w1|191
           i64.const 32
           i64.shr_u
           i64.add
           br $~lib/util/dtoa/mulhi64|inlined.7
          end
          local.set $h1|193
          local.get $hLo|182
          local.get $m|179
          i64.mul
          local.set $c0|194
          local.get $h1|193
          local.get $hHi|181
          local.get $m|179
          i64.mul
          i64.add
          local.set $c1|195
          local.get $c1|195
          local.get $h1|193
          i64.lt_u
          i64.extend_i32_u
          block $~lib/util/dtoa/mulhi64|inlined.8 (result i64)
           local.get $hHi|181
           local.set $a|196
           local.get $m|179
           local.set $b|197
           local.get $a|196
           i64.const 4294967295
           i64.and
           local.set $a0|198
           local.get $a|196
           i64.const 32
           i64.shr_u
           local.set $a1|199
           local.get $b|197
           i64.const 4294967295
           i64.and
           local.set $b0|200
           local.get $b|197
           i64.const 32
           i64.shr_u
           local.set $b1|201
           local.get $a0|198
           local.get $b0|200
           i64.mul
           local.set $w0|202
           local.get $a1|199
           local.get $b0|200
           i64.mul
           local.get $w0|202
           i64.const 32
           i64.shr_u
           i64.add
           local.set $t|203
           local.get $t|203
           i64.const 4294967295
           i64.and
           local.set $w1|204
           local.get $t|203
           i64.const 32
           i64.shr_u
           local.set $w2|205
           local.get $a0|198
           local.get $b1|201
           i64.mul
           local.get $w1|204
           i64.add
           local.set $w1|204
           local.get $a1|199
           local.get $b1|201
           i64.mul
           local.get $w2|205
           i64.add
           local.get $w1|204
           i64.const 32
           i64.shr_u
           i64.add
           br $~lib/util/dtoa/mulhi64|inlined.8
          end
          i64.add
          local.set $c2|206
          local.get $c2|206
          i64.const 63
          i64.shr_u
          i64.const 0
          i64.ne
          if
           local.get $c2|206
           local.set $hi|207
           local.get $c1|195
           local.set $lo|208
          else
           local.get $c2|206
           i64.const 1
           i64.shl
           local.get $c1|195
           i64.const 63
           i64.shr_u
           i64.or
           local.set $hi|207
           local.get $c1|195
           i64.const 1
           i64.shl
           local.get $c0|194
           i64.const 63
           i64.shr_u
           i64.or
           local.set $lo|208
          end
          local.get $lo|208
          global.get $~lib/util/dtoa/POW10_FIXUPS
          local.get $i|178
          i32.const 5
          i32.shr_s
          i32.const 2
          i32.shl
          i32.add
          i64.load32_u
          local.get $i|178
          i32.const 31
          i32.and
          i64.extend_i32_s
          i64.shr_u
          i64.const 1
          i64.and
          i64.sub
          local.set $lo|208
          local.get $hi|207
          global.set $~lib/util/dtoa/gPow10Hi
          local.get $lo|208
          global.set $~lib/util/dtoa/gPow10Lo
          global.get $~lib/util/dtoa/gPow10Hi
          br $~lib/util/dtoa/loadPow10HiXjb64|inlined.1
         end
         local.set $pow10Hi|209
         local.get $pow10Hi|209
         i64.const 11
         local.get $h|176
         i64.extend_i32_s
         i64.sub
         i64.shr_u
         local.set $integral|210
         local.get $pow10Hi|209
         i32.const 0
         local.get $h|176
         i32.sub
         i64.extend_i32_s
         i64.shr_u
         local.set $halfUlp|211
         local.get $pow10Hi|209
         i64.const 53
         local.get $h|176
         i64.extend_i32_s
         i64.add
         i64.shl
         local.set $dotOne|212
         local.get $dotOne|212
         i64.const 53
         local.get $h|176
         i64.extend_i32_s
         i64.add
         i64.shr_u
         i64.const 5
         i64.mul
         i64.const 1
         i64.const 9
         local.get $h|176
         i64.extend_i32_s
         i64.sub
         i64.shl
         i64.add
         i64.const 10
         local.get $h|176
         i64.extend_i32_s
         i64.sub
         i64.shr_u
         local.set $one|213
         local.get $dotOne|212
         i64.const 54
         i64.shr_u
         i64.const 5
         i64.mul
         i64.const 511
         i64.and
         local.get $halfUlp|211
         i64.const 55
         i64.shr_u
         i64.const 5
         i64.mul
         i64.gt_u
         if (result i64)
          local.get $dotOne|212
          i64.const 54
          i64.shr_u
          i64.const 5
          i64.mul
          i64.const 9
          i64.shr_u
          i64.const 1
          i64.add
         else
          local.get $one|213
         end
         local.set $one|213
         local.get $dotOne|212
         i64.const 1
         i64.const 62
         i64.shl
         i64.eq
         if (result i64)
          i64.const 2
         else
          local.get $one|213
         end
         local.set $one|213
         local.get $halfUlp|211
         i64.const 1
         i64.shr_u
         local.get $dotOne|212
         i64.gt_u
         if (result i64)
          i64.const 0
         else
          local.get $one|213
         end
         local.set $one|213
         local.get $halfUlp|211
         i64.const 0
         i64.const -1
         i64.xor
         local.get $dotOne|212
         i64.sub
         i64.gt_u
         if (result i64)
          i64.const 10
         else
          local.get $one|213
         end
         local.set $one|213
         local.get $integral|210
         local.set $integral|214
         local.get $one|213
         local.set $one|215
         local.get $decExp|174
         local.set $decExp|216
         local.get $one|215
         i64.const 10
         i64.eq
         if
          local.get $integral|214
          i64.const 1
          i64.add
          global.set $~lib/util/dtoa/gSig
          i32.const 0
          global.set $~lib/util/dtoa/gLastDigit
          i32.const 0
          global.set $~lib/util/dtoa/gHasLastDigit
         else
          local.get $one|215
          i64.const 0
          i64.eq
          if
           local.get $integral|214
           global.set $~lib/util/dtoa/gSig
           i32.const 0
           global.set $~lib/util/dtoa/gLastDigit
           i32.const 0
           global.set $~lib/util/dtoa/gHasLastDigit
          else
           local.get $integral|214
           global.set $~lib/util/dtoa/gSig
           local.get $one|215
           i32.wrap_i64
           global.set $~lib/util/dtoa/gLastDigit
           i32.const 1
           global.set $~lib/util/dtoa/gHasLastDigit
          end
         end
         local.get $decExp|216
         global.set $~lib/util/dtoa/gExp
         br $~lib/util/dtoa/toDecimalDoubleNormal|inlined.1
        end
        local.get $rawExp|170
        global.get $~lib/util/dtoa/DOUBLE_EXP_OFFSET
        i32.sub
        i32.const 78913
        i32.mul
        i32.const 18
        i32.shr_s
        local.set $decExp|217
        i32.const 0
        local.get $decExp|217
        i32.sub
        i32.const 1
        i32.sub
        local.set $powExp|218
        local.get $q|173
        local.get $powExp|218
        i32.const 217707
        i32.mul
        i32.const 16
        i32.shr_s
        i32.add
        local.set $h|219
        local.get $h|219
        i32.const 1
        i32.add
        global.get $~lib/util/dtoa/EXTRA_SHIFT
        i32.add
        local.set $shift|220
        local.get $powExp|218
        local.set $power|221
        local.get $power|221
        i32.const 293
        i32.add
        local.set $i|222
        global.get $~lib/util/dtoa/POW10_MINOR
        local.get $i|222
        i32.const 10
        i32.add
        i32.const 28
        i32.rem_s
        i32.const 3
        i32.shl
        i32.add
        i64.load
        local.set $m|223
        global.get $~lib/util/dtoa/POW10_MAJOR
        local.get $i|222
        i32.const 10
        i32.add
        i32.const 28
        i32.div_s
        i32.const 4
        i32.shl
        i32.add
        local.set $hoff|224
        local.get $hoff|224
        i64.load
        local.set $hHi|225
        local.get $hoff|224
        i64.load offset=8
        local.set $hLo|226
        block $~lib/util/dtoa/mulhi64|inlined.9 (result i64)
         local.get $hLo|226
         local.set $a|227
         local.get $m|223
         local.set $b|228
         local.get $a|227
         i64.const 4294967295
         i64.and
         local.set $a0|229
         local.get $a|227
         i64.const 32
         i64.shr_u
         local.set $a1|230
         local.get $b|228
         i64.const 4294967295
         i64.and
         local.set $b0|231
         local.get $b|228
         i64.const 32
         i64.shr_u
         local.set $b1|232
         local.get $a0|229
         local.get $b0|231
         i64.mul
         local.set $w0|233
         local.get $a1|230
         local.get $b0|231
         i64.mul
         local.get $w0|233
         i64.const 32
         i64.shr_u
         i64.add
         local.set $t|234
         local.get $t|234
         i64.const 4294967295
         i64.and
         local.set $w1|235
         local.get $t|234
         i64.const 32
         i64.shr_u
         local.set $w2|236
         local.get $a0|229
         local.get $b1|232
         i64.mul
         local.get $w1|235
         i64.add
         local.set $w1|235
         local.get $a1|230
         local.get $b1|232
         i64.mul
         local.get $w2|236
         i64.add
         local.get $w1|235
         i64.const 32
         i64.shr_u
         i64.add
         br $~lib/util/dtoa/mulhi64|inlined.9
        end
        local.set $h1|237
        local.get $hLo|226
        local.get $m|223
        i64.mul
        local.set $c0|238
        local.get $h1|237
        local.get $hHi|225
        local.get $m|223
        i64.mul
        i64.add
        local.set $c1|239
        local.get $c1|239
        local.get $h1|237
        i64.lt_u
        i64.extend_i32_u
        block $~lib/util/dtoa/mulhi64|inlined.10 (result i64)
         local.get $hHi|225
         local.set $a|240
         local.get $m|223
         local.set $b|241
         local.get $a|240
         i64.const 4294967295
         i64.and
         local.set $a0|242
         local.get $a|240
         i64.const 32
         i64.shr_u
         local.set $a1|243
         local.get $b|241
         i64.const 4294967295
         i64.and
         local.set $b0|244
         local.get $b|241
         i64.const 32
         i64.shr_u
         local.set $b1|245
         local.get $a0|242
         local.get $b0|244
         i64.mul
         local.set $w0|246
         local.get $a1|243
         local.get $b0|244
         i64.mul
         local.get $w0|246
         i64.const 32
         i64.shr_u
         i64.add
         local.set $t|247
         local.get $t|247
         i64.const 4294967295
         i64.and
         local.set $w1|248
         local.get $t|247
         i64.const 32
         i64.shr_u
         local.set $w2|249
         local.get $a0|242
         local.get $b1|245
         i64.mul
         local.get $w1|248
         i64.add
         local.set $w1|248
         local.get $a1|243
         local.get $b1|245
         i64.mul
         local.get $w2|249
         i64.add
         local.get $w1|248
         i64.const 32
         i64.shr_u
         i64.add
         br $~lib/util/dtoa/mulhi64|inlined.10
        end
        i64.add
        local.set $c2|250
        local.get $c2|250
        i64.const 63
        i64.shr_u
        i64.const 0
        i64.ne
        if
         local.get $c2|250
         local.set $hi|251
         local.get $c1|239
         local.set $lo|252
        else
         local.get $c2|250
         i64.const 1
         i64.shl
         local.get $c1|239
         i64.const 63
         i64.shr_u
         i64.or
         local.set $hi|251
         local.get $c1|239
         i64.const 1
         i64.shl
         local.get $c0|238
         i64.const 63
         i64.shr_u
         i64.or
         local.set $lo|252
        end
        local.get $lo|252
        global.get $~lib/util/dtoa/POW10_FIXUPS
        local.get $i|222
        i32.const 5
        i32.shr_s
        i32.const 2
        i32.shl
        i32.add
        i64.load32_u
        local.get $i|222
        i32.const 31
        i32.and
        i64.extend_i32_s
        i64.shr_u
        i64.const 1
        i64.and
        i64.sub
        local.set $lo|252
        local.get $hi|251
        global.set $~lib/util/dtoa/gPow10Hi
        local.get $lo|252
        global.set $~lib/util/dtoa/gPow10Lo
        global.get $~lib/util/dtoa/gPow10Lo
        local.get $power|221
        i32.const 0
        i32.lt_s
        i64.extend_i32_u
        i64.add
        global.set $~lib/util/dtoa/gPow10Lo
        global.get $~lib/util/dtoa/gPow10Hi
        local.set $pHi|253
        global.get $~lib/util/dtoa/gPow10Lo
        local.set $pLo|254
        local.get $c|172
        local.get $shift|220
        i64.extend_i32_s
        i64.shl
        local.set $y|255
        block $~lib/util/dtoa/mulhi64|inlined.11 (result i64)
         local.get $pHi|253
         local.set $a|256
         local.get $y|255
         local.set $b|257
         local.get $a|256
         i64.const 4294967295
         i64.and
         local.set $a0|258
         local.get $a|256
         i64.const 32
         i64.shr_u
         local.set $a1|259
         local.get $b|257
         i64.const 4294967295
         i64.and
         local.set $b0|260
         local.get $b|257
         i64.const 32
         i64.shr_u
         local.set $b1|261
         local.get $a0|258
         local.get $b0|260
         i64.mul
         local.set $w0|262
         local.get $a1|259
         local.get $b0|260
         i64.mul
         local.get $w0|262
         i64.const 32
         i64.shr_u
         i64.add
         local.set $t|263
         local.get $t|263
         i64.const 4294967295
         i64.and
         local.set $w1|264
         local.get $t|263
         i64.const 32
         i64.shr_u
         local.set $w2|265
         local.get $a0|258
         local.get $b1|261
         i64.mul
         local.get $w1|264
         i64.add
         local.set $w1|264
         local.get $a1|259
         local.get $b1|261
         i64.mul
         local.get $w2|265
         i64.add
         local.get $w1|264
         i64.const 32
         i64.shr_u
         i64.add
         br $~lib/util/dtoa/mulhi64|inlined.11
        end
        local.set $a|266
        local.get $pHi|253
        local.get $y|255
        i64.mul
        local.set $plo64|267
        local.get $plo64|267
        block $~lib/util/dtoa/mulhi64|inlined.12 (result i64)
         local.get $pLo|254
         local.set $a|268
         local.get $y|255
         local.set $b|269
         local.get $a|268
         i64.const 4294967295
         i64.and
         local.set $a0|270
         local.get $a|268
         i64.const 32
         i64.shr_u
         local.set $a1|271
         local.get $b|269
         i64.const 4294967295
         i64.and
         local.set $b0|272
         local.get $b|269
         i64.const 32
         i64.shr_u
         local.set $b1|273
         local.get $a0|270
         local.get $b0|272
         i64.mul
         local.set $w0|274
         local.get $a1|271
         local.get $b0|272
         i64.mul
         local.get $w0|274
         i64.const 32
         i64.shr_u
         i64.add
         local.set $t|275
         local.get $t|275
         i64.const 4294967295
         i64.and
         local.set $w1|276
         local.get $t|275
         i64.const 32
         i64.shr_u
         local.set $w2|277
         local.get $a0|270
         local.get $b1|273
         i64.mul
         local.get $w1|276
         i64.add
         local.set $w1|276
         local.get $a1|271
         local.get $b1|273
         i64.mul
         local.get $w2|277
         i64.add
         local.get $w1|276
         i64.const 32
         i64.shr_u
         i64.add
         br $~lib/util/dtoa/mulhi64|inlined.12
        end
        i64.add
        local.set $lo|278
        local.get $a|266
        local.get $lo|278
        local.get $plo64|267
        i64.lt_u
        i64.extend_i32_u
        i64.add
        local.set $p_hi|279
        local.get $p_hi|279
        global.get $~lib/util/dtoa/EXTRA_SHIFT
        i64.extend_i32_s
        i64.shr_u
        local.set $integral|280
        local.get $p_hi|279
        i64.const 64
        global.get $~lib/util/dtoa/EXTRA_SHIFT
        i64.extend_i32_s
        i64.sub
        i64.shl
        local.get $lo|278
        global.get $~lib/util/dtoa/EXTRA_SHIFT
        i64.extend_i32_s
        i64.shr_u
        i64.or
        local.set $dotOne|281
        local.get $pHi|253
        i32.const 0
        local.get $h|219
        i32.sub
        i64.extend_i32_s
        i64.shr_u
        i64.const 1
        local.get $c|172
        i64.const 1
        i64.and
        i64.sub
        i64.add
        local.set $halfUlp|282
        block $~lib/util/dtoa/umul128AddHi64|inlined.1 (result i64)
         local.get $dotOne|281
         local.set $x|283
         i64.const 10
         local.set $y|284
         local.get $dotOne|281
         i64.const 1
         i64.const 62
         i64.shl
         i64.eq
         if (result i64)
          i64.const 0
         else
          global.get $~lib/util/dtoa/BIASED_HALF
         end
         local.set $c|285
         local.get $x|283
         local.get $y|284
         i64.mul
         local.set $lo|286
         block $~lib/util/dtoa/mulhi64|inlined.13 (result i64)
          local.get $x|283
          local.set $a|287
          local.get $y|284
          local.set $b|288
          local.get $a|287
          i64.const 4294967295
          i64.and
          local.set $a0|289
          local.get $a|287
          i64.const 32
          i64.shr_u
          local.set $a1|290
          local.get $b|288
          i64.const 4294967295
          i64.and
          local.set $b0|291
          local.get $b|288
          i64.const 32
          i64.shr_u
          local.set $b1|292
          local.get $a0|289
          local.get $b0|291
          i64.mul
          local.set $w0|293
          local.get $a1|290
          local.get $b0|291
          i64.mul
          local.get $w0|293
          i64.const 32
          i64.shr_u
          i64.add
          local.set $t|294
          local.get $t|294
          i64.const 4294967295
          i64.and
          local.set $w1|295
          local.get $t|294
          i64.const 32
          i64.shr_u
          local.set $w2|296
          local.get $a0|289
          local.get $b1|292
          i64.mul
          local.get $w1|295
          i64.add
          local.set $w1|295
          local.get $a1|290
          local.get $b1|292
          i64.mul
          local.get $w2|296
          i64.add
          local.get $w1|295
          i64.const 32
          i64.shr_u
          i64.add
          br $~lib/util/dtoa/mulhi64|inlined.13
         end
         local.set $hi|297
         local.get $hi|297
         local.get $lo|286
         local.get $c|285
         i64.add
         local.get $lo|286
         i64.lt_u
         i64.extend_i32_u
         i64.add
         br $~lib/util/dtoa/umul128AddHi64|inlined.1
        end
        local.set $one|298
        local.get $dotOne|281
        local.get $halfUlp|282
        i64.lt_u
        if (result i64)
         i64.const 0
        else
         local.get $one|298
        end
        local.set $one|298
        i64.const 0
        i64.const -1
        i64.xor
        local.get $dotOne|281
        i64.sub
        local.get $halfUlp|282
        i64.lt_u
        if (result i64)
         i64.const 10
        else
         local.get $one|298
        end
        local.set $one|298
        local.get $integral|280
        local.set $integral|299
        local.get $one|298
        local.set $one|300
        local.get $decExp|217
        local.set $decExp|301
        local.get $one|300
        i64.const 10
        i64.eq
        if
         local.get $integral|299
         i64.const 1
         i64.add
         global.set $~lib/util/dtoa/gSig
         i32.const 0
         global.set $~lib/util/dtoa/gLastDigit
         i32.const 0
         global.set $~lib/util/dtoa/gHasLastDigit
        else
         local.get $one|300
         i64.const 0
         i64.eq
         if
          local.get $integral|299
          global.set $~lib/util/dtoa/gSig
          i32.const 0
          global.set $~lib/util/dtoa/gLastDigit
          i32.const 0
          global.set $~lib/util/dtoa/gHasLastDigit
         else
          local.get $integral|299
          global.set $~lib/util/dtoa/gSig
          local.get $one|300
          i32.wrap_i64
          global.set $~lib/util/dtoa/gLastDigit
          i32.const 1
          global.set $~lib/util/dtoa/gHasLastDigit
         end
        end
        local.get $decExp|301
        global.set $~lib/util/dtoa/gExp
       end
       br $~lib/util/dtoa/toDecimalDouble|inlined.0
      end
      block $~lib/util/dtoa/computeDecExp|inlined.0 (result i32)
       i32.const -1074
       local.set $binExp|302
       local.get $binExp|302
       i32.const 315653
       i32.mul
       i32.const 20
       i32.shr_s
       br $~lib/util/dtoa/computeDecExp|inlined.0
      end
      local.set $decExp|303
      block $~lib/util/dtoa/computeExpShift|inlined.0 (result i32)
       i32.const -1074
       local.set $binExp|304
       local.get $decExp|303
       i32.const 1
       i32.add
       local.set $decExp|305
       i32.const 0
       local.get $decExp|305
       i32.sub
       i32.const 217707
       i32.mul
       i32.const 16
       i32.shr_s
       local.set $pow10BinExp
       local.get $binExp|304
       local.get $pow10BinExp
       i32.add
       i32.const 1
       i32.add
       br $~lib/util/dtoa/computeExpShift|inlined.0
      end
      global.get $~lib/util/dtoa/EXTRA_SHIFT
      i32.add
      local.set $shift|307
      i32.const 0
      local.get $decExp|303
      i32.sub
      i32.const 1
      i32.sub
      local.set $power|308
      local.get $power|308
      i32.const 293
      i32.add
      local.set $i|309
      global.get $~lib/util/dtoa/POW10_MINOR
      local.get $i|309
      i32.const 10
      i32.add
      i32.const 28
      i32.rem_s
      i32.const 3
      i32.shl
      i32.add
      i64.load
      local.set $m|310
      global.get $~lib/util/dtoa/POW10_MAJOR
      local.get $i|309
      i32.const 10
      i32.add
      i32.const 28
      i32.div_s
      i32.const 4
      i32.shl
      i32.add
      local.set $hoff|311
      local.get $hoff|311
      i64.load
      local.set $hHi|312
      local.get $hoff|311
      i64.load offset=8
      local.set $hLo|313
      block $~lib/util/dtoa/mulhi64|inlined.14 (result i64)
       local.get $hLo|313
       local.set $a|314
       local.get $m|310
       local.set $b|315
       local.get $a|314
       i64.const 4294967295
       i64.and
       local.set $a0|316
       local.get $a|314
       i64.const 32
       i64.shr_u
       local.set $a1|317
       local.get $b|315
       i64.const 4294967295
       i64.and
       local.set $b0|318
       local.get $b|315
       i64.const 32
       i64.shr_u
       local.set $b1|319
       local.get $a0|316
       local.get $b0|318
       i64.mul
       local.set $w0|320
       local.get $a1|317
       local.get $b0|318
       i64.mul
       local.get $w0|320
       i64.const 32
       i64.shr_u
       i64.add
       local.set $t|321
       local.get $t|321
       i64.const 4294967295
       i64.and
       local.set $w1|322
       local.get $t|321
       i64.const 32
       i64.shr_u
       local.set $w2|323
       local.get $a0|316
       local.get $b1|319
       i64.mul
       local.get $w1|322
       i64.add
       local.set $w1|322
       local.get $a1|317
       local.get $b1|319
       i64.mul
       local.get $w2|323
       i64.add
       local.get $w1|322
       i64.const 32
       i64.shr_u
       i64.add
       br $~lib/util/dtoa/mulhi64|inlined.14
      end
      local.set $h1|324
      local.get $hLo|313
      local.get $m|310
      i64.mul
      local.set $c0|325
      local.get $h1|324
      local.get $hHi|312
      local.get $m|310
      i64.mul
      i64.add
      local.set $c1|326
      local.get $c1|326
      local.get $h1|324
      i64.lt_u
      i64.extend_i32_u
      block $~lib/util/dtoa/mulhi64|inlined.15 (result i64)
       local.get $hHi|312
       local.set $a|327
       local.get $m|310
       local.set $b|328
       local.get $a|327
       i64.const 4294967295
       i64.and
       local.set $a0|329
       local.get $a|327
       i64.const 32
       i64.shr_u
       local.set $a1|330
       local.get $b|328
       i64.const 4294967295
       i64.and
       local.set $b0|331
       local.get $b|328
       i64.const 32
       i64.shr_u
       local.set $b1|332
       local.get $a0|329
       local.get $b0|331
       i64.mul
       local.set $w0|333
       local.get $a1|330
       local.get $b0|331
       i64.mul
       local.get $w0|333
       i64.const 32
       i64.shr_u
       i64.add
       local.set $t|334
       local.get $t|334
       i64.const 4294967295
       i64.and
       local.set $w1|335
       local.get $t|334
       i64.const 32
       i64.shr_u
       local.set $w2|336
       local.get $a0|329
       local.get $b1|332
       i64.mul
       local.get $w1|335
       i64.add
       local.set $w1|335
       local.get $a1|330
       local.get $b1|332
       i64.mul
       local.get $w2|336
       i64.add
       local.get $w1|335
       i64.const 32
       i64.shr_u
       i64.add
       br $~lib/util/dtoa/mulhi64|inlined.15
      end
      i64.add
      local.set $c2|337
      local.get $c2|337
      i64.const 63
      i64.shr_u
      i64.const 0
      i64.ne
      if
       local.get $c2|337
       local.set $hi|338
       local.get $c1|326
       local.set $lo|339
      else
       local.get $c2|337
       i64.const 1
       i64.shl
       local.get $c1|326
       i64.const 63
       i64.shr_u
       i64.or
       local.set $hi|338
       local.get $c1|326
       i64.const 1
       i64.shl
       local.get $c0|325
       i64.const 63
       i64.shr_u
       i64.or
       local.set $lo|339
      end
      local.get $lo|339
      global.get $~lib/util/dtoa/POW10_FIXUPS
      local.get $i|309
      i32.const 5
      i32.shr_s
      i32.const 2
      i32.shl
      i32.add
      i64.load32_u
      local.get $i|309
      i32.const 31
      i32.and
      i64.extend_i32_s
      i64.shr_u
      i64.const 1
      i64.and
      i64.sub
      local.set $lo|339
      local.get $hi|338
      global.set $~lib/util/dtoa/gPow10Hi
      local.get $lo|339
      global.set $~lib/util/dtoa/gPow10Lo
      global.get $~lib/util/dtoa/gPow10Lo
      local.get $power|308
      i32.const 0
      i32.lt_s
      i64.extend_i32_u
      i64.add
      global.set $~lib/util/dtoa/gPow10Lo
      global.get $~lib/util/dtoa/gPow10Hi
      local.set $pHi|340
      global.get $~lib/util/dtoa/gPow10Lo
      local.set $pLo|341
      local.get $binSig|166
      local.get $shift|307
      i64.extend_i32_s
      i64.shl
      local.set $y|342
      block $~lib/util/dtoa/mulhi64|inlined.16 (result i64)
       local.get $pHi|340
       local.set $a|343
       local.get $y|342
       local.set $b|344
       local.get $a|343
       i64.const 4294967295
       i64.and
       local.set $a0|345
       local.get $a|343
       i64.const 32
       i64.shr_u
       local.set $a1|346
       local.get $b|344
       i64.const 4294967295
       i64.and
       local.set $b0|347
       local.get $b|344
       i64.const 32
       i64.shr_u
       local.set $b1|348
       local.get $a0|345
       local.get $b0|347
       i64.mul
       local.set $w0|349
       local.get $a1|346
       local.get $b0|347
       i64.mul
       local.get $w0|349
       i64.const 32
       i64.shr_u
       i64.add
       local.set $t|350
       local.get $t|350
       i64.const 4294967295
       i64.and
       local.set $w1|351
       local.get $t|350
       i64.const 32
       i64.shr_u
       local.set $w2|352
       local.get $a0|345
       local.get $b1|348
       i64.mul
       local.get $w1|351
       i64.add
       local.set $w1|351
       local.get $a1|346
       local.get $b1|348
       i64.mul
       local.get $w2|352
       i64.add
       local.get $w1|351
       i64.const 32
       i64.shr_u
       i64.add
       br $~lib/util/dtoa/mulhi64|inlined.16
      end
      local.set $a|353
      local.get $pHi|340
      local.get $y|342
      i64.mul
      local.set $plo64|354
      local.get $plo64|354
      block $~lib/util/dtoa/mulhi64|inlined.17 (result i64)
       local.get $pLo|341
       local.set $a|355
       local.get $y|342
       local.set $b|356
       local.get $a|355
       i64.const 4294967295
       i64.and
       local.set $a0|357
       local.get $a|355
       i64.const 32
       i64.shr_u
       local.set $a1|358
       local.get $b|356
       i64.const 4294967295
       i64.and
       local.set $b0|359
       local.get $b|356
       i64.const 32
       i64.shr_u
       local.set $b1|360
       local.get $a0|357
       local.get $b0|359
       i64.mul
       local.set $w0|361
       local.get $a1|358
       local.get $b0|359
       i64.mul
       local.get $w0|361
       i64.const 32
       i64.shr_u
       i64.add
       local.set $t|362
       local.get $t|362
       i64.const 4294967295
       i64.and
       local.set $w1|363
       local.get $t|362
       i64.const 32
       i64.shr_u
       local.set $w2|364
       local.get $a0|357
       local.get $b1|360
       i64.mul
       local.get $w1|363
       i64.add
       local.set $w1|363
       local.get $a1|358
       local.get $b1|360
       i64.mul
       local.get $w2|364
       i64.add
       local.get $w1|363
       i64.const 32
       i64.shr_u
       i64.add
       br $~lib/util/dtoa/mulhi64|inlined.17
      end
      i64.add
      local.set $lo|365
      local.get $a|353
      local.get $lo|365
      local.get $plo64|354
      i64.lt_u
      i64.extend_i32_u
      i64.add
      local.set $p_hi|366
      local.get $p_hi|366
      global.get $~lib/util/dtoa/EXTRA_SHIFT
      i64.extend_i32_s
      i64.shr_u
      local.set $integral|367
      local.get $p_hi|366
      i64.const 64
      global.get $~lib/util/dtoa/EXTRA_SHIFT
      i64.extend_i32_s
      i64.sub
      i64.shl
      local.get $lo|365
      global.get $~lib/util/dtoa/EXTRA_SHIFT
      i64.extend_i32_s
      i64.shr_u
      i64.or
      local.set $dotOne|368
      local.get $pHi|340
      global.get $~lib/util/dtoa/EXTRA_SHIFT
      i32.const 1
      i32.add
      local.get $shift|307
      i32.sub
      i64.extend_i32_s
      i64.shr_u
      i64.const 1
      local.get $binSig|166
      i64.const 1
      i64.and
      i64.sub
      i64.add
      local.set $halfUlp|369
      block $~lib/util/dtoa/umul128AddHi64|inlined.2 (result i64)
       local.get $dotOne|368
       local.set $x|370
       i64.const 10
       local.set $y|371
       global.get $~lib/util/dtoa/BIASED_HALF
       local.set $c|372
       local.get $x|370
       local.get $y|371
       i64.mul
       local.set $lo|373
       block $~lib/util/dtoa/mulhi64|inlined.18 (result i64)
        local.get $x|370
        local.set $a|374
        local.get $y|371
        local.set $b|375
        local.get $a|374
        i64.const 4294967295
        i64.and
        local.set $a0|376
        local.get $a|374
        i64.const 32
        i64.shr_u
        local.set $a1|377
        local.get $b|375
        i64.const 4294967295
        i64.and
        local.set $b0|378
        local.get $b|375
        i64.const 32
        i64.shr_u
        local.set $b1|379
        local.get $a0|376
        local.get $b0|378
        i64.mul
        local.set $w0|380
        local.get $a1|377
        local.get $b0|378
        i64.mul
        local.get $w0|380
        i64.const 32
        i64.shr_u
        i64.add
        local.set $t|381
        local.get $t|381
        i64.const 4294967295
        i64.and
        local.set $w1|382
        local.get $t|381
        i64.const 32
        i64.shr_u
        local.set $w2|383
        local.get $a0|376
        local.get $b1|379
        i64.mul
        local.get $w1|382
        i64.add
        local.set $w1|382
        local.get $a1|377
        local.get $b1|379
        i64.mul
        local.get $w2|383
        i64.add
        local.get $w1|382
        i64.const 32
        i64.shr_u
        i64.add
        br $~lib/util/dtoa/mulhi64|inlined.18
       end
       local.set $hi|384
       local.get $hi|384
       local.get $lo|373
       local.get $c|372
       i64.add
       local.get $lo|373
       i64.lt_u
       i64.extend_i32_u
       i64.add
       br $~lib/util/dtoa/umul128AddHi64|inlined.2
      end
      local.set $one|385
      local.get $dotOne|368
      local.get $halfUlp|369
      i64.lt_u
      if (result i64)
       i64.const 0
      else
       local.get $one|385
      end
      local.set $one|385
      i64.const 0
      i64.const -1
      i64.xor
      local.get $dotOne|368
      i64.sub
      local.get $halfUlp|369
      i64.lt_u
      if (result i64)
       i64.const 10
      else
       local.get $one|385
      end
      local.set $one|385
      local.get $integral|367
      local.set $integral|386
      local.get $one|385
      local.set $one|387
      local.get $decExp|303
      local.set $decExp|388
      local.get $one|387
      i64.const 10
      i64.eq
      if
       local.get $integral|386
       i64.const 1
       i64.add
       global.set $~lib/util/dtoa/gSig
       i32.const 0
       global.set $~lib/util/dtoa/gLastDigit
       i32.const 0
       global.set $~lib/util/dtoa/gHasLastDigit
      else
       local.get $one|387
       i64.const 0
       i64.eq
       if
        local.get $integral|386
        global.set $~lib/util/dtoa/gSig
        i32.const 0
        global.set $~lib/util/dtoa/gLastDigit
        i32.const 0
        global.set $~lib/util/dtoa/gHasLastDigit
       else
        local.get $integral|386
        global.set $~lib/util/dtoa/gSig
        local.get $one|387
        i32.wrap_i64
        global.set $~lib/util/dtoa/gLastDigit
        i32.const 1
        global.set $~lib/util/dtoa/gHasLastDigit
       end
      end
      local.get $decExp|388
      global.set $~lib/util/dtoa/gExp
     end
    end
    global.get $~lib/util/dtoa/gSig
    i64.const 1000000000000000
    i64.lt_u
    if
     block $~lib/util/dtoa/normalizeDoubleShortest|inlined.0
      global.get $~lib/util/dtoa/gSig
      i64.const 10
      i64.mul
      global.get $~lib/util/dtoa/gHasLastDigit
      if (result i64)
       global.get $~lib/util/dtoa/gLastDigit
       i64.extend_i32_s
      else
       i64.const 0
      end
      i64.add
      local.set $full
      local.get $full
      i64.const 1000000000000000
      i64.ge_u
      if
       local.get $full
       global.set $~lib/util/dtoa/gSig
       global.get $~lib/util/dtoa/gExp
       i32.const 1
       i32.sub
       global.set $~lib/util/dtoa/gExp
       i32.const 0
       global.set $~lib/util/dtoa/gLastDigit
       i32.const 0
       global.set $~lib/util/dtoa/gHasLastDigit
       br $~lib/util/dtoa/normalizeDoubleShortest|inlined.0
      end
      i32.const 16
      block $~lib/util/dtoa/decimalLen15|inlined.1 (result i32)
       local.get $full
       local.set $v|390
       local.get $v|390
       i64.const 100000000
       i64.lt_u
       if
        local.get $v|390
        i64.const 10000
        i64.lt_u
        if
         local.get $v|390
         i64.const 100
         i64.lt_u
         if
          local.get $v|390
          i64.const 10
          i64.lt_u
          if (result i32)
           i32.const 1
          else
           i32.const 2
          end
          br $~lib/util/dtoa/decimalLen15|inlined.1
         end
         local.get $v|390
         i64.const 1000
         i64.lt_u
         if (result i32)
          i32.const 3
         else
          i32.const 4
         end
         br $~lib/util/dtoa/decimalLen15|inlined.1
        end
        local.get $v|390
        i64.const 1000000
        i64.lt_u
        if
         local.get $v|390
         i64.const 100000
         i64.lt_u
         if (result i32)
          i32.const 5
         else
          i32.const 6
         end
         br $~lib/util/dtoa/decimalLen15|inlined.1
        end
        local.get $v|390
        i64.const 10000000
        i64.lt_u
        if (result i32)
         i32.const 7
        else
         i32.const 8
        end
        br $~lib/util/dtoa/decimalLen15|inlined.1
       end
       local.get $v|390
       i64.const 1000000000000
       i64.lt_u
       if
        local.get $v|390
        i64.const 10000000000
        i64.lt_u
        if
         local.get $v|390
         i64.const 1000000000
         i64.lt_u
         if (result i32)
          i32.const 9
         else
          i32.const 10
         end
         br $~lib/util/dtoa/decimalLen15|inlined.1
        end
        local.get $v|390
        i64.const 100000000000
        i64.lt_u
        if (result i32)
         i32.const 11
        else
         i32.const 12
        end
        br $~lib/util/dtoa/decimalLen15|inlined.1
       end
       local.get $v|390
       i64.const 100000000000000
       i64.lt_u
       if
        local.get $v|390
        i64.const 10000000000000
        i64.lt_u
        if (result i32)
         i32.const 13
        else
         i32.const 14
        end
        br $~lib/util/dtoa/decimalLen15|inlined.1
       end
       i32.const 15
       br $~lib/util/dtoa/decimalLen15|inlined.1
      end
      i32.sub
      local.set $scale
      i32.const 4544
      local.get $scale
      i32.const 3
      i32.shl
      i32.add
      f64.load
      i64.trunc_sat_f64_u
      local.set $mul
      local.get $full
      local.get $mul
      i64.mul
      global.set $~lib/util/dtoa/gSig
      global.get $~lib/util/dtoa/gExp
      local.get $scale
      i32.const 1
      i32.add
      i32.sub
      global.set $~lib/util/dtoa/gExp
      i32.const 0
      global.set $~lib/util/dtoa/gLastDigit
      i32.const 0
      global.set $~lib/util/dtoa/gHasLastDigit
     end
    end
    global.get $~lib/util/dtoa/gHasLastDigit
    local.set $hasLastDigit
    global.get $~lib/util/dtoa/gSig
    i64.const 1000000000000000
    i64.ge_u
    local.set $hasExtraDigit
    global.get $~lib/util/dtoa/gExp
    global.get $~lib/util/dtoa/DOUBLE_MAX_DIGITS10
    i32.add
    i32.const 2
    i32.sub
    local.get $hasExtraDigit
    i32.add
    local.set $decExp|395
    local.get $buf|7
    local.set $start
    global.get $~lib/util/dtoa/gSig
    local.set $value|397
    i32.const 0
    drop
    block $~lib/util/dtoa/toDigits64Swar|inlined.0
     local.get $value|397
     local.set $value|398
     local.get $value|398
     i64.const 100000000
     i64.div_u
     local.set $hi|399
     local.get $value|398
     local.get $hi|399
     i64.const 100000000
     i64.mul
     i64.sub
     local.set $lo|400
     local.get $hi|399
     call $~lib/util/dtoa/toBcd8
     global.get $~lib/util/dtoa/gBcd
     local.set $hiBcd
     global.get $~lib/util/dtoa/gBcdLen
     local.set $hiLen
     local.get $lo|400
     i64.const 0
     i64.eq
     if
      local.get $hiBcd
      global.get $~lib/util/dtoa/ZEROS
      i64.add
      global.set $~lib/util/dtoa/gDigHi
      global.get $~lib/util/dtoa/ZEROS
      global.set $~lib/util/dtoa/gDigLo
      local.get $hiLen
      global.set $~lib/util/dtoa/gDigNum
      br $~lib/util/dtoa/toDigits64Swar|inlined.0
     end
     local.get $lo|400
     call $~lib/util/dtoa/toBcd8
     local.get $hiBcd
     global.get $~lib/util/dtoa/ZEROS
     i64.add
     global.set $~lib/util/dtoa/gDigHi
     global.get $~lib/util/dtoa/gBcd
     global.get $~lib/util/dtoa/ZEROS
     i64.add
     global.set $~lib/util/dtoa/gDigLo
     i32.const 8
     global.get $~lib/util/dtoa/gBcdLen
     i32.add
     global.set $~lib/util/dtoa/gDigNum
    end
    local.get $decExp|395
    global.get $~lib/util/dtoa/MIN_FIXED_DEC_EXP
    i32.ge_s
    if (result i32)
     local.get $decExp|395
     global.get $~lib/util/dtoa/MAX_FIXED_DEC_EXP
     i32.le_s
    else
     i32.const 0
    end
    if
     block $~lib/util/dtoa/writeFixed|inlined.0 (result i32)
      local.get $buf|7
      local.set $buf|403
      local.get $start
      local.set $start|404
      local.get $decExp|395
      local.set $decExp|405
      local.get $hasLastDigit
      local.set $hasLastDigit|406
      local.get $decExp|405
      i32.const 0
      i32.lt_s
      if
       local.get $start|404
       local.set $p|407
       global.get $~lib/util/dtoa/ZEROS
       local.set $ascii|408
       i32.const 0
       local.set $off|409
       local.get $p|407
       local.get $off|409
       i32.add
       local.set $base|410
       i32.const 0
       drop
       local.get $base|410
       local.get $ascii|408
       i64.const 255
       i64.and
       i32.wrap_i64
       i32.store16
       local.get $base|410
       local.get $ascii|408
       i64.const 8
       i64.shr_u
       i64.const 255
       i64.and
       i32.wrap_i64
       i32.store16 offset=2
       local.get $base|410
       local.get $ascii|408
       i64.const 16
       i64.shr_u
       i64.const 255
       i64.and
       i32.wrap_i64
       i32.store16 offset=4
       local.get $base|410
       local.get $ascii|408
       i64.const 24
       i64.shr_u
       i64.const 255
       i64.and
       i32.wrap_i64
       i32.store16 offset=6
       local.get $base|410
       local.get $ascii|408
       i64.const 32
       i64.shr_u
       i64.const 255
       i64.and
       i32.wrap_i64
       i32.store16 offset=8
       local.get $base|410
       local.get $ascii|408
       i64.const 40
       i64.shr_u
       i64.const 255
       i64.and
       i32.wrap_i64
       i32.store16 offset=10
       local.get $base|410
       local.get $ascii|408
       i64.const 48
       i64.shr_u
       i64.const 255
       i64.and
       i32.wrap_i64
       i32.store16 offset=12
       local.get $base|410
       local.get $ascii|408
       i64.const 56
       i64.shr_u
       i32.wrap_i64
       i32.store16 offset=14
      end
      i64.const 48
      local.get $hasLastDigit|406
      if (result i64)
       global.get $~lib/util/dtoa/gLastDigit
       i64.extend_i32_s
      else
       i64.const 0
      end
      i64.add
      local.set $lastDigitChar
      local.get $hasLastDigit|406
      if (result i32)
       i32.const 16
      else
       global.get $~lib/util/dtoa/gDigNum
       i32.const 1
       i32.sub
      end
      local.set $numDigits
      global.get $~lib/util/dtoa/gDigHi
      local.set $dHi
      global.get $~lib/util/dtoa/gDigLo
      local.set $dLo
      local.get $decExp|405
      i32.const 16
      i32.ge_s
      if
       local.get $buf|403
       local.set $p|415
       local.get $dHi
       local.set $ascii|416
       i32.const 0
       local.set $off|417
       local.get $p|415
       local.get $off|417
       i32.add
       local.set $base|418
       i32.const 0
       drop
       local.get $base|418
       local.get $ascii|416
       i64.const 255
       i64.and
       i32.wrap_i64
       i32.store16
       local.get $base|418
       local.get $ascii|416
       i64.const 8
       i64.shr_u
       i64.const 255
       i64.and
       i32.wrap_i64
       i32.store16 offset=2
       local.get $base|418
       local.get $ascii|416
       i64.const 16
       i64.shr_u
       i64.const 255
       i64.and
       i32.wrap_i64
       i32.store16 offset=4
       local.get $base|418
       local.get $ascii|416
       i64.const 24
       i64.shr_u
       i64.const 255
       i64.and
       i32.wrap_i64
       i32.store16 offset=6
       local.get $base|418
       local.get $ascii|416
       i64.const 32
       i64.shr_u
       i64.const 255
       i64.and
       i32.wrap_i64
       i32.store16 offset=8
       local.get $base|418
       local.get $ascii|416
       i64.const 40
       i64.shr_u
       i64.const 255
       i64.and
       i32.wrap_i64
       i32.store16 offset=10
       local.get $base|418
       local.get $ascii|416
       i64.const 48
       i64.shr_u
       i64.const 255
       i64.and
       i32.wrap_i64
       i32.store16 offset=12
       local.get $base|418
       local.get $ascii|416
       i64.const 56
       i64.shr_u
       i32.wrap_i64
       i32.store16 offset=14
       local.get $buf|403
       local.set $p|419
       local.get $dLo
       local.set $ascii|420
       i32.const 16
       local.set $off|421
       local.get $p|419
       local.get $off|421
       i32.add
       local.set $base|422
       i32.const 0
       drop
       local.get $base|422
       local.get $ascii|420
       i64.const 255
       i64.and
       i32.wrap_i64
       i32.store16
       local.get $base|422
       local.get $ascii|420
       i64.const 8
       i64.shr_u
       i64.const 255
       i64.and
       i32.wrap_i64
       i32.store16 offset=2
       local.get $base|422
       local.get $ascii|420
       i64.const 16
       i64.shr_u
       i64.const 255
       i64.and
       i32.wrap_i64
       i32.store16 offset=4
       local.get $base|422
       local.get $ascii|420
       i64.const 24
       i64.shr_u
       i64.const 255
       i64.and
       i32.wrap_i64
       i32.store16 offset=6
       local.get $base|422
       local.get $ascii|420
       i64.const 32
       i64.shr_u
       i64.const 255
       i64.and
       i32.wrap_i64
       i32.store16 offset=8
       local.get $base|422
       local.get $ascii|420
       i64.const 40
       i64.shr_u
       i64.const 255
       i64.and
       i32.wrap_i64
       i32.store16 offset=10
       local.get $base|422
       local.get $ascii|420
       i64.const 48
       i64.shr_u
       i64.const 255
       i64.and
       i32.wrap_i64
       i32.store16 offset=12
       local.get $base|422
       local.get $ascii|420
       i64.const 56
       i64.shr_u
       i32.wrap_i64
       i32.store16 offset=14
       local.get $buf|403
       i32.const 32
       i32.add
       local.get $lastDigitChar
       i32.wrap_i64
       i32.store16
       local.get $buf|403
       local.get $decExp|405
       i32.const 1
       i32.add
       i32.const 1
       i32.shl
       i32.add
       local.set $endByte
       local.get $buf|403
       i32.const 17
       i32.const 1
       i32.shl
       i32.add
       local.set $z
       loop $for-loop|1
        local.get $z
        local.get $endByte
        i32.lt_u
        if
         local.get $z
         local.set $p|425
         global.get $~lib/util/dtoa/ZEROS
         local.set $ascii|426
         i32.const 0
         local.set $off|427
         local.get $p|425
         local.get $off|427
         i32.add
         local.set $base|428
         i32.const 0
         drop
         local.get $base|428
         local.get $ascii|426
         i64.const 255
         i64.and
         i32.wrap_i64
         i32.store16
         local.get $base|428
         local.get $ascii|426
         i64.const 8
         i64.shr_u
         i64.const 255
         i64.and
         i32.wrap_i64
         i32.store16 offset=2
         local.get $base|428
         local.get $ascii|426
         i64.const 16
         i64.shr_u
         i64.const 255
         i64.and
         i32.wrap_i64
         i32.store16 offset=4
         local.get $base|428
         local.get $ascii|426
         i64.const 24
         i64.shr_u
         i64.const 255
         i64.and
         i32.wrap_i64
         i32.store16 offset=6
         local.get $base|428
         local.get $ascii|426
         i64.const 32
         i64.shr_u
         i64.const 255
         i64.and
         i32.wrap_i64
         i32.store16 offset=8
         local.get $base|428
         local.get $ascii|426
         i64.const 40
         i64.shr_u
         i64.const 255
         i64.and
         i32.wrap_i64
         i32.store16 offset=10
         local.get $base|428
         local.get $ascii|426
         i64.const 48
         i64.shr_u
         i64.const 255
         i64.and
         i32.wrap_i64
         i32.store16 offset=12
         local.get $base|428
         local.get $ascii|426
         i64.const 56
         i64.shr_u
         i32.wrap_i64
         i32.store16 offset=14
         local.get $z
         i32.const 16
         i32.add
         local.set $z
         br $for-loop|1
        end
       end
       local.get $endByte
       br $~lib/util/dtoa/writeFixed|inlined.0
      end
      local.get $numDigits
      i32.const 1
      i32.add
      local.set $n
      local.get $decExp|405
      i32.const 0
      i32.ge_s
      if (result i32)
       local.get $n
       i32.const 1
       i32.add
      else
       local.get $n
      end
      local.set $endPos
      i32.const 1
      local.get $decExp|405
      i32.sub
      local.get $decExp|405
      i32.const 31
      i32.shr_s
      i32.and
      local.set $startPos
      local.get $buf|403
      local.get $startPos
      i32.const 1
      i32.shl
      i32.add
      local.set $buf|403
      local.get $buf|403
      local.set $p|432
      local.get $dHi
      local.set $ascii|433
      i32.const 0
      local.set $off|434
      local.get $p|432
      local.get $off|434
      i32.add
      local.set $base|435
      i32.const 0
      drop
      local.get $base|435
      local.get $ascii|433
      i64.const 255
      i64.and
      i32.wrap_i64
      i32.store16
      local.get $base|435
      local.get $ascii|433
      i64.const 8
      i64.shr_u
      i64.const 255
      i64.and
      i32.wrap_i64
      i32.store16 offset=2
      local.get $base|435
      local.get $ascii|433
      i64.const 16
      i64.shr_u
      i64.const 255
      i64.and
      i32.wrap_i64
      i32.store16 offset=4
      local.get $base|435
      local.get $ascii|433
      i64.const 24
      i64.shr_u
      i64.const 255
      i64.and
      i32.wrap_i64
      i32.store16 offset=6
      local.get $base|435
      local.get $ascii|433
      i64.const 32
      i64.shr_u
      i64.const 255
      i64.and
      i32.wrap_i64
      i32.store16 offset=8
      local.get $base|435
      local.get $ascii|433
      i64.const 40
      i64.shr_u
      i64.const 255
      i64.and
      i32.wrap_i64
      i32.store16 offset=10
      local.get $base|435
      local.get $ascii|433
      i64.const 48
      i64.shr_u
      i64.const 255
      i64.and
      i32.wrap_i64
      i32.store16 offset=12
      local.get $base|435
      local.get $ascii|433
      i64.const 56
      i64.shr_u
      i32.wrap_i64
      i32.store16 offset=14
      local.get $buf|403
      local.set $p|436
      local.get $dLo
      local.set $ascii|437
      i32.const 16
      local.set $off|438
      local.get $p|436
      local.get $off|438
      i32.add
      local.set $base|439
      i32.const 0
      drop
      local.get $base|439
      local.get $ascii|437
      i64.const 255
      i64.and
      i32.wrap_i64
      i32.store16
      local.get $base|439
      local.get $ascii|437
      i64.const 8
      i64.shr_u
      i64.const 255
      i64.and
      i32.wrap_i64
      i32.store16 offset=2
      local.get $base|439
      local.get $ascii|437
      i64.const 16
      i64.shr_u
      i64.const 255
      i64.and
      i32.wrap_i64
      i32.store16 offset=4
      local.get $base|439
      local.get $ascii|437
      i64.const 24
      i64.shr_u
      i64.const 255
      i64.and
      i32.wrap_i64
      i32.store16 offset=6
      local.get $base|439
      local.get $ascii|437
      i64.const 32
      i64.shr_u
      i64.const 255
      i64.and
      i32.wrap_i64
      i32.store16 offset=8
      local.get $base|439
      local.get $ascii|437
      i64.const 40
      i64.shr_u
      i64.const 255
      i64.and
      i32.wrap_i64
      i32.store16 offset=10
      local.get $base|439
      local.get $ascii|437
      i64.const 48
      i64.shr_u
      i64.const 255
      i64.and
      i32.wrap_i64
      i32.store16 offset=12
      local.get $base|439
      local.get $ascii|437
      i64.const 56
      i64.shr_u
      i32.wrap_i64
      i32.store16 offset=14
      local.get $buf|403
      i32.const 32
      i32.add
      local.get $lastDigitChar
      i32.wrap_i64
      i32.store16
      local.get $decExp|405
      i32.const 0
      i32.ge_s
      if
       local.get $decExp|405
       i32.const 1
       i32.add
       local.set $k
       local.get $lastDigitChar
       local.set $d16
       local.get $k
       i32.const 3
       i32.shl
       local.set $s
       local.get $s
       i32.const 64
       i32.lt_s
       if
        local.get $dHi
        local.get $s
        i64.extend_i32_s
        i64.shr_u
        local.get $dLo
        i64.const 64
        local.get $s
        i64.extend_i32_s
        i64.sub
        i64.shl
        i64.or
        local.set $fHi
        local.get $dLo
        local.get $s
        i64.extend_i32_s
        i64.shr_u
        local.get $d16
        i64.const 64
        local.get $s
        i64.extend_i32_s
        i64.sub
        i64.shl
        i64.or
        local.set $fLo
       else
        local.get $s
        i32.const 64
        i32.eq
        if
         local.get $dLo
         local.set $fHi
         local.get $d16
         local.set $fLo
        else
         local.get $s
         i32.const 128
         i32.lt_s
         if
          local.get $s
          i32.const 64
          i32.sub
          local.set $s2
          local.get $dLo
          local.get $s2
          i64.extend_i32_s
          i64.shr_u
          local.get $d16
          i64.const 64
          local.get $s2
          i64.extend_i32_s
          i64.sub
          i64.shl
          i64.or
          local.set $fHi
          local.get $d16
          local.get $s2
          i64.extend_i32_s
          i64.shr_u
          local.set $fLo
         else
          local.get $d16
          local.set $fHi
          i64.const 0
          local.set $fLo
         end
        end
       end
       local.get $buf|403
       local.get $k
       i32.const 1
       i32.add
       i32.const 1
       i32.shl
       i32.add
       local.set $p|446
       local.get $fHi
       local.set $ascii|447
       i32.const 0
       local.set $off|448
       local.get $p|446
       local.get $off|448
       i32.add
       local.set $base|449
       i32.const 0
       drop
       local.get $base|449
       local.get $ascii|447
       i64.const 255
       i64.and
       i32.wrap_i64
       i32.store16
       local.get $base|449
       local.get $ascii|447
       i64.const 8
       i64.shr_u
       i64.const 255
       i64.and
       i32.wrap_i64
       i32.store16 offset=2
       local.get $base|449
       local.get $ascii|447
       i64.const 16
       i64.shr_u
       i64.const 255
       i64.and
       i32.wrap_i64
       i32.store16 offset=4
       local.get $base|449
       local.get $ascii|447
       i64.const 24
       i64.shr_u
       i64.const 255
       i64.and
       i32.wrap_i64
       i32.store16 offset=6
       local.get $base|449
       local.get $ascii|447
       i64.const 32
       i64.shr_u
       i64.const 255
       i64.and
       i32.wrap_i64
       i32.store16 offset=8
       local.get $base|449
       local.get $ascii|447
       i64.const 40
       i64.shr_u
       i64.const 255
       i64.and
       i32.wrap_i64
       i32.store16 offset=10
       local.get $base|449
       local.get $ascii|447
       i64.const 48
       i64.shr_u
       i64.const 255
       i64.and
       i32.wrap_i64
       i32.store16 offset=12
       local.get $base|449
       local.get $ascii|447
       i64.const 56
       i64.shr_u
       i32.wrap_i64
       i32.store16 offset=14
       local.get $endPos
       local.get $k
       i32.const 9
       i32.add
       i32.gt_s
       if
        local.get $buf|403
        local.get $k
        i32.const 9
        i32.add
        i32.const 1
        i32.shl
        i32.add
        local.set $p|450
        local.get $fLo
        local.set $ascii|451
        i32.const 0
        local.set $off|452
        local.get $p|450
        local.get $off|452
        i32.add
        local.set $base|453
        i32.const 0
        drop
        local.get $base|453
        local.get $ascii|451
        i64.const 255
        i64.and
        i32.wrap_i64
        i32.store16
        local.get $base|453
        local.get $ascii|451
        i64.const 8
        i64.shr_u
        i64.const 255
        i64.and
        i32.wrap_i64
        i32.store16 offset=2
        local.get $base|453
        local.get $ascii|451
        i64.const 16
        i64.shr_u
        i64.const 255
        i64.and
        i32.wrap_i64
        i32.store16 offset=4
        local.get $base|453
        local.get $ascii|451
        i64.const 24
        i64.shr_u
        i64.const 255
        i64.and
        i32.wrap_i64
        i32.store16 offset=6
        local.get $base|453
        local.get $ascii|451
        i64.const 32
        i64.shr_u
        i64.const 255
        i64.and
        i32.wrap_i64
        i32.store16 offset=8
        local.get $base|453
        local.get $ascii|451
        i64.const 40
        i64.shr_u
        i64.const 255
        i64.and
        i32.wrap_i64
        i32.store16 offset=10
        local.get $base|453
        local.get $ascii|451
        i64.const 48
        i64.shr_u
        i64.const 255
        i64.and
        i32.wrap_i64
        i32.store16 offset=12
        local.get $base|453
        local.get $ascii|451
        i64.const 56
        i64.shr_u
        i32.wrap_i64
        i32.store16 offset=14
       end
       local.get $buf|403
       local.get $k
       i32.const 1
       i32.shl
       i32.add
       i32.const 46
       i32.store16
      else
       local.get $start|404
       i32.const 46
       i32.store16 offset=2
      end
      local.get $buf|403
      local.get $endPos
      i32.const 1
      i32.shl
      i32.add
      br $~lib/util/dtoa/writeFixed|inlined.0
     end
     br $~lib/util/dtoa/formatDecodedDouble|inlined.0
    end
    block $~lib/util/dtoa/writeExpNotation|inlined.0 (result i32)
     local.get $buf|7
     local.set $buf|454
     local.get $start
     local.set $start|455
     local.get $decExp|395
     local.set $decExp|456
     local.get $hasLastDigit
     local.set $hasLastDigit|457
     local.get $hasExtraDigit
     local.set $hasExtraDigit|458
     i32.const 16
     local.set $bcdSize
     local.get $buf|454
     local.get $hasExtraDigit|458
     i32.const 1
     i32.shl
     i32.add
     local.set $buf|454
     local.get $buf|454
     local.set $p|460
     global.get $~lib/util/dtoa/gDigHi
     local.set $ascii|461
     i32.const 0
     local.set $off|462
     local.get $p|460
     local.get $off|462
     i32.add
     local.set $base|463
     i32.const 0
     drop
     local.get $base|463
     local.get $ascii|461
     i64.const 255
     i64.and
     i32.wrap_i64
     i32.store16
     local.get $base|463
     local.get $ascii|461
     i64.const 8
     i64.shr_u
     i64.const 255
     i64.and
     i32.wrap_i64
     i32.store16 offset=2
     local.get $base|463
     local.get $ascii|461
     i64.const 16
     i64.shr_u
     i64.const 255
     i64.and
     i32.wrap_i64
     i32.store16 offset=4
     local.get $base|463
     local.get $ascii|461
     i64.const 24
     i64.shr_u
     i64.const 255
     i64.and
     i32.wrap_i64
     i32.store16 offset=6
     local.get $base|463
     local.get $ascii|461
     i64.const 32
     i64.shr_u
     i64.const 255
     i64.and
     i32.wrap_i64
     i32.store16 offset=8
     local.get $base|463
     local.get $ascii|461
     i64.const 40
     i64.shr_u
     i64.const 255
     i64.and
     i32.wrap_i64
     i32.store16 offset=10
     local.get $base|463
     local.get $ascii|461
     i64.const 48
     i64.shr_u
     i64.const 255
     i64.and
     i32.wrap_i64
     i32.store16 offset=12
     local.get $base|463
     local.get $ascii|461
     i64.const 56
     i64.shr_u
     i32.wrap_i64
     i32.store16 offset=14
     local.get $bcdSize
     i32.const 16
     i32.eq
     if
      local.get $buf|454
      local.set $p|464
      global.get $~lib/util/dtoa/gDigLo
      local.set $ascii|465
      i32.const 16
      local.set $off|466
      local.get $p|464
      local.get $off|466
      i32.add
      local.set $base|467
      i32.const 0
      drop
      local.get $base|467
      local.get $ascii|465
      i64.const 255
      i64.and
      i32.wrap_i64
      i32.store16
      local.get $base|467
      local.get $ascii|465
      i64.const 8
      i64.shr_u
      i64.const 255
      i64.and
      i32.wrap_i64
      i32.store16 offset=2
      local.get $base|467
      local.get $ascii|465
      i64.const 16
      i64.shr_u
      i64.const 255
      i64.and
      i32.wrap_i64
      i32.store16 offset=4
      local.get $base|467
      local.get $ascii|465
      i64.const 24
      i64.shr_u
      i64.const 255
      i64.and
      i32.wrap_i64
      i32.store16 offset=6
      local.get $base|467
      local.get $ascii|465
      i64.const 32
      i64.shr_u
      i64.const 255
      i64.and
      i32.wrap_i64
      i32.store16 offset=8
      local.get $base|467
      local.get $ascii|465
      i64.const 40
      i64.shr_u
      i64.const 255
      i64.and
      i32.wrap_i64
      i32.store16 offset=10
      local.get $base|467
      local.get $ascii|465
      i64.const 48
      i64.shr_u
      i64.const 255
      i64.and
      i32.wrap_i64
      i32.store16 offset=12
      local.get $base|467
      local.get $ascii|465
      i64.const 56
      i64.shr_u
      i32.wrap_i64
      i32.store16 offset=14
     end
     local.get $buf|454
     local.get $bcdSize
     i32.const 1
     i32.shl
     i32.add
     i32.const 48
     global.get $~lib/util/dtoa/gLastDigit
     i32.add
     i32.store16
     local.get $buf|454
     local.get $hasLastDigit|457
     if (result i32)
      local.get $bcdSize
      i32.const 1
      i32.add
     else
      global.get $~lib/util/dtoa/gDigNum
     end
     i32.const 1
     i32.shl
     i32.add
     local.set $buf|454
     local.get $start|455
     i32.load16_u offset=2
     local.set $lead
     local.get $start|455
     local.get $lead
     i32.store16
     local.get $start|455
     i32.const 46
     i32.store16 offset=2
     local.get $buf|454
     local.get $buf|454
     i32.const 2
     i32.sub
     local.get $start|455
     i32.const 2
     i32.add
     i32.eq
     i32.const 1
     i32.shl
     i32.sub
     local.set $buf|454
     block $~lib/util/dtoa/writeExponent|inlined.0 (result i32)
      local.get $buf|454
      local.set $buf|469
      local.get $decExp|456
      local.set $decExp|470
      local.get $decExp|470
      i32.const 31
      i32.shr_s
      local.set $m|471
      local.get $buf|469
      i32.const 101
      i32.store16
      local.get $buf|469
      i32.const 43
      local.get $m|471
      i32.const 2
      i32.and
      i32.add
      i32.store16 offset=2
      local.get $buf|469
      i32.const 4
      i32.add
      local.set $buf|469
      local.get $decExp|470
      local.get $m|471
      i32.xor
      local.get $m|471
      i32.sub
      local.set $e
      local.get $e
      i32.const 100
      i32.ge_s
      if
       local.get $e
       global.get $~lib/util/dtoa/DIV100_SIG
       i32.wrap_i64
       i32.mul
       global.get $~lib/util/dtoa/DIV100_EXP
       i32.shr_u
       local.set $d
       local.get $buf|469
       i32.const 48
       local.get $d
       i32.add
       i32.store16
       local.get $buf|469
       i32.const 2700
       local.get $e
       local.get $d
       i32.const 100
       i32.mul
       i32.sub
       i32.const 2
       i32.shl
       i32.add
       i32.load
       i32.store offset=2
       local.get $buf|469
       i32.const 6
       i32.add
       br $~lib/util/dtoa/writeExponent|inlined.0
      end
      local.get $e
      i32.const 10
      i32.ge_s
      if
       local.get $buf|469
       i32.const 2700
       local.get $e
       i32.const 2
       i32.shl
       i32.add
       i32.load
       i32.store
       local.get $buf|469
       i32.const 4
       i32.add
       br $~lib/util/dtoa/writeExponent|inlined.0
      end
      local.get $buf|469
      i32.const 48
      local.get $e
      i32.add
      i32.store16
      local.get $buf|469
      i32.const 2
      i32.add
      br $~lib/util/dtoa/writeExponent|inlined.0
     end
     br $~lib/util/dtoa/writeExpNotation|inlined.0
    end
    br $~lib/util/dtoa/formatDecodedDouble|inlined.0
   end
   br $~lib/util/dtoa/formatDouble|inlined.0
  end
  local.get $buffer
  i32.sub
  i32.const 1
  i32.shr_u
  return
 )
 (func $~lib/number/F64#toString (param $this f64) (param $radix i32) (result i32)
  local.get $this
  call $~lib/util/number/dtoa<f64>
  return
 )
 (func $templateliteral/Ref#set:value (param $this i32) (param $value i32)
  local.get $this
  local.get $value
  i32.store
 )
 (func $templateliteral/Ref#get:value (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $templateliteral/RecursiveObject#set:key (param $this i32) (param $key i32)
  local.get $this
  local.get $key
  i32.store
  local.get $this
  local.get $key
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $templateliteral/RecursiveObject#set:val (param $this i32) (param $val i32)
  local.get $this
  local.get $val
  i32.store offset=4
  local.get $this
  local.get $val
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $templateliteral/RecursiveObject#get:val (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $templateliteral/RecursiveObject#get:key (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $start:templateliteral
  memory.size
  i32.const 16
  i32.shl
  global.get $~lib/memory/__heap_base
  i32.sub
  i32.const 1
  i32.shr_u
  global.set $~lib/rt/itcms/threshold
  i32.const 1984
  call $~lib/rt/itcms/initLazy
  global.set $~lib/rt/itcms/pinSpace
  i32.const 2016
  call $~lib/rt/itcms/initLazy
  global.set $~lib/rt/itcms/toSpace
  i32.const 2160
  call $~lib/rt/itcms/initLazy
  global.set $~lib/rt/itcms/fromSpace
  call $templateliteral/test_string
  call $templateliteral/test_integer
  call $templateliteral/test_float
  call $templateliteral/test_fast_paths_string
  call $templateliteral/test_ref
  call $templateliteral/test_null
  call $templateliteral/test_recursive
 )
 (func $~lib/rt/__visit_globals (param $0 i32)
  (local $1 i32)
  i32.const 2064
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 1872
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 3120
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 4176
  local.get $0
  call $~lib/rt/itcms/__visit
 )
 (func $~lib/arraybuffer/ArrayBufferView~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/itcms/__visit
 )
 (func $~lib/object/Object~visit (param $0 i32) (param $1 i32)
 )
 (func $~lib/staticarray/StaticArray<~lib/string/String>#__visit (param $this i32) (param $cookie i32)
  (local $cur i32)
  (local $end i32)
  (local $val i32)
  i32.const 1
  drop
  local.get $this
  local.set $cur
  local.get $cur
  local.get $this
  i32.const 20
  i32.sub
  call $~lib/rt/common/OBJECT#get:rtSize
  i32.add
  local.set $end
  loop $while-continue|0
   local.get $cur
   local.get $end
   i32.lt_u
   if
    local.get $cur
    i32.load
    local.set $val
    local.get $val
    if
     local.get $val
     local.get $cookie
     call $~lib/rt/itcms/__visit
    end
    local.get $cur
    i32.const 4
    i32.add
    local.set $cur
    br $while-continue|0
   end
  end
 )
 (func $~lib/staticarray/StaticArray<~lib/string/String>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  local.get $1
  call $~lib/staticarray/StaticArray<~lib/string/String>#__visit
 )
 (func $templateliteral/RecursiveObject~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/itcms/__visit
  local.get $0
  i32.load offset=4
  local.get $1
  call $~lib/rt/itcms/__visit
 )
 (func $~lib/rt/__visit_members (param $0 i32) (param $1 i32)
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
      local.get $1
      call $~lib/arraybuffer/ArrayBufferView~visit
      return
     end
     local.get $0
     local.get $1
     call $~lib/staticarray/StaticArray<~lib/string/String>~visit
     return
    end
    return
   end
   local.get $0
   local.get $1
   call $templateliteral/RecursiveObject~visit
   return
  end
  unreachable
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
 (func $~stack_check
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/memory/__data_end
  i32.lt_s
  if
   i32.const 38544
   i32.const 38592
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/string/String.__eq (param $left i32) (param $right i32) (result i32)
  (local $leftLength i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $left
  local.get $right
  i32.eq
  if
   i32.const 1
   local.set $3
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $3
   return
  end
  local.get $left
  i32.const 0
  i32.eq
  if (result i32)
   i32.const 1
  else
   local.get $right
   i32.const 0
   i32.eq
  end
  if
   i32.const 0
   local.set $3
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $3
   return
  end
  local.get $left
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/string/String#get:length
  local.set $leftLength
  local.get $leftLength
  local.get $right
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/string/String#get:length
  i32.ne
  if
   i32.const 0
   local.set $3
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $3
   return
  end
  local.get $left
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  i32.const 0
  local.get $right
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  i32.const 0
  local.get $leftLength
  call $~lib/util/string/compareImpl
  i32.eqz
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
  return
 )
 (func $~lib/string/String#concat (param $this i32) (param $other i32) (result i32)
  (local $thisSize i32)
  (local $otherSize i32)
  (local $outSize i32)
  (local $out i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store
  local.get $6
  call $~lib/string/String#get:length
  i32.const 1
  i32.shl
  local.set $thisSize
  local.get $other
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store
  local.get $6
  call $~lib/string/String#get:length
  i32.const 1
  i32.shl
  local.set $otherSize
  local.get $thisSize
  local.get $otherSize
  i32.add
  local.set $outSize
  local.get $outSize
  i32.const 0
  i32.eq
  if
   i32.const 1840
   local.set $6
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $6
   return
  end
  global.get $~lib/memory/__stack_pointer
  local.get $outSize
  i32.const 2
  call $~lib/rt/itcms/__new
  local.tee $out
  i32.store offset=4
  local.get $out
  local.get $this
  local.get $thisSize
  memory.copy
  local.get $out
  local.get $thisSize
  i32.add
  local.get $other
  local.get $otherSize
  memory.copy
  local.get $out
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
  return
 )
 (func $~lib/util/string/joinStringArray (param $dataStart i32) (param $length i32) (param $separator i32) (result i32)
  (local $lastIndex i32)
  (local $4 i32)
  (local $estLen i32)
  (local $value i32)
  (local $i i32)
  (local $offset i32)
  (local $sepLen i32)
  (local $result i32)
  (local $i|11 i32)
  (local $valueLen i32)
  (local $13 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  local.get $length
  i32.const 1
  i32.sub
  local.set $lastIndex
  local.get $lastIndex
  i32.const 0
  i32.lt_s
  if
   i32.const 1840
   local.set $13
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $13
   return
  end
  local.get $lastIndex
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   local.get $dataStart
   i32.load
   local.tee $4
   i32.store
   local.get $4
   if (result i32)
    local.get $4
   else
    i32.const 1840
   end
   local.set $13
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $13
   return
  end
  i32.const 0
  local.set $estLen
  i32.const 0
  local.set $i
  loop $for-loop|0
   local.get $i
   local.get $length
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $dataStart
    local.get $i
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $value
    i32.store offset=4
    local.get $value
    i32.const 0
    i32.ne
    if
     local.get $estLen
     local.get $value
     local.set $13
     global.get $~lib/memory/__stack_pointer
     local.get $13
     i32.store offset=8
     local.get $13
     call $~lib/string/String#get:length
     i32.add
     local.set $estLen
    end
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|0
   end
  end
  i32.const 0
  local.set $offset
  local.get $separator
  local.set $13
  global.get $~lib/memory/__stack_pointer
  local.get $13
  i32.store offset=8
  local.get $13
  call $~lib/string/String#get:length
  local.set $sepLen
  global.get $~lib/memory/__stack_pointer
  local.get $estLen
  local.get $sepLen
  local.get $lastIndex
  i32.mul
  i32.add
  i32.const 1
  i32.shl
  i32.const 2
  call $~lib/rt/itcms/__new
  local.tee $result
  i32.store offset=12
  i32.const 0
  local.set $i|11
  loop $for-loop|1
   local.get $i|11
   local.get $lastIndex
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $dataStart
    local.get $i|11
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $value
    i32.store offset=4
    local.get $value
    i32.const 0
    i32.ne
    if
     local.get $value
     local.set $13
     global.get $~lib/memory/__stack_pointer
     local.get $13
     i32.store offset=8
     local.get $13
     call $~lib/string/String#get:length
     local.set $valueLen
     local.get $result
     local.get $offset
     i32.const 1
     i32.shl
     i32.add
     local.get $value
     local.get $valueLen
     i32.const 1
     i32.shl
     memory.copy
     local.get $offset
     local.get $valueLen
     i32.add
     local.set $offset
    end
    local.get $sepLen
    if
     local.get $result
     local.get $offset
     i32.const 1
     i32.shl
     i32.add
     local.get $separator
     local.get $sepLen
     i32.const 1
     i32.shl
     memory.copy
     local.get $offset
     local.get $sepLen
     i32.add
     local.set $offset
    end
    local.get $i|11
    i32.const 1
    i32.add
    local.set $i|11
    br $for-loop|1
   end
  end
  global.get $~lib/memory/__stack_pointer
  local.get $dataStart
  local.get $lastIndex
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.tee $value
  i32.store offset=4
  local.get $value
  i32.const 0
  i32.ne
  if
   local.get $result
   local.get $offset
   i32.const 1
   i32.shl
   i32.add
   local.get $value
   local.get $value
   local.set $13
   global.get $~lib/memory/__stack_pointer
   local.get $13
   i32.store offset=8
   local.get $13
   call $~lib/string/String#get:length
   i32.const 1
   i32.shl
   memory.copy
  end
  local.get $result
  local.set $13
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $13
  return
 )
 (func $~lib/staticarray/StaticArray<~lib/string/String>#join (param $this i32) (param $separator i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 0
  i32.const 1
  i32.lt_s
  drop
  i32.const 1
  drop
  local.get $this
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  call $~lib/staticarray/StaticArray<~lib/string/String>#get:length
  local.get $separator
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/util/string/joinStringArray
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  return
 )
 (func $templateliteral/test_string
  (local $a i32)
  (local $b i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 28
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 28
  memory.fill
  global.get $~lib/memory/__stack_pointer
  i32.const 32
  local.tee $a
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 64
  local.tee $b
  i32.store offset=4
  local.get $a
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=8
  local.get $4
  i32.const 32
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1776
   i32.const 4
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $a
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=12
  local.get $4
  local.get $b
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=16
  local.get $4
  call $~lib/string/String#concat
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=8
  local.get $4
  i32.const 2272
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1776
   i32.const 5
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $a
  local.tee $2
  i32.store offset=20
  global.get $~lib/memory/__stack_pointer
  local.get $b
  local.tee $3
  i32.store offset=24
  i32.const 2400
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=12
  local.get $4
  i32.const 1
  local.get $2
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=16
  local.get $4
  call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
  i32.const 2400
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=12
  local.get $4
  i32.const 3
  local.get $3
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=16
  local.get $4
  call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
  i32.const 2400
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=12
  local.get $4
  i32.const 1840
  call $~lib/staticarray/StaticArray<~lib/string/String>#join
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=8
  local.get $4
  i32.const 2448
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1776
   i32.const 6
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 28
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $templateliteral/test_integer
  (local $a i32)
  (local $b i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 20
  memory.fill
  i32.const 1
  local.set $a
  i32.const 2
  local.set $b
  local.get $a
  i32.const 10
  call $~lib/number/I32#toString
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  i32.const 4272
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1776
   i32.const 13
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $a
  i32.const 10
  call $~lib/number/I32#toString
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  local.get $4
  local.get $b
  i32.const 10
  call $~lib/number/I32#toString
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=8
  local.get $4
  call $~lib/string/String#concat
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  i32.const 4304
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1776
   i32.const 14
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $a
  i32.const 10
  call $~lib/number/I32#toString
  local.tee $2
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $b
  i32.const 10
  call $~lib/number/I32#toString
  local.tee $3
  i32.store offset=16
  i32.const 4336
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  local.get $4
  i32.const 1
  local.get $2
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=8
  local.get $4
  call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
  i32.const 4336
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  local.get $4
  i32.const 3
  local.get $3
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=8
  local.get $4
  call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
  i32.const 4336
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  local.get $4
  i32.const 1840
  call $~lib/staticarray/StaticArray<~lib/string/String>#join
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  i32.const 4384
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1776
   i32.const 15
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $templateliteral/test_float
  (local $a f64)
  (local $b f64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 20
  memory.fill
  f64.const 1
  local.set $a
  f64.const 2
  local.set $b
  local.get $a
  i32.const 0
  call $~lib/number/F64#toString
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  i32.const 4752
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1776
   i32.const 22
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $a
  i32.const 0
  call $~lib/number/F64#toString
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  local.get $4
  local.get $b
  i32.const 0
  call $~lib/number/F64#toString
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=8
  local.get $4
  call $~lib/string/String#concat
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  i32.const 4784
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1776
   i32.const 23
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $a
  i32.const 0
  call $~lib/number/F64#toString
  local.tee $2
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $b
  i32.const 0
  call $~lib/number/F64#toString
  local.tee $3
  i32.store offset=16
  i32.const 4816
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  local.get $4
  i32.const 1
  local.get $2
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=8
  local.get $4
  call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
  i32.const 4816
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  local.get $4
  i32.const 3
  local.get $3
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=8
  local.get $4
  call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
  i32.const 4816
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  local.get $4
  i32.const 1840
  call $~lib/staticarray/StaticArray<~lib/string/String>#join
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  i32.const 4864
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1776
   i32.const 24
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $templateliteral/test_fast_paths_string
  (local $a i32)
  (local $b i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  i32.const 2
  local.set $a
  global.get $~lib/memory/__stack_pointer
  i32.const 64
  local.tee $b
  i32.store
  local.get $a
  i32.const 10
  call $~lib/number/I32#toString
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  i32.const 4912
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1776
   i32.const 31
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $b
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  i32.const 64
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1776
   i32.const 32
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 4944
  local.get $a
  i32.const 10
  call $~lib/number/I32#toString
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $2
  call $~lib/string/String#concat
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  i32.const 4976
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1776
   i32.const 33
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 4944
  local.get $b
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $2
  call $~lib/string/String#concat
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  i32.const 5008
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1776
   i32.const 34
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $a
  i32.const 10
  call $~lib/number/I32#toString
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $2
  i32.const 5040
  call $~lib/string/String#concat
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  i32.const 5072
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1776
   i32.const 35
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $b
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $2
  i32.const 5040
  call $~lib/string/String#concat
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  i32.const 5104
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1776
   i32.const 36
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $a
  i32.const 10
  call $~lib/number/I32#toString
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $2
  local.get $b
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=12
  local.get $2
  call $~lib/string/String#concat
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  i32.const 5136
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1776
   i32.const 37
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $templateliteral/Ref#constructor (param $this i32) (param $value i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.const 5
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  local.get $value
  call $templateliteral/Ref#set:value
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $~lib/string/String.__concat (param $left i32) (param $right i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $left
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  local.get $right
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  call $~lib/string/String#concat
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  return
 )
 (func $templateliteral/Ref#toString (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  i32.const 5168
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  call $templateliteral/Ref#get:value
  i32.const 10
  call $~lib/number/I32#toString
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/string/String.__concat
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $templateliteral/test_ref
  (local $a i32)
  (local $b i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 32
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 32
  memory.fill
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 1
  call $templateliteral/Ref#constructor
  local.tee $a
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 2
  call $templateliteral/Ref#constructor
  local.tee $b
  i32.store offset=4
  local.get $a
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=12
  local.get $4
  call $templateliteral/Ref#toString
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=8
  local.get $4
  i32.const 5200
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1776
   i32.const 51
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $a
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=20
  local.get $4
  call $templateliteral/Ref#toString
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=12
  local.get $4
  local.get $b
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=20
  local.get $4
  call $templateliteral/Ref#toString
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=16
  local.get $4
  call $~lib/string/String#concat
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=8
  local.get $4
  i32.const 5232
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1776
   i32.const 52
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $a
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=12
  local.get $4
  call $templateliteral/Ref#toString
  local.tee $2
  i32.store offset=24
  global.get $~lib/memory/__stack_pointer
  local.get $b
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=12
  local.get $4
  call $templateliteral/Ref#toString
  local.tee $3
  i32.store offset=28
  i32.const 5280
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=12
  local.get $4
  i32.const 1
  local.get $2
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=16
  local.get $4
  call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
  i32.const 5280
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=12
  local.get $4
  i32.const 3
  local.get $3
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=16
  local.get $4
  call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
  i32.const 5280
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=12
  local.get $4
  i32.const 1840
  call $~lib/staticarray/StaticArray<~lib/string/String>#join
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=8
  local.get $4
  i32.const 5328
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1776
   i32.const 53
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 32
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $templateliteral/test_null
  (local $c i32)
  (local $d i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 28
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 28
  memory.fill
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 3
  call $templateliteral/Ref#constructor
  local.tee $c
  i32.store
  i32.const 0
  local.set $d
  global.get $~lib/memory/__stack_pointer
  local.get $c
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=8
  local.get $5
  call $templateliteral/Ref#toString
  local.tee $2
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  local.get $d
  local.tee $4
  i32.store offset=16
  local.get $4
  if (result i32)
   local.get $4
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=8
   local.get $5
   call $templateliteral/Ref#toString
  else
   i32.const 5504
  end
  local.tee $3
  i32.store offset=20
  i32.const 5456
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=8
  local.get $5
  i32.const 1
  local.get $2
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=24
  local.get $5
  call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
  i32.const 5456
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=8
  local.get $5
  i32.const 3
  local.get $3
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=24
  local.get $5
  call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
  i32.const 5456
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=8
  local.get $5
  i32.const 1840
  call $~lib/staticarray/StaticArray<~lib/string/String>#join
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  i32.const 5536
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1776
   i32.const 60
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 28
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $templateliteral/RecursiveObject#constructor (param $this i32) (param $key i32) (param $val i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 6
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  local.get $key
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=8
  local.get $3
  call $templateliteral/RecursiveObject#set:key
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  local.get $val
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=8
  local.get $3
  call $templateliteral/RecursiveObject#set:val
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $templateliteral/RecursiveObject#toString (param $this i32) (result i32)
  (local $val i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 20
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  call $templateliteral/RecursiveObject#get:val
  local.tee $val
  i32.store offset=4
  local.get $val
  i32.eqz
  if
   local.get $this
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store
   local.get $4
   call $templateliteral/RecursiveObject#get:key
   local.set $4
   global.get $~lib/memory/__stack_pointer
   i32.const 20
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $4
   return
  end
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  call $templateliteral/RecursiveObject#get:key
  local.tee $2
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $val
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  call $templateliteral/RecursiveObject#toString
  local.tee $3
  i32.store offset=12
  i32.const 5664
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  i32.const 0
  local.get $2
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=16
  local.get $4
  call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
  i32.const 5664
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  i32.const 2
  local.get $3
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=16
  local.get $4
  call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
  i32.const 5664
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  i32.const 1840
  call $~lib/staticarray/StaticArray<~lib/string/String>#join
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
  return
 )
 (func $templateliteral/test_recursive
  (local $c i32)
  (local $b i32)
  (local $a i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 20
  memory.fill
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 5600
  i32.const 0
  call $templateliteral/RecursiveObject#constructor
  local.tee $c
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 64
  local.get $c
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  call $templateliteral/RecursiveObject#constructor
  local.tee $b
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 32
  local.get $b
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  call $templateliteral/RecursiveObject#constructor
  local.tee $a
  i32.store offset=12
  local.get $a
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=16
  local.get $3
  call $templateliteral/RecursiveObject#toString
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  i32.const 5696
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1776
   i32.const 125
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/util/number/itoa32 (param $value i32) (param $radix i32) (result i32)
  (local $sign i32)
  (local $out i32)
  (local $decimals i32)
  (local $buffer i32)
  (local $num i32)
  (local $offset i32)
  (local $decimals|8 i32)
  (local $buffer|9 i32)
  (local $num|10 i32)
  (local $offset|11 i32)
  (local $val32 i32)
  (local $decimals|13 i32)
  (local $14 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $radix
  i32.const 2
  i32.lt_s
  if (result i32)
   i32.const 1
  else
   local.get $radix
   i32.const 36
   i32.gt_s
  end
  if
   i32.const 2496
   i32.const 2624
   i32.const 322
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $value
  i32.eqz
  if
   i32.const 2688
   local.set $14
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $14
   return
  end
  local.get $value
  i32.const 31
  i32.shr_u
  i32.const 1
  i32.shl
  local.set $sign
  local.get $sign
  if
   i32.const 0
   local.get $value
   i32.sub
   local.set $value
  end
  local.get $radix
  i32.const 10
  i32.eq
  if
   local.get $value
   call $~lib/util/number/decimalCount32
   local.set $decimals
   global.get $~lib/memory/__stack_pointer
   local.get $decimals
   i32.const 1
   i32.shl
   local.get $sign
   i32.add
   i32.const 2
   call $~lib/rt/itcms/__new
   local.tee $out
   i32.store
   local.get $out
   local.get $sign
   i32.add
   local.set $buffer
   local.get $value
   local.set $num
   local.get $decimals
   local.set $offset
   i32.const 0
   i32.const 1
   i32.ge_s
   drop
   local.get $buffer
   local.get $num
   local.get $offset
   call $~lib/util/number/utoa32_dec_lut
  else
   local.get $radix
   i32.const 16
   i32.eq
   if
    i32.const 31
    local.get $value
    i32.clz
    i32.sub
    i32.const 2
    i32.shr_s
    i32.const 1
    i32.add
    local.set $decimals|8
    global.get $~lib/memory/__stack_pointer
    local.get $decimals|8
    i32.const 1
    i32.shl
    local.get $sign
    i32.add
    i32.const 2
    call $~lib/rt/itcms/__new
    local.tee $out
    i32.store
    local.get $out
    local.get $sign
    i32.add
    local.set $buffer|9
    local.get $value
    local.set $num|10
    local.get $decimals|8
    local.set $offset|11
    i32.const 0
    i32.const 1
    i32.ge_s
    drop
    local.get $buffer|9
    local.get $num|10
    i64.extend_i32_u
    local.get $offset|11
    call $~lib/util/number/utoa_hex_lut
   else
    local.get $value
    local.set $val32
    local.get $val32
    i64.extend_i32_u
    local.get $radix
    call $~lib/util/number/ulog_base
    local.set $decimals|13
    global.get $~lib/memory/__stack_pointer
    local.get $decimals|13
    i32.const 1
    i32.shl
    local.get $sign
    i32.add
    i32.const 2
    call $~lib/rt/itcms/__new
    local.tee $out
    i32.store
    local.get $out
    local.get $sign
    i32.add
    local.get $val32
    i64.extend_i32_u
    local.get $decimals|13
    local.get $radix
    call $~lib/util/number/utoa64_any_core
   end
  end
  local.get $sign
  if
   local.get $out
   i32.const 45
   i32.store16
  end
  local.get $out
  local.set $14
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $14
  return
 )
 (func $~lib/util/number/dtoa<f64> (param $value f64) (result i32)
  (local $len i32)
  (local $buffer i32)
  (local $len|3 i32)
  (local $p i32)
  (local $end i32)
  (local $c i32)
  (local $size i32)
  (local $result i32)
  (local $9 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  i32.const 8
  i32.const 4
  i32.eq
  drop
  i32.const 4416
  local.get $value
  call $~lib/util/dtoa/dtoa_buffered
  local.set $len
  block $~lib/util/number/dtoa_dotZero|inlined.0 (result i32)
   i32.const 4416
   local.set $buffer
   local.get $len
   local.set $len|3
   local.get $buffer
   local.set $p
   local.get $buffer
   local.get $len|3
   i32.const 1
   i32.shl
   i32.add
   local.set $end
   loop $while-continue|0
    local.get $p
    local.get $end
    i32.lt_u
    if
     local.get $p
     i32.load16_u
     local.set $c
     local.get $c
     i32.const 48
     i32.lt_s
     if (result i32)
      i32.const 1
     else
      local.get $c
      i32.const 57
      i32.gt_s
     end
     if (result i32)
      local.get $c
      i32.const 45
      i32.ne
     else
      i32.const 0
     end
     if
      local.get $len|3
      br $~lib/util/number/dtoa_dotZero|inlined.0
     end
     local.get $p
     i32.const 2
     i32.add
     local.set $p
     br $while-continue|0
    end
   end
   local.get $end
   i32.const 46
   i32.store16
   local.get $end
   i32.const 48
   i32.store16 offset=2
   local.get $len|3
   i32.const 2
   i32.add
   br $~lib/util/number/dtoa_dotZero|inlined.0
  end
  local.set $len
  local.get $len
  i32.const 1
  i32.shl
  local.set $size
  global.get $~lib/memory/__stack_pointer
  local.get $size
  i32.const 2
  call $~lib/rt/itcms/__new
  local.tee $result
  i32.store
  local.get $result
  i32.const 4416
  local.get $size
  memory.copy
  local.get $result
  local.set $9
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $9
  return
 )
)
