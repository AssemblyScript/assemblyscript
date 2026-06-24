(module
 (type $0 (func (param i32) (result i32)))
 (type $1 (func (param i32 i32) (result i32)))
 (type $2 (func (param i32 i32)))
 (type $3 (func (param i32)))
 (type $4 (func))
 (type $5 (func (param i32 i32 i32)))
 (type $6 (func (param i32 i32 i32 i32 i32) (result i32)))
 (type $7 (func (param i32 i32 i32 i32)))
 (type $8 (func (param i32 i32 i64) (result i32)))
 (type $9 (func (result i32)))
 (type $10 (func (param i32 i64 i32)))
 (type $11 (func (param i64 i32) (result i32)))
 (type $12 (func (param i32 i64 i32 i32)))
 (type $13 (func (param f64 f64) (result f64)))
 (type $14 (func (param i64) (result i64)))
 (type $15 (func (param i64)))
 (type $16 (func (param i32 f64) (result i32)))
 (type $17 (func (param f64 i32) (result i32)))
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
 (global $~lib/util/dtoa/gDigits (mut i32) (i32.const 0))
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
 (global $~lib/util/dtoa/FLOAT_SIGNIFICAND_SIZE i32 (i32.const 23))
 (global $~lib/util/dtoa/FLOAT_HIDDEN_BIT i64 (i64.const 8388608))
 (global $~lib/util/dtoa/FLOAT_SIGNIFICAND_MASK i32 (i32.const 8388607))
 (global $~lib/util/dtoa/FLOAT_BIT i32 (i32.const 36))
 (global $~lib/util/dtoa/FLOAT_ONE_BIAS i64 (i64.const 17179869177))
 (global $~lib/util/dtoa/FLOAT_MAX_DIGITS10 i32 (i32.const 9))
 (global $~lib/shared/runtime/Runtime.Stub i32 (i32.const 0))
 (global $~lib/shared/runtime/Runtime.Minimal i32 (i32.const 1))
 (global $~lib/shared/runtime/Runtime.Incremental i32 (i32.const 2))
 (global $~lib/native/ASC_SHRINK_LEVEL i32 (i32.const 0))
 (global $resolve-binary/a (mut i32) (i32.const 0))
 (global $resolve-binary/f (mut f64) (f64.const 0))
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
 (global $~lib/util/math/log_tail (mut f64) (f64.const 0))
 (global $~lib/native/ASC_FEATURE_SIMD i32 (i32.const 0))
 (global $~lib/util/dtoa/POW10_MINOR i32 (i32.const 9536))
 (global $~lib/util/dtoa/POW10_MAJOR i32 (i32.const 9760))
 (global $~lib/util/dtoa/POW10_FIXUPS i32 (i32.const 10128))
 (global $~lib/builtins/u64.MAX_VALUE i64 (i64.const -1))
 (global $resolve-binary/foo (mut i32) (i32.const 0))
 (global $resolve-binary/bar (mut i32) (i32.const 0))
 (global $resolve-binary/bar2 (mut i32) (i32.const 0))
 (global $resolve-binary/baz (mut i32) (i32.const 0))
 (global $~lib/rt/__rtti_base i32 (i32.const 10912))
 (global $~lib/memory/__data_end i32 (i32.const 10944))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 43712))
 (global $~lib/memory/__heap_base i32 (i32.const 43712))
 (memory $0 1)
 (data $0 (i32.const 12) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\08\00\00\00t\00r\00u\00e\00\00\00\00\00")
 (data $1 (i32.const 44) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\n\00\00\00f\00a\00l\00s\00e\00\00\00")
 (data $2 (i32.const 80) "p\\\ea{\ce2~\8f\1a\c7C\c6\b0\b7\96\e5\ae\05\03\05\'\c6\ab\b7\bf7\cf\d0\b8\d1\ef\92\fe%\e5\1a\8eO\19\eb2\ebP\e2\a4?\14\bc\f5\88\r\b5P\99v\96!\dbH\bb\1a\c2\bd\f0\b4\15\07\c9{\ce\97\c0]\11l:\96\0b\13\9a\c7\1b\e0\c3V\df\84\f6\06\e3L6\12\197\c5\9e\b5p+\a8\ad\c5\9d\97\"\81E@|o\fc\dfNg\04\cd\c9\f2\c9\e6\0b\b96\d7\07\8f\a1\85\t\94\f8x9?\81:\0f \f4\'\8f\cb\ce\c8\a5\19\90\b9\a5o\a5\a0\84\14@aQY\84\00\a1\ed\cc\ce\1b\c2\d3\00\b4W\n?\16h\a9\00\90\acn2x\86\87\00\80z\17\b7&\d7\d8\00\00b\ac\c5\ebx\ad\00\00\e8\89\04#\c7\8a\00\00@v:k\0b\de\00\00\00\c5.\bc\a2\b1\00\00\00\04\bf\c9\1b\8e\00\00\00\a01\a9_\e3\00\00\00\80\f4 \e6\b5\00\00\00\00*\e7\84\91\00\00\00\00\10\a5\d4\e8\00\00\00\00@\b7C\ba\00\00\00\00\00\f9\02\95\00\00\00\00\00(k\ee\00\00\00\00\00 \bc\be\00\00\00\00\00\80\96\98\00\00\00\00\00\00$\f4\00\00\00\00\00\00P\c3\00\00\00\00\00\00@\9c\00\00\00\00\00\00\00\fa\00\00\00\00\00\00\00\c8\00\00\00\00\00\00\00\a0\00\00\00\00\00\00\00\80\cd\cc\cc\cc\cc\cc\cc\cc\0b\d7\a3p=\n\d7\a3<\dfO\8d\97n\12\83,e\19\e2X\17\b7\d1$\84G\1bG\ac\c5\a7\b6il\af\05\bd7\86\bdBz\e5\d5\94\bf\d6\fd\cea\84\11w\cc\ab\98\a5\b46A_p\89\bf\d5\ed\bd\ce\fe\e6\db\ff\aa$\cb\0b\ff\eb\af\cc\88Po\t\cc\bc\8c\14\0e\b4KB\13.\e1\10\d8\\\t5\dc$\b4\da\ac\b0:\f7|\1d\90\\\e1M\c4\be\94\95\e6J\b4\a462\aaw\b8\08]\1d\92\8e\ee\92\93\a6a\95\b6}J\1e\ec\eb\1a\11\92d\08\e5\bc\ef{\datP\a0\1d\97\b2,\f7\ba\80\00\c9\f1(\8a\92\95\00\9am\c1S;uD\cd\14\be\9aR\c5\ee\d3\ae\87\96\f7\db\9dXv%\06\12\c6I~\e0\91\b7\d1t\9e\0e\ca\00\83\f2\b5\87\fd?;\9a5\f5\f7\d2\ca2\fc\14^\f7_B\a2\f5\fcCK,\b3\ce\81\bb\949E\ad\1e\b1\cf")
 (data $3 (i32.const 696) "\"\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$\"#$!\"#")
 (data $4 (i32.const 956) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\"\00\00\00r\00e\00s\00o\00l\00v\00e\00-\00b\00i\00n\00a\00r\00y\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00")
 (data $5 (i32.const 1020) "|\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00d\00\00\00t\00o\00S\00t\00r\00i\00n\00g\00(\00)\00 \00r\00a\00d\00i\00x\00 \00a\00r\00g\00u\00m\00e\00n\00t\00 \00m\00u\00s\00t\00 \00b\00e\00 \00b\00e\00t\00w\00e\00e\00n\00 \002\00 \00a\00n\00d\00 \003\006\00\00\00\00\00\00\00\00\00")
 (data $6 (i32.const 1148) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00&\00\00\00~\00l\00i\00b\00/\00u\00t\00i\00l\00/\00n\00u\00m\00b\00e\00r\00.\00t\00s\00\00\00\00\00\00\00")
 (data $7 (i32.const 1212) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\02\00\00\000\00\00\00\00\00\00\00\00\00\00\00")
 (data $8 (i32.const 1244) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e\00\00\00\00\00")
 (data $9 (i32.const 1308) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00 \00\00\00~\00l\00i\00b\00/\00r\00t\00/\00i\00t\00c\00m\00s\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $10 (i32.const 1376) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $11 (i32.const 1408) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $12 (i32.const 1436) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e\00\00\00\00\00\00\00\00\00")
 (data $13 (i32.const 1500) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s\00\00\00\00\00\00\00\00\00")
 (data $14 (i32.const 1552) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $15 (i32.const 1580) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $16 (i32.const 1644) "0\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009\00")
 (data $17 (i32.const 2044) "\1c\04\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00\04\00\000\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\000\00a\000\00b\000\00c\000\00d\000\00e\000\00f\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\001\00a\001\00b\001\00c\001\00d\001\00e\001\00f\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\002\00a\002\00b\002\00c\002\00d\002\00e\002\00f\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\003\00a\003\00b\003\00c\003\00d\003\00e\003\00f\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\004\00a\004\00b\004\00c\004\00d\004\00e\004\00f\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\005\00a\005\00b\005\00c\005\00d\005\00e\005\00f\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\006\00a\006\00b\006\00c\006\00d\006\00e\006\00f\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\007\00a\007\00b\007\00c\007\00d\007\00e\007\00f\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\008\00a\008\00b\008\00c\008\00d\008\00e\008\00f\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009\009\00a\009\00b\009\00c\009\00d\009\00e\009\00f\00a\000\00a\001\00a\002\00a\003\00a\004\00a\005\00a\006\00a\007\00a\008\00a\009\00a\00a\00a\00b\00a\00c\00a\00d\00a\00e\00a\00f\00b\000\00b\001\00b\002\00b\003\00b\004\00b\005\00b\006\00b\007\00b\008\00b\009\00b\00a\00b\00b\00b\00c\00b\00d\00b\00e\00b\00f\00c\000\00c\001\00c\002\00c\003\00c\004\00c\005\00c\006\00c\007\00c\008\00c\009\00c\00a\00c\00b\00c\00c\00c\00d\00c\00e\00c\00f\00d\000\00d\001\00d\002\00d\003\00d\004\00d\005\00d\006\00d\007\00d\008\00d\009\00d\00a\00d\00b\00d\00c\00d\00d\00d\00e\00d\00f\00e\000\00e\001\00e\002\00e\003\00e\004\00e\005\00e\006\00e\007\00e\008\00e\009\00e\00a\00e\00b\00e\00c\00e\00d\00e\00e\00e\00f\00f\000\00f\001\00f\002\00f\003\00f\004\00f\005\00f\006\00f\007\00f\008\00f\009\00f\00a\00f\00b\00f\00c\00f\00d\00f\00e\00f\00f\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $18 (i32.const 3100) "\\\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00H\00\00\000\001\002\003\004\005\006\007\008\009\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z\00\00\00\00\00")
 (data $19 (i32.const 3196) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\02\00\00\001\00\00\00\00\00\00\00\00\00\00\00")
 (data $20 (i32.const 3228) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\02\00\00\002\00\00\00\00\00\00\00\00\00\00\00")
 (data $21 (i32.const 3264) "\00\00\00\00\00\a0\f6?\00\00\00\00\00\00\00\00\00\c8\b9\f2\82,\d6\bf\80V7($\b4\fa<\00\00\00\00\00\80\f6?\00\00\00\00\00\00\00\00\00\08X\bf\bd\d1\d5\bf \f7\e0\d8\08\a5\1c\bd\00\00\00\00\00`\f6?\00\00\00\00\00\00\00\00\00XE\17wv\d5\bfmP\b6\d5\a4b#\bd\00\00\00\00\00@\f6?\00\00\00\00\00\00\00\00\00\f8-\87\ad\1a\d5\bf\d5g\b0\9e\e4\84\e6\bc\00\00\00\00\00 \f6?\00\00\00\00\00\00\00\00\00xw\95_\be\d4\bf\e0>)\93i\1b\04\bd\00\00\00\00\00\00\f6?\00\00\00\00\00\00\00\00\00`\1c\c2\8ba\d4\bf\cc\84LH/\d8\13=\00\00\00\00\00\e0\f5?\00\00\00\00\00\00\00\00\00\a8\86\860\04\d4\bf:\0b\82\ed\f3B\dc<\00\00\00\00\00\c0\f5?\00\00\00\00\00\00\00\00\00HiUL\a6\d3\bf`\94Q\86\c6\b1 =\00\00\00\00\00\a0\f5?\00\00\00\00\00\00\00\00\00\80\98\9a\ddG\d3\bf\92\80\c5\d4MY%=\00\00\00\00\00\80\f5?\00\00\00\00\00\00\00\00\00 \e1\ba\e2\e8\d2\bf\d8+\b7\99\1e{&=\00\00\00\00\00`\f5?\00\00\00\00\00\00\00\00\00\88\de\13Z\89\d2\bf?\b0\cf\b6\14\ca\15=\00\00\00\00\00`\f5?\00\00\00\00\00\00\00\00\00\88\de\13Z\89\d2\bf?\b0\cf\b6\14\ca\15=\00\00\00\00\00@\f5?\00\00\00\00\00\00\00\00\00x\cf\fbA)\d2\bfv\daS($Z\16\bd\00\00\00\00\00 \f5?\00\00\00\00\00\00\00\00\00\98i\c1\98\c8\d1\bf\04T\e7h\bc\af\1f\bd\00\00\00\00\00\00\f5?\00\00\00\00\00\00\00\00\00\a8\ab\ab\\g\d1\bf\f0\a8\823\c6\1f\1f=\00\00\00\00\00\e0\f4?\00\00\00\00\00\00\00\00\00H\ae\f9\8b\05\d1\bffZ\05\fd\c4\a8&\bd\00\00\00\00\00\c0\f4?\00\00\00\00\00\00\00\00\00\90s\e2$\a3\d0\bf\0e\03\f4~\eek\0c\bd\00\00\00\00\00\a0\f4?\00\00\00\00\00\00\00\00\00\d0\b4\94%@\d0\bf\7f-\f4\9e\b86\f0\bc\00\00\00\00\00\a0\f4?\00\00\00\00\00\00\00\00\00\d0\b4\94%@\d0\bf\7f-\f4\9e\b86\f0\bc\00\00\00\00\00\80\f4?\00\00\00\00\00\00\00\00\00@^m\18\b9\cf\bf\87<\99\ab*W\r=\00\00\00\00\00`\f4?\00\00\00\00\00\00\00\00\00`\dc\cb\ad\f0\ce\bf$\af\86\9c\b7&+=\00\00\00\00\00@\f4?\00\00\00\00\00\00\00\00\00\f0*n\07\'\ce\bf\10\ff?TO/\17\bd\00\00\00\00\00 \f4?\00\00\00\00\00\00\00\00\00\c0Ok!\\\cd\bf\1bh\ca\bb\91\ba!=\00\00\00\00\00\00\f4?\00\00\00\00\00\00\00\00\00\a0\9a\c7\f7\8f\cc\bf4\84\9fhOy\'=\00\00\00\00\00\00\f4?\00\00\00\00\00\00\00\00\00\a0\9a\c7\f7\8f\cc\bf4\84\9fhOy\'=\00\00\00\00\00\e0\f3?\00\00\00\00\00\00\00\00\00\90-t\86\c2\cb\bf\8f\b7\8b1\b0N\19=\00\00\00\00\00\c0\f3?\00\00\00\00\00\00\00\00\00\c0\80N\c9\f3\ca\bff\90\cd?cN\ba<\00\00\00\00\00\a0\f3?\00\00\00\00\00\00\00\00\00\b0\e2\1f\bc#\ca\bf\ea\c1F\dcd\8c%\bd\00\00\00\00\00\a0\f3?\00\00\00\00\00\00\00\00\00\b0\e2\1f\bc#\ca\bf\ea\c1F\dcd\8c%\bd\00\00\00\00\00\80\f3?\00\00\00\00\00\00\00\00\00P\f4\9cZR\c9\bf\e3\d4\c1\04\d9\d1*\bd\00\00\00\00\00`\f3?\00\00\00\00\00\00\00\00\00\d0 e\a0\7f\c8\bf\t\fa\db\7f\bf\bd+=\00\00\00\00\00@\f3?\00\00\00\00\00\00\00\00\00\e0\10\02\89\ab\c7\bfXJSr\90\db+=\00\00\00\00\00@\f3?\00\00\00\00\00\00\00\00\00\e0\10\02\89\ab\c7\bfXJSr\90\db+=\00\00\00\00\00 \f3?\00\00\00\00\00\00\00\00\00\d0\19\e7\0f\d6\c6\bff\e2\b2\a3j\e4\10\bd\00\00\00\00\00\00\f3?\00\00\00\00\00\00\00\00\00\90\a7p0\ff\c5\bf9P\10\9fC\9e\1e\bd\00\00\00\00\00\00\f3?\00\00\00\00\00\00\00\00\00\90\a7p0\ff\c5\bf9P\10\9fC\9e\1e\bd\00\00\00\00\00\e0\f2?\00\00\00\00\00\00\00\00\00\b0\a1\e3\e5&\c5\bf\8f[\07\90\8b\de \bd\00\00\00\00\00\c0\f2?\00\00\00\00\00\00\00\00\00\80\cbl+M\c4\bf<x5a\c1\0c\17=\00\00\00\00\00\c0\f2?\00\00\00\00\00\00\00\00\00\80\cbl+M\c4\bf<x5a\c1\0c\17=\00\00\00\00\00\a0\f2?\00\00\00\00\00\00\00\00\00\90\1e \fcq\c3\bf:T\'M\86x\f1<\00\00\00\00\00\80\f2?\00\00\00\00\00\00\00\00\00\f0\1f\f8R\95\c2\bf\08\c4q\170\8d$\bd\00\00\00\00\00`\f2?\00\00\00\00\00\00\00\00\00`/\d5*\b7\c1\bf\96\a3\11\18\a4\80.\bd\00\00\00\00\00`\f2?\00\00\00\00\00\00\00\00\00`/\d5*\b7\c1\bf\96\a3\11\18\a4\80.\bd\00\00\00\00\00@\f2?\00\00\00\00\00\00\00\00\00\90\d0|~\d7\c0\bf\f4[\e8\88\96i\n=\00\00\00\00\00@\f2?\00\00\00\00\00\00\00\00\00\90\d0|~\d7\c0\bf\f4[\e8\88\96i\n=\00\00\00\00\00 \f2?\00\00\00\00\00\00\00\00\00\e0\db1\91\ec\bf\bf\f23\a3\\Tu%\bd\00\00\00\00\00\00\f2?\00\00\00\00\00\00\00\00\00\00+n\07\'\be\bf<\00\f0*,4*=\00\00\00\00\00\00\f2?\00\00\00\00\00\00\00\00\00\00+n\07\'\be\bf<\00\f0*,4*=\00\00\00\00\00\e0\f1?\00\00\00\00\00\00\00\00\00\c0[\8fT^\bc\bf\06\be_XW\0c\1d\bd\00\00\00\00\00\c0\f1?\00\00\00\00\00\00\00\00\00\e0J:m\92\ba\bf\c8\aa[\e859%=\00\00\00\00\00\c0\f1?\00\00\00\00\00\00\00\00\00\e0J:m\92\ba\bf\c8\aa[\e859%=\00\00\00\00\00\a0\f1?\00\00\00\00\00\00\00\00\00\a01\d6E\c3\b8\bfhV/M)|\13=\00\00\00\00\00\a0\f1?\00\00\00\00\00\00\00\00\00\a01\d6E\c3\b8\bfhV/M)|\13=\00\00\00\00\00\80\f1?\00\00\00\00\00\00\00\00\00`\e5\8a\d2\f0\b6\bf\das3\c97\97&\bd\00\00\00\00\00`\f1?\00\00\00\00\00\00\00\00\00 \06?\07\1b\b5\bfW^\c6a[\02\1f=\00\00\00\00\00`\f1?\00\00\00\00\00\00\00\00\00 \06?\07\1b\b5\bfW^\c6a[\02\1f=\00\00\00\00\00@\f1?\00\00\00\00\00\00\00\00\00\e0\1b\96\d7A\b3\bf\df\13\f9\cc\da^,=\00\00\00\00\00@\f1?\00\00\00\00\00\00\00\00\00\e0\1b\96\d7A\b3\bf\df\13\f9\cc\da^,=\00\00\00\00\00 \f1?\00\00\00\00\00\00\00\00\00\80\a3\ee6e\b1\bf\t\a3\8fv^|\14=\00\00\00\00\00\00\f1?\00\00\00\00\00\00\00\00\00\80\11\c00\n\af\bf\91\8e6\83\9eY-=\00\00\00\00\00\00\f1?\00\00\00\00\00\00\00\00\00\80\11\c00\n\af\bf\91\8e6\83\9eY-=\00\00\00\00\00\e0\f0?\00\00\00\00\00\00\00\00\00\80\19q\ddB\ab\bfLp\d6\e5z\82\1c=\00\00\00\00\00\e0\f0?\00\00\00\00\00\00\00\00\00\80\19q\ddB\ab\bfLp\d6\e5z\82\1c=\00\00\00\00\00\c0\f0?\00\00\00\00\00\00\00\00\00\c02\f6Xt\a7\bf\ee\a1\f24F\fc,\bd\00\00\00\00\00\c0\f0?\00\00\00\00\00\00\00\00\00\c02\f6Xt\a7\bf\ee\a1\f24F\fc,\bd\00\00\00\00\00\a0\f0?\00\00\00\00\00\00\00\00\00\c0\fe\b9\87\9e\a3\bf\aa\fe&\f5\b7\02\f5<\00\00\00\00\00\a0\f0?\00\00\00\00\00\00\00\00\00\c0\fe\b9\87\9e\a3\bf\aa\fe&\f5\b7\02\f5<\00\00\00\00\00\80\f0?\00\00\00\00\00\00\00\00\00\00x\0e\9b\82\9f\bf\e4\t~|&\80)\bd\00\00\00\00\00\80\f0?\00\00\00\00\00\00\00\00\00\00x\0e\9b\82\9f\bf\e4\t~|&\80)\bd\00\00\00\00\00`\f0?\00\00\00\00\00\00\00\00\00\80\d5\07\1b\b9\97\bf9\a6\fa\93T\8d(\bd\00\00\00\00\00@\f0?\00\00\00\00\00\00\00\00\00\00\fc\b0\a8\c0\8f\bf\9c\a6\d3\f6|\1e\df\bc\00\00\00\00\00@\f0?\00\00\00\00\00\00\00\00\00\00\fc\b0\a8\c0\8f\bf\9c\a6\d3\f6|\1e\df\bc\00\00\00\00\00 \f0?\00\00\00\00\00\00\00\00\00\00\10k*\e0\7f\bf\e4@\da\r?\e2\19\bd\00\00\00\00\00 \f0?\00\00\00\00\00\00\00\00\00\00\10k*\e0\7f\bf\e4@\da\r?\e2\19\bd\00\00\00\00\00\00\f0?\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\f0?\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\c0\ef?\00\00\00\00\00\00\00\00\00\00\89u\15\10\80?\e8+\9d\99k\c7\10\bd\00\00\00\00\00\80\ef?\00\00\00\00\00\00\00\00\00\80\93XV \90?\d2\f7\e2\06[\dc#\bd\00\00\00\00\00@\ef?\00\00\00\00\00\00\00\00\00\00\c9(%I\98?4\0cZ2\ba\a0*\bd\00\00\00\00\00\00\ef?\00\00\00\00\00\00\00\00\00@\e7\89]A\a0?S\d7\f1\\\c0\11\01=\00\00\00\00\00\c0\ee?\00\00\00\00\00\00\00\00\00\00.\d4\aef\a4?(\fd\bdus\16,\bd\00\00\00\00\00\80\ee?\00\00\00\00\00\00\00\00\00\c0\9f\14\aa\94\a8?}&Z\d0\95y\19\bd\00\00\00\00\00@\ee?\00\00\00\00\00\00\00\00\00\c0\dd\cds\cb\ac?\07(\d8G\f2h\1a\bd\00\00\00\00\00 \ee?\00\00\00\00\00\00\00\00\00\c0\06\c01\ea\ae?{;\c9O>\11\0e\bd\00\00\00\00\00\e0\ed?\00\00\00\00\00\00\00\00\00`F\d1;\97\b1?\9b\9e\rV]2%\bd\00\00\00\00\00\a0\ed?\00\00\00\00\00\00\00\00\00\e0\d1\a7\f5\bd\b3?\d7N\db\a5^\c8,=\00\00\00\00\00`\ed?\00\00\00\00\00\00\00\00\00\a0\97MZ\e9\b5?\1e\1d]<\06i,\bd\00\00\00\00\00@\ed?\00\00\00\00\00\00\00\00\00\c0\ea\n\d3\00\b7?2\ed\9d\a9\8d\1e\ec<\00\00\00\00\00\00\ed?\00\00\00\00\00\00\00\00\00@Y]^3\b9?\daG\bd:\\\11#=\00\00\00\00\00\c0\ec?\00\00\00\00\00\00\00\00\00`\ad\8d\c8j\bb?\e5h\f7+\80\90\13\bd\00\00\00\00\00\a0\ec?\00\00\00\00\00\00\00\00\00@\bc\01X\88\bc?\d3\acZ\c6\d1F&=\00\00\00\00\00`\ec?\00\00\00\00\00\00\00\00\00 \n\839\c7\be?\e0E\e6\afh\c0-\bd\00\00\00\00\00@\ec?\00\00\00\00\00\00\00\00\00\e0\db9\91\e8\bf?\fd\n\a1O\d64%\bd\00\00\00\00\00\00\ec?\00\00\00\00\00\00\00\00\00\e0\'\82\8e\17\c1?\f2\07-\cex\ef!=\00\00\00\00\00\e0\eb?\00\00\00\00\00\00\00\00\00\f0#~+\aa\c1?4\998D\8e\a7,=\00\00\00\00\00\a0\eb?\00\00\00\00\00\00\00\00\00\80\86\0ca\d1\c2?\a1\b4\81\cbl\9d\03=\00\00\00\00\00\80\eb?\00\00\00\00\00\00\00\00\00\90\15\b0\fce\c3?\89rK#\a8/\c6<\00\00\00\00\00@\eb?\00\00\00\00\00\00\00\00\00\b03\83=\91\c4?x\b6\fdTy\83%=\00\00\00\00\00 \eb?\00\00\00\00\00\00\00\00\00\b0\a1\e4\e5\'\c5?\c7}i\e5\e83&=\00\00\00\00\00\e0\ea?\00\00\00\00\00\00\00\00\00\10\8c\beNW\c6?x.<,\8b\cf\19=\00\00\00\00\00\c0\ea?\00\00\00\00\00\00\00\00\00pu\8b\12\f0\c6?\e1!\9c\e5\8d\11%\bd\00\00\00\00\00\a0\ea?\00\00\00\00\00\00\00\00\00PD\85\8d\89\c7?\05C\91p\10f\1c\bd\00\00\00\00\00`\ea?\00\00\00\00\00\00\00\00\00\009\eb\af\be\c8?\d1,\e9\aaT=\07\bd\00\00\00\00\00@\ea?\00\00\00\00\00\00\00\00\00\00\f7\dcZZ\c9?o\ff\a0X(\f2\07=\00\00\00\00\00\00\ea?\00\00\00\00\00\00\00\00\00\e0\8a<\ed\93\ca?i!VPCr(\bd\00\00\00\00\00\e0\e9?\00\00\00\00\00\00\00\00\00\d0[W\d81\cb?\aa\e1\acN\8d5\0c\bd\00\00\00\00\00\c0\e9?\00\00\00\00\00\00\00\00\00\e0;8\87\d0\cb?\b6\12TY\c4K-\bd\00\00\00\00\00\a0\e9?\00\00\00\00\00\00\00\00\00\10\f0\c6\fbo\cc?\d2+\96\c5r\ec\f1\bc\00\00\00\00\00`\e9?\00\00\00\00\00\00\00\00\00\90\d4\b0=\b1\cd?5\b0\15\f7*\ff*\bd\00\00\00\00\00@\e9?\00\00\00\00\00\00\00\00\00\10\e7\ff\0eS\ce?0\f4A`\'\12\c2<\00\00\00\00\00 \e9?\00\00\00\00\00\00\00\00\00\00\dd\e4\ad\f5\ce?\11\8e\bbe\15!\ca\bc\00\00\00\00\00\00\e9?\00\00\00\00\00\00\00\00\00\b0\b3l\1c\99\cf?0\df\0c\ca\ec\cb\1b=\00\00\00\00\00\c0\e8?\00\00\00\00\00\00\00\00\00XM`8q\d0?\91N\ed\16\db\9c\f8<\00\00\00\00\00\a0\e8?\00\00\00\00\00\00\00\00\00`ag-\c4\d0?\e9\ea<\16\8b\18\'=\00\00\00\00\00\80\e8?\00\00\00\00\00\00\00\00\00\e8\'\82\8e\17\d1?\1c\f0\a5c\0e!,\bd\00\00\00\00\00`\e8?\00\00\00\00\00\00\00\00\00\f8\ac\cb\\k\d1?\81\16\a5\f7\cd\9a+=\00\00\00\00\00@\e8?\00\00\00\00\00\00\00\00\00hZc\99\bf\d1?\b7\bdGQ\ed\a6,=\00\00\00\00\00 \e8?\00\00\00\00\00\00\00\00\00\b8\0emE\14\d2?\ea\baF\ba\de\87\n=\00\00\00\00\00\e0\e7?\00\00\00\00\00\00\00\00\00\90\dc|\f0\be\d2?\f4\04PJ\fa\9c*=\00\00\00\00\00\c0\e7?\00\00\00\00\00\00\00\00\00`\d3\e1\f1\14\d3?\b8<!\d3z\e2(\bd\00\00\00\00\00\a0\e7?\00\00\00\00\00\00\00\00\00\10\bevgk\d3?\c8w\f1\b0\cdn\11=\00\00\00\00\00\80\e7?\00\00\00\00\00\00\00\00\0003wR\c2\d3?\\\bd\06\b6T;\18=\00\00\00\00\00`\e7?\00\00\00\00\00\00\00\00\00\e8\d5#\b4\19\d4?\9d\e0\90\ec6\e4\08=\00\00\00\00\00@\e7?\00\00\00\00\00\00\00\00\00\c8q\c2\8dq\d4?u\d6g\t\ce\'/\bd\00\00\00\00\00 \e7?\00\00\00\00\00\00\00\00\000\17\9e\e0\c9\d4?\a4\d8\n\1b\89 .\bd\00\00\00\00\00\00\e7?\00\00\00\00\00\00\00\00\00\a08\07\ae\"\d5?Y\c7d\81p\be.=\00\00\00\00\00\e0\e6?\00\00\00\00\00\00\00\00\00\d0\c8S\f7{\d5?\ef@]\ee\ed\ad\1f=\00\00\00\00\00\c0\e6?\00\00\00\00\00\00\00\00\00`Y\df\bd\d5\d5?\dce\a4\08*\0b\n\bd")
 (data $22 (i32.const 7360) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\f0?n\bf\88\1aO;\9b<53\fb\a9=\f6\ef?]\dc\d8\9c\13`q\bca\80w>\9a\ec\ef?\d1f\87\10z^\90\bc\85\7fn\e8\15\e3\ef?\13\f6g5R\d2\8c<t\85\15\d3\b0\d9\ef?\fa\8e\f9#\80\ce\8b\bc\de\f6\dd)k\d0\ef?a\c8\e6aN\f7`<\c8\9bu\18E\c7\ef?\99\d33[\e4\a3\90<\83\f3\c6\ca>\be\ef?m{\83]\a6\9a\97<\0f\89\f9lX\b5\ef?\fc\ef\fd\92\1a\b5\8e<\f7Gr+\92\ac\ef?\d1\9c/p=\be><\a2\d1\d32\ec\a3\ef?\0bn\90\894\03j\bc\1b\d3\fe\aff\9b\ef?\0e\bd/*RV\95\bcQ[\12\d0\01\93\ef?U\eaN\8c\ef\80P\bc\cc1l\c0\bd\8a\ef?\16\f4\d5\b9#\c9\91\bc\e0-\a9\ae\9a\82\ef?\afU\\\e9\e3\d3\80<Q\8e\a5\c8\98z\ef?H\93\a5\ea\15\1b\80\bc{Q}<\b8r\ef?=2\deU\f0\1f\8f\bc\ea\8d\8c8\f9j\ef?\bfS\13?\8c\89\8b<u\cbo\eb[c\ef?&\eb\11v\9c\d9\96\bc\d4\\\04\84\e0[\ef?`/:>\f7\ec\9a<\aa\b9h1\87T\ef?\9d8\86\cb\82\e7\8f\bc\1d\d9\fc\"PM\ef?\8d\c3\a6DAo\8a<\d6\8cb\88;F\ef?}\04\e4\b0\05z\80<\96\dc}\91I?\ef?\94\a8\a8\e3\fd\8e\96<8bunz8\ef?}Ht\f2\18^\87<?\a6\b2O\ce1\ef?\f2\e7\1f\98+G\80<\dd|\e2eE+\ef?^\08q?{\b8\96\bc\81c\f5\e1\df$\ef?1\ab\tm\e1\f7\82<\e1\de\1f\f5\9d\1e\ef?\fa\bfo\1a\9b!=\bc\90\d9\da\d0\7f\18\ef?\b4\n\0cr\827\8b<\0b\03\e4\a6\85\12\ef?\8f\cb\ce\89\92\14n<V/>\a9\af\0c\ef?\b6\ab\b0MuM\83<\15\b71\n\fe\06\ef?Lt\ac\e2\01B\86<1\d8L\fcp\01\ef?J\f8\d3]9\dd\8f<\ff\16d\b2\08\fc\ee?\04[\8e;\80\a3\86\bc\f1\9f\92_\c5\f6\ee?hPK\cc\edJ\92\bc\cb\a9:7\a7\f1\ee?\8e-Q\1b\f8\07\99\bcf\d8\05m\ae\ec\ee?\d26\94>\e8\d1q\bc\f7\9f\e54\db\e7\ee?\15\1b\ce\b3\19\19\99\bc\e5\a8\13\c3-\e3\ee?mL*\a7H\9f\85<\"4\12L\a6\de\ee?\8ai(z`\12\93\bc\1c\80\ac\04E\da\ee?[\89\17H\8f\a7X\bc*.\f7!\n\d6\ee?\1b\9aIg\9b,|\bc\97\a8P\d9\f5\d1\ee?\11\ac\c2`\edcC<-\89a`\08\ce\ee?\efd\06;\tf\96<W\00\1d\edA\ca\ee?y\03\a1\da\e1\ccn<\d0<\c1\b5\a2\c6\ee?0\12\0f?\8e\ff\93<\de\d3\d7\f0*\c3\ee?\b0\afz\bb\ce\90v<\'*6\d5\da\bf\ee?w\e0T\eb\bd\1d\93<\r\dd\fd\99\b2\bc\ee?\8e\a3q\004\94\8f\bc\a7,\9dv\b2\b9\ee?I\a3\93\dc\cc\de\87\bcBf\cf\a2\da\b6\ee?_8\0f\bd\c6\dex\bc\82O\9dV+\b4\ee?\f6\\{\ecF\12\86\bc\0f\92]\ca\a4\b1\ee?\8e\d7\fd\18\055\93<\da\'\b56G\af\ee?\05\9b\8a/\b7\98{<\fd\c7\97\d4\12\ad\ee?\tT\1c\e2\e1c\90<)TH\dd\07\ab\ee?\ea\c6\19P\85\c74<\b7FY\8a&\a9\ee?5\c0d+\e62\94<H!\ad\15o\a7\ee?\9fv\99aJ\e4\8c\bc\t\dcv\b9\e1\a5\ee?\a8M\ef;\c53\8c\bc\85U:\b0~\a4\ee?\ae\e9+\89xS\84\bc \c3\cc4F\a3\ee?XXVx\dd\ce\93\bc%\"U\828\a2\ee?d\19~\80\aa\10W<s\a9L\d4U\a1\ee?(\"^\bf\ef\b3\93\bc\cd;\7ff\9e\a0\ee?\82\b94\87\ad\12j\bc\bf\da\0bu\12\a0\ee?\ee\a9m\b8\efgc\bc/\1ae<\b2\9f\ee?Q\88\e0T=\dc\80\bc\84\94Q\f9}\9f\ee?\cf>Z~d\1fx\bct_\ec\e8u\9f\ee?\b0}\8b\c0J\ee\86\bct\81\a5H\9a\9f\ee?\8a\e6U\1e2\19\86\bc\c9gBV\eb\9f\ee?\d3\d4\t^\cb\9c\90<?]\deOi\a0\ee?\1d\a5M\b9\dc2{\bc\87\01\ebs\14\a1\ee?k\c0gT\fd\ec\94<2\c10\01\ed\a1\ee?Ul\d6\ab\e1\ebe<bN\cf6\f3\a2\ee?B\cf\b3/\c5\a1\88\bc\12\1a>T\'\a4\ee?47;\f1\b6i\93\bc\13\ceL\99\89\a5\ee?\1e\ff\19:\84^\80\bc\ad\c7#F\1a\a7\ee?nWr\d8P\d4\94\bc\ed\92D\9b\d9\a8\ee?\00\8a\0e[g\ad\90<\99f\8a\d9\c7\aa\ee?\b4\ea\f0\c1/\b7\8d<\db\a0*B\e5\ac\ee?\ff\e7\c5\9c`\b6e\bc\8cD\b5\162\af\ee?D_\f3Y\83\f6{<6w\15\99\ae\b1\ee?\83=\1e\a7\1f\t\93\bc\c6\ff\91\0b[\b4\ee?)\1el\8b\b8\a9]\bc\e5\c5\cd\b07\b7\ee?Y\b9\90|\f9#l\bc\0fR\c8\cbD\ba\ee?\aa\f9\f4\"CC\92\bcPN\de\9f\82\bd\ee?K\8ef\d7l\ca\85\bc\ba\07\cap\f1\c0\ee?\'\ce\91+\fc\afq<\90\f0\a3\82\91\c4\ee?\bbs\n\e15\d2m<##\e3\19c\c8\ee?c\"b\"\04\c5\87\bce\e5]{f\cc\ee?\d51\e2\e3\86\1c\8b<3-J\ec\9b\d0\ee?\15\bb\bc\d3\d1\bb\91\bc]%>\b2\03\d5\ee?\d21\ee\9c1\cc\90<X\b30\13\9e\d9\ee?\b3Zsn\84i\84<\bf\fdyUk\de\ee?\b4\9d\8e\97\cd\df\82\bcz\f3\d3\bfk\e3\ee?\873\cb\92w\1a\8c<\ad\d3Z\99\9f\e8\ee?\fa\d9\d1J\8f{\90\bcf\b6\8d)\07\ee\ee?\ba\ae\dcV\d9\c3U\bc\fb\15O\b8\a2\f3\ee?@\f6\a6=\0e\a4\90\bc:Y\e5\8dr\f9\ee?4\93\ad8\f4\d6h\bcG^\fb\f2v\ff\ee?5\8aXk\e2\ee\91\bcJ\06\a10\b0\05\ef?\cd\dd_\n\d7\fft<\d2\c1K\90\1e\0c\ef?\ac\98\92\fa\fb\bd\91\bc\t\1e\d7[\c2\12\ef?\b3\0c\af0\aens<\9cR\85\dd\9b\19\ef?\94\fd\9f\\2\e3\8e<z\d0\ff_\ab \ef?\acY\t\d1\8f\e0\84<K\d1W.\f1\'\ef?g\1aN8\af\cdc<\b5\e7\06\94m/\ef?h\19\92l,kg<i\90\ef\dc 7\ef?\d2\b5\cc\83\18\8a\80\bc\fa\c3]U\0b?\ef?o\fa\ff?]\ad\8f\bc|\89\07J-G\ef?I\a9u8\ae\r\90\bc\f2\89\r\08\87O\ef?\a7\07=\a6\85\a3t<\87\a4\fb\dc\18X\ef?\0f\"@ \9e\91\82\bc\98\83\c9\16\e3`\ef?\ac\92\c1\d5PZ\8e<\852\db\03\e6i\ef?Kk\01\acY:\84<`\b4\01\f3!s\ef?\1f>\b4\07!\d5\82\bc_\9b{3\97|\ef?\c9\rG;\b9*\89\bc)\a1\f5\14F\86\ef?\d3\88:`\04\b6t<\f6?\8b\e7.\90\ef?qr\9dQ\ec\c5\83<\83L\c7\fbQ\9a\ef?\f0\91\d3\8f\12\f7\8f\bc\da\90\a4\a2\af\a4\ef?}t#\e2\98\ae\8d\bc\f1g\8e-H\af\ef?\08 \aaA\bc\c3\8e<\'Za\ee\1b\ba\ef?2\eb\a9\c3\94+\84<\97\bak7+\c5\ef?\ee\85\d11\a9d\8a<@En[v\d0\ef?\ed\e3;\e4\ba7\8e\bc\14\be\9c\ad\fd\db\ef?\9d\cd\91M;\89w<\d8\90\9e\81\c1\e7\ef?\89\cc`A\c1\05S<\f1q\8f+\c2\f3\ef?")
 (data $23 (i32.const 9408) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $24 (i32.const 9536) "\00\00\00\00\00\00\00\80\00\00\00\00\00\00\00\a0\00\00\00\00\00\00\00\c8\00\00\00\00\00\00\00\fa\00\00\00\00\00\00@\9c\00\00\00\00\00\00P\c3\00\00\00\00\00\00$\f4\00\00\00\00\00\80\96\98\00\00\00\00\00 \bc\be\00\00\00\00\00(k\ee\00\00\00\00\00\f9\02\95\00\00\00\00@\b7C\ba\00\00\00\00\10\a5\d4\e8\00\00\00\00*\e7\84\91\00\00\00\80\f4 \e6\b5\00\00\00\a01\a9_\e3\00\00\00\04\bf\c9\1b\8e\00\00\00\c5.\bc\a2\b1\00\00@v:k\0b\de\00\00\e8\89\04#\c7\8a\00\00b\ac\c5\ebx\ad\00\80z\17\b7&\d7\d8\00\90\acn2x\86\87\00\b4W\n?\16h\a9\00\a1\ed\cc\ce\1b\c2\d3\a0\84\14@aQY\84\c8\a5\19\90\b9\a5o\a5:\0f \f4\'\8f\cb\ce")
 (data $25 (i32.const 9760) "o\1b\8e(\10T\8e\af\daM\e4^\ae\f0\ec\07J\fb\9f\f4\98\'D\b1\9dwA\df\cf\11\cd\99\07\ef\99\85\0b?\fe\b2\15\aa\b4\dc\e6\a7\1f\86c\beZ\06\0b\a5\bc\b4\aaSkuz\07\ed\0f\08\bf,)Ud\7f\b6C\d5\b1\17L\c8;\1a\fb;\efi\c2\87F\b8B\a7\ee@OQ]=\eb\dd\e4PF\1a\12\ba\13\e4labM\f3\92\ea\af(\b6\ef&\e2\bb\8c6U\n\f7\89\04\89\0f`\cb\05\e9\b8\b6\bd!\c9\c1\bb\87\e9\00T\96_\9a\84x\db\8f\bf4\d0\bdr\04R\98\de\'\8a\92\95\00\9am\c1\94\82\17\0f<\05\b7u\00\00\00\00\00\00P\c3\00\00\00\00\00\00\00\00\05\e3L6\12\197\c5\00\00\00\00\00\00(l\d6\aa\80\9d\ef\f0\"\c7\f6~\b9\b7\d2:MBL\c8q\d5m\93\13\c9\ea8\1e\cd\19:\bc\03\1cU\ab\01\80\0c\t\cb\c6,\07\d3\bf\f5\ad\\\a1\90\08\137h\03\cd\10\8cz\c3\87\a8\db6.\ef\07\12\c2\b2\02\cf\bc\f4\03^\e4g\f9\94\c7\85\d7in\f8\06\d1R\ba\be\01\d763\e1|\a0\1c4\a8E\10\d3Q\a0\t\12\11H\de\1e1Vx\85\fa\a6\1e\d5f\a5>\7f\"t*U3\f1\ca\ba\0f)2\d7\96@\adGy\17|\a9t\088\c7\b1\d8J\d9\bc\"x\ae\81R7\18")
 (data $26 (i32.const 10128) "?6N\n@\18\00\00\00d\00\00@\00 $\00\00\00\00\00\00\00\0c\80\13\c8\82\1f\e0L^\0f\f60\d7\1b\00\00\00\00\00\00\00\fc\ff\f7\cd\d8\01\82n\d1?\cd@\01%d\db\r\r\00\00\00$\04\14@8qS\b4\1dx\11\00\00\00\00")
 (data $27 (i32.const 10208) "\00\00\00\00\00\00\f0?\00\00\00\00\00\00$@\00\00\00\00\00\00Y@\00\00\00\00\00@\8f@\00\00\00\00\00\88\c3@\00\00\00\00\00j\f8@\00\00\00\00\80\84.A\00\00\00\00\d0\12cA\00\00\00\00\84\d7\97A\00\00\00\00e\cd\cdA\00\00\00 _\a0\02B\00\00\00\e8vH7B\00\00\00\a2\94\1amB\00\00@\e5\9c0\a2B\00\00\90\1e\c4\bc\d6B\00\004&\f5k\0cC\00\80\e07y\c3AC\00\a0\d8\85W4vC\00\c8Ngm\c1\abC\00=\91`\e4X\e1C@\8c\b5x\1d\af\15DP\ef\e2\d6\e4\1aKD\92\d5M\06\cf\f0\80D")
 (data $28 (i32.const 10396) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\06\00\00\004\00.\000\00\00\00\00\00\00\00")
 (data $29 (i32.const 10428) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\02\00\00\004\00\00\00\00\00\00\00\00\00\00\00")
 (data $30 (i32.const 10460) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\02\00\00\003\00\00\00\00\00\00\00\00\00\00\00")
 (data $31 (i32.const 10492) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\04\00\00\00-\001\00\00\00\00\00\00\00\00\00")
 (data $32 (i32.const 10524) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\04\00\00\00l\00t\00\00\00\00\00\00\00\00\00")
 (data $33 (i32.const 10556) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\04\00\00\00g\00t\00\00\00\00\00\00\00\00\00")
 (data $34 (i32.const 10588) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\04\00\00\00l\00e\00\00\00\00\00\00\00\00\00")
 (data $35 (i32.const 10620) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\04\00\00\00g\00e\00\00\00\00\00\00\00\00\00")
 (data $36 (i32.const 10652) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\04\00\00\00e\00q\00\00\00\00\00\00\00\00\00")
 (data $37 (i32.const 10684) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\04\00\00\00n\00e\00\00\00\00\00\00\00\00\00")
 (data $38 (i32.const 10716) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\06\00\00\00a\00d\00d\00\00\00\00\00\00\00")
 (data $39 (i32.const 10748) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\06\00\00\00s\00u\00b\00\00\00\00\00\00\00")
 (data $40 (i32.const 10780) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\06\00\00\00m\00u\00l\00\00\00\00\00\00\00")
 (data $41 (i32.const 10812) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\06\00\00\00d\00i\00v\00\00\00\00\00\00\00")
 (data $42 (i32.const 10844) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\06\00\00\00r\00e\00m\00\00\00\00\00\00\00")
 (data $43 (i32.const 10876) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\06\00\00\00p\00o\00w\00\00\00\00\00\00\00")
 (data $44 (i32.const 10912) "\07\00\00\00 \00\00\00 \00\00\00 \00\00\00\00\00\00\00 \00\00\00 \00\00\00 \00\00\00")
 (table $0 1 1 funcref)
 (elem $0 (i32.const 1))
 (export "memory" (memory $0))
 (start $~start)
 (func $~lib/number/Bool#toString (param $this i32) (param $radix i32) (result i32)
  local.get $this
  if (result i32)
   i32.const 32
  else
   i32.const 64
  end
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
     i32.const 1328
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
    i32.const 1328
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
   i32.const 1328
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
   i32.const 1456
   i32.const 1520
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
    i32.const 1328
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
   i32.const 1600
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
   i32.const 1600
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
   i32.const 1600
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
   i32.const 1600
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
   i32.const 1600
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
    i32.const 1600
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
   i32.const 1600
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
   i32.const 1600
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
   i32.const 1600
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
   i32.const 1600
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
    i32.const 1600
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
    i32.const 1600
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
   i32.const 1600
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
     i32.const 1328
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
   i32.const 1264
   i32.const 1600
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
   i32.const 1600
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
     i32.const 1600
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
   i32.const 1600
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
    i32.const 1600
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
   i32.const 1600
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
   i32.const 1264
   i32.const 1328
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
    i32.const 1644
    local.get $d1
    i32.const 2
    i32.shl
    i32.add
    i64.load32_u
    local.set $digits1
    i32.const 1644
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
   i32.const 1644
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
   i32.const 1644
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
    i32.const 2064
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
   i32.const 2064
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
    i32.const 3120
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
    i32.const 3120
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
 (func $~lib/math/NativeMath.pow (param $x f64) (param $y f64) (result f64)
  (local $x|2 f64)
  (local $y|3 f64)
  (local $sign_bias i32)
  (local $ix i64)
  (local $iy i64)
  (local $topx i64)
  (local $topy i64)
  (local $u i64)
  (local $u|10 i64)
  (local $x2 f64)
  (local $iy|12 i64)
  (local $e i64)
  (local $iy|14 i64)
  (local $e|15 i64)
  (local $yint i32)
  (local $ix|17 i64)
  (local $tmp i64)
  (local $i i32)
  (local $k i64)
  (local $iz i64)
  (local $z f64)
  (local $kd f64)
  (local $invc f64)
  (local $logc f64)
  (local $logctail f64)
  (local $zhi f64)
  (local $zlo f64)
  (local $rhi f64)
  (local $rlo f64)
  (local $r f64)
  (local $t1 f64)
  (local $t2 f64)
  (local $lo1 f64)
  (local $lo2 f64)
  (local $ar f64)
  (local $ar2 f64)
  (local $ar3 f64)
  (local $arhi f64)
  (local $arhi2 f64)
  (local $hi f64)
  (local $lo3 f64)
  (local $lo4 f64)
  (local $p f64)
  (local $lo f64)
  (local $y|46 f64)
  (local $hi|47 f64)
  (local $lo|48 f64)
  (local $ehi f64)
  (local $elo f64)
  (local $yhi f64)
  (local $ylo f64)
  (local $lhi f64)
  (local $llo f64)
  (local $x|55 f64)
  (local $xtail f64)
  (local $sign_bias|57 i32)
  (local $abstop i32)
  (local $ki i64)
  (local $top i64)
  (local $sbits i64)
  (local $idx i32)
  (local $kd|63 f64)
  (local $z|64 f64)
  (local $r|65 f64)
  (local $r2 f64)
  (local $scale f64)
  (local $tail f64)
  (local $tmp|69 f64)
  (local $ux i64)
  (local $sign i32)
  (local $sign|72 i32)
  (local $y|73 f64)
  (local $sign|74 i32)
  (local $sign|75 i32)
  (local $y|76 f64)
  (local $tmp|77 f64)
  (local $sbits|78 i64)
  (local $ki|79 i64)
  (local $scale|80 f64)
  (local $y|81 f64)
  (local $one f64)
  (local $lo|83 f64)
  (local $hi|84 f64)
  local.get $y
  f64.abs
  f64.const 2
  f64.le
  if
   local.get $y
   f64.const 2
   f64.eq
   if
    local.get $x
    local.get $x
    f64.mul
    return
   end
   local.get $y
   f64.const 0.5
   f64.eq
   if
    local.get $x
    f64.sqrt
    f64.abs
    f64.const inf
    local.get $x
    f64.const inf
    f64.neg
    f64.ne
    select
    return
   end
   local.get $y
   f64.const -1
   f64.eq
   if
    f64.const 1
    local.get $x
    f64.div
    return
   end
   local.get $y
   f64.const 1
   f64.eq
   if
    local.get $x
    return
   end
   local.get $y
   f64.const 0
   f64.eq
   if
    f64.const 1
    return
   end
  end
  i32.const 0
  i32.const 1
  i32.lt_s
  drop
  block $~lib/util/math/pow_lut|inlined.0 (result f64)
   local.get $x
   local.set $x|2
   local.get $y
   local.set $y|3
   i32.const 0
   local.set $sign_bias
   local.get $x|2
   i64.reinterpret_f64
   local.set $ix
   local.get $y|3
   i64.reinterpret_f64
   local.set $iy
   local.get $ix
   i64.const 52
   i64.shr_u
   local.set $topx
   local.get $iy
   i64.const 52
   i64.shr_u
   local.set $topy
   local.get $topx
   i64.const 1
   i64.sub
   i64.const 2047
   i64.const 1
   i64.sub
   i64.ge_u
   if (result i32)
    i32.const 1
   else
    local.get $topy
    i64.const 2047
    i64.and
    i64.const 958
    i64.sub
    i64.const 1086
    i64.const 958
    i64.sub
    i64.ge_u
   end
   if
    block $~lib/util/math/zeroinfnan|inlined.0 (result i32)
     local.get $iy
     local.set $u
     local.get $u
     i64.const 1
     i64.shl
     i64.const 1
     i64.sub
     i64.const -9007199254740992
     i64.const 1
     i64.sub
     i64.ge_u
     br $~lib/util/math/zeroinfnan|inlined.0
    end
    if
     local.get $iy
     i64.const 1
     i64.shl
     i64.const 0
     i64.eq
     if
      f64.const 1
      br $~lib/util/math/pow_lut|inlined.0
     end
     local.get $ix
     i64.const 4607182418800017408
     i64.eq
     if
      f64.const nan:0x8000000000000
      br $~lib/util/math/pow_lut|inlined.0
     end
     local.get $ix
     i64.const 1
     i64.shl
     i64.const -9007199254740992
     i64.gt_u
     if (result i32)
      i32.const 1
     else
      local.get $iy
      i64.const 1
      i64.shl
      i64.const -9007199254740992
      i64.gt_u
     end
     if
      local.get $x|2
      local.get $y|3
      f64.add
      br $~lib/util/math/pow_lut|inlined.0
     end
     local.get $ix
     i64.const 1
     i64.shl
     i64.const 9214364837600034816
     i64.eq
     if
      f64.const nan:0x8000000000000
      br $~lib/util/math/pow_lut|inlined.0
     end
     local.get $ix
     i64.const 1
     i64.shl
     i64.const 9214364837600034816
     i64.lt_u
     local.get $iy
     i64.const 63
     i64.shr_u
     i64.const 0
     i64.ne
     i32.eqz
     i32.eq
     if
      f64.const 0
      br $~lib/util/math/pow_lut|inlined.0
     end
     local.get $y|3
     local.get $y|3
     f64.mul
     br $~lib/util/math/pow_lut|inlined.0
    end
    block $~lib/util/math/zeroinfnan|inlined.1 (result i32)
     local.get $ix
     local.set $u|10
     local.get $u|10
     i64.const 1
     i64.shl
     i64.const 1
     i64.sub
     i64.const -9007199254740992
     i64.const 1
     i64.sub
     i64.ge_u
     br $~lib/util/math/zeroinfnan|inlined.1
    end
    if
     local.get $x|2
     local.get $x|2
     f64.mul
     local.set $x2
     local.get $ix
     i64.const 63
     i64.shr_u
     i32.wrap_i64
     if (result i32)
      block $~lib/util/math/checkint|inlined.0 (result i32)
       local.get $iy
       local.set $iy|12
       local.get $iy|12
       i64.const 52
       i64.shr_u
       i64.const 2047
       i64.and
       local.set $e
       local.get $e
       i64.const 1023
       i64.lt_u
       if
        i32.const 0
        br $~lib/util/math/checkint|inlined.0
       end
       local.get $e
       i64.const 1023
       i64.const 52
       i64.add
       i64.gt_u
       if
        i32.const 2
        br $~lib/util/math/checkint|inlined.0
       end
       i64.const 1
       i64.const 1023
       i64.const 52
       i64.add
       local.get $e
       i64.sub
       i64.shl
       local.set $e
       local.get $iy|12
       local.get $e
       i64.const 1
       i64.sub
       i64.and
       i64.const 0
       i64.ne
       if
        i32.const 0
        br $~lib/util/math/checkint|inlined.0
       end
       local.get $iy|12
       local.get $e
       i64.and
       i64.const 0
       i64.ne
       if
        i32.const 1
        br $~lib/util/math/checkint|inlined.0
       end
       i32.const 2
       br $~lib/util/math/checkint|inlined.0
      end
      i32.const 1
      i32.eq
     else
      i32.const 0
     end
     if
      local.get $x2
      f64.neg
      local.set $x2
     end
     local.get $iy
     i64.const 0
     i64.lt_s
     if (result f64)
      f64.const 1
      local.get $x2
      f64.div
     else
      local.get $x2
     end
     br $~lib/util/math/pow_lut|inlined.0
    end
    local.get $ix
    i64.const 0
    i64.lt_s
    if
     block $~lib/util/math/checkint|inlined.1 (result i32)
      local.get $iy
      local.set $iy|14
      local.get $iy|14
      i64.const 52
      i64.shr_u
      i64.const 2047
      i64.and
      local.set $e|15
      local.get $e|15
      i64.const 1023
      i64.lt_u
      if
       i32.const 0
       br $~lib/util/math/checkint|inlined.1
      end
      local.get $e|15
      i64.const 1023
      i64.const 52
      i64.add
      i64.gt_u
      if
       i32.const 2
       br $~lib/util/math/checkint|inlined.1
      end
      i64.const 1
      i64.const 1023
      i64.const 52
      i64.add
      local.get $e|15
      i64.sub
      i64.shl
      local.set $e|15
      local.get $iy|14
      local.get $e|15
      i64.const 1
      i64.sub
      i64.and
      i64.const 0
      i64.ne
      if
       i32.const 0
       br $~lib/util/math/checkint|inlined.1
      end
      local.get $iy|14
      local.get $e|15
      i64.and
      i64.const 0
      i64.ne
      if
       i32.const 1
       br $~lib/util/math/checkint|inlined.1
      end
      i32.const 2
      br $~lib/util/math/checkint|inlined.1
     end
     local.set $yint
     local.get $yint
     i32.const 0
     i32.eq
     if
      local.get $x|2
      local.get $x|2
      f64.sub
      local.get $x|2
      local.get $x|2
      f64.sub
      f64.div
      br $~lib/util/math/pow_lut|inlined.0
     end
     local.get $yint
     i32.const 1
     i32.eq
     if
      i32.const 262144
      local.set $sign_bias
     end
     local.get $ix
     i64.const 9223372036854775807
     i64.and
     local.set $ix
     local.get $topx
     i64.const 2047
     i64.and
     local.set $topx
    end
    local.get $topy
    i64.const 2047
    i64.and
    i64.const 958
    i64.sub
    i64.const 1086
    i64.const 958
    i64.sub
    i64.ge_u
    if
     local.get $ix
     i64.const 4607182418800017408
     i64.eq
     if
      f64.const 1
      br $~lib/util/math/pow_lut|inlined.0
     end
     local.get $topy
     i64.const 2047
     i64.and
     i64.const 958
     i64.lt_u
     if
      f64.const 1
      br $~lib/util/math/pow_lut|inlined.0
     end
     local.get $ix
     i64.const 4607182418800017408
     i64.gt_u
     local.get $topy
     i64.const 2048
     i64.lt_u
     i32.eq
     if (result f64)
      f64.const inf
     else
      f64.const 0
     end
     br $~lib/util/math/pow_lut|inlined.0
    end
    local.get $topx
    i64.const 0
    i64.eq
    if
     local.get $x|2
     f64.const 4503599627370496
     f64.mul
     i64.reinterpret_f64
     local.set $ix
     local.get $ix
     i64.const 9223372036854775807
     i64.and
     local.set $ix
     local.get $ix
     i64.const 52
     i64.const 52
     i64.shl
     i64.sub
     local.set $ix
    end
   end
   block $~lib/util/math/log_inline|inlined.0 (result f64)
    local.get $ix
    local.set $ix|17
    local.get $ix|17
    i64.const 4604531861337669632
    i64.sub
    local.set $tmp
    local.get $tmp
    i64.const 52
    i32.const 7
    i64.extend_i32_s
    i64.sub
    i64.shr_u
    i32.const 127
    i64.extend_i32_s
    i64.and
    i32.wrap_i64
    local.set $i
    local.get $tmp
    i64.const 52
    i64.shr_s
    local.set $k
    local.get $ix|17
    local.get $tmp
    i64.const 4095
    i64.const 52
    i64.shl
    i64.and
    i64.sub
    local.set $iz
    local.get $iz
    f64.reinterpret_i64
    local.set $z
    local.get $k
    f64.convert_i64_s
    local.set $kd
    i32.const 3264
    local.get $i
    i32.const 2
    i32.const 3
    i32.add
    i32.shl
    i32.add
    f64.load
    local.set $invc
    i32.const 3264
    local.get $i
    i32.const 2
    i32.const 3
    i32.add
    i32.shl
    i32.add
    f64.load offset=16
    local.set $logc
    i32.const 3264
    local.get $i
    i32.const 2
    i32.const 3
    i32.add
    i32.shl
    i32.add
    f64.load offset=24
    local.set $logctail
    local.get $iz
    i64.const 2147483648
    i64.add
    i64.const -4294967296
    i64.and
    f64.reinterpret_i64
    local.set $zhi
    local.get $z
    local.get $zhi
    f64.sub
    local.set $zlo
    local.get $zhi
    local.get $invc
    f64.mul
    f64.const 1
    f64.sub
    local.set $rhi
    local.get $zlo
    local.get $invc
    f64.mul
    local.set $rlo
    local.get $rhi
    local.get $rlo
    f64.add
    local.set $r
    local.get $kd
    f64.const 0.6931471805598903
    f64.mul
    local.get $logc
    f64.add
    local.set $t1
    local.get $t1
    local.get $r
    f64.add
    local.set $t2
    local.get $kd
    f64.const 5.497923018708371e-14
    f64.mul
    local.get $logctail
    f64.add
    local.set $lo1
    local.get $t1
    local.get $t2
    f64.sub
    local.get $r
    f64.add
    local.set $lo2
    f64.const -0.5
    local.get $r
    f64.mul
    local.set $ar
    local.get $r
    local.get $ar
    f64.mul
    local.set $ar2
    local.get $r
    local.get $ar2
    f64.mul
    local.set $ar3
    f64.const -0.5
    local.get $rhi
    f64.mul
    local.set $arhi
    local.get $rhi
    local.get $arhi
    f64.mul
    local.set $arhi2
    local.get $t2
    local.get $arhi2
    f64.add
    local.set $hi
    local.get $rlo
    local.get $ar
    local.get $arhi
    f64.add
    f64.mul
    local.set $lo3
    local.get $t2
    local.get $hi
    f64.sub
    local.get $arhi2
    f64.add
    local.set $lo4
    local.get $ar3
    f64.const -0.6666666666666679
    local.get $r
    f64.const 0.5000000000000007
    f64.mul
    f64.add
    local.get $ar2
    f64.const 0.7999999995323976
    local.get $r
    f64.const -0.6666666663487739
    f64.mul
    f64.add
    local.get $ar2
    f64.const -1.142909628459501
    local.get $r
    f64.const 1.0000415263675542
    f64.mul
    f64.add
    f64.mul
    f64.add
    f64.mul
    f64.add
    f64.mul
    local.set $p
    local.get $lo1
    local.get $lo2
    f64.add
    local.get $lo3
    f64.add
    local.get $lo4
    f64.add
    local.get $p
    f64.add
    local.set $lo
    local.get $hi
    local.get $lo
    f64.add
    local.set $y|46
    local.get $hi
    local.get $y|46
    f64.sub
    local.get $lo
    f64.add
    global.set $~lib/util/math/log_tail
    local.get $y|46
    br $~lib/util/math/log_inline|inlined.0
   end
   local.set $hi|47
   global.get $~lib/util/math/log_tail
   local.set $lo|48
   local.get $iy
   i64.const -134217728
   i64.and
   f64.reinterpret_i64
   local.set $yhi
   local.get $y|3
   local.get $yhi
   f64.sub
   local.set $ylo
   local.get $hi|47
   i64.reinterpret_f64
   i64.const -134217728
   i64.and
   f64.reinterpret_i64
   local.set $lhi
   local.get $hi|47
   local.get $lhi
   f64.sub
   local.get $lo|48
   f64.add
   local.set $llo
   local.get $yhi
   local.get $lhi
   f64.mul
   local.set $ehi
   local.get $ylo
   local.get $lhi
   f64.mul
   local.get $y|3
   local.get $llo
   f64.mul
   f64.add
   local.set $elo
   block $~lib/util/math/exp_inline|inlined.0 (result f64)
    local.get $ehi
    local.set $x|55
    local.get $elo
    local.set $xtail
    local.get $sign_bias
    local.set $sign_bias|57
    local.get $x|55
    i64.reinterpret_f64
    local.set $ux
    local.get $ux
    i64.const 52
    i64.shr_u
    i32.wrap_i64
    i32.const 2047
    i32.and
    local.set $abstop
    local.get $abstop
    i32.const 969
    i32.sub
    i32.const 63
    i32.ge_u
    if
     local.get $abstop
     i32.const 969
     i32.sub
     i32.const -2147483648
     i32.ge_u
     if
      f64.const -1
      f64.const 1
      local.get $sign_bias|57
      select
      br $~lib/util/math/exp_inline|inlined.0
     end
     local.get $abstop
     i32.const 1033
     i32.ge_u
     if
      local.get $ux
      i64.const 0
      i64.lt_s
      if (result f64)
       block $~lib/util/math/uflow|inlined.0 (result f64)
        local.get $sign_bias|57
        local.set $sign
        block $~lib/util/math/xflow|inlined.0 (result f64)
         local.get $sign
         local.set $sign|72
         i64.const 1152921504606846976
         f64.reinterpret_i64
         local.set $y|73
         local.get $y|73
         f64.neg
         local.get $y|73
         local.get $sign|72
         select
         local.get $y|73
         f64.mul
         br $~lib/util/math/xflow|inlined.0
        end
        br $~lib/util/math/uflow|inlined.0
       end
      else
       block $~lib/util/math/oflow|inlined.0 (result f64)
        local.get $sign_bias|57
        local.set $sign|74
        block $~lib/util/math/xflow|inlined.1 (result f64)
         local.get $sign|74
         local.set $sign|75
         i64.const 8070450532247928832
         f64.reinterpret_i64
         local.set $y|76
         local.get $y|76
         f64.neg
         local.get $y|76
         local.get $sign|75
         select
         local.get $y|76
         f64.mul
         br $~lib/util/math/xflow|inlined.1
        end
        br $~lib/util/math/oflow|inlined.0
       end
      end
      br $~lib/util/math/exp_inline|inlined.0
     end
     i32.const 0
     local.set $abstop
    end
    f64.const 184.6649652337873
    local.get $x|55
    f64.mul
    local.set $z|64
    local.get $z|64
    f64.const 6755399441055744
    f64.add
    local.set $kd|63
    local.get $kd|63
    i64.reinterpret_f64
    local.set $ki
    local.get $kd|63
    f64.const 6755399441055744
    f64.sub
    local.set $kd|63
    local.get $x|55
    local.get $kd|63
    f64.const -0.005415212348111709
    f64.mul
    f64.add
    local.get $kd|63
    f64.const -1.2864023111638346e-14
    f64.mul
    f64.add
    local.set $r|65
    local.get $r|65
    local.get $xtail
    f64.add
    local.set $r|65
    local.get $ki
    i32.const 127
    i64.extend_i32_s
    i64.and
    i64.const 1
    i64.shl
    i32.wrap_i64
    local.set $idx
    local.get $ki
    local.get $sign_bias|57
    i64.extend_i32_u
    i64.add
    i64.const 52
    i32.const 7
    i64.extend_i32_s
    i64.sub
    i64.shl
    local.set $top
    i32.const 7360
    local.get $idx
    i32.const 3
    i32.shl
    i32.add
    i64.load
    f64.reinterpret_i64
    local.set $tail
    i32.const 7360
    local.get $idx
    i32.const 3
    i32.shl
    i32.add
    i64.load offset=8
    local.get $top
    i64.add
    local.set $sbits
    local.get $r|65
    local.get $r|65
    f64.mul
    local.set $r2
    local.get $tail
    local.get $r|65
    f64.add
    local.get $r2
    f64.const 0.49999999999996786
    local.get $r|65
    f64.const 0.16666666666665886
    f64.mul
    f64.add
    f64.mul
    f64.add
    local.get $r2
    local.get $r2
    f64.mul
    f64.const 0.0416666808410674
    local.get $r|65
    f64.const 0.008333335853059549
    f64.mul
    f64.add
    f64.mul
    f64.add
    local.set $tmp|69
    local.get $abstop
    i32.const 0
    i32.eq
    if
     block $~lib/util/math/specialcase|inlined.0 (result f64)
      local.get $tmp|69
      local.set $tmp|77
      local.get $sbits
      local.set $sbits|78
      local.get $ki
      local.set $ki|79
      local.get $ki|79
      i64.const 2147483648
      i64.and
      i64.const 0
      i64.ne
      i32.eqz
      if
       local.get $sbits|78
       i64.const 1009
       i64.const 52
       i64.shl
       i64.sub
       local.set $sbits|78
       local.get $sbits|78
       f64.reinterpret_i64
       local.set $scale|80
       f64.const 5486124068793688683255936e279
       local.get $scale|80
       local.get $scale|80
       local.get $tmp|77
       f64.mul
       f64.add
       f64.mul
       br $~lib/util/math/specialcase|inlined.0
      end
      local.get $sbits|78
      i64.const 1022
      i64.const 52
      i64.shl
      i64.add
      local.set $sbits|78
      local.get $sbits|78
      f64.reinterpret_i64
      local.set $scale|80
      local.get $scale|80
      local.get $scale|80
      local.get $tmp|77
      f64.mul
      f64.add
      local.set $y|81
      local.get $y|81
      f64.abs
      f64.const 1
      f64.lt
      if
       f64.const 1
       local.get $y|81
       f64.copysign
       local.set $one
       local.get $scale|80
       local.get $y|81
       f64.sub
       local.get $scale|80
       local.get $tmp|77
       f64.mul
       f64.add
       local.set $lo|83
       local.get $one
       local.get $y|81
       f64.add
       local.set $hi|84
       local.get $one
       local.get $hi|84
       f64.sub
       local.get $y|81
       f64.add
       local.get $lo|83
       f64.add
       local.set $lo|83
       local.get $hi|84
       local.get $lo|83
       f64.add
       local.get $one
       f64.sub
       local.set $y|81
       local.get $y|81
       f64.const 0
       f64.eq
       if
        local.get $sbits|78
        i64.const -9223372036854775808
        i64.and
        f64.reinterpret_i64
        local.set $y|81
       end
      end
      local.get $y|81
      f64.const 2.2250738585072014e-308
      f64.mul
      br $~lib/util/math/specialcase|inlined.0
     end
     br $~lib/util/math/exp_inline|inlined.0
    end
    local.get $sbits
    f64.reinterpret_i64
    local.set $scale
    local.get $scale
    local.get $scale
    local.get $tmp|69
    f64.mul
    f64.add
    br $~lib/util/math/exp_inline|inlined.0
   end
   br $~lib/util/math/pow_lut|inlined.0
  end
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
  (local $pLo64 i64)
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
  (local $pHi64 i64)
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
  (local $pLo64|268 i64)
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
  (local $pHi64|280 i64)
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
  (local $pLo64|355 i64)
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
  (local $pHi64|367 i64)
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
       block $~lib/util/dtoa/writeNaN|inlined.0 (result i32)
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
        br $~lib/util/dtoa/writeNaN|inlined.0
       end
       br $~lib/util/dtoa/formatDecodedDouble|inlined.0
      end
      block $~lib/util/dtoa/writeInfinity|inlined.0 (result i32)
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
         i32.const 1644
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
        i32.const 1644
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
      local.set $pLo64
      local.get $pLo64
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
      local.get $pLo64
      i64.lt_u
      i64.extend_i32_u
      i64.add
      local.set $pHi64
      local.get $pHi64
      global.get $~lib/util/dtoa/EXTRA_SHIFT
      i64.extend_i32_s
      i64.shr_u
      local.set $integral|145
      local.get $pHi64
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
        local.set $pLo64|268
        local.get $pLo64|268
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
        local.get $pLo64|268
        i64.lt_u
        i64.extend_i32_u
        i64.add
        local.set $pHi64|280
        local.get $pHi64|280
        global.get $~lib/util/dtoa/EXTRA_SHIFT
        i64.extend_i32_s
        i64.shr_u
        local.set $integral|281
        local.get $pHi64|280
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
      local.set $pLo64|355
      local.get $pLo64|355
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
      local.get $pLo64|355
      i64.lt_u
      i64.extend_i32_u
      i64.add
      local.set $pHi64|367
      local.get $pHi64|367
      global.get $~lib/util/dtoa/EXTRA_SHIFT
      i64.extend_i32_s
      i64.shr_u
      local.set $integral|368
      local.get $pHi64|367
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
      i32.const 10208
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
      global.set $~lib/util/dtoa/gDigits
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
     global.set $~lib/util/dtoa/gDigits
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
       global.get $~lib/util/dtoa/gDigits
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
      global.get $~lib/util/dtoa/gDigits
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
     block $~lib/util/dtoa/writeExponent|inlined.0 (result i32)
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
       i32.const 1644
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
       br $~lib/util/dtoa/writeExponent|inlined.0
      end
      local.get $e
      i32.const 10
      i32.ge_s
      if
       local.get $buf|470
       i32.const 1644
       local.get $e
       i32.const 2
       i32.shl
       i32.add
       i32.load
       i32.store
       local.get $buf|470
       i32.const 4
       i32.add
       br $~lib/util/dtoa/writeExponent|inlined.0
      end
      local.get $buf|470
      i32.const 48
      local.get $e
      i32.add
      i32.store16
      local.get $buf|470
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
 (func $~lib/math/ipow32 (param $x i32) (param $e i32) (result i32)
  (local $out i32)
  (local $log i32)
  (local $4 i32)
  i32.const 1
  local.set $out
  i32.const 0
  i32.const 1
  i32.lt_s
  drop
  local.get $x
  i32.const 2
  i32.eq
  if
   i32.const 1
   local.get $e
   i32.shl
   i32.const 0
   local.get $e
   i32.const 32
   i32.lt_u
   select
   return
  end
  local.get $e
  i32.const 0
  i32.le_s
  if
   local.get $x
   i32.const -1
   i32.eq
   if
    i32.const -1
    i32.const 1
    local.get $e
    i32.const 1
    i32.and
    select
    return
   end
   local.get $e
   i32.const 0
   i32.eq
   local.get $x
   i32.const 1
   i32.eq
   i32.or
   return
  else
   local.get $e
   i32.const 1
   i32.eq
   if
    local.get $x
    return
   else
    local.get $e
    i32.const 2
    i32.eq
    if
     local.get $x
     local.get $x
     i32.mul
     return
    else
     local.get $e
     i32.const 32
     i32.lt_s
     if
      i32.const 32
      local.get $e
      i32.clz
      i32.sub
      local.set $log
      block $break|0
       block $case4|0
        block $case3|0
         block $case2|0
          block $case1|0
           block $case0|0
            local.get $log
            local.set $4
            local.get $4
            i32.const 5
            i32.eq
            br_if $case0|0
            local.get $4
            i32.const 4
            i32.eq
            br_if $case1|0
            local.get $4
            i32.const 3
            i32.eq
            br_if $case2|0
            local.get $4
            i32.const 2
            i32.eq
            br_if $case3|0
            local.get $4
            i32.const 1
            i32.eq
            br_if $case4|0
            br $break|0
           end
           local.get $e
           i32.const 1
           i32.and
           if
            local.get $out
            local.get $x
            i32.mul
            local.set $out
           end
           local.get $e
           i32.const 1
           i32.shr_u
           local.set $e
           local.get $x
           local.get $x
           i32.mul
           local.set $x
          end
          local.get $e
          i32.const 1
          i32.and
          if
           local.get $out
           local.get $x
           i32.mul
           local.set $out
          end
          local.get $e
          i32.const 1
          i32.shr_u
          local.set $e
          local.get $x
          local.get $x
          i32.mul
          local.set $x
         end
         local.get $e
         i32.const 1
         i32.and
         if
          local.get $out
          local.get $x
          i32.mul
          local.set $out
         end
         local.get $e
         i32.const 1
         i32.shr_u
         local.set $e
         local.get $x
         local.get $x
         i32.mul
         local.set $x
        end
        local.get $e
        i32.const 1
        i32.and
        if
         local.get $out
         local.get $x
         i32.mul
         local.set $out
        end
        local.get $e
        i32.const 1
        i32.shr_u
        local.set $e
        local.get $x
        local.get $x
        i32.mul
        local.set $x
       end
       local.get $e
       i32.const 1
       i32.and
       if
        local.get $out
        local.get $x
        i32.mul
        local.set $out
       end
      end
      local.get $out
      return
     end
    end
   end
  end
  loop $while-continue|1
   local.get $e
   if
    local.get $e
    i32.const 1
    i32.and
    if
     local.get $out
     local.get $x
     i32.mul
     local.set $out
    end
    local.get $e
    i32.const 1
    i32.shr_u
    local.set $e
    local.get $x
    local.get $x
    i32.mul
    local.set $x
    br $while-continue|1
   end
  end
  local.get $out
  return
 )
 (func $resolve-binary/Foo#lt (param $this i32) (param $other i32) (result i32)
  i32.const 10544
  return
 )
 (func $~lib/string/String#toString (param $this i32) (result i32)
  local.get $this
  return
 )
 (func $resolve-binary/Foo#gt (param $this i32) (param $other i32) (result i32)
  i32.const 10576
  return
 )
 (func $resolve-binary/Foo#le (param $this i32) (param $other i32) (result i32)
  i32.const 10608
  return
 )
 (func $resolve-binary/Foo#ge (param $this i32) (param $other i32) (result i32)
  i32.const 10640
  return
 )
 (func $resolve-binary/Foo#eq (param $this i32) (param $other i32) (result i32)
  i32.const 10672
  return
 )
 (func $resolve-binary/Foo#ne (param $this i32) (param $other i32) (result i32)
  i32.const 10704
  return
 )
 (func $resolve-binary/Foo#add (param $this i32) (param $other i32) (result i32)
  i32.const 10736
  return
 )
 (func $resolve-binary/Foo.sub (param $a i32) (param $b i32) (result i32)
  i32.const 10768
  return
 )
 (func $resolve-binary/Foo#mul (param $this i32) (param $other i32) (result i32)
  i32.const 10800
  return
 )
 (func $resolve-binary/Foo#div (param $this i32) (param $other i32) (result i32)
  i32.const 10832
  return
 )
 (func $resolve-binary/Foo#rem (param $this i32) (param $other i32) (result i32)
  i32.const 10864
  return
 )
 (func $resolve-binary/Foo#pow (param $this i32) (param $other i32) (result i32)
  i32.const 10896
  return
 )
 (func $resolve-binary/Bar#add (param $this i32) (param $other i32) (result i32)
  local.get $other
  return
 )
 (func $resolve-binary/Bar#self (param $this i32) (result i32)
  local.get $this
  return
 )
 (func $resolve-binary/Baz#add (param $this i32) (param $other i32) (result i32)
  local.get $other
  return
 )
 (func $resolve-binary/Baz#sub (param $this i32) (param $other i32) (result i32)
  local.get $this
  return
 )
 (func $resolve-binary/Baz.mul (param $left i32) (param $right i32) (result i32)
  local.get $right
  return
 )
 (func $resolve-binary/Baz.div (param $left i32) (param $right i32) (result i32)
  local.get $left
  return
 )
 (func $~lib/rt/__visit_globals (param $0 i32)
  (local $1 i32)
  global.get $resolve-binary/foo
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $resolve-binary/bar
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $resolve-binary/bar2
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $resolve-binary/baz
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  i32.const 1456
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 1264
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 2064
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 3120
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
 (func $~lib/rt/__visit_members (param $0 i32) (param $1 i32)
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
      local.get $1
      call $~lib/arraybuffer/ArrayBufferView~visit
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
 (func $~start
  call $start:resolve-binary
 )
 (func $~stack_check
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/memory/__data_end
  i32.lt_s
  if
   i32.const 43744
   i32.const 43792
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
 (func $resolve-binary/Foo#constructor (param $this i32) (result i32)
  (local $1 i32)
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
   i32.const 0
   i32.const 4
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  call $~lib/object/Object#constructor
  local.tee $this
  i32.store
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $resolve-binary/Bar#constructor (param $this i32) (result i32)
  (local $1 i32)
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
   i32.const 0
   i32.const 5
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  call $~lib/object/Object#constructor
  local.tee $this
  i32.store
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $resolve-binary/Baz#constructor (param $this i32) (result i32)
  (local $1 i32)
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
   i32.const 0
   i32.const 6
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  call $~lib/object/Object#constructor
  local.tee $this
  i32.store
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $start:resolve-binary
  (local $0 i32)
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
  i32.const 1
  i32.const 2
  i32.lt_s
  i32.const 0
  call $~lib/number/Bool#toString
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 32
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 976
   i32.const 2
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  i32.const 2
  i32.gt_s
  i32.const 0
  call $~lib/number/Bool#toString
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 64
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 976
   i32.const 7
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  i32.const 2
  i32.le_s
  i32.const 0
  call $~lib/number/Bool#toString
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 32
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 976
   i32.const 12
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  i32.const 2
  i32.ge_s
  i32.const 0
  call $~lib/number/Bool#toString
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 64
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 976
   i32.const 17
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  i32.const 2
  i32.eq
  i32.const 0
  call $~lib/number/Bool#toString
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 64
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 976
   i32.const 22
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  i32.const 2
  i32.ne
  i32.const 0
  call $~lib/number/Bool#toString
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 32
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 976
   i32.const 27
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  memory.size
  i32.const 16
  i32.shl
  global.get $~lib/memory/__heap_base
  i32.sub
  i32.const 1
  i32.shr_u
  global.set $~lib/rt/itcms/threshold
  i32.const 1376
  call $~lib/rt/itcms/initLazy
  global.set $~lib/rt/itcms/pinSpace
  i32.const 1408
  call $~lib/rt/itcms/initLazy
  global.set $~lib/rt/itcms/toSpace
  i32.const 1552
  call $~lib/rt/itcms/initLazy
  global.set $~lib/rt/itcms/fromSpace
  i32.const 1
  global.set $resolve-binary/a
  global.get $resolve-binary/a
  i32.const 10
  call $~lib/number/I32#toString
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 3216
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 976
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
  i32.const 10
  call $~lib/number/I32#toString
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 3248
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 976
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
  i32.const 10
  call $~lib/number/I32#toString
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 3216
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 976
   i32.const 46
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $resolve-binary/a
  i32.const 2
  i32.mul
  global.set $resolve-binary/a
  global.get $resolve-binary/a
  i32.const 10
  call $~lib/number/I32#toString
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 3248
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 976
   i32.const 51
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 2
  global.set $resolve-binary/f
  global.get $resolve-binary/f
  f64.const 2
  call $~lib/math/NativeMath.pow
  global.set $resolve-binary/f
  global.get $resolve-binary/f
  i32.const 0
  call $~lib/number/F64#toString
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 10416
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 976
   i32.const 57
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 4
  global.set $resolve-binary/a
  global.get $resolve-binary/a
  i32.const 2
  i32.div_s
  global.set $resolve-binary/a
  global.get $resolve-binary/a
  i32.const 10
  call $~lib/number/I32#toString
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 3248
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 976
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
  i32.const 10
  call $~lib/number/I32#toString
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 3248
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 976
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
  i32.const 10
  call $~lib/number/I32#toString
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 10448
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 976
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
  i32.const 10
  call $~lib/number/I32#toString
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 3248
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 976
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
  i32.const 10
  call $~lib/number/I32#toString
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 3216
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 976
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
  i32.const 10
  call $~lib/number/I32#toString
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 3216
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 976
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
  i32.const 10
  call $~lib/number/I32#toString
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 10480
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 976
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
  i32.const 10
  call $~lib/number/I32#toString
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 3216
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 976
   i32.const 98
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  i32.const 2
  i32.add
  i32.const 10
  call $~lib/number/I32#toString
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 10480
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 976
   i32.const 105
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  i32.const 2
  i32.sub
  i32.const 10
  call $~lib/number/I32#toString
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 10512
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 976
   i32.const 110
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  i32.const 2
  i32.mul
  i32.const 10
  call $~lib/number/I32#toString
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 3248
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 976
   i32.const 115
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 4
  i32.const 2
  i32.div_s
  i32.const 10
  call $~lib/number/I32#toString
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 3248
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 976
   i32.const 120
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 3
  i32.const 2
  i32.rem_s
  i32.const 10
  call $~lib/number/I32#toString
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 3216
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 976
   i32.const 125
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2
  i32.const 2
  call $~lib/math/ipow32
  i32.const 10
  call $~lib/number/I32#toString
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 10448
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 976
   i32.const 132
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 2
  f64.const 2
  call $~lib/math/NativeMath.pow
  i32.const 0
  call $~lib/number/F64#toString
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 10416
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 976
   i32.const 139
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 2
  f64.const 2
  call $~lib/math/NativeMath.pow
  i32.const 0
  call $~lib/number/F64#toString
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 10416
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 976
   i32.const 146
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2
  i32.const 1
  i32.shl
  i32.const 10
  call $~lib/number/I32#toString
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 10448
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 976
   i32.const 153
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2
  i32.const 1
  i32.shr_s
  i32.const 10
  call $~lib/number/I32#toString
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 3216
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 976
   i32.const 158
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const -1
  i32.const 30
  i32.shr_u
  i32.const 10
  call $~lib/number/I32#toString
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 10480
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 976
   i32.const 163
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 3
  i32.const 1
  i32.and
  i32.const 10
  call $~lib/number/I32#toString
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 3216
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 976
   i32.const 170
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  i32.const 2
  i32.or
  i32.const 10
  call $~lib/number/I32#toString
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 10480
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 976
   i32.const 175
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  i32.const 3
  i32.xor
  i32.const 10
  call $~lib/number/I32#toString
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 3248
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 976
   i32.const 180
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2
  i32.const 10
  call $~lib/number/I32#toString
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 3248
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 976
   i32.const 187
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 10
  call $~lib/number/I32#toString
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 1232
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 976
   i32.const 192
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  i32.const 10
  call $~lib/number/I32#toString
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 3216
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 976
   i32.const 197
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2
  i32.const 10
  call $~lib/number/I32#toString
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 3248
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 976
   i32.const 202
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $resolve-binary/Foo#constructor
  global.set $resolve-binary/foo
  global.get $resolve-binary/foo
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  local.get $0
  global.get $resolve-binary/foo
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=12
  local.get $0
  call $resolve-binary/Foo#lt
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  call $~lib/string/String#toString
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 10544
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 976
   i32.const 263
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $resolve-binary/foo
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  local.get $0
  global.get $resolve-binary/foo
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=12
  local.get $0
  call $resolve-binary/Foo#gt
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  call $~lib/string/String#toString
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 10576
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 976
   i32.const 268
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $resolve-binary/foo
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  local.get $0
  global.get $resolve-binary/foo
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=12
  local.get $0
  call $resolve-binary/Foo#le
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  call $~lib/string/String#toString
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 10608
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 976
   i32.const 273
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $resolve-binary/foo
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  local.get $0
  global.get $resolve-binary/foo
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=12
  local.get $0
  call $resolve-binary/Foo#ge
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  call $~lib/string/String#toString
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 10640
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 976
   i32.const 278
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $resolve-binary/foo
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  local.get $0
  global.get $resolve-binary/foo
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=12
  local.get $0
  call $resolve-binary/Foo#eq
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  call $~lib/string/String#toString
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 10672
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 976
   i32.const 283
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $resolve-binary/foo
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  local.get $0
  global.get $resolve-binary/foo
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=12
  local.get $0
  call $resolve-binary/Foo#ne
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  call $~lib/string/String#toString
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 10704
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 976
   i32.const 288
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $resolve-binary/foo
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  local.get $0
  global.get $resolve-binary/foo
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=12
  local.get $0
  call $resolve-binary/Foo#add
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  call $~lib/string/String#toString
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 10736
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 976
   i32.const 293
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $resolve-binary/foo
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  local.get $0
  global.get $resolve-binary/foo
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=12
  local.get $0
  call $resolve-binary/Foo.sub
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  call $~lib/string/String#toString
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 10768
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 976
   i32.const 298
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $resolve-binary/foo
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  local.get $0
  global.get $resolve-binary/foo
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=12
  local.get $0
  call $resolve-binary/Foo#mul
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  call $~lib/string/String#toString
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 10800
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 976
   i32.const 303
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $resolve-binary/foo
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  local.get $0
  global.get $resolve-binary/foo
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=12
  local.get $0
  call $resolve-binary/Foo#div
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  call $~lib/string/String#toString
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 10832
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 976
   i32.const 308
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $resolve-binary/foo
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  local.get $0
  global.get $resolve-binary/foo
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=12
  local.get $0
  call $resolve-binary/Foo#rem
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  call $~lib/string/String#toString
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 10864
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 976
   i32.const 313
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $resolve-binary/foo
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  local.get $0
  global.get $resolve-binary/foo
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=12
  local.get $0
  call $resolve-binary/Foo#pow
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  call $~lib/string/String#toString
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 10896
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 976
   i32.const 318
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $resolve-binary/Bar#constructor
  global.set $resolve-binary/bar
  i32.const 0
  call $resolve-binary/Bar#constructor
  global.set $resolve-binary/bar2
  global.get $resolve-binary/bar
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  global.get $resolve-binary/bar2
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  local.get $0
  call $resolve-binary/Bar#add
  global.set $resolve-binary/bar
  global.get $resolve-binary/bar
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $resolve-binary/Bar#self
  global.get $resolve-binary/bar2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 976
   i32.const 336
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $resolve-binary/bar
  global.get $resolve-binary/bar2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 976
   i32.const 341
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $resolve-binary/Baz#constructor
  global.set $resolve-binary/baz
  global.get $resolve-binary/baz
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 42
  call $resolve-binary/Baz#add
  i32.const 42
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 976
   i32.const 363
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $resolve-binary/baz
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 42
  call $resolve-binary/Baz#sub
  global.get $resolve-binary/baz
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 976
   i32.const 366
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $resolve-binary/baz
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 42
  call $resolve-binary/Baz.mul
  i32.const 42
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 976
   i32.const 369
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $resolve-binary/baz
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 42
  call $resolve-binary/Baz.div
  global.get $resolve-binary/baz
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 976
   i32.const 372
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 16
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
   i32.const 1040
   i32.const 1168
   i32.const 322
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $value
  i32.eqz
  if
   i32.const 1232
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
  i32.const 9408
  local.get $value
  call $~lib/util/dtoa/dtoa_buffered
  local.set $len
  block $~lib/util/number/dtoa_dotZero|inlined.0 (result i32)
   i32.const 9408
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
  i32.const 9408
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
 (func $~lib/object/Object#constructor (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 0
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
)
