(module
 (type $0 (func (param i32) (result i32)))
 (type $1 (func (param i32 i32)))
 (type $2 (func (param i32)))
 (type $3 (func (param i32 i32) (result i32)))
 (type $4 (func))
 (type $5 (func (param i32 i32 i32) (result i32)))
 (type $6 (func (param i32 f32) (result i32)))
 (type $7 (func (param i32 i32 i32)))
 (type $8 (func (param i32 f64) (result i32)))
 (type $9 (func (param i64) (result i64)))
 (type $10 (func (param i64)))
 (type $11 (func (param i32 i32 i32 i32)))
 (type $12 (func (param i32 i32 i64) (result i32)))
 (type $13 (func (result i32)))
 (type $14 (func (param f32 i32) (result i32)))
 (type $15 (func (param i32 i32 i32 i32 i32) (result i32)))
 (type $16 (func (param f64 i32) (result i32)))
 (type $17 (func (param f32) (result i32)))
 (type $18 (func (param f64) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (global $~lib/util/dtoa/LOG10_2_SIGNIFICAND i32 (i32.const 315653))
 (global $~lib/util/dtoa/LOG10_2_EXP i32 (i32.const 20))
 (global $~lib/util/dtoa/LOG2_POW10_SIGNIFICAND i32 (i32.const 217707))
 (global $~lib/util/dtoa/LOG2_POW10_EXP i32 (i32.const 16))
 (global $~lib/util/dtoa/gPow10Hi (mut i64) (i64.const 0))
 (global $~lib/util/dtoa/gPow10Lo (mut i64) (i64.const 0))
 (global $~lib/util/dtoa/DIV10_EXP i32 (i32.const 10))
 (global $~lib/util/dtoa/DIV10_SIG i64 (i64.const 103))
 (global $~lib/util/dtoa/NEG10 i64 (i64.const 246))
 (global $~lib/util/dtoa/DIV100_EXP i32 (i32.const 19))
 (global $~lib/util/dtoa/DIV100_SIG i64 (i64.const 5243))
 (global $~lib/util/dtoa/NEG100 i64 (i64.const 65436))
 (global $~lib/util/dtoa/DIV10K_EXP i32 (i32.const 40))
 (global $~lib/util/dtoa/DIV10K_SIG i64 (i64.const 109951163))
 (global $~lib/util/dtoa/NEG10K i64 (i64.const 4294957296))
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
 (global $~lib/util/dtoa/DOUBLE_SIGNIFICAND_SIZE i32 (i32.const 52))
 (global $~lib/util/dtoa/DOUBLE_HIDDEN_BIT i64 (i64.const 4503599627370496))
 (global $~lib/util/dtoa/DOUBLE_SIGNIFICAND_MASK i64 (i64.const 4503599627370495))
 (global $~lib/util/dtoa/EXTRA_SHIFT i32 (i32.const 6))
 (global $~lib/util/dtoa/BIASED_HALF i64 (i64.const -9223372036854775802))
 (global $~lib/util/dtoa/DOUBLE_MAX_DIGITS10 i32 (i32.const 17))
 (global $~lib/util/dtoa/MIN_FIXED_DEC_EXP i32 (i32.const -6))
 (global $~lib/util/dtoa/MAX_FIXED_DEC_EXP i32 (i32.const 20))
 (global $~lib/util/dtoa/FLOAT_EXP_OFFSET i32 (i32.const 150))
 (global $~lib/util/dtoa/FLOAT_BIT i32 (i32.const 36))
 (global $~lib/util/dtoa/FLOAT_ONE_BIAS i64 (i64.const 17179869177))
 (global $~lib/util/dtoa/FLOAT_MAX_DIGITS10 i32 (i32.const 9))
 (global $~lib/native/ASC_FEATURE_SIMD i32 (i32.const 0))
 (global $~lib/rt/itcms/total (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/threshold (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/state (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/visitCount (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/pinSpace (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/iter (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/toSpace (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/white (mut i32) (i32.const 0))
 (global $~lib/shared/runtime/Runtime.Stub i32 (i32.const 0))
 (global $~lib/shared/runtime/Runtime.Minimal i32 (i32.const 1))
 (global $~lib/shared/runtime/Runtime.Incremental i32 (i32.const 2))
 (global $~lib/rt/itcms/fromSpace (mut i32) (i32.const 0))
 (global $~lib/rt/tlsf/ROOT (mut i32) (i32.const 0))
 (global $~lib/native/ASC_LOW_MEMORY_LIMIT i32 (i32.const 0))
 (global $~lib/native/ASC_SHRINK_LEVEL i32 (i32.const 0))
 (global $~lib/util/dtoa/POW10_MINOR i32 (i32.const 1904))
 (global $~lib/util/dtoa/POW10_MAJOR i32 (i32.const 2128))
 (global $~lib/util/dtoa/POW10_FIXUPS i32 (i32.const 2496))
 (global $~lib/builtins/u64.MAX_VALUE i64 (i64.const -1))
 (global $issues/2873/f32arr i32 (i32.const 2816))
 (global $issues/2873/f64arr i32 (i32.const 3024))
 (global $~lib/rt/__rtti_base i32 (i32.const 3056))
 (global $~lib/memory/__data_end i32 (i32.const 3084))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 35852))
 (global $~lib/memory/__heap_base i32 (i32.const 35852))
 (memory $0 1)
 (data $0 (i32.const 8) "p\\\ea{\ce2~\8f\1a\c7C\c6\b0\b7\96\e5\ae\05\03\05\'\c6\ab\b7\bf7\cf\d0\b8\d1\ef\92\fe%\e5\1a\8eO\19\eb2\ebP\e2\a4?\14\bc\f5\88\r\b5P\99v\96!\dbH\bb\1a\c2\bd\f0\b4\15\07\c9{\ce\97\c0]\11l:\96\0b\13\9a\c7\1b\e0\c3V\df\84\f6\06\e3L6\12\197\c5\9e\b5p+\a8\ad\c5\9d\97\"\81E@|o\fc\dfNg\04\cd\c9\f2\c9\e6\0b\b96\d7\07\8f\a1\85\t\94\f8x9?\81:\0f \f4\'\8f\cb\ce\c8\a5\19\90\b9\a5o\a5\a0\84\14@aQY\84\00\a1\ed\cc\ce\1b\c2\d3\00\b4W\n?\16h\a9\00\90\acn2x\86\87\00\80z\17\b7&\d7\d8\00\00b\ac\c5\ebx\ad\00\00\e8\89\04#\c7\8a\00\00@v:k\0b\de\00\00\00\c5.\bc\a2\b1\00\00\00\04\bf\c9\1b\8e\00\00\00\a01\a9_\e3\00\00\00\80\f4 \e6\b5\00\00\00\00*\e7\84\91\00\00\00\00\10\a5\d4\e8\00\00\00\00@\b7C\ba\00\00\00\00\00\f9\02\95\00\00\00\00\00(k\ee\00\00\00\00\00 \bc\be\00\00\00\00\00\80\96\98\00\00\00\00\00\00$\f4\00\00\00\00\00\00P\c3\00\00\00\00\00\00@\9c\00\00\00\00\00\00\00\fa\00\00\00\00\00\00\00\c8\00\00\00\00\00\00\00\a0\00\00\00\00\00\00\00\80\cd\cc\cc\cc\cc\cc\cc\cc\0b\d7\a3p=\n\d7\a3<\dfO\8d\97n\12\83,e\19\e2X\17\b7\d1$\84G\1bG\ac\c5\a7\b6il\af\05\bd7\86\bdBz\e5\d5\94\bf\d6\fd\cea\84\11w\cc\ab\98\a5\b46A_p\89\bf\d5\ed\bd\ce\fe\e6\db\ff\aa$\cb\0b\ff\eb\af\cc\88Po\t\cc\bc\8c\14\0e\b4KB\13.\e1\10\d8\\\t5\dc$\b4\da\ac\b0:\f7|\1d\90\\\e1M\c4\be\94\95\e6J\b4\a462\aaw\b8\08]\1d\92\8e\ee\92\93\a6a\95\b6}J\1e\ec\eb\1a\11\92d\08\e5\bc\ef{\datP\a0\1d\97\b2,\f7\ba\80\00\c9\f1(\8a\92\95\00\9am\c1S;uD\cd\14\be\9aR\c5\ee\d3\ae\87\96\f7\db\9dXv%\06\12\c6I~\e0\91\b7\d1t\9e\0e\ca\00\83\f2\b5\87\fd?;\9a5\f5\f7\d2\ca2\fc\14^\f7_B\a2\f5\fcCK,\b3\ce\81\bb\949E\ad\1e\b1\cf")
 (data $1 (i32.const 624) "\"\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$\"#$!\"#")
 (data $2 (i32.const 880) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $3 (i32.const 1008) "0\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009\00")
 (data $4 (i32.const 1420) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e\00\00\00\00\00")
 (data $5 (i32.const 1484) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00 \00\00\00~\00l\00i\00b\00/\00r\00t\00/\00i\00t\00c\00m\00s\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $6 (i32.const 1552) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $7 (i32.const 1584) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $8 (i32.const 1612) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e\00\00\00\00\00\00\00\00\00")
 (data $9 (i32.const 1676) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s\00\00\00\00\00\00\00\00\00")
 (data $10 (i32.const 1728) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $11 (i32.const 1756) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $12 (i32.const 1820) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\06\00\00\001\00.\001\00\00\00\00\00\00\00")
 (data $13 (i32.const 1852) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\1c\00\00\00i\00s\00s\00u\00e\00s\00/\002\008\007\003\00.\00t\00s\00")
 (data $14 (i32.const 1904) "\00\00\00\00\00\00\00\80\00\00\00\00\00\00\00\a0\00\00\00\00\00\00\00\c8\00\00\00\00\00\00\00\fa\00\00\00\00\00\00@\9c\00\00\00\00\00\00P\c3\00\00\00\00\00\00$\f4\00\00\00\00\00\80\96\98\00\00\00\00\00 \bc\be\00\00\00\00\00(k\ee\00\00\00\00\00\f9\02\95\00\00\00\00@\b7C\ba\00\00\00\00\10\a5\d4\e8\00\00\00\00*\e7\84\91\00\00\00\80\f4 \e6\b5\00\00\00\a01\a9_\e3\00\00\00\04\bf\c9\1b\8e\00\00\00\c5.\bc\a2\b1\00\00@v:k\0b\de\00\00\e8\89\04#\c7\8a\00\00b\ac\c5\ebx\ad\00\80z\17\b7&\d7\d8\00\90\acn2x\86\87\00\b4W\n?\16h\a9\00\a1\ed\cc\ce\1b\c2\d3\a0\84\14@aQY\84\c8\a5\19\90\b9\a5o\a5:\0f \f4\'\8f\cb\ce")
 (data $15 (i32.const 2128) "o\1b\8e(\10T\8e\af\daM\e4^\ae\f0\ec\07J\fb\9f\f4\98\'D\b1\9dwA\df\cf\11\cd\99\07\ef\99\85\0b?\fe\b2\15\aa\b4\dc\e6\a7\1f\86c\beZ\06\0b\a5\bc\b4\aaSkuz\07\ed\0f\08\bf,)Ud\7f\b6C\d5\b1\17L\c8;\1a\fb;\efi\c2\87F\b8B\a7\ee@OQ]=\eb\dd\e4PF\1a\12\ba\13\e4labM\f3\92\ea\af(\b6\ef&\e2\bb\8c6U\n\f7\89\04\89\0f`\cb\05\e9\b8\b6\bd!\c9\c1\bb\87\e9\00T\96_\9a\84x\db\8f\bf4\d0\bdr\04R\98\de\'\8a\92\95\00\9am\c1\94\82\17\0f<\05\b7u\00\00\00\00\00\00P\c3\00\00\00\00\00\00\00\00\05\e3L6\12\197\c5\00\00\00\00\00\00(l\d6\aa\80\9d\ef\f0\"\c7\f6~\b9\b7\d2:MBL\c8q\d5m\93\13\c9\ea8\1e\cd\19:\bc\03\1cU\ab\01\80\0c\t\cb\c6,\07\d3\bf\f5\ad\\\a1\90\08\137h\03\cd\10\8cz\c3\87\a8\db6.\ef\07\12\c2\b2\02\cf\bc\f4\03^\e4g\f9\94\c7\85\d7in\f8\06\d1R\ba\be\01\d763\e1|\a0\1c4\a8E\10\d3Q\a0\t\12\11H\de\1e1Vx\85\fa\a6\1e\d5f\a5>\7f\"t*U3\f1\ca\ba\0f)2\d7\96@\adGy\17|\a9t\088\c7\b1\d8J\d9\bc\"x\ae\81R7\18")
 (data $16 (i32.const 2496) "?6N\n@\18\00\00\00d\00\00@\00 $\00\00\00\00\00\00\00\0c\80\13\c8\82\1f\e0L^\0f\f60\d7\1b\00\00\00\00\00\00\00\fc\ff\f7\cd\d8\01\82n\d1?\cd@\01%d\db\r\r\00\00\00$\04\14@8qS\b4\1dx\11\00\00\00\00")
 (data $17 (i32.const 2576) "\00\00\00\00\00\00\f0?\00\00\00\00\00\00$@\00\00\00\00\00\00Y@\00\00\00\00\00@\8f@\00\00\00\00\00\88\c3@\00\00\00\00\00j\f8@\00\00\00\00\80\84.A\00\00\00\00\d0\12cA\00\00\00\00\84\d7\97A\00\00\00\00e\cd\cdA\00\00\00 _\a0\02B\00\00\00\e8vH7B\00\00\00\a2\94\1amB\00\00@\e5\9c0\a2B\00\00\90\1e\c4\bc\d6B\00\004&\f5k\0cC\00\80\e07y\c3AC\00\a0\d8\85W4vC\00\c8Ngm\c1\abC\00=\91`\e4X\e1C@\8c\b5x\1d\af\15DP\ef\e2\d6\e4\1aKD\92\d5M\06\cf\f0\80D")
 (data $18 (i32.const 2764) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\0c\00\00\00\cd\cc\8c?\cd\cc\0c@33S@")
 (data $19 (i32.const 2796) ",\00\00\00\00\00\00\00\00\00\00\00\04\00\00\00\10\00\00\00\e0\n\00\00\e0\n\00\00\0c\00\00\00\03\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $20 (i32.const 2844) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $21 (i32.const 2876) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\02\00\00\00,\00\00\00\00\00\00\00\00\00\00\00")
 (data $22 (i32.const 2908) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\16\00\00\001\00.\001\00,\002\00.\002\00,\003\00.\003\00\00\00\00\00\00\00")
 (data $23 (i32.const 2956) ",\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\18\00\00\00\9a\99\99\99\99\99\f1?\9a\99\99\99\99\99\01@ffffff\n@\00\00\00\00")
 (data $24 (i32.const 3004) ",\00\00\00\00\00\00\00\00\00\00\00\05\00\00\00\10\00\00\00\a0\0b\00\00\a0\0b\00\00\18\00\00\00\03\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $25 (i32.const 3056) "\06\00\00\00 \00\00\00 \00\00\00 \00\00\00\00\00\00\00\02\19\00\00\02\1a\00\00")
 (table $0 1 1 funcref)
 (elem $0 (i32.const 1))
 (export "memory" (memory $0))
 (start $~start)
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
 (func $~lib/util/dtoa/toBcd8 (param $value i64)
  (local $quads i64)
  (local $pairs i64)
  (local $singles i64)
  (local $bcd i64)
  local.get $value
  global.get $~lib/util/dtoa/NEG10K
  local.get $value
  global.get $~lib/util/dtoa/DIV10K_SIG
  i64.mul
  global.get $~lib/util/dtoa/DIV10K_EXP
  i64.extend_i32_s
  i64.shr_u
  i64.mul
  i64.add
  local.set $quads
  local.get $quads
  global.get $~lib/util/dtoa/NEG100
  local.get $quads
  global.get $~lib/util/dtoa/DIV100_SIG
  i64.mul
  global.get $~lib/util/dtoa/DIV100_EXP
  i64.extend_i32_s
  i64.shr_u
  i64.const 545460846719
  i64.and
  i64.mul
  i64.add
  local.set $pairs
  local.get $pairs
  global.get $~lib/util/dtoa/NEG10
  local.get $pairs
  global.get $~lib/util/dtoa/DIV10_SIG
  i64.mul
  global.get $~lib/util/dtoa/DIV10_EXP
  i64.extend_i32_s
  i64.shr_u
  i64.const 4222189076152335
  i64.and
  i64.mul
  i64.add
  local.set $singles
  local.get $singles
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
 (func $~lib/util/dtoa/ftoa_buffered (param $buffer i32) (param $value f32) (result i32)
  (local $bits i32)
  (local $binExp i32)
  (local $binSig i64)
  (local $buf i32)
  (local $bits|6 i32)
  (local $binExp|7 i32)
  (local $binSig|8 i64)
  (local $neg i32)
  (local $isNormal i32)
  (local $buf|11 i32)
  (local $buf|12 i32)
  (local $neg|13 i32)
  (local $p i32)
  (local $ascii i64)
  (local $off i32)
  (local $base i32)
  (local $binSig|18 i64)
  (local $rawExp i32)
  (local $regular i32)
  (local $expBin i32)
  (local $k i32)
  (local $h i32)
  (local $pow10Hi i64)
  (local $t0 i64)
  (local $t1 i64)
  (local $mid i64)
  (local $hi64 i64)
  (local $halfUlp i64)
  (local $dotOne i64)
  (local $mUp i64)
  (local $one i32)
  (local $upDown i32)
  (local $decSig i64)
  (local $decExp i32)
  (local $q i64)
  (local $last i32)
  (local $binSig|38 i64)
  (local $rawExp|39 i32)
  (local $regular|40 i32)
  (local $expBin|41 i32)
  (local $k|42 i32)
  (local $h|43 i32)
  (local $pow10Hi|44 i64)
  (local $t0|45 i64)
  (local $t1|46 i64)
  (local $mid|47 i64)
  (local $hi64|48 i64)
  (local $halfUlp|49 i64)
  (local $dotOne|50 i64)
  (local $mUp|51 i64)
  (local $one|52 i32)
  (local $upDown|53 i32)
  (local $hasLastDigit i32)
  (local $hasExtraDigit i32)
  (local $decExp|56 i32)
  (local $start i32)
  (local $value|58 i64)
  (local $buf|59 i32)
  (local $start|60 i32)
  (local $decExp|61 i32)
  (local $hasLastDigit|62 i32)
  (local $hasExtraDigit|63 i32)
  (local $p|64 i32)
  (local $ascii|65 i64)
  (local $off|66 i32)
  (local $base|67 i32)
  (local $lastDigitChar i64)
  (local $numDigits i32)
  (local $dHi i64)
  (local $p|71 i32)
  (local $ascii|72 i64)
  (local $off|73 i32)
  (local $base|74 i32)
  (local $sig i32)
  (local $endByte i32)
  (local $z i32)
  (local $p|78 i32)
  (local $ascii|79 i64)
  (local $off|80 i32)
  (local $base|81 i32)
  (local $n i32)
  (local $endPos i32)
  (local $startPos i32)
  (local $p|85 i32)
  (local $ascii|86 i64)
  (local $off|87 i32)
  (local $base|88 i32)
  (local $k|89 i32)
  (local $d16 i64)
  (local $s i32)
  (local $fHi i64)
  (local $p|93 i32)
  (local $ascii|94 i64)
  (local $off|95 i32)
  (local $base|96 i32)
  (local $buf|97 i32)
  (local $start|98 i32)
  (local $decExp|99 i32)
  (local $hasLastDigit|100 i32)
  (local $hasExtraDigit|101 i32)
  (local $p|102 i32)
  (local $ascii|103 i64)
  (local $off|104 i32)
  (local $base|105 i32)
  (local $lead i32)
  (local $buf|107 i32)
  (local $decExp|108 i32)
  (local $m i32)
  (local $e i32)
  (local $d i32)
  local.get $value
  i32.reinterpret_f32
  local.set $bits
  local.get $bits
  i32.const 1
  i32.shl
  i32.const 24
  i32.shr_u
  local.set $binExp
  local.get $bits
  i32.const 1
  i32.const 23
  i32.shl
  i32.const 1
  i32.sub
  i32.and
  i64.extend_i32_u
  local.set $binSig
  block $~lib/util/dtoa/formatDecodedFloat|inlined.0 (result i32)
   local.get $buffer
   local.set $buf
   local.get $bits
   local.set $bits|6
   local.get $binExp
   local.set $binExp|7
   local.get $binSig
   local.set $binSig|8
   local.get $bits|6
   i32.const 31
   i32.shr_u
   i32.const 0
   i32.ne
   local.set $neg
   local.get $binExp|7
   i32.const 1
   i32.sub
   i32.const 254
   i32.lt_u
   local.set $isNormal
   local.get $isNormal
   i32.eqz
   if
    local.get $binExp|7
    i32.const 0
    i32.ne
    if
     local.get $binSig|8
     i64.const 0
     i64.ne
     if
      block $~lib/util/dtoa/writeNaN|inlined.0 (result i32)
       local.get $buf
       local.set $buf|11
       local.get $buf|11
       i32.const 78
       i32.store16
       local.get $buf|11
       i32.const 97
       i32.store16 offset=2
       local.get $buf|11
       i32.const 78
       i32.store16 offset=4
       local.get $buf|11
       i32.const 6
       i32.add
       br $~lib/util/dtoa/writeNaN|inlined.0
      end
      br $~lib/util/dtoa/formatDecodedFloat|inlined.0
     end
     block $~lib/util/dtoa/writeInfinity|inlined.0 (result i32)
      local.get $buf
      local.set $buf|12
      local.get $neg
      local.set $neg|13
      local.get $neg|13
      if
       local.get $buf|12
       i32.const 45
       i32.store16
       local.get $buf|12
       i32.const 2
       i32.add
       local.set $buf|12
      end
      local.get $buf|12
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
      local.get $buf|12
      i32.const 16
      i32.add
      br $~lib/util/dtoa/writeInfinity|inlined.0
     end
     br $~lib/util/dtoa/formatDecodedFloat|inlined.0
    end
    local.get $binSig|8
    i64.const 0
    i64.eq
    if
     local.get $buf
     i32.const 48
     i32.store16
     local.get $buf
     i32.const 2
     i32.add
     br $~lib/util/dtoa/formatDecodedFloat|inlined.0
    end
    local.get $neg
    if
     local.get $buf
     i32.const 45
     i32.store16
     local.get $buf
     i32.const 2
     i32.add
     local.set $buf
    end
    local.get $binSig|8
    local.set $binSig|18
    i32.const 1
    local.set $rawExp
    i32.const 1
    local.set $regular
    local.get $rawExp
    global.get $~lib/util/dtoa/FLOAT_EXP_OFFSET
    i32.sub
    local.set $expBin
    local.get $regular
    if
     local.get $expBin
     i32.const 1233
     i32.mul
     i32.const 12
     i32.shr_s
     local.set $k
     i32.const 624
     local.get $rawExp
     i32.add
     i32.load8_u
     local.set $h
    else
     local.get $expBin
     i32.const 1233
     i32.mul
     i32.const 512
     i32.sub
     i32.const 12
     i32.shr_s
     local.set $k
     i32.const 37
     local.get $expBin
     i32.add
     local.get $k
     i32.const -1701
     i32.mul
     i32.const -1701
     i32.add
     i32.const 9
     i32.shr_s
     i32.add
     local.set $h
    end
    i32.const 8
    i32.const 45
    local.get $k
    i32.add
    i32.const 3
    i32.shl
    i32.add
    i64.load
    local.set $pow10Hi
    local.get $pow10Hi
    i64.const 4294967295
    i64.and
    local.get $binSig|18
    i64.mul
    local.set $t0
    local.get $pow10Hi
    i64.const 32
    i64.shr_u
    local.get $binSig|18
    i64.mul
    local.get $t0
    i64.const 32
    i64.shr_u
    i64.add
    local.set $t1
    local.get $t1
    i64.const 8
    i64.shl
    local.get $t0
    i64.const 4294967295
    i64.and
    i64.const 24
    i64.shr_u
    i64.or
    local.set $mid
    local.get $mid
    i64.const 40
    local.get $h
    i64.extend_i32_s
    i64.sub
    i64.shr_u
    local.set $hi64
    local.get $pow10Hi
    i64.const 65
    local.get $h
    i64.extend_i32_s
    i64.sub
    i64.shr_u
    i64.const 1
    local.get $binSig|18
    i64.const 1
    i64.and
    i64.sub
    i64.add
    local.set $halfUlp
    local.get $hi64
    i64.const 1
    global.get $~lib/util/dtoa/FLOAT_BIT
    i64.extend_i32_s
    i64.shl
    i64.const 1
    i64.sub
    i64.and
    local.set $dotOne
    local.get $hi64
    local.get $halfUlp
    i64.add
    global.get $~lib/util/dtoa/FLOAT_BIT
    i64.extend_i32_s
    i64.shr_u
    local.set $mUp
    local.get $dotOne
    i64.const 5
    i64.mul
    global.get $~lib/util/dtoa/FLOAT_ONE_BIAS
    i64.add
    local.get $dotOne
    i64.const 32
    i64.shr_u
    i64.add
    global.get $~lib/util/dtoa/FLOAT_BIT
    i32.const 1
    i32.sub
    i64.extend_i32_s
    i64.shr_u
    i32.wrap_i64
    local.set $one
    local.get $regular
    if
     local.get $mUp
     local.get $hi64
     local.get $halfUlp
     i64.sub
     global.get $~lib/util/dtoa/FLOAT_BIT
     i64.extend_i32_s
     i64.shr_u
     i64.gt_u
     local.set $upDown
    else
     local.get $expBin
     i32.const -119
     i32.eq
     if (result i32)
      i32.const 1
     else
      local.get $expBin
      i32.const 64
      i32.eq
     end
     if (result i32)
      i32.const 1
     else
      local.get $expBin
      i32.const 67
      i32.eq
     end
     if
      local.get $one
      i32.const 1
      i32.add
      local.set $one
     end
     local.get $mUp
     local.get $hi64
     local.get $halfUlp
     i64.const 1
     i64.shr_u
     i64.sub
     global.get $~lib/util/dtoa/FLOAT_BIT
     i64.extend_i32_s
     i64.shr_u
     i64.gt_u
     local.set $upDown
    end
    local.get $mUp
    global.set $~lib/util/dtoa/gSig
    local.get $k
    global.set $~lib/util/dtoa/gExp
    local.get $one
    global.set $~lib/util/dtoa/gLastDigit
    local.get $upDown
    i32.eqz
    global.set $~lib/util/dtoa/gHasLastDigit
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
    local.set $decSig
    global.get $~lib/util/dtoa/gExp
    local.set $decExp
    loop $while-continue|0
     local.get $decSig
     i64.const 10000000
     i64.lt_u
     if
      local.get $decSig
      i64.const 10
      i64.mul
      local.set $decSig
      local.get $decExp
      i32.const 1
      i32.sub
      local.set $decExp
      br $while-continue|0
     end
    end
    local.get $decSig
    i64.const 10
    i64.div_u
    local.set $q
    local.get $decSig
    local.get $q
    i64.const 10
    i64.mul
    i64.sub
    i32.wrap_i64
    local.set $last
    local.get $q
    global.set $~lib/util/dtoa/gSig
    local.get $decExp
    global.set $~lib/util/dtoa/gExp
    local.get $last
    global.set $~lib/util/dtoa/gLastDigit
    local.get $last
    i32.const 0
    i32.ne
    global.set $~lib/util/dtoa/gHasLastDigit
   else
    local.get $neg
    if
     local.get $buf
     i32.const 45
     i32.store16
     local.get $buf
     i32.const 2
     i32.add
     local.set $buf
    end
    local.get $binSig|8
    i64.const 1
    i64.const 23
    i64.shl
    i64.or
    local.set $binSig|38
    local.get $binExp|7
    local.set $rawExp|39
    local.get $binSig|8
    i64.const 0
    i64.ne
    local.set $regular|40
    local.get $rawExp|39
    global.get $~lib/util/dtoa/FLOAT_EXP_OFFSET
    i32.sub
    local.set $expBin|41
    local.get $regular|40
    if
     local.get $expBin|41
     i32.const 1233
     i32.mul
     i32.const 12
     i32.shr_s
     local.set $k|42
     i32.const 624
     local.get $rawExp|39
     i32.add
     i32.load8_u
     local.set $h|43
    else
     local.get $expBin|41
     i32.const 1233
     i32.mul
     i32.const 512
     i32.sub
     i32.const 12
     i32.shr_s
     local.set $k|42
     i32.const 37
     local.get $expBin|41
     i32.add
     local.get $k|42
     i32.const -1701
     i32.mul
     i32.const -1701
     i32.add
     i32.const 9
     i32.shr_s
     i32.add
     local.set $h|43
    end
    i32.const 8
    i32.const 45
    local.get $k|42
    i32.add
    i32.const 3
    i32.shl
    i32.add
    i64.load
    local.set $pow10Hi|44
    local.get $pow10Hi|44
    i64.const 4294967295
    i64.and
    local.get $binSig|38
    i64.mul
    local.set $t0|45
    local.get $pow10Hi|44
    i64.const 32
    i64.shr_u
    local.get $binSig|38
    i64.mul
    local.get $t0|45
    i64.const 32
    i64.shr_u
    i64.add
    local.set $t1|46
    local.get $t1|46
    i64.const 8
    i64.shl
    local.get $t0|45
    i64.const 4294967295
    i64.and
    i64.const 24
    i64.shr_u
    i64.or
    local.set $mid|47
    local.get $mid|47
    i64.const 40
    local.get $h|43
    i64.extend_i32_s
    i64.sub
    i64.shr_u
    local.set $hi64|48
    local.get $pow10Hi|44
    i64.const 65
    local.get $h|43
    i64.extend_i32_s
    i64.sub
    i64.shr_u
    i64.const 1
    local.get $binSig|38
    i64.const 1
    i64.and
    i64.sub
    i64.add
    local.set $halfUlp|49
    local.get $hi64|48
    i64.const 1
    global.get $~lib/util/dtoa/FLOAT_BIT
    i64.extend_i32_s
    i64.shl
    i64.const 1
    i64.sub
    i64.and
    local.set $dotOne|50
    local.get $hi64|48
    local.get $halfUlp|49
    i64.add
    global.get $~lib/util/dtoa/FLOAT_BIT
    i64.extend_i32_s
    i64.shr_u
    local.set $mUp|51
    local.get $dotOne|50
    i64.const 5
    i64.mul
    global.get $~lib/util/dtoa/FLOAT_ONE_BIAS
    i64.add
    local.get $dotOne|50
    i64.const 32
    i64.shr_u
    i64.add
    global.get $~lib/util/dtoa/FLOAT_BIT
    i32.const 1
    i32.sub
    i64.extend_i32_s
    i64.shr_u
    i32.wrap_i64
    local.set $one|52
    local.get $regular|40
    if
     local.get $mUp|51
     local.get $hi64|48
     local.get $halfUlp|49
     i64.sub
     global.get $~lib/util/dtoa/FLOAT_BIT
     i64.extend_i32_s
     i64.shr_u
     i64.gt_u
     local.set $upDown|53
    else
     local.get $expBin|41
     i32.const -119
     i32.eq
     if (result i32)
      i32.const 1
     else
      local.get $expBin|41
      i32.const 64
      i32.eq
     end
     if (result i32)
      i32.const 1
     else
      local.get $expBin|41
      i32.const 67
      i32.eq
     end
     if
      local.get $one|52
      i32.const 1
      i32.add
      local.set $one|52
     end
     local.get $mUp|51
     local.get $hi64|48
     local.get $halfUlp|49
     i64.const 1
     i64.shr_u
     i64.sub
     global.get $~lib/util/dtoa/FLOAT_BIT
     i64.extend_i32_s
     i64.shr_u
     i64.gt_u
     local.set $upDown|53
    end
    local.get $mUp|51
    global.set $~lib/util/dtoa/gSig
    local.get $k|42
    global.set $~lib/util/dtoa/gExp
    local.get $one|52
    global.set $~lib/util/dtoa/gLastDigit
    local.get $upDown|53
    i32.eqz
    global.set $~lib/util/dtoa/gHasLastDigit
   end
   global.get $~lib/util/dtoa/gHasLastDigit
   local.set $hasLastDigit
   global.get $~lib/util/dtoa/gSig
   i64.const 10000000
   i64.ge_u
   local.set $hasExtraDigit
   global.get $~lib/util/dtoa/gExp
   global.get $~lib/util/dtoa/FLOAT_MAX_DIGITS10
   i32.add
   i32.const 2
   i32.sub
   local.get $hasExtraDigit
   i32.add
   local.set $decExp|56
   global.get $~lib/util/dtoa/gSig
   i64.const 1000000
   i64.lt_u
   if
    i64.const 10
    global.get $~lib/util/dtoa/gSig
    i64.mul
    local.get $hasLastDigit
    if (result i64)
     global.get $~lib/util/dtoa/gLastDigit
     i64.extend_i32_s
    else
     i64.const 0
    end
    i64.add
    global.set $~lib/util/dtoa/gSig
    i32.const 0
    local.set $hasLastDigit
    local.get $decExp|56
    i32.const 1
    i32.sub
    local.set $decExp|56
   end
   local.get $buf
   local.set $start
   global.get $~lib/util/dtoa/gSig
   local.set $value|58
   i32.const 0
   drop
   local.get $value|58
   call $~lib/util/dtoa/toBcd8
   global.get $~lib/util/dtoa/gBcd
   global.get $~lib/util/dtoa/ZEROS
   i64.add
   global.set $~lib/util/dtoa/gDigHi
   global.get $~lib/util/dtoa/gBcdLen
   global.set $~lib/util/dtoa/gDigNum
   local.get $decExp|56
   global.get $~lib/util/dtoa/MIN_FIXED_DEC_EXP
   i32.ge_s
   if (result i32)
    local.get $decExp|56
    global.get $~lib/util/dtoa/MAX_FIXED_DEC_EXP
    i32.le_s
   else
    i32.const 0
   end
   if
    block $~lib/util/dtoa/writeFixedFloat|inlined.0 (result i32)
     local.get $buf
     local.set $buf|59
     local.get $start
     local.set $start|60
     local.get $decExp|56
     local.set $decExp|61
     local.get $hasLastDigit
     local.set $hasLastDigit|62
     local.get $hasExtraDigit
     local.set $hasExtraDigit|63
     local.get $decExp|61
     i32.const 0
     i32.lt_s
     if
      local.get $start|60
      local.set $p|64
      global.get $~lib/util/dtoa/ZEROS
      local.set $ascii|65
      i32.const 0
      local.set $off|66
      local.get $p|64
      local.get $off|66
      i32.add
      local.set $base|67
      i32.const 0
      drop
      local.get $base|67
      local.get $ascii|65
      i64.const 255
      i64.and
      i32.wrap_i64
      i32.store16
      local.get $base|67
      local.get $ascii|65
      i64.const 8
      i64.shr_u
      i64.const 255
      i64.and
      i32.wrap_i64
      i32.store16 offset=2
      local.get $base|67
      local.get $ascii|65
      i64.const 16
      i64.shr_u
      i64.const 255
      i64.and
      i32.wrap_i64
      i32.store16 offset=4
      local.get $base|67
      local.get $ascii|65
      i64.const 24
      i64.shr_u
      i64.const 255
      i64.and
      i32.wrap_i64
      i32.store16 offset=6
      local.get $base|67
      local.get $ascii|65
      i64.const 32
      i64.shr_u
      i64.const 255
      i64.and
      i32.wrap_i64
      i32.store16 offset=8
      local.get $base|67
      local.get $ascii|65
      i64.const 40
      i64.shr_u
      i64.const 255
      i64.and
      i32.wrap_i64
      i32.store16 offset=10
      local.get $base|67
      local.get $ascii|65
      i64.const 48
      i64.shr_u
      i64.const 255
      i64.and
      i32.wrap_i64
      i32.store16 offset=12
      local.get $base|67
      local.get $ascii|65
      i64.const 56
      i64.shr_u
      i32.wrap_i64
      i32.store16 offset=14
     end
     i64.const 48
     local.get $hasLastDigit|62
     if (result i64)
      global.get $~lib/util/dtoa/gLastDigit
      i64.extend_i32_s
     else
      i64.const 0
     end
     i64.add
     local.set $lastDigitChar
     local.get $hasLastDigit|62
     if (result i32)
      i32.const 8
     else
      global.get $~lib/util/dtoa/gDigNum
      i32.const 1
      i32.sub
     end
     local.set $numDigits
     global.get $~lib/util/dtoa/gDigHi
     local.set $dHi
     local.get $hasExtraDigit|63
     i32.eqz
     if
      local.get $dHi
      i64.const 8
      i64.shr_u
      local.get $lastDigitChar
      i64.const 56
      i64.shl
      i64.or
      local.set $dHi
     end
     local.get $decExp|61
     i32.const 8
     i32.ge_s
     if
      local.get $buf|59
      local.set $p|71
      local.get $dHi
      local.set $ascii|72
      i32.const 0
      local.set $off|73
      local.get $p|71
      local.get $off|73
      i32.add
      local.set $base|74
      i32.const 0
      drop
      local.get $base|74
      local.get $ascii|72
      i64.const 255
      i64.and
      i32.wrap_i64
      i32.store16
      local.get $base|74
      local.get $ascii|72
      i64.const 8
      i64.shr_u
      i64.const 255
      i64.and
      i32.wrap_i64
      i32.store16 offset=2
      local.get $base|74
      local.get $ascii|72
      i64.const 16
      i64.shr_u
      i64.const 255
      i64.and
      i32.wrap_i64
      i32.store16 offset=4
      local.get $base|74
      local.get $ascii|72
      i64.const 24
      i64.shr_u
      i64.const 255
      i64.and
      i32.wrap_i64
      i32.store16 offset=6
      local.get $base|74
      local.get $ascii|72
      i64.const 32
      i64.shr_u
      i64.const 255
      i64.and
      i32.wrap_i64
      i32.store16 offset=8
      local.get $base|74
      local.get $ascii|72
      i64.const 40
      i64.shr_u
      i64.const 255
      i64.and
      i32.wrap_i64
      i32.store16 offset=10
      local.get $base|74
      local.get $ascii|72
      i64.const 48
      i64.shr_u
      i64.const 255
      i64.and
      i32.wrap_i64
      i32.store16 offset=12
      local.get $base|74
      local.get $ascii|72
      i64.const 56
      i64.shr_u
      i32.wrap_i64
      i32.store16 offset=14
      local.get $hasExtraDigit|63
      if
       local.get $buf|59
       i32.const 16
       i32.add
       local.get $lastDigitChar
       i32.wrap_i64
       i32.store16
      end
      i32.const 8
      local.get $hasExtraDigit|63
      i32.add
      local.set $sig
      local.get $buf|59
      local.get $decExp|61
      i32.const 1
      i32.add
      i32.const 1
      i32.shl
      i32.add
      local.set $endByte
      local.get $buf|59
      local.get $sig
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
        local.set $p|78
        global.get $~lib/util/dtoa/ZEROS
        local.set $ascii|79
        i32.const 0
        local.set $off|80
        local.get $p|78
        local.get $off|80
        i32.add
        local.set $base|81
        i32.const 0
        drop
        local.get $base|81
        local.get $ascii|79
        i64.const 255
        i64.and
        i32.wrap_i64
        i32.store16
        local.get $base|81
        local.get $ascii|79
        i64.const 8
        i64.shr_u
        i64.const 255
        i64.and
        i32.wrap_i64
        i32.store16 offset=2
        local.get $base|81
        local.get $ascii|79
        i64.const 16
        i64.shr_u
        i64.const 255
        i64.and
        i32.wrap_i64
        i32.store16 offset=4
        local.get $base|81
        local.get $ascii|79
        i64.const 24
        i64.shr_u
        i64.const 255
        i64.and
        i32.wrap_i64
        i32.store16 offset=6
        local.get $base|81
        local.get $ascii|79
        i64.const 32
        i64.shr_u
        i64.const 255
        i64.and
        i32.wrap_i64
        i32.store16 offset=8
        local.get $base|81
        local.get $ascii|79
        i64.const 40
        i64.shr_u
        i64.const 255
        i64.and
        i32.wrap_i64
        i32.store16 offset=10
        local.get $base|81
        local.get $ascii|79
        i64.const 48
        i64.shr_u
        i64.const 255
        i64.and
        i32.wrap_i64
        i32.store16 offset=12
        local.get $base|81
        local.get $ascii|79
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
      br $~lib/util/dtoa/writeFixedFloat|inlined.0
     end
     local.get $numDigits
     local.get $hasExtraDigit|63
     i32.add
     local.set $n
     local.get $decExp|61
     i32.const 0
     i32.ge_s
     if (result i32)
      local.get $n
      local.get $decExp|61
      i32.const 1
      i32.add
      i32.gt_s
      if (result i32)
       local.get $n
       i32.const 1
       i32.add
      else
       local.get $decExp|61
       i32.const 1
       i32.add
      end
     else
      local.get $n
     end
     local.set $endPos
     i32.const 1
     local.get $decExp|61
     i32.sub
     local.get $decExp|61
     i32.const 31
     i32.shr_s
     i32.and
     local.set $startPos
     local.get $buf|59
     local.get $startPos
     i32.const 1
     i32.shl
     i32.add
     local.set $buf|59
     local.get $buf|59
     local.set $p|85
     local.get $dHi
     local.set $ascii|86
     i32.const 0
     local.set $off|87
     local.get $p|85
     local.get $off|87
     i32.add
     local.set $base|88
     i32.const 0
     drop
     local.get $base|88
     local.get $ascii|86
     i64.const 255
     i64.and
     i32.wrap_i64
     i32.store16
     local.get $base|88
     local.get $ascii|86
     i64.const 8
     i64.shr_u
     i64.const 255
     i64.and
     i32.wrap_i64
     i32.store16 offset=2
     local.get $base|88
     local.get $ascii|86
     i64.const 16
     i64.shr_u
     i64.const 255
     i64.and
     i32.wrap_i64
     i32.store16 offset=4
     local.get $base|88
     local.get $ascii|86
     i64.const 24
     i64.shr_u
     i64.const 255
     i64.and
     i32.wrap_i64
     i32.store16 offset=6
     local.get $base|88
     local.get $ascii|86
     i64.const 32
     i64.shr_u
     i64.const 255
     i64.and
     i32.wrap_i64
     i32.store16 offset=8
     local.get $base|88
     local.get $ascii|86
     i64.const 40
     i64.shr_u
     i64.const 255
     i64.and
     i32.wrap_i64
     i32.store16 offset=10
     local.get $base|88
     local.get $ascii|86
     i64.const 48
     i64.shr_u
     i64.const 255
     i64.and
     i32.wrap_i64
     i32.store16 offset=12
     local.get $base|88
     local.get $ascii|86
     i64.const 56
     i64.shr_u
     i32.wrap_i64
     i32.store16 offset=14
     local.get $hasExtraDigit|63
     if
      local.get $buf|59
      i32.const 16
      i32.add
      local.get $lastDigitChar
      i32.wrap_i64
      i32.store16
     end
     local.get $decExp|61
     i32.const 0
     i32.ge_s
     if
      local.get $decExp|61
      i32.const 1
      i32.add
      local.set $k|89
      local.get $hasExtraDigit|63
      if (result i64)
       local.get $lastDigitChar
      else
       i64.const 0
      end
      local.set $d16
      local.get $k|89
      i32.const 3
      i32.shl
      local.set $s
      local.get $s
      i32.const 64
      i32.lt_s
      if (result i64)
       local.get $dHi
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
      else
       local.get $d16
      end
      local.set $fHi
      local.get $buf|59
      local.get $k|89
      i32.const 1
      i32.add
      i32.const 1
      i32.shl
      i32.add
      local.set $p|93
      local.get $fHi
      local.set $ascii|94
      i32.const 0
      local.set $off|95
      local.get $p|93
      local.get $off|95
      i32.add
      local.set $base|96
      i32.const 0
      drop
      local.get $base|96
      local.get $ascii|94
      i64.const 255
      i64.and
      i32.wrap_i64
      i32.store16
      local.get $base|96
      local.get $ascii|94
      i64.const 8
      i64.shr_u
      i64.const 255
      i64.and
      i32.wrap_i64
      i32.store16 offset=2
      local.get $base|96
      local.get $ascii|94
      i64.const 16
      i64.shr_u
      i64.const 255
      i64.and
      i32.wrap_i64
      i32.store16 offset=4
      local.get $base|96
      local.get $ascii|94
      i64.const 24
      i64.shr_u
      i64.const 255
      i64.and
      i32.wrap_i64
      i32.store16 offset=6
      local.get $base|96
      local.get $ascii|94
      i64.const 32
      i64.shr_u
      i64.const 255
      i64.and
      i32.wrap_i64
      i32.store16 offset=8
      local.get $base|96
      local.get $ascii|94
      i64.const 40
      i64.shr_u
      i64.const 255
      i64.and
      i32.wrap_i64
      i32.store16 offset=10
      local.get $base|96
      local.get $ascii|94
      i64.const 48
      i64.shr_u
      i64.const 255
      i64.and
      i32.wrap_i64
      i32.store16 offset=12
      local.get $base|96
      local.get $ascii|94
      i64.const 56
      i64.shr_u
      i32.wrap_i64
      i32.store16 offset=14
      local.get $buf|59
      local.get $k|89
      i32.const 1
      i32.shl
      i32.add
      i32.const 46
      i32.store16
     else
      local.get $start|60
      i32.const 46
      i32.store16 offset=2
     end
     local.get $buf|59
     local.get $endPos
     i32.const 1
     i32.shl
     i32.add
     br $~lib/util/dtoa/writeFixedFloat|inlined.0
    end
    br $~lib/util/dtoa/formatDecodedFloat|inlined.0
   end
   block $~lib/util/dtoa/writeExpNotationFloat|inlined.0 (result i32)
    local.get $buf
    local.set $buf|97
    local.get $start
    local.set $start|98
    local.get $decExp|56
    local.set $decExp|99
    local.get $hasLastDigit
    local.set $hasLastDigit|100
    local.get $hasExtraDigit
    local.set $hasExtraDigit|101
    local.get $buf|97
    local.get $hasExtraDigit|101
    i32.const 1
    i32.shl
    i32.add
    local.set $buf|97
    local.get $buf|97
    local.set $p|102
    global.get $~lib/util/dtoa/gDigHi
    local.set $ascii|103
    i32.const 0
    local.set $off|104
    local.get $p|102
    local.get $off|104
    i32.add
    local.set $base|105
    i32.const 0
    drop
    local.get $base|105
    local.get $ascii|103
    i64.const 255
    i64.and
    i32.wrap_i64
    i32.store16
    local.get $base|105
    local.get $ascii|103
    i64.const 8
    i64.shr_u
    i64.const 255
    i64.and
    i32.wrap_i64
    i32.store16 offset=2
    local.get $base|105
    local.get $ascii|103
    i64.const 16
    i64.shr_u
    i64.const 255
    i64.and
    i32.wrap_i64
    i32.store16 offset=4
    local.get $base|105
    local.get $ascii|103
    i64.const 24
    i64.shr_u
    i64.const 255
    i64.and
    i32.wrap_i64
    i32.store16 offset=6
    local.get $base|105
    local.get $ascii|103
    i64.const 32
    i64.shr_u
    i64.const 255
    i64.and
    i32.wrap_i64
    i32.store16 offset=8
    local.get $base|105
    local.get $ascii|103
    i64.const 40
    i64.shr_u
    i64.const 255
    i64.and
    i32.wrap_i64
    i32.store16 offset=10
    local.get $base|105
    local.get $ascii|103
    i64.const 48
    i64.shr_u
    i64.const 255
    i64.and
    i32.wrap_i64
    i32.store16 offset=12
    local.get $base|105
    local.get $ascii|103
    i64.const 56
    i64.shr_u
    i32.wrap_i64
    i32.store16 offset=14
    local.get $buf|97
    i32.const 16
    i32.add
    i32.const 48
    global.get $~lib/util/dtoa/gLastDigit
    i32.add
    i32.store16
    local.get $buf|97
    local.get $hasLastDigit|100
    if (result i32)
     i32.const 9
    else
     global.get $~lib/util/dtoa/gDigNum
    end
    i32.const 1
    i32.shl
    i32.add
    local.set $buf|97
    local.get $start|98
    i32.load16_u offset=2
    local.set $lead
    local.get $start|98
    local.get $lead
    i32.store16
    local.get $start|98
    i32.const 46
    i32.store16 offset=2
    local.get $buf|97
    local.get $buf|97
    i32.const 2
    i32.sub
    local.get $start|98
    i32.const 2
    i32.add
    i32.eq
    i32.const 1
    i32.shl
    i32.sub
    local.set $buf|97
    block $~lib/util/dtoa/writeExponent|inlined.0 (result i32)
     local.get $buf|97
     local.set $buf|107
     local.get $decExp|99
     local.set $decExp|108
     local.get $decExp|108
     i32.const 31
     i32.shr_s
     local.set $m
     local.get $buf|107
     i32.const 101
     i32.store16
     local.get $buf|107
     i32.const 43
     local.get $m
     i32.const 2
     i32.and
     i32.add
     i32.store16 offset=2
     local.get $buf|107
     i32.const 4
     i32.add
     local.set $buf|107
     local.get $decExp|108
     local.get $m
     i32.xor
     local.get $m
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
      local.get $buf|107
      i32.const 48
      local.get $d
      i32.add
      i32.store16
      local.get $buf|107
      i32.const 1008
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
      local.get $buf|107
      i32.const 6
      i32.add
      br $~lib/util/dtoa/writeExponent|inlined.0
     end
     local.get $e
     i32.const 10
     i32.ge_s
     if
      local.get $buf|107
      i32.const 1008
      local.get $e
      i32.const 2
      i32.shl
      i32.add
      i32.load
      i32.store
      local.get $buf|107
      i32.const 4
      i32.add
      br $~lib/util/dtoa/writeExponent|inlined.0
     end
     local.get $buf|107
     i32.const 48
     local.get $e
     i32.add
     i32.store16
     local.get $buf|107
     i32.const 2
     i32.add
     br $~lib/util/dtoa/writeExponent|inlined.0
    end
    br $~lib/util/dtoa/writeExpNotationFloat|inlined.0
   end
   br $~lib/util/dtoa/formatDecodedFloat|inlined.0
  end
  local.get $buffer
  i32.sub
  i32.const 1
  i32.shr_u
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
     i32.const 1504
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
    i32.const 1504
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
   i32.const 1504
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
   i32.const 1632
   i32.const 1696
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
    i32.const 1504
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
   i32.const 1776
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
   i32.const 1776
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
   i32.const 1776
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
   i32.const 1776
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
   i32.const 1776
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
    i32.const 1776
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
   i32.const 1776
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
   i32.const 1776
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
   i32.const 1776
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
   i32.const 1776
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
    i32.const 1776
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
    i32.const 1776
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
   i32.const 1776
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
     i32.const 1504
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
   i32.const 1440
   i32.const 1776
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
   i32.const 1776
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
     i32.const 1776
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
   i32.const 1776
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
    i32.const 1776
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
   i32.const 1776
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
   i32.const 1440
   i32.const 1504
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
 (func $~lib/number/F32#toString (param $this f32) (param $radix i32) (result i32)
  local.get $this
  call $~lib/util/number/dtoa<f32>
  return
 )
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
  (local $threshold i64)
  (local $isNormal i32)
  (local $buf|14 i32)
  (local $buf|15 i32)
  (local $neg|16 i32)
  (local $p i32)
  (local $ascii i64)
  (local $off i32)
  (local $base i32)
  (local $q i32)
  (local $c i64)
  (local $intValue i64)
  (local $shift i32)
  (local $mask i64)
  (local $buf|26 i32)
  (local $value|27 i64)
  (local $v i64)
  (local $v|29 i64)
  (local $len i32)
  (local $p|31 i32)
  (local $v|32 i64)
  (local $q|33 i64)
  (local $binSig|34 i64)
  (local $rawExp i32)
  (local $regular i32)
  (local $c|37 i64)
  (local $q|38 i32)
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
  (local $a|61 i64)
  (local $b|62 i64)
  (local $a0|63 i64)
  (local $a1|64 i64)
  (local $b0|65 i64)
  (local $b1|66 i64)
  (local $w0|67 i64)
  (local $t|68 i64)
  (local $w1|69 i64)
  (local $w2|70 i64)
  (local $c2 i64)
  (local $hi i64)
  (local $lo i64)
  (local $pow10Hi i64)
  (local $integral i64)
  (local $halfUlp i64)
  (local $dotOne i64)
  (local $one i64)
  (local $integral|79 i64)
  (local $one|80 i64)
  (local $decExp|81 i32)
  (local $decExp|82 i32)
  (local $powExp|83 i32)
  (local $h|84 i32)
  (local $shift|85 i32)
  (local $power|86 i32)
  (local $i|87 i32)
  (local $m|88 i64)
  (local $hoff|89 i32)
  (local $hHi|90 i64)
  (local $hLo|91 i64)
  (local $a|92 i64)
  (local $b|93 i64)
  (local $a0|94 i64)
  (local $a1|95 i64)
  (local $b0|96 i64)
  (local $b1|97 i64)
  (local $w0|98 i64)
  (local $t|99 i64)
  (local $w1|100 i64)
  (local $w2|101 i64)
  (local $h1|102 i64)
  (local $c0|103 i64)
  (local $c1|104 i64)
  (local $a|105 i64)
  (local $b|106 i64)
  (local $a0|107 i64)
  (local $a1|108 i64)
  (local $b0|109 i64)
  (local $b1|110 i64)
  (local $w0|111 i64)
  (local $t|112 i64)
  (local $w1|113 i64)
  (local $w2|114 i64)
  (local $c2|115 i64)
  (local $hi|116 i64)
  (local $lo|117 i64)
  (local $pHi i64)
  (local $pLo i64)
  (local $y i64)
  (local $a|121 i64)
  (local $b|122 i64)
  (local $a0|123 i64)
  (local $a1|124 i64)
  (local $b0|125 i64)
  (local $b1|126 i64)
  (local $w0|127 i64)
  (local $t|128 i64)
  (local $w1|129 i64)
  (local $w2|130 i64)
  (local $a|131 i64)
  (local $plo64 i64)
  (local $a|133 i64)
  (local $b|134 i64)
  (local $a0|135 i64)
  (local $a1|136 i64)
  (local $b0|137 i64)
  (local $b1|138 i64)
  (local $w0|139 i64)
  (local $t|140 i64)
  (local $w1|141 i64)
  (local $w2|142 i64)
  (local $lo|143 i64)
  (local $p_hi i64)
  (local $integral|145 i64)
  (local $dotOne|146 i64)
  (local $halfUlp|147 i64)
  (local $x i64)
  (local $y|149 i64)
  (local $c|150 i64)
  (local $lo|151 i64)
  (local $a|152 i64)
  (local $b|153 i64)
  (local $a0|154 i64)
  (local $a1|155 i64)
  (local $b0|156 i64)
  (local $b1|157 i64)
  (local $w0|158 i64)
  (local $t|159 i64)
  (local $w1|160 i64)
  (local $w2|161 i64)
  (local $hi|162 i64)
  (local $one|163 i64)
  (local $integral|164 i64)
  (local $one|165 i64)
  (local $decExp|166 i32)
  (local $binSig|167 i64)
  (local $rawExp|168 i32)
  (local $regular|169 i32)
  (local $binSig|170 i64)
  (local $rawExp|171 i32)
  (local $regular|172 i32)
  (local $c|173 i64)
  (local $q|174 i32)
  (local $decExp|175 i32)
  (local $powExp|176 i32)
  (local $h|177 i32)
  (local $power|178 i32)
  (local $i|179 i32)
  (local $m|180 i64)
  (local $hoff|181 i32)
  (local $hHi|182 i64)
  (local $hLo|183 i64)
  (local $a|184 i64)
  (local $b|185 i64)
  (local $a0|186 i64)
  (local $a1|187 i64)
  (local $b0|188 i64)
  (local $b1|189 i64)
  (local $w0|190 i64)
  (local $t|191 i64)
  (local $w1|192 i64)
  (local $w2|193 i64)
  (local $h1|194 i64)
  (local $c0|195 i64)
  (local $c1|196 i64)
  (local $a|197 i64)
  (local $b|198 i64)
  (local $a0|199 i64)
  (local $a1|200 i64)
  (local $b0|201 i64)
  (local $b1|202 i64)
  (local $w0|203 i64)
  (local $t|204 i64)
  (local $w1|205 i64)
  (local $w2|206 i64)
  (local $c2|207 i64)
  (local $hi|208 i64)
  (local $lo|209 i64)
  (local $pow10Hi|210 i64)
  (local $integral|211 i64)
  (local $halfUlp|212 i64)
  (local $dotOne|213 i64)
  (local $one|214 i64)
  (local $integral|215 i64)
  (local $one|216 i64)
  (local $decExp|217 i32)
  (local $decExp|218 i32)
  (local $powExp|219 i32)
  (local $h|220 i32)
  (local $shift|221 i32)
  (local $power|222 i32)
  (local $i|223 i32)
  (local $m|224 i64)
  (local $hoff|225 i32)
  (local $hHi|226 i64)
  (local $hLo|227 i64)
  (local $a|228 i64)
  (local $b|229 i64)
  (local $a0|230 i64)
  (local $a1|231 i64)
  (local $b0|232 i64)
  (local $b1|233 i64)
  (local $w0|234 i64)
  (local $t|235 i64)
  (local $w1|236 i64)
  (local $w2|237 i64)
  (local $h1|238 i64)
  (local $c0|239 i64)
  (local $c1|240 i64)
  (local $a|241 i64)
  (local $b|242 i64)
  (local $a0|243 i64)
  (local $a1|244 i64)
  (local $b0|245 i64)
  (local $b1|246 i64)
  (local $w0|247 i64)
  (local $t|248 i64)
  (local $w1|249 i64)
  (local $w2|250 i64)
  (local $c2|251 i64)
  (local $hi|252 i64)
  (local $lo|253 i64)
  (local $pHi|254 i64)
  (local $pLo|255 i64)
  (local $y|256 i64)
  (local $a|257 i64)
  (local $b|258 i64)
  (local $a0|259 i64)
  (local $a1|260 i64)
  (local $b0|261 i64)
  (local $b1|262 i64)
  (local $w0|263 i64)
  (local $t|264 i64)
  (local $w1|265 i64)
  (local $w2|266 i64)
  (local $a|267 i64)
  (local $plo64|268 i64)
  (local $a|269 i64)
  (local $b|270 i64)
  (local $a0|271 i64)
  (local $a1|272 i64)
  (local $b0|273 i64)
  (local $b1|274 i64)
  (local $w0|275 i64)
  (local $t|276 i64)
  (local $w1|277 i64)
  (local $w2|278 i64)
  (local $lo|279 i64)
  (local $p_hi|280 i64)
  (local $integral|281 i64)
  (local $dotOne|282 i64)
  (local $halfUlp|283 i64)
  (local $x|284 i64)
  (local $y|285 i64)
  (local $c|286 i64)
  (local $lo|287 i64)
  (local $a|288 i64)
  (local $b|289 i64)
  (local $a0|290 i64)
  (local $a1|291 i64)
  (local $b0|292 i64)
  (local $b1|293 i64)
  (local $w0|294 i64)
  (local $t|295 i64)
  (local $w1|296 i64)
  (local $w2|297 i64)
  (local $hi|298 i64)
  (local $one|299 i64)
  (local $integral|300 i64)
  (local $one|301 i64)
  (local $decExp|302 i32)
  (local $binExp|303 i32)
  (local $decExp|304 i32)
  (local $binExp|305 i32)
  (local $decExp|306 i32)
  (local $pow10BinExp i32)
  (local $shift|308 i32)
  (local $power|309 i32)
  (local $i|310 i32)
  (local $m|311 i64)
  (local $hoff|312 i32)
  (local $hHi|313 i64)
  (local $hLo|314 i64)
  (local $a|315 i64)
  (local $b|316 i64)
  (local $a0|317 i64)
  (local $a1|318 i64)
  (local $b0|319 i64)
  (local $b1|320 i64)
  (local $w0|321 i64)
  (local $t|322 i64)
  (local $w1|323 i64)
  (local $w2|324 i64)
  (local $h1|325 i64)
  (local $c0|326 i64)
  (local $c1|327 i64)
  (local $a|328 i64)
  (local $b|329 i64)
  (local $a0|330 i64)
  (local $a1|331 i64)
  (local $b0|332 i64)
  (local $b1|333 i64)
  (local $w0|334 i64)
  (local $t|335 i64)
  (local $w1|336 i64)
  (local $w2|337 i64)
  (local $c2|338 i64)
  (local $hi|339 i64)
  (local $lo|340 i64)
  (local $pHi|341 i64)
  (local $pLo|342 i64)
  (local $y|343 i64)
  (local $a|344 i64)
  (local $b|345 i64)
  (local $a0|346 i64)
  (local $a1|347 i64)
  (local $b0|348 i64)
  (local $b1|349 i64)
  (local $w0|350 i64)
  (local $t|351 i64)
  (local $w1|352 i64)
  (local $w2|353 i64)
  (local $a|354 i64)
  (local $plo64|355 i64)
  (local $a|356 i64)
  (local $b|357 i64)
  (local $a0|358 i64)
  (local $a1|359 i64)
  (local $b0|360 i64)
  (local $b1|361 i64)
  (local $w0|362 i64)
  (local $t|363 i64)
  (local $w1|364 i64)
  (local $w2|365 i64)
  (local $lo|366 i64)
  (local $p_hi|367 i64)
  (local $integral|368 i64)
  (local $dotOne|369 i64)
  (local $halfUlp|370 i64)
  (local $x|371 i64)
  (local $y|372 i64)
  (local $c|373 i64)
  (local $lo|374 i64)
  (local $a|375 i64)
  (local $b|376 i64)
  (local $a0|377 i64)
  (local $a1|378 i64)
  (local $b0|379 i64)
  (local $b1|380 i64)
  (local $w0|381 i64)
  (local $t|382 i64)
  (local $w1|383 i64)
  (local $w2|384 i64)
  (local $hi|385 i64)
  (local $one|386 i64)
  (local $integral|387 i64)
  (local $one|388 i64)
  (local $decExp|389 i32)
  (local $full i64)
  (local $v|391 i64)
  (local $scale i32)
  (local $mul i64)
  (local $hasLastDigit i32)
  (local $hasExtraDigit i32)
  (local $decExp|396 i32)
  (local $start i32)
  (local $value|398 i64)
  (local $value|399 i64)
  (local $hi|400 i64)
  (local $lo|401 i64)
  (local $hiBcd i64)
  (local $hiLen i32)
  (local $buf|404 i32)
  (local $start|405 i32)
  (local $decExp|406 i32)
  (local $hasLastDigit|407 i32)
  (local $p|408 i32)
  (local $ascii|409 i64)
  (local $off|410 i32)
  (local $base|411 i32)
  (local $lastDigitChar i64)
  (local $numDigits i32)
  (local $dHi i64)
  (local $dLo i64)
  (local $p|416 i32)
  (local $ascii|417 i64)
  (local $off|418 i32)
  (local $base|419 i32)
  (local $p|420 i32)
  (local $ascii|421 i64)
  (local $off|422 i32)
  (local $base|423 i32)
  (local $endByte i32)
  (local $z i32)
  (local $p|426 i32)
  (local $ascii|427 i64)
  (local $off|428 i32)
  (local $base|429 i32)
  (local $n i32)
  (local $endPos i32)
  (local $startPos i32)
  (local $p|433 i32)
  (local $ascii|434 i64)
  (local $off|435 i32)
  (local $base|436 i32)
  (local $p|437 i32)
  (local $ascii|438 i64)
  (local $off|439 i32)
  (local $base|440 i32)
  (local $k i32)
  (local $d16 i64)
  (local $s i32)
  (local $fHi i64)
  (local $fLo i64)
  (local $s2 i32)
  (local $p|447 i32)
  (local $ascii|448 i64)
  (local $off|449 i32)
  (local $base|450 i32)
  (local $p|451 i32)
  (local $ascii|452 i64)
  (local $off|453 i32)
  (local $base|454 i32)
  (local $buf|455 i32)
  (local $start|456 i32)
  (local $decExp|457 i32)
  (local $hasLastDigit|458 i32)
  (local $hasExtraDigit|459 i32)
  (local $bcdSize i32)
  (local $p|461 i32)
  (local $ascii|462 i64)
  (local $off|463 i32)
  (local $base|464 i32)
  (local $p|465 i32)
  (local $ascii|466 i64)
  (local $off|467 i32)
  (local $base|468 i32)
  (local $lead i32)
  (local $buf|470 i32)
  (local $decExp|471 i32)
  (local $m|472 i32)
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
   global.get $~lib/util/dtoa/DOUBLE_SIGNIFICAND_MASK
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
    i64.const 1000000000000000
    local.set $threshold
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
       block $~lib/util/dtoa/writeNaN|inlined.1 (result i32)
        local.get $buf|7
        local.set $buf|14
        local.get $buf|14
        i32.const 78
        i32.store16
        local.get $buf|14
        i32.const 97
        i32.store16 offset=2
        local.get $buf|14
        i32.const 78
        i32.store16 offset=4
        local.get $buf|14
        i32.const 6
        i32.add
        br $~lib/util/dtoa/writeNaN|inlined.1
       end
       br $~lib/util/dtoa/formatDecodedDouble|inlined.0
      end
      block $~lib/util/dtoa/writeInfinity|inlined.1 (result i32)
       local.get $buf|7
       local.set $buf|15
       local.get $neg
       local.set $neg|16
       local.get $neg|16
       if
        local.get $buf|15
        i32.const 45
        i32.store16
        local.get $buf|15
        i32.const 2
        i32.add
        local.set $buf|15
       end
       local.get $buf|15
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
       local.get $buf|15
       i32.const 16
       i32.add
       br $~lib/util/dtoa/writeInfinity|inlined.1
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
     global.get $~lib/util/dtoa/DOUBLE_HIDDEN_BIT
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
       local.set $buf|26
       local.get $intValue
       local.set $value|27
       block $~lib/util/dtoa/decimalLen16|inlined.0 (result i32)
        local.get $value|27
        local.set $v
        local.get $v
        i64.const 1000000000000000
        i64.lt_u
        if (result i32)
         block $~lib/util/dtoa/decimalLen15|inlined.0 (result i32)
          local.get $v
          local.set $v|29
          local.get $v|29
          i64.const 100000000
          i64.lt_u
          if
           local.get $v|29
           i64.const 10000
           i64.lt_u
           if
            local.get $v|29
            i64.const 100
            i64.lt_u
            if
             local.get $v|29
             i64.const 10
             i64.lt_u
             if (result i32)
              i32.const 1
             else
              i32.const 2
             end
             br $~lib/util/dtoa/decimalLen15|inlined.0
            end
            local.get $v|29
            i64.const 1000
            i64.lt_u
            if (result i32)
             i32.const 3
            else
             i32.const 4
            end
            br $~lib/util/dtoa/decimalLen15|inlined.0
           end
           local.get $v|29
           i64.const 1000000
           i64.lt_u
           if
            local.get $v|29
            i64.const 100000
            i64.lt_u
            if (result i32)
             i32.const 5
            else
             i32.const 6
            end
            br $~lib/util/dtoa/decimalLen15|inlined.0
           end
           local.get $v|29
           i64.const 10000000
           i64.lt_u
           if (result i32)
            i32.const 7
           else
            i32.const 8
           end
           br $~lib/util/dtoa/decimalLen15|inlined.0
          end
          local.get $v|29
          i64.const 1000000000000
          i64.lt_u
          if
           local.get $v|29
           i64.const 10000000000
           i64.lt_u
           if
            local.get $v|29
            i64.const 1000000000
            i64.lt_u
            if (result i32)
             i32.const 9
            else
             i32.const 10
            end
            br $~lib/util/dtoa/decimalLen15|inlined.0
           end
           local.get $v|29
           i64.const 100000000000
           i64.lt_u
           if (result i32)
            i32.const 11
           else
            i32.const 12
           end
           br $~lib/util/dtoa/decimalLen15|inlined.0
          end
          local.get $v|29
          i64.const 100000000000000
          i64.lt_u
          if
           local.get $v|29
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
       local.get $buf|26
       local.get $len
       i32.const 1
       i32.shl
       i32.add
       local.set $p|31
       local.get $value|27
       local.set $v|32
       loop $while-continue|0
        local.get $v|32
        i64.const 100
        i64.ge_u
        if
         local.get $v|32
         i64.const 100
         i64.div_u
         local.set $q|33
         local.get $p|31
         i32.const 4
         i32.sub
         local.set $p|31
         local.get $p|31
         i32.const 1008
         local.get $v|32
         local.get $q|33
         i64.const 100
         i64.mul
         i64.sub
         i32.wrap_i64
         i32.const 2
         i32.shl
         i32.add
         i32.load
         i32.store
         local.get $q|33
         local.set $v|32
         br $while-continue|0
        end
       end
       local.get $v|32
       i64.const 10
       i64.ge_u
       if
        local.get $buf|26
        i32.const 1008
        local.get $v|32
        i32.wrap_i64
        i32.const 2
        i32.shl
        i32.add
        i32.load
        i32.store
       else
        local.get $buf|26
        i32.const 48
        local.get $v|32
        i32.wrap_i64
        i32.add
        i32.store16
       end
       local.get $buf|26
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
      local.set $binSig|34
      local.get $binExp|9
      local.set $rawExp
      local.get $binSig|10
      i64.const 0
      i64.ne
      local.set $regular
      local.get $binSig|34
      global.get $~lib/util/dtoa/DOUBLE_HIDDEN_BIT
      i64.or
      local.set $c|37
      local.get $rawExp
      global.get $~lib/util/dtoa/DOUBLE_EXP_OFFSET
      i32.sub
      local.set $q|38
      local.get $regular
      i32.eqz
      if
       local.get $q|38
       global.get $~lib/util/dtoa/LOG10_2_SIGNIFICAND
       i32.mul
       i32.const 131072
       i32.sub
       global.get $~lib/util/dtoa/LOG10_2_EXP
       i32.shr_s
       local.set $decExp
       i32.const 0
       local.get $decExp
       i32.sub
       i32.const 1
       i32.sub
       local.set $powExp
       local.get $q|38
       local.get $powExp
       global.get $~lib/util/dtoa/LOG2_POW10_SIGNIFICAND
       i32.mul
       global.get $~lib/util/dtoa/LOG2_POW10_EXP
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
         local.set $a|61
         local.get $m
         local.set $b|62
         local.get $a|61
         i64.const 4294967295
         i64.and
         local.set $a0|63
         local.get $a|61
         i64.const 32
         i64.shr_u
         local.set $a1|64
         local.get $b|62
         i64.const 4294967295
         i64.and
         local.set $b0|65
         local.get $b|62
         i64.const 32
         i64.shr_u
         local.set $b1|66
         local.get $a0|63
         local.get $b0|65
         i64.mul
         local.set $w0|67
         local.get $a1|64
         local.get $b0|65
         i64.mul
         local.get $w0|67
         i64.const 32
         i64.shr_u
         i64.add
         local.set $t|68
         local.get $t|68
         i64.const 4294967295
         i64.and
         local.set $w1|69
         local.get $t|68
         i64.const 32
         i64.shr_u
         local.set $w2|70
         local.get $a0|63
         local.get $b1|66
         i64.mul
         local.get $w1|69
         i64.add
         local.set $w1|69
         local.get $a1|64
         local.get $b1|66
         i64.mul
         local.get $w2|70
         i64.add
         local.get $w1|69
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
         local.get $c1
         local.set $lo
         local.get $c2
         local.set $hi
        else
         local.get $c1
         i64.const 1
         i64.shl
         local.get $c0
         i64.const 63
         i64.shr_u
         i64.or
         local.set $lo
         local.get $c2
         i64.const 1
         i64.shl
         local.get $c1
         i64.const 63
         i64.shr_u
         i64.or
         local.set $hi
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
       global.get $~lib/builtins/u64.MAX_VALUE
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
       local.set $integral|79
       local.get $one
       local.set $one|80
       local.get $decExp
       local.set $decExp|81
       local.get $one|80
       i64.const 10
       i64.eq
       if
        local.get $integral|79
        i64.const 1
        i64.add
        global.set $~lib/util/dtoa/gSig
        i32.const 0
        global.set $~lib/util/dtoa/gLastDigit
        i32.const 0
        global.set $~lib/util/dtoa/gHasLastDigit
       else
        local.get $one|80
        i64.const 0
        i64.eq
        if
         local.get $integral|79
         global.set $~lib/util/dtoa/gSig
         i32.const 0
         global.set $~lib/util/dtoa/gLastDigit
         i32.const 0
         global.set $~lib/util/dtoa/gHasLastDigit
        else
         local.get $integral|79
         global.set $~lib/util/dtoa/gSig
         local.get $one|80
         i32.wrap_i64
         global.set $~lib/util/dtoa/gLastDigit
         i32.const 1
         global.set $~lib/util/dtoa/gHasLastDigit
        end
       end
       local.get $decExp|81
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
      local.set $decExp|82
      i32.const 0
      local.get $decExp|82
      i32.sub
      i32.const 1
      i32.sub
      local.set $powExp|83
      local.get $q|38
      local.get $powExp|83
      global.get $~lib/util/dtoa/LOG2_POW10_SIGNIFICAND
      i32.mul
      global.get $~lib/util/dtoa/LOG2_POW10_EXP
      i32.shr_s
      i32.add
      local.set $h|84
      local.get $h|84
      i32.const 1
      i32.add
      global.get $~lib/util/dtoa/EXTRA_SHIFT
      i32.add
      local.set $shift|85
      local.get $powExp|83
      local.set $power|86
      local.get $power|86
      i32.const 293
      i32.add
      local.set $i|87
      global.get $~lib/util/dtoa/POW10_MINOR
      local.get $i|87
      i32.const 10
      i32.add
      i32.const 28
      i32.rem_s
      i32.const 3
      i32.shl
      i32.add
      i64.load
      local.set $m|88
      global.get $~lib/util/dtoa/POW10_MAJOR
      local.get $i|87
      i32.const 10
      i32.add
      i32.const 28
      i32.div_s
      i32.const 4
      i32.shl
      i32.add
      local.set $hoff|89
      local.get $hoff|89
      i64.load
      local.set $hHi|90
      local.get $hoff|89
      i64.load offset=8
      local.set $hLo|91
      block $~lib/util/dtoa/mulhi64|inlined.2 (result i64)
       local.get $hLo|91
       local.set $a|92
       local.get $m|88
       local.set $b|93
       local.get $a|92
       i64.const 4294967295
       i64.and
       local.set $a0|94
       local.get $a|92
       i64.const 32
       i64.shr_u
       local.set $a1|95
       local.get $b|93
       i64.const 4294967295
       i64.and
       local.set $b0|96
       local.get $b|93
       i64.const 32
       i64.shr_u
       local.set $b1|97
       local.get $a0|94
       local.get $b0|96
       i64.mul
       local.set $w0|98
       local.get $a1|95
       local.get $b0|96
       i64.mul
       local.get $w0|98
       i64.const 32
       i64.shr_u
       i64.add
       local.set $t|99
       local.get $t|99
       i64.const 4294967295
       i64.and
       local.set $w1|100
       local.get $t|99
       i64.const 32
       i64.shr_u
       local.set $w2|101
       local.get $a0|94
       local.get $b1|97
       i64.mul
       local.get $w1|100
       i64.add
       local.set $w1|100
       local.get $a1|95
       local.get $b1|97
       i64.mul
       local.get $w2|101
       i64.add
       local.get $w1|100
       i64.const 32
       i64.shr_u
       i64.add
       br $~lib/util/dtoa/mulhi64|inlined.2
      end
      local.set $h1|102
      local.get $hLo|91
      local.get $m|88
      i64.mul
      local.set $c0|103
      local.get $h1|102
      local.get $hHi|90
      local.get $m|88
      i64.mul
      i64.add
      local.set $c1|104
      local.get $c1|104
      local.get $h1|102
      i64.lt_u
      i64.extend_i32_u
      block $~lib/util/dtoa/mulhi64|inlined.3 (result i64)
       local.get $hHi|90
       local.set $a|105
       local.get $m|88
       local.set $b|106
       local.get $a|105
       i64.const 4294967295
       i64.and
       local.set $a0|107
       local.get $a|105
       i64.const 32
       i64.shr_u
       local.set $a1|108
       local.get $b|106
       i64.const 4294967295
       i64.and
       local.set $b0|109
       local.get $b|106
       i64.const 32
       i64.shr_u
       local.set $b1|110
       local.get $a0|107
       local.get $b0|109
       i64.mul
       local.set $w0|111
       local.get $a1|108
       local.get $b0|109
       i64.mul
       local.get $w0|111
       i64.const 32
       i64.shr_u
       i64.add
       local.set $t|112
       local.get $t|112
       i64.const 4294967295
       i64.and
       local.set $w1|113
       local.get $t|112
       i64.const 32
       i64.shr_u
       local.set $w2|114
       local.get $a0|107
       local.get $b1|110
       i64.mul
       local.get $w1|113
       i64.add
       local.set $w1|113
       local.get $a1|108
       local.get $b1|110
       i64.mul
       local.get $w2|114
       i64.add
       local.get $w1|113
       i64.const 32
       i64.shr_u
       i64.add
       br $~lib/util/dtoa/mulhi64|inlined.3
      end
      i64.add
      local.set $c2|115
      local.get $c2|115
      i64.const 63
      i64.shr_u
      i64.const 0
      i64.ne
      if
       local.get $c1|104
       local.set $lo|117
       local.get $c2|115
       local.set $hi|116
      else
       local.get $c1|104
       i64.const 1
       i64.shl
       local.get $c0|103
       i64.const 63
       i64.shr_u
       i64.or
       local.set $lo|117
       local.get $c2|115
       i64.const 1
       i64.shl
       local.get $c1|104
       i64.const 63
       i64.shr_u
       i64.or
       local.set $hi|116
      end
      local.get $lo|117
      global.get $~lib/util/dtoa/POW10_FIXUPS
      local.get $i|87
      i32.const 5
      i32.shr_s
      i32.const 2
      i32.shl
      i32.add
      i64.load32_u
      local.get $i|87
      i32.const 31
      i32.and
      i64.extend_i32_s
      i64.shr_u
      i64.const 1
      i64.and
      i64.sub
      local.set $lo|117
      local.get $hi|116
      global.set $~lib/util/dtoa/gPow10Hi
      local.get $lo|117
      global.set $~lib/util/dtoa/gPow10Lo
      global.get $~lib/util/dtoa/gPow10Lo
      local.get $power|86
      i32.const 0
      i32.lt_s
      i64.extend_i32_u
      i64.add
      global.set $~lib/util/dtoa/gPow10Lo
      global.get $~lib/util/dtoa/gPow10Hi
      local.set $pHi
      global.get $~lib/util/dtoa/gPow10Lo
      local.set $pLo
      local.get $c|37
      local.get $shift|85
      i64.extend_i32_s
      i64.shl
      local.set $y
      block $~lib/util/dtoa/mulhi64|inlined.4 (result i64)
       local.get $pHi
       local.set $a|121
       local.get $y
       local.set $b|122
       local.get $a|121
       i64.const 4294967295
       i64.and
       local.set $a0|123
       local.get $a|121
       i64.const 32
       i64.shr_u
       local.set $a1|124
       local.get $b|122
       i64.const 4294967295
       i64.and
       local.set $b0|125
       local.get $b|122
       i64.const 32
       i64.shr_u
       local.set $b1|126
       local.get $a0|123
       local.get $b0|125
       i64.mul
       local.set $w0|127
       local.get $a1|124
       local.get $b0|125
       i64.mul
       local.get $w0|127
       i64.const 32
       i64.shr_u
       i64.add
       local.set $t|128
       local.get $t|128
       i64.const 4294967295
       i64.and
       local.set $w1|129
       local.get $t|128
       i64.const 32
       i64.shr_u
       local.set $w2|130
       local.get $a0|123
       local.get $b1|126
       i64.mul
       local.get $w1|129
       i64.add
       local.set $w1|129
       local.get $a1|124
       local.get $b1|126
       i64.mul
       local.get $w2|130
       i64.add
       local.get $w1|129
       i64.const 32
       i64.shr_u
       i64.add
       br $~lib/util/dtoa/mulhi64|inlined.4
      end
      local.set $a|131
      local.get $pHi
      local.get $y
      i64.mul
      local.set $plo64
      local.get $plo64
      block $~lib/util/dtoa/mulhi64|inlined.5 (result i64)
       local.get $pLo
       local.set $a|133
       local.get $y
       local.set $b|134
       local.get $a|133
       i64.const 4294967295
       i64.and
       local.set $a0|135
       local.get $a|133
       i64.const 32
       i64.shr_u
       local.set $a1|136
       local.get $b|134
       i64.const 4294967295
       i64.and
       local.set $b0|137
       local.get $b|134
       i64.const 32
       i64.shr_u
       local.set $b1|138
       local.get $a0|135
       local.get $b0|137
       i64.mul
       local.set $w0|139
       local.get $a1|136
       local.get $b0|137
       i64.mul
       local.get $w0|139
       i64.const 32
       i64.shr_u
       i64.add
       local.set $t|140
       local.get $t|140
       i64.const 4294967295
       i64.and
       local.set $w1|141
       local.get $t|140
       i64.const 32
       i64.shr_u
       local.set $w2|142
       local.get $a0|135
       local.get $b1|138
       i64.mul
       local.get $w1|141
       i64.add
       local.set $w1|141
       local.get $a1|136
       local.get $b1|138
       i64.mul
       local.get $w2|142
       i64.add
       local.get $w1|141
       i64.const 32
       i64.shr_u
       i64.add
       br $~lib/util/dtoa/mulhi64|inlined.5
      end
      i64.add
      local.set $lo|143
      local.get $a|131
      local.get $lo|143
      local.get $plo64
      i64.lt_u
      i64.extend_i32_u
      i64.add
      local.set $p_hi
      local.get $p_hi
      global.get $~lib/util/dtoa/EXTRA_SHIFT
      i64.extend_i32_s
      i64.shr_u
      local.set $integral|145
      local.get $p_hi
      i64.const 64
      global.get $~lib/util/dtoa/EXTRA_SHIFT
      i64.extend_i32_s
      i64.sub
      i64.shl
      local.get $lo|143
      global.get $~lib/util/dtoa/EXTRA_SHIFT
      i64.extend_i32_s
      i64.shr_u
      i64.or
      local.set $dotOne|146
      local.get $pHi
      i32.const 0
      local.get $h|84
      i32.sub
      i64.extend_i32_s
      i64.shr_u
      i64.const 1
      local.get $c|37
      i64.const 1
      i64.and
      i64.sub
      i64.add
      local.set $halfUlp|147
      block $~lib/util/dtoa/umul128AddHi64|inlined.0 (result i64)
       local.get $dotOne|146
       local.set $x
       i64.const 10
       local.set $y|149
       local.get $dotOne|146
       i64.const 1
       i64.const 62
       i64.shl
       i64.eq
       if (result i64)
        i64.const 0
       else
        global.get $~lib/util/dtoa/BIASED_HALF
       end
       local.set $c|150
       local.get $x
       local.get $y|149
       i64.mul
       local.set $lo|151
       block $~lib/util/dtoa/mulhi64|inlined.6 (result i64)
        local.get $x
        local.set $a|152
        local.get $y|149
        local.set $b|153
        local.get $a|152
        i64.const 4294967295
        i64.and
        local.set $a0|154
        local.get $a|152
        i64.const 32
        i64.shr_u
        local.set $a1|155
        local.get $b|153
        i64.const 4294967295
        i64.and
        local.set $b0|156
        local.get $b|153
        i64.const 32
        i64.shr_u
        local.set $b1|157
        local.get $a0|154
        local.get $b0|156
        i64.mul
        local.set $w0|158
        local.get $a1|155
        local.get $b0|156
        i64.mul
        local.get $w0|158
        i64.const 32
        i64.shr_u
        i64.add
        local.set $t|159
        local.get $t|159
        i64.const 4294967295
        i64.and
        local.set $w1|160
        local.get $t|159
        i64.const 32
        i64.shr_u
        local.set $w2|161
        local.get $a0|154
        local.get $b1|157
        i64.mul
        local.get $w1|160
        i64.add
        local.set $w1|160
        local.get $a1|155
        local.get $b1|157
        i64.mul
        local.get $w2|161
        i64.add
        local.get $w1|160
        i64.const 32
        i64.shr_u
        i64.add
        br $~lib/util/dtoa/mulhi64|inlined.6
       end
       local.set $hi|162
       local.get $hi|162
       local.get $lo|151
       local.get $c|150
       i64.add
       local.get $lo|151
       i64.lt_u
       i64.extend_i32_u
       i64.add
       br $~lib/util/dtoa/umul128AddHi64|inlined.0
      end
      local.set $one|163
      local.get $dotOne|146
      local.get $halfUlp|147
      i64.lt_u
      if (result i64)
       i64.const 0
      else
       local.get $one|163
      end
      local.set $one|163
      global.get $~lib/builtins/u64.MAX_VALUE
      local.get $dotOne|146
      i64.sub
      local.get $halfUlp|147
      i64.lt_u
      if (result i64)
       i64.const 10
      else
       local.get $one|163
      end
      local.set $one|163
      local.get $integral|145
      local.set $integral|164
      local.get $one|163
      local.set $one|165
      local.get $decExp|82
      local.set $decExp|166
      local.get $one|165
      i64.const 10
      i64.eq
      if
       local.get $integral|164
       i64.const 1
       i64.add
       global.set $~lib/util/dtoa/gSig
       i32.const 0
       global.set $~lib/util/dtoa/gLastDigit
       i32.const 0
       global.set $~lib/util/dtoa/gHasLastDigit
      else
       local.get $one|165
       i64.const 0
       i64.eq
       if
        local.get $integral|164
        global.set $~lib/util/dtoa/gSig
        i32.const 0
        global.set $~lib/util/dtoa/gLastDigit
        i32.const 0
        global.set $~lib/util/dtoa/gHasLastDigit
       else
        local.get $integral|164
        global.set $~lib/util/dtoa/gSig
        local.get $one|165
        i32.wrap_i64
        global.set $~lib/util/dtoa/gLastDigit
        i32.const 1
        global.set $~lib/util/dtoa/gHasLastDigit
       end
      end
      local.get $decExp|166
      global.set $~lib/util/dtoa/gExp
     end
    else
     block $~lib/util/dtoa/toDecimalDouble|inlined.0
      local.get $binSig|10
      local.set $binSig|167
      i32.const 0
      local.set $rawExp|168
      i32.const 1
      local.set $regular|169
      local.get $rawExp|168
      i32.const 0
      i32.ne
      if
       block $~lib/util/dtoa/toDecimalDoubleNormal|inlined.1
        local.get $binSig|167
        local.set $binSig|170
        local.get $rawExp|168
        local.set $rawExp|171
        local.get $regular|169
        local.set $regular|172
        local.get $binSig|170
        global.get $~lib/util/dtoa/DOUBLE_HIDDEN_BIT
        i64.or
        local.set $c|173
        local.get $rawExp|171
        global.get $~lib/util/dtoa/DOUBLE_EXP_OFFSET
        i32.sub
        local.set $q|174
        local.get $regular|172
        i32.eqz
        if
         local.get $q|174
         global.get $~lib/util/dtoa/LOG10_2_SIGNIFICAND
         i32.mul
         i32.const 131072
         i32.sub
         global.get $~lib/util/dtoa/LOG10_2_EXP
         i32.shr_s
         local.set $decExp|175
         i32.const 0
         local.get $decExp|175
         i32.sub
         i32.const 1
         i32.sub
         local.set $powExp|176
         local.get $q|174
         local.get $powExp|176
         global.get $~lib/util/dtoa/LOG2_POW10_SIGNIFICAND
         i32.mul
         global.get $~lib/util/dtoa/LOG2_POW10_EXP
         i32.shr_s
         i32.add
         local.set $h|177
         block $~lib/util/dtoa/loadPow10HiXjb64|inlined.1 (result i64)
          local.get $powExp|176
          local.set $power|178
          local.get $power|178
          i32.const 293
          i32.add
          local.set $i|179
          global.get $~lib/util/dtoa/POW10_MINOR
          local.get $i|179
          i32.const 10
          i32.add
          i32.const 28
          i32.rem_s
          i32.const 3
          i32.shl
          i32.add
          i64.load
          local.set $m|180
          global.get $~lib/util/dtoa/POW10_MAJOR
          local.get $i|179
          i32.const 10
          i32.add
          i32.const 28
          i32.div_s
          i32.const 4
          i32.shl
          i32.add
          local.set $hoff|181
          local.get $hoff|181
          i64.load
          local.set $hHi|182
          local.get $hoff|181
          i64.load offset=8
          local.set $hLo|183
          block $~lib/util/dtoa/mulhi64|inlined.7 (result i64)
           local.get $hLo|183
           local.set $a|184
           local.get $m|180
           local.set $b|185
           local.get $a|184
           i64.const 4294967295
           i64.and
           local.set $a0|186
           local.get $a|184
           i64.const 32
           i64.shr_u
           local.set $a1|187
           local.get $b|185
           i64.const 4294967295
           i64.and
           local.set $b0|188
           local.get $b|185
           i64.const 32
           i64.shr_u
           local.set $b1|189
           local.get $a0|186
           local.get $b0|188
           i64.mul
           local.set $w0|190
           local.get $a1|187
           local.get $b0|188
           i64.mul
           local.get $w0|190
           i64.const 32
           i64.shr_u
           i64.add
           local.set $t|191
           local.get $t|191
           i64.const 4294967295
           i64.and
           local.set $w1|192
           local.get $t|191
           i64.const 32
           i64.shr_u
           local.set $w2|193
           local.get $a0|186
           local.get $b1|189
           i64.mul
           local.get $w1|192
           i64.add
           local.set $w1|192
           local.get $a1|187
           local.get $b1|189
           i64.mul
           local.get $w2|193
           i64.add
           local.get $w1|192
           i64.const 32
           i64.shr_u
           i64.add
           br $~lib/util/dtoa/mulhi64|inlined.7
          end
          local.set $h1|194
          local.get $hLo|183
          local.get $m|180
          i64.mul
          local.set $c0|195
          local.get $h1|194
          local.get $hHi|182
          local.get $m|180
          i64.mul
          i64.add
          local.set $c1|196
          local.get $c1|196
          local.get $h1|194
          i64.lt_u
          i64.extend_i32_u
          block $~lib/util/dtoa/mulhi64|inlined.8 (result i64)
           local.get $hHi|182
           local.set $a|197
           local.get $m|180
           local.set $b|198
           local.get $a|197
           i64.const 4294967295
           i64.and
           local.set $a0|199
           local.get $a|197
           i64.const 32
           i64.shr_u
           local.set $a1|200
           local.get $b|198
           i64.const 4294967295
           i64.and
           local.set $b0|201
           local.get $b|198
           i64.const 32
           i64.shr_u
           local.set $b1|202
           local.get $a0|199
           local.get $b0|201
           i64.mul
           local.set $w0|203
           local.get $a1|200
           local.get $b0|201
           i64.mul
           local.get $w0|203
           i64.const 32
           i64.shr_u
           i64.add
           local.set $t|204
           local.get $t|204
           i64.const 4294967295
           i64.and
           local.set $w1|205
           local.get $t|204
           i64.const 32
           i64.shr_u
           local.set $w2|206
           local.get $a0|199
           local.get $b1|202
           i64.mul
           local.get $w1|205
           i64.add
           local.set $w1|205
           local.get $a1|200
           local.get $b1|202
           i64.mul
           local.get $w2|206
           i64.add
           local.get $w1|205
           i64.const 32
           i64.shr_u
           i64.add
           br $~lib/util/dtoa/mulhi64|inlined.8
          end
          i64.add
          local.set $c2|207
          local.get $c2|207
          i64.const 63
          i64.shr_u
          i64.const 0
          i64.ne
          if
           local.get $c1|196
           local.set $lo|209
           local.get $c2|207
           local.set $hi|208
          else
           local.get $c1|196
           i64.const 1
           i64.shl
           local.get $c0|195
           i64.const 63
           i64.shr_u
           i64.or
           local.set $lo|209
           local.get $c2|207
           i64.const 1
           i64.shl
           local.get $c1|196
           i64.const 63
           i64.shr_u
           i64.or
           local.set $hi|208
          end
          local.get $lo|209
          global.get $~lib/util/dtoa/POW10_FIXUPS
          local.get $i|179
          i32.const 5
          i32.shr_s
          i32.const 2
          i32.shl
          i32.add
          i64.load32_u
          local.get $i|179
          i32.const 31
          i32.and
          i64.extend_i32_s
          i64.shr_u
          i64.const 1
          i64.and
          i64.sub
          local.set $lo|209
          local.get $hi|208
          global.set $~lib/util/dtoa/gPow10Hi
          local.get $lo|209
          global.set $~lib/util/dtoa/gPow10Lo
          global.get $~lib/util/dtoa/gPow10Hi
          br $~lib/util/dtoa/loadPow10HiXjb64|inlined.1
         end
         local.set $pow10Hi|210
         local.get $pow10Hi|210
         i64.const 11
         local.get $h|177
         i64.extend_i32_s
         i64.sub
         i64.shr_u
         local.set $integral|211
         local.get $pow10Hi|210
         i32.const 0
         local.get $h|177
         i32.sub
         i64.extend_i32_s
         i64.shr_u
         local.set $halfUlp|212
         local.get $pow10Hi|210
         i64.const 53
         local.get $h|177
         i64.extend_i32_s
         i64.add
         i64.shl
         local.set $dotOne|213
         local.get $dotOne|213
         i64.const 53
         local.get $h|177
         i64.extend_i32_s
         i64.add
         i64.shr_u
         i64.const 5
         i64.mul
         i64.const 1
         i64.const 9
         local.get $h|177
         i64.extend_i32_s
         i64.sub
         i64.shl
         i64.add
         i64.const 10
         local.get $h|177
         i64.extend_i32_s
         i64.sub
         i64.shr_u
         local.set $one|214
         local.get $dotOne|213
         i64.const 54
         i64.shr_u
         i64.const 5
         i64.mul
         i64.const 511
         i64.and
         local.get $halfUlp|212
         i64.const 55
         i64.shr_u
         i64.const 5
         i64.mul
         i64.gt_u
         if (result i64)
          local.get $dotOne|213
          i64.const 54
          i64.shr_u
          i64.const 5
          i64.mul
          i64.const 9
          i64.shr_u
          i64.const 1
          i64.add
         else
          local.get $one|214
         end
         local.set $one|214
         local.get $dotOne|213
         i64.const 1
         i64.const 62
         i64.shl
         i64.eq
         if (result i64)
          i64.const 2
         else
          local.get $one|214
         end
         local.set $one|214
         local.get $halfUlp|212
         i64.const 1
         i64.shr_u
         local.get $dotOne|213
         i64.gt_u
         if (result i64)
          i64.const 0
         else
          local.get $one|214
         end
         local.set $one|214
         local.get $halfUlp|212
         global.get $~lib/builtins/u64.MAX_VALUE
         local.get $dotOne|213
         i64.sub
         i64.gt_u
         if (result i64)
          i64.const 10
         else
          local.get $one|214
         end
         local.set $one|214
         local.get $integral|211
         local.set $integral|215
         local.get $one|214
         local.set $one|216
         local.get $decExp|175
         local.set $decExp|217
         local.get $one|216
         i64.const 10
         i64.eq
         if
          local.get $integral|215
          i64.const 1
          i64.add
          global.set $~lib/util/dtoa/gSig
          i32.const 0
          global.set $~lib/util/dtoa/gLastDigit
          i32.const 0
          global.set $~lib/util/dtoa/gHasLastDigit
         else
          local.get $one|216
          i64.const 0
          i64.eq
          if
           local.get $integral|215
           global.set $~lib/util/dtoa/gSig
           i32.const 0
           global.set $~lib/util/dtoa/gLastDigit
           i32.const 0
           global.set $~lib/util/dtoa/gHasLastDigit
          else
           local.get $integral|215
           global.set $~lib/util/dtoa/gSig
           local.get $one|216
           i32.wrap_i64
           global.set $~lib/util/dtoa/gLastDigit
           i32.const 1
           global.set $~lib/util/dtoa/gHasLastDigit
          end
         end
         local.get $decExp|217
         global.set $~lib/util/dtoa/gExp
         br $~lib/util/dtoa/toDecimalDoubleNormal|inlined.1
        end
        local.get $rawExp|171
        global.get $~lib/util/dtoa/DOUBLE_EXP_OFFSET
        i32.sub
        i32.const 78913
        i32.mul
        i32.const 18
        i32.shr_s
        local.set $decExp|218
        i32.const 0
        local.get $decExp|218
        i32.sub
        i32.const 1
        i32.sub
        local.set $powExp|219
        local.get $q|174
        local.get $powExp|219
        global.get $~lib/util/dtoa/LOG2_POW10_SIGNIFICAND
        i32.mul
        global.get $~lib/util/dtoa/LOG2_POW10_EXP
        i32.shr_s
        i32.add
        local.set $h|220
        local.get $h|220
        i32.const 1
        i32.add
        global.get $~lib/util/dtoa/EXTRA_SHIFT
        i32.add
        local.set $shift|221
        local.get $powExp|219
        local.set $power|222
        local.get $power|222
        i32.const 293
        i32.add
        local.set $i|223
        global.get $~lib/util/dtoa/POW10_MINOR
        local.get $i|223
        i32.const 10
        i32.add
        i32.const 28
        i32.rem_s
        i32.const 3
        i32.shl
        i32.add
        i64.load
        local.set $m|224
        global.get $~lib/util/dtoa/POW10_MAJOR
        local.get $i|223
        i32.const 10
        i32.add
        i32.const 28
        i32.div_s
        i32.const 4
        i32.shl
        i32.add
        local.set $hoff|225
        local.get $hoff|225
        i64.load
        local.set $hHi|226
        local.get $hoff|225
        i64.load offset=8
        local.set $hLo|227
        block $~lib/util/dtoa/mulhi64|inlined.9 (result i64)
         local.get $hLo|227
         local.set $a|228
         local.get $m|224
         local.set $b|229
         local.get $a|228
         i64.const 4294967295
         i64.and
         local.set $a0|230
         local.get $a|228
         i64.const 32
         i64.shr_u
         local.set $a1|231
         local.get $b|229
         i64.const 4294967295
         i64.and
         local.set $b0|232
         local.get $b|229
         i64.const 32
         i64.shr_u
         local.set $b1|233
         local.get $a0|230
         local.get $b0|232
         i64.mul
         local.set $w0|234
         local.get $a1|231
         local.get $b0|232
         i64.mul
         local.get $w0|234
         i64.const 32
         i64.shr_u
         i64.add
         local.set $t|235
         local.get $t|235
         i64.const 4294967295
         i64.and
         local.set $w1|236
         local.get $t|235
         i64.const 32
         i64.shr_u
         local.set $w2|237
         local.get $a0|230
         local.get $b1|233
         i64.mul
         local.get $w1|236
         i64.add
         local.set $w1|236
         local.get $a1|231
         local.get $b1|233
         i64.mul
         local.get $w2|237
         i64.add
         local.get $w1|236
         i64.const 32
         i64.shr_u
         i64.add
         br $~lib/util/dtoa/mulhi64|inlined.9
        end
        local.set $h1|238
        local.get $hLo|227
        local.get $m|224
        i64.mul
        local.set $c0|239
        local.get $h1|238
        local.get $hHi|226
        local.get $m|224
        i64.mul
        i64.add
        local.set $c1|240
        local.get $c1|240
        local.get $h1|238
        i64.lt_u
        i64.extend_i32_u
        block $~lib/util/dtoa/mulhi64|inlined.10 (result i64)
         local.get $hHi|226
         local.set $a|241
         local.get $m|224
         local.set $b|242
         local.get $a|241
         i64.const 4294967295
         i64.and
         local.set $a0|243
         local.get $a|241
         i64.const 32
         i64.shr_u
         local.set $a1|244
         local.get $b|242
         i64.const 4294967295
         i64.and
         local.set $b0|245
         local.get $b|242
         i64.const 32
         i64.shr_u
         local.set $b1|246
         local.get $a0|243
         local.get $b0|245
         i64.mul
         local.set $w0|247
         local.get $a1|244
         local.get $b0|245
         i64.mul
         local.get $w0|247
         i64.const 32
         i64.shr_u
         i64.add
         local.set $t|248
         local.get $t|248
         i64.const 4294967295
         i64.and
         local.set $w1|249
         local.get $t|248
         i64.const 32
         i64.shr_u
         local.set $w2|250
         local.get $a0|243
         local.get $b1|246
         i64.mul
         local.get $w1|249
         i64.add
         local.set $w1|249
         local.get $a1|244
         local.get $b1|246
         i64.mul
         local.get $w2|250
         i64.add
         local.get $w1|249
         i64.const 32
         i64.shr_u
         i64.add
         br $~lib/util/dtoa/mulhi64|inlined.10
        end
        i64.add
        local.set $c2|251
        local.get $c2|251
        i64.const 63
        i64.shr_u
        i64.const 0
        i64.ne
        if
         local.get $c1|240
         local.set $lo|253
         local.get $c2|251
         local.set $hi|252
        else
         local.get $c1|240
         i64.const 1
         i64.shl
         local.get $c0|239
         i64.const 63
         i64.shr_u
         i64.or
         local.set $lo|253
         local.get $c2|251
         i64.const 1
         i64.shl
         local.get $c1|240
         i64.const 63
         i64.shr_u
         i64.or
         local.set $hi|252
        end
        local.get $lo|253
        global.get $~lib/util/dtoa/POW10_FIXUPS
        local.get $i|223
        i32.const 5
        i32.shr_s
        i32.const 2
        i32.shl
        i32.add
        i64.load32_u
        local.get $i|223
        i32.const 31
        i32.and
        i64.extend_i32_s
        i64.shr_u
        i64.const 1
        i64.and
        i64.sub
        local.set $lo|253
        local.get $hi|252
        global.set $~lib/util/dtoa/gPow10Hi
        local.get $lo|253
        global.set $~lib/util/dtoa/gPow10Lo
        global.get $~lib/util/dtoa/gPow10Lo
        local.get $power|222
        i32.const 0
        i32.lt_s
        i64.extend_i32_u
        i64.add
        global.set $~lib/util/dtoa/gPow10Lo
        global.get $~lib/util/dtoa/gPow10Hi
        local.set $pHi|254
        global.get $~lib/util/dtoa/gPow10Lo
        local.set $pLo|255
        local.get $c|173
        local.get $shift|221
        i64.extend_i32_s
        i64.shl
        local.set $y|256
        block $~lib/util/dtoa/mulhi64|inlined.11 (result i64)
         local.get $pHi|254
         local.set $a|257
         local.get $y|256
         local.set $b|258
         local.get $a|257
         i64.const 4294967295
         i64.and
         local.set $a0|259
         local.get $a|257
         i64.const 32
         i64.shr_u
         local.set $a1|260
         local.get $b|258
         i64.const 4294967295
         i64.and
         local.set $b0|261
         local.get $b|258
         i64.const 32
         i64.shr_u
         local.set $b1|262
         local.get $a0|259
         local.get $b0|261
         i64.mul
         local.set $w0|263
         local.get $a1|260
         local.get $b0|261
         i64.mul
         local.get $w0|263
         i64.const 32
         i64.shr_u
         i64.add
         local.set $t|264
         local.get $t|264
         i64.const 4294967295
         i64.and
         local.set $w1|265
         local.get $t|264
         i64.const 32
         i64.shr_u
         local.set $w2|266
         local.get $a0|259
         local.get $b1|262
         i64.mul
         local.get $w1|265
         i64.add
         local.set $w1|265
         local.get $a1|260
         local.get $b1|262
         i64.mul
         local.get $w2|266
         i64.add
         local.get $w1|265
         i64.const 32
         i64.shr_u
         i64.add
         br $~lib/util/dtoa/mulhi64|inlined.11
        end
        local.set $a|267
        local.get $pHi|254
        local.get $y|256
        i64.mul
        local.set $plo64|268
        local.get $plo64|268
        block $~lib/util/dtoa/mulhi64|inlined.12 (result i64)
         local.get $pLo|255
         local.set $a|269
         local.get $y|256
         local.set $b|270
         local.get $a|269
         i64.const 4294967295
         i64.and
         local.set $a0|271
         local.get $a|269
         i64.const 32
         i64.shr_u
         local.set $a1|272
         local.get $b|270
         i64.const 4294967295
         i64.and
         local.set $b0|273
         local.get $b|270
         i64.const 32
         i64.shr_u
         local.set $b1|274
         local.get $a0|271
         local.get $b0|273
         i64.mul
         local.set $w0|275
         local.get $a1|272
         local.get $b0|273
         i64.mul
         local.get $w0|275
         i64.const 32
         i64.shr_u
         i64.add
         local.set $t|276
         local.get $t|276
         i64.const 4294967295
         i64.and
         local.set $w1|277
         local.get $t|276
         i64.const 32
         i64.shr_u
         local.set $w2|278
         local.get $a0|271
         local.get $b1|274
         i64.mul
         local.get $w1|277
         i64.add
         local.set $w1|277
         local.get $a1|272
         local.get $b1|274
         i64.mul
         local.get $w2|278
         i64.add
         local.get $w1|277
         i64.const 32
         i64.shr_u
         i64.add
         br $~lib/util/dtoa/mulhi64|inlined.12
        end
        i64.add
        local.set $lo|279
        local.get $a|267
        local.get $lo|279
        local.get $plo64|268
        i64.lt_u
        i64.extend_i32_u
        i64.add
        local.set $p_hi|280
        local.get $p_hi|280
        global.get $~lib/util/dtoa/EXTRA_SHIFT
        i64.extend_i32_s
        i64.shr_u
        local.set $integral|281
        local.get $p_hi|280
        i64.const 64
        global.get $~lib/util/dtoa/EXTRA_SHIFT
        i64.extend_i32_s
        i64.sub
        i64.shl
        local.get $lo|279
        global.get $~lib/util/dtoa/EXTRA_SHIFT
        i64.extend_i32_s
        i64.shr_u
        i64.or
        local.set $dotOne|282
        local.get $pHi|254
        i32.const 0
        local.get $h|220
        i32.sub
        i64.extend_i32_s
        i64.shr_u
        i64.const 1
        local.get $c|173
        i64.const 1
        i64.and
        i64.sub
        i64.add
        local.set $halfUlp|283
        block $~lib/util/dtoa/umul128AddHi64|inlined.1 (result i64)
         local.get $dotOne|282
         local.set $x|284
         i64.const 10
         local.set $y|285
         local.get $dotOne|282
         i64.const 1
         i64.const 62
         i64.shl
         i64.eq
         if (result i64)
          i64.const 0
         else
          global.get $~lib/util/dtoa/BIASED_HALF
         end
         local.set $c|286
         local.get $x|284
         local.get $y|285
         i64.mul
         local.set $lo|287
         block $~lib/util/dtoa/mulhi64|inlined.13 (result i64)
          local.get $x|284
          local.set $a|288
          local.get $y|285
          local.set $b|289
          local.get $a|288
          i64.const 4294967295
          i64.and
          local.set $a0|290
          local.get $a|288
          i64.const 32
          i64.shr_u
          local.set $a1|291
          local.get $b|289
          i64.const 4294967295
          i64.and
          local.set $b0|292
          local.get $b|289
          i64.const 32
          i64.shr_u
          local.set $b1|293
          local.get $a0|290
          local.get $b0|292
          i64.mul
          local.set $w0|294
          local.get $a1|291
          local.get $b0|292
          i64.mul
          local.get $w0|294
          i64.const 32
          i64.shr_u
          i64.add
          local.set $t|295
          local.get $t|295
          i64.const 4294967295
          i64.and
          local.set $w1|296
          local.get $t|295
          i64.const 32
          i64.shr_u
          local.set $w2|297
          local.get $a0|290
          local.get $b1|293
          i64.mul
          local.get $w1|296
          i64.add
          local.set $w1|296
          local.get $a1|291
          local.get $b1|293
          i64.mul
          local.get $w2|297
          i64.add
          local.get $w1|296
          i64.const 32
          i64.shr_u
          i64.add
          br $~lib/util/dtoa/mulhi64|inlined.13
         end
         local.set $hi|298
         local.get $hi|298
         local.get $lo|287
         local.get $c|286
         i64.add
         local.get $lo|287
         i64.lt_u
         i64.extend_i32_u
         i64.add
         br $~lib/util/dtoa/umul128AddHi64|inlined.1
        end
        local.set $one|299
        local.get $dotOne|282
        local.get $halfUlp|283
        i64.lt_u
        if (result i64)
         i64.const 0
        else
         local.get $one|299
        end
        local.set $one|299
        global.get $~lib/builtins/u64.MAX_VALUE
        local.get $dotOne|282
        i64.sub
        local.get $halfUlp|283
        i64.lt_u
        if (result i64)
         i64.const 10
        else
         local.get $one|299
        end
        local.set $one|299
        local.get $integral|281
        local.set $integral|300
        local.get $one|299
        local.set $one|301
        local.get $decExp|218
        local.set $decExp|302
        local.get $one|301
        i64.const 10
        i64.eq
        if
         local.get $integral|300
         i64.const 1
         i64.add
         global.set $~lib/util/dtoa/gSig
         i32.const 0
         global.set $~lib/util/dtoa/gLastDigit
         i32.const 0
         global.set $~lib/util/dtoa/gHasLastDigit
        else
         local.get $one|301
         i64.const 0
         i64.eq
         if
          local.get $integral|300
          global.set $~lib/util/dtoa/gSig
          i32.const 0
          global.set $~lib/util/dtoa/gLastDigit
          i32.const 0
          global.set $~lib/util/dtoa/gHasLastDigit
         else
          local.get $integral|300
          global.set $~lib/util/dtoa/gSig
          local.get $one|301
          i32.wrap_i64
          global.set $~lib/util/dtoa/gLastDigit
          i32.const 1
          global.set $~lib/util/dtoa/gHasLastDigit
         end
        end
        local.get $decExp|302
        global.set $~lib/util/dtoa/gExp
       end
       br $~lib/util/dtoa/toDecimalDouble|inlined.0
      end
      block $~lib/util/dtoa/computeDecExp|inlined.0 (result i32)
       i32.const -1074
       local.set $binExp|303
       local.get $binExp|303
       global.get $~lib/util/dtoa/LOG10_2_SIGNIFICAND
       i32.mul
       global.get $~lib/util/dtoa/LOG10_2_EXP
       i32.shr_s
       br $~lib/util/dtoa/computeDecExp|inlined.0
      end
      local.set $decExp|304
      block $~lib/util/dtoa/computeExpShift|inlined.0 (result i32)
       i32.const -1074
       local.set $binExp|305
       local.get $decExp|304
       i32.const 1
       i32.add
       local.set $decExp|306
       i32.const 0
       local.get $decExp|306
       i32.sub
       global.get $~lib/util/dtoa/LOG2_POW10_SIGNIFICAND
       i32.mul
       global.get $~lib/util/dtoa/LOG2_POW10_EXP
       i32.shr_s
       local.set $pow10BinExp
       local.get $binExp|305
       local.get $pow10BinExp
       i32.add
       i32.const 1
       i32.add
       br $~lib/util/dtoa/computeExpShift|inlined.0
      end
      global.get $~lib/util/dtoa/EXTRA_SHIFT
      i32.add
      local.set $shift|308
      i32.const 0
      local.get $decExp|304
      i32.sub
      i32.const 1
      i32.sub
      local.set $power|309
      local.get $power|309
      i32.const 293
      i32.add
      local.set $i|310
      global.get $~lib/util/dtoa/POW10_MINOR
      local.get $i|310
      i32.const 10
      i32.add
      i32.const 28
      i32.rem_s
      i32.const 3
      i32.shl
      i32.add
      i64.load
      local.set $m|311
      global.get $~lib/util/dtoa/POW10_MAJOR
      local.get $i|310
      i32.const 10
      i32.add
      i32.const 28
      i32.div_s
      i32.const 4
      i32.shl
      i32.add
      local.set $hoff|312
      local.get $hoff|312
      i64.load
      local.set $hHi|313
      local.get $hoff|312
      i64.load offset=8
      local.set $hLo|314
      block $~lib/util/dtoa/mulhi64|inlined.14 (result i64)
       local.get $hLo|314
       local.set $a|315
       local.get $m|311
       local.set $b|316
       local.get $a|315
       i64.const 4294967295
       i64.and
       local.set $a0|317
       local.get $a|315
       i64.const 32
       i64.shr_u
       local.set $a1|318
       local.get $b|316
       i64.const 4294967295
       i64.and
       local.set $b0|319
       local.get $b|316
       i64.const 32
       i64.shr_u
       local.set $b1|320
       local.get $a0|317
       local.get $b0|319
       i64.mul
       local.set $w0|321
       local.get $a1|318
       local.get $b0|319
       i64.mul
       local.get $w0|321
       i64.const 32
       i64.shr_u
       i64.add
       local.set $t|322
       local.get $t|322
       i64.const 4294967295
       i64.and
       local.set $w1|323
       local.get $t|322
       i64.const 32
       i64.shr_u
       local.set $w2|324
       local.get $a0|317
       local.get $b1|320
       i64.mul
       local.get $w1|323
       i64.add
       local.set $w1|323
       local.get $a1|318
       local.get $b1|320
       i64.mul
       local.get $w2|324
       i64.add
       local.get $w1|323
       i64.const 32
       i64.shr_u
       i64.add
       br $~lib/util/dtoa/mulhi64|inlined.14
      end
      local.set $h1|325
      local.get $hLo|314
      local.get $m|311
      i64.mul
      local.set $c0|326
      local.get $h1|325
      local.get $hHi|313
      local.get $m|311
      i64.mul
      i64.add
      local.set $c1|327
      local.get $c1|327
      local.get $h1|325
      i64.lt_u
      i64.extend_i32_u
      block $~lib/util/dtoa/mulhi64|inlined.15 (result i64)
       local.get $hHi|313
       local.set $a|328
       local.get $m|311
       local.set $b|329
       local.get $a|328
       i64.const 4294967295
       i64.and
       local.set $a0|330
       local.get $a|328
       i64.const 32
       i64.shr_u
       local.set $a1|331
       local.get $b|329
       i64.const 4294967295
       i64.and
       local.set $b0|332
       local.get $b|329
       i64.const 32
       i64.shr_u
       local.set $b1|333
       local.get $a0|330
       local.get $b0|332
       i64.mul
       local.set $w0|334
       local.get $a1|331
       local.get $b0|332
       i64.mul
       local.get $w0|334
       i64.const 32
       i64.shr_u
       i64.add
       local.set $t|335
       local.get $t|335
       i64.const 4294967295
       i64.and
       local.set $w1|336
       local.get $t|335
       i64.const 32
       i64.shr_u
       local.set $w2|337
       local.get $a0|330
       local.get $b1|333
       i64.mul
       local.get $w1|336
       i64.add
       local.set $w1|336
       local.get $a1|331
       local.get $b1|333
       i64.mul
       local.get $w2|337
       i64.add
       local.get $w1|336
       i64.const 32
       i64.shr_u
       i64.add
       br $~lib/util/dtoa/mulhi64|inlined.15
      end
      i64.add
      local.set $c2|338
      local.get $c2|338
      i64.const 63
      i64.shr_u
      i64.const 0
      i64.ne
      if
       local.get $c1|327
       local.set $lo|340
       local.get $c2|338
       local.set $hi|339
      else
       local.get $c1|327
       i64.const 1
       i64.shl
       local.get $c0|326
       i64.const 63
       i64.shr_u
       i64.or
       local.set $lo|340
       local.get $c2|338
       i64.const 1
       i64.shl
       local.get $c1|327
       i64.const 63
       i64.shr_u
       i64.or
       local.set $hi|339
      end
      local.get $lo|340
      global.get $~lib/util/dtoa/POW10_FIXUPS
      local.get $i|310
      i32.const 5
      i32.shr_s
      i32.const 2
      i32.shl
      i32.add
      i64.load32_u
      local.get $i|310
      i32.const 31
      i32.and
      i64.extend_i32_s
      i64.shr_u
      i64.const 1
      i64.and
      i64.sub
      local.set $lo|340
      local.get $hi|339
      global.set $~lib/util/dtoa/gPow10Hi
      local.get $lo|340
      global.set $~lib/util/dtoa/gPow10Lo
      global.get $~lib/util/dtoa/gPow10Lo
      local.get $power|309
      i32.const 0
      i32.lt_s
      i64.extend_i32_u
      i64.add
      global.set $~lib/util/dtoa/gPow10Lo
      global.get $~lib/util/dtoa/gPow10Hi
      local.set $pHi|341
      global.get $~lib/util/dtoa/gPow10Lo
      local.set $pLo|342
      local.get $binSig|167
      local.get $shift|308
      i64.extend_i32_s
      i64.shl
      local.set $y|343
      block $~lib/util/dtoa/mulhi64|inlined.16 (result i64)
       local.get $pHi|341
       local.set $a|344
       local.get $y|343
       local.set $b|345
       local.get $a|344
       i64.const 4294967295
       i64.and
       local.set $a0|346
       local.get $a|344
       i64.const 32
       i64.shr_u
       local.set $a1|347
       local.get $b|345
       i64.const 4294967295
       i64.and
       local.set $b0|348
       local.get $b|345
       i64.const 32
       i64.shr_u
       local.set $b1|349
       local.get $a0|346
       local.get $b0|348
       i64.mul
       local.set $w0|350
       local.get $a1|347
       local.get $b0|348
       i64.mul
       local.get $w0|350
       i64.const 32
       i64.shr_u
       i64.add
       local.set $t|351
       local.get $t|351
       i64.const 4294967295
       i64.and
       local.set $w1|352
       local.get $t|351
       i64.const 32
       i64.shr_u
       local.set $w2|353
       local.get $a0|346
       local.get $b1|349
       i64.mul
       local.get $w1|352
       i64.add
       local.set $w1|352
       local.get $a1|347
       local.get $b1|349
       i64.mul
       local.get $w2|353
       i64.add
       local.get $w1|352
       i64.const 32
       i64.shr_u
       i64.add
       br $~lib/util/dtoa/mulhi64|inlined.16
      end
      local.set $a|354
      local.get $pHi|341
      local.get $y|343
      i64.mul
      local.set $plo64|355
      local.get $plo64|355
      block $~lib/util/dtoa/mulhi64|inlined.17 (result i64)
       local.get $pLo|342
       local.set $a|356
       local.get $y|343
       local.set $b|357
       local.get $a|356
       i64.const 4294967295
       i64.and
       local.set $a0|358
       local.get $a|356
       i64.const 32
       i64.shr_u
       local.set $a1|359
       local.get $b|357
       i64.const 4294967295
       i64.and
       local.set $b0|360
       local.get $b|357
       i64.const 32
       i64.shr_u
       local.set $b1|361
       local.get $a0|358
       local.get $b0|360
       i64.mul
       local.set $w0|362
       local.get $a1|359
       local.get $b0|360
       i64.mul
       local.get $w0|362
       i64.const 32
       i64.shr_u
       i64.add
       local.set $t|363
       local.get $t|363
       i64.const 4294967295
       i64.and
       local.set $w1|364
       local.get $t|363
       i64.const 32
       i64.shr_u
       local.set $w2|365
       local.get $a0|358
       local.get $b1|361
       i64.mul
       local.get $w1|364
       i64.add
       local.set $w1|364
       local.get $a1|359
       local.get $b1|361
       i64.mul
       local.get $w2|365
       i64.add
       local.get $w1|364
       i64.const 32
       i64.shr_u
       i64.add
       br $~lib/util/dtoa/mulhi64|inlined.17
      end
      i64.add
      local.set $lo|366
      local.get $a|354
      local.get $lo|366
      local.get $plo64|355
      i64.lt_u
      i64.extend_i32_u
      i64.add
      local.set $p_hi|367
      local.get $p_hi|367
      global.get $~lib/util/dtoa/EXTRA_SHIFT
      i64.extend_i32_s
      i64.shr_u
      local.set $integral|368
      local.get $p_hi|367
      i64.const 64
      global.get $~lib/util/dtoa/EXTRA_SHIFT
      i64.extend_i32_s
      i64.sub
      i64.shl
      local.get $lo|366
      global.get $~lib/util/dtoa/EXTRA_SHIFT
      i64.extend_i32_s
      i64.shr_u
      i64.or
      local.set $dotOne|369
      local.get $pHi|341
      global.get $~lib/util/dtoa/EXTRA_SHIFT
      i32.const 1
      i32.add
      local.get $shift|308
      i32.sub
      i64.extend_i32_s
      i64.shr_u
      i64.const 1
      local.get $binSig|167
      i64.const 1
      i64.and
      i64.sub
      i64.add
      local.set $halfUlp|370
      block $~lib/util/dtoa/umul128AddHi64|inlined.2 (result i64)
       local.get $dotOne|369
       local.set $x|371
       i64.const 10
       local.set $y|372
       global.get $~lib/util/dtoa/BIASED_HALF
       local.set $c|373
       local.get $x|371
       local.get $y|372
       i64.mul
       local.set $lo|374
       block $~lib/util/dtoa/mulhi64|inlined.18 (result i64)
        local.get $x|371
        local.set $a|375
        local.get $y|372
        local.set $b|376
        local.get $a|375
        i64.const 4294967295
        i64.and
        local.set $a0|377
        local.get $a|375
        i64.const 32
        i64.shr_u
        local.set $a1|378
        local.get $b|376
        i64.const 4294967295
        i64.and
        local.set $b0|379
        local.get $b|376
        i64.const 32
        i64.shr_u
        local.set $b1|380
        local.get $a0|377
        local.get $b0|379
        i64.mul
        local.set $w0|381
        local.get $a1|378
        local.get $b0|379
        i64.mul
        local.get $w0|381
        i64.const 32
        i64.shr_u
        i64.add
        local.set $t|382
        local.get $t|382
        i64.const 4294967295
        i64.and
        local.set $w1|383
        local.get $t|382
        i64.const 32
        i64.shr_u
        local.set $w2|384
        local.get $a0|377
        local.get $b1|380
        i64.mul
        local.get $w1|383
        i64.add
        local.set $w1|383
        local.get $a1|378
        local.get $b1|380
        i64.mul
        local.get $w2|384
        i64.add
        local.get $w1|383
        i64.const 32
        i64.shr_u
        i64.add
        br $~lib/util/dtoa/mulhi64|inlined.18
       end
       local.set $hi|385
       local.get $hi|385
       local.get $lo|374
       local.get $c|373
       i64.add
       local.get $lo|374
       i64.lt_u
       i64.extend_i32_u
       i64.add
       br $~lib/util/dtoa/umul128AddHi64|inlined.2
      end
      local.set $one|386
      local.get $dotOne|369
      local.get $halfUlp|370
      i64.lt_u
      if (result i64)
       i64.const 0
      else
       local.get $one|386
      end
      local.set $one|386
      global.get $~lib/builtins/u64.MAX_VALUE
      local.get $dotOne|369
      i64.sub
      local.get $halfUlp|370
      i64.lt_u
      if (result i64)
       i64.const 10
      else
       local.get $one|386
      end
      local.set $one|386
      local.get $integral|368
      local.set $integral|387
      local.get $one|386
      local.set $one|388
      local.get $decExp|304
      local.set $decExp|389
      local.get $one|388
      i64.const 10
      i64.eq
      if
       local.get $integral|387
       i64.const 1
       i64.add
       global.set $~lib/util/dtoa/gSig
       i32.const 0
       global.set $~lib/util/dtoa/gLastDigit
       i32.const 0
       global.set $~lib/util/dtoa/gHasLastDigit
      else
       local.get $one|388
       i64.const 0
       i64.eq
       if
        local.get $integral|387
        global.set $~lib/util/dtoa/gSig
        i32.const 0
        global.set $~lib/util/dtoa/gLastDigit
        i32.const 0
        global.set $~lib/util/dtoa/gHasLastDigit
       else
        local.get $integral|387
        global.set $~lib/util/dtoa/gSig
        local.get $one|388
        i32.wrap_i64
        global.set $~lib/util/dtoa/gLastDigit
        i32.const 1
        global.set $~lib/util/dtoa/gHasLastDigit
       end
      end
      local.get $decExp|389
      global.set $~lib/util/dtoa/gExp
     end
    end
    global.get $~lib/util/dtoa/gSig
    local.get $threshold
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
       local.set $v|391
       local.get $v|391
       i64.const 100000000
       i64.lt_u
       if
        local.get $v|391
        i64.const 10000
        i64.lt_u
        if
         local.get $v|391
         i64.const 100
         i64.lt_u
         if
          local.get $v|391
          i64.const 10
          i64.lt_u
          if (result i32)
           i32.const 1
          else
           i32.const 2
          end
          br $~lib/util/dtoa/decimalLen15|inlined.1
         end
         local.get $v|391
         i64.const 1000
         i64.lt_u
         if (result i32)
          i32.const 3
         else
          i32.const 4
         end
         br $~lib/util/dtoa/decimalLen15|inlined.1
        end
        local.get $v|391
        i64.const 1000000
        i64.lt_u
        if
         local.get $v|391
         i64.const 100000
         i64.lt_u
         if (result i32)
          i32.const 5
         else
          i32.const 6
         end
         br $~lib/util/dtoa/decimalLen15|inlined.1
        end
        local.get $v|391
        i64.const 10000000
        i64.lt_u
        if (result i32)
         i32.const 7
        else
         i32.const 8
        end
        br $~lib/util/dtoa/decimalLen15|inlined.1
       end
       local.get $v|391
       i64.const 1000000000000
       i64.lt_u
       if
        local.get $v|391
        i64.const 10000000000
        i64.lt_u
        if
         local.get $v|391
         i64.const 1000000000
         i64.lt_u
         if (result i32)
          i32.const 9
         else
          i32.const 10
         end
         br $~lib/util/dtoa/decimalLen15|inlined.1
        end
        local.get $v|391
        i64.const 100000000000
        i64.lt_u
        if (result i32)
         i32.const 11
        else
         i32.const 12
        end
        br $~lib/util/dtoa/decimalLen15|inlined.1
       end
       local.get $v|391
       i64.const 100000000000000
       i64.lt_u
       if
        local.get $v|391
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
      i32.const 2576
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
    local.get $threshold
    i64.ge_u
    local.set $hasExtraDigit
    global.get $~lib/util/dtoa/gExp
    global.get $~lib/util/dtoa/DOUBLE_MAX_DIGITS10
    i32.add
    i32.const 2
    i32.sub
    local.get $hasExtraDigit
    i32.add
    local.set $decExp|396
    local.get $buf|7
    local.set $start
    global.get $~lib/util/dtoa/gSig
    local.set $value|398
    i32.const 0
    drop
    block $~lib/util/dtoa/toDigits64Swar|inlined.0
     local.get $value|398
     local.set $value|399
     local.get $value|399
     i64.const 100000000
     i64.div_u
     local.set $hi|400
     local.get $value|399
     local.get $hi|400
     i64.const 100000000
     i64.mul
     i64.sub
     local.set $lo|401
     local.get $hi|400
     call $~lib/util/dtoa/toBcd8
     global.get $~lib/util/dtoa/gBcd
     local.set $hiBcd
     global.get $~lib/util/dtoa/gBcdLen
     local.set $hiLen
     local.get $lo|401
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
     local.get $lo|401
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
    local.get $decExp|396
    global.get $~lib/util/dtoa/MIN_FIXED_DEC_EXP
    i32.ge_s
    if (result i32)
     local.get $decExp|396
     global.get $~lib/util/dtoa/MAX_FIXED_DEC_EXP
     i32.le_s
    else
     i32.const 0
    end
    if
     block $~lib/util/dtoa/writeFixed|inlined.0 (result i32)
      local.get $buf|7
      local.set $buf|404
      local.get $start
      local.set $start|405
      local.get $decExp|396
      local.set $decExp|406
      local.get $hasLastDigit
      local.set $hasLastDigit|407
      local.get $decExp|406
      i32.const 0
      i32.lt_s
      if
       local.get $start|405
       local.set $p|408
       global.get $~lib/util/dtoa/ZEROS
       local.set $ascii|409
       i32.const 0
       local.set $off|410
       local.get $p|408
       local.get $off|410
       i32.add
       local.set $base|411
       i32.const 0
       drop
       local.get $base|411
       local.get $ascii|409
       i64.const 255
       i64.and
       i32.wrap_i64
       i32.store16
       local.get $base|411
       local.get $ascii|409
       i64.const 8
       i64.shr_u
       i64.const 255
       i64.and
       i32.wrap_i64
       i32.store16 offset=2
       local.get $base|411
       local.get $ascii|409
       i64.const 16
       i64.shr_u
       i64.const 255
       i64.and
       i32.wrap_i64
       i32.store16 offset=4
       local.get $base|411
       local.get $ascii|409
       i64.const 24
       i64.shr_u
       i64.const 255
       i64.and
       i32.wrap_i64
       i32.store16 offset=6
       local.get $base|411
       local.get $ascii|409
       i64.const 32
       i64.shr_u
       i64.const 255
       i64.and
       i32.wrap_i64
       i32.store16 offset=8
       local.get $base|411
       local.get $ascii|409
       i64.const 40
       i64.shr_u
       i64.const 255
       i64.and
       i32.wrap_i64
       i32.store16 offset=10
       local.get $base|411
       local.get $ascii|409
       i64.const 48
       i64.shr_u
       i64.const 255
       i64.and
       i32.wrap_i64
       i32.store16 offset=12
       local.get $base|411
       local.get $ascii|409
       i64.const 56
       i64.shr_u
       i32.wrap_i64
       i32.store16 offset=14
      end
      i64.const 48
      local.get $hasLastDigit|407
      if (result i64)
       global.get $~lib/util/dtoa/gLastDigit
       i64.extend_i32_s
      else
       i64.const 0
      end
      i64.add
      local.set $lastDigitChar
      local.get $hasLastDigit|407
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
      local.get $decExp|406
      i32.const 16
      i32.ge_s
      if
       local.get $buf|404
       local.set $p|416
       local.get $dHi
       local.set $ascii|417
       i32.const 0
       local.set $off|418
       local.get $p|416
       local.get $off|418
       i32.add
       local.set $base|419
       i32.const 0
       drop
       local.get $base|419
       local.get $ascii|417
       i64.const 255
       i64.and
       i32.wrap_i64
       i32.store16
       local.get $base|419
       local.get $ascii|417
       i64.const 8
       i64.shr_u
       i64.const 255
       i64.and
       i32.wrap_i64
       i32.store16 offset=2
       local.get $base|419
       local.get $ascii|417
       i64.const 16
       i64.shr_u
       i64.const 255
       i64.and
       i32.wrap_i64
       i32.store16 offset=4
       local.get $base|419
       local.get $ascii|417
       i64.const 24
       i64.shr_u
       i64.const 255
       i64.and
       i32.wrap_i64
       i32.store16 offset=6
       local.get $base|419
       local.get $ascii|417
       i64.const 32
       i64.shr_u
       i64.const 255
       i64.and
       i32.wrap_i64
       i32.store16 offset=8
       local.get $base|419
       local.get $ascii|417
       i64.const 40
       i64.shr_u
       i64.const 255
       i64.and
       i32.wrap_i64
       i32.store16 offset=10
       local.get $base|419
       local.get $ascii|417
       i64.const 48
       i64.shr_u
       i64.const 255
       i64.and
       i32.wrap_i64
       i32.store16 offset=12
       local.get $base|419
       local.get $ascii|417
       i64.const 56
       i64.shr_u
       i32.wrap_i64
       i32.store16 offset=14
       local.get $buf|404
       local.set $p|420
       local.get $dLo
       local.set $ascii|421
       i32.const 16
       local.set $off|422
       local.get $p|420
       local.get $off|422
       i32.add
       local.set $base|423
       i32.const 0
       drop
       local.get $base|423
       local.get $ascii|421
       i64.const 255
       i64.and
       i32.wrap_i64
       i32.store16
       local.get $base|423
       local.get $ascii|421
       i64.const 8
       i64.shr_u
       i64.const 255
       i64.and
       i32.wrap_i64
       i32.store16 offset=2
       local.get $base|423
       local.get $ascii|421
       i64.const 16
       i64.shr_u
       i64.const 255
       i64.and
       i32.wrap_i64
       i32.store16 offset=4
       local.get $base|423
       local.get $ascii|421
       i64.const 24
       i64.shr_u
       i64.const 255
       i64.and
       i32.wrap_i64
       i32.store16 offset=6
       local.get $base|423
       local.get $ascii|421
       i64.const 32
       i64.shr_u
       i64.const 255
       i64.and
       i32.wrap_i64
       i32.store16 offset=8
       local.get $base|423
       local.get $ascii|421
       i64.const 40
       i64.shr_u
       i64.const 255
       i64.and
       i32.wrap_i64
       i32.store16 offset=10
       local.get $base|423
       local.get $ascii|421
       i64.const 48
       i64.shr_u
       i64.const 255
       i64.and
       i32.wrap_i64
       i32.store16 offset=12
       local.get $base|423
       local.get $ascii|421
       i64.const 56
       i64.shr_u
       i32.wrap_i64
       i32.store16 offset=14
       local.get $buf|404
       i32.const 32
       i32.add
       local.get $lastDigitChar
       i32.wrap_i64
       i32.store16
       local.get $buf|404
       local.get $decExp|406
       i32.const 1
       i32.add
       i32.const 1
       i32.shl
       i32.add
       local.set $endByte
       local.get $buf|404
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
         local.set $p|426
         global.get $~lib/util/dtoa/ZEROS
         local.set $ascii|427
         i32.const 0
         local.set $off|428
         local.get $p|426
         local.get $off|428
         i32.add
         local.set $base|429
         i32.const 0
         drop
         local.get $base|429
         local.get $ascii|427
         i64.const 255
         i64.and
         i32.wrap_i64
         i32.store16
         local.get $base|429
         local.get $ascii|427
         i64.const 8
         i64.shr_u
         i64.const 255
         i64.and
         i32.wrap_i64
         i32.store16 offset=2
         local.get $base|429
         local.get $ascii|427
         i64.const 16
         i64.shr_u
         i64.const 255
         i64.and
         i32.wrap_i64
         i32.store16 offset=4
         local.get $base|429
         local.get $ascii|427
         i64.const 24
         i64.shr_u
         i64.const 255
         i64.and
         i32.wrap_i64
         i32.store16 offset=6
         local.get $base|429
         local.get $ascii|427
         i64.const 32
         i64.shr_u
         i64.const 255
         i64.and
         i32.wrap_i64
         i32.store16 offset=8
         local.get $base|429
         local.get $ascii|427
         i64.const 40
         i64.shr_u
         i64.const 255
         i64.and
         i32.wrap_i64
         i32.store16 offset=10
         local.get $base|429
         local.get $ascii|427
         i64.const 48
         i64.shr_u
         i64.const 255
         i64.and
         i32.wrap_i64
         i32.store16 offset=12
         local.get $base|429
         local.get $ascii|427
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
      local.get $decExp|406
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
      local.get $decExp|406
      i32.sub
      local.get $decExp|406
      i32.const 31
      i32.shr_s
      i32.and
      local.set $startPos
      local.get $buf|404
      local.get $startPos
      i32.const 1
      i32.shl
      i32.add
      local.set $buf|404
      local.get $buf|404
      local.set $p|433
      local.get $dHi
      local.set $ascii|434
      i32.const 0
      local.set $off|435
      local.get $p|433
      local.get $off|435
      i32.add
      local.set $base|436
      i32.const 0
      drop
      local.get $base|436
      local.get $ascii|434
      i64.const 255
      i64.and
      i32.wrap_i64
      i32.store16
      local.get $base|436
      local.get $ascii|434
      i64.const 8
      i64.shr_u
      i64.const 255
      i64.and
      i32.wrap_i64
      i32.store16 offset=2
      local.get $base|436
      local.get $ascii|434
      i64.const 16
      i64.shr_u
      i64.const 255
      i64.and
      i32.wrap_i64
      i32.store16 offset=4
      local.get $base|436
      local.get $ascii|434
      i64.const 24
      i64.shr_u
      i64.const 255
      i64.and
      i32.wrap_i64
      i32.store16 offset=6
      local.get $base|436
      local.get $ascii|434
      i64.const 32
      i64.shr_u
      i64.const 255
      i64.and
      i32.wrap_i64
      i32.store16 offset=8
      local.get $base|436
      local.get $ascii|434
      i64.const 40
      i64.shr_u
      i64.const 255
      i64.and
      i32.wrap_i64
      i32.store16 offset=10
      local.get $base|436
      local.get $ascii|434
      i64.const 48
      i64.shr_u
      i64.const 255
      i64.and
      i32.wrap_i64
      i32.store16 offset=12
      local.get $base|436
      local.get $ascii|434
      i64.const 56
      i64.shr_u
      i32.wrap_i64
      i32.store16 offset=14
      local.get $buf|404
      local.set $p|437
      local.get $dLo
      local.set $ascii|438
      i32.const 16
      local.set $off|439
      local.get $p|437
      local.get $off|439
      i32.add
      local.set $base|440
      i32.const 0
      drop
      local.get $base|440
      local.get $ascii|438
      i64.const 255
      i64.and
      i32.wrap_i64
      i32.store16
      local.get $base|440
      local.get $ascii|438
      i64.const 8
      i64.shr_u
      i64.const 255
      i64.and
      i32.wrap_i64
      i32.store16 offset=2
      local.get $base|440
      local.get $ascii|438
      i64.const 16
      i64.shr_u
      i64.const 255
      i64.and
      i32.wrap_i64
      i32.store16 offset=4
      local.get $base|440
      local.get $ascii|438
      i64.const 24
      i64.shr_u
      i64.const 255
      i64.and
      i32.wrap_i64
      i32.store16 offset=6
      local.get $base|440
      local.get $ascii|438
      i64.const 32
      i64.shr_u
      i64.const 255
      i64.and
      i32.wrap_i64
      i32.store16 offset=8
      local.get $base|440
      local.get $ascii|438
      i64.const 40
      i64.shr_u
      i64.const 255
      i64.and
      i32.wrap_i64
      i32.store16 offset=10
      local.get $base|440
      local.get $ascii|438
      i64.const 48
      i64.shr_u
      i64.const 255
      i64.and
      i32.wrap_i64
      i32.store16 offset=12
      local.get $base|440
      local.get $ascii|438
      i64.const 56
      i64.shr_u
      i32.wrap_i64
      i32.store16 offset=14
      local.get $buf|404
      i32.const 32
      i32.add
      local.get $lastDigitChar
      i32.wrap_i64
      i32.store16
      local.get $decExp|406
      i32.const 0
      i32.ge_s
      if
       local.get $decExp|406
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
       local.get $buf|404
       local.get $k
       i32.const 1
       i32.add
       i32.const 1
       i32.shl
       i32.add
       local.set $p|447
       local.get $fHi
       local.set $ascii|448
       i32.const 0
       local.set $off|449
       local.get $p|447
       local.get $off|449
       i32.add
       local.set $base|450
       i32.const 0
       drop
       local.get $base|450
       local.get $ascii|448
       i64.const 255
       i64.and
       i32.wrap_i64
       i32.store16
       local.get $base|450
       local.get $ascii|448
       i64.const 8
       i64.shr_u
       i64.const 255
       i64.and
       i32.wrap_i64
       i32.store16 offset=2
       local.get $base|450
       local.get $ascii|448
       i64.const 16
       i64.shr_u
       i64.const 255
       i64.and
       i32.wrap_i64
       i32.store16 offset=4
       local.get $base|450
       local.get $ascii|448
       i64.const 24
       i64.shr_u
       i64.const 255
       i64.and
       i32.wrap_i64
       i32.store16 offset=6
       local.get $base|450
       local.get $ascii|448
       i64.const 32
       i64.shr_u
       i64.const 255
       i64.and
       i32.wrap_i64
       i32.store16 offset=8
       local.get $base|450
       local.get $ascii|448
       i64.const 40
       i64.shr_u
       i64.const 255
       i64.and
       i32.wrap_i64
       i32.store16 offset=10
       local.get $base|450
       local.get $ascii|448
       i64.const 48
       i64.shr_u
       i64.const 255
       i64.and
       i32.wrap_i64
       i32.store16 offset=12
       local.get $base|450
       local.get $ascii|448
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
        local.get $buf|404
        local.get $k
        i32.const 9
        i32.add
        i32.const 1
        i32.shl
        i32.add
        local.set $p|451
        local.get $fLo
        local.set $ascii|452
        i32.const 0
        local.set $off|453
        local.get $p|451
        local.get $off|453
        i32.add
        local.set $base|454
        i32.const 0
        drop
        local.get $base|454
        local.get $ascii|452
        i64.const 255
        i64.and
        i32.wrap_i64
        i32.store16
        local.get $base|454
        local.get $ascii|452
        i64.const 8
        i64.shr_u
        i64.const 255
        i64.and
        i32.wrap_i64
        i32.store16 offset=2
        local.get $base|454
        local.get $ascii|452
        i64.const 16
        i64.shr_u
        i64.const 255
        i64.and
        i32.wrap_i64
        i32.store16 offset=4
        local.get $base|454
        local.get $ascii|452
        i64.const 24
        i64.shr_u
        i64.const 255
        i64.and
        i32.wrap_i64
        i32.store16 offset=6
        local.get $base|454
        local.get $ascii|452
        i64.const 32
        i64.shr_u
        i64.const 255
        i64.and
        i32.wrap_i64
        i32.store16 offset=8
        local.get $base|454
        local.get $ascii|452
        i64.const 40
        i64.shr_u
        i64.const 255
        i64.and
        i32.wrap_i64
        i32.store16 offset=10
        local.get $base|454
        local.get $ascii|452
        i64.const 48
        i64.shr_u
        i64.const 255
        i64.and
        i32.wrap_i64
        i32.store16 offset=12
        local.get $base|454
        local.get $ascii|452
        i64.const 56
        i64.shr_u
        i32.wrap_i64
        i32.store16 offset=14
       end
       local.get $buf|404
       local.get $k
       i32.const 1
       i32.shl
       i32.add
       i32.const 46
       i32.store16
      else
       local.get $start|405
       i32.const 46
       i32.store16 offset=2
      end
      local.get $buf|404
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
     local.set $buf|455
     local.get $start
     local.set $start|456
     local.get $decExp|396
     local.set $decExp|457
     local.get $hasLastDigit
     local.set $hasLastDigit|458
     local.get $hasExtraDigit
     local.set $hasExtraDigit|459
     i32.const 16
     local.set $bcdSize
     local.get $buf|455
     local.get $hasExtraDigit|459
     i32.const 1
     i32.shl
     i32.add
     local.set $buf|455
     local.get $buf|455
     local.set $p|461
     global.get $~lib/util/dtoa/gDigHi
     local.set $ascii|462
     i32.const 0
     local.set $off|463
     local.get $p|461
     local.get $off|463
     i32.add
     local.set $base|464
     i32.const 0
     drop
     local.get $base|464
     local.get $ascii|462
     i64.const 255
     i64.and
     i32.wrap_i64
     i32.store16
     local.get $base|464
     local.get $ascii|462
     i64.const 8
     i64.shr_u
     i64.const 255
     i64.and
     i32.wrap_i64
     i32.store16 offset=2
     local.get $base|464
     local.get $ascii|462
     i64.const 16
     i64.shr_u
     i64.const 255
     i64.and
     i32.wrap_i64
     i32.store16 offset=4
     local.get $base|464
     local.get $ascii|462
     i64.const 24
     i64.shr_u
     i64.const 255
     i64.and
     i32.wrap_i64
     i32.store16 offset=6
     local.get $base|464
     local.get $ascii|462
     i64.const 32
     i64.shr_u
     i64.const 255
     i64.and
     i32.wrap_i64
     i32.store16 offset=8
     local.get $base|464
     local.get $ascii|462
     i64.const 40
     i64.shr_u
     i64.const 255
     i64.and
     i32.wrap_i64
     i32.store16 offset=10
     local.get $base|464
     local.get $ascii|462
     i64.const 48
     i64.shr_u
     i64.const 255
     i64.and
     i32.wrap_i64
     i32.store16 offset=12
     local.get $base|464
     local.get $ascii|462
     i64.const 56
     i64.shr_u
     i32.wrap_i64
     i32.store16 offset=14
     local.get $bcdSize
     i32.const 16
     i32.eq
     if
      local.get $buf|455
      local.set $p|465
      global.get $~lib/util/dtoa/gDigLo
      local.set $ascii|466
      i32.const 16
      local.set $off|467
      local.get $p|465
      local.get $off|467
      i32.add
      local.set $base|468
      i32.const 0
      drop
      local.get $base|468
      local.get $ascii|466
      i64.const 255
      i64.and
      i32.wrap_i64
      i32.store16
      local.get $base|468
      local.get $ascii|466
      i64.const 8
      i64.shr_u
      i64.const 255
      i64.and
      i32.wrap_i64
      i32.store16 offset=2
      local.get $base|468
      local.get $ascii|466
      i64.const 16
      i64.shr_u
      i64.const 255
      i64.and
      i32.wrap_i64
      i32.store16 offset=4
      local.get $base|468
      local.get $ascii|466
      i64.const 24
      i64.shr_u
      i64.const 255
      i64.and
      i32.wrap_i64
      i32.store16 offset=6
      local.get $base|468
      local.get $ascii|466
      i64.const 32
      i64.shr_u
      i64.const 255
      i64.and
      i32.wrap_i64
      i32.store16 offset=8
      local.get $base|468
      local.get $ascii|466
      i64.const 40
      i64.shr_u
      i64.const 255
      i64.and
      i32.wrap_i64
      i32.store16 offset=10
      local.get $base|468
      local.get $ascii|466
      i64.const 48
      i64.shr_u
      i64.const 255
      i64.and
      i32.wrap_i64
      i32.store16 offset=12
      local.get $base|468
      local.get $ascii|466
      i64.const 56
      i64.shr_u
      i32.wrap_i64
      i32.store16 offset=14
     end
     local.get $buf|455
     local.get $bcdSize
     i32.const 1
     i32.shl
     i32.add
     i32.const 48
     global.get $~lib/util/dtoa/gLastDigit
     i32.add
     i32.store16
     local.get $buf|455
     local.get $hasLastDigit|458
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
     local.set $buf|455
     local.get $start|456
     i32.load16_u offset=2
     local.set $lead
     local.get $start|456
     local.get $lead
     i32.store16
     local.get $start|456
     i32.const 46
     i32.store16 offset=2
     local.get $buf|455
     local.get $buf|455
     i32.const 2
     i32.sub
     local.get $start|456
     i32.const 2
     i32.add
     i32.eq
     i32.const 1
     i32.shl
     i32.sub
     local.set $buf|455
     block $~lib/util/dtoa/writeExponent|inlined.1 (result i32)
      local.get $buf|455
      local.set $buf|470
      local.get $decExp|457
      local.set $decExp|471
      local.get $decExp|471
      i32.const 31
      i32.shr_s
      local.set $m|472
      local.get $buf|470
      i32.const 101
      i32.store16
      local.get $buf|470
      i32.const 43
      local.get $m|472
      i32.const 2
      i32.and
      i32.add
      i32.store16 offset=2
      local.get $buf|470
      i32.const 4
      i32.add
      local.set $buf|470
      local.get $decExp|471
      local.get $m|472
      i32.xor
      local.get $m|472
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
       local.get $buf|470
       i32.const 48
       local.get $d
       i32.add
       i32.store16
       local.get $buf|470
       i32.const 1008
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
       local.get $buf|470
       i32.const 6
       i32.add
       br $~lib/util/dtoa/writeExponent|inlined.1
      end
      local.get $e
      i32.const 10
      i32.ge_s
      if
       local.get $buf|470
       i32.const 1008
       local.get $e
       i32.const 2
       i32.shl
       i32.add
       i32.load
       i32.store
       local.get $buf|470
       i32.const 4
       i32.add
       br $~lib/util/dtoa/writeExponent|inlined.1
      end
      local.get $buf|470
      i32.const 48
      local.get $e
      i32.add
      i32.store16
      local.get $buf|470
      i32.const 2
      i32.add
      br $~lib/util/dtoa/writeExponent|inlined.1
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
 (func $~lib/array/Array<f32>#get:dataStart (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $~lib/array/Array<f32>#get:length_ (param $this i32) (result i32)
  local.get $this
  i32.load offset=12
 )
 (func $~lib/util/number/dtoa_buffered<f32> (param $buffer i32) (param $value f32) (result i32)
  (local $len i32)
  (local $buffer|3 i32)
  (local $len|4 i32)
  (local $p i32)
  (local $end i32)
  (local $c i32)
  i32.const 4
  i32.const 4
  i32.eq
  drop
  local.get $buffer
  local.get $value
  call $~lib/util/dtoa/ftoa_buffered
  local.set $len
  block $~lib/util/number/dtoa_dotZero|inlined.2 (result i32)
   local.get $buffer
   local.set $buffer|3
   local.get $len
   local.set $len|4
   local.get $buffer|3
   local.set $p
   local.get $buffer|3
   local.get $len|4
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
      local.get $len|4
      br $~lib/util/number/dtoa_dotZero|inlined.2
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
   local.get $len|4
   i32.const 2
   i32.add
   br $~lib/util/number/dtoa_dotZero|inlined.2
  end
  return
 )
 (func $~lib/array/Array<f64>#get:dataStart (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $~lib/array/Array<f64>#get:length_ (param $this i32) (result i32)
  local.get $this
  i32.load offset=12
 )
 (func $~lib/util/number/dtoa_buffered<f64> (param $buffer i32) (param $value f64) (result i32)
  (local $len i32)
  (local $buffer|3 i32)
  (local $len|4 i32)
  (local $p i32)
  (local $end i32)
  (local $c i32)
  i32.const 8
  i32.const 4
  i32.eq
  drop
  local.get $buffer
  local.get $value
  call $~lib/util/dtoa/dtoa_buffered
  local.set $len
  block $~lib/util/number/dtoa_dotZero|inlined.3 (result i32)
   local.get $buffer
   local.set $buffer|3
   local.get $len
   local.set $len|4
   local.get $buffer|3
   local.set $p
   local.get $buffer|3
   local.get $len|4
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
      local.get $len|4
      br $~lib/util/number/dtoa_dotZero|inlined.3
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
   local.get $len|4
   i32.const 2
   i32.add
   br $~lib/util/number/dtoa_dotZero|inlined.3
  end
  return
 )
 (func $~lib/rt/__visit_globals (param $0 i32)
  (local $1 i32)
  global.get $issues/2873/f32arr
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $issues/2873/f64arr
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  i32.const 1632
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 1440
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
 (func $~lib/array/Array<f32>#get:buffer (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $~lib/array/Array<f32>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  local.get $1
  call $~lib/array/Array<f32>#__visit
 )
 (func $~lib/array/Array<f64>#get:buffer (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $~lib/array/Array<f64>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  local.get $1
  call $~lib/array/Array<f64>#__visit
 )
 (func $~lib/rt/__visit_members (param $0 i32) (param $1 i32)
  block $invalid
   block $~lib/array/Array<f64>
    block $~lib/array/Array<f32>
     block $~lib/arraybuffer/ArrayBufferView
      block $~lib/string/String
       block $~lib/arraybuffer/ArrayBuffer
        block $~lib/object/Object
         local.get $0
         i32.const 8
         i32.sub
         i32.load
         br_table $~lib/object/Object $~lib/arraybuffer/ArrayBuffer $~lib/string/String $~lib/arraybuffer/ArrayBufferView $~lib/array/Array<f32> $~lib/array/Array<f64> $invalid
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
    call $~lib/array/Array<f32>~visit
    return
   end
   local.get $0
   local.get $1
   call $~lib/array/Array<f64>~visit
   return
  end
  unreachable
 )
 (func $~start
  call $start:issues/2873
 )
 (func $~stack_check
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/memory/__data_end
  i32.lt_s
  if
   i32.const 35872
   i32.const 35920
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
 (func $~lib/string/String#substring (param $this i32) (param $start i32) (param $end i32) (result i32)
  (local $len i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $finalStart i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $finalEnd i32)
  (local $14 i32)
  (local $15 i32)
  (local $fromPos i32)
  (local $17 i32)
  (local $18 i32)
  (local $toPos i32)
  (local $size i32)
  (local $out i32)
  (local $22 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  local.set $22
  global.get $~lib/memory/__stack_pointer
  local.get $22
  i32.store
  local.get $22
  call $~lib/string/String#get:length
  local.set $len
  local.get $start
  local.tee $4
  i32.const 0
  local.tee $5
  local.get $4
  local.get $5
  i32.gt_s
  select
  local.tee $6
  local.get $len
  local.tee $7
  local.get $6
  local.get $7
  i32.lt_s
  select
  local.set $finalStart
  local.get $end
  local.tee $9
  i32.const 0
  local.tee $10
  local.get $9
  local.get $10
  i32.gt_s
  select
  local.tee $11
  local.get $len
  local.tee $12
  local.get $11
  local.get $12
  i32.lt_s
  select
  local.set $finalEnd
  local.get $finalStart
  local.tee $14
  local.get $finalEnd
  local.tee $15
  local.get $14
  local.get $15
  i32.lt_s
  select
  i32.const 1
  i32.shl
  local.set $fromPos
  local.get $finalStart
  local.tee $17
  local.get $finalEnd
  local.tee $18
  local.get $17
  local.get $18
  i32.gt_s
  select
  i32.const 1
  i32.shl
  local.set $toPos
  local.get $toPos
  local.get $fromPos
  i32.sub
  local.set $size
  local.get $size
  i32.eqz
  if
   i32.const 2864
   local.set $22
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $22
   return
  end
  local.get $fromPos
  i32.eqz
  if (result i32)
   local.get $toPos
   local.get $len
   i32.const 1
   i32.shl
   i32.eq
  else
   i32.const 0
  end
  if
   local.get $this
   local.set $22
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $22
   return
  end
  global.get $~lib/memory/__stack_pointer
  local.get $size
  i32.const 2
  call $~lib/rt/itcms/__new
  local.tee $out
  i32.store offset=4
  local.get $out
  local.get $this
  local.get $fromPos
  i32.add
  local.get $size
  memory.copy
  local.get $out
  local.set $22
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $22
  return
 )
 (func $~lib/util/string/joinFloatArray<f32> (param $dataStart i32) (param $length i32) (param $separator i32) (result i32)
  (local $lastIndex i32)
  (local $sepLen i32)
  (local $estLen i32)
  (local $result i32)
  (local $offset i32)
  (local $value f32)
  (local $i i32)
  (local $10 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $length
  i32.const 1
  i32.sub
  local.set $lastIndex
  local.get $lastIndex
  i32.const 0
  i32.lt_s
  if
   i32.const 2864
   local.set $10
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $10
   return
  end
  local.get $lastIndex
  i32.eqz
  if
   local.get $dataStart
   f32.load
   call $~lib/util/number/dtoa<f32>
   local.set $10
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $10
   return
  end
  local.get $separator
  local.set $10
  global.get $~lib/memory/__stack_pointer
  local.get $10
  i32.store
  local.get $10
  call $~lib/string/String#get:length
  local.set $sepLen
  i32.const 32
  local.get $sepLen
  i32.add
  local.get $lastIndex
  i32.mul
  i32.const 32
  i32.add
  local.set $estLen
  global.get $~lib/memory/__stack_pointer
  local.get $estLen
  i32.const 1
  i32.shl
  i32.const 2
  call $~lib/rt/itcms/__new
  local.tee $result
  i32.store offset=4
  i32.const 0
  local.set $offset
  i32.const 0
  local.set $i
  loop $for-loop|0
   local.get $i
   local.get $lastIndex
   i32.lt_s
   if
    local.get $dataStart
    local.get $i
    i32.const 2
    i32.shl
    i32.add
    f32.load
    local.set $value
    local.get $offset
    local.get $result
    local.get $offset
    i32.const 1
    i32.shl
    i32.add
    local.get $value
    call $~lib/util/number/dtoa_buffered<f32>
    i32.add
    local.set $offset
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
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|0
   end
  end
  local.get $dataStart
  local.get $lastIndex
  i32.const 2
  i32.shl
  i32.add
  f32.load
  local.set $value
  local.get $offset
  local.get $result
  local.get $offset
  i32.const 1
  i32.shl
  i32.add
  local.get $value
  call $~lib/util/number/dtoa_buffered<f32>
  i32.add
  local.set $offset
  local.get $estLen
  local.get $offset
  i32.gt_s
  if
   local.get $result
   local.set $10
   global.get $~lib/memory/__stack_pointer
   local.get $10
   i32.store
   local.get $10
   i32.const 0
   local.get $offset
   call $~lib/string/String#substring
   local.set $10
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $10
   return
  end
  local.get $result
  local.set $10
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $10
  return
 )
 (func $~lib/array/Array<f32>#join (param $this i32) (param $separator i32) (result i32)
  (local $ptr i32)
  (local $len i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  call $~lib/array/Array<f32>#get:dataStart
  local.set $ptr
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  call $~lib/array/Array<f32>#get:length_
  local.set $len
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 1
  drop
  local.get $ptr
  local.get $len
  local.get $separator
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  call $~lib/util/string/joinFloatArray<f32>
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
  return
 )
 (func $~lib/util/string/joinFloatArray<f64> (param $dataStart i32) (param $length i32) (param $separator i32) (result i32)
  (local $lastIndex i32)
  (local $sepLen i32)
  (local $estLen i32)
  (local $result i32)
  (local $offset i32)
  (local $value f64)
  (local $i i32)
  (local $10 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $length
  i32.const 1
  i32.sub
  local.set $lastIndex
  local.get $lastIndex
  i32.const 0
  i32.lt_s
  if
   i32.const 2864
   local.set $10
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $10
   return
  end
  local.get $lastIndex
  i32.eqz
  if
   local.get $dataStart
   f64.load
   call $~lib/util/number/dtoa<f64>
   local.set $10
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $10
   return
  end
  local.get $separator
  local.set $10
  global.get $~lib/memory/__stack_pointer
  local.get $10
  i32.store
  local.get $10
  call $~lib/string/String#get:length
  local.set $sepLen
  i32.const 32
  local.get $sepLen
  i32.add
  local.get $lastIndex
  i32.mul
  i32.const 32
  i32.add
  local.set $estLen
  global.get $~lib/memory/__stack_pointer
  local.get $estLen
  i32.const 1
  i32.shl
  i32.const 2
  call $~lib/rt/itcms/__new
  local.tee $result
  i32.store offset=4
  i32.const 0
  local.set $offset
  i32.const 0
  local.set $i
  loop $for-loop|0
   local.get $i
   local.get $lastIndex
   i32.lt_s
   if
    local.get $dataStart
    local.get $i
    i32.const 3
    i32.shl
    i32.add
    f64.load
    local.set $value
    local.get $offset
    local.get $result
    local.get $offset
    i32.const 1
    i32.shl
    i32.add
    local.get $value
    call $~lib/util/number/dtoa_buffered<f64>
    i32.add
    local.set $offset
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
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|0
   end
  end
  local.get $dataStart
  local.get $lastIndex
  i32.const 3
  i32.shl
  i32.add
  f64.load
  local.set $value
  local.get $offset
  local.get $result
  local.get $offset
  i32.const 1
  i32.shl
  i32.add
  local.get $value
  call $~lib/util/number/dtoa_buffered<f64>
  i32.add
  local.set $offset
  local.get $estLen
  local.get $offset
  i32.gt_s
  if
   local.get $result
   local.set $10
   global.get $~lib/memory/__stack_pointer
   local.get $10
   i32.store
   local.get $10
   i32.const 0
   local.get $offset
   call $~lib/string/String#substring
   local.set $10
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $10
   return
  end
  local.get $result
  local.set $10
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $10
  return
 )
 (func $~lib/array/Array<f64>#join (param $this i32) (param $separator i32) (result i32)
  (local $ptr i32)
  (local $len i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  call $~lib/array/Array<f64>#get:dataStart
  local.set $ptr
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  call $~lib/array/Array<f64>#get:length_
  local.set $len
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 1
  drop
  local.get $ptr
  local.get $len
  local.get $separator
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  call $~lib/util/string/joinFloatArray<f64>
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
  return
 )
 (func $start:issues/2873
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  memory.size
  i32.const 16
  i32.shl
  global.get $~lib/memory/__heap_base
  i32.sub
  i32.const 1
  i32.shr_u
  global.set $~lib/rt/itcms/threshold
  i32.const 1552
  call $~lib/rt/itcms/initLazy
  global.set $~lib/rt/itcms/pinSpace
  i32.const 1584
  call $~lib/rt/itcms/initLazy
  global.set $~lib/rt/itcms/toSpace
  i32.const 1728
  call $~lib/rt/itcms/initLazy
  global.set $~lib/rt/itcms/fromSpace
  f32.const 1.100000023841858
  i32.const 0
  call $~lib/number/F32#toString
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  i32.const 1840
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1872
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 1.1
  i32.const 0
  call $~lib/number/F64#toString
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  i32.const 1840
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1872
   i32.const 2
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $issues/2873/f32arr
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  i32.const 2896
  call $~lib/array/Array<f32>#join
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  i32.const 2928
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1872
   i32.const 5
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $issues/2873/f64arr
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  i32.const 2896
  call $~lib/array/Array<f64>#join
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  i32.const 2928
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1872
   i32.const 8
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<f32>#__visit (param $this i32) (param $cookie i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  i32.const 0
  drop
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/array/Array<f32>#get:buffer
  local.get $cookie
  call $~lib/rt/itcms/__visit
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<f64>#__visit (param $this i32) (param $cookie i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  i32.const 0
  drop
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/array/Array<f64>#get:buffer
  local.get $cookie
  call $~lib/rt/itcms/__visit
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/util/number/dtoa<f32> (param $value f32) (result i32)
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
  i32.const 4
  i32.const 4
  i32.eq
  drop
  i32.const 880
  local.get $value
  call $~lib/util/dtoa/ftoa_buffered
  local.set $len
  block $~lib/util/number/dtoa_dotZero|inlined.0 (result i32)
   i32.const 880
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
  i32.const 880
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
  i32.const 880
  local.get $value
  call $~lib/util/dtoa/dtoa_buffered
  local.set $len
  block $~lib/util/number/dtoa_dotZero|inlined.1 (result i32)
   i32.const 880
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
      br $~lib/util/number/dtoa_dotZero|inlined.1
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
   br $~lib/util/number/dtoa_dotZero|inlined.1
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
  i32.const 880
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
